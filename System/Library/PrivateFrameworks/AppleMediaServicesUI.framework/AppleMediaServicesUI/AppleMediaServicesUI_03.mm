uint64_t type metadata accessor for AppDefaultsProvider(uint64_t a1)
{
  result = qword_10026A600;
  if (!qword_10026A600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004CE20(uint64_t a1)
{
  if (!qword_10026A610)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10026A610);
    }
  }
}

void sub_10004CE78(uint64_t a1)
{
  sub_10004CE20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10004CF54()
{
  sub_100003D74();
  v1 = v0;
  v12 = v2;
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v13);
  sub_1000034A4();
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  sub_100002DEC();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  v10 = v9 - v8;
  type metadata accessor for Worker();
  *(v1 + 64) = sub_10000B080();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v11 = sub_100046FFC(_swiftEmptyArrayStorage);
  *(v1 + 24) = 1;
  *(v1 + 32) = v11;
  *(v1 + 40) = sub_10018BE10;
  *(v1 + 48) = 0;
  *(v1 + 16) = sub_10000B080();
  *(v1 + 56) = v12;
  sub_100017A08();
  (*(v6 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  sub_10004D1EC(&qword_10026CCF0, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_100006070(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005F14();
}

uint64_t sub_10004D1EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004D234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for BagProvider();
  v22 = &off_100247E30;
  v20[0] = a1;
  v18 = type metadata accessor for Defaults();
  v19 = &off_100248840;
  v17[0] = a2;
  type metadata accessor for EngagementSyncCoordinator();
  v6 = swift_allocObject();
  v7 = sub_100046CB8(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_100046CB8(v17, v18);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_10004D418(*v9, *v13, a3, v6);
  sub_100002C00(v17);
  sub_100002C00(v20);
  return v15;
}

uint64_t sub_10004D418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v7 - 8);
  v16 = v7;
  __chkstk_darwin(v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v20[3] = type metadata accessor for BagProvider();
  v20[4] = &off_100247E30;
  v20[0] = a1;
  v19[3] = type metadata accessor for Defaults();
  v19[4] = &off_100248840;
  v19[0] = a2;
  *(a4 + 104) = &_swiftEmptySetSingleton;
  sub_1000262E4(v20, a4 + 16);
  sub_1000262E4(v19, a4 + 56);
  v14[1] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_1000140D0(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100002C00(v19);
  sub_100002C00(v20);
  *(a4 + 96) = v12;
  return a4;
}

uint64_t sub_10004D748(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  type metadata accessor for MediaCatalogSyncActor(0);
  sub_1000425B4();
  *(v1 + 120) = Dictionary.init(dictionaryLiteral:)();
  return v1;
}

uint64_t sub_10004D7A8()
{
  v1 = *v0;
  sub_100002D98();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

void sub_10004D894()
{
  v14 = &type metadata for AMSFlags;
  v15 = sub_10000D884();
  LOBYTE(v13[0]) = 1;
  v1 = isFeatureEnabled(_:)();
  sub_100002C00(v13);
  if (v1)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = String._bridgeToObjectiveC()();
    [v2 addObserver:v0 selector:"handleNFCNotification:" name:v3 object:0];

    v4 = *&v0[OBJC_IVAR____TtC14amsengagementd20NotificationObserver_queue];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = sub_100180548;
    v16 = v5;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_10017F158;
    v14 = &unk_100250CF8;
    v6 = _Block_copy(v13);

    xpc_set_event_stream_handler("com.apple.distnoted.matching", v4, v6);
    _Block_release(v6);
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_100008580();
    sub_100002CFC(v7);
    sub_100002D7C();
    v8 = sub_100003F28();
    v14 = sub_100005A44(v8, xmmword_1001E5F70);
    v13[0] = v0;
    v9 = v0;
    v10 = AMSLogKey();
    if (v10)
    {
      v11 = v10;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_10000C184(v13);

    sub_100002C00(v13);
    LogInterpolation.init(stringLiteral:)();
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v12 = static os_log_type_t.default.getter();
    sub_1000036B0(v12, v8);
  }
}

uint64_t sub_10004DB78()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v14 = v13 - v12;
  if (qword_1002687F0 != -1)
  {
    sub_100002E30(&qword_1002687F0);
  }

  v21 = sub_10004DED4;
  v22 = v0;
  sub_100002E50();
  sub_100004F0C(COERCE_DOUBLE(1107296256));
  v19 = v15;
  v20 = &unk_100246A28;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v3 + 8))(v7, v1);
  (*(v10 + 8))(v14, v8);
}

unint64_t sub_10004DDC4()
{
  result = qword_10026CD50;
  if (!qword_10026CD50)
  {
    sub_10007BC70(&unk_100270490, &unk_1001E74F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD50);
  }

  return result;
}

unint64_t sub_10004DE28()
{
  result = qword_10026CD40;
  if (!qword_10026CD40)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD40);
  }

  return result;
}

id sub_10004DE80()
{
  result = [objc_allocWithZone(type metadata accessor for PushService()) init];
  qword_1002878E0 = result;
  return result;
}

double sub_10004DEDC()
{
  v1 = v0;
  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v2 = sub_1000078B4();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 doubleForKey:v3];

  v5 = [v4 valuePromise];
  v19[0] = 0;
  v6 = [v5 resultWithError:v19];

  if (v6)
  {
    v7 = v19[0];
    [v6 doubleValue];
    v9 = v8;
  }

  else
  {
    v10 = v19[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002686D0 != -1)
    {
      sub_100006990(&qword_1002686D0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v11 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v11);
    sub_1000056F8();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F60;
    v20 = type metadata accessor for ActivityObserver();
    v19[0] = v1;

    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v19);
    LogInterpolation.init(stringLiteral:)();
    swift_getErrorValue();
    v20 = v18;
    v15 = sub_100017E64(v19);
    (*(*(v18 - 8) + 16))(v15);
    static LogInterpolation.safe(_:)();
    sub_100002C5C(v19);
    v16 = static os_log_type_t.debug.getter();
    sub_1000036B0(v16, v12);

    return 900.0;
  }

  return v9;
}

void sub_10004E21C()
{
  sub_100003D74();
  v1 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v21 = v2;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  v20 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  v13 = *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = v0;
  v22[4] = sub_10004B438;
  v22[5] = v14;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100005E50;
  v22[3] = &unk_1002513C0;
  v15 = _Block_copy(v22);
  v16 = v13;
  v17 = v0;
  static DispatchQoS.unspecified.getter();
  sub_100005DC0(&qword_10026CD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000BB4C();
  sub_100006070(v18, &unk_100270490, &unk_1001E74F0, v19);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v6, v1);
  (*(v8 + 8))(v12, v20);

  sub_100005F14();
}

uint64_t sub_10004E4B0()
{

  return _swift_deallocObject(v0);
}

void sub_10004E510()
{
  type metadata accessor for MetricsIdentifierCloudDataController();
  swift_allocObject();
  sub_100003EFC();
  sub_10004B440();
  qword_1002878B8 = v0;
}

void sub_10004E54C(char *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC14amsengagementd11PushService_connection;
  v4 = *&a1[OBJC_IVAR____TtC14amsengagementd11PushService_connection];
  if (v4)
  {
    [v4 shutdown];
    v5 = *&a1[v3];
    *&a1[v3] = 0;
  }

  [objc_opt_self() pushEnvironment];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  LOBYTE(v9) = [v9 isValidEnvironment:v10];

  if (v9)
  {

    v32 = sub_10004EAE0(v11);
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001E5F70;
    v35 = type metadata accessor for PushService();
    v33 = a1;
    v31 = a1;
    v13 = AMSLogKey();
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v19._countAndFlagsBits = 0xD000000000000027;
    v19._object = 0x8000000100201560;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v35 = &type metadata for String;
    v33 = v6;
    v34 = v8;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v33);
    v20._countAndFlagsBits = 0x736369706F74202CLL;
    v20._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v35 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v33 = v32;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v33);
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v22 = static os_log_type_t.info.getter();
    sub_1000036B0(v22, v12);

    v23 = *&v31[OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue];
    objc_allocWithZone(APSConnection);
    v24 = v23;
    v25 = sub_10004ECE8(v6, v8, 0xD00000000000001CLL, 0x8000000100201590, v23);
    if (v25)
    {
      v26 = v25;
      [v25 setDelegate:v31];
      sub_100045890(v32, v26);
      v27 = *&a1[v3];
      *&a1[v3] = v26;

      return;
    }
  }

  else
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    v35 = type metadata accessor for PushService();
    v33 = a1;
    v16 = a1;
    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._object = 0x8000000100201540;
    v28._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v35 = &type metadata for String;
    v33 = v6;
    v34 = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v33);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v30 = static os_log_type_t.error.getter();
    sub_1000036B0(v30, v15);
  }
}

void *sub_10004EAE0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10004EB78(*(a1 + 16), 0);
  v4 = sub_10004EB8C(&v6, v3 + 4, v2, a1);
  sub_10004EB70(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10004EB8C(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
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
            v10 = v12;
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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
  return result;
}

id sub_10004ECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = String._bridgeToObjectiveC()();

LABEL_6:
  v10 = [v5 initWithEnvironmentName:v8 namedDelegatePort:v9 queue:a5];

  return v10;
}

uint64_t sub_10004ED94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10007B9A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10004EDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100004918(a1, a2, a3);
  sub_10007B9A4(v5, v6);
  sub_1000047A4();
  (*(v7 + 16))(a2, v3);
  return a2;
}

uint64_t sub_10004EE98()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10004EEF0(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10004EF0C()
{

  return swift_allocObject();
}

Swift::Int sub_10004EF38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_100017CCC(v5, v6, v7);

  return Hasher._finalize()();
}

unint64_t sub_10004EF8C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002446E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_10004EFD8()
{
  *&v0[OBJC_IVAR____TtC14amsengagementd22ServerDataCacheService____lazy_storage___updateCoalescer] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServerDataCacheService();
  return objc_msgSendSuper2(&v2, "init");
}

unint64_t sub_10004F018()
{
  result = qword_10026CD00;
  if (!qword_10026CD00)
  {
    sub_10007BC70(&unk_10026F8A0, &unk_1001EBCC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CD00);
  }

  return result;
}

void sub_10004F07C()
{
  sub_100003D74();
  type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002CC4();
  v14 = v2;
  v15 = v1;
  __chkstk_darwin(v1);
  sub_100002DEC();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  sub_100002DEC();
  v7 = type metadata accessor for DispatchQoS();
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  sub_100002DEC();
  *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_connection] = 0;
  v13 = OBJC_IVAR____TtC14amsengagementd11PushService_connectionQueue;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  if (qword_100268800 != -1)
  {
    swift_once();
  }

  v9 = qword_1002878F8;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100005DC0(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10000BB4C();
  sub_100006070(v10, &unk_10026F8A0, &unk_1001EBCC0, v11);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v14 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v15);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10007B9A4(&qword_1002704A8, &qword_1001EF9E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E5F70;
  *(inited + 32) = 0xD000000000000033;
  *(inited + 40) = 0x80000001001FF470;
  sub_10007B9A4(&qword_100270478, &qword_1001EF9E0);
  swift_allocObject();
  *(inited + 48) = PassthroughSubject.init()();
  *(inited + 56) = 0xD000000000000026;
  *(inited + 64) = 0x80000001002015E0;
  swift_allocObject();
  *(inited + 72) = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC14amsengagementd11PushService_publishers] = Dictionary.init(dictionaryLiteral:)();
  v16.receiver = v0;
  v16.super_class = type metadata accessor for PushService();
  objc_msgSendSuper2(&v16, "init");
  sub_100005F14();
}

uint64_t sub_10004F3F8()
{
  sub_100002BC0(0, &qword_10026AEB8, NSUbiquitousKeyValueStore_ptr);
  sub_10004F46C();
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 24) = 0;
  sub_10004B274(0, 0);
  sub_1001BF8AC();
  return v0;
}

unint64_t sub_10004F46C()
{
  result = qword_10026AEC0;
  if (!qword_10026AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026AEC0);
  }

  return result;
}

uint64_t sub_10004F4C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10004F548(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *sub_10004F5C8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) ams_DSID];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 stringValue];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

uint64_t sub_10004F670(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC14amsengagementd9JSAccount_account) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

char *sub_10004F7A8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_100006C1C(a3, result);
  }

  return result;
}

id sub_10004F884()
{
  result = [*(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore) ams_activeiTunesAccount];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for JSAccount();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v2;
    v5.receiver = v4;
    v5.super_class = v3;
    return objc_msgSendSuper2(&v5, "init");
  }

  return result;
}

unint64_t sub_10004F904(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000073;
      v8 = 0x636974796C616E61;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE800000000000000;
          v8 = 0x6C616E7265746E69;
          break;
        case 2:
          v7 = 0xE800000000000000;
          v8 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v8 = 0x6E656D6D6F636572;
          v7 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      v9 = 0x636974796C616E61;
      v10 = 0xE900000000000073;
      switch(a1)
      {
        case 1:
          v10 = 0xE800000000000000;
          v9 = 0x6C616E7265746E69;
          break;
        case 2:
          v10 = 0xE800000000000000;
          v9 = 0x7379656E72756F6ALL;
          break;
        case 3:
          v9 = 0x6E656D6D6F636572;
          v10 = 0xEF736E6F69746164;
          break;
        default:
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_10004FB14(uint64_t *a1, int a2)
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

uint64_t sub_10004FB54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v30 = a1;
  v31 = a2;
  v24[2] = a4;
  v4 = type metadata accessor for JSONContext();
  __chkstk_darwin(v4 - 8);
  v24[1] = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONObject();
  __chkstk_darwin(v6 - 8);
  v29 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007B9A4(&unk_10026FEE0, &unk_1001E67C0);
  __chkstk_darwin(v8 - 8);
  v10 = v24 - v9;
  v25 = type metadata accessor for URL();
  v28 = *(v25 - 8);
  v11 = __chkstk_darwin(v25);
  v24[0] = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = v24 - v13;
  if (qword_1002686C8 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001E5F70;
  sub_10007B9A4(&qword_1002704C8, &qword_1001EFA50);
  v15 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v16 = static os_log_type_t.debug.getter();
  sub_1000036B0(v16, v14);

  v17 = type metadata accessor for JSStackContext(0);
  v18 = v26;
  sub_10001EC70(v26 + *(v17 + 32), v10);
  v19 = v25;
  if (sub_100009F34(v10, 1, v25) == 1)
  {
    v21 = v27;
    v20 = v28;
    (*(v28 + 16))(v27, v18 + *(v17 + 40), v19);
    if (sub_100009F34(v10, 1, v19) != 1)
    {
      sub_10000A00C(v10, &unk_10026FEE0, &unk_1001E67C0);
    }
  }

  else
  {
    v21 = v27;
    v20 = v28;
    (*(v28 + 32))(v27, v10, v19);
  }

  sub_10003A5E0(v30, v31);
  v22 = v32;
  JSONObject.init(deserializing:)();
  if (!v22)
  {
    JSONContext.init()();
    (*(v20 + 16))(v24[0], v21, v19);
    JSPackageIndex.init(deserializing:using:from:)();
  }

  return (*(v20 + 8))(v21, v19);
}

uint64_t sub_10004FFCC@<X0>(uint64_t *a1@<X8>)
{
  result = JSPackageIndex.properties.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100050008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10007B9A4(a3, a4);
  sub_100002DDC();
  v5 = sub_100005B9C();
  v6(v5);
  return a2;
}

Class sub_100050088(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t sub_10005011C()
{
  if (qword_100268850 != -1)
  {
    swift_once();
  }

  v1 = sub_100050444(*(*(v0 + OBJC_IVAR____TtC14amsengagementd15JSDatabaseStore_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_config + 1));
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  sub_100006D54(inited, xmmword_1001E61B0);
  v3 = type metadata accessor for JSUbiquitousDatabase();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC14amsengagementd20JSUbiquitousDatabase_keyValueStore] = v1;
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = v1;
  v6 = objc_msgSendSuper2(&v9, "init");
  inited[4].n128_u64[1] = v3;
  inited[3].n128_u64[0] = v6;
  v7 = Dictionary.init(dictionaryLiteral:)();

  return v7;
}

void *sub_100050444(uint64_t a1)
{
  if (*(v1 + 24) != 1)
  {
    sub_100050550();
    swift_allocError();
    v5 = 1;
    goto LABEL_7;
  }

  if (!sub_100073798())
  {
    sub_100050550();
    swift_allocError();
    v5 = 0;
    goto LABEL_7;
  }

  swift_beginAccess();
  v3 = *(v1 + 2);

  v1 = sub_1000AA84C(a1, v3);

  if (!v1)
  {
    sub_100050550();
    swift_allocError();
    v5 = 2;
LABEL_7:
    *v4 = v5;
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_100050550()
{
  result = qword_1002720C8;
  if (!qword_1002720C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720C8);
  }

  return result;
}

uint64_t type metadata accessor for JSError()
{
  return objc_opt_self();
}

{
  return type metadata accessor for JSError();
}

id sub_1000505C8(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    type metadata accessor for JSError();
    sub_10010F0F0(0, 0x206E776F6E6B6E55, 0xED0000726F727245, 0, 0);
  }

  swift_errorRetain();
  v4 = _convertErrorToNSError(_:)();

  v5 = [v4 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a1 || (v35[0] = a1, swift_errorRetain(), sub_10007B9A4(&unk_100270B70, &unk_1001E8F60), sub_10007B9A4(&qword_10026DA98, &unk_1001ED050), (swift_dynamicCast() & 1) == 0))
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    goto LABEL_14;
  }

  if (!*(&v33 + 1))
  {
LABEL_14:
    sub_10010F3E4(&v32);
    goto LABEL_15;
  }

  sub_10003B104(&v32, v35);
  sub_100003CA8(v35, v36);
  sub_100005350();
  v6 = dispatch thunk of LocalizedError.errorDescription.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v33 + 1) = &type metadata for String;
    *&v32 = v8;
    *(&v32 + 1) = v9;
    sub_100002C4C(&v32, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70(isUniquelyReferenced_nonNull_native, v11);
  }

  sub_100003CA8(v35, v36);
  sub_100005350();
  v12 = dispatch thunk of LocalizedError.failureReason.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v33 + 1) = &type metadata for String;
    *&v32 = v14;
    *(&v32 + 1) = v15;
    sub_100002C4C(&v32, v30);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70(v16, v17);
  }

  sub_100003CA8(v35, v36);
  sub_100005350();
  v18 = dispatch thunk of LocalizedError.recoverySuggestion.getter();
  if (v19)
  {
    v20 = v18;
    v21 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v33 + 1) = &type metadata for String;
    *&v32 = v20;
    *(&v32 + 1) = v21;
    sub_100002C4C(&v32, v30);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_100006D70(v22, v23);
  }

  sub_100002C00(v35);
LABEL_15:
  v24 = [v4 domain];
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  v25 = [v4 code];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = type metadata accessor for JSError();
  v31.receiver = v2;
  v31.super_class = v27;
  v28 = objc_msgSendSuper2(&v31, "initWithDomain:code:userInfo:", v24, v25, isa);

  return v28;
}

uint64_t sub_10005094C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E5F70;
  v8 = type metadata accessor for JSLog();
  v9 = *&v3[OBJC_IVAR____TtC14amsengagementd5JSLog_runtime];
  v15 = v8;
  v14[0] = v3;
  if (*(v9 + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
  {
  }

  v10 = v3;
  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v14);
  v15 = &type metadata for String;
  v14[0] = a1;
  v14[1] = a2;

  static LogInterpolation.sensitive(_:)();
  v11 = sub_100002C5C(v14);
  v12 = a3(v11);
  sub_1000036B0(v12, v7);
}

id sub_100050B04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithData:isa encoding:a3];

  sub_1000253FC(a1, a2);
  return v8;
}

uint64_t sub_100050BA8(void *a1)
{
  v1 = [a1 toString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100050C0C(uint64_t a1)
{
  v2 = sub_100050EA0();
  v3 = sub_100050F4C();
  v4 = sub_100050EF8();

  return Error<>._code.getter(a1, v2, v3, v4);
}

uint64_t sub_100050C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100050F4C();
  v5 = sub_100050EF8();

  return CustomNSError<>.errorCode.getter(a1, a2, v4, v5);
}

uint64_t sub_100050D38(uint64_t a1, uint64_t a2)
{
  sub_100002BC0(0, &qword_10026D728, JSContext_ptr);
  v2 = static JSContext.requiredCurrent.getter();
  v3 = JSContext.propagateErrorsToExceptions(_:)();

  return v3;
}

uint64_t sub_100050DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, _OWORD *))
{
  sub_100004918(a1, a2, a3);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a4)
  {
    v11 = v5;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    v12 = v5;
  }

  a5(v8, v10, v14);

  return sub_100009FB0(v14, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_100050E64(uint64_t a1)
{
  v2 = sub_100050EA0();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100050EA0()
{
  result = qword_1002720D8;
  if (!qword_1002720D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720D8);
  }

  return result;
}

unint64_t sub_100050EF8()
{
  result = qword_10026CE00;
  if (!qword_10026CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026CE00);
  }

  return result;
}

unint64_t sub_100050F4C()
{
  result = qword_1002720E0;
  if (!qword_1002720E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002720E0);
  }

  return result;
}

uint64_t sub_100050FA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100050FCC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_100051018()
{
  sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61C0;
  *(inited + 32) = 0x6E69616D6F64;
  *(inited + 40) = 0xE600000000000000;
  v2 = [v0 domain];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(inited + 48) = v3;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1701080931;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v0 code];
  *(inited + 120) = &type metadata for Int;
  *(inited + 128) = 0x6567617373656DLL;
  *(inited + 136) = 0xE700000000000000;
  v6 = sub_1000511EC();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  *(inited + 144) = v8;
  *(inited + 152) = v9;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x656C746974;
  *(inited + 184) = 0xE500000000000000;
  v10 = sub_100051270();
  if (v11)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  *(inited + 192) = v12;
  *(inited + 200) = v13;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x6F666E4972657375;
  *(inited + 232) = 0xE800000000000000;
  v14 = [v0 userInfo];
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *(inited + 264) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *(inited + 240) = v15;
  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_1000511F8(SEL *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for JSError();
  v3 = objc_msgSendSuper2(&v7, *a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_1000512BC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a1;
  a4(v6, v8);
}

uint64_t sub_100051328(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026AE90, &qword_1001E8640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1000513A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t, uint64_t))
{
  sub_100004918(a1, a2, a3);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = v4;
  a4(v18, v6, v8);

  v10 = v19;
  if (v19)
  {
    v11 = sub_100003CA8(v18, v19);
    v12 = *(v10 - 8);
    __chkstk_darwin(v11);
    sub_100002DEC();
    v15 = v14 - v13;
    (*(v12 + 16))(v14 - v13);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v12 + 8))(v15, v10);
    sub_100002C00(v18);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void *sub_100051540()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = type metadata accessor for AppKeyValueTable();
    v1 = sub_100004B50(v3);
    v1[2] = v2;
    v1[3] = 7566955;
    v1[4] = 0xE300000000000000;
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_1000515B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001E61B0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_100051670(v7);

  if (!v3)
  {
    sub_100052D94(v8, a3);
  }

  return result;
}

uint64_t sub_100051670(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return Dictionary.init(dictionaryLiteral:)();
  }

  v30[1] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = Dictionary.init(dictionaryLiteral:)();
  v30[0] = v9 + 16;
  v32 = 0x80000001001F4E00;
  v33 = a1;
  v10 = a1 + 40;
  v31 = xmmword_1001E61B0;
  while (1)
  {
    v40 = v2;
    if (!v8)
    {
      break;
    }

    v35 = v8;
    v37 = 0;
    v38 = 0xE000000000000000;

    _StringGuts.grow(_:)(39);

    v37 = 0xD000000000000022;
    v38 = v32;
    v11 = v34;
    String.append(_:)(*(v34 + 24));
    v12._countAndFlagsBits = sub_100002F28();
    v12._object = 0xE700000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100005058();
    String.append(_:)(v13);
    v14._countAndFlagsBits = 0x3F203D3D20;
    v14._object = 0xE500000000000000;
    String.append(_:)(v14);
    v15 = v38;
    v36 = v37;
    sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
    inited = swift_initStackObject();
    sub_100006308(inited, v31);
    v17 = *(v11 + 16);
    v18 = swift_allocObject();
    v18[2] = v11;
    v18[3] = v9;
    v18[4] = v33;
    v19 = __chkstk_darwin(v18);
    v20 = v36;
    v30[-6] = v17;
    v30[-5] = v20;
    v30[-4] = v15;
    v30[-3] = inited;
    v30[-2] = sub_100051FB4;
    v30[-1] = v19;

    v21 = v40;
    sub_100014A20(sub_10001D7C8, &v30[-8]);
    if (v21)
    {

      swift_setDeallocating();
      sub_10001CE50();

      return v10;
    }

    swift_setDeallocating();
    sub_10001CE50();

    v10 += 16;
    v8 = v35 - 1;
    v2 = 0;
  }

  if (qword_1002686B8 != -1)
  {
    sub_100006AD8(&qword_1002686B8);
  }

  v36 = qword_100287818;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v22 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v22);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1001E5F70;
  v39 = type metadata accessor for AppKeyValueTable();
  v37 = v34;

  v24 = AMSLogKey();
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v37);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100007428();
  swift_beginAccess();
  v10 = *(v9 + 16);
  v39 = sub_10007B9A4(&qword_10026A9C8, &qword_1001E8380);
  v37 = v10;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
  v26._countAndFlagsBits = 0x79654B6D6F726620;
  v26._object = 0xEB00000000203A73;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
  v39 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  v37 = v33;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(&v37, &qword_10026D350, &qword_1001E6050);
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  LogInterpolation.init(stringInterpolation:)();
  v28 = static os_log_type_t.debug.getter();
  sub_1000036B0(v28, v23);

  return v10;
}

uint64_t sub_100051BC4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100051BFC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100051C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  sub_100051FD8(&v18);
  if (!v4)
  {
    if (*(&v18 + 1))
    {
      v20 = v18;
      v21 = v19[0];
      v22 = v19[1];
      sub_10004ED94(&v20, &v18, qword_10026A9D8, &unk_1001E8390);
      sub_10004ED94(&v20, v15, qword_10026A9D8, &unk_1001E8390);

      sub_100002C4C(&v16, &v17);
      swift_beginAccess();
      sub_100052CE8();
      swift_endAccess();
      sub_10000A064(&v20, qword_10026A9D8, &unk_1001E8390);
      sub_100002C00(v19);
    }

    else
    {
      sub_10000A064(&v18, &qword_10026A9D0, &qword_1001E8388);
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      v23 = qword_100287818;
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001E5F70;
      *(&v21 + 1) = type metadata accessor for AppKeyValueTable();
      *&v20 = a2;

      v9 = AMSLogKey();
      if (v9)
      {
        v10 = v9;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v20);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v11._object = 0x80000001001F4E50;
      v11._countAndFlagsBits = 0xD000000000000015;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
      *(&v21 + 1) = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      *&v20 = a4;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v20, &qword_10026D350, &qword_1001E6050);
      v12._countAndFlagsBits = 0;
      v12._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
      LogInterpolation.init(stringInterpolation:)();
      v13 = static os_log_type_t.error.getter();
      sub_1000036B0(v13, v8);
    }
  }

  return 1;
}

_OWORD *sub_100051FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005058();
  result = sub_10001ADD4(v3, v4);
  if (!v1)
  {
    v7 = result;
    v8 = v6;
    sub_100005798();
    sub_10003A420(v29);
    v9 = *(&v29[0] + 1);
    v10 = sub_100005798();
    v11 = sub_10003A400(v10 | 0x7079546500000000, 0xE900000000000065);
    if (v12)
    {
      v11 = -1;
    }

    v13 = sub_1000521C8(v11);
    if (v8)
    {
      v14 = v13;
      if (v9 >> 60 != 15 && v13 != 7)
      {
        v16 = sub_10000B1A8();
        sub_10003A5E0(v16, v17);
        sub_10000B1A8();
        sub_10003A638(v14, v18);
        v19 = sub_10000B1A8();
        sub_10003AE18(v19, v20);
        if (v28)
        {
          v21 = sub_10000B1A8();
          sub_10003AE18(v21, v22);
          sub_100002C4C(&v27, v29);
          *a1 = v7;
          *(a1 + 8) = v8;
          return sub_100002C4C(v29, (a1 + 16));
        }

        sub_10000A064(&v27, &qword_10026D350, &qword_1001E6050);
      }

      memset(v29, 0, sizeof(v29));
      sub_1000526FC(v29, v7, v8);
      sub_10000A064(v29, &qword_10026D350, &qword_1001E6050);
      v25 = sub_10000B1A8();
      sub_10003AE18(v25, v26);
    }

    else
    {
      v23 = sub_10000B1A8();
      result = sub_10003AE18(v23, v24);
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

unint64_t sub_1000521C8(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

id sub_1000521D8(uint64_t a1)
{
  v1 = sub_1000522EC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v4 = [v3 ams_activeiTunesAccount];
  if (v4)
  {
    v5 = type metadata accessor for JSAccount();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v8.receiver = v6;
    v8.super_class = v5;
    v4 = objc_msgSendSuper2(&v8, "init");
  }

  return v4;
}

id sub_1000522EC(uint64_t a1)
{
  switch(a1)
  {
    case 100:
      v1 = &AMSAccountMediaTypeAppStore;
      goto LABEL_14;
    case 400:
      v1 = &AMSAccountMediaTypeProduction;
      goto LABEL_14;
    case 102:
      v1 = &AMSAccountMediaTypeAppStoreSandbox;
      goto LABEL_14;
    case 200:
      v1 = &AMSAccountMediaTypeBooks;
      goto LABEL_14;
    case 300:
      v1 = &AMSAccountMediaTypeiTunes;
      goto LABEL_14;
    case 101:
      v1 = &AMSAccountMediaTypeAppStoreBeta;
LABEL_14:
      v2 = *v1;
      v3 = *v1;
      return v2;
  }

  return 0;
}

uint64_t sub_100052390(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  v7 = sub_100007594();
  a4(v7);
}

uint64_t sub_100052410(uint64_t result)
{
  v1 = *(result + 16);
  for (i = result + 40; v1; --v1)
  {
    sub_10000A9D8();
    sub_1000524A0();

    result = sub_100009FB0(&v3, &qword_10026D350, &qword_1001E6050);
    i += 16;
  }

  return result;
}

void sub_1000524A0()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100005338();
  sub_100051540();
  v6 = sub_100007594();
  sub_1000526FC(v6, v3, v1);

  sub_100005F14();
}

uint64_t sub_1000526FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004ED94(a1, v9, &qword_10026D350, &qword_1001E6050);
  if (v10)
  {
    sub_10005302C();
    if (swift_dynamicCast())
    {

      v11 = 0u;
      v12 = 0u;
      goto LABEL_7;
    }
  }

  else
  {
    sub_10000A064(v9, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, &v11, &qword_10026D350, &qword_1001E6050);
  if (*(&v12 + 1))
  {
    sub_100002C4C(&v11, v13);
    sub_10007B9A4(&qword_10026FE80, &unk_1001E6270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001E61B0;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    sub_100011BAC(v13, inited + 48);

    v7 = Dictionary.init(dictionaryLiteral:)();
    sub_100053070(v7);
    sub_100002C00(v13);
  }

LABEL_7:
  sub_10000A064(&v11, &qword_10026D350, &qword_1001E6050);
  return sub_10005289C(a2, a3);
}

uint64_t sub_10005289C(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(28);

  strcpy(&v8, "DELETE FROM ");
  BYTE5(v8._object) = 0;
  HIWORD(v8._object) = -5120;
  String.append(_:)(*(v2 + 24));
  v3._countAndFlagsBits = sub_100002F28();
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = sub_100005058();
  String.append(_:)(v4);
  v5._countAndFlagsBits = 0x3B3F203D20;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  sub_100006308(inited, xmmword_1001E61B0);

  SQLDatabase.execute(sql:parameters:)(v8, inited);
  swift_setDeallocating();
  sub_10001CE50();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.execute(sql:parameters:)(Swift::String sql, Swift::OpaquePointer parameters)
{
  v5 = sql;
  rawValue = parameters._rawValue;

  sub_10001A648(v3, v2, sub_100052FF8, &v4);
}

void sub_100052A24()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_100051540();
  sub_1000515B8(v3, v1, v5);

  sub_100005F14();
}

void sub_100052CE8()
{
  sub_100003D8C();
  if (*(v0 + 24))
  {
    sub_100002C4C(v0, &v25);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    sub_100009DBC();
    sub_10000DFC4();

    sub_10000A6E0(v1, v2, v3, v4, v5, v6, v7, v8, v23, v24);
  }

  else
  {
    sub_1000048BC();
    sub_10000A00C(v9, v10, v11);
    v12 = sub_10000821C();
    sub_1000AB4DC(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24);

    sub_1000048BC();
    sub_10000A00C(v20, v21, v22);
  }
}

double sub_100052D94@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_100012A94(), (v4 & 1) != 0))
  {
    v5 = sub_10003AE78(v3);

    sub_100011BAC(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100052E10(uint64_t a1, uint64_t a2, uint64_t a3, Swift::OpaquePointer a4)
{
  v5 = v4;
  sub_100017A08();
  v9 = qword_100268818;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    __chkstk_darwin(v10);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    SQLDatabase.prepare(sql:)(a2, a3);
    if (!v5)
    {
      SQLStatement.bind(parameters:)(a4);
      if (!v13)
      {
        SQLStatement.step()(v12);
      }
    }

    objc_autoreleasePoolPop(v11);
  }
}

unint64_t sub_10005302C()
{
  result = qword_10026A530[0];
  if (!qword_10026A530[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_10026A530);
  }

  return result;
}

uint64_t sub_100053070(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v28 = *v1;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  if (qword_1002686B8 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E5F70;
    *(&v34[0] + 1) = type metadata accessor for AppKeyValueTable();
    *&v33 = v4;
    v35 = v4;

    v9 = AMSLogKey();
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0x203A676E69766153;
    v11._object = 0xE800000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    *(&v34[0] + 1) = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    *&v33 = a1;

    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(&v33, &qword_10026D350, &qword_1001E6050);
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    LogInterpolation.init(stringInterpolation:)();
    v13 = static os_log_type_t.info.getter();
    sub_1000036B0(v13, v8);

    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 64);
    v4 = (v14 + 63) >> 6;

    v17 = 0;
    if (v16)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v4)
      {
        v16 = 0;
        v31 = 0u;
        v32 = 0u;
        v30 = 0u;
        goto LABEL_13;
      }

      v16 = *(a1 + 64 + 8 * v18);
      ++v17;
      if (v16)
      {
        v17 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    sub_100006AD8(&qword_1002686B8);
  }

  while (1)
  {
    v18 = v17;
LABEL_12:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_100011BAC(*(a1 + 56) + 32 * v20, v29);
    *&v30 = v23;
    *(&v30 + 1) = v22;
    sub_100002C4C(v29, &v31);

LABEL_13:
    v33 = v30;
    v34[0] = v31;
    v34[1] = v32;
    v24 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
    }

    v25 = v33;
    sub_100002C4C(v34, &v30);
    v26 = objc_autoreleasePoolPush();
    sub_10005345C(&v30, v35, v25, v24, v28, v29);
    if (v3)
    {
      break;
    }

    v3 = 0;

    objc_autoreleasePoolPop(v26);
    sub_100002C00(&v30);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  objc_autoreleasePoolPop(v26);

  return sub_100002C00(&v30);
}

void sub_10005345C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v75 = a4;
  v74 = a3;
  v10 = type metadata accessor for Date();
  v73 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = a2;
  sub_100053D6C(v15, a2, &v80, &v76);
  if (v6)
  {
    v17 = v80;
    objc_autoreleasePoolPop(v14);
    *a6 = v17;
  }

  else
  {
    v72 = v12;
    v18 = v75;
    objc_autoreleasePoolPop(v14);
    v19 = v78;
    if (v78 == 7)
    {
      if (qword_1002686B8 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001E5F70;
      v79 = type metadata accessor for AppKeyValueTable();
      v76 = v16;

      v21 = AMSLogKey();
      if (v21)
      {
        v22 = v21;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v76);
      LogInterpolation.init(stringLiteral:)();
      v35 = static os_log_type_t.error.getter();
      sub_1000036B0(v35, v20);
    }

    else
    {
      v71 = a2;
      v23 = v76;
      v24 = v77;
      sub_10003A5E0(v76, v77);
      v25 = sub_100024F14();
      v68 = a6;
      v70 = v10;
      v26 = v18;
      if (v25)
      {
        sub_10003A5E0(v23, v24);
        v27 = Data.count.getter();
        sub_100054AA0(v23, v24, v19);
        if (v27 / 1000.0 / 1000.0 > 0.1)
        {
          v69 = v23;
          v64 = v24;
          v28 = [objc_allocWithZone(NSByteCountFormatter) init];
          [v28 setAllowedUnits:4];
          v63 = v28;
          v29 = [v28 stringFromByteCount:v27];
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v30;

          if (qword_1002686B8 != -1)
          {
            swift_once();
          }

          v67 = qword_100287818;
          sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
          v62[1] = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
          v31 = swift_allocObject();
          *(v31 + 16) = xmmword_1001E5F70;
          v62[0] = v31;
          v79 = type metadata accessor for AppKeyValueTable();
          v76 = v71;

          v32 = AMSLogKey();
          v33 = v74;
          if (v32)
          {
            v34 = v32;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          static LogInterpolation.prefix(_:_:)();

          sub_100002C00(&v76);
          LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v36._object = 0x80000001001F4EB0;
          v36._countAndFlagsBits = 0xD000000000000011;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v36);
          v79 = &type metadata for String;
          v76 = v33;
          v77 = v26;

          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_10000A064(&v76, &qword_10026D350, &qword_1001E6050);
          v37._countAndFlagsBits = 0x7469772079656B20;
          v37._object = 0xEA00000000002068;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
          v79 = &type metadata for String;
          v76 = v66;
          v77 = v65;
          LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
          sub_10000A064(&v76, &qword_10026D350, &qword_1001E6050);
          v38._countAndFlagsBits = 0x65756C617620;
          v38._object = 0xE600000000000000;
          LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
          LogInterpolation.init(stringInterpolation:)();
          v39 = static os_log_type_t.default.getter();
          sub_1000036B0(v39, v62[0]);

          v24 = v64;
          v23 = v69;
        }
      }

      v40 = v71;
      v69 = *(v71 + 16);
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(66);
      v41._countAndFlagsBits = 0xD000000000000017;
      v41._object = 0x80000001001F48E0;
      String.append(_:)(v41);
      String.append(_:)(*(v40 + 24));
      v42._countAndFlagsBits = 10272;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43._countAndFlagsBits = 7955819;
      v43._object = 0xE300000000000000;
      String.append(_:)(v43);
      v44._countAndFlagsBits = 8236;
      v44._object = 0xE200000000000000;
      String.append(_:)(v44);
      v45._countAndFlagsBits = 0x6E69616D6F64;
      v45._object = 0xE600000000000000;
      String.append(_:)(v45);
      v46._countAndFlagsBits = 8236;
      v46._object = 0xE200000000000000;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 0x65756C6176;
      v47._object = 0xE500000000000000;
      String.append(_:)(v47);
      v48._countAndFlagsBits = 8236;
      v48._object = 0xE200000000000000;
      String.append(_:)(v48);
      v49._countAndFlagsBits = 0x70795465756C6176;
      v49._object = 0xE900000000000065;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 8236;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51._countAndFlagsBits = 0x69646F4D7473616CLL;
      v51._object = 0xEC00000064656966;
      String.append(_:)(v51);
      v52._countAndFlagsBits = 0xD000000000000015;
      v52._object = 0x80000001001F4E90;
      String.append(_:)(v52);
      v53 = v76;
      v54 = v77;
      sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
      v55 = v24;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001E61C0;
      *(inited + 32) = v74;
      *(inited + 40) = v26;
      *(inited + 48) = 3;
      *(inited + 56) = xmmword_1001E8340;
      *(inited + 72) = 3;
      *(inited + 80) = v23;
      *(inited + 88) = v55;
      *(inited + 96) = 0;
      *(inited + 104) = v19;
      *(inited + 112) = 0;
      *(inited + 120) = 1;
      sub_100054AB4(v23, v55, v19);

      v57 = v72;
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      (*(v73 + 8))(v57, v70);
      *(inited + 128) = v59;
      *(inited + 136) = 0;
      *(inited + 144) = 2;
      v60._countAndFlagsBits = v53;
      v60._object = v54;
      SQLDatabase.execute(sql:parameters:)(v60, inited);
      swift_setDeallocating();
      sub_10001CE50();

      sub_100054AA0(v23, v55, v19);
      sub_100054AA0(v23, v55, v19);
      if (v61)
      {
        *v68 = v61;
      }
    }
  }
}

uint64_t sub_100053D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_100011BAC(a1, v23);
  sub_100054088(v23, &v24);
  sub_10000A064(v23, &qword_10026D350, &qword_1001E6050);
  if (v25)
  {
    sub_100002C4C(&v24, &v26);
    v10 = sub_1000546B0();
    if (v4)
    {
      result = sub_100002C00(&v26);
      *a3 = v4;
    }

    else
    {
      v17 = v10;
      v18 = v11;
      v19 = v12;
      result = sub_100002C00(&v26);
      *a4 = v17;
      *(a4 + 8) = v18;
      *(a4 + 16) = v19;
    }
  }

  else
  {
    sub_10000A064(&v24, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    v28 = qword_100287818;
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F70;
    v27 = type metadata accessor for AppKeyValueTable();
    *&v26 = a2;

    v15 = AMSLogKey();
    if (v15)
    {
      v16 = v15;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v26);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._object = 0x80000001001F4ED0;
    v20._countAndFlagsBits = 0xD00000000000001ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    sub_100011BAC(a1, &v26);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v26, &qword_10026D350, &qword_1001E6050);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v21);
    LogInterpolation.init(stringInterpolation:)();
    v22 = static os_log_type_t.error.getter();
    sub_1000036B0(v22, v14);

    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 7;
  }

  return result;
}

void sub_100054088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    v4 = sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
    if (swift_dynamicCast())
    {
      v5 = *(*__src + 16);
      if (v5)
      {
        v6 = *__src + 32;
        v7 = _swiftEmptyArrayStorage;
        do
        {
          sub_100011BAC(v6, __dst);
          sub_100054088(__dst, __src);
          sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
          if (*&__src[24])
          {
            sub_100002C4C(__src, __dst);
            sub_100011BAC(__dst, __src);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100056024();
              v7 = v9;
            }

            v8 = v7[2];
            if (v8 >= v7[3] >> 1)
            {
              sub_100056024();
              v7 = v10;
            }

            sub_100002C00(__dst);
            v7[2] = v8 + 1;
            sub_100002C4C(__src, &v7[4 * v8 + 4]);
          }

          else
          {
            sub_10000A064(__src, &qword_10026D350, &qword_1001E6050);
          }

          v6 += 32;
          --v5;
        }

        while (v5);
      }

      else
      {

        v7 = _swiftEmptyArrayStorage;
      }

      *(a2 + 24) = v4;
      *a2 = v7;
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    v11 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (swift_dynamicCast())
    {
      v38 = v11;
      v39 = a2;
      v12 = Dictionary.init(dictionaryLiteral:)();
      v13 = 0;
      v14 = *__src + 64;
      v40 = *__src;
      v15 = 1 << *(*__src + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(*__src + 64);
      v18 = (v15 + 63) >> 6;
      v19 = &qword_10026D350;
LABEL_20:
      if (!v17)
      {
        goto LABEL_22;
      }

      do
      {
        v20 = v13;
LABEL_26:
        v21 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v22 = v21 | (v20 << 6);
        sub_10000DF68(*(v40 + 48) + 40 * v22, &v44);
        sub_100011BAC(*(v40 + 56) + 32 * v22, v43);
        *__src = v44;
        *&__src[16] = v45;
        *&__src[32] = v46;
        sub_100002C4C(v43, &__src[40]);
LABEL_27:
        memcpy(__dst, __src, 0x48uLL);
        if (!*(&__dst[1] + 1))
        {

          v39[3] = v38;
          *v39 = v12;
          return;
        }

        *__src = __dst[0];
        *&__src[16] = __dst[1];
        *&__src[32] = *&__dst[2];
        sub_100002C4C((&__dst[2] + 8), v42);
        sub_100054088(v42, &v44);
        sub_10000A064(v42, v19, &qword_1001E6050);
        if (*(&v45 + 1))
        {
          v23 = v19;
          sub_100002C4C(&v44, v43);
          sub_10000DF68(__src, &v44);
          sub_100011BAC(v43, v42);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v12;
          v25 = sub_10000C818(&v44);
          v27 = *(v12 + 16);
          v28 = (v26 & 1) == 0;
          v29 = v27 + v28;
          if (__OFADD__(v27, v28))
          {
            goto LABEL_51;
          }

          v30 = v25;
          v31 = v26;
          sub_10007B9A4(&qword_10026AE60, &qword_1001E8610);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v29))
          {
            v32 = sub_10000C818(&v44);
            if ((v31 & 1) != (v33 & 1))
            {
              goto LABEL_53;
            }

            v30 = v32;
          }

          v12 = v41;
          if (v31)
          {
            v34 = (v41[7] + 32 * v30);
            sub_100002C00(v34);
            sub_100002C4C(v42, v34);
            sub_10000E1E8(&v44);
            sub_100002C00(v43);
            sub_10000E1E8(__src);
          }

          else
          {
            v41[(v30 >> 6) + 8] |= 1 << v30;
            sub_10000DF68(&v44, v41[6] + 40 * v30);
            sub_100002C4C(v42, (v41[7] + 32 * v30));
            sub_10000E1E8(&v44);
            sub_100002C00(v43);
            sub_10000E1E8(__src);
            v35 = v41[2];
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_52;
            }

            v41[2] = v37;
          }

          v19 = v23;
          goto LABEL_20;
        }

        sub_10000E1E8(__src);
        sub_10000A064(&v44, v19, &qword_1001E6050);
      }

      while (v17);
LABEL_22:
      while (1)
      {
        v20 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v20 >= v18)
        {
          v17 = 0;
          memset(__src, 0, sizeof(__src));
          goto LABEL_27;
        }

        v17 = *(v14 + 8 * v20);
        ++v13;
        if (v17)
        {
          v13 = v20;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, __dst, &qword_10026D350, &qword_1001E6050);
  if (*(&__dst[1] + 1))
  {
    sub_10005302C();
    if (swift_dynamicCast())
    {

      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  else
  {
    sub_10000A064(__dst, &qword_10026D350, &qword_1001E6050);
  }

  sub_10004ED94(a1, a2, &qword_10026D350, &qword_1001E6050);
}

uint64_t sub_1000546B0()
{
  v0 = type metadata accessor for String.Encoding();
  sub_100002CC4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002DEC();
  v6 = v5 - v4;
  v7 = sub_10000AB40();
  if ((sub_100004FDC(v7, v8, v9, &type metadata for String) & 1) == 0 || (v10 = v40, static String.Encoding.utf8.getter(), sub_100007924(), sub_1000062D0(), , v11 = sub_100005770(), v12(v11), sub_100012BB0(), v13))
  {
    v14 = sub_10000AB40();
    if ((sub_100004FDC(v14, v15, v16, &type metadata for Int) & 1) == 0 || (v10 = dispatch thunk of CustomStringConvertible.description.getter(), static String.Encoding.utf8.getter(), sub_100007924(), sub_1000062D0(), , v17 = sub_100005770(), v18(v17), sub_100012BB0(), v13))
    {
      v19 = sub_10000AB40();
      if ((sub_100004FDC(v19, v20, v21, &type metadata for Double) & 1) == 0 || (v10 = Double.description.getter(), static String.Encoding.utf8.getter(), sub_100007924(), sub_1000062D0(), , v22 = sub_100005770(), v23(v22), sub_100012BB0(), v13))
      {
        v24 = sub_10000AB40();
        if ((sub_100004FDC(v24, v25, v26, &type metadata for Bool) & 1) == 0 || (!v40 ? (v10 = 0x65736C6166) : (v10 = 1702195828), static String.Encoding.utf8.getter(), sub_100007924(), sub_1000062D0(), , (*(v2 + 8))(v6, v0), sub_100012BB0(), v13))
        {
          sub_10000AB40();
          v27 = sub_10007B9A4(&qword_10026A520, &qword_1001E83B0);
          if (sub_100004FDC(v27, v28, v29, v27))
          {
            v10 = v40;
            objc_opt_self();
            isa = Array._bridgeToObjectiveC()().super.isa;

            v32 = sub_100007EFC(v31, "dataWithPropertyList:format:options:error:");

            v33 = 0;
            if (v32)
            {
LABEL_18:
              static Data._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000062D0();

              return v10;
            }
          }

          else
          {
            sub_10000AB40();
            v34 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
            if (!sub_100004FDC(v34, v35, v36, v34))
            {
              return 0;
            }

            v10 = v40;
            objc_opt_self();
            v37 = Dictionary._bridgeToObjectiveC()().super.isa;

            v32 = sub_100007EFC(v38, "dataWithPropertyList:format:options:error:");

            v33 = 0;
            if (v32)
            {
              goto LABEL_18;
            }
          }

          v10 = v33;
          _convertNSErrorToError(_:)();

          swift_willThrow();
        }
      }
    }
  }

  return v10;
}

uint64_t sub_100054AA0(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_1000253FC(result, a2);
  }

  return result;
}

uint64_t sub_100054AB4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 != 7)
  {
    return sub_10003A5E0(a1, a2);
  }

  return a1;
}

uint64_t sub_100054AC8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

id sub_100054B28()
{
  v1 = *(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore);
  v2 = [v1 ams_activeiCloudAccount];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 ams_iTunesAccountForAccount:v2];
  v5 = type metadata accessor for JSAccount();
  v6 = objc_allocWithZone(v5);
  if (v4)
  {
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v9.receiver = v6;
    v9.super_class = v5;
    v7 = objc_msgSendSuper2(&v9, "init");
  }

  else
  {
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v3;
    v10.receiver = v6;
    v10.super_class = v5;
    return objc_msgSendSuper2(&v10, "init");
  }

  return v7;
}

id sub_100054C50()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14amsengagementd14JSAccountStore_accountStore) ams_fetchLocaliTunesAccount];
  v12 = 0;
  v2 = [v1 resultWithError:&v12];
  v3 = v12;
  if (v2)
  {
    v4 = v2;
    v5 = type metadata accessor for JSAccount();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v4;
    v11.receiver = v6;
    v11.super_class = v5;
    v7 = v3;
    v8 = objc_msgSendSuper2(&v11, "init");
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  return v8;
}

id sub_100054DB0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100054E38(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100054F3C()
{
  v1 = v0;
  if (qword_1002687D0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1002878C8);
  v2 = qword_1002878D0;

  os_unfair_lock_unlock(&dword_1002878C8);
  if (v2)
  {
    v3 = sub_10017C7E8();

    return v3 & 1;
  }

  else
  {
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v10[3] = type metadata accessor for JSNetwork();
    v10[0] = v1;
    v6 = v1;
    v7 = AMSLogKey();
    if (v7)
    {
      v8 = v7;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v10);
    LogInterpolation.init(stringLiteral:)();
    v9 = static os_log_type_t.error.getter();
    sub_1000036B0(v9, v5);

    return 0;
  }
}

id sub_1000551C4(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Bag();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007B9A4(&qword_10026D768, &qword_1001ECC98);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - v12;
  (*(v7 + 16))(v9, a2 + OBJC_IVAR____TtC14amsengagementd5JSBag_bag, v6);
  result = sub_100050BA8(a3);
  if (!v15)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = String._bridgeToObjectiveC()();

  Bag.subscript.getter();

  (*(v7 + 8))(v9, v6);
  Bag.Value.currentOrNil()();
  v17 = v22;
  if (v22)
  {
    v18 = v21;
    sub_100002BC0(0, &qword_10026D738, JSValue_ptr);
    v23 = &type metadata for String;
    v21 = v18;
    v22 = v17;
    v19 = a1;

    result = sub_100055480(&v21, a1);
    if (result)
    {
      v20 = result;
      (*(v11 + 8))(v13, v10);

      return v20;
    }

    goto LABEL_9;
  }

  result = [objc_opt_self() valueWithUndefinedInContext:a1];
  if (result)
  {
    v20 = result;
    (*(v11 + 8))(v13, v10);
    return v20;
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_100055480(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = sub_100003CA8(a1, a1[3]);
    v6 = *(v3 - 8);
    __chkstk_darwin(v5);
    v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v8, v3);
    sub_100002C00(a1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [swift_getObjCClassFromMetadata() valueWithObject:v9 inContext:a2];
  swift_unknownObjectRelease();

  return v10;
}

Class sub_1000555D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  sub_100004918(a1, a2, a3);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = v4;
  v9 = sub_100007594();
  a4(v9, v7);

  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v10.super.isa;
}

void sub_10005568C()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100005338();
  sub_100051540();
  sub_100055920(v3, v1);

  sub_100005F14();
}

uint64_t sub_100055920(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  sub_100002DEC();
  _StringGuts.grow(_:)(41);

  v31 = 0xD000000000000022;
  v32 = 0x80000001001F4E00;
  String.append(_:)(*(v2 + 24));
  v7._countAndFlagsBits = sub_100002F28();
  v7._object = 0xE700000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = sub_100005058();
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x3F20454B494C20;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  sub_10007B9A4(&qword_100269FC8, &qword_1001E7530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001E61B0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = 3;
  v11 = swift_allocObject();

  *(v11 + 16) = Dictionary.init(dictionaryLiteral:)();
  v12 = *(v2 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = v11;
  v23 = a1;
  v13[4] = a1;
  v13[5] = a2;
  v25 = v12;
  v26 = 0xD000000000000022;
  v27 = 0x80000001001F4E00;
  v28 = inited;
  v29 = sub_1000A731C;
  v30 = v13;

  v14 = v34;
  sub_100014A20(sub_100014F50, v24);
  if (v14)
  {

    swift_setDeallocating();
    sub_10001CE50();
  }

  else
  {
    v34 = 0;
    swift_setDeallocating();
    sub_10001CE50();

    if (qword_1002686B8 != -1)
    {
      sub_100006AD8(&qword_1002686B8);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v15 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v15);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v33 = type metadata accessor for AppKeyValueTable();
    v31 = v3;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100007428();
    swift_beginAccess();
    inited = *(v11 + 16);
    v33 = sub_10007B9A4(&qword_10026A9C8, &qword_1001E8380);
    v31 = inited;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    v19._countAndFlagsBits = 0x6E69686374616D20;
    v19._object = 0xEB00000000203A67;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
    v33 = &type metadata for String;
    v31 = v23;
    v32 = a2;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    LogInterpolation.init(stringInterpolation:)();
    v21 = static os_log_type_t.debug.getter();
    sub_1000036B0(v21, v16);
  }

  return inited;
}

uint64_t sub_100055E30()
{

  return _swift_deallocObject(v0);
}

id sub_100055E78(uint64_t a1)
{
  v1 = sub_1000522EC(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v4 = [v3 ams_fetchLocaliTunesAccount];
  v15 = 0;
  v5 = [v4 resultWithError:&v15];
  v6 = v15;
  if (!v5)
  {
    v12 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v7 = v5;
  v8 = type metadata accessor for JSAccount();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC14amsengagementd9JSAccount_account] = v7;
  v14.receiver = v9;
  v14.super_class = v8;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v14, "init");

  return v11;
}

void sub_100056024()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026A008, &qword_1001ED5A0);
    v7 = sub_10001CD54();
    sub_100019BE0(v7);
    sub_100023D60(v8);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000071C0();
  if (v1)
  {
    if (v3 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_100056124(void **a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  v9 = __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  v10 = *a1;
  if (*a1)
  {
    v11 = qword_1002686F0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    *(&v34 + 1) = type metadata accessor for EngagementService();
    *&v33 = a3;
    v14 = a3;
    sub_10000C7B8(a4);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._countAndFlagsBits = 0xD000000000000019;
    v15._object = 0x80000001001F6EC0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v16 = sub_1000617E0(v12, &selRef_data, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
    if (v16)
    {
    }

    *(&v34 + 1) = &type metadata for Bool;
    LOBYTE(v33) = v16 != 0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v17._countAndFlagsBits = 0x7473657571655220;
    v17._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    v18 = [v12 request];
    v19 = v18;
    if (v18)
    {
    }

    *(&v34 + 1) = &type metadata for Bool;
    LOBYTE(v33) = v19 != 0;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v20._countAndFlagsBits = 0x736E6F6974634120;
    v20._object = 0xEA0000000000203ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v21 = sub_100061D78(v12);
    if (v21)
    {
      v22 = *(v21 + 16);
    }

    else
    {
      v22 = 0;
    }

    *(&v34 + 1) = &type metadata for Int;
    *&v33 = v22;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v27._countAndFlagsBits = 41;
    v27._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
    LogInterpolation.init(stringInterpolation:)();
    v28 = static os_log_type_t.default.getter();
    sub_1000036B0(v28, v13);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1001E5F70;
    *(&v34 + 1) = type metadata accessor for EngagementService();
    *&v33 = a3;
    v24 = a3;
    sub_10000C7B8(a4);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v33);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._object = 0x80000001001F6EA0;
    v25._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    if (a2)
    {
      swift_getErrorValue();
      *(&v34 + 1) = v32;
      v26 = sub_100017E64(&v33);
      (*(*(v32 - 8) + 16))(v26);
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v33, &qword_10026D350);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    v30 = static os_log_type_t.error.getter();
    sub_1000036B0(v30, v23);
  }
}

void sub_100056698(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _convertErrorToNSError(_:)();
  }

  v2 = sub_100005B9C();
  v5 = v3;
  v4(v2);
}

uint64_t sub_100056704(uint64_t a1, uint64_t (*a2)(void *, unint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v4[12];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
LABEL_10:
    v28 = static os_log_type_t.debug.getter();
    sub_1000036B0(v28, a3);
  }

  sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
  v9 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v9 dictionaryForKey:v15];
  v31 = 0;
  v17 = [v16 valueWithError:&v31];

  if (!v17)
  {
    v20 = v31;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_1001E5F70;
    v33 = v8;
    v31 = v4;

    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v31);
    v31 = 0;
    v32 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v31 = 0xD000000000000015;
    v32 = 0x80000001001F75A0;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27._countAndFlagsBits = 0x7070696B73202D20;
    v27._object = 0xEB00000000676E69;
    String.append(_:)(v27);
    v33 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A064(&v31, &qword_10026D350, &qword_1001E6050);
    if (qword_1002686B0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v18 = v31;

  if (a1)
  {
    v19 = a1;
  }

  else
  {
    v19 = sub_1000F24F8();
  }

  sub_100056BC4(v19, v17, a2, a3);
}

uint64_t sub_100056BC4(uint64_t a1, void *a2, uint64_t (*a3)(void *, unint64_t), uint64_t a4)
{
  v72 = a3;
  v73 = a4;
  v74 = a2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v4[12];
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v70 = v4[13];

  v71 = v4;
  v69 = sub_100057298();
  v12 = a1 + 56;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;

  v17 = 0;
  v18 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    v19 = v17;
    if (!v15)
    {
LABEL_7:
      v20 = v71;
      while (1)
      {
        v17 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v17 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v17);
        ++v19;
        if (v15)
        {
          goto LABEL_11;
        }
      }

      v45 = v70;

      v46 = v69;

      v47 = sub_10005736C(v18, v45, v20, v46);

      v20[13] = sub_10005823C(v48, v45);

      v49 = 1 << *(v47 + 32);
      v50 = -1;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      v51 = v50 & v47[8];
      v52 = (v49 + 63) >> 6;

      v53 = 0;
      while (v51)
      {
        v54 = v53;
LABEL_40:
        v55 = __clz(__rbit64(v51));
        v51 &= v51 - 1;
        v56 = (v54 << 10) | (16 * v55);
        v57 = (v47[6] + v56);
        v58 = *v57;
        v59 = v57[1];
        v60 = (v47[7] + v56);
        v61 = *v60;
        v62 = v60[1];
        *&v79 = v58;
        *(&v79 + 1) = v59;
        *&v80 = v61;
        *(&v80 + 1) = v62;

        sub_1000F2690(&v79, v20, v72);
      }

      while (1)
      {
        v54 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v54 >= v52)
        {
        }

        v51 = v47[v54 + 8];
        ++v53;
        if (v51)
        {
          v53 = v54;
          goto LABEL_40;
        }
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    while (1)
    {
      v17 = v19;
LABEL_11:
      v21 = a1;
      v22 = (*(a1 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v15)))));
      v23 = *v22;
      v24 = v22[1];
      *&v77 = *v22;
      *(&v77 + 1) = v24;
      swift_bridgeObjectRetain_n();
      v25 = [v74 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v25)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }

      v15 &= v15 - 1;
      v79 = v77;
      v80 = v78;
      if (*(&v78 + 1))
      {
        break;
      }

      sub_10000A064(&v79, &qword_10026D350, &qword_1001E6050);
LABEL_18:
      sub_100012A94();
      if (v26)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v79 = v18;
        v28 = v18[3];
        sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
        _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28);
        v18 = v79;

        _NativeDictionary._delete(at:)();

        goto LABEL_28;
      }

      v19 = v17;
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v68 = v75;
    v67 = v76;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    *&v79 = v18;
    v29 = sub_100012A94();
    v31 = v18[2];
    v32 = (v30 & 1) == 0;
    v65 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_46;
    }

    v33 = v29;
    v34 = v30;
    sub_10007B9A4(&qword_10026AF80, &qword_1001E8710);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v66, v65))
    {
      v35 = sub_100012A94();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_48;
      }

      v33 = v35;
    }

    v37 = v67;
    v38 = v68;
    v18 = v79;
    if (v34)
    {
      v39 = (*(v79 + 56) + 16 * v33);
      *v39 = v68;
      v39[1] = v37;

LABEL_28:

LABEL_29:
      a1 = v21;
      continue;
    }

    break;
  }

  *(v79 + 8 * (v33 >> 6) + 64) |= 1 << v33;
  v40 = (v18[6] + 16 * v33);
  *v40 = v23;
  v40[1] = v24;
  v41 = (v18[7] + 16 * v33);
  *v41 = v38;
  v41[1] = v37;
  v42 = v18[2];
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (!v43)
  {
    v18[2] = v44;
    goto LABEL_29;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

CFPropertyListRef sub_1000571D4(char a1)
{
  sub_1000050F4();
  sub_100006B84();
  v2 = sub_100003040();

  CFPreferencesAppSynchronize(v2);

  sub_1000272C4(a1);
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100003040();

  v5 = sub_100003B80();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  return v7;
}

uint64_t sub_100057298()
{
  sub_100003CA8((v0 + 56), *(v0 + 80));
  if (sub_100057280(3))
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
  }

  return Dictionary.init(dictionaryLiteral:)();
}

unint64_t *sub_10005736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v12 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v8 = sub_1000F3080(v16, v11, v8, a2, a3, a4);

      goto LABEL_6;
    }
  }

  __chkstk_darwin(v12);
  v13 = (&v17 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1000575CC(0, v11, v13);

  v14 = sub_100057630(v13, v11, v8, a2, a3, a4);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    v8 = v14;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v8;
}

uint64_t sub_1000575CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1001EE260;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_100057630(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = result;
  v40 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v51 = a4 + 56;
LABEL_5:
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v47 = (v11 - 1) & v11;
LABEL_12:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(a3 + 56) + 16 * v16);
    v44 = *v20;
    v46 = v20[1];
    if (*(a4 + 16))
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(v51 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(a4 + 48) + 16 * v23);
        if (*v24 != v19 || v24[1] != v18)
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        if (qword_1002686F0 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1001E5F70;
        v50 = type metadata accessor for EngagementSyncCoordinator();
        v48 = a5;

        v27 = AMSLogKey();
        if (v27)
        {
          v28 = v27;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(&v48);
        v48 = 0;
        v49 = 0xE000000000000000;
        _StringGuts.grow(_:)(20);

        v48 = v19;
        v49 = v18;
        v34._object = 0x80000001001F75E0;
        v34._countAndFlagsBits = 0xD000000000000012;
        String.append(_:)(v34);
        v50 = &type metadata for String;
        static LogInterpolation.safe(_:)();
        sub_10000A064(&v48, &qword_10026D350, &qword_1001E6050);
        v35 = static os_log_type_t.debug.getter();
        sub_1000036B0(v35, v45);

        v11 = v47;
        goto LABEL_5;
      }
    }

    else
    {
    }

    if (*(a6 + 16) && (v29 = sub_100012A94(), (v30 & 1) != 0))
    {
      v31 = (*(a6 + 56) + 16 * v29);
      if (*v31 == v44 && v31[1] == v46)
      {

        v11 = v47;
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v11 = v47;
        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {

      v11 = v47;
LABEL_36:
      *(v39 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v40++, 1))
      {
        goto LABEL_41;
      }
    }
  }

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
      v37 = sub_100057FF4(v39, a2, v40, a3);

      return v37;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v47 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_100057AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = *sub_100003CA8((a1 + 16), *(a1 + 40));

  sub_1000179B4(v8, v7);
  sub_1000170D4();
  v15 = 0x80000001001F3050;
  v16 = 0xD000000000000018;
  v17 = a2 == 0xD000000000000018 && 0x80000001001F3050 == a3;
  if (v17 || (v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v16 & 1) != 0))
  {
    sub_10014E140(v16, v15, v9, v10, v11, v12, v13, v14, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  }

  else
  {
    v21 = 0x80000001001F3030;
    v22 = a2 == 0xD000000000000010 && 0x80000001001F3030 == a3;
    if (v22 || (v16 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v16 & 1) != 0))
    {
      sub_10014E2F8(v16, v21, v9, v10, v11, v12, v13, v14, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    }

    else
    {
      v23 = a2 == 0xD000000000000013 && 0x80000001001F3070 == a3;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v18 = sub_10014E4B0(0);
      }

      else
      {
        sub_10005AB4C(a2, a3, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
      }
    }
  }

  LOBYTE(v37) = v18 & 1;
  v38 = v19;
  Promise.resolve(_:)();

  sub_100003CA8((a1 + 16), *(a1 + 40));

  return sub_10001C50C();
}

Swift::Int sub_100057FF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_10007B9A4(&qword_10026E5A8, &unk_1001EE2C0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 16 * v16);
    v22 = v21[1];
    v35 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    v32 = (*(v9 + 56) + 16 * v26);
    *v32 = v35;
    v32[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v34;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000582F4()
{

  return sub_1000AB8EC();
}

uint64_t sub_100058314()
{

  return swift_task_alloc();
}

uint64_t sub_100058340(uint64_t a1)
{
}

uint64_t sub_100058368()
{
}

uint64_t sub_100058384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v6 = *v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v3[12];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v13)
  {
    if (a1)
    {
      v38 = a3;
      v15 = a1 + 56;
      v16 = 1 << *(a1 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a1 + 56);
      v19 = (v16 + 63) >> 6;
      v40 = a1;

      v20 = 0;
      v21 = _swiftEmptyArrayStorage;
      while (v18)
      {
        result = v40;
LABEL_13:
        v23 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v24 = (*(result + 48) + ((v20 << 10) | (16 * v23)));
        v25 = *v24;
        v26 = v24[1];

        v27._countAndFlagsBits = v25;
        v27._object = v26;
        v28 = _findStringSwitchCase(cases:string:)(&off_100244E20, v27);

        if (v28 <= 3)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000589D0();
            v21 = v31;
          }

          v29 = v21[2];
          v30 = v29 + 1;
          if (v29 >= v21[3] >> 1)
          {
            v37 = v29 + 1;
            sub_1000589D0();
            v30 = v37;
            v21 = v32;
          }

          v21[2] = v30;
          *(v21 + v29 + 32) = v28;
        }
      }

      result = v40;
      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {

          a3 = v38;
          goto LABEL_21;
        }

        v18 = *(v15 + 8 * v22);
        ++v20;
        if (v18)
        {
          v20 = v22;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v21 = &off_100244588;
LABEL_21:
      v33 = 0;
      v34 = v21[2];
      v35 = v39;
      while (1)
      {
        if (v34 == v33)
        {
        }

        if (v33 >= v21[2])
        {
          break;
        }

        v36 = v33 + 1;
        v41 = *(v21 + v33 + 32);
        result = sub_100058AA0(&v41, v3, v35, a3, v6);
        v33 = v36;
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100058694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, unint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1001E5F70;
    v18[3] = a5;
    v18[0] = v10;

    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v18);
    LogInterpolation.init(stringLiteral:)();
    v17 = static os_log_type_t.debug.getter();
    sub_1000036B0(v17, v11);

    sub_100056704(a2, a3, a4);
    sub_100058384(a2, a3, a4);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F70;
    sub_10004167C();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.init(stringLiteral:)();
    v15 = static os_log_type_t.error.getter();
    sub_1000036B0(v15, v14);
  }
}

void sub_1000589D0()
{
  sub_10000C398();
  if (v4)
  {
    sub_100002EBC();
    if (v5 != v6)
    {
      sub_10000AE9C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  sub_10000B860();
  if (v3)
  {
    sub_10007B9A4(&qword_10026A038, &unk_1001E75B0);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * v8 - 64;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_1000071C0();
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

uint64_t sub_100058AA0(_BYTE *a1, void *a2, uint64_t (*a3)(uint64_t, unint64_t), uint64_t a4, void *a5)
{
  v54 = a5;
  v52 = a4;
  v53 = a3;
  v7 = 0x636974796C616E61;
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v56 = type metadata accessor for Date();
  v9 = *(v56 - 8);
  v10 = __chkstk_darwin(v56);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v47 - v13;
  v14 = *a1;
  v15 = 0xE900000000000073;
  switch(*a1)
  {
    case 1:
      v15 = 0xE800000000000000;
      v7 = 0x6C616E7265746E69;
      break;
    case 2:
      v15 = 0xE800000000000000;
      v7 = 0x7379656E72756F6ALL;
      break;
    case 3:
      v7 = 0x6E656D6D6F636572;
      v15 = 0xEF736E6F69746164;
      break;
    default:
      break;
  }

  swift_beginAccess();
  v16 = a2[13];

  v17 = sub_10005938C(v7, v15, v16);

  if (v17)
  {
  }

  sub_10000F284(v14, 2, v64);
  sub_100059478(a2 + 7, v55);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v20 = v19;
  v21 = *(v9 + 8);
  v51 = v9 + 8;
  v50 = v21;
  v21(v12, v56);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v49 = *(*(type metadata accessor for LogInterpolation() - 8) + 72);
  v22 = swift_allocObject();
  v23 = v22;
  *(v22 + 16) = xmmword_1001E5F70;
  if (v20 >= 100800.0)
  {
    v48 = v22;
    v61 = v54;
    v58 = *&a2;

    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v58);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v32._countAndFlagsBits = 0x6E65656220736148;
    v32._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
    v61 = &type metadata for Double;
    v58 = v20;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v33._countAndFlagsBits = 0x73646E6F63657320;
    v33._object = 0xEF2065636E697320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
    v61 = &type metadata for String;
    v58 = *&v7;
    v59 = v15;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v34._object = 0x80000001001F7520;
    v34._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v35 = static os_log_type_t.debug.getter();
    sub_1000036B0(v35, v48);

    swift_beginAccess();

    sub_1000190C0(v63, v7, v15, v36, v37, v38, v39, v40, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, *&v58, v59, v60, v61, v62, v63[0], v63[1], v63[2], v63[3], v63[4], v64[0]);
    swift_endAccess();

    v41 = 0xE900000000000073;
    v42 = 0x636974796C616E61;
    switch(v14)
    {
      case 1:
        v41 = 0xE800000000000000;
        v42 = 0x6C616E7265746E69;
        break;
      case 2:
        v41 = 0xE800000000000000;
        v42 = 0x7379656E72756F6ALL;
        break;
      case 3:
        v42 = 0x6E656D6D6F636572;
        v41 = 0xEF736E6F69746164;
        break;
      default:
        break;
    }

    v53(v42, v41);

    v43 = swift_allocObject();
    v43[2] = a2;
    v43[3] = v7;
    v43[4] = v15;
    v44 = swift_allocObject();
    v44[2] = a2;
    v44[3] = v7;
    v44[4] = v15;
    v45 = a2[12];
    v61 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v62 = &protocol witness table for OS_dispatch_queue;
    v58 = *&v45;
    swift_retain_n();

    v46 = v45;
    Promise.then(perform:orCatchError:on:)();

    sub_10000FF10(v64);
    v50(v55, v56);
    return sub_100002C00(&v58);
  }

  else
  {
    v61 = v54;
    v58 = *&a2;

    v24 = AMSLogKey();
    if (v24)
    {
      v25 = v24;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v58);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0x6E65656220736148;
    v28._object = 0xE900000000000020;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v61 = &type metadata for Double;
    v58 = v20;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v29._countAndFlagsBits = 0x73646E6F63657320;
    v29._object = 0xEF2065636E697320;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    v61 = &type metadata for String;
    v58 = *&v7;
    v59 = v15;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v58, &qword_10026D350, &qword_1001E6050);
    v30._object = 0x80000001001F7500;
    v30._countAndFlagsBits = 0xD000000000000018;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v31 = static os_log_type_t.debug.getter();
    sub_1000036B0(v31, v23);
    sub_10000FF10(v64);

    return (v50)(v55, v56);
  }
}

BOOL sub_10005938C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_100059478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  sub_100003CA8(a1, a1[3]);
  v9 = sub_100057280(8);
  if (v9 && (v13[1] = v9, sub_10007B9A4(&qword_10026A0A0, &qword_1001E77F8), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v13[0];
  }

  else
  {
    type metadata accessor for Date();
    v10 = Dictionary.init(dictionaryLiteral:)();
  }

  switch(*(v3 + 1))
  {
    case 1:
      sub_1000062AC();
      break;
    case 2:
      sub_10000571C();
      break;
    case 3:
      sub_100002ECC();
      break;
    default:
      break;
  }

  sub_10005968C(v10, v8);

  v11 = type metadata accessor for Date();
  if (sub_100009F34(v8, 1, v11) != 1)
  {
    return (*(*(v11 - 8) + 32))(a2, v8, v11);
  }

  static Date.distantPast.getter();
  result = sub_100009F34(v8, 1, v11);
  if (result != 1)
  {
    return sub_10009D8AC(v8);
  }

  return result;
}

uint64_t sub_10005968C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_100012A94(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for Date();
    sub_100002DDC();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = a2;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    type metadata accessor for Date();
    v10 = sub_10000E6B0();
  }

  return sub_10000A7C0(v10, v11, v12, v13);
}

uint64_t sub_10005973C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003F74();
  v6 = v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100002DEC();
  v13 = v12 - v11;
  v25 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100002DEC();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = v6;
  aBlock[4] = sub_100062B58;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_10024B3A0;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_10004DE28();
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10004DDC4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v9 + 8))(v13, v7);
  (*(v15 + 8))(v19, v25);
}

uint64_t sub_100059A00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0);
}

uint64_t sub_100059A38()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100059A80(uint64_t a1)
{
  if (a1)
  {

    v2 = sub_100062640(v1);
  }

  else
  {
    v2 = 0;
  }

  sub_100004AA0();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10005973C(v2, sub_1000F0FF0, v3);
}

uint64_t sub_100059B34()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_100059B64(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = (a1 + OBJC_IVAR____TtC14amsengagementd17EngagementService_engineReleaseToken);
  *v8 = a2;
  v8[1] = a3;

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E6580;
  sub_10004167C();
  static LogInterpolation.prefix<A>(_:_:)();

  v20 = &type metadata for String;
  v17 = 0xD000000000000018;
  v18 = 0x80000001001F7170;
  static LogInterpolation.safe(_:)();
  sub_10000A0C4(&v17, &qword_10026D350);
  LogInterpolation.init(stringLiteral:)();
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x80000001001F71B0;
  v10._countAndFlagsBits = 0xD000000000000015;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v8[1];
  if (v11)
  {
    v12 = *v8;
    v13 = &type metadata for String;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v19 = 0;
  }

  v17 = v12;
  v18 = v11;
  v20 = v13;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A0C4(&v17, &qword_10026D350);
  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
  LogInterpolation.init(stringInterpolation:)();
  v15 = static os_log_type_t.debug.getter();
  sub_1000036B0(v15, v9);
}

uint64_t sub_100059E3C()
{
  ObjectType = swift_getObjectType();
  v60 = type metadata accessor for DispatchTimeInterval();
  sub_100002CC4();
  v58 = v1;
  __chkstk_darwin(v2);
  sub_100002DEC();
  v55 = (v4 - v3);
  v59 = type metadata accessor for DispatchTime();
  sub_100002CC4();
  v65 = v5;
  __chkstk_darwin(v6);
  sub_1000056E8();
  v56 = v7 - v8;
  __chkstk_darwin(v9);
  v57 = v51 - v10;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v64 = v11;
  __chkstk_darwin(v12);
  sub_100002DEC();
  sub_10005E2AC();
  type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v62 = v13;
  v63 = v14;
  __chkstk_darwin(v13);
  sub_100002DEC();
  v17 = v16 - v15;
  type metadata accessor for UUID();
  sub_100002CC4();
  __chkstk_darwin(v18);
  sub_100002DEC();
  sub_10000C79C();
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v54 = v19;
  v21 = v20;
  v22 = sub_100008FE8();
  v23(v22);
  v51[5] = *&v0[OBJC_IVAR____TtC14amsengagementd17EngagementService_serviceQueue];
  sub_1000083D8();
  v24 = swift_allocObject();
  v24[2] = v0;
  v24[3] = v19;
  v52 = v21;
  v25 = ObjectType;
  v24[4] = v21;
  v24[5] = v25;
  v71 = sub_100059E30;
  v72 = v24;
  aBlock = _NSConcreteStackBlock;
  v68 = 1107296256;
  v53 = &v69;
  v69 = sub_100005E50;
  v70 = &unk_10024B2D8;
  v26 = _Block_copy(&aBlock);
  v51[1] = v0;

  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  sub_10000B890();
  v51[4] = sub_100005DC0(v27, v28, &protocol conformance descriptor for DispatchWorkItemFlags);
  v51[3] = sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  v51[2] = sub_1000140D0(v29, v30, &unk_1001E74F0, v31);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);
  v32 = *(v64 + 8);
  v64 += 8;
  v51[0] = v32;
  v33 = sub_100006378();
  v34(v33);
  v35 = *(v63 + 8);
  v63 += 8;
  v35(v17, v62);

  v36 = v56;
  static DispatchTime.now()();
  v37 = v55;
  *v55 = 1;
  (*(v58 + 104))(v37, enum case for DispatchTimeInterval.seconds(_:), v60);
  v38 = v57;
  sub_100007F3C();
  + infix(_:_:)();
  v39 = sub_10000A19C();
  v40(v39);
  v41 = *(v65 + 8);
  v65 += 8;
  v42 = v36;
  v43 = v59;
  v41(v42, v59);
  sub_100004AA0();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000083D8();
  v45 = swift_allocObject();
  v46 = v54;
  v45[2] = v44;
  v45[3] = v46;
  v47 = ObjectType;
  v45[4] = v52;
  v45[5] = v47;
  v71 = sub_1000F0FE4;
  v72 = v45;
  sub_1000181CC();
  v68 = 1107296256;
  v69 = sub_100005E50;
  v70 = &unk_10024B328;
  v48 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v66 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v48);
  v49 = sub_100006378();
  (v51[0])(v49);
  v35(v17, v62);
  v41(v38, v43);
}

uint64_t sub_10005A48C()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005A4F8(void *a1)
{
  type metadata accessor for ActivityObserver();
  swift_initStaticObject();
  if (sub_10004ADCC())
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001E5F70;
    v14 = type metadata accessor for EngagementService();
    v13[0] = a1;
    v3 = a1;
    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v13);
    LogInterpolation.init(stringLiteral:)();
    v10 = static os_log_type_t.default.getter();
    sub_1000036B0(v10, v2);

    return sub_10004A6E8(0);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001E5F70;
    v14 = type metadata accessor for EngagementService();
    v13[0] = a1;
    v7 = a1;
    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v13);
    LogInterpolation.init(stringLiteral:)();
    v12 = static os_log_type_t.info.getter();
    sub_1000036B0(v12, v6);
  }
}

void sub_10005A824()
{
  sub_100003D74();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100002DEC();
  v8 = v7 - v6;
  v21 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  sub_100012F7C();
  if (qword_1002687F0 != -1)
  {
    swift_once();
  }

  sub_100004AA0();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  v22[4] = sub_100062734;
  v22[5] = v12;
  sub_100002E50();
  v22[1] = 1107296256;
  sub_100007A28();
  v22[2] = v13;
  v22[3] = &unk_10024B288;
  v14 = _Block_copy(v22);
  v15 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v18, v19, &unk_1001E74F0, v20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v1, v21);

  sub_100005F14();
}

uint64_t sub_10005AA98()
{
  v1 = sub_100005254();

  return _swift_deallocObject(v1);
}

uint64_t sub_10005AAF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10015398C();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();
  }

  return 0;
}

void sub_10005AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_100048F8C();
  a25 = v27;
  a26 = v28;
  a12 = 0;
  a13 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  sub_100004B44();
  a12 = 0xD00000000000001DLL;
  a13 = v29;
  v30._countAndFlagsBits = sub_100004894();
  String.append(_:)(v30);
  v31._countAndFlagsBits = 96;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v33 = a12;
  v32 = a13;
  sub_100022280();
  v34 = sub_100004894();
  v36 = sub_10005AE84(v34, v35);
  if (v26)
  {
  }

  else if (v36)
  {
    sub_100004AA0();
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    v38 = sub_100004BC8(&unk_10024F078);
    *(v38 + 16) = 0;
    sub_100022280();
    sub_100002FB8();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v37;
    sub_10005AFD4(v33, v32, _swiftEmptyArrayStorage, sub_10005B514, v39);

    sub_10000602C(v37 + 16, &a12);
    if (*(v37 + 16))
    {
      sub_10000602C(v38 + 16, &a9);

      goto LABEL_7;
    }

    v44 = sub_10015398C();
    v45 = sub_100007544(&type metadata for MercuryCacheError, v44);
    sub_100006E04(v45, v46, v47);
  }

  else
  {

    v40 = sub_10015398C();
    v41 = sub_100007544(&type metadata for MercuryCacheError, v40);
    sub_10000A480(v41, v42, v43);
  }

  swift_willThrow();
LABEL_7:
  sub_10000A8C0();
  sub_100154284();
}

uint64_t sub_10005AD68()
{

  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005ADA4()
{
}

uint64_t sub_10005ADF4()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10005AE20()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10005AE50(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

uint64_t sub_10005AE68(uint64_t a1, ...)
{

  return String.hash(into:)();
}

uint64_t sub_10005AE84(uint64_t a1, void *a2)
{
  LOBYTE(v3) = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  _StringGuts.grow(_:)(23);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 10592;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  sub_10005AFD4(0xD000000000000013, 0x80000001001FE780, _swiftEmptyArrayStorage, sub_10005B1CC, v6);
  if (v2)
  {
  }

  else
  {

    swift_beginAccess();
    v3 = *(v6 + 16);
  }

  return v3 & 1;
}

uint64_t sub_10005AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v14 = v5;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = sub_10005B154;
  v19 = v11;

  sub_100014A20(sub_100014768, &v13);
}

uint64_t sub_10005B098()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10005B0D0(uint64_t a1, uint64_t (*a2)(void *))
{
  v6[3] = type metadata accessor for SQLRow();
  v6[4] = &off_100248500;
  v6[0] = a1;

  v4 = a2(v6);
  sub_100002C00(v6);
  return v4 & 1;
}

uint64_t sub_10005B174(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = 1;
  return 0;
}

uint64_t sub_10005B1EC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CA8(a1, a1[3]);
  sub_100041D2C(0x797269707865, 0xE600000000000000);
  if (v3)
  {
  }

  else if ((v11 & 1) == 0)
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    Date.timeIntervalSinceNow.getter();
    v13 = v12;
    (*(v8 + 8))(v10, v7);
    swift_beginAccess();
    *(a2 + 16) = v13 < 0.0;
  }

  sub_100003CA8(a1, a1[3]);
  sub_10003A420(v25);
  v14 = *(&v25[0] + 1);
  if (*(&v25[0] + 1) >> 60 == 15)
  {
    goto LABEL_11;
  }

  v15 = *&v25[0];
  v16 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v25[0] = 0;
  v18 = [v16 JSONObjectWithData:isa options:0 error:v25];

  if (!v18)
  {
    v23 = *&v25[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10003AE18(v15, v14);

    goto LABEL_11;
  }

  v19 = *&v25[0];
  _bridgeAnyObjectToAny(_:)();
  sub_10003AE18(v15, v14);
  swift_unknownObjectRelease();
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    sub_10015398C();
    swift_allocError();
    *v21 = 4;
    swift_willThrow();
    return 0;
  }

  v20 = v24[1];
  swift_beginAccess();
  *(a3 + 16) = v20;

  return 0;
}

void sub_10005B634(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9;
  v56 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v9 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100011BAC(*(a1 + 56) + 32 * v13, v67);
    v66[0] = v16;
    v66[1] = v15;
    sub_100011BAC(v67, &v65);

    sub_10007B9A4(&qword_10026D6D8, &qword_1001ECB70);
    if (swift_dynamicCast())
    {
      v61 = v8;
      v17 = *(v64 + 16);
      if (v17)
      {
        v59 = a1;
        v65 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v18 = 32;
        do
        {
          v19 = *(v64 + v18);

          sub_10012B718(v16, v15, v19, a2);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v18 += 8;
          --v17;
        }

        while (v17);

        v20 = v65;
        a1 = v59;
      }

      else
      {

        v20 = _swiftEmptyArrayStorage;
      }

      sub_100009F5C(v66, qword_10026A9D8, &unk_1001E8390);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005BE18(0, v10[2] + 1, 1, v10);
        v10 = v23;
      }

      v22 = v10[2];
      v21 = v10[3];
      if (v22 >= v21 >> 1)
      {
        sub_10005BE18(v21 > 1, v22 + 1, 1, v10);
        v10 = v24;
      }

      v10[2] = v22 + 1;
      v10[v22 + 4] = v20;
      v8 = v61;
      goto LABEL_4;
    }

    sub_100009F5C(v66, qword_10026A9D8, &unk_1001E8390);
    v11 = v9;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v25 = 0;
      v26 = _swiftEmptyArrayStorage;
      v27 = v10[2];
      v60 = v10 + 4;
      v55 = v27;
      while (1)
      {
        if (v25 == v27)
        {

          sub_10005BED8();
          v48 = (*(v54 + OBJC_IVAR____TtC14amsengagementd9JSMetrics_runtime) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest);
          v49 = v48[1];
          if (v49)
          {
            v50 = *v48;
          }

          else
          {
            v50 = 0;
          }

          sub_100004AA0();
          v51 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v52 = swift_allocObject();
          v52[2] = v51;
          v52[3] = v50;
          v52[4] = v49;
          v52[5] = v26;
          v52[6] = ObjectType;

          sub_10011F39C("enqueueBatch(_:_:)", 0x12uLL, 2, sub_10012BF6C, v52);

          return;
        }

        if (v25 >= v10[2])
        {
          goto LABEL_60;
        }

        v28 = v60[v25];
        if (v28 >> 62)
        {
          v29 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = v26 >> 62;
        if (v26 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = v31 + v29;
        if (__OFADD__(v31, v29))
        {
          goto LABEL_61;
        }

        v63 = v29;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v30)
        {
          goto LABEL_35;
        }

        v33 = v26 & 0xFFFFFFFFFFFFFF8;
        if (v32 > *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_36;
        }

LABEL_37:
        ++v25;
        v34 = *(v33 + 16);
        v35 = (*(v33 + 24) >> 1) - v34;
        v36 = v33 + 8 * v34;
        v62 = v33;
        if (v28 >> 62)
        {
          v38 = _CocoaArrayWrapper.endIndex.getter();
          if (!v38)
          {
            goto LABEL_51;
          }

          v39 = v38;
          v40 = _CocoaArrayWrapper.endIndex.getter();
          if (v35 < v40)
          {
            goto LABEL_65;
          }

          if (v39 < 1)
          {
            goto LABEL_66;
          }

          v57 = v40;
          v58 = v25;
          sub_10012BF08();
          for (i = 0; i != v39; ++i)
          {
            sub_10007B9A4(&qword_10026BF58, &qword_1001EA270);
            v42 = sub_10018BD7C(v66, i, v28);
            v44 = *v43;
            (v42)(v66, 0);
            *(v36 + 32 + 8 * i) = v44;
          }

          v27 = v55;
          v10 = v56;
          v25 = v58;
          v37 = v57;
LABEL_47:

          if (v37 < v63)
          {
            goto LABEL_62;
          }

          if (v37 > 0)
          {
            v45 = *(v62 + 16);
            v46 = __OFADD__(v45, v37);
            v47 = v45 + v37;
            if (v46)
            {
              goto LABEL_63;
            }

            *(v62 + 16) = v47;
          }
        }

        else
        {
          v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v37)
          {
            if (v35 < v37)
            {
              goto LABEL_64;
            }

            sub_100002BC0(0, &qword_10026DEB8, AMSMetricsEvent_ptr);
            swift_arrayInitWithCopy();
            goto LABEL_47;
          }

LABEL_51:

          if (v63 > 0)
          {
            goto LABEL_62;
          }
        }
      }

      if (v30)
      {
LABEL_35:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_36:
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v33 = v26 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_37;
    }

    v7 = *(v4 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_10005BC88()
{
  swift_unknownObjectWeakDestroy();
  sub_100004AA0();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005BCBC()
{

  return _swift_deallocObject(v0);
}

void sub_10005BD04(char a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a3)
  {
    sub_100002EBC();
    if (v13 != v14)
    {
      sub_10000AE9C();
      if (v13)
      {
        __break(1u);
        return;
      }

      sub_100004F88();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    sub_10007B9A4(a5, a6);
    v17 = sub_10001CD54();
    v18 = j__malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 8);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007B9A4(a7, a8);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10005BE3C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100004AFC();
  [v0 doubleForKey:v1];
  v3 = v2;

  v4.n128_u64[0] = v3;

  return Date.init(timeIntervalSince1970:)(v4);
}

void sub_10005BED8()
{
  sub_100003D74();
  v37 = v1;
  sub_100002DFC();
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  v3 = sub_100003D10(v2);
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (v0 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v36 = v0 & 0xC000000000000001;
    v33 = v0 + 32;
    v34 = i;
    v35 = v0;
    while (1)
    {
      sub_1000F1168();
      v6 = v36 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v33 + 8 * v5);
      v7 = v6;
      v8 = __OFADD__(v5, 1);
      v9 = v5 + 1;
      if (v8)
      {
        break;
      }

      v38 = v9;
      *&v43 = 0;
      *(&v43 + 1) = 0xE000000000000000;
      v10 = &unk_100245050;
      v11 = 3;
      do
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;

        v14._countAndFlagsBits = v12;
        v14._object = v13;
        String.append(_:)(v14);
        v15._countAndFlagsBits = 61;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);
        v16 = String._bridgeToObjectiveC()();

        v17 = [v7 propertyForBodyKey:v16];

        if (v17)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_100002C4C(&v39, &v40);
        }

        else
        {
          v41 = &type metadata for String;
          *&v40 = 0;
          *(&v40 + 1) = 0xE000000000000000;
        }

        _print_unlocked<A, B>(_:_:)();
        sub_100002C00(&v40);
        v18._countAndFlagsBits = 8251;
        v18._object = 0xE200000000000000;
        String.append(_:)(v18);
        String.append(_:)(v42);

        v10 += 2;
        --v11;
      }

      while (v11);
      if (qword_1002686E8 != -1)
      {
        sub_100006D40();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v19 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v19);
      sub_1000056F8();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1001E5F70;
      v41 = type metadata accessor for JSMetrics();
      *&v40 = v37;
      v21 = v37;
      v22 = AMSLogKey();
      if (v22)
      {
        v23 = v22;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v40);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._object = 0x80000001001FC0F0;
      v24._countAndFlagsBits = 0xD000000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
      v25 = [v7 topic];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v20;
      v29 = v28;

      v41 = &type metadata for String;
      *&v40 = v26;
      *(&v40 + 1) = v29;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(&v40, &qword_10026D350, &qword_1001E6050);
      v30._countAndFlagsBits = 8251;
      v30._object = 0xE200000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v30);
      v41 = &type metadata for String;
      v40 = v43;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100009F5C(&v40, &qword_10026D350, &qword_1001E6050);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
      LogInterpolation.init(stringInterpolation:)();
      v32 = static os_log_type_t.default.getter();
      sub_1000036B0(v32, v27);

      v0 = v35;
      v5 = v38;
      if (v38 == v34)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  sub_100005F14();
}

uint64_t sub_10005C354(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for JSPromise();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = a1;

    JSPromise.init(in:executor:)();
    if (v3)
    {
    }

    else
    {
      a3 = JSPromise.value.getter();

      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_10010C05C();
    v12 = static JSContext.requiredCurrent.getter();
    __chkstk_darwin(v12);
    v14[-2] = a2;
    v14[-1] = a3;
    a3 = JSContext.propagateErrorsToExceptions(_:)();
  }

  return a3;
}

void sub_10005C4E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = a2(a1);
}

void sub_10005C7D0()
{
  if (*(v0 + 16))
  {
    type metadata accessor for JSStack();
    sub_10000A610();
    type metadata accessor for BaseObjectGraph();

    sub_100003B80();
    inject<A, B>(_:from:)();
    if (qword_1002686C0 != -1)
    {
      sub_1000031E0(&qword_1002686C0);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v1 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v1);
    sub_1000056F8();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1001E5F70;
    v4[3] = type metadata accessor for JSAppEngine();
    v4[0] = v0;
    if (*(*(v0 + 24) + OBJC_IVAR____TtC14amsengagementd9JSRuntime_currentRequest + 8))
    {
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v4);
    LogInterpolation.init(stringLiteral:)();
    v3 = static os_log_type_t.debug.getter();
    sub_1000036B0(v3, v2);

    JSStack.requestGarbageCollection()();
  }
}

uint64_t sub_10005C9BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for JSONObject();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007B9A4(&qword_10026D678, &qword_1001EC9E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - v8;
  JSResponse.body.getter();
  CoarselyTimed.contained.getter();
  (*(v7 + 8))(v9, v6);
  v10 = sub_10002F144();
  (*(v3 + 8))(v5, v2);
  if (v10 && (v11 = sub_10005CC34(v10), result = , v11))
  {
    *a1 = v11;
  }

  else
  {
    sub_1001026F8();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_10005CBA4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  a3(&v4, a1);
  Promise.resolve(_:)();
}

uint64_t sub_10005CC34(void *a1)
{
  if (a1[2])
  {
    sub_10007B9A4(&qword_10026C910, &qword_1001EBDF0);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_100004E5C();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          return v2;
        }

        v5 = a1[v10 + 8];
        ++v9;
        if (v5)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10000DF68(a1[6] + 40 * v11, __src);
    sub_100011BAC(a1[7] + 32 * v11, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000DF68(__dst, v22);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_100011BAC(&__dst[40], v23);
    sub_10005CEA0(__dst);
    v24 = v21;
    sub_100002C4C(v23, v25);
    v12 = v24;
    sub_100002C4C(v25, v26);
    sub_100002C4C(v26, &v24);
    result = sub_100012A94();
    v13 = result;
    if (v14)
    {
      *(v2[6] + 16 * result) = v12;

      v15 = (v2[7] + 32 * v13);
      sub_100002C00(v15);
      result = sub_100002C4C(&v24, v15);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_20;
      }

      sub_100007BD8();
      *(v2 + v16 + 64) |= v17;
      *(v2[6] + 16 * v13) = v12;
      result = sub_100002C4C(&v24, (v2[7] + 32 * v13));
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_21;
      }

      v2[2] = v20;
      v9 = v10;
    }
  }

  sub_10005CEA0(__dst);

  return 0;
}

uint64_t sub_10005CEA0(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026E5B0, &unk_1001EDC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005CF08()
{

  sub_100007A3C();

  return _swift_deallocObject(v0);
}

uint64_t sub_10005CF44()
{
  sub_10000A610();
  v0 = type metadata accessor for Date();
  sub_100002CFC(v0);
  sub_100004CA8();
  v1 = sub_100003B80();

  return sub_10005CFDC(v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10005CFDC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  v11 = __chkstk_darwin(v10 - 8);
  __chkstk_darwin(v11);
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (a5)
    {
      v15 = String._bridgeToObjectiveC()();
    }

    else
    {
      v15 = 0;
    }

    sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001E61B0;
    Date.timeIntervalSinceNow.getter();
    *(v19 + 56) = &type metadata for Double;
    *(v19 + 64) = &protocol witness table for Double;
    *(v19 + 32) = fabs(v20);
    v21 = String.init(format:_:)();
    if (a2)
    {
      v39 = v22;
      v23 = v21;
      swift_errorRetain();
      if (qword_1002686C0 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1001E5F70;
      v45 = type metadata accessor for JSAppEngine();
      v42 = v14;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v42);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v25._countAndFlagsBits = 0xD000000000000012;
      v25._object = 0x80000001001F9BE0;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
      v45 = &type metadata for String;
      v42 = v23;
      v43 = v39;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
      v26._countAndFlagsBits = 0x3A726F7272652029;
      v26._object = 0xE900000000000020;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
      swift_getErrorValue();
      v45 = v41;
      v27 = sub_100017E64(&v42);
      (*(*(v41 - 1) + 16))(v27);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
      v28._countAndFlagsBits = 0;
      v28._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
      LogInterpolation.init(stringInterpolation:)();
      v29 = static os_log_type_t.error.getter();
      sub_1000036B0(v29, v24);
    }

    else
    {
      if (v12)
      {
        v40 = v22;
        v30 = v21;
        if (qword_1002686C0 != -1)
        {
          swift_once();
        }

        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1001E5F70;
        v45 = type metadata accessor for JSAppEngine();
        v42 = v14;

        static LogInterpolation.prefix(_:_:)();
        sub_100002C00(&v42);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v32._countAndFlagsBits = 0xD000000000000013;
        v32._object = 0x80000001001F9BC0;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
        v45 = &type metadata for String;
        v42 = v30;
        v43 = v40;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
        v33._countAndFlagsBits = 0x203A617461642029;
        v33._object = 0xE800000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v33);
        v34 = sub_10005D6E8(v12);
        if (v35)
        {
          v36 = &type metadata for String;
        }

        else
        {
          v34 = 0;
          v36 = 0;
          v44 = 0;
        }

        v42 = v34;
        v43 = v35;
        v45 = v36;
        LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
        sub_10000A064(&v42, &qword_10026D350, &qword_1001E6050);
        v37._countAndFlagsBits = 0;
        v37._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v37);
        LogInterpolation.init(stringInterpolation:)();
        v38 = static os_log_type_t.default.getter();
        sub_1000036B0(v38, v31);
      }
    }
  }

  else
  {
    if (qword_1002686C0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    static LogInterpolation.prefix<A>(_:_:)();
    LogInterpolation.init(stringLiteral:)();
    v17 = static os_log_type_t.error.getter();
    sub_1000036B0(v17, v16);
  }
}

uint64_t sub_10005D6E8(void *a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19[0] = 0;
  v6 = [v4 dataWithJSONObject:isa options:2 error:v19];

  v7 = v19[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    sub_1000253FC(v8, v10);
  }

  else
  {
    v12 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001E5F70;
    v14 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for JSAppEngine();
    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x80000001001F9C00;
    v15._countAndFlagsBits = 0xD000000000000015;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    v19[3] = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
    v19[0] = a1;

    LogInterpolation.StringInterpolation.appendInterpolation(sensitive:)();
    sub_10000A064(v19, &qword_10026D350, &qword_1001E6050);
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v16);
    LogInterpolation.init(stringInterpolation:)();
    if (qword_1002686B0 != -1)
    {
      swift_once();
    }

    v17 = static os_log_type_t.error.getter();
    sub_1000036B0(v17, v13);

    return 0;
  }

  return v11;
}

uint64_t sub_10005DABC@<X0>(void *x8_0@<X8>)
{
  v4 = type metadata accessor for OSSignpostID();
  sub_100002CFC(v4);
  v6 = v5;
  v8 = v7;
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10005DB74(*(v2 + 16), v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), x8_0);
}

uint64_t sub_10005DB74@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X8>)
{
  v9 = v8;
  v48 = a7;
  v58 = a6;
  v51 = a5;
  v45 = a3;
  v50 = a8;
  v47 = type metadata accessor for OSSignposter();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DFA4();
  v15 = sub_10005E2CC(v14, a2);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
  v49 = v21;
  [v22 setRequest:v21];
  if (v19)
  {

    v23.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  [v22 setData:v23.super.isa];

  if (v15 && *(v15 + 16))
  {
    v27 = qword_1002686F0;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();

    v29 = OSSignposter.logHandle.getter();
    v44 = static os_signpost_type_t.event.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v30 = swift_slowAlloc();
      v43[1] = v9;
      v31 = v30;
      *v30 = 134217984;
      *(v30 + 4) = *(v15 + 16);

      v32 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v44, v32, "ActionRunner", "Actions running: %ld", v31, 0xCu);
    }

    else
    {
    }

    (*(v46 + 8))(v13, v47);
    type metadata accessor for ActionRunner();
    v33 = *(a4 + 72);
    v57[0] = *(a4 + 56);
    v57[1] = v33;
    v34 = *(a4 + 104);
    v57[2] = *(a4 + 88);
    v57[3] = v34;
    v35 = sub_100083DD8(v15, v57, v51, v58, v48 & 1);

    sub_1000F4BC0(v35, v22);
  }

  v36 = *(a4 + 72);
  v56[0] = *(a4 + 56);
  v56[1] = v36;
  v37 = *(a4 + 104);
  v56[2] = *(a4 + 88);
  v56[3] = v37;
  sub_10005E5BC(v24, v17, v25, v26, v56, v51, v58);
  *(&v53 + 1) = &type metadata for AMSFlags;
  *&v54 = sub_10000D884();
  LOBYTE(v52) = 0;
  v38 = isFeatureEnabled(_:)();
  v39 = sub_100002C00(&v52);
  if ((v38 & 1) == 0)
  {
    v40 = *(a4 + 72);
    v52 = *(a4 + 56);
    v53 = v40;
    v41 = *(a4 + 104);
    v54 = *(a4 + 88);
    v55 = v41;
    sub_10005ED28(v39, v17);
  }

  *v50 = v22;
  return result;
}

void sub_10005DFA4()
{
  sub_1000F11EC();
  if (v1)
  {
    sub_10007B9A4(&qword_10026C888, &qword_1001EBCE8);
    v2 = sub_10000B8A8();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_10000B204();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 8;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100011BAC(*(v0 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100002C4C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100002C4C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100002C4C(v31, v32);
    v15 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~v8[v15 >> 6]) == 0)
    {
      sub_100022250();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (v8[v16] != -1)
        {
          sub_100003F60();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_1000074F4();
LABEL_21:
    v6 &= v6 - 1;
    sub_100005890();
    *(v8 + v20) |= v21;
    sub_10000DE3C();
    *v22 = v24;
    v22[1] = v25;
    sub_1000F11AC();
    sub_100002C4C(v32, v23);
    sub_10005EEBC();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_10005E208()
{

  return OS_dispatch_queue.async(group:qos:flags:execute:)();
}

uint64_t sub_10005E22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_10005E244(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

uint64_t sub_10005E268()
{
  *(v1 - 120) = v0;
}

uint64_t sub_10005E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10005E2CC(uint64_t a1, void *a2)
{
  v32 = 0x736E6F69746361;
  v33 = 0xE700000000000000;
  v3 = AnyHashable.init<A>(_:)();
  sub_100005288(v3, v4, v5);
  sub_10000E1E8(v31);
  if (v34)
  {
    v6 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
    if (sub_100006CB4(v6, v7))
    {
      v8 = v30[0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_100002C5C(&v32);
    v8 = 0;
  }

  strcpy(v30, "allowedEvents");
  HIWORD(v30[1]) = -4864;
  v9 = AnyHashable.init<A>(_:)();
  sub_100005288(v9, v10, v11);
  sub_10000E1E8(v31);
  if (!v34)
  {
    sub_100002C5C(&v32);
LABEL_10:
    v30[0] = 0xD000000000000011;
    v30[1] = 0x80000001001F7680;
    v14 = AnyHashable.init<A>(_:)();
    sub_100005288(v14, v15, v16);
    sub_10000E1E8(v31);
    if (v34)
    {
      v17 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
      sub_100006CB4(v17, v18);
    }

    else
    {
      sub_100002C5C(&v32);
    }

    goto LABEL_13;
  }

  v12 = sub_10007B9A4(&qword_10026CAD0, &unk_1001EE000);
  if ((sub_100006CB4(v12, v13) & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_13:
  v32 = 1635017060;
  v33 = 0xE400000000000000;
  v19 = AnyHashable.init<A>(_:)();
  sub_100005288(v19, v20, v21);
  sub_10000E1E8(v31);
  if (v34)
  {
    v22 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    sub_100006CB4(v22, v23);
  }

  else
  {
    sub_100002C5C(&v32);
  }

  v30[0] = 0xD000000000000011;
  v30[1] = 0x80000001001F76A0;
  v24 = AnyHashable.init<A>(_:)();
  sub_100005288(v24, v25, v26);

  sub_10000E1E8(v31);
  if (v34)
  {
    v27 = sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    if (sub_100006CB4(v27, v28))
    {
      sub_1000F450C(v30[0], a2);
    }

    else
    {
    }
  }

  else
  {

    sub_100002C5C(&v32);
  }

  return v8;
}

uint64_t sub_10005E5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  sub_100002DEC();
  swift_beginAccess();
  sub_10003B7C4(v7 + 16, &v61);
  if (!v63)
  {
    return sub_10000A064(&v61, &qword_10026C878, &qword_1001EBCD8);
  }

  sub_10003B104(&v61, v52);
  if (a2)
  {
    v46 = v7;
    v11 = *(a5 + 1);
    v12 = *(a2 + 16);
    if (v12)
    {
      v45 = *(a5 + 1);
      v54 = _swiftEmptyArrayStorage;
      sub_10009B948(0, v12, 0);
      v49 = v54;
      v47 = objc_opt_self();
      v13 = a2 + 32;
      while (1)
      {

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v61 = 0;
        v15 = [v47 dataWithJSONObject:isa options:0 error:&v61];

        v16 = v61;
        if (!v15)
        {
          break;
        }

        v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_1000A43C8();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        sub_1000253FC(v17, v19);

        v20 = v61;
        v21 = v62;
        v22 = BYTE8(v62);
        v23 = v63;
        v24 = v49;
        v54 = v49;
        v26 = v49[2];
        v25 = v49[3];
        if (v26 >= v25 >> 1)
        {
          sub_10009B948(v25 > 1, v26 + 1, 1);
          v24 = v54;
        }

        v24[2] = v26 + 1;
        v49 = v24;
        v27 = &v24[4 * v26];
        *(v27 + 32) = v20;
        v27[5] = v21;
        *(v27 + 48) = v22;
        v27[7] = v23;
        v13 += 8;
        if (!--v12)
        {
          v11 = v45;
          goto LABEL_15;
        }
      }

      v29 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v30 = sub_100003DE8();
      sub_100002CFC(v30);
      sub_10000BF7C();
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1001E5F70;
      v63 = type metadata accessor for EnqueueRunner();
      v61 = v46;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v61);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0x6C696166202E2E2ELL;
      v32._object = 0xEC000000203A6465;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
      swift_getErrorValue();
      v63 = v50;
      v33 = sub_100017E64(&v61);
      (*(*(v50 - 1) + 16))(v33);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v61, &qword_10026D350, &qword_1001E6050);
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v34);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v35 = static os_log_type_t.error.getter();
      sub_1000036B0(v35, v31);
    }

    else
    {
      v49 = _swiftEmptyArrayStorage;
LABEL_15:
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      v36 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v36);
      sub_10000BF7C();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1001E5F70;
      v63 = type metadata accessor for EnqueueRunner();
      v61 = v46;

      static LogInterpolation.prefix(_:_:)();
      sub_100002C00(&v61);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      sub_1000083FC("Updating app defaults: ");
      v63 = &unk_1002471C0;
      LOBYTE(v61) = v11;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(&v61, &qword_10026D350, &qword_1001E6050);
      v38._countAndFlagsBits = 3026478;
      v38._object = 0xE300000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v38);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        sub_100002D44(&qword_1002686B0);
      }

      v39 = static os_log_type_t.default.getter();
      sub_1000036B0(v39, v37);

      sub_100003CA8(v52, v53);
      sub_10003B834(&v54);
      if (v54)
      {
        v40 = v56;
        v48 = v55;
        v42 = *(&v57 + 1);
        v41 = v58;
        v43 = v57;
        v51 = v54;

        sub_10000A064(&v51, &qword_10026A6F8, &unk_1001E7CA0);
        v59 = v57;
        sub_10000A064(&v59, &unk_10026CD20, &unk_1001E7CC0);
        v60 = v41;
        sub_10000A064(&v60, &qword_10026A758, &qword_1001EBE80);

        v44 = v48;
      }

      else
      {
        v41 = 0;
        v43 = 0;
        v42 = 0;
        v40 = 0;
        v44 = xmmword_1001EBF80;
      }

      v61 = v49;
      v62 = v44;
      LOBYTE(v63) = v40;
      v64 = v43;
      v65 = v42;
      v66 = v41;
      sub_100003CA8(v52, v53);
      sub_1000A335C(&v61, v11);
    }
  }

  return sub_100002C00(v52);
}

void sub_10005ED28(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() loadFromDisk];
  if (a2)
  {
    v6 = v3;
    sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = String._bridgeToObjectiveC()();

    [v6 setAllowedEvents:isa appIdentifier:v5];

    [v6 saveToDisk];
    v3 = v6;
  }
}

uint64_t sub_10005EEE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = type metadata accessor for LogInterpolation.StringInterpolation();
  v12 = __chkstk_darwin(v11 - 8);
  result = __chkstk_darwin(v12);
  v14 = *(a3 + 16);
  if (!a2)
  {
    if ((v14 & 4) != 0)
    {
      v57 = a5;
      v55 = a6;
      if (qword_1002686F0 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_7;
    }

    return result;
  }

  if ((v14 & 4) == 0)
  {
    return result;
  }

  v56 = a5;
  sub_100003CA8(a4, a4[3]);
  sub_10003B834(v63);
  if (v63[0])
  {
    v16 = v66;
    v15 = v67;
    v17 = v65;
    v68 = v63[0];
    sub_10000A064(&v68, &qword_10026A6F8, &unk_1001E7CA0);
    v69 = v15;
    sub_10000A064(&v69, &qword_10026A758, &qword_1001EBE80);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (v16)
  {
    if (v17 == v22 && v16 == v24)
    {

LABEL_23:
      v55 = a6;
      if (qword_1002686F0 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1001E5F70;
      v59 = &type metadata for PersistedEventCoordinator;
      v58[0] = swift_allocObject();
      sub_1000263DC(a4, v58[0] + 16);
      v30 = AMSLogKey();
      if (v30)
      {
        v31 = v30;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v58);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v50._object = 0x8000000100200E00;
      v50._countAndFlagsBits = 0xD000000000000022;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v50);
      v59 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      v58[0] = v56;

      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v58, &qword_10026D350, &qword_1001E6050);
      v33 = "nced up to date.";
      v34 = 0xD00000000000004CLL;
      goto LABEL_45;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v55 = qword_100287850;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1001E5F70;
  v54 = v27;
  v59 = &type metadata for PersistedEventCoordinator;
  v58[0] = swift_allocObject();
  sub_1000263DC(a4, v58[0] + 16);
  v28 = AMSLogKey();
  if (v28)
  {
    v29 = v28;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v58);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000026;
  v35._object = 0x8000000100200E60;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v35);
  v36 = 0;
  v37 = *(a6 + 16);
  a3 = a6 + 32;
  v57 = _swiftEmptyArrayStorage;
  a4 = &type metadata for String;
  while (1)
  {
    if (v37 == v36)
    {
      v59 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
      v58[0] = v57;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v58, &qword_10026D350, &qword_1001E6050);
      v48._countAndFlagsBits = 0xD000000000000050;
      v48._object = 0x8000000100200E90;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
      LogInterpolation.init(stringInterpolation:)();
      v49 = static os_log_type_t.default.getter();
      sub_1000036B0(v49, v54);
    }

    if (v36 >= v37)
    {
      break;
    }

    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_48;
    }

    v39 = *(a3 + 8 * v36);

    AnyHashable.init<A>(_:)();
    if (!*(v39 + 16) || (v40 = sub_10000C818(v58), (v41 & 1) == 0))
    {

      sub_10000E1E8(v58);
      goto LABEL_42;
    }

    sub_100011BAC(*(v39 + 56) + 32 * v40, v60);
    sub_10000E1E8(v58);

    if ((swift_dynamicCast() & 1) != 0 && (v42 = v62) != 0)
    {
      v53 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000DE9C();
        v57 = v46;
      }

      v43 = v57[2];
      v44 = v43 + 1;
      if (v43 >= v57[3] >> 1)
      {
        sub_10000DE9C();
        v44 = v43 + 1;
        v57 = v47;
      }

      v57[2] = v44;
      v45 = &v57[2 * v43];
      v45[4] = v53;
      v45[5] = v42;
      v36 = v38;
    }

    else
    {
LABEL_42:
      ++v36;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_7:
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1001E5F70;
  v64 = &type metadata for PersistedEventCoordinator;
  v63[0] = swift_allocObject();
  sub_1000263DC(a4, v63[0] + 16);
  v19 = AMSLogKey();
  if (v19)
  {
    v20 = v19;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v63);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._object = 0x8000000100200E00;
  v32._countAndFlagsBits = 0xD000000000000022;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v32);
  v64 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
  v63[0] = v57;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_10000A064(v63, &qword_10026D350, &qword_1001E6050);
  v33 = "ed events of type ";
  v34 = 0xD00000000000002ALL;
LABEL_45:
  v51 = v33 | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v34);
  LogInterpolation.init(stringInterpolation:)();
  v52 = static os_log_type_t.default.getter();
  sub_1000036B0(v52, v18);

  return sub_100186D40(a3, v55);
}

uint64_t sub_10005F8EC()
{
  sub_100002C00((v0 + 16));

  return _swift_deallocObject(v0);
}

uint64_t sub_10005F99C()
{
  sub_10000A064(v0 + 16, &qword_10026C878, &qword_1001EBCD8);
  v1 = *(v0 + 64);

  sub_100026D5C(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_10005FA2C(v0 + 144);
  return v0;
}

uint64_t sub_10005F9F8()
{
  sub_10005F99C();

  return swift_deallocClassInstance();
}

uint64_t sub_10005FA80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a2;
  v51 = a8;
  v49 = type metadata accessor for OSSignpostError();
  v52 = *(v49 - 8);
  v11 = __chkstk_darwin(v49);
  v48 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = type metadata accessor for OSSignpostID();
  v55 = *(v15 - 8);
  v56 = v15;
  v16 = __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v48 - v19;
  v21 = type metadata accessor for OSSignposter();
  v53 = *(v21 - 8);
  v54 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v48 - v25;
  [a3 lock];
  swift_beginAccess();
  sub_10000E42C(0xD00000000000001BLL, 0x80000001001F6FA0, a5, a6);
  swift_endAccess();
  [a3 unlock];
  if (v50)
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v27 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v28 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v29 = static os_signpost_type_t.end.getter();
    v30 = OS_os_log.signpostsEnabled.getter();
    v31 = v52;
    if (v30)
    {

      v32 = v48;
      checkForErrorAndConsumeState(state:)();
      v33 = v32;

      v34 = v32;
      v35 = v49;
      if ((*(v31 + 88))(v34, v49) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(v31 + 8))(v33, v35);
        v36 = "Failed";
      }

      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v29, v44, "Enqueue", v36, v43, 2u);
LABEL_17:
    }
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v37 = *(qword_100287850 + 16);
    OSSignposter.init(logHandle:)();
    v28 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v38 = static os_signpost_type_t.end.getter();
    v39 = OS_os_log.signpostsEnabled.getter();
    v40 = v52;
    if (v39)
    {

      checkForErrorAndConsumeState(state:)();

      v41 = v49;
      if ((*(v40 + 88))(v14, v49) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v40 + 8))(v14, v41);
        v42 = "Succeeded";
      }

      v45 = swift_slowAlloc();
      *v45 = 0;
      v46 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, v38, v46, "Enqueue", v42, v45, 2u);
      v18 = v20;
      v24 = v26;
      goto LABEL_17;
    }

    v18 = v20;
    v24 = v26;
  }

  (*(v55 + 8))(v18, v56);
  return (*(v53 + 8))(v24, v54);
}

uint64_t sub_10005FFF0()
{
  sub_1000F1284();
  v2 = v1;
  if (qword_100268710 != -1)
  {
    sub_1000063EC(&qword_100268710);
  }

  v3 = qword_100287870;

  sub_1000600AC(v3, v2);
  v4 = Promise.resolve(_:)();
  return v0(v4);
}

uint64_t sub_1000600D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_10000A610();
  v6 = type metadata accessor for Date();
  sub_100002CFC(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = (v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a3(v4, a2, v3 + v11, v13, v15, v16);
}

void sub_1000601AC()
{
  sub_100003D74();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_100003D10(v6);
  __chkstk_darwin(v7);
  sub_1000056E8();
  __chkstk_darwin(v8);
  sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001E61B0;
  Date.timeIntervalSinceNow.getter();
  *(v9 + 56) = &type metadata for Double;
  *(v9 + 64) = &protocol witness table for Double;
  *(v9 + 32) = fabs(v10);
  v11 = String.init(format:_:)();
  v13 = v12;
  if (v5)
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v14 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v14);
    sub_1000056F8();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1001E5F70;
    *(&v29 + 1) = type metadata accessor for EngagementService();
    *&v28 = v1;
    v16 = v1;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v28);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v17._countAndFlagsBits = 0xD000000000000020;
    v17._object = 0x80000001001F6D10;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
    *(&v29 + 1) = &type metadata for String;
    *&v28 = v11;
    *(&v28 + 1) = v13;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v28, &qword_10026D350);
    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
    LogInterpolation.init(stringInterpolation:)();
    v19 = static os_log_type_t.default.getter();
    sub_1000036B0(v19, v15);
  }

  else
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    sub_100003EFC();
    v20 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v20);
    sub_1000056F8();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1001E5F70;
    *(&v29 + 1) = type metadata accessor for EngagementService();
    *&v28 = v1;
    v22 = v1;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v28);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100004810();
    v23._countAndFlagsBits = 0xD00000000000001ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v23);
    *(&v29 + 1) = &type metadata for String;
    *&v28 = v11;
    *(&v28 + 1) = v13;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v28, &qword_10026D350);
    v24._countAndFlagsBits = 8233;
    v24._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    if (v3)
    {
      swift_getErrorValue();
      *(&v29 + 1) = v27;
      v25 = sub_100017E64(&v28);
      (*(*(v27 - 8) + 16))(v25);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v28, &qword_10026D350);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v26 = static os_log_type_t.error.getter();
    sub_1000036B0(v26, v21);
  }

  sub_100005F14();
}

uint64_t sub_100060660(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 96);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_5;
  }

  v27 = v17;
  v28 = v12;
  *(a1 + 96) = v22;
  if (qword_100268710 != -1)
  {
LABEL_5:
    swift_once();
  }

  v23 = qword_100287870;

  sub_1000609DC(v23, a1);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = v29;
  v24[7] = a6;
  aBlock[4] = sub_100060A00;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005E50;
  aBlock[3] = &unk_1002512A8;
  v25 = _Block_copy(aBlock);

  a2;

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10004D1EC(&qword_10026CD40, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_100006070(&qword_10026CD50, &unk_100270490, &unk_1001E74F0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);
  (*(v28 + 8))(v14, v11);
  (*(v16 + 8))(v19, v27);
}

void sub_100060A54(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 72);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    swift_once();
    goto LABEL_6;
  }

  v12 = *(a3 + 56);
  v13 = *(a3 + 64);
  v14 = sub_10002C4B4();
  v16 = v15;
  swift_beginAccess();
  sub_100060D6C(v14, v16, v17, v18, v19, v20, v21, v22, v29, v30);
  swift_endAccess();

  swift_beginAccess();
  if (a1)
  {
    sub_100060D6C(v12, v13, v23, v24, v25, v26, v27, v28, v29, v30);
    swift_endAccess();
  }

  else
  {
    sub_1000294AC((a2 + 32), *(a2 + 40), *(a2 + 48), a3);
    swift_endAccess();
  }

  if (qword_100268710 != -1)
  {
    goto LABEL_8;
  }

LABEL_6:

  sub_100060D94();
  sub_10002A3E4();
}

void sub_100060C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100016794();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10000B330();
  sub_100012A94();
  if (v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000AB58();
    v20 = *(v19 + 24);
    sub_10007B9A4(v16, v14);
    sub_100004BA8();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v20);

    v12(0);
    _NativeDictionary._delete(at:)();
    *v10 = a10;
  }

  sub_100012F1C();
}

uint64_t sub_100060F1C()
{
  sub_100060F50();

  return swift_deallocClassInstance();
}

uint64_t sub_100060F50()
{
  swift_unknownObjectRelease();

  return v0;
}

void sub_100060F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100003D74();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  v52 = v36;
  __chkstk_darwin(v37);
  sub_100002DEC();
  sub_100012F7C();
  type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v50 = v39;
  v51 = v38;
  __chkstk_darwin(v38);
  sub_100002DEC();
  sub_10005E2AC();
  v40 = swift_allocObject();
  v40[2] = v34;
  v40[3] = v30;
  v40[4] = v32;
  v40[5] = v28;
  v40[6] = v26;
  v53[4] = v24;
  v53[5] = v40;
  sub_100002E50();
  v53[1] = 1107296256;
  sub_100007A28();
  v53[2] = v41;
  v53[3] = a21;
  v42 = _Block_copy(v53);
  v43 = v34;

  swift_errorRetain();

  v44 = v26;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v45, v46, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  sub_1000140D0(v47, v48, &unk_1001E74F0, v49);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v42);
  (*(v52 + 8))(v21, v35);
  (*(v50 + 8))(v22, v51);

  sub_100005F14();
}

uint64_t sub_100061280(void *a1)
{
  v1 = a1;
  sub_10007B9A4(&qword_10026C898, &qword_1001EBD20);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000612F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v10 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100004004(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (a3)
  {
    swift_beginAccess();
    swift_errorRetain();
    sub_1000EF5E8(sub_1000D5D58);
    v11 = *(*(a4 + 16) + 16);
    sub_1000EF6D4(v11, sub_1000D5D58);
    v12 = *(a4 + 16);
    *(v12 + 16) = v11 + 1;
    *(v12 + 8 * v11 + 32) = a3;
    *(a4 + 16) = v12;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_10006145C()
{
  type metadata accessor for Date();
  sub_100002DDC();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return _swift_deallocObject(v0);
}

uint64_t sub_100061504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10000E6D0(a1 + 16, a2, a3, a4, a5, a6);
  if (*(*(a1 + 16) + 16))
  {
    swift_errorRetain();
    Promise.reject(_:)();
  }

  else
  {
    sub_10000602C(a3 + 16, v9);

    Promise.resolve(_:)();
  }
}

uint64_t sub_1000615C0()
{
  sub_100004768();
  sub_1000056A8();
  v3 = v2;
  sub_100004EEC();
  *v4 = v3;
  v5 = *v1;
  sub_100002D20();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_1000060D0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = sub_100011A30();

    return v11(v10);
  }
}

uint64_t sub_1000616D4()
{
  sub_100004768();
  sub_1000056A8();
  sub_100002D98();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v4;

  if (v0)
  {
  }

  sub_1000060D0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000617E0(void *a1, SEL *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 *a2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void sub_100061874()
{
  if (sub_100061D20())
  {
    if (qword_1002686F0 != -1)
    {
      sub_100006C90();
      swift_once();
    }

    v4 = v0[36];
    v5 = v0[30];
    v6 = v0[27];
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = sub_10000C3AC();
    sub_100002CFC(v7);
    sub_1000056F8();
    v8 = swift_allocObject();
    v0[9] = sub_1000F12D0(v8, xmmword_1001E5F70);
    v0[6] = v6;
    v9 = v6;
    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v0 + 6);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0xD00000000000001BLL;
    v10._object = 0x80000001001F6F60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v10);
    v0[13] = sub_100002BC0(0, &qword_10026FEB0, AMSEngagementEnqueueResult_ptr);
    v0[10] = v4;
    v11 = v4;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4((v0 + 10), &qword_10026D350);
    sub_100003B48();
    LogInterpolation.init(stringInterpolation:)();
    v12 = static os_log_type_t.default.getter();
    sub_1000036B0(v12, v8);

    sub_10000602C(v5 + 16, (v0 + 20));
    v0[24] = v11;

    Promise.resolve(_:)();

LABEL_5:

    sub_100002D8C();
    sub_10000A820();

    __asm { BRAA            X1, X16 }
  }

  v15 = v0[36];

  v16 = v0[34];
  if (v16 == v0[32])
  {
    sub_10001D730();

    v17 = Promise.isResolved.getter();

    if (v17)
    {
      goto LABEL_5;
    }

    if (qword_1002686F0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

  v22 = v0[25];
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
    v0[33] = v23;
    v0[34] = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      sub_1000058A4(&unk_1001EBD18);
      v24 = swift_task_alloc();
      v0[35] = v24;
      *v24 = v0;
      sub_100007FAC(v24);
      sub_10000A820();

      __asm { BR              X0 }
    }

    __break(1u);
LABEL_24:
    sub_100006C90();
    swift_once();
LABEL_11:
    sub_10000F3F0();
    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = sub_10000C3AC();
    sub_100002CFC(v18);
    sub_1000056F8();
    v19 = sub_100015C9C();
    v0[5] = sub_1000F12D0(v19, xmmword_1001E5F70);
    v0[2] = v3;
    v20 = v3;
    sub_100015A84();
    sub_100002C00(v0 + 2);
    sub_10000DD34();
    v21 = static os_log_type_t.default.getter();
    sub_1000036B0(v21, v19);

    sub_10000602C(v1 + 16, (v0 + 17));
    if (v2)
    {
    }

    else
    {
      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      v27 = objc_allocWithZone(AMSEngagementEnqueueResult);

      v0[23] = [v27 init];
      Promise.__allocating_init(value:)();
    }

    sub_100019C18();
    sub_100061EDC();

    goto LABEL_5;
  }

  if (v16 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v23 = *(v22 + 8 * v16 + 32);

    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_100061D20()
{
  v1 = sub_10006184C(v0);
  if (v1)
  {
    v2 = *(v1 + 16);

    if (v2)
    {
      return 1;
    }
  }

  result = sub_100061D78(v0);
  if (result)
  {
    v4 = *(result + 16);

    return v4 != 0;
  }

  return result;
}

uint64_t sub_100061D78(void *a1)
{
  v1 = [a1 actions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100061E10()
{

  return sub_100009FB0(v2 - 136, v0, v1);
}

uint64_t sub_100061E2C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100061E4C(uint64_t a1)
{
}

uint64_t sub_100061E9C()
{
  *(v0 + 208) = v1;

  return swift_errorRetain();
}

uint64_t sub_100061EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_100061EDC()
{
  sub_100003D74();
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_10001C064();
  v5 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v3 + 104))(v0, enum case for DispatchQoS.QoSClass.default(_:), v1);
  swift_retain_n();
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v0, v1);
  v7[3] = v5;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = v6;
  sub_100015AEC();
  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v7);
  sub_100005F14();
}

void sub_100062030()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v5 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v6 = sub_100003D10(v5);
  __chkstk_darwin(v6);
  sub_100012F6C();
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  sub_100002DEC();
  sub_10000C79C();
  sub_10000602C(v2 + 16, &v27);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v4)
    {
      v11 = _convertErrorToNSError(_:)();
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v12 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v12);
      sub_1000056F8();
      v13 = sub_1000F12B0();
      *(v13 + 16) = xmmword_1001E5F70;
      v26 = type metadata accessor for EngagementService();
      v25[0] = v10;
      v14 = v10;
      sub_10000DDCC();
      sub_100002C00(v25);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15._countAndFlagsBits = 0xD000000000000029;
      v15._object = 0x80000001001F6C90;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
      v26 = sub_100002BC0(0, &qword_100271EB0, NSError_ptr);
      v25[0] = v11;
      v16 = v11;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A0C4(v25, &qword_10026D350);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v17 = static os_log_type_t.error.getter();
      sub_1000036B0(v17, v13);
    }

    else
    {
      if (qword_1002686F0 != -1)
      {
        sub_100006C90();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_100002DFC();
      v18 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v18);
      sub_1000056F8();
      v19 = sub_1000F12B0();
      *(v19 + 16) = xmmword_1001E5F70;
      v26 = type metadata accessor for EngagementService();
      v25[0] = v10;
      v20 = v10;
      sub_10000DDCC();
      sub_100002C00(v25);
      LogInterpolation.init(stringLiteral:)();
      v21 = static os_log_type_t.default.getter();
      sub_1000036B0(v21, v19);
    }

    sub_100059E3C();
    v22 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v0, 1, 1, v22);
    sub_100007A3C();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v10;
    v24 = v10;
    sub_100003EFC();
    sub_1000E349C();
  }

  sub_100005F14();
}

void sub_100062420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(a4 + 16);
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v20 = Strong;
      sub_100027C2C(0, v7, 0);
      v9 = (a4 + 33);
      v8 = _swiftEmptyArrayStorage;
      v10 = 0x7379656E72756F6ALL;
      do
      {
        v11 = *v9;
        v9 += 64;
        v12 = 0xE900000000000073;
        v13 = 0x636974796C616E61;
        switch(v11)
        {
          case 1:
            v12 = 0xE800000000000000;
            v13 = 0x6C616E7265746E69;
            break;
          case 2:
            v12 = 0xE800000000000000;
            v13 = v10;
            break;
          case 3:
            v13 = 0x6E656D6D6F636572;
            v12 = 0xEF736E6F69746164;
            break;
          default:
            break;
        }

        v21 = v8;
        v15 = v8[2];
        v14 = v8[3];
        if (v15 >= v14 >> 1)
        {
          v17 = v10;
          sub_100027C2C((v14 > 1), v15 + 1, 1);
          v10 = v17;
          v8 = v21;
        }

        v8[2] = v15 + 1;
        v16 = &v8[2 * v15];
        v16[4] = v13;
        v16[5] = v12;
        --v7;
      }

      while (v7);
      v6 = v20;
    }

    sub_100059A80(v8);
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    sub_10005A824();
  }
}

void sub_100062714()
{
}

uint64_t sub_10006273C()
{
  sub_1000F1290();
  v2(*(v0 + 16));
  v1(*(v0 + 32));
  v3 = sub_100008FE8();

  return _swift_deallocObject(v3);
}

uint64_t sub_100062798()
{

  return _swift_deallocObject(v0);
}

void sub_1000627E8()
{
  sub_100003D74();
  v3 = v2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v4);
  sub_100002DEC();
  sub_100012F6C();
  v22 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100002DEC();
  sub_10005E2AC();
  sub_10007B9A4(&qword_10026C860, &qword_1001EBC88);
  v8 = Promise.__allocating_init()();
  sub_100007A3C();
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = v8;
  v9[4] = v0;
  v23[4] = sub_1000ED220;
  v23[5] = v9;
  sub_100002E50();
  v23[1] = 1107296256;
  sub_100007A28();
  v23[2] = v10;
  v23[3] = &unk_100249C30;
  v11 = _Block_copy(v23);
  v12 = v3;

  v13 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v14, v15, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  v19 = sub_1000140D0(v16, v17, &unk_1001E74F0, v18);
  sub_1000F1180(v19);
  sub_10005E208();
  _Block_release(v11);
  v20 = sub_10000A19C();
  v21(v20);
  (*(v6 + 8))(v1, v22);

  sub_10000C544();

  sub_100005F14();
}

uint64_t sub_100062A88()
{

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_100062B68()
{
  sub_1000061B4();
  sub_1000F11CC();
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100005C78(v1);

  return sub_100062C2C(v3, v4, v5, v6);
}

uint64_t sub_100062BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return static LogInterpolation.safe(_:)();
}

void sub_100062C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  sub_1001A0A64(v26, v25, v24, v23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100062C4C()
{
  sub_100004768();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000E808C;

  return sub_100062CE4();
}

uint64_t sub_100062CE4()
{
  sub_100004768();
  *(v1 + 16) = v0;
  sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100062D7C, v0, 0);
}

uint64_t sub_100062D7C()
{
  v1 = v0[2];
  if (*(v1 + 152))
  {

    sub_100002D8C();

    return v2();
  }

  else
  {
    v4 = v0[2];
    if (*(v1 + 144))
    {

      Task.cancel()();

      v4 = v0[2];
    }

    v5 = v0[3];
    v6 = type metadata accessor for TaskPriority();
    sub_10000A7C0(v5, 1, 1, v6);
    v8 = sub_100062FCC(&qword_10026B718, v7, type metadata accessor for AsyncDebouncer, &unk_1001E8E94);
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v8;
    v9[4] = v4;
    swift_retain_n();
    sub_1000E349C();
    v11 = v10;
    v0[4] = v10;
    *(v1 + 144) = v10;

    v12 = swift_task_alloc();
    v0[5] = v12;
    *v12 = v0;
    v12[1] = sub_1000BFD7C;

    return Task.result.getter(v0 + 6, v11, &type metadata for () + 1, &type metadata for Never, &protocol witness table for Never);
  }
}

uint64_t sub_100062F8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100062FCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006303C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000C08D0;

  return sub_1000630F0(a1, v4, v5, v6);
}

uint64_t sub_1000630F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000631B4, a4, 0);
}

uint64_t sub_1000631B4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000BFEF4;

  return sub_100063284();
}

uint64_t sub_100063284()
{
  sub_10000A1AC();
  sub_100003D28();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v1 + 64) = v12;
  sub_100002CFC(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1000060D0();
  sub_10000A734();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10006336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10000E698();
  sub_100005B90();
  v11 = v10[10];
  v12 = v10[8];
  v13 = v10[9];
  type metadata accessor for ContinuousClock();
  sub_1000634E4(&qword_10026DC00, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_100004CBC();
  dispatch thunk of Clock.now.getter();
  sub_1000634E4(&qword_10026DC08, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v14 = *(v13 + 8);
  v10[12] = v14;
  v10[13] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v10[14] = v15;
  *v15 = v10;
  v15[1] = sub_10011855C;
  sub_10000A598();

  return dispatch thunk of Clock.sleep(until:tolerance:)(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000634E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006352C()
{
  v0 = type metadata accessor for Date();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000635B0(0);
  static Date.now.getter();
  return sub_10006756C(v2);
}

void sub_1000635B0(int a1)
{
  LODWORD(v1) = a1;
  v122 = type metadata accessor for TimeZone();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v121 = v6 - v5;
  v7 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v8 = sub_100003D10(v7);
  __chkstk_darwin(v8);
  sub_10000A854(&v111 - v9);
  v10 = type metadata accessor for Date();
  sub_100002CC4();
  v131 = v11;
  __chkstk_darwin(v12);
  sub_1000056E8();
  v120 = v13 - v14;
  sub_100003F08();
  __chkstk_darwin(v15);
  sub_10000714C();
  v139 = v16;
  sub_100003F08();
  __chkstk_darwin(v17);
  sub_10000714C();
  v133 = v18;
  sub_100003F08();
  __chkstk_darwin(v19);
  v138 = &v111 - v20;
  v21 = sub_10007B9A4(&qword_100269F88, &unk_1001E74D0);
  v22 = sub_100003D10(v21);
  __chkstk_darwin(v22);
  v24 = &v111 - v23;
  v25 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_100002CC4();
  v136 = v26;
  __chkstk_darwin(v27);
  sub_1000056E8();
  v115 = v28 - v29;
  sub_100003F08();
  v31 = __chkstk_darwin(v30);
  v33 = &v111 - v32;
  __chkstk_darwin(v31);
  sub_10000A854(&v111 - v34);
  v35 = type metadata accessor for LogInterpolation.StringInterpolation();
  v36 = sub_100003D10(v35);
  __chkstk_darwin(v36);
  sub_100002DEC();
  sub_10000A854(v38 - v37);
  v39 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v41 = v40;
  __chkstk_darwin(v42);
  sub_100002DEC();
  v45 = v44 - v43;
  v146 = &type metadata for ScheduleDatabase;
  v147 = &off_100251628;
  if (qword_1002687F0 != -1)
  {
LABEL_62:
    swift_once();
  }

  v46 = qword_1002878E8;
  *v45 = qword_1002878E8;
  (*(v41 + 104))(v45, enum case for DispatchPredicate.onQueue(_:), v39);
  v47 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  (*(v41 + 8))(v45, v39);
  if (v46)
  {
    v117 = v3;
    v114 = v24;
    v112 = v33;
    v113 = v1;

    if (qword_100268718 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  sub_100019B54(&qword_100268718);
LABEL_4:
  v39 = qword_100287878;
  v48 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v49 = type metadata accessor for LogInterpolation();
  sub_100002CFC(v49);
  v51 = *(v50 + 72);
  v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v127 = *(v52 + 80);
  v128 = v48;
  v124 = v53 + 2 * v51;
  v54 = swift_allocObject();
  v126 = xmmword_1001E5F70;
  *(v54 + 16) = xmmword_1001E5F70;
  v125 = v53;
  LODWORD(v1) = v54 + v53;
  v55 = AMSSetLogKeyIfNeeded();
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v56;

  static LogInterpolation.prefix<A>(_:_:)();

  v129 = v51;
  LogInterpolation.init(stringLiteral:)();
  v57 = static os_log_type_t.default.getter();
  v130 = v39;
  sub_1000036B0(v57, v54);

  v24 = 0;
  v45 = 0;
  v3 = _swiftEmptyArrayStorage;
  v132 = "Checking in all apps";
  v135 = v25;
LABEL_5:
  v134 = v3;
  while (v24 != 4)
  {
    if (v24 > 3)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v58 = *(&off_100244588 + v24 + 32);
    v33 = swift_allocObject();
    *(v33 + 2) = _swiftEmptyArrayStorage;
    v59 = (v33 + 16);
    type metadata accessor for AppDatabase();
    sub_10001D804(v58, 0);
    if (v45)
    {

      v140 = 0;
      sub_10000B708();
      v60 = swift_allocObject();
      sub_100023C6C(v60);
      v41 = v61 + v125;
      v62 = AMSSetLogKeyIfNeeded();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static LogInterpolation.prefix<A>(_:_:)();

      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v63._object = (v132 | 0x8000000000000000);
      v63._countAndFlagsBits = 0xD00000000000001BLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v63);
      swift_getErrorValue();
      v64 = v141;
      v1 = v142;
      v144 = v142;
      v65 = sub_100017E64(&v143);
      (*(*(v1 - 8) + 16))(v65, v64, v1);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(&v143, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      sub_10001CCD0();
      LogInterpolation.init(stringInterpolation:)();
      v66 = static os_log_type_t.error.getter();
      sub_10001CB54(v66, v60);

      v25 = v135;
    }

    else
    {
      sub_100041404();

      sub_1000646D8(sub_10009CFF0, v33);
      v140 = 0;
    }

    swift_beginAccess();
    v39 = *v59;
    if (*(*v59 + 16))
    {

      v3 = v134;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000D5494(0, v3[2] + 1, 1, v3);
        v3 = v69;
      }

      v68 = v3[2];
      v67 = v3[3];
      if (v68 >= v67 >> 1)
      {
        sub_1000D5494(v67 > 1, v68 + 1, 1, v3);
        v3 = v70;
      }

      ++v24;
      v3[2] = (v68 + 1);
      v3[v68 + 4] = v39;
      v45 = v140;
      goto LABEL_5;
    }

    ++v24;
    v45 = v140;
    v3 = v134;
  }

  v140 = v45;
  v71 = 0;
  v41 = v3[2];
  v33 = _swiftEmptyArrayStorage;
  while (v41 != v71)
  {
    if (v71 >= v3[2])
    {
      goto LABEL_55;
    }

    v45 = v3[v71 + 4];
    v39 = *(v45 + 16);
    v1 = *(v33 + 2);
    v24 = (v1 + v39);
    if (__OFADD__(v1, v39))
    {
      goto LABEL_56;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v24 > *(v33 + 3) >> 1)
    {
      sub_1000D53B8();
      v33 = v72;
    }

    if (*(v45 + 16))
    {
      if ((*(v33 + 3) >> 1) - *(v33 + 2) < v39)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      if (v39)
      {
        v73 = *(v33 + 2);
        v74 = __OFADD__(v73, v39);
        v75 = v73 + v39;
        if (v74)
        {
          goto LABEL_61;
        }

        *(v33 + 2) = v75;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_57;
      }
    }

    ++v71;
  }

  sub_100003CA8(&v145, v146);
  sub_100064720(v33);
  v76 = 0;
  v134 = *(v33 + 2);
  v119 = (v131 + 32);
  v118 = (v131 + 16);
  v3 = (v131 + 8);
  ++v117;
  v116 = _swiftEmptyArrayStorage;
  v41 = v123;
  while (v134 != v76)
  {
    if (v76 >= *(v33 + 2))
    {
      goto LABEL_58;
    }

    sub_100004864();
    v132 = v77;
    v131 = *(v78 + 72);
    sub_100004F70();
    v24 = v137;
    sub_100065290(v79, v137, v80);
    static Date.now.getter();
    sub_1000652F0(&v24[*(v25 + 32)], v41);
    if (sub_100009F34(v41, 1, v10) == 1)
    {
      (*v118)(v139, &v24[*(v25 + 24)], v10);
      if (sub_100009F34(v41, 1, v10) != 1)
      {
        sub_10000A00C(v41, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v119)(v139, v41, v10);
    }

    sub_10000B2FC();
    if (v81)
    {
      v82 = v121;
      static TimeZone.current.getter();
      v1 = v10;
      v83 = v120;
      Date.init()();
      v45 = TimeZone.secondsFromGMT(for:)();
      v41 = v25;
      v25 = *v3;
      (*v3)(v83, v1);
      (*v117)(v82, v122);
      Date.init()();
      v39 = TimeZone.secondsFromGMT(for:)();
      v84 = v83;
      v10 = v1;
      (v25)(v84, v1);
      if (__OFSUB__(v45, v39))
      {
        goto LABEL_60;
      }

      v25 = v135;
      v41 = v123;
    }

    v24 = v25;
    v1 = v133;
    v85 = v139;
    Date.addingTimeInterval(_:)();
    v45 = *v3;
    (*v3)(v85, v10);
    sub_100065204(&qword_100269AD0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v86 = v138;
    v39 = dispatch thunk of static Comparable.< infix(_:_:)();
    (v45)(v1, v10);
    (v45)(v86, v10);
    if (v39)
    {
      sub_100006A1C();
      sub_100065360(v137, v115, v88);
      v39 = v116;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000653C0(0, *(v39 + 16) + 1, 1);
        v39 = v143;
      }

      v25 = v24;
      v45 = *(v39 + 16);
      v90 = *(v39 + 24);
      v1 = v45 + 1;
      if (v45 >= v90 >> 1)
      {
        sub_1000653C0(v90 > 1, v45 + 1, 1);
        v39 = v143;
      }

      v76 = (v76 + 1);
      *(v39 + 16) = v1;
      v116 = v39;
      sub_100006A1C();
      sub_100065360(v115, v91, v92);
    }

    else
    {
      sub_100005704();
      sub_100067514(v137, v87);
      v76 = (v76 + 1);
      v25 = v24;
    }
  }

  v93 = v114;
  sub_100065418(v116, v114);

  if (sub_100009F34(v93, 1, v25) == 1)
  {

    sub_10000A00C(v93, &qword_100269F88, &unk_1001E74D0);
    sub_10000B708();
    v94 = swift_allocObject();
    sub_100023C6C(v94);
    v95 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    sub_10001CCD0();
    LogInterpolation.init(stringLiteral:)();
    v96 = static os_log_type_t.default.getter();
    sub_10001CB54(v96, v94);
  }

  else
  {
    sub_100006A1C();
    v139 = v97;
    v98 = v93;
    v99 = v112;
    sub_100065360(v98, v112, v100);
    sub_10000B708();
    v101 = swift_allocObject();
    sub_100023C6C(v101);
    v102 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    sub_10001CCD0();
    LogInterpolation.init(stringLiteral:)();
    v103 = static os_log_type_t.default.getter();
    sub_10001CB54(v103, v101);

    __chkstk_darwin(v104);
    *(&v111 - 2) = v99;
    sub_100064C90(sub_100065D90, (&v111 - 4), v33);

    sub_10000B708();
    v105 = swift_allocObject();
    sub_100023C6C(v105);
    v106 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v107._countAndFlagsBits = 0xD00000000000001ELL;
    v107._object = 0x80000001001F4490;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v107);
    v144 = v25;
    sub_100017E64(&v143);
    sub_100004F70();
    sub_100065290(v99, v108, v109);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v143, &qword_10026D350, &qword_1001E6050);
    sub_100003B48();
    sub_10001CCD0();
    LogInterpolation.init(stringInterpolation:)();
    v110 = static os_log_type_t.default.getter();
    sub_10001CB54(v110, v105);

    sub_100066F08(v99, v113 & 1);
    sub_100067514(v99, v139);
  }

  sub_100002C00(&v145);
  sub_10000B16C();
}

uint64_t sub_1000646A0()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100064720(uint64_t a1)
{
  v12 = a1;
  v14[3] = &type metadata for ScheduleDatabase;
  v14[4] = &off_100251628;
  v13[3] = &type metadata for EngagementScheduleRunner;
  v13[4] = &off_100249BF8;
  if (qword_100268718 != -1)
  {
    swift_once();
  }

  v11 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  v10 = xmmword_1001E5F70;
  *(v1 + 16) = xmmword_1001E5F70;
  v2 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v3 = static os_log_type_t.default.getter();
  sub_1000036B0(v3, v1);

  __chkstk_darwin(v4);
  v9[2] = v14;
  v9[3] = v13;
  sub_100064C90(sub_100064C74, v9, v12);
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  v6 = AMSSetLogKeyIfNeeded();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static LogInterpolation.prefix<A>(_:_:)();

  LogInterpolation.init(stringLiteral:)();
  v7 = static os_log_type_t.default.getter();
  sub_1000036B0(v7, v5);

  sub_100002C00(v14);
  return sub_100002C00(v13);
}

uint64_t sub_1000649DC(unsigned __int8 *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  result = sub_100064D5C();
  if (result)
  {
    v15[5] = v3;
    if (qword_100268718 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1001E5F70;
    v10 = AMSSetLogKeyIfNeeded();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static LogInterpolation.prefix<A>(_:_:)();

    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._object = 0x80000001001F44F0;
    v11._countAndFlagsBits = 0xD000000000000027;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
    v15[3] = type metadata accessor for ScheduleInfo.Metadata(0);
    v12 = sub_100017E64(v15);
    sub_100065290(a1, v12, type metadata accessor for ScheduleInfo.Metadata);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(v15, &qword_10026D350, &qword_1001E6050);
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
    LogInterpolation.init(stringInterpolation:)();
    v14 = static os_log_type_t.default.getter();
    sub_1000036B0(v14, v9);

    sub_100003CA8(a2, a2[3]);
    sub_100003CA8(a3, a3[3]);
    return sub_10009CC24(a1);
  }

  return result;
}

uint64_t (*sub_100064C90(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(type metadata accessor for ScheduleInfo.Metadata(0) - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

void sub_100064E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100004988();
  a21 = v23;
  a22 = v24;
  v25 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  sub_100003D10(v25);
  sub_100004E78();
  __chkstk_darwin(v26);
  v28 = &a9 - v27;
  v29 = type metadata accessor for Date();
  sub_100002CC4();
  v31 = v30;
  __chkstk_darwin(v32);
  sub_100002DEC();
  v35 = v34 - v33;
  v36 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_10003AF98(v22 + *(v36 + 32), v28, &unk_100271EA0, &qword_1001E77F0);
  v37 = sub_100005FE8();
  if (sub_100009F34(v37, v38, v29) == 1)
  {
    (*(v31 + 16))(v35, v22 + *(v36 + 24), v29);
    v39 = sub_100005FE8();
    if (sub_100009F34(v39, v40, v29) != 1)
    {
      sub_10000A00C(v28, &unk_100271EA0, &qword_1001E77F0);
    }
  }

  else
  {
    (*(v31 + 32))(v35, v28, v29);
  }

  sub_100065054();
  Date.addingTimeInterval(_:)();
  (*(v31 + 8))(v35, v29);
  sub_10000B16C();
}

uint64_t sub_100065054()
{
  v1 = type metadata accessor for Date();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = type metadata accessor for TimeZone();
  sub_100002CC4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100002DEC();
  v12 = sub_10000B0C0();
  result = type metadata accessor for ScheduleInfo.Metadata(v12);
  if (*(v0 + *(result + 36)) == 1)
  {
    static TimeZone.current.getter();
    Date.init()();
    v14 = TimeZone.secondsFromGMT(for:)();
    v15 = *(v3 + 8);
    v15(v7, v1);
    (*(v10 + 8))(v0, v8);
    Date.init()();
    v16 = TimeZone.secondsFromGMT(for:)();
    result = (v15)(v7, v1);
    if (__OFSUB__(v14, v16))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100065204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006524C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100065290(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000652F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100065360(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100002DDC();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_100065418(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = type metadata accessor for TimeZone();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v88 = v8 - v7;
  v9 = sub_10007B9A4(&unk_100271EA0, &qword_1001E77F0);
  v10 = sub_100003D10(v9);
  __chkstk_darwin(v10);
  sub_1000056E8();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = type metadata accessor for Date();
  sub_100002CC4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000056E8();
  v92 = v21 - v22;
  sub_100003F08();
  __chkstk_darwin(v23);
  sub_10000714C();
  v86 = v24;
  sub_100003F08();
  __chkstk_darwin(v25);
  sub_10000714C();
  v87 = v26;
  sub_100003F08();
  __chkstk_darwin(v27);
  sub_10000714C();
  v93 = v28;
  sub_100003F08();
  __chkstk_darwin(v29);
  v91 = &v76 - v30;
  v31 = type metadata accessor for ScheduleInfo.Metadata(0);
  sub_100002CC4();
  __chkstk_darwin(v32);
  sub_1000056E8();
  v35 = v33 - v34;
  __chkstk_darwin(v36);
  v38 = &v76 - v37;
  v90 = *(a1 + 16);
  if (!v90)
  {
    sub_10000B16C();

    sub_10000A7C0(v71, v72, v73, v74);
    return;
  }

  v77 = a2;
  sub_100004864();
  sub_100004F70();
  v84 = v39;
  v85 = v40;
  sub_100065290(v39, v38, v41);
  v82 = (v19 + 16);
  v83 = (v19 + 32);
  v94 = (v19 + 8);
  v80 = v16;
  v81 = v5 + 8;
  v42 = 1;
  v78 = v13;
  v79 = v31;
  v43 = v38;
  while (1)
  {
    if (v90 == v42)
    {
      sub_100006A1C();
      v69 = v77;
      sub_100065360(v43, v77, v70);
      sub_10000A7C0(v69, 0, 1, v31);
      sub_10000B16C();
      return;
    }

    sub_100004F70();
    sub_100065290(v44, v35, v45);
    sub_1000652F0(v35 + v31[8], v16);
    sub_100012B68(v16);
    if (v46)
    {
      (*v82)(v93, v35 + v31[6], v17);
      sub_100012B68(v16);
      if (!v46)
      {
        sub_10000A00C(v16, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v83)(v93, v16, v17);
    }

    sub_10000B2FC();
    if (v46)
    {
      break;
    }

LABEL_12:
    v54 = v93;
    Date.addingTimeInterval(_:)();
    v55 = *v94;
    (*v94)(v54, v17);
    sub_1000652F0(v43 + v31[8], v13);
    sub_100012B68(v13);
    if (v46)
    {
      (*v82)(v92, v43 + v31[6], v17);
      sub_100012B68(v13);
      if (!v46)
      {
        sub_10000A00C(v13, &unk_100271EA0, &qword_1001E77F0);
      }
    }

    else
    {
      (*v83)(v92, v13, v17);
    }

    if (*(v43 + v31[9]) == 1)
    {
      static TimeZone.current.getter();
      Date.init()();
      v56 = TimeZone.secondsFromGMT(for:)();
      v57 = sub_100007158();
      v55(v57);
      v58 = sub_10000A5CC();
      v59(v58);
      Date.init()();
      v60 = TimeZone.secondsFromGMT(for:)();
      v61 = sub_100007158();
      v55(v61);
      if (__OFSUB__(v56, v60))
      {
        goto LABEL_28;
      }

      v13 = v78;
    }

    v62 = v42;
    v63 = v43;
    v64 = v13;
    v65 = v86;
    v66 = v92;
    Date.addingTimeInterval(_:)();
    (v55)(v66, v17);
    v67 = v91;
    LOBYTE(v66) = static Date.< infix(_:_:)();
    (v55)(v65, v17);
    (v55)(v67, v17);
    if (v66)
    {
      v43 = v63;
      sub_100067514(v63, type metadata accessor for ScheduleInfo.Metadata);
      sub_100065360(v35, v63, type metadata accessor for ScheduleInfo.Metadata);
      v16 = v80;
    }

    else
    {
      sub_100005704();
      sub_100067514(v35, v68);
      v16 = v80;
      v43 = v63;
    }

    v42 = v62 + 1;
    v13 = v64;
    v31 = v79;
  }

  static TimeZone.current.getter();
  Date.init()();
  v47 = TimeZone.secondsFromGMT(for:)();
  v48 = *v94;
  v49 = sub_100007158();
  v48(v49);
  v50 = sub_10000A5CC();
  v51(v50);
  Date.init()();
  v52 = TimeZone.secondsFromGMT(for:)();
  v53 = sub_100007158();
  v48(v53);
  if (!__OFSUB__(v47, v52))
  {
    v13 = v78;
    goto LABEL_12;
  }

  __break(1u);
LABEL_28:
  __break(1u);
}