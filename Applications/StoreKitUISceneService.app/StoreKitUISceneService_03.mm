uint64_t sub_100052CF0()
{
  sub_10001D674();
  v1 = *(v0 + 368);
  swift_willThrow();
  swift_unknownObjectRelease();

  sub_100019370();

  return v2();
}

uint64_t sub_100052DA0()
{
  sub_100013A88();
  v1 = *(v0 + 56);
  v2 = AMSAccountMediaTypeProduction;
  *(v0 + 16) = AMSAccountMediaTypeProduction;
  switch(v1)
  {
    case 1:
      v6 = v2;
      v7 = swift_task_alloc();
      *(v0 + 24) = v7;
      *v7 = v0;
      v7[1] = sub_100052EB4;

      result = sub_10003AE00(0);
      break;
    case 2:
      goto LABEL_3;
    default:
      v2 = AMSAccountMediaTypeAppStoreSandbox;
LABEL_3:
      v3 = v2;
      sub_10004AC54();

      result = v4();
      break;
  }

  return result;
}

uint64_t sub_100052EB4()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100052F9C()
{
  sub_100013A88();
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];

    v3 = AMSAccountMediaTypeAppStoreBeta;
    sub_10004AC54();

    return v4(v3);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_100053080;

    return sub_10003AE00(1);
  }
}

uint64_t sub_100053080()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100053168()
{
  sub_100013A88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  if (v1)
  {

    v3 = &AMSAccountMediaTypeAppStoreSandbox;
  }

  else
  {
    v3 = &AMSAccountMediaTypeAppStoreBeta;
  }

  v4 = *v3;

  sub_10004AC54();

  return v5(v4);
}

void *sub_1000531F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  result = sub_100012980((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v7 = a4;

    return sub_100013908();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_10000C4E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100053288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v5 = sub_100012634(&qword_1000D2800, qword_100099E20);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44._countAndFlagsBits = 0x6C646E7542707061;
  v44._object = 0xEB00000000444965;
  AnyHashable.init<A>(_:)();
  v12 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID);
  v13 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleID + 8);
  v45 = &type metadata for String;
  v44._countAndFlagsBits = v12;
  v44._object = v13;
  sub_100012AD4(&v44, v43);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47._countAndFlagsBits = _swiftEmptyDictionarySingleton;
  sub_100048B74(v43, v46, isUniquelyReferenced_nonNull_native);
  countAndFlagsBits = v47._countAndFlagsBits;
  sub_10001CAD0(v46);
  v44._countAndFlagsBits = 0xD000000000000010;
  v44._object = 0x80000001000A0C00;
  AnyHashable.init<A>(_:)();
  v16 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion);
  v17 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_requestBundleVersion + 8);
  v45 = &type metadata for String;
  v44._countAndFlagsBits = v16;
  v44._object = v17;
  sub_100012AD4(&v44, v43);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v47._countAndFlagsBits = countAndFlagsBits;
  sub_100048B74(v43, v46, v18);
  v19 = v47._countAndFlagsBits;
  sub_10001CAD0(v46);
  v20 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeExternalVersionID);
  if (v20)
  {
    strcpy(&v44, "appExternalID");
    HIWORD(v44._object) = -4864;
    AnyHashable.init<A>(_:)();
    v45 = &type metadata for UInt64;
    v44._countAndFlagsBits = v20;
    sub_100012AD4(&v44, v43);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v47._countAndFlagsBits = v19;
    sub_100048B74(v43, v46, v21);
    v19 = v47._countAndFlagsBits;
    sub_10001CAD0(v46);
  }

  v22 = *(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_storeItemID);
  if (v22)
  {
    v44._countAndFlagsBits = 0x496D616441707061;
    v44._object = 0xE900000000000044;
    AnyHashable.init<A>(_:)();
    v45 = &type metadata for UInt64;
    v44._countAndFlagsBits = v22;
    sub_100012AD4(&v44, v43);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v47._countAndFlagsBits = v19;
    sub_100048B74(v43, v46, v23);
    v19 = v47._countAndFlagsBits;
    sub_10001CAD0(v46);
  }

  v24 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v44._countAndFlagsBits = 0xD000000000000013;
    v44._object = 0x80000001000A0C20;
  }

  else
  {
    v44._countAndFlagsBits = 0x49746375646F7270;
    v44._object = 0xEA00000000007344;
  }

  AnyHashable.init<A>(_:)();
  v44._countAndFlagsBits = v24;
  sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
  sub_100053F60();
  v25 = BidirectionalCollection<>.joined(separator:)();
  v45 = &type metadata for String;
  v44._countAndFlagsBits = v25;
  v44._object = v26;
  sub_100012AD4(&v44, v43);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v47._countAndFlagsBits = v19;
  sub_100048B74(v43, v46, v27);
  v28 = v47._countAndFlagsBits;
  sub_10001CAD0(v46);
  sub_100053C28(a2 + OBJC_IVAR____TtC22StoreKitUISceneService6Client_deviceVendorID, v7, &qword_1000D2800, qword_100099E20);
  if (sub_100012898(v7, 1, v8) == 1)
  {
    sub_100049EA0(v7, &qword_1000D2800, qword_100099E20);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v44._countAndFlagsBits = 0x4449726F646E6576;
    v44._object = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    UUID.uuidString.getter();
    v29 = String.lowercased()();

    v45 = &type metadata for String;
    v44 = v29;
    sub_100012AD4(&v44, v43);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v47._countAndFlagsBits = v28;
    sub_100048B74(v43, v46, v30);
    v28 = v47._countAndFlagsBits;
    sub_10001CAD0(v46);
    (*(v9 + 8))(v11, v8);
  }

  v44._countAndFlagsBits = 7761509;
  v44._object = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  v31 = 0xE500000000000000;
  v32 = 0x65646F6378;
  switch(v41)
  {
    case 1:
      v31 = 0xEA00000000007468;
      v32 = 0x67696C6674736574;
      break;
    case 2:
      v32 = 0x69746375646F7270;
      v31 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v31 = 0xE700000000000000;
      v32 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  v45 = &type metadata for String;
  v44._countAndFlagsBits = v32;
  v44._object = v31;
  sub_100012AD4(&v44, v43);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v47._countAndFlagsBits = v28;
  sub_100048B74(v43, v46, v33);
  v34 = v47._countAndFlagsBits;
  sub_10001CAD0(v46);
  v44._countAndFlagsBits = 0x747865746E6F63;
  v44._object = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v45 = &type metadata for String;
  v44._countAndFlagsBits = 0x7070616E69;
  v44._object = 0xE500000000000000;
  sub_100012AD4(&v44, v43);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v47._countAndFlagsBits = v34;
  sub_100048B74(v43, v46, v35);
  v36 = v47._countAndFlagsBits;
  sub_10001CAD0(v46);
  v44._countAndFlagsBits = 0x79654B676F6CLL;
  v44._object = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v47 = *a1;
  v45 = &type metadata for String;
  v44 = v47;
  sub_100012AD4(&v44, v43);
  sub_100053FC4(&v47, &v42);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v36;
  sub_100048B74(v43, v46, v37);
  v38 = v42;
  sub_10001CAD0(v46);
  return v38;
}

uint64_t sub_100053A04(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100053A98;

  return sub_100052D80(a1);
}

uint64_t sub_100053A98()
{
  sub_100013A88();
  sub_10001937C();
  sub_10004A7A8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 24) = v3;

  v4 = sub_10004AD24();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100053B80()
{
  sub_10001D674();
  v1 = *(v0 + 24);
  v2 = [objc_opt_self() ams_sharedAccountStoreForMediaType:v1];
  v3 = [v2 ams_activeiTunesAccount];

  sub_10004AC54();

  return v4(v3);
}

uint64_t sub_100053C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100012634(a3, a4);
  sub_100019360();
  v5 = sub_10002FD24();
  v6(v5);
  return a2;
}

uint64_t sub_100053C84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  v4 = sub_10002FD24();
  v5(v4);
  return a2;
}

uint64_t sub_100053CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100053D5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  v4 = sub_10002FD24();
  v5(v4);
  return a2;
}

void sub_100053DB8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setLogKey:v4];
}

void sub_100053E1C(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setClientData:isa];
}

uint64_t sub_100053E9C(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100053F08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100019360();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_100053F60()
{
  result = qword_1000D3410;
  if (!qword_1000D3410)
  {
    sub_10001CEC4(&qword_1000D1D00, &qword_10009B1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3410);
  }

  return result;
}

uint64_t sub_1000540DC(uint64_t a1)
{

  return TaskLocal.get()();
}

uint64_t sub_100054134()
{
}

void sub_100054178(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100054198(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000541B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000541D8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000541F8(uint64_t a1)
{

  return swift_once();
}

void sub_100054218(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_100054280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_1000847A8(v14, v15, &a11);
}

uint64_t sub_10005429C()
{

  return swift_task_alloc();
}

void sub_1000542D0()
{

  _StringGuts.grow(_:)(33);
}

void sub_1000542F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100054310(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100054330(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_100054350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return sub_1000847A8(a1, v7, va);
}

BOOL sub_100054368()
{

  return os_log_type_enabled(v0, v1);
}

void *sub_100054380(uint64_t a1)
{
  v5 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v5];
  v2 = v5;
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = v2;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v3;
}

id sub_10005445C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22StoreKitUISceneService32StoreKitAngelHostedSceneDelegate_windowReferences] = _swiftEmptyArrayStorage;
  Logger.init(subsystem:category:)();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  strcpy(v13, "Initializing ");
  HIWORD(v13[1]) = -4864;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v6 = v13[0];
  v5 = v13[1];
  v7 = static os_log_type_t.default.getter();

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v9 = 136446466;
    *(v9 + 4) = sub_1000847A8(0, 0xE000000000000000, v13);
    *(v9 + 12) = 2082;
    v10 = sub_1000847A8(v6, v5, v13);

    *(v9 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t type metadata accessor for StoreKitAngelHostedSceneDelegate(uint64_t a1)
{
  result = qword_1000D3450;
  if (!qword_1000D3450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005477C(uint64_t a1)
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

id sub_100054820(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100012634(&qword_1000D35F8, qword_1000978D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &ObjectType - v5;
  v7 = sub_100012634(&qword_1000D2FC8, &unk_100096950);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - v9;
  v11 = sub_100012634(&qword_1000D2FA8, &qword_100096938);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &ObjectType - v15;
  v21 = a1;
  sub_100057F28(a1, v1 + qword_1000E4528);
  v17 = sub_100012634(&qword_1000D2FB0, &qword_100096940);
  sub_10001267C(v16, 1, 1, v17);
  v22 = v16;
  (*(v4 + 104))(v6, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
  (*(v8 + 32))(v1 + qword_1000D2EA0, v10, v7);
  sub_100058EDC(v16, v14, &qword_1000D2FA8, &qword_100096938);
  result = sub_100012898(v14, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v17 - 8) + 32))(v1 + qword_1000D2EA8, v14, v17);
    sub_100012CB4(v16, &qword_1000D2FA8, &qword_100096938);
    v23.receiver = v1;
    v23.super_class = ObjectType;
    v19 = objc_msgSendSuper2(&v23, "init");
    sub_100039E04(v21);
    return v19;
  }

  return result;
}

uint64_t sub_100054B5C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_100012634(&qword_1000D3588, &qword_100097828);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_100012634(&qword_1000D2FC8, &unk_100096950);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_100012634(&qword_1000D3590, &qword_100097830);
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100054D08, 0, 0);
}

uint64_t sub_100054D08()
{
  v1 = v0[16];
  v2 = v0[14];
  v13 = v0[13];
  v14 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  sub_1000552E4();
  (*(v3 + 16))(v4, v6 + qword_1000D2EA0, v5);
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v7;
  v10 = v6;

  sub_100012634(&qword_1000D3598, &qword_100097848);
  sub_1000586CC(&qword_1000D35A0, &qword_1000D2FC8, &unk_100096950, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  sub_1000586CC(&qword_1000D35A8, &qword_1000D3598, &qword_100097848, &protocol conformance descriptor for AsyncStream<A>);
  AsyncFlatMapSequence.init(_:transform:)();
  (*(v2 + 16))(v14, v1, v13);
  sub_1000586CC(&qword_1000D35B0, &qword_1000D3590, &qword_100097830, &protocol conformance descriptor for AsyncFlatMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[17] = _swiftEmptyArrayStorage;
  sub_100058F78(&qword_1000D35B8, &qword_1000D3588, &qword_100097828);
  v11 = swift_task_alloc();
  v0[18] = v11;
  *v11 = v0;
  sub_100058F50(v11);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
}

uint64_t sub_100054F5C()
{
  sub_100013A88();
  sub_10001937C();
  v3 = v2;
  sub_1000540C0();
  *v4 = v3;
  v5 = *v1;
  sub_100019340();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
  }

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10005507C()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v0[17];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1000583E8(0, *(v4 + 2) + 1, 1, v4);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1000583E8((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v2;
    *(v7 + 5) = v1;
    v0[17] = v4;
    sub_100058F78(&qword_1000D35B8, &qword_1000D3588, &qword_100097828);
    v8 = swift_task_alloc();
    v0[18] = v8;
    *v8 = v0;
    sub_100058F50(v8);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2);
  }

  else
  {
    v9 = v0[16];
    v10 = v0[13];
    v11 = v0[14];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v11 + 8))(v9, v10);

    v12 = v0[1];
    v13 = v0[17];

    return v12(v13);
  }
}

uint64_t sub_100055244()
{
  sub_10001D674();
  (*(v0[14] + 8))(v0[16], v0[13]);

  sub_100019370();

  return v1();
}

uint64_t sub_1000552E4()
{
  v1 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_10001267C(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_10006BA84(0, 0, v3, &unk_1000978C8, v5);
}

uint64_t sub_1000553C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1000553F0, 0, 0);
}

uint64_t sub_1000553F0()
{
  sub_100013A88();
  sub_100055454(v0[3], v0[4], v0[5], v0[7], v0[8]);
  sub_100019370();

  return v1();
}

uint64_t sub_100055454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100012634(&qword_1000D35C8, &qword_100097860);
  __chkstk_darwin(v11);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = v5;
  v20 = a4;
  v21 = a5;
  (*(v13 + 104))(&v15[-v12], enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:));
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_100055584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v26 = a6;
  v12 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - v17;
  v19 = type metadata accessor for TaskPriority();
  sub_10001267C(v18, 1, 1, v19);
  (*(v13 + 16))(v15, a1, v12);
  v20 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v26;
  *(v21 + 4) = v25;
  *(v21 + 5) = a3;
  *(v21 + 6) = a4;
  *(v21 + 7) = a5;
  *(v21 + 8) = v22;
  *(v21 + 9) = a7;
  (*(v13 + 32))(&v21[v20], v15, v12);

  v23 = a5;

  sub_10006BA84(0, 0, v18, &unk_100097878, v21);
}

uint64_t sub_100055788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v10;
  v8[9] = v11;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1000557BC, 0, 0);
}

uint64_t sub_1000557BC()
{
  sub_10001D674();
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v5;
  *(v4 + 48) = v6;
  *(v4 + 64) = v1;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_1000558C0;
  v8 = *(v0 + 16);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_100097888, v4, &type metadata for () + 8);
}

uint64_t sub_1000558C0()
{
  sub_100013A88();
  sub_10001937C();
  v1 = *v0;
  sub_100019340();
  *v2 = v1;

  sub_100019370();

  return v3();
}

uint64_t sub_1000559BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a2;
  v8[11] = a5;
  v9 = sub_100012634(&qword_1000D35D0, &qword_100097868);
  v8[16] = v9;
  v10 = *(v9 - 8);
  v8[17] = v10;
  v8[18] = *(v10 + 64);
  v8[19] = swift_task_alloc();
  sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_100055AE4, 0, 0);
}

uint64_t sub_100055AE4()
{
  v56 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  _StringGuts.grow(_:)(31);

  v54 = 0x20676E6973726150;
  v55 = 0xE800000000000000;
  v4 = *(v1 + 16);
  *(v0 + 72) = v4;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._object = 0x80000001000A0CE0;
  v6._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v6);
  v7 = v55;
  v8 = qword_1000E4528;
  v9 = (v2 + *(type metadata accessor for ProductRequest(0) + 36) + v8);
  v10 = *v9;
  v11 = v9[1];
  v12 = static os_log_type_t.default.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v51 = v54;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136446466;
    v53 = v15;
    v54 = 91;
    v55 = 0xE100000000000000;
    v16._countAndFlagsBits = v10;
    v16._object = v11;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_1000847A8(91, 0xE100000000000000, &v53);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_1000847A8(v51, v7, &v53);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v15);
    sub_100039E94(v14);
  }

  else
  {
  }

  if (v4)
  {
    v20 = (*(v0 + 88) + 32);
    v44 = **(v0 + 80);
    v45 = *(v0 + 136);
    v43 = *(v0 + 144) + 7;
    v21 = type metadata accessor for TaskPriority();
    do
    {
      v52 = v4;
      v22 = *(v0 + 152);
      v24 = *(v0 + 120);
      v23 = *(v0 + 128);
      v25 = *(v0 + 104);
      v46 = *(v0 + 112);
      v47 = *(v0 + 168);
      v48 = *(v0 + 96);
      v49 = *(v0 + 160);
      v50 = v20;
      v26 = *v20;
      sub_10001267C(v47, 1, 1, v21);
      (*(v45 + 16))(v22, v24, v23);
      v27 = v21;
      v28 = (*(v45 + 80) + 56) & ~*(v45 + 80);
      v29 = (v43 + v28) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v30[4] = v25;
      v30[5] = v46;
      v30[6] = v26;
      v31 = v30 + v28;
      v21 = v27;
      (*(v45 + 32))(v31, v22, v23);
      *(v30 + v29) = v48;
      sub_100058EDC(v47, v49, &unk_1000D3EC0, &qword_100093590);
      LODWORD(v26) = sub_100012898(v49, 1, v27);

      v32 = v48;

      v33 = *(v0 + 160);
      if (v26 == 1)
      {
        sub_100012CB4(*(v0 + 160), &unk_1000D3EC0, &qword_100093590);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v27 - 8) + 8))(v33, v27);
      }

      if (v30[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v34 = dispatch thunk of Actor.unownedExecutor.getter();
        v36 = v35;
        swift_unknownObjectRelease();
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v37 = swift_allocObject();
      *(v37 + 16) = &unk_1000978A0;
      *(v37 + 24) = v30;
      v38 = v36 | v34;
      if (v36 | v34)
      {
        v38 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v34;
        *(v0 + 40) = v36;
      }

      v39 = *(v0 + 168);
      *(v0 + 48) = 1;
      *(v0 + 56) = v38;
      *(v0 + 64) = v44;
      swift_task_create();

      sub_100012CB4(v39, &unk_1000D3EC0, &qword_100093590);
      v20 = v50 + 1;
      v4 = v52 - 1;
    }

    while (v52 != 1);
  }

  v40 = swift_task_alloc();
  *(v0 + 176) = v40;
  v41 = sub_100012634(&qword_1000D35D8, &qword_1000978B0);
  *v40 = v0;
  v40[1] = sub_1000560D4;

  return TaskGroup.awaitAllRemainingTasks(isolation:)(0, 0, v41);
}

uint64_t sub_1000560D4()
{
  sub_100013A88();
  sub_10001937C();
  v1 = *v0;
  sub_100019340();
  *v2 = v1;

  sub_1000193B4();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000561BC()
{
  sub_10001D674();
  AsyncStream.Continuation.finish()();

  sub_100019370();

  return v0();
}

uint64_t sub_10005623C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v11 = sub_100012634(&qword_1000D35E0, &qword_1000978B8);
  v8[11] = v11;
  v8[12] = *(v11 - 8);
  v8[13] = swift_task_alloc();
  v14 = a4 + *a4;
  v12 = swift_task_alloc();
  v8[14] = v12;
  *v12 = v8;
  v12[1] = sub_1000563AC;

  return (v14)(v8 + 2, a6);
}

uint64_t sub_1000563AC()
{
  sub_100013A88();
  sub_10001937C();
  sub_1000540C0();
  *v3 = v2;
  v4 = *v1;
  sub_100019340();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_1000193B4();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000564A8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[3];
  v0[6] = v0[2];
  v0[7] = v4;

  sub_100012634(&qword_1000D35D0, &qword_100097868);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  sub_100019370();

  return v5();
}

uint64_t sub_10005657C()
{
  v25 = v0;
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v1 = v0[15];
  v2 = v0[10];
  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v4._object = 0x80000001000A0D00;
  v4._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v4);
  v0[8] = v1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[4];
  v5 = v0[5];
  v7 = qword_1000E4528;
  v8 = (v2 + *(type metadata accessor for ProductRequest(0) + 36) + v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = static os_log_type_t.error.getter();

  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v11))
  {
    v21 = v6;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446466;
    v22 = v14;
    v23 = 91;
    v24 = 0xE100000000000000;
    v15._countAndFlagsBits = v10;
    v15._object = v9;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_1000847A8(91, 0xE100000000000000, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = sub_1000847A8(v21, v5, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v14);
    sub_100039E94(v13);
  }

  else
  {
  }

  sub_100019370();

  return v19();
}

uint64_t sub_100056850()
{
  sub_100013A88();
  v1 = v0[11];
  v0[2] = v0;
  v0[3] = sub_1000568E4;
  v2 = swift_continuation_init();
  sub_100056AB8(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000568E4()
{
  sub_10001D674();
  sub_10001937C();
  sub_1000540C0();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 48);
  *(v1 + 96) = v5;
  if (v5)
  {
    swift_willThrow();
    sub_1000193B4();

    return _swift_task_switch(v6, v7, v8);
  }

  else
  {
    v9 = *(v3 + 8);

    return v9();
  }
}

uint64_t sub_100056A18()
{
  sub_10001D674();
  *(v0 + 80) = *(v0 + 96);
  swift_errorRetain();
  sub_100012634(&qword_1000D2FB0, &qword_100096940);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  sub_100019370();

  return v1();
}

uint64_t sub_100056AB8(uint64_t a1, char *a2)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v4, qword_1000E4560);
  v5 = &a2[qword_1000E4528];
  v6 = type metadata accessor for ProductRequest(0);
  v7 = v5;
  v8 = &v5[*(v6 + 36)];
  v9 = v8[1];
  v47 = *v8;
  v48 = v6;
  v10 = static os_log_type_t.default.getter();

  v11 = Logger.logObject.getter();

  v46 = v9;
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v12 = 136446466;
    aBlock = 91;
    v52 = 0xE100000000000000;
    v13._countAndFlagsBits = v47;
    v13._object = v9;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = a1;
    v16 = sub_1000847A8(91, 0xE100000000000000, &v49);

    *(v12 + 4) = v16;
    a1 = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_1000847A8(0xD000000000000018, 0x80000001000A0D20, &v49);
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a1;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = [v18 defaultBroker];
  v55 = sub_100058E00;
  v56 = v17;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100018464;
  v54 = &unk_1000C0BE0;
  v21 = _Block_copy(&aBlock);

  v22 = [v20 productServiceWithErrorHandler:v21];
  _Block_release(v21);

  if (v22)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_100058E20();
    v35 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v37 = v36;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v39 = swift_allocObject();
    *(v39 + 16) = v19;
    *(v39 + 24) = a1;
    v55 = sub_100058E78;
    v56 = v39;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100057B64;
    v54 = &unk_1000C0C30;
    v40 = _Block_copy(&aBlock);
    v41 = v19;

    [v22 productsWithRequest:isa responseReceiver:v41 reply:v40];

    _Block_release(v40);
    swift_unknownObjectRelease();

    return sub_100018DF0(v35, v37);
  }

  else
  {
    aBlock = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v23._countAndFlagsBits = 0xD000000000000034;
    v23._object = 0x80000001000A0D40;
    String.append(_:)(v23);
    v24 = &v7[*(v48 + 20)];
    v25 = *v24;
    LOBYTE(v24) = v24[8];
    v49 = v25;
    v50 = v24;
    _print_unlocked<A, B>(_:_:)();
    v26 = aBlock;
    v27 = v52;
    v28 = static os_log_type_t.error.getter();

    v29 = Logger.logObject.getter();

    if (os_log_type_enabled(v29, v28))
    {
      v30 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v30 = 136446466;
      aBlock = 91;
      v52 = 0xE100000000000000;
      v31._countAndFlagsBits = v47;
      v31._object = v46;
      String.append(_:)(v31);
      v32._countAndFlagsBits = 8285;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v33 = sub_1000847A8(aBlock, v52, &v49);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = sub_1000847A8(v26, v27, &v49);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100018F34();
    v43 = swift_allocError();
    *v44 = 10;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    swift_allocError();
    *v45 = v43;
    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100057394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v5, qword_1000E4560);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v6._object = 0x80000001000A0DF0;
  v6._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v6);
  v7 = a2 + qword_1000E4528;
  v8 = type metadata accessor for ProductRequest(0);
  v23 = *(v7 + *(v8 + 20) + 8);
  _print_unlocked<A, B>(_:_:)();
  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v22 = a1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v7 + *(v8 + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = static os_log_type_t.error.getter();

  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v15 = 136446466;
    v24 = 91;
    v25 = 0xE100000000000000;
    v16._countAndFlagsBits = v11;
    v16._object = v12;
    String.append(_:)(v16);
    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = sub_1000847A8(91, 0xE100000000000000, &v22);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = sub_1000847A8(0, 0xE000000000000000, &v22);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  swift_allocError();
  *v20 = a1;
  swift_errorRetain();
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1000576B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v6, qword_1000E4560);
    _StringGuts.grow(_:)(38);
    v7._countAndFlagsBits = 0xD000000000000024;
    v7._object = 0x80000001000A0DC0;
    String.append(_:)(v7);
    v34 = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v8 = qword_1000E4528;
    v9 = (a2 + *(type metadata accessor for ProductRequest(0) + 36) + v8);
    v10 = *v9;
    v11 = v9[1];
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v34 = v15;
      v16._countAndFlagsBits = v10;
      v16._object = v11;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_1000847A8(91, 0xE100000000000000, &v34);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      v19 = sub_1000847A8(0, 0xE000000000000000, &v34);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    swift_allocError();
    *v32 = a1;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v20, qword_1000E4560);
    v21 = qword_1000E4528;
    v22 = (a2 + *(type metadata accessor for ProductRequest(0) + 36) + v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = static os_log_type_t.default.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 136446466;
      v34 = v28;
      v29._countAndFlagsBits = v23;
      v29._object = v24;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 8285;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);
      v31 = sub_1000847A8(91, 0xE100000000000000, &v34);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_1000847A8(0xD000000000000018, 0x80000001000A0DA0, &v34);
      _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
    }

    return _swift_continuation_throwingResume(a3);
  }
}

void sub_100057B64(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100057BD0()
{
  sub_100013A88();
  *(v0 + 16) = v1;
  type metadata accessor for ProductRequest(0);
  *(v0 + 24) = swift_task_alloc();
  sub_1000193B4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100057C58()
{
  sub_100013A88();
  v1 = v0[3];
  sub_100057F28(v0[2], v1);
  v2 = objc_allocWithZone(sub_100012634(&qword_1000D3580, &qword_100097810));
  v0[4] = sub_100054820(v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100057D48;

  return sub_100054B5C(&unk_100097818, 0);
}

uint64_t sub_100057D48()
{
  sub_10001D674();
  v3 = v2;
  sub_10001937C();
  v5 = v4;
  sub_1000540C0();
  *v6 = v5;
  v7 = *v1;
  sub_100019340();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  sub_1000193B4();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100057E58()
{
  sub_100013A88();

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_100057EC4()
{
  sub_100013A88();

  sub_100019370();

  return v1();
}

uint64_t sub_100057F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100057F8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return _swift_task_switch(sub_10005801C, 0, 0);
}

uint64_t sub_10005801C()
{
  v1 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 16) = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:v0 + 16];

  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100058E80();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v9 = *(v0 + 32);
    sub_100018DF0(v5, v7);

    v10 = *(v0 + 24);
    *v9 = *(v0 + 16);
    v9[1] = v10;
  }

  else
  {
    v8 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100019370();

  return v11();
}

uint64_t sub_10005820C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100058304;

  return v6(a1);
}

uint64_t sub_100058304()
{
  sub_100013A88();
  sub_10001937C();
  v1 = *v0;
  sub_100019340();
  *v2 = v1;

  sub_100019370();

  return v3();
}

char *sub_1000583E8(char *result, int64_t a2, char a3, char *a4)
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
      sub_100012634(&qword_1000D35C0, &qword_100097850);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_100077738(a4 + 32, v8, v10 + 32);
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

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000584E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_10001D270;

  return sub_1000553C4(a1, v10, v11, v12, a3, a4, a5);
}

uint64_t sub_1000585C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058604(uint64_t a1, uint64_t *a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  v9 = sub_10004A854(v8);
  *v9 = v10;
  v9[1] = sub_10001D5E0;

  return sub_1000584E8(a1, a2, v5, v6, v7);
}

uint64_t sub_1000586CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001CEC4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058728()
{
  sub_100012634(&qword_1000D35D0, &qword_100097868);
  sub_100058FB0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 80) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_100058808(uint64_t a1)
{
  sub_100012634(&qword_1000D35D0, &qword_100097868);
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10001D270;
  sub_100058FC8();
  sub_100058F9C();
  sub_100058FD4();

  return sub_100055788(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100058918(uint64_t a1)
{
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10001D5E0;
  sub_100058F9C();
  sub_100058FD4();

  return sub_1000559BC(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1000589E8()
{
  sub_100012634(&qword_1000D35D0, &qword_100097868);
  sub_100058FB0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

uint64_t sub_100058ACC(uint64_t a1)
{
  sub_100012634(&qword_1000D35D0, &qword_100097868);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001D5E0;
  sub_100058FC8();
  sub_100058F9C();
  sub_100058FD4();

  return sub_10005623C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100058C04()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058C3C()
{
  sub_10001D674();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10001D270;
  sub_100058FC8();

  return v3();
}

uint64_t sub_100058CE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100058D24()
{
  sub_10001D674();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v4[1] = sub_10001D5E0;
  sub_100058FC8();

  return sub_100056830(v6, v7, v1, v2);
}

uint64_t sub_100058DC8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100058E08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100058E20()
{
  result = qword_1000D35E8;
  if (!qword_1000D35E8)
  {
    type metadata accessor for ProductRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D35E8);
  }

  return result;
}

unint64_t sub_100058E80()
{
  result = qword_1000D35F0;
  if (!qword_1000D35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D35F0);
  }

  return result;
}

uint64_t sub_100058EDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100012634(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100058F78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1000586CC(a1, a2, a3, &protocol conformance descriptor for AsyncFlatMapSequence<A, B>.Iterator);
}

uint64_t sub_100059004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E36C();
  if (*(v7 + 84) == a2)
  {

    return sub_100012898(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

void sub_1000590C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100013A7C();
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E36C();
  if (*(v9 + 84) == a3)
  {

    sub_10001267C(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 20) + 24) = (v4 - 1);
  }
}

uint64_t sub_100059188(uint64_t a1)
{
  result = type metadata accessor for RemoteAlertConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100059210(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 8);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for BundleMerchandisingViewModel(0);
    v6 = sub_10005E494(*(a3 + 20));

    return sub_100012898(v6, v7, v8);
  }
}

void sub_1000592A0()
{
  sub_100013A7C();
  if (v3 == 254)
  {
    *(v1 + 8) = -v0;
  }

  else
  {
    v4 = v2;
    type metadata accessor for BundleMerchandisingViewModel(0);
    v5 = sub_10005E494(*(v4 + 20));

    sub_10001267C(v5, v6, v0, v7);
  }
}

void sub_100059334(uint64_t a1)
{
  sub_10005CBD0(319, &qword_1000D36F8, &unk_1000D3700, qword_100097940, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BundleMerchandisingViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_100059400@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleMerchandisingViewModel(0);
  v4 = sub_10002FD0C(v3);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BundleMerchandisingOfferView(0);
  sub_10005CD18(v1 + *(v7 + 20), v6, type metadata accessor for BundleMerchandisingViewModel);
  return sub_1000594A4(v6, a1);
}

double sub_1000594A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v4 = type metadata accessor for DebugView(0);
  v5 = v4[5];
  *(a2 + v5) = swift_getKeyPath();
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  sub_10005CE64(a1, a2 + v4[7], type metadata accessor for BundleMerchandisingViewModel);
  v7 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 16) = v11;
  *(v7 + 32) = v12;
  *(v7 + 40) = v13;
  v8 = a2 + v4[9];
  sub_100012634(&qword_1000D3738, &qword_100097A28);
  State.init(wrappedValue:)();
  result = *&v10;
  *v8 = v10;
  *(v8 + 16) = v11;
  return result;
}

unint64_t sub_10005961C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = 0;
  switch(*(v0 + 32))
  {
    case 1:
      _StringGuts.grow(_:)(23);

      v18 = 0xD000000000000015;
      sub_100012634(&qword_1000D1D00, &qword_10009B1B0);
      sub_1000586CC(&qword_1000D3410, &qword_1000D1D00, &qword_10009B1B0, &protocol conformance descriptor for [A]);
      v8._countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();
      String.append(_:)(v8);

      return v18;
    case 2:
      v18 = 0;
      _StringGuts.grow(_:)(24);
      v9 = "Fetching status for ";
      v10 = 0xD000000000000016;
      goto LABEL_13;
    case 3:
      v18 = 0x6973616863727550;
      goto LABEL_8;
    case 4:
      v14 = *(v0 + 16);
      v13 = *(v0 + 24);
      _StringGuts.grow(_:)(40);

      v18 = 0xD000000000000017;
      v15._countAndFlagsBits = v1;
      v15._object = v2;
      String.append(_:)(v15);
      v16._countAndFlagsBits = 0x7874206874697720;
      v16._object = 0xED0000203A44496ELL;
      String.append(_:)(v16);
      v11 = v14;
      v12 = v13;
      goto LABEL_10;
    case 5:
      v18 = 0;
      _StringGuts.grow(_:)(32);
      v9 = "will not update.";
      v10 = 0xD00000000000001ELL;
      goto LABEL_13;
    case 6:
      _StringGuts.grow(_:)(22);

      v18 = 0xD000000000000014;
LABEL_8:
      v11 = v1;
      v12 = v2;
LABEL_10:
      String.append(_:)(*&v11);
      return v18;
    case 7:
      v18 = 0;
      _StringGuts.grow(_:)(26);
      v9 = "Received status for ";
      v10 = 0xD000000000000018;
LABEL_13:
      v17 = v9 | 0x8000000000000000;
      String.append(_:)(*&v10);
      sub_100012634(&qword_1000D1C80, &qword_1000935C0);
      goto LABEL_14;
    case 8:
      v18 = 0;
      _StringGuts.grow(_:)(26);
      v5._object = 0x80000001000A0EE0;
      v5._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v5);
      v6._countAndFlagsBits = v1;
      v6._object = v2;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 8250;
      v7._object = 0xE200000000000000;
      String.append(_:)(v7);
      goto LABEL_14;
    case 9:
      return result;
    default:
      v18 = 0;
      _StringGuts.grow(_:)(19);
      v4._countAndFlagsBits = 0xD000000000000011;
      v4._object = 0x80000001000A0F60;
      String.append(_:)(v4);
LABEL_14:
      _print_unlocked<A, B>(_:_:)();
      return v18;
  }
}

uint64_t sub_100059A14()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10005CD78(v5, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  v8 = [v5 scene];

  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      return sub_10005DD2C(v9);
    }
  }

  return 0;
}

uint64_t sub_100059BBC()
{
  v1 = type metadata accessor for BorderedProminentButtonStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100012634(&qword_1000D3818, &qword_100097C18);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v8 = sub_100012634(&qword_1000D3820, &qword_100097C20);
  sub_100059DBC(v0, &v7[*(v8 + 44)]);
  BorderedProminentButtonStyle.init()();
  sub_1000586CC(&qword_1000D3828, &qword_1000D3818, &qword_100097C18, &protocol conformance descriptor for VStack<A>);
  sub_10005CC9C(&qword_1000D3830, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v2 + 8))(v4, v1);
  return sub_10002F5A8(v7, &qword_1000D3818, &qword_100097C18);
}

uint64_t sub_100059DBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v116 = sub_100012634(&qword_1000D3838, &qword_100097C28);
  __chkstk_darwin(v116);
  v112 = v110 - v3;
  v4 = sub_100012634(&qword_1000D3840, &qword_100097C30);
  v5 = __chkstk_darwin(v4 - 8);
  v132 = v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v125 = v110 - v7;
  v8 = type metadata accessor for DebugView(0);
  v127 = *(v8 - 8);
  __chkstk_darwin(v8);
  v126 = v9;
  v123 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v117 = sub_100012634(&qword_1000D3848, &qword_100097C38);
  v120 = *(v117 - 8);
  v11 = __chkstk_darwin(v117);
  v111 = v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = v110 - v14;
  v15 = __chkstk_darwin(v13);
  v130 = v110 - v16;
  v17 = __chkstk_darwin(v15);
  v128 = v110 - v18;
  __chkstk_darwin(v17);
  v131 = v110 - v19;
  v121 = v8;
  v20 = *(v8 + 32);
  v124 = a1;
  v21 = (a1 + v20);
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  v26 = *(v21 + 32);
  v27 = v21[5];
  *&v138 = *v21;
  *(&v138 + 1) = v23;
  v139 = v24;
  v140 = v25;
  v141 = v26;
  v142 = v27;
  sub_100012634(&qword_1000D3850, &unk_100097C40);
  State.wrappedValue.getter();
  v28 = sub_10005961C();
  v30 = v29;
  sub_10005CCE4(&v143);
  if (v30)
  {
    *&v138 = v28;
    *(&v138 + 1) = v30;
    sub_100012B58();
    v119 = Text.init<A>(_:)();
    v115 = v31;
    LODWORD(v114) = v32;
    v122 = v33;
    *&v138 = v22;
    *(&v138 + 1) = v23;
    v139 = v24;
    v140 = v25;
    v141 = v26;
    v142 = v27;
    State.wrappedValue.getter();
    v35 = v133;
    v34 = v134;
    v36 = v135;
    v37 = v136;
    v38 = v137;
    if (v137 <= 7u && ((1 << v137) & 0xA4) != 0)
    {
      v39 = static Color.red.getter();
    }

    else
    {
      v39 = static Color.primary.getter();
    }

    v40 = v39;
    sub_10005CD88(v35, v34, v36, v37, v38);
    *&v138 = v40;
    v41 = v114;
    v42 = v119;
    v43 = v115;
    v44 = Text.foregroundStyle<A>(_:)();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    sub_10005D204(v42, v43, v41 & 1);

    v115 = v44;
    v122 = v46;
    v113 = v48 & 1;
    sub_10005D1B0(v44, v46, v48 & 1);
    v114 = v50;
  }

  else
  {
    v115 = 0;
    v122 = 0;
    v113 = 0;
    v114 = 0;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51._countAndFlagsBits = 0x7270206863746546;
  v51._object = 0xEF203A746375646FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v51);
  v52 = v124;
  v53 = v124 + *(v121 + 28);
  v54 = v53 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20);
  v55 = *(v54 + 8);
  *&v138 = *v54;
  BYTE8(v138) = v55;
  j__swift_bridgeObjectRetain(v138);
  v56._countAndFlagsBits = String.init<A>(describing:)();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v56);

  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v57);
  LocalizedStringKey.init(stringInterpolation:)();
  v58 = v123;
  sub_10005CD18(v52, v123, type metadata accessor for DebugView);
  v59 = (*(v127 + 80) + 16) & ~*(v127 + 80);
  v60 = v59 + v126;
  v126 = *(v127 + 80);
  v119 = v60;
  v61 = swift_allocObject();
  v127 = v59;
  sub_10005CE64(v58, v61 + v59, type metadata accessor for DebugView);
  Button<>.init(_:action:)();
  v62 = v52 + *(v121 + 36);
  v63 = *(v62 + 16);
  v138 = *v62;
  v139 = v63;
  sub_100012634(&qword_1000D3858, &qword_100097C50);
  State.wrappedValue.getter();
  v64 = v134;
  if (v134)
  {
    v65 = v133;
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v66._countAndFlagsBits = 0x6573616863727550;
    v66._object = 0xE900000000000020;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v66);

    v67._countAndFlagsBits = v65;
    v67._object = v64;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v67);

    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v68);
    v121 = LocalizedStringKey.init(stringInterpolation:)();
    v110[1] = v69;
    sub_10005CD18(v52, v58, type metadata accessor for DebugView);
    v70 = (v119 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = v52;
    v72 = v58;
    v73 = swift_allocObject();
    sub_10005CE64(v72, v73 + v127, type metadata accessor for DebugView);
    v74 = (v73 + v70);
    v110[0] = v65;
    *v74 = v65;
    v74[1] = v64;

    v75 = v128;
    Button<>.init(_:action:)();
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v76._countAndFlagsBits = 0x6620737574617453;
    v76._object = 0xEB0000000020726FLL;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v76);

    v77._countAndFlagsBits = v65;
    v77._object = v64;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v77);

    v78._countAndFlagsBits = 0;
    v78._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v78);
    v79 = v75;
    LocalizedStringKey.init(stringInterpolation:)();
    sub_10005CD18(v71, v72, type metadata accessor for DebugView);
    v80 = swift_allocObject();
    sub_10005CE64(v72, v80 + v127, type metadata accessor for DebugView);
    v81 = (v80 + v70);
    *v81 = v110[0];
    v81[1] = v64;
    v82 = v130;
    Button<>.init(_:action:)();
    v83 = v120;
    v84 = *(v120 + 16);
    v85 = v129;
    v86 = v117;
    v84(v129, v79, v117);
    v87 = v111;
    v84(v111, v82, v86);
    v88 = v112;
    v84(v112, v85, v86);
    v89 = sub_100012634(&qword_1000D3868, &unk_100097C60);
    v84((v88 + *(v89 + 48)), v87, v86);
    v90 = *(v83 + 8);
    v90(v82, v86);
    v90(v79, v86);
    v90(v87, v86);
    v90(v85, v86);
    v91 = v125;
    sub_10005D508(v88, v125);
    v92 = 0;
  }

  else
  {
    v91 = v125;
    v86 = v117;
    v92 = 1;
  }

  sub_10001267C(v91, v92, 1, v116);
  LocalizedStringKey.init(stringLiteral:)();
  v93 = v123;
  sub_10005CD18(v124, v123, type metadata accessor for DebugView);
  v94 = swift_allocObject();
  sub_10005CE64(v93, v94 + v127, type metadata accessor for DebugView);
  v95 = v128;
  Button<>.init(_:action:)();
  v96 = v120;
  v97 = *(v120 + 16);
  v98 = v130;
  v97(v130, v131, v86);
  sub_100053C28(v91, v132, &qword_1000D3840, &qword_100097C30);
  v97(v129, v95, v86);
  v99 = v118;
  v100 = v115;
  v101 = v122;
  *v118 = v115;
  v99[1] = v101;
  v102 = v113;
  v103 = v114;
  v99[2] = v113;
  v99[3] = v103;
  v104 = sub_100012634(&qword_1000D3860, &qword_100097C58);
  v97(v99 + v104[12], v98, v86);
  sub_100053C28(v132, v99 + v104[16], &qword_1000D3840, &qword_100097C30);
  v105 = v99 + v104[20];
  v106 = v129;
  v97(v105, v129, v86);
  v107 = v122;
  sub_10005D16C(v100, v122, v102, v103);
  sub_10005D1C0(v100, v107, v102, v103);
  v108 = *(v96 + 8);
  v108(v128, v86);
  sub_10002F5A8(v125, &qword_1000D3840, &qword_100097C30);
  v108(v131, v86);
  v108(v106, v86);
  sub_10002F5A8(v132, &qword_1000D3840, &qword_100097C30);
  v108(v130, v86);
  return sub_10005D1C0(v100, v107, v102, v103);
}

uint64_t sub_10005AAD4(uint64_t a1)
{
  v2 = type metadata accessor for DebugView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_10001267C(v8, 1, 1, v9);
  sub_10005CD18(a1, v5, type metadata accessor for DebugView);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10005CE64(v5, v12 + v11, type metadata accessor for DebugView);
  sub_10006BA84(0, 0, v8, &unk_100097C98, v12);
}

uint64_t sub_10005AC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[52] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[56] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[57] = v7;
  v4[58] = v6;

  return _swift_task_switch(sub_10005AD78, v7, v6);
}

uint64_t sub_10005AD78()
{
  v1 = *(v0 + 416);
  v2 = type metadata accessor for DebugView(0);
  *(v0 + 472) = v2;
  v3 = v1 + v2[7];
  v4 = v3 + *(type metadata accessor for BundleMerchandisingViewModel(0) + 20);
  v5 = *v4;
  *(v0 + 480) = *v4;
  v6 = *(v4 + 8);
  *(v0 + 241) = v6;
  v7 = (v1 + v2[8]);
  v8 = *v7;
  *(v0 + 488) = *v7;
  v9 = v7[1];
  *(v0 + 496) = v9;
  v10 = v7[2];
  *(v0 + 504) = v10;
  v11 = v7[3];
  *(v0 + 512) = v11;
  v12 = *(v7 + 32);
  *(v0 + 242) = v12;
  v13 = v7[5];
  *(v0 + 208) = v5;
  *(v0 + 520) = v13;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v10;
  *(&v15 + 1) = v11;
  v31 = v15;
  v32 = v14;
  *(v0 + 32) = v15;
  *(v0 + 16) = v14;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;
  *(v0 + 240) = 0;
  *(v0 + 216) = v6;
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  j__swift_bridgeObjectRetain(v5);
  *(v0 + 528) = sub_100012634(&qword_1000D3850, &unk_100097C40);
  State.wrappedValue.setter();
  v16 = v1 + v2[6];
  v17 = *v16;
  LOBYTE(v2) = *(v16 + 8);

  if ((v2 & 1) == 0)
  {
    v19 = *(v0 + 432);
    v18 = *(v0 + 440);
    v30 = *(v0 + 424);
    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v17);
    (*(v19 + 8))(v18, v30);
    v17 = *(v0 + 408);
  }

  *(v0 + 536) = v17;
  if (!v17)
  {

    sub_100018F34();
    v25 = swift_allocError();
    *v26 = 14;
    *(v0 + 80) = v31;
    *(v0 + 64) = v32;
    *(v0 + 96) = v12;
    *(v0 + 248) = v25;
    *(v0 + 104) = v13;
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0;
    *(v0 + 280) = 2;
    State.wrappedValue.setter();

    sub_100019370();
    sub_1000542B4();

    __asm { BRAA            X1, X16 }
  }

  sub_1000542B4();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_10005B018()
{
  sub_100013A88();
  v1 = *(v0 + 241);
  v2 = swift_task_alloc();
  *(v0 + 544) = v2;
  *v2 = v0;
  v2[1] = sub_10005B0B8;
  v3 = *(v0 + 480);

  return sub_10006A35C(v3, v1);
}

uint64_t sub_10005B0B8()
{
  v2 = *v1;
  sub_1000540C0();
  *v4 = v3;
  v5 = *v1;
  sub_1000540C0();
  *v6 = v5;
  *(v8 + 552) = v7;
  *(v8 + 560) = v0;

  v9 = *(v2 + 464);
  v10 = *(v2 + 456);
  if (v0)
  {
    v11 = sub_10005B404;
  }

  else
  {
    v11 = sub_10005B1F8;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_10005B1F8()
{
  v1 = (v0 + 488);
  v2 = *(v0 + 552);

  v3 = *(v2 + 16);
  if (v3)
  {
    v25 = v2;
    v4 = *(v0 + 552);
    sub_100077764(0, v3, 0);
    v5 = _swiftEmptyArrayStorage[2];
    v6 = 2 * v5;
    v7 = (v4 + 40);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = _swiftEmptyArrayStorage[3];

      if (v5 >= v10 >> 1)
      {
        sub_100077764((v10 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v11 = &_swiftEmptyArrayStorage[v6];
      v11[4] = v9;
      v11[5] = v8;
      v6 += 2;
      v7 += 2;
      ++v5;
      --v3;
    }

    while (v3);
    v1 = (v0 + 488);
    v2 = v25;
  }

  v12 = *(v0 + 520);
  v13 = *(v0 + 242);
  v14 = v1[1];
  *(v0 + 160) = *v1;
  *(v0 + 176) = v14;
  *(v0 + 192) = v13;
  *(v0 + 200) = v12;
  *(v0 + 328) = _swiftEmptyArrayStorage;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  State.wrappedValue.setter();
  v15 = *(v0 + 552);
  if (*(v2 + 16))
  {
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v18 = *(v0 + 472);
  v19 = *(v0 + 416);

  v20 = (v19 + *(v18 + 36));
  v21 = v20[1];
  v22 = v20[2];
  *(v0 + 368) = *v20;
  *(v0 + 376) = v21;
  *(v0 + 384) = v22;
  *(v0 + 392) = v17;
  *(v0 + 400) = v16;

  sub_100012634(&qword_1000D3858, &qword_100097C50);
  State.wrappedValue.setter();

  sub_100019370();

  return v23();
}

uint64_t sub_10005B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  v32 = *(v12 + 536);

  sub_10005E1B0();
  *(v12 + 320) = 2;
  swift_errorRetain();
  swift_errorRetain();
  v13 = sub_10005E180();
  sub_10005D660(v13, v14, v15, v16, v17);

  State.wrappedValue.setter();

  v18 = sub_10005E180();
  sub_10005CD88(v18, v19, v20, v21, v22);

  sub_100019370();
  sub_100058FD4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, v32, a10, a11, a12);
}

uint64_t sub_10005B4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[50] = v7;
  v6[51] = *(v7 - 8);
  v6[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[53] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[54] = v9;
  v6[55] = v8;

  return _swift_task_switch(sub_10005B5E8, v9, v8);
}

uint64_t sub_10005B5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v12 = *(v11 + 376);
  v13 = type metadata accessor for DebugView(0);
  sub_10005E3C0(v13);
  if ((v10 & 1) == 0)
  {
    v15 = *(v11 + 408);
    v14 = *(v11 + 416);
    v16 = *(v11 + 400);
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    sub_10005E4E8(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v19, v20, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v12);
    (*(v15 + 8))(v14, v16);
    v12 = *(v11 + 368);
  }

  *(v11 + 448) = v12;
  if (v12)
  {
    sub_10005E1EC();
    *(v11 + 248) = v21;
    *(v11 + 104) = v22;
    *(v11 + 256) = v23;
    *(v11 + 264) = 0;
    *(v11 + 272) = 0;
    *(v11 + 280) = 3;
    swift_bridgeObjectRetain_n();
    *(v11 + 496) = sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    sub_100059A14();
    *(v11 + 504) = v24;
    v25 = swift_task_alloc();
    *(v11 + 512) = v25;
    *v25 = v11;
    sub_10005E4A0(v25);
    sub_10004B1A8();

    return sub_100064C44(v26, v27, v28, v29);
  }

  else
  {

    sub_100018F34();
    v32 = swift_allocError();
    sub_10005E24C(v32, v33);
    *(v11 + 240) = 5;
    sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();

    sub_100019370();
    sub_10004B1A8();

    return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
  }
}

uint64_t sub_10005B810(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  sub_1000540C0();
  *v7 = v6;
  *v7 = *v3;
  v6[65] = v2;

  if (v2)
  {

    v8 = v6[54];
    v9 = v6[55];
    v10 = sub_10005BABC;
  }

  else
  {
    v6[66] = a2;
    v6[67] = a1;

    v8 = v6[54];
    v9 = v6[55];
    v10 = sub_10005B96C;
  }

  return _swift_task_switch(v10, v8, v9);
}

void sub_10005B96C()
{
  v11 = *(v0 + 528);
  v12 = *(v0 + 536);
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 241);

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v8;
  *(v0 + 200) = v1;
  *(v0 + 328) = v6;
  *(v0 + 336) = v7;
  *(v0 + 344) = v12;
  *(v0 + 352) = v11;
  *(v0 + 360) = 4;

  sub_10005D660(v5, v4, v3, v2, v8);

  State.wrappedValue.setter();

  sub_10005CD88(v5, v4, v3, v2, v8);

  sub_100019370();
  sub_1000542B4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_10005BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  sub_10005E324();
  sub_10005E1B0();
  *(v12 + 320) = 5;
  swift_errorRetain();
  v13 = sub_10005E180();
  sub_10005D660(v13, v14, v15, v16, v17);

  swift_errorRetain();
  State.wrappedValue.setter();

  v18 = sub_10005E180();
  sub_10005CD88(v18, v19, v20, v21, v22);

  sub_100019370();
  sub_100058FD4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

void sub_10005BB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10002FFBC();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = sub_10005E2B0();
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  v35 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  v36 = sub_10002FD0C(v35);
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  v39 = type metadata accessor for TaskPriority();
  sub_10001267C(v38, 1, 1, v39);
  sub_10005CD18(v29, &a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DebugView);
  type metadata accessor for MainActor();

  v40 = static MainActor.shared.getter();
  v41 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v40;
  *(v42 + 24) = &protocol witness table for MainActor;
  sub_10005CE64(&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41, type metadata accessor for DebugView);
  v43 = (v42 + ((v34 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v43 = v27;
  v43[1] = v25;
  sub_10006BA84(0, 0, v38, v23, v42);

  sub_10002FFA4();
}

uint64_t sub_10005BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[50] = v7;
  v6[51] = *(v7 - 8);
  v6[52] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[53] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[54] = v9;
  v6[55] = v8;

  return _swift_task_switch(sub_10005BE34, v9, v8);
}

uint64_t sub_10005BE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B290();
  sub_10004AE50();
  v12 = *(v11 + 376);
  v13 = type metadata accessor for DebugView(0);
  sub_10005E3C0(v13);
  if ((v10 & 1) == 0)
  {
    v15 = *(v11 + 408);
    v14 = *(v11 + 416);
    v16 = *(v11 + 400);
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    sub_10005E4E8(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v19, v20, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v12);
    (*(v15 + 8))(v14, v16);
    v12 = *(v11 + 368);
  }

  *(v11 + 448) = v12;
  if (v12)
  {
    sub_10005E1EC();
    *(v11 + 248) = v21;
    *(v11 + 104) = v22;
    *(v11 + 256) = v23;
    *(v11 + 264) = 0;
    *(v11 + 272) = 0;
    *(v11 + 280) = 6;
    swift_bridgeObjectRetain_n();
    *(v11 + 496) = sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();
    sub_10004B1A8();

    return _swift_task_switch(v24, v25, v26);
  }

  else
  {

    sub_100018F34();
    v28 = swift_allocError();
    sub_10005E24C(v28, v29);
    *(v11 + 240) = 7;
    sub_100012634(&qword_1000D3850, &unk_100097C40);
    State.wrappedValue.setter();

    sub_100019370();
    sub_10004B1A8();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
  }
}

uint64_t sub_10005C014()
{
  sub_100013A88();
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  sub_10005E4A0(v1);

  return sub_10006AA20();
}

uint64_t sub_10005C0A0()
{
  sub_100013A88();
  v2 = *v1;
  sub_1000540C0();
  *v3 = v2;
  v4 = *v1;
  sub_1000540C0();
  *v5 = v4;
  v2[64] = v0;

  if (v0)
  {

    v6 = v2[54];
    v7 = v2[55];
    v8 = sub_10005C2BC;
  }

  else
  {
    v6 = v2[54];
    v7 = v2[55];
    v8 = sub_10005C1B0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10005C1B0()
{
  v1 = *(v0 + 488);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 241);

  *(v0 + 160) = v5;
  *(v0 + 168) = v4;
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  *(v0 + 192) = v8;
  *(v0 + 200) = v1;
  *(v0 + 328) = v6;
  *(v0 + 336) = v7;
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 360) = 8;

  v9 = sub_10005E3E8();
  sub_10005D660(v9, v10, v11, v12, v13);

  State.wrappedValue.setter();

  v14 = sub_10005E3E8();
  sub_10005CD88(v14, v15, v16, v17, v18);

  sub_100019370();

  return v19();
}

uint64_t sub_10005C2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E4CC();
  sub_10005E324();
  sub_10005E1B0();
  *(v12 + 320) = 7;
  swift_errorRetain();
  v13 = sub_10005E180();
  sub_10005D660(v13, v14, v15, v16, v17);

  swift_errorRetain();
  State.wrappedValue.setter();

  v18 = sub_10005E180();
  sub_10005CD88(v18, v19, v20, v21, v22);

  sub_100019370();
  sub_100058FD4();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_10005C388(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v6, qword_1000E4560);
  v7 = (a1 + *(type metadata accessor for DebugView(0) + 28));
  v9 = *v7;
  v8 = v7[1];
  v10 = static os_log_type_t.default.getter();

  v11 = Logger.logObject.getter();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v20 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v19[1] = a1;
    *v13 = 136446466;
    v21 = 91;
    v22 = 0xE100000000000000;
    v23 = v14;
    v15._countAndFlagsBits = v9;
    v15._object = v8;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_1000847A8(v21, v22, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1000847A8(0x7373696D736944, 0xE700000000000000, &v23);
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v13, 0x16u);
    swift_arrayDestroy();

    v2 = v20;
  }

  sub_10005DB2C(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10005C618@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneSession.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C6C4(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 sub_10005C6E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10005C6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF7 && *(a1 + 33))
    {
      v2 = *a1 + 246;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 9)
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

uint64_t sub_10005C734(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10005C77C(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_10005C7BC(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013A7C();
  sub_100012634(&qword_1000D3740, &qword_100097BA8);
  sub_10005E36C();
  if (*(v6 + 84) == v3)
  {
    v7 = a3[5];
LABEL_5:
    v9 = sub_10005E494(v7);

    return sub_100012898(v9, v10, v11);
  }

  type metadata accessor for BundleMerchandisingViewModel(0);
  sub_10005E36C();
  if (*(v8 + 84) == v3)
  {
    v7 = a3[7];
    goto LABEL_5;
  }

  v13 = *(v4 + a3[8] + 40);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_10005C8D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013A7C();
  sub_100012634(&qword_1000D3740, &qword_100097BA8);
  sub_10005E36C();
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    type metadata accessor for BundleMerchandisingViewModel(0);
    sub_10005E36C();
    if (*(v10 + 84) != a3)
    {
      *(v5 + a4[8] + 40) = v4;
      return;
    }

    v9 = a4[7];
  }

  v11 = sub_10005E494(v9);

  sub_10001267C(v11, v12, v4, v13);
}

void sub_10005C9C0(uint64_t a1)
{
  sub_10005CBD0(319, &qword_1000D37B0, &qword_1000D37B8, &qword_100097BC0, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10005CB28(319);
    if (v2 <= 0x3F)
    {
      sub_10005CBD0(319, &qword_1000D36F8, &unk_1000D3700, qword_100097940, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        type metadata accessor for BundleMerchandisingViewModel(319);
        if (v4 <= 0x3F)
        {
          sub_10005CB80();
          if (v5 <= 0x3F)
          {
            sub_10005CBD0(319, &unk_1000D37D0, &qword_1000D3738, &qword_100097A28, &type metadata accessor for State);
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

void sub_10005CB28(uint64_t a1)
{
  if (!qword_1000D37C0)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D37C0);
    }
  }
}

void sub_10005CB80()
{
  if (!qword_1000D37C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000D37C8);
    }
  }
}

void sub_10005CBD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10001CEC4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10005CC9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10005CD18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  v4 = sub_10002FD24();
  v5(v4);
  return a2;
}

void sub_10005CD78(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10005CD88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      return j__swift_bridgeObjectRelease(result);
    case 1:

      goto LABEL_7;
    case 2:
    case 5:
    case 7:

    case 3:
    case 6:
    case 8:

      goto LABEL_7;
    case 4:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005CE64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  v4 = sub_10002FD24();
  v5(v4);
  return a2;
}

uint64_t sub_10005CED8()
{
  sub_10002FFBC();
  type metadata accessor for DebugView(0);
  sub_10005E1D4();
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10005CD78(*v5, *(v5 + 8));
  v6 = *(v0 + 20);
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10002FC24();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  sub_10005E2E8((v5 + *(v0 + 24)));
  v9 = v5 + v8;

  sub_100018DF0(*(v9 + 32), *(v9 + 40));
  sub_100018DF0(*(v9 + 48), *(v9 + 56));
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E198();
  if (!(!v12 & v11))
  {
    sub_100018DF0(*v2, v10);
  }

  type metadata accessor for ClientOverride(0);
  sub_10005E4B4();
  v13 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v13))
  {
    type metadata accessor for URL();
    sub_10002FC24();
    (*(v14 + 8))(v2 + v3);
  }

  v15 = sub_10005E508();
  if (!sub_10005E290(v15))
  {
    sub_10005E240();
    v16 = sub_10005E4C0();
    v17(v16);
  }

  sub_10005E448();
  sub_10005E424();

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_10005D0FC(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DebugView(0);
  sub_10002FD0C(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t sub_10005D16C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10005D1B0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005D1B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005D1C0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10005D204(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10005D204(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10005D238()
{
  sub_10002FFBC();
  type metadata accessor for DebugView(0);
  sub_10005E1D4();
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10005CD78(*v5, *(v5 + 8));
  v6 = *(v0 + 20);
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10002FC24();
    (*(v7 + 8))(v5 + v6);
  }

  else
  {
  }

  sub_10005E2E8((v5 + *(v0 + 24)));
  v9 = v5 + v8;

  sub_100018DF0(*(v9 + 32), *(v9 + 40));
  sub_100018DF0(*(v9 + 48), *(v9 + 56));
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E198();
  if (!(!v12 & v11))
  {
    sub_100018DF0(*v2, v10);
  }

  type metadata accessor for ClientOverride(0);
  sub_10005E4B4();
  v13 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v13))
  {
    type metadata accessor for URL();
    sub_10002FC24();
    (*(v14 + 8))(v2 + v3);
  }

  v15 = sub_10005E508();
  if (!sub_10005E290(v15))
  {
    sub_10005E240();
    v16 = sub_10005E4C0();
    v17(v16);
  }

  sub_10005E378();
  sub_10005E400();

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v18, v19, v20);
}

uint64_t sub_10005D508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D3838, &qword_100097C28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005D57C()
{
  sub_10004B290();
  sub_10004AE50();
  sub_10005E2B0();
  sub_10005E308();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10005E174;
  sub_10005E2D4();
  sub_10004B1A8();

  return sub_10005BD3C(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10005D660(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 0:

      return j__swift_bridgeObjectRetain(result);
    case 1:

      goto LABEL_7;
    case 2:
    case 5:
    case 7:

      return swift_errorRetain();
    case 3:
    case 6:
    case 8:

      goto LABEL_7;
    case 4:

LABEL_7:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005D73C()
{
  sub_10002FFBC();
  type metadata accessor for DebugView(0);
  sub_10005E1D4();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v1 + v5;
  sub_10005CD78(*(v1 + v5), *(v1 + v5 + 8));
  v7 = *(v0 + 20);
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10002FC24();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  sub_10005E2E8((v6 + *(v0 + 24)));
  v10 = v6 + v9;

  sub_100018DF0(*(v10 + 32), *(v10 + 40));
  sub_100018DF0(*(v10 + 48), *(v10 + 56));
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E198();
  if (!(!v13 & v12))
  {
    sub_100018DF0(*v2, v11);
  }

  type metadata accessor for ClientOverride(0);
  sub_10005E4B4();
  v14 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v14))
  {
    type metadata accessor for URL();
    sub_10002FC24();
    (*(v15 + 8))(v2 + v3);
  }

  v16 = sub_10005E508();
  if (!sub_10005E290(v16))
  {
    sub_10005E240();
    v17 = sub_10005E4C0();
    v18(v17);
  }

  sub_10005E378();
  sub_10005E400();

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v19, v20, v21);
}

uint64_t sub_10005D960()
{
  sub_10004B290();
  sub_10004AE50();
  sub_10005E2B0();
  sub_10005E308();
  v0 = swift_task_alloc();
  v1 = sub_10004A854(v0);
  *v1 = v2;
  v1[1] = sub_10005DA44;
  sub_10005E2D4();
  sub_10004B1A8();

  return sub_10005B4F0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10005DA44()
{
  sub_100013A88();
  v1 = *v0;
  sub_1000540C0();
  *v2 = v1;

  sub_100019370();

  return v3();
}

uint64_t sub_10005DB2C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100012634(&qword_1000D3730, &qword_1000979F8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100053C28(v2, &v14 - v9, &qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10005DD2C(void *a1)
{
  v2 = [a1 _persistenceIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10005DD9C()
{
  sub_10002FFBC();
  type metadata accessor for DebugView(0);
  sub_10005E1D4();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v1 + v5;
  sub_10005CD78(*(v1 + v5), *(v1 + v5 + 8));
  v7 = *(v0 + 20);
  sub_100012634(&qword_1000D3730, &qword_1000979F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DismissAction();
    sub_10002FC24();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  sub_10005E2E8((v6 + *(v0 + 24)));
  v10 = v6 + v9;

  sub_100018DF0(*(v10 + 32), *(v10 + 40));
  sub_100018DF0(*(v10 + 48), *(v10 + 56));
  type metadata accessor for RemoteAlertConfiguration(0);
  sub_10005E198();
  if (!(!v13 & v12))
  {
    sub_100018DF0(*v2, v11);
  }

  type metadata accessor for ClientOverride(0);
  sub_10005E4B4();
  v14 = sub_100012634(&qword_1000D2730, &qword_100096BC0);
  if (!sub_10005E350(v14))
  {
    type metadata accessor for URL();
    sub_10002FC24();
    (*(v15 + 8))(v2 + v3);
  }

  v16 = sub_10005E508();
  if (!sub_10005E290(v16))
  {
    sub_10005E240();
    v17 = sub_10005E4C0();
    v18(v17);
  }

  sub_10005E448();
  sub_10005E424();

  sub_10005E488();
  sub_10002FFA4();

  return _swift_deallocObject(v19, v20, v21);
}

uint64_t sub_10005DFB0()
{
  v0 = type metadata accessor for DebugView(0);
  sub_10002FD0C(v0);
  v1 = swift_task_alloc();
  v2 = sub_10004A854(v1);
  *v2 = v3;
  v2[1] = sub_10005E174;
  v4 = sub_10005E2D4();

  return sub_10005AC84(v4, v5, v6, v7);
}

uint64_t sub_10005E088()
{
  v0 = sub_10002FD24();
  sub_10001CEC4(v0, v1);
  type metadata accessor for BorderedProminentButtonStyle();
  sub_1000586CC(&qword_1000D3828, &qword_1000D3818, &qword_100097C18, &protocol conformance descriptor for VStack<A>);
  sub_10005CC9C(&qword_1000D3830, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

void sub_10005E1B0()
{
  *(v2 + 112) = v7;
  *(v2 + 120) = v5;
  *(v2 + 128) = v3;
  *(v2 + 136) = v1;
  *(v2 + 144) = v6;
  *(v2 + 152) = v0;
  *(v2 + 288) = v4;
  *(v2 + 296) = 0;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0;
}

__n128 sub_10005E1EC()
{
  v2 = *v0;
  *(v1 + 456) = *v0;
  v3 = *(v0 + 8);
  *(v1 + 464) = v3;
  v4 = *(v0 + 16);
  *(v1 + 472) = v4;
  v5 = *(v0 + 24);
  *(v1 + 480) = v5;
  v6 = *(v0 + 32);
  *(v1 + 241) = v6;
  result.n128_u64[0] = v2;
  result.n128_u64[1] = v3;
  *(v1 + 488) = *(v0 + 40);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *(v1 + 80) = v8;
  *(v1 + 64) = result;
  *(v1 + 96) = v6;
  return result;
}

__n128 sub_10005E24C(uint64_t a1, _BYTE *a2)
{
  *a2 = 14;
  v5 = v2 + *(v3 + 32);
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  result = *v5;
  v9 = *(v5 + 16);
  *(v4 + 16) = *v5;
  *(v4 + 32) = v9;
  *(v4 + 48) = v6;
  *(v4 + 208) = a1;
  *(v4 + 56) = v7;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 216) = 0;
  return result;
}

uint64_t sub_10005E290(uint64_t a1)
{

  return sub_100012898(v1 + v2, 1, a1);
}

uint64_t sub_10005E324()
{
}

uint64_t sub_10005E350(uint64_t a1)
{

  return sub_100012898(v1 + v2, 3, a1);
}

uint64_t sub_10005E378()
{
  v1 = type metadata accessor for BundleMerchandisingViewModel(0);
  j__swift_bridgeObjectRelease(*(v0 + *(v1 + 20)));
}

uint64_t sub_10005E3C0(uint64_t a1)
{
}

uint64_t sub_10005E400()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_10005CD88(v4, v5, v6, v7, v8);
}

uint64_t sub_10005E424()
{
  v3 = v1 + *(v0 + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);

  return sub_10005CD88(v4, v5, v6, v7, v8);
}

uint64_t sub_10005E448()
{
  v1 = type metadata accessor for BundleMerchandisingViewModel(0);
  j__swift_bridgeObjectRelease(*(v0 + *(v1 + 20)));
}

uint64_t sub_10005E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10005E508()
{

  return type metadata accessor for UUID();
}

uint64_t sub_10005E590()
{
  v1 = *(*(v0 + qword_1000D3870) + *((swift_isaMask & **(v0 + qword_1000D3870)) + qword_1000E4540 + 16));

  return v1;
}

void sub_10005E614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + qword_1000D3878) = 0;
  sub_10005F9C0("Fatal error", "StoreKitUISceneService/PresentationViewController_iOS.swift", "r_iOS.swift");
  __break(1u);
}

id sub_10005E678(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v5 = type metadata accessor for PresentingViewController(0, *((swift_isaMask & *v2) + 0x50), *((swift_isaMask & *v2) + 0x58), v4);
  v35.receiver = v2;
  v35.super_class = v5;
  result = objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if ((*(v2 + qword_1000D3878) & 1) == 0)
  {
    *(v2 + qword_1000D3878) = 1;
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v7 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v7, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(30);
    v8 = sub_10005FA98();
    v10 = v9;

    v33 = v8;
    v34 = v10;
    sub_10005FA4C();
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v11);
    v12 = v8;
    v13 = sub_10005E590();
    v15 = v14;
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v16))
    {
      v18 = sub_100039EE0();
      v19 = swift_slowAlloc();
      *v18 = 136446466;
      sub_10004A748();
      v20._countAndFlagsBits = v13;
      v20._object = v15;
      String.append(_:)(v20);
      sub_10004A9C8();
      v29 = sub_10004A9E4(v21, v22, v23, v24, v25, v26, v27, v28, v31, *v32, v33, v34);

      *(v18 + 4) = v29;
      *(v18 + 12) = 2082;
      v30 = sub_1000847A8(v12, v10, v32);

      *(v18 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v19);
      sub_100039E94(v18);
    }

    else
    {
    }

    return [v2 presentViewController:*(v2 + qword_1000D3870) animated:1 completion:0];
  }

  return result;
}

void sub_10005E914(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005E678(a3);
}

void sub_10005E968(uint64_t a1, void *a2)
{
  swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v4 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v4, qword_1000E4560);
  sub_10005FA78();
  v5 = sub_10005FA98();
  v7 = v6;

  v47 = v5;
  v48 = v7;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x80000001000A1180;
  String.append(_:)(v8);
  v9 = v7;
  v10 = static os_log_type_t.default.getter();

  v11 = Logger.logObject.getter();

  v12 = a2;
  v43 = a1;
  if (os_log_type_enabled(v11, v10))
  {
    sub_100039EE0();
    v13 = sub_10005F9EC();
    sub_10005F9A4(4.8752e-34);
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    String.append(_:)(v14);
    sub_10005FA08();
    v15 = sub_1000847A8(v47, v48, v46);

    *(&type metadata for Any + 4) = v15;
    *(&type metadata for Any + 6) = 2082;
    v16 = sub_1000847A8(v5, v9, v46);

    *(&type metadata for Any + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", &type metadata for Any, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v13);
    sub_100039E94(&type metadata for Any);
  }

  else
  {
  }

  v17 = [v44 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 window];

  if (!v19)
  {
    goto LABEL_13;
  }

  v45 = [v19 windowScene];

  if (!v45)
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

LABEL_13:
    v39 = static os_log_type_t.error.getter();

    v45 = Logger.logObject.getter();

    if (os_log_type_enabled(v45, v39))
    {
      sub_100039EE0();
      v40 = sub_10005F9EC();
      sub_10005F9A4(4.8752e-34);
      v41._countAndFlagsBits = v43;
      v41._object = a2;
      String.append(_:)(v41);
      sub_10005FA08();
      v42 = sub_1000847A8(v47, v48, v46);

      *(v18 + 4) = v42;
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_1000847A8(0xD000000000000032, 0x80000001000A11B0, v46);
      _os_log_impl(&_mh_execute_header, v45, v39, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v40);
      sub_100039E94(v18);
    }

    goto LABEL_17;
  }

  v21 = v20;
  sub_10005FA78();
  v22 = _typeName(_:qualified:)();
  v24 = v23;

  v47 = v22;
  v48 = v24;
  v25._object = 0x80000001000A11F0;
  v25._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v25);
  v26 = [v21 description];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v32 = v47;
  v31 = v48;
  v33 = static os_log_type_t.default.getter();

  v34 = Logger.logObject.getter();

  if (os_log_type_enabled(v34, v33))
  {
    sub_100039EE0();
    v35 = sub_10005F9EC();
    sub_10005F9A4(4.8752e-34);
    v36._countAndFlagsBits = v43;
    v36._object = v12;
    String.append(_:)(v36);
    sub_10005FA08();
    v37 = sub_1000847A8(v47, v48, v46);

    *(v27 + 4) = v37;
    *(v27 + 12) = 2082;
    v38 = sub_1000847A8(v32, v31, v46);

    *(v27 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v34, v33, "%{public}s%{public}s", v27, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v35);
    sub_100039E94(v27);
  }

  else
  {
  }

  [v21 invalidate];
LABEL_17:
}

void sub_10005EEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_10005EEBC();
}

id sub_10005EF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PresentingViewController(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_10005F054()
{
  swift_unknownObjectWeakInit();
  sub_10005F9C0("Fatal error", "StoreKitUISceneService/PresentationViewController_iOS.swift", "r_iOS.swift");
  __break(1u);
}

void sub_10005F0FC(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v5 = type metadata accessor for UIPresentationHostingController(0, *((swift_isaMask & *v2) + qword_1000E4540), *((swift_isaMask & *v2) + qword_1000E4540 + 8), v4);
  v64.receiver = v2;
  v64.super_class = v5;
  objc_msgSendSuper2(&v64, "viewDidDisappear:", a1 & 1);
  if ([v2 isBeingDismissed])
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v6 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v6, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(40);
    v7 = sub_10005FA98();
    v9 = v8;

    v62 = v7;
    v63 = v9;
    sub_10005FA4C();
    v10._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v10);
    sub_10005FA58((swift_isaMask & *v2) + qword_1000E4540);
    sub_10005FA4C();
    String.append(_:)(v11);
    v12 = v9;
    v13 = (v2 + *((swift_isaMask & *v2) + qword_1000E4540 + 16));
    v15 = *v13;
    v14 = v13[1];
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    if (os_log_type_enabled(v17, v16))
    {
      v59 = v7;
      v18 = sub_100039EE0();
      v19 = swift_slowAlloc();
      *v18 = 136446466;
      sub_10004A748();
      v20 = v15;
      v21._countAndFlagsBits = v15;
      v21._object = v14;
      String.append(_:)(v21);
      sub_10004A9C8();
      v30 = sub_10004A9E4(v22, v23, v24, v25, v26, v27, v28, v29, v59, *v61, v62, v63);

      *(v18 + 4) = v30;
      *(v18 + 12) = 2082;
      v31 = sub_1000847A8(v60, v12, v61);

      *(v18 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v19);
      sub_100039E94(v18);
    }

    else
    {
      v20 = v15;
    }

    v56 = sub_10005F008();
    if (v56)
    {
      v57 = v56;
      sub_10005E968(v20, v14);
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v32 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v32, qword_1000E4560);
    sub_10004A7DC();
    _StringGuts.grow(_:)(53);
    v33._countAndFlagsBits = sub_10005FA98();
    String.append(_:)(v33);

    v34._countAndFlagsBits = 0x20656E65637320;
    v34._object = 0xE700000000000000;
    String.append(_:)(v34);
    sub_10005FA58((swift_isaMask & *v2) + qword_1000E4540);
    sub_10005FA4C();
    String.append(_:)(v35);
    v37 = v62;
    v36 = v63;
    v38 = (v2 + *((swift_isaMask & *v2) + qword_1000E4540 + 16));
    v39 = *v38;
    v40 = v38[1];
    v41 = static os_log_type_t.debug.getter();

    v42 = Logger.logObject.getter();

    if (os_log_type_enabled(v42, v41))
    {
      v43 = sub_100039EE0();
      v44 = swift_slowAlloc();
      *v43 = 136446466;
      sub_10004A748();
      v45._countAndFlagsBits = v39;
      v45._object = v40;
      String.append(_:)(v45);
      sub_10004A9C8();
      v54 = sub_10004A9E4(v46, v47, v48, v49, v50, v51, v52, v53, v58, *v61, v62, v63);

      *(v43 + 4) = v54;
      *(v43 + 12) = 2082;
      v55 = sub_1000847A8(v37, v36, v61);

      *(v43 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v42, v41, "%{public}s%{public}s", v43, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v44);
      sub_100039E94(v43);
    }

    else
    {
    }
  }
}

void sub_10005F64C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10005F0FC(a3);
}

uint64_t sub_10005F730()
{

  sub_10005FA38();

  sub_10005FA38();

  return swift_unknownObjectWeakDestroy();
}

id sub_10005F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIPresentationHostingController(0, *((swift_isaMask & *v4) + qword_1000E4540), *((swift_isaMask & *v4) + qword_1000E4540 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_10005F898(uint64_t a1)
{

  sub_10005FA24();

  sub_10005FA24();

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_10005F9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return _assertionFailure(_:_:file:line:flags:)(a1, 11, 2, 0xD000000000000025, a3 | 0x8000000000000000, a2, 59, 2);
}

uint64_t sub_10005F9EC()
{

  return swift_slowAlloc();
}

void sub_10005FA08()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

void sub_10005FA58(uint64_t a1@<X8>)
{
  v3 = (v1 + *(a1 + 24));
  v4 = *v3;
  v5 = v3[1];

  String.append(_:)(*&v4);
}

void sub_10005FA78()
{

  _StringGuts.grow(_:)(36);
}

uint64_t sub_10005FA98()
{

  return _typeName(_:qualified:)();
}

uint64_t sub_10005FAB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064AF8();
  *a1 = result;
  return result;
}

id sub_10005FB08(uint64_t a1)
{
  v1[qword_1000D3878] = 0;
  *&v1[qword_1000D3870] = a1;
  v3.receiver = v1;
  v3.super_class = sub_100012634(&unk_1000D3A70, &qword_100097E38);
  return objc_msgSendSuper2(&v3, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_10005FB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100012634(&qword_1000D3A58, &qword_100097E00);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  swift_unknownObjectWeakInit();
  v14 = (v5 + *((swift_isaMask & *v5) + qword_1000E4540 + 16));
  *v14 = a1;
  v14[1] = a2;
  v15 = (v5 + *((swift_isaMask & *v5) + qword_1000E4540 + 24));
  *v15 = a3;
  v15[1] = a4;
  sub_100063BC0(a5, v13, &qword_1000D3A58, &qword_100097E00);
  v16 = UIHostingController.init(rootView:)();
  sub_100049EA0(a5, &qword_1000D3A58, &qword_100097E00);
  return v16;
}

id sub_10005FD24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for SKLogger(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences] = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_logger;
  Logger.init(subsystem:category:)();
  v7 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_alertConfigurations;
  type metadata accessor for RemoteAlertConfiguration(0);
  *&v1[v7] = Dictionary.init(dictionaryLiteral:)();
  sub_100063C94();
  sub_100063B30(&v1[v6], v5, v8);
  v9 = static os_log_type_t.debug.getter();
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = sub_100039EE0();
    v12 = sub_100039EC8();
    v18 = v12;
    *v11 = 136446466;
    v14 = sub_100037CAC(v12, v13, &v18);
    sub_100030020(v14);
    *(v11 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A15A0, &v18);
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    sub_100037BD0();
    sub_100039E94(v12);
    sub_10004AB24();
  }

  sub_100063CAC();
  sub_100063C20(v5, v15);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t type metadata accessor for StoreKitAngelRemoteAlertSceneDelegate(uint64_t a1)
{
  result = qword_1000D39B8;
  if (!qword_1000D39B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100060000(uint64_t a1)
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

void sub_1000600A0(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    type metadata accessor for TaskPriority();
    sub_10002FEBC();
    sub_10001267C(v13, v14, v15, v16);
    type metadata accessor for MainActor();
    v17 = a1;
    v18 = v4;
    v19 = a2;
    v20 = a3;
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v18;
    v22[5] = v12;
    v22[6] = v19;
    v22[7] = v20;
    sub_10006BA84(0, 0, v10, &unk_100097DF0, v22);
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    sub_100037B40();
    v43 = 0xD000000000000017;
    v44 = v23;
    swift_getObjectType();
    v24._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 2112039;
    v25._object = 0xE300000000000000;
    String.append(_:)(v25);
    v26 = [a1 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    String.append(_:)(v30);

    v32 = v43;
    v31 = v44;
    v33 = static os_log_type_t.error.getter();

    v34 = Logger.logObject.getter();

    if (os_log_type_enabled(v34, v33))
    {
      v35 = sub_100039EE0();
      v36 = sub_100039EC8();
      v43 = v36;
      *v35 = 136446466;
      v38 = sub_100037CAC(v36, v37, &v43);
      sub_100037B8C(v38);
      v39 = sub_1000847A8(v32, v31, &v43);

      *(v35 + 14) = v39;
      sub_100063DD4(&_mh_execute_header, v40, v33, "%{public}s%{public}s");
      sub_100063E70(v41, v42, (&type metadata for Any + 1));
      sub_10004AB24();
      sub_100039E94(v35);
    }

    else
    {
    }
  }
}

uint64_t sub_1000603A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v10 = swift_task_alloc();
  v7[4] = v10;
  *v10 = v7;
  v10[1] = sub_10006047C;

  return sub_10006060C(a5, a6);
}

uint64_t sub_10006047C()
{
  sub_100013A88();

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000605B4, v1, v0);
}

uint64_t sub_1000605B4()
{
  sub_100013A88();

  sub_100019370();

  return v0();
}

uint64_t sub_10006060C(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v3[22] = type metadata accessor for RemoteAlertConfiguration(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for SKLogger(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[33] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[34] = v5;
  v3[35] = v4;

  return _swift_task_switch(sub_100060788, v5, v4);
}

uint64_t sub_100060788(uint64_t a1)
{
  v179 = v1;
  v2 = *(v1 + 256);
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);
  sub_100063C94();
  v171 = v5;
  v172 = v6;
  sub_100063B30(v6 + v5, v2, v7);
  sub_100063CC4();
  _StringGuts.grow(_:)(53);
  v8._countAndFlagsBits = 0x20656E656353;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  v9 = [v4 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._object = 0x80000001000A13D0;
  v14._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v14);
  v15 = [v3 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100063E3C();

  v16._countAndFlagsBits = sub_100063DC8();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = 0x80000001000A13F0;
  String.append(_:)(v17);
  *(v1 + 88) = sub_100063714(v4);
  *(v1 + 96) = v18;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v175 = v1 + 88;
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v21 = v177;
  v20 = v178;
  v22 = static os_log_type_t.info.getter();
  v23 = Logger.logObject.getter();
  v24 = os_log_type_enabled(v23, v22);
  v25 = *(v1 + 256);
  if (v24)
  {
    v26 = sub_100039EE0();
    v27 = sub_100039EC8();
    v177 = v27;
    *v26 = 136446466;
    v29 = sub_100037CAC(v27, v28, &v177);
    sub_100030020(v29);
    v30 = sub_1000847A8(v21, v20, &v177);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v26, 0x16u);
    sub_100063DF0();
    sub_100039E94(v27);
    sub_10004AB24();
  }

  else
  {
  }

  sub_100063C20(v25, type metadata accessor for SKLogger);
  v31 = sub_100063714(*(v1 + 152));
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v35 = *(v1 + 176);
    v36 = *(v1 + 152);
    v37 = [objc_allocWithZone(UIWindow) initWithWindowScene:v36];
    *(v1 + 288) = v37;
    v173 = v37;
    [v37 setAlpha:0.0];
    sub_10002FEBC();
    sub_10001267C(v38, v39, v40, v35);
    v41 = [v36 activationContext];
    if (v41)
    {
      sub_100063778(v41);
    }

    sub_10004C3F8();
    v174 = v34;
    v61 = *(v1 + 224);
    v60 = *(v1 + 232);

    sub_100063A6C(v61, v60);
    v62 = *(v1 + 216);
    v63 = *(v1 + 176);
    sub_100063BC0(*(v1 + 232), v62, &qword_1000D31B8, &qword_100096AE0);
    v64 = sub_100012898(v62, 1, v63);
    v65 = *(v1 + 216);
    if (v64 == 1)
    {
      sub_100049EA0(v65, &qword_1000D31B8, &qword_100096AE0);
      sub_100063E24();
      if (!v42)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      sub_1000128C0(*(v1 + 240), qword_1000E4560);

      v66 = static os_log_type_t.default.getter();

      v67 = Logger.logObject.getter();

      if (os_log_type_enabled(v67, v66))
      {
        sub_100039EE0();
        v68 = v33;
        v69 = sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v70._countAndFlagsBits = v68;
        v70._object = v34;
        String.append(_:)(v70);
        sub_100063D38();
        v79 = sub_100063D78(v71, v72, v73, v74, v75, v76, v77, v78, v169, v170, v171, v172, v173, v34, v175, v176, v177, v178);

        *(v61 + 4) = v79;
        sub_100063DA0();
        v34 = v174;
        *(v61 + 14) = sub_1000847A8(0xD000000000000028, 0x80000001000A1470, &v176);
        sub_100063DAC(&_mh_execute_header, v80, v66, "%{public}s%{public}s");
        sub_100063DF0();
        v81 = v69;
        v33 = v68;
        sub_100039E94(v81);
        sub_100063D00();
      }

      v82 = *(v1 + 208);
      v83 = *(v1 + 168);
      sub_10002FEBC();
      sub_10001267C(v84, v85, v86, v87);
      sub_100063E0C(v83 + OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_alertConfigurations, v1 + 16);

      sub_10003A3A8(v82, v33, v34);
      swift_endAccess();
    }

    else
    {
      sub_1000497D8(v65, *(v1 + 192));
      sub_100063E24();
      if (!v42)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      v88 = *(v1 + 192);
      sub_1000128C0(*(v1 + 240), qword_1000E4560);
      sub_100063CC4();
      _StringGuts.grow(_:)(49);

      sub_100037B40();
      sub_100063D94();
      v177 = v90 + 30;
      v178 = v89;
      v91 = v33;
      v92._countAndFlagsBits = v33;
      v92._object = v174;
      String.append(_:)(v92);
      v93 = v178;
      v94 = v88[1];
      v169 = *v88;
      v170 = v177;
      v95 = static os_log_type_t.default.getter();

      v96 = Logger.logObject.getter();

      if (os_log_type_enabled(v96, v95))
      {
        sub_100039EE0();
        v97 = sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v98._countAndFlagsBits = v169;
        v98._object = v94;
        String.append(_:)(v98);
        sub_100063D38();
        v107 = sub_100063D78(v99, v100, v101, v102, v103, v104, v105, v106, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

        *(v88 + 4) = v107;
        sub_100063DA0();
        v108 = sub_1000847A8(v170, v93, &v176);

        *(v88 + 14) = v108;
        sub_100063DAC(&_mh_execute_header, v109, v95, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100039E94(v97);
        sub_100063D00();
      }

      else
      {
      }

      v110 = *(v1 + 208);
      v112 = *(v1 + 168);
      v111 = *(v1 + 176);
      sub_100063B30(*(v1 + 192), v110, type metadata accessor for RemoteAlertConfiguration);
      sub_10001267C(v110, 0, 1, v111);
      sub_100063E0C(v112 + OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_alertConfigurations, v1 + 64);

      v33 = v91;
      v34 = v174;
      sub_10003A3A8(v110, v33, v174);
      swift_endAccess();
      v113 = sub_100063DC8();
      sub_100063C20(v113, v114);
    }

    v115 = *(v1 + 232);
    if (sub_100012898(v115, 1, *(v1 + 176)))
    {

      v116 = v33;
      v117 = v34;
    }

    else
    {
      v116 = *v115;
      v117 = v115[1];
    }

    v118 = *(v1 + 152);
    type metadata accessor for BSActionHandler();
    v119 = sub_100065398(v118, v116, v117);
    *(v1 + 296) = v119;
    v120 = v119;
    v121 = *(v1 + 232);
    v122 = *(v1 + 200);
    v123 = *(v1 + 176);

    sub_100063BC0(v121, v122, &qword_1000D31B8, &qword_100096AE0);
    v124 = sub_100012898(v122, 1, v123);
    v125 = *(v1 + 200);
    if (v124 == 1)
    {
      sub_100049EA0(v125, &qword_1000D31B8, &qword_100096AE0);
      if (qword_1000D1AE8 != -1)
      {
        sub_100039E60(&qword_1000D1AE8);
      }

      sub_1000128C0(*(v1 + 240), qword_1000E4560);
      v126 = static os_log_type_t.error.getter();

      v127 = Logger.logObject.getter();

      if (os_log_type_enabled(v127, v126))
      {
        sub_100039EE0();
        v128 = sub_100063D1C();
        sub_100063C78(4.8752e-34);
        v129._countAndFlagsBits = sub_100063E30();
        String.append(_:)(v129);
        sub_100063D38();
        v138 = sub_100063D78(v130, v131, v132, v133, v134, v135, v136, v137, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);

        *(v117 + 4) = v138;
        sub_100063DA0();
        *(v117 + 14) = sub_1000847A8(0xD00000000000003BLL, 0x80000001000A14D0, &v176);
        _os_log_impl(&_mh_execute_header, v127, v126, "%{public}s%{public}s", v117, 0x16u);
        sub_100037BD0();
        sub_100039E94(v128);
        sub_100063D00();
      }

      sub_100018F34();
      *(v1 + 312) = swift_allocError();
      *v139 = 13;

      return _swift_task_switch(sub_100061BC0, v120, 0);
    }

    v142 = *(v1 + 184);
    sub_1000497D8(v125, v142);
    v143 = sub_100063E30();
    sub_100061F24(v143, v144, v142, v120, v173);
    *(v1 + 304) = 0;
    v145 = *(v1 + 160);
    v146 = *(v1 + 168);
    v147 = *(v1 + 152);

    [v173 makeKeyAndVisible];
    v148 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    sub_100063E0C(v146 + OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences, v175 - 48);
    v149 = v173;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_1000633B8(*((*(v146 + v148) & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    [v147 setContentOpaque:0];
    [v147 setSwipeDismissalStyle:0];
    [v147 setAllowsMenuButtonDismissal:0];
    [v147 setSceneDeactivationReason:0];
    sub_100063CC4();
    _StringGuts.grow(_:)(42);

    sub_100037B40();
    sub_100063D94();
    v177 = v151 + 9;
    v178 = v150;
    v152 = [v147 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100063E3C();

    v153._countAndFlagsBits = sub_100063DC8();
    String.append(_:)(v153);

    v154._countAndFlagsBits = 0x73736573206F7420;
    v154._object = 0xEC000000206E6F69;
    String.append(_:)(v154);
    v155 = [v145 description];
    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    v159._countAndFlagsBits = v156;
    v159._object = v158;
    String.append(_:)(v159);

    v161 = v177;
    v160 = v178;
    v162 = static os_log_type_t.info.getter();

    v163 = Logger.logObject.getter();

    if (os_log_type_enabled(v163, v162))
    {
      v164 = sub_100039EE0();
      v165 = sub_100039EC8();
      v177 = v165;
      *v164 = 136446466;
      v167 = sub_100037CAC(v165, v166, &v177);
      sub_100030020(v167);
      v168 = sub_1000847A8(v161, v160, &v177);

      *(v164 + 14) = v168;
      _os_log_impl(&_mh_execute_header, v163, v162, "%{public}s%{public}s", v164, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v165);
      sub_10004AB24();
    }

    else
    {
    }

    sub_100063CD4();
    sub_100049EA0(v163, &qword_1000D31B8, &qword_100096AE0);
  }

  else
  {

    sub_100063E24();
    if (!v42)
    {
      sub_100039E60(&qword_1000D1AE8);
    }

    v43 = *(v1 + 152);
    v44 = sub_1000128C0(*(v1 + 240), qword_1000E4560);
    sub_100063CC4();
    _StringGuts.grow(_:)(53);
    sub_100063D94();
    v46._countAndFlagsBits = v45 + 34;
    v46._object = (v47 | 0x8000000000000000);
    String.append(_:)(v46);
    v48 = [v43 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);

    v54 = v177;
    v53 = v178;
    v55 = static os_log_type_t.fault.getter();

    v56 = Logger.logObject.getter();

    if (os_log_type_enabled(v56, v55))
    {
      sub_100039EE0();
      v57 = sub_100063D1C();
      v177 = v57;
      *v44 = 136446466;
      *(v44 + 4) = sub_100037CAC(v57, v58, &v177);
      sub_100063DA0();
      v59 = sub_1000847A8(v54, v53, &v177);

      *(v44 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v56, v55, "%{public}s%{public}s", v44, 0x16u);
      swift_arrayDestroy();
      sub_100039E94(v57);
      sub_100063D00();
    }

    else
    {
    }
  }

  sub_100063D54();

  sub_100019370();

  return v140();
}

uint64_t sub_100061BC0()
{
  sub_100013A88();
  sub_1000660F4(v0[39], v1, v2, v3, v4);

  v5 = v0[34];
  v6 = v0[35];

  return _swift_task_switch(sub_100061C30, v5, v6);
}

uint64_t sub_100061C30()
{
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[19];

  [v3 invalidate];

  sub_100049EA0(v2, &qword_1000D31B8, &qword_100096AE0);
  sub_100063D54();

  sub_100019370();

  return v4();
}

uint64_t sub_100061D28()
{
  sub_100013A88();
  sub_1000660F4(v0[38], v1, v2, v3, v4);
  v5 = v0[34];
  v6 = v0[35];

  return _swift_task_switch(sub_100061D88, v5, v6);
}

uint64_t sub_100061D88()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[19];

  [v3 invalidate];

  sub_100063CD4();
  sub_100049EA0(v1, &qword_1000D31B8, &qword_100096AE0);
  sub_100063D54();

  sub_100019370();

  return v4();
}

uint64_t sub_100061F24(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v68 = a2;
  v63 = a5;
  v58 = sub_100012634(&qword_1000D3A58, &qword_100097E00);
  v8 = __chkstk_darwin(v58);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v53 - v10;
  v57 = type metadata accessor for BundleMerchandisingViewModel(0);
  __chkstk_darwin(v57);
  v61 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RemoteAlertConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v66 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v14, qword_1000E4560);
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v15._object = 0x80000001000A1580;
  v15._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a1;
  v16._object = v68;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8250;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  _print_unlocked<A, B>(_:_:)();
  v18 = v70;
  v64 = v69;
  v19 = *a3;
  v20 = a3[1];
  v21 = static os_log_type_t.default.getter();

  v22 = v20;
  v23 = Logger.logObject.getter();

  v65 = v21;
  v24 = os_log_type_enabled(v23, v21);
  v60 = a1;
  v55 = v22;
  v56 = v19;
  if (v24)
  {
    v25 = v22;
    v26 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v73 = v54;
    *v26 = 136446466;
    v69 = 91;
    v70 = 0xE100000000000000;
    v27._countAndFlagsBits = v19;
    v27._object = v25;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 8285;
    v28._object = 0xE200000000000000;
    String.append(_:)(v28);
    v29 = sub_1000847A8(v69, v70, &v73);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2082;
    v30 = sub_1000847A8(v64, v18, &v73);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v23, v65, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v31 = v66;
  sub_100063B30(a3, v66, type metadata accessor for RemoteAlertConfiguration);
  type metadata accessor for AppStoreOfferViewService();
  swift_allocObject();

  v32 = sub_100064B70(v31, a4);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100063ADC();
  v33 = v67;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (v33)
  {
  }

  v35 = v69;
  v36 = v70;
  v37 = v71;
  v38 = v72;
  v39 = v61;
  sub_100063B30(a3, v61, type metadata accessor for RemoteAlertConfiguration);
  v40 = v39 + *(v57 + 20);
  *v40 = v35;
  *(v40 + 8) = v36;
  *(v40 + 16) = v37;
  *(v40 + 24) = v38;
  v41 = type metadata accessor for BundleMerchandisingOfferView(0);
  v42 = v62;
  v43 = v39;
  sub_100063B30(v39, &v62[*(v41 + 20)], type metadata accessor for BundleMerchandisingViewModel);
  *v42 = swift_getKeyPath();
  *(v42 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v45 = v59;
  v46 = (v42 + *(v58 + 36));
  *v46 = KeyPath;
  v46[1] = v32;
  sub_100063BC0(v42, v45, &qword_1000D3A58, &qword_100097E00);
  v47 = objc_allocWithZone(sub_100012634(&qword_1000D3A68, &qword_100097E30));
  v48 = v55;

  v49 = v68;

  v50 = sub_10005FB70(v56, v48, v60, v49, v45);
  objc_allocWithZone(sub_100012634(&unk_1000D3A70, &qword_100097E38));
  v51 = v50;
  v52 = sub_10005FB08(v51);
  swift_unknownObjectWeakAssign();
  [v63 setRootViewController:v52];

  sub_100049EA0(v42, &qword_1000D3A58, &qword_100097E00);
  return sub_100063C20(v43, type metadata accessor for BundleMerchandisingViewModel);
}

void sub_100062578(void *a1)
{
  sub_10004A7DC();
  _StringGuts.grow(_:)(27);

  sub_100037B40();
  v64 = 0xD000000000000019;
  v65 = v2;
  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8 = v65;
  v9 = static os_log_type_t.info.getter();

  v10 = Logger.logObject.getter();

  v11 = &off_100093000;
  if (os_log_type_enabled(v10, v9))
  {
    v12 = sub_100039EE0();
    v13 = sub_100039EC8();
    v64 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_100037CAC(v13, v14, &v64);
    *(v12 + 12) = 2082;
    v15 = sub_1000847A8(0xD000000000000019, v8, &v64);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    sub_100039E94(v13);
    v11 = &off_100093000;
    sub_100039E94(v12);
  }

  else
  {
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = a1;
    v19 = [v17 keyWindow];
    if (v19)
    {
      v63 = v19;

LABEL_15:
      [v63 setAlpha:1.0];

      sub_100063E54();

      return;
    }

    v38 = [v17 windows];
    sub_1000633E4();
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100082B18(v39))
    {
      if ((v39 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v40 = *(v39 + 32);
      }

      v63 = v40;

      goto LABEL_15;
    }

    sub_10004A7DC();
    _StringGuts.grow(_:)(49);

    sub_100037B40();
    v64 = 0xD000000000000023;
    v65 = v44;
    v45 = [v17 description];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49._countAndFlagsBits = v46;
    v49._object = v48;
    String.append(_:)(v49);

    v50._countAndFlagsBits = 0x73776F646E69570ALL;
    v50._object = 0xEA0000000000203ALL;
    String.append(_:)(v50);
    v51 = [v17 windows];

    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    Array.description.getter();
    sub_100063E3C();

    v52._countAndFlagsBits = sub_100063DC8();
    String.append(_:)(v52);

    v54 = v64;
    v53 = v65;
    v55 = static os_log_type_t.error.getter();

    v56 = Logger.logObject.getter();

    if (os_log_type_enabled(v56, v55))
    {
      v57 = sub_100039EE0();
      v58 = sub_100039EC8();
      v64 = v58;
      *v57 = *(v11 + 97);
      v60 = sub_100037CAC(v58, v59, &v64);
      sub_100037B8C(v60);
      v61 = sub_1000847A8(v54, v53, &v64);

      *(v57 + 14) = v61;
      sub_100063DD4(&_mh_execute_header, v62, v55, "%{public}s%{public}s");
      sub_100037BD0();
      sub_100039E94(v58);
      sub_100039E94(v57);

      goto LABEL_9;
    }
  }

  else
  {
    sub_10004A7DC();
    _StringGuts.grow(_:)(25);

    sub_100037B40();
    v64 = 0xD000000000000017;
    v65 = v20;
    v21 = [a1 description];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25._countAndFlagsBits = v22;
    v25._object = v24;
    String.append(_:)(v25);

    v27 = v64;
    v26 = v65;
    v28 = static os_log_type_t.error.getter();

    v29 = Logger.logObject.getter();

    if (os_log_type_enabled(v29, v28))
    {
      v30 = sub_100039EE0();
      v31 = sub_100039EC8();
      v64 = v31;
      *v30 = *(v11 + 97);
      v33 = sub_100037CAC(v31, v32, &v64);
      sub_100037B8C(v33);
      v34 = sub_1000847A8(v27, v26, &v64);

      *(v30 + 14) = v34;
      sub_100063DD4(&_mh_execute_header, v35, v28, "%{public}s%{public}s");
      sub_100063E70(v36, v37, (&type metadata for Any + 1));
      sub_10004AB24();
      sub_100039E94(v30);

LABEL_9:
      sub_100063E54();
      return;
    }
  }

  sub_100063E54();
}

char *sub_100062BC8(void *a1)
{
  v2 = v1;
  v4 = 0xD000000000000016;
  v5 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v74 - v6;
  v86 = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  sub_100037B40();
  v86 = 0xD000000000000016;
  v87 = v8;
  v9 = [a1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100063E3C();

  v10._countAndFlagsBits = sub_100063DC8();
  String.append(_:)(v10);

  v12 = v86;
  v11 = v87;
  v13 = static os_log_type_t.info.getter();

  v81 = v2;
  v14 = Logger.logObject.getter();

  v15 = &type metadata for Any;
  if (os_log_type_enabled(v14, v13))
  {
    v16 = sub_100039EE0();
    v17 = sub_100039EC8();
    v86 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_100037CAC(v17, v18, &v86);
    *(v16 + 12) = 2082;
    v19 = sub_1000847A8(v12, v11, &v86);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v16, 0x16u);
    sub_100063DF0();
    v20 = v17;
    v4 = 0xD000000000000016;
    sub_100039E94(v20);
    sub_100039E94(v16);
  }

  else
  {
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v22 = result;
    objc_opt_self();
    v23 = swift_dynamicCastObjCClass();
    v75 = a1;
    if (v23)
    {
      v24 = v75;
      v25 = sub_100063714(v23);
      if (v26)
      {
        v15 = v25;
        v27 = v26;
        v84 = v24;
        if (qword_1000D1AE8 != -1)
        {
LABEL_72:
          sub_100039E60(&qword_1000D1AE8);
        }

        v28 = type metadata accessor for SKLogger(0);
        sub_1000128C0(v28, qword_1000E4560);
        v86 = 0;
        v87 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        sub_100037B40();
        v86 = v4 + 5;
        v87 = v29;
        v30 = [v23 description];
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        v34._countAndFlagsBits = v31;
        v34._object = v33;
        String.append(_:)(v34);

        v35 = v86;
        v4 = v87;

        v36 = static os_log_type_t.default.getter();

        v37 = Logger.logObject.getter();

        if (os_log_type_enabled(v37, v36))
        {
          v38 = sub_100039EE0();
          v82 = v35;
          v39 = v38;
          v40 = sub_100039EC8();
          LODWORD(v83) = v36;
          v85[0] = v40;
          *v39 = 136446466;
          v86 = 91;
          v87 = 0xE100000000000000;
          v41._countAndFlagsBits = v15;
          v41._object = v27;
          String.append(_:)(v41);
          v42._countAndFlagsBits = 8285;
          v42._object = 0xE200000000000000;
          String.append(_:)(v42);
          v43 = v15;
          v44 = sub_1000847A8(v86, v87, v85);

          *(v39 + 4) = v44;
          v15 = v43;
          *(v39 + 12) = 2082;
          v45 = sub_1000847A8(v82, v4, v85);

          *(v39 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v37, v83, "%{public}s%{public}s", v39, 0x16u);
          sub_100063E70(v46, v47, (&type metadata for Any + 1));
          sub_10004AB24();
          sub_100039E94(v39);
        }

        else
        {
        }

        v48 = v81;
        type metadata accessor for RemoteAlertConfiguration(0);
        sub_10002FEBC();
        sub_10001267C(v49, v50, v51, v52);
        sub_100063E0C(v48 + OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_alertConfigurations, &v86);
        sub_10003A3A8(v7, v15, v27);
        swift_endAccess();
      }

      else
      {
      }
    }

    v53 = [v22 windows];
    v76 = sub_1000633E4();
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = sub_100082B18(v54);
    v79 = v54;
    v80 = v55;
    v27 = 0;
    v7 = 0;
    v56 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    v77 = v54 & 0xFFFFFFFFFFFFFF8;
    v78 = v54 & 0xC000000000000001;
    v23 = v81;
    v84 = OBJC_IVAR____TtC22StoreKitUISceneService37StoreKitAngelRemoteAlertSceneDelegate_windowReferences;
    while (1)
    {
      if (v80 == v27)
      {
      }

      if (v78)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v77 + 16))
        {
          goto LABEL_64;
        }

        v57 = *(v79 + 8 * v27 + 32);
      }

      v58 = v57;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_100063E0C(&v56[v23], &v86);
      v59 = v58;
      sub_100063428(&v56[v23], v59);
      if (v7)
      {
        break;
      }

      v15 = v60;
      v4 = *&v56[v23];
      v22 = (v4 >> 62);
      if (v4 >> 62)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v61 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v61 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v62 = v61 - v15;
      if (v61 < v15)
      {
        goto LABEL_65;
      }

      if (v15 < 0)
      {
        goto LABEL_66;
      }

      if (v22)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v63 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v63 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v63 < v61)
      {
        goto LABEL_67;
      }

      v83 = 0;
      v7 = v59;
      v64 = v15 - v61;
      if (__OFSUB__(0, v62))
      {
        goto LABEL_68;
      }

      if (v22)
      {
        sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
        v65 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v65 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v66 = v65 - v62;
      if (__OFADD__(v65, v64))
      {
        goto LABEL_69;
      }

      v82 = v27;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *&v84[v23] = v4;
      if (v22)
      {
        v68 = 0;
      }

      else
      {
        v68 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      if (v68 == 1 && (v27 = v4 & 0xFFFFFFFFFFFFFF8, v66 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1))
      {
        v56 = v84;
      }

      else
      {
        if (v22)
        {
          sub_100063E48(v4 & 0xFFFFFFFFFFFFFF8);
          _CocoaArrayWrapper.endIndex.getter();
        }

        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v56 = v84;
        *&v84[v81] = v4;
        v27 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v22 = (v27 + 32);
      v23 = v27 + 32 + 8 * v15;
      swift_arrayDestroy();
      if (v62)
      {
        if (v4 >> 62)
        {
          v69 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v69 = *(v27 + 16);
        }

        v70 = v69 - v61;
        if (__OFSUB__(v69, v61))
        {
          goto LABEL_70;
        }

        v71 = &v22[8 * v61];
        if (v61 != v15 || v23 >= &v71[8 * v70])
        {
          memmove((v27 + 32 + 8 * v15), v71, 8 * v70);
        }

        if (v4 >> 62)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v73 = *(v27 + 16);
        }

        if (__OFADD__(v73, v64))
        {
          goto LABEL_71;
        }

        *(v27 + 16) = v73 - v62;
      }

      v23 = v81;
      *&v56[v81] = v4;
      swift_endAccess();

      v7 = v83;
      v27 = v82 + 1;
    }

    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000633B8(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1);
  }

  return result;
}

unint64_t sub_1000633E4()
{
  result = qword_1000D3A30;
  if (!qword_1000D3A30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000D3A30);
  }

  return result;
}

void sub_100063428(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_100063640(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    sub_100082B18(v4);
LABEL_36:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_36;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (v22 != v5)
        {
          if (v8 != v9)
          {
            v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            goto LABEL_16;
          }

LABEL_26:
          v21 = __OFADD__(v8++, 1);
          if (v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          break;
        }

        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v11)
        {
          goto LABEL_38;
        }

        v12 = *(v4 + 32 + 8 * v9);
        if (v12 != v5)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v11)
            {
              goto LABEL_42;
            }

            v13 = *(v4 + 32 + 8 * v8);
            v14 = v12;
LABEL_16:
            v15 = v14;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1000637F0(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_1000637F0(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_43;
            }

            v19 = v17 + 8 * v9;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v4;
          }

          goto LABEL_26;
        }
      }

      v21 = __OFADD__(v9++, 1);
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

unint64_t sub_100063640(uint64_t a1, void *a2)
{
  result = sub_100082B18(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100063714(void *a1)
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

uint64_t sub_100063778(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000637F0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100063854()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000638AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100063980;

  return sub_1000603A8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100063980()
{
  sub_100013A88();

  sub_100019370();

  return v0();
}

uint64_t sub_100063A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&qword_1000D31B8, &qword_100096AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100063ADC()
{
  result = qword_1000D3A60;
  if (!qword_1000D3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3A60);
  }

  return result;
}

uint64_t sub_100063B30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100019360();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100063B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064AF8();
  *a1 = result;
  return result;
}

uint64_t sub_100063BC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100012634(a3, a4);
  sub_100019360();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100063C20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100019360();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100063CD4()
{
  v2 = *(v0 + 184);

  return sub_100063C20(v2, type metadata accessor for RemoteAlertConfiguration);
}

uint64_t sub_100063D00()
{
}

uint64_t sub_100063D1C()
{

  return swift_slowAlloc();
}

void sub_100063D38()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100063D54()
{
}

unint64_t sub_100063D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18)
{
  v19 = a17;
  v20 = a18;

  return sub_1000847A8(v19, v20, &a16);
}

void sub_100063DAC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

void sub_100063DD4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_100063DF0()
{

  return swift_arrayDestroy();
}

uint64_t sub_100063E0C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100063E48@<X0>(uint64_t a1@<X8>)
{
  if (v1 < 0)
  {
    return v1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100063E70(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

uint64_t sub_100063E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  sub_10001267C(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a2;
  v10[6] = a3;
  v11 = v3;

  sub_10006BA84(0, 0, v8, &unk_100097E88, v10);
}

uint64_t sub_100063F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100063FA8, 0, 0);
}

uint64_t sub_100063FA8()
{
  v18 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v2, qword_1000E4560);
  v3 = *(v1 + OBJC_IVAR___AngelDialogContext_logKey);
  v4 = *(v1 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v5 = static os_log_type_t.error.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v17[0] = v8;
    v17[1] = 91;
    v17[2] = 0xE100000000000000;
    v9._countAndFlagsBits = v3;
    v9._object = v4;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 8285;
    v10._object = 0xE200000000000000;
    String.append(_:)(v10);
    v11 = sub_1000847A8(91, 0xE100000000000000, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000847A8(0xD00000000000001FLL, 0x80000001000A1660, v17);
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = v0[3];
  sub_100018F34();
  v13 = swift_allocError();
  *v14 = 9;
  v12(0, v13);

  v15 = v0[1];

  return v15();
}

void sub_100064294(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v5, qword_1000E4560);
  v6 = *(a2 + OBJC_IVAR___AngelDialogContext_logKey);
  v7 = *(a2 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v8 = static os_log_type_t.error.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446466;
    v17 = v11;
    v12._countAndFlagsBits = v6;
    v12._object = v7;
    String.append(_:)(v12);
    v13._countAndFlagsBits = 8285;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    v14 = sub_1000847A8(91, 0xE100000000000000, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1000847A8(0xD000000000000019, 0x80000001000A1640, &v17);
    _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_100018F34();
  swift_allocError();
  *v15 = 9;
  v16 = _convertErrorToNSError(_:)();
  (a3)[2](a3, 0, v16);

  _Block_release(a3);
}

void sub_100064560(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v6, qword_1000E4560);
  v7 = *(a3 + OBJC_IVAR___AngelDialogContext_logKey);
  v8 = *(a3 + OBJC_IVAR___AngelDialogContext_logKey + 8);
  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v18 = v12;
    v13._countAndFlagsBits = v7;
    v13._object = v8;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_1000847A8(0xD000000000000020, 0x80000001000A1610, &v18);
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  sub_100018F34();
  swift_allocError();
  *v16 = 9;
  v17 = _convertErrorToNSError(_:)();
  (a4)[2](a4, 0, v17);

  _Block_release(a4);
}

uint64_t sub_1000648BC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000648F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006493C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100064A04;

  return sub_100063F84(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100064A04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100064AF8()
{
  sub_10006532C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100064B70(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RemoteAlertConfiguration(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  sub_10004DA2C(a1, v7);
  type metadata accessor for StoreKitViewService(0);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10004DA90(a1);
  sub_1000497D8(v7, v8 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  *(v2 + 112) = v8;
  *(v2 + 120) = a2;
  return v2;
}

uint64_t sub_100064C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return sub_100065390(sub_100064C68, v4);
}

uint64_t sub_100064C68()
{
  v0[10] = *(v0[9] + 112);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_100064D0C;
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return sub_10006A760(v5, v4, v2, v3);
}

uint64_t sub_100064D0C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[12] = v2;

  v7 = v6[9];
  if (v2)
  {
    v8 = sub_100064ED8;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v8 = sub_100064E4C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100064E4C()
{
  v1 = *(*(v0 + 72) + 120);
  *(v0 + 120) = v1;
  return sub_100065390(sub_100064E6C, v1);
}

uint64_t sub_100064E6C()
{
  sub_100066960(*(v0 + 112), *(v0 + 104));
  v1 = *(v0 + 8);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1(v2, v3);
}

uint64_t sub_100064ED8()
{
  v22 = v0;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[10];
  v3 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v3, qword_1000E4560);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v4._object = 0x80000001000A16E0;
  v4._countAndFlagsBits = 0xD00000000000001CLL;
  String.append(_:)(v4);
  v0[4] = v1;
  sub_100012634(&qword_1000D1C80, &qword_1000935C0);
  _print_unlocked<A, B>(_:_:)();
  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  v7 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration + 8);

  v9 = static os_log_type_t.error.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v19 = v12;
    v20 = 91;
    v21 = 0xE100000000000000;
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1000847A8(v6, v5, &v19);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = *(v0[9] + 120);
  v0[16] = v17;

  return _swift_task_switch(sub_1000651A4, v17, 0);
}

uint64_t sub_1000651A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 72);
  sub_100066568(*(v5 + 96), a2, a3, a4, a5);

  return _swift_task_switch(sub_100065214, v6, 0);
}

uint64_t sub_100065214(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100065280()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000652B0()
{
  sub_100065280();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100065300@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E578();
  *a1 = result;
  return result;
}

unint64_t sub_10006532C()
{
  result = qword_1000D3B98;
  if (!qword_1000D3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3B98);
  }

  return result;
}

NSObject *sub_100065398(void *a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for SKLogger(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v122 = &v112 - v12;
  __chkstk_darwin(v11);
  v14 = &v112 - v13;
  v15 = [a1 activationContext];
  if (!v15)
  {
    goto LABEL_4;
  }

  v16 = v15;
  v17 = [v15 actions];

  v18 = sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
  v19 = sub_100066EA8();
  v123 = v18;
  v121 = v19;
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (sub_100066DF8(v20) < 2)
  {

LABEL_4:
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v21 = sub_1000128C0(v7, qword_1000E4560);
    sub_100012C50(v21, v10);
    sub_100066FA8();
    _StringGuts.grow(_:)(75);
    v22._object = 0x80000001000A1870;
    v22._countAndFlagsBits = 0xD000000000000028;
    String.append(_:)(v22);
    *&v124 = sub_100063714(a1);
    *(&v124 + 1) = v23;
    sub_100012634(&unk_1000D3A40, &qword_100094E90);
    v24._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 0xD000000000000021;
    v25._object = 0x80000001000A18A0;
    String.append(_:)(v25);
    v26 = v126;
    v27 = static os_log_type_t.error.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      sub_10002FF14();
      v29 = swift_slowAlloc();
      sub_10002FE48();
      *&v124 = swift_slowAlloc();
      *v29 = 136446466;
      sub_10004A980();
      *&v126 = v30;
      *(&v126 + 1) = v31;
      v33._countAndFlagsBits = v32;
      v33._object = a3;
      String.append(_:)(v33);
      v34._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v34);
      sub_100067020();

      sub_1000670D0();
      v36 = sub_1000847A8(v26, *(&v26 + 1), v35);

      *(v29 + 14) = v36;
      sub_100067144(&_mh_execute_header, v37, v38, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    v39 = v10;
    goto LABEL_44;
  }

  v112 = v3;
  v116 = v7;
  v117 = a1;
  v113 = v14;
  v115 = a2;
  v118 = a3;
  v114 = v20 & 0xC000000000000001;
  v120 = v20;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v40 = v128;
    v41 = v129;
    v42 = v130;
    v43 = v131;
    v44 = v132;
  }

  else
  {
    v41 = v20 + 56;
    sub_100067008();
    v44 = v45 & v46;

    v42 = v3;
    v43 = 0;
    v40 = v20;
  }

  v119 = v42;
  v47 = (v42 + 64) >> 6;
  if ((v40 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v17 = (v40 & 0x7FFFFFFFFFFFFFFFLL);
  v48 = __CocoaSet.Iterator.next()();
  if (!v48 || (*&v124 = v48, swift_dynamicCast(), v49 = v126, v50 = v43, v51 = v44, !v126))
  {
LABEL_39:
    sub_100066FE0();

    if (qword_1000D1AE8 != -1)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v54 = [v49 info];
    if (!v54)
    {
      v126 = 0u;
      v127 = 0u;
LABEL_35:
      sub_10002090C(&v126);
      goto LABEL_36;
    }

    v17 = v54;
    v138 = v49;
    v55 = [v54 objectForSetting:0];

    if (v55)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v124 = 0u;
      v125 = 0u;
    }

    v126 = v124;
    v127 = v125;
    v49 = v138;
    if (!*(&v125 + 1))
    {
      goto LABEL_35;
    }

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_36:

LABEL_37:
    v43 = v50;
    v44 = v51;
    if (v40 < 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    v52 = v43;
    v53 = v44;
    v50 = v43;
    if (!v44)
    {
      while (1)
      {
        v50 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v50 >= v47)
        {
          goto LABEL_39;
        }

        v53 = *(v41 + 8 * v50);
        ++v52;
        if (v53)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_82:

LABEL_83:
      sub_10006703C(v122);
      type metadata accessor for BSActionHandler();
      v28 = swift_allocObject();
      v111 = v118;

      sub_100066014(v138, v17, v115, v111);
      return v28;
    }

LABEL_21:
    v51 = (v53 - 1) & v53;
    v49 = *(*(v40 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v53)))));
    if (!v49)
    {
      goto LABEL_39;
    }
  }

  v17 = *(&v124 + 1);
  if (v124 != 0x6573616863727570 || *(&v124 + 1) != 0xE800000000000000)
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
  }

LABEL_47:
  sub_100066FE0();
  if (v114)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v76 = v133;
    v75 = v134;
    v3 = v135;
    v77 = v136;
    v78 = v137;
  }

  else
  {
    v76 = v120;
    v75 = v120 + 56;
    sub_100067008();
    v78 = v79 & v80;

    v77 = 0;
  }

  v121 = v3;
  v119 = 0x80000001000A1930;
  v122 = v76;
  while (2)
  {
    if (v76 < 0)
    {
      v85 = __CocoaSet.Iterator.next()();
      if (!v85)
      {
        goto LABEL_75;
      }

      *&v124 = v85;
      swift_dynamicCast();
      v17 = v126;
      v83 = v77;
      v84 = v78;
LABEL_59:
      if (!v17)
      {
LABEL_75:
        sub_10006703C(v76);
        if (qword_1000D1AE8 != -1)
        {
          sub_10002FBAC();
          swift_once();
        }

        v91 = sub_1000128C0(v116, qword_1000E4560);
        v92 = v113;
        sub_100012C50(v91, v113);
        sub_100066FA8();
        _StringGuts.grow(_:)(86);
        sub_100066F4C("Could not create view service for scene ");
        *&v124 = sub_100063714(v117);
        *(&v124 + 1) = v93;
        sub_100012634(&unk_1000D3A40, &qword_100094E90);
        v94._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v94);

        v95._countAndFlagsBits = 0xD00000000000002CLL;
        v95._object = 0x80000001000A1900;
        String.append(_:)(v95);
        v96 = v126;
        v97 = static os_log_type_t.error.getter();
        v28 = Logger.logObject.getter();
        v98 = os_log_type_enabled(v28, v97);
        v99 = v118;
        if (v98)
        {
          sub_10002FF14();
          v100 = swift_slowAlloc();
          v123 = v96;
          v101 = v100;
          sub_10002FE48();
          *&v124 = swift_slowAlloc();
          *v101 = 136446466;
          sub_10004A980();
          v103._countAndFlagsBits = sub_1000670BC(v102);
          v103._object = v99;
          String.append(_:)(v103);
          v104._countAndFlagsBits = sub_100037BA8();
          String.append(_:)(v104);
          sub_100067020();

          sub_1000670D0();
          v106 = sub_1000847A8(v123, *(&v96 + 1), v105);

          *(v101 + 14) = v106;
          sub_100067144(&_mh_execute_header, v107, v108, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_10002FCC8();

          sub_10002FCC8();
        }

        else
        {
        }

        sub_1000498A0(v92);
        sub_100018F34();
        v109 = swift_allocError();
        sub_100067104(v109, v110);

        return v28;
      }

      v86 = [v17 info];
      if (!v86)
      {
        v126 = 0u;
        v127 = 0u;
LABEL_73:
        sub_10002090C(&v126);
LABEL_74:

        v77 = v83;
        v78 = v84;
        continue;
      }

      v87 = v86;
      v88 = [v86 objectForSetting:0];

      if (v88)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
      }

      v126 = v124;
      v127 = v125;
      v76 = v122;
      if (!*(&v125 + 1))
      {
        goto LABEL_73;
      }

      if (!swift_dynamicCast())
      {
        goto LABEL_74;
      }

      if (v124 == 0xD000000000000012 && v119 == *(&v124 + 1))
      {
        goto LABEL_82;
      }

      v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v90)
      {
        goto LABEL_83;
      }

      v77 = v83;
      v78 = v84;
      v76 = v122;
      continue;
    }

    break;
  }

  v81 = v77;
  v82 = v78;
  v83 = v77;
  if (v78)
  {
LABEL_56:
    v84 = (v82 - 1) & v82;
    v17 = *(*(v76 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v82)))));
    goto LABEL_59;
  }

  while (1)
  {
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v83 >= ((v3 + 64) >> 6))
    {
      goto LABEL_75;
    }

    v82 = *(v75 + 8 * v83);
    ++v81;
    if (v82)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_85:
  sub_10002FBAC();
  swift_once();
LABEL_40:
  v58 = sub_1000128C0(v116, qword_1000E4560);
  v59 = v122;
  sub_100012C50(v58, v122);
  sub_100066FA8();
  _StringGuts.grow(_:)(82);
  sub_100066F4C("Could not create view service for scene ");
  *&v124 = sub_100063714(v117);
  *(&v124 + 1) = v60;
  sub_100012634(&unk_1000D3A40, &qword_100094E90);
  v61._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v61);

  sub_100066F4C(" because the purchase action is missing.");
  v62 = v126;
  v63 = static os_log_type_t.error.getter();
  v28 = Logger.logObject.getter();
  v64 = os_log_type_enabled(v28, v63);
  v65 = v118;
  if (v64)
  {
    sub_10002FF14();
    v66 = swift_slowAlloc();
    sub_10002FE48();
    *&v124 = swift_slowAlloc();
    *v66 = 136446466;
    sub_10004A980();
    v68._countAndFlagsBits = sub_1000670BC(v67);
    v68._object = v65;
    String.append(_:)(v68);
    v69._countAndFlagsBits = sub_100037BA8();
    String.append(_:)(v69);
    v70 = sub_100067020();

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = sub_1000847A8(v62, *(&v62 + 1), &v124);

    *(v66 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v28, v63, "%{public}s%{public}s", v66, 0x16u);
    sub_100066F98();
    swift_arrayDestroy();
    sub_10002FCC8();

    sub_10002FCC8();
  }

  else
  {
  }

  v39 = v59;
LABEL_44:
  sub_1000498A0(v39);
  sub_100018F34();
  v72 = swift_allocError();
  sub_100067104(v72, v73);
  return v28;
}

void *sub_100066014(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
  sub_100012634(&qword_1000D3CA0, &qword_100098008);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100093340;
  *(inited + 32) = a1;
  *(inited + 40) = 1;
  *(inited + 48) = a2;
  *(inited + 56) = 1;
  sub_100012BAC(0, &qword_1000D31B0, BSAction_ptr);
  sub_100066EA8();
  v10 = a1;
  v11 = a2;
  v4[18] = Dictionary.init(dictionaryLiteral:)();
  return v4;
}

void sub_1000660F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = v5[15];
  sub_1000670E4(a1, a2, a3, a4, a5);
  v9 = v5[18];

  v10 = sub_100021C6C(v8, v9);

  if (v10 == 2 || (v10 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v29 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v29, qword_1000E4560);
    v30 = v6[16];
    v31 = v6[17];
    v32 = static os_log_type_t.error.getter();

    v33 = Logger.logObject.getter();

    if (os_log_type_enabled(v33, v32))
    {
      sub_10002FF14();
      v34 = swift_slowAlloc();
      sub_10002FE48();
      v53[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_100066F18();
      v35._countAndFlagsBits = v30;
      v35._object = v31;
      String.append(_:)(v35);
      v36._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v36);
      sub_100066F6C(v37, v38, v39, v40, v41, v42, v43, v44);

      sub_100066F88();
      *(v34 + 14) = sub_1000847A8(0xD00000000000002ALL, 0x80000001000A1810, v53);
      sub_100066F2C(&_mh_execute_header, v45, v46, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v11 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v11, qword_1000E4560);
    sub_100067124();
    sub_10006707C("Presentation failed due to error: ");
    v53[0] = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v13 = v6[16];
    v12 = v6[17];
    v14 = static os_log_type_t.error.getter();

    v15 = Logger.logObject.getter();

    if (os_log_type_enabled(v15, v14))
    {
      sub_10002FF14();
      v16 = swift_slowAlloc();
      sub_10002FE48();
      v53[0] = swift_slowAlloc();
      *v16 = 136446466;
      sub_100066F18();
      v17._countAndFlagsBits = v13;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v18);
      v27 = sub_100066F6C(v19, v20, v21, v22, v23, v24, v25, v26);

      *(v16 + 4) = v27;
      *(v16 + 12) = 2082;
      v28 = sub_1000847A8(v51, v52, v53);

      *(v16 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
      sub_100066F98();
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    sub_100012BAC(0, &qword_1000D3C90, BSActionResponse_ptr);
    sub_100018F34();
    v47 = swift_allocError();
    *v48 = 16;
    v49 = sub_1000664F8(v47);
    [v8 sendResponse:v49];
    sub_100067164([v8 invalidate]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100066FB8(isUniquelyReferenced_nonNull_native);
    v6[18] = v53[0];
    swift_endAccess();
  }
}

id sub_1000664F8(uint64_t a1)
{
  if (a1)
  {
    v1 = _convertErrorToNSError(_:)();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() responseForError:v1];

  return v2;
}

void sub_100066568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = v5[14];
  sub_1000670E4(a1, a2, a3, a4, a5);
  v9 = v5[18];

  v10 = sub_100021C6C(v8, v9);

  if (v10 == 2 || (v10 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v29 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v29, qword_1000E4560);
    v30 = v6[16];
    v31 = v6[17];
    v32 = static os_log_type_t.error.getter();

    v33 = Logger.logObject.getter();

    if (os_log_type_enabled(v33, v32))
    {
      sub_10002FF14();
      v34 = swift_slowAlloc();
      sub_10002FE48();
      v51[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_100066F18();
      v35._countAndFlagsBits = v30;
      v35._object = v31;
      String.append(_:)(v35);
      v36._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v36);
      sub_100066F6C(v37, v38, v39, v40, v41, v42, v43, v44);

      sub_100066F88();
      *(v34 + 14) = sub_1000847A8(0xD000000000000026, 0x80000001000A1780, v51);
      sub_100066F2C(&_mh_execute_header, v45, v46, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v11 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v11, qword_1000E4560);
    sub_100067124();
    sub_10006707C("Sending purchase failed response: ");
    v51[0] = a1;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v12 = v6[17];
    v13 = static os_log_type_t.error.getter();

    v14 = Logger.logObject.getter();

    if (os_log_type_enabled(v14, v13))
    {
      sub_10002FF14();
      v15 = swift_slowAlloc();
      sub_10002FE48();
      v51[0] = swift_slowAlloc();
      *v15 = 136446466;
      sub_100066F18();
      v17._countAndFlagsBits = v16;
      v17._object = v12;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v18);
      v27 = sub_100066F6C(v19, v20, v21, v22, v23, v24, v25, v26);

      *(v15 + 4) = v27;
      *(v15 + 12) = 2082;
      v28 = sub_1000847A8(v49, v50, v51);

      *(v15 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    sub_100012BAC(0, &qword_1000D3C90, BSActionResponse_ptr);
    swift_errorRetain();
    v47 = sub_1000664F8(a1);
    [v8 sendResponse:v47];
    sub_100067164([v8 invalidate]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100066FB8(isUniquelyReferenced_nonNull_native);
    v6[18] = v51[0];
    swift_endAccess();
  }
}

void sub_100066960(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = v2[14];
  swift_beginAccess();
  v7 = v2[18];

  v8 = sub_100021C6C(v6, v7);

  if (v8 == 2 || (v8 & 1) == 0)
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v21, qword_1000E4560);
    v22 = v3[16];
    v23 = v3[17];
    v24 = static os_log_type_t.error.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      sub_10002FF14();
      v26 = swift_slowAlloc();
      sub_10002FE48();
      v42 = swift_slowAlloc();
      *v26 = 136446466;
      sub_10004A980();
      v39 = v27;
      v41 = v28;
      v29._countAndFlagsBits = v22;
      v29._object = v23;
      String.append(_:)(v29);
      v30._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v30);
      sub_1000847A8(v39, v41, &v42);

      sub_100066F88();
      *(v26 + 14) = sub_1000847A8(0xD000000000000026, 0x80000001000A1780, &v42);
      sub_100066F2C(&_mh_execute_header, v31, v32, "%{public}s%{public}s");
      sub_1000670A0();
      sub_10002FCC8();

      sub_10002FCC8();
    }
  }

  else
  {
    if (qword_1000D1AE8 != -1)
    {
      sub_10002FBAC();
      swift_once();
    }

    v9 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v9, qword_1000E4560);
    _StringGuts.grow(_:)(39);

    v10._countAndFlagsBits = a1;
    v10._object = a2;
    String.append(_:)(v10);
    v11 = v3[17];
    v37 = v3[16];
    v12 = static os_log_type_t.default.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      sub_10002FF14();
      v14 = swift_slowAlloc();
      sub_10002FE48();
      v42 = swift_slowAlloc();
      *v14 = 136446466;
      sub_10004A980();
      v38 = v15;
      v40 = v16;
      v17._countAndFlagsBits = v37;
      v17._object = v11;
      String.append(_:)(v17);
      v18._countAndFlagsBits = sub_100037BA8();
      String.append(_:)(v18);
      v19 = sub_1000847A8(v38, v40, &v42);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v20 = sub_1000847A8(0xD000000000000025, 0x80000001000A17B0, &v42);

      *(v14 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      sub_100066F98();
      swift_arrayDestroy();
      sub_10002FCC8();

      sub_10002FCC8();
    }

    else
    {
    }

    v33 = [objc_allocWithZone(BSMutableSettings) init];
    v34 = String._bridgeToObjectiveC()();
    [v33 setObject:v34 forSetting:1];

    v35 = [objc_opt_self() responseWithInfo:v33];
    [v6 sendResponse:v35];
    [v6 invalidate];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v3[18];
    sub_100049028(0, v6, isUniquelyReferenced_nonNull_native);
    v3[18] = v42;
    swift_endAccess();
  }
}

uint64_t sub_100066DF8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return *(a1 + 16);
  }

  if (a1 < 0)
  {
    return __CocoaSet.count.getter(a1);
  }

  return __CocoaSet.count.getter(a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_100066E18()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100066E58()
{
  sub_100066E18();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100066EA8()
{
  result = qword_1000D3C98;
  if (!qword_1000D3C98)
  {
    sub_100012BAC(255, &qword_1000D31B0, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3C98);
  }

  return result;
}

void sub_100066F2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_100066F4C(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000028;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

unint64_t sub_100066F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_1000847A8(a6, a7, va);
}

uint64_t sub_100066FB8(char a1)
{

  return sub_100049028(0, v1, a1);
}

uint64_t sub_100066FE0()
{

  return sub_100066F10(v0);
}

unint64_t sub_100067020()
{
  v2 = *(v0 - 208);
  v3 = *(v0 - 200);

  return sub_1000847A8(v2, v3, (v0 - 240));
}

uint64_t sub_10006703C(uint64_t a1)
{
  sub_100066F10(a1);
}

void sub_10006707C(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000022;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_1000670A0()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000670BC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 208) = a1;
  *(v2 - 200) = v1;
  return *(v2 - 312);
}

uint64_t sub_1000670E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100067104(uint64_t a1, _BYTE *a2)
{
  *a2 = 13;

  return swift_willThrow();
}

void sub_100067124()
{

  _StringGuts.grow(_:)(36);
}

void sub_100067144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_100067164(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100067194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75)
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

uint64_t sub_10006726C(char a1)
{
  if (a1)
  {
    return 0x4274736575716572;
  }

  else
  {
    return 0x49746375646F7270;
  }
}

uint64_t sub_1000672B4(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v9 = sub_100012634(&qword_1000D3CB8, &qword_100098128);
  sub_100014A8C();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = v16 - v13;
  sub_100012980(a1, a1[3]);
  sub_100067724();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[2] = a2;
  v17 = a3 & 1;
  v19 = 0;
  sub_100033C84();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_100067438(void *a1)
{
  sub_100012634(&qword_1000D3CA8, &qword_100098120);
  sub_100014A8C();
  __chkstk_darwin(v3);
  v4 = a1[3];
  sub_100012980(a1, v4);
  sub_100067724();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100033B34();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = v8;
    KeyedDecodingContainer.decode(_:forKey:)();
    v6 = sub_100067984();
    v7(v6);
  }

  sub_100012A18(a1);
  return v4;
}

uint64_t sub_100067620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100067194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100067648(uint64_t a1)
{
  v2 = sub_100067724();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067684(uint64_t a1)
{
  v2 = sub_100067724();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000676C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100067438(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t sub_100067724()
{
  result = qword_1000D3CB0;
  if (!qword_1000D3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BundleMerchandisingParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100067844);
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

unint64_t sub_100067880()
{
  result = qword_1000D3CC0;
  if (!qword_1000D3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CC0);
  }

  return result;
}

unint64_t sub_1000678D8()
{
  result = qword_1000D3CC8;
  if (!qword_1000D3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CC8);
  }

  return result;
}

unint64_t sub_100067930()
{
  result = qword_1000D3CD0;
  if (!qword_1000D3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3CD0);
  }

  return result;
}

uint64_t sub_10006799C(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6573616863727570;
  }
}

uint64_t sub_1000679D8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000BE7E0, v2);

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

uint64_t sub_100067A2C(char a1)
{
  if (a1)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0x74694B65726F7453;
  }
}

uint64_t sub_100067A8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000679D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100067ABC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067A2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100067AE8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100067B28()
{
  sub_100067AE8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100067B98()
{
  v15 = v0;
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) & 0xFE) == 4)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
      v1 = *(v0 + 16);
    }

    v2 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v2, qword_1000E4560);
    v3 = *(v1 + 112);
    v4 = *(v1 + 120);
    v5 = static os_log_type_t.debug.getter();

    v6 = Logger.logObject.getter();

    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 136446466;
      v14[0] = v8;
      v14[1] = 91;
      v14[2] = 0xE100000000000000;
      v9._countAndFlagsBits = v3;
      v9._object = v4;
      String.append(_:)(v9);
      v10._countAndFlagsBits = 8285;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11 = sub_1000847A8(91, 0xE100000000000000, v14);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2082;
      *(v7 + 14) = sub_1000847A8(0xD00000000000002ELL, 0x80000001000A1B70, v14);
      _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 4;
    [*(v1 + 144) invalidate];
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100067DD0(void *a1)
{
  v2 = v1;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v7, qword_1000E4560);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v32 = 0xD000000000000015;
  v33 = 0x80000001000A1B30;
  v8 = [a1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7461766974636120;
  v13._object = 0xEA00000000006465;
  String.append(_:)(v13);
  v15 = v32;
  v14 = v33;
  v17 = *(v2 + 112);
  v16 = *(v2 + 120);
  v18 = static os_log_type_t.default.getter();

  v19 = Logger.logObject.getter();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v30 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    *v21 = 136446466;
    v31 = v22;
    v32 = 91;
    v33 = 0xE100000000000000;
    v23._countAndFlagsBits = v17;
    v23._object = v16;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 8285;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25 = sub_1000847A8(v32, v33, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1000847A8(v30, v14, &v31);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v27 = type metadata accessor for TaskPriority();
  sub_10001267C(v6, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v2;

  sub_10006BA84(0, 0, v6, &unk_100098500, v28);
}

uint64_t sub_100068178(void *a1)
{
  v2 = v1;
  v4 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v7, qword_1000E4560);
  v32 = 0;
  v33 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v32 = 0xD000000000000015;
  v33 = 0x80000001000A1B30;
  v8 = [a1 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 0x7669746361656420;
  v13._object = 0xEC00000064657461;
  String.append(_:)(v13);
  v15 = v32;
  v14 = v33;
  v17 = *(v2 + 112);
  v16 = *(v2 + 120);
  v18 = static os_log_type_t.default.getter();

  v19 = Logger.logObject.getter();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v30 = v15;
    v21 = v20;
    v22 = swift_slowAlloc();
    *v21 = 136446466;
    v31 = v22;
    v32 = 91;
    v33 = 0xE100000000000000;
    v23._countAndFlagsBits = v17;
    v23._object = v16;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 8285;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25 = sub_1000847A8(v32, v33, &v31);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    v26 = sub_1000847A8(v30, v14, &v31);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v27 = type metadata accessor for TaskPriority();
  sub_10001267C(v6, 1, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v2;

  sub_10006BA84(0, 0, v6, &unk_1000984F0, v28);
}

uint64_t sub_1000684E4()
{
  sub_100013A88();
  *(*(v0 + 16) + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 3;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100068584;

  return sub_100067B78();
}

uint64_t sub_100068584()
{
  sub_100013A88();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10006868C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v5 = a3;

  a4(v5);
}

uint64_t sub_1000686EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100012634(&unk_1000D3EC0, &qword_100093590);
  __chkstk_darwin(v6 - 8);
  v8 = &v53 - v7;
  if (!a2)
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v33, qword_1000E4560);
    v57[0] = 0;
    v57[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v57[0] = 0xD000000000000015;
    v57[1] = 0x80000001000A1B30;
    v34 = [a1 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0x64696C61766E6920;
    v39._object = 0xEC00000064657461;
    String.append(_:)(v39);
    v40 = v57[1];
    v54 = v57[0];
    v41 = *(v3 + 112);
    v42 = *(v3 + 120);
    v43 = static os_log_type_t.default.getter();

    v26 = Logger.logObject.getter();

    if (os_log_type_enabled(v26, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v55 = v8;
      v56 = v45;
      *v44 = 136446466;
      v57[0] = 91;
      v57[1] = 0xE100000000000000;
      v46._countAndFlagsBits = v41;
      v46._object = v42;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 8285;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      v48 = sub_1000847A8(v57[0], v57[1], &v56);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = sub_1000847A8(v54, v40, &v56);

      *(v44 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v26, v43, "%{public}s%{public}s", v44, 0x16u);
      swift_arrayDestroy();
      v8 = v55;

      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_14;
  }

  swift_errorRetain();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v9, qword_1000E4560);
  v57[0] = 0;
  v57[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  strcpy(v57, "Remote alert ");
  HIWORD(v57[1]) = -4864;
  v10 = [a1 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14._countAndFlagsBits = v11;
  v14._object = v13;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x80000001000A1B50;
  String.append(_:)(v15);
  v16 = _convertErrorToNSError(_:)();
  v17 = [v16 description];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22 = v57[1];
  v54 = v57[0];
  v23 = *(v3 + 112);
  v24 = *(v3 + 120);
  v25 = static os_log_type_t.error.getter();

  v26 = Logger.logObject.getter();

  if (!os_log_type_enabled(v26, v25))
  {

    goto LABEL_13;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v55 = v8;
  v56 = v28;
  *v27 = 136446466;
  v57[0] = 91;
  v57[1] = 0xE100000000000000;
  v29._countAndFlagsBits = v23;
  v29._object = v24;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 8285;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  v31 = sub_1000847A8(v57[0], v57[1], &v56);

  *(v27 + 4) = v31;
  *(v27 + 12) = 2082;
  v32 = sub_1000847A8(v54, v22, &v56);

  *(v27 + 14) = v32;
  _os_log_impl(&_mh_execute_header, v26, v25, "%{public}s%{public}s", v27, 0x16u);
  swift_arrayDestroy();
  v8 = v55;

LABEL_10:

LABEL_14:
  v50 = type metadata accessor for TaskPriority();
  sub_10001267C(v8, 1, 1, v50);
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v3;
  v51[5] = a2;
  swift_errorRetain();

  sub_10006BA84(0, 0, v8, &unk_1000984E0, v51);
}

uint64_t sub_100068CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100068D14, a4, 0);
}

uint64_t sub_100068D14()
{
  sub_100013A88();
  sub_100068DE8(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100068DE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100012634(&qword_1000D3E98, &qword_100098330);
  v82 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = &v73 - v5;
  v6 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v77 = &v73 - v11;
  v12 = __chkstk_darwin(v10);
  v76 = &v73 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v73 - v15;
  __chkstk_darwin(v14);
  v18 = &v73 - v17;
  *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_state) = 5;
  v19 = OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_activationContinuation;
  swift_beginAccess();
  sub_100069F3C(v2 + v19, v18);
  v20 = sub_100012898(v18, 1, v4);
  sub_100069FAC(v18);
  if (v20 == 1)
  {
    v81 = v19;
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v21, qword_1000E4560);
    v23 = *(v2 + 112);
    v22 = *(v2 + 120);
    v24 = static os_log_type_t.fault.getter();

    v25 = Logger.logObject.getter();

    if (os_log_type_enabled(v25, v24))
    {
      v75 = "uation";
      v26 = swift_slowAlloc();
      v79 = v4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v78 = v9;
      v83 = v28;
      *v27 = 136446466;
      v85 = 91;
      v86 = 0xE100000000000000;
      v29._countAndFlagsBits = v23;
      v29._object = v22;
      String.append(_:)(v29);
      v30._countAndFlagsBits = 8285;
      v30._object = 0xE200000000000000;
      String.append(_:)(v30);
      v31 = sub_1000847A8(v85, v86, &v83);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2082;
      *(v27 + 14) = sub_1000847A8(0xD000000000000031, v75 | 0x8000000000000000, &v83);
      _os_log_impl(&_mh_execute_header, v25, v24, "%{public}s%{public}s", v27, 0x16u);
      swift_arrayDestroy();
      v9 = v78;

      v4 = v79;
    }

    v19 = v81;
  }

  if (a1)
  {
    sub_100069F3C(v2 + v19, v16);
    if (!sub_100012898(v16, 1, v4))
    {
      v32 = v82;
      v33 = v80;
      (*(v82 + 16))(v80, v16, v4);
      swift_errorRetain();
LABEL_28:
      sub_100069FAC(v16);
      v85 = a1;
      CheckedContinuation.resume(throwing:)();
LABEL_29:
      (*(v32 + 8))(v33, v4);
      goto LABEL_30;
    }

LABEL_22:
    v67 = v16;
    goto LABEL_23;
  }

  v78 = v9;
  v79 = v4;
  v35 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result);
  v34 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 8);
  v36 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16);
  v37 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 17);
  v74 = *(v2 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16);
  v75 = v34;
  if (v37 == 1)
  {
    swift_errorRetain();
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v38, qword_1000E4560);
    v85 = 0;
    v86 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);
    v39._object = 0x80000001000A1AD0;
    v39._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v39);
    v73 = v35;
    v83 = v35;
    sub_100012634(&qword_1000D1C80, &qword_1000935C0);
    _print_unlocked<A, B>(_:_:)();
    v40 = v85;
    v41 = v86;
    v42 = *(v2 + 112);
    v43 = *(v2 + 120);
    v44 = static os_log_type_t.error.getter();

    v45 = Logger.logObject.getter();

    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v81 = v19;
      v47 = v46;
      v48 = swift_slowAlloc();
      v76 = v40;
      v83 = v48;
      *v47 = 136446466;
      v85 = 91;
      v86 = 0xE100000000000000;
      v49._countAndFlagsBits = v42;
      v49._object = v43;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 8285;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51 = sub_1000847A8(v85, v86, &v83);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2082;
      v52 = sub_1000847A8(v76, v41, &v83);

      *(v47 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v45, v44, "%{public}s%{public}s", v47, 0x16u);
      swift_arrayDestroy();

      v19 = v81;
    }

    else
    {
    }

    v9 = v78;
    v4 = v79;
    v16 = v77;
    sub_100069F3C(v2 + v19, v77);
    v66 = sub_100012898(v16, 1, v4);
    a1 = v73;
    if (!v66)
    {
      v32 = v82;
      v33 = v80;
      (*(v82 + 16))(v80, v16, v4);
      goto LABEL_28;
    }

    sub_10006A014(v73, v75, v74, 1);
    goto LABEL_22;
  }

  sub_10006A0B0(v35, v34, v36);
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v53, qword_1000E4560);
  v85 = 0;
  v86 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);
  v83 = v85;
  v84 = v86;
  v54._countAndFlagsBits = 0xD000000000000024;
  v54._object = 0x80000001000A1B00;
  String.append(_:)(v54);
  v85 = v35;
  v86 = v34;
  v87 = v36;
  _print_unlocked<A, B>(_:_:)();
  v55 = v83;
  v56 = v84;
  v57 = *(v2 + 120);
  v77 = *(v2 + 112);
  v58 = static os_log_type_t.default.getter();

  v59 = Logger.logObject.getter();

  if (os_log_type_enabled(v59, v58))
  {
    v60 = swift_slowAlloc();
    v73 = v35;
    v81 = v19;
    v61 = v60;
    v83 = swift_slowAlloc();
    *v61 = 136446466;
    v85 = 91;
    v86 = 0xE100000000000000;
    v62._countAndFlagsBits = v77;
    v62._object = v57;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 8285;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    v64 = sub_1000847A8(v85, v86, &v83);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2082;
    v65 = sub_1000847A8(v55, v56, &v83);

    *(v61 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v59, v58, "%{public}s%{public}s", v61, 0x16u);
    swift_arrayDestroy();

    v19 = v81;
    v35 = v73;
  }

  else
  {
  }

  v4 = v79;
  v68 = v76;
  sub_100069F3C(v2 + v19, v76);
  v69 = sub_100012898(v68, 1, v4);
  v9 = v78;
  v70 = v74;
  v71 = v75;
  if (!v69)
  {
    v32 = v82;
    v33 = v80;
    (*(v82 + 16))(v80, v68, v4);
    sub_100069FAC(v68);
    v85 = v35;
    v86 = v71;
    v87 = v70;
    CheckedContinuation.resume(returning:)();
    goto LABEL_29;
  }

  sub_10006A014(v35, v75, v74, 0);
  v67 = v68;
LABEL_23:
  sub_100069FAC(v67);
LABEL_30:
  sub_10001267C(v9, 1, 1, v4);
  swift_beginAccess();
  sub_10006A040(v9, v2 + v19);
  return swift_endAccess();
}

uint64_t sub_1000697E8()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_1000D1AE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SKLogger(0);
  sub_1000128C0(v2, qword_1000E4560);
  v19 = _typeName(_:qualified:)();
  v20 = v3;
  v4._countAndFlagsBits = 0x74696E69656420;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v6 = v19;
  v5 = v20;
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);

  v9 = static os_log_type_t.default.getter();

  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 136446466;
    v18 = v12;
    v19 = 91;
    v20 = 0xE100000000000000;
    v13._countAndFlagsBits = v8;
    v13._object = v7;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8285;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15 = sub_1000847A8(91, 0xE100000000000000, &v18);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1000847A8(v6, v5, &v18);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100069FAC(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_activationContinuation);
  sub_10006A014(*(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 8), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 16), *(v1 + OBJC_IVAR____TtC22StoreKitUISceneServiceP33_3EE67A5F348B994674DDE062AA21DDE617ActivationContext_result + 17));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100069A78()
{
  v0 = sub_1000697E8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for ActivationContext(uint64_t a1)
{
  result = qword_1000D3E80;
  if (!qword_1000D3E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069AF4()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_100069B50(uint64_t a1)
{
  sub_100069C1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100069C1C(uint64_t a1)
{
  if (!qword_1000D3E90)
  {
    sub_10001CEC4(&qword_1000D3E98, &qword_100098330);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000D3E90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ActivationContext.State(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100069D4CLL);
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

_BYTE *storeEnumTagSinglePayload for RemoteAlertPresenter.Reason(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100069E50);
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

unint64_t sub_100069E8C()
{
  result = qword_1000D3EA0;
  if (!qword_1000D3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3EA0);
  }

  return result;
}

unint64_t sub_100069EE4()
{
  result = qword_1000D3EA8;
  if (!qword_1000D3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D3EA8);
  }

  return result;
}

uint64_t sub_100069F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100069FAC(uint64_t a1)
{
  v2 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006A014(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_10006A020(a1, a2, a3);
  }
}

uint64_t sub_10006A020(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t sub_10006A040(uint64_t a1, uint64_t a2)
{
  v4 = sub_100012634(&unk_1000D3EB0, &qword_1000984D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A0B0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return swift_errorRetain();
  }

  if (!a3)
  {
  }

  return v3;
}

uint64_t sub_10006A0D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006A118()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = sub_10004A854(v3);
  *v4 = v5;
  v6 = sub_10006A344(v4);

  return sub_100068CF4(v6, v7, v8, v2, v1);
}

uint64_t sub_10006A1C4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v5 = sub_10006A344(v3);

  return sub_1000684C4(v5, v6, v7, v1);
}

uint64_t sub_10006A260()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006A2A0()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_10004A854(v2);
  *v3 = v4;
  v5 = sub_10006A344(v3);

  return sub_100068118(v5, v6, v7, v1);
}

uint64_t sub_10006A35C(uint64_t a1, char a2)
{
  *(v3 + 72) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for ProductRequest(0);
  *(v3 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_10006A3F4, v2, 0);
}

uint64_t sub_10006A3F4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = (*(v0 + 24) + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v0 + 72);
  v8 = type metadata accessor for RemoteAlertConfiguration(0);
  sub_10006ABFC(v4 + *(v8 + 36), v1);
  v9 = type metadata accessor for ClientOverride(0);
  sub_10001267C(v1, 0, 1, v9);
  v10 = v1 + v2[5];
  *v10 = v3;
  *(v10 + 8) = v7 & 1;
  *(v1 + v2[6]) = 2;
  *(v1 + v2[7]) = &_swiftEmptySetSingleton;
  *(v1 + v2[8]) = &_swiftEmptySetSingleton;
  v11 = (v1 + v2[9]);
  *v11 = v6;
  v11[1] = v5;
  *(v1 + v2[10]) = 0;

  j__swift_bridgeObjectRetain(v3);
  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *v12 = v0;
  v12[1] = sub_10006A550;

  return sub_100057BD0();
}

uint64_t sub_10006A550(uint64_t a1)
{
  v4 = *v2;
  v4[7] = v1;

  v5 = v4[3];
  if (v1)
  {
    v6 = sub_10006A6F8;
  }

  else
  {
    v4[8] = a1;
    v6 = sub_10006A68C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10006A68C()
{
  sub_10006ACC0();

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_10006A6F8()
{
  sub_10006ACC0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006A760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  return sub_100065390(sub_10006A780, v4);
}

uint64_t sub_10006A780()
{
  v23 = v0;
  if (!v0[4])
  {
    if (qword_1000D1AE8 != -1)
    {
      swift_once();
    }

    v1 = v0[5];
    v3 = v0[2];
    v2 = v0[3];
    v4 = type metadata accessor for SKLogger(0);
    sub_1000128C0(v4, qword_1000E4560);
    _StringGuts.grow(_:)(39);

    v21 = 0xD000000000000025;
    v22 = 0x80000001000A1C20;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    String.append(_:)(v5);
    v6 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration);
    v7 = *(v1 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration + 8);
    v8 = static os_log_type_t.error.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 136446466;
      v20 = v11;
      v21 = 91;
      v22 = 0xE100000000000000;
      v12._countAndFlagsBits = v6;
      v12._object = v7;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 8285;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14 = sub_1000847A8(91, 0xE100000000000000, &v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = sub_1000847A8(0xD000000000000025, 0x80000001000A1C20, &v20);

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  sub_100018F34();
  v16 = swift_allocError();
  sub_10006ACEC(v16, v17);
  v18 = v0[1];

  return v18();
}

uint64_t sub_10006AA38()
{
  sub_100018F34();
  v1 = swift_allocError();
  sub_10006ACEC(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006AAB8()
{
  sub_10006AC60(v0 + OBJC_IVAR____TtC22StoreKitUISceneService19StoreKitViewService_configuration, type metadata accessor for RemoteAlertConfiguration);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for StoreKitViewService(uint64_t a1)
{
  result = qword_1000D3EF8;
  if (!qword_1000D3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006AB60(uint64_t a1)
{
  result = type metadata accessor for RemoteAlertConfiguration(319);
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

uint64_t sub_10006ABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006AC60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10006ACC0()
{
  v2 = *(v0 + 40);

  return sub_10006AC60(v2, type metadata accessor for ProductRequest);
}

uint64_t sub_10006ACEC(uint64_t a1, _BYTE *a2)
{
  *a2 = 9;

  return swift_willThrow();
}

void sub_10006AD0C()
{
  if (qword_1000D1AE8 != -1)
  {
    sub_100039E60(&qword_1000D1AE8);
  }

  v0 = type metadata accessor for SKLogger(0);
  v1 = sub_1000128C0(v0, qword_1000E4560);
  v2 = static os_log_type_t.default.getter();
  v3 = Logger.logObject.getter();
  if (os_log_type_enabled(v3, v2))
  {
    sub_100039EE0();
    v4 = sub_10006BA34();
    v15 = v4;
    *v1 = 136446466;
    v5 = sub_1000847A8(0, 0xE000000000000000, &v15);
    sub_100037B8C(v5);
    *(v1 + 14) = sub_1000847A8(0xD000000000000022, 0x80000001000A1D60, &v15);
    sub_100063DD4(&_mh_execute_header, v6, v2, "%{public}s%{public}s");
    swift_arrayDestroy();
    sub_100039E94(v4);
    sub_100039E94(v1);
  }

  type metadata accessor for StoreKitAngelServiceListener(0);
  swift_allocObject();
  sub_10006E848();
  v7 = static CommandLine.argc.getter();
  v8 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for StoreKitAngel.Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for ApplicationDelegate();
  v11 = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(v11);
  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v12 = delegateClassNamea;
  }

  delegateClassName = v12;
  UIApplicationMain(v7, v8, v10, v12);
}