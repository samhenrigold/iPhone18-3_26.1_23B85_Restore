id DTResolveCity(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [NSTimeZone timeZoneWithName:v1];
    if (v2)
    {
      v3 = +[ALCityManager sharedManager];
      v4 = [v3 citiesWithTimeZone:v2];
    }

    else
    {
      v6 = [v1 rangeOfString:{@", "}];
      v7 = +[ALCityManager sharedManager];
      v3 = v7;
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [v7 cityForClassicIdentifier:v1];

        v8 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v4 = [v7 citiesMatchingName:v1 localized:0];
    }

    v8 = v4;

    if (v8 && [v8 count])
    {
      v5 = [v8 objectAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = +[ALCityManager sharedManager];
    v5 = [v2 bestCityForLegacyCity:v1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[ALCity alloc] initWithProperties:v1];
  }

  else
  {
    v5 = 0;
  }

LABEL_18:

  return v5;
}

id DTCityNameForTimeZone(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[ALCityManager sharedManager];
    v3 = [v2 defaultCityForTimeZone:v1];

    v4 = [v3 name];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_100002F34(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174C68, v2);

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

uint64_t sub_100002F88(char a1)
{
  if (a1)
  {
    return 0x73676E6974746573;
  }

  else
  {
    return 0x7070416E65706FLL;
  }
}

uint64_t sub_100002FE4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100002F34(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100003014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002F88(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100003040(char a1)
{
  v2 = type metadata accessor for ActionInfoDestination(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    if (qword_1001880C0 != -1)
    {
      swift_once();
    }

    v5 = qword_1001880C8;
    v6 = unk_1001880D0;
    v12 = &type metadata for MessagesActionInfoType;
    v13 = sub_100004160();
    v11[0] = 1;

    return sub_1000ED3F8(v5, v6, 0xD000000000000057, 0x8000000100133810, v11);
  }

  else
  {
    *v4 = 0xD000000000000013;
    v4[1] = 0x8000000100133870;
    swift_storeEnumTagMultiPayload();
    if (qword_1001880D8 != -1)
    {
      swift_once();
    }

    v8 = qword_1001880E0;
    v9 = *algn_1001880E8;
    v12 = &type metadata for MessagesActionInfoType;
    v13 = sub_100004160();
    v11[0] = 0;
    type metadata accessor for ActionInfo(0);
    swift_allocObject();

    return sub_1000EDD44(v4, v8, v9, 1, v11, 0, 0);
  }
}

uint64_t sub_100003210()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001880C8 = result;
  unk_1001880D0 = v3;
  return result;
}

uint64_t sub_100003318()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_1001880E0 = result;
  *algn_1001880E8 = v3;
  return result;
}

uint64_t sub_10000343C(uint64_t *a1)
{
  if (sub_100004900())
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_1000048A8();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    sub_1000048D4();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    sub_100004890();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100003560(uint64_t a1)
{
  if (sub_100004900())
  {
    type metadata accessor for _TagTraitWritingModifier();
    sub_1000048E0();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    sub_1000048A8();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    sub_1000048E0();
    type metadata accessor for Optional();
    sub_100004890();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    sub_1000048D4();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100003704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreArticleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003768(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of Defaults._lastNotifiedAboutVPN@<X0>(void *a1@<X8>)
{
  v2 = *(sub_100003768(&qword_100188460, &qword_100120AB0) + 28);
  v3 = type metadata accessor for Date();
  result = sub_100003CE8(a1 + v2, 1, 1, v3);
  *a1 = 0xD000000000000019;
  a1[1] = 0x80000001001337F0;
  return result;
}

NSString sub_100003868@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100004128(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100003894()
{
  v1 = sub_1000048C0();
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000038E0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001E344(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_10000395C(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_1001885B0, type metadata accessor for ISImageDescriptorName, &unk_100120E24);
  v3 = sub_100003E1C(&qword_1001885B8, type metadata accessor for ISImageDescriptorName, &unk_100120DCC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003A18@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003A60(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_100188590, type metadata accessor for LaunchOptionsKey, &unk_1001212B8);
  v3 = sub_100003E1C(&qword_100188598, type metadata accessor for LaunchOptionsKey, &unk_10012120C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003B1C(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_1001885A0, type metadata accessor for Role, &unk_100121114);
  v3 = sub_100003E1C(&qword_1001885A8, type metadata accessor for Role, &unk_1001210B4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003BD8(uint64_t a1)
{
  v2 = sub_100003E1C(&qword_100188490, type metadata accessor for AMSBagKey, &unk_100120BEC);
  v3 = sub_100003E1C(&qword_100188498, type metadata accessor for AMSBagKey, &unk_100120B8C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 sub_100003D10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003D20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return _s11SupportFlow19WiFiDiagnosticsDataV17isPersonalHotspotSbvpfi_0();
  }
}

uint64_t sub_100003D3C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100003E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003EAC(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100003F30(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003F84(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100003FF8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_100004030(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000040A8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100004128(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

unint64_t sub_100004160()
{
  result = qword_1001884A0;
  if (!qword_1001884A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001884A0);
  }

  return result;
}

__n128 sub_1000041DC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000041E8(uint64_t a1, int a2)
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

uint64_t sub_100004208(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MessagesActionInfoType(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000043BCLL);
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

unint64_t sub_100004504(uint64_t a1)
{
  result = sub_100004160();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100004530()
{
  result = qword_100188548;
  if (!qword_100188548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188548);
  }

  return result;
}

unint64_t sub_10000477C(uint64_t a1)
{
  result = sub_1000047A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000047A4()
{
  result = qword_100188588;
  if (!qword_100188588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188588);
  }

  return result;
}

void sub_10000480C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000048E0()
{

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100004900()
{

  return sub_10011B6F8(2, 26, 0, 0);
}

unint64_t sub_100004984()
{
  result = qword_100188690;
  if (!qword_100188690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188690);
  }

  return result;
}

uint64_t sub_1000049E4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1000049F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_100004A38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100004AA8@<X0>(__int16 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_10010C320();
  v12 = v11;

  if (qword_100188380 != -1)
  {
    swift_once();
  }

  v14 = qword_1001A5980;
  v13 = *algn_1001A5988;
  *(a3 + 40) = &type metadata for AirPodsStepProvider;
  v15 = sub_100004C8C();
  *(a3 + 16) = HIBYTE(a2);
  *a3 = v10;
  *(a3 + 8) = v12;
  *(a3 + 48) = v15;
  *(a3 + 56) = v14;
  *(a3 + 64) = v13;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
}

unint64_t sub_100004C8C()
{
  result = qword_100188698;
  if (!qword_100188698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188698);
  }

  return result;
}

unint64_t sub_100004CE4()
{
  result = qword_1001886A0;
  if (!qword_1001886A0)
  {
    sub_100004D48(&unk_1001893B0, &unk_100121480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886A0);
  }

  return result;
}

uint64_t sub_100004D48(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BatteryStepProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BatteryStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100004EE4);
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

__n128 sub_100004F40@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 2:
      type metadata accessor for FlowViewDataProvider(0);
      sub_1000058FC();
      v5 = sub_10000580C(v3, v4, &unk_100129E68);
      sub_100005914(v5);
      sub_100005930();
      v65 = v7;
      v67 = v6;
      LOBYTE(v69) = 0;
      sub_100005600();
      sub_100005654();

      sub_100005960(v8, &type metadata for BatteryServiceNeededView, &type metadata for BatteryReportUnavailableView, v9, v10, v11, v12, v13, v59);
      v14 = _ConditionalContent<>.init(storage:)();
      sub_10000594C(v14, v15, v16, v17, v18, v19, v20, v21, v60, v64, v65, v67, v69, v70, v71);
      break;
    case 3:
      type metadata accessor for FlowViewDataProvider(0);
      sub_1000058FC();
      v24 = sub_10000580C(v22, v23, &unk_100129E68);
      sub_100005914(v24);
      sub_100005930();
      v66 = v26 + 3;
      v68 = v25;
      LOBYTE(v69) = 1;
      sub_100005600();
      sub_100005654();

      sub_100005960(v27, &type metadata for BatteryServiceNeededView, &type metadata for BatteryReportUnavailableView, v28, v29, v30, v31, v32, v59);
      v33 = _ConditionalContent<>.init(storage:)();
      sub_10000594C(v33, v34, v35, v36, v37, v38, v39, v40, v62, v64, v66, v68, v69, v70, v71);
      break;
    default:
      type metadata accessor for BatteryFlowViewModel(0);
      sub_1000058E4();
      v43 = sub_10000580C(v41, v42, &unk_10012B6F0);
      v63 = sub_100005914(v43);
      sub_10000572C();

      sub_100005960(v44, &type metadata for BatteryNormalHealthView, v45, v46, v47, v48, v49, v50, v63);
      _ConditionalContent<>.init(storage:)();
      v61 = v71;
      break;
  }

  sub_100003768(&qword_1001886E8, &qword_100121608);
  sub_100003768(&qword_1001886F0, &qword_100121610);
  sub_1000056A8();
  v51 = sub_100005780();
  sub_100005960(v51, v52, v53, v54, v51, v55, v56, v57, v61);
  _ConditionalContent<>.init(storage:)();

  result = v71;
  *a2 = v71;
  *(a2 + 16) = v72;
  *(a2 + 32) = v73;
  *(a2 + 33) = v74;
  return result;
}

unint64_t sub_100005238(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174CB8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100005284(char a1)
{
  result = 0xD00000000000001BLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100005334@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005238(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100005364@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100005284(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100005390(uint64_t *a1@<X8>)
{
  sub_1000E7390(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000053F0()
{
  result = qword_1001886A8;
  if (!qword_1001886A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886A8);
  }

  return result;
}

unint64_t sub_100005444()
{
  result = qword_1001886B0;
  if (!qword_1001886B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886B0);
  }

  return result;
}

uint64_t sub_1000054C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100005500()
{
  result = qword_1001886B8;
  if (!qword_1001886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886B8);
  }

  return result;
}

unint64_t sub_100005554()
{
  result = qword_1001886C0;
  if (!qword_1001886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886C0);
  }

  return result;
}

unint64_t sub_1000055AC()
{
  result = qword_1001886C8;
  if (!qword_1001886C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886C8);
  }

  return result;
}

unint64_t sub_100005600()
{
  result = qword_1001886D8;
  if (!qword_1001886D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886D8);
  }

  return result;
}

unint64_t sub_100005654()
{
  result = qword_1001886E0;
  if (!qword_1001886E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886E0);
  }

  return result;
}

unint64_t sub_1000056A8()
{
  result = qword_1001886F8;
  if (!qword_1001886F8)
  {
    sub_100004D48(&qword_1001886E8, &qword_100121608);
    sub_10000572C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886F8);
  }

  return result;
}

unint64_t sub_10000572C()
{
  result = qword_100188700;
  if (!qword_100188700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188700);
  }

  return result;
}

unint64_t sub_100005780()
{
  result = qword_100188708;
  if (!qword_100188708)
  {
    sub_100004D48(&qword_1001886F0, &qword_100121610);
    sub_100005600();
    sub_100005654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188708);
  }

  return result;
}

uint64_t sub_10000580C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100005858()
{
  result = qword_100188718;
  if (!qword_100188718)
  {
    sub_100004D48(qword_100188720, &qword_100121618);
    sub_1000056A8();
    sub_100005780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188718);
  }

  return result;
}

uint64_t sub_100005914(uint64_t a1)
{

  return Environment.init<A>(_:)();
}

uint64_t sub_10000596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000059A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000059C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000059DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100005A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_100004D48(&qword_1001887A8, &qword_100121728);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for TupleView();
  sub_100006A70();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for FlowStepStackView(0, v3, WitnessTable, v4);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = *v2;
  v13 = v2[1];
  memset(v30, 0, sizeof(v30));
  v14 = v2[2];
  v23 = v2[3];
  v24 = v12;
  v31 = 0;
  v32 = v14;
  v15 = v2[4];
  v22 = v2[5];
  v16 = v2[6];
  v17 = swift_allocObject();
  v18 = *(v27 + 24);
  *(v17 + 16) = v26;
  *(v17 + 24) = v18;
  v19 = *(v2 + 1);
  *(v17 + 32) = *v2;
  *(v17 + 48) = v19;
  *(v17 + 64) = *(v2 + 2);
  *(v17 + 80) = v2[6];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100006578(&v32, v29, &qword_1001887B0, &qword_100121730);
  sub_100006568(v22, v16);
  sub_100035B04(v24, v13, v23, v15, 0, v30, sub_10000655C, v17, v9, v3, WitnessTable);
  sub_100006A88();
  swift_getWitnessTable();
  sub_1000C6A00();
  v20 = *(v6 + 8);
  v20(v9, v5);
  sub_1000C6A00();
  return (v20)(v11, v5);
}

uint64_t sub_100005D48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v48 = a3;
  v44 = sub_100003768(&qword_1001887B8, &qword_100121738);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v40 - v6;
  v43 = sub_100003768(&qword_1001887A8, &qword_100121728);
  v7 = __chkstk_darwin(v43);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v45 = &v40 - v10;
  v11 = *(a2 - 8);
  v12 = __chkstk_darwin(v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Optional();
  v49 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v40 - v21;
  v22 = a1[5];
  if (v22)
  {
    v23 = a1[6];

    v22(v24);
    sub_1000068F8(v22, v23);
    sub_1000C6A00();
    v25 = *(v11 + 8);
    v25(v14, a2);
    sub_1000C6A00();
    v25(v16, a2);
    (*(v11 + 32))(v20, v14, a2);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = 1;
  sub_100003CE8(v20, v26, 1, a2);
  v28 = v48;
  sub_10000625C(v20, v50);
  v29 = *(v49 + 8);
  v30 = v29(v20, v17);
  v31 = v28;
  if (a1[2])
  {
    __chkstk_darwin(v30);
    *(&v40 - 2) = v32;
    sub_100003768(&qword_1001887D8, &qword_100121740);
    sub_1000066F4();
    v33 = v41;
    Section<>.init(content:)();
    v35 = v44;
    v34 = v45;
    v36 = v33;
    v31 = v28;
    (*(v42 + 32))(v45, v36, v44);
    v27 = 0;
  }

  else
  {
    v35 = v44;
    v34 = v45;
  }

  sub_100003CE8(v34, v27, 1, v35);
  v37 = v50;
  (*(v49 + 16))(v20, v50, v17);
  v55[0] = v20;
  v38 = v46;
  sub_100006578(v34, v46, &qword_1001887A8, &qword_100121728);
  v55[1] = v38;
  v54[0] = v17;
  v54[1] = v43;
  v51 = v31;
  WitnessTable = swift_getWitnessTable();
  v53 = sub_1000065E0();
  sub_1000C2BF0(v55, 2, v54);
  sub_100006888(v34);
  v29(v37, v17);
  sub_100006888(v38);
  return v29(v20, v17);
}

uint64_t sub_10000625C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_1000062C8(uint64_t a1)
{
  sub_10002BF44(a1);
  swift_getKeyPath();
  sub_100003768(&qword_100188800, &qword_100121778);
  sub_100003768(&qword_1001887E8, &qword_100121748);
  sub_100006908();
  sub_100006778();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100006394(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000696C(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  Environment.init<A>(_:)();

  static String.stepSectionOptionsFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100121620;
  *(v3 + 56) = &type metadata for Int;
  *(v3 + 64) = &protocol witness table for Int;
  *(v3 + 32) = a1;
  String.init(format:_:)();

  sub_100006834();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100006504()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100006568(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100006578(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003768(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000065E0()
{
  result = qword_1001887C0;
  if (!qword_1001887C0)
  {
    sub_100004D48(&qword_1001887A8, &qword_100121728);
    sub_100006664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887C0);
  }

  return result;
}

unint64_t sub_100006664()
{
  result = qword_1001887C8;
  if (!qword_1001887C8)
  {
    sub_100004D48(&qword_1001887B8, &qword_100121738);
    sub_1000066F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887C8);
  }

  return result;
}

unint64_t sub_1000066F4()
{
  result = qword_1001887D0;
  if (!qword_1001887D0)
  {
    sub_100004D48(&qword_1001887D8, &qword_100121740);
    sub_100006778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887D0);
  }

  return result;
}

unint64_t sub_100006778()
{
  result = qword_1001887E0;
  if (!qword_1001887E0)
  {
    sub_100004D48(&qword_1001887E8, &qword_100121748);
    sub_100006834();
    sub_10000696C(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887E0);
  }

  return result;
}

unint64_t sub_100006834()
{
  result = qword_1001887F0;
  if (!qword_1001887F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001887F0);
  }

  return result;
}

uint64_t sub_100006888(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001887A8, &qword_100121728);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000068F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100006908()
{
  result = qword_100188808;
  if (!qword_100188808)
  {
    sub_100004D48(&qword_100188800, &qword_100121778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188808);
  }

  return result;
}

uint64_t sub_10000696C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000069E4(void *a1)
{
  type metadata accessor for Optional();
  sub_100004D48(&qword_1001887A8, &qword_100121728);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  v1 = sub_100006AA0();
  type metadata accessor for FlowStepStackView(v1, v2, v3, v4);
  sub_100006A88();

  return swift_getWitnessTable();
}

BOOL sub_100006ACC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174D38, v2);

  return v3 != 0;
}

BOOL sub_100006B24@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100006ACC(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BatteryPlacardInfoItemType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for MessagesOptionOverride(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100006CA4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100006D24()
{
  result = qword_100188818;
  if (!qword_100188818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188818);
  }

  return result;
}

unint64_t sub_100006D78()
{
  result = qword_100188820;
  if (!qword_100188820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188820);
  }

  return result;
}

uint64_t sub_100006E34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_100188830, &qword_100121818);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006EB0()
{
  result = qword_100188878;
  if (!qword_100188878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188878);
  }

  return result;
}

unint64_t sub_100006F04()
{
  result = qword_100188880;
  if (!qword_100188880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188880);
  }

  return result;
}

uint64_t sub_100006F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100006FC4()
{
  result = qword_100188888;
  if (!qword_100188888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188888);
  }

  return result;
}

unint64_t sub_100007018()
{
  result = qword_100188890;
  if (!qword_100188890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188890);
  }

  return result;
}

unint64_t sub_100007070()
{
  result = qword_100188898;
  if (!qword_100188898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188898);
  }

  return result;
}

uint64_t sub_1000070DC(uint64_t a1, int a2)
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

uint64_t sub_10000711C(uint64_t result, int a2, int a3)
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

uint64_t sub_100007188(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

uint64_t sub_1000072C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  sub_100007188(a1, a2 & 1);
  LOBYTE(a1) = sub_100064C48();

  v12 = &type metadata for WiFiStepProvider;
  v13 = sub_10000737C();
  v11[0] = a1;
  return sub_100018FE0(a3, a4, v11, a5);
}

unint64_t sub_10000737C()
{
  result = qword_1001888A0;
  if (!qword_1001888A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888A0);
  }

  return result;
}

unint64_t sub_1000073D4()
{
  result = qword_1001888A8;
  if (!qword_1001888A8)
  {
    _s17RestartDeviceViewVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888A8);
  }

  return result;
}

uint64_t sub_10000742C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for Logger();
  sub_100008780();
  v14 = v13;
  v16 = __chkstk_darwin(v15);
  sub_10000871C(v16);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v30 = a4;
    v31 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v33 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10009CACC(v32, a2, &v33);
    _os_log_impl(&_mh_execute_header, v17, v18, "updateSession - Session ID: %s", v20, 0xCu);
    sub_1000086BC(v21);
    v22 = v21;
    v5 = v4;
    sub_100008744(v22);
    v23 = v20;
    a4 = v30;
    a3 = v31;
    sub_100008744(v23);
  }

  (*(v14 + 8))(v4, v12);
  v24 = type metadata accessor for TaskPriority();
  sub_100003CE8(v11, 1, 1, v24);
  v25 = *(v5 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);
  type metadata accessor for MainActor();

  sub_100008460(a3, a4);
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v28 = v32;
  v27[4] = v25;
  v27[5] = v28;
  v27[6] = a2;
  v27[7] = a3;
  v27[8] = a4;
  sub_100085200();
}

uint64_t sub_1000076C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v13 = type metadata accessor for Logger();
  v8[4] = v13;
  v8[5] = *(v13 - 8);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for MainActor();
  v8[8] = static MainActor.shared.getter();
  v14 = swift_task_alloc();
  v8[9] = v14;
  *v14 = v8;
  v14[1] = sub_100007800;

  return SupportFlowSessionAnalyticsClient.updateSessionMap(identifier:data:)(a5, a6, a7, a8);
}

uint64_t sub_100007800()
{
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;
  *(v4 + 80) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_1000079B8;
  }

  else
  {
    v7 = sub_100007954;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100007954()
{

  sub_10000875C();

  return v0();
}

uint64_t sub_1000079B8()
{
  v18 = v0;

  static Logger.supportFlowApp.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[3];
    v15 = v0[4];
    v16 = v0[6];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10009CACC(v5, v4, &v17);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateSession - Failed to decode session data for %s, Error: %@", v6, 0x16u);
    sub_1000083A0(v7);
    sub_100008744(v7);
    sub_1000086BC(v8);
    sub_100008744(v8);
    sub_100008744(v6);

    (*(v3 + 8))(v16, v15);
  }

  else
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];

    (*(v11 + 8))(v10, v12);
  }

  sub_10000875C();

  return v13();
}

uint64_t sub_100007C58()
{
  v1 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Logger();
  sub_100008780();
  v6 = v5;
  v8 = __chkstk_darwin(v7);
  sub_10000871C(v8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "logForAppTerminate - Logging final analytics before app termination", v11, 2u);
    sub_100008744(v11);
  }

  (*(v6 + 8))(v0, v4);
  v12 = type metadata accessor for TaskPriority();
  sub_100003CE8(v3, 1, 1, v12);
  v13 = *(v0 + OBJC_IVAR____TtC11SupportFlow20FlowViewDataProvider_sessionClient);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  sub_100085200();
}

uint64_t sub_100007E50()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_100007F5C;

  return SupportFlowSessionAnalyticsClient.logForAppTerminate()();
}

uint64_t sub_100007F5C()
{
  v2 = *v1;
  sub_10000870C();
  *v3 = v2;
  *(v4 + 64) = v0;

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100008114;
  }

  else
  {
    v7 = sub_1000080B0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000080B0()
{

  sub_10000875C();

  return v0();
}

uint64_t sub_100008114()
{

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "logForAppTerminate - Failed. Error: %@", v3, 0xCu);
    sub_1000083A0(v4);
    sub_100008744(v4);
    sub_100008744(v3);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  sub_10000875C();

  return v6();
}

uint64_t sub_1000082BC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000082FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_100008768(v1);

  return sub_100007E50();
}

uint64_t sub_1000083A0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189390, &qword_1001241D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008408(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100008460(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1000084B8()
{
  swift_unknownObjectRelease();

  sub_100008408(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008508()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_100008768(v7);

  return sub_1000076C0(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_1000085D4()
{
  v1 = *v0;
  sub_10000870C();
  *v2 = v1;

  sub_10000875C();

  return v3();
}

uint64_t sub_1000086BC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000871C(uint64_t a1)
{

  return static Logger.supportFlowApp.getter();
}

uint64_t sub_100008744(uint64_t a1)
{
}

uint64_t initializeBufferWithCopyOfBuffer for BatteryDiagnosticsReport.ServiceLevel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000087A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1000087E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

double sub_100008858@<D0>(char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v10 = sub_10010C1F0();
  v20 = v11;
  v21 = v10;

  sub_100003768(&qword_1001888B8, &unk_100121B70);
  v12 = *(type metadata accessor for FlowStepContentOption(0) - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100121620;

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  sub_10010BF80(v14 + v13);

  swift_storeEnumTagMultiPayload();
  v16 = sub_1000FF880(v14);
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v18 = v20;
  *a3 = v21;
  *(a3 + 8) = v18;
  *(a3 + 64) = v16;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_100008B30(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100008B48(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100008B88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_100008C38(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100008C9C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100008CE0()
{
  sub_100003768(&qword_1001888C0, &qword_100121C48);
  sub_100004D48(&qword_1001888C8, &qword_100121C50);
  sub_100004D48(&qword_1001888D0, &qword_100121C58);
  sub_10000A5BC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return Section<>.init(content:)();
}

uint64_t sub_100008DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for AccessibilityChildBehavior();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ContentMarginPlacement();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003768(&qword_1001888D0, &qword_100121C58);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v28 = sub_100003768(&qword_1001888C8, &qword_100121C50);
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v14 = sub_100003768(&qword_100188930, &qword_100121C88);
  sub_1000091B8(a1, &v10[*(v14 + 44)]);
  v15 = static Edge.Set.all.getter();
  v16 = &v10[*(sub_100003768(&qword_1001888F8, &qword_100121C68) + 36)];
  *v16 = v15;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = &v10[*(sub_100003768(&qword_1001888E8, &qword_100121C60) + 36)];
  v17[32] = 0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v18 = static Alignment.center.getter();
  v20 = v19;
  v21 = 0;
  if (*(*a1 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_style) == 1)
  {
    v22 = [objc_opt_self() systemGray5Color];
    v21 = Color.init(_:)();
  }

  v23 = &v10[*(v8 + 36)];
  *v23 = v21;
  v23[1] = v18;
  v23[2] = v20;
  static Edge.Set.vertical.getter();
  static ContentMarginPlacement.scrollIndicators.getter();
  v24 = sub_10000A5BC();
  View.contentMargins(_:_:for:)();
  (*(v5 + 8))(v7, v29);
  sub_10000ABCC(v10, &qword_1001888D0, &qword_100121C58);
  static AccessibilityChildBehavior.contain.getter();
  v33 = v8;
  v34 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v28;
  View.accessibilityElement(children:)();
  (*(v30 + 8))(v4, v32);
  return (*(v11 + 8))(v13, v25);
}

uint64_t sub_1000091B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v69 = sub_100003768(&qword_100188938, &qword_100121C90);
  __chkstk_darwin(v69);
  v70 = &v67 - v3;
  v77 = sub_100003768(&qword_100188940, &qword_100121C98);
  __chkstk_darwin(v77);
  v68 = &v67 - v4;
  v5 = sub_100003768(&qword_100188948, &qword_100121CA0);
  v6 = __chkstk_darwin(v5 - 8);
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v67 - v8;
  v75 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v75 - 8);
  __chkstk_darwin(v75);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_100003768(&qword_100188950, &qword_100121CA8);
  __chkstk_darwin(v73);
  v13 = &v67 - v12;
  v74 = sub_100003768(&qword_100188958, &qword_100121CB0);
  v14 = *(v74 - 8);
  __chkstk_darwin(v74);
  v16 = &v67 - v15;
  v72 = sub_100003768(&qword_100188960, &qword_100121CB8);
  __chkstk_darwin(v72);
  v18 = &v67 - v17;
  v71 = sub_100003768(&qword_100188968, &qword_100121CC0);
  v19 = __chkstk_darwin(v71);
  v76 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v82 = &v67 - v24;
  v81 = *a1;
  if (*(v81 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8))
  {
    v25 = static VerticalAlignment.top.getter();
  }

  else
  {
    v25 = static VerticalAlignment.center.getter();
  }

  *v13 = v25;
  *(v13 + 1) = 0;
  v13[16] = 0;
  v26 = sub_100003768(&qword_100188970, &qword_100121CC8);
  sub_100009AC8(a1, &v13[*(v26 + 44)]);
  static AccessibilityChildBehavior.contain.getter();
  sub_10000AAEC(&qword_100188978, &qword_100188950, &qword_100121CA8, &protocol conformance descriptor for HStack<A>);
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v11, v75);
  sub_10000ABCC(v13, &qword_100188950, &qword_100121CA8);
  v27 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  (*(v14 + 32))(v18, v16, v74);
  v36 = &v18[*(v72 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = static Edge.Set.bottom.getter();
  sub_10000AB34(v18, v23, &qword_100188960, &qword_100121CB8);
  v38 = &v23[*(v71 + 36)];
  *v38 = v37;
  *(v38 + 8) = 0u;
  *(v38 + 24) = 0u;
  v39 = 1;
  v38[40] = 1;
  sub_10000AB34(v23, v82, &qword_100188968, &qword_100121CC0);
  v40 = *(v81 + OBJC_IVAR____TtC11SupportFlow15PlacardInfoItem_action);
  if (v40)
  {
    v41 = sub_100003768(&qword_100188988, &qword_100121CD8);
    swift_retain_n();
    v42 = v70;
    BorderedButtonStyle.init()();
    v43 = a1[2];
    v84 = a1[3];
    v85[0] = v43;
    v44 = a1[4];
    v45 = a1[5];
    v46 = a1[6];
    v47 = swift_allocObject();
    v48 = *(a1 + 1);
    *(v47 + 16) = *a1;
    *(v47 + 32) = v48;
    *(v47 + 48) = *(a1 + 2);
    *(v47 + 64) = a1[6];
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000AB80(v85, v83, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(&v84, v83, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(v85, v83, &qword_100188990, &qword_100121CE0);
    sub_10000AB80(&v84, v83, &qword_100188990, &qword_100121CE0);

    sub_100006568(v45, v46);
    sub_10000AAA4(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    *v42 = Environment.init<A>(_:)();
    *(v42 + 8) = v49 & 1;
    *(v42 + 16) = v40;
    v50 = v84;
    *(v42 + v41[11]) = v85[0];
    *(v42 + v41[12]) = v50;
    v51 = (v42 + v41[13]);
    *v51 = sub_10000A844;
    v51[1] = v47;
    v52 = static Alignment.center.getter();
    v54 = v53;
    v55 = (v42 + *(sub_100003768(&qword_100188998, &qword_100121CE8) + 36));
    *v55 = v44;
    v55[1] = v52;
    v55[2] = v54;
    v56 = v42 + *(v69 + 36);
    v57 = enum case for RoundedCornerStyle.continuous(_:);
    v58 = type metadata accessor for RoundedCornerStyle();
    (*(*(v58 - 8) + 104))(v56, v57, v58);
    *(v56 + *(sub_100003768(&qword_1001889A0, &qword_100121CF0) + 36)) = 256;

    static String.stepSectionActionButton.getter();
    sub_10000A84C();
    v59 = v68;
    View.accessibilityIdentifier(_:)();

    sub_10000ABCC(v42, &qword_100188938, &qword_100121C90);
    v60 = v78;
    sub_10000AB34(v59, v78, &qword_100188940, &qword_100121C98);
    v39 = 0;
  }

  else
  {
    v60 = v78;
  }

  sub_100003CE8(v60, v39, 1, v77);
  v61 = v82;
  v62 = v76;
  sub_10000AB80(v82, v76, &qword_100188968, &qword_100121CC0);
  v63 = v79;
  sub_10000AB80(v60, v79, &qword_100188948, &qword_100121CA0);
  v64 = v80;
  sub_10000AB80(v62, v80, &qword_100188968, &qword_100121CC0);
  v65 = sub_100003768(&qword_100188980, &qword_100121CD0);
  sub_10000AB80(v63, v64 + *(v65 + 48), &qword_100188948, &qword_100121CA0);
  sub_10000ABCC(v60, &qword_100188948, &qword_100121CA0);
  sub_10000ABCC(v61, &qword_100188968, &qword_100121CC0);
  sub_10000ABCC(v63, &qword_100188948, &qword_100121CA0);
  return sub_10000ABCC(v62, &qword_100188968, &qword_100121CC0);
}

uint64_t sub_100009AC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = type metadata accessor for AccessibilityChildBehavior();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100003768(&qword_1001889C8, &qword_100121CF8);
  __chkstk_darwin(v36);
  v6 = &v34 - v5;
  v40 = sub_100003768(&qword_1001889D0, &qword_100121D00);
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = &v34 - v7;
  v8 = sub_100003768(&qword_1001889D8, &qword_100121D08);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v35 = &v34 - v15;
  v16 = sub_100003768(&qword_1001889E0, &qword_100121D10);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  v19 = sub_100003768(&qword_1001889E8, &qword_100121D18);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v34 - v23;
  sub_10000AB80(*a1 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image, v18, &qword_1001889F0, &qword_100121D20);
  v25 = static Edge.Set.trailing.getter();
  v26 = &v18[*(v16 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_10000A9E8();
  View.accessibilityHidden(_:)();
  sub_10000ABCC(v18, &qword_1001889E0, &qword_100121D10);
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0x4010000000000000;
  v6[16] = 0;
  v27 = sub_100003768(&qword_100188A08, &qword_100121D28);
  sub_10000A07C(a1, &v6[*(v27 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  sub_10000AAEC(&qword_100188A10, &qword_1001889C8, &qword_100121CF8, &protocol conformance descriptor for VStack<A>);
  v28 = v34;
  View.accessibilityElement(children:)();
  (*(v39 + 8))(v4, v41);
  sub_10000ABCC(v6, &qword_1001889C8, &qword_100121CF8);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v38 + 32))(v14, v28, v40);
  memcpy(&v14[*(v9 + 44)], __src, 0x70uLL);
  v29 = v35;
  sub_10000AB34(v14, v35, &qword_1001889D8, &qword_100121D08);
  sub_10000AB80(v24, v22, &qword_1001889E8, &qword_100121D18);
  v30 = v37;
  sub_10000AB80(v29, v37, &qword_1001889D8, &qword_100121D08);
  v31 = v42;
  sub_10000AB80(v22, v42, &qword_1001889E8, &qword_100121D18);
  v32 = sub_100003768(&qword_100188A18, &qword_100121D30);
  sub_10000AB80(v30, v31 + *(v32 + 48), &qword_1001889D8, &qword_100121D08);
  sub_10000ABCC(v29, &qword_1001889D8, &qword_100121D08);
  sub_10000ABCC(v24, &qword_1001889E8, &qword_100121D18);
  sub_10000ABCC(v30, &qword_1001889D8, &qword_100121D08);
  return sub_10000ABCC(v22, &qword_1001889E8, &qword_100121D18);
}

uint64_t sub_10000A07C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_100003768(&qword_100188A20, &qword_100121D38);
  v4 = __chkstk_darwin(v3 - 8);
  v59 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = v53 - v6;
  v55 = sub_100003768(&qword_100188A28, &qword_100121D40);
  v7 = __chkstk_darwin(v55);
  v54 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v53 - v9;
  v11 = *a1;
  v12 = (*a1 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v13 = v12[1];
  v60 = *v12;
  v61 = v13;
  v14 = sub_10000AC24();

  v53[0] = v14;
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  static Font.Weight.bold.getter();
  v20 = Text.fontWeight(_:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_10000AC78(v15, v17, v19 & 1);

  v60 = v20;
  v61 = v22;
  v24 &= 1u;
  v62 = v24;
  v63 = v26;
  v64 = 256;
  static String.stepSectionActionTitle.getter();
  sub_100003768(&qword_100188A38, &qword_100121D48);
  v27 = sub_10000AC88();
  v57 = v10;
  v53[1] = v27;
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v20, v22, v24);

  v28 = *(v11 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  if (v28)
  {
    v60 = *(v11 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
    v61 = v28;

    v29 = Text.init<A>(_:)();
    v31 = v30;
    v33 = v32;
    static Font.subheadline.getter();
    v34 = Text.font(_:)();
    v36 = v35;
    v38 = v37;

    sub_10000AC78(v29, v31, v33 & 1);

    LODWORD(v60) = static HierarchicalShapeStyle.secondary.getter();
    v39 = Text.foregroundStyle<A>(_:)();
    v41 = v40;
    LOBYTE(v31) = v42;
    v44 = v43;
    sub_10000AC78(v34, v36, v38 & 1);

    v60 = v39;
    v61 = v41;
    v62 = v31 & 1;
    v63 = v44;
    v64 = 256;
    static String.stepSectionActionDescription.getter();
    v45 = v54;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v39, v41, v31 & 1);

    v46 = v56;
    sub_10000AB34(v45, v56, &qword_100188A28, &qword_100121D40);
    v47 = 0;
  }

  else
  {
    v47 = 1;
    v46 = v56;
    v45 = v54;
  }

  sub_100003CE8(v46, v47, 1, v55);
  v48 = v57;
  sub_10000AB80(v57, v45, &qword_100188A28, &qword_100121D40);
  v49 = v59;
  sub_10000AB80(v46, v59, &qword_100188A20, &qword_100121D38);
  v50 = v58;
  sub_10000AB80(v45, v58, &qword_100188A28, &qword_100121D40);
  v51 = sub_100003768(&qword_100188A48, &unk_100121D50);
  sub_10000AB80(v49, v50 + *(v51 + 48), &qword_100188A20, &qword_100121D38);
  sub_10000ABCC(v46, &qword_100188A20, &qword_100121D38);
  sub_10000ABCC(v48, &qword_100188A28, &qword_100121D40);
  sub_10000ABCC(v49, &qword_100188A20, &qword_100121D38);
  return sub_10000ABCC(v45, &qword_100188A28, &qword_100121D40);
}

void *sub_10000A538(void *result)
{
  v1 = result[5];
  if (v1)
  {
    return v1(*result);
  }

  return result;
}

unint64_t sub_10000A5BC()
{
  result = qword_1001888D8;
  if (!qword_1001888D8)
  {
    sub_100004D48(&qword_1001888D0, &qword_100121C58);
    sub_10000A674();
    sub_10000AAEC(&qword_100188920, &qword_100188928, &qword_100121C80, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888D8);
  }

  return result;
}

unint64_t sub_10000A674()
{
  result = qword_1001888E0;
  if (!qword_1001888E0)
  {
    sub_100004D48(&qword_1001888E8, &qword_100121C60);
    sub_10000A72C();
    sub_10000AAEC(&qword_100188910, &qword_100188918, &unk_100127450, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888E0);
  }

  return result;
}

unint64_t sub_10000A72C()
{
  result = qword_1001888F0;
  if (!qword_1001888F0)
  {
    sub_100004D48(&qword_1001888F8, &qword_100121C68);
    sub_10000AAEC(&qword_100188900, &qword_100188908, &unk_100121C70, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001888F0);
  }

  return result;
}

uint64_t sub_10000A7E4()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10000A84C()
{
  result = qword_1001889A8;
  if (!qword_1001889A8)
  {
    sub_100004D48(&qword_100188938, &qword_100121C90);
    sub_10000A904();
    sub_10000AAEC(&qword_1001889C0, &qword_1001889A0, &qword_100121CF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889A8);
  }

  return result;
}

unint64_t sub_10000A904()
{
  result = qword_1001889B0;
  if (!qword_1001889B0)
  {
    sub_100004D48(&qword_100188998, &qword_100121CE8);
    sub_10000AAEC(&qword_1001889B8, &qword_100188988, &qword_100121CD8, &unk_10012C230);
    sub_10000AAEC(&qword_100188920, &qword_100188928, &qword_100121C80, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889B0);
  }

  return result;
}

unint64_t sub_10000A9E8()
{
  result = qword_1001889F8;
  if (!qword_1001889F8)
  {
    sub_100004D48(&qword_1001889E0, &qword_100121D10);
    sub_10000AAA4(&qword_100188A00, type metadata accessor for FlowImageView, &unk_1001323B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001889F8);
  }

  return result;
}

uint64_t sub_10000AAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000AAEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000AB34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  v5 = sub_10000AFAC();
  v6(v5);
  return v4;
}

uint64_t sub_10000AB80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000AF8C(a1, a2, a3, a4);
  sub_10000AF7C();
  v5 = sub_10000AFAC();
  v6(v5);
  return v4;
}

uint64_t sub_10000ABCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003768(a2, a3);
  sub_10000AF7C();
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10000AC24()
{
  result = qword_100188A30;
  if (!qword_100188A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A30);
  }

  return result;
}

uint64_t sub_10000AC78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000AC88()
{
  result = qword_100188A40;
  if (!qword_100188A40)
  {
    sub_100004D48(&qword_100188A38, &qword_100121D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FlowStepPlacardViewStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000ADD8);
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

unint64_t sub_10000AE14()
{
  result = qword_100188A50;
  if (!qword_100188A50)
  {
    sub_100004D48(&qword_100188A58, qword_100121D80);
    sub_100004D48(&qword_1001888C8, &qword_100121C50);
    sub_100004D48(&qword_1001888D0, &qword_100121C58);
    sub_10000A5BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A50);
  }

  return result;
}

unint64_t sub_10000AF28()
{
  result = qword_100188A60;
  if (!qword_100188A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A60);
  }

  return result;
}

uint64_t sub_10000AF8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100003768(a3, a4);
}

__n128 sub_10000AFB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000AFCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10000B00C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = &type metadata for ForgotPasswordStepProvider;
  v13 = sub_10000B138();
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

unint64_t sub_10000B138()
{
  result = qword_100188A68;
  if (!qword_100188A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A68);
  }

  return result;
}

uint64_t sub_10000B18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B200()
{
  result = qword_100188A70;
  if (!qword_100188A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A70);
  }

  return result;
}

BOOL sub_10000B274(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_10000B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v13 = (a6 & 1) == 0 && a6 != 2;
    sub_10000B4E0(a3, &__src[6]);
    type metadata accessor for FlowViewDataProvider(0);
    sub_10000B550();
    __src[0] = Environment.init<A>(_:)();
    LOBYTE(__src[1]) = v14 & 1;
    __src[2] = a1;
    __src[3] = a2;
    __src[4] = a6;
    LOBYTE(__src[5]) = 1;
    BYTE1(__src[5]) = v13;
    __src[11] = a4;
    __src[12] = a5;
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000B5A8(__dst, __src);
    v17 = 1;

    sub_100006568(a4, a5);
    sub_10000B604();
    sub_10000B658();
    _ConditionalContent<>.init(storage:)();
    return sub_10000B6AC(__dst);
  }

  else
  {
    strcpy(&__src[4], "SU_ERROR_OTHER");
    sub_10000B604();
    sub_10000B658();
    return _ConditionalContent<>.init(storage:)();
  }
}

BOOL sub_10000B470(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    return (a1 == a3) & ~a4;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (a1 != 2)
  {
    return a3 != 2 && ((a3 ^ a1) & 1) == 0;
  }

  return a3 == 2;
}

uint64_t sub_10000B4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B550()
{
  result = qword_1001886D0;
  if (!qword_1001886D0)
  {
    type metadata accessor for FlowViewDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001886D0);
  }

  return result;
}

unint64_t sub_10000B604()
{
  result = qword_100188A78;
  if (!qword_100188A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A78);
  }

  return result;
}

unint64_t sub_10000B658()
{
  result = qword_100188A80;
  if (!qword_100188A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A80);
  }

  return result;
}

uint64_t sub_10000B700(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 2;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10000B7ACLL);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 2;
      default:
        break;
    }
  }

  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000B7C0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x10000B894);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10000B8BC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10000B8D0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *sub_10000B8EC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10000B9B8);
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

unint64_t sub_10000B9F0()
{
  result = qword_100188A88;
  if (!qword_100188A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188A88);
  }

  return result;
}

uint64_t sub_10000BA4C()
{
  swift_getKeyPath();
  sub_10000C118();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + qword_100188A90);
}

uint64_t sub_10000BAC4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + qword_100188A90);
  if (v3 != 2)
  {
    if (result != 2 && ((v3 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v5 = __chkstk_darwin(KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_10000BE48(v5, sub_10000C100, v6);
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + qword_100188A90) = result;
  return result;
}

uint64_t sub_10000BBA0(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000C30C();
  v11 = v10 - v9;
  *(v1 + qword_100188A90) = 2;
  ObservationRegistrar.init()();
  (*(v7 + 104))(v11, enum case for SupportFlowIdentifier.forgotPassword(_:), v5);

  sub_1001056D8(v11, &type metadata for ForgotPasswordStepOverrideProvider, a1, 0, 0, v12);
  v14 = v13;
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100105CC8();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_10010450C();

  return v14;
}

uint64_t sub_10000BDEC()
{
  if (sub_10000BA4C() == 2)
  {
    v0 = 0;
  }

  else
  {
    v1 = sub_10000BA4C();
    if (v1 == 2 || (v1 & 1) != 0)
    {
      v0 = 2;
    }

    else
    {
      v0 = 1;
    }
  }

  return sub_1001077F8(v0);
}

uint64_t sub_10000BED0()
{
  v1 = qword_100188A98;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_10000BF2C()
{
  v0 = sub_10011484C();
  v1 = qword_100188A98;
  type metadata accessor for ObservationRegistrar();
  sub_10000C31C();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for ForgotPasswordFlowViewModel(uint64_t a1)
{
  result = qword_100188AC8;
  if (!qword_100188AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C010(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10000C0AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000BA4C();
  *a1 = result;
  return result;
}

unint64_t sub_10000C118()
{
  result = qword_100188E08[0];
  if (!qword_100188E08[0])
  {
    type metadata accessor for ForgotPasswordFlowViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_100188E08);
  }

  return result;
}

uint64_t sub_10000C180()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_10000C30C();
  v6 = v5 - v4;
  v7 = type metadata accessor for Logger();
  sub_10000C270(v7, qword_1001A5668);
  sub_10000C2D4(v7, qword_1001A5668);
  (*(v2 + 104))(v6, enum case for SupportFlowIdentifier.forgotPassword(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t *sub_10000C270(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000C2D4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C330()
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

uint64_t (*sub_10000C464(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_10000C494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10000C4DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000C4FC(uint64_t a1, int a2)
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

uint64_t sub_10000C53C(uint64_t result, int a2, int a3)
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

uint64_t sub_10000C5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a2;
  v38 = *(a1 + 16);
  type metadata accessor for Optional();
  sub_100004D48(&qword_100188E90, &qword_100122198);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  v36 = type metadata accessor for TupleView();
  v5 = sub_10000DEF8();
  sub_10000DF20();
  v10 = type metadata accessor for FlowStepStackView(v6, v7, v8, v9);
  sub_100008780();
  v43 = v11;
  __chkstk_darwin(v12);
  v35 = &v31 - v13;
  sub_100006A88();
  WitnessTable = swift_getWitnessTable();
  v45 = v10;
  v46 = WitnessTable;
  v40 = &opaque type descriptor for <<opaque return type of View.onLoad(perform:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_100008780();
  v42 = v14;
  v16 = __chkstk_darwin(v15);
  v34 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v37 = &v31 - v18;
  v19 = v3[3];
  v33 = v3[2];
  v20 = v3[6];
  v32 = v3[5];
  sub_10000B4E0((v3 + 7), v47);
  v31 = *(*(a1 - 8) + 16);
  v31(&v45, v3, a1);
  v21 = swift_allocObject();
  sub_10000DF2C(v21);

  v30 = v5;
  v22 = v35;
  sub_100035B04(v33, v19, v32, v20, 0, v47, sub_10000D7BC, v21, v35, v36, v30);
  v31(&v45, v3, a1);
  v23 = swift_allocObject();
  sub_10000DF2C(v23);
  v24 = v34;
  v25 = WitnessTable;
  View.onLoad(perform:)();

  (*(v43 + 8))(v22, v10);
  v45 = v10;
  v46 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v37;
  v27 = OpaqueTypeMetadata2;
  sub_10000DF20();
  sub_1000C6A00();
  v28 = *(v42 + 8);
  v28(v24, v27);
  sub_10000DF20();
  sub_1000C6A00();
  return (v28)(v26, v27);
}

uint64_t sub_10000CA04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v7 = sub_100003768(&qword_100188E90, &qword_100122198);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = __chkstk_darwin(v7);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v43 - v11;
  v12 = *(a2 - 1);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Optional();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v44 = &v43 - v24;
  v25 = *(a1 + 96);
  if (v25)
  {
    v26 = a3;
    v27 = *(v23 + 104);
    v43 = v23;

    v25(v28);
    sub_1000068F8(v25, v27);
    sub_1000C6A00();
    v29 = *(v12 + 8);
    v29(v15, a2);
    sub_1000C6A00();
    v30 = v17;
    v31 = v43;
    v29(v30, a2);
    a3 = v26;
    (*(v12 + 32))(v22, v15, a2);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v23;
  }

  sub_100003CE8(v22, v32, 1, a2);
  v33 = v44;
  sub_10000625C(v22, v44);
  v43 = *(v19 + 8);
  v34 = v43(v22, v18);
  __chkstk_darwin(v34);
  v35 = a3;
  *(&v43 - 4) = a2;
  *(&v43 - 3) = a3;
  *(&v43 - 2) = v31;
  sub_100003768(&qword_100188E98, &qword_1001221B8);
  sub_10000D990();
  v36 = v45;
  Section<>.init(content:)();
  (*(v19 + 16))(v22, v33, v18);
  v54[0] = v22;
  v38 = v48;
  v37 = v49;
  v39 = v46;
  (*(v48 + 16))(v46, v36, v49);
  v54[1] = v39;
  v53[0] = v18;
  v53[1] = v37;
  v50 = v35;
  WitnessTable = swift_getWitnessTable();
  v52 = sub_10000DBE8();
  sub_1000C2BF0(v54, 2, v53);
  v40 = *(v38 + 8);
  v40(v36, v37);
  v41 = v43;
  v43(v33, v18);
  v40(v39, v37);
  return v41(v22, v18);
}

uint64_t sub_10000CEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002BF6C(*(a1 + 32));
  v13 = v6;
  swift_getKeyPath();
  v8 = type metadata accessor for FlowStepActionsContentView(0, a2, a3, v7);
  (*(*(v8 - 8) + 16))(__src, a1, v8);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  memcpy(v9 + 4, __src, 0x70uLL);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10000DCE8;
  *(v10 + 24) = v9;
  sub_100003768(&qword_100188EC8, &qword_1001221F0);
  sub_100003768(&qword_100188EB0, &qword_1001221C0);
  sub_10000DD5C();
  sub_10000DA14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10000D01C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  v26 = a6;
  v25 = sub_100003768(&qword_100188ED8, &qword_1001221F8);
  v10 = *(v25 - 8);
  __chkstk_darwin(v25);
  v12 = &v23 - v11;
  v14 = type metadata accessor for FlowStepActionsContentView(0, a4, a5, v13);
  (*(*(v14 - 8) + 16))(__src, a3, v14);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  memcpy(v15 + 4, __src, 0x70uLL);
  v15[18] = a2;
  v16 = type metadata accessor for FlowViewDataProvider(0);
  v17 = sub_10000DBA0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);

  __src[0] = Environment.init<A>(_:)();
  LOBYTE(__src[1]) = v18 & 1;
  __src[2] = a2;
  __src[3] = sub_10000DE38;
  __src[4] = v15;

  sub_10000C330();
  v19 = sub_10000DB4C();
  View.environment<A>(_:)();

  static String.stepSectionActionsFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100121620;
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  *(v20 + 32) = v24;
  String.init(format:_:)();

  __src[0] = &type metadata for FlowStepActionView;
  __src[1] = v16;
  __src[2] = v19;
  __src[3] = v17;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_10000D32C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C330();
  (*(v3 + 104))(v5, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v2);
  sub_10008577C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000D450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D4EC, v5, v4);
}

uint64_t sub_10000D4EC()
{
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v2 + 16) = v8;
  *(v2 + 32) = v1;
  sub_10000DF20();
  sub_10000D6D4(v3, v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10000D5A4(uint64_t *a1, uint64_t a2)
{
  v2 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C330();
  (*(v3 + 104))(v5, enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:), v2);
  sub_10008577C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10000D6D4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  result = sub_100114850(a3);
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

uint64_t sub_10000D7C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_10000D450(v0 + 32, v2, v3);
}

uint64_t sub_10000D870()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10000D990()
{
  result = qword_100188EA0;
  if (!qword_100188EA0)
  {
    sub_100004D48(&qword_100188E98, &qword_1001221B8);
    sub_10000DA14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EA0);
  }

  return result;
}

unint64_t sub_10000DA14()
{
  result = qword_100188EA8;
  if (!qword_100188EA8)
  {
    sub_100004D48(&qword_100188EB0, &qword_1001221C0);
    type metadata accessor for FlowViewDataProvider(255);
    sub_10000DB4C();
    sub_10000DBA0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
    swift_getOpaqueTypeConformance2();
    sub_10000DBA0(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EA8);
  }

  return result;
}

unint64_t sub_10000DB4C()
{
  result = qword_100188EB8;
  if (!qword_100188EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EB8);
  }

  return result;
}

uint64_t sub_10000DBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000DBE8()
{
  result = qword_100188EC0;
  if (!qword_100188EC0)
  {
    sub_100004D48(&qword_100188E90, &qword_100122198);
    sub_10000D990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188EC0);
  }

  return result;
}

uint64_t sub_10000DC78()
{

  if (v0[14])
  {
    sub_1000086BC(v0 + 11);
  }

  if (v0[16])
  {
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10000DCF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000DD5C()
{
  result = qword_100188ED0;
  if (!qword_100188ED0)
  {
    sub_100004D48(&qword_100188EC8, &qword_1001221F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188ED0);
  }

  return result;
}

uint64_t sub_10000DDC0()
{

  if (v0[14])
  {
    sub_1000086BC(v0 + 11);
  }

  if (v0[16])
  {
  }

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_10000DE48(void *a1)
{
  type metadata accessor for Optional();
  sub_100004D48(&qword_100188E90, &qword_100122198);
  sub_100006AA0();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  sub_10000DEF8();
  v1 = sub_100006AA0();
  type metadata accessor for FlowStepStackView(v1, v2, v3, v4);
  sub_100006A88();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000DEF8()
{

  return swift_getWitnessTable();
}

void *sub_10000DF2C(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  v5 = a1 + 4;

  return memcpy(v5, (v3 - 240), 0x70uLL);
}

uint64_t sub_10000DF4C(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v2);
  sub_10000ED78();
  __chkstk_darwin(v3);
  v5 = &v19[-v4];
  v6 = sub_100003768(&qword_100188EF0, &qword_100122200);
  sub_10000ED84(v6);
  sub_10000ED78();
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v10 = type metadata accessor for URLComponents();
  if (sub_10000E5F0(v5, 1, v10) == 1)
  {
    v11 = &qword_100188EE8;
    v12 = &unk_10012A330;
    v13 = v5;
  }

  else
  {
    v14 = URLComponents.queryItems.getter();
    v15 = (*(*(v10 - 8) + 8))(v5, v10);
    if (!v14)
    {
      return 0;
    }

    __chkstk_darwin(v15);
    *&v19[-16] = a1;
    sub_100085C20(sub_10000E67C, v14, v9);

    v16 = type metadata accessor for URLQueryItem();
    if (sub_10000E5F0(v9, 1, v16) != 1)
    {
      v17 = URLQueryItem.value.getter();
      (*(*(v16 - 8) + 8))(v9, v16);
      return v17;
    }

    v11 = &qword_100188EF0;
    v12 = &qword_100122200;
    v13 = v9;
  }

  sub_10000ABCC(v13, v11, v12);
  return 0;
}

uint64_t sub_10000E188()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == SupportFlowURLParameter.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_10000E220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for SupportFlowURLParameter();
  sub_100008780();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000C30C();
  v9 = v8 - v7;
  v10 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v10);
  sub_10000ED78();
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for URL();
  sub_100008780();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_10000C30C();
  v20 = v19 - v18;
  v21 = type metadata accessor for DeepLinkContext(0);
  sub_10000AF7C();
  __chkstk_darwin(v22);
  sub_10000C30C();
  v25 = v24 - v23;
  sub_10000EC9C(a1, v13, &qword_100188EE0, &unk_100122AE0);
  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_10000ABCC(a1, &qword_100188EE0, &unk_100122AE0);
    sub_10000ABCC(v13, &qword_100188EE0, &unk_100122AE0);
    v26 = 1;
    v27 = v51;
  }

  else
  {
    v50 = a1;
    v46 = v14;
    v47 = v16;
    (*(v16 + 32))(v20, v13, v14);
    v45 = *(v5 + 104);
    v45(v9, enum case for SupportFlowURLParameter.type(_:), v3);
    sub_10000DF4C(v9);
    v29 = v28;
    v30 = *(v5 + 8);
    v48 = v3;
    v49 = v5 + 8;
    v30(v9, v3);
    if (v29)
    {
      SupportFlowIdentifier.init(rawValue:)();
    }

    else
    {
      v31 = type metadata accessor for SupportFlowIdentifier();
      sub_100003CE8(v25, 1, 1, v31);
    }

    v32 = URL.flowStep.getter();
    v33 = (v25 + v21[5]);
    *v33 = v32;
    v33[1] = v34;
    v35 = URL.flowSession.getter();
    v36 = (v25 + v21[6]);
    *v36 = v35;
    v36[1] = v37;
    v38 = v48;
    v45(v9, enum case for SupportFlowURLParameter.referrer(_:), v48);
    v39 = sub_10000DF4C(v9);
    v41 = v40;
    sub_10000ABCC(v50, &qword_100188EE0, &unk_100122AE0);
    v30(v9, v38);
    (*(v47 + 8))(v20, v46);
    v42 = (v25 + v21[7]);
    *v42 = v39;
    v42[1] = v41;
    v27 = v51;
    sub_10000E618(v25, v51);
    v26 = 0;
  }

  return sub_100003CE8(v27, v26, 1, v21);
}

uint64_t type metadata accessor for DeepLinkContext(uint64_t a1)
{
  result = qword_100188F50;
  if (!qword_100188F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeepLinkContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
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

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_10000E78C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&unk_10018A300, &unk_1001241E0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_10000E844(uint64_t a1)
{
  sub_10000E8D0(319);
  if (v1 <= 0x3F)
  {
    sub_10000E928();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000E8D0(uint64_t a1)
{
  if (!qword_100188F60)
  {
    type metadata accessor for SupportFlowIdentifier();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100188F60);
    }
  }
}

void sub_10000E928()
{
  if (!qword_100188F68)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100188F68);
    }
  }
}

uint64_t sub_10000E978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  sub_100008780();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = sub_100003768(&qword_100188FA0, &qword_10012A190);
  sub_10000ED84(v15);
  sub_10000ED78();
  v17 = __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = *(v17 + 56);
  sub_10000EC9C(a1, &v43 - v18, &unk_10018A300, &unk_1001241E0);
  sub_10000EC9C(a2, &v19[v20], &unk_10018A300, &unk_1001241E0);
  sub_10000ED90(v19);
  if (!v21)
  {
    sub_10000EC9C(v19, v14, &unk_10018A300, &unk_1001241E0);
    sub_10000ED90(&v19[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      sub_10000ECFC();
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v6 + 8);
      v24(v10, v4);
      v24(v14, v4);
      sub_10000ABCC(v19, &unk_10018A300, &unk_1001241E0);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_10000ABCC(v19, &qword_100188FA0, &qword_10012A190);
    return 0;
  }

  sub_10000ED90(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_10000ABCC(v19, &unk_10018A300, &unk_1001241E0);
LABEL_13:
  type metadata accessor for DeepLinkContext(0);
  sub_10000ED54();
  if (v27)
  {
    if (!v25)
    {
      return 0;
    }

    sub_10000ED68(v26);
    v30 = v21 && v28 == v29;
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  sub_10000ED54();
  if (v33)
  {
    if (!v31)
    {
      return 0;
    }

    sub_10000ED68(v32);
    v36 = v21 && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  sub_10000ED54();
  if (v39)
  {
    if (v37)
    {
      sub_10000ED68(v38);
      v42 = v21 && v40 == v41;
      if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v37)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10000EC9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003768(a3, a4);
  sub_10000AF7C();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10000ECFC()
{
  result = qword_100188FA8;
  if (!qword_100188FA8)
  {
    type metadata accessor for SupportFlowIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FA8);
  }

  return result;
}

uint64_t sub_10000EDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v41 = a2;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ListSectionSpacing();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003768(&qword_100188FC0, &qword_100122328);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = sub_100003768(&qword_100188FC8, &qword_100122330);
  v15 = *(v14 - 8);
  v34 = v14;
  v35 = v15;
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  static Edge.Set.top.getter();
  sub_100003768(&qword_100188FD0, &qword_100122338);
  sub_10000AAEC(&qword_100188FD8, &qword_100188FD0, &qword_100122338, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.listPadding(_:_:)();
  static ListSectionSpacing.compact.getter();
  v18 = *(sub_100003768(&qword_100188FE0, &qword_100122340) + 36);
  (*(v8 + 16))(&v13[v18], v10, v7);
  sub_100003CE8(&v13[v18], 0, 1, v7);
  KeyPath = swift_getKeyPath();
  v20 = &v13[*(v11 + 36)];
  v21 = *(sub_100003768(&qword_100188FE8, &qword_100124FA0) + 28);
  (*(v8 + 32))(v20 + v21, v10, v7);
  sub_100003CE8(v20 + v21, 0, 1, v7);
  *v20 = KeyPath;
  v22 = v33;
  InsetGroupedListStyle.init()();
  v23 = sub_10000F714();
  v24 = v36;
  View.listStyle<A>(_:)();
  v25 = v22;
  v26 = v24;
  (*(v37 + 8))(v25, v24);
  sub_10000F8F4(v13);
  v27 = v38;
  v28 = v39;
  v29 = v40;
  (*(v39 + 104))(v38, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v40);
  v42 = v11;
  v43 = v26;
  v44 = v23;
  v45 = &protocol witness table for InsetGroupedListStyle;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v28 + 8))(v27, v29);
  return (*(v35 + 8))(v17, v30);
}

void *sub_10000F2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003768(&qword_100189020, &qword_100122390);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = __src - v6;
  v8 = static Edge.Set.top.getter();
  v9 = sub_100003768(&qword_100189028, &qword_100122398);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v10 = &v7[*(sub_100003768(&qword_100189030, &qword_1001223A0) + 36)];
  *v10 = v8;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  v10[40] = 1;
  KeyPath = swift_getKeyPath();
  v12 = &v7[*(sub_100003768(&qword_100189038, &qword_1001223D8) + 36)];
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v7[*(v5 + 44)];
  v14 = *(sub_100003768(&qword_100189040, &qword_1001223E0) + 28);
  v15 = type metadata accessor for Text.Case();
  sub_100003CE8(v13 + v14, 1, 1, v15);
  *v13 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000FB40(v7, a2);
  v16 = sub_100003768(&qword_100189048, &qword_100122418);
  return memcpy((a2 + *(v16 + 36)), __src, 0x70uLL);
}

unint64_t sub_10000F4E8()
{
  result = qword_100188FB0;
  if (!qword_100188FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FB0);
  }

  return result;
}

uint64_t sub_10000F55C(void *a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_10000F5CC()
{
  result = qword_100188FB8;
  if (!qword_100188FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FB8);
  }

  return result;
}

unint64_t sub_10000F714()
{
  result = qword_100188FF0;
  if (!qword_100188FF0)
  {
    sub_100004D48(&qword_100188FC0, &qword_100122328);
    sub_10000F7CC();
    sub_10000AAEC(&qword_100189010, &qword_100188FE8, &qword_100124FA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FF0);
  }

  return result;
}

unint64_t sub_10000F7CC()
{
  result = qword_100188FF8;
  if (!qword_100188FF8)
  {
    sub_100004D48(&qword_100188FE0, &qword_100122340);
    sub_100004D48(&qword_100188FD0, &qword_100122338);
    sub_10000AAEC(&qword_100188FD8, &qword_100188FD0, &qword_100122338, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000AAEC(&qword_100189000, &qword_100189008, &qword_100122380, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188FF8);
  }

  return result;
}

uint64_t sub_10000F8F4(uint64_t a1)
{
  v2 = sub_100003768(&qword_100188FC0, &qword_100122328);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F95C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000F990@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000FA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = sub_100003768(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v15 - v12;
  sub_100006578(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_10000FB40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189020, &qword_100122390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FBB0()
{
  sub_100004D48(&qword_100188FC8, &qword_100122330);
  sub_100004D48(&qword_100188FC0, &qword_100122328);
  type metadata accessor for InsetGroupedListStyle();
  sub_10000F714();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000FC74()
{
  result = qword_100189058;
  if (!qword_100189058)
  {
    sub_100004D48(&qword_100189048, &qword_100122418);
    sub_10000FD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189058);
  }

  return result;
}

unint64_t sub_10000FD00()
{
  result = qword_100189060;
  if (!qword_100189060)
  {
    sub_100004D48(&qword_100189020, &qword_100122390);
    sub_10000FDB8();
    sub_10000AAEC(&qword_100189090, &qword_100189040, &qword_1001223E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189060);
  }

  return result;
}

unint64_t sub_10000FDB8()
{
  result = qword_100189068;
  if (!qword_100189068)
  {
    sub_100004D48(&qword_100189038, &qword_1001223D8);
    sub_10000FE70();
    sub_10000AAEC(&qword_100189080, &qword_100189088, &qword_100122428, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189068);
  }

  return result;
}

unint64_t sub_10000FE70()
{
  result = qword_100189070;
  if (!qword_100189070)
  {
    sub_100004D48(&qword_100189030, &qword_1001223A0);
    sub_10000AAEC(&qword_100189078, &qword_100189028, &qword_100122398, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189070);
  }

  return result;
}

uint64_t sub_10000FF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PlacardInfoItemType(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  *(&v24 - v16) = 1;
  swift_storeEnumTagMultiPayload();
  v28 = &type metadata for CompromisedAccountStepProvider;
  v29 = sub_100010248();
  v27[0] = a3;
  sub_100003768(&qword_1001890A0, &qword_1001224B0);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  sub_10001029C(v17, v19 + v18);
  sub_10000B4E0(v27, v26);
  v25 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for PlacardInfoItem(0);
  sub_10001029C(v19 + v18, v15);
  swift_setDeallocating();
  sub_10006EB7C();
  sub_10001029C(v15, v12);
  sub_1000EFDB8(v12, 0, 0);
  sub_100010300(v15);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v20 = v25;
  sub_10000B4E0(v26, a4 + 40);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v21 = Environment.init<A>(_:)();
  LOBYTE(v15) = v22;
  sub_10001035C(v26);
  sub_100010300(v17);
  result = sub_10001035C(v27);
  *a4 = v21;
  *(a4 + 8) = v15 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = v20;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  return result;
}

unint64_t sub_100010248()
{
  result = qword_100189098;
  if (!qword_100189098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189098);
  }

  return result;
}

uint64_t sub_10001029C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlacardInfoItemType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010300(uint64_t a1)
{
  v2 = type metadata accessor for PlacardInfoItemType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001035C(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189310, &qword_1001221A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000103C8()
{
  result = qword_1001890A8;
  if (!qword_1001890A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890A8);
  }

  return result;
}

uint64_t sub_10001043C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_100010490(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

void *sub_100010524@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100003768(&qword_1001890B0, &qword_1001225E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = __src - v6;
  v8 = *(v1 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  sub_100010C34();

  if (v10)
  {
    v11 = &selRef_initWithBundleIdentifier_;
  }

  else
  {
    v11 = &selRef_initWithType_;
  }

  sub_100010B7C(v8, v9, v11);
  sub_1000107F0();
  v12 = swift_allocObject();
  memcpy((v12 + 16), v2, 0x50uLL);
  sub_100010CE4(v2, __src);
  sub_100003768(&qword_1001890C0, &qword_1001225F0);
  sub_100010D1C();
  AsyncIconImage.init<A, B>(icon:descriptor:transaction:content:placeholder:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v5 + 32))(a1, v7, v4);
  v13 = sub_100003768(&qword_1001890E0, &qword_1001225F8);
  return memcpy((a1 + *(v13 + 36)), __src, 0x70uLL);
}

id sub_1000107F0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 40);
  if (v5)
  {
    v6 = [objc_opt_self() imageDescriptorNamed:v5];
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    if (*(v0 + 56))
    {
      v16 = *(v0 + 8);
      v9 = *v0;
      v15 = *v0;
      if (v16 == 1)
      {
        v10 = v9;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v11 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100010E2C(&v15);
        (*(v2 + 8))(v4, v1);
        v10 = *&v14[1];
      }
    }

    else
    {
      v10 = *(v0 + 48);
    }

    v6 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v7 scale:{v8, v10}];
  }

  v12 = v6;
  [v6 setDrawBorder:1];
  return v12;
}

double sub_1000109D4@<D0>(uint64_t a3@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v8 = Image.resizable(capInsets:resizingMode:)();
  (*(v5 + 8))(v7, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v11[40] = v14;
  *&v11[24] = v13;
  *&v11[8] = v12;
  v9 = *&v11[18];
  *(a3 + 18) = *&v11[2];
  *a3 = v8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v9;
  result = *&v11[34];
  *(a3 + 50) = *&v11[34];
  *(a3 + 64) = *&v11[48];
  return result;
}

uint64_t sub_100010B54@<X0>(uint64_t *a1@<X8>)
{
  result = static Color.clear.getter();
  *a1 = result;
  return result;
}

id sub_100010B7C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 *a3];

  return v6;
}

unint64_t sub_100010C34()
{
  result = qword_1001890B8;
  if (!qword_1001890B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001890B8);
  }

  return result;
}

uint64_t sub_100010C78()
{
  sub_100010CC8(*(v0 + 16), *(v0 + 24));
  sub_100010CD4(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100010CC8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_100010D1C()
{
  result = qword_1001890C8;
  if (!qword_1001890C8)
  {
    sub_100004D48(&qword_1001890C0, &qword_1001225F0);
    sub_100010DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890C8);
  }

  return result;
}

unint64_t sub_100010DA8()
{
  result = qword_1001890D0;
  if (!qword_1001890D0)
  {
    sub_100004D48(&qword_1001890D8, &unk_10012CA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890D0);
  }

  return result;
}

uint64_t sub_100010E2C(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001890E8, &qword_100122600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010E98()
{
  result = qword_1001890F0;
  if (!qword_1001890F0)
  {
    sub_100004D48(&qword_1001890E0, &qword_1001225F8);
    sub_100010F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890F0);
  }

  return result;
}

unint64_t sub_100010F24()
{
  result = qword_1001890F8;
  if (!qword_1001890F8)
  {
    sub_100004D48(&qword_1001890B0, &qword_1001225E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001890F8);
  }

  return result;
}

uint64_t sub_100010FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
  }

  v11 = sub_100064CA4();

  *(a3 + 24) = &type metadata for WiFiStepProvider;
  *(a3 + 32) = sub_10000737C();
  *a3 = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(a3 + 40) = sub_1000112F4;
  *(a3 + 48) = v12;
}

uint64_t sub_100011168(uint64_t a1, char a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  sub_100064AD8();
}

uint64_t sub_1000112BC()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_100011304()
{
  result = qword_100189100;
  if (!qword_100189100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189100);
  }

  return result;
}

uint64_t sub_10001136C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100012478();
  v6 = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
LABEL_12:

    return sub_10000E5F0(v8, v3, v7);
  }

  if (v3 != 2147483645)
  {
    v7 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
    v8 = v4 + *(a3 + 28);
    goto LABEL_12;
  }

  v9 = *(v4 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  v11 = v10 <= 0;
  if (v10 < 0)
  {
    v10 = -1;
  }

  if (v11)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t sub_100011478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100012478();
  result = sub_100003768(&qword_100189108, &unk_1001226E0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5;
  }

  else
  {
    if (a3 == 2147483645)
    {
      *(v5 + *(a4 + 20) + 8) = (v4 + 1);
      return result;
    }

    v9 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
    v10 = v5 + *(a4 + 28);
  }

  return sub_100003CE8(v10, v4, v4, v9);
}

void sub_100011580(uint64_t a1)
{
  sub_100011704(319, &qword_100189178, type metadata accessor for SupportSolutions.ChatInfo);
  if (v1 <= 0x3F)
  {
    sub_1000116B4();
    if (v2 <= 0x3F)
    {
      sub_100011704(319, &unk_100189188, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001167C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000116B4()
{
  if (!qword_100189180)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100189180);
    }
  }
}

void sub_100011704(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100011758(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_1000117AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100011820()
{
  sub_100012478();
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);

  return sub_10000E5F0(v1, v0, v2);
}

uint64_t sub_100011884()
{
  sub_100012478();
  v2 = sub_100003768(&qword_100188EE0, &unk_100122AE0);

  return sub_100003CE8(v1, v0, v0, v2);
}

void sub_1000118D8(uint64_t a1)
{
  sub_100011704(319, &unk_100189188, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100011960()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  v3 = sub_100012484();
  sub_10000C270(v3, qword_1001A5680);
  v4 = sub_10000C2D4(v3, qword_1001A5680);
  URL.init(string:)();
  result = sub_10000E5F0(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100012448();
    return (*(v6 + 32))(v4, v0, v3);
  }

  return result;
}

uint64_t sub_100011A58()
{
  v1 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  v3 = sub_100012484();
  sub_10000C270(v3, qword_1001A5698);
  v4 = sub_10000C2D4(v3, qword_1001A5698);
  URL.init(string:)();
  result = sub_10000E5F0(v0, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100012448();
    return (*(v6 + 32))(v4, v0, v3);
  }

  return result;
}

uint64_t sub_100011B50@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for SupportOption.PhoneDetails();
  sub_100008780();
  v96 = v9;
  v97 = v8;
  __chkstk_darwin(v8);
  sub_10000C30C();
  v95 = v11 - v10;
  v12 = sub_100003768(&qword_100189250, &unk_100122740);
  v13 = sub_10000ED84(v12);
  __chkstk_darwin(v13);
  v100 = &v85[-v14];
  type metadata accessor for SupportOption.BZCHTDetails();
  sub_100008780();
  v90 = v16;
  v91 = v15;
  __chkstk_darwin(v15);
  sub_10000C30C();
  v89 = v18 - v17;
  type metadata accessor for ContactSolutionSubtype();
  sub_100008780();
  v92 = v20;
  v93 = v19;
  __chkstk_darwin(v19);
  sub_10000C30C();
  v23 = v22 - v21;
  v101 = type metadata accessor for SupportOption();
  sub_100008780();
  v99 = v24;
  __chkstk_darwin(v25);
  sub_100012454();
  v94 = v26 - v27;
  v29 = __chkstk_darwin(v28);
  v31 = &v85[-v30];
  __chkstk_darwin(v29);
  v98 = &v85[-v32];
  v33 = sub_100003768(&qword_100189258, &qword_1001268F0);
  v34 = sub_10000ED84(v33);
  __chkstk_darwin(v34);
  sub_100012454();
  v37 = v35 - v36;
  v39 = __chkstk_darwin(v38);
  v41 = &v85[-v40];
  __chkstk_darwin(v39);
  v43 = &v85[-v42];
  v44 = sub_100003768(&qword_100189108, &unk_1001226E0);
  v45 = sub_10000ED84(v44);
  __chkstk_darwin(v45);
  sub_100012454();
  v48 = v46 - v47;
  __chkstk_darwin(v49);
  v102 = &v85[-v50];
  v103 = a1;
  sub_100012318(a1, v43);
  v51 = type metadata accessor for ContactSupportOptions();
  sub_1000124A4(v43);
  if (v79)
  {
    sub_100012388(v43, &qword_100189258, &qword_1001268F0);
    v52 = 1;
LABEL_9:
    v73 = v101;
    v56 = v102;
    goto LABEL_10;
  }

  v86 = a2;
  v87 = a4;
  v88 = a3;
  v53 = ContactSupportOptions.hasChatSupportOption.getter();
  sub_100012448();
  v55 = *(v54 + 8);
  v55(v43, v51);
  if ((v53 & 1) == 0)
  {
LABEL_8:
    v52 = 1;
    a4 = v87;
    a3 = v88;
    LOBYTE(a2) = v86;
    goto LABEL_9;
  }

  sub_100012318(v103, v41);
  sub_1000124A4(v41);
  if (v79)
  {
    sub_100012388(v41, &qword_100189258, &qword_1001268F0);
    goto LABEL_8;
  }

  ContactSupportOptions.chatSupportOption.getter();
  v55(v41, v51);
  (*(v99 + 32))(v98, v31, v101);
  v71 = SupportOption.subTypeString.getter();
  v73 = v72;
  v75 = v92;
  v74 = v93;
  (*(v92 + 104))(v23, enum case for ContactSolutionSubtype.businessChat(_:), v93);
  v76 = ContactSolutionSubtype.rawValue.getter();
  v78 = v77;
  (*(v75 + 8))(v23, v74);
  v79 = v71 == v76 && v73 == v78;
  if (v79)
  {

    a4 = v87;
    a3 = v88;
    LOBYTE(a2) = v86;
    v56 = v102;
  }

  else
  {
    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    a4 = v87;
    a3 = v88;
    LOBYTE(a2) = v86;
    v56 = v102;
    if ((v80 & 1) == 0)
    {
      v81 = sub_100012464();
      v82(v81);
      v52 = 1;
      goto LABEL_10;
    }
  }

  v73 = v89;
  SupportOption.bzcht.getter();
  SupportOption.BZCHTDetails.rawURL.getter();
  (*(v90 + 8))(v73, v91);
  URL.init(string:)();

  v83 = sub_100012464();
  v84(v83);
  v52 = 0;
LABEL_10:
  v57 = type metadata accessor for SupportSolutions.ChatInfo(0);
  sub_100003CE8(v48, v52, 1, v57);
  sub_1000123E4(v48, v56, &qword_100189108, &unk_1001226E0);
  v58 = v103;
  sub_100012318(v103, v37);
  sub_1000124A4(v37);
  if (v79)
  {
    sub_100012388(v58, &qword_100189258, &qword_1001268F0);
    sub_100012388(v37, &qword_100189258, &qword_1001268F0);
    v59 = v100;
    sub_100003CE8(v100, 1, 1, v73);
  }

  else
  {
    v59 = v100;
    ContactSupportOptions.firstCallSupportOptionForHMT.getter();
    sub_100012448();
    (*(v60 + 8))(v37, v51);
    v61 = sub_10000E5F0(v59, 1, v73);
    if (v61 != 1)
    {
      v64 = v99;
      v65 = v94;
      (*(v99 + 32))(v94, v59, v73);
      v66 = v95;
      SupportOption.phone.getter();
      v62 = SupportOption.PhoneDetails.phoneNumber.getter();
      v63 = v67;
      sub_100012388(v58, &qword_100189258, &qword_1001268F0);
      (*(v96 + 8))(v66, v97);
      (*(v64 + 8))(v65, v73);
      v56 = v102;
      goto LABEL_17;
    }

    sub_100012388(v58, &qword_100189258, &qword_1001268F0);
  }

  sub_100012388(v59, &qword_100189250, &unk_100122740);
  v62 = 0;
  v63 = 1;
LABEL_17:
  sub_1000123E4(v56, a4, &qword_100189108, &unk_1001226E0);
  v68 = type metadata accessor for SupportSolutions(0);
  v69 = (a4 + v68[5]);
  *v69 = v62;
  v69[1] = v63;
  *(a4 + v68[6]) = a2 & 1;
  return sub_1000123E4(a3, a4 + v68[7], &qword_100188EE0, &unk_100122AE0);
}

uint64_t sub_100012318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189258, &qword_1001268F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012388(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003768(a2, a3);
  sub_100012448();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000123E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003768(a3, a4);
  sub_100012448();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100012484()
{

  return type metadata accessor for URL();
}

uint64_t sub_1000124F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000126E8();
  v4 = String.init(localized:table:bundle:locale:comment:)();
  v6 = v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_1000126E8();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v9 = v8;
  State.init(wrappedValue:)();
  a1[4] = v11;
  a1[5] = v12;
  type metadata accessor for FlowProgressView(0);
  result = AccessibilityFocusState.init<>()();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v9;
  return result;
}

unint64_t sub_100012690()
{
  result = qword_100189260;
  if (!qword_100189260)
  {
    type metadata accessor for FlowProgressView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189260);
  }

  return result;
}

uint64_t sub_100012700@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  v5 = sub_100012760();
  result = sub_10000B4E0(v1 + 32, (a1 + 2));
  *a1 = v4;
  a1[1] = v3;
  a1[7] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = v5;
  return result;
}

uint64_t sub_100012760()
{
  v1 = type metadata accessor for ActionInfoType(0);
  __chkstk_darwin(v1);
  v3 = &__src[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  type metadata accessor for ActionInfo(0);
  *v3 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100013068(v0, __src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x48uLL);
  return sub_1000ED69C(v3, 1, sub_1000130F8, v4);
}

uint64_t sub_100012858(void *a1)
{
  sub_100003768(&qword_100189318, qword_1001228D0);
  State.wrappedValue.getter();
  sub_1000128B4();
}

void sub_1000128B4()
{
  v6 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  [v6 setIsEphemeral:1];
  [v6 setAuthenticationType:2];
  [v6 setShouldPromptForPasswordOnly:0];
  [v6 setIsUsernameEditable:0];
  [v6 setNeedsPasswordChange:1];
  [v6 setNeedsCredentialRecovery:1];
  v1 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v1)
  {
    v2 = v1;
    aBlock[4] = sub_100013100;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012E98;
    aBlock[3] = &unk_1001783D8;
    v3 = _Block_copy(aBlock);
    v4 = v6;

    [v2 performPasswordResetWithContext:v4 completion:v3];

    _Block_release(v3);
    v5 = *(v0 + 16);
    *(v0 + 16) = v2;
  }

  else
  {
  }
}

uint64_t sub_100012A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_100003CE8(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  swift_errorRetain();
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = a2;

  sub_100085200();
}

uint64_t sub_100012BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100012C58, v7, v6);
}

uint64_t sub_100012C58()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 16);
    *(Strong + 16) = 0;
  }

  v3 = v0[8];
  if (!v3 || (v0[5] = v3, swift_errorRetain(), sub_100003768(&qword_100189398, &unk_100122910), sub_100013260(), (swift_dynamicCast() & 1) == 0) || (v4 = v0[6], v5 = [v4 code], v4, v5 != -7003))
  {
    if (qword_1001880F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C2D4(v6, qword_1001A5668);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (v3)
      {
        swift_errorRetain();
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v9 + 4) = v11;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "Reset password UI returned an error: %@", v9, 0xCu);
      sub_1000083A0(v10);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100012E98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100003768(&unk_100189380, &qword_1001228E8);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100012F48()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100012FAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100012FEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000130A0()
{

  if (*(v0 + 72))
  {
    sub_1000086BC((v0 + 48));
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100013108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100013120()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100013158()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000131A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000D870;

  return sub_100012BC0(a1, v4, v5, v7, v6);
}

unint64_t sub_100013260()
{
  result = qword_1001893A0;
  if (!qword_1001893A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001893A0);
  }

  return result;
}

uint64_t sub_1000132B4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000132CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000132E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFF5 && *(a1 + 24))
    {
      v2 = *a1 + 2147483637;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 10;
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

uint64_t sub_100013334(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483638;
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF5)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 9;
    }
  }

  return result;
}

uint64_t sub_1000133B4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    return v10[1];
  }

  return a1;
}

unint64_t sub_1000134F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = a2 & 1;
  sub_1000133B4(a1, a2 & 1);
  v8 = sub_1000DEC54(a3, 0);

  a4[3] = &type metadata for MessagesStepProvider;
  a4[4] = sub_10001362C();
  *a4 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v7;
  *(v9 + 32) = a3;
  a4[5] = sub_1000136C8;
  a4[6] = v9;

  return sub_1000136E0(a3);
}

uint64_t sub_1000135C4(uint64_t a1, char a2, unint64_t a3)
{
  sub_1000133B4(a1, a2 & 1);
  sub_1000DF334(a3);
}

unint64_t sub_10001362C()
{
  result = qword_1001893C0;
  if (!qword_1001893C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001893C0);
  }

  return result;
}

uint64_t sub_100013680()
{

  if (*(v0 + 32) >= 0xAuLL)
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000136E0(unint64_t result)
{
  if (result >= 0xA)
  {
  }

  return result;
}

uint64_t sub_100013704(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003768(&qword_1001893F0, &unk_100122A40);
  sub_100017BA0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_7:

    return sub_10000E5F0(a1 + v9, a2, v8);
  }

  type metadata accessor for Text.Measurements();
  sub_100017BA0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_7;
  }

  type metadata accessor for HMTSolution.Article();
  sub_100017BA0();
  if (*(v13 + 84) == a2)
  {
    v8 = v12;
    v9 = a3[10];
    goto LABEL_7;
  }

  v15 = *(a1 + a3[11] + 24);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

void sub_100013854(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100003768(&qword_1001893F0, &unk_100122A40);
  sub_100017BA0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    type metadata accessor for Text.Measurements();
    sub_100017BA0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v11 = a4[9];
    }

    else
    {
      type metadata accessor for HMTSolution.Article();
      sub_100017BA0();
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[11] + 24) = (a2 - 1);
        return;
      }

      v10 = v14;
      v11 = a4[10];
    }
  }

  sub_100003CE8(a1 + v11, a2, a2, v10);
}

uint64_t type metadata accessor for LearnMoreArticleView(uint64_t a1)
{
  result = qword_100189450;
  if (!qword_100189450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000139D8(uint64_t a1)
{
  sub_100013B1C(319, &qword_100189460, type metadata accessor for FlowViewDataProvider);
  if (v1 <= 0x3F)
  {
    sub_100013B1C(319, &qword_100189468, &type metadata accessor for ScenePhase);
    if (v2 <= 0x3F)
    {
      sub_100013B70(319, &qword_100189470, &type metadata for Int);
      if (v3 <= 0x3F)
      {
        sub_100013B70(319, &qword_100189478, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Text.Measurements();
          if (v5 <= 0x3F)
          {
            type metadata accessor for HMTSolution.Article();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100013B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100013B70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100013BD8()
{
  v1 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_10000C30C();
  v7 = v6 - v5;
  v8 = *v0;
  v9 = *(v0 + 8);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v7, v1);
    return v12;
  }

  return v8;
}

void sub_100013D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_10000C30C();
  v31 = v30 - v29;
  sub_100003768(&qword_1001894D0, &qword_100122AC8);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for LearnMoreArticleView(0);
  sub_10000EC9C(v20 + *(v35 + 20), v34, &qword_1001894D0, &qword_100122AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_10000AF7C();
    (*(v36 + 32))(v24, v34);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v27 + 8))(v31, v25);
  }

  sub_100017C18();
}

uint64_t sub_100013ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_100017AD0(&qword_1001886D0, type metadata accessor for FlowViewDataProvider, &unk_100129E68);
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v4 & 1;
  v5 = type metadata accessor for LearnMoreArticleView(0);
  v6 = v5[5];
  *(a2 + v6) = swift_getKeyPath();
  sub_100003768(&qword_1001894D0, &qword_100122AC8);
  swift_storeEnumTagMultiPayload();
  v7 = v5[6];
  State.init(wrappedValue:)();
  *(a2 + v7) = v30;
  v8 = v5[7];
  State.init(wrappedValue:)();
  *(a2 + v8) = v30;
  v9 = (a2 + v5[8]);
  State.init(wrappedValue:)();
  *v9 = v30;
  Text.Measurements.init()();
  v10 = v5[10];
  type metadata accessor for HMTSolution.Article();
  sub_100017BA0();
  v12 = v11;
  v28 = v13;
  (*(v11 + 16))(a2 + v10, a1);
  v29 = a1;
  HMTSolution.Article.title.getter();
  sub_10000AC24();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  if (qword_100188108 != -1)
  {
    swift_once();
  }

  v19 = Text.font(_:)();
  v21 = v20;
  v23 = v22;
  v27 = v24;
  sub_10000AC78(v14, v16, v18 & 1);

  result = (*(v12 + 8))(v29, v28);
  v26 = a2 + v5[11];
  *v26 = v19;
  *(v26 + 8) = v21;
  *(v26 + 16) = v23 & 1;
  *(v26 + 24) = v27;
  return result;
}

uint64_t sub_100014178()
{
  v2 = v0;
  v3 = type metadata accessor for LearnMoreArticleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100003768(&qword_1001894C0, &qword_100122AB8);
  sub_10000AF7C();
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_100017BAC();
  *v1 = static VerticalAlignment.center.getter();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  v8 = sub_100003768(&qword_1001894C8, &qword_100122AC0);
  sub_100014324((v1 + *(v8 + 44)));
  *(v1 + *(v6 + 36)) = 0;
  sub_100003704(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_100015DF4(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_100015EB4();
  View.onTapGesture(count:perform:)();

  return sub_100015F98(v1);
}

uint64_t sub_100014324@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_100003768(&qword_100189500, &qword_100122AF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  sub_100014554(&v18[-v7]);
  v9 = Image.init(systemName:)();
  static Font.footnote.getter();
  static Font.Weight.bold.getter();
  v10 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v19 = static HierarchicalShapeStyle.tertiary.getter();
  v12 = *(v3 + 16);
  v12(v6, v8, v2);
  v12(a1, v6, v2);
  v13 = sub_100003768(&qword_100189508, &qword_100122B28);
  v14 = &a1[*(v13 + 48)];
  *v14 = 0;
  v14[8] = 1;
  v15 = &a1[*(v13 + 64)];
  *v15 = v9;
  *(v15 + 1) = 0;
  *(v15 + 8) = 1;
  *(v15 + 3) = KeyPath;
  *(v15 + 4) = v10;
  *(v15 + 10) = v19;
  v16 = *(v3 + 8);

  v16(v8, v2);

  return (v16)(v6, v2);
}

uint64_t sub_100014554@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for ScenePhase();
  v2 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LearnMoreArticleView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100003768(&qword_100189510, &qword_100122B30);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  *v10 = static HorizontalAlignment.leading.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100003768(&qword_100189518, &qword_100122B38);
  sub_100014C44(v1, &v10[*(v11 + 44)]);
  sub_100003704(v1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100015DF4(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = &v10[*(sub_100003768(&qword_100189520, &qword_100122B40) + 36)];
  *v14 = sub_100015898;
  v14[1] = 0;
  v14[2] = sub_100017160;
  v14[3] = v13;
  sub_100003704(v1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  v16 = sub_100015DF4(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v12);
  v17 = &v10[*(v8 + 36)];
  *v17 = sub_1000171CC;
  *(v17 + 1) = v15;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  sub_100013D04(v16, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
  sub_100003704(v1, &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = swift_allocObject();
  sub_100015DF4(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v12);
  sub_1000173F4();
  sub_100017AD0(&qword_100189558, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v26 = v28;
  View.onChange<A>(of:initial:_:)();

  (*(v2 + 8))(v4, v26);
  return sub_10000ABCC(v10, &qword_100189510, &qword_100122B30);
}

uint64_t sub_1000148C4()
{
  v0 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = var50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  __chkstk_darwin(v4 - 8);
  v6 = var50 - v5;
  sub_100013BD8();
  type metadata accessor for LearnMoreArticleView(0);
  sub_100014AAC(v6);
  sub_10008AEE0(v6, v7, v8, v9);

  sub_100013BD8();
  v10 = HMTSolution.Article.id.getter();
  v12 = v11;
  HMTSolution.Article.url.getter();
  (*(v1 + 104))(v3, enum case for DeviceExpertTroubleshooting.ActionType.executed(_:), v0);
  sub_100085DC0(v10, v12, v6, v3, v13, v14, v15, v16, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);

  (*(v1 + 8))(v3, v0);
  return sub_10000ABCC(v6, &qword_100188EE0, &unk_100122AE0);
}

uint64_t sub_100014C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v82 = sub_100003768(&qword_100189580, &qword_100123A50);
  __chkstk_darwin(v82);
  v75 = &v74 - v3;
  v4 = sub_100003768(&qword_100189588, &qword_100122B80);
  v5 = __chkstk_darwin(v4 - 8);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = &v74 - v7;
  v8 = sub_100003768(&qword_100189590, &qword_100122B88);
  v9 = __chkstk_darwin(v8 - 8);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v74 - v11;
  v12 = sub_100003768(&qword_100189598, &qword_100122B90);
  v13 = __chkstk_darwin(v12 - 8);
  v83 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v74 - v15;
  v17 = type metadata accessor for LearnMoreArticleView(0);
  v18 = a1 + *(v17 + 44);
  v19 = *v18;
  v20 = *(v18 + 8);
  v21 = *(v18 + 16);
  v22 = *(v18 + 24);
  v23 = *(v17 + 24);
  v24 = v17;
  v76 = a1;
  v77 = v17;
  __dst[0] = *(a1 + v23);

  sub_100017564(v19, v20, v21);
  v78 = sub_100003768(&qword_100189578, &unk_100122B70);
  State.wrappedValue.getter();
  v25 = v88[0];
  KeyPath = swift_getKeyPath();
  LOBYTE(v88[0]) = v21;
  v90 = 0;
  *&__dst[0] = v19;
  *(&__dst[0] + 1) = v20;
  LOBYTE(__dst[1]) = v21;
  *(&__dst[1] + 1) = v22;
  *&__dst[2] = KeyPath;
  *(&__dst[2] + 1) = v25;
  LOBYTE(__dst[3]) = 0;
  *(&__dst[3] + 1) = 256;
  static String.stepSectionLearnMoreArticleTitle.getter();
  sub_100003768(&qword_1001895A0, &qword_100122BC8);
  sub_10001757C();
  v81 = v16;
  View.accessibilityIdentifier(_:)();

  v91[0] = __dst[0];
  v91[1] = __dst[1];
  v92[0] = __dst[2];
  *(v92 + 15) = *(&__dst[2] + 15);
  sub_10000ABCC(v91, &qword_1001895A0, &qword_100122BC8);
  v79 = *(v24 + 40);
  *&__dst[0] = HMTSolution.Article.summary.getter();
  *(&__dst[0] + 1) = v27;
  v74 = sub_10000AC24();
  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.subheadline.getter();
  v33 = Text.font(_:)();
  v35 = v34;
  LOBYTE(v16) = v36;
  v38 = v37;

  sub_10000AC78(v28, v30, v32 & 1);

  __dst[0] = *(v76 + *(v77 + 28));
  State.wrappedValue.getter();
  v39 = v88[0];
  v40 = swift_getKeyPath();
  v41 = static Color.secondary.getter();
  v42 = swift_getKeyPath();
  v90 = v16 & 1;
  v89 = 0;
  v88[0] = v33;
  v88[1] = v35;
  LOBYTE(v88[2]) = v16 & 1;
  v88[3] = v38;
  v88[4] = v40;
  v88[5] = v39;
  LOBYTE(v88[6]) = 0;
  v88[7] = v42;
  v88[8] = v41;
  static String.stepSectionLearnMoreArticleDescription.getter();
  sub_100003768(&qword_1001895C0, &unk_100122C10);
  sub_100017740();
  View.accessibilityIdentifier(_:)();

  memcpy(__dst, v88, 0x48uLL);
  sub_10000ABCC(__dst, &qword_1001895C0, &unk_100122C10);
  sub_1000153C8();
  if (v44)
  {
    v88[0] = v43;
    v88[1] = v44;
    v45 = Text.init<A>(_:)();
    v47 = v46;
    v49 = v48;
    static Font.footnote.getter();
    v50 = Text.font(_:)();
    v52 = v51;
    v54 = v53;

    sub_10000AC78(v45, v47, v49 & 1);

    v55 = [objc_opt_self() tertiaryLabelColor];
    Color.init(_:)();
    v56 = Text.foregroundColor(_:)();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_10000AC78(v50, v52, v54 & 1);

    v88[0] = v56;
    v88[1] = v58;
    LOBYTE(v88[2]) = v60 & 1;
    v88[3] = v62;
    static String.stepSectionLearnMoreArticleAttribution.getter();
    v63 = v75;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v56, v58, v60 & 1);

    v64 = v80;
    sub_1000177F8(v63, v80);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v80;
  }

  sub_100003CE8(v64, v65, 1, v82);
  v66 = v81;
  v67 = v83;
  sub_10000EC9C(v81, v83, &qword_100189598, &qword_100122B90);
  v68 = v87;
  v69 = v84;
  sub_10000EC9C(v87, v84, &qword_100189590, &qword_100122B88);
  v70 = v85;
  sub_10000EC9C(v64, v85, &qword_100189588, &qword_100122B80);
  v71 = v86;
  sub_10000EC9C(v67, v86, &qword_100189598, &qword_100122B90);
  v72 = sub_100003768(&qword_1001895E0, &qword_100122C20);
  sub_10000EC9C(v69, v71 + *(v72 + 48), &qword_100189590, &qword_100122B88);
  sub_10000EC9C(v70, v71 + *(v72 + 64), &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v64, &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v68, &qword_100189590, &qword_100122B88);
  sub_10000ABCC(v66, &qword_100189598, &qword_100122B90);
  sub_10000ABCC(v70, &qword_100189588, &qword_100122B80);
  sub_10000ABCC(v69, &qword_100189590, &qword_100122B88);
  return sub_10000ABCC(v67, &qword_100189598, &qword_100122B90);
}

void sub_1000153C8()
{
  sub_100017C00();
  v0 = type metadata accessor for Locale();
  v1 = sub_10000ED84(v0);
  __chkstk_darwin(v1);
  sub_10000C30C();
  v40[2] = v3 - v2;
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = sub_10000ED84(v4);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v40[1] = v7 - v6;
  v8 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v8);
  sub_10000ED78();
  __chkstk_darwin(v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for URLComponents();
  sub_100008780();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000C30C();
  v18 = v17 - v16;
  v19 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v19);
  sub_10000ED78();
  __chkstk_darwin(v20);
  v22 = v40 - v21;
  v23 = type metadata accessor for URL();
  sub_100008780();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000C30C();
  v29 = v28 - v27;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v22, 1, v23) == 1)
  {
    v30 = &qword_100188EE0;
    v31 = &unk_100122AE0;
    v32 = v22;
LABEL_5:
    sub_10000ABCC(v32, v30, v31);
    goto LABEL_6;
  }

  (*(v25 + 32))(v29, v22, v23);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_10000E5F0(v11, 1, v12) == 1)
  {
    (*(v25 + 8))(v29, v23);
    v30 = &qword_100188EE8;
    v31 = &unk_10012A330;
    v32 = v11;
    goto LABEL_5;
  }

  (*(v14 + 32))(v18, v11, v12);
  v33 = URLComponents.host.getter();
  v35 = v34;
  (*(v14 + 8))(v18, v12);
  (*(v25 + 8))(v29, v23);
  if (v35)
  {
    v36 = v33 == 0xD000000000000011 && 0x8000000100133CD0 == v35;
    if (v36 || (sub_100017BBC(0xD000000000000011, 0x8000000100133CD0) & 1) != 0)
    {

      sub_10001647C();
    }

    else
    {
      v37 = v33 == 0xD000000000000013 && 0x8000000100133CF0 == v35;
      if (v37 || (sub_100017BBC(0xD000000000000013, 0x8000000100133CF0) & 1) != 0 || (v33 == 0x7070612E61746562 ? (v38 = v35 == 0xEE006D6F632E656CLL) : (v38 = 0), v38 || (sub_100017BBC(0x7070612E61746562, 0xEE006D6F632E656CLL) & 1) != 0))
      {

        sub_100017BD8();
        static Locale.current.getter();
        sub_100017B50();
      }

      else
      {
        v40[6] = v33;
        v40[7] = v35;
        v40[4] = 0x6F632E656C707061;
        v40[5] = 0xE90000000000006DLL;
        sub_10000AC24();
        v39 = StringProtocol.contains<A>(_:)();

        if ((v39 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100017BD8();
        static Locale.current.getter();
        sub_100017B50();
      }

      String.init(localized:table:bundle:locale:comment:)();
    }
  }

LABEL_6:
  sub_100017C18();
}

uint64_t sub_1000158C4(double *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for LearnMoreArticleView(0);
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  return sub_10001596C(v2);
}

uint64_t sub_10001596C(double a1)
{
  v3 = sub_100003768(&qword_100189568, &qword_100122B60);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_100003768(&qword_100189570, &qword_100122B68);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Text.Measurements.Context();
  result = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 0.0)
  {
    v30 = v11;
    v14 = type metadata accessor for LearnMoreArticleView(0);
    if (qword_100188110 != -1)
    {
      swift_once();
    }

    v27 = byte_1001893E0;
    v26 = qword_1001893E8;
    v29 = type metadata accessor for Text.WritingMode();
    sub_100003CE8(v8, 1, 1, v29);
    v28 = type metadata accessor for Text.Suffix();
    sub_100003CE8(v5, 1, 1, v28);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v16 = v15;
    v17 = *(v30 + 8);
    v17(v13, v9);
    v25 = v14;
    v18 = v1 + *(v14 + 44);
    v30 = *(v18 + 8);
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    sub_100003CE8(v8, 1, 1, v29);
    sub_100003CE8(v5, 1, 1, v28);
    Text.Measurements.Context.init(writingMode:textSuffix:)();
    Text.Measurements.size(of:in:context:)();
    v20 = v19;
    result = (v17)(v13, v9);
    v21 = round(v20 / v16);
    if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v21 > -9.22337204e18)
    {
      if (v21 < 9.22337204e18)
      {
        v22 = v21;
        if (v21 >= 2)
        {
          v23 = v25;
          v32 = *(v1 + *(v25 + 28));
          v31 = 1;
          sub_100003768(&qword_100189578, &unk_100122B70);
          State.wrappedValue.setter();
          v22 = 2;
          goto LABEL_11;
        }

        v23 = v25;
        if (!__OFSUB__(3, v22))
        {
          v32 = *(v1 + *(v25 + 28));
          v31 = 3 - v22;
          sub_100003768(&qword_100189578, &unk_100122B70);
          State.wrappedValue.setter();
LABEL_11:
          v32 = *(v1 + *(v23 + 24));
          v31 = v22;
          sub_100003768(&qword_100189578, &unk_100122B70);
          return State.wrappedValue.setter();
        }

LABEL_16:
        __break(1u);
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_100015D78(uint64_t a1)
{
  type metadata accessor for LearnMoreArticleView(0);
  sub_100003768(&qword_100189560, &qword_1001251F0);
  State.wrappedValue.getter();
  return sub_10001596C(v2);
}

uint64_t sub_100015DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnMoreArticleView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015E58()
{
  v0 = type metadata accessor for LearnMoreArticleView(0);
  sub_10000ED84(v0);

  return sub_1000148C4();
}

unint64_t sub_100015EB4()
{
  result = qword_1001894D8;
  if (!qword_1001894D8)
  {
    sub_100004D48(&qword_1001894C0, &qword_100122AB8);
    sub_10000AAEC(&qword_1001894E0, &qword_1001894E8, &unk_100122AD0, &protocol conformance descriptor for HStack<A>);
    sub_10000AAEC(&qword_1001894F0, &qword_1001894F8, &qword_10012D5E0, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001894D8);
  }

  return result;
}

uint64_t sub_100015F98(uint64_t a1)
{
  sub_100003768(&qword_1001894C0, &qword_100122AB8);
  sub_10000AF7C();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_100015FF8()
{
  v0 = type metadata accessor for Font.Leading();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.body.getter();
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v0);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v0);
  v4 = Font.bold()();

  qword_1001893C8 = v4;
  return result;
}

uint64_t sub_10001611C()
{
  if (qword_100188108 != -1)
  {
    swift_once();
  }

  v0 = Text.font(_:)();
  v2 = v1;
  v4 = v3;
  v6 = v5;

  qword_1001893D0 = v0;
  *algn_1001893D8 = v2;
  byte_1001893E0 = v4 & 1;
  qword_1001893E8 = v6;
  return result;
}

void sub_1000161D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100017C00();
  a19 = v20;
  a20 = v21;
  v22 = sub_100003768(&qword_100188EE8, &unk_10012A330);
  sub_10000ED84(v22);
  sub_10000ED78();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  v26 = type metadata accessor for URLComponents();
  sub_100008780();
  v28 = v27;
  __chkstk_darwin(v29);
  sub_10000C30C();
  v32 = v31 - v30;
  v33 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v33);
  sub_10000ED78();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = type metadata accessor for URL();
  sub_100008780();
  v39 = v38;
  __chkstk_darwin(v40);
  sub_10000C30C();
  v43 = v42 - v41;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v36, 1, v37) == 1)
  {
    v44 = &qword_100188EE0;
    v45 = &unk_100122AE0;
    v46 = v36;
  }

  else
  {
    (*(v39 + 32))(v43, v36, v37);
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    if (sub_10000E5F0(v25, 1, v26) != 1)
    {
      (*(v28 + 32))(v32, v25, v26);
      URLComponents.host.getter();
      (*(v28 + 8))(v32, v26);
      (*(v39 + 8))(v43, v37);
      goto LABEL_7;
    }

    (*(v39 + 8))(v43, v37);
    v44 = &qword_100188EE8;
    v45 = &unk_10012A330;
    v46 = v25;
  }

  sub_10000ABCC(v46, v44, v45);
LABEL_7:
  sub_100017C18();
}

void sub_10001647C()
{
  sub_100017C00();
  v1 = type metadata accessor for Locale();
  v2 = sub_10000ED84(v1);
  __chkstk_darwin(v2);
  sub_10000C30C();
  v5 = v4 - v3;
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = sub_10000ED84(v6);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v11);
  sub_10000ED78();
  __chkstk_darwin(v12);
  sub_100017BAC();
  v13 = type metadata accessor for URL();
  sub_100008780();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_10000C30C();
  v19 = v18 - v17;
  HMTSolution.Article.url.getter();
  if (sub_10000E5F0(v0, 1, v13) == 1)
  {
    sub_10000ABCC(v0, &qword_100188EE0, &unk_100122AE0);
LABEL_31:
    sub_100017C18();
    return;
  }

  v57[1] = v10;
  v57[2] = v5;
  v59 = v13;
  v60 = v15;
  (*(v15 + 32))(v19, v0, v13);
  v58 = v19;
  v20 = URL.path.getter();
  v61 = 47;
  v62 = 0xE100000000000000;
  __chkstk_darwin(v20);
  v57[-2] = &v61;
  v23 = sub_100016D44(0x7FFFFFFFFFFFFFFFuLL, 1, sub_1000179F8, &v57[-4], v21, v22);
  v24 = v23;
  if (v23[2])
  {
    v25 = v23[4];
    v26 = v23[5];
    v28 = v23[6];
    v27 = v23[7];
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v28 = 0;
    v27 = 0;
  }

  v32 = Substring.init(_:)();
  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (!v27)
  {

    v61 = v25;
    v62 = v26;
    v63 = v28;
    v64 = 0;
    v65 = v32;
    v66 = v33;
    v67 = v34;
    v68 = v35;
LABEL_11:
    sub_10000ABCC(&v61, &qword_1001895E8, &unk_100122C28);
LABEL_13:
    v41 = v60;
    goto LABEL_14;
  }

  v36 = sub_100016C8C(v25, v26, v28, v27, v32, v29, v30, v31);

  if ((v36 & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_100016A74(1, v24);
  if (v38 == v39 >> 1)
  {
    v40 = 0;
LABEL_17:
    swift_unknownObjectRelease();
    v42 = Substring.init(_:)();
    if (v40)
    {
      sub_100017B7C(v42, v43, v44);
      sub_100017C30();
      if (v36)
      {
        v45 = 0xE700000000000000;
        v46 = 0x73646F50726941;
LABEL_28:

        v41 = v60;
LABEL_29:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        sub_100017B50();
        String.init(localized:table:bundle:locale:comment:)();
        sub_100003768(&qword_100188810, &unk_100121780);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_100121620;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_100017A18();
        *(v53 + 32) = v46;
        *(v53 + 40) = v45;
        String.init(format:_:)();

        goto LABEL_30;
      }
    }

    else
    {
      sub_100017B68(v42, v43, v44);
      sub_10000ABCC(&v61, &qword_1001895E8, &unk_100122C28);
    }

    v46 = 1684099177;
    v47 = Substring.init(_:)();
    if (v40)
    {
      sub_100017B7C(v47, v48, v49);
      sub_100017C30();
      if (v36)
      {
        v45 = 0xE400000000000000;
        goto LABEL_28;
      }
    }

    else
    {
      sub_100017B68(v47, v48, v49);
      sub_10000ABCC(&v61, &qword_1001895E8, &unk_100122C28);
    }

    v46 = 0x656E6F685069;
    v50 = Substring.init(_:)();
    if (v40)
    {
      sub_100017B7C(v50, v51, v52);
      sub_100017C30();
      if (v36)
      {
        v45 = 0xE600000000000000;
        goto LABEL_28;
      }
    }

    else
    {
      sub_100017B68(v50, v51, v52);
      sub_10000ABCC(&v61, &qword_1001895E8, &unk_100122C28);
    }

    v54 = Substring.init(_:)();
    if (v40)
    {
      sub_100017B7C(v54, v55, v56);
      sub_100017C30();

      v41 = v60;
      if (v36)
      {
        v45 = 0xE300000000000000;
        v46 = 6512973;
        goto LABEL_29;
      }

LABEL_14:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      sub_100017B50();
      String.init(localized:table:bundle:locale:comment:)();
LABEL_30:
      (*(v41 + 8))(v58, v59);
      goto LABEL_31;
    }

    sub_100017B68(v54, v55, v56);
    goto LABEL_11;
  }

  if (v38 < (v39 >> 1))
  {
    v40 = *(v37 + 32 * v38 + 24);

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100016A74(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_100017980(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      v5 = sub_10001786C(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100016B0C(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v7 = Substring.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100016BC4(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100016C8C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == a7 && a4 == a8 && a1 >> 16 == a5 >> 16 && a2 >> 16 == a6 >> 16)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_100016D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

id *sub_100016D44(unint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    sub_1000D0040();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1000D0040();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = _swiftEmptyArrayStorage;
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = String.subscript.getter();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000D0040();
      v48 = v28;
    }

    v13 = v48[2];
    v12 = (v13 + 1);
    if (v13 >= v48[3] >> 1)
    {
      sub_1000D0040();
      v48 = v29;
    }

    v48[2] = v12;
    v27 = &v48[4 * v13];
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && v48[2] == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1000D0040();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000170E0()
{
  sub_100017BF4();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100017108()
{
  sub_100017BF4();
  result = EnvironmentValues.font.getter();
  *v0 = result;
  return result;
}

uint64_t sub_100017160(double *a1)
{
  v3 = type metadata accessor for LearnMoreArticleView(0);
  sub_10000ED84(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_1000158C4(a1, v5);
}

uint64_t sub_1000171D0()
{
  v1 = type metadata accessor for LearnMoreArticleView(0);
  sub_10000ED84(v1);
  return sub_100015D78(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
}

uint64_t sub_100017220()
{
  v1 = type metadata accessor for LearnMoreArticleView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  sub_100003768(&qword_1001894D0, &qword_100122AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_10000AF7C();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  v8 = v1[9];
  type metadata accessor for Text.Measurements();
  sub_10000AF7C();
  (*(v9 + 8))(v5 + v8);
  v10 = v1[10];
  type metadata accessor for HMTSolution.Article();
  sub_10000AF7C();
  (*(v11 + 8))(v5 + v10);
  sub_10000AC78(*(v5 + v1[11]), *(v5 + v1[11] + 8), *(v5 + v1[11] + 16));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000173F4()
{
  result = qword_100189528;
  if (!qword_100189528)
  {
    sub_100004D48(&qword_100189510, &qword_100122B30);
    sub_100017480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189528);
  }

  return result;
}

unint64_t sub_100017480()
{
  result = qword_100189530;
  if (!qword_100189530)
  {
    sub_100004D48(&qword_100189520, &qword_100122B40);
    sub_10000AAEC(&qword_100189538, &qword_100189540, &qword_100122B48, &protocol conformance descriptor for VStack<A>);
    sub_10000AAEC(&qword_100189548, &qword_100189550, &unk_100122B50, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100189530);
  }

  return result;
}

uint64_t sub_100017564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001757C()
{
  result = qword_1001895A8;
  if (!qword_1001895A8)
  {
    sub_100004D48(&qword_1001895A0, &qword_100122BC8);
    sub_100017608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895A8);
  }

  return result;
}

unint64_t sub_100017608()
{
  result = qword_1001895B0;
  if (!qword_1001895B0)
  {
    sub_100004D48(&qword_1001895B8, &unk_100122BD0);
    sub_10000AAEC(&qword_100189080, &qword_100189088, &qword_100122428, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895B0);
  }

  return result;
}

uint64_t sub_1000176C0()
{
  sub_100017BF4();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1000176E8()
{
  sub_100017BF4();
  result = EnvironmentValues.foregroundColor.getter();
  *v0 = result;
  return result;
}

unint64_t sub_100017740()
{
  result = qword_1001895C8;
  if (!qword_1001895C8)
  {
    sub_100004D48(&qword_1001895C0, &unk_100122C10);
    sub_100017608();
    sub_10000AAEC(&qword_1001895D0, &qword_1001895D8, &qword_10012F6F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895C8);
  }

  return result;
}

uint64_t sub_1000177F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100189580, &qword_100123A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001786C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1000178D8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = type metadata accessor for HMTSolution.Article();
    sub_10000ED84(v5);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100017980(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_100017A18()
{
  result = qword_1001895F0;
  if (!qword_1001895F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001895F0);
  }

  return result;
}

uint64_t sub_100017A6C()
{
  sub_100004D48(&qword_1001894C0, &qword_100122AB8);
  sub_100015EB4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017B68(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v7 - 152) = result;
  *(v7 - 144) = a2;
  *(v7 - 136) = a3;
  *(v7 - 128) = v3;
  *(v7 - 120) = v4;
  *(v7 - 112) = v5;
  *(v7 - 104) = v6;
  *(v7 - 96) = 0;
  return result;
}

uint64_t sub_100017B7C(unint64_t a1, unint64_t a2, uint64_t a3)
{

  return sub_100016C8C(a1, a2, a3, v4, v5, v6, v7, v3);
}

uint64_t sub_100017BBC(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100017BD8()
{

  return String.LocalizationValue.init(stringLiteral:)();
}

uint64_t sub_100017C30()
{
}

void sub_100017C48()
{
  sub_100017C00();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  sub_100008780();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  sub_10000871C(v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100018FBC();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    v11 = sub_100018C34(ObjectType);
    v13 = sub_10009CACC(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD00000000000002DLL, v14, v15);
    *(v9 + 22) = 2080;

    sub_100003768(&qword_1001896A0, &qword_100122C88);
    v16 = String.init<A>(describing:)();
    v18 = sub_10009CACC(v16, v17, &v21);

    *(v9 + 24) = v18;
    sub_100018F90(&_mh_execute_header, v19, v20, "%s.%s - launchOptions: %s");
    swift_arrayDestroy();
    sub_100008744(v10);
    sub_100008744(v9);
  }

  (*(v4 + 8))(v0, v2);
  sub_100017C18();
}

void sub_100017EF0()
{
  sub_100017C00();
  v2 = v1;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  sub_100008780();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  sub_10000871C(v10);
  v11 = v4;
  v12 = v2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v15 = 136315906;
    v17 = sub_100018C34(ObjectType);
    v35 = v6;
    v19 = sub_10009CACC(v17, v18, &v36);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    sub_100018F80();
    *(v15 + 14) = sub_10009CACC(0xD000000000000032, v20, v21);
    *(v15 + 22) = 2112;
    *(v15 + 24) = v11;
    *(v15 + 32) = 2112;
    *(v15 + 34) = v12;
    *v16 = v11;
    v16[1] = v12;
    v22 = v11;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s.%s - sceneSession: %@, options: %@", v15, 0x2Au);
    sub_100003768(&qword_100189390, &qword_1001241D0);
    swift_arrayDestroy();
    sub_100008744(v16);
    swift_arrayDestroy();
    sub_100008744(v34);
    sub_100008744(v15);

    (*(v8 + 8))(v0, v35);
  }

  else
  {

    (*(v8 + 8))(v0, v6);
  }

  v24 = [v11 role];
  v25 = objc_allocWithZone(UISceneConfiguration);
  v26 = sub_100018E4C(0, 0, v24);
  v27 = [v11 role];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;
  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {

    goto LABEL_11;
  }

  sub_100018FD4();
  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
LABEL_11:
    type metadata accessor for SceneHostingDelegate();
    goto LABEL_12;
  }

  type metadata accessor for DefaultSceneDelegate();
LABEL_12:
  [v26 setDelegateClass:swift_getObjCClassFromMetadata()];
  sub_100017C18();
}

void sub_1000182B0()
{
  sub_100017C00();
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  sub_100008780();
  v4 = v3;
  v6 = __chkstk_darwin(v5);
  sub_10000871C(v6);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100018FBC();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    v11 = sub_100018C34(ObjectType);
    v13 = sub_10009CACC(v11, v12, &v21);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD000000000000027, v14, v15);
    *(v9 + 22) = 2080;
    sub_100018EBC();
    sub_100018F38(&qword_100189698, sub_100018EBC, &protocol conformance descriptor for NSObject);
    v16 = Set.description.getter();
    v18 = sub_10009CACC(v16, v17, &v21);

    *(v9 + 24) = v18;
    sub_100018F90(&_mh_execute_header, v19, v20, "%s.%s - sceneSessions: %s");
    swift_arrayDestroy();
    sub_100008744(v10);
    sub_100008744(v9);
  }

  (*(v4 + 8))(v0, v2);
  sub_100017C18();
}

void sub_100018570()
{
  sub_100017C00();
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  v4 = sub_100018FD4();
  sub_100008460(v4, v5);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = sub_100018FD4();
  sub_100008408(v8, v9);
  if (os_log_type_enabled(v6, v7))
  {
    v23 = v1;
    v10 = sub_100018FBC();
    v11 = swift_slowAlloc();
    v24 = v11;
    *v10 = 136315650;
    v12 = sub_100018C34(ObjectType);
    v14 = sub_10009CACC(v12, v13, &v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    sub_100018F80();
    *(v10 + 14) = sub_10009CACC(0xD000000000000040, v15, v16);
    *(v10 + 22) = 2080;
    sub_100018FD4();
    v17 = Data.description.getter();
    v19 = sub_10009CACC(v17, v18, &v24);

    *(v10 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s - deviceToken: %s", v10, 0x20u);
    swift_arrayDestroy();
    sub_100008744(v11);
    sub_100008744(v10);

    v20 = sub_100018FB0();
    v22 = v23;
  }

  else
  {

    v20 = sub_100018FB0();
    v22 = v1;
  }

  v21(v20, v22);
  sub_100017C18();
}

void sub_1000187F0()
{
  sub_100017C00();
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  sub_100008780();
  v3 = __chkstk_darwin(v2);
  sub_10000871C(v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v20 = v1;
    v6 = sub_100018FBC();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v6 = 136315650;
    v9 = sub_100018C34(ObjectType);
    v11 = sub_10009CACC(v9, v10, &v21);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    sub_100018F80();
    *(v6 + 14) = sub_10009CACC(0xD000000000000040, v12, v13);
    *(v6 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v14;
    *v7 = v14;
    sub_100018F90(&_mh_execute_header, v15, v16, "%s.%s - error: %@");
    sub_1000083A0(v7);
    sub_100008744(v7);
    swift_arrayDestroy();
    sub_100008744(v8);
    sub_100008744(v6);

    v17 = sub_100018FB0();
    v19 = v20;
  }

  else
  {

    v17 = sub_100018FB0();
    v19 = v1;
  }

  v18(v17, v19);
  sub_100017C18();
}

void sub_100018A48()
{
  sub_100017C00();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  sub_100008780();
  v5 = __chkstk_darwin(v4);
  sub_10000871C(v5);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v21 = v3;
    v9 = sub_100018FBC();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136315650;
    v12 = sub_100018C34(ObjectType);
    v14 = sub_10009CACC(v12, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_100018F80();
    *(v9 + 14) = sub_10009CACC(0xD00000000000002BLL, v15, v16);
    *(v9 + 22) = 2112;
    *(v9 + 24) = v6;
    *v10 = v6;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s.%s - userActivity: %@", v9, 0x20u);
    sub_1000083A0(v10);
    sub_100008744(v10);
    swift_arrayDestroy();
    sub_100008744(v11);
    sub_100008744(v9);

    v18 = sub_100018FB0();
    v20 = v21;
  }

  else
  {

    v18 = sub_100018FB0();
    v20 = v3;
  }

  v19(v18, v20);
  sub_100017C18();
}

id sub_100018CFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_100018D54()
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v1) = UIApplicationMain(_:_:_:_:)();

  exit(v1);
}

id sub_100018DE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100018E4C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithName:v5 sessionRole:a3];

  return v6;
}

unint64_t sub_100018EBC()
{
  result = qword_100189690;
  if (!qword_100189690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100189690);
  }

  return result;
}

uint64_t sub_100018F00()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100018F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100018F90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t sub_100018FBC()
{

  return swift_slowAlloc();
}

uint64_t sub_100018FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for ImageResource();
  sub_100008780();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100019E84();
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a4 = Environment.init<A>(_:)();
  *(a4 + 8) = v13 & 1;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_10000B4E0(a3, a4 + 32);
  if (qword_100188228 != -1)
  {
    swift_once();
  }

  if (byte_1001A57A0 == 1)
  {
    if (qword_100188428 != -1)
    {
      swift_once();
    }

    v14 = qword_1001A5AD0;
  }

  else
  {
    if (qword_100188430 != -1)
    {
      swift_once();
    }

    v14 = qword_1001A5AE8;
  }

  v15 = sub_10000C2D4(v9, v14);
  (*(v11 + 16))(v4, v15, v9);
  sub_10000ABCC(a3, &qword_100189310, &qword_1001221A0);
  restarted = _s17RestartDeviceViewVMa_0(0);
  return (*(v11 + 32))(a4 + *(restarted + 28), v4, v9);
}

uint64_t sub_1000191DC()
{
  v2 = type metadata accessor for EnvironmentValues();
  sub_100008780();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100019E84();
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v1, v2);
    return v10;
  }

  return v6;
}

uint64_t sub_100019300@<X0>(void *a1@<X8>)
{
  restarted = _s17RestartDeviceViewVMa_0(0);
  v4 = restarted - 8;
  v28 = *(restarted - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(restarted);
  v6 = *(v1 + 16);
  v26 = *(v1 + 24);
  v27 = v6;
  sub_100003768(&qword_1001888B8, &unk_100121B70);
  type metadata accessor for FlowStepContentOption(0);
  sub_100019E9C();
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100122C90;
  v12 = v11 + v10;
  v13 = *(v4 + 36);
  v14 = type metadata accessor for ImageResource();
  sub_10000AF7C();
  (*(v15 + 16))(v12, v1 + v13, v14);
  sub_100003CE8(v12, 0, 1, v14);
  swift_storeEnumTagMultiPayload();
  v16 = enum case for ConstellationContentParagraphStyle.orderedList(_:);
  v17 = type metadata accessor for ConstellationContentParagraphStyle();
  sub_10000AF7C();
  (*(v18 + 104))(v12 + v8, v16, v17);
  sub_100003CE8(v12 + v8, 0, 1, v17);
  swift_storeEnumTagMultiPayload();
  v19 = v26;

  v20 = sub_1000FF880(v11);
  sub_10000B4E0(v1 + 32, (a1 + 2));
  *a1 = v27;
  a1[1] = v19;
  a1[7] = 0;
  a1[8] = v20;
  a1[10] = 0;
  a1[11] = 0;
  a1[9] = 0;
  sub_100019B28(v1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_100019B90(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  a1[12] = sub_100019BF4;
  a1[13] = v22;
  a1[14] = 0;
  a1[15] = 0;
  sub_100019B28(v1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  result = sub_100019B90(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v21);
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = sub_100019CFC;
  a1[19] = v23;
  return result;
}

uint64_t sub_1000195F0(uint64_t a1)
{
  v2 = sub_100003768(&qword_100189750, &qword_10012CC00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  sub_1000191DC();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = type metadata accessor for ReentrySignal();
  sub_100003CE8(v4, 1, 1, v7);
  sub_100085E7C(v6, v5, v4);

  return sub_10000ABCC(v4, &qword_100189750, &qword_10012CC00);
}

uint64_t sub_1000196CC(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v8[1] = *a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  return static DeviceEventCoordinator.clearReentryNotification()();
}

uint64_t _s17RestartDeviceViewVMa_0(uint64_t a1)
{
  result = qword_100189700;
  if (!qword_100189700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100019890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ImageResource();
    v9 = a1 + *(a3 + 28);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_10001992C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageResource();
    v8 = v5 + *(a4 + 28);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000199AC(uint64_t a1)
{
  sub_100019A50(319);
  if (v1 <= 0x3F)
  {
    sub_100019AA8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImageResource();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100019A50(uint64_t a1)
{
  if (!qword_100189460)
  {
    type metadata accessor for FlowViewDataProvider(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100189460);
    }
  }
}

void sub_100019AA8(uint64_t a1)
{
  if (!qword_100189710)
  {
    sub_100004D48(&unk_100189718, &unk_100129EC0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100189710);
    }
  }
}

uint64_t sub_100019B28(uint64_t a1, uint64_t a2)
{
  restarted = _s17RestartDeviceViewVMa_0(0);
  (*(*(restarted - 8) + 16))(a2, a1, restarted);
  return a2;
}

uint64_t sub_100019B90(uint64_t a1, uint64_t a2)
{
  restarted = _s17RestartDeviceViewVMa_0(0);
  (*(*(restarted - 8) + 32))(a2, a1, restarted);
  return a2;
}

uint64_t sub_100019C0C()
{
  restarted = _s17RestartDeviceViewVMa_0(0);
  sub_100019E9C();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v0 + v4;

  if (*(v0 + v4 + 56))
  {
    sub_1000086BC((v7 + 32));
  }

  v8 = *(restarted + 28);
  type metadata accessor for ImageResource();
  sub_10000AF7C();
  (*(v9 + 8))(v7 + v8);

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_100019D14(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s17RestartDeviceViewVMa_0(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100019DFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WiFiStepProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WiFiStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x10001A004);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 sub_10001A058@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      type metadata accessor for WiFiFlowViewModel(0);
      v140 = sub_10001ABA4();
      sub_100005914(v140);
      sub_10001B410();
      *&v286 = v142;
      *(&v286 + 1) = v141;
      LOBYTE(v302) = 1;
      goto LABEL_9;
    case 2:
      sub_10001AED4();
      v38 = sub_10001AF28();
      sub_100005960(v38, &_s16NormalHealthViewVN, &_s14WeakSignalViewVN, v39, v38, v40, v41, v42, 0xD000000000000018);
      _ConditionalContent<>.init(storage:)();
      LOWORD(v302) = 256;
      sub_100003768(&qword_1001897D0, &qword_100122EB8);
      sub_100003768(&qword_1001897F0, &qword_100122EC0);
      sub_10001AD14();
      v43 = sub_10001AE48();
      v51 = sub_10001B37C(v43, v44, v45, v46, v47, v48, v49, v50, v316.n128_i64[0]);
      sub_10001B42C(v51);
      sub_10001B3A0();
      sub_10001B38C(v52, v53, v54, v55, v56, v57, v58, v59, v256, v316.n128_i64[1], v323, 0, v302, v309, *&v316);
      BYTE2(v304) = 0;
      goto LABEL_7;
    case 3:
      type metadata accessor for WiFiFlowViewModel(0);
      v60 = sub_10001ABA4();
      sub_100005914(v60);
      sub_10001B3E4();
      LOBYTE(v285) = 1;
      sub_10001AED4();
      sub_10001AF28();
      v61 = sub_10001B448();
      v67 = sub_100005960(v61, &_s16NormalHealthViewVN, &_s14WeakSignalViewVN, v62, v63, v64, v65, v66, v252);
      v68 = sub_10001B460(v67);
      sub_10001B3B0(v68, v69, v70, v71, v72, v73, v74, v75, v258, v277, v285, v294, v302, v309, *&v316);
      sub_100003768(&qword_1001897D0, &qword_100122EB8);
      sub_100003768(&qword_1001897F0, &qword_100122EC0);
      sub_10001AD14();
      v76 = sub_10001AE48();
      sub_10001B354(v76, v77, v78, v79, v80, v81, v82, v83, v259);
      sub_10001B3A0();
      goto LABEL_10;
    case 4:
      type metadata accessor for WiFiFlowViewModel(0);
      v4 = sub_10001ABA4();
      sub_100005914(v4);
      sub_10001B410();
      v287 = v6 | 2;
      v295 = v5;
      LOBYTE(v302) = 0;
      sub_10001B094();
      sub_10001B0E8();
      v7 = sub_10001B448();
      v13 = sub_100005960(v7, &_s17RestartDeviceViewVN, &_s15VPNDetectedViewVN, v8, v9, v10, v11, v12, v252);
      v14 = sub_10001B460(v13);
      sub_10001B3CC(v14, v15, v16, v17, v18, v19, v20, v21, v253, v277, v287, v295, v302, v309, *&v316);
      sub_100003768(&qword_100189820, &qword_100122ED0);
      sub_100003768(&qword_100189840, &qword_100122ED8);
      sub_10001B008();
      v22 = sub_10001B13C();
      sub_10001B354(v22, v23, v24, v25, v26, v27, v28, v29, v254);
      sub_10001B3A0();
      goto LABEL_13;
    case 5:
      type metadata accessor for WiFiFlowViewModel(0);
      v166 = sub_10001ABA4();
      sub_100005914(v166);
      sub_10001B3E4();
      LOBYTE(v302) = 1;
      sub_10001B094();
      sub_10001B0E8();
      v167 = sub_10001B448();
      v173 = sub_100005960(v167, &_s17RestartDeviceViewVN, &_s15VPNDetectedViewVN, v168, v169, v170, v171, v172, v252);
      v174 = sub_10001B460(v173);
      sub_10001B3CC(v174, v175, v176, v177, v178, v179, v180, v181, v270, v277, 0, 0, v302, v309, *&v316);
      sub_100003768(&qword_100189820, &qword_100122ED0);
      sub_100003768(&qword_100189840, &qword_100122ED8);
      sub_10001B008();
      v182 = sub_10001B13C();
      sub_10001B354(v182, v183, v184, v185, v186, v187, v188, v189, v271);
      sub_10001B3A0();
      sub_10001B38C(v190, v191, v192, v193, v194, v195, v196, v197, v272, v284, v293, v301, v308, v315, v322);
      BYTE2(v307) = 1;
      goto LABEL_14;
    case 6:
      type metadata accessor for WiFiFlowViewModel(0);
      v198 = sub_10001ABA4();
      sub_100005914(v198);
      sub_10001B3E4();
      LOBYTE(v285) = 0;
      sub_10001B1C8();
      sub_10001B21C();
      v199 = sub_10001B448();
      v205 = sub_100005960(v199, &_s24ResetNetworkSettingsViewVN, &_s18ContactSupportViewVN, v200, v201, v202, v203, v204, v252);
      v206 = sub_10001B460(v205);
      sub_10001B3B0(v206, v207, v208, v209, v210, v211, v212, v213, v273, v277, v285, v294, v302, v309, *&v316);
      sub_100003768(&qword_100189820, &qword_100122ED0);
      sub_100003768(&qword_100189840, &qword_100122ED8);
      sub_10001B008();
      v214 = sub_10001B13C();
      sub_10001B354(v214, v215, v216, v217, v218, v219, v220, v221, v274);
      sub_10001B3A0();
LABEL_13:
      sub_10001B38C(v30, v31, v32, v33, v34, v35, v36, v37, v255, v278, v288, v296, v303, v310, v317);
      BYTE2(v307) = 1;
      goto LABEL_14;
    case 7:
      v261 = sub_1000D2848(7);
      v281 = v92;
      LOBYTE(v285) = 1;
      sub_10001B1C8();
      v93 = sub_10001B21C();
      sub_100005960(v93, &_s24ResetNetworkSettingsViewVN, &_s18ContactSupportViewVN, v94, v93, v95, v96, v97, v261);
      v98 = _ConditionalContent<>.init(storage:)();
      sub_10001B3B0(v98, v99, v100, v101, v102, v103, v104, v105, v262, v281, v285, v294, v302, v309, *&v316);
      sub_100003768(&qword_100189820, &qword_100122ED0);
      sub_100003768(&qword_100189840, &qword_100122ED8);
      sub_10001B008();
      v106 = sub_10001B13C();
      v114 = sub_10001B37C(v106, v107, v108, v109, v110, v111, v112, v113, v263);
      sub_10001B42C(v114);
      sub_10001B3A0();
      sub_10001B38C(v115, v116, v117, v118, v119, v120, v121, v122, v264, v282, v291, v299, v306, v313, v320);
      BYTE2(v304) = 1;
LABEL_7:
      sub_100003768(&qword_1001897C0, &qword_100122EB0);
      sub_100003768(&qword_100189810, &qword_100122EC8);
      sub_10001AC88();
      v123 = sub_10001AF7C();
      v131 = sub_10001B37C(v123, v124, v125, v126, v127, v128, v129, v130, v257);
      sub_10001B42C(v131);
      sub_10001B478();
      sub_10001B3F4(v132, v133, v134, v135, v136, v137, v138, v139, v265, v279, v289, v297, v304, v311, v318);
      goto LABEL_16;
    case 8:
      type metadata accessor for WiFiFlowViewModel(0);
      v244 = sub_10001ABA4();
      v266 = sub_100005914(v244);
LABEL_16:
      sub_100003768(&qword_1001897A8, &qword_100122EA8);
      sub_10001ABFC();
      v245 = sub_10001B270();
      sub_100005960(v245, v246, &_s18SoftwareUpdateViewVN, v247, v245, v248, v249, v250, v266);
      _ConditionalContent<>.init(storage:)();
      break;
    default:
      type metadata accessor for WiFiFlowViewModel(0);
      v3 = sub_10001ABA4();
      sub_100005914(v3);
      sub_10001B3E4();
      v286 = xmmword_100122D20;
      LOBYTE(v302) = 0;
LABEL_9:
      sub_10001ADA0();
      sub_10001ADF4();
      v143 = sub_10001B448();
      v149 = sub_100005960(v143, &_s12DisabledViewVN, &_s16DisconnectedViewVN, v144, v145, v146, v147, v148, v252);
      v150 = sub_10001B460(v149);
      sub_10001B3CC(v150, v151, v152, v153, v154, v155, v156, v157, v267, v277, v286, *(&v286 + 1), v302, v309, *&v316);
      sub_100003768(&qword_1001897D0, &qword_100122EB8);
      sub_100003768(&qword_1001897F0, &qword_100122EC0);
      sub_10001AD14();
      v158 = sub_10001AE48();
      sub_10001B354(v158, v159, v160, v161, v162, v163, v164, v165, v268);
      sub_10001B3A0();
LABEL_10:
      sub_10001B38C(v84, v85, v86, v87, v88, v89, v90, v91, v260, v280, v290, v298, v305, v312, v319);
      BYTE2(v307) = 0;
LABEL_14:
      sub_100003768(&qword_1001897C0, &qword_100122EB0);
      sub_100003768(&qword_100189810, &qword_100122EC8);
      sub_10001AC88();
      v222 = sub_10001AF7C();
      sub_10001B354(v222, v223, v224, v225, v226, v227, v228, v229, v269);
      sub_10001B478();
      sub_10001B3F4(v230, v231, v232, v233, v234, v235, v236, v237, v275, v283, v292, v300, v307, v314, v321);
      sub_100003768(&qword_1001897A8, &qword_100122EA8);
      sub_10001ABFC();
      v238 = sub_10001B270();
      sub_100005960(v238, v239, &_s18SoftwareUpdateViewVN, v240, v238, v241, v242, v243, v276);
      _ConditionalContent<>.init(storage:)();

      break;
  }

  result = v316;
  *a2 = v316;
  *(a2 + 16) = v323;
  *(a2 + 32) = v324;
  *(a2 + 34) = v325;
  *(a2 + 35) = v326;
  return result;
}