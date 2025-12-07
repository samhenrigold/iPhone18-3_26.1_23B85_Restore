void sub_100002604(id a1)
{
  qword_1000264B0 = os_log_create("com.apple.people", "IMCoreInterface");

  _objc_release_x1();
}

void sub_100002768(id a1, NSArray *a2)
{
  if (a2 || [0 count])
  {
    IMSPIMarkSPIMessagesAsRead();
  }

  _objc_release_x1();
}

void sub_100002964(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.people.checkWithWait", v4);

  v13 = *(a1 + 32);
  v6 = [NSArray arrayWithObjects:&v13 count:1];
  v12 = *(a1 + 40);
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = v3;
  v8 = v3;
  IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS();
}

void sub_100002AF4(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[IMCoreInterface logHandle];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = a1[4];
    v7 = a1[5];
    v9[0] = 67109634;
    v9[1] = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "checkWithWait returned %d items for %@ on %@", v9, 0x1Cu);
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  (*(a1[6] + 16))(a1[6], v8, 0);
}

id sub_100003060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPIiMessageService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003164;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:IMSPISMSService];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003274;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003280(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"RCS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003380;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_10000338C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"SatelliteSMS"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000348C;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_100003498(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [IMCoreInterface checkWithWait:*(a1 + 32) service:@"iMessageLite"];
  v5 = [v4 then];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003598;
  v10[3] = &unk_100020E08;
  v11 = v3;
  v6 = v5[2];
  v7 = v3;
  v8 = v6(v5, v10);

  return v8;
}

id sub_1000035A4(id a1, NSArray *a2)
{
  v2 = a2;
  if ([(NSArray *)v2 count])
  {
    v3 = [[NSSortDescriptor alloc] initWithKey:@"date" ascending:1];
    v4 = [NSMutableArray arrayWithArray:v2];
    v10 = v3;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    [v4 sortUsingDescriptors:v5];

    +[NSMutableArray array];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003718;
    v6 = v8[3] = &unk_100020E70;
    v9 = v6;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

void sub_100003718(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [MinMessageItem alloc];
  v7 = [v3 date];
  v5 = [v3 body];

  v6 = [(MinMessageItem *)v4 initWith:v7 andText:v5];
  [v2 addObject:v6];
}

uint64_t sub_1000037C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!a2)
  {
    a2 = &__NSArray0__struct;
  }

  return (*(v2 + 16))(v2, a2);
}

uint64_t sub_1000037E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v15 = QuickAction.handle.getter();
    if (v16)
    {
      URL.appendPathComponent(_:)(*&v15);
    }

    v17 = v4[5];
    v18 = v4[6];
    sub_1000041C4(v4 + 2, v17);
    (*(v18 + 8))(v13, a3, a4, v17, v18);
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1000039DC()
{
  sub_100004208((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100003A64()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100003AA4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003AFC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100003B7C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003BF8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003C7C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003CC4(void *a1, uint64_t *a2)
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

uint64_t sub_100003D4C(uint64_t a1)
{
  v2 = sub_100004310(&qword_100025A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_100016FC8);
  v3 = sub_100004310(&qword_100025A48, type metadata accessor for OpenExternalURLOptionsKey, &unk_100016F1C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E0C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100003E54@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003E80(uint64_t a1)
{
  v2 = sub_100004310(&qword_100025A50, type metadata accessor for LaunchOptionsKey, &unk_10001700C);
  v3 = sub_100004310(&qword_100025A58, type metadata accessor for LaunchOptionsKey, &unk_100016E08);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003F3C()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v12 - v5;
  QuickAction.type.getter();
  (*(v1 + 104))(v4, enum case for QuickActionType.location(_:), v0);
  sub_100004310(&qword_1000259F0, &type metadata accessor for QuickActionType, &protocol conformance descriptor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v7 = *(v1 + 8);
    v7(v4, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = *(v1 + 8);
    v9(v4, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  QuickAction.handle.getter();
  if (v10)
  {

    return 1;
  }

  return 0;
}

uint64_t sub_10000417C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1000041C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100004208(void *a1)
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

void sub_10000427C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100004310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000044E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  URL._bridgeToObjectiveC()(&v16);
  v10 = v9;
  sub_1000149B0(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100004A1C(&qword_100025A40, type metadata accessor for OpenExternalURLOptionsKey, &unk_100016FC8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  v18 = sub_100004964;
  v19 = v13;
  v16._baseURL = _NSConcreteStackBlock;
  v16._clients = 1107296256;
  v16._reserved = sub_10000484C;
  v17 = &unk_100021098;
  v15 = _Block_copy(&v16._baseURL);

  [(NSString *)v16._urlString openURL:v10 options:isa completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_100004750(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    type metadata accessor for FailedToOpenURLError(0);
    sub_100004A1C(&qword_100025A60, type metadata accessor for FailedToOpenURLError, &unk_1000170DC);
    v4 = swift_allocError();
    v7 = v6;
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 16))(v7, a2, v8);
  }

  a3(v4, a2);
}

uint64_t sub_10000484C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1000048C4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100004964(char a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100004750(a1, v1 + v4, v5);
}

uint64_t sub_100004A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100004A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004A68(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a3;
  v8 = type metadata accessor for URLComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.url.getter();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100004D14(v14);
    (*(v9 + 16))(v11, a1, v8);
    type metadata accessor for InvalidURLComponentsError(0);
    sub_100004D9C();
    v19 = swift_allocError();
    (*(v9 + 32))(v20, v11, v8);
    a2(v19);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    (*(a5 + 8))(v18, a2, v24, v23, a5);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_100004D14(uint64_t a1)
{
  v2 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004D9C()
{
  result = qword_100025A68;
  if (!qword_100025A68)
  {
    type metadata accessor for InvalidURLComponentsError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A68);
  }

  return result;
}

uint64_t sub_100004E6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100004F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_100005010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000050A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() applicationProxyForIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_1000059B8;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100005200;
  v13[3] = &unk_100021120;
  v12 = _Block_copy(v13);

  [v5 openUserActivity:a1 withApplicationProxy:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_100005200(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10000529C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a4;
  v47 = a5;
  v10 = type metadata accessor for Logger();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v13 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() applicationProxyForIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:0];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v17];

  v43 = v15;
  [v18 _setInteraction:v15 donate:0];
  static PeopleLogger.common.getter();
  v19 = v14;
  v20 = a1;
  v21 = v12;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v48 = v19;

  if (os_log_type_enabled(v22, v23))
  {
    v40 = v21;
    v41 = v6;
    v42 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v24 = 138412546;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2080;
    v27 = v20;
    if (v14)
    {
      v28 = a3;
      v29 = [v48 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      a3 = v28;
    }

    else
    {
      v32 = 0xE100000000000000;
      v30 = 45;
    }

    v33 = sub_1000141EC(v30, v32, &v49);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Launching intent: %@ with application proxy: %s", v24, 0x16u);
    sub_100005950(v25);

    sub_100004208(v26);

    (*(v44 + 8))(v40, v45);
    v6 = v41;
    a2 = v42;
  }

  else
  {

    (*(v44 + 8))(v21, v45);
  }

  v34 = v46;
  v35 = v6[5];
  v36 = v6[6];
  sub_1000041C4(v6 + 2, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v47;
  v38 = *(v36 + 8);

  v38(v18, a2, a3, sub_100005948, v37, v35, v36);
}

uint64_t sub_1000056B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.viewService.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = v5;
      v11 = v10;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = Error.localizedDescription.getter();
      v15 = sub_1000141EC(v13, v14, &v22);
      v20 = v4;
      v16 = a2;
      v17 = v15;

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to launch activity: %s", v11, 0xCu);
      sub_100004208(v12);

      (*(v21 + 8))(v7, v20);
      return v16(a1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_100005910()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005950(uint64_t a1)
{
  v2 = sub_10000417C(&unk_1000261C0, &qword_1000171D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000059E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContactFormatter.Style();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000041C4((v1 + 24), *(v1 + 48));
  QuickAction.contactIdentifier.getter();
  v7 = dispatch thunk of ContactFetcherProtocol.contact(for:includeImages:)();

  if (v7)
  {
    (*(v4 + 104))(v6, enum case for ContactFormatter.Style.shortName(_:), v3);
    v8 = v7;
    String.localized.getter();
    v14[3] = type metadata accessor for ContactFormatter();
    v14[4] = &protocol witness table for ContactFormatter;
    sub_1000070F4(v14);
    ContactFormatter.init(style:fallback:)();
    Person.init(from:statuses:contactFormatter:)();

    v9 = type metadata accessor for Person();
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = type metadata accessor for Person();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_100005C4C(uint64_t a1)
{
  v2 = type metadata accessor for QuickAction();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = __chkstk_darwin(v2);
  v95 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v98 = &v93 - v6;
  v7 = __chkstk_darwin(v5);
  v97 = &v93 - v8;
  v99 = v9;
  __chkstk_darwin(v7);
  v11 = &v93 - v10;
  v12 = type metadata accessor for Logger();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = __chkstk_darwin(v12);
  v96 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v100 = &v93 - v16;
  __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v20 = __chkstk_darwin(v19 - 8);
  v101 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = &v93 - v23;
  __chkstk_darwin(v22);
  v26 = &v93 - v25;
  v27 = type metadata accessor for QuickActionType();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  QuickAction.type.getter();
  dispatch thunk of PeopleAnalytics.sendWidgetPerformQuickAction(_:)();

  v31 = v27;
  v32 = v18;
  v33 = v107;
  (*(v28 + 8))(v30, v31);
  v34 = v24;
  v35 = v11;
  v36 = v108;
  sub_100005A00(v26);
  static PeopleLogger.viewService.getter();
  v37 = *(v33 + 16);
  v104 = a1;
  v109 = v37;
  v110 = v33 + 16;
  v37(v35, a1, v36);
  v103 = v26;
  sub_100006DFC(v26, v34);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v94 = v32;
    v40 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v40 = 136315394;
    sub_100006F40();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v42;
    v102 = *(v33 + 8);
    v102(v35, v36);
    v44 = sub_1000141EC(v41, v43, v114);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = v34;
    v46 = v101;
    sub_100006DFC(v34, v101);
    v47 = type metadata accessor for Person();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_100006EE0(v46, &qword_100025D00, &qword_100017220);
      v49 = 0xE100000000000000;
      v50 = 45;
    }

    else
    {
      v50 = Person.description.getter();
      v49 = v55;
      (*(v48 + 8))(v46, v47);
    }

    v53 = v104;
    sub_100006EE0(v45, &qword_100025D00, &qword_100017220);
    v56 = sub_1000141EC(v50, v49, v114);

    *(v40 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to handle action: %s, for person: %s", v40, 0x16u);
    swift_arrayDestroy();

    v51 = v106;
    v101 = *(v105 + 8);
    v52 = (v101)(v94, v106);
    v33 = v107;
    v36 = v108;
    v54 = v103;
  }

  else
  {

    sub_100006EE0(v34, &qword_100025D00, &qword_100017220);
    v102 = *(v33 + 8);
    v102(v35, v36);
    v51 = v106;
    v101 = *(v105 + 8);
    v52 = (v101)(v32, v106);
    v54 = v103;
    v53 = v104;
  }

  __chkstk_darwin(v52);
  *(&v93 - 2) = v53;
  *(&v93 - 1) = v54;
  sub_1000067D4(sub_100006E6C, v57, v112);
  if (v113)
  {
    sub_100006DE4(v112, v114);
    v58 = v100;
    static PeopleLogger.viewService.getter();
    sub_100006F98(v114, v112);
    v59 = v97;
    v109(v97, v53, v36);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v62 = 136315394;
      v63 = v59;
      sub_1000041C4(v112, v113);
      swift_getDynamicType();
      v64 = _typeName(_:qualified:)();
      v66 = v65;
      sub_100004208(v112);
      v67 = sub_1000141EC(v64, v66, v111);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      sub_100006F40();
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      v102(v63, v36);
      v71 = sub_1000141EC(v68, v70, v111);

      *(v62 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Got handler: %s for action: %s", v62, 0x16u);
      swift_arrayDestroy();
      v53 = v104;

      v72 = v106;
      v73 = v100;
    }

    else
    {

      v102(v59, v36);
      sub_100004208(v112);
      v73 = v58;
      v72 = v51;
    }

    (v101)(v73, v72);
    v87 = v115;
    v88 = v116;
    sub_1000041C4(v114, v115);
    v89 = v98;
    v109(v98, v53, v36);
    v90 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v91 = swift_allocObject();
    (*(v33 + 32))(v91 + v90, v89, v36);
    (*(v88 + 16))(v53, v54, sub_100007084, v91, v87, v88);

    sub_100004208(v114);
  }

  else
  {
    sub_100006EE0(v112, &qword_100025D08, &qword_100017228);
    v74 = v96;
    static PeopleLogger.viewService.getter();
    v75 = v95;
    v109(v95, v53, v36);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v75;
      v80 = swift_slowAlloc();
      v114[0] = v80;
      *v78 = 136315138;
      sub_100006F40();
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v102(v79, v36);
      v84 = sub_1000141EC(v81, v83, v114);

      *(v78 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v76, v77, "No available handler for action: %s", v78, 0xCu);
      sub_100004208(v80);

      v85 = v106;
      v86 = v96;
    }

    else
    {

      v102(v75, v36);
      v86 = v74;
      v85 = v51;
    }

    (v101)(v86, v85);
  }

  return sub_100006EE0(v54, &qword_100025D00, &qword_100017220);
}

uint64_t (*sub_1000067D4@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(void *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_100006F98(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100004208(v9);
      }

      if (v8)
      {
        return sub_100006DE4(v9, a3);
      }

      result = sub_100004208(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10000688C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static PeopleLogger.viewService.getter();
    (*(v5 + 16))(v7, a2, v4);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = v8;
      v16 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315394;
      sub_100006F40();
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v9;
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_1000141EC(v17, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v21 = Error.localizedDescription.getter();
      v23 = sub_1000141EC(v21, v22, &v27);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to handle action: %s with error: %s", v16, 0x16u);
      swift_arrayDestroy();

      return (*(v25 + 8))(v12, v26);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_100006BC0()
{

  sub_100004208((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

id sub_100006C24()
{
  sub_10000417C(&qword_100025CF0, "~<");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000171E0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v12 = sub_100006D98();
    v13 = &off_1000210C0;
    *&v11 = v2;
    type metadata accessor for IntentLauncher();
    v3 = swift_allocObject();
    sub_100006DE4(&v11, v3 + 16);
    v4 = [objc_allocWithZone(CNLaunchServices) init];
    v5 = type metadata accessor for MessageActionHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    *(v0 + 56) = v5;
    *(v0 + 64) = &off_100021318;
    *(v0 + 32) = v6;
    v7 = sub_10000A190();
    *(v0 + 96) = type metadata accessor for CallActionHandler();
    *(v0 + 104) = &off_100021180;
    *(v0 + 72) = v7;
    v8 = type metadata accessor for ContactFetcher();
    v9 = static ContactFetcher.shared.getter();
    v12 = v8;
    v13 = &protocol witness table for ContactFetcher;
    *&v11 = v9;
    type metadata accessor for ActionLauncher();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    sub_100006DE4(&v11, v10 + 24);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100006D98()
{
  result = qword_100025CF8;
  if (!qword_100025CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025CF8);
  }

  return result;
}

uint64_t sub_100006DE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000417C(&qword_100025D00, &qword_100017220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E6C(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  sub_1000041C4(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

uint64_t sub_100006EE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000417C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100006F40()
{
  result = qword_100025D10;
  if (!qword_100025D10)
  {
    type metadata accessor for QuickAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025D10);
  }

  return result;
}

uint64_t sub_100006F98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006FFC()
{
  v1 = type metadata accessor for QuickAction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100007084(uint64_t a1)
{
  v3 = *(type metadata accessor for QuickAction() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000688C(a1, v4);
}

uint64_t *sub_1000070F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000716C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for QuickAction();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10000417C(&qword_100025D00, &qword_100017220);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000727C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for QuickAction();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10000417C(&qword_100025D00, &qword_100017220);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for NoAvailableContactHandle(uint64_t a1)
{
  result = qword_100025D70;
  if (!qword_100025D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000073D0(uint64_t a1)
{
  type metadata accessor for QuickAction();
  if (v1 <= 0x3F)
  {
    sub_100007454(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100007454(uint64_t a1)
{
  if (!qword_100025D80)
  {
    type metadata accessor for Person();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100025D80);
    }
  }
}

id sub_10000762C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v4, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100007710()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000141EC(0xD00000000000002DLL, 0x8000000100019C20, &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_100004208(v7);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

unint64_t sub_1000078AC()
{
  result = qword_100025A50;
  if (!qword_100025A50)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100025A50);
  }

  return result;
}

void sub_100007904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 telephonyProvider];

  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  v10 = objc_allocWithZone(CNPhoneNumber);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithStringValue:v11];

  v13 = [v12 stringValue];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  object = String.trimToNil()().value._object;

  if (object)
  {

    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  v16 = objc_allocWithZone(TUHandle);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithType:v15 value:v17];

  [v9 setHandle:v18];
  [v9 setVideo:0];
  v20[4] = a3;
  v20[5] = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100007B4C;
  v20[3] = &unk_1000211E8;
  v19 = _Block_copy(v20);

  [v4 launchAppForDialRequest:v9 completion:v19];
  _Block_release(v19);
}

void sub_100007B4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100007BDC(uint64_t a1)
{
  sub_1000041C4((v1 + 64), *(v1 + 88));
  v2 = dispatch thunk of IntentHandlingApplicationRegistry.applications(forIntentClass:)();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_10000A064(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_100006F98(v5, v14);
      sub_1000041C4(v14, v14[3]);
      v6 = dispatch thunk of ApplicationRecord.bundleIdentifier.getter();
      v8 = v7;
      sub_100004208(v14);
      v15 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_10000A064((v9 > 1), v10 + 1, 1);
        v4 = v15;
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v12 = sub_10000A314(v4);

  return v12;
}

id sub_100007D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000172A0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(INStartCallIntent);
  sub_10000AA78(0, &qword_100025FA0, INPerson_ptr);
  v21 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:isa callCapability:a2];

  if (a4)
  {
    v12 = sub_10000AA78(0, &qword_100025FA8, INStartCallIntent_ptr);
    v13 = sub_100007BDC(v12);
    v14 = sub_100007F18(a3, a4, v13);

    if ((v14 & 1) == 0)
    {
      if (a2 == 2)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1000172A0;
        *(v15 + 32) = v21;
        v16 = objc_allocWithZone(INStartVideoCallIntent);
        v17 = v21;
        v18 = Array._bridgeToObjectiveC()().super.isa;

        v19 = [v16 initWithContacts:v18];

        return v19;
      }

      else
      {

        return 0;
      }
    }
  }

  return v11;
}

uint64_t sub_100007F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100008010(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v181 = a2;
  v179 = a3;
  v180 = a4;
  v5 = type metadata accessor for Logger();
  v171 = *(v5 - 8);
  v172 = v5;
  v6 = __chkstk_darwin(v5);
  v169 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v173 = &v158 - v8;
  v9 = sub_10000417C(&qword_100025F80, &unk_100017348);
  __chkstk_darwin(v9 - 8);
  v175 = &v158 - v10;
  v165 = type metadata accessor for HandleType();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v13 = __chkstk_darwin(v12 - 8);
  v162 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v161 = &v158 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = &v158 - v18;
  v19 = __chkstk_darwin(v17);
  v176 = &v158 - v20;
  v21 = __chkstk_darwin(v19);
  v178 = &v158 - v22;
  v23 = __chkstk_darwin(v21);
  v160 = &v158 - v24;
  __chkstk_darwin(v23);
  v170 = &v158 - v25;
  v26 = type metadata accessor for QuickActionType();
  v177 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v158 - v30;
  v32 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  __chkstk_darwin(v32 - 8);
  v167 = &v158 - v33;
  v34 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  __chkstk_darwin(v34 - 8);
  v36 = &v158 - v35;
  v174 = type metadata accessor for URL();
  v37 = *(v174 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v174);
  v40 = &v158 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v158 - v41;
  v43 = a1;
  if (QuickAction.useStandardProtocol.getter())
  {
    v166 = a1;
    QuickAction.standardProtocolURL.getter();
    if ((*(v37 + 48))(v36, 1, v174) != 1)
    {
      v57 = *(v37 + 32);
      v58 = v42;
      v59 = v42;
      v159 = v42;
      v60 = v174;
      v57(v59, v36, v174);
      v61 = type metadata accessor for TaskPriority();
      v62 = v167;
      (*(*(v61 - 8) + 56))(v167, 1, 1, v61);
      (*(v37 + 16))(v40, v58, v60);
      v63 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v64 = swift_allocObject();
      *(v64 + 2) = 0;
      *(v64 + 3) = 0;
      *(v64 + 4) = v182;
      v57(&v64[v63], v40, v60);
      v65 = &v64[(v38 + v63 + 7) & 0xFFFFFFFFFFFFFFF8];
      v66 = v180;
      *v65 = v179;
      v65[1] = v66;

      sub_100012D00(0, 0, v62, &unk_100017368, v64);

      (*(v37 + 8))(v159, v60);
      return;
    }

    sub_100006EE0(v36, &qword_1000259F8, &unk_100017090);
    v43 = v166;
  }

  QuickAction.type.getter();
  v44 = v177;
  v177[13](v29, enum case for QuickActionType.videoCall(_:), v26);
  sub_10000A684();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v185 == v183 && v186 == v184)
  {
    v45 = 2;
  }

  else
  {
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v45 = 1;
    if (v46)
    {
      v45 = 2;
    }
  }

  v174 = v45;
  v47 = v44[1];
  v47(v29, v26);
  v47(v31, v26);

  QuickAction.handle.getter();
  if (v48)
  {
    v49 = objc_allocWithZone(CNPhoneNumber);
    v50 = String._bridgeToObjectiveC()();
    v51 = [v49 initWithStringValue:v50];

    if (v51)
    {

      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v67 = objc_allocWithZone(INPersonHandle);
    v68 = String._bridgeToObjectiveC()();

    v69 = [v67 initWithValue:v68 type:v52];
    goto LABEL_30;
  }

  v53 = v170;
  sub_100006DFC(v181, v170);
  v54 = type metadata accessor for Person();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v53, 1, v54) == 1)
  {
    sub_100006EE0(v53, &qword_100025D00, &qword_100017220);
  }

  else
  {
    v70 = v164;
    v71 = v163;
    v72 = v165;
    (*(v164 + 104))(v163, enum case for HandleType.phoneNumber(_:), v165);
    v177 = Person.preferredHandle(ofType:)();
    v74 = v73;
    (*(v70 + 8))(v71, v72);
    (*(v55 + 8))(v53, v54);
    if (v74)
    {
      v75 = objc_allocWithZone(CNPhoneNumber);
      v76 = String._bridgeToObjectiveC()();
      v77 = [v75 initWithStringValue:v76];

      if (v77)
      {

        v78 = 2;
      }

      else
      {
        v78 = 1;
      }

      v88 = objc_allocWithZone(INPersonHandle);
      v68 = String._bridgeToObjectiveC()();

      v69 = [v88 initWithValue:v68 type:v78];
      goto LABEL_30;
    }
  }

  QuickAction.handle.getter();
  if (!v79)
  {
    v82 = v160;
    sub_100006DFC(v181, v160);
    if (v56(v82, 1, v54) == 1)
    {
      sub_100006EE0(v82, &qword_100025D00, &qword_100017220);
      v80 = objc_allocWithZone(INPersonHandle);
    }

    else
    {
      v83 = v164;
      v84 = v163;
      v85 = v165;
      (*(v164 + 104))(v163, enum case for HandleType.email(_:), v165);
      Person.preferredHandle(ofType:)();
      v87 = v86;
      (*(v83 + 8))(v84, v85);
      (*(v55 + 8))(v82, v54);
      v80 = objc_allocWithZone(INPersonHandle);
      if (v87)
      {
        goto LABEL_22;
      }
    }

    v68 = 0;
    goto LABEL_27;
  }

  v80 = objc_allocWithZone(INPersonHandle);
LABEL_22:
  v81 = v80;
  v68 = String._bridgeToObjectiveC()();

  v80 = v81;
LABEL_27:
  v69 = [v80 initWithValue:v68 type:1];
LABEL_30:
  v89 = v69;
  v90 = v178;

  v91 = type metadata accessor for PersonNameComponents();
  v92 = *(v91 - 8);
  v93 = v175;
  (*(v92 + 56))(v175, 1, 1, v91);
  v177 = v89;
  QuickAction.contactIdentifier.getter();
  QuickAction.customIdentifier.getter();
  v94 = v93;
  v96 = v95;
  v97 = (*(v92 + 48))(v93, 1, v91);
  isa = 0;
  if (v97 != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v92 + 8))(v94, v91);
  }

  v99 = String._bridgeToObjectiveC()();

  if (v96)
  {
    v100 = String._bridgeToObjectiveC()();
  }

  else
  {
    v100 = 0;
  }

  v101 = v176;
  v102 = v177;
  v103 = [objc_allocWithZone(INPerson) initWithPersonHandle:v177 nameComponents:isa displayName:0 image:0 contactIdentifier:v99 customIdentifier:v100];

  v104 = QuickAction.bundleID.getter();
  v106 = sub_100007D3C(v103, v174, v104, v105);

  if (v106)
  {
    v176 = v103;
    v107 = v173;
    static PeopleLogger.common.getter();
    sub_100006DFC(v181, v90);
    v108 = v106;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v166 = v43;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v185 = v113;
      *v111 = 138412546;
      *(v111 + 4) = v108;
      *v112 = v106;
      *(v111 + 12) = 2080;
      sub_100006DFC(v90, v101);
      v114 = type metadata accessor for Person();
      v115 = *(v114 - 8);
      v116 = (*(v115 + 48))(v101, 1, v114);
      v117 = v108;
      if (v116 == 1)
      {
        sub_100006EE0(v101, &qword_100025D00, &qword_100017220);
        v118 = 0xE100000000000000;
        v119 = 45;
      }

      else
      {
        v135 = Person.description.getter();
        v136 = v101;
        v119 = v135;
        v118 = v137;
        (*(v115 + 8))(v136, v114);
      }

      sub_100006EE0(v178, &qword_100025D00, &qword_100017220);
      v138 = sub_1000141EC(v119, v118, &v185);

      *(v111 + 14) = v138;
      _os_log_impl(&_mh_execute_header, v109, v110, "handling call intent: %@ for person: %s", v111, 0x16u);
      sub_100006EE0(v112, &unk_1000261C0, &qword_1000171D0);

      sub_100004208(v113);

      (*(v171 + 8))(v173, v172);
      v102 = v177;
    }

    else
    {

      sub_100006EE0(v90, &qword_100025D00, &qword_100017220);
      (*(v171 + 8))(v107, v172);
    }

    v139 = QuickAction.bundleID.getter();
    sub_10000529C(v108, v139, v140, v179, v180);
  }

  else
  {
    v120 = QuickAction.handle.getter();
    if (v121)
    {
      v122 = v120;
      v123 = v121;
      v176 = v103;
      v124 = v169;
      static PeopleLogger.common.getter();
      v125 = v168;
      sub_100006DFC(v181, v168);

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v185 = v129;
        *v128 = 136315394;
        *(v128 + 4) = sub_1000141EC(v122, v123, &v185);
        *(v128 + 12) = 2080;
        v130 = v161;
        sub_100006DFC(v125, v161);
        v131 = type metadata accessor for Person();
        v132 = *(v131 - 8);
        if ((*(v132 + 48))(v130, 1, v131) == 1)
        {
          sub_100006EE0(v130, &qword_100025D00, &qword_100017220);
          v133 = 0xE100000000000000;
          v134 = 45;
        }

        else
        {
          v181 = v129;
          v151 = v122;
          v152 = v130;
          v134 = Person.description.getter();
          v133 = v153;
          v154 = v152;
          v122 = v151;
          (*(v132 + 8))(v154, v131);
        }

        sub_100006EE0(v168, &qword_100025D00, &qword_100017220);
        v155 = sub_1000141EC(v134, v133, &v185);

        *(v128 + 14) = v155;
        _os_log_impl(&_mh_execute_header, v126, v127, "handling telephony voice call for handle: %s, person: %s", v128, 0x16u);
        swift_arrayDestroy();

        (*(v171 + 8))(v169, v172);
        v102 = v177;
      }

      else
      {

        sub_100006EE0(v125, &qword_100025D00, &qword_100017220);
        (*(v171 + 8))(v124, v172);
      }

      v156 = v182[5];
      v157 = v182[6];
      sub_1000041C4(v182 + 2, v156);
      (*(v157 + 8))(v122, v123, v179, v180, v156, v157);
    }

    else
    {
      v185 = 0;
      v186 = 0xE000000000000000;
      _StringGuts.grow(_:)(56);
      v141._object = 0x8000000100019CC0;
      v141._countAndFlagsBits = 0xD000000000000036;
      String.append(_:)(v141);
      v142 = v162;
      sub_100006DFC(v181, v162);
      v143 = type metadata accessor for Person();
      v144 = *(v143 - 8);
      if ((*(v144 + 48))(v142, 1, v143) == 1)
      {
        sub_100006EE0(v142, &qword_100025D00, &qword_100017220);
        v145 = 0xE100000000000000;
        v146 = 45;
      }

      else
      {
        v147 = Person.description.getter();
        v145 = v148;
        (*(v144 + 8))(v142, v143);
        v146 = v147;
      }

      v149 = v145;
      String.append(_:)(*&v146);

      v150 = static PeopleErrors.createError(_:code:)();

      v179(v150);
    }
  }
}

uint64_t sub_100009368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_10000938C, 0, 0);
}

uint64_t sub_10000938C()
{
  v1 = v0[30];
  sub_10000417C(&qword_100025F88, &unk_100017370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000172B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v4 = sub_100014AD8(inited);
  swift_setDeallocating();
  sub_100006EE0(inited + 32, &qword_100025F90, &unk_100017570);
  v5 = *(v1 + 104);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v0[34] = v7;
  sub_1000129C4(v4);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000095A0;
  v10 = swift_continuation_init();
  v0[27] = sub_10000417C(&qword_100025F98, &unk_100017380);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100012C8C;
  v0[23] = &unk_1000211C0;
  v0[24] = v10;
  [v5 openSensitiveURLInBackground:v8 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000095A0()
{

  return _swift_task_switch(sub_100009680, 0, 0);
}

uint64_t sub_100009680()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];

  v3(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100009704()
{
  sub_100004208((v0 + 16));

  sub_100004208((v0 + 64));

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_1000097A0(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100009B50(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000098F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000417C(&qword_100025FB0, &qword_100017390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_100009B50(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000098F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100009CD0();
      goto LABEL_16;
    }

    sub_100009E2C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100009CD0()
{
  v1 = v0;
  sub_10000417C(&qword_100025FB0, &qword_100017390);
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_100009E2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10000417C(&qword_100025FB0, &qword_100017390);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_10000A064(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000A084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000A084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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
    sub_10000417C(&qword_100025FB8, &qword_100017398);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10000A190()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = objc_opt_self();
  result = [v1 defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = sub_10000AA78(0, &qword_100025CF8, LSApplicationWorkspace_ptr);
    v13 = v4;
    v14 = &off_1000210C0;
    *&v12 = v3;
    type metadata accessor for IntentLauncher();
    v5 = swift_allocObject();
    sub_100006DE4(&v12, v5 + 16);
    result = [v1 defaultWorkspace];
    if (result)
    {
      v6 = result;
      v7 = [objc_allocWithZone(CNLaunchServices) init];
      v13 = sub_10000AA78(0, &qword_100025F78, TUCallCenter_ptr);
      v14 = &off_100021170;
      *&v12 = v0;
      v10 = v4;
      v11 = &protocol witness table for LSApplicationWorkspace;
      *&v9 = v6;
      type metadata accessor for CallActionHandler();
      v8 = swift_allocObject();
      sub_100006DE4(&v12, v8 + 16);
      *(v8 + 56) = v5;
      sub_100006DE4(&v9, v8 + 64);
      *(v8 + 104) = v7;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A314(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1000097A0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10000A3AC(uint64_t a1)
{
  v2 = type metadata accessor for QuickActionType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v20 = v19 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v19 - v9;
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v19[1] = a1;
  QuickAction.type.getter();
  v19[0] = *(v3 + 104);
  (v19[0])(v10, enum case for QuickActionType.videoCall(_:), v2);
  sub_10000A684();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v24 == v22 && v25 == v23)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v14 = *(v3 + 8);
  v14(v10, v2);
  v14(v12, v2);

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v16 = v20;
    QuickAction.type.getter();
    v17 = v21;
    (v19[0])(v21, enum case for QuickActionType.voiceCall(_:), v2);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v24 == v22 && v25 == v23)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v14(v17, v2);
    v14(v16, v2);
  }

  return v15 & 1;
}

unint64_t sub_10000A684()
{
  result = qword_1000259F0;
  if (!qword_1000259F0)
  {
    type metadata accessor for QuickActionType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000259F0);
  }

  return result;
}

uint64_t sub_10000A6DC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000A7C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000A8FC;

  return sub_100009368(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10000A8FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000AA78(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000AAC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000AADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v37 = a3;
  v7 = type metadata accessor for URLComponents();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HandleType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000417C(&qword_100025D00, &qword_100017220);
  __chkstk_darwin(v14 - 8);
  v16 = &v30 - v15;
  QuickAction.handle.getter();
  if (v17)
  {
    goto LABEL_2;
  }

  v31 = a1;
  v32 = a2;
  v33 = a4;
  sub_100006DFC(a2, v16);
  v21 = type metadata accessor for Person();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_10000B0E4(v16);
  }

  else
  {
    (*(v11 + 104))(v13, enum case for HandleType.email(_:), v10);
    Person.preferredHandle(ofType:)();
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    (*(v22 + 8))(v16, v21);
    if (v24)
    {
      a4 = v33;
LABEL_2:
      URLComponents.init()();
      URLComponents.scheme.setter();
      URLComponents.path.setter();
      v18 = v34[5];
      v19 = v34[6];
      sub_1000041C4(v34 + 2, v18);
      (*(v19 + 16))(v9, v37, a4, v18, v19);
      return (*(v35 + 8))(v9, v36);
    }
  }

  v25 = type metadata accessor for NoAvailableContactHandle(0);
  sub_10000B14C(&unk_100026070, type metadata accessor for NoAvailableContactHandle, &unk_10001724C);
  v26 = swift_allocError();
  v28 = v27;
  v29 = type metadata accessor for QuickAction();
  (*(*(v29 - 8) + 16))(v28, v31, v29);
  sub_100006DFC(v32, v28 + *(v25 + 20));
  v37(v26);
}

uint64_t sub_10000AF08()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  QuickAction.type.getter();
  (*(v1 + 104))(v4, enum case for QuickActionType.mail(_:), v0);
  sub_10000B14C(&qword_1000259F0, &type metadata accessor for QuickActionType, &protocol conformance descriptor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_10000B0E4(uint64_t a1)
{
  v2 = sub_10000417C(&qword_100025D00, &qword_100017220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B14C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000B3DC(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  if (sub_10000E710(a1))
  {
    static PeopleLogger.viewService.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E60, &v22);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s spotlight controller already in place", v11, 0xCu);
      sub_100004208(v12);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    static PeopleLogger.viewService.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E60, &v22);
      _os_log_impl(&_mh_execute_header, v13, v14, "%s setting new controller into root view", v15, 0xCu);
      sub_100004208(v16);
    }

    (*(v3 + 8))(v6, v2);
    v17 = [objc_opt_self() currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      v19 = [a1 view];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 _setOverrideVibrancyTrait:1];
    }

    sub_10000E594();
    sub_10000DFEC(a1);
  }
}

void sub_10000B734(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeopleAnalytics.WidgetLocation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  (*(v9 + 104))(v11, enum case for PeopleAnalytics.WidgetLocation.homeScreen(_:), v8);
  dispatch thunk of PeopleAnalytics.sendEntityCardLaunched(validContactIdentifier:displayPriorities:location:)();

  (*(v9 + 8))(v11, v8);
  static PeopleLogger.viewService.getter();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000141EC(0xD000000000000020, 0x8000000100019E30, &v51);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1000141EC(a1, a2, &v51);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s showing '%s' in view", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  v15 = *(v50 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v15)
  {
    v16 = &v15[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier];
    *v16 = 0;
    *(v16 + 1) = 0;
    v17 = v15;

    *&v17[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities] = &_swiftEmptyArrayStorage;
  }

  v49 = static HorizontalAlignment.center.getter();
  v68 = 1;
  v48 = static VerticalAlignment.center.getter();
  v67 = 1;
  v51 = a1;
  v52 = a2;
  sub_10000C05C();

  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Font.headline.getter();
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;

  sub_10000C0B0(v18, v20, v22 & 1);

  v46 = objc_opt_self();
  v28 = [v46 labelColor];
  Color.init(uiColor:)();
  v47 = Text.foregroundColor(_:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;

  sub_10000C0B0(v23, v25, v27 & 1);

  v35 = static Color.clear.getter();
  v36 = static Edge.Set.all.getter();
  v32 &= 1u;
  LOBYTE(v51) = v32;
  LOBYTE(v18) = v67;
  v37 = static Color.clear.getter();
  LOBYTE(v25) = static Edge.Set.all.getter();
  v38 = v68;
  v39 = static Color.clear.getter();
  v40 = static Edge.Set.all.getter();
  v51 = v49;
  v52 = 0;
  v53 = v38;
  v54 = v48;
  v55 = 0;
  v56 = v18;
  v57 = v47;
  v58 = v30;
  v59 = v32;
  v60 = v34;
  v61 = v35;
  v62 = v36;
  v63 = v37;
  v64 = v25;
  v65 = v39;
  v66 = v40;
  v41 = objc_allocWithZone(sub_10000417C(&qword_100026190, &qword_100017418));
  v42 = UIHostingController.init(rootView:)();
  v43 = [v42 view];
  if (v43)
  {
    v44 = v43;
    v45 = [v46 clearColor];
    [v44 setBackgroundColor:v45];

    sub_10000B3DC(v42);
  }

  else
  {
    __break(1u);
  }
}

void sub_10000BC9C(unsigned __int8 a1)
{
  v3 = type metadata accessor for MetricTemplateView();
  __chkstk_darwin(v3 - 8);
  if ((static MetricTemplate.metricsEnabled.getter() & 1) != 0 && a1 == 3)
  {
    MetricTemplateView.init(dragRefresh:)();
    v4 = objc_allocWithZone(sub_10000417C(&qword_100026180, &qword_100017410));
    v5 = UIHostingController.init(rootView:)();
    sub_10000DFEC(v5);

    return;
  }

  v6 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v6 && *&v6[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8])
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        return;
      }
    }

    else if (!a1)
    {
      v7 = *&v6[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController];
      v11 = v6;
      v8 = v7;
      sub_10000B3DC(v8);

      sub_100010B18();
LABEL_12:

      return;
    }

    v11 = v6;
    v9 = String.localized.getter();
    sub_10000B734(v9, v10);

    goto LABEL_12;
  }
}

id sub_10000BFA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000C05C()
{
  result = qword_100026188;
  if (!qword_100026188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026188);
  }

  return result;
}

uint64_t sub_10000C0B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000C0C0()
{
  result = qword_100026198;
  if (!qword_100026198)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100026198);
  }

  return result;
}

void sub_10000C10C(uint64_t a1)
{
  v130 = a1;
  v2 = sub_10000417C(&qword_1000261A8, &qword_100017420);
  __chkstk_darwin(v2 - 8);
  v4 = &v93 - v3;
  v102 = type metadata accessor for QuickAction();
  v127 = *(v102 - 8);
  __chkstk_darwin(v102);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for PeopleURL.Scheme();
  v126 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000417C(&qword_1000261B0, &qword_100017428);
  __chkstk_darwin(v8 - 8);
  v120 = &v93 - v9;
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v114 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Logger();
  v13 = *(v117 - 8);
  v14 = __chkstk_darwin(v117);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v93 - v18;
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v123 = type metadata accessor for URL();
  v22 = *(v123 - 8);
  v23 = __chkstk_darwin(v123);
  v101 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v129 = &v93 - v26;
  __chkstk_darwin(v25);
  v131 = &v93 - v27;
  v103 = v1;
  v28 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (!v28)
  {
    static PeopleLogger.viewService.getter();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v134[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000141EC(0xD000000000000019, 0x8000000100019E80, v134);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s impossible error, no peopleView", v36, 0xCu);
      sub_100004208(v37);
    }

    (*(v13 + 8))(v16, v117);
    return;
  }

  v96 = OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView;
  v97 = v6;
  v99 = v4;
  v124 = v21;
  v104 = v28;
  if ((v130 & 0xC000000000000001) != 0)
  {
    v29 = v28;

    __CocoaSet.makeIterator()();
    sub_10000C0C0();
    sub_10000CFCC(&qword_1000261A0, sub_10000C0C0, &protocol conformance descriptor for NSObject);
    v21 = v124;
    Set.Iterator.init(_cocoa:)();
    v130 = v134[0];
    v121 = v134[1];
    v31 = v134[2];
    v32 = v134[3];
    v33 = v134[4];
  }

  else
  {
    v38 = -1 << *(v130 + 32);
    v39 = *(v130 + 56);
    v121 = v130 + 56;
    v40 = ~v38;
    v41 = -v38;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v39;
    v44 = v28;

    v31 = v40;
    v33 = v43;
    v32 = 0;
  }

  v100 = v31;
  v115 = (v31 + 64) >> 6;
  v119 = (v22 + 16);
  v128 = (v22 + 8);
  v125 = (v13 + 8);
  v111 = "displayViewController(_:)";
  v118 = (v11 + 48);
  v110 = (v11 + 32);
  v109 = enum case for PeopleURL.Scheme.people(_:);
  v108 = (v126 + 104);
  v107 = (v126 + 8);
  v106 = (v11 + 8);
  v98 = (v127 + 48);
  v95 = (v127 + 32);
  v94 = (v127 + 8);
  v93 = "T@UIWindow,N,&,Vwindow";
  *&v30 = 136315650;
  v105 = v30;
  v45 = v117;
  v116 = v19;
  v46 = v123;
  v47 = v121;
  v122 = v10;
  while (v130 < 0)
  {
    v52 = __CocoaSet.Iterator.next()();
    if (!v52 || (v132 = v52, sub_10000C0C0(), swift_dynamicCast(), v51 = v133, v50 = v33, !v133))
    {
LABEL_41:
      sub_10000CFC4(v130);

      return;
    }

LABEL_21:
    v127 = v50;
    v53 = [v51 URL];
    v54 = v131;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static PeopleLogger.viewService.getter();
    v55 = v129;
    (*v119)(v129, v54, v46);
    v56 = v51;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      *v59 = v105;
      *(v59 + 4) = sub_1000141EC(0xD000000000000019, v111 | 0x8000000000000000, &v133);
      *(v59 + 12) = 2112;
      *(v59 + 14) = v56;
      *v60 = v51;
      *(v59 + 22) = 2080;
      sub_10000CFCC(&qword_1000261B8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v61 = v56;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v126 = *v128;
      (v126)(v129, v46);
      v65 = sub_1000141EC(v62, v64, &v133);

      *(v59 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "%s url centext: %@ url: %s", v59, 0x20u);
      sub_100006EE0(v60, &unk_1000261C0, &qword_1000171D0);
      v66 = v117;

      swift_arrayDestroy();
      v21 = v124;

      v67 = *v125;
      v45 = v66;
      (*v125)(v21, v66);
    }

    else
    {

      v126 = *v128;
      (v126)(v55, v46);
      v67 = *v125;
      (*v125)(v21, v45);
    }

    v68 = v120;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v69 = v122;
    if ((*v118)(v68, 1, v122) == 1)
    {
      sub_100006EE0(v68, &qword_1000261B0, &qword_100017428);
      v70 = v116;
      goto LABEL_30;
    }

    v71 = v114;
    (*v110)(v114, v68, v69);
    URLComponents.scheme.getter();
    v72 = v69;
    v73 = v112;
    v74 = v113;
    (*v108)(v112, v109, v113);
    v75 = static PeopleURL.Scheme.== infix(_:_:)();

    (*v107)(v73, v74);
    if ((v75 & 1) == 0)
    {
      (*v106)(v71, v72);
      v70 = v116;
      v21 = v124;
LABEL_30:
      static PeopleLogger.viewService.getter();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "Url does not represent people/can't be parsed", v79, 2u);
        v21 = v124;
      }

      v67(v70, v45);
LABEL_33:
      v46 = v123;
      goto LABEL_34;
    }

    if (sub_100012594())
    {
      v76 = sub_10000F140(v71);
      sub_10000BC9C(v76);

      (*v106)(v71, v122);
      v21 = v124;
      goto LABEL_33;
    }

    v80 = [v56 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v81 = v99;
    QuickAction.init(from:)();
    v82 = v102;
    v83 = (*v98)(v81, 1, v102);
    v84 = v122;
    v46 = v123;
    if (v83 == 1)
    {
      sub_100006EE0(v81, &qword_1000261A8, &qword_100017420);
      v85 = v114;
      v86 = sub_10000F140(v114);
      v87 = v103;
      sub_10000BC9C(v86);
      static MetricTemplate.metricsEnabled.getter();
      v88 = *(v87 + v96);
      if (v88 && *&v88[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8])
      {
        v89 = v88;
        v90 = String.localized.getter();
        sub_10000B734(v90, v91);

        v56 = v89;
      }

      v21 = v124;

      (*v106)(v85, v84);
    }

    else
    {
      v92 = v97;
      (*v95)(v97, v81, v82);
      sub_100006C24();
      sub_100005C4C(v92);

      (*v94)(v92, v82);
      (*v106)(v114, v84);
      v21 = v124;
    }

LABEL_34:
    v33 = v127;
    (v126)(v131, v46);
    v47 = v121;
  }

  v48 = v32;
  v49 = v33;
  if (v33)
  {
LABEL_17:
    v50 = (v49 - 1) & v49;
    v51 = *(*(v130 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v49)))));
    if (!v51)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v32 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v32 >= v115)
    {
      goto LABEL_41;
    }

    v49 = *(v47 + 8 * v32);
    ++v48;
    if (v49)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_10000CFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10000D014(void *a1, void *a2)
{
  v3 = v2;
  v51 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v49 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v48 - v9;
  static PeopleLogger.viewService.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000141EC(0xD00000000000001FLL, 0x8000000100019F20, &v52);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100004208(v14);
  }

  v15 = *(v6 + 8);
  v15(v10, v5);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v48[1] = v6;
    v18 = objc_opt_self();
    v50 = a1;
    v19 = [v18 sharedApplication];
    [v19 _setBackgroundStyle:1];

    v20 = [objc_opt_self() mainScreen];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [objc_allocWithZone(UIWindow) initWithFrame:{v22, v24, v26, v28}];
    v30 = *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window);
    *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_window) = v29;
    v31 = v29;

    v32 = v31;
    [v32 setOpaque:0];
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    [v32 setWindowScene:v17];
    [v32 setRootViewController:*(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController)];
    [v32 makeKeyAndVisible];
    v34 = objc_allocWithZone(type metadata accessor for PeopleViewHandler());
    v35 = v32;
    v36 = sub_10000EA2C(v35);
    v37 = *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
    *(v3 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView) = v36;

    v38 = [v51 URLContexts];
    sub_10000C0C0();
    sub_10000CFCC(&qword_1000261A0, sub_10000C0C0, &protocol conformance descriptor for NSObject);
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = __CocoaSet.count.getter();
    }

    else
    {
      v40 = *(v39 + 16);
    }

    if (v40)
    {
      v41 = [v51 URLContexts];
      v42 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000C10C(v42);
    }

    else
    {
      v43 = v49;
      static PeopleLogger.viewService.getter();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v52 = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_1000141EC(0xD00000000000001FLL, 0x8000000100019F20, &v52);
        _os_log_impl(&_mh_execute_header, v44, v45, "%s missing URL data", v46, 0xCu);
        sub_100004208(v47);
      }

      v15(v43, v5);
      sub_10000BC9C(1u);
    }
  }
}

id sub_10000D76C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000141EC(0xD00000000000001BLL, 0x8000000100019EE0, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_100004208(v9);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_peopleView);
  if (v10)
  {
    v11 = v10;
    sub_10000EB28(0, 0xE000000000000000, &_swiftEmptyArrayStorage);
  }

  [*(v1 + OBJC_IVAR____TtC17PeopleViewService13SceneDelegate_rootViewController) dismissViewControllerAnimated:0 completion:0];
  return sub_10000E594();
}

void sub_10000DAF8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = v2;
    v12 = v11;
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000141EC(0xD000000000000012, 0x8000000100019EA0, &v19);
    *(v12 + 12) = 2080;
    v13 = [v8 activityType];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = sub_1000141EC(v14, v16, &v19);

    *(v12 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s activity: %s ", v12, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  sub_10000BC9C(1u);
}

id sub_10000DD24()
{
  v1 = OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView;
  v2 = *(v0 + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PeopleViewService27RootContainerViewController____lazy_storage___blurView);
  }

  else
  {
    v4 = [objc_opt_self() effectWithStyle:8];
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10000DE94()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    v3 = [objc_allocWithZone(UIView) init];
  }

  else
  {
    v3 = sub_10000DD24();
  }

  v4 = v3;
  [v0 setView:v3];

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 layer];

    [v7 setAllowsGroupOpacity:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_10000DFEC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 view];
  if (v7)
  {
    v8 = v7;
    [v1 addChildViewController:a1];
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = [v11 contentView];
        [v13 insertSubview:v8 atIndex:0];

        v14 = [v12 contentView];
LABEL_11:
        v45 = v14;
        [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
        v27 = objc_opt_self();
        sub_10000417C(&qword_1000262E0, &qword_100017460);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100017430;
        v29 = [v8 topAnchor];
        v30 = [v45 topAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v28 + 32) = v31;
        v32 = [v8 bottomAnchor];
        v33 = [v45 bottomAnchor];
        v34 = [v32 constraintEqualToAnchor:v33];

        *(v28 + 40) = v34;
        v35 = [v8 leadingAnchor];
        v36 = [v45 safeAreaLayoutGuide];
        v37 = [v36 leadingAnchor];

        v38 = [v35 constraintEqualToAnchor:v37];
        *(v28 + 48) = v38;
        v39 = [v8 trailingAnchor];
        v40 = [v45 safeAreaLayoutGuide];

        v41 = [v40 trailingAnchor];
        v42 = [v39 constraintEqualToAnchor:v41];

        *(v28 + 56) = v42;
        sub_10000AA78(0, &qword_100026208, NSLayoutConstraint_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v27 activateConstraints:isa];

        [a1 didMoveToParentViewController:v1];
        v44 = v45;

        return;
      }
    }

    v25 = [v1 view];
    if (v25)
    {
      v26 = v25;
      [v25 insertSubview:v8 atIndex:0];

      v14 = [v1 view];
      if (v14)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  static PeopleLogger.viewService.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v45;
    *v18 = 136315138;
    v19 = v15;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_1000141EC(v21, v23, &v46);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Tried to embed nil view for: %s", v18, 0xCu);
    sub_100004208(v45);
  }

  (*(v4 + 8))(v6, v3);
}

id sub_10000E594()
{
  v1 = [v0 childViewControllers];
  sub_10000AA78(0, &qword_100026200, UIViewController_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E710(void *a1)
{
  v3 = [v1 childViewControllers];
  sub_10000AA78(0, &qword_100026200, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return 0;
  }

  v6 = [v1 childViewControllers];
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_12:

    return 0;
  }

LABEL_6:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_9:
    v10 = v9;

    v11 = a1;
    v12 = static NSObject.== infix(_:_:)();

    return v12 & 1;
  }

  __break(1u);
  return result;
}

id sub_10000E9C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RootContainerViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *sub_10000EA2C(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities] = &_swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactFetcher;
  type metadata accessor for ContactFetcher();
  *&v1[v5] = static ContactFetcher.shared.getter();
  v6 = OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController;
  *&v2[v6] = [objc_allocWithZone(SPUIContactViewController) init];
  *&v2[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_hostWindow] = a1;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for PeopleViewHandler();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v12, "init");
  v9 = *&v8[OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController];
  v10 = v8;
  [v9 setDelegate:{v10, v12.receiver, v12.super_class}];

  return v10;
}

void sub_10000EB28(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = *(v3 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_spotlightContactViewController);
  v15 = [v14 contactIdentifier];
  if (!v15)
  {
LABEL_7:
    static PeopleLogger.viewService.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = a3;
      v37 = v27;
      v28 = v7;
      v29 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_1000141EC(0xD000000000000029, 0x800000010001A1C0, &v37);
      _os_log_impl(&_mh_execute_header, v24, v25, "%s -- updating spotlight contact", v26, 0xCu);
      sub_100004208(v29);

      (*(v8 + 8))(v13, v28);
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v34 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v14 updateWithContactIdentifier:v34 preferredBundleIdentifiers:isa];

    return;
  }

  v36 = v14;
  v16 = a3;
  v17 = v7;
  v18 = v15;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == a1 && v21 == a2)
  {

    v7 = v17;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v17;
    a3 = v16;
    v14 = v36;
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  static PeopleLogger.viewService.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000141EC(0xD000000000000029, 0x800000010001A1C0, &v37);
    _os_log_impl(&_mh_execute_header, v30, v31, "%s -- not updating spotlight", v32, 0xCu);
    sub_100004208(v33);
  }

  (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000EED8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8))
  {
    return 1;
  }

  v5 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();

  if (v5)
  {
    v6 = [v5 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities);

    sub_10000EB28(v7, v9, v10);

    return 0;
  }

  else
  {
    static PeopleLogger.viewService.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000141EC(0xD000000000000019, 0x800000010001A1A0, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s contact not set/confirmed", v14, 0xCu);
      sub_100004208(v15);
    }

    (*(v2 + 8))(v4, v1);
    return 2;
  }
}

uint64_t sub_10000F140(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v125 = *(v2 - 8);
  v126 = v2;
  v3 = __chkstk_darwin(v2);
  v124 = &v99[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v111 = &v99[-v5];
  v110 = type metadata accessor for PeopleURL.ArrayParameter();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v99[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for PeopleURL.Parameter();
  v113 = *(v116 - 8);
  v7 = __chkstk_darwin(v116);
  v107 = &v99[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v112 = &v99[-v9];
  v127 = type metadata accessor for PeopleURL.PathAction();
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v115 = &v99[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000417C(&qword_100026318, &qword_1000174E8);
  v12 = __chkstk_darwin(v11);
  v120 = &v99[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v128 = &v99[-v14];
  v15 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  v16 = __chkstk_darwin(v15 - 8);
  v114 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v123 = &v99[-v19];
  v20 = __chkstk_darwin(v18);
  v119 = &v99[-v21];
  v22 = __chkstk_darwin(v20);
  v117 = &v99[-v23];
  v24 = __chkstk_darwin(v22);
  v122 = &v99[-v25];
  __chkstk_darwin(v24);
  v121 = &v99[-v26];
  v27 = type metadata accessor for PeopleURL.Scheme();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v99[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URLComponents.scheme.getter();
  v31 = enum case for PeopleURL.Scheme.people(_:);
  v32 = *(v28 + 104);
  v32(v30, enum case for PeopleURL.Scheme.people(_:), v27);
  v33 = static PeopleURL.Scheme.== infix(_:_:)();
  v34 = v27;
  v35 = v11;

  v36 = *(v28 + 8);
  v36(v30, v34);
  v118 = v35;
  if (v33)
  {
    v101 = v30;
    v102 = v36;
    v103 = v34;
    v104 = v32;
    v105 = v31;
    v37 = v121;
    v106 = a1;
    URLComponents.peopleAction.getter();
    v38 = v129;
    v39 = v122;
    v40 = v127;
    (*(v129 + 104))(v122, enum case for PeopleURL.PathAction.showGatheredMetrics(_:), v127);
    (*(v38 + 56))(v39, 0, 1, v40);
    v41 = *(v35 + 48);
    v42 = v128;
    sub_1000124DC(v37, v128);
    sub_1000124DC(v39, &v42[v41]);
    v43 = *(v38 + 48);
    if (v43(v42, 1, v40) == 1)
    {
      sub_100006EE0(v39, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v37, &qword_100026320, &unk_1000174F0);
      v44 = v128;
      v45 = v43(&v128[v41], 1, v40) == 1;
      v46 = v44;
      if (v45)
      {
        sub_100006EE0(v44, &qword_100026320, &unk_1000174F0);
        return 3;
      }

      goto LABEL_8;
    }

    v48 = v128;
    v49 = v117;
    sub_1000124DC(v128, v117);
    if (v43(&v48[v41], 1, v40) == 1)
    {
      sub_100006EE0(v39, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v37, &qword_100026320, &unk_1000174F0);
      (*(v129 + 8))(v49, v40);
      v46 = v128;
LABEL_8:
      sub_100006EE0(v46, &qword_100026318, &qword_1000174E8);
      v31 = v105;
      v32 = v104;
      v34 = v103;
      v36 = v102;
      v30 = v101;
      goto LABEL_9;
    }

    v59 = v128;
    v60 = v129;
    v61 = v115;
    (*(v129 + 32))(v115, &v128[v41], v40);
    sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction, &protocol conformance descriptor for PeopleURL.PathAction);
    v100 = dispatch thunk of static Equatable.== infix(_:_:)();
    v62 = *(v60 + 8);
    v62(v61, v40);
    sub_100006EE0(v39, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v37, &qword_100026320, &unk_1000174F0);
    v62(v49, v40);
    sub_100006EE0(v59, &qword_100026320, &unk_1000174F0);
    v31 = v105;
    v32 = v104;
    v34 = v103;
    v36 = v102;
    v30 = v101;
    if (v100)
    {
      return 3;
    }
  }

LABEL_9:
  URLComponents.scheme.getter();
  v32(v30, v31, v34);
  v50 = static PeopleURL.Scheme.== infix(_:_:)();

  v36(v30, v34);
  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

  v51 = v119;
  URLComponents.peopleAction.getter();
  v52 = v129;
  v53 = v123;
  v54 = v127;
  (*(v129 + 104))(v123, enum case for PeopleURL.PathAction.showSearchResult(_:), v127);
  (*(v52 + 56))(v53, 0, 1, v54);
  v55 = *(v118 + 48);
  v56 = v120;
  sub_1000124DC(v51, v120);
  sub_1000124DC(v53, &v56[v55]);
  v57 = *(v52 + 48);
  if (v57(v56, 1, v54) != 1)
  {
    v58 = v114;
    sub_1000124DC(v56, v114);
    if (v57(&v56[v55], 1, v54) != 1)
    {
      v63 = v129;
      v64 = &v56[v55];
      v65 = v115;
      (*(v129 + 32))(v115, v64, v54);
      sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction, &protocol conformance descriptor for PeopleURL.PathAction);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = *(v63 + 8);
      v67(v65, v54);
      sub_100006EE0(v123, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v51, &qword_100026320, &unk_1000174F0);
      v67(v58, v54);
      sub_100006EE0(v56, &qword_100026320, &unk_1000174F0);
      if ((v66 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_19;
    }

    sub_100006EE0(v123, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v51, &qword_100026320, &unk_1000174F0);
    (*(v129 + 8))(v58, v54);
LABEL_15:
    sub_100006EE0(v56, &qword_100026318, &qword_1000174E8);
    goto LABEL_29;
  }

  sub_100006EE0(v53, &qword_100026320, &unk_1000174F0);
  sub_100006EE0(v51, &qword_100026320, &unk_1000174F0);
  if (v57(&v56[v55], 1, v54) != 1)
  {
    goto LABEL_15;
  }

  sub_100006EE0(v56, &qword_100026320, &unk_1000174F0);
LABEL_19:
  v68 = v112;
  v69 = v113;
  v70 = *(v113 + 104);
  v71 = v116;
  v70(v112, enum case for PeopleURL.Parameter.contactIdentifier(_:), v116);
  v72 = URLComponents.subscript.getter();
  v74 = v73;
  v75 = *(v69 + 8);
  v75(v68, v71);
  if (v74)
  {
    v129 = v72;
    v76 = v109;
    v77 = v108;
    v78 = v110;
    (*(v109 + 104))(v108, enum case for PeopleURL.ArrayParameter.priorities(_:), v110);
    v128 = URLComponents.subscript.getter();
    (*(v76 + 8))(v77, v78);
    v79 = v107;
    v80 = v116;
    v70(v107, enum case for PeopleURL.Parameter.lockScreen(_:), v116);
    v81 = URLComponents.subscript.getter();
    v83 = v82;
    v75(v79, v80);
    if (v83)
    {
      v84 = v81;
    }

    else
    {
      v84 = 0x65736C6166;
    }

    if (v83)
    {
      v85 = v83;
    }

    else
    {
      v85 = 0xE500000000000000;
    }

    if (v84 == 1702195828 && v85 == 0xE400000000000000)
    {

      v86 = 1;
    }

    else
    {
      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v92 = v111;
    static PeopleLogger.viewService.getter();

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();

    v95 = os_log_type_enabled(v93, v94);
    v96 = v129;
    if (v95)
    {
      v97 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v97 = 136315650;
      *(v97 + 4) = sub_1000141EC(0xD000000000000010, 0x800000010001A180, &v130);
      *(v97 + 12) = 2080;
      *(v97 + 14) = sub_1000141EC(v96, v74, &v130);
      *(v97 + 22) = 1024;
      *(v97 + 24) = v86 & 1;
      _os_log_impl(&_mh_execute_header, v93, v94, "%s, contactIdentifier: %s, lockScreen: %{BOOL}d", v97, 0x1Cu);
      swift_arrayDestroy();
    }

    (*(v125 + 8))(v92, v126);
    v98 = sub_10001006C(v96, v74, v128, v86 & 1);

    return v98;
  }

LABEL_29:
  v87 = v124;
  static PeopleLogger.viewService.getter();
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v130 = v91;
    *v90 = 136315138;
    *(v90 + 4) = sub_1000141EC(0xD000000000000010, 0x800000010001A180, &v130);
    _os_log_impl(&_mh_execute_header, v88, v89, "%s contact not set", v90, 0xCu);
    sub_100004208(v91);
  }

  (*(v125 + 8))(v87, v126);
  return 1;
}

uint64_t sub_10001006C(uint64_t a1, unint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v10 = type metadata accessor for PeopleAnalytics.WidgetLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 1;
  }

  v40 = v15;
  v41 = a4;
  v18 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();
  if (!v18)
  {
    return 2;
  }

  v38 = v11;
  v39 = v10;
  v19 = (v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier);
  *v19 = a1;
  v19[1] = a2;
  v20 = v18;

  *(v5 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_displayPriorities) = a3;

  v37 = v20;
  v21 = [v20 identifier];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_10000EB28(v22, v24, a3);

  static PeopleLogger.viewService.getter();

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v27 = 136315650;
    *(v27 + 4) = sub_1000141EC(0xD000000000000035, 0x800000010001A140, &v42);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_1000141EC(a1, a2, &v42);
    *(v27 + 22) = 2080;
    v28 = Array.description.getter();
    v30 = sub_1000141EC(v28, v29, &v42);

    *(v27 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s, contactIdentifier: %s, displayPriorities: %s", v27, 0x20u);
    swift_arrayDestroy();
  }

  (*(v40 + 8))(v17, v14);
  v32 = v38;
  v31 = v39;
  type metadata accessor for PeopleAnalytics();
  static PeopleAnalytics.shared.getter();
  v33 = &enum case for PeopleAnalytics.WidgetLocation.lockScreen(_:);
  if ((v41 & 1) == 0)
  {
    v33 = &enum case for PeopleAnalytics.WidgetLocation.homeScreen(_:);
  }

  (*(v32 + 104))(v13, *v33, v31);
  dispatch thunk of PeopleAnalytics.sendEntityCardLaunched(validContactIdentifier:displayPriorities:location:)();

  (*(v32 + 8))(v13, v31);
  return 0;
}

uint64_t sub_100010480(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static PeopleLogger.viewService.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v8;
    v15 = v14;
    v16 = v4;
    v17 = v2;
    v18 = a1;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v15 = 136315394;
    *(v15 + 4) = sub_1000141EC(0xD000000000000018, 0x800000010001A0D0, aBlock);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v18;
    v2 = v17;
    v4 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s, reason: %lu", v15, 0x16u);
    sub_100004208(v19);

    (*(v9 + 8))(v11, v26);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  sub_10000AA78(0, &qword_1000262F8, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  v22 = v27;
  *(v21 + 16) = v27;
  aBlock[4] = sub_100012410;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010A80;
  aBlock[3] = &unk_1000212C8;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  static DispatchQoS.unspecified.getter();
  v31 = &_swiftEmptyArrayStorage;
  sub_10001254C(&qword_100026300, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000417C(&qword_100026308, &qword_1000174E0);
  sub_100012430();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v4, v2);
  (*(v28 + 8))(v7, v29);
}

uint64_t sub_1000108DC(uint64_t a1)
{
  result = [*(a1 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_hostWindow) _scene];
  if (result)
  {
    v2 = result;
    v4[4] = sub_1000109E0;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_100010A2C;
    v4[3] = &unk_1000212F0;
    v3 = _Block_copy(v4);

    [v2 updateClientSettingsWithTransitionBlock:v3];

    _Block_release(v3);
    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000109E0()
{
  v0 = [objc_allocWithZone(PPLPeopleEntitySceneTransitionContext) init];
  [v0 setShouldDismiss:1];
  return v0;
}

id sub_100010A2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

uint64_t sub_100010A80(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100010B18()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier + 8);
  if (!v8)
  {
    return;
  }

  v51 = v4;
  v9 = *(v0 + OBJC_IVAR____TtC17PeopleViewService17PeopleViewHandler_contactIdentifier);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v52 = v10;
  v12 = v11;
  (v11)(v7, 1, 1);
  v13 = type metadata accessor for MainActor();
  swift_bridgeObjectRetain_n();
  v53 = v13;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v9;
  v15[5] = v8;
  sub_100012D00(0, 0, v7, &unk_1000174A8, v15);

  v50 = v9;
  v16 = dispatch thunk of ContactFetcher.contact(for:includeImages:)();
  if (!v16)
  {

    return;
  }

  v17 = v16;
  v48 = v2;
  v18 = [v16 emailAddresses];
  sub_10000417C(&qword_1000262C8, &qword_1000174B0);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v1;
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {

    v21 = v52;
LABEL_13:
    sub_10000AA78(0, &qword_1000262D0, NSString_ptr);
    v24 = NSString.init(stringLiteral:)();
    goto LABEL_14;
  }

  v21 = v52;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v22 = *(v19 + 32);
  }

  v23 = v22;

  v24 = [v23 value];

  if (!v24)
  {
    goto LABEL_13;
  }

LABEL_14:
  v25 = [v17 phoneNumbers];
  v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:

    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_23;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_16:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:
    __break(1u);
    return;
  }

  v27 = *(v26 + 32);
LABEL_19:
  v28 = v27;

  v29 = [v28 value];

  v30 = [v29 stringValue];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

LABEL_23:
  v12(v7, 1, 1, v21);
  v34 = v24;
  v35 = static MainActor.shared.getter();
  v36 = swift_allocObject();
  v36[2] = v35;
  v36[3] = &protocol witness table for MainActor;
  v36[4] = v34;
  v36[5] = v31;
  v36[6] = v33;
  sub_100012D00(0, 0, v7, &unk_1000174C0, v36);

  v37 = CNContact.callHistoryHandles.getter();
  v38 = v37;
  if (v37 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:

    v12(v7, 1, 1, v21);
    v39 = static MainActor.shared.getter();
    v40 = swift_allocObject();
    v40[2] = v39;
    v40[3] = &protocol witness table for MainActor;
    v40[4] = v38;
    sub_100012D00(0, 0, v7, &unk_1000174D0, v40);

    return;
  }

  v41 = v51;
  static PeopleLogger.viewService.getter();

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = v45;
    *v44 = 136315138;
    v46 = sub_1000141EC(v50, v8, &v54);

    *(v44 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v42, v43, "No call handles for %s", v44, 0xCu);
    sub_100004208(v45);
  }

  else
  {
  }

  (*(v48 + 8))(v41, v49);
}

uint64_t sub_1000111B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v9;
  v5[13] = v8;

  return _swift_task_switch(sub_100011314, v9, v8);
}

uint64_t sub_100011314()
{
  type metadata accessor for LaunchRecorderWriter();
  v0[14] = static LaunchRecorderWriter.sharedInstance.getter();
  sub_10001254C(&qword_1000262F0, &type metadata accessor for LaunchRecorderWriter, &protocol conformance descriptor for LaunchRecorderWriter);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[15] = v2;
  v0[16] = v1;

  return _swift_task_switch(sub_1000113D8, v2, v1);
}

uint64_t sub_1000113D8()
{
  dispatch thunk of LaunchRecorderWriter.reload()();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return _swift_task_switch(sub_10001143C, v1, v2);
}

uint64_t sub_10001143C()
{
  Date.init()();
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return _swift_task_switch(sub_1000114A0, v1, v2);
}

uint64_t sub_1000114A0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  *(v0 + 144) = dispatch thunk of LaunchRecorderWriter.add(contactId:time:)() & 1;
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  return _swift_task_switch(sub_10001153C, v4, v5);
}

uint64_t sub_10001153C()
{
  if (*(v0 + 144) == 1)
  {
    v1 = *(v0 + 120);
    v2 = *(v0 + 128);

    return _swift_task_switch(sub_100011720, v1, v2);
  }

  else
  {

    static PeopleErrors.createError(_:code:)();
    swift_willThrow();
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = *(v0 + 16);
    static PeopleLogger.viewService.getter();
    swift_errorRetain();
    _StringGuts.grow(_:)(33);

    v8._countAndFlagsBits = v7;
    v8._object = v6;
    String.append(_:)(v8);
    v9._countAndFlagsBits = 4203808;
    v9._object = 0xE300000000000000;
    String.append(_:)(v9);
    Logger.ifError(_:message:)();

    (*(v4 + 8))(v3, v5);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100011720()
{
  dispatch thunk of LaunchRecorderWriter.save()();
  v0[17] = 0;
  v1 = v0[12];
  v2 = v0[13];

  return _swift_task_switch(sub_1000117A8, v1, v2);
}

uint64_t sub_1000117A8()
{
  v16 = v0;

  static PeopleLogger.viewService.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v14 = v0[7];
    v4 = v0[4];
    v3 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000141EC(v6, v5, &v15);
    _os_log_impl(&_mh_execute_header, v1, v2, "Recorded launch %s", v7, 0xCu);
    sub_100004208(v8);

    (*(v3 + 8))(v14, v4);
  }

  else
  {
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];

    (*(v11 + 8))(v9, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001197C()
{

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  static PeopleLogger.viewService.getter();
  swift_errorRetain();
  _StringGuts.grow(_:)(33);

  v6._countAndFlagsBits = v5;
  v6._object = v4;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 4203808;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  Logger.ifError(_:message:)();

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100011AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011B80, v8, v7);
}

uint64_t sub_100011B80()
{
  v1 = *(v0 + 16);

  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  [v2 clearUnreadFor:v1 andPhone:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100011C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100011D1C, v7, v6);
}

uint64_t sub_100011D1C()
{

  v1 = [objc_allocWithZone(CHManager) init];
  v2 = objc_opt_self();
  v3 = [v2 predicateForCallsWithStatus:kCHCallStatusMissed];
  sub_10000AA78(0, &qword_1000262D8, CHHandle_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = [v2 predicateForCallsWithAnyRemoteParticipantHandles:isa];

  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100017470;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;
  sub_10000AA78(0, &qword_1000262E8, NSPredicate_ptr);
  v7 = v3;
  v8 = v5;
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [objc_opt_self() andPredicateWithSubpredicates:v9];

  v11 = [v1 setRead:1 forCallsWithPredicate:v10];
  static PeopleLogger.viewService.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "chmanager setRead result %ld", v14, 0xCu);

    v15 = v7;
    v16 = v8;
  }

  else
  {
    v15 = v12;
    v16 = v10;
    v10 = v1;
    v12 = v8;
    v1 = v7;
  }

  v18 = v0[4];
  v17 = v0[5];
  v19 = v0[3];

  (*(v18 + 8))(v17, v19);

  v20 = v0[1];

  return v20();
}

id sub_100011FFC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PeopleViewHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000120D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100012114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000129BC;

  return sub_1000111B8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000121D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001221C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000A8FC;

  return sub_100011AE4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000122E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000129BC;

  return sub_100011C28(a1, v4, v5, v6);
}

uint64_t sub_1000123D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012430()
{
  result = qword_100026310;
  if (!qword_100026310)
  {
    sub_100012494(&qword_100026308, &qword_1000174E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100026310);
  }

  return result;
}

uint64_t sub_100012494(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000124DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001254C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100012594()
{
  v0 = type metadata accessor for PeopleURL.PathAction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000417C(&qword_100026318, &qword_1000174E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10000417C(&qword_100026320, &unk_1000174F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  URLComponents.peopleAction.getter();
  (*(v1 + 104))(v13, enum case for PeopleURL.PathAction.showSearchResult(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000124DC(v15, v6);
  sub_1000124DC(v13, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1000124DC(v6, v10);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_10001254C(&qword_100026328, &type metadata accessor for PeopleURL.PathAction, &protocol conformance descriptor for PeopleURL.PathAction);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_100006EE0(v13, &qword_100026320, &unk_1000174F0);
      sub_100006EE0(v15, &qword_100026320, &unk_1000174F0);
      v20(v10, v0);
      sub_100006EE0(v6, &qword_100026320, &unk_1000174F0);
      return v18 & 1;
    }

    sub_100006EE0(v13, &qword_100026320, &unk_1000174F0);
    sub_100006EE0(v15, &qword_100026320, &unk_1000174F0);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_100006EE0(v13, &qword_100026320, &unk_1000174F0);
  sub_100006EE0(v15, &qword_100026320, &unk_1000174F0);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_100006EE0(v6, &qword_100026318, &qword_1000174E8);
    v18 = 0;
    return v18 & 1;
  }

  sub_100006EE0(v6, &qword_100026320, &unk_1000174F0);
  v18 = 1;
  return v18 & 1;
}

Swift::Int sub_1000129C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000417C(&qword_1000263F0, &qword_100017580);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000AA00(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001526C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001526C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001526C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001526C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100012C8C(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1000041C4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return _swift_continuation_resume(v6);
}

uint64_t sub_100012D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001527C(a3, v25 - v10, &qword_1000262C0, &qword_100017358);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006EE0(v11, &qword_1000262C0, &qword_100017358);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100006EE0(a3, &qword_1000262C0, &qword_100017358);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006EE0(a3, &qword_1000262C0, &qword_100017358);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100013000(char *a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  v112 = a3;
  v113 = a4;
  v6 = type metadata accessor for CocoaError.Code();
  __chkstk_darwin(v6 - 8);
  v105 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CocoaError();
  v106 = *(v8 - 8);
  __chkstk_darwin(v8);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v109 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000417C(&qword_100025F80, &unk_100017348);
  __chkstk_darwin(v12 - 8);
  v110 = (&v94 - v13);
  v14 = type metadata accessor for HandleType();
  v100 = *(v14 - 8);
  v101 = v14;
  __chkstk_darwin(v14);
  v99 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000417C(&qword_100025D00, &qword_100017220);
  v17 = __chkstk_darwin(v16 - 8);
  v98 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v94 - v20;
  __chkstk_darwin(v19);
  v108 = &v94 - v22;
  v23 = sub_10000417C(&qword_1000262C0, &qword_100017358);
  __chkstk_darwin(v23 - 8);
  v107 = &v94 - v24;
  v25 = sub_10000417C(&qword_1000259F8, &unk_100017090);
  __chkstk_darwin(v25 - 8);
  v27 = &v94 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v32 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v94 - v33;
  if (QuickAction.useStandardProtocol.getter())
  {
    v97 = v21;
    QuickAction.standardProtocolURL.getter();
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      v110 = *(v29 + 32);
      v110(v34, v27, v28);
      v45 = type metadata accessor for TaskPriority();
      v46 = v107;
      (*(*(v45 - 8) + 56))(v107, 1, 1, v45);
      (*(v29 + 16))(v32, v34, v28);
      v47 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v48 = swift_allocObject();
      *(v48 + 2) = 0;
      *(v48 + 3) = 0;
      v49 = v110;
      *(v48 + 4) = v111;
      v49(&v48[v47], v32, v28);
      v50 = &v48[(v30 + v47 + 7) & 0xFFFFFFFFFFFFFFF8];
      v51 = v113;
      *v50 = v112;
      v50[1] = v51;

      sub_100012D00(0, 0, v46, &unk_100017548, v48);

      (*(v29 + 8))(v34, v28);
      return;
    }

    sub_100006EE0(v27, &qword_1000259F8, &unk_100017090);
    v21 = v97;
  }

  QuickAction.handle.getter();
  if (v35)
  {
    goto LABEL_5;
  }

  v97 = a1;
  v107 = a2;
  v41 = v108;
  sub_10001527C(a2, v108, &qword_100025D00, &qword_100017220);
  v42 = type metadata accessor for Person();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v41, 1, v42) == 1)
  {
    sub_100006EE0(v41, &qword_100025D00, &qword_100017220);
LABEL_18:
    v111 = v8;
    v78 = v109;
    static PeopleLogger.common.getter();
    sub_10001527C(v107, v21, &qword_100025D00, &qword_100017220);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v21;
      v84 = v82;
      v114 = v82;
      *v81 = 136315138;
      v97 = v83;
      v85 = v98;
      sub_10001527C(v83, v98, &qword_100025D00, &qword_100017220);
      if (v44(v85, 1, v42) == 1)
      {
        sub_100006EE0(v85, &qword_100025D00, &qword_100017220);
        v86 = 0;
        v87 = 0xE000000000000000;
      }

      else
      {
        v88 = v85;
        v86 = Person.description.getter();
        v87 = v89;
        (*(v43 + 8))(v88, v42);
      }

      sub_100006EE0(v97, &qword_100025D00, &qword_100017220);
      v90 = sub_1000141EC(v86, v87, &v114);

      *(v81 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v79, v80, "Could not find handle for person %s", v81, 0xCu);
      sub_100004208(v84);

      (*(v102 + 8))(v109, v103);
    }

    else
    {

      sub_100006EE0(v21, &qword_100025D00, &qword_100017220);
      (*(v102 + 8))(v78, v103);
    }

    static CocoaError.Code.coderInvalidValue.getter();
    sub_100014AD8(&_swiftEmptyArrayStorage);
    sub_100014DF8(&qword_1000263E8, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v91 = v104;
    v92 = v111;
    _BridgedStoredNSError.init(_:userInfo:)();
    v93 = CocoaError._nsError.getter();
    (*(v106 + 8))(v91, v92);
    v112(v93);

    return;
  }

  v95 = v44;
  v96 = v42;
  v71 = v100;
  v70 = v101;
  v72 = v43;
  v73 = v99;
  (*(v100 + 104))(v99, enum case for HandleType.phoneNumber(_:), v101);
  v74 = v41;
  Person.preferredHandle(ofType:)();
  v76 = v75;
  v77 = v73;
  v43 = v72;
  v42 = v96;
  (*(v71 + 8))(v77, v70);
  v44 = v95;
  (*(v43 + 8))(v74, v42);
  if (!v76)
  {
    goto LABEL_18;
  }

LABEL_5:
  v36 = objc_allocWithZone(CNPhoneNumber);
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 initWithStringValue:v37];

  v39 = v110;
  if (v38)
  {

    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  v52 = objc_allocWithZone(INPersonHandle);
  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 initWithValue:v53 type:v40];

  v55 = type metadata accessor for PersonNameComponents();
  v56 = *(v55 - 8);
  (*(v56 + 56))(v39, 1, 1, v55);
  QuickAction.contactIdentifier.getter();
  QuickAction.customIdentifier.getter();
  v58 = v57;
  isa = 0;
  if ((*(v56 + 48))(v39, 1, v55) != 1)
  {
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    (*(v56 + 8))(v39, v55);
  }

  v60 = String._bridgeToObjectiveC()();

  if (v58)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  v62 = [objc_allocWithZone(INPerson) initWithPersonHandle:v54 nameComponents:isa displayName:0 image:0 contactIdentifier:v60 customIdentifier:v61];

  sub_10000417C(&qword_1000262E0, &qword_100017460);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1000172A0;
  *(v63 + 32) = v62;
  v64 = objc_allocWithZone(INSendMessageIntent);
  sub_100014E40();
  v65 = v62;
  v66 = Array._bridgeToObjectiveC()().super.isa;

  v67 = [v64 initWithRecipients:v66 outgoingMessageType:1 content:0 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v68 = QuickAction.bundleID.getter();
  sub_10000529C(v67, v68, v69, v112, v113);
}

uint64_t sub_100013C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100013CA4, 0, 0);
}

uint64_t sub_100013CA4()
{
  v1 = v0[30];
  sub_10000417C(&qword_100025F88, &unk_100017370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000172B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v4 = sub_100014AD8(inited);
  swift_setDeallocating();
  sub_100006EE0(inited + 32, &qword_100025F90, &unk_100017570);
  v5 = *(v1 + 24);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v0[34] = v7;
  sub_1000129C4(v4);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000095A0;
  v10 = swift_continuation_init();
  v0[27] = sub_10000417C(&qword_100025F98, &unk_100017380);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100012C8C;
  v0[23] = &unk_1000213A8;
  v0[24] = v10;
  [v5 openSensitiveURLInBackground:v8 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100013EB8()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100013F44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001403C;

  return v6(a1);
}

uint64_t sub_10001403C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100014134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000141EC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000142B8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000AA00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004208(v11);
  return v7;
}

unint64_t sub_1000142B8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000143C4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000143C4(uint64_t a1, unint64_t a2)
{
  v3 = sub_100014410(a1, a2);
  sub_100014540(&off_100020FC8);
  return v3;
}

char *sub_100014410(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10001462C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001462C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100014540(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000146A0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10001462C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000417C(&qword_100026400, &qword_100017590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000146A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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
    sub_10000417C(&qword_100026400, &qword_100017590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100014794(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000148AC(a1, v2);
}

uint64_t sub_100014828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v5 = Hasher._finalize()();

  return a3(a1, a2, v5);
}

unint64_t sub_1000148AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

unint64_t sub_1000149B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000417C(&qword_100026408, &qword_100017598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001527C(v4, &v11, &qword_100026410, &unk_1000175A0);
      v5 = v11;
      result = sub_100014794(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001526C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_100014AD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000417C(&qword_1000263F8, &qword_100017588);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001527C(v4, &v13, &qword_100025F90, &unk_100017570);
      v5 = v13;
      v6 = v14;
      result = sub_100014828(v13, v14, sub_100014134);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10001526C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100014C1C()
{
  v0 = type metadata accessor for QuickActionType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  QuickAction.type.getter();
  (*(v1 + 104))(v4, enum case for QuickActionType.message(_:), v0);
  sub_100014DF8(&qword_1000259F0, &type metadata accessor for QuickActionType, &protocol conformance descriptor for QuickActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_100014DF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014E40()
{
  result = qword_100025FA0;
  if (!qword_100025FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100025FA0);
  }

  return result;
}

uint64_t sub_100014E8C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100014F70(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000A8FC;

  return sub_100013C80(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000150AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000150E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000129BC;

  return sub_100013F44(a1, v4);
}

uint64_t sub_10001519C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A8FC;

  return sub_100013F44(a1, v4);
}

_OWORD *sub_10001526C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10001527C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000417C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t URLComponents.subscript.getter()
{
  return URLComponents.subscript.getter();
}

{
  return URLComponents.subscript.getter();
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall String.trimToNil()()
{
  v0 = String.trimToNil()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}