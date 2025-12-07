uint64_t sub_100002458(int a1, id a2)
{
  v4 = [a2 processIdentifier];
  v5 = sub_100002A90(a2);
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1001E5F60;
  if (v5)
  {
    v54 = type metadata accessor for XPCServiceProvider();
    *&aBlock = v2;
    v7 = v2;
    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&aBlock);
    v13 = LogInterpolation.init(stringLiteral:)();
    sub_100003670(v13, v14, v15, v16, v17, v18, v19, v20, v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, aBlock, *(&aBlock + 1), v53, v54);
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v21 = static os_log_type_t.default.getter();
    sub_1000036B0(v21, v6);

    v22 = *&v7[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedInterface];
    if (v22)
    {
      v23 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_exportedObject;
      swift_beginAccess();
      sub_100003C38(&v7[v23], &v49);
      if (v51)
      {
        sub_100002C4C(&v49, &aBlock);
        v24 = v22;
        [a2 setExportedInterface:v24];
        sub_100003CA8(&aBlock, v54);
        [a2 setExportedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();

        sub_100002C00(&aBlock);
      }

      else
      {
        sub_100002C5C(&v49);
      }
    }

    sub_100005254();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v4;
    v55 = sub_1001D1A14;
    v56 = v35;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v53 = sub_100005E50;
    v54 = &unk_1002547C8;
    v36 = _Block_copy(&aBlock);

    [a2 setInterruptionHandler:v36];
    _Block_release(v36);
    sub_100005254();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    *(v39 + 32) = v4;
    v55 = sub_1001D1A20;
    v56 = v39;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v53 = sub_100005E50;
    v54 = &unk_100254840;
    v40 = _Block_copy(&aBlock);

    [a2 setInvalidationHandler:v40];
    _Block_release(v40);
    if (*&v7[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_remoteObjectInterface])
    {
      [a2 setRemoteObjectInterface:?];
    }

    v41 = *&v7[OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connectionsLock];
    v42 = v7;
    v43 = a2;
    [v41 lock];
    sub_100004038(v42, v43);
    [v41 unlock];

    [v43 resume];
  }

  else
  {
    v54 = type metadata accessor for XPCServiceProvider();
    *&aBlock = v2;
    v10 = v2;
    v11 = AMSLogKey();
    if (v11)
    {
      v12 = v11;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&aBlock);
    v25 = LogInterpolation.init(stringLiteral:)();
    sub_100003670(v25, v26, v27, v28, v29, v30, v31, v32, v45, v46, v47, v48, v49, *(&v49 + 1), v50, v51, aBlock, *(&aBlock + 1), v53, v54);
    sub_100002C5C(&aBlock);
    if (qword_1002686B0 != -1)
    {
      sub_100002D44(&qword_1002686B0);
    }

    v33 = static os_log_type_t.error.getter();
    sub_1000036B0(v33, v6);
  }

  return v5 & 1;
}

uint64_t sub_1000029E4()
{
  swift_unknownObjectWeakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_100002A14()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100002A4C()
{

  return _swift_deallocObject(v0);
}

id sub_100002A90(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [a1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_100002C5C(v9);
    return 0;
  }

  sub_100002BC0(0, &qword_10026AF10, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = [v6 BOOLValue];

  return v4;
}

uint64_t sub_100002BC0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100002C00(void *a1)
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

_OWORD *sub_100002C4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100002C5C(uint64_t a1)
{
  v2 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002D44(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002DA4(uint64_t a1)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100002E30(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100002E90()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100002F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, char a17)
{
  v19 = *v17;
  v20 = *(v17 + 16);
  a17 = *(v17 + 32);
  a15 = v19;
  a16 = v20;

  return sub_1000A5788(&a15, &a10);
}

uint64_t sub_100002FE4()
{

  return swift_allocObject();
}

NSString sub_100003040()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100003068(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_willThrow();
}

uint64_t sub_1000030A8()
{

  return URLComponents.scheme.setter();
}

uint64_t sub_1000030E8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100003198(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000031E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100003200(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000321C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100003230(uint64_t a1)
{

  return swift_once();
}

__n128 *sub_100003250(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x726F727265;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t sub_1000032C0()
{

  return swift_allocObject();
}

uint64_t sub_1000032E8()
{

  return specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10000332C()
{

  return swift_allocObject();
}

uint64_t sub_100003354()
{

  return swift_allocObject();
}

void sub_100003410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17[5] = v18;
  v17[2] = a16;
  v17[3] = a17;
}

uint64_t sub_100003424(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100003444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_10000346C()
{

  return swift_allocObject();
}

uint64_t sub_1000034D8(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_1000034FC()
{
}

id sub_100003534()
{

  return sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
}

void sub_100003598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  a18 = v18;

  sub_1000ACC1C(&a11, v19, a1, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_100003630()
{

  return swift_allocObject();
}

void sub_100003658(double a1, uint64_t a2, const char *a3)
{

  xpc_dictionary_set_int64(v3, a3, a1);
}

uint64_t sub_100003670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  return static LogInterpolation.safe(_:)();
}

void sub_1000036B0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (sub_100018270(a1))
  {
    v5 = objc_autoreleasePoolPush();
    static LogInterpolation.isRedactionEnabled.getter();
    v6 = static LogInterpolation.describe(contentsOf:withRedaction:separator:)();
    v8 = v7;
    objc_autoreleasePoolPop(v5);
    v9 = objc_autoreleasePoolPush();
    sub_10007B9A4(&unk_100270BA0, &unk_1001EC990);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1001E61B0;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_100003E9C();
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;
    os_log(_:dso:log:type:_:)("%{public}@", 10, 2, &_mh_execute_header, v4, a1, v10);

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_1000037C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000037D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000037F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003858(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000038E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003928(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003938(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003958(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003968(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003978(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003988(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003998(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000039F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003AF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003B18(uint64_t a1)
{

  return String.hash(into:)();
}

void sub_100003B48()
{
  v1 = 0;
  v2 = 0xE000000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

void sub_100003B8C()
{
}

uint64_t sub_100003BB4()
{

  return swift_allocObject();
}

uint64_t sub_100003BCC()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100003C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_10026D350, &qword_1001E6050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_100003CA8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100003CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1001C32DC(a1, a4);
}

uint64_t sub_100003D54()
{

  return sub_1000D0004(v2, v1, v0);
}

uint64_t sub_100003D9C(uint64_t a1, uint64_t a2)
{

  return swift_allocObject();
}

uint64_t sub_100003DE8()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100003E00()
{

  return swift_task_alloc();
}

_OWORD *sub_100003E20(uint64_t a1)
{

  return sub_10000DFC4();
}

uint64_t sub_100003E38()
{
  sub_100002C00((v0 - 112));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

unint64_t sub_100003E9C()
{
  result = qword_10026D9D0;
  if (!qword_10026D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026D9D0);
  }

  return result;
}

uint64_t sub_100003F28()
{

  return swift_allocObject();
}

uint64_t sub_100003F40()
{

  return type metadata accessor for URL();
}

uint64_t *sub_100003F80()
{
  v0[19] = v0[28];

  return sub_100017E64(v0 + 16);
}

BOOL sub_100003F9C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_100003FB4()
{
  v2 = v0[3];

  return sub_100003CA8(v0, v2);
}

uint64_t sub_100004004(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_100004038(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC14amsengagementd18XPCServiceProvider_connections;
  swift_beginAccess();
  v5 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  sub_1000040E4(*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10));
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_1000040EC(uint64_t a1, ...)
{

  return Promise.resolve(_:)();
}

uint64_t sub_100004138()
{
  _Block_release(*(v0 + 16));
  v1 = sub_100005254();

  return _swift_deallocObject(v1);
}

uint64_t sub_10000416C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v10 = _Block_copy(aBlock);
  sub_100004AA0();
  *(swift_allocObject() + 16) = v10;
  v11 = a3;
  v12 = a1;
  v13 = sub_100008BF8();
  a7(v13);
}

uint64_t sub_10000420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002DFC();
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_10001C064();
  sub_100004454();
  sub_100002FB8();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v9 = sub_100008758();
  v10(v9);

  v11 = static OS_dispatch_queue.global(qos:)();
  v12 = sub_1000F11DC();
  v13(v12);
  v23[3] = v8;
  v23[4] = &protocol witness table for OS_dispatch_queue;
  v23[0] = v11;
  sub_100002FB8();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100062B54;
  *(v14 + 24) = v7;
  v15 = objc_allocWithZone(NSLock);
  v16 = v11;
  sub_100011624();

  v17 = [v15 init];
  sub_100002FB8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  sub_100002FB8();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v14;
  v20 = v17;
  swift_retain_n();
  v21 = v20;
  sub_1000F11F8(sub_100083BC0);

  return sub_100002C00(v23);
}

void sub_100004454()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100002CC4();
  __chkstk_darwin(v6);
  sub_100002DEC();
  sub_100012F6C();
  v24 = type metadata accessor for DispatchQoS();
  sub_100002CC4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  sub_10005E2AC();
  sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
  v10 = Promise.__allocating_init()();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v0;
  *(v11 + 32) = v10;
  *(v11 + 40) = v3;
  v25[4] = sub_10000C7A8;
  v25[5] = v11;
  sub_100002E50();
  v25[1] = 1107296256;
  sub_100007A28();
  v25[2] = v12;
  v25[3] = &unk_10024A248;
  v13 = _Block_copy(v25);
  v14 = v5;
  v15 = v0;

  static DispatchQoS.unspecified.getter();
  sub_10000B890();
  sub_100005DC0(v16, v17, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007B9A4(&unk_100270490, &unk_1001E74F0);
  sub_10000317C();
  v21 = sub_1000140D0(v18, v19, &unk_1001E74F0, v20);
  sub_1000F1180(v21);
  sub_10005E208();
  _Block_release(v13);
  v22 = sub_10000A19C();
  v23(v22);
  (*(v8 + 8))(v1, v24);

  sub_10000C544();

  sub_100005F14();
}

uint64_t sub_100004700()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100004750()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100004774(uint64_t a1)
{
  *(v1 + 16) = v2;
  *(v1 + 40) = a1;
}

void sub_1000047F0(uint64_t a1@<X8>)
{
  v2[31] = v1;
  v2[32] = *(a1 + 56);
  v2[33] = *(a1 + 64);
}

uint64_t sub_100004838()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100004870()
{

  return BidirectionalCollection<>.joined(separator:)();
}

unint64_t sub_1000048A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100012A94();
}

uint64_t sub_1000048C8()
{
}

uint64_t sub_1000048E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004900()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000494C(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100004968()
{

  return swift_allocObject();
}

void sub_1000049A4(uint64_t a1)
{

  sub_10017BE54();
}

uint64_t sub_1000049C4()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1000049F4()
{

  sub_1000D5584();
}

uint64_t sub_100004A14(uint64_t a1)
{

  return swift_dynamicCast();
}

void sub_100004A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

void sub_100004ACC()
{
  v1 = 0x7265206874697720;
  v2 = 0xED0000203A726F72;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

NSString sub_100004AFC()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100004B50(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100004B74()
{
  v1 = 0x2E2E2E2029;
  v2 = 0xE500000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_100004BC8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100004BE0()
{

  return static LogInterpolation.prefix(_:_:)();
}

void *sub_100004C00(void *result)
{
  *result = 0x64656C62616E65;
  result[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_100004C48(uint64_t a1)
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_100004CC8()
{

  return sub_10000A7C0(v0, 1, 1, v1);
}

_OWORD *sub_100004CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  v24 = (*(v21 + 56) + 32 * v22);

  return sub_100002C4C(v24, &a21);
}

uint64_t sub_100004D48()
{

  return sub_10000A064(v2 - 112, v0, v1);
}

uint64_t sub_100004DA8()
{

  return type metadata accessor for JSStackContext(0);
}

uint64_t sub_100004E40()
{

  return sub_100009FB0(v2 - 128, v0, v1);
}

uint64_t sub_100004E84(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100004EAC()
{

  return swift_allocObject();
}

double sub_100004F48()
{

  return sub_10000E0C8(v1 - 136, v0, (v1 - 96));
}

char *sub_100004F98@<X0>(unint64_t a1@<X8>)
{

  return sub_100027C2C((a1 > 1), v1, 1);
}

uint64_t sub_100004FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_100005010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, char a19)
{
  v23 = *v19;
  v24 = *(v19 + 16);
  a19 = *(v19 + 32);
  a17 = v23;
  a18 = v24;
  a14 = v20;
  a15 = v21;

  return sub_1000A5788(&a17, &a9);
}

double sub_10000503C()
{

  return sub_10000E0C8(v1 - 160, v0, (v1 - 120));
}

unint64_t sub_100005068(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100012A94();
}

uint64_t sub_1000050D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10007B9A4(a3, a4);
}

id sub_100005104()
{

  return sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
}

uint64_t sub_100005198(uint64_t a1, uint64_t a2)
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void sub_1000051EC()
{
  *v2 = v3;
  *(v2 + 8) = v1;
  *(v2 + 16) = v0;
}

uint64_t sub_100005264(uint64_t a1)
{

  return swift_dynamicCast();
}

double sub_100005288(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_10000E0C8(&v6, v3, &v7);
}

double sub_1000052F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_1000053C0()
{
}

uint64_t sub_1000053FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100005424()
{

  return swift_allocObject();
}

uint64_t sub_100005450()
{

  return swift_allocObject();
}

uint64_t sub_100005490(uint64_t a1)
{

  return swift_once();
}

double sub_1000054E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v13 = va_arg(va1, _OWORD);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_10000E0C8(va1, v10, va);
}

uint64_t sub_100005514(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005534(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000557C()
{
  sub_100002C00(v0 + 2);
  sub_100002C00(v0 + 7);
  sub_100002C00(v0 + 12);

  return sub_100002C00(v0 + 17);
}

id sub_1000055B8(uint64_t a1)
{
  v5 = *(v3 + 1896);

  return [v1 v5];
}

uint64_t sub_100005608@<X0>(uint64_t a1@<X8>)
{
  if (v1)
  {
    return a1;
  }

  return result;
}

double sub_100005624(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_10000E0C8(&v6, v3, &v7);
}

uint64_t sub_1000056B4(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

void sub_100005734()
{
  v1 = 0x5420455441455243;
  v2 = 0xED000020454C4241;

  String.append(_:)(*&v1);
}

uint64_t sub_1000057B8()
{
}

uint64_t sub_1000057D8()
{

  return swift_allocObject();
}

uint64_t sub_10000580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100005868()
{

  return sub_1000DD568(v0, type metadata accessor for MediaCatalogSyncScheduleAction);
}

uint64_t sub_1000058E4()
{

  return AnyHashable.init<A>(_:)();
}

char *sub_100005900()
{

  return sub_10009BA18(0, v0, 0);
}

unint64_t sub_100005958(uint64_t a1)
{

  return sub_100012A94();
}

uint64_t sub_1000059A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_100005A1C()
{
}

uint64_t sub_100005A44(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for NotificationObserver();
}

uint64_t sub_100005A70()
{
}

uint64_t sub_100005BA8()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100005BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16)
{
  a9 = a13;
  a10 = a14;
  a11 = a15;
  a12 = a16;

  return sub_10000FF10(&a9);
}

void sub_100005C08()
{
  v1 = 0x3B5458455420;
  v2 = 0xE600000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100005C4C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100005C94()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100005CB8()
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_100005CD8(uint64_t a1)
{

  return sub_10000DFC4();
}

uint64_t sub_100005D24()
{
}

uint64_t sub_100005D40(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v4 - 88) = v3;
  *(v4 - 112) = v2;
}

uint64_t sub_100005D64()
{

  return AnyHashable.init<A>(_:)();
}

unint64_t sub_100005D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  return sub_100012A94();
}

uint64_t sub_100005DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100005E50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100005E94(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100005EAC()
{

  return swift_getErrorValue();
}

void sub_100005EE4(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000012;

  v3 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v2);
}

uint64_t sub_100005F38()
{

  return swift_allocObject();
}

uint64_t sub_100005F6C(uint64_t a1)
{

  return swift_allocObject();
}

_OWORD *sub_100005FB0(uint64_t a1, uint64_t a2)
{

  return sub_10000DFC4();
}

uint64_t sub_10000602C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_100006044(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for TreatmentStoreService();
}

uint64_t sub_100006070(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000060F4()
{

  return sub_10002411C(v0, v1, 49, 0xE100000000000000);
}

BOOL sub_100006114(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_10000612C(uint64_t a1, uint64_t a2)
{

  return sub_100153B8C(a1, a2, 0x65636976726573, 0xE700000000000000);
}

uint64_t sub_10000619C(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_10000620C()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100006224()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100006280(uint64_t a1)
{

  return sub_100065290(v1, a1, type metadata accessor for ScheduleInfo);
}

void sub_1000062F0()
{
  v1 = 8236;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

__n128 *sub_100006308(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v3;
  result[2].n128_u64[1] = v2;
  result[3].n128_u8[0] = 3;
  return result;
}

uint64_t sub_100006330()
{

  return swift_dynamicCast();
}

BOOL sub_100006348(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13);
}

uint64_t sub_100006384()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000063EC(uint64_t a1)
{

  return swift_once();
}

void sub_10000640C(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000014;

  v2 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

uint64_t sub_10000642C(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100006468()
{

  return swift_allocObject();
}

uint64_t sub_100006490(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 120) = v1;
}

uint64_t sub_1000064B0(uint64_t a1)
{

  return swift_once();
}

_OWORD *sub_1000064D0(uint64_t a1, uint64_t a2)
{

  return sub_10000DFC4();
}

double sub_1000064F4()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);

  return sub_10011F068(v2, v3, 2, v0 - 120);
}

uint64_t sub_100006514()
{

  return LogInterpolation.init(stringLiteral:)();
}

void sub_100006574()
{

  sub_1000D5830();
}

id sub_1000065C0()
{

  return sub_100092378();
}

BOOL sub_1000065F8()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

BOOL sub_100006618()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t sub_100006658()
{

  return type metadata accessor for OS_dispatch_queue.Attributes();
}

uint64_t sub_100006688()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_1000066B8(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000066EC()
{

  sub_10001E148();
}

uint64_t sub_100006734(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;
}

uint64_t sub_1000067B8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000067F8()
{

  return LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
}

_OWORD *sub_100006810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18)
{

  return sub_100002C4C(&a18, &a15);
}

uint64_t sub_100006868(uint64_t a1, uint64_t a2, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_100006898()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

uint64_t sub_1000068B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

void sub_1000068FC()
{
}

uint64_t sub_100006940(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006960(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006990(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000069B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1000069D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = v3;
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  sub_100002C4C((v2 + 88), (v2 + 56));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100006AD8(uint64_t a1)
{

  return swift_once();
}

double sub_100006B0C()
{

  return sub_10000E0C8(v1 - 176, v0, (v1 - 136));
}

uint64_t sub_100006B94(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006CB4(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_100006D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t sub_100006D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

__n128 *sub_100006D54(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746C75736572;
  result[2].n128_u64[1] = 0xE600000000000000;
  return result;
}

_OWORD *sub_100006D70(uint64_t a1, uint64_t a2, ...)
{

  return sub_10000DFC4();
}

uint64_t sub_100006DAC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006E04(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100006E3C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006E5C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_100006F00(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006F20(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100006F40(uint64_t a1, ...)
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100006F5C()
{
  sub_100002C4C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 sub_100006FE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v2;
  result = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100006FF8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007018(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007038(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007080(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000070A0(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1000070EC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007128()
{

  return swift_allocObject();
}

uint64_t *sub_100007180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  *(v10 + 424) = v11;

  return sub_100017E64(a10);
}

uint64_t sub_1000071CC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100007218()
{

  return swift_allocObject();
}

unint64_t sub_100007240(uint64_t a1)
{

  return sub_100012A94();
}

uint64_t sub_10000725C()
{
}

uint64_t sub_10000727C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t sub_1000072A8()
{

  return swift_allocObject();
}

uint64_t sub_1000072D0(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t sub_1000072F8()
{
  *(v0 - 74) = 1;

  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t sub_100007324()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007358(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return AMSSetLogKeyIfNeeded();
}

uint64_t sub_1000073A4()
{

  return sub_10000A064(v2 - 144, v0, v1);
}

char *sub_100007404()
{

  return sub_100027C2C(0, v0, 0);
}

void sub_100007428()
{
  v1 = 0x3A64656863746546;
  v2 = 0xE900000000000020;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

void sub_100007508(uint64_t a1, uint64_t a2)
{

  sub_10000E42C(a1, a2, 0x74736575716572, 0xE700000000000000);
}

uint64_t sub_100007544(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

id sub_10000755C(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 272);
  *(v1 - 96) = *(v1 - 288);
  v3 = *(v1 - 280);
  *(v1 - 120) = v3;

  return v3;
}

uint64_t sub_1000075A0(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_1000075D4(uint64_t a1)
{

  return sub_10000DFC4();
}

id sub_10000764C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1[2] = v11;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = a10;

  return v12;
}

uint64_t sub_10000767C(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;
}

uint64_t sub_100007698(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000076B8(unint64_t *a1)
{

  return sub_10004F4C0(a1, v1, v2);
}

id sub_1000076F8(uint64_t a1)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = v1;

  return v1;
}

uint64_t sub_100007738()
{

  return sub_100009F34(v0 + v2, 1, v1);
}

uint64_t sub_100007754()
{

  return type metadata accessor for DispatchQoS();
}

void sub_100007784()
{
  v1 = 0x4920545245534E49;
  v2 = 0xEC000000204F544ELL;

  String.append(_:)(*&v1);
}

uint64_t sub_1000077C0()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000077EC()
{

  return swift_allocObject();
}

uint64_t sub_100007834(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006070(a1, a2, a3, &protocol conformance descriptor for AsyncValueSequence<A>.Iterator);
}

uint64_t sub_100007858(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t sub_100007888()
{

  return swift_allocObject();
}

id sub_1000078B4()
{

  return sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
}

void sub_100007908()
{
  v1 = 8236;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100007924()
{

  return String.data(using:allowLossyConversion:)();
}

void sub_1000079B4(uint64_t a1@<X8>)
{
  v1[12] = sub_1000C383C;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t sub_1000079F8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_100007A48()
{
  v0[23] = v0[1];
  v0[20] = v1;
}

double sub_100007A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_100007ACC()
{

  return swift_getErrorValue();
}

uint64_t sub_100007AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
}

uint64_t sub_100007B64(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100007B94()
{

  return swift_getObjectType();
}

uint64_t sub_100007BEC(unint64_t *a1)
{

  return sub_100006070(a1, v1, v2, &protocol conformance descriptor for [A]);
}

uint64_t sub_100007C18(uint64_t a1)
{

  return sub_100158E7C(a1, type metadata accessor for MercuryCacheMetadata);
}

uint64_t sub_100007C54(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100007CB8()
{

  return swift_allocObject();
}

uint64_t sub_100007CEC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100007D0C()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100007D2C()
{
  v1 = 0x6F50656863616320;
  v2 = 0xEE00203A7963696CLL;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

unint64_t sub_100007D6C(uint64_t a1, uint64_t a2)
{

  return sub_1001B4750(a1);
}

NSString sub_100007D90()
{

  return String._bridgeToObjectiveC()();
}

uint64_t sub_100007DE8()
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007E0C()
{

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

uint64_t sub_100007E68()
{

  return swift_allocObject();
}

uint64_t sub_100007E90(uint64_t a1)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_100007EB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

void sub_100007ED0()
{
  v1 = 0x79654B6568636163;
  v2 = 0xE800000000000000;

  String.append(_:)(*&v1);
}

id sub_100007EFC(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100007F80(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void sub_100007F94()
{

  Hasher._combine(_:)(1u);
}

BOOL sub_10000801C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);
}

uint64_t *sub_10000803C()
{
  v0[77] = v0[111];

  return sub_100017E64(v0 + 74);
}

uint64_t sub_10000805C()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100008080()
{
  v1 = 0x203A79656B202CLL;
  v2 = 0xE700000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_1000080A4()
{

  return swift_getObjectType();
}

uint64_t sub_1000080C0()
{

  return swift_allocObject();
}

uint64_t sub_1000080E8()
{

  return sub_10015BC10(v0, type metadata accessor for CacheUpdateRun);
}

void sub_100008124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  sub_10000DE9C();
}

uint64_t sub_100008164(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100008188(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000081A8()
{

  return swift_allocObject();
}

unint64_t sub_1000081D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 80) = a2;
  *(v4 - 72) = a3;
  *(v4 - 64) = a4;

  return sub_100017A08();
}

uint64_t sub_1000081F4()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000825C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = v13;
  v16 = 0xE900000000000073;

  String.append(_:)(*&v15);
}

char *sub_1000082A8@<X0>(unint64_t a1@<X8>)
{

  return sub_100027C2C((a1 > 1), v1, 1);
}

void sub_1000082FC(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001ELL;

  v2 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

void sub_10000831C()
{

  _Block_release(v0);
}

uint64_t sub_100008348()
{
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_1000C2FD0;

  return swift_continuation_init();
}

void *sub_1000083E4()
{
  v2 = *(v0 + 80);

  return sub_100003CA8((v0 + 56), v2);
}

void sub_1000083FC(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000017;

  v2 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

uint64_t sub_100008448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
}

uint64_t sub_100008468()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100008514()
{
}

uint64_t sub_100008580()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_1000085A4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006070(a1, a2, a3, &protocol conformance descriptor for PipelineEntryTask<A>);
}

uint64_t sub_1000085DC()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

double sub_1000085F8()
{

  return sub_10000E0C8(v1 - 176, v0, (v1 - 136));
}

void sub_100008614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  sub_10001ABEC();
}

uint64_t sub_100008634()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100008658()
{
}

uint64_t sub_1000086C4@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 88) = a1;
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
}

uint64_t sub_1000086F4()
{

  return LogInterpolation.init(stringLiteral:)();
}

id sub_100008718(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_10000876C()
{

  return AMSSetLogKey();
}

uint64_t sub_100008794@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 88) = a3;
  *(v3 - 112) = result;
  *(v3 - 104) = a2;
  return result;
}

uint64_t sub_1000087B8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a1;
  v6[6] = a5;
  v6[7] = a6;

  return static LogInterpolation.sensitive(_:)();
}

uint64_t sub_1000087F0(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t sub_100008818()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100008840()
{
  sub_1000061B4();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  v3 = sub_100005F88();

  return v4(v3);
}

uint64_t sub_1000088E8()
{
  v0 = swift_task_alloc();
  v1 = sub_100004ABC(v0);
  *v1 = v2;
  v3 = sub_100003690(v1);

  return v4(v3);
}

uint64_t sub_100008980(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009CCC;

  return v6(a1);
}

uint64_t sub_100008A78()
{
  sub_100003D28();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  v1[1] = sub_100009CC8;
  v3 = sub_100005F88();

  return v4(v3);
}

uint64_t sub_100008B34(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = sub_100004ABC(v6);
  *v7 = v8;
  v7[1] = sub_100009CC8;

  return sub_100008D0C(a1, v3, v4, v5);
}

void sub_100008C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{

  sub_1001A0A64(v26, v25, v24, v23, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_100008C24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100009CC8;

  return v7();
}

uint64_t sub_100008D0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100009BE8;

  return v7();
}

uint64_t sub_100008DF4()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100008E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1000035D8(v1);

  return v3(v2);
}

uint64_t sub_100008F34(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100008F50()
{

  return sub_100009FB0(v2 - 112, v0, v1);
}

uint64_t sub_100008F6C()
{

  return Hasher.init(_seed:)();
}

uint64_t sub_100008F8C@<X0>(uint64_t a1@<X8>)
{

  return sub_10008A2E0(v2 + a1, v4 + a1, v1, v3);
}

BOOL sub_100008FAC()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

uint64_t sub_100009020(uint64_t a1)
{
  *(v1 + 280) = a1;
}

uint64_t sub_10000903C()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_100009058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100009CC8;

  return v6();
}

uint64_t sub_100009140()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100009180()
{
  swift_unknownObjectRelease();

  v0 = sub_10000B284();

  return _swift_deallocObject(v0);
}

void sub_1000091B8()
{
}

void sub_1000091D0(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

uint64_t sub_1000091E8(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  sub_100017C14();

  sub_1000179B4(v5, v5);
  sub_1000170D4();

  a3(v7, a1);
  Promise.resolve(_:)();

  swift_retain_n();
  sub_10001C50C();
}

uint64_t sub_10000953C()
{

  sub_100002FB8();

  return _swift_deallocObject(v0);
}

uint64_t sub_1000095EC()
{
  _Block_release(*(v0 + 16));

  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_100009624(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&unk_10026FEC0, &qword_1001E6280);
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v7, 1, 1, v8);
  sub_1000083D8();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_1000083D8();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1001F1A60;
  v10[5] = v9;
  sub_1001BE5A8(0, 0, v7, &unk_1001F1A70, v10);
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007B9A4(&qword_100272AC8, &qword_1001F23D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  sub_10000A7C0(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1001F23E0;
  v9[5] = v8;
  sub_1001DA1EC(0, 0, v6, &unk_1001F23F0, v9);
}

uint64_t sub_100009848()
{
  sub_1000061B4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100009BE8;
  v2 = sub_100005B9C();

  return v3(v2);
}

uint64_t sub_1000098EC()
{
  sub_100003D28();
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_100002D20();
  *v5 = v4;

  v6 = *(v2 + 24);
  if (v0)
  {
    v7 = _convertErrorToNSError(_:)();

    (v6)[2](v6, 0, v7);

    _Block_release(v6);
  }

  else
  {
    v8 = sub_10000A144();
    v9(v8);
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  v10 = *(v4 + 8);

  return v10();
}

uint64_t sub_100009A80(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1000098EC;

  return sub_100009B24();
}

uint64_t sub_100009B4C()
{
  sub_1000061B4();
  if (qword_100268838 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_100009BE8()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

uint64_t sub_100009CCC()
{
  sub_100004768();
  sub_1000056A8();
  v1 = *v0;
  sub_100002D20();
  *v2 = v1;

  sub_100002D8C();

  return v3();
}

void sub_100009DDC(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000002BLL;

  v2 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

uint64_t sub_100009DFC(uint64_t a1)
{
  *(a1 + 16) = *(v1 - 208);

  return AMSSetLogKeyIfNeeded();
}

void sub_100009E40(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*(&a2 - 1));
}

_OWORD *sub_100009E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return sub_100002C4C(&a20, &a17);
}

uint64_t sub_100009E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return dispatch thunk of TaskScheduler.schedule(task:)();
}

uint64_t sub_100009F10(uint64_t a1)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100009F5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10007B9A4(a2, a3);
  sub_100002D30();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100009FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10007B9A4(a2, a3);
  sub_1000047A4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000A00C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10007B9A4(a2, a3);
  sub_100002DDC();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000A064(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10007B9A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A0C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C504(a1, a2);
  sub_10007B9A4(v3, v4);
  sub_100002DDC();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000A124()
{

  return swift_allocObject();
}

uint64_t sub_10000A150()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A184()
{

  return static LogInterpolation.safe(_:)();
}

uint64_t sub_10000A1C0()
{

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_10000A1D8(uint64_t a1)
{
}

void sub_10000A1F4(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000010;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

uint64_t sub_10000A2E4()
{

  return swift_getErrorValue();
}

void sub_10000A324()
{
  v2 = v0;
  v3 = 0xE700000000000000;

  String.append(_:)(*&v2);
}

void sub_10000A340(uint64_t a1)
{

  sub_1000D5584();
}

id sub_10000A360(id a1)
{
  *(v1 + 264) = a1;

  return a1;
}

uint64_t sub_10000A384(uint64_t a1, uint64_t a2)
{

  return sub_10004ED94(a1, a2, v2, v3);
}

uint64_t sub_10000A3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{

  return swift_dynamicCast();
}

id sub_10000A444(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return v3;
}

uint64_t sub_10000A460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A480(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t sub_10000A4B4()
{

  return AnyHashable.init<A>(_:)();
}

double sub_10000A4D0()
{
  result = 0.0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t sub_10000A52C()
{
  *(v2 + 264) = v1;
  *(v2 + 304) = *(v0 + 80);

  return swift_allocObject();
}

__n128 sub_10000A560(__n128 *a1)
{
  result = *(v1 - 272);
  a1[1] = result;
  return result;
}

uint64_t sub_10000A588(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10000A5B0()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000A664(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_10000A680(uint64_t a1)
{
  v2[34] = a1;
  v2[10] = a1;
  v2[7] = v1;
}

uint64_t sub_10000A6C0@<X0>(uint64_t a1@<X8>)
{
  v3[11] = a1;
  v3[12] = v2;
  v3[13] = v1;
}

uint64_t sub_10000A6EC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10000A704(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000A76C()
{
}

uint64_t sub_10000A788()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_10000A89C()
{

  return sub_100012A94();
}

uint64_t sub_10000A8F0()
{
}

uint64_t sub_10000A92C()
{

  return swift_allocObject();
}

void sub_10000A954(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000014;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

id sub_10000A998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1000ACB0C(v11, v9, a1, a4, a5, a6, a7, a8, a9, v10);
}

uint64_t sub_10000A9BC()
{

  return sub_10000A00C(v2 - 128, v1, v0);
}

uint64_t sub_10000A9D8()
{
}

uint64_t sub_10000AA50()
{

  return AnyHashable.init<A>(_:)();
}

BOOL sub_10000AA70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v29, v30);
}

uint64_t sub_10000AB10()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000AB40()
{

  return sub_100011BAC(v0, v1 - 120);
}

uint64_t sub_10000ABB4()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

_OWORD *sub_10000AC30(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  a20 = v20;
  LOBYTE(a18) = a1;

  return sub_100002C4C(&a18, &a15);
}

double sub_10000AC5C(char *a1)
{

  return sub_10011F068(a1, 12, 2, v1 + 16);
}

uint64_t sub_10000ACA0()
{
  sub_100003CA8((*(v0 + 176) + 96), *(*(v0 + 176) + 120));
}

void sub_10000ACE0()
{
  v1 = 0x203A726F72726520;
  v2 = 0xE800000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t sub_10000AD04(uint64_t a1)
{
  *(v2 - 88) = v1;
  *(v2 - 112) = a1;

  return LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
}

_OWORD *sub_10000AD20()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_100002C4C(v4, (v2 - 112));
}

uint64_t sub_10000ADA4(uint64_t a1)
{

  return AMSError();
}

uint64_t sub_10000ADC8(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1[1] = a2;
  *(v10 + 104) = a10;
  *(v10 + 80) = v11;
}

uint64_t sub_10000AE18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10000AE3C(void *a1)
{
  sub_100002C00(a1);

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10000AE6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 40) = v4;
  *(v3 + 16) = v2;
}

id sub_10000AEA8(uint64_t a1, unint64_t a2)
{

  return sub_100050B04(a1, a2, v2);
}

uint64_t sub_10000AEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

uint64_t sub_10000AED0()
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_10000AF00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

void sub_10000AF24()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_10000AF50()
{

  return swift_allocObject();
}

id sub_10000AFC4@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(a1 + 80) = a2 & 1;
  *(a1 + 88) = *(v3 - 152);

  return v2;
}

uint64_t sub_10000AFE4()
{
}

void sub_10000B004()
{
}

uint64_t sub_10000B01C(unint64_t *a1)
{

  return sub_100006070(a1, v1, v2, &protocol conformance descriptor for [A]);
}

uint64_t sub_10000B080()
{

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10000B0A0(uint64_t a1)
{

  return swift_allocObject();
}

void sub_10000B0D0()
{

  sub_1000E349C();
}

uint64_t sub_10000B0F4(sqlite3 *a1, const char *a2)
{

  return sqlite3_exec(a1, a2, 0, 0, 0);
}

uint64_t sub_10000B138()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_10000B188()
{
  v2 = v0;
  v3 = 0xEA0000000000202CLL;

  String.append(_:)(*&v2);
}

BOOL sub_10000B1B4()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void *sub_10000B1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000D65A8(v5, a2, a3, a4, v4);
}

unint64_t sub_10000B220()
{

  return sub_100012A94();
}

unint64_t sub_10000B254()
{

  return sub_100013AB8();
}

uint64_t sub_10000B26C()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10000B310(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v15;
  v18 = v14;

  String.append(_:)(*&v17);
}

uint64_t sub_10000B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return static LogInterpolation.prefix(_:_:)();
}

_OWORD *sub_10000B398(uint64_t a1)
{

  return sub_10000DFC4();
}

uint64_t sub_10000B3DC()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000B41C()
{
}

uint64_t sub_10000B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 72) = a4;

  return type metadata accessor for URL();
}

void sub_10000B728()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

unint64_t sub_10000B768(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_10000B794(uint64_t a1)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

void sub_10000B83C()
{

  sub_1000D507C();
}

uint64_t sub_10000B8A8()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_10000B8C4()
{

  return sub_10000A064(v2 - 128, v1, v0);
}

uint64_t sub_10000B8E0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000B900(uint64_t a1, uint64_t a2)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_10000B92C()
{

  return swift_allocObject();
}

uint64_t sub_10000B984(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000B9F0(uint64_t a1, ...)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000BA34()
{

  return swift_allocObject();
}

uint64_t sub_10000BA6C()
{

  return sub_100158E7C(v0, type metadata accessor for MercuryCacheUpdateData.Failure);
}

uint64_t sub_10000BB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

uint64_t sub_10000BB1C()
{
  sub_100002C4C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_10000BB64(uint64_t a1, uint64_t a2)
{

  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_10000BB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_10000BBD0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000BBF0()
{
  *(v2 - 104) = v1;
  *(v2 - 128) = v0;
}

uint64_t sub_10000BC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_dynamicCast();
}

id sub_10000BC5C@<X0>(void *a1@<X8>)
{

  return a1;
}

uint64_t sub_10000BCA0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

void sub_10000BCFC(uint64_t a1, const char *a2)
{

  xpc_dictionary_set_BOOL(v2, a2, 1);
}

uint64_t sub_10000BD48()
{
  v6 = v3 + *(v4 + 24);
  *v6 = v2;
  *(v6 + 8) = v1;
  *(v6 + 16) = v0;
}

uint64_t sub_10000BE0C()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000BE28(uint64_t a1)
{

  return static LogInterpolation.prefix<A>(_:_:)();
}

id sub_10000BE48()
{

  return v0;
}

uint64_t sub_10000BE60()
{

  return BidirectionalCollection<>.joined(separator:)();
}

uint64_t sub_10000BE94()
{

  return sub_10000A7C0(v1, 1, 1, v0);
}

uint64_t sub_10000BEC8(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10000BEF8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000BF28(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_10000BF8C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v2[65] = v2[31];
  v2[62] = v2[48];
}

uint64_t sub_10000BFB4()
{

  return swift_allocObject();
}

double sub_10000BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_100052D94(v11, &a11);
}

uint64_t sub_10000C02C()
{

  return swift_dynamicCast();
}

uint64_t *sub_10000C070(uint64_t a1)
{
  *(v1 - 80) = a1;

  return sub_100017E64((v1 - 104));
}

uint64_t sub_10000C0A0(uint64_t a1, uint64_t a2, ...)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C10C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000C184(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C1B0(uint64_t a1)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10000C1D8(uint64_t a1)
{

  return swift_once();
}

unint64_t sub_10000C20C(uint64_t a1, uint64_t a2)
{

  return sub_1001B4750(a1);
}

uint64_t sub_10000C230()
{
  *(v1 - 160) = *(v1 - 288);
  *(v1 - 184) = v0;
}

uint64_t sub_10000C26C()
{

  return swift_allocObject();
}

uint64_t sub_10000C298()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10000C2B4()
{

  return swift_allocObject();
}

uint64_t sub_10000C2F8()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000C31C(uint64_t a1)
{

  return sub_10000A064(a1, v1, v2);
}

uint64_t sub_10000C35C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000C3AC()
{

  return type metadata accessor for LogInterpolation();
}

void sub_10000C3C4(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

uint64_t sub_10000C3DC(uint64_t a1, uint64_t a2)
{

  return AsyncObjectGraphBuilder.satisfying<A>(_:with:)();
}

uint64_t sub_10000C3FC(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

void sub_10000C440()
{

  sub_1000036B0(v0, v1);
}

uint64_t sub_10000C48C()
{
}

uint64_t sub_10000C4A8(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

void sub_10000C4CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  SQLDatabase.execute(sql:parameters:)(*(&a2 - 1), v2);
}

uint64_t sub_10000C510()
{

  return swift_getErrorValue();
}

void sub_10000C544()
{
  sub_100003D74();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100002DEC();
  v16 = v15 - v14;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v10);
  sub_10000C680(v8, 0, v17, v9, v6, v4, v2);

  sub_100005F14();
}

uint64_t sub_10000C680(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a3;
  v10 = a3;
  v11 = Promise.__allocating_init()();
  sub_100007A3C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v14);
  return v11;
}

uint64_t sub_10000C7B8(void *a1)
{
  v1 = [a1 logKey];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_100005B9C();
}

unint64_t sub_10000C818(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E124(a1, v4);
}

void sub_10000C85C(void *a1, void *a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v111 = v8;
  v112 = v9;
  __chkstk_darwin(v8);
  v109 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C7B8(a1);
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v116 = &type metadata for AMSFlags;
  v117 = sub_10000D884();
  LOBYTE(aBlock) = 0;
  v13 = isFeatureEnabled(_:)();
  sub_100002C00(&aBlock);
  if (v13)
  {
    sub_1000E8A14();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = Dictionary.init(dictionaryLiteral:)();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0xE000000000000000;
  v16 = [objc_allocWithZone(NSLock) init];
  sub_10000D934(a1);
  v17 = sub_10000E23C(a1);
  if (*(v17 + 16))
  {
    sub_1000E8E80(v17);

    v18 = [objc_allocWithZone(AMSEngagementEnqueueResult) init];
    aBlock = v18;
    Promise.resolve(_:)();
  }

  else
  {
    v107 = v15;
    v108 = v14;
    v98 = a3;

    sub_10000E42C(0xD00000000000001CLL, 0x80000001001F6E10, 0xD000000000000012, 0x80000001001F6E30);
    sub_10000EA50(a1, a4 & 1);
    v20 = v19;
    if ((a4 & 1) == 0)
    {
      sub_10000FF64(v19, a1);
    }

    v21 = swift_allocObject();
    v23 = v107;
    v22 = v108;
    v21[2] = v16;
    v21[3] = v22;
    v21[4] = v23;
    v21[5] = a2;
    v21[6] = a1;
    v97 = v16;

    v24 = a2;
    v102 = a1;
    v25 = sub_100010198(v20, sub_10002D0BC, v21);
    v27 = v26;
    v29 = v28;
    v110 = v30;

    v31 = swift_allocObject();
    *(v31 + 16) = AMSEngagementEnqueueDefaultTimeout;
    type metadata accessor for Defaults();
    v32 = sub_1000287B4(5);
    if (v32 != 2 && (v32 & 1) != 0)
    {
      *(v31 + 16) = 0x4082C00000000000;
    }

    v33 = AMSLogKey();
    v95 = v20;
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = swift_allocObject();
    sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
    Promise.__allocating_init()();
    v39 = sub_1000288B0(0x2065756575716E45, 0xEF74756F656D6974, &unk_10024A618, &unk_10024A640, sub_1000F117C, &unk_10024A658, *(v31 + 16));
    v104 = v31;
    v40 = v39;

    *(v38 + 16) = v40;
    v103 = (v38 + 16);
    v41 = String._bridgeToObjectiveC()();
    v96 = v41;
    sub_100002BC0(0, &qword_10026CFE0, AMSBag_ptr);
    v42 = sub_10002411C(0x6761676E45534D41, 0xED0000746E656D65, 49, 0xE100000000000000);
    v43 = [v42 BOOLForKey:v41];

    v105 = [v43 valuePromise];
    v44 = swift_allocObject();
    v44[2] = v24;
    v44[3] = v35;
    v44[4] = v37;
    v44[5] = v25;
    v94[1] = v27;
    v44[6] = v27;
    v44[7] = v29;
    v44[8] = v110;
    v44[9] = v38;
    v106 = v38;
    v117 = sub_1000266E8;
    v118 = v44;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v101 = &v115;
    v115 = sub_1000266E0;
    v116 = &unk_10024A360;
    v45 = _Block_copy(&aBlock);

    v46 = v24;

    v47 = v35;
    v48 = v25;

    v49 = v105;
    [v105 addErrorBlock:v45];
    _Block_release(v45);
    v50 = swift_allocObject();
    v50[2] = v46;
    v50[3] = v47;
    v51 = v106;
    v50[4] = v37;
    v50[5] = v51;
    v94[3] = v48;
    v50[6] = v48;
    v50[7] = v27;
    v52 = v110;
    v50[8] = v29;
    v50[9] = v52;
    v50[10] = v104;
    v117 = sub_1000F0764;
    v118 = v50;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_1000EA728;
    v116 = &unk_10024A3B0;
    v53 = _Block_copy(&aBlock);
    v94[2] = v29;
    v94[0] = v46;

    [v49 addSuccessBlock:v53];
    _Block_release(v53);
    swift_beginAccess();
    v54 = swift_allocObject();
    v55 = v94[0];
    v56 = v102;
    *(v54 + 16) = v94[0];
    *(v54 + 24) = v56;
    v57 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    LODWORD(v101) = enum case for DispatchQoS.QoSClass.default(_:);
    v58 = v112;
    v59 = *(v112 + 104);
    v99 = v112 + 104;
    v100 = v59;
    v60 = v109;
    v61 = v111;
    v59(v109);
    v94[0] = v55;
    v62 = v56;

    v63 = static OS_dispatch_queue.global(qos:)();
    v64 = *(v58 + 8);
    v112 = v58 + 8;
    v102 = v64;
    v64(v60, v61);
    v116 = v57;
    v117 = &protocol witness table for OS_dispatch_queue;
    aBlock = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_10006272C;
    *(v65 + 24) = v54;
    v66 = objc_allocWithZone(NSLock);
    v67 = v63;

    v68 = [v66 init];
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v65;
    v70 = swift_allocObject();
    *(v70 + 16) = v68;
    *(v70 + 24) = v65;
    v71 = v68;
    swift_retain_n();
    v72 = v71;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&aBlock);
    v73 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v74 = swift_allocObject();
    v75 = v95;
    *(v74 + 16) = v73;
    *(v74 + 24) = v75;
    v76 = v111;
    v100(v60, v101, v111);
    v77 = static OS_dispatch_queue.global(qos:)();
    (v102)(v60, v76);
    v116 = v57;
    v117 = &protocol witness table for OS_dispatch_queue;
    aBlock = v77;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_100062638;
    *(v78 + 24) = v74;
    v79 = objc_allocWithZone(NSLock);
    v80 = v77;

    v81 = [v79 init];
    v82 = swift_allocObject();
    *(v82 + 16) = v81;
    *(v82 + 24) = v78;
    v83 = swift_allocObject();
    *(v83 + 16) = v81;
    *(v83 + 24) = v78;
    v84 = v81;
    swift_retain_n();
    v85 = v84;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&aBlock);
    v86 = *v103;
    v87 = swift_allocObject();
    v88 = v97;
    v90 = v107;
    v89 = v108;
    v87[2] = v97;
    v87[3] = v89;
    v87[4] = v90;
    v91 = v111;
    v100(v60, v101, v111);
    v92 = v88;

    v93 = static OS_dispatch_queue.global(qos:)();
    (v102)(v60, v91);
    sub_10000C680(sub_1000F07C8, v87, v93, v86, &unk_10024A280, sub_100062700, sub_1000F1110);

    sub_100024234();
  }
}

uint64_t sub_10000D564()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D594()
{

  v1 = sub_100008FD8();

  return _swift_deallocObject(v1);
}

uint64_t sub_10000D5FC()
{

  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D62C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D694()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D704()
{
  v1 = sub_1000074E4();

  return _swift_deallocObject(v1);
}

uint64_t sub_10000D73C()
{

  v0 = sub_1000074E4();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D774()
{

  sub_100007A3C();

  return _swift_deallocObject(v1);
}

uint64_t sub_10000D7B8()
{
  swift_weakDestroy();
  v0 = sub_100005254();

  return _swift_deallocObject(v0);
}

uint64_t sub_10000D7F8(void *a1)
{
  v1 = [a1 events];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10007B9A4(&qword_10026AE50, &unk_1001E83A0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10000D884()
{
  result = qword_100269D48;
  if (!qword_100269D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100269D48);
  }

  return result;
}

const char *sub_10000D8D8(char a1)
{
  if (!a1)
  {
    return "EngagementDaemonAppData";
  }

  if (a1 == 1)
  {
    return "EngagementNFCHandling";
  }

  return "EngagementMediaCatalogSync";
}

void sub_10000D934(void *a1)
{
  v1 = sub_10000D7F8(a1);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *(v1 + 16);
    v5 = _swiftEmptyArrayStorage;
    while (v4 != v3)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v6 = *(v2 + 8 * v3 + 32);
      v21 = v6;

      if (sub_10000DAC0(&v21))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_100004C7C();
          sub_10009B994(v8, v9, v10);
          v5 = v22;
        }

        v12 = v5[2];
        v11 = v5[3];
        if (v12 >= v11 >> 1)
        {
          v13 = sub_10000B380(v11);
          sub_10009B994(v13, v14, v15);
          v5 = v22;
        }

        v5[2] = v12 + 1;
        v5[v12 + 4] = v6;
      }

      else
      {
      }

      ++v3;
    }

    v16 = 0;
    v17 = v5[2];
    while (v17 != v16)
    {
      if (v16 >= v5[2])
      {
        goto LABEL_22;
      }

      v18 = v16 + 1;
      type metadata accessor for PodcastsEventManager();
      swift_initStaticObject();

      sub_100188220(v19);

      v16 = v18;
    }

    sub_1000058C8();
  }

  else
  {
    sub_1000058C8();
  }
}

uint64_t sub_10000DAC0(uint64_t *a1)
{
  v1 = *a1;
  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v5, v1, &v6);
  sub_10000E1E8(v5);
  if (!v7)
  {
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  AnyHashable.init<A>(_:)();
  sub_10000E0C8(v5, v1, &v6);
  sub_10000E1E8(v5);
  if (!v7)
  {

LABEL_8:
    sub_10000A0C4(&v6, &qword_10026D350);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v3 & 1;
    }
  }

LABEL_9:
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_10000DCEC()
{

  return swift_allocObject();
}

uint64_t *sub_10000DD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  a17 = a11;

  return sub_100017E64(&a14);
}

uint64_t sub_10000DD34()
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_10000DD58()
{

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

uint64_t sub_10000DD78(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10000DDCC()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_10000DDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000DE18(uint64_t a1)
{

  return swift_allocObject();
}

void sub_10000DE58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000B768(a1, a2, a3, a4, a5);
  sub_100002C4C(v8, (*(v7 + 56) + 32 * v6));
  sub_10000DD0C();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
  }
}

void sub_10000DE9C()
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
    sub_10007B9A4(&unk_100271ED0, &qword_1001E74E0);
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
    if (v3 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

_OWORD *sub_10000DFC4()
{
  sub_100008738();
  v4 = v3;
  sub_1000048A0(v3, v5, v6);
  sub_100006AF8();
  if (v7)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AE78, &qword_1001ECFC0);
  v8 = sub_1000082EC();
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v8, v9))
  {
    sub_10000821C();
    sub_100012A94();
    sub_100007450();
    if (!v11)
    {
      goto LABEL_14;
    }

    v2 = v10;
  }

  if (v1)
  {
    sub_100002C00((*(*v0 + 56) + 32 * v2));
    sub_100005B9C();
    sub_100003B6C();

    return sub_100002C4C(v12, v13);
  }

  else
  {
    sub_100009DBC();
    sub_10000DE58(v16, v17, v18, v4, v19);
    sub_100003B6C();
  }
}

double sub_10000E0C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_10000C818(a1), (v5 & 1) != 0))
  {
    v6 = sub_10003AE78(v4);

    sub_100011BAC(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_10000E124(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10000DF68(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_10000E1E8(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000E23C(void *a1)
{
  result = sub_10000D7F8(a1);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = result;
  v3 = 0;
  v4 = *(result + 16);
  v16 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4 == v3)
    {

      return v16;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 8 * v3 + 32);
    strcpy(v18, "nativeHandling");
    v18[15] = -18;

    AnyHashable.init<A>(_:)();
    if (*(v5 + 16) && (v6 = sub_10000C818(v19), (v7 & 1) != 0))
    {
      sub_100011BAC(*(v5 + 56) + 32 * v6, v20);
      sub_10000E1E8(v19);
      if ((swift_dynamicCast() & 1) == 0 || (v18[0] & 1) == 0)
      {

        goto LABEL_11;
      }

      v8 = v16;
      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v16;
      if ((result & 1) == 0)
      {
        v9 = sub_100004C7C();
        result = sub_10009B994(v9, v10, v11);
        v8 = v21;
      }

      v13 = v8[2];
      v12 = v8[3];
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v15 = v8[2];
        v17 = v13 + 1;
        result = sub_10009B994((v12 > 1), v13 + 1, 1);
        v13 = v15;
        v14 = v17;
        v8 = v21;
      }

      ++v3;
      v8[2] = v14;
      v16 = v8;
      v8[v13 + 4] = v5;
    }

    else
    {

      result = sub_10000E1E8(v19);
LABEL_11:
      ++v3;
    }
  }

  __break(1u);
  return result;
}

void sub_10000E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Dictionary.init(dictionaryLiteral:)();
  v21 = &type metadata for String;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  sub_100002C4C(&v20, v19);

  swift_isUniquelyReferenced_nonNull_native();
  v18 = v12;
  sub_10000DFC4();
  v13 = v18;
  v21 = &type metadata for String;
  *&v20 = a3;
  *(&v20 + 1) = a4;
  sub_100002C4C(&v20, v19);

  swift_isUniquelyReferenced_nonNull_native();
  v18 = v13;
  sub_10000DFC4();
  v14 = v18;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v21 = sub_10007B9A4(&unk_10026FEA0, &unk_1001E7540);
  *&v20 = v14;
  sub_10000E768(&v20, v16);
}

_OWORD *sub_10000E62C(unint64_t a1, _OWORD *a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + 8 * a1) = a4;
  result = sub_100002C4C(a2, (a3[7] + 32 * a1));
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_10000E6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000E6EC()
{

  return swift_allocObject();
}

uint64_t sub_10000E70C()
{

  return swift_getErrorValue();
}

uint64_t sub_10000E728(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2;
  return result;
}

void sub_10000E768(uint64_t a1, double a2)
{
  v4 = v2;
  if (*(a1 + 24))
  {
    sub_100002C4C(a1, v29);
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000631C();
    v8 = sub_10000E87C(v6, v7, a2);
    sub_10000A6E0(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28);
  }

  else
  {
    sub_10000A00C(a1, &qword_10026D350, &qword_1001E6050);
    v16 = *v2;
    sub_10000E9A8(a2);
    if (v17)
    {
      sub_100017D08();
      sub_100002FC4();
      v18 = sub_10007B9A4(&qword_10026AE70, &unk_1001E8620);
      sub_100023CE0(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28);
      sub_1000115E8();
      sub_100002C4C((v26 + 32 * v3), v29);
      sub_10000A144();
      _NativeDictionary._delete(at:)();
      *v4 = v16;
    }

    else
    {
      memset(v29, 0, sizeof(v29));
    }

    sub_10000A00C(v29, &qword_10026D350, &qword_1001E6050);
  }
}

_OWORD *sub_10000E87C(_OWORD *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000E9A8(a3);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  sub_10007B9A4(&qword_10026AE70, &unk_1001E8620);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a2 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = sub_10000E9A8(a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = (v18[7] + 32 * v14);
    sub_100002C00(v19);

    return sub_100002C4C(a1, v19);
  }

  else
  {

    return sub_10000E62C(v14, a1, v18, a3);
  }
}

unint64_t sub_10000E9A8(double a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10000E9F4(v2, a1);
}

unint64_t sub_10000E9F4(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

void sub_10000EA50(void *a1, char a2)
{
  if (a2)
  {
    v3 = sub_10000EEEC(a1);
  }

  else
  {
    v3 = sub_10000ED18(a1);
    v2 = v26;
  }

  v4 = v3;
  if (v3)
  {
    v5 = sub_1000116AC(v3);
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v5 == v6)
      {

        return;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v35[0] = v8;
      sub_10000EF5C(v35, v2, v34);

      if (v34[1])
      {
        sub_1000F1270();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004C7C();
          sub_10000F310();
          v7 = v14;
        }

        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100005C40(v10);
          sub_10000F310();
          v7 = v15;
        }

        v31 = v33[2];
        v32 = v33[3];
        v12 = v33[0];
        v30 = v33[1];
        v7[2] = v11 + 1;
        v13 = &v7[8 * v11];
        v13[4] = v31;
        v13[5] = v32;
        v13[2] = v12;
        v13[3] = v30;
        v2 = v26;
      }

      else
      {
        sub_1000F1270();
        sub_10000A0C4(v33, &unk_10026C940);
      }

      ++v6;
    }

    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
    v34[0] = _swiftEmptyArrayStorage;
    sub_10009B928(0, 4, 0);
    v16 = _swiftEmptyArrayStorage;
    v17 = objc_opt_self();
    v18 = 0;
    v27 = xmmword_1001E6A20;
    do
    {
      v19 = *(&off_100244588 + v18 + 32);
      v20 = [v17 currentProcess];
      v34[0] = v16;
      v22 = v16[2];
      v21 = v16[3];
      if (v22 >= v21 >> 1)
      {
        v25 = sub_100005C40(v21);
        sub_10009B928(v25, v22 + 1, 1);
        v16 = v34[0];
      }

      ++v18;
      v16[2] = v22 + 1;
      v23 = &v16[8 * v22];
      *(v23 + 32) = 0;
      *(v23 + 33) = v19;
      *(v23 + 34) = v28;
      *(v23 + 19) = v29;
      v23[5] = v20;
      *(v23 + 3) = v27;
      v23[8] = 0x80000001001F31B0;
      v23[9] = 25;
      *(v23 + 80) = 0;
      v24 = v33[0];
      *(v23 + 21) = *(v33 + 3);
      *(v23 + 81) = v24;
      v23[11] = 10485760;
    }

    while (v18 != 4);
  }
}

unint64_t sub_10000ED18(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v14[3] = &type metadata for AMSFlags;
  v14[4] = sub_10000D884();
  LOBYTE(v14[0]) = 0;
  v4 = isFeatureEnabled(_:)();
  sub_100002C00(v14);
  if ((v4 & 1) == 0)
  {
    return sub_10000EEEC(a1);
  }

  v5 = sub_10000D7F8(a1);
  if (!v5)
  {
    return sub_10000EEEC(a1);
  }

  if (!*(v5 + 16))
  {

    return sub_10000EEEC(a1);
  }

  v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v14[0] = _swiftEmptyArrayStorage;
  while (v7 != 4)
  {
    v13 = *(&off_100244588 + v7 + 32);
    sub_1000E5C04(v2, v6.super.isa, &v12);
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        sub_100005C40(v9);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v14[0];
    }

    ++v7;
  }

  v14[0] = v8;
  v10 = sub_10000EEEC(a1);
  if (v10)
  {
    sub_1000E33CC(v10, v14);

    return v14[0];
  }

  else
  {
  }

  return v8;
}

uint64_t sub_10000EEEC(void *a1)
{
  v1 = [a1 destinations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10000EF5C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = *a1;
  v9 = [v8 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v30._countAndFlagsBits = v10;
  v30._object = v12;
  v13 = sub_1000116D0(v30);
  if (v13 == 4)
  {
    v29 = v3;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1001E5F70;
    *&v26 = type metadata accessor for EngagementService();
    *&v25 = a2;
    v15 = a2;
    v16 = AMSLogKey();
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v25);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
    v24[3] = sub_100002BC0(0, &qword_10026B508, AMSEngagementDestination_ptr);
    v24[0] = v8;
    v21 = v8;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(v24, &qword_10026D350);
    v22._object = 0x80000001001F7300;
    v22._countAndFlagsBits = 0xD00000000000002ALL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    LogInterpolation.init(stringInterpolation:)();
    v23 = static os_log_type_t.error.getter();
    sub_1000036B0(v23, v14);

    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v18 = [v8 allowsResponse];
    result = [v8 components];
    *a3 = v18;
    *(a3 + 1) = *(&v25 + 1);
    *(a3 + 8) = *(&v25 + 1);
    *(a3 + 16) = result;
    *(a3 + 24) = v26;
    *(a3 + 40) = v27;
    *(a3 + 56) = v28;
  }

  return result;
}

double sub_10000F284@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() currentProcess];
  *a3 = 0;
  *(a3 + 1) = a1;
  *(a3 + 8) = v6;
  result = NAN;
  *(a3 + 16) = xmmword_1001E6A20;
  *(a3 + 32) = 0x80000001001F31B0;
  *(a3 + 40) = 25;
  *(a3 + 48) = a2;
  *(a3 + 56) = 10485760;
  return result;
}

void sub_10000F310()
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
    sub_10007B9A4(&qword_100269F98, &qword_1001E74E8);
    v7 = swift_allocObject();
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
    if (v3 != v0 || &v10[64 * v2] <= v9)
    {
      memmove(v9, v10, v2 << 6);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10000F400()
{
  sub_10000AE8C();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  if (v3)
  {
    while (1)
    {
      v5 = v4[1];
      v26[0] = *v4;
      v26[1] = v5;
      v6 = v4[3];
      v8 = *v4;
      v7 = v4[1];
      v26[2] = v4[2];
      v26[3] = v6;
      v22 = v8;
      v23 = v7;
      v9 = v4[3];
      v24 = v4[2];
      v25 = v9;
      sub_10000F4A4(v26, &v18);
      v10 = v1(&v22);
      if (v0)
      {
        break;
      }

      sub_100005BE4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
      v4 += 4;
      if (!--v3)
      {
        return;
      }
    }

    sub_100005BE4(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }
}

uint64_t sub_10000F500(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for LogInterpolation.StringInterpolation();
  result = __chkstk_darwin(v12 - 8);
  v64 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 16) & 4) != 0)
  {
    v56 = a5;
    v15 = *(a1 + 1);
    sub_100003CA8(a2, a2[3]);
    sub_10003B834(&v71);
    v16 = a2;
    if (qword_1002686F0 != -1)
    {
      swift_once();
    }

    v65 = qword_100287850;
    v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v58 = *(v18 + 80);
    v61 = v17;
    v59 = v20 + 2 * v19;
    v21 = swift_allocObject();
    v57 = xmmword_1001E5F70;
    *(v21 + 16) = xmmword_1001E5F70;
    v60 = v20;
    v79 = &type metadata for PersistedEventCoordinator;
    v77 = swift_allocObject();
    v62 = v16;
    sub_1000263DC(v16, v77 + 16);
    sub_1000F0474(a3);
    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v77);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v22._countAndFlagsBits = 0x6974736973726550;
    v22._object = 0xEB0000000020676ELL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v22);
    v23 = *(a4 + 2);
    v79 = &type metadata for Int;
    v77 = v23;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v77, &qword_10026D350, &qword_1001E6050);
    v24._object = 0x8000000100200D40;
    v24._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v24);
    v79 = sub_10007B9A4(&qword_1002704A0, &unk_1001ECCF0);
    v77 = a4;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v77, &qword_10026D350, &qword_1001E6050);
    v25._countAndFlagsBits = 0xD000000000000014;
    v25._object = 0x8000000100200D60;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
    v79 = &unk_1002471C0;
    LOBYTE(v77) = v15;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A064(&v77, &qword_10026D350, &qword_1001E6050);
    v26._countAndFlagsBits = 46;
    v26._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v26);
    v63 = v19;
    LogInterpolation.init(stringInterpolation:)();
    v27 = static os_log_type_t.default.getter();
    sub_1000036B0(v27, v21);

    v28 = String._bridgeToObjectiveC()();
    if (!v71 || (v65 = v73, v29 = v74, v30 = v72, v31 = v76, v68 = v71, sub_10000A064(&v68, &qword_10026A6F8, &unk_1001E7CA0), v80 = v75, sub_10000A064(&v80, &unk_10026CD20, &unk_1001E7CC0), v81 = v31, sub_10000A064(&v81, &qword_10026A758, &qword_1001EBE80), v30 == 2) || (v29 & 1) != 0)
    {
      if (qword_1002685F8 != -1)
      {
        swift_once();
      }

      v32 = [qword_10026A070 integerForKey:v28];
      v33 = [v32 valuePromise];

      v77 = 0;
      v34 = [v33 resultWithError:&v77];

      v35 = v77;
      if (v34)
      {
        v77 = 0;
        v78 = 1;
        v36 = v35;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();

        v65 = v77;
        v37 = v78;
      }

      else
      {
        v38 = v77;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v65 = 0;
        v6 = 0;
        v37 = 1;
      }
    }

    else
    {
      v37 = 0;
    }

    type metadata accessor for AppDatabase();
    sub_10001D804(v15, 0);
    if (v6)
    {

      v39 = swift_allocObject();
      *(v39 + 16) = v57;
      v70 = &type metadata for PersistedEventCoordinator;
      v69[0] = swift_allocObject();
      sub_1000263DC(v62, v69[0] + 16);
      v40 = AMSLogKey();
      if (v40)
      {
        v41 = v40;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v69);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v48._countAndFlagsBits = 0xD000000000000035;
      v48._object = 0x8000000100200D80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v48);
      swift_getErrorValue();
      v49 = v66;
      v50 = v67;
      v70 = v67;
      v51 = sub_100017E64(v69);
      (*(v50[-1].Description + 2))(v51, v49, v50);
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A064(v69, &qword_10026D350, &qword_1001E6050);
      v52._countAndFlagsBits = 41;
      v52._object = 0xE100000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
      LogInterpolation.init(stringInterpolation:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v53 = static os_log_type_t.error.getter();
      sub_1000036B0(v53, v39);
    }

    else
    {
      v55 = v28;
      v42 = *(v56 + 16);
      for (i = v56 + 32; v42; --v42)
      {
        swift_bridgeObjectRetain_n();
        sub_1000A5940(&v77);
        v44 = sub_1000A0CA0();
        sub_1000A0E24(&v77, v65, v37, v44, 1);

        sub_10009D054(&v77);

        i += 8;
      }

      v45 = swift_allocObject();
      *(v45 + 16) = v57;
      v70 = &type metadata for PersistedEventCoordinator;
      v69[0] = swift_allocObject();
      sub_1000263DC(v62, v69[0] + 16);
      v46 = AMSLogKey();
      if (v46)
      {
        v47 = v46;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v69);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v54 = static os_log_type_t.default.getter();
      sub_1000036B0(v54, v45);
    }
  }

  return result;
}

void sub_10000FF64(uint64_t a1, void *a2)
{
  isUniquelyReferenced_nonNull_native = sub_10000D7F8(a2);
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  if (isUniquelyReferenced_nonNull_native)
  {
    v5 = isUniquelyReferenced_nonNull_native;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5[2];
  while (1)
  {
    if (v6 == v3)
    {
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      sub_10000F400();

      return;
    }

    if (v3 >= v5[2])
    {
      break;
    }

    v7 = v5[v3 + 4];

    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v8 = sub_10000C818(v17), (v9 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = sub_10000E1E8(v17);
      goto LABEL_17;
    }

    sub_100011BAC(*(v7 + 56) + 32 * v8, v18);
    sub_10000E1E8(v17);

    isUniquelyReferenced_nonNull_native = swift_dynamicCast();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && (v10 = v20) != 0)
    {
      v16 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000DE9C();
        v4 = isUniquelyReferenced_nonNull_native;
      }

      v11 = v4[2];
      v12 = v11 + 1;
      if (v11 >= v4[3] >> 1)
      {
        v15 = v11 + 1;
        v14 = v4[2];
        sub_10000DE9C();
        v12 = v15;
        v11 = v14;
        v4 = isUniquelyReferenced_nonNull_native;
      }

      ++v3;
      v4[2] = v12;
      v13 = &v4[2 * v11];
      v13[4] = v16;
      v13[5] = v10;
    }

    else
    {
LABEL_17:
      ++v3;
    }
  }

  __break(1u);
}

void *sub_100010198(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v119 = a2;
  v120 = a3;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v139 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v136 = v10;
  v137 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v127 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v135 = &v108 - v14;
  Date.init()();
  v15 = AMSLogKey();
  if (!v15)
  {
    v15 = AMSGenerateLogCorrelationKey();
  }

  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v132 = v16;

  if (qword_100268830 != -1)
  {
LABEL_38:
    swift_once();
  }

  sub_100011C54(0xD000000000000013, 0x80000001001F61B0);
  if (qword_1002686F0 != -1)
  {
    swift_once();
  }

  v122 = qword_100287850;
  v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  v18 = *(type metadata accessor for LogInterpolation() - 8);
  v19 = *(v18 + 80);
  v20 = (v19 + 32) & ~v19;
  v121 = *(v18 + 72);
  v117 = v19;
  v118 = v17;
  v115 = v20 + 2 * v121;
  v21 = swift_allocObject();
  v114 = xmmword_1001E5F70;
  *(v21 + 16) = xmmword_1001E5F70;
  v116 = v20;
  v113 = type metadata accessor for EngagementService();
  *&v149 = v113;
  v147 = v4;
  v143 = v4;
  v22 = AMSLogKey();
  if (v22)
  {
    v23 = v22;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v147);
  LogInterpolation.init(stringLiteral:)();
  v24 = static os_log_type_t.debug.getter();
  sub_1000036B0(v24, v21);

  v158 = _swiftEmptyArrayStorage;
  v157 = _swiftEmptyArrayStorage;
  v147 = a1;

  a1 = 0;
  sub_100027804(&v147);
  v4 = 0;
  v25 = v147;
  v111 = "Scheduling request";
  v112 = OBJC_IVAR____TtC14amsengagementd17EngagementService_priorityQueue;
  v110 = ", allowsResponse: ";
  v124 = v12 + 7;
  v125 = v137 + 16;
  v123 = v137 + 32;
  v129 = enum case for DispatchQoS.QoSClass.default(_:);
  v128 = (v8 + 104);
  v130 = (v8 + 8);
  v26 = _swiftEmptyArrayStorage;
  v109 = _swiftEmptyArrayStorage;
  v126 = v147;
LABEL_9:
  v27 = (v4 << 6) | 0x20;
  while (1)
  {
    v28 = *(v25 + 16);
    if (v4 == v28)
    {
      break;
    }

    if (v4 >= v28)
    {
      __break(1u);
      goto LABEL_38;
    }

    v140 = v27;
    v29 = *(v25 + v27);
    v30 = *(v25 + v27 + 16);
    v31 = *(v25 + v27 + 32);
    v152[3] = *(v25 + v27 + 48);
    v152[1] = v30;
    v152[2] = v31;
    v152[0] = v29;
    v148 = *(v25 + v27);
    v149 = *(v25 + v27 + 16);
    v150 = *(v25 + v27 + 32);
    v151 = *(v25 + v27 + 48);
    v166 = v150;
    v167 = v151;
    v164 = v148;
    v165 = v149;
    v155 = v150;
    v156 = v151;
    v153 = v148;
    v154 = v149;
    v145 = v131;
    v146 = v132;

    sub_10000F4A4(v152, &v147);
    v32._countAndFlagsBits = 95;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v34 = v145;
    v33 = v146;
    v147 = v4;
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v147 = v34;
    *&v148 = v33;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39 = v148;
    v40 = v167;
    v142 = v4;
    v144 = v147;
    if (v167 && v167 != 1)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v168[0] = v153;
    v168[1] = v154;
    v168[2] = v155;
    v168[3] = v156;
    sub_10000F4A4(&v164, &v147);
    v42 = sub_1000E6E60(v168);
    sub_10000FF10(&v164);
    if (v42)
    {
      sub_10007B9A4(&qword_1002697F0, &qword_1001EBCF0);
      v43 = String._bridgeToObjectiveC()();
      v44 = String._bridgeToObjectiveC()();
      v45 = AMSError();

      v141 = Promise.__allocating_init(error:)();
      v46 = v143;
      goto LABEL_25;
    }

LABEL_19:
    v47 = swift_allocObject();
    *(v47 + 16) = v114;
    *&v149 = v113;
    v147 = v143;
    v48 = v143;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v147);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v49._countAndFlagsBits = 0x6E69756575716E45;
    v49._object = 0xEA00000000002067;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v49);
    v141 = v48;
    if (v40)
    {
      if (v40 == 1)
      {
        v50 = 0x696577746867696CLL;
        v51 = 0xEF636E7953746867;
      }

      else
      {
        v51 = 0xE400000000000000;
        v50 = 1668184435;
      }
    }

    else
    {
      v51 = 0xE700000000000000;
      v50 = 0x65756575716E65;
    }

    *&v149 = &type metadata for String;
    v147 = v50;
    *&v148 = v51;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v52._countAndFlagsBits = 0x7473657571657220;
    v52._object = 0xEF203A7070612820;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v52);
    *&v149 = &unk_1002471C0;
    v138 = BYTE1(v164);
    LOBYTE(v147) = BYTE1(v164);
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v53._object = (v111 | 0x8000000000000000);
    v53._countAndFlagsBits = 0xD000000000000012;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
    *&v149 = &type metadata for Bool;
    LOBYTE(v147) = v164;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v54._countAndFlagsBits = 0x69726F697270202CLL;
    v54._object = 0xEC000000203A7974;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
    v55 = sub_100027970();
    *&v149 = &type metadata for String;
    v147 = v55;
    *&v148 = v56;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A0C4(&v147, &qword_10026D350);
    v57._countAndFlagsBits = 41;
    v57._object = 0xE100000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v57);
    LogInterpolation.init(stringInterpolation:)();
    v58 = static os_log_type_t.default.getter();
    sub_1000036B0(v58, v47);

    v46 = v143;
    v59 = sub_100027970();
    v61 = v60;
    v62 = swift_allocObject();
    v63 = v141;
    v64 = v144;
    *(v62 + 16) = v141;
    *(v62 + 24) = v64;
    *(v62 + 32) = v39;
    *(v62 + 40) = v40;
    v65 = v165;
    *(v62 + 48) = v164;
    *(v62 + 64) = v65;
    v66 = v167;
    *(v62 + 80) = v166;
    *(v62 + 96) = v66;
    v67 = v120;
    *(v62 + 112) = v119;
    *(v62 + 120) = v67;
    v68 = v63;
    sub_10000F4A4(&v164, &v147);

    sub_100027C4C(v138, v59, v61, &v159);
    v141 = sub_1000ED88C(&v159, sub_10002D0B4, v62);
    v163 = v160;
    sub_100027DE8(&v163);
    v162 = v161;
    sub_100027DE8(&v162);

LABEL_25:
    v69 = v136;
    v70 = v137;
    v71 = v127;
    (*(v137 + 16))(v127, v135, v136);
    v72 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v73 = (v124 + v72) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    (*(v70 + 32))(v74 + v72, v71, v69);
    *(v74 + v73) = v46;
    v75 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v75 = v144;
    v75[1] = v39;
    v76 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v78 = v133;
    v77 = v134;
    (*v128)(v133, v129, v134);
    v79 = v46;
    v8 = v141;

    v80 = static OS_dispatch_queue.global(qos:)();
    (*v130)(v78, v77);
    *&v149 = v76;
    *(&v149 + 1) = &protocol witness table for OS_dispatch_queue;
    v147 = v80;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_100060194;
    *(v81 + 24) = v74;
    v82 = objc_allocWithZone(NSLock);
    v83 = v80;

    v84 = [v82 init];
    v12 = swift_allocObject();
    *(v12 + 16) = v84;
    *(v12 + 24) = v81;
    v85 = swift_allocObject();
    *(v85 + 16) = v84;
    *(v85 + 24) = v81;
    v86 = v84;
    swift_retain_n();
    v87 = v86;
    Promise.then(perform:orCatchError:on:)();

    sub_100002C00(&v147);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1 >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v26 = v158;
    v88 = v142;
    v25 = v126;
    if (v164)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      a1 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1 >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v4 = v88 + 1;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v109 = v157;
      sub_10000FF10(&v164);
      goto LABEL_9;
    }

    sub_10000FF10(&v164);
    v27 = v140 + 64;
    v4 = v88 + 1;
  }

  v89 = v109;
  if (!sub_1000116AC(v109))
  {
    goto LABEL_36;
  }

  if ((v89 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_36:

    v144 = sub_100027E3C(v90);

    v91 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v92 = swift_allocObject();
    v94 = v131;
    v93 = v132;
    v92[2] = v91;
    v92[3] = v94;
    v92[4] = v93;
    v95 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
    v97 = v133;
    v96 = v134;
    (*v128)(v133, v129, v134);
    v98 = static OS_dispatch_queue.global(qos:)();
    (*v130)(v97, v96);
    *&v149 = v95;
    *(&v149 + 1) = &protocol witness table for OS_dispatch_queue;
    v147 = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_100062414;
    *(v99 + 24) = v92;
    v100 = objc_allocWithZone(NSLock);
    v101 = v98;

    v102 = [v100 init];
    v103 = swift_allocObject();
    *(v103 + 16) = v102;
    *(v103 + 24) = v99;
    v104 = swift_allocObject();
    *(v104 + 16) = v102;
    *(v104 + 24) = v99;
    v105 = v102;
    swift_retain_n();
    v106 = v105;
    Promise.then(perform:orCatchError:on:)();

    (*(v137 + 8))(v135, v136);

    sub_100002C00(&v147);
    return v26;
  }

  else
  {
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_36;
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

unint64_t sub_100011190(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1000111D8()
{
  sub_100003D74();
  v3 = v2;
  v5 = v4;
  sub_100005068(v6, v7, v8);
  sub_100006AF8();
  if (v9)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(v5, v3);
  v10 = sub_1000082EC();
  v12 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
  if (v12)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v16)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v12, v13, v14, v15, *v0);
    sub_100005F14();
  }

  else
  {
    v19 = sub_100007988();
    sub_1000112BC(v19, v20, v21, v22, v23);
    sub_100005F14();
  }
}

void sub_1000112BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10000B768(a1, a2, a3, a4, a5);
  *(*(v6 + 56) + 8 * v5) = v7;
  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    sub_100007178(v6, v10);
  }
}

uint64_t sub_1000112FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0);
}

uint64_t sub_100011348()
{

  sub_100007600();

  return _swift_deallocObject(v1);
}

uint64_t sub_100011394()
{

  sub_1000083D8();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000113D0()
{
  sub_10000557C();

  return _swift_deallocObject(v0);
}

uint64_t sub_100011404(uint64_t *a1, uint64_t *a2)
{
  sub_10007B9A4(a1, a2);
  sub_1000047A4();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return _swift_deallocObject(v2);
}

uint64_t sub_100011484()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000114D4()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100011514()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_100011554(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2);
}

void *sub_1000115D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10008DAF8(a1, a2, a3, v3);
}

uint64_t sub_1000115F4()
{
}

uint64_t sub_100011630()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100011650(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u8[0] = 3;
}

uint64_t sub_100011674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_10000A7C0(v4, 1, 1, a4);
}

uint64_t sub_1000116AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1000116D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100244660, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void *sub_10001171C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000117D8(a1, a2);
  sub_1000118F0(&off_100244DF8);
  return v3;
}

void *sub_100011768(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10007B9A4(&qword_10026C880, &qword_1001EBCE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1000117D8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_100011768(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000118F0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000EF71C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1000119D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = v13;
  v17 = v14;

  String.append(_:)(*&v16);
}

unint64_t sub_1000119F0()
{

  return sub_100012A94();
}

id sub_100011A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_1000ACB0C(v12, v10, a1, a4, a5, a6, a7, a8, v11, a10);
}

double sub_100011A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15)
{

  return sub_10000E0C8(&a10, v15, &a15);
}

uint64_t sub_100011A5C()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100011AC0()
{

  return sub_10000A064(v2 - 112, v0, v1);
}

double sub_100011ADC()
{

  return sub_10000E0C8(v1 - 136, v0, (v1 - 168));
}

BOOL sub_100011AF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v24, v25);
}

id sub_100011B18(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100011B44()
{
  *(v0 - 82) = 1;

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t sub_100011BAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for TransactionStore(uint64_t a1)
{
  result = qword_100271530;
  if (!qword_100271530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100011C54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100012758;
  *(v9 + 24) = v8;
  v12[4] = sub_10001278C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012764;
  v12[3] = &unk_100252A68;
  v10 = _Block_copy(v12);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011E14(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for OSSignpostID();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v65 = &v55 - v11;
  v12 = *(a1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet);
  v13 = String._bridgeToObjectiveC()();
  [v12 addObject:v13];

  v14 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_signposter;
  String._bridgeToObjectiveC()();
  v64 = v14;
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:object:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v12 countForObject:v15];

  if (v16 == 1)
  {
    if (qword_100268730 != -1)
    {
      swift_once();
    }

    v63 = qword_100287890;
    v17 = sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v18 = *(type metadata accessor for LogInterpolation() - 8);
    v19 = *(v18 + 72);
    v20 = *(v18 + 80);
    v21 = (v20 + 32) & ~v20;
    v61 = v17;
    v62 = v19;
    v58 = v21 + 2 * v19;
    v59 = v20;
    v22 = swift_allocObject();
    v57 = xmmword_1001E5F70;
    *(v22 + 16) = xmmword_1001E5F70;
    v60 = v21;
    v56 = type metadata accessor for TransactionStore(0);
    v71 = v56;
    v69 = a1;

    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v69);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28._countAndFlagsBits = 0xD000000000000016;
    v28._object = 0x80000001002036A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v28);
    v71 = &type metadata for String;
    v69 = a2;
    v70 = a3;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_100002C5C(&v69);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    LogInterpolation.init(stringInterpolation:)();
    v30 = static os_log_type_t.info.getter();
    sub_1000036B0(v30, v22);

    v31 = OSSignposter.logHandle.getter();
    v32 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1000127B4();
      v35 = v65;
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, v32, v36, "Transaction", "%s", v33, 0xCu);
      sub_100002C00(v34);
    }

    else
    {

      v35 = v65;
    }

    (*(v66 + 16))(v10, v35, v67);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v37 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore;
    swift_beginAccess();
    v38 = *(a1 + v37);

    v39 = sub_100012A40(a2, a3, v38);

    if (v39)
    {

      v40 = swift_allocObject();
      *(v40 + 16) = v57;
      v71 = v56;
      v69 = a1;

      v41 = AMSLogKey();
      if (v41)
      {
        v42 = v41;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v69);
      LogInterpolation.init(stringLiteral:)();
      v51 = static os_log_type_t.fault.getter();
      sub_1000036B0(v51, v40);
    }

    String.utf8CString.getter();
    v52 = os_transaction_create();

    v53 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionStore;
    swift_beginAccess();
    if (v52)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v68 = *(a1 + v53);
      sub_100012970();
      *(a1 + v53) = v68;
    }

    else
    {
      sub_1000ABE18(a2, a3);
      swift_unknownObjectRelease();
    }

    swift_endAccess();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v68 = *(a1 + v37);
    sub_1000112A8();
    *(a1 + v37) = v68;
    swift_endAccess();

    goto LABEL_24;
  }

  if (qword_100268730 != -1)
  {
    swift_once();
  }

  v63 = qword_100287890;
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1001E5F70;
  v71 = type metadata accessor for TransactionStore(0);
  v69 = a1;

  v26 = AMSLogKey();
  if (v26)
  {
    v27 = v26;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(&v69);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._object = 0x8000000100203680;
  v43._countAndFlagsBits = 0xD000000000000014;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v43);
  v71 = &type metadata for String;
  v69 = a2;
  v70 = a3;

  LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
  sub_100002C5C(&v69);
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v44);
  LogInterpolation.init(stringInterpolation:)();
  v45 = static os_log_type_t.info.getter();
  sub_1000036B0(v45, v25);

  v46 = OSSignposter.logHandle.getter();
  v47 = static os_signpost_type_t.event.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

LABEL_24:
    v49 = v65;
    return (*(v66 + 8))(v49, v67);
  }

  v48 = swift_slowAlloc();
  *v48 = 0;
  v49 = v65;
  v50 = OSSignpostID.rawValue.getter();
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v46, v47, v50, "Transaction", "Transaction joined", v48, 2u);

  return (*(v66 + 8))(v49, v67);
}

uint64_t sub_1000127B4()
{
  sub_1000F1290();
  v3 = v2;

  sub_1000060D0();
  v7 = sub_100012870(v4, v5, v6, 1, v3, v1);
  v8 = v12[0];
  if (v7)
  {
    v9 = v7;

    ObjectType = swift_getObjectType();
    v12[0] = v9;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v12[0] = v3;
    v12[1] = v1;
  }

  v10 = *v0;
  if (*v0)
  {
    sub_100011BAC(v12, *v0);
    *v0 = v10 + 32;
  }

  sub_100002C00(v12);
  return v8;
}

unint64_t sub_100012870(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001171C(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_100012970()
{
  sub_100008738();
  sub_100005068(v2, v3, v4);
  sub_100006AF8();
  if (v5)
  {
    __break(1u);
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  sub_10000A5E0();
  sub_10007B9A4(&qword_10026AED8, &qword_1001E8680);
  v6 = sub_1000082EC();
  v8 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v6, v7);
  if (v8)
  {
    sub_1000119F0();
    sub_100007450();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    sub_10000AEC0(v8, v9, v10, v11, *v0);
    sub_100003B6C();

    return swift_unknownObjectRelease();
  }

  else
  {
    v15 = sub_100007988();
    sub_100011190(v15, v16, v17, v18, v19);
    sub_100003B6C();
  }
}

uint64_t sub_100012A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_100012A94();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_10000A864(v3);
}

unint64_t sub_100012A94()
{
  sub_10003D2F8();
  sub_100009DBC();
  String.hash(into:)();
  Hasher._finalize()();
  v0 = sub_10000821C();

  return sub_100012E40(v0, v1, v2);
}

uint64_t sub_100012B18@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 64) = v4;
  *(v2 + 72) = a1;
  *(v2 + 48) = v3;
  *(v2 + 56) = v1;
}

uint64_t sub_100012B3C()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100012B88()
{
  v1 = 0x202C424F4C4220;
  v2 = 0xE700000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100012BCC@<X0>(uint64_t a1@<X8>)
{

  return sub_100011C54(0xD000000000000013, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_100012BEC(uint64_t a1)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100012C1C(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100012C5C()
{

  return sub_1000652F0(v0 + v1, v2);
}

__n128 sub_100012C7C(__n128 *a1)
{
  result = v1[10];
  a1[1] = result;
  return result;
}

id sub_100012C9C()
{
  *(v0 - 104) = *(v0 - 304);
  v2 = *(v0 - 312);
  *(v0 - 128) = v2;

  return v2;
}

void sub_100012CC4()
{
  v1 = 8238;
  v2 = 0xE200000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

_OWORD *sub_100012D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{
  v22 = (*(v19 + 56) + 32 * v20);

  return sub_100002C4C(v22, &a19);
}

uint64_t sub_100012D2C()
{

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

void sub_100012D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{

  sub_1000190C0(v32 - 112, v30, v31, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100012DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

unint64_t sub_100012E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100012F04()
{

  return swift_task_alloc();
}

__n128 sub_100012F34(__n128 *a1)
{
  result = *(v1 - 368);
  a1[1] = result;
  return result;
}

uint64_t sub_100012F54(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return AMSSetLogKeyIfNeeded();
}

void sub_100012FBC()
{
  v1 = 41;
  v2 = 0xE100000000000000;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v1);
}

uint64_t start()
{
  v0 = objc_opt_new();
  [v0 runUntilIdleExit];

  return 0;
}

id sub_10001301C()
{
  v1 = OBJC_IVAR____TtC14amsengagementd7RunLoop_userNotificationsService;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for UserNotificationsService()) init];
  *&v0[OBJC_IVAR____TtC14amsengagementd7RunLoop_cloudKitPushSubscription] = 0;
  v2 = OBJC_IVAR____TtC14amsengagementd7RunLoop_setupAssistantObserver;
  type metadata accessor for SetupAssistantObserver();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  *&v0[OBJC_IVAR____TtC14amsengagementd7RunLoop_terminationSignalSource] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RunLoop();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1000130BC(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 15.0, 0);
  if ((v5 - 3) >= 2)
  {
    if ((v5 - 1) > 1)
    {
      _StringGuts.grow(_:)(23);
      v22._countAndFlagsBits = 0xD000000000000015;
      v22._object = 0x8000000100201BA0;
      String.append(_:)(v22);
      type metadata accessor for CFRunLoopRunResult(0);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1001E5F70;
      v24 = type metadata accessor for RunLoop();
      v23 = a1;
      v13 = a1;
      v14 = AMSLogKey();
      if (v14)
      {
        v15 = v14;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v23);
      LogInterpolation.init(stringLiteral:)();
      if (qword_1002686B0 != -1)
      {
        swift_once();
      }

      v16 = static os_log_type_t.debug.getter();
      sub_1000036B0(v16, v12);

      *a2 = 0;
    }
  }

  else
  {
    if (qword_100268830 != -1)
    {
      swift_once();
    }

    result = sub_1000135F8();
    if (result >= 1)
    {
      v7 = result;
      if (qword_100268730 != -1)
      {
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      type metadata accessor for LogInterpolation();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1001E5F70;
      v24 = type metadata accessor for RunLoop();
      v23 = a1;
      v9 = a1;
      v10 = AMSLogKey();
      if (v10)
      {
        v11 = v10;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(&v23);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v17._countAndFlagsBits = 0x7261206572656854;
      v17._object = 0xEA00000000002065;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v17);
      v24 = &type metadata for Int;
      v23 = v7;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v23);
      v18._object = 0x8000000100201BC0;
      v18._countAndFlagsBits = 0xD000000000000016;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v18);
      v19 = sub_1001AE334();
      v24 = sub_100002BC0(0, &unk_100271650, NSCountedSet_ptr);
      v23 = v19;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_100002C5C(&v23);
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v20);
      LogInterpolation.init(stringInterpolation:)();
      v21 = static os_log_type_t.debug.getter();
      sub_1000036B0(v21, v8);
    }
  }

  return result;
}

id sub_100013658@<X0>(void *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet) count];
  *a1 = result;
  return result;
}

void sub_10001369C()
{
  v2 = 1;
  do
  {
    v1 = objc_autoreleasePoolPush();
    sub_1000130BC(v0, &v2);
    objc_autoreleasePoolPop(v1);
  }

  while ((v2 & 1) != 0);
}

void sub_1000137AC()
{
  sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
  type metadata accessor for LogInterpolation();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1001E5F70;
  v9[3] = type metadata accessor for RunLoop();
  v9[0] = v0;
  v2 = v0;
  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100002C00(v9);
  LogInterpolation.init(stringLiteral:)();
  if (qword_1002686B0 != -1)
  {
    swift_once();
  }

  v5 = static os_log_type_t.default.getter();
  sub_1000036B0(v5, v1);

  v6 = qword_100268830;
  v7 = v2;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_100011C54(0x74536E6F6D656164, 0xED00007075747261);
  v8 = objc_autoreleasePoolPush();
  sub_10001FC9C();
  objc_autoreleasePoolPop(v8);
  sub_1001AE448(0x74536E6F6D656164, 0xED00007075747261);

  sub_10001369C();
  sub_10018F8C4();
}

uint64_t sub_100013A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for Log();
  sub_100004AA0();
  v5 = swift_allocObject();
  sub_100013AB8();
  result = OS_os_log.init(subsystem:category:)();
  *(v5 + 16) = result;
  *a4 = v5;
  return result;
}

unint64_t sub_100013AB8()
{
  result = qword_10026DD38;
  if (!qword_10026DD38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026DD38);
  }

  return result;
}

uint64_t sub_100013AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100013B44(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100003E78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013B88()
{
  type metadata accessor for TransactionStore(0);
  v0 = swift_allocObject();
  result = sub_100013CBC(5.0);
  qword_100287928 = v0;
  return result;
}

uint64_t sub_100013BCC(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100013CBC(double a1)
{
  v2 = v1;
  type metadata accessor for OS_dispatch_queue.Attributes();
  sub_100002DDC();
  __chkstk_darwin(v4);
  sub_100002DEC();
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100002DEC();
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000356C();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100002DEC();
  v12 = v11 - v10;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v12, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  static DispatchQoS.unspecified.getter();
  sub_100013AFC(&qword_10026CCF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10007B9A4(&unk_10026F8A0, &unk_1001EBCC0);
  sub_10001407C(&qword_10026CD00, &unk_10026F8A0, &unk_1001EBCC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (qword_100268730 != -1)
  {
    swift_once();
  }

  v13 = *(qword_100287890 + 16);
  OSSignposter.init(logHandle:)();
  v14 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSet;
  *(v2 + v14) = [objc_allocWithZone(NSCountedSet) init];
  v15 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionSignpostStateStore;
  type metadata accessor for OSSignpostIntervalState();
  *(v2 + v15) = Dictionary.init(dictionaryLiteral:)();
  v16 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_transactionStore;
  sub_10007B9A4(&qword_10026AEE0, &qword_1001E8688);
  result = Dictionary.init(dictionaryLiteral:)();
  *(v2 + v16) = result;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 < 9.22337204e18)
  {
    v18 = OBJC_IVAR____TtC14amsengagementd16TransactionStore_holdTime;
    *(v2 + OBJC_IVAR____TtC14amsengagementd16TransactionStore_holdTime) = a1;
    v19 = enum case for DispatchTimeInterval.seconds(_:);
    type metadata accessor for DispatchTimeInterval();
    sub_100002DDC();
    (*(v20 + 104))(v2 + v18, v19);
    return v2;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10001407C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10007BC70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000140D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = sub_10000C504(0, a2);
    sub_10007BC70(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001413C()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000141CC(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10001BE14;

  return sub_1000142B0();
}

uint64_t sub_1000142B0()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  *(v0 + 224) = sub_100023C0C();
  v4 = sub_1000047B0();

  return _swift_task_switch(v4, v5, v6);
}

void (*sub_100014380(uint64_t a1))(void)
{
  sub_10000A1D8(a1);
  v3 = v1;
  v2();
  sub_100017FBC();

  return v2;
}

uint64_t sub_1000143D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002CC4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100002DEC();
  v9 = v8 - v7;
  if (qword_100268848 != -1)
  {
    swift_once();
  }

  v10 = qword_100287940;
  v11 = AMSSetLogKeyIfNeeded();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_10007B9A4(&qword_100271F68, &unk_1001F1B50);
  v15 = [*(v1 + 168) stringForKey:v10];
  v16 = [v15 valuePromise];

  Promise<A>.init(_:)();
  sub_1000083D8();
  v17 = swift_allocObject();
  v17[2] = v1;
  v17[3] = v12;
  v17[4] = v14;
  v17[5] = ObjectType;
  v24[3] = type metadata accessor for SyncTaskScheduler();
  v24[4] = &protocol witness table for SyncTaskScheduler;
  sub_100017E64(v24);

  SyncTaskScheduler.init()();
  Promise.map<A>(on:_:)();

  sub_100002C00(v24);
  sub_1000083D8();
  v18 = swift_allocObject();
  v18[2] = v1;
  v18[3] = v12;
  v18[4] = v14;
  v18[5] = ObjectType;
  sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v3);

  v19 = static OS_dispatch_queue.global(qos:)();
  v20 = sub_10000A298();
  v21(v20);
  v22 = sub_1000185A8(sub_1000186DC, v18, v19);

  return v22;
}

uint64_t sub_1000147AC(uint64_t a1, sqlite3 *a2, uint64_t a3, uint64_t a4, sqlite3_stmt **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = a7;
  v13[4] = a8;
  sub_100017A08();
  v14 = qword_100268818;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v20 == 2 || (v20 & 1) == 0)
  {
    __chkstk_darwin(v15);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v16 = String.utf8CString.getter();

    v17 = sqlite3_prepare_v2(a2, (v16 + 32), -1, a5, 0);

    sub_10001515C(v17, 0xD000000000000011, 0x8000000100202E80, a7, a8);

    objc_autoreleasePoolPop(v19);
  }
}

uint64_t sub_100014A10(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_100014A20(void (*a1)(void), uint64_t a2)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v6 || (v5 & 1) == 0)
  {
    __chkstk_darwin(v4);
    sub_10000BE84();
    *(v8 - 16) = a1;
    *(v8 - 8) = a2;
    sub_100023F4C();
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    a1();
    objc_autoreleasePoolPop(v7);
  }

  sub_1000068D4();
}

uint64_t SQLDatabase.prepare(sql:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 64);
  if (v5)
  {
    v11 = 0;

    sub_100014F80(v4, &v11, v4, v5, a1, a2);
    result = v11;
    if (v3)
    {
    }

    else if (!v11)
    {
      __break(1u);
    }
  }

  else
  {
    v9 = sub_10001ED34();
    sub_100007544(&unk_1002527D0, v9);
    *v10 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_100014BF8(uint64_t *a1, uint64_t a2, sqlite3 *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SQLStatement();
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a4;
  v12[4] = a5;
  v11[3] = v12;
  v11[4] = 0;
  v11[7] = 0;
  v11[8] = a2;
  v11[2] = sub_10001A61C;
  v11[5] = a4;
  v11[6] = a5;
  v17 = 0;
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  sub_1000147AC(a2, a3, a4, a5, &v17, a2, a4, a5);
  if (v5)
  {
  }

  v14 = v17;
  if (!v17)
  {
    sub_10001ED34();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
  }

  v11[7] = v14;
  *a1 = v11;

  sub_10007B9A4(&qword_10026BFA8, &qword_1001EA300);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1001E61B0;
  if (*a1)
  {
    v15 = result;
    swift_weakInit();
    swift_weakAssign();
    swift_beginAccess();
    sub_100015380(v15);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014E40()
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  v7 = v0;
  v8 = 0xD000000000000014;
  v9 = 0x8000000100202D10;
  v10 = _swiftEmptyArrayStorage;
  v11 = sub_10001CAF0;
  v12 = v2;
  sub_100014A20(sub_100014E28, &v6);
  if (v1)
  {
  }

  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100014F80(uint64_t a1, uint64_t *a2, uint64_t a3, sqlite3 *a4, uint64_t a5, uint64_t a6)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    swift_once();
  }

  v12 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v15 == 2 || (v15 & 1) == 0)
  {
    __chkstk_darwin(v12);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v6)
    {
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    sub_100014BF8(a2, a3, a4, a5, a6);
    if (v6)
    {
      objc_autoreleasePoolPop(v13);
    }

    objc_autoreleasePoolPop(v13);
  }
}

void sub_10001515C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = a1;
  v12 = sub_100016CE0(a1);
  v13 = v12;
  if (v12 > 0x1Bu || ((1 << v12) & 0x8000081) == 0)
  {
    v15 = v12;
    _StringGuts.grow(_:)(23);

    v16._countAndFlagsBits = a2;
    v16._object = a3;
    String.append(_:)(v16);
    v17 = sub_100016CE0(v11);
    v21 = sub_1000A0624();
    v18 = sub_100007544(&type metadata for SQLite3Status, v21);
    *v19 = v17;
    sub_1001A504C(0xD000000000000015, 0x8000000100202E00, a4, a5, v18);

    if (v13 != 20)
    {
      if (v13 == 14)
      {
LABEL_13:
        sub_1001A59B4();
        if (v6)
        {
          return;
        }

LABEL_11:
        sub_100007544(&type metadata for SQLite3Status, v21);
        *v20 = v15;
        swift_willThrow();
        return;
      }

      if (v13 != 6)
      {
        goto LABEL_11;
      }
    }

    if (*(v5 + 56))
    {
      sub_1001A5914();
      if (v6)
      {
        return;
      }

      goto LABEL_11;
    }

    *(v5 + 56) = 1;
    goto LABEL_13;
  }
}

uint64_t sub_100015308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_100015380(uint64_t a1)
{
  v4 = sub_10000B958(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_100015308(v4, 1, sub_10001AAC4);
  sub_10000AF78();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_100005944();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_10007B9A4(&qword_10026BFB0, &qword_1001EA308);
  sub_10000C3FC(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_10000ABF8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_100015718()
{
  sub_1001BF340();
  sub_100003D28();
  sub_100048FC0();
  v0 = swift_task_alloc();
  v1 = sub_100009F04(v0);
  *v1 = v2;
  sub_1000035D8(v1);
  sub_1001BF32C();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000157A8(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_10001C718;

  return sub_10001588C();
}

uint64_t sub_10001588C()
{
  sub_100004768();
  v3 = sub_1000167E4(v1, v2);
  sub_100003D10(v3);
  *(v0 + 224) = sub_100023C0C();
  v4 = sub_1000047B0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10001595C()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1000159DC()
{

  return LogInterpolation.init(stringLiteral:)();
}

id sub_100015A0C(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
  v6 = *(v4 - 136);
  a1[6] = v3;
  a1[7] = v6;
  a1[8] = *(v4 - 120);

  return v3;
}

uint64_t sub_100015A38(uint64_t a1)
{
  *(v1 + 256) = a1;

  return type metadata accessor for LogInterpolation();
}

uint64_t sub_100015A6C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for ContentManager();
}

uint64_t sub_100015A84()
{

  return static LogInterpolation.prefix(_:_:)();
}

void sub_100015AA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v15 = v12;
  v16 = v13;

  String.append(_:)(*&v15);
}

void sub_100015AC0()
{
}

uint64_t sub_100015B10()
{

  return LogInterpolation.init(stringInterpolation:)();
}

uint64_t sub_100015B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100015B78()
{

  return swift_allocObject();
}

uint64_t sub_100015BBC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_100015C04()
{
}

uint64_t sub_100015C20()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100015C40(uint64_t a1)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100015C70(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 88) = v1;
}

uint64_t sub_100015C9C()
{

  return swift_allocObject();
}

uint64_t sub_100015CBC(uint64_t a1)
{

  return Promise.then(perform:orCatchError:on:)();
}

void sub_100015CE0(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001ELL;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*(&a2 - 1));
}

uint64_t sub_100015CF8()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  return v2 ^ 1;
}

uint64_t sub_100015D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = swift_allocObject();
  *(v11 + 16) = a2;

  v12 = a6(a4, v11, a5, a1);

  return v12;
}

uint64_t sub_100015E2C()
{
  sub_100003EFC();
  v1 = type metadata accessor for CocoaError.Code();
  v2 = sub_100003D10(v1);
  __chkstk_darwin(v2);
  sub_100002DEC();
  type metadata accessor for CocoaError();
  sub_100002CC4();
  __chkstk_darwin(v3);
  sub_100002DEC();
  if (v0)
  {
    if (v0 == 1)
    {

      return sub_1000182E8();
    }

    else if (v0 == 2)
    {

      return sub_1001BA7F4();
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else if (sub_100015CF8())
  {
    sub_1001BA7F4();

    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    static CocoaError.Code.fileReadNoSuchFile.getter();
    sub_1001BE930(_swiftEmptyArrayStorage);
    sub_100005E08(&unk_100271F30, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    v5 = sub_10000A298();
    v6(v5);
    return Promise.__allocating_init(error:)();
  }

  else
  {
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    return Promise.__allocating_init(value:)();
  }

  return result;
}

uint64_t sub_100016088(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v23 = a1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007B9A4(&qword_10026C8E0, &qword_1001EBDA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v6 + 16);
  v12(&v22 - v10, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  v14 = *(v6 + 32);
  v14(v24 + v13, v11, v5);
  v12(v9, v23, v5);
  v15 = swift_allocObject();
  v14(v15 + v13, v9, v5);
  v16 = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v18 = v25;
  v17 = v26;
  v19 = v27;
  (*(v26 + 104))(v25, enum case for DispatchQoS.QoSClass.default(_:), v27);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v18, v19);
  v29[3] = v16;
  v29[4] = &protocol witness table for OS_dispatch_queue;
  v29[0] = v20;
  Promise.then(perform:orCatchError:on:)();

  return sub_100002C00(v29);
}

uint64_t sub_100016390(uint64_t a1)
{
  *(v1 + 128) = a1;

  return swift_task_alloc();
}

uint64_t sub_1000163A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t sub_1000163C8()
{
}

uint64_t sub_100016400()
{

  return swift_getErrorValue();
}

__n128 sub_100016420(__n128 *a1)
{
  result = *(v1 - 288);
  a1[1] = result;
  return result;
}

uint64_t sub_100016450()
{
}

uint64_t sub_10001646C(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100016774(uint64_t a1)
{
  *(v2 - 120) = a1;
  *(v2 - 144) = v1;
}

uint64_t sub_1000167E4(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;

  return type metadata accessor for LogInterpolation.StringInterpolation();
}

uint64_t sub_10001680C()
{

  v1 = sub_100016440();

  return _swift_deallocObject(v1);
}

uint64_t sub_10001684C()
{
  _Block_release(*(v0 + 32));

  v1 = sub_10000B284();

  return _swift_deallocObject(v1);
}

uint64_t sub_1000168A0()
{
  sub_100004768();
  v1 = swift_task_alloc();
  sub_100061DE4(v1);
  sub_10007B9A4(&qword_10026C8D8, &qword_1001EBDA0);
  sub_10001CD6C();
  *v0 = v2;
  sub_100017EE4();
  sub_10000522C();
  v3 = sub_100004C68();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3);
}

void sub_10001697C()
{
  v1 = type metadata accessor for DispatchPredicate();
  sub_100002CC4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100002DEC();
  v7 = v6 - v5;
  v8 = *(v0 + 72);
  *(v6 - v5) = v8;
  (*(v3 + 104))(v6 - v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  ppDb = 0;
  if (*(v0 + 32))
  {
    v10 = 2;
  }

  else
  {
    v11 = [objc_opt_self() defaultManager];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v12 stringByDeletingLastPathComponent];

    if (!v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = String._bridgeToObjectiveC()();
    }

    v35 = 0;
    v14 = [v11 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v35];

    if (v14)
    {
      v15 = v35;
    }

    else
    {
      v16 = v35;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v10 = 6;
  }

  v17 = *(v0 + 80);
  if (v17)
  {
    v18 = v17;
    v19 = sub_10001FAA0(v18);

    v10 |= v19;
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = [v20 fileSystemRepresentation];
  v22 = v20;
  v23 = sqlite3_open_v2(v21, &ppDb, v10, 0);
  v24 = sub_100016CE0(v23);
  if (v24 || (v35 = 1, v25 = sqlite3_file_control(ppDb, 0, 10, &v35), (v24 = sub_100016CE0(v25)) != 0) || (v26 = sub_10000B0F4(ppDb, "PRAGMA journal_mode=WAL"), (v24 = sub_100016CE0(v26)) != 0) || (v27 = sub_10000B0F4(ppDb, "pragma cache_spill = 0"), (v24 = sub_100016CE0(v27)) != 0) || (v28 = sub_10000B0F4(ppDb, "PRAGMA auto_vacuum = 2"), (v24 = sub_100016CE0(v28)) != 0) || (busy = sqlite3_busy_timeout(ppDb, 900000), (v24 = sub_100016CE0(busy)) != 0))
  {
    v30 = v24;
    v31 = sub_1000A0624();
    sub_100007544(&type metadata for SQLite3Status, v31);
    *v32 = v30;
  }

  else
  {
    if (ppDb)
    {
      goto LABEL_20;
    }

    v33 = sub_10001ED34();
    sub_100007544(&unk_1002527D0, v33);
    *v34 = 0;
  }

  swift_willThrow();
LABEL_20:
  sub_1000068D4();
}

uint64_t sub_100016CE0(int a1)
{
  v2 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  result = 0;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      goto LABEL_38;
    case 2:
      result = 12;
      break;
    case 3:
      result = 23;
      break;
    case 4:
      result = 1;
      break;
    case 5:
      result = 3;
      break;
    case 6:
      result = 15;
      break;
    case 7:
      result = 19;
      break;
    case 8:
      result = 26;
      break;
    case 9:
      result = 13;
      break;
    case 10:
      result = 14;
      break;
    case 11:
      result = 6;
      break;
    case 12:
      result = 21;
      break;
    case 13:
      result = 11;
      break;
    case 14:
      result = 4;
      break;
    case 15:
      result = 24;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 28;
      break;
    case 18:
      result = 29;
      break;
    case 19:
      result = 5;
      break;
    case 20:
      result = 16;
      break;
    case 21:
      result = 17;
      break;
    case 22:
      result = 18;
      break;
    case 23:
      result = 2;
      break;
    case 24:
      result = 10;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 20;
      break;
    case 27:
      result = 22;
      break;
    case 28:
      result = 30;
      break;
    default:
      if (a1 == 100)
      {
        result = 27;
      }

      else if (a1 == 101)
      {
        result = 7;
      }

      else
      {
        sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
        type metadata accessor for LogInterpolation();
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_1001E5F70;
        v11 = &type metadata for SQLite3Status;
        LOBYTE(v10[0]) = 9;
        v5 = AMSLogKey();
        if (v5)
        {
          v6 = v5;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        static LogInterpolation.prefix(_:_:)();

        sub_100002C00(v10);
        LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v7._object = 0x8000000100202F90;
        v7._countAndFlagsBits = 0xD000000000000031;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v7);
        v11 = &type metadata for Int32;
        LODWORD(v10[0]) = a1;
        LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
        sub_100002C5C(v10);
        v8._countAndFlagsBits = 0;
        v8._object = 0xE000000000000000;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
        LogInterpolation.init(stringInterpolation:)();
        if (qword_1002686B0 != -1)
        {
          swift_once();
        }

        v9 = static os_log_type_t.fault.getter();
        sub_1000036B0(v9, v4);

LABEL_38:
        result = 9;
      }

      break;
  }

  return result;
}

void sub_1000170D4()
{
  sub_100007E34();
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  v5 = sub_100003D10(v4);
  __chkstk_darwin(v5);
  sub_100002DEC();
  v23 = *(v0 + 88);
  if (v23)
  {
    v22 = *(v0 + 96);

    v21 = v0;
    while (1)
    {
      v6 = sub_100014E40();
      if (v2)
      {
        break;
      }

      v7 = v6;
      v2 = 0;
      v8 = v23(v3, v6);
      if (v7 == v8)
      {
        break;
      }

      if (qword_1002686B8 != -1)
      {
        sub_100004FFC();
        swift_once();
      }

      sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
      sub_10000A658();
      v9 = type metadata accessor for LogInterpolation();
      sub_100002CFC(v9);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1001E5F70;
      v24 = type metadata accessor for SQLDatabase();
      v26 = v24;
      v25[0] = v3;

      v11 = AMSLogKey();
      if (v11)
      {
        v12 = v11;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v25);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0xD000000000000023;
      v13._object = 0x8000000100202C80;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
      v26 = &type metadata for Int;
      v25[0] = v7;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(v25, &qword_10026D350, &qword_1001E6050);
      v14._countAndFlagsBits = 0x5677656E206F7420;
      v14._object = 0xEF206E6F69737265;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v14);
      v26 = &type metadata for Int;
      v25[0] = v8;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(v25, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v15 = static os_log_type_t.debug.getter();
      sub_1000036B0(v15, v10);

      v3 = v21;
      sub_1001A6234();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001E5F70;
      v26 = v24;
      v25[0] = v21;

      v17 = AMSLogKey();
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      static LogInterpolation.prefix(_:_:)();

      sub_100002C00(v25);
      LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._object = 0x8000000100202CB0;
      v19._countAndFlagsBits = 0xD00000000000001BLL;
      LogInterpolation.StringInterpolation.appendLiteral(_:)(v19);
      v26 = &type metadata for Int;
      v25[0] = v8;
      LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
      sub_10000A00C(v25, &qword_10026D350, &qword_1001E6050);
      sub_100003B48();
      LogInterpolation.init(stringInterpolation:)();
      v20 = static os_log_type_t.default.getter();
      sub_1000036B0(v20, v16);
    }

    sub_100014A10(v23, v22);
  }

  sub_1000072EC();
  sub_100005B78();
}

void sub_100017510(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogInterpolation.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  if (!*(a1 + 64))
  {
    if (qword_1002686B8 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v21 = type metadata accessor for SQLDatabase();
    v19 = a1;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(&v19);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v8._object = 0x8000000100202BC0;
    v8._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v8);
    v9 = *(a1 + 32) == 0;
    v10 = 0x6E6F646165722820;
    if (!*(a1 + 32))
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    v21 = &type metadata for String;
    if (!v9)
    {
      v11 = 0xEB0000000029796CLL;
    }

    v19 = v10;
    v20 = v11;
    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v19, &qword_10026D350, &qword_1001E6050);
    v12._countAndFlagsBits = 8250;
    v12._object = 0xE200000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v21 = &type metadata for String;
    v19 = v14;
    v20 = v13;

    LogInterpolation.StringInterpolation.appendInterpolation(safe:)();
    sub_10000A00C(&v19, &qword_10026D350, &qword_1001E6050);
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v15);
    LogInterpolation.init(stringInterpolation:)();
    v16 = static os_log_type_t.debug.getter();
    sub_1000036B0(v16, v5);

    for (i = 0; ; i = 1)
    {
      sub_10001697C();
      if (!v2)
      {
        break;
      }

      v19 = v2;
      swift_errorRetain();
      sub_10007B9A4(&unk_100270B70, &unk_1001E8F60);
      if (swift_dynamicCast() & 1) == 0 || v22 > 0x14u || ((1 << v22) & 0x104040) == 0 || (i)
      {
        swift_willThrow();
        return;
      }

      sub_1001A5C84();
      v2 = 0;
    }

    *(a1 + 56) = 0;
    *(a1 + 64) = v18;
  }
}

uint64_t sub_1000178A0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_100017A08();
  if (qword_100268818 != -1)
  {
    sub_100007058();
    swift_once();
  }

  static OS_dispatch_queue.getSpecific<A>(key:)();
  sub_100012DE8();
  if (v10 || (v9 & 1) == 0)
  {
    __chkstk_darwin(v8);
    sub_10000BE84();
    *(v13 - 16) = a4;
    *(v13 - 8) = a2;
    OS_dispatch_queue.sync<A>(execute:)();
    return sub_10000B41C();
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    a3(a2);
    objc_autoreleasePoolPop(v11);
  }
}

unint64_t sub_100017A08()
{
  result = qword_10026CFB0;
  if (!qword_10026CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10026CFB0);
  }

  return result;
}

uint64_t sub_100017A68(uint64_t a1, uint64_t a2, uint64_t a3, Swift::OpaquePointer a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  result = SQLDatabase.prepare(sql:)(a2, a3);
  if (!v6)
  {
    SQLStatement.bind(parameters:)(a4);
    if (!v12)
    {
      do
      {
        v16 = SQLStatement.step()(v11);
        v13 = v16;
        if (!v16)
        {
          break;
        }

        if (!a5)
        {
        }

        v14 = objc_autoreleasePoolPush();
        v15 = a5(v13);
        objc_autoreleasePoolPop(v14);

        v11 = sub_100014A10(a5, a6);
      }

      while ((v15 & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100017B90(uint64_t a1, int a2, void *a3, uint64_t a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_10000B284();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;

  return sub_100009624(a7, v12);
}

uint64_t sub_100017C14()
{
  if (v0[3])
  {
    v1 = v0[3];
  }

  else
  {
    v1 = sub_1001B6A58(v0, *v0);
    v0[3] = v1;
  }

  return v1;
}

uint64_t sub_100017CCC(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return String.hash(into:)();
}

uint64_t sub_100017D08()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100017D74()
{
  *(v0 + 120) = v1;
  *(v0 + 88) = sub_1000E515C;

  return swift_continuation_init();
}

uint64_t sub_100017DAC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100017E04()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_100017E34()
{

  return swift_allocObject();
}

uint64_t sub_100017E54(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_100017E64(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100017EC4()
{

  return swift_allocObject();
}

uint64_t sub_100017F38(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100017F64(uint64_t result)
{
  v2[20] = sub_1000E42D8;
  v2[21] = v1;
  v2[22] = result;
  return result;
}

void sub_100017F90()
{
}

uint64_t sub_100017FF0(uint64_t a1)
{

  return __CocoaDictionary.count.getter();
}

void sub_100018010(uint64_t a1)
{

  sub_1000036B0(a1, v1);
}

id sub_100018028(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100018074(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000011;

  v2 = (a1 - 32) | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

id sub_1000180B8(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1000180D0(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t sub_1000180F0(uint64_t a1)
{

  return LogInterpolation.init(stringLiteral:)();
}

uint64_t sub_100018138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_100018174(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t sub_1000181A4()
{

  return swift_continuation_init();
}

uint64_t sub_1000181EC()
{

  return type metadata accessor for ContentManager();
}

_OWORD *sub_100018218()
{

  return sub_10000DFC4();
}

uint64_t sub_10001823C()
{

  return LogInterpolation.init(stringLiteral:)();
}

BOOL sub_100018270(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100018288(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1000182A4()
{

  return type metadata accessor for ScheduleInfo.Metadata(0);
}

uint64_t sub_1000182E8()
{
  v1 = v0;
  if (sub_100015CF8())
  {

    return sub_1001BA7F4();
  }

  else
  {
    v3 = AMSSetLogKeyIfNeeded();
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if (qword_100268738 != -1)
    {
      sub_100004E84(&qword_100268738);
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    v7 = type metadata accessor for LogInterpolation();
    sub_100002CFC(v7);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E5F70;
    v15 = type metadata accessor for TreatmentStoreService();
    v14[0] = v1;

    static LogInterpolation.prefix(_:_:)();

    sub_100002C00(v14);
    LogInterpolation.init(stringLiteral:)();
    v9 = static os_log_type_t.info.getter();
    sub_1000036B0(v9, v8);

    sub_1000143D8();
    v10 = swift_allocObject();
    v10[2] = v1;
    v10[3] = v4;
    v10[4] = v6;
    v15 = type metadata accessor for SyncTaskScheduler();
    v16 = &protocol witness table for SyncTaskScheduler;
    sub_100017E64(v14);
    sub_100029448();

    SyncTaskScheduler.init()();
    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    sub_1000070D4();
    sub_100006070(v11, &qword_100271F20, &qword_1001EBE90, v12);
    v13 = Promise.flatMap<A>(on:_:)();

    sub_100002C00(v14);
    return v13;
  }
}

uint64_t sub_1000185A8(uint64_t a1, uint64_t a2, void *a3)
{
  v10[3] = sub_100002BC0(0, &qword_10026CFB0, OS_dispatch_queue_ptr);
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = a3;
  v6 = a3;
  v7 = Promise.__allocating_init()();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();

  sub_100002C00(v10);
  return v7;
}

void sub_10001877C(unint64_t a2@<X1>, _BYTE *a5@<X8>)
{
  v8 = _convertErrorToNSError(_:)();
  if ([v8 code] != 204)
  {
    goto LABEL_8;
  }

  v9 = [v8 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_14;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
  }

  else
  {
LABEL_8:
    v28 = v5;
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1001E5F70;
    v27 = type metadata accessor for TreatmentStoreService();
    v25 = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(&v25);
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    v25 = 0xD000000000000011;
    v26 = 0x8000000100203FE0;
    if (qword_100268848 != -1)
    {
      swift_once();
    }

    v17._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x6176206761622022;
    v18._object = 0xED0000203A65756CLL;
    String.append(_:)(v18);
    v19 = [v8 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v27 = &type metadata for String;
    static LogInterpolation.safe(_:)();
    sub_10000A00C(&v25, &qword_10026D350, &qword_1001E6050);
    v24 = static os_log_type_t.error.getter();
    sub_1000036B0(v24, v16);
  }

LABEL_14:
  *a5 = 0;
}

uint64_t sub_100018ADC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == 1)
  {
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1001E5F70;
    v11 = type metadata accessor for TreatmentStoreService();
    v10[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v10);
    LogInterpolation.init(stringLiteral:)();
    v6 = static os_log_type_t.info.getter();
    sub_1000036B0(v6, v5);

    return sub_1001BA7F4();
  }

  else
  {
    if (qword_100268738 != -1)
    {
      swift_once();
    }

    sub_10007B9A4(&unk_10026AE40, &unk_1001E6660);
    type metadata accessor for LogInterpolation();
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001E5F70;
    v11 = type metadata accessor for TreatmentStoreService();
    v10[0] = a2;

    static LogInterpolation.prefix(_:_:)();
    sub_100002C00(v10);
    LogInterpolation.init(stringLiteral:)();
    v9 = static os_log_type_t.info.getter();
    sub_1000036B0(v9, v8);

    sub_10007B9A4(&qword_100271F20, &qword_1001EBE90);
    return Promise.__allocating_init(value:)();
  }
}

void sub_100018DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000057A4();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = [*&v22[OBJC_IVAR____TtC14amsengagementd10CascadeBag_primaryBag] stringForKey:v25];
  v28 = [v27 valuePromise];

  sub_100002FB8();
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  *(v29 + 24) = v26;
  sub_100006B40();
  sub_100005098();
  a11 = v30;
  a12 = &unk_100247FC8;
  _Block_copy(&a9);
  sub_10000BE48();
  v31 = v26;
  sub_1000048C8();
  v32 = sub_10000B7B8();
  v34 = [v32 v33];
  sub_10000831C();

  [objc_opt_self() bagValueWithKey:v26 valueType:4 valuePromise:v22];
  sub_100007470();
}

id sub_100018EDC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_optionalKeys);
  if (v7 && sub_100179C40(a3, v7))
  {
    v8 = _convertErrorToNSError(_:)();
    v9 = [objc_opt_self() promiseWithError:v8];
  }

  else
  {
    v8 = [*(a2 + OBJC_IVAR____TtC14amsengagementd10CascadeBag_secondaryBag) *a4];
    v9 = [v8 valuePromise];
  }

  v10 = v9;

  return v10;
}

void sub_1000190C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_100011690();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = *v30;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100004E1C();
  v40 = ~v39;
  while (1)
  {
    v41 = v38 & v40;
    if (((1 << (v38 & v40)) & *(v37 + 56 + (((v38 & v40) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    v42 = (*(v37 + 48) + 16 * v41);
    v43 = *v42 == v34 && v42[1] == v32;
    if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v44 = (*(v37 + 48) + 16 * v41);
      v45 = v44[1];
      *v36 = *v44;
      v36[1] = v45;

      goto LABEL_11;
    }

    v38 = v41 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v30;

  sub_100019424(v34, v32, v41, isUniquelyReferenced_nonNull_native);
  *v30 = v47;
  *v36 = v34;
  v36[1] = v32;
LABEL_11:
  sub_100029454();
}

Swift::Int sub_1000191F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100019424(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001958C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_1000191F0(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_1001C8EAC();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

Swift::Int sub_10001958C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10007B9A4(&qword_10026F288, &qword_1001EEB98);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_1000575CC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}