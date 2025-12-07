void *sub_10095417C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1009541B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100954210(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

__n128 sub_1009542C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1009542F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100954338(uint64_t result, int a2, int a3)
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
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1009543C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1009543EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100954434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009544B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100951478(a1, v4, v5, v6);
}

unint64_t sub_100954604()
{
  result = qword_1011A9B30;
  if (!qword_1011A9B30)
  {
    type metadata accessor for Date.ISO8601FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9B30);
  }

  return result;
}

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties(0);
  v17 = v16[6];
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_10003CB98(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t sub_100954810(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = sub_100954810(v3);

    v5 = 0;
    v6 = 0;
LABEL_8:
    v30 = v4;
LABEL_9:
    sub_100020438(v5, v6);
    return v4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v4 = 0;
    v5 = 0;
    v6 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v6 = 0;
    v4 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v30 = 2;
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = &v30;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10095A568;
    *(v12 + 24) = v11;
    v28 = sub_100029B94;
    v29 = v12;
    v23 = v11;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100029B9C;
    v27 = &unk_1010D2620;
    v13 = _Block_copy(&aBlock);
    v14 = a1;

    [v10 performWithoutEnforcement:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      v5 = sub_10095A568;
      v4 = v30;
      v6 = v23;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v5 = 0;
        v6 = 0;
        v4 = 17;
        goto LABEL_8;
      }

      v3 = v16;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v6 = 0;
      v4 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  aBlock = 0xD00000000000002BLL;
  v25 = 0x8000000100E5C930;
  v17 = sub_100AC0054(&off_1010C5F40);
  MPModelObject.humanDescription(including:)(v17);
  v19 = v18;
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t MetricsContentType.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x4173746964657263;
      break;
    case 10:
      result = 0x726F7461727563;
      break;
    case 11:
      result = 0x65726E6567;
      break;
    case 12:
      result = 0x6174536F69646172;
      break;
    case 13:
      result = 0x686372616573;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F736165537674;
      break;
    case 18:
      result = 0x497972617262696CLL;
      break;
    case 19:
      result = 0x614C64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100954FAC()
{
  swift_getObjectType();
  result = 1;
  if (![v0 cachedResponse] || (v1 = swift_getObjCClassFromMetadata(), objc_msgSend(v0, "xpSamplingPercentageCachedResponses"), (objc_msgSend(v1, "shouldReportCachedEventWithSamplingPercentage:") & 1) == 0))
  {
    if ([v0 cachedResponse])
    {
      return 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v0 xpSessionDuration];
    v4 = v3;
    [v0 xpSamplingPercentageUsers];
    if (([ObjCClassFromMetadata shouldCollectTimingDataWithSessionDuration:v4 samplingPercentage:v5] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t sub_1009550F8()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v7, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }
}

void SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MetricsPageProperties.pageURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsPageProperties(0) + 24);

  return sub_10003CB98(a1, v3);
}

double MetricsPageProperties.pageDetails.getter()
{
  type metadata accessor for MetricsPageProperties(0);

  return result;
}

void MetricsPageProperties.pageDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPageProperties(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t MetricsPageProperties.extRefUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsPageProperties(0) + 32));

  return v1;
}

void MetricsPageProperties.extRefUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsPageProperties(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_100955488(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MetricsContentType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MetricsContentType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100955510()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100955574(uint64_t a1)
{
  MetricsContentType.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009555C8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MetricsContentType.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100955628@<X0>(Swift::String *a1@<X0>, MusicCore::MetricsContentType_optional *a2@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_100955658@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_100955684()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_1000095E8(v14, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }

  sub_10010FC20(&qword_1011A9C38, &qword_100EF1728);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = v13 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000DD18(v4, v14);
      sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
      if (swift_dynamicCast())
      {
        v6 = v15;
        AnyHashable.init<A>(_:)();
        if (*(v6 + 16) && (v7 = sub_1000160B4(v14), (v8 & 1) != 0))
        {
          sub_10000DD18(*(v6 + 56) + 32 * v7, &v15);
          sub_10001621C(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10089C4F8(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_10089C4F8((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_10001621C(v14);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

  return 0;
}

uint64_t sub_1009559E8(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = sub_100054A48(v6);

      if (v7)
      {
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_1011A70F0 != -1)
  {
    swift_once();
  }

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  [v2 setProperty:v9 forBodyKey:v10];

  if (qword_1011A7100 != -1)
  {
    swift_once();
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  [v2 setProperty:v11 forBodyKey:v12];

  if (qword_1011A70F8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  [v2 setProperty:v13 forBodyKey:v14];

LABEL_16:
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 systemVersion];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  v17 = String._bridgeToObjectiveC()();
  [v2 setProperty:v16 forBodyKey:v17];

  return a2();
}

uint64_t sub_100955D28(void *a1, uint64_t (*a2)(void))
{
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    sub_10000954C(&v19, *(&v20 + 1));
    v10 = *(*(&v18 + 1) - 8);
    v11 = __chkstk_darwin();
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v9);
    sub_10000959C(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = String._bridgeToObjectiveC()();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

double sub_100955F84(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v7 = *(v25 - 8);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_10095A52C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D24E0;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_100029758(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100024900();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);

  return result;
}

void sub_100956324(uint64_t a1, void *a2, void (*a3)(__n128), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_1008BD290(&off_1010C7208);
  sub_10010FC20(&qword_1011A9C30, &qword_100EF1720);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_100955684()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (v7[2])
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_1006BE7F4(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(v7[7] + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin();
        v28[2] = v34;

        if (sub_10044AB94(sub_10044CFC0, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = String._bridgeToObjectiveC()();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      (v30)(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1009565B0(void *a1, void *a2, void (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (v8)
  {
    v9 = a2;
    v11 = a2[4];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v9;
    if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
    {
      v9 = sub_10089CC44(isUniquelyReferenced_nonNull_native, v8, 1, v9);
      v19 = v9;
    }

    sub_10099C4C8(0, 1, 0);
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = a1;
    v13[4] = v9;
    v13[5] = a3;
    v13[6] = a4;
    v18 = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10095A5E0;
    *(v14 + 24) = v13;
    v17[0] = sub_10018A020;
    v17[1] = v14;
    v15 = a1;

    v16 = v5;
    v11(&v18, v17);
  }

  else
  {
    a3(a1);
  }
}

double sub_100956754(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_10095A538, v7);

  return result;
}

uint64_t sub_1009567EC(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = String._bridgeToObjectiveC()();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_100956980(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D2170;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_100958AD4;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000B378;
  v9[3] = &unk_1010D1F28;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_100956C3C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_10095A560;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D2558;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100029758(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100024900();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_100956F1C(void *a1)
{
  if (qword_1011A6810 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    sub_100952794(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_100952BE4(&v4);
  }
}

uint64_t sub_100956FD4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v7, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }
}

uint64_t sub_1009570DC()
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    sub_1000095E8(&v1, &qword_1011ABB20, &unk_100EF1530);
  }

  return 0;
}

uint64_t sub_1009571B8()
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 28;
    }
  }

  else
  {
    sub_1000095E8(&v1, &qword_1011ABB20, &unk_100EF1530);
  }

  return 0;
}

uint64_t sub_100957260@<X0>(uint64_t a1@<X8>)
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = type metadata accessor for Date();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_1000095E8(&v6, &qword_1011ABB20, &unk_100EF1530);
    v5 = type metadata accessor for Date();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_10095737C(uint64_t a1)
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v3 = v9 - v2;
  sub_1000089F8(a1, v9 - v2, &qword_1011A9B20, &qword_100EF1560);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A9B20, &qword_100EF1560);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    v6 = sub_10001C8B8(&v10);
    (*(v5 + 32))(v6, v3, v4);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x8000000100E5C910;
  v7 = sub_10000988C();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return sub_1000095E8(a1, &qword_1011A9B20, &qword_100EF1560);
}

uint64_t sub_100957510()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(v7, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }
}

id sub_100957854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100957888()
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    if (swift_dynamicCast())
    {
      return 23;
    }
  }

  else
  {
    sub_1000095E8(&v1, &qword_1011ABB20, &unk_100EF1530);
  }

  return 0;
}

uint64_t sub_100957930@<X0>(uint64_t a1@<X8>)
{
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v6);
  if (v7)
  {
    v2 = type metadata accessor for Date();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_1000095E8(&v6, &qword_1011ABB20, &unk_100EF1530);
    v5 = type metadata accessor for Date();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_100957A4C(uint64_t a1)
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v3 = v9 - v2;
  sub_1000089F8(a1, v9 - v2, &qword_1011A9B20, &qword_100EF1560);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A9B20, &qword_100EF1560);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v4;
    v6 = sub_10001C8B8(&v10);
    (*(v5 + 32))(v6, v3, v4);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x8000000100E5C8E0;
  v7 = sub_10000988C();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String, v7);
  return sub_1000095E8(a1, &qword_1011A9B20, &qword_100EF1560);
}

void sub_100957C14(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithBodyDictionary:isa];

  return v4;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithBodyDictionary:", isa);

  return v4;
}

uint64_t sub_100957F10(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100019C28(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1009580B4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

BOOL _s9MusicCore21MetricsPagePropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = sub_10010FC20(&qword_1011A9C40, &qword_100EF1738);
  __chkstk_darwin();
  v12 = &v31 - v11;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v31 = v7;
  v32 = type metadata accessor for MetricsPageProperties(0);
  v13 = *(v32 + 24);
  v14 = *(v10 + 48);
  sub_1000089F8(a1 + v13, v12, &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(a2 + v13, &v12[v14], &qword_1011A77F0, &unk_100EEAA20);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_1000095E8(v12, &qword_1011A77F0, &unk_100EEAA20);
      goto LABEL_14;
    }

LABEL_11:
    sub_1000095E8(v12, &qword_1011A9C40, &qword_100EF1738);
    return 0;
  }

  sub_1000089F8(v12, v9, &qword_1011A77F0, &unk_100EEAA20);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_11;
  }

  v17 = &v12[v14];
  v18 = v31;
  (*(v5 + 32))(v31, v17, v4);
  sub_100029758(qword_1011A9C48, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v9, v4);
  sub_1000095E8(v12, &qword_1011A77F0, &unk_100EEAA20);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v21 = v32;
  v22 = *(v32 + 28);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23)
  {
    if (!v24)
    {
      return 0;
    }

    v25 = sub_100957F10(v23, v24);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  v26 = *(v21 + 32);
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    return v30 && (*v27 == *v29 && v28 == v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v30;
}

void sub_100958528(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_100957888();

  v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v15 = String._bridgeToObjectiveC()();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v17 = String._bridgeToObjectiveC()();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v40 = 0u;
LABEL_14:
    sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_15;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
  if (swift_dynamicCast())
  {
    v20 = *(v36 + 16);
    if (v20)
    {
      v21 = sub_100019C28(0xD000000000000021, 0x8000000100E5C870);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v34 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      sub_10000DD18(*(v36 + 56) + 32 * v21, &aBlock);
      sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
      v23 = swift_dynamicCast();
      v20 = v36;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v34 = v20;
    if (v13)
    {
LABEL_13:
      sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
      v24.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v26 = v24.super.super.isa;
    v27 = String._bridgeToObjectiveC()();
    [a2 setProperty:v26 forBodyKey:v27];

    if (*(v36 + 16) && (v28 = sub_100019C28(0xD000000000000019, 0x8000000100E5C8A0), (v29 & 1) != 0))
    {
      sub_10000DD18(*(v36 + 56) + 32 * v28, &aBlock);

      sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v30 = v36;
LABEL_27:
        v31 = v30;
        v32 = String._bridgeToObjectiveC()();
        [a2 setProperty:v31 forBodyKey:v32];

        v41 = a5;
        v42 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_10002BC98;
        *(&v40 + 1) = &unk_1010D25A8;
        v33 = _Block_copy(&aBlock);

        v35.receiver = a3;
        v35.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
        objc_msgSendSuper2(&v35, "setStandardPropertiesWith:completionHandler:", a4, v33);
        _Block_release(v33);

        return;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v41 = a5;
  v42 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_10002BC98;
  *(&v40 + 1) = &unk_1010D2580;
  v25 = _Block_copy(&aBlock);

  v38.receiver = a3;
  v38.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
  objc_msgSendSuper2(&v38, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

unint64_t _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100958AE0()
{
  result = qword_1011A9B38;
  if (!qword_1011A9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9B38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayActivityFeatureIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayActivityFeatureIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100958CAC(void (*a1)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() defaultIdentityStore];
  v4 = [objc_opt_self() activeAccount];
  v21[0] = 0;
  v5 = [v3 DSIDForUserIdentity:v4 outError:v21];

  if (v5)
  {
    v6 = v21[0];
    [v1 setAccountIdentifier:v5];
    v7 = [v5 longLongValue] != 0;
  }

  else
  {
    v8 = v21[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    [v1 setAccountIdentifier:0];
    v7 = 1;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithBool:v7];
  v10 = String._bridgeToObjectiveC()();
  [v1 setProperty:v9 forBodyKey:v10];

  v11 = [objc_opt_self() sharedController];
  v12 = [v11 musicSubscriptionStatus];

  if (v12)
  {
    v13 = [v12 statusType];
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_13;
      }

      [v12 reasonType];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        do
        {
          v21[0] = 0;
          v21[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(24);
          a1 = 0xD000000000000013;
          v14._object = 0x8000000100E53D80;
          v14._countAndFlagsBits = 0xD000000000000013;
          String.append(_:)(v14);
          [v12 statusType];
          v15._countAndFlagsBits = 0xD00000000000001DLL;
          v15._object = 0x8000000100E5C830;
          String.append(_:)(v15);
          v16._countAndFlagsBits = 32;
          v16._object = 0xE100000000000000;
          String.append(_:)(v16);
          [v12 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          _print_unlocked<A, B>(_:_:)();
          v13 = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_13:
          ;
        }

        while (v13 != 3);
      }
    }

    else
    {
    }
  }

  v17 = String._bridgeToObjectiveC()();

  v18 = String._bridgeToObjectiveC()();
  [v1 setProperty:v17 forBodyKey:v18];

  a1(v19, v20);
}

uint64_t sub_1009590D0(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = sub_100019C28(0xD000000000000012, 0x8000000100E5C7E0);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_10000DD18(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = String._bridgeToObjectiveC()();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = sub_100019C28(0xD00000000000001ALL, 0x8000000100E5C7C0), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_10000DD18(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = String._bridgeToObjectiveC()();

LABEL_19:
  v15 = String._bridgeToObjectiveC()();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void sub_100959364(void (*a1)(void))
{
  v3 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [v1 setConnection:v3];

  v4 = objc_allocWithZone(ICStoreRequestContext);
  v8[4] = UIScreen.Dimensions.size.getter;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10006BD7C;
  v8[3] = &unk_1010D2490;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithBlock:v5];
  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 userAgent];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v1 setUserAgent:v7];

    a1();
  }
}

double sub_10095951C(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = sub_10089CC44(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    sub_10099C4C8(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = sub_10026A294;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_10095A460;
    *(v13 + 24) = v12;
    v17[0] = sub_100029B94;
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }

  return result;
}

double sub_1009596E4(void *a1, void *a2, void (**a3)(void))
{
  sub_10010FC20(&qword_1011A7C58, &unk_100EF1710);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBF880;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10095A360;
  *(v8 + 24) = v7;
  *(v6 + 32) = sub_10095A384;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10095A38C;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_10095A608;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10095A3B0;
  *(v12 + 24) = v11;
  *(v6 + 64) = sub_10095A608;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10095A3DC;
  *(v14 + 24) = v13;
  *(v6 + 80) = sub_10095A608;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_10095A408;
  *(v16 + 24) = v15;
  *(v6 + 96) = sub_10095A608;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10095A42C;
  *(v18 + 24) = v17;
  *(v6 + 112) = sub_10095A608;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10095A434;
  *(v20 + 24) = v19;
  *(v6 + 128) = sub_10095A608;
  *(v6 + 136) = v20;
  sub_10095951C(a1, v6, a2, a3);

  return result;
}

double sub_1009599F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = String._bridgeToObjectiveC()();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = String._bridgeToObjectiveC()();
  [v3 setProperty:v8 forBodyKey:v9];

  sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100029B6C, v10);

  return result;
}

void sub_100959B5C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1009570DC();

  [a2 setXPSamplingForced:v13 & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_21;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = sub_100019C28(0xD000000000000017, 0x8000000100E5C6D0);
      if (v17)
      {
        sub_10000DD18(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = sub_100019C28(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        sub_10000DD18(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = sub_100019C28(0xD000000000000021, 0x8000000100E5C6F0), (v21 & 1) != 0))
    {
      sub_10000DD18(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_10002BC98;
  *(&v27 + 1) = &unk_1010D20D0;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void sub_100959F0C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1009571B8();

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v35 = 0u;
LABEL_10:
    sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_25;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v35 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

  sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v35 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v31 + 16))
  {
    v18 = sub_100019C28(0xD000000000000026, 0x8000000100E5C620);
    if (v19)
    {
      sub_10000DD18(*(v31 + 56) + 32 * v18, &aBlock);
LABEL_14:
      sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
      v20 = swift_dynamicCast();
      v21 = v31;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v35 = 0u;
  sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = String._bridgeToObjectiveC()();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v31 + 16) && (v24 = sub_100019C28(0xD00000000000001ELL, 0x8000000100E5C650), (v25 & 1) != 0))
  {
    sub_10000DD18(*(v31 + 56) + 32 * v24, &aBlock);

    sub_100009F78(0, &qword_1011A9B28, NSNumber_ptr);
    v26 = swift_dynamicCast();
    v27 = v31;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = String._bridgeToObjectiveC()();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v36 = a5;
  v37 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_10002BC98;
  *(&v35 + 1) = &unk_1010D2080;
  v30 = _Block_copy(&aBlock);

  v33.receiver = a3;
  v33.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  objc_msgSendSuper2(&v33, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_10095A464()
{

  return swift_deallocObject();
}

uint64_t sub_10095A4E4()
{

  return swift_deallocObject();
}

id sub_10095A568()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == 5 || result == 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin();
  v49 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v39[-v8];
  v48 = v10;
  __chkstk_darwin();
  v12 = &v39[-v11];
  if (qword_1011A6818 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000060E4(v13, qword_101219A28);
  v14 = *(v6 + 16);
  v14(v12, a1, a2);
  v46 = v14;
  v47 = a1;
  v14(v9, a1, a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v45 = v15;
  v17 = (a3 + 8);
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v44 = v18;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v18 = 136315395;
    v43 = *(a3 + 8);
    v41 = v17 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v19 = v43(a2, a3);
    v21 = v20;
    v40 = v16;
    v22 = *(v6 + 8);
    v22(v12, a2);
    v23 = sub_100010678(v19, v21, aBlock);

    v24 = v44;
    *(v44 + 1) = v23;
    *(v24 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v22(v9, a2);
    sub_10095AD18();
    v25 = Dictionary.description.getter();
    v27 = v26;

    v28 = sub_100010678(v25, v27, aBlock);

    v29 = v44;
    *(v44 + 14) = v28;
    v30 = v45;
    _os_log_impl(&_mh_execute_header, v45, v40, "Send analytics event: %s, payload: %{private}s", v29, 0x16u);
    swift_arrayDestroy();

    v31 = v43;
  }

  else
  {
    v32 = *(v6 + 8);
    v32(v9, a2);

    v32(v12, a2);
    v31 = *v17;
  }

  v33 = v47;
  v31(a2, a3);
  v34 = v49;
  v46(v49, v33, a2);
  v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = a3;
  (*(v6 + 32))(v36 + v35, v34, a2);
  v37 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10095ACB0;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10095ABAC;
  aBlock[3] = &unk_1010D2670;
  v38 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v38);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10095ABAC;
  v8[3] = &unk_1010D2698;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

Class sub_10095ABAC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10095AD18();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_10095AC38()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219A28);
  sub_1000060E4(v0, qword_101219A28);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_10095AD18()
{
  result = qword_1011AAEA0;
  if (!qword_1011AAEA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AAEA0);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_10095B0F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  sub_10095B290(a1, v1 + *(*v1 + 160));
  return v1;
}

uint64_t sub_10095B290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  v9 = *(v3 + 16);
  if (v9)
  {
    [v9 responseEndTime];
    v11 = v10;
    swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      sub_10095B3BC(a2, a3);
    }
  }
}

double sub_10095B3BC(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 168);
  if ((*(v2 + v3) & 1) == 0)
  {
    *(v2 + v3) = 1;
    sub_10002705C();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = a1;
    v6[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10095BE3C, v6);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      sub_10095B3BC(countAndFlagsBits, object);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v9 = v8;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v9;
      *(v1 + 96) = 0;
    }
  }

  sub_10095B3BC(countAndFlagsBits, object);
}

void sub_10095BB48(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1011A6810 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10095BC78(v0 + *(*v0 + 20));
  return v0;
}

uint64_t sub_10095BC78(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10095BD2C(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties(319);
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  v3 = v9[0];
  v2 = v9[1];
  v5 = v9[6];
  v4 = v9[7];
  v6 = v9[5];
  v7 = v9[2];
  v10 = v9[3];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v5;
  *(a1 + 112) = v4;
  *a1 = v3;
  *(a1 + 16) = v2;
  result = v10;
  *(a1 + 32) = v7;
  *(a1 + 48) = result;
  return result;
}

Swift::Int sub_10095BF14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.description.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10095BF78(uint64_t a1)
{
  ApplicationCapabilities.Service.description.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10095BFCC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.description.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10095C02C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10095C05C@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10095C088(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ApplicationCapabilities.Service.description.getter(*a1);
  v5 = v4;
  if (v3 == ApplicationCapabilities.Service.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

double ApplicationCapabilities.ratingWarning.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;

  return result;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v12, "RatingWarning(");
  HIBYTE(v12[1]) = -18;
  *&v14 = 0x6C6F687365726874;
  *(&v14 + 1) = 0xEA00000000003D64;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x6C6F687365726874;
  v3._object = 0xEA00000000003D64;
  String.append(_:)(v3);

  v13._countAndFlagsBits = 0x3D656C746974;
  v13._object = 0xE600000000000000;
  v14 = *(v0 + 8);
  v11 = *(v0 + 8);
  sub_1000089F8(&v14, &v10, &unk_1011ACB70, &qword_100EEEF60);
  sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  String.append(_:)(v13);

  v11._countAndFlagsBits = 0x3D6567617373656DLL;
  v11._object = 0xE800000000000000;
  v13 = *(v0 + 24);
  v10 = *(v0 + 24);
  sub_1000089F8(&v13, &v9, &unk_1011ACB70, &qword_100EEEF60);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  String.append(_:)(v11);

  return v12[0];
}

uint64_t sub_10095C4A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10095C5B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10095C690(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10095C754(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10095C828@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10095C858(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
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

uint64_t sub_10095C900(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1008F8758(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter(uint64_t a1, char a2, uint64_t a3)
{
  v12._countAndFlagsBits = Array.description.getter();
  v12._object = v3;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v12);

  _StringGuts.grow(_:)(19);

  sub_10010FC20(&qword_1011A9D10, &qword_100EF1870);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000010;
  v7._object = 0x8000000100E5C9F0;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(21);

  v8._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xD000000000000012;
  v10._object = 0x8000000100E5CA10;
  String.append(_:)(v10);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10001F358(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (sub_10001797C(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_100017BA4(a3, a6);
}

void sub_10095CBC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "nt";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Playlists";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Artists";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Albums";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Songs";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.MadeForYou";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.MusicVideos";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Genres";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Compilations";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Composers";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Shows";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "nt";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_10095CF10(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_100009F78(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_10095D1D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8, v12);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v11, v18, v8);
    sub_1009612E0(v31, v32, v33);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *v21;
    (*v21)(v11, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10095D3CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_10001F358(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (sub_10001797C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_100017BA4(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_10095D4CC()
{
  sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EC7D50;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000100E47E50;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000100E5D170;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x8000000100E5D190;
  sub_10095D9C8(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  sub_1009614B4();
  *(inited + 240) = Set.description.getter();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x8000000100E5D1B0;
  *(inited + 288) = Set.description.getter();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x8000000100E5D1D0;
  v31 = *(v0 + 88);
  v30 = v31;
  sub_1000089F8(&v31, v29, &qword_1011A9F98, &qword_100EF1D48);
  sub_10010FC20(&qword_1011A9F98, &qword_100EF1D48);
  *(inited + 384) = String.init<A>(describing:)();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x8000000100E5D1F0;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_100015C24(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        sub_100015C24((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
  *(inited + 480) = v11;
  v27 = sub_1008BC8D8(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011A8618, &qword_100EED8E0);
  swift_arrayDestroy();
  return v27;
}

void sub_10095D9C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL sub_10095DAF4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

double static ApplicationCapabilities.Controller.shared.getter()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_10095DBC4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10095DC14();

  return v1;
}

uint64_t sub_10095DC14()
{
  LOBYTE(v1) = 1;
  sub_10001351C();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    sub_10010FC20(&qword_1011A9FC0, &qword_100EF1D60);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000095E8(&v2, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }
}

double sub_10095DD1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    UnfairLock.locked<A>(_:)(sub_100016444);
  }

  return result;
}

uint64_t sub_10095DDB0(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v10);

    v11[4] = v10[4];
    v11[5] = v10[5];
    v11[6] = v10[6];
    v11[7] = v10[7];
    v11[0] = v10[0];
    v11[1] = v10[1];
    v11[2] = v10[2];
    v11[3] = v10[3];
    v6 = sub_10095D4CC();
    sub_100014984(v11);
    sub_1009AE764(v6);
    v8 = v7;

    v9 = a2(v8);

    return v9;
  }

  return result;
}

uint64_t sub_10095DEF4(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_100372530, v6);

  return v7;
}

__n128 sub_10095DF94@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v4 = v10[0];
  v3 = v10[1];
  v6 = v10[6];
  v5 = v10[7];
  v7 = v10[5];
  v8 = v10[2];
  v11 = v10[3];
  *(a2 + 64) = v10[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v6;
  *(a2 + 112) = v5;
  *a2 = v4;
  *(a2 + 16) = v3;
  result = v11;
  *(a2 + 32) = v8;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_10095E048(_OWORD *a1, uint64_t *a2)
{
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a1[5];
  v12[12] = a1[4];
  v12[13] = v7;
  v8 = a1[7];
  v12[14] = a1[6];
  v12[15] = v8;
  v9 = a1[1];
  v12[8] = *a1;
  v12[9] = v9;
  v10 = a1[3];
  v12[10] = a1[2];
  v12[11] = v10;

  sub_10001494C(v13, v12);
  return static Published.subscript.setter();
}

uint64_t sub_10095E10C(void *a1)
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011AD0E0, &unk_100EF1878);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_10095E184(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10010FC20(&qword_1011ACFE0, "z_\n");
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_10010FC20(&qword_1011AD0E0, &unk_100EF1878);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_10095E308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10095E3A0, v6, v5);
}

uint64_t sub_10095E3A0()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_1011A6890 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6888 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6840 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6848 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6850 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6870 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6858 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6860 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6868 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_1011A68A0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6898 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (qword_1011A6880 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t sub_10095E7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  type metadata accessor for MainActor();
  v6[37] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10095E880, v8, v7);
}

void sub_10095E880()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  sub_10001494C(v2, v0 + 144);
  static Published.subscript.setter();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = qword_1011A6838;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_1011A9CE8);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      _s3__C4NameVMa_0(0);
      v25 = v21;
      v26 = String.init<A>(describing:)();
      v28 = v13;
      v29 = v9;
      v30 = sub_100010678(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      sub_10000959C(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

double sub_10095EBAC(char a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v7), , , , v12 = v7[4], v13 = v7[5], v14 = v7[6], v15 = v7[7], v8 = v7[0], v9 = v7[1], v10 = v7[2], v11 = v7[3], sub_100014984(&v8), BYTE8(v9) == (a1 & 1)))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = static Published.subscript.modify();
      *(v5 + 24) = (a1 & 1) == 0;
      v4(&v8, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_10095ED90, 0, 0);
}

uint64_t sub_10095ED90()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_10095EE68;
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, sub_1009610AC, v2, &type metadata for ApplicationCapabilities);
}

uint64_t sub_10095EE68()
{

  return _swift_task_switch(sub_10095EF64, 0, 0);
}

uint64_t sub_10095EF64()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

double sub_10095EFAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_1011A9F68, &unk_100EF1D20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v24 - v7;
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v4 + 16);
  v11(v8, a1, v3);
  v11(v6, v8, v3);
  v12 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v4 + 32))(v13 + v12, v8, v3);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v15 = v25;
  if (v25)
  {
    sub_10095F35C(v25, v10);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v16 = swift_allocObject();
    v24[1] = v14;
    v17 = v16;
    swift_weakInit();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    swift_weakAssign();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = sub_100961328;
    v19[3] = v13;
    v19[4] = v18;
    v19[5] = v17;
    v24[0] = 0;
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    *(v17 + 24) = sub_1009613A8;
    *(v17 + 32) = v19;

    v22 = v21;
    v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_100020438(v20, v22);

    __chkstk_darwin();
    v24[-2] = v9;
    v24[-1] = v17;
    UnfairLock.locked<A>(_:)(sub_1009613B4);
    sub_10000679C(0);
  }

  (*(v4 + 8))(v6, v3);

  return result;
}

double sub_10095F35C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v6 = *(Strong + 16);
    a1;

    sub_10000E44C(a1, v5, v6, v7);
    __chkstk_darwin();

    UnfairLock.locked<A>(_:)(sub_1009613D0);

    sub_10010FC20(&qword_1011A9F68, &unk_100EF1D20);
    CheckedContinuation.resume(returning:)();
  }

  return result;
}

uint64_t sub_10095F4D0(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  sub_10001494C(v19, v18);
  sub_10001494C(a3, v18);
  sub_100014984(v26);
  sub_10001645C(v19);
  return sub_100014984(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = sub_10010FC20(&qword_1011AD0E0, &unk_100EF1878);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  sub_100014984(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

uint64_t sub_10095F928()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v3)
  {
    goto LABEL_15;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000160B4(v10), (v5 & 1) == 0))
  {

    sub_10001621C(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v4, &v11);
  sub_10001621C(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_1000095E8(&v11, &qword_1011ABB20, &unk_100EF1530);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_1000160B4(v10), (v8 & 1) == 0))
  {

    sub_10001621C(v10);
    goto LABEL_17;
  }

  sub_10000DD18(*(v6 + 56) + 32 * v7, &v11);
  sub_10001621C(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_1000095E8(&v11, &qword_1011ABB20, &unk_100EF1530);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_10095FB7C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v3)
  {
    goto LABEL_14;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_1000160B4(&v10), (v5 & 1) == 0))
  {

    sub_10001621C(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v4, &v11);
  sub_10001621C(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_1000095E8(&v11, &qword_1011ABB20, &unk_100EF1530);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_1000160B4(&v10), (v8 & 1) == 0))
  {

    sub_10001621C(&v10);
    goto LABEL_16;
  }

  sub_10000DD18(*(v6 + 56) + 32 * v7, &v11);
  sub_10001621C(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    sub_1000095E8(&v11, &qword_1011ABB20, &unk_100EF1530);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

void sub_10095FDCC(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000160B4(v27), (v7 & 1) == 0))
  {
    sub_10001621C(v27);
LABEL_10:
    *a3 = 512;
    return;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v6, v28);
  sub_10001621C(v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v31._countAndFlagsBits = 25705;
  v31._object = 0xE200000000000000;
  v30 = sub_10096926C(v31);
  if (v30 == 7)
  {
    goto LABEL_10;
  }

  AnyHashable.init<A>(_:)();
  if (*(v5 + 16) && (v8 = sub_1000160B4(v27), (v9 & 1) != 0))
  {
    sub_10000DD18(*(v5 + 56) + 32 * v8, v28);
    sub_10001621C(v27);
    if (swift_dynamicCast())
    {
      v29 = 18;
LABEL_65:
      if (v29)
      {
        v26 = 256;
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    sub_10001621C(v27);
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 33);
    while (1)
    {
      v12 = *(v11 - 1);
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v15 = 0x756F795F726F66;
        }

        else
        {
          v15 = 0x6E5F6E657473696CLL;
        }

        if (v12 == 1)
        {
          v16 = 0xE700000000000000;
        }

        else
        {
          v16 = 0xEA0000000000776FLL;
        }

        if (*(v11 - 1))
        {
          v13 = v15;
        }

        else
        {
          v13 = 0x636973756D5F796DLL;
        }

        if (*(v11 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0xE800000000000000;
        }
      }

      else if (*(v11 - 1) > 4u)
      {
        if (v12 == 5)
        {
          v14 = 0xE600000000000000;
          v13 = 0x686372616573;
        }

        else
        {
          v14 = 0xE500000000000000;
          v13 = 0x6F65646976;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x6573776F7262;
        }

        else
        {
          v13 = 0x6F69646172;
        }

        if (v12 == 3)
        {
          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }
      }

      v29 = *v11;
      v17 = 0x686372616573;
      if (v30 == 5)
      {
        v18 = 0xE600000000000000;
      }

      else
      {
        v17 = 0x6F65646976;
        v18 = 0xE500000000000000;
      }

      v19 = 0x6573776F7262;
      if (v30 == 3)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v19 = 0x6F69646172;
        v20 = 0xE500000000000000;
      }

      if (v30 <= 4u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v30 == 1)
      {
        v21 = 0x756F795F726F66;
      }

      else
      {
        v21 = 0x6E5F6E657473696CLL;
      }

      if (v30 == 1)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xEA0000000000776FLL;
      }

      if (!v30)
      {
        v21 = 0x636973756D5F796DLL;
        v22 = 0xE800000000000000;
      }

      v23 = v30 <= 2u ? v21 : v17;
      v24 = v30 <= 2u ? v22 : v18;
      if (v13 == v23 && v14 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_65;
      }

      v11 += 2;
      if (!--v10)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_68:
  *a3 = v26 | v30;
}

id sub_100960174()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1009602E0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

Swift::Int sub_100960398()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100960454(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1009604FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1009605B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100961580(*a1);
  *a2 = result;
  return result;
}

NSString sub_1009605E4()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString sub_100960640()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString sub_10096069C()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString sub_1009606F8()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString sub_100960754()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString sub_1009607B0()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString sub_10096080C()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString sub_10096088C()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString sub_1009608E8()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString sub_100960968()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString sub_1009609C4()
{
  result = String._bridgeToObjectiveC()();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

id sub_100960A44(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

void sub_100960B6C(unsigned __int8 a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_59:
    if (a1 == 2)
    {
      v42 = &off_1010C6198;
      sub_100013C14(&off_1010C61C0);
    }

    return;
  }

  v3 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v39 = v3;
  v40 = _swiftEmptyArrayStorage;
  v36 = a1;
  if (!v7)
  {
    while (1)
    {
LABEL_5:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_9;
      }
    }

    if (*(v40 + 2))
    {
      return;
    }

    goto LABEL_59;
  }

  while (1)
  {
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17._countAndFlagsBits = v14;
    v17._object = v15;
    v18 = _findStringSwitchCase(cases:string:)(&off_1010C62D8, v17);

    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v20 = 0x6269726373627573;
        v19 = 0xEA00000000007265;
      }

      else
      {
        if (v18 != 3)
        {
          goto LABEL_35;
        }

        v20 = 0x6275536563696F76;
        v19 = 0xEF72656269726373;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_35;
      }

      v19 = 0xE700000000000000;
      v20 = 0x63697373616C63;
    }

    else
    {
      v20 = 0x6564696365646E75;
      v19 = 0xE900000000000064;
    }

    v21 = 0x6275536563696F76;
    if (a1 == 2)
    {
      v21 = 0x6269726373627573;
    }

    v22 = 0xEF72656269726373;
    if (a1 == 2)
    {
      v22 = 0xEA00000000007265;
    }

    v23 = 0x6564696365646E75;
    if (a1)
    {
      v23 = 0x63697373616C63;
    }

    v24 = 0xE900000000000064;
    if (a1)
    {
      v24 = 0xE700000000000000;
    }

    v25 = a1 <= 1u ? v23 : v21;
    v26 = a1 <= 1u ? v24 : v22;
    if (v20 == v25 && v19 == v26)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_38;
    }

LABEL_35:

    v3 = v39;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

LABEL_38:

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v42 = &off_1010C6198;
      sub_100013C14(&off_1010C61C0);
      a1 = v36;
      v28 = v42;
    }

    else
    {
      v28 = &off_1010C61E8;
    }

LABEL_44:
    v38 = v28;
  }

  else
  {
    v38 = &off_1010C6148;
    if (!a1)
    {
      v28 = &off_1010C6170;
      goto LABEL_44;
    }
  }

  v37 = *(v16 + 16);
  if (!v37)
  {
    v40 = _swiftEmptyArrayStorage;
LABEL_56:

    goto LABEL_35;
  }

  v29 = 0;
  v40 = _swiftEmptyArrayStorage;
  while (v29 < *(v16 + 16))
  {
    v42 = *(v16 + 32 + 8 * v29);

    sub_10095FDCC(&v42, v38, &v41);

    v31 = v41;
    if ((v41 & 0xFF00) != 0x200)
    {
      v32 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100013D00(0, *(v40 + 2) + 1, 1, v40);
      }

      v33 = v32;
      v34 = *(v32 + 2);
      v40 = v33;
      v35 = *(v33 + 3);
      if (v34 >= v35 >> 1)
      {
        v40 = sub_100013D00((v35 > 1), v34 + 1, 1, v40);
      }

      *(v40 + 2) = v34 + 1;
      v30 = &v40[2 * v34];
      v30[32] = v31;
      v30[33] = HIBYTE(v31) & 1;
      a1 = v36;
    }

    if (v37 == ++v29)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C72D0, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C73F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1009610B8()
{
  result = qword_1011A9D60;
  if (!qword_1011A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9D60);
  }

  return result;
}

uint64_t sub_10096110C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100961168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1009611FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10095E7E4(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1009612E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100961328(void *a1)
{
  sub_10010FC20(&qword_1011A9F68, &unk_100EF1D20);
  v3 = *(v1 + 16);

  return sub_10095F35C(a1, v3);
}

uint64_t sub_1009613F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10095E308(a1, v4, v5, v6);
}

unint64_t sub_1009614B4()
{
  result = qword_1011A9F90;
  if (!qword_1011A9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9F90);
  }

  return result;
}

unint64_t sub_10096152C()
{
  result = qword_1011A9FC8;
  if (!qword_1011A9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9FC8);
  }

  return result;
}

unint64_t sub_100961580(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7478, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009615FC()
{
  type metadata accessor for BackgroundFetchManager();
  result = swift_initStaticObject();
  static BackgroundFetchManager.shared = result;
  return result;
}

uint64_t *BackgroundFetchManager.shared.unsafeMutableAddressor()
{
  if (qword_1011A68B0 != -1)
  {
    swift_once();
  }

  return &static BackgroundFetchManager.shared;
}

void BackgroundFetchManager.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100961F30();
  if (*(v6 + 16) && (v7 = sub_100019C28(a1, a2), (v8 & 1) != 0) && (v9 = *(*(v6 + 56) + 8 * v7), , , *(v9 + 16)) && (v10 = sub_100019C28(7107189, 0xE300000000000000), (v11 & 1) != 0))
  {
    sub_10000DD18(*(v9 + 56) + 32 * v10, v13);

    if (swift_dynamicCast())
    {
      URL.init(string:)();

      return;
    }
  }

  else
  {
  }

  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
}

void (*BackgroundFetchManager.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = a3;
  v6 = *(*(sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v6);
    v7 = malloc(v6);
  }

  a1[3] = v7;
  BackgroundFetchManager.subscript.getter(a2, a3, v7);
  return sub_100961894;
}

void sub_100961894(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    sub_10093F768(a1[3], v2);

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v2, v5, v4);
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {

    _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(v3, v5, v4);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall BackgroundFetchManager.removeAll()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  [v0 removeObjectForKey:v1];
}

void sub_1009619D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), int a4, int a5, int a6, dispatch_group_t group)
{
  if (a3)
  {
    a3(a1, a2);
  }

  if (a2)
  {
    __chkstk_darwin();
    swift_errorRetain();
    UnfairLock.locked<A>(_:)(sub_10096327C);
  }

  dispatch_group_leave(group);
}

uint64_t sub_100961AA4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10089CC68(0, v4[2] + 1, 1, v4);
    *a1 = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10089CC68((v6 > 1), v7 + 1, 1, v4);
    *a1 = v4;
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a2;
  swift_endAccess();
  return swift_errorRetain();
}

double sub_100961B80(uint64_t a1, uint64_t a2, void (*a3)())
{
  sub_10010FC20(&qword_1011AA078, &qword_100EF1E48);
  UnfairLock.locked<A>(_:)(sub_100963220);
  a3();

  return result;
}

void sub_100961C18()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v0 = v3;
  if (v3 && (sub_100961D14(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x4122750000000000;
  }

  qword_1011A9FD0 = v2;
  byte_1011A9FD8 = v1;
}

void sub_100961D14(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 valueForBagKey:ICURLBagKeyMusicCommon])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v10[0] = v11;
  v10[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_1000095E8(v10, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_16;
  }

  sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(v11 + 16) || (v3 = sub_100019C28(0xD00000000000001ELL, 0x8000000100E5D2A0), (v4 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_10000DD18(*(v11 + 56) + 32 * v3, v10);

  sub_10010FC20(&qword_1011A98D8, &qword_100EF1730);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    *a2 = 0;
    v9 = 1;
    goto LABEL_17;
  }

  v5 = v11;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000160B4(v10), (v7 & 1) == 0))
  {

    sub_10001621C(v10);
    goto LABEL_16;
  }

  sub_10000DD18(*(v5 + 56) + 32 * v6, &v11);
  sub_10001621C(v10);

  v8 = swift_dynamicCast();
  if ((v8 & 1) == 0)
  {
    *a2 = 0;
  }

  v9 = v8 ^ 1;
LABEL_17:
  *(a2 + 8) = v9;
}

unint64_t sub_100961F30()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 dictionaryForKey:v1];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100AEB544(v3);
    v5 = v4;

    if (v5)
    {
      return v5;
    }
  }

  else
  {
  }

  v7 = sub_1008BD3A4(_swiftEmptyArrayStorage);

  return v7;
}

uint64_t _s9MusicCore22BackgroundFetchManagerCy10Foundation3URLVSgSScis_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10093F768(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_1011A77F0, &unk_100EEAA20);
    v25 = sub_100961F30();
    sub_100A6B8CC(a2, a3);

    v12 = [objc_opt_self() standardUserDefaults];
    sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v14 = String._bridgeToObjectiveC()();
    [v12 setObject:isa forKey:v14];

    return sub_1000095E8(a1, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_10010FC20(&unk_1011AFD70, &unk_100EF0DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = 7107189;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = URL.absoluteString.getter();
    *(inited + 56) = v17;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = 1702125924;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 120) = type metadata accessor for Date();
    sub_10001C8B8((inited + 96));
    Date.init()();
    v18 = sub_1008BC8D8(inited);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011A8618, &qword_100EED8E0);
    swift_arrayDestroy();
    v19 = sub_100961F30();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v19;
    sub_1008B9774(v18, a2, a3, isUniquelyReferenced_nonNull_native);

    v21 = [objc_opt_self() standardUserDefaults];
    sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
    v22 = Dictionary._bridgeToObjectiveC()().super.isa;

    v23 = String._bridgeToObjectiveC()();
    [v21 setObject:v22 forKey:v23];

    sub_1000095E8(a1, &qword_1011A77F0, &unk_100EEAA20);
    return (*(v9 + 8))(v11, v8);
  }
}

void _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v94 = a5;
  v93 = a4;
  v76 = a3;
  v75 = a2;
  v99 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin();
  v97 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for DispatchQoS();
  v96 = *(v98 - 8);
  __chkstk_darwin();
  v95 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for URLRequest();
  v8 = *(v74 - 8);
  __chkstk_darwin();
  v80 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v88 = v68 - v10;
  v89 = type metadata accessor for Date();
  v11 = *(v89 - 8);
  __chkstk_darwin();
  v82 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = v68 - v13;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v105 = v68 - v14;
  v102 = type metadata accessor for URL();
  v15 = *(v102 - 8);
  __chkstk_darwin();
  v79 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = v68 - v17;
  v104 = dispatch_group_create();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v103 = UnfairLock.init()();
  v18 = swift_allocObject();
  *(v18 + 16) = _swiftEmptyArrayStorage;
  if (qword_1011A68B8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = *&qword_1011A9FD0;
  v20 = sub_100961F30();
  v21 = v20;
  v22 = 0;
  v23 = v20 + 64;
  v24 = 1 << *(v20 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v20 + 64);
  v27 = (v24 + 63) >> 6;
  v91 = (v15 + 6);
  v87 = (v15 + 4);
  v86 = (v11 + 7);
  v84 = (v11 + 6);
  v81 = (v11 + 4);
  ++v11;
  v85 = (v15 + 1);
  v78 = (v15 + 2);
  v77 = "com.apple.mobileipod";
  v15 = &v108;
  v73 = (v8 + 8);
  v8 = v105;
  while (1)
  {
    while (1)
    {
      do
      {
        if (!v26)
        {
          while (1)
          {
            v28 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v28 >= v27)
            {

              v61 = swift_allocObject();
              v61[2] = v103;
              v61[3] = v18;
              v62 = v94;
              v61[4] = v93;
              v61[5] = v62;
              v110 = sub_100963214;
              v111 = v61;
              aBlock = _NSConcreteStackBlock;
              v107 = 1107296256;
              v108 = sub_10002BC98;
              v109 = &unk_1010D2E78;
              v63 = _Block_copy(&aBlock);

              v64 = v95;
              static DispatchQoS.unspecified.getter();
              v112 = _swiftEmptyArrayStorage;
              sub_100024794();
              sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
              sub_100024900();
              v65 = v97;
              v66 = v101;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v67 = v104;
              OS_dispatch_group.notify(qos:flags:queue:execute:)();
              _Block_release(v63);

              (*(v100 + 8))(v65, v66);
              (*(v96 + 8))(v64, v98);

              return;
            }

            v26 = *(v23 + 8 * v28);
            ++v22;
            if (v26)
            {
              v22 = v28;
              goto LABEL_11;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_11:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v30 = *(*(v21 + 56) + ((v22 << 9) | (8 * v29)));
      }

      while (!*(v30 + 16));

      v31 = sub_100019C28(7107189, 0xE300000000000000);
      if (v32)
      {
        sub_10000DD18(*(v30 + 56) + 32 * v31, &aBlock);
        if (swift_dynamicCast())
        {
          break;
        }
      }
    }

    v90 = v15;
    URL.init(string:)();

    v33 = v102;
    if ((*v91)(v8, 1, v102) == 1)
    {

      v34 = v8;
      v35 = &qword_1011A77F0;
      v36 = &unk_100EEAA20;
      goto LABEL_22;
    }

    (*v87)(v92, v8, v33);
    v37 = v88;
    if (!*(v30 + 16) || (v38 = sub_100019C28(1702125924, 0xE400000000000000), (v39 & 1) == 0))
    {

      (*v85)(v92, v102);
      (*v86)(v37, 1, 1, v89);
LABEL_21:
      v34 = v37;
      v35 = &qword_1011A9B20;
      v36 = &qword_100EF1560;
LABEL_22:
      sub_1000095E8(v34, v35, v36);
      goto LABEL_23;
    }

    sub_10000DD18(*(v30 + 56) + 32 * v38, &aBlock);

    v40 = v89;
    v41 = swift_dynamicCast();
    (*v86)(v37, v41 ^ 1u, 1, v40);
    if ((*v84)(v37, 1, v40) == 1)
    {
      (*v85)(v92, v102);
      v8 = v105;
      goto LABEL_21;
    }

    (*v81)(v83, v37, v40);
    v42 = v82;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v44 = v43;
    v45 = v42;
    v46 = *v11;
    (*v11)(v45, v40);
    if (v44 < v19)
    {
      break;
    }

    v46(v83, v40);
    (*v85)(v92, v102);
    v8 = v105;
LABEL_23:
    v15 = v90;
  }

  v72 = v46;
  (*v78)(v79, v92, v102);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v47._object = (v77 | 0x8000000000000000);
  v48._countAndFlagsBits = 1702195828;
  v48._object = 0xE400000000000000;
  v47._countAndFlagsBits = 0xD00000000000001ALL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v48, v47);
  v49 = objc_allocWithZone(ICMusicKitRequestContext);
  v110 = sub_10099E7A8;
  v111 = 0;
  aBlock = _NSConcreteStackBlock;
  v107 = 1107296256;
  v108 = sub_10006BD7C;
  v109 = &unk_1010D2DD8;
  v50 = _Block_copy(&aBlock);
  v51 = [v49 initWithBlock:v50];
  _Block_release(v50);

  if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
  {
    v71 = objc_allocWithZone(ICMusicKitURLRequest);
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v71 = [v71 initWithURLRequest:isa requestContext:v51];

    dispatch_group_enter(v104);
    v70 = [objc_opt_self() highPrioritySession];
    v53 = swift_allocObject();
    v54 = v75;
    v55 = v76;
    v53[2] = v75;
    v53[3] = v55;
    v56 = v104;
    v53[4] = v103;
    v53[5] = v18;
    v53[6] = v56;
    v110 = sub_100963204;
    v111 = v53;
    aBlock = _NSConcreteStackBlock;
    v107 = 1107296256;
    v108 = sub_10000B378;
    v109 = &unk_1010D2E28;
    v69 = _Block_copy(&aBlock);
    v68[1] = v111;
    sub_100030444(v54, v55);

    v57 = v56;

    v58 = v70;
    v59 = v71;
    v60 = v69;
    [v70 enqueueDataRequest:v71 withCompletionHandler:v69];
    _Block_release(v60);

    (*v73)(v80, v74);
    v72(v83, v89);
    (*v85)(v92, v102);
    v8 = v105;
    goto LABEL_23;
  }

  __break(1u);
}

double sub_100963220@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;

  return result;
}

double static BackgroundRefreshController.shared.getter()
{
  if (qword_1011A68C0 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_100963300(uint64_t a1)
{
  if (qword_1011A68C0 != -1)
  {
    swift_once();
  }

  objc_opt_self();
  v1 = swift_dynamicCastObjCClassUnconditional();
  return sub_100963380(v1);
}

double sub_100963380(void *a1)
{
  v3 = *v1;
  v4 = static os_log_type_t.default.getter();
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_10001CE24();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x8000000100E5D320;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v6, "BackgroundRefreshController: EXECUTING REFRESH SUBTASKS: %@", 59, 2, v5);

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v3;
  v8 = a1;
  sub_100964AE4(sub_10096727C, v7);

  return result;
}

Swift::Void __swiftcall BackgroundRefreshController.scheduleAllTasks()()
{
  v72 = *v0;
  v78 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v75 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v96 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v95 = &v71 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v81 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v85 = &v71 - v8;
  __chkstk_darwin();
  v94 = &v71 - v9;
  __chkstk_darwin();
  v93 = &v71 - v10;
  __chkstk_darwin();
  v100 = &v71 - v11;
  __chkstk_darwin();
  v92 = &v71 - v12;
  __chkstk_darwin();
  v91 = &v71 - v13;
  __chkstk_darwin();
  v15 = &v71 - v14;
  __chkstk_darwin();
  v17 = (&v71 - v16);
  if (qword_1011A68D0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v18 = off_1011AA088;
    static Date.distantFuture.getter();
    v83 = v6;
    v19 = *(v6 + 16);
    v82 = v17;
    v80 = v6 + 16;
    v79 = v19;
    v19(v15, v17, v5);
    v97 = v18;
    v84 = v18[2];
    if (v84)
    {
      v90 = objc_opt_self();
      v89 = (v83 + 56);
      v20 = (v83 + 48);
      v17 = (v83 + 8);
      v21 = v97 + 49;
      v98 = (v83 + 32);
      v87 = (v83 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v22 = v84;
      v88 = (v83 + 48);
      do
      {
        v99 = v22;
        v33 = *v21;
        v34 = [v90 standardUserDefaults];
        LOBYTE(v101) = v33;
        sub_1009667A0();
        sub_10000988C();
        NSUserDefaults.subscript.getter(&aBlock);

        if (v104)
        {
          v35 = v95;
          v36 = swift_dynamicCast();
          (*v89)(v35, v36 ^ 1u, 1, v5);
        }

        else
        {
          sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
          v35 = v95;
          (*v89)(v95, 1, 1, v5);
        }

        v37 = v96;
        sub_1009667F4(v35, v96);
        v38 = *v20;
        if ((*v20)(v37, 1, v5) == 1)
        {
          v86 = v21;
          v39 = v93;
          Date.init()();
          v40 = v38(v37, 1, v5);
          v21 = v86;
          if (v40 != 1)
          {
            sub_1000095E8(v37, &qword_1011A9B20, &qword_100EF1560);
          }
        }

        else
        {
          v39 = v93;
          (*v98)(v93, v37, v5);
        }

        sub_1000095E8(v35, &qword_1011A9B20, &qword_100EF1560);
        static Date.+ infix(_:_:)();
        Kind = v17->Kind;
        (v17->Kind)(v39, v5);
        v42 = v94;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v23 = v85;
          static Date.+ infix(_:_:)();
          Kind(v42, v5);
          v24 = v100;
          Kind(v100, v5);
          v25 = *v98;
          (*v98)(v24, v23, v5);
        }

        else
        {
          Kind(v42, v5);
          v25 = *v98;
        }

        v26 = v99;
        v21 += 24;
        v27 = v92;
        v25(v92, v100, v5);
        sub_100967234(&qword_1011AA0C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v28 = dispatch thunk of static Comparable.< infix(_:_:)();
        v29 = (v28 & 1) == 0;
        if (v28)
        {
          v30 = v15;
        }

        else
        {
          v30 = v27;
        }

        if (v29)
        {
          v31 = v15;
        }

        else
        {
          v31 = v27;
        }

        Kind(v30, v5);
        v32 = v91;
        v25(v91, v31, v5);
        v25(v15, v32, v5);
        v22 = v26 - 1;
        v20 = v88;
      }

      while (v22);
    }

    v99 = swift_allocBox();
    v44 = v43;
    v6 = v83;
    v98 = *(v83 + 8);
    (v98)(v82, v5);
    v45 = *(v6 + 32);
    v100 = v44;
    v45(v44, v15, v5);
    if (!v84)
    {
LABEL_37:
      v51 = 0;
      goto LABEL_38;
    }

    if (v97[2])
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  v46 = 0;
  v6 = 0;
  v47 = v97 + 50;
  v48 = v84 - 1;
  v17 = &type metadata for BackgroundTaskConfiguration.UserDefaultsKey;
  v15 = &type metadata for Bool;
  while ((v46 & 1) != 0)
  {
    if (v48 == v6)
    {
      goto LABEL_36;
    }

    v46 = 1;
LABEL_25:
    ++v6;
    v47 += 24;
    if (v6 >= v97[2])
    {
      goto LABEL_44;
    }
  }

  v49 = *v47;
  v50 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v101) = v49;
  sub_1009667A0();
  sub_10000988C();
  NSUserDefaults.subscript.getter(&aBlock);

  if (!v104)
  {
    sub_1000095E8(&aBlock, &qword_1011ABB20, &unk_100EF1530);
    goto LABEL_33;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v46 = 0;
    v51 = 0;
    if (v48 == v6)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v46 = v101;
  if (v48 != v6)
  {
    goto LABEL_25;
  }

  if ((v101 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_36:
  v52 = v85;
  Date.init()();
  (*(v83 + 40))(v100, v52, v5);
  v51 = 1;
LABEL_38:
  v53 = v85;
  v54 = v79;
  v79(v85, v100, v5);
  v55 = v81;
  static Date.distantFuture.getter();
  v56 = static Date.< infix(_:_:)();
  v57 = v98;
  (v98)(v55, v5);
  (v57)(v53, v5);
  if (v51 & 1) != 0 || (v56)
  {
    v58 = objc_allocWithZone(BGAppRefreshTaskRequest);
    v59 = String._bridgeToObjectiveC()();
    v60 = [v58 initWithIdentifier:v59];

    v61 = v85;
    v54(v85, v100, v5);
    v62 = v60;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (v57)(v61, v5);
    [v62 setEarliestBeginDate:isa];

    if (qword_1011A68C8 != -1)
    {
      swift_once();
    }

    v64 = swift_allocObject();
    v65 = v99;
    *(v64 + 16) = v62;
    *(v64 + 24) = v65;
    *(v64 + 32) = v51;
    *(v64 + 40) = v72;
    v105 = sub_100966864;
    v106 = v64;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v103 = sub_10002BC98;
    v104 = &unk_1010D2EF0;
    v66 = _Block_copy(&aBlock);
    v67 = v62;

    v68 = v73;
    static DispatchQoS.unspecified.getter();
    v101 = _swiftEmptyArrayStorage;
    sub_100967234(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
    sub_100029908(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40);
    v69 = v75;
    v70 = v78;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v66);

    (*(v77 + 8))(v69, v70);
    (*(v74 + 8))(v68, v76);
  }
}

void sub_1009641CC(void *a1, uint64_t a2, int a3)
{
  v42 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  v9 = static os_log_type_t.default.getter();
  v41 = sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v10 = swift_allocObject();
  v40 = xmmword_100EBDC20;
  *(v10 + 16) = xmmword_100EBDC20;
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  v15 = sub_10001CE24();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  Date.timeIntervalSince1970.getter();
  v17 = v16;
  v18 = v16;
  (*(v5 + 8))(v7, v4);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v17 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  *(v10 + 96) = &type metadata for Int;
  *(v10 + 104) = &protocol witness table for Int;
  *(v10 + 72) = v17;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v19, "BackgroundRefreshController: SCHEDULING TASK: %@ EARLIEST BEGIN DATE %{time_t}d", 79, 2, v10);

  v20 = objc_opt_self();
  v21 = [v20 sharedScheduler];
  v43 = 0;
  v22 = [v21 submitTaskRequest:a1 error:&v43];

  if (v22)
  {
    v23 = v43;
    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v24 = v43;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = static os_log_type_t.error.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v40;
    v28 = [a1 identifier];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v15;
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    v43 = v25;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v32 = String.init<A>(describing:)();
    *(v27 + 96) = &type metadata for String;
    *(v27 + 104) = v15;
    *(v27 + 72) = v32;
    *(v27 + 80) = v33;
    v34 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v34, "BackgroundRefreshController: SCHEDULING TASK: %@ ERROR %@", 57, 2, v27);

    if ((v42 & 1) == 0)
    {
      return;
    }
  }

  v35 = static os_log_type_t.default.getter();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBC6B0;
  *(v36 + 56) = &type metadata for String;
  *(v36 + 64) = v15;
  *(v36 + 32) = 0xD00000000000002FLL;
  *(v36 + 40) = 0x8000000100E5D320;
  v37 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v37, "BackgroundRefreshController: FORCING TASK: %@", 45, 2, v36);

  v38 = [v20 sharedScheduler];
  v39 = String._bridgeToObjectiveC()();
  [v38 _simulateLaunchForTaskWithIdentifier:v39];
}

double sub_1009646A0(char a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin();
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A68C8 != -1)
  {
    swift_once();
  }

  v17[1] = qword_1011AA080;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1 & 1;
  *(v13 + 32) = a3;
  aBlock[4] = sub_1009673FC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010D31B8;
  v14 = _Block_copy(aBlock);
  v15 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100967234(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100029908(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);

  return result;
}

void sub_1009649A0(void *a1, char a2)
{
  if (a2)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  [a1 setTaskCompletedWithSuccess:a2 & 1];
  v4 = static os_log_type_t.error.getter();
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC20;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10001CE24();
  *(v5 + 32) = 0xD00000000000002FLL;
  *(v5 + 40) = 0x8000000100E5D320;
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 64) = v6;
  *(v5 + 72) = v2;
  *(v5 + 80) = v3;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v7, "BackgroundRefreshController: COMPLETED REFRESH SUBTASKS: %@ SUCCESS: %@", 71, 2, v5);
}

void sub_100964AE4(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v58 = a2;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v60 = *(v5 - 8);
  __chkstk_darwin();
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v75 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v56 - v8;
  v10 = type metadata accessor for Date();
  v65 = *(v10 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v74 = &v56 - v12;
  __chkstk_darwin();
  v73 = &v56 - v13;
  __chkstk_darwin();
  v72 = &v56 - v14;
  __chkstk_darwin();
  v71 = &v56 - v15;
  __chkstk_darwin();
  v76 = &v56 - v16;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v86);

  v94[4] = v90;
  v94[5] = v91;
  v95 = v92;
  v96 = v93;
  v94[0] = v86;
  v94[1] = v87;
  v94[2] = v88;
  v94[3] = v89;
  sub_100014984(v94);
  v63 = v3;
  v64 = v2;
  v62 = v5;
  if (v95 == 2)
  {
    v82 = 1;
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  Date.init()();
  v78 = dispatch_group_create();
  v79 = swift_allocObject();
  *(v79 + 16) = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v77 = UnfairLock.init()();
  if (qword_1011A68D0 != -1)
  {
    swift_once();
  }

  v17 = off_1011AA088;
  v18 = *(off_1011AA088 + 2);
  if (v18)
  {
    v84 = objc_opt_self();
    v69 = (v65 + 48);
    v70 = (v65 + 56);
    v19 = v17 + 50;
    v80 = (v65 + 32);
    v81 = v9;
    v67 = (v65 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v68 = (v65 + 8);
    do
    {
      v83 = *(v19 - 18);
      v23 = *v19;
      if (v82 & 1 | ((*(v19 - 17) & 1) == 0))
      {
        v24 = *(v19 - 10);
        v25 = *(v19 - 1);
        v26 = [v84 standardUserDefaults];
        LOBYTE(v85) = v25;
        sub_1009667A0();
        sub_10000988C();
        NSUserDefaults.subscript.getter(&v86);

        if (*(&v87 + 1))
        {
          v27 = swift_dynamicCast();
          (*v70)(v9, v27 ^ 1u, 1, v10);
        }

        else
        {
          sub_1000095E8(&v86, &qword_1011ABB20, &unk_100EF1530);
          (*v70)(v9, 1, 1, v10);
        }

        v29 = v75;
        v30 = v69;
        sub_1009667F4(v9, v75);
        v31 = *v30;
        if ((*v30)(v29, 1, v10) == 1)
        {
          v32 = v73;
          Date.init()();
          if (v31(v29, 1, v10) != 1)
          {
            sub_1000095E8(v29, &qword_1011A9B20, &qword_100EF1560);
          }
        }

        else
        {
          v32 = v73;
          (*v80)(v73, v29, v10);
        }

        sub_1000095E8(v9, &qword_1011A9B20, &qword_100EF1560);
        v33 = v72;
        static Date.+ infix(_:_:)();
        v34 = *v68;
        (*v68)(v32, v10);
        v35 = v74;
        Date.init()();
        if (static Date.< infix(_:_:)())
        {
          v36 = v66;
          static Date.+ infix(_:_:)();
          v34(v35, v10);
          v34(v33, v10);
          v37 = *v80;
          (*v80)(v33, v36, v10);
        }

        else
        {
          v34(v35, v10);
          v37 = *v80;
        }

        v38 = v71;
        v37(v71, v33, v10);
        sub_100967234(&qword_1011AA0C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v39 = dispatch thunk of static Comparable.< infix(_:_:)();
        v34(v38, v10);
        v28 = (v24 > 0.0) & ~v39;
      }

      else
      {
        v28 = 0;
      }

      v40 = [v84 standardUserDefaults];
      LOBYTE(v85) = v23;
      v41 = sub_1009667A0();
      v42 = sub_10000988C();
      NSUserDefaults.subscript.getter(&v86);

      if (*(&v87 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v85)
        {
          v43 = [v84 standardUserDefaults];
          *(&v87 + 1) = &type metadata for Bool;
          LOBYTE(v86) = 0;
          LOBYTE(v85) = v23;
          NSUserDefaults.subscript.setter(&v86, &v85, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v41, v42);

LABEL_32:
          v44 = v78;
          dispatch_group_enter(v78);
          if (v83)
          {
            v20 = swift_allocObject();
            v21 = v79;
            v20[2] = v77;
            v20[3] = v21;
            v20[4] = v44;

            v22 = v44;
            sub_100965B54(sub_100967300, v20);
          }

          else
          {
            v45 = swift_allocObject();
            v46 = v79;
            v45[2] = v77;
            v45[3] = v46;
            v45[4] = v44;

            v47 = v44;
            sub_1009657EC(sub_10096752C, v45);
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_1000095E8(&v86, &qword_1011ABB20, &unk_100EF1530);
      }

      if (v28)
      {
        goto LABEL_32;
      }

LABEL_12:
      v19 += 24;
      --v18;
      v9 = v81;
    }

    while (v18);
  }

  if (qword_1011A68C8 != -1)
  {
    swift_once();
  }

  v84 = qword_1011AA080;
  v48 = swift_allocObject();
  v49 = v79;
  v48[2] = v77;
  v48[3] = v49;
  v50 = v58;
  v48[4] = v57;
  v48[5] = v50;
  *&v88 = sub_100967284;
  *(&v88 + 1) = v48;
  *&v86 = _NSConcreteStackBlock;
  *(&v86 + 1) = 1107296256;
  *&v87 = sub_10002BC98;
  *(&v87 + 1) = &unk_1010D30A0;
  v51 = _Block_copy(&v86);

  v52 = v59;
  static DispatchQoS.unspecified.getter();
  v85 = _swiftEmptyArrayStorage;
  sub_100967234(&qword_1011AD950, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&unk_1011AB610, &qword_100EF1E40);
  sub_100029908(&qword_1011AD960, &unk_1011AB610, &qword_100EF1E40);
  v53 = v61;
  v54 = v64;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = v78;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v51);

  (*(v63 + 8))(v53, v54);
  (*(v60 + 8))(v52, v62);
  (*(v65 + 8))(v76, v10);
}

void sub_10096577C(_BYTE *a1, char a2)
{
  swift_beginAccess();
  v4 = *a1 & a2;
  swift_beginAccess();
  *a1 = v4 & 1;
}

void sub_1009657EC(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A68D8 != -1)
  {
    swift_once();
  }

  v7 = word_1011AA090;
  v8 = HIBYTE(word_1011AA090);
  v9 = qword_1011AA098;
  v10 = word_1011AA0A0;
  v11 = HIBYTE(word_1011AA0A0);
  HIDWORD(v26) = byte_1011AA0A2;
  Date.init()();
  v12 = [objc_opt_self() standardUserDefaults];
  v30 = v3;
  v13 = sub_10001C8B8(aBlock);
  (*(v4 + 16))(v13, v6, v3);
  v33 = v11;
  v14 = sub_1009667A0();
  v15 = sub_10000988C();
  NSUserDefaults.subscript.setter(aBlock, &v33, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v14, v15);

  (*(v4 + 8))(v6, v3);
  v16 = static os_log_type_t.default.getter();
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v17 = swift_allocObject();
  v18 = v17;
  *(v17 + 16) = xmmword_100EBC6B0;
  v19 = "updateSubscribedPlaylists";
  if (v7)
  {
    v20 = 0xD000000000000018;
  }

  else
  {
    v20 = 0xD000000000000019;
  }

  if (!v7)
  {
    v19 = "allowsPumpkinContent";
  }

  v21 = v19 | 0x8000000000000000;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10001CE24();
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v22 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v22, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v18);

  v23 = *(v27 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = v7;
  *(v24 + 17) = v8;
  *(v24 + 24) = v9;
  *(v24 + 32) = v10;
  *(v24 + 33) = v11;
  *(v24 + 34) = BYTE4(v26);
  *(v24 + 40) = v28;
  *(v24 + 48) = a2;
  v31 = sub_10096730C;
  v32 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D5D0C;
  v30 = &unk_1010D3140;
  v25 = _Block_copy(aBlock);

  [v23 updatePinnedSubscribedPlaylistsWithCompletion:v25];
  _Block_release(v25);
}

void sub_100965B54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A68E0 != -1)
  {
    swift_once();
  }

  v9 = word_1011AA0A8;
  v10 = qword_1011AA0B0;
  v28 = byte_1011AA0B8;
  v29 = HIBYTE(word_1011AA0A8);
  v11 = byte_1011AA0B9;
  v12 = byte_1011AA0BA;
  Date.init()();
  v13 = [objc_opt_self() standardUserDefaults];
  v32[3] = v5;
  v14 = sub_10001C8B8(v32);
  (*(v6 + 16))(v14, v8, v5);
  v31 = v11;
  v15 = sub_1009667A0();
  v16 = sub_10000988C();
  NSUserDefaults.subscript.setter(v32, &v31, &type metadata for BackgroundTaskConfiguration.UserDefaultsKey, v15, v16);

  (*(v6 + 8))(v8, v5);
  v17 = static os_log_type_t.default.getter();
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v18 = swift_allocObject();
  v19 = v18;
  *(v18 + 16) = xmmword_100EBC6B0;
  v20 = "updateSubscribedPlaylists";
  if (v9)
  {
    v21 = 0xD000000000000018;
  }

  else
  {
    v21 = 0xD000000000000019;
  }

  if (!v9)
  {
    v20 = "allowsPumpkinContent";
  }

  v22 = v20 | 0x8000000000000000;
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10001CE24();
  *(v19 + 32) = v21;
  *(v19 + 40) = v22;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v23 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v23, "BackgroundRefreshController: EXECUTING SUBTASK: %@", 50, 2, v19);

  if (qword_1011A68C8 != -1)
  {
    swift_once();
  }

  v24 = qword_1011AA080;
  v25 = swift_allocObject();
  *(v25 + 16) = v9;
  v26 = v28;
  *(v25 + 17) = v29;
  *(v25 + 24) = v10;
  *(v25 + 32) = v26;
  *(v25 + 33) = v11;
  *(v25 + 34) = v12;
  *(v25 + 40) = v30;
  *(v25 + 48) = a2;

  _s9MusicCore22BackgroundFetchManagerC14updateURLCache5queue20onDidReceiveResponse10completionySo012OS_dispatch_H0C_ySo13ICURLResponseCSg_s5Error_pSgtcSgySaysAM_pGctF_0(v24, sub_100967324, v3, sub_10096732C, v25);
}

uint64_t sub_100965EB8(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v7 = 0xD000000000000018;
  if (a1)
  {
    swift_errorRetain();
    v8 = static os_log_type_t.error.getter();
    sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
    v9 = swift_allocObject();
    v10 = v9;
    *(v9 + 16) = xmmword_100EBDC20;
    v11 = "updateSubscribedPlaylists";
    if ((a2 & 1) == 0)
    {
      v7 = 0xD000000000000019;
      v11 = "allowsPumpkinContent";
    }

    v12 = v11 | 0x8000000000000000;
    *(v9 + 56) = &type metadata for String;
    v13 = sub_10001CE24();
    v10[8] = v13;
    v10[4] = v7;
    v10[5] = v12;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v14 = String.init<A>(describing:)();
    v10[12] = &type metadata for String;
    v10[13] = v13;
    v10[9] = v14;
    v10[10] = v15;
    sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v16, "BackgroundRefreshController: COMPLETED SUBTASK: %@ ERROR %@", 59, 2, v10);
  }

  else
  {
    v17 = static os_log_type_t.error.getter();
    sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
    v18 = swift_allocObject();
    v19 = v18;
    *(v18 + 16) = xmmword_100EBC6B0;
    v20 = "updateSubscribedPlaylists";
    v21 = (a2 & 1) == 0;
    if (a2)
    {
      v22 = 0xD000000000000018;
    }

    else
    {
      v22 = 0xD000000000000019;
    }

    if (v21)
    {
      v20 = "allowsPumpkinContent";
    }

    v23 = v20 | 0x8000000000000000;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10001CE24();
    *(v19 + 32) = v22;
    *(v19 + 40) = v23;
    sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v24, "BackgroundRefreshController: COMPLETED SUBTASK: %@ SUCCESS", 58, 2, v19);
  }

  return a4(a1 == 0);
}

double sub_100966118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  if (v6)
  {

    v6(a1);
  }

  return result;
}

uint64_t sub_100966188(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(BOOL))
{
  v6 = static os_log_type_t.default.getter();
  sub_10010FC20(&qword_1011A98A0, &qword_100EF0D80);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = xmmword_100EBC6B0;
  v9 = "updateSubscribedPlaylists";
  if (a2)
  {
    v10 = 0xD000000000000018;
  }

  else
  {
    v10 = 0xD000000000000019;
  }

  if ((a2 & 1) == 0)
  {
    v9 = "allowsPumpkinContent";
  }

  v11 = v9 | 0x8000000000000000;
  *(v7 + 56) = &type metadata for String;
  v12 = sub_10001CE24();
  v8[8] = v12;
  v8[4] = v10;
  v8[5] = v11;
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  v13 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v13, "BackgroundRefreshController: COMPLETED SUBTASK: %@", 50, 2, v8);

  v23 = *(a1 + 16);
  if (v23)
  {
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    do
    {
      v14 += 8;
      swift_errorRetain();
      v16 = static os_log_type_t.error.getter();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100EBDC20;
      *(v17 + 56) = &type metadata for String;
      *(v17 + 64) = v12;
      *(v17 + 32) = v10;
      *(v17 + 40) = v11;
      swift_errorRetain();
      sub_10010FC20(&qword_1011AB640, L"D\v\a");
      v18 = String.init<A>(describing:)();
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v12;
      *(v17 + 72) = v18;
      *(v17 + 80) = v19;
      v20 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v20, "BackgroundRefreshController: ERROR EXECUTING SUBTASK: %@ ERROR %@", 65, 2, v17);

      --v15;
    }

    while (v15);
  }

  return a4(v23 == 0);
}

uint64_t sub_1009663B0()
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v5 - 8);
  __chkstk_darwin();
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v4[1] = sub_100009F78(0, &qword_1011A9F80, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v6 = _swiftEmptyArrayStorage;
  sub_100967234(&qword_1011AA180, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10010FC20(&qword_1011AA188, &qword_100EF1FD8);
  sub_100029908(&qword_1011AA190, &qword_1011AA188, &qword_100EF1FD8);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v5);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1011AA080 = result;
  return result;
}

uint64_t BackgroundRefreshController.deinit()
{
  sub_100020438(*(v0 + 16), *(v0 + 24));

  return v0;
}

uint64_t BackgroundRefreshController.__deallocating_deinit()
{
  sub_100020438(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

double sub_100966678()
{
  sub_10010FC20(&qword_1011AA198, &qword_100EF1FE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBDC20;
  if (qword_1011A68D8 != -1)
  {
    v9 = v0;
    swift_once();
    v0 = v9;
  }

  v1 = HIBYTE(word_1011AA090);
  v2 = qword_1011AA098;
  v3 = word_1011AA0A0;
  v4 = *(&word_1011AA0A0 + 1);
  *(v0 + 32) = word_1011AA090;
  *(v0 + 33) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 49) = v4;
  if (qword_1011A68E0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  v5 = HIBYTE(word_1011AA0A8);
  result = *&qword_1011AA0B0;
  v7 = byte_1011AA0B8;
  v8 = *&byte_1011AA0B9;
  *(v0 + 56) = word_1011AA0A8;
  *(v0 + 57) = v5;
  *(v0 + 64) = result;
  *(v0 + 72) = v7;
  *(v0 + 73) = v8;
  off_1011AA088 = v0;
  return result;
}

unint64_t sub_1009667A0()
{
  result = qword_1011AA0C0;
  if (!qword_1011AA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA0C0);
  }

  return result;
}

uint64_t sub_1009667F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100966898()
{
  result = qword_1011AA178;
  if (!qword_1011AA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA178);
  }

  return result;
}

void sub_1009668EC()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_100011404);

  word_1011AA090 = 256;
  qword_1011AA098 = 0x40E5180000000000;
  word_1011AA0A0 = 257;
  byte_1011AA0A2 = 0;
}

void sub_1009669CC()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v0 = v3;
  if (v3 && (sub_100966AD8(v3, &v3), v0, (v4 & 1) == 0))
  {
    v1 = 0;
    v2 = v3;
  }

  else
  {
    v1 = 1;
    v2 = 0x40D5180000000000;
  }

  word_1011AA0A8 = 257;
  qword_1011AA0B0 = v2;
  byte_1011AA0B8 = v1;
  *&byte_1011AA0B9 = 515;
}

void sub_100966AD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dictionaryForBagKey:v4];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_100054A48(v6);

  if (!v7)
  {
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_11;
  }

  v8 = sub_100019C28(0xD00000000000001ELL, 0x8000000100E5D2A0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_10000DD18(*(v7 + 56) + 32 * v8, v15);

  sub_10010FC20(&unk_1011ACC30, &unk_100EF1E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    *a2 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (!*(v14 + 16) || (v10 = sub_100019C28(0xD00000000000001DLL, 0x8000000100E5D560), (v11 & 1) == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_10000DD18(*(v14 + 56) + 32 * v10, v15);

  v12 = swift_dynamicCast();
  if ((v12 & 1) == 0)
  {
    *a2 = 0;
  }

  v13 = v12 ^ 1;
LABEL_13:
  *(a2 + 8) = v13;
}

uint64_t sub_100966C94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "allowsPumpkinContent";
  }

  else
  {
    v4 = "updateSubscribedPlaylists";
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000019;
  }

  if (*a2)
  {
    v6 = "updateSubscribedPlaylists";
  }

  else
  {
    v6 = "allowsPumpkinContent";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100966D3C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100966DB8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100966E20(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100966E98(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C74F8, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100966EF8(unint64_t *a1@<X8>)
{
  v2 = "updateSubscribedPlaylists";
  v3 = 0xD000000000000018;
  if (!*v1)
  {
    v3 = 0xD000000000000019;
    v2 = "allowsPumpkinContent";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

Swift::Int sub_100966F40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100966FF4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100967094(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100967144@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1009671E8(*a1);
  *a2 = result;
  return result;
}

void sub_100967174(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "ribedPlaylistsDate";
  if (v2 == 2)
  {
    v4 = 0xD000000000000028;
  }

  else
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 2)
  {
    v3 = "efreshServerLandingPages";
  }

  v5 = 0xD000000000000032;
  if (*v1)
  {
    v6 = "efreshPinnedSubscribedPlaylists";
  }

  else
  {
    v5 = 0xD00000000000002FLL;
    v6 = "updateServerLandingPages";
  }

  if (*v1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v4;
    v7 = v3;
  }

  *a1 = v5;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t sub_1009671E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7548, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100967234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100967284()
{
  v1 = *(v0 + 32);
  UnfairLock.locked<A>(_:)(sub_1009673A4);
  return v1(v3);
}

uint64_t sub_100967344(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, __n128), __n128 a3)
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  a3.n128_u64[0] = *(v3 + 24);
  return a2(a1, v4 | *(v3 + 16), *(v3 + 32) | (*(v3 + 33) << 8) | (*(v3 + 34) << 16), *(v3 + 40), *(v3 + 48), a3);
}

void sub_1009673A4(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  *a1 = *v3;
}

__n128 initializeBufferWithCopyOfBuffer for BackgroundTaskConfiguration(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundTaskConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[19])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundTaskConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1009674D0()
{
  result = qword_1011AA1A0[0];
  if (!qword_1011AA1A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011AA1A0);
  }

  return result;
}

uint64_t BagControlledValue.init(fallback:reader:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a1;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_10000E338);
  v15 = v22;
  if (!v22)
  {
    goto LABEL_6;
  }

  v20(v22);

  if ((*(v10 + 48))(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v13, v14) + 28)) = 1;
    return (*(v10 + 32))(a4, v21, a3);
  }

  (*(v10 + 8))(v21, a3);
  v17 = *(v10 + 32);
  v17(v12, v9, a3);
  *(a4 + *(type metadata accessor for BagControlledValue(0, a3, v18, v19) + 28)) = 0;
  return (v17)(a4, v12, a3);
}

uint64_t sub_100967834(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BagControlledValue.Source(319, result, v2, v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1009678C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFE)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_100967A28(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t BagProvider.createObserver(handler:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BagProvider.Observer();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  swift_weakAssign();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;

  sub_100020438(v5, v6);
  UnfairLock.locked<A>(_:)(sub_10001A4A4);
  sub_10000679C(0);
  return v4;
}

double BagProvider.getBag(completion:)(void (*a1)(), uint64_t a2)
{
  sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
  UnfairLock.locked<A>(_:)(sub_100968D14);
  if (v10)
  {
    a1();
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v5 = swift_allocObject();
    swift_weakInit();
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    swift_weakAssign();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = a1;
    v7[3] = a2;
    v7[4] = v6;
    v7[5] = v5;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);
    *(v5 + 24) = sub_1009613A8;
    *(v5 + 32) = v7;

    sub_100020438(v8, v9);

    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1009613B4);
    sub_10000679C(0);
  }

  return result;
}

double static BagProvider.shared.getter()
{
  if (qword_1011A68E8 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_100967F98(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    __chkstk_darwin();
    sub_10010FC20(&unk_1011AA5A0, &qword_100EF28D0);
    UnfairLock.locked<A>(_:)(sub_10096891C);
  }

  return result;
}

void sub_100968090(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v7 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  v8 = sub_100968A3C((Strong + v7), a2);
  if (!v3)
  {
    v9 = v8;

    v10 = *(Strong + v7);
    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11 >= v9)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11 >= v9)
      {
LABEL_5:
        sub_1008BDEB4(v9, v11);
        swift_endAccess();

LABEL_6:
        *a3 = Strong == 0;
        return;
      }
    }

    __break(1u);
  }

  swift_endAccess();
  __break(1u);
}

uint64_t sub_1009681B4(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC9MusicCore11BagProvider_singleFireObservers;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

double sub_10096827C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1009682D4();
  }

  return result;
}

void sub_1009682D4()
{
  UnfairLock.locked<A>(_:)(sub_100968C6C);

  if (v4 == 1)
  {
    UnfairLock.locked<A>(_:)(sub_100968CB0);
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_100968CFC);

    v0 = Logger.logObject.getter();
    v1 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v0, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, v1, "Notification triggered to update bag: storefrontChanged", v2, 2u);
    }

    sub_10000679C(1);
  }
}

uint64_t sub_100968470(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = sub_10010FC20(&qword_1011AA598, &unk_100EF2290);
  WeakArray.remove(_:)(a2, v3);
  return swift_endAccess();
}

uint64_t BagProvider.Observer.deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_1009685B8);
  }

  swift_weakDestroy();
  sub_100020438(*(v0 + 24), *(v0 + 32));
  return v0;
}

uint64_t BagProvider.Observer.__deallocating_deinit()
{
  if (swift_weakLoadStrong())
  {
    __chkstk_darwin();
    UnfairLock.locked<A>(_:)(sub_100968CCC);
  }

  swift_weakDestroy();
  sub_100020438(*(v0 + 24), *(v0 + 32));
  return swift_deallocClassInstance();
}

id sub_100968720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BagProvider.Retry();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BagProvider.deinit()
{
  sub_10000746C(v0 + OBJC_IVAR____TtC9MusicCore11BagProvider____lazy_storage___signpost);

  v1 = OBJC_IVAR____TtC9MusicCore11BagProvider_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BagProvider.__deallocating_deinit()
{
  BagProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1009688DC(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for MusicTabsDictionaryProvider.Configuration.AMSBagConfiguration.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_100968938(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_100968A3C(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_100968938(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_100501584(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_100501584(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100968C6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result);
  v3 = *(v1 + OBJC_IVAR____TtC9MusicCore11BagProvider_result + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TabIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7972617262696CLL;
  v2 = 0x736F65646976;
  if (a1 != 5)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0x6F69646172;
  if (a1 != 3)
  {
    v3 = 0x686372616573;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x6F4E6E657473696CLL;
  if (a1 != 1)
  {
    v4 = 0x6573776F7262;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_100968E18(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100968F24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore13TabIdentifierO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100968F54@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972617262696CLL;
  v5 = 0xE600000000000000;
  v6 = 0x736F65646976;
  if (v2 != 5)
  {
    v6 = 0x7473696C79616C70;
    v5 = 0xE900000000000073;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F69646172;
  result = 0x686372616573;
  if (v2 != 3)
  {
    v8 = 0x686372616573;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xE900000000000077;
  v11 = 0x6F4E6E657473696CLL;
  if (v2 != 1)
  {
    v11 = 0x6573776F7262;
    v10 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

double sub_10096905C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100969168@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10096926C(*a1);
  *a2 = result;
  return result;
}

void sub_100969198(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x636973756D5F796DLL;
  v5 = 0xE600000000000000;
  v6 = 0x686372616573;
  if (v2 != 5)
  {
    v6 = 0x6F65646976;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6573776F7262;
  if (v2 != 3)
  {
    v8 = 0x6F69646172;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x756F795F726F66;
  if (v2 != 1)
  {
    v10 = 0x6E5F6E657473696CLL;
    v9 = 0xEA0000000000776FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_10096926C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6210, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1009692BC()
{
  result = qword_1011AA5B0;
  if (!qword_1011AA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA5B0);
  }

  return result;
}

unint64_t sub_100969314()
{
  result = qword_1011AA5B8;
  if (!qword_1011AA5B8)
  {
    sub_1001109D0(&qword_1011AA5C0, &qword_100EF2318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA5B8);
  }

  return result;
}

unint64_t sub_10096937C()
{
  result = qword_1011AA5C8;
  if (!qword_1011AA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA5C8);
  }

  return result;
}

unint64_t sub_1009693E4()
{
  result = qword_1011AA5D0;
  if (!qword_1011AA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA5D0);
  }

  return result;
}

uint64_t sub_100969440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011A7F00, &qword_100EEDE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00, &qword_100EEDE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100969740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011A7F00, &qword_100EEDE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00, &qword_100EEDE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}