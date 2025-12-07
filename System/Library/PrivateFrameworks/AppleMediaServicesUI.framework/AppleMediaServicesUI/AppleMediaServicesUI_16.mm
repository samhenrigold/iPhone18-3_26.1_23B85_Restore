uint64_t sub_10017CFB0()
{

  NWPathMonitor.cancel()();

  return v0;
}

uint64_t sub_10017CFF4()
{
  sub_10017CFB0();
  sub_100005254();

  return swift_deallocClassInstance();
}

void sub_10017D04C(void *a1, char a2)
{
  if (a2)
  {

    Promise.reject(_:)();
  }

  else
  {
    v3 = a1;
    Promise.resolve(_:)();
    sub_10017DA7C(a1, 0);
  }
}

uint64_t sub_10017D0B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return Promise.reject(_:)();
  }

  else
  {
    return Promise.resolve(_:)();
  }
}

uint64_t sub_10017D0C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100245148, v2);

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

uint64_t sub_10017D118(char a1)
{
  if (a1)
  {
    return 0x656C646E61686E75;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_10017D178@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10017D0C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10017D1A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10017D118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10017D1D4(uint64_t a1, uint64_t a2)
{
  sub_100002BC0(0, &qword_10026FC60, AMSEngagementEnqueueRequest_ptr);
  sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E8AB0;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  v5 = sub_100092378();
  [v5 setAllowsResponse:1];
  *(v4 + 32) = v5;
  v6 = sub_10017D344(a1, v4);

  sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
  v7 = Promise.__allocating_init()();
  swift_getObjectType();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = v7;
  swift_unknownObjectRetain();

  sub_100099764(v6, sub_10017D7AC, v8);

  return v7;
}

id sub_10017D344(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
  sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E61B0;
  sub_10007B9A4(&unk_10026CFD0, &unk_1001E8600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F60;
  v6 = sub_100006F40(inited);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0x6E61635343464ELL;
  *(inited + 80) = 0xE700000000000000;
  v7 = sub_100006F40(v6);
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 144), "amsengagementd");
  *(inited + 159) = -18;
  sub_100006F40(v7);
  v8 = URL.absoluteString.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v8;
  *(inited + 224) = v9;
  *(v4 + 32) = Dictionary.init(dictionaryLiteral:)();
  sub_1000F4334(v4, v3);
  v10 = [objc_opt_self() currentProcess];
  [v3 setClientInfo:v10];

  sub_10017DB30(a2, v3);
  return v3;
}

uint64_t sub_10017D538(void *a1, char a2, void *a3)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  v16 = &type metadata for NFCEngagementEventHandler;
  v14 = a3;
  swift_unknownObjectRetain();
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v14);
  LogInterpolation.init(stringLiteral:)();
  v16 = sub_10007B9A4(&qword_10026FC68, &unk_1001EEFD8);
  v14 = a1;
  v15 = a2 & 1;
  sub_10017D7B8(a1, a2 & 1);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(&v14);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v6);

  if (a2)
  {
    swift_errorRetain();
    v10 = 1;
  }

  else
  {
    swift_unknownObjectRetain();
    sub_10017D7B8(a1, 0);
    v11 = sub_10017D7D0(a1, a3);
    v10 = v12;
    sub_10017DA7C(a1, 0);
    swift_unknownObjectRelease();
    a1 = v11;
  }

  sub_10017D0B8(a1, v10 & 1);
  return sub_10017D7C4(a1, v10 & 1);
}

id sub_10017D7B8(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_10017D7C4(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_10017D7D0(void *a1, uint64_t a2)
{
  result = sub_10006184C(a1);
  if (!result)
  {
    return result;
  }

  v4 = result;
  sub_10017DA88();
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v11, v4, &v12);

  sub_10000E1E8(v11);
  if (!v13)
  {
    sub_100002C5C(&v12);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v11[3] = &type metadata for NFCEngagementEventHandler;
  v11[0] = a2;
  swift_unknownObjectRetain();
  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v11);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v9 = static os_log_type_t.error.getter();
  sub_1000036B0(v9, v6);

  sub_10017DADC();
  result = swift_allocError();
  *v10 = 1;
  return result;
}

void sub_10017DA7C(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10017DA88()
{
  result = qword_10026FC70;
  if (!qword_10026FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC70);
  }

  return result;
}

unint64_t sub_10017DADC()
{
  result = qword_10026FC78;
  if (!qword_10026FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC78);
  }

  return result;
}

void sub_10017DB30(uint64_t a1, void *a2)
{
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setDestinations:isa];
}

_BYTE *storeEnumTagSinglePayload for NFCEngagementEventHandler.ErrorCase(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10017DC9C()
{
  result = qword_10026FC80;
  if (!qword_10026FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC80);
  }

  return result;
}

uint64_t sub_10017DCF0(void *a1)
{
  v3 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for URL();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v29 + 1) = &type metadata for AMSFlags;
  v30 = sub_10000D884();
  LOBYTE(v28) = 1;
  v12 = isFeatureEnabled(_:)();
  sub_100002C00(&v28);
  if ((v12 & 1) == 0)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F60;
    *(&v29 + 1) = &type metadata for NFCEventHandler;
    *&v28 = swift_allocObject();
    sub_10017E2AC(v1, v28 + 16);
    v14 = AMSLogKey();
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v28);
    LogInterpolation.init(stringLiteral:)();
    *(&v29 + 1) = &type metadata for NFCEventHandlingError;
    LOBYTE(v28) = 0;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v28, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v19 = static os_log_type_t.error.getter();
    sub_1000036B0(v19, v13);
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {
    v16 = &qword_10026D350;
    v17 = &qword_1001E6050;
    v18 = &v28;
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1001E5F60;
    *(&v29 + 1) = &type metadata for NFCEventHandler;
    *&v28 = swift_allocObject();
    sub_10017E2AC(v1, v28 + 16);
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v28);
    LogInterpolation.init(stringLiteral:)();
    if ([a1 object])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    static LogInterpolation.safe(_:)();
    sub_10000A064(&v28, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v20);
  }

  URL.init(string:)();

  if (sub_100009F34(v5, 1, v6) == 1)
  {
    v16 = &unk_10026FEE0;
    v17 = &unk_1001E67C0;
    v18 = v5;
LABEL_15:
    sub_10000A064(v18, v16, v17);
    goto LABEL_16;
  }

  (*(v8 + 32))(v11, v5, v6);
  sub_10017E2E4(v11);
  return (*(v8 + 8))(v11, v6);
}

uint64_t sub_10017E2E4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_100003CA8((v1 + 40), *(v1 + 64));
  sub_10017D1D4(a1, *v6);
  sub_10017E2AC(v1, __src);
  (*(v4 + 16))(&__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v3);
  v7 = (*(v4 + 80) + 176) & ~*(v4 + 80);
  v8 = swift_allocObject();
  memcpy((v8 + 16), __src, 0xA0uLL);
  (*(v4 + 32))(v8 + v7, &__src[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v3);
  sub_1000ED260(sub_10017E4BC, v8);

  sub_10017E2AC(v1, __src);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0xA0uLL);
  sub_1000ED428(sub_10017EA44, v9);
}

uint64_t sub_10017E524(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v18 = &type metadata for NFCEventHandler;
  v17[0] = swift_allocObject();
  sub_10017E2AC(v2, v17[0] + 16);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v18 = v16;
  v6 = sub_100017E64(v17);
  (*(v16[-1].Description + 2))(v6);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v17, &qword_10026D350, &qword_1001E6050);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7, v3);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001E5F70;
  v18 = &type metadata for NFCEventHandler;
  v17[0] = swift_allocObject();
  sub_10017E2AC(v2, v17[0] + 16);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.init(stringLiteral:)();
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v8);

  v12 = v2[18];
  v13 = v2[19];
  sub_100003CA8(v2 + 15, v12);
  return (*(v13 + 8))(a2, v12, v13);
}

uint64_t sub_10017E88C(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v8[3] = &type metadata for NFCEventHandler;
  v8[0] = swift_allocObject();
  sub_10017E2AC(a2, v8[0] + 16);
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v8);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v3);
}

uint64_t sub_10017EA54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10017EA94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NFCEventHandlingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10017EBEC()
{
  result = qword_10026FC88;
  if (!qword_10026FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026FC88);
  }

  return result;
}

uint64_t sub_10017EC40()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001E5F70;
  type metadata accessor for NotificationObserver();
  v1 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v2 = static os_log_type_t.default.getter();
  sub_1000036B0(v2, v0);

  return sub_10017EDC0();
}

uint64_t sub_10017EDC0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002687D8 != -1)
  {
    swift_once();
  }

  v7 = *(qword_10026FC90 + OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100180540;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_100250CA8;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10001407C(&qword_10026CD50, &unk_100270490, &unk_1001E74F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v4 + 8))(v6, v13);
}

void sub_10017F0BC(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  v9 = a5;
  sub_10017EC40();
}

uint64_t sub_10017F158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10017F1B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10017F214(a1);
  }
}

void sub_10017F214(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  sub_100002DEC();
  if (!xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    return;
  }

  v3 = String.init(cString:)();
  v5 = v4;
  v6 = v3 == 0xD000000000000021 && 0x8000000100200670 == v4;
  if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v8 = sub_100008580();
    sub_100002CFC(v8);
    sub_100002D7C();
    v9 = sub_100003F28();
    *(v9 + 16) = xmmword_1001E5F70;
    v10 = type metadata accessor for NotificationObserver();
    sub_1000076F8(v10);
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v13 = static os_log_type_t.default.getter();
    sub_1000036B0(v13, v9);

    sub_10017EDC0();
    return;
  }

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v14)
  {

LABEL_20:

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v17 = sub_100008580();
    sub_100002CFC(v17);
    sub_100002D7C();
    v18 = sub_100003F28();
    v19 = sub_100005A44(v18, xmmword_1001E5F70);
    sub_1000076F8(v19);
    v20 = AMSLogKey();
    if (v20)
    {
      v21 = v20;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184(v38);

    sub_100002C00(v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v22 = static os_log_type_t.default.getter();
    sub_1000036B0(v22, v18);

    if (qword_100268678 != -1)
    {
      swift_once();
    }

    sub_1000F9B28();
    return;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_20;
  }

  v23 = v7 == 0xD00000000000004FLL && 0x80000001002006A0 == v5;
  if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v24 = sub_100008580();
    sub_100002CFC(v24);
    sub_100002D7C();
    v25 = sub_100003F28();
    v26 = sub_100005A44(v25, xmmword_1001E5F70);
    sub_1000076F8(v26);
    v27 = AMSLogKey();
    if (v27)
    {
      v28 = v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184(v38);

    sub_100002C00(v38);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v29 = static os_log_type_t.default.getter();
    sub_1000036B0(v29, v25);

    if (qword_100268828 != -1)
    {
      swift_once();
    }

    sub_1001A7AB4();
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v30 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v30);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1001E5F70;
    v32 = type metadata accessor for NotificationObserver();
    sub_1000076F8(v32);
    v33 = AMSLogKey();
    if (v33)
    {
      v34 = v33;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v38);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0xD00000000000001ELL;
    v35._object = 0x80000001002006F0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
    v38[3] = &type metadata for String;
    v38[0] = v7;
    v38[1] = v5;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v38);
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v37 = static os_log_type_t.default.getter();
    sub_1000036B0(v37, v31);
  }
}

uint64_t sub_10017F8F4()
{
  swift_getObjectType();
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v1 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v1);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v8[3] = type metadata accessor for NotificationObserver();
  v8[0] = v0;
  v3 = v0;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v8);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v2);

  return sub_10017EDC0();
}

uint64_t sub_10017FAD8(uint64_t a1)
{
  v22 = a1;
  v21 = type metadata accessor for Date();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TimeZone();
  v4 = *(v20 - 8);
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppDatabase();
  v7 = sub_10001D804(1, 0);
  if (!v7)
  {
    v23 = 0;
    v25 = 0u;
    v26 = 0u;
    v8 = 1;
LABEL_3:
    sub_100002C5C(&v25);
    goto LABEL_4;
  }

  v23 = v7;
  sub_100051540();
  sub_1000A6F08(2u, &v25);

  if (!*(&v26 + 1))
  {
    v8 = 0;
    goto LABEL_3;
  }

  v8 = 0;
  if (swift_dynamicCast())
  {
    v9 = v24;
    v10 = 1;
    goto LABEL_5;
  }

LABEL_4:
  v9 = 0;
  v10 = 0;
LABEL_5:
  static TimeZone.current.getter();
  Date.init()();
  v11 = TimeZone.secondsFromGMT(for:)();
  (*(v1 + 8))(v3, v21);
  (*(v4 + 8))(v6, v20);
  if (v10 && v9 == v11)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v13 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for NotificationObserver();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14, v12);
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      sub_100051540();
      *(&v26 + 1) = &type metadata for Int;
      *&v25 = v11;
      sub_1000A6E98(&v25, 2);

      sub_100002C5C(&v25);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v17 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for NotificationObserver();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v18 = static os_log_type_t.default.getter();
    sub_1000036B0(v18, v16);

    sub_1000635B0(1);
  }
}

uint64_t sub_100180034(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v3 = sub_100008580();
  sub_100002CFC(v3);
  sub_100002D7C();
  v4 = sub_100003F28();
  v18 = sub_100005A44(v4, xmmword_1001E5F60);
  v17[0] = v1;
  v5 = v1;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v17);
  LogInterpolation.init(stringLiteral:)();
  v18 = sub_100002BC0(0, &qword_10026FCC8, NSNotification_ptr);
  v17[0] = a1;
  v8 = a1;
  static LogInterpolation.sensitive(_:)();
  sub_100002C5C(v17);
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v9 = static os_log_type_t.default.getter();
  sub_1000036B0(v9, v4);

  v23 = &type metadata for FeatureFlagProvider;
  v24 = &off_10024B860;
  v10 = type metadata accessor for BagProvider();
  v11 = swift_allocObject();
  v18 = v10;
  v19 = &off_100247E30;
  v17[0] = v11;
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v12 = qword_1002877D0;
  v21 = &type metadata for NFCEngagementEventHandler;
  v22 = &off_100250AD0;
  v20 = qword_1002877D0;
  v13 = objc_allocWithZone(AMSDNFCAccessory);
  v14 = v12;
  v15 = [v13 init];
  v26 = sub_100002BC0(0, &unk_10026FCD0, &off_100241F40);
  v27 = &off_100246E00;
  v25 = v15;
  sub_10017DCF0(v8);
  return sub_1001804EC(v17);
}

uint64_t sub_100180338(void *a1)
{
  v13 = &type metadata for FeatureFlagProvider;
  v14 = &off_10024B860;
  v8 = type metadata accessor for BagProvider();
  v9 = &off_100247E30;
  v7[0] = swift_allocObject();
  if (qword_100268670 != -1)
  {
    swift_once();
  }

  v2 = qword_1002877D0;
  v11 = &type metadata for NFCEngagementEventHandler;
  v12 = &off_100250AD0;
  v10 = qword_1002877D0;
  v3 = objc_allocWithZone(AMSDNFCAccessory);
  v4 = v2;
  v5 = [v3 init];
  v16 = sub_100002BC0(0, &unk_10026FCD0, &off_100241F40);
  v17 = &off_100246E00;
  v15 = v5;
  sub_10017DCF0(a1);
  return sub_1001804EC(v7);
}

id sub_1001804A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100180570(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10018062C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = sub_100003D10(v8);
  __chkstk_darwin(v9);
  sub_100002DEC();
  v10 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v11 = sub_100003D10(v10);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for URL();
  sub_100002CC4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100002DEC();
  v20 = v19 - v18;
  sub_1001810FC(a2, a3, v13);
  if (sub_100009F34(v13, 1, v14) == 1)
  {
    return sub_100009FB0(v13, &unk_10026FEE0, &unk_1001E67C0);
  }

  (*(v16 + 32))(v20, v13, v14);
  v22 = objc_opt_self();
  v48[0] = 0;
  v23 = [v22 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v48];
  v24 = v48[0];
  if (v23)
  {
    v46 = v16;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = v4[17];
    v29 = v4[18];
    sub_100003CA8(v4 + 14, v28);
    (*(v29 + 32))(v25, v27, v20, v28, v29);
    v43 = sub_10000A298();
    v44(v43);
    return sub_1000253FC(v25, v27);
  }

  else
  {
    v30 = v24;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v31 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v31);
    v46 = *(v32 + 72);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1001E5F70;
    v49 = type metadata accessor for NotificationSettingsEventManager();
    v48[0] = v4;

    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v48);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v36._countAndFlagsBits = 0xD000000000000024;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
    v49 = v14;
    v37 = sub_100017E64(v48);
    (*(v16 + 16))(v37, v20, v14);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v48, &qword_10026D350, &qword_1001E6050);
    v38._countAndFlagsBits = 8250;
    v38._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
    swift_getErrorValue();
    v49 = v47;
    sub_100017E64(v48);
    sub_1000047A4();
    (*(v39 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100009FB0(v48, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v40 = static os_log_type_t.debug.getter();
    sub_1000036B0(v40, v33);

    v41 = sub_10000A298();
    return v42(v41);
  }
}

uint64_t sub_100180B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100002DEC();
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v9 = sub_100003D10(v8);
  __chkstk_darwin(v9);
  v11 = v33 - v10;
  v12 = type metadata accessor for URL();
  sub_100002CC4();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_100002DEC();
  v18 = v17 - v16;
  sub_1001810FC(a1, a2, v11);
  if (sub_100009F34(v11, 1, v12) == 1)
  {
    v19 = &unk_10026FEE0;
    v20 = &unk_1001E67C0;
    v21 = v11;
LABEL_3:
    sub_100009FB0(v21, v19, v20);
    return 0;
  }

  (*(v14 + 32))(v18, v11, v12);
  v22 = v3[18];
  sub_100003CA8(v3 + 14, v3[17]);
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v24 = (*(v22 + 8))(countAndFlagsBits);
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    v27 = sub_10000A298();
    v28(v27);
    return 0;
  }

  v33[5] = v14;
  sub_100002BC0(0, &unk_10026FEF0, NSKeyedUnarchiver_ptr);
  sub_10007B9A4(&qword_10026BB78, &qword_1001EF740);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1001E5F60;
  *(v29 + 32) = type metadata accessor for DisplayCriteria();
  *(v29 + 40) = sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  *(v29 + 48) = sub_100002BC0(0, &qword_10026FF00, NSDictionary_ptr);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v30 = sub_10000A298();
  v31(v30);

  sub_10003AE18(v24, v26);
  if (!v34[3])
  {
    v19 = &qword_10026D350;
    v20 = &qword_1001E6050;
    v21 = v34;
    goto LABEL_3;
  }

  if (swift_dynamicCast())
  {
    return v33[6];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001810FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL.DirectoryHint();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v14 = sub_100003D10(v13);
  __chkstk_darwin(v14);
  sub_100005C2C();
  v58 = v15;
  __chkstk_darwin(v16);
  v18 = v48 - v17;
  v19 = type metadata accessor for URL();
  sub_100002CC4();
  v59 = v20;
  __chkstk_darwin(v21);
  sub_100005C2C();
  v56 = v22;
  v24 = __chkstk_darwin(v23);
  v26 = v48 - v25;
  __chkstk_darwin(v24);
  v28 = v48 - v27;
  sub_10001E8B8();
  if (sub_100009F34(v18, 1, v19) == 1)
  {
    sub_100009FB0(v18, &unk_10026FEE0, &unk_1001E67C0);
    v29 = 1;
  }

  else
  {
    v51 = a1;
    v52 = a2;
    v55 = a3;
    v50 = *(v59 + 32);
    v48[1] = v59 + 32;
    v50(v28, v18, v19);
    v30 = v28;
    v31 = v57;
    v32 = v57[8];
    v60 = v57[7];
    v61 = v32;
    v49 = *(v8 + 104);
    v49(v12, enum case for URL.DirectoryHint.isDirectory(_:), v6);
    v33 = v6;
    v34 = v8;
    v35 = sub_10001ECE0();

    v48[2] = v35;
    v36 = v34;
    v37 = v33;
    v54 = v30;
    URL.appending<A>(path:directoryHint:)();
    v38 = *(v36 + 8);
    v53 = v37;
    v38(v12, v37);

    v39 = v31[17];
    v40 = v31[18];
    sub_100003CA8(v31 + 14, v39);
    v41 = v58;
    sub_1000FA020(v26, 1, 0, v39, v40, v58);
    if (sub_100009F34(v41, 1, v19) == 1)
    {
      v42 = *(v59 + 8);
      v42(v26, v19);
      v42(v54, v19);
      sub_100009FB0(v41, &unk_10026FEE0, &unk_1001E67C0);
      v29 = 1;
      a3 = v55;
    }

    else
    {
      v43 = v56;
      v50(v56, v41, v19);
      v60 = v51;
      v61 = v52;
      v44 = v53;
      v49(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v53);
      v45 = v38;
      a3 = v55;
      URL.appending<A>(path:directoryHint:)();
      v45(v12, v44);
      v46 = *(v59 + 8);
      v46(v43, v19);
      v46(v26, v19);
      v46(v54, v19);
      v29 = 0;
    }
  }

  return sub_10000A7C0(a3, v29, 1, v19);
}

uint64_t sub_10018155C(uint64_t a1, uint64_t a2)
{
  *(v2 + 1360) = a2;
  *(v2 + 1352) = a1;
  return sub_100006180(sub_100181578);
}

uint64_t sub_100181578()
{
  sub_1000061B4();
  v1 = objc_opt_self();
  sub_100005B9C();
  v2 = String._bridgeToObjectiveC()();
  v0[171] = [v1 explicitContentSettingForBundleID:v2];

  sub_100002BC0(0, &qword_10026E4A0, UNUserNotificationCenter_ptr);

  sub_100005B9C();
  v3 = sub_1001AF38C();
  v0[172] = v3;
  v4 = swift_task_alloc();
  v0[173] = v4;
  *(v4 + 16) = v3;
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  swift_asyncLet_begin();
  v5 = swift_task_alloc();
  v0[174] = v5;
  *(v5 + 16) = v3;
  sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 167, sub_100181704, v0 + 162);
}

uint64_t sub_100181704()
{
  sub_100004768();
  v1 = *(v0 + 1336);
  *(v0 + 1400) = v1;
  v2 = v1;
  v3 = sub_100009EE4();

  return _swift_asyncLet_get(v3, v4, v5, v6);
}

uint64_t sub_100181778()
{
  sub_1000061B4();
  v1 = *(v0 + 1344);
  objc_allocWithZone(type metadata accessor for DisplayCriteria());

  v2 = sub_100005B9C();
  *(v0 + 1408) = sub_10018394C(v2, v3, v1);
  v4 = sub_100009EE4();

  return _swift_asyncLet_finish(v4);
}

uint64_t sub_10018181C()
{
  sub_100004768();

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100181898()
{
  sub_100004768();

  v1 = *(v0 + 8);
  v2 = *(v0 + 1408);

  return v1(v2);
}

uint64_t sub_100181904(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100181924, 0, 0);
}

uint64_t sub_100181924()
{
  sub_1000061B4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  sub_100004D64();
  *v3 = v4;
  v3[1] = sub_1001857DC;
  sub_100005A5C();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

void sub_100181A18(uint64_t a1, void *a2)
{
  v4 = sub_10007B9A4(&qword_10026FED8, &unk_1001EF730);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_100185704;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001475C4;
  aBlock[3] = &unk_100250EC0;
  v10 = _Block_copy(aBlock);

  [a2 getNotificationSettingsWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_100181BC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100181BE8, 0, 0);
}

uint64_t sub_100181BE8()
{
  sub_1000061B4();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  sub_100004D64();
  *v3 = v4;
  v3[1] = sub_100181CD8;
  sub_100005A5C();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100181CD8()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

void sub_100181DD8(uint64_t a1, void *a2)
{
  v4 = sub_10007B9A4(&qword_10026FED0, &qword_1001EF728);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1001856D4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100180570;
  aBlock[3] = &unk_100250E70;
  v10 = _Block_copy(aBlock);

  [a2 getNotificationSettingsForTopicsWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_100181F88(uint64_t a1)
{

  sub_10007B9A4(&qword_10026FED0, &qword_1001EF728);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100181FD8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return sub_100006180(sub_100182018);
}

uint64_t sub_100182018()
{
  sub_1000061B4();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1001820F4;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_1001820F4()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  return _swift_task_switch(sub_1001821FC, 0, 0);
}

uint64_t sub_10018221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1001822C4, 0, 0);
}

uint64_t sub_1001822C4()
{
  if (qword_1002687E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_24:
  swift_once();
LABEL_2:
  v1 = qword_1002878D8 + 56;
  v27 = (v0 + 16);
  v2 = -1;
  v3 = -1 << *(qword_1002878D8 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(qword_1002878D8 + 56);
  v5 = (63 - v3) >> 6;
  v30 = qword_1002878D8;

  v6 = 0;
  v28 = v5;
  v29 = v1;
  for (i = v0; v4; v1 = v29)
  {
LABEL_9:
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v11 = (*(v30 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v4)))));
    v13 = *v11;
    v12 = v11[1];
    v14 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v10;
    v15[5] = v13;
    v15[6] = v12;
    sub_1001854B8(v8, v9, &unk_10026FEC0, &qword_1001E6280);
    LODWORD(v9) = sub_100009F34(v9, 1, v14);
    v0 = i;

    v16 = *(i + 88);
    if (v9 == 1)
    {
      sub_100009FB0(*(i + 88), &unk_10026FEC0, &qword_1001E6280);
    }

    else
    {
      TaskPriority.rawValue.getter();
      sub_1000047A4();
      (*(v17 + 8))(v16, v14);
    }

    if (v15[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v0 = i;
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = **(v0 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = &unk_1001EF6F0;
    *(v22 + 24) = v15;

    if (v20 | v18)
    {
      v23 = v27;
      *v27 = 0;
      v27[1] = 0;
      *(v0 + 32) = v18;
      *(v0 + 40) = v20;
    }

    else
    {
      v23 = 0;
    }

    v24 = *(v0 + 96);
    v4 &= v4 - 1;
    *(v0 + 48) = 1;
    *(v0 + 56) = v23;
    *(v0 + 64) = v21;
    swift_task_create();

    sub_100009FB0(v24, &unk_10026FEC0, &qword_1001E6280);
    v5 = v28;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  sub_100002D8C();

  return v25();
}

uint64_t sub_10018264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_100009BE8;

  return sub_1001826F8();
}

uint64_t sub_1001826F8()
{
  sub_1000061B4();
  v3 = v2;
  v5 = v4;
  v1[92] = v0;
  v1[91] = v2;
  v1[90] = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_100003D10(v6);
  v1[93] = swift_task_alloc();
  v7 = swift_task_alloc();
  v1[94] = v7;
  *v7 = v1;
  v7[1] = sub_1001827CC;

  return sub_10018155C(v5, v3);
}

uint64_t sub_1001827CC()
{
  sub_100004768();
  sub_1000056A8();
  *(v1 + 760) = v0;

  return _swift_task_switch(sub_1001828C4, 0, 0);
}

uint64_t sub_1001828C4()
{
  v1 = sub_100180B44(*(v0 + 720), *(v0 + 728));
  if (v1)
  {
    v2 = v1;
    if ([v1 isEqual:*(v0 + 760)])
    {
      v3 = *(v0 + 736);
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v4 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v4);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1001E5F70;
      *(v0 + 664) = type metadata accessor for NotificationSettingsEventManager();
      *(v0 + 640) = v3;

      v6 = AMSLogKey();
      if (v6)
      {
        v7 = v6;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v45 = *(v0 + 728);
      v46 = *(v0 + 720);
      static LogInterpolation.prefix(_:_:)();

      sub_100002C00((v0 + 640));
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_100004810();
      v47._countAndFlagsBits = 0xD000000000000013;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v47);
      *(v0 + 696) = &type metadata for String;
      *(v0 + 672) = v46;
      *(v0 + 680) = v45;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009FB0(v0 + 672, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v48 = *(v0 + 760);
      v49 = static os_log_type_t.default.getter();
      sub_1000036B0(v49, v5);

      sub_100002D8C();

      return v50();
    }
  }

  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 720);
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EF2A0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v9;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x4379616C70736964;
  *(inited + 88) = 0xEF61697265746972;

  sub_1001840DC();
  v13 = v12;
  v14 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(inited + 96) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = 0x707954746E657665;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = 0x6B63696C63;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = &type metadata for String;
  strcpy((inited + 176), "eventVersion");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = 5;
  *(inited + 216) = &type metadata for Int;
  *(inited + 224) = 0x746E6F4365676170;
  *(inited + 232) = 0xEB00000000747865;
  *(inited + 240) = 0xD000000000000018;
  *(inited + 248) = 0x8000000100200A60;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0x6570795465676170;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = 0x73676E6974746553;
  *(inited + 296) = 0xE800000000000000;
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0x6369706F74;
  *(inited + 360) = &type metadata for String;
  *(inited + 328) = 0xE500000000000000;
  *(inited + 336) = 0xD000000000000014;
  *(inited + 344) = 0x8000000100200A80;
  v15 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 704) = v15;
  v16 = v8[5];
  v17 = v8[6];
  sub_100003CA8(v8 + 2, v16);
  v18 = (*(v17 + 8))(v16, v17);
  if (v18)
  {
    v19 = v18;
    v20 = [v18 ams_DSID];

    if (v20)
    {
      v21 = [v20 stringValue];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v0 + 600) = &type metadata for String;
      *(v0 + 576) = v22;
      *(v0 + 584) = v24;
      sub_100002C4C((v0 + 576), (v0 + 608));
      swift_isUniquelyReferenced_nonNull_native();
      sub_10000DFC4();
      *(v0 + 704) = v15;
    }
  }

  v25 = AMSLogKey();
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *(v0 + 776) = v29;
  *(v0 + 768) = v27;
  v30 = *(v0 + 736);
  v31 = *(v0 + 728);
  v32 = *(v0 + 720);
  *(v0 + 784) = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v33 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v33);
  *(v0 + 792) = *(v34 + 72);
  *(v0 + 840) = *(v35 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1001E5F70;
  v37 = type metadata accessor for NotificationSettingsEventManager();
  *(v0 + 800) = v37;
  *(v0 + 408) = v37;
  *(v0 + 384) = v30;

  static LogInterpolation.prefix(_:_:)();
  sub_100002C00((v0 + 384));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v38._countAndFlagsBits = 0xD000000000000015;
  v38._object = 0x8000000100200AA0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
  *(v0 + 440) = &type metadata for String;
  *(v0 + 416) = v32;
  *(v0 + 424) = v31;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(v0 + 416, &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v39 = *(v0 + 736);
  *(v0 + 808) = qword_100287810;
  v40 = static os_log_type_t.default.getter();
  sub_1000036B0(v40, v36);

  v41 = swift_task_alloc();
  *(v0 + 816) = v41;
  *(v41 + 16) = v39;
  *(v41 + 24) = v0 + 704;
  v42 = swift_task_alloc();
  *(v0 + 824) = v42;
  sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
  sub_100004D64();
  *v42 = v43;
  v42[1] = sub_100183084;
  sub_100005A5C();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v44);
}

uint64_t sub_100183084()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v3 + 832) = v0;

  if (v0)
  {
    v6 = sub_100183368;
  }

  else
  {

    v6 = sub_10018319C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10018319C()
{
  v1 = v0[100];
  v10 = v0[95];
  v2 = v0[92];
  v3 = v0[91];
  v9 = v0[90];
  sub_10018062C(v10, v9, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v0[67] = v1;
  v0[64] = v2;

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 64);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v5._countAndFlagsBits = 0xD000000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v5);
  v0[71] = &type metadata for String;
  v0[68] = v9;
  v0[69] = v3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0((v0 + 68), &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v4);

  sub_100002D8C();

  return v7();
}

uint64_t sub_100183368()
{
  v1 = v0[100];
  v10 = v0[95];
  v2 = v0[92];
  v8 = v0[90];
  v9 = v0[91];

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F70;
  v0[59] = v1;
  v0[56] = v2;

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v0 + 56);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v4);
  v0[63] = &type metadata for String;
  v0[60] = v8;
  v0[61] = v9;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0((v0 + 60), &qword_10026D350, &qword_1001E6050);
  sub_100003B48();
  LogInterpolation.init(stringInterpolation:)();
  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5, v3);

  sub_100002D8C();

  return v6();
}

void sub_100183534(uint64_t a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = a2[12];
  v10 = a2[13];
  sub_100003CA8(a2 + 9, v9);

  sub_10005DFA4();
  v12 = v11;

  v20 = (*(v10 + 8))(v12, v9, v10);

  v21 = *(v6 + 16);
  v21(v8, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v19 = *(v6 + 32);
  v19(v14 + v13, v8, v5);
  v27 = sub_100185294;
  v28 = v14;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1001475C4;
  v26 = &unk_100250D80;
  v15 = _Block_copy(&aBlock);

  v16 = v20;
  [v20 addSuccessBlock:v15];
  _Block_release(v15);
  v21(v8, v22, v5);
  v17 = swift_allocObject();
  v19(v17 + v13, v8, v5);
  v27 = sub_1001852A8;
  v28 = v17;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000266E0;
  v26 = &unk_100250DD0;
  v18 = _Block_copy(&aBlock);

  [v16 addErrorBlock:v18];
  _Block_release(v18);
}

uint64_t sub_100183834(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  sub_10007B9A4(a3, a4);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100183890(uint64_t a1)
{
  swift_errorRetain();
  sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  return CheckedContinuation.resume(throwing:)();
}

void *sub_1001838E0()
{
  sub_100002C00(v0 + 2);

  sub_100002C00(v0 + 9);
  sub_100002C00(v0 + 14);
  return v0;
}

uint64_t sub_100183918()
{
  sub_1001838E0();

  return swift_deallocClassInstance();
}

id sub_10018394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] = a1;
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] = a2;
  *&v3[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DisplayCriteria();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_1001839F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting);
  v4 = String._bridgeToObjectiveC()();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings);
  sub_100004810();
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v8 = String._bridgeToObjectiveC()();
  [a1 encodeObject:isa forKey:v8];
}

id sub_100183BB4(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 decodeIntegerForKey:v3];

  sub_100004810();
  v5 = String._bridgeToObjectiveC()();
  v6 = [a1 decodeObjectForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {

LABEL_15:
    sub_100009FB0(&v29, &qword_10026D350, &qword_1001E6050);
    goto LABEL_16;
  }

  v7 = sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  if ((sub_1000068B4(v7, v8, v9, v7, v10, v11, v12) & 1) == 0)
  {

LABEL_16:
    type metadata accessor for DisplayCriteria();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v13 = v26;
  v14 = String._bridgeToObjectiveC()();
  v15 = [a1 decodeObjectForKey:v14];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {

    goto LABEL_15;
  }

  v16 = sub_10007B9A4(&qword_10026FE98, &unk_1001EF6C0);
  if ((sub_1000068B4(v16, v17, v18, v16, v19, v20, v21) & 1) == 0)
  {

    goto LABEL_16;
  }

  v22 = v26;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] = v4;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] = v13;
  *&v1[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics] = v22;
  v25.receiver = v1;
  v25.super_class = type metadata accessor for DisplayCriteria();
  v23 = objc_msgSendSuper2(&v25, "init");

  return v23;
}

id sub_100183E40(uint64_t a1)
{
  sub_1001854B8(a1, v8, &qword_10026D350, &qword_1001E6050);
  if (!v8[3])
  {
    sub_100009FB0(v8, &qword_10026D350, &qword_1001E6050);
    return 0;
  }

  type metadata accessor for DisplayCriteria();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (*&v7[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting] != *(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting) || ![*&v7[OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings] isEqual:*(v1 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettings)])
  {

    return 0;
  }

  sub_100002BC0(0, &unk_10026FE88, UNNotificationSettings_ptr);
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v8[0] = 0;
  result = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  if (v8[0])
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [(objc_class *)v2.super.isa isEqualToDictionary:isa];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10018409C(uint64_t a1)
{
  v1 = 0x6E61656C63;
  if (a1)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  else
  {
    return v1;
  }
}

void sub_1001840DC()
{
  sub_100184384();
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_explicitContentSetting);
  if (v1)
  {
    if (v1 != 1)
    {
      goto LABEL_6;
    }

    v2 = 0xE800000000000000;
    v3 = 0x746963696C707865;
  }

  else
  {
    v2 = 0xE500000000000000;
    v3 = 0x6E61656C63;
  }

  v33 = &type metadata for String;
  *&v32 = v3;
  *(&v32 + 1) = v2;
  sub_100002C4C(&v32, v31);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000DFC4();
LABEL_6:
  v4 = *(v0 + OBJC_IVAR____TtC14amsengagementd15DisplayCriteria_notificationSettingsForTopics);
  if (*(v4 + 16))
  {
    sub_10007B9A4(&unk_10026FE70, &unk_1001ED840);
    v5 = static _DictionaryStorage.copy(original:)();
    v6 = v5;
    v7 = 0;
    v8 = v4 + 64;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 64);
    v12 = (v9 + 63) >> 6;
    v29 = v5 + 64;
    v30 = v5;
    if (v11)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_16:
        v16 = v13 | (v7 << 6);
        v17 = *(v4 + 56);
        v18 = v4;
        v19 = (*(v4 + 48) + 16 * v16);
        v20 = *v19;
        v21 = v19[1];
        v22 = *(v17 + 8 * v16);

        v23 = v22;
        v24 = sub_100184384();

        v6 = v30;
        *(v29 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        v25 = (v30[6] + 16 * v16);
        *v25 = v20;
        v25[1] = v21;
        *(v30[7] + 8 * v16) = v24;
        v26 = v30[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v30[2] = v28;
        v4 = v18;
        if (!v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v12)
        {
          v33 = sub_10007B9A4(&qword_10026E460, &qword_1001EDBA0);
          *&v32 = v6;
          sub_100002C4C(&v32, v31);
          swift_isUniquelyReferenced_nonNull_native();
          sub_10000DFC4();
          return;
        }

        v15 = *(v8 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v11 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100184384()
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001EDBC0;
  strcpy((inited + 32), "alertSetting");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v2 = [v0 alertSetting];
  *(inited + 48) = UNNotificationSetting.description.getter(v2, v3, v4, v5, v6);
  *(inited + 56) = v7;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x7974537472656C61;
  *(inited + 88) = 0xEA0000000000656CLL;
  v8 = [v0 alertStyle];
  *(inited + 96) = UNAlertStyle.description.getter(v8, v9, v10, v11, v12);
  *(inited + 104) = v13;
  sub_100004B44();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v14;
  v15 = [v0 announcementSetting];
  *(inited + 144) = UNNotificationSetting.description.getter(v15, v16, v17, v18, v19);
  *(inited + 152) = v20;
  sub_100004B44();
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = v21;
  v22 = [v0 authorizationStatus];
  *(inited + 192) = UNAuthorizationStatus.description.getter(v22, v23, v24, v25, v26);
  *(inited + 200) = v27;
  *(inited + 216) = &type metadata for String;
  strcpy((inited + 224), "badgeSetting");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  v28 = [v0 badgeSetting];
  *(inited + 240) = UNNotificationSetting.description.getter(v28, v29, v30, v31, v32);
  *(inited + 248) = v33;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "carPlaySetting");
  *(inited + 287) = -18;
  v34 = [v0 carPlaySetting];
  *(inited + 288) = UNNotificationSetting.description.getter(v34, v35, v36, v37, v38);
  *(inited + 296) = v39;
  sub_100004B44();
  *(inited + 312) = &type metadata for String;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = v40;
  v41 = [v0 criticalAlertSetting];
  *(inited + 336) = UNNotificationSetting.description.getter(v41, v42, v43, v44, v45);
  *(inited + 344) = v46;
  sub_100004B44();
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = v47;
  v48 = [v0 directMessagesSetting];
  *(inited + 384) = UNNotificationSetting.description.getter(v48, v49, v50, v51, v52);
  *(inited + 392) = v53;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0x676E6970756F7267;
  *(inited + 424) = 0xEF676E6974746553;
  v54 = [v0 groupingSetting];
  *(inited + 432) = UNNotificationGroupingSetting.description.getter(v54, v55, v56, v57, v58);
  *(inited + 440) = v59;
  sub_100004B44();
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 0xD000000000000011;
  *(inited + 472) = v60;
  v61 = [v0 lockScreenSetting];
  *(inited + 480) = UNNotificationSetting.description.getter(v61, v62, v63, v64, v65);
  *(inited + 488) = v66;
  sub_100004B44();
  *(inited + 504) = &type metadata for String;
  *(inited + 512) = 0xD000000000000019;
  *(inited + 520) = v67;
  v68 = [v0 notificationCenterSetting];
  v73 = UNNotificationSetting.description.getter(v68, v69, v70, v71, v72);
  *(inited + 552) = &type metadata for String;
  *(inited + 528) = v73;
  *(inited + 536) = v74;
  sub_100004B44();
  *(inited + 560) = 0xD00000000000001FLL;
  *(inited + 568) = v75;
  v76 = [v0 providesAppNotificationSettings];
  v77 = 28526;
  if (v76)
  {
    v77 = 7562617;
  }

  v78 = 0xE200000000000000;
  if (v76)
  {
    v78 = 0xE300000000000000;
  }

  *(inited + 600) = &type metadata for String;
  *(inited + 576) = v77;
  *(inited + 584) = v78;
  sub_100004B44();
  *(inited + 608) = 0xD000000000000018;
  *(inited + 616) = v79;
  v80 = [v0 scheduledDeliverySetting];
  v85 = UNNotificationSetting.description.getter(v80, v81, v82, v83, v84);
  *(inited + 648) = &type metadata for String;
  *(inited + 624) = v85;
  *(inited + 632) = v86;
  sub_100004B44();
  *(inited + 656) = 0xD000000000000013;
  *(inited + 664) = v87;
  v88 = [v0 showPreviewsSetting];
  v93 = UNShowPreviewsSetting.description.getter(v88, v89, v90, v91, v92);
  *(inited + 696) = &type metadata for String;
  *(inited + 672) = v93;
  *(inited + 680) = v94;
  strcpy((inited + 704), "soundSetting");
  *(inited + 717) = 0;
  *(inited + 718) = -5120;
  v95 = [v0 soundSetting];
  v100 = UNNotificationSetting.description.getter(v95, v96, v97, v98, v99);
  *(inited + 744) = &type metadata for String;
  *(inited + 720) = v100;
  *(inited + 728) = v101;
  sub_100004B44();
  *(inited + 752) = 0xD000000000000014;
  *(inited + 760) = v102;
  v103 = [v0 timeSensitiveSetting];
  v108 = UNNotificationSetting.description.getter(v103, v104, v105, v106, v107);
  *(inited + 792) = &type metadata for String;
  *(inited + 768) = v108;
  *(inited + 776) = v109;
  return Dictionary.init(dictionaryLiteral:)();
}

id sub_1001847C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DisplayCriteria();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100184864()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = [v0 enqueueData:isa];

  return v2;
}

uint64_t UNAlertStyle.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x7472656C61;
    case 1:
      return 0x72656E6E6162;
  }

  result = sub_100003444("Fatal error", a2, a3, a4, a5, "amsengagementd/NotificationSettingsEventManager.swift");
  __break(1u);
  return result;
}

uint64_t UNAuthorizationStatus.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100003444("Fatal error", 0xEA00000000006465, a3, a4, a5, "amsengagementd/NotificationSettingsEventManager.swift");
  __break(1u);
  return result;
}

uint64_t UNNotificationGroupingSetting.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a1)
  {
    case 0:
      return 0x746C7561666564;
    case 1:
      return 0x656372756F73;
    case 2:
      return 6710895;
  }

  result = sub_100003444("Fatal error", a2, a3, a4, a5, "amsengagementd/NotificationSettingsEventManager.swift");
  __break(1u);
  return result;
}

uint64_t UNNotificationSetting.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a1)
  {
    case 0:
      return 0x6F70707553746F6ELL;
    case 1:
      return 0x64656C6261736964;
    case 2:
      return 0x64656C62616E65;
  }

  result = sub_100003444("Fatal error", a2, a3, a4, a5, "amsengagementd/NotificationSettingsEventManager.swift");
  __break(1u);
  return result;
}

uint64_t UNShowPreviewsSetting.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a1)
  {
    case 0:
      return 0x737961776C61;
    case 1:
      sub_100004810();
      return 0xD000000000000011;
    case 2:
      return 0x726576656ELL;
    default:
      result = sub_100003444("Fatal error", a2, a3, a4, a5, "amsengagementd/NotificationSettingsEventManager.swift");
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1001851A4(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100009CCC;

  return v4();
}

uint64_t sub_1001852D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_10007B9A4(a2, a3);
  sub_100003D10(v6);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, v8);
}

uint64_t sub_100185354()
{
  sub_1000061B4();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = sub_100004ABC(v6);
  *v7 = v8;
  v7[1] = sub_100009BE8;

  return sub_10018221C(v4, v2, v5);
}

uint64_t sub_1001853FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100009CC8;

  return sub_10018264C(v2, v3, v4, v5, v6);
}

uint64_t sub_1001854B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_1000047A4();
  v5 = sub_100005B9C();
  v6(v5);
  return a2;
}

uint64_t sub_100185518()
{
  sub_1000061B4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009CC8;
  v2 = sub_100005B9C();

  return v3(v2);
}

uint64_t sub_1001855BC()
{
  sub_100004768();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100011B30(v1);

  return sub_100181904(v3, v4);
}

uint64_t sub_100185644()
{
  sub_100004768();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100011B30(v1);

  return sub_100181BC8(v3, v4);
}

uint64_t sub_100185718(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_10007B9A4(a2, a3);
  sub_100003D10(v7);
  return sub_100183834(a1, v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80)), a2, a3);
}

uint64_t sub_100185794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001857F0()
{
  if ([v0 code] == 4 || objc_msgSend(v0, "code") == 260)
  {
    v1 = [v0 domain];
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
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1001858CC()
{
  v1 = [v0 userInfo];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100052D94(v2, &v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100002C5C(&v5);
  }

  return 0;
}

uint64_t sub_1001859B4(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v4 = v32 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v32[1] = 7107189;
  v32[2] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v33, a1, &v34);
  sub_10000E1E8(v33);
  if (!v35)
  {
    sub_10000A064(&v34, &qword_10026D350, &qword_1001E6050);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v16 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v16);
    v12 = sub_10000346C();
    *(v12 + 16) = xmmword_1001E5F70;
    v17 = type metadata accessor for OpenURLAction();
    sub_10000BB00(v17, v18, v19, v17);

    goto LABEL_9;
  }

  URL.init(string:)();

  if (sub_100009F34(v4, 1, v5) == 1)
  {
    sub_10000A064(v4, &unk_10026FEE0, &unk_1001E67C0);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v12 = sub_10000346C();
    *(v12 + 16) = xmmword_1001E5F70;
    v13 = type metadata accessor for OpenURLAction();
    sub_10000BB00(v13, v14, v15, v13);

LABEL_9:
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v20 = static os_log_type_t.error.getter();
    sub_1000036B0(v20, v12);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v22 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001E5F70;
  v24 = type metadata accessor for OpenURLAction();
  sub_10000BB00(v24, v25, v26, v24);

  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v27 = static os_log_type_t.default.getter();
  sub_1000036B0(v27, v23);

  v28 = objc_opt_self();
  URL._bridgeToObjectiveC()(v29);
  v31 = v30;
  [v28 openStandardURL:v30];

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100185EF0(uint64_t a1)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for AppDatabase();
  sub_10001D804(a1, 0);
  sub_1000A0CA0();
  v14 = sub_1000A6278();

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v15 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v17 = &type metadata for PersistedEventCoordinator;
  v16[0] = swift_allocObject();
  sub_1000263DC(v1, v16[0] + 16);
  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v16);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x6E6979616C706552;
  v7._object = 0xEA00000000002067;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
  v8 = *(v14 + 16);
  v17 = &type metadata for Int;
  v16[0] = v8;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v16, &qword_10026D350, &qword_1001E6050);
  v9._object = 0x8000000100200CF0;
  v9._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100002D44(&qword_1002686B0);
  }

  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v4);

  __chkstk_darwin(v11);
  *(&v13 - 16) = a1;
  *(&v13 - 1) = v1;
  sub_10009A57C();
}

uint64_t sub_100186438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  aBlock[0] = 0;
  v12 = [v10 JSONObjectWithData:isa options:0 error:aBlock];

  if (v12)
  {
    v13 = aBlock[0];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    result = swift_dynamicCast();
    if (result)
    {
      v25[1] = v3;
      v15 = *&v31[0];
      v16 = [objc_allocWithZone(AMSEngagementEnqueueRequest) init];
      sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
      v18 = sub_100092378();
      [v18 setComponents:{objc_msgSend(v18, "components") | 4}];
      sub_10007B9A4(&qword_10026F910, &qword_1001EBE40);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1001E8AB0;
      *(v19 + 32) = v18;
      v25[0] = v18;
      sub_1000F43B4(v19, v16);
      sub_10007B9A4(&qword_100269FC0, &unk_1001E7520);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001E61B0;
      *(v20 + 32) = v15;

      sub_1000F4334(v20, v16);
      if (qword_1002687F0 != -1)
      {
        swift_once();
      }

      sub_1000263DC(v26, v31);
      v21 = swift_allocObject();
      v22 = v31[1];
      *(v21 + 16) = v31[0];
      *(v21 + 32) = v22;
      *(v21 + 48) = v32;
      *(v21 + 56) = v15;
      *(v21 + 64) = v16;
      aBlock[4] = sub_100187338;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100005E50;
      aBlock[3] = &unk_100250FC8;
      v23 = _Block_copy(aBlock);
      v24 = v16;
      static DispatchQoS.unspecified.getter();
      v29 = _swiftEmptyArrayStorage;
      sub_10004DE28();
      sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
      sub_10004DDC4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      (*(v28 + 8))(v6, v4);
      (*(v27 + 8))(v9, v7);
    }
  }

  else
  {
    v17 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return result;
}

uint64_t sub_1001869D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  v15 = &type metadata for PersistedEventCoordinator;
  v14[0] = swift_allocObject();
  sub_1000263DC(a1, v14[0] + 16);
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._object = 0x8000000100200D10;
  v8._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v14, a2, &v16);
  sub_10000E1E8(v14);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      v10 = 0x707954746E657665;
      v9 = 0xE900000000000065;
      v15 = &type metadata for String;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000A064(&v16, &qword_10026D350, &qword_1001E6050);
  }

  v15 = &type metadata for String;
  v9 = 0xE700000000000000;
  v10 = 0x6E776F6E6B6E75;
LABEL_8:
  v14[0] = v10;
  v14[1] = v9;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v14, &qword_10026D350, &qword_1001E6050);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v12 = static os_log_type_t.default.getter();
  sub_1000036B0(v12, v5);

  if (qword_100268670 != -1)
  {
    swift_once();
  }

  sub_100004454();
}

uint64_t sub_100186D40(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v5 - 8);
  v7 = *(a2 + 16);
  if (v7 != 0.0)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E5F70;
    v21 = &type metadata for PersistedEventCoordinator;
    *&v20[0] = swift_allocObject();
    sub_1000263DC(v2, *&v20[0] + 16);
    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v20);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0x676E69766F6D6552;
    v11._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    v21 = &type metadata for Int;
    v20[0] = v7;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(v20, &qword_10026D350, &qword_1001E6050);
    v12._object = 0x8000000100200F40;
    v12._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v13 = static os_log_type_t.default.getter();
    sub_1000036B0(v13, v8);

    type metadata accessor for AppDatabase();
    sub_10001D804(*(a1 + 1), 0);
    v14 = a2 + 32;
    do
    {
      swift_bridgeObjectRetain_n();
      sub_1000A5940(v20);
      sub_1000A0CA0();
      sub_1000A6594(v20);

      sub_10009D054(v20);

      v14 += 8;
      --*&v7;
    }

    while (v7 != 0.0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v19[3] = &type metadata for PersistedEventCoordinator;
    v19[0] = swift_allocObject();
    sub_1000263DC(v2, v19[0] + 16);
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.init(stringLiteral:)();
    v18 = static os_log_type_t.default.getter();
    sub_1000036B0(v18, v15);
  }

  return result;
}

uint64_t sub_100187354@<X0>(uint64_t *a3@<X8>)
{
  result = Data.init(contentsOf:options:)();
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_100187380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007B9A4(&qword_100270028, &unk_1001EF7B0);
  __chkstk_darwin(v8 - 8);
  v10 = v14 - v9;
  (*(v5 + 16))(v7, a1, v4);
  JetpackBundle.init(bundleURL:)();
  v11 = type metadata accessor for JetpackBundle();
  if (sub_100009F34(v10, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a2, v10, v11);
  }

  sub_100187544(v10);
  sub_10013C144();
  swift_allocError();
  *v12 = 0;
  return swift_willThrow();
}

uint64_t sub_100187544(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_100270028, &unk_1001EF7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001875AC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithTopic:v1];

  return v2;
}

id sub_100187620()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v4 = sub_1000078B4();
    v5 = objc_allocWithZone(AMSMetrics);
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 initWithContainerID:v6 bag:v4];

    v8 = *(v3 + 16);
    *(v3 + 16) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_1001876EC()
{
  v0 = String._bridgeToObjectiveC()();
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v1 = sub_1000078B4();
  v2 = [v1 BOOLForKey:v0];

  v3 = [v2 valuePromise];
  return v3;
}

void sub_100187798()
{
  v1 = sub_1001876EC();
  v8 = sub_10018A298;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000266E0;
  v7 = &unk_100251108;
  v2 = _Block_copy(&v4);

  [v1 addErrorBlock:v2];
  _Block_release(v2);
  v8 = sub_10018A244;
  v9 = v0;
  v4 = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = sub_1000EA728;
  v7 = &unk_100251130;
  v3 = _Block_copy(&v4);

  [v1 addSuccessBlock:v3];
  _Block_release(v3);
}

void sub_1001878F8(void *a1, void **a2)
{
  if ([a1 BOOLValue])
  {
    v3 = [objc_allocWithZone(AMSSubscriptionEntitlementsTask) initWithMediaType:6];
    v4 = [v3 performExternalLookup];

    v15 = sub_10018A24C;
    v16 = a2;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_1000266E0;
    v14 = &unk_100251158;
    v5 = _Block_copy(&v11);

    [v4 addErrorBlock:v5];
    _Block_release(v5);
    v15 = sub_10018A268;
    v16 = a2;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_10008E0EC;
    v14 = &unk_100251180;
    v6 = _Block_copy(&v11);

    [v4 addSuccessBlock:v6];
    _Block_release(v6);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001E5F70;
    v14 = type metadata accessor for PodcastsEventManager();
    v11 = a2;

    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v11);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v10 = static os_log_type_t.default.getter();
    sub_1000036B0(v10, v7);
  }
}

uint64_t sub_100187C08(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v11 = type metadata accessor for PodcastsEventManager();
  v10[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v9;
  v6 = sub_100017E64(v10);
  (*(*(v9 - 8) + 16))(v6);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v10);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7, v3);
}

void sub_100187E1C(void *a1)
{
  v2 = [a1 entitlements];
  sub_100002BC0(0, &qword_100270118, AMSSubscriptionEntitlement_ptr);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = sub_10018901C();
    v6 = String._bridgeToObjectiveC()();
    [v5 setEventType:v6];

    v7 = [a1 entitlements];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v32 = v5;
      sub_10009B7C0(0, v9, 0);
      v11 = sub_10018BEAC();
      v13 = v12;
      v14 = 0;
      v15 = v8 + 64;
      v33 = v12;
      v34 = v9;
      while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
      {
        v16 = v11 >> 6;
        if ((*(v15 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v8 + 36) != v13)
        {
          goto LABEL_29;
        }

        v35 = v10;
        v17 = *(*(v8 + 56) + 8 * v11);

        v18 = v17;
        v19 = sub_100189588(v18);

        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_10009B7C0((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        _swiftEmptyArrayStorage[v21 + 4] = v19;
        v22 = 1 << *(v8 + 32);
        if (v11 >= v22)
        {
          goto LABEL_30;
        }

        v15 = v8 + 64;
        v23 = *(v8 + 64 + 8 * v16);
        if ((v23 & (1 << v11)) == 0)
        {
          goto LABEL_31;
        }

        if (*(v8 + 36) != v13)
        {
          goto LABEL_32;
        }

        v24 = v23 & (-2 << (v11 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = v16 << 6;
          v26 = v16 + 1;
          v27 = (v8 + 72 + 8 * v16);
          while (v26 < (v22 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_100083998(v11, v13, v35 & 1);
              v22 = __clz(__rbit64(v28)) + v25;
              goto LABEL_20;
            }
          }

          sub_100083998(v11, v13, v35 & 1);
        }

LABEL_20:
        v10 = 0;
        ++v14;
        v11 = v22;
        v13 = v33;
        if (v14 == v34)
        {

          v5 = v32;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    else
    {

LABEL_24:
      sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v31 = String._bridgeToObjectiveC()();
      [v5 setProperty:isa forBodyKey:v31];

      v36 = sub_100187620();
      [v36 enqueueEvent:v5];
    }
  }
}

void sub_100188220(uint64_t a1)
{
  strcpy(v30, "buyParameters");
  HIWORD(v30[1]) = -4864;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v24, a1, &v31);
  sub_10000E1E8(&v24);
  if (!v32)
  {
    sub_100002C5C(&v31);
    return;
  }

  v3 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((sub_100012DAC(v3, v4, v5, v3, v6, v7, v8, v9, v24, v25) & 1) == 0)
  {
    return;
  }

  v10 = v30[0];
  v30[0] = 0xD000000000000012;
  v30[1] = 0x8000000100201140;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(&v24, v10, &v31);
  v11 = sub_10000E1E8(&v24);
  if (!v32)
  {
    sub_100002C5C(&v31);
    goto LABEL_13;
  }

  if ((sub_100012DAC(v11, v12, v13, &type metadata for String, v14, v15, v16, v17, v24, v25) & 1) == 0)
  {
LABEL_13:
    v20 = sub_1001876EC();
    v28 = sub_10018A230;
    v29 = v1;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1000266E0;
    v27 = &unk_100251090;
    v21 = _Block_copy(&v24);

    [v20 addErrorBlock:v21];
    _Block_release(v21);
    v22 = swift_allocObject();
    v22[2] = v1;
    v22[3] = a1;
    v22[4] = v10;
    v28 = sub_10018A238;
    v29 = v22;
    v24 = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_1000EA728;
    v27 = &unk_1002510E0;
    v23 = _Block_copy(&v24);

    [v20 addSuccessBlock:v23];
    _Block_release(v23);

    return;
  }

  if (v30[0] != 1702195828 || v30[1] != 0xE400000000000000)
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v19)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
}

uint64_t sub_100188518(uint64_t a1, uint64_t a2)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v11 = type metadata accessor for PodcastsEventManager();
  v10[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v9;
  v6 = sub_100017E64(v10);
  (*(*(v9 - 8) + 16))(v6);
  static LogInterpolation.safe(_:)();
  sub_100002C5C(v10);
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v7 = static os_log_type_t.error.getter();
  sub_1000036B0(v7, v3);
}

uint64_t sub_10018872C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ([a1 BOOLValue])
  {
    v41 = a2;
    v7 = sub_10018901C();
    v8 = String._bridgeToObjectiveC()();
    [v7 setEventType:v8];

    strcpy(&v46, "eventVersion");
    BYTE13(v46) = 0;
    HIWORD(v46) = -5120;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v48, a3, &v46);
    sub_10000E1E8(&v48);
    v9 = *(&v47 + 1);
    if (*(&v47 + 1))
    {
      v10 = sub_100003CA8(&v46, *(&v47 + 1));
      v11 = *(v9 - 8);
      __chkstk_darwin(v10);
      v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v13);
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v13, v9);
      sub_100002C00(&v46);
    }

    else
    {
      v14 = 0;
    }

    v18 = String._bridgeToObjectiveC()();
    [v7 setProperty:v14 forBodyKey:v18];
    swift_unknownObjectRelease();

    sub_10007B9A4(&qword_100270110, &qword_1001EF7E8);
    v19 = swift_allocObject();
    v40 = xmmword_1001E61B0;
    *(v19 + 16) = xmmword_1001E61B0;
    strcpy(&v46, "salableAdamId");
    HIWORD(v46) = -4864;
    v20 = &type metadata for String;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v48, a4, (v19 + 32));
    sub_10000E1E8(&v48);
    sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v22 = String._bridgeToObjectiveC()();
    [v7 setProperty:isa forBodyKey:v22];

    v23 = swift_allocObject();
    *(v23 + 16) = v40;
    *&v46 = 0x54746375646F7270;
    *(&v46 + 1) = 0xEB00000000657079;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v48, a4, (v23 + 32));
    sub_10000E1E8(&v48);
    v24 = Array._bridgeToObjectiveC()().super.isa;

    v25 = String._bridgeToObjectiveC()();
    [v7 setProperty:v24 forBodyKey:v25];

    v46 = 0u;
    v47 = 0u;
    v42 = 0xD000000000000012;
    v43 = 0x80000001002011B0;
    AnyHashable.init<A>(_:)();
    sub_10000E0C8(&v48, a3, &v44);
    sub_10000E1E8(&v48);
    if (*(&v45 + 1))
    {
      sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_14:
        sub_100003C38(&v46, &v44);
        if (*(&v45 + 1))
        {
          sub_100002C4C(&v44, &v48);
          v20 = v49;
        }

        else
        {
          v49 = &type metadata for String;
          *&v48 = 0x6572756C696166;
          *(&v48 + 1) = 0xE700000000000000;
        }

        sub_100003CA8(&v48, v20);
        v36 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_100002C00(&v48);
        v37 = String._bridgeToObjectiveC()();
        [v7 setProperty:v36 forBodyKey:v37];
        swift_unknownObjectRelease();

        v38 = sub_100187620();
        [v38 enqueueEvent:v7];

        return sub_100002C5C(&v46);
      }

      v26 = v42;
      strcpy(&v44, "jingleDocType");
      HIWORD(v44) = -4864;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v48, v26, &v44);
      sub_10000E1E8(&v48);
      sub_100002C5C(&v46);
      v46 = v44;
      v47 = v45;
      v42 = 0x7363697274656DLL;
      v43 = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      sub_10000E0C8(&v48, v26, &v44);

      sub_10000E1E8(&v48);
      if (*(&v45 + 1))
      {
        if (swift_dynamicCast())
        {
          v27 = v42;
          *&v44 = 0x7365707954706173;
          *(&v44 + 1) = 0xE800000000000000;
          AnyHashable.init<A>(_:)();
          sub_10000E0C8(&v48, v27, &v44);

          sub_10000E1E8(&v48);
          v28 = *(&v45 + 1);
          if (*(&v45 + 1))
          {
            v29 = sub_100003CA8(&v44, *(&v45 + 1));
            v30 = *(v28 - 8);
            __chkstk_darwin(v29);
            v32 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v30 + 16))(v32);
            v33 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v30 + 8))(v32, v28);
            sub_100002C00(&v44);
          }

          else
          {
            v33 = 0;
          }

          v39 = String._bridgeToObjectiveC()();
          [v7 setProperty:v33 forBodyKey:v39];
          swift_unknownObjectRelease();
        }

        goto LABEL_14;
      }
    }

    sub_100002C5C(&v44);
    goto LABEL_14;
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F70;
  v49 = type metadata accessor for PodcastsEventManager();
  *&v48 = a2;

  v16 = AMSLogKey();
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v48);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v34 = static os_log_type_t.default.getter();
  sub_1000036B0(v34, v15);
}

id sub_10018901C()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  v2 = [objc_allocWithZone(AMSMetricsIdentifierStore) init];
  [v2 setAccount:v1];
  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  sub_100004D74();
  v3 = sub_1001AF38C();
  [v2 setClientInfo:v3];

  sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
  v4 = sub_1001875AC();
  sub_100004D74();
  v5 = String._bridgeToObjectiveC()();
  [v4 setApp:v5];

  sub_100002BC0(0, &qword_100271750, AMSMetricsIdentifierKey_ptr);
  v6 = sub_1001AF320(0x6449746E65696C63, 0xE800000000000000, 0);
  v7 = [v2 identifierForKey:v6];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10018A1CC(v8, v10, v4);
  [v4 setAnonymous:1];
  v11 = objc_opt_self();
  v12 = [v11 productType];
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100007710();
  [v14 v15];

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v17 = String._bridgeToObjectiveC()();
  sub_1000055B8(v17);

  v18 = [v11 operatingSystem];
  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v19;
    v18 = String._bridgeToObjectiveC()();
  }

  v20 = String._bridgeToObjectiveC()();
  sub_1000055B8(v20);

  v21 = [v11 buildVersion];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100007710();
  [v23 v24];

  if (v1 && (v25 = sub_10018A15C(v1), v26))
  {
    v43[0] = v25;
    v43[1] = v26;
    v27 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_100027DE8(v43);
  }

  else
  {
    v27 = 0;
  }

  v28 = String._bridgeToObjectiveC()();
  v29 = sub_100007710();
  [v29 v30];
  swift_unknownObjectRelease();

  v31 = objc_opt_self();
  v32 = [objc_opt_self() currentProcess];
  v33 = [v31 userAgentForProcessInfo:v32];

  if (!v33)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = String._bridgeToObjectiveC()();
  }

  v34 = String._bridgeToObjectiveC()();
  sub_1000055B8(v34);

  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  sub_1000055B8(v36);

  v37 = sub_1001AF320(0x644972657375, 0xE600000000000000, 1);
  v38 = [v2 identifierForKey:v37];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  v39 = String._bridgeToObjectiveC()();
  v40 = sub_100007710();
  [v40 v41];

  return v4;
}

void *sub_100189588(void *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v83 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v84 = &v80 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v80 - v9;
  __chkstk_darwin(v8);
  v12 = &v80 - v11;
  v13 = [a1 autoRenewEnabled];
  v88 = &type metadata for Bool;
  LOBYTE(v87) = v13;
  sub_100002C4C(&v87, &v86);
  swift_isUniquelyReferenced_nonNull_native();
  v85 = _swiftEmptyDictionarySingleton;
  sub_10000DFC4();
  v14 = v85;
  v15 = [a1 chargeStoreFrontID];
  if (v15)
  {
    v16 = v15;
    v88 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v87 = v16;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
    v14 = v85;
  }

  else
  {
    sub_100004D74();
    v17 = sub_100012A94();
    if (v18)
    {
      v19 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v14;
      v21 = v14[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v21);
      v14 = v86;

      sub_100002C4C((v14[7] + 32 * v19), &v87);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  v22 = [a1 expiration];
  if (v22)
  {
    v23 = v22;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v12, v10, v2);
    v24 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 serverTimeFromDate:isa];

    v88 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v87 = v26;
    sub_100006F5C();
    v85 = v14;
    sub_100008598();
    sub_10000DFC4();
    v14 = v85;
    (*(v3 + 8))(v12, v2);
  }

  v81 = v3;
  v82 = v2;
  v27 = [a1 featureAccessTypeId];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 description];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v88 = &type metadata for String;
    *&v87 = v30;
    *(&v87 + 1) = v32;
    sub_100006F5C();
    sub_100003494();
    sub_100023F20();
    sub_10000DFC4();
    v14 = v85;
  }

  else
  {
    sub_100023F20();
    sub_100012A94();
    if (v33)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  v34 = [a1 freeTrialPeriodId];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 description];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v88 = &type metadata for String;
    *&v87 = v37;
    *(&v87 + 1) = v39;
    sub_100006F5C();
    v85 = v14;
    sub_100023F20();
    sub_10000DFC4();
  }

  else
  {
    sub_100023F20();
    sub_100012A94();
    if (v40)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  v41 = [a1 inAppAdamId];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 description];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v88 = &type metadata for String;
    *&v87 = v44;
    *(&v87 + 1) = v46;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
  }

  else
  {
    sub_100012A94();
    if (v47)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008148();
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      sub_100006618();
      sub_100005A70();
      sub_10000AD20();
      sub_100019D84();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  [a1 initialPurchaseTimestamp];
  v88 = &type metadata for Double;
  *&v87 = v48;
  sub_100006F5C();
  sub_100003494();
  sub_100023F20();
  sub_10000DFC4();
  v49 = [a1 period];
  v88 = &type metadata for Bool;
  LOBYTE(v87) = (v49 & 4) != 0;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v50 = [a1 period];
  v88 = &type metadata for Bool;
  LOBYTE(v87) = (v50 & 2) != 0;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v51 = [a1 purchaser];
  v88 = &type metadata for Bool;
  LOBYTE(v87) = v51;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v52 = [a1 period];
  v88 = &type metadata for Bool;
  LOBYTE(v87) = v52 & 1;
  sub_10000BB1C();
  sub_10000C1A0();
  sub_100008598();
  sub_10000DFC4();
  v53 = v85;
  v54 = sub_100026484(a1, &selRef_offerId);
  if (v55)
  {
    v88 = &type metadata for String;
    *&v87 = v54;
    *(&v87 + 1) = v55;
    sub_10000BB1C();
    v85 = v53;
    sub_100008598();
    sub_10000DFC4();
    v53 = v85;
  }

  else
  {
    v56 = sub_100012A94();
    if (v57)
    {
      v58 = v56;
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v53;
      v60 = v53[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v60);
      v53 = v86;

      sub_100002C4C((v53[7] + 32 * v58), &v87);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  [a1 serviceBeginsTimestamp];
  v88 = &type metadata for Double;
  *&v87 = v61;
  sub_10000BB1C();
  v85 = v53;
  sub_100023F20();
  sub_10000DFC4();
  v62 = v85;
  v63 = [a1 startDate];
  if (v63)
  {
    v64 = v63;
    v65 = v83;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = v81;
    v66 = v82;
    v68 = v84;
    (*(v81 + 32))(v84, v65, v82);
    v69 = objc_opt_self();
    v70 = Date._bridgeToObjectiveC()().super.isa;
    v71 = [v69 serverTimeFromDate:v70];

    v88 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
    *&v87 = v71;
    sub_100006F5C();
    v85 = v62;
    sub_100008598();
    sub_10000DFC4();
    v62 = v85;
    (*(v67 + 8))(v68, v66);
  }

  v72 = sub_100026484(a1, &selRef_vendorAdHocOfferId);
  if (v73)
  {
    v88 = &type metadata for String;
    *&v87 = v72;
    *(&v87 + 1) = v73;
    sub_100006F5C();
    sub_100003494();
    sub_10000DFC4();
    return v85;
  }

  else
  {
    sub_100004D74();
    v74 = sub_100012A94();
    if (v75)
    {
      v76 = v74;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v62;
      v78 = v62[3];
      sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v77, v78);
      v62 = v86;

      sub_100002C4C((v62[7] + 32 * v76), &v87);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      sub_10000A4D0();
    }

    sub_100002C5C(&v87);
  }

  return v62;
}

uint64_t sub_10018A100()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10018A15C(void *a1)
{
  v2 = [a1 ams_storefront];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10018A1CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setClientIdentifier:v4];
}

uint64_t sub_10018A29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for ContentInfo(0);
  v5 = v4;
  if (v3)
  {
    v6 = sub_100004D80(*(*(v4 - 8) + 80));
    sub_1000B2AD0(v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10000A7C0(a2, v8, 1, v5);
}

uint64_t sub_10018A334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = sub_10007B9A4(&qword_100269FE0, &unk_1001E7550);
  v5 = v4;
  if (v3)
  {
    v6 = sub_100004D80(*(*(v4 - 8) + 80));
    sub_100161F04(v6, v7);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return sub_10000A7C0(a2, v8, 1, v5);
}

uint64_t sub_10018A3D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10018A408(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = String.index(_:offsetBy:limitedBy:)();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = String.subscript.getter();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10018A4DC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t *sub_10018A50C(uint64_t *result, uint64_t (*a2)(unint64_t *, unint64_t *), uint64_t a3, unint64_t a4)
{
  v6 = result;
  while ((a4 + 0x4000000000000000) >= 0)
  {
    if (__OFADD__(2 * a4, 2))
    {
      goto LABEL_16;
    }

    v7 = *v6;
    v8 = *(*v6 + 16);
    v9 = a4;
    if (v8 > ((2 * a4) | 1))
    {
      v13 = sub_10002B80C((2 * a4) | 1, *v6);
      v12 = sub_10002B80C(a4, v7);
      v10 = a2(&v13, &v12);

      if (v10)
      {
        v9 = (2 * a4) | 1;
      }

      else
      {
        v9 = a4;
      }

      v8 = *(v7 + 16);
    }

    if (v8 > (2 * a4 + 2))
    {
      v13 = sub_10002B80C(2 * a4 + 2, v7);
      v12 = sub_10002B80C(v9, v7);
      v11 = a2(&v13, &v12);

      if (v11)
      {
        v9 = 2 * a4 + 2;
      }
    }

    if (v9 == a4)
    {
      return result;
    }

    result = sub_10018A67C(a4, v9);
    a4 = v9;
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10018A67C(unint64_t result, unint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 <= result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= a2)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v7 = *(v4 + 32 + 8 * result);
  v8 = *(v4 + 32 + 8 * a2);

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v4);
    v4 = result;
    *v2 = result;
  }

  if (*(v4 + 16) <= v3)
  {
    goto LABEL_17;
  }

  *(v4 + 8 * v3 + 32) = v8;

  specialized ContiguousArray._endMutation()();
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v9);
    v9 = result;
    *v2 = result;
  }

  if (*(v9 + 16) <= a2)
  {
    goto LABEL_18;
  }

  *(v9 + 8 * a2 + 32) = v7;

  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_10018A7A8(uint64_t *a1, uint64_t (*a2)(unint64_t *, uint64_t *), uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = a4;
  v27 = a5;
  v9 = *a1;
  v26 = sub_10002B80C(a4, *a1);
  v10 = a2(&v26, &v27);

  if (v10)
  {
LABEL_31:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_10002B89C(v9);
    *a1 = v9;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v9 + 16) <= v6)
  {
    goto LABEL_26;
  }

  *(v9 + 8 * v6 + 32) = a5;

LABEL_7:

  result = specialized ContiguousArray._endMutation()();
  while (1)
  {
    v13 = v6 - 1;
    if (v6 < 1)
    {
      return result;
    }

    v14 = v6;
    v15 = *a1;
    v16 = *(*a1 + 16);
    if (v6 >= v16)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v17 = v15 + 32;
    v26 = *(v15 + 32 + 8 * v6);
    v6 = v13 >> 1;
    if (v13 >> 1 >= v16)
    {
      goto LABEL_24;
    }

    v25 = *(v17 + 8 * v6);

    v18 = a2(&v26, &v25);

    if ((v18 & 1) == 0)
    {
      return result;
    }

    if (v14 != v6)
    {
      v19 = *(v15 + 16);
      if (v14 >= v19)
      {
        goto LABEL_27;
      }

      if (v6 >= v19)
      {
        goto LABEL_28;
      }

      v20 = *(v17 + 8 * v14);
      v21 = *(v17 + 8 * v6);

      v22 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v15;
      if ((v22 & 1) == 0)
      {
        v15 = sub_10002B89C(v15);
        *a1 = v15;
      }

      if (v14 >= *(v15 + 16))
      {
        goto LABEL_29;
      }

      *(v15 + 8 * v14 + 32) = v21;

      specialized ContiguousArray._endMutation()();
      v23 = *a1;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_10002B89C(v23);
        *a1 = v23;
      }

      if (v6 < *(v23 + 16))
      {
        *(v23 + 8 * v6 + 32) = v20;
        goto LABEL_7;
      }

      goto LABEL_30;
    }
  }
}

void *sub_10018AA30()
{
  sub_10000602C(v0 + 16, v29);
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100027C2C(0, v2, 0);
  result = sub_100083958(v1);
  v6 = result;
  v7 = 0;
  v8 = v1 + 64;
  v24 = v4;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (*(v1 + 36) != v4)
    {
      goto LABEL_24;
    }

    v27 = v7;
    v28 = v4;
    v26 = v5;
    v10 = (*(v1 + 48) + 16 * v6);
    v11 = *v10;
    v12 = v10[1];
    v13 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];

    if (v13 >= v14 >> 1)
    {
      result = sub_100027C2C((v14 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v13];
    v15[4] = v11;
    v15[5] = v12;
    v16 = 1 << *(v1 + 32);
    if (v6 >= v16)
    {
      goto LABEL_25;
    }

    v8 = v1 + 64;
    v17 = *(v1 + 64 + 8 * v9);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_26;
    }

    if (*(v1 + 36) != v28)
    {
      goto LABEL_27;
    }

    v18 = v17 & (-2 << (v6 & 0x3F));
    if (v18)
    {
      v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v1 + 72 + 8 * v9);
      while (v20 < (v16 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_100083998(v6, v28, v26 & 1);
          v16 = __clz(__rbit64(v22)) + v19;
          goto LABEL_19;
        }
      }

      result = sub_100083998(v6, v28, v26 & 1);
    }

LABEL_19:
    v5 = 0;
    v7 = v27 + 1;
    v6 = v16;
    v4 = v24;
    if (v27 + 1 == v25)
    {

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t PriorityQueue.debugDescription.getter()
{
  v18 = 0;
  *&v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v23 = 0;
  v24 = 0xE000000000000000;
  v1._countAndFlagsBits = 0x6B726F576C6C6128;
  v1._object = 0xED0000203A737265;
  String.append(_:)(v1);
  sub_10000602C(v0 + 16, v22);
  type metadata accessor for Worker();

  sub_10000771C();
  v2 = Dictionary.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x80000001002012B0;
  String.append(_:)(v6);
  sub_10000602C(v0 + 24, v21);
  v7 = *(v0 + 48);
  LOBYTE(v18) = *(v0 + 24);
  v19 = *(v0 + 32);
  v20 = v7;
  sub_10007B9A4(&qword_100270120, &qword_1001EF7F0);
  _print_unlocked<A, B>(_:_:)();
  v8._countAndFlagsBits = 0x6E696E6E7572202CLL;
  v8._object = 0xEB00000000203A67;
  String.append(_:)(v8);
  v9 = sub_10018AC74();
  v10 = !v9;
  if (v9)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v10)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._object = 0x80000001002012D0;
  v14._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v14);
  sub_10000602C(v0 + 64, &v18);

  sub_10000771C();
  Dictionary.description.getter();

  v15._countAndFlagsBits = sub_100007F3C();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return v23;
}

uint64_t sub_10018AEEC()
{
  sub_10000F284(2, 0, v2);
  v5 = 1;
  v6 = *&v2[1];
  v7 = v3;
  *v8 = *v4;
  *&v8[15] = *&v4[15];
  v0 = sub_100027970();
  v9 = 1;
  v10 = *&v2[1];
  v11 = v3;
  *v12 = *v4;
  *&v12[15] = *&v4[15];
  sub_10000FF10(&v9);
  return v0;
}

uint64_t sub_10018AF98(uint64_t a1, uint64_t a2)
{
  if (qword_100268710 != -1)
  {
    sub_100006F8C();
    swift_once();
  }

  v5 = qword_100287870;

  sub_100149D14(v5, v2);
  sub_10018B09C(&v8);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_1000ED5B8();

  v12 = v9;
  sub_100027DE8(&v12);
  v11 = v10;
  sub_100027DE8(&v11);
}

uint64_t sub_10018B09C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000034A4();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  result = (*(v5 + 8))(v1, v3);
  *a1 = 257;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_10018B1A0(uint64_t a1, void (*a2)(uint64_t))
{
  if (qword_100268710 != -1)
  {
    swift_once();
  }

  v4 = qword_100287870;

  v5 = sub_100149E88(v4, a1);
  a2(v5);
  sub_10007B9A4(&qword_10026C8F0, &qword_1001EBDC0);
  return Promise.__allocating_init(value:)();
}

uint64_t PriorityQueue.deinit()
{

  return v0;
}

uint64_t PriorityQueue.__deallocating_deinit()
{
  PriorityQueue.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10018B300()
{
  v9[8] = 0;
  _StringGuts.grow(_:)(49);
  v1._countAndFlagsBits = 0x203A70706128;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  *v9 = *v0;
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0x656972726162202CLL;
  v2._object = 0xEB00000000203A72;
  String.append(_:)(v2);
  if (v0[1])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[1])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 0x4B6863746162202CLL;
  v6._object = 0xEC000000203A7965;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + 8));
  v7._countAndFlagsBits = 0x69726F697270202CLL;
  v7._object = 0xEC000000203A7974;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + 24));
  return *&v9[1];
}

uint64_t sub_10018B454(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E61;
  v4 = *a1;
  v7 = 0x636974796C616E61;
  v8 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v8 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v7 = 0x6E656D6D6F636572;
      v8 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  switch(*a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6C616E7265746E69;
      break;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v3 = 0x6E656D6D6F636572;
      v2 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v2)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_27:
      v13 = 0;
      return v13 & 1;
    }
  }

  v11 = *(a1 + 3) == *(a2 + 24) && *(a1 + 4) == *(a2 + 32);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v12 = *(a1 + 1) == *(a2 + 8) && *(a1 + 2) == *(a2 + 16);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v13 = a1[1] ^ *(a2 + 1) ^ 1;
  return v13 & 1;
}

uint64_t sub_10018B640()
{
  v11 = 0;
  *&v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  v15 = 0;
  v16 = 0xE000000000000000;
  v1._countAndFlagsBits = 0x282072656B726F57;
  v1._object = 0xED0000203A79656BLL;
  String.append(_:)(v1);
  v2 = *(v0 + 49);
  v3 = *(v0 + 56);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  LOBYTE(v11) = *(v0 + 48);
  BYTE1(v11) = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  _print_unlocked<A, B>(_:_:)();
  v6._object = 0x8000000100201410;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  result = sub_10000602C(v0 + 16, &v11);
  if (__OFSUB__(*(v0 + 40) >> 1, *(v0 + 32)))
  {
    __break(1u);
  }

  else
  {
    sub_100007F3C();
    v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000013;
    v9._object = 0x8000000100201430;
    String.append(_:)(v9);
    sub_100007F3C();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    return v15;
  }

  return result;
}

uint64_t sub_10018B7C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_10018B804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10018B91C()
{
  sub_100003D74();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  type metadata accessor for NWProtocolOptions();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_12;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_21:
  v15 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_1000D6AC0((v7 + 8 * v4), v15 - v4, v1);
  if (v5)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *(v6 + 16);
  }

  if (__OFADD__(v16, v12))
  {
    goto LABEL_23;
  }

  *(v6 + 16) = v16 + v12;
LABEL_12:
  if (v3 < 1)
  {
    sub_100005F14();
  }

  else
  {
    v17 = v6 + 8 * v2;
    *(v17 + 32) = v0;
    if (v17 + 40 < v1)
    {

      __break(1u);
    }

    sub_100005F14();
  }
}

uint64_t sub_10018BA60(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10007B9A4(&qword_10026BF68, &unk_1001EA280);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_10004F7A4(v7 + 32 + 16 * a2, v11 - a2, v8 + 16 * a3);
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018BB1C(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_10018BB64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1000116AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for Worker();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_100006070(&qword_1002703B8, &qword_1002703B0, &unk_1001EF9B8, &protocol conformance descriptor for [A]);
        for (i = 0; i != v7; ++i)
        {
          sub_10007B9A4(&qword_1002703B0, &unk_1001EF9B8);
          v9 = sub_10018BCE8(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10018BCE8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  v4 = sub_10006ED08(a3);
  sub_1000F1168();
  if (v4)
  {
  }

  else
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v5;
  return sub_10018BD74;
}

void (*sub_10018BD7C(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_10006ED08(a3);
  sub_1000F1168();
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return sub_10018BE08;
}

uint64_t sub_10018BE20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_10002B89C(v3);
    v3 = result;
    *v1 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 8 * a1;
    v9 = *(v8 + 32);
    sub_1000D6AC0((v8 + 40), v7, (v8 + 32));
    *(v3 + 16) = v6;
    specialized ContiguousArray._endMutation()();
    return v9;
  }

  return result;
}

void *sub_10018BED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_10004EB78(*(a1 + 16), 0);
  sub_10018C670();
  v4 = v3;
  sub_10004EB70(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_10018BF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(*(v4 + OBJC_IVAR____TtC14amsengagementd11PushService_publishers) + 16))
  {
    return 0;
  }

  sub_100012A94();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  sub_10007B9A4(&qword_100270478, &qword_1001EF9E0);
  sub_100006070(&unk_100270480, &qword_100270478, &qword_1001EF9E0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v9 = Publisher.sink(receiveCompletion:receiveValue:)();

  return v9;
}

id sub_10018C0A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10018C130()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v6 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
  *(v11 - v10) = v13;
  (*(v8 + 104))(v11 - v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v12, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
    v16 = sub_10018C7BC(v3);
    if (!v17)
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v21 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v21);
      v22 = sub_100007CB8();
      *(v22 + 16) = xmmword_1001E5F70;
      v34 = type metadata accessor for PushService();
      v33[0] = v0;
      v23 = v0;
      v24 = AMSLogKey();
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v33);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v29._countAndFlagsBits = 0xD00000000000002CLL;
      v29._object = 0x80000001002014B0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
      v34 = sub_100002BC0(0, &unk_100270468, APSIncomingMessage_ptr);
      v33[0] = v3;
      v30 = v3;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(v33);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v31 = static os_log_type_t.info.getter();
      sub_1000036B0(v31, v22);
      goto LABEL_14;
    }

    v6 = v17;
    v32 = v16;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v18);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v34 = type metadata accessor for PushService();
    v33[0] = v0;
    v1 = v0;
    v19 = AMSLogKey();
    if (v19)
    {
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._object = 0x80000001002014E0;
    v26._countAndFlagsBits = 0xD00000000000001ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    v34 = sub_100002BC0(0, &unk_100270468, APSIncomingMessage_ptr);
    v33[0] = v3;
    v3 = v3;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(v33);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 == -1)
    {
LABEL_9:
      v27 = static os_log_type_t.info.getter();
      sub_1000036B0(v27, v15);

      if (sub_100012A40(v32, v6, *&v1[OBJC_IVAR____TtC14amsengagementd11PushService_publishers]))
      {
        v28 = v3;

        v33[0] = v28;
        PassthroughSubject.send(_:)();

LABEL_15:
        sub_100005F14();
        return;
      }

LABEL_14:

      goto LABEL_15;
    }

LABEL_17:
    sub_100002D44(&qword_1002686B0);
    goto LABEL_9;
  }

  __break(1u);
}

void sub_10018C670()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_100005F14();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10018C7BC(void *a1)
{
  v1 = [a1 topic];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10018C85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = a1;
  v79 = a2;
  v62 = a3;
  v64 = type metadata accessor for JSBytecodeSource();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  v5 = __chkstk_darwin(v4 - 8);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v81 = &v61 - v8;
  __chkstk_darwin(v7);
  v77 = &v61 - v9;
  v10 = type metadata accessor for URL();
  v80 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v65 = &v61 - v14;
  __chkstk_darwin(v13);
  v84 = &v61 - v15;
  v16 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v82 = qword_100287828;
  v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 72);
  v20 = *(v18 + 80);
  v21 = (v20 + 32) & ~v20;
  v72 = v21 + 2 * v19;
  v73 = v20;
  v76 = v17;
  v22 = swift_allocObject();
  v71 = xmmword_1001E5F70;
  *(v22 + 16) = xmmword_1001E5F70;
  v74 = v21;
  v23 = sub_10007B9A4(&qword_1002704B8, &qword_1001EFA40);
  v24 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = v23;
  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000019;
  v25._object = 0x80000001002016D0;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  v83[3] = v10;
  v26 = sub_100017E64(v83);
  v27 = v80;
  v28 = *(v80 + 16);
  v28(v26, v78, v10);
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10000A064(v83, &qword_10026D350, &qword_1001E6050);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
  v70 = v19;
  LogInterpolation.init(stringInterpolation:)();
  v30 = static os_log_type_t.debug.getter();
  sub_1000036B0(v30, v22);

  v31 = type metadata accessor for JSStackContext(0);
  v32 = v79;
  v33 = v77;
  sub_10001EC70(v79 + v31[8], v77);
  if (sub_100009F34(v33, 1, v10) == 1)
  {
    v34 = v28;
    v28(v84, v32 + v31[10], v10);
    if (sub_100009F34(v33, 1, v10) != 1)
    {
      sub_10000A064(v33, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v34 = v28;
    (*(v27 + 32))(v84, v33, v10);
  }

  v35 = v32 + v31[5];
  v36 = v81;
  sub_10001EC70(v35, v81);
  v77 = v10;
  v37 = sub_100009F34(v36, 1, v10);
  v38 = swift_allocObject();
  *(v38 + 16) = v71;
  v39 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  if (v37 == 1)
  {
    v40 = static os_log_type_t.debug.getter();
  }

  else
  {
    v40 = static os_log_type_t.info.getter();
  }

  v41 = v78;
  sub_1000036B0(v40, v38);

  v42 = v77;
  v34(v65, v41, v77);
  v34(v66, v84, v42);
  v43 = v81;
  sub_10001EC70(v81, v67);
  v44 = *(v79 + v31[12]);
  v46 = v68;
  v45 = v69;
  JSBytecodeSource.init(fileURL:sourceURL:cacheURL:virtualMachine:)();
  if (v46)
  {
    goto LABEL_11;
  }

  v47 = JSBytecodeSource.isUsingBytecodeCache.getter();
  v48 = swift_allocObject();
  *(v48 + 16) = v71;
  v49 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  if (v47)
  {
    LogInterpolation.init(stringLiteral:)();
    v50 = static os_log_type_t.info.getter();
    sub_1000036B0(v50, v48);

    goto LABEL_14;
  }

  LogInterpolation.init(stringLiteral:)();
  v52 = static os_log_type_t.debug.getter();
  sub_1000036B0(v52, v48);

  v51 = v77;
  if (sub_100009F34(v43, 1, v77) == 1)
  {
    goto LABEL_16;
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v71;
  v58 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v59 = static os_log_type_t.debug.getter();
  sub_1000036B0(v59, v57);

  JSBytecodeSource.cacheBytecode()();
  if (!v60)
  {
LABEL_14:
    v51 = v77;
LABEL_16:
    v53 = v64;
    v54 = v62;
    v62[3] = v64;
    v54[4] = &protocol witness table for JSBytecodeSource;
    v55 = sub_100017E64(v54);
    (*(v63 + 32))(v55, v69, v53);
    (*(v80 + 8))(v84, v51);
    return sub_10000A064(v43, &unk_10026FEE0, &unk_1001E67C0);
  }

  (*(v63 + 8))(v45, v64);
  v42 = v77;
LABEL_11:
  (*(v80 + 8))(v84, v42);
  return sub_10000A064(v43, &unk_10026FEE0, &unk_1001E67C0);
}

uint64_t sub_10018D198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v205 = a3;
  v214 = a2;
  v181 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = sub_100006FA0(v3, &v223);
  v201 = v5;
  __chkstk_darwin(v4);
  sub_1000052A4();
  sub_1000034BC(v6);
  v7 = sub_10007B9A4(&qword_1002704B0, &qword_1001EFA38);
  sub_100006FA0(v7, &v222 + 8);
  v199[2] = v8;
  sub_100004E78();
  __chkstk_darwin(v9);
  sub_1000074D8();
  sub_1000034BC(v10);
  v11 = sub_10007B9A4(&qword_1002704B8, &qword_1001EFA40);
  sub_100006FA0(v11, &v221);
  v198 = v12;
  sub_100004E78();
  __chkstk_darwin(v13);
  sub_1000074D8();
  sub_1000034BC(v14);
  v15 = sub_10007B9A4(&qword_1002704C0, &qword_1001EFA48);
  sub_100006FA0(v15, &v219 + 8);
  v195 = v16;
  sub_100004E78();
  __chkstk_darwin(v17);
  sub_1000074D8();
  sub_1000034BC(v18);
  v19 = sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  sub_100006FA0(v19, v217);
  v192 = v20;
  sub_100004E78();
  __chkstk_darwin(v21);
  sub_1000074D8();
  sub_1000034BC(v22);
  v23 = sub_10007B9A4(&qword_1002704D0, &qword_1001EFA58);
  sub_100006FA0(v23, v216);
  v190 = v24;
  sub_100004E78();
  __chkstk_darwin(v25);
  sub_1000074D8();
  sub_1000034BC(v26);
  v27 = type metadata accessor for JetpackBundle.Resource();
  v28 = sub_100006FA0(v27, &v226);
  v213 = v29;
  __chkstk_darwin(v28);
  sub_1000052A4();
  sub_1000034BC(v30);
  v31 = sub_10007B9A4(&qword_1002704D8, &unk_1001EFA60);
  sub_100006FA0(v31, &v225);
  v212 = v32;
  sub_100004E78();
  __chkstk_darwin(v33);
  sub_1000074D8();
  sub_1000034BC(v34);
  v35 = type metadata accessor for JSStackContext(0);
  v36 = sub_100006FA0(v35, &v224);
  v189 = v37;
  __chkstk_darwin(v36);
  v208 = v38;
  sub_1000034BC(v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_10007B9A4(&qword_1002704E0, &qword_1001EFB30);
  sub_100006FA0(v39, &v203);
  v179[8] = v40;
  sub_100004E78();
  __chkstk_darwin(v41);
  sub_1000074D8();
  sub_1000034BC(v42);
  v43 = sub_10007B9A4(&qword_1002704E8, &qword_1001EFA70);
  sub_100006FA0(v43, &v200);
  v179[5] = v44;
  sub_100004E78();
  __chkstk_darwin(v45);
  sub_1000074D8();
  sub_1000034BC(v46);
  v47 = sub_10007B9A4(&qword_1002704F0, &qword_1001EFA78);
  sub_100006FA0(v47, &v214);
  v187 = v48;
  sub_100004E78();
  __chkstk_darwin(v49);
  sub_1000074D8();
  sub_1000034BC(v50);
  v51 = sub_10007B9A4(&qword_1002704F8, &qword_1001EFA80);
  v52 = sub_100006FA0(v51, &v211);
  v184 = v53;
  v54 = __chkstk_darwin(v52);
  v180 = v179 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  sub_1000034BC(v179 - v56);
  v57 = sub_10007B9A4(&qword_100270500, &qword_1001EFA88);
  sub_100006FA0(v57, v199);
  v179[1] = v58;
  sub_100004E78();
  __chkstk_darwin(v59);
  sub_1000074D8();
  sub_1000034BC(v60);
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  v206 = qword_100287828;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v61 = swift_allocObject();
  v182 = xmmword_1001E5F70;
  *(v61 + 16) = xmmword_1001E5F70;
  *(&v220 + 1) = &type metadata for RemoteJetpackLoader;
  v62 = AMSLogKey();
  if (v62)
  {
    v63 = v62;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v219);
  LogInterpolation.init(stringLiteral:)();
  static os_log_type_t.info.getter();
  sub_10000AD48();
  sub_1000036B0(v64, v65);

  sub_100002BC0(0, &qword_10026D648, AMSProcessInfo_ptr);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v203 = v219;
  v66 = [objc_opt_self() defaultManager];
  v183 = v204[7];
  URL.path.getter();
  v67 = String._bridgeToObjectiveC()();

  v68 = [v66 fileExistsAtPath:v67];

  *(swift_allocObject() + 16) = v182;
  if (v68)
  {
    *(&v220 + 1) = &type metadata for RemoteJetpackLoader;
    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v73 = v214;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v219);
    LogInterpolation.init(stringLiteral:)();
    static os_log_type_t.info.getter();
    sub_10000AD48();
    sub_1000036B0(v74, v75);

    v76 = type metadata accessor for URL();
    static Pipeline.start<A>(with:)();
    type metadata accessor for JetpackBundle();
    sub_10000772C();
    PipelinePhase.init(mapOutput:)();
    sub_1000085A4(&qword_100270598, &qword_100270500, &qword_1001EFA88);
    v77 = PipelineTask.andThen<A>(_:)();
    v78 = sub_1000055DC();
    v79(v78, v185);
    sub_100007CE0();
    v80 = sub_10000569C();
    v81(v80);
    *&v219 = v77;
    sub_10000772C();
    static PipelinePhase.cacheValueIfSuccessful()();
    v82 = sub_10000569C();
    sub_10007B9A4(v82, v83);
    sub_10000A4DC();
    sub_100006070(v84, v85, v86, v87);
  }

  else
  {
    *(&v220 + 1) = &type metadata for RemoteJetpackLoader;
    v71 = AMSLogKey();
    if (v71)
    {
      v72 = v71;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v73 = v214;
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v219);
    LogInterpolation.init(stringLiteral:)();
    static os_log_type_t.debug.getter();
    sub_10000AD48();
    sub_1000036B0(v88, v89);

    sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
    v90 = v179[4];
    static Pipeline.start<A>(with:)();
    v91 = *(v181 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 16);
    v219 = *(v181 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config);
    v220 = v91;
    v92 = *(v181 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 48);
    v221 = *(v181 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 32);
    v222 = v92;
    v93 = BYTE1(v219);
    sub_100002BC0(0, &qword_10026D640, AMSURLSession_ptr);
    inject<A, B>(_:from:)();
    v94 = v218;
    if (qword_1002685F8 != -1)
    {
      swift_once();
    }

    v95 = qword_10026A070;
    v96 = v211;
    sub_1000345E0(v73, v211);
    type metadata accessor for SourceFetcher(0);
    swift_allocObject();
    v97 = v94;
    v98 = v203;
    sub_1000346F4(&v219, v96, v97, v203, v95);
    sub_10000F4A4(&v219, &v215);
    v76 = type metadata accessor for URL();
    v99 = v98;
    swift_unknownObjectRetain();
    sub_10000772C();
    sub_10000A4DC();
    PipelinePhase.init(mapOutput:)();
    sub_1000085A4(&qword_100270508, &qword_1002704E8, &qword_1001EFA70);
    v100 = v179[6];
    v101 = PipelineTask.andThen<A>(_:)();
    v102 = sub_1000055DC();
    v103(v102, v179[9]);
    sub_100007CE0();
    v104(v90, v100);
    v215 = v101;
    sub_10018E8CC(v93);
    if (sub_100024F14())
    {
      type metadata accessor for Defaults();
      sub_1000287B4(1);
    }

    type metadata accessor for JetpackBundle();
    sub_10000772C();
    static PipelinePhase<>.unpackJetpack(keyURLs:bundleOutputURL:artifactStoreURL:verifySignature:)();

    sub_10007B9A4(&qword_100270510, &qword_1001EFA90);
    sub_100006070(&qword_100270518, &qword_100270510, &qword_1001EFA90, &protocol conformance descriptor for MapPipelineTask<A, B>);
    sub_100023F2C();
    v105 = PipelineTask.andThen<A>(_:)();
    v106 = sub_1000055DC();
    v107(v106, v185);

    v215 = v105;
    sub_10000772C();
    static PipelinePhase.cacheValueIfSuccessful()();
    v108 = sub_10000569C();
    sub_10007B9A4(v108, v109);
    sub_10000A4DC();
    sub_100006070(v110, v111, v112, &protocol conformance descriptor for MapPipelineTask<A, B>);
  }

  v113 = PipelineTask.andThen<A>(_:)();
  v114 = sub_1000055DC();
  v115(v114, v188);

  v205 = v113;
  v215 = v113;
  v116 = v194;
  *v194 = xmmword_1001EF9F0;
  v116[1] = xmmword_1001EFA00;
  v117 = v213;
  v118 = *(v213 + 104);
  v187 = v213 + 104;
  v188 = v118;
  v118(v116, enum case for JetpackBundle.Resource.other(_:), v210);
  type metadata accessor for URL();

  v119 = v207;
  static PipelinePhase<>.urlForResource(_:)();
  v120 = *(v117 + 8);
  v213 = v117 + 8;
  v186 = v120;
  v121 = sub_100007F3C();
  v122(v121);
  v123 = sub_10000569C();
  v185 = sub_10007B9A4(v123, v124);
  v204 = &protocol conformance descriptor for MapPipelineTask<A, B>;
  v184 = sub_100006070(&qword_100270538, &qword_100270530, &qword_1001EFAA0, &protocol conformance descriptor for MapPipelineTask<A, B>);
  v125 = PipelineTask.andThen<A>(_:)();
  v126 = *(v212 + 8);
  v212 += 8;
  v183 = v126;
  v126(v119, v209);
  v215 = v125;
  *(swift_allocObject() + 16) = 1;
  v180 = v76;
  sub_10000772C();
  PipelinePhase.init(mapOutput:)();
  v127 = sub_10000569C();
  *&v182 = sub_10007B9A4(v127, v128);
  sub_10000A4DC();
  v181 = sub_100006070(v129, v130, v131, &protocol conformance descriptor for MapPipelineTask<A, B>);
  v132 = PipelineTask.andThen<A>(_:)();
  v133 = sub_1000055DC();
  v134(v133, v191);

  v215 = v132;
  v135 = v211;
  sub_1000345E0(v73, v211);
  v136 = (*(v189 + 80) + 16) & ~*(v189 + 80);
  v137 = sub_10000B0A0(&unk_100251450);
  sub_100034690(v135, v137 + v136);
  type metadata accessor for JSPackageIndex();
  sub_10000772C();
  PipelinePhase.init(mapOutput:)();
  sub_10007B9A4(&qword_100270550, &unk_1001EFAB0);
  v138 = v204;
  sub_100006070(&qword_100270558, &qword_100270550, &unk_1001EFAB0, v204);
  sub_100023F2C();
  v139 = PipelineTask.andThen<A>(_:)();
  v140 = sub_1000055DC();
  v141(v140, v193);

  v215 = v139;
  sub_10000772C();
  static PipelinePhase.cacheValueIfSuccessful()();
  v142 = sub_10000569C();
  sub_10007B9A4(v142, v143);
  sub_10000A4DC();
  sub_100006070(v144, v145, v146, v138);
  sub_100023F2C();
  v206 = PipelineTask.andThen<A>(_:)();
  v147 = sub_1000055DC();
  v148(v147, v196);

  v215 = v205;
  v149 = v210;
  v188(v116, enum case for JetpackBundle.Resource.source(_:), v210);
  v150 = v207;
  static PipelinePhase<>.urlForResource(_:)();
  v186(v116, v149);
  v151 = PipelineTask.andThen<A>(_:)();
  v183(v150, v209);

  v215 = v151;
  v152 = v211;
  sub_1000345E0(v214, v211);
  v153 = sub_10000B0A0(&unk_100251478);
  sub_100034690(v152, v153 + v136);
  sub_10007B9A4(&qword_100270570, &qword_1001EFAC0);
  v154 = v197;
  PipelinePhase.init(mapOutput:)();
  v155 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v156(v154, v199[0]);

  v215 = v155;
  v157 = v199[1];
  static PipelinePhase.cacheValueIfSuccessful()();
  sub_10007B9A4(&qword_100270578, &qword_1001EFAC8);
  sub_100006070(&qword_100270580, &qword_100270578, &qword_1001EFAC8, v204);
  v214 = PipelineTask.andThen<A>(_:)();
  sub_100007CE0();
  v158(v157, v199[3]);

  dispatch thunk of MapPipelineTask.run()();
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v159 = enum case for DispatchQoS.QoSClass.default(_:);
  v160 = v201;
  v161 = *(v201 + 104);
  v162 = v200;
  v163 = v202;
  v161(v200, enum case for DispatchQoS.QoSClass.default(_:), v202);
  v164 = static OS_dispatch_queue.global(qos:)();
  v165 = *(v160 + 8);
  v166 = sub_100007F3C();
  v165(v166);
  v167 = sub_100004D94();
  v213 = sub_10018F648(v167, v168, v169, v170);

  sub_10000AD48();
  dispatch thunk of MapPipelineTask.run()();
  v216[0] = type metadata accessor for SyncTaskScheduler();
  v216[1] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(&v215);
  SyncTaskScheduler.init()();
  Promise.map<A>(on:_:)();

  sub_100002C00(&v215);
  v161(v162, v159, v163);
  v171 = static OS_dispatch_queue.global(qos:)();
  v172 = sub_100007F3C();
  v165(v172);
  v173 = sub_100004D94();
  sub_10018F67C(v173, v174, v175, v176);

  sub_10007B9A4(&qword_100270588, &unk_1001EFAD0);
  sub_100006070(&qword_100270590, &qword_100270588, &unk_1001EFAD0, &protocol conformance descriptor for Promise<A>);
  v177 = Promise.join<A>(with:)();

  return v177;
}

uint64_t sub_10018E8CC(char a1)
{
  v1 = "D-427F-A2DB-210A3CF561AA.jetkey";
  v2 = "7C-22F48DD69B3B.jetkey";
  switch(a1)
  {
    case 1:
      v1 = "8-4BE0-99D0-8EDB16AED7F1.jetkey";
      v3 = "/System/Library/Jet/37813A2D-6EFD-427F-A2DB-210A3CF561AA.jetkey";
      goto LABEL_5;
    case 2:
      v1 = "2-4F54-B6DD-F6F0E53472C9.jetkey";
      v3 = "/System/Library/Jet/3E0745DA-AE48-4BE0-99D0-8EDB16AED7F1.jetkey";
      goto LABEL_5;
    case 3:
      v1 = "Utilizing byteCodeCache";
      v3 = "/System/Library/Jet/A4E7B7FA-58C2-4F54-B6DD-F6F0E53472C9.jetkey";
LABEL_5:
      v2 = (v3 - 32);
      break;
    default:
      break;
  }

  v4 = Dictionary.init(dictionaryLiteral:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000ACBEC(0xD000000000000046, v1 | 0x8000000000000000, 0, isUniquelyReferenced_nonNull_native);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000ACBEC(0xD00000000000003FLL, v2 | 0x8000000000000000, 1, v6);
  v7 = sub_10018EE9C(v4);

  return v7;
}

uint64_t sub_10018EA18(uint64_t a1)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E5F60;
  v9 = &type metadata for RemoteJetpackLoader;
  v2 = AMSLogKey();
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v8);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v9 = v7;
  v4 = sub_100017E64(v8);
  (*(v7[-1].Description + 2))(v4);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v8, &qword_10026D350, &qword_1001E6050);
  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5, v1);

  swift_willThrow();
  return swift_errorRetain();
}

uint64_t sub_10018EC44@<X0>(uint64_t *a2@<X8>)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v11 = &type metadata for RemoteJetpackLoader;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v10);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v11 = v9;
  v6 = sub_100017E64(v10);
  (*(v9[-1].Description + 2))(v6);
  static LogInterpolation.safe(_:)();
  sub_10000A064(v10, &qword_10026D350, &qword_1001E6050);
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v3);

  result = Dictionary.init(dictionaryLiteral:)();
  *a2 = result;
  return result;
}

uint64_t sub_10018EE9C(uint64_t a1)
{
  v2 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v47 = type metadata accessor for URL();
  v5 = __chkstk_darwin(v47);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v41 = &v40 - v8;
  v10 = a1 + 64;
  v9 = *(a1 + 64);
  v44 = _swiftEmptyDictionarySingleton;
  v49 = _swiftEmptyDictionarySingleton;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (v11 + 63) >> 6;
  v40 = v7;
  v42 = (v7 + 32);
  v48 = a1;

  v16 = 0;
  v46 = v4;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v45 = *(*(v48 + 48) + 8 * (__clz(__rbit64(v13)) | (v16 << 6)));
    v18 = objc_opt_self();

    v19 = [v18 defaultManager];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 fileExistsAtPath:v20];

    if (v21)
    {
      v22 = v46;
      URL.init(fileURLWithPath:)();
      v23 = 0;
    }

    else
    {
      v23 = 1;
      v22 = v46;
    }

    v13 &= v13 - 1;
    v24 = v47;
    sub_10000A7C0(v22, v23, 1, v47);

    if (sub_100009F34(v22, 1, v24) == 1)
    {
      result = sub_10000A064(v22, &unk_10026FEE0, &unk_1001E67C0);
    }

    else
    {
      v25 = v41;
      v26 = *v42;
      v27 = v47;
      (*v42)(v41, v22, v47);
      v26(v43, v25, v27);
      if (v44[3] <= v44[2])
      {
        sub_1001C6BAC();
      }

      v28 = v49;
      v29 = v45;
      result = static Hasher._hash(seed:_:)();
      v30 = v28 + 8;
      v44 = v28;
      v31 = -1 << *(v28 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~v28[(v32 >> 6) + 8]) == 0)
      {
        v35 = 0;
        v36 = (63 - v31) >> 6;
        while (++v33 != v36 || (v35 & 1) == 0)
        {
          v37 = v33 == v36;
          if (v33 == v36)
          {
            v33 = 0;
          }

          v35 |= v37;
          v38 = v30[v33];
          if (v38 != -1)
          {
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v34 = __clz(__rbit64((-1 << v32) & ~v28[(v32 >> 6) + 8])) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v39 = v44;
      *(v44[6] + 8 * v34) = v29;
      result = (v26)(v39[7] + *(v40 + 72) * v34, v43, v47);
      ++v39[2];
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v44;
    }

    v13 = *(v10 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10018F2F4()
{
  sub_100004DA8();
  v0 = sub_100005AA0();
  return sub_10018F608(v0, v1, v2);
}

uint64_t sub_10018F34C()
{
  sub_100004DA8();
  v0 = sub_100005AA0();
  return sub_10018C85C(v0, v1, v2);
}

uint64_t sub_10018F3E4(uint64_t a1, uint64_t a2)
{
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001E5F60;
  v9 = &type metadata for RemoteJetpackV2Loader;
  if (*(a2 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v8);
  LogInterpolation.init(stringLiteral:)();
  swift_getErrorValue();
  v9 = v7;
  v4 = sub_100017E64(v8);
  (*(v7[-1].Description + 2))(v4);
  static LogInterpolation.safe(_:)();
  sub_10000A00C(v8, &qword_10026D350, &qword_1001E6050);
  v5 = static os_log_type_t.error.getter();
  sub_1000036B0(v5, v3);

  swift_willThrow();
  return swift_errorRetain();
}

void sub_10018F6BC(void *a1)
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1001E5F70;
  v7[3] = type metadata accessor for RunLoop();
  v7[0] = a1;
  v3 = a1;
  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v7);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v6 = static os_log_type_t.default.getter();
  sub_1000036B0(v6, v2);

  exit(0);
}

void sub_10018F840()
{
  v1 = OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *(v0 + v1) = 0;

    swift_unknownObjectRelease();
  }
}

void sub_10018F8C4()
{
  if (qword_100268608 != -1)
  {
    sub_100007CEC(&qword_100268608);
  }

  sub_10009DF2C();
  sub_1001A2338();

  sub_10018F840();
}

void sub_10018F930()
{
  if (qword_1002687B0 != -1)
  {
    swift_once();
  }

  sub_10016E220(0);
}

id sub_10018F98C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunLoop();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_10018FA34(uint64_t a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100005338();
  v4 = sub_10007B9A4(&qword_100269F90, &qword_1001E8720);
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  type metadata accessor for AppDatabase();
  v8 = sub_100006674();
  sub_10001D804(v8, v9);
  sub_100041404();

  v10 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_1000A77EC(*(a1 + *(v10 + 44)), *(a1 + *(v10 + 44) + 8), v7);

  v12 = type metadata accessor for ScheduleInfo(0);
  v13 = sub_100009F34(v7, 1, v12) != 1;
  sub_100009FB0(v7, &qword_100269F90, &qword_1001E8720);
  return v13;
}

uint64_t sub_10018FD5C(uint64_t a1)
{
  v1 = type metadata accessor for LogInterpolation.StringInterpolation();
  v2 = sub_100003D10(v1);
  __chkstk_darwin(v2);
  sub_100005338();
  if (qword_100268718 != -1)
  {
    sub_100006FD0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v3 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v3);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001E5F70;
  v5 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v6._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v6);
  v7 = a1 + *(type metadata accessor for ScheduleInfo(0) + 20);
  v33 = &type metadata for String;
  v31 = sub_100065DAC();
  v32 = v8;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v31, &qword_10026D350, &qword_1001E6050);
  v9._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  LogInterpolation.init(stringInterpolation:)();
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v4);

  type metadata accessor for AppDatabase();
  v11 = sub_100006674();
  sub_10001D804(v11, v12);
  if (v28)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD00000000000001ALL;
    v15._object = 0x8000000100201D60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v16 = (v7 + *(type metadata accessor for ScheduleInfo.Metadata(0) + 44));
    v18 = *v16;
    v17 = v16[1];
    v33 = &type metadata for String;
    v31 = v18;
    v32 = v17;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v19 = sub_100005ACC();
    sub_100009FB0(v19, v20, &qword_1001E6050);
    v21._countAndFlagsBits = 8238;
    v21._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    swift_getErrorValue();
    v33 = v30;
    sub_100017E64(&v31);
    sub_1000047A4();
    (*(v22 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v23 = sub_100005ACC();
    sub_100009FB0(v23, v24, &qword_1001E6050);
    v25._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26, v13);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A9108(a1);
  }
}

uint64_t sub_100190178(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = type metadata accessor for LogInterpolation.StringInterpolation();
  v4 = sub_100003D10(v3);
  __chkstk_darwin(v4);
  sub_100005338();
  if (qword_100268718 != -1)
  {
    sub_100006FD0();
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_100003EFC();
  v5 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F70;
  v7 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100004810();
  v8._countAndFlagsBits = 0xD000000000000012;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
  v31 = &type metadata for String;
  v29 = a1;
  v30 = a2;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v29, &qword_10026D350, &qword_1001E6050);
  v9._countAndFlagsBits = 0x206D6F726620;
  v9._object = 0xE600000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v9);
  v31 = &unk_1002471C0;
  LOBYTE(v29) = a3;
  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100009FB0(&v29, &qword_10026D350, &qword_1001E6050);
  v10._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  LogInterpolation.init(stringInterpolation:)();
  v11 = static os_log_type_t.default.getter();
  sub_1000036B0(v11, v6);

  type metadata accessor for AppDatabase();
  sub_10001D804(a3, 0);
  if (v25)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v13 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0xD00000000000001CLL;
    v14._object = 0x8000000100201CF0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
    v31 = &type metadata for String;
    v29 = a1;
    v30 = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v15 = sub_100005ACC();
    sub_100009FB0(v15, v16, &qword_1001E6050);
    v17._countAndFlagsBits = 8238;
    v17._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    swift_getErrorValue();
    v31 = v28;
    sub_100017E64(&v29);
    sub_1000047A4();
    (*(v18 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    v19 = sub_100005ACC();
    sub_100009FB0(v19, v20, &qword_1001E6050);
    v21._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22, v12);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A8D54(a1, a2);
  }
}

uint64_t sub_1001905D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1000EF5D0();
  v4 = *(*(a2 + 16) + 16);
  sub_1000EF65C(v4);
  v5 = *(a2 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_100002CFC(v6);
  sub_100190A08(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v8 + 72) * v4);
  *(a2 + 16) = v5;
  swift_endAccess();
  return 1;
}

uint64_t sub_1001906AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  type metadata accessor for AppDatabase();
  sub_10001D804(a3, 0);
  if (v4)
  {
    v22 = a1;
    if (qword_100268718 != -1)
    {
      sub_100006FD0();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v25 = &type metadata for ScheduleDatabase;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v24);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v15._countAndFlagsBits = 0xD000000000000029;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v25 = &type metadata for String;
    v24[0] = v22;
    v24[1] = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v16._countAndFlagsBits = 0x70706120726F6620;
    v16._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    v25 = &unk_1002471C0;
    LOBYTE(v24[0]) = a3;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v17._countAndFlagsBits = 8238;
    v17._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    swift_getErrorValue();
    v25 = v23;
    sub_100017E64(v24);
    sub_1000047A4();
    (*(v18 + 16))();
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_1000085DC();
    v19._countAndFlagsBits = sub_10000B870();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    LogInterpolation.init(stringInterpolation:)();
    v20 = static os_log_type_t.error.getter();
    sub_1000036B0(v20, v12);

    return swift_willThrow();
  }

  else
  {
    sub_100041404();

    sub_1000A77EC(a1, a2, a4);
  }
}

uint64_t sub_100190A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduleInfo.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100190A7C()
{
  sub_100004988();
  v1 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v1);
  sub_100004E78();
  __chkstk_darwin(v2);
  v4 = &v46 - v3;
  v5 = type metadata accessor for Date();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000056E8();
  v49 = v9 - v10;
  sub_100003F08();
  __chkstk_darwin(v11);
  v47 = &v46 - v12;
  sub_10007B9A4(&qword_10026AB48, &unk_1001E8700);
  sub_100042038();
  v57 = Dictionary.init(dictionaryLiteral:)();
  v51 = type metadata accessor for ScheduleInfo(0);
  v52 = v0;
  v53 = (v0 + *(v51 + 20));
  v13 = *v53;
  v50 = v5;
  switch(v13)
  {
    case 1:
      sub_100006854();
      break;
    case 2:
      sub_1000058B4();
      break;
    case 3:
      sub_1000084E4();
      break;
    default:
      break;
  }

  v14 = String._bridgeToObjectiveC()();

  v55 = sub_100002BC0(0, &qword_10026A528, NSString_ptr);
  v56 = &off_100251670;
  v15 = v55;
  v54[0] = v14;
  v16 = sub_100019DAC();
  sub_1000AA0C0(v16, 0);
  v17 = [objc_allocWithZone(NSNumber) initWithBool:v53[1]];
  v18 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v55 = v18;
  v56 = &off_100251660;
  v54[0] = v17;
  v19 = sub_100019DAC();
  sub_1000AA0C0(v19, 1);
  v20 = type metadata accessor for ScheduleInfo.Metadata(0);
  Date.timeIntervalSinceReferenceDate.getter();
  v22 = [objc_allocWithZone(NSNumber) initWithDouble:v21];
  v55 = v18;
  v56 = &off_100251660;
  v54[0] = v22;
  v23 = sub_100019DAC();
  sub_1000AA0C0(v23, 2);
  v24 = String._bridgeToObjectiveC()();

  v55 = v15;
  v56 = &off_100251670;
  v48 = v15;
  v54[0] = v24;
  v25 = sub_100019DAC();
  sub_1000AA0C0(v25, 3);
  sub_10003AF98(&v53[*(v20 + 32)], v4, &unk_100271EA0, &qword_1001E77F0);
  v26 = v50;
  if (sub_100009F34(v4, 1, v50) == 1)
  {
    sub_10000A00C(v4, &unk_100271EA0, &qword_1001E77F0);
  }

  else
  {
    v27 = v47;
    (*(v7 + 32))(v47, v4, v26);
    Date.timeIntervalSinceReferenceDate.getter();
    v29 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithDouble:v28]);
    sub_1000AA0C0(v29, 4);
    (*(v7 + 8))(v27, v26);
  }

  v30 = *(v20 + 36);
  v31 = v20;
  v32 = v53;
  v33 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithBool:v53[v30]]);
  sub_1000AA0C0(v33, 5);
  v34 = v49;
  Date.init()();
  v35 = TimeZone.secondsFromGMT(for:)();
  (*(v7 + 8))(v34, v26);
  v36 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithInteger:v35]);
  sub_1000AA0C0(v36, 11);
  v37 = v52;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v55 = sub_100002BC0(0, &qword_10026BB80, NSArray_ptr);
  v56 = &off_100251680;
  v54[0] = isa;
  v39 = sub_100019DAC();
  sub_1000AA0C0(v39, 7);
  v40 = String._bridgeToObjectiveC()();
  v41 = v48;
  v55 = v48;
  v56 = &off_100251670;
  v54[0] = v40;
  sub_1000AA0C0(v54, 8);
  v42 = sub_100023F3C([objc_allocWithZone(NSNumber) initWithDouble:*&v32[*(v31 + 40)]]);
  sub_1000AA0C0(v42, 9);
  v43 = String._bridgeToObjectiveC()();

  v55 = v41;
  v56 = &off_100251670;
  v54[0] = v43;
  v44 = sub_100019DAC();
  sub_1000AA0C0(v44, 10);
  v45 = [objc_allocWithZone(NSNumber) initWithBool:*(v37 + *(v51 + 24))];
  v55 = v18;
  v56 = &off_100251660;
  v54[0] = v45;
  sub_1000AA0C0(v54, 12);
  sub_1000C4570(v57);

  sub_10000B16C();
}

void sub_1001910E0()
{
  sub_100004988();
  v1 = v0;
  v3 = v2;
  v75 = v4;
  v76 = v5;
  v80 = v6;
  v79 = type metadata accessor for Date();
  sub_100002CC4();
  v74 = v7;
  __chkstk_darwin(v8);
  sub_100002DEC();
  v78 = v10 - v9;
  v11 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_100002DDC();
  __chkstk_darwin(v12);
  sub_100002DEC();
  v15 = (v14 - v13);
  v16 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v17 = sub_100003D10(v16);
  __chkstk_darwin(v17);
  sub_1000056E8();
  v77 = v18 - v19;
  sub_100003F08();
  v21 = __chkstk_darwin(v20);
  v23 = &object - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &object - v25;
  __chkstk_darwin(v24);
  v28 = &object - v27;
  v29 = type metadata accessor for LogInterpolation.StringInterpolation();
  v30 = sub_100003D10(v29);
  __chkstk_darwin(v30);
  sub_100002DEC();
  v31 = sub_10000B0C0();
  v32 = type metadata accessor for ScheduleInfo(v31);
  sub_100002DDC();
  __chkstk_darwin(v33);
  sub_100002DEC();
  v36 = v35 - v34;
  *(v35 - v34) = v3;
  sub_100004DC8();
  v81._countAndFlagsBits = v37;
  v81._object = v38;
  sub_10003AF48();
  sub_1000085F8();
  sub_10000E1E8(v82);
  if (v84)
  {
    sub_10000799C();
    sub_100005AD8();
    if (swift_dynamicCast())
    {
      object = v81._object;
      countAndFlagsBits = v81._countAndFlagsBits;
      sub_100004798();
      sub_10000A7C0(v39, v40, v41, v79);
      v81._countAndFlagsBits = 1702125924;
      v81._object = 0xE400000000000000;
      sub_10003AF48();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          if (qword_100268688 != -1)
          {
            sub_100008188(&qword_100268688);
          }

          v42 = qword_1002877E0;
          v43 = String._bridgeToObjectiveC()();

          v44 = [v42 dateFromString:v43];

          if (v44)
          {
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = 0;
          }

          else
          {
            v45 = 1;
          }

          sub_10000A00C(v28, &unk_100271EA0, &qword_1001E77F0);
          sub_10000A7C0(v26, v45, 1, v79);
          v57 = v26;
          v58 = v28;
          goto LABEL_20;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v81._countAndFlagsBits = 0x79616C6564;
      v81._object = 0xE500000000000000;
      sub_10003AF48();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (!v84)
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
        goto LABEL_21;
      }

      sub_10000799C();
      sub_100005AD8();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      Date.init(timeIntervalSinceNow:)();
      sub_10000AA90();
      sub_10000A00C(v54, v55, v56);
      sub_10000A7C0(v23, 0, 1, v79);
      v57 = v23;
      v58 = v28;
LABEL_20:
      sub_100042090(v57, v58, &unk_100271EA0, &qword_1001E77F0);
LABEL_21:
      *&v83 = 0x79726574746162;
      *(&v83 + 1) = 0xE700000000000000;
      sub_100017E04();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          v59 = v81._countAndFlagsBits;
          goto LABEL_26;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v59 = 0;
LABEL_26:
      static Date.now.getter();
      v81._countAndFlagsBits = 0x73616C4361746164;
      v81._object = 0xE900000000000073;
      sub_10003AF48();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          v60 = v81;
          goto LABEL_31;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v60._countAndFlagsBits = sub_10000B870();
LABEL_31:
      v61 = sub_10001FC50(v60);
      if (v61 == 4)
      {
        v62 = 0;
      }

      else
      {
        v62 = v61;
      }

      sub_10003AF98(v28, v77, &unk_100271EA0, &qword_1001E77F0);
      strcpy(&v83, "dateIsAdaptive");
      HIBYTE(v83) = -18;
      sub_100017E04();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          v63 = v81._countAndFlagsBits;
          goto LABEL_39;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v63 = 0;
LABEL_39:
      *&v83 = 0x6563617267;
      *(&v83 + 1) = 0xE500000000000000;
      sub_100017E04();
      sub_1000085F8();
      sub_10000E1E8(v82);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          v64 = v81._countAndFlagsBits;
          goto LABEL_44;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v64 = 0x404E000000000000;
LABEL_44:
      static TimeZone.current.getter();
      *v15 = v75;
      v15[1] = v59;
      (*(v74 + 32))(&v15[v11[6]], v78, v79);
      v15[v11[7]] = v62;
      sub_100042090(v77, &v15[v11[8]], &unk_100271EA0, &qword_1001E77F0);
      v15[v11[9]] = v63;
      *&v15[v11[10]] = v64;
      v65 = &v15[v11[11]];
      v66 = object;
      *v65 = countAndFlagsBits;
      v65[1] = v66;
      v15[v11[13]] = v76;
      sub_1000420E0(v15, v36 + *(v32 + 20));
      *&v83 = 0x746972777265766FLL;
      *(&v83 + 1) = 0xE900000000000065;
      sub_100017E04();
      sub_1000085F8();

      sub_10000E1E8(v82);
      sub_10000AA90();
      sub_10000A00C(v67, v68, v69);
      if (v84)
      {
        sub_10000799C();
        sub_100005AD8();
        if (swift_dynamicCast())
        {
          v70 = v81._countAndFlagsBits;
LABEL_49:
          *(v36 + *(v32 + 24)) = v70;
          v71 = v80;
          sub_1000A9424(v36, v80);
          sub_10000A7C0(v71, 0, 1, v32);
          sub_1000A1B7C(v36);
          goto LABEL_50;
        }
      }

      else
      {
        sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
      }

      v70 = 0;
      goto LABEL_49;
    }
  }

  else
  {
    sub_10000A00C(&v83, &qword_10026D350, &qword_1001E6050);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1001E5F70;
  v47 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v48._object = 0x8000000100201D80;
  v48._countAndFlagsBits = 0xD000000000000023;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
  v82[3] = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v82[0] = v1;
  LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
  sub_10000A00C(v82, &qword_10026D350, &qword_1001E6050);
  v49._countAndFlagsBits = sub_10000B870();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
  LogInterpolation.init(stringInterpolation:)();
  if (qword_1002686B0 != -1)
  {
    sub_100006914();
    swift_once();
  }

  v50 = static os_log_type_t.error.getter();
  sub_1000036B0(v50, v46);

  sub_100004798();
  sub_10000A7C0(v51, v52, v53, v32);
LABEL_50:
  sub_10000B16C();
}

unint64_t sub_100191B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004C0E8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100191B4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100046278(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100191B7C()
{
  result = qword_100270658;
  if (!qword_100270658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270658);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScheduleInfo.CodingPropertyKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ScheduleInfo.CodingPropertyKey(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100191D24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100191D3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_100191D8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_100191DE8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
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

id sub_100191E50@<X0>(void *a1@<X8>)
{
  v2 = AMSMetricsLoggingSubsystemEngagement;
  v3 = Dictionary.init(dictionaryLiteral:)();
  result = [objc_allocWithZone(NSLock) init];
  *a1 = v2;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v3;
  a1[5] = result;
  return result;
}

id sub_100191EDC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  [v2 lock];
  v17 = *(v1 + 8);
  sub_100192224(&v17, aBlock);
  result = [v2 unlock];
  v4 = v17;
  if (v17)
  {
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v15[3] = &type metadata for SentryLog;
    v15[0] = swift_allocObject();
    sub_100006FE4(v15[0]);
    sub_1000F90FC(v1, aBlock);
    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v15);
    LogInterpolation.init(stringLiteral:)();
    v8 = static os_log_type_t.debug.getter();
    sub_1000036B0(v8, v5);

    v9 = objc_opt_self();
    sub_100042428();
    v10 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    v11 = [v9 shouldSampleErrorsWithBag:v10];

    v12 = swift_allocObject();
    sub_100006FE4(v12);
    *(v13 + 64) = v4;
    aBlock[4] = sub_10019256C;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100005E50;
    aBlock[3] = &unk_1002517F8;
    v14 = _Block_copy(aBlock);
    sub_100192224(&v17, v15);
    sub_1000F90FC(v1, v15);

    [v11 addSuccessBlock:v14];
    _Block_release(v14);

    return sub_100192578(&v17);
  }

  return result;
}

uint64_t sub_100192224(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_1002707B8, &qword_1001EFE78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100192294(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002451F8, v2);

  return v3 != 0;
}

BOOL sub_100192304@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100192294(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100192338@<X0>(void *a1@<X8>)
{
  result = sub_1001922DC();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

void sub_100192368(void *a1, uint64_t a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  objc_allocWithZone(AMSMetricsLoggingEvent);
  swift_errorRetain();
  v7 = sub_1000EF494(v4, v6, 0xD000000000000010, 0x80000001001F3100, a2);
  sub_1000E3C88();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setBreadcrumbs:isa];

  v9 = a1[3];
  if (v9)
  {
    v10 = a1[2];
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001E61B0;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v10;
    *(v11 + 40) = v9;

    v12 = Array._bridgeToObjectiveC()().super.isa;

    [v7 setEventDestinations:v12];
  }

  v13 = objc_opt_self();
  sub_100042428();
  v14 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v15 = [v13 internalInstanceUsingBag:v14];

  [v15 enqueueEvent:v7];
}

uint64_t sub_100192578(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_1002707B8, &qword_1001EFE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for SentryLog.Category(_BYTE *result, int a2, int a3)
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

unint64_t sub_1001926A0()
{
  result = qword_1002707C0;
  if (!qword_1002707C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002707C0);
  }

  return result;
}

uint64_t sub_1001927B4()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_1002707C8 = qword_100287880;
}

uint64_t sub_100192818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v5 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100002CC4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
  sub_100194044(&qword_10026AF20, &qword_10026AF10, NSNumber_ptr, &protocol conformance descriptor for NSObject);
  *(v3 + 112) = Dictionary.init(dictionaryLiteral:)();
  *(v3 + 120) = _swiftEmptyDictionarySingleton;
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  (*(v7 + 32))(v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_debounceDuration, v10, v5);
  v11 = (v3 + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate);
  v12 = v15;
  *v11 = a2;
  v11[1] = v12;
  return v3;
}

void sub_1001929AC(void *a1, void *a2)
{
  v3 = v2;
  sub_10007B9A4(&unk_10026F880, &qword_1001E62B0);
  sub_100004E78();
  __chkstk_darwin(v6);
  sub_1000074D8();
  v48 = v7;
  sub_10007B9A4(&qword_1002708F0, &qword_1001F0028);
  sub_100002CC4();
  v41 = v9;
  v42 = v8;
  sub_100004E78();
  __chkstk_darwin(v10);
  sub_1000074D8();
  v40 = v11;
  sub_10007B9A4(&qword_1002708F8, &qword_1001F0030);
  sub_100002CC4();
  v44 = v13;
  v45 = v12;
  sub_100004E78();
  __chkstk_darwin(v14);
  sub_1000074D8();
  v43 = v15;
  v49 = sub_10007B9A4(&qword_100270900, &unk_1001F0038);
  sub_100002CC4();
  v47 = v16;
  sub_100004E78();
  __chkstk_darwin(v17);
  sub_1000074D8();
  v46 = v18;
  if (qword_100268808 != -1)
  {
    sub_100006FF8(&qword_100268808);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v19 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v19);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001E5F70;
  updated = _s25BackgroundUpdateCoalescerCMa(0);
  v51 = v2;

  v21 = AMSLogKey();
  if (v21)
  {
    v22 = v21;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v51);
  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v51 = 0x696373656C616F43;
  v52 = 0xEB0000000020676ELL;
  v23._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = sub_100005AE4();
  v24._object = 0xEA00000000002064;
  String.append(_:)(v24);
  v25 = [a2 description];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  updated = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v51, &qword_10026D350, &qword_1001E6050);
  v30 = static os_log_type_t.default.getter();
  sub_1000036B0(v30, v20);

  swift_beginAccess();
  v31 = *(v3 + 112);

  v32 = sub_1000AA92C(a2, v31);

  if (v32)
  {
    CurrentValueSubject.value.getter();

    sub_1001926F4(v33);
    v34 = v50[0];

    CurrentValueSubject.send(_:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v50[0] = a2;
    v50[1] = a1;
    sub_10007B9A4(&qword_10026AF18, &qword_1001E86B8);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v35 = a2;
    v36 = CurrentValueSubject.init(_:)();
    sub_10000619C(v3 + 112, v50);

    sub_1001A0A00();
    swift_endAccess();
    v50[0] = v36;
    if (qword_1002687F0 != -1)
    {
      swift_once();
    }

    v37 = qword_1002878E8;
    v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    sub_10000A7C0(v48, 1, 1, v39);
    sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    sub_100006070(&qword_100270908, &qword_10026AF18, &qword_1001E86B8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_100194044(&qword_10026CFC0, &qword_10026CFB0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v38 = v37;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100009F5C(v48, &unk_10026F880, &qword_1001E62B0);
    sub_100006070(&qword_100270910, &qword_1002708F0, &qword_1001F0028, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    Publisher.filter(_:)();
    (*(v41 + 8))(v40, v42);
    v50[0] = v38;
    sub_10000A7C0(v48, 1, 1, v39);
    sub_100006070(&qword_100270918, &qword_1002708F8, &qword_1001F0030, &protocol conformance descriptor for Publishers.Filter<A>);
    Publisher.receive<A>(on:options:)();
    sub_100009F5C(v48, &unk_10026F880, &qword_1001E62B0);

    (*(v44 + 8))(v43, v45);
    swift_allocObject();
    swift_weakInit();
    sub_100006070(&qword_100270920, &qword_100270900, &unk_1001F0038, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher<>.sink(receiveValue:)();

    (*(v47 + 8))(v46, v49);
    sub_10000619C(v3 + 120, v50);

    sub_1001A0974();
    swift_endAccess();
  }
}

uint64_t sub_100193258(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v7 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    v11[5] = v7;
    v11[6] = v6;
    v12 = v7;

    sub_1000E349C();
  }

  return result;
}

uint64_t sub_100193380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1001933A4, a4, 0);
}

uint64_t sub_1001933A4()
{
  v2 = v0[3];
  v1 = v0[4];
  (*(v0[2] + OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_onUpdate))(v2, v1);
  sub_1001936D0(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10019343C(void *a1)
{
  v2 = v1;
  if (qword_100268808 != -1)
  {
    sub_100006FF8(&qword_100268808);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v4 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001E5F70;
  updated = _s25BackgroundUpdateCoalescerCMa(0);
  v24 = v1;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v24);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v24 = 0xD000000000000019;
  v25 = 0x8000000100201ED0;
  v8 = [a1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  updated = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100009F5C(&v24, &qword_10026D350, &qword_1001E6050);
  v13 = static os_log_type_t.default.getter();
  sub_1000036B0(v13, v5);

  sub_10000619C(v2 + 112, &v24);
  sub_1000ABC2C(a1);
  swift_endAccess();

  sub_10000619C(v2 + 120, &v24);
  sub_1000ABA14(a1, v14, v15, v16, v17, v18, v19, v20, v24, v25);
  v22 = v21;
  result = swift_endAccess();
  if (v22)
  {
    AnyCancellable.cancel()();
  }

  return result;
}

void sub_1001936D0(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[14];

  v7 = sub_1000AA92C(a1, v6);

  if (v7)
  {
    CurrentValueSubject.value.getter();
    sub_100193F5C(a2);
    v8 = v28;
    if (*(v28 + 16))
    {
      if (qword_100268808 != -1)
      {
        sub_100006FF8(&qword_100268808);
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v9 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v9);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E5F70;
      updated = _s25BackgroundUpdateCoalescerCMa(0);
      v24 = v3;

      v11 = AMSLogKey();
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v24);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v13._countAndFlagsBits = 0xD00000000000001DLL;
      v13._object = 0x8000000100201E90;
      String.append(_:)(v13);

      v14._countAndFlagsBits = Set.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = sub_100005AE4();
      v15._object = 0xEA00000000002064;
      String.append(_:)(v15);
      v16 = v27;
      v17 = [v16 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21._countAndFlagsBits = v18;
      v21._object = v20;
      String.append(_:)(v21);

      v22._object = 0x8000000100201EB0;
      v22._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v22);
      updated = &type metadata for String;
      static LogInterpolation.safe(_:)();
      sub_100009F5C(&v24, &qword_10026D350, &qword_1001E6050);
      v23 = static os_log_type_t.default.getter();
      sub_1000036B0(v23, v10);

      v24 = v16;
      v25 = v8;
      CurrentValueSubject.send(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_10019343C(a1);
    }
  }
}

uint64_t sub_100193A38()
{

  v1 = OBJC_IVAR____TtCC14amsengagementd22ServerDataCacheService25BackgroundUpdateCoalescer_debounceDuration;
  type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  sub_100002D30();
  (*(v2 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100193AB8()
{
  sub_100193A38();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t _s25BackgroundUpdateCoalescerCMa(uint64_t a1)
{
  result = qword_1002707F8;
  if (!qword_1002707F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193B38(uint64_t a1)
{
  result = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
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

uint64_t sub_100193BF0(uint64_t *a1, int a2)
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

uint64_t sub_100193C30(uint64_t result, int a2, int a3)
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

uint64_t sub_100193C7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C8EAC();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_100193DA4(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_100193DA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100193F5C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v5 = result + 56;
    sub_10000BBAC();
    v7 = v6 >> 6;

    v8 = 0;
    if (v4)
    {
      while (1)
      {
LABEL_6:
        sub_1000034FC();
        sub_100193C7C(v2, v3);
        v2 = v10;
      }
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      ++v8;
      if (*(v5 + 8 * v9))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_100194044(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002BC0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100194090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000B1388;

  return sub_100193380(a1, v4, v5, v6, v7, v8);
}

void sub_100194158()
{
  sub_100003D74();
  v1 = v0;
  v36 = v2;
  v37 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v34 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for DispatchQoS.QoSClass();
  sub_10000356C();
  v39 = v11;
  v40 = v10;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v38 = v13 - v12;
  if (qword_100268810 != -1)
  {
    sub_100007018(&qword_100268810);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v14 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v14);
  sub_1000056F8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1001E5F60;
  sub_100004B44();
  static LogInterpolation.safe(_:)();
  sub_100004E40();
  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v16 = v9;
  static LogInterpolation.sensitive(_:)();
  sub_100004E40();
  sub_10000B40C();
  _StringGuts.grow(_:)(30);

  v41[0] = 0x7365636976726573;
  v41[1] = 0xEA0000000000203ALL;
  v17._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v17);

  sub_10000A1F4(" networkPolicy: ");
  v44 = v5;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v42 = &type metadata for String;
  static LogInterpolation.safe(_:)();
  sub_100004E40();
  v19 = static os_log_type_t.info.getter();
  sub_1000036B0(v19, v15);

  if (v5 >= 6)
  {
    sub_10000A514();
    sub_100006688();
    __break(1u);
  }

  else
  {
    v33 = 5 - v5;
    type metadata accessor for MercuryCacheDatabase();
    v20 = v16;
    sub_10014D878();
    v22 = v21;
    sub_10014F288();
    v23 = swift_allocObject();
    v23[2] = v5;
    v23[3] = v36;
    v23[4] = v37;
    v23[5] = v34;
    v23[6] = v20;
    v23[7] = v7;
    v23[8] = v22;
    v23[9] = 5 - v5;
    v24 = v5;
    v25 = v22;
    v23[10] = ObjectType;
    v26 = swift_allocObject();
    v26[2] = v24;
    v26[3] = v34;
    v26[4] = v7;
    v26[5] = v36;
    v26[6] = v37;
    v26[7] = v20;
    v26[8] = v25;
    v26[9] = v33;
    v26[10] = ObjectType;
    v27 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    (*(v39 + 104))(v38, enum case for DispatchQoS.QoSClass.default(_:), v40);
    v28 = v20;
    swift_retain_n();
    v29 = v34;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v30 = v28;
    v31 = v29;
    v32 = static OS_dispatch_queue.global(qos:)();
    (*(v39 + 8))(v38, v40);
    v42 = v27;
    v43 = &protocol witness table for OS_dispatch_queue;
    v41[0] = v32;
    sub_100015CBC(sub_1001A1B7C);

    sub_100002C00(v41);
    sub_100005F14();
  }
}

void sub_100194608()
{
  sub_100003D74();
  v19 = v2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000356C();
  v22 = v4;
  __chkstk_darwin(v5);
  sub_100002DEC();
  sub_100004B68();
  type metadata accessor for DispatchQoS();
  sub_10000356C();
  v20 = v7;
  v21 = v6;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v10 = v9 - v8;
  if (qword_100268810 != -1)
  {
    sub_100007018(&qword_100268810);
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v11 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v11);
  sub_1000056F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001E5F70;
  v13 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_100004B44();
  v26 = &type metadata for String;
  v23 = 0xD00000000000002BLL;
  v24 = v14;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(&v23, &qword_10026D350, &qword_1001E6050);
  v15 = static os_log_type_t.default.getter();
  sub_1000036B0(v15, v12);

  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 24) = v0;
  v27 = sub_1001A1A90;
  v28 = v16;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_100005E50;
  v26 = &unk_100252258;
  v17 = _Block_copy(&v23);
  v18 = v19;
  static DispatchQoS.unspecified.getter();
  sub_1001A1A98(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v1, v3);
  (*(v20 + 8))(v10, v21);

  sub_100005F14();
}

uint64_t sub_1001949F8()
{
  if (qword_100268720 != -1)
  {
    swift_once();
  }

  qword_100270928 = qword_100287880;
}

uint64_t sub_100194A5C()
{
  v1 = OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer;
  if (*(v0 + OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer);
  }

  else
  {
    v3 = v0;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s25BackgroundUpdateCoalescerCMa(0);
    swift_allocObject();
    v2 = sub_100192818(2000, sub_1001A1A80, v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_100194B20(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isa = Set._bridgeToObjectiveC()().super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    aBlock[4] = sub_1001A1A88;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100177E30;
    aBlock[3] = &unk_100252208;
    v9 = _Block_copy(aBlock);
    v10 = a1;

    [v6 updateCacheForAccountDSID:v10 withCacheTypeIDs:isa completion:v9];
    _Block_release(v9);
  }
}

uint64_t sub_100194C64(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (qword_100268810 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E61C0;
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.init(stringLiteral:)();
  v19 = sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  v18[0] = a3;
  v7 = a3;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
  v19 = sub_10007B9A4(&qword_10026C900, &qword_1001EBDE0);
  v18[0] = a4;

  static LogInterpolation.safe(_:)();
  sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
  v8 = 0x64656C696166;
  if (a1)
  {
    v8 = 0x73736563637573;
  }

  v9 = 0xE600000000000000;
  if (a1)
  {
    v9 = 0xE700000000000000;
  }

  v19 = &type metadata for String;
  v18[0] = v8;
  v18[1] = v9;
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
  v10 = static os_log_type_t.default.getter();
  sub_1000036B0(v10, v6);

  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    swift_errorRetain();
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v19 = v17;
    v13 = sub_100017E64(v18);
    (*(*(v17 - 1) + 16))(v13);
    static LogInterpolation.safe(_:)();
    sub_100009FB0(v18, &qword_10026D350, &qword_1001E6050);
    v14 = static os_log_type_t.error.getter();
    sub_1000036B0(v14, v12);
  }

  return result;
}

id sub_100194FC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerDataCacheService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100195004(void *a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v32 - v7;
  v9 = [a1 ams_iTunesAccounts];
  sub_100002BC0(0, &qword_100269880, ACAccount_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = _swiftEmptyArrayStorage;
  v39 = _swiftEmptyArrayStorage;
  v11 = sub_100049574(v10);
  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {

      v16 = v34;
      v17 = sub_100049574(v34);
      if (v17)
      {
        v18 = v17;
        if (v17 < 1)
        {
          goto LABEL_36;
        }

        v19 = 0;
        v32 = v16 & 0xC000000000000001;
        do
        {
          if (v32)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v16 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = type metadata accessor for TaskPriority();
          sub_10000A7C0(v8, 1, 1, v22);
          v23 = swift_allocObject();
          v23[2] = 0;
          v23[3] = 0;
          v24 = v33;
          v23[4] = v21;
          v23[5] = v24;
          sub_100119228(v8, v6);
          v25 = sub_100009F34(v6, 1, v22);
          v26 = v21;

          if (v25 == 1)
          {
            sub_100009FB0(v6, &unk_10026FEC0, &qword_1001E6280);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(*(v22 - 8) + 8))(v6, v22);
          }

          v27 = v23[2];
          swift_unknownObjectRetain();

          if (v27)
          {
            swift_getObjectType();
            v28 = dispatch thunk of Actor.unownedExecutor.getter();
            v30 = v29;
            swift_unknownObjectRelease();
          }

          else
          {
            v28 = 0;
            v30 = 0;
          }

          sub_100009FB0(v8, &unk_10026FEC0, &qword_1001E6280);
          v31 = swift_allocObject();
          *(v31 + 16) = &unk_1001F0150;
          *(v31 + 24) = v23;
          if (v30 | v28)
          {
            v35 = 0;
            v36 = 0;
            v37 = v28;
            v38 = v30;
          }

          ++v19;
          swift_task_create();

          v16 = v34;
        }

        while (v18 != v19);
      }

      return;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if ([v13 isActive])
    {
      v15 = [v14 ams_DSID];

      if (!v15)
      {
        goto LABEL_13;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v34 = v39;
      ++v12;
    }

    else
    {

LABEL_13:
      ++v12;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_100195470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 144) = a4;
  *(v5 + 152) = a5;
  return _swift_task_switch(sub_100195490, 0, 0);
}

uint64_t sub_100195490()
{
  sub_1000061B4();
  if (qword_100268798 != -1)
  {
    sub_10000C1D8(&qword_100268798);
  }

  v0[20] = qword_1002878B0;
  if (qword_100268778 != -1)
  {
    sub_10000BBD0(&qword_100268778);
  }

  v1 = v0[18];
  v0[21] = qword_1002878A8;
  type metadata accessor for MercuryCacheDatabase();
  v2 = v1;
  sub_10014D878();
  v0[22] = v3;
  v0[23] = sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v0[24] = sub_100003534();
  updated = type metadata accessor for MercuryCacheUpdateStateManager();
  v0[25] = sub_10000DE18(updated);
  swift_defaultActor_initialize();
  v5 = sub_1001A1E74(&_swiftEmptySetSingleton);
  v0[26] = sub_1001A1DEC(v5);
  v6 = sub_10001CDD0();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100195698()
{
  sub_100004768();
  *(v0 + 224) = sub_100003534();
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v2 = sub_100058358(v1);

  return sub_10014C558(v2);
}

uint64_t sub_10019572C()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v2 = v1;
  v3 = *v0;
  sub_100002D20();
  *v4 = v3;
  *(v5 + 240) = v6;

  v7 = sub_1000047B0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100195820()
{
  sub_100004768();
  sub_1001600A0(*(v0 + 240));
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_1001958C8;

  return sub_10015EDD4();
}

uint64_t sub_1001958C8()
{
  sub_100004768();
  sub_1000056A8();
  sub_100004EFC();
  *v3 = v2;
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;
  *(v6 + 256) = v0;

  sub_1000060D0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001959C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();
  if (qword_100268810 != -1)
  {
    sub_100007018(&qword_100268810);
  }

  v36 = v16[27];
  v37 = v16[28];
  v17 = v16[18];
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  sub_10000A658();
  v18 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v18);
  sub_1000056F8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001E5F70;
  v20 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100005800();

  type metadata accessor for ServerDataCacheService();
  sub_10000C47C();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_10000AD60();
  _StringGuts.grow(_:)(39);

  sub_100004B44();
  sub_100012FA4();
  v21 = [v17 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  v16[13] = &type metadata for String;
  v16[10] = a12;
  v16[11] = a13;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0((v16 + 10), &qword_10026D350, &qword_1001E6050);
  v26 = static os_log_type_t.info.getter();
  sub_1000036B0(v26, v19);

  sub_100002D8C();
  sub_100003DC0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, v36, v37, a12, a13, a14, a15, a16);
}

uint64_t sub_100195BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_100017D30();
  sub_1000060E8();

  if (qword_100268810 != -1)
  {
    sub_100007018(&qword_100268810);
  }

  v17 = *(v16 + 144);
  v37 = qword_100270928;
  v38 = *(v16 + 216);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v18);
  sub_1000056F8();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1001E5F60;
  v20 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for ServerDataCacheService();
  static LogInterpolation.prefix<A>(_:_:)();

  sub_10000AD60();
  _StringGuts.grow(_:)(36);

  sub_100004B44();
  sub_100012FA4();
  v21 = [v17 description];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25._countAndFlagsBits = v22;
  v25._object = v24;
  String.append(_:)(v25);

  *(v16 + 40) = &type metadata for String;
  *(v16 + 16) = a12;
  *(v16 + 24) = a13;
  static LogInterpolation.sensitive(_:)();
  sub_100009FB0(v16 + 16, &qword_10026D350, &qword_1001E6050);
  swift_getErrorValue();
  *(v16 + 72) = *(v16 + 120);
  sub_100017E64((v16 + 48));
  sub_1000047A4();
  (*(v26 + 16))();
  static LogInterpolation.safe(_:)();
  sub_100009FB0(v16 + 48, &qword_10026D350, &qword_1001E6050);
  v27 = static os_log_type_t.error.getter();
  sub_1000036B0(v27, v19);

  sub_100002D8C();
  sub_100003DC0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14, a15, a16);
}