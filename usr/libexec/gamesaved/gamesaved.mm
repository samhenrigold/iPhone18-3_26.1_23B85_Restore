int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v7 = sub_100001F70(v3, static Logger.daemon);
  (*(v4 + 16))(v6, v7, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = getpid();
    *(v10 + 8) = 1024;
    *(v10 + 10) = geteuid();
    _os_log_impl(&_mh_execute_header, v8, v9, "Starting up, welcome, pid:%d, euid:%u", v10, 0xEu);
  }

  (*(v4 + 8))(v6, v3);
  setiopolicy_np(3, 0, 2);
  qword_10003AAC0 = [objc_allocWithZone(type metadata accessor for ServiceDelegate()) init];
  if (_set_user_dir_suffix())
  {

    v11 = objc_allocWithZone(NSXPCListener);
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 initWithMachServiceName:v12];

    qword_10003AAC8 = v13;
    [v13 setDelegate:qword_10003AAC0];
    [qword_10003AAC8 resume];
    dispatch_main();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100001B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001F70(v3, static Logger.daemon);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connection got interupted", v6, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];
}

void sub_100001C90(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001F70(v6, static Logger.daemon);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Connection got invalidated", v9, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    [Strong setExportedObject:0];
  }

  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = v12;

  v15 = v12;
  sub_100012918(0, 0, v5, &unk_10002B190, v14);

  OS_dispatch_group.wait()();
}

id sub_100001F3C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100001F70(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001FCC()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002008(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000205C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000020D8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100002150(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000021D0@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002214(void *a1, uint64_t *a2)
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

uint64_t sub_10000229C@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000022E4@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002310(uint64_t a1)
{
  v2 = sub_100002B3C(&qword_100039D58, &unk_10002B320);
  v3 = sub_100002B3C(&unk_100039D60, &unk_10002B274);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000023A8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000023F4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_100002424(void *__src, uint64_t a2, void *__dst)
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

_BYTE **sub_100002444(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

__n128 sub_100002458(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002464(uint64_t a1, int a2)
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

uint64_t sub_100002484(uint64_t result, int a2, int a3)
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

BOOL sub_1000024C4(void *a1)
{
  type metadata accessor for GameSaveContainerProvider();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_100010798(_swiftEmptyArrayStorage);
  type metadata accessor for GameSyncedDirectoryLoader();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  [a1 auditToken];
  type metadata accessor for GameSaveXPCClient();
  swift_allocObject();

  v4 = sub_100015328(v12, v13, v14, v15, v3);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1000027B4;
    v17 = v5;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100002BBC;
    v15 = &unk_100034E58;
    v6 = _Block_copy(&v12);

    [a1 setInterruptionHandler:v6];
    _Block_release(v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v4;
    v16 = sub_100002814;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_100002BBC;
    v15 = &unk_100034EA8;
    v9 = _Block_copy(&v12);

    [a1 setInvalidationHandler:v9];
    _Block_release(v9);
    v10 = sub_10000EE50();
    [a1 setExportedInterface:v10];

    [a1 setExportedObject:v4];
    [a1 resume];
  }

  return v4 != 0;
}

uint64_t sub_10000277C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000027BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000027D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000281C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002864()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000028AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000296C;

  return sub_100015674(a1, v4, v5, v7, v6);
}

uint64_t sub_10000296C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100002A88(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002B3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NSFileProviderServiceName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002BBC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002C00()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v5 + 16) = 32;
  *(v5 + 32) = 0;
  *(v5 + 49) = 0;
  *(v5 + 41) = 0;
  *(v5 + 56) = 0;
  *(v5 + 40) = 32;

  v7 = sub_10000C598(v6);
  v9 = v8;

  v14 = v0;
  v10 = sub_100002E94(sub_10000E880, v13, v7, v9);

  if ((v10 & 0x80000000) != 0)
  {
    errno.getter();
    v11 = POSIXErrorCode.init(rawValue:)();
    if ((v11 & 0x100000000) != 0)
    {
      v15 = 22;
    }

    else
    {
      v15 = v11;
    }

    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039F20, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v2 + 8))(v4, v1);
    swift_willThrow();
  }

  return sub_10000E89C(v7, v9);
}

uint64_t sub_100002DF8@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  URL.path(percentEncoded:)(0);
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = String.utf8CString.getter();

  v8 = setxattr((v7 + 32), "com.apple.FinderInfo", a1, v6, 0, 0);

  *a3 = v8;
  return result;
}

void *sub_100002E94(void *(*a1)(unsigned int *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_10000C330(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_10000C330(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_100002FE4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for NSFileProviderServiceName(0);
    sub_10000E838(0, &unk_100039F10, NSFileProviderService_ptr);
    sub_10000E8F0(&qword_100039D58, type metadata accessor for NSFileProviderServiceName, &unk_10002B320);
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

void sub_100003124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001F70(v3, static Logger.daemon);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "service connection interrupted. Terminating.", v5, 2u);
  }
}

uint64_t sub_10000320C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000E9E4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000032E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[76] = v5;
  v6[75] = a5;
  v6[74] = a4;
  v6[73] = a3;
  v6[72] = a2;
  v6[71] = a1;
  type metadata accessor for CocoaError.Code();
  v6[77] = swift_task_alloc();
  v7 = type metadata accessor for CocoaError();
  v6[78] = v7;
  v6[79] = *(v7 - 8);
  v6[80] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[84] = v9;
  v10 = *(v9 - 8);
  v6[85] = v10;
  v6[86] = *(v10 + 64);
  v6[87] = swift_task_alloc();
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  sub_10000281C(&qword_100039D28, &qword_10002B900);
  v6[93] = swift_task_alloc();

  return _swift_task_switch(sub_100003544, 0, 0);
}

uint64_t sub_100003544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = v3;
  v4 = v3[74];
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v3[94] = sub_100001F70(v5, static Logger.daemon);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v3[73];
    v9 = v3[72];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100020014(v9, v8, &v27);
    _os_log_impl(&_mh_execute_header, v6, v7, "Syncing Container %s", v10, 0xCu);
    sub_10000EA28(v11);
  }

  v12 = v3[93];
  v13 = v3[75];
  type metadata accessor for DeviceListFetcher();
  v14 = swift_allocObject();
  v3[95] = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = 0;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = v13;
  v17 = v13;

  *(v14 + 24) = sub_100012C18(0, 0, v12, &unk_10002B3D0, v16);

  if (v4 == 255)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cleaning up existing directory", v20, 2u);
    }
  }

  v21 = v3[75];
  v22 = [objc_opt_self() progressWithTotalUnitCount:100];
  v3[96] = v22;
  v23 = String._bridgeToObjectiveC()();
  [v21 setLocalizedDescription:v23];

  v24 = String._bridgeToObjectiveC()();
  v3[97] = _NSProgressRemoteLocalizedDescriptionKey;
  [v21 setUserInfoObject:v24 forKey:?];

  [v21 addChild:v22 withPendingUnitCount:20];
  v25 = swift_task_alloc();
  v3[98] = v25;
  *v25 = v3;
  v25[1] = sub_100003960;

  return sub_10002901C();
}

uint64_t sub_100003960(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[99] = a1;

  v4 = swift_task_alloc();
  v2[100] = v4;
  *v4 = v3;
  v4[1] = sub_100003B08;
  v5 = v2[75];
  v6 = v2[73];
  v7 = v2[72];

  return sub_100013544(v7, v6, v5);
}

uint64_t sub_100003B08(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v4 = sub_10000A194;
  }

  else
  {
    v4 = sub_100003C4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100003C4C()
{
  v1 = v0[101];
  if (v1)
  {

    return _swift_task_switch(sub_100003ECC, v1, 0);
  }

  else
  {
    v2 = objc_allocWithZone(NSError);
    v3 = String._bridgeToObjectiveC()();
    [v2 initWithDomain:v3 code:1 userInfo:0];

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Got nil container", v6, 2u);
    }

    v7 = v0[96];

    swift_willThrow();

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100003ECC()
{
  v1 = v0[101];
  v2 = v0[91];
  v3 = v0[85];
  v4 = v0[84];
  v5 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url;
  v6 = *(v3 + 16);
  v0[103] = v6;
  v0[104] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1 + v5, v4);

  return _swift_task_switch(sub_100003F98, 0, 0);
}

uint64_t sub_100003F98()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  URL.appendingPathComponent(_:)();
  v4 = *(v2 + 8);
  *(v0 + 840) = v4;
  *(v0 + 848) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  URL.appendingPathComponent(_:isDirectory:)();
  URL.appendingPathExtension(_:)();
  v4(v1, v3);
  v5 = objc_opt_self();
  *(v0 + 856) = v5;
  v6 = [v5 defaultManager];
  URL.path(percentEncoded:)(0);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = *(v0 + 816);
    if (*(v0 + 592) == 255)
    {
      v10 = [*(v0 + 856) defaultManager];
      URL.path(percentEncoded:)(0);
      v11 = String._bridgeToObjectiveC()();

      v12 = [v10 fileExistsAtPath:v11];

      if (v12)
      {
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, v14, "Cleaning game directory", v15, 2u);
        }

        v16 = *(v0 + 808);
        v17 = sub_100006230;
        goto LABEL_33;
      }
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Syncing game directory", v35, 2u);
    }

    v36 = *(v0 + 856);
    v37 = *(v0 + 768);

    [v37 setCompletedUnitCount:85];
    v38 = [v36 defaultManager];
    URL.path(percentEncoded:)(0);
    v39 = String._bridgeToObjectiveC()();

    v40 = [v38 fileExistsAtPath:v39];
    *(v0 + 1128) = v40;

    if ((v40 & 1) == 0)
    {
      v140 = v9;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v56, v57, "Creating Bundle...", v58, 2u);
      }

      v59 = *(v0 + 856);
      v60 = *(v0 + 776);
      v61 = *(v0 + 768);
      v62 = *(v0 + 600);

      v63 = String._bridgeToObjectiveC()();
      [v62 setLocalizedDescription:v63];

      v64 = String._bridgeToObjectiveC()();
      [v62 setUserInfoObject:v64 forKey:v60];

      [v61 setCompletedUnitCount:86];
      v65 = [v59 defaultManager];
      URL._bridgeToObjectiveC()(v66);
      v68 = v67;
      *(v0 + 520) = 0;
      LODWORD(v64) = [v65 createDirectoryAtURL:v67 withIntermediateDirectories:1 attributes:0 error:v0 + 520];

      v69 = *(v0 + 520);
      if (v64)
      {
        v135 = *(v0 + 840);
        v70 = *(v0 + 728);
        v137 = *(v0 + 856);
        v71 = *(v0 + 704);
        v72 = *(v0 + 672);
        v73 = *(v0 + 664);
        v74 = *(v0 + 656);
        v75 = *(v0 + 648);
        v76 = v69;
        v77 = NSTemporaryDirectory();
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        URL.init(fileURLWithPath:)();

        UUID.init()();
        UUID.uuidString.getter();
        (*(v74 + 8))(v73, v75);
        URL.appendingPathComponent(_:)();

        v135(v71, v72);
        URL.appendingPathExtension(_:)();
        v135(v70, v72);
        v78 = [v137 defaultManager];
        URL._bridgeToObjectiveC()(v79);
        v81 = v80;
        *(v0 + 528) = 0;
        LODWORD(v75) = [v78 createDirectoryAtURL:v80 withIntermediateDirectories:1 attributes:0 error:v0 + 528];

        v82 = *(v0 + 528);
        if (v75)
        {
          v83 = v82;
          sub_100002C00();
          if (v140)
          {
            (*(v0 + 840))(*(v0 + 712), *(v0 + 672));
          }

          else
          {
            v120 = [*(v0 + 856) defaultManager];
            URL._bridgeToObjectiveC()(v121);
            v123 = v122;
            URL._bridgeToObjectiveC()(v124);
            v126 = v125;
            *(v0 + 536) = 0;
            v127 = [v120 moveItemAtURL:v123 toURL:v125 error:v0 + 536];

            v128 = *(v0 + 536);
            v129 = *(v0 + 840);
            v130 = *(v0 + 712);
            v131 = *(v0 + 672);
            if (v127)
            {
              v132 = v128;
              v129(v130, v131);
              v16 = *(v0 + 808);
              v17 = sub_1000075B8;
LABEL_33:

              return _swift_task_switch(v17, v16, 0);
            }

            v133 = v128;
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v129(v130, v131);
          }
        }

        else
        {
          v88 = *(v0 + 840);
          v89 = *(v0 + 712);
          v90 = *(v0 + 672);
          v91 = v82;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v88(v89, v90);
        }
      }

      else
      {
        v84 = v69;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      swift_errorRetain();
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *v94 = 138412290;
        swift_errorRetain();
        v96 = _swift_stdlib_bridgeErrorToNSError();
        *(v94 + 4) = v96;
        *v95 = v96;
        _os_log_impl(&_mh_execute_header, v92, v93, "Error creating Bundle: %@", v94, 0xCu);
        sub_10000C148(v95);
      }

      v97 = v92;
      v98 = *(v0 + 840);
      v99 = *(v0 + 768);
      v138 = *(v0 + 736);
      v100 = *(v0 + 720);
      v101 = *(v0 + 672);

      swift_willThrow();

      v98(v100, v101);
      v98(v138, v101);
LABEL_40:

      v102 = *(v0 + 8);

      return v102();
    }

    v41 = *(v0 + 592);
    [*(v0 + 768) setCompletedUnitCount:100];
    *(v0 + 272) = 0u;
    *(v0 + 288) = 0u;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 144) = 0u;
    *(v0 + 160) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    URL.path(percentEncoded:)(0);
    v42 = String.utf8CString.getter();

    v43 = lstat((v42 + 32), (v0 + 160));

    if (v43 < 0 || (*(v0 + 279) & 0x40) == 0)
    {
      if (v41 != 2)
      {
LABEL_18:
        *(v0 + 1129) = 1;
        v44 = *(v0 + 856);
        URL.appendingPathComponent(_:isDirectory:)();
        v45 = [v44 defaultManager];
        URL._bridgeToObjectiveC()(v46);
        v48 = v47;
        *(v0 + 544) = 0;
        v49 = [v45 createDirectoryAtURL:v47 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

        v50 = *(v0 + 544);
        if (v49)
        {
          v51 = v50;
          v52 = swift_task_alloc();
          *(v0 + 1088) = v52;
          *v52 = v0;
          v52[1] = sub_100009DF0;
          v53 = *(v0 + 760);
          v54 = *(v0 + 720);
          v55 = *(v0 + 600);

          return sub_10000D3E4(v0 + 448, v54, v55, v53);
        }

        v103 = v50;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *v106 = 138412290;
          swift_errorRetain();
          v108 = _swift_stdlib_bridgeErrorToNSError();
          *(v106 + 4) = v108;
          *v107 = v108;
          _os_log_impl(&_mh_execute_header, v104, v105, "Error creating Bundle Data Folder: %@", v106, 0xCu);
          sub_10000C148(v107);
        }

        v109 = *(v0 + 840);
        v110 = *(v0 + 768);
        v136 = *(v0 + 720);
        v139 = *(v0 + 736);
        v111 = *(v0 + 696);
        v112 = v104;
        v113 = *(v0 + 672);

        swift_willThrow();

        v109(v111, v113);
        v109(v136, v113);
        v109(v139, v113);
        goto LABEL_40;
      }

LABEL_30:
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&_mh_execute_header, v85, v86, "Fetching latest revision...", v87, 2u);
      }

      v16 = *(v0 + 808);
      v17 = sub_100007E5C;
      goto LABEL_33;
    }

    if (v41 == 2)
    {
      goto LABEL_30;
    }

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "Bundle is dataless, fetching latest revision...", v116, 2u);
    }

    if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
    {
      goto LABEL_18;
    }

    v117 = swift_task_alloc();
    *(v0 + 1000) = v117;
    *v117 = v0;
    v117[1] = sub_100008530;
    v118 = *(v0 + 720);
    v119 = *(v0 + 600);

    return sub_10000C648(v118, v119);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "The game directory does not exist, making sure we are in sync with the server", v20, 2u);
    }

    v21 = *(v0 + 808);
    v22 = *(v0 + 600);
    v23 = *(v0 + 592);

    v24 = v23 == 1;
    sub_10000281C(&qword_100039E48, &unk_10002B3E0);
    v25 = swift_allocObject();
    *(v0 + 864) = v25;
    *(v25 + 3) = [objc_allocWithZone(NSRecursiveLock) init];
    v26 = *(*v25 + 104);
    v27 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
    (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
    v28 = &v25[*(*v25 + 112)];
    *v28 = 0;
    *(v28 + 1) = 0;
    *(v25 + 2) = v22;
    v29 = swift_allocObject();
    *(v0 + 872) = v29;
    *(v29 + 16) = v24;
    *(v29 + 24) = v21;
    v30 = v22;

    v31 = swift_task_alloc();
    *(v0 + 880) = v31;
    *(v31 + 16) = v25;
    *(v31 + 24) = &unk_10002B3F8;
    *(v31 + 32) = v29;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 1;
    v32 = swift_task_alloc();
    *(v0 + 888) = v32;
    *v32 = v0;
    v32[1] = sub_1000050C4;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v32, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_10000C298, v31, &type metadata for () + 8);
  }
}

uint64_t sub_1000050C4()
{
  *(*v1 + 896) = v0;

  if (v0)
  {
    v2 = sub_100005F98;
  }

  else
  {

    v2 = sub_100005220;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005220()
{

  v1 = *(v0 + 896);
  if (*(v0 + 592) == 255)
  {
    v2 = [*(v0 + 856) defaultManager];
    URL.path(percentEncoded:)(0);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 fileExistsAtPath:v3];

    if (v4)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Cleaning game directory", v7, 2u);
      }

      v8 = *(v0 + 808);
      v9 = sub_100006230;
      goto LABEL_27;
    }
  }

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Syncing game directory", v12, 2u);
  }

  v13 = *(v0 + 856);
  v14 = *(v0 + 768);

  [v14 setCompletedUnitCount:85];
  v15 = [v13 defaultManager];
  URL.path(percentEncoded:)(0);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 fileExistsAtPath:v16];
  *(v0 + 1128) = v17;

  if ((v17 & 1) == 0)
  {
    v117 = v1;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Creating Bundle...", v36, 2u);
    }

    v37 = *(v0 + 856);
    v38 = *(v0 + 776);
    v39 = *(v0 + 768);
    v40 = *(v0 + 600);

    v41 = String._bridgeToObjectiveC()();
    [v40 setLocalizedDescription:v41];

    v42 = String._bridgeToObjectiveC()();
    [v40 setUserInfoObject:v42 forKey:v38];

    [v39 setCompletedUnitCount:86];
    v43 = [v37 defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    *(v0 + 520) = 0;
    LODWORD(v42) = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v0 + 520];

    v47 = *(v0 + 520);
    if (v42)
    {
      v112 = *(v0 + 840);
      v48 = *(v0 + 728);
      v114 = *(v0 + 856);
      v49 = *(v0 + 704);
      v50 = *(v0 + 672);
      v51 = *(v0 + 664);
      v52 = *(v0 + 656);
      v53 = *(v0 + 648);
      v54 = v47;
      v55 = NSTemporaryDirectory();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v52 + 8))(v51, v53);
      URL.appendingPathComponent(_:)();

      v112(v49, v50);
      URL.appendingPathExtension(_:)();
      v112(v48, v50);
      v56 = [v114 defaultManager];
      URL._bridgeToObjectiveC()(v57);
      v59 = v58;
      *(v0 + 528) = 0;
      LODWORD(v52) = [v56 createDirectoryAtURL:v58 withIntermediateDirectories:1 attributes:0 error:v0 + 528];

      v60 = *(v0 + 528);
      if (v52)
      {
        v61 = v60;
        sub_100002C00();
        if (v117)
        {
          (*(v0 + 840))(*(v0 + 712), *(v0 + 672));
        }

        else
        {
          v98 = [*(v0 + 856) defaultManager];
          URL._bridgeToObjectiveC()(v99);
          v101 = v100;
          URL._bridgeToObjectiveC()(v102);
          v104 = v103;
          *(v0 + 536) = 0;
          v105 = [v98 moveItemAtURL:v101 toURL:v103 error:v0 + 536];

          v106 = *(v0 + 536);
          v107 = *(v0 + 840);
          v108 = *(v0 + 712);
          v109 = *(v0 + 672);
          if (v105)
          {
            v110 = v106;
            v107(v108, v109);
            v8 = *(v0 + 808);
            v9 = sub_1000075B8;
LABEL_27:

            return _swift_task_switch(v9, v8, 0);
          }

          v111 = v106;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v107(v108, v109);
        }
      }

      else
      {
        v66 = *(v0 + 840);
        v67 = *(v0 + 712);
        v68 = *(v0 + 672);
        v69 = v60;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v66(v67, v68);
      }
    }

    else
    {
      v62 = v47;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    swift_errorRetain();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138412290;
      swift_errorRetain();
      v74 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v74;
      *v73 = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Error creating Bundle: %@", v72, 0xCu);
      sub_10000C148(v73);
    }

    v75 = v70;
    v76 = *(v0 + 840);
    v77 = *(v0 + 768);
    v115 = *(v0 + 736);
    v78 = *(v0 + 720);
    v79 = *(v0 + 672);

    swift_willThrow();

    v76(v78, v79);
    v76(v115, v79);
LABEL_34:

    v80 = *(v0 + 8);

    return v80();
  }

  v18 = *(v0 + 592);
  [*(v0 + 768) setCompletedUnitCount:100];
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  URL.path(percentEncoded:)(0);
  v19 = String.utf8CString.getter();

  v20 = lstat((v19 + 32), (v0 + 160));

  if (v20 < 0 || (*(v0 + 279) & 0x40) == 0)
  {
    if (v18 != 2)
    {
LABEL_12:
      *(v0 + 1129) = 1;
      v21 = *(v0 + 856);
      URL.appendingPathComponent(_:isDirectory:)();
      v22 = [v21 defaultManager];
      URL._bridgeToObjectiveC()(v23);
      v25 = v24;
      *(v0 + 544) = 0;
      v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

      v27 = *(v0 + 544);
      if (v26)
      {
        v28 = v27;
        v29 = swift_task_alloc();
        *(v0 + 1088) = v29;
        *v29 = v0;
        v29[1] = sub_100009DF0;
        v30 = *(v0 + 760);
        v31 = *(v0 + 720);
        v32 = *(v0 + 600);

        return sub_10000D3E4(v0 + 448, v31, v32, v30);
      }

      v81 = v27;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        swift_errorRetain();
        v86 = _swift_stdlib_bridgeErrorToNSError();
        *(v84 + 4) = v86;
        *v85 = v86;
        _os_log_impl(&_mh_execute_header, v82, v83, "Error creating Bundle Data Folder: %@", v84, 0xCu);
        sub_10000C148(v85);
      }

      v87 = *(v0 + 840);
      v88 = *(v0 + 768);
      v113 = *(v0 + 720);
      v116 = *(v0 + 736);
      v89 = *(v0 + 696);
      v90 = v82;
      v91 = *(v0 + 672);

      swift_willThrow();

      v87(v89, v91);
      v87(v113, v91);
      v87(v116, v91);
      goto LABEL_34;
    }

LABEL_24:
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Fetching latest revision...", v65, 2u);
    }

    v8 = *(v0 + 808);
    v9 = sub_100007E5C;
    goto LABEL_27;
  }

  if (v18 == 2)
  {
    goto LABEL_24;
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&_mh_execute_header, v92, v93, "Bundle is dataless, fetching latest revision...", v94, 2u);
  }

  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    goto LABEL_12;
  }

  v95 = swift_task_alloc();
  *(v0 + 1000) = v95;
  *v95 = v0;
  v95[1] = sub_100008530;
  v96 = *(v0 + 720);
  v97 = *(v0 + 600);

  return sub_10000C648(v96, v97);
}

uint64_t sub_100005F98()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    if (v0[74] == 1)
    {
      v3 = "Error waiting for initial sync: %@";
    }

    else
    {
      v3 = "Error refreshing container: %@";
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, v3, v4, 0xCu);
    sub_10000C148(v5);
  }

  v7 = v1;
  v8 = v0[105];
  v9 = v0[96];
  v14 = v0[92];
  v10 = v0[90];
  v11 = v0[84];

  swift_willThrow();

  v8(v10, v11);
  v8(v14, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100006230()
{
  v1 = v0[101];
  v2 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;
  v0[113] = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;
  v0[114] = *(v1 + v2);

  v3 = swift_task_alloc();
  v0[115] = v3;
  *v3 = v0;
  v3[1] = sub_100006324;
  v4 = v0[90];
  v5 = v0[75];

  return sub_100019330(v4, v5);
}

uint64_t sub_100006324()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_10000A3B0;
  }

  else
  {
    v2 = sub_100006484;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006484()
{
  v1 = [*(v0 + 856) defaultManager];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  *(v0 + 560) = 0;
  v5 = [v1 removeItemAtURL:v3 error:v0 + 560];

  v6 = *(v0 + 560);
  if (v5)
  {
    v7 = *(v0 + 808);
    v8 = v6;

    return _swift_task_switch(sub_1000066E8, v7, 0);
  }

  else
  {
    v9 = *(v0 + 840);
    v10 = *(v0 + 768);
    v15 = *(v0 + 720);
    v16 = *(v0 + 736);
    v11 = *(v0 + 672);
    v12 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v9(v15, v11);
    v9(v16, v11);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1000066E8()
{
  v0[117] = *(v0[101] + v0[113]);

  v1 = swift_task_alloc();
  v0[118] = v1;
  *v1 = v0;
  v1[1] = sub_1000067D0;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001A57C(v2, v3);
}

uint64_t sub_1000067D0()
{
  *(*v1 + 952) = v0;

  if (v0)
  {
    v2 = sub_10000A530;
  }

  else
  {
    v2 = sub_100006930;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100006930(uint64_t a1)
{
  v2 = *(v1 + 952);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Syncing game directory", v5, 2u);
  }

  v6 = *(v1 + 856);
  v7 = *(v1 + 768);

  [v7 setCompletedUnitCount:85];
  v8 = [v6 defaultManager];
  URL.path(percentEncoded:)(0);
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];
  *(v1 + 1128) = v10;

  if ((v10 & 1) == 0)
  {
    v112 = v2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Creating Bundle...", v29, 2u);
    }

    v30 = *(v1 + 856);
    v31 = *(v1 + 776);
    v32 = *(v1 + 768);
    v33 = *(v1 + 600);

    v34 = String._bridgeToObjectiveC()();
    [v33 setLocalizedDescription:v34];

    v35 = String._bridgeToObjectiveC()();
    [v33 setUserInfoObject:v35 forKey:v31];

    [v32 setCompletedUnitCount:86];
    v36 = [v30 defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    *(v1 + 520) = 0;
    LODWORD(v35) = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v1 + 520];

    v40 = *(v1 + 520);
    if (v35)
    {
      v107 = *(v1 + 840);
      v41 = *(v1 + 728);
      v109 = *(v1 + 856);
      v42 = *(v1 + 704);
      v43 = *(v1 + 672);
      v44 = *(v1 + 664);
      v45 = *(v1 + 656);
      v46 = *(v1 + 648);
      v47 = v40;
      v48 = NSTemporaryDirectory();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v45 + 8))(v44, v46);
      URL.appendingPathComponent(_:)();

      v107(v42, v43);
      URL.appendingPathExtension(_:)();
      v107(v41, v43);
      v49 = [v109 defaultManager];
      URL._bridgeToObjectiveC()(v50);
      v52 = v51;
      *(v1 + 528) = 0;
      LODWORD(v45) = [v49 createDirectoryAtURL:v51 withIntermediateDirectories:1 attributes:0 error:v1 + 528];

      v53 = *(v1 + 528);
      if (v45)
      {
        v54 = v53;
        sub_100002C00();
        if (v112)
        {
          (*(v1 + 840))(*(v1 + 712), *(v1 + 672));
        }

        else
        {
          v93 = [*(v1 + 856) defaultManager];
          URL._bridgeToObjectiveC()(v94);
          v96 = v95;
          URL._bridgeToObjectiveC()(v97);
          v99 = v98;
          *(v1 + 536) = 0;
          v100 = [v93 moveItemAtURL:v96 toURL:v98 error:v1 + 536];

          v101 = *(v1 + 536);
          v102 = *(v1 + 840);
          v103 = *(v1 + 712);
          v104 = *(v1 + 672);
          if (v100)
          {
            v105 = v101;
            v102(v103, v104);
            v59 = *(v1 + 808);
            v60 = sub_1000075B8;
LABEL_22:

            return _swift_task_switch(v60, v59, 0);
          }

          v106 = v101;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v102(v103, v104);
        }
      }

      else
      {
        v61 = *(v1 + 840);
        v62 = *(v1 + 712);
        v63 = *(v1 + 672);
        v64 = v53;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v61(v62, v63);
      }
    }

    else
    {
      v55 = v40;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      swift_errorRetain();
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v69;
      *v68 = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Error creating Bundle: %@", v67, 0xCu);
      sub_10000C148(v68);
    }

    v70 = v65;
    v71 = *(v1 + 840);
    v72 = *(v1 + 768);
    v110 = *(v1 + 736);
    v73 = *(v1 + 720);
    v74 = *(v1 + 672);

    swift_willThrow();

    v71(v73, v74);
    v71(v110, v74);
LABEL_29:

    v75 = *(v1 + 8);

    return v75();
  }

  v11 = *(v1 + 592);
  [*(v1 + 768) setCompletedUnitCount:100];
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  URL.path(percentEncoded:)(0);
  v12 = String.utf8CString.getter();

  v13 = lstat((v12 + 32), (v1 + 160));

  if (v13 < 0 || (*(v1 + 279) & 0x40) == 0)
  {
    if (v11 != 2)
    {
LABEL_7:
      *(v1 + 1129) = 1;
      v14 = *(v1 + 856);
      URL.appendingPathComponent(_:isDirectory:)();
      v15 = [v14 defaultManager];
      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      *(v1 + 544) = 0;
      v19 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v1 + 544];

      v20 = *(v1 + 544);
      if (v19)
      {
        v21 = v20;
        v22 = swift_task_alloc();
        *(v1 + 1088) = v22;
        *v22 = v1;
        v22[1] = sub_100009DF0;
        v23 = *(v1 + 760);
        v24 = *(v1 + 720);
        v25 = *(v1 + 600);

        return sub_10000D3E4(v1 + 448, v24, v25, v23);
      }

      v76 = v20;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *v79 = 138412290;
        swift_errorRetain();
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v79 + 4) = v81;
        *v80 = v81;
        _os_log_impl(&_mh_execute_header, v77, v78, "Error creating Bundle Data Folder: %@", v79, 0xCu);
        sub_10000C148(v80);
      }

      v82 = *(v1 + 840);
      v83 = *(v1 + 768);
      v108 = *(v1 + 720);
      v111 = *(v1 + 736);
      v84 = *(v1 + 696);
      v85 = v77;
      v86 = *(v1 + 672);

      swift_willThrow();

      v82(v84, v86);
      v82(v108, v86);
      v82(v111, v86);
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  if (v11 == 2)
  {
LABEL_19:
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "Fetching latest revision...", v58, 2u);
    }

    v59 = *(v1 + 808);
    v60 = sub_100007E5C;
    goto LABEL_22;
  }

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&_mh_execute_header, v87, v88, "Bundle is dataless, fetching latest revision...", v89, 2u);
  }

  if (*(v1 + 1128) != 1 || *(v1 + 592) == 1)
  {
    goto LABEL_7;
  }

  v90 = swift_task_alloc();
  *(v1 + 1000) = v90;
  *v90 = v1;
  v90[1] = sub_100008530;
  v91 = *(v1 + 720);
  v92 = *(v1 + 600);

  return sub_10000C648(v91, v92);
}

uint64_t sub_1000075B8()
{
  v0[120] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[121] = v1;
  *v1 = v0;
  v1[1] = sub_1000076A8;
  v2 = v0[90];
  v3 = v0[75];

  return sub_100019330(v2, v3);
}

uint64_t sub_1000076A8()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_10000A6B0;
  }

  else
  {
    v2 = sub_100007808;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100007808()
{
  v1 = *(v0 + 592);
  [*(v0 + 768) setCompletedUnitCount:100];
  *(v0 + 16) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  URL.path(percentEncoded:)(0);
  v2 = String.utf8CString.getter();

  v3 = lstat((v2 + 32), (v0 + 160));

  if (v3 < 0 || (*(v0 + 279) & 0x40) == 0)
  {
    if (v1 != 2)
    {
LABEL_4:
      *(v0 + 1129) = 1;
      v4 = *(v0 + 856);
      URL.appendingPathComponent(_:isDirectory:)();
      v5 = [v4 defaultManager];
      URL._bridgeToObjectiveC()(v6);
      v8 = v7;
      *(v0 + 544) = 0;
      v9 = [v5 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

      v10 = *(v0 + 544);
      if (v9)
      {
        v11 = v10;
        v12 = swift_task_alloc();
        *(v0 + 1088) = v12;
        *v12 = v0;
        v12[1] = sub_100009DF0;
        v13 = *(v0 + 760);
        v14 = *(v0 + 720);
        v15 = *(v0 + 600);

        return sub_10000D3E4(v0 + 448, v14, v15, v13);
      }

      else
      {
        v21 = v10;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          *v24 = 138412290;
          swift_errorRetain();
          v26 = _swift_stdlib_bridgeErrorToNSError();
          *(v24 + 4) = v26;
          *v25 = v26;
          _os_log_impl(&_mh_execute_header, v22, v23, "Error creating Bundle Data Folder: %@", v24, 0xCu);
          sub_10000C148(v25);
        }

        v27 = *(v0 + 840);
        v28 = *(v0 + 768);
        v38 = *(v0 + 720);
        v39 = *(v0 + 736);
        v29 = *(v0 + 696);
        v30 = *(v0 + 672);

        swift_willThrow();

        v27(v29, v30);
        v27(v38, v30);
        v27(v39, v30);

        v31 = *(v0 + 8);

        return v31();
      }
    }

    goto LABEL_9;
  }

  if (v1 == 2)
  {
LABEL_9:
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fetching latest revision...", v19, 2u);
    }

    v20 = *(v0 + 808);

    return _swift_task_switch(sub_100007E5C, v20, 0);
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Bundle is dataless, fetching latest revision...", v34, 2u);
  }

  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    goto LABEL_4;
  }

  v35 = swift_task_alloc();
  *(v0 + 1000) = v35;
  *v35 = v0;
  v35[1] = sub_100008530;
  v36 = *(v0 + 720);
  v37 = *(v0 + 600);

  return sub_10000C648(v36, v37);
}

uint64_t sub_100007E5C()
{
  v0[123] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_100007F4C;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001B5E4(v2, v3);
}

uint64_t sub_100007F4C()
{

  if (v0)
  {

    v1 = sub_10000EDC4;
  }

  else
  {

    v1 = sub_1000080C0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1000080C0()
{
  if (*(v0 + 1128) != 1 || *(v0 + 592) == 1)
  {
    *(v0 + 1129) = 1;
    v2 = *(v0 + 856);
    URL.appendingPathComponent(_:isDirectory:)();
    v3 = [v2 defaultManager];
    URL._bridgeToObjectiveC()(v4);
    v6 = v5;
    *(v0 + 544) = 0;
    v7 = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v8 = *(v0 + 544);
    if (v7)
    {
      v9 = v8;
      v10 = swift_task_alloc();
      *(v0 + 1088) = v10;
      *v10 = v0;
      v10[1] = sub_100009DF0;
      v11 = *(v0 + 760);
      v12 = *(v0 + 720);
      v13 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v12, v13, v11);
    }

    else
    {
      v18 = v8;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        swift_errorRetain();
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v23;
        *v22 = v23;
        _os_log_impl(&_mh_execute_header, v19, v20, "Error creating Bundle Data Folder: %@", v21, 0xCu);
        sub_10000C148(v22);
      }

      v24 = *(v0 + 840);
      v25 = *(v0 + 768);
      v29 = *(v0 + 720);
      v30 = *(v0 + 736);
      v26 = *(v0 + 696);
      v27 = *(v0 + 672);

      swift_willThrow();

      v24(v26, v27);
      v24(v29, v27);
      v24(v30, v27);

      v28 = *(v0 + 8);

      return v28();
    }
  }

  else
  {
    v15 = swift_task_alloc();
    *(v0 + 1000) = v15;
    *v15 = v0;
    v15[1] = sub_100008530;
    v16 = *(v0 + 720);
    v17 = *(v0 + 600);

    return sub_10000C648(v16, v17);
  }
}

uint64_t sub_100008530(uint64_t a1)
{
  *(*v1 + 1008) = a1;

  return _swift_task_switch(sub_10000865C, 0, 0);
}

uint64_t sub_10000865C(uint64_t a1)
{
  v2 = *(v1 + 1008);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000281C(&qword_100039EC0, &qword_10002B418);
    v5 = swift_dynamicCast();

    if (v5)
    {
      v72 = *(v1 + 552);
      *(v1 + 1016) = v72;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Fetching latest revision...", v8, 2u);
      }

      v66 = *(v1 + 824);
      v9 = *(v1 + 808);
      v10 = *(v1 + 728);
      v11 = *(v1 + 720);
      v69 = *(v1 + 688);
      v12 = *(v1 + 680);
      v13 = *(v1 + 672);
      v14 = *(v1 + 600);

      sub_10000281C(&qword_100039E48, &unk_10002B3E0);
      v15 = swift_allocObject();
      *(v1 + 1024) = v15;
      *(v15 + 3) = [objc_allocWithZone(NSRecursiveLock) init];
      v16 = *(*v15 + 104);
      v17 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
      (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
      v18 = &v15[*(*v15 + 112)];
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v15 + 2) = v14;
      v66(v10, v11, v13);
      v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v20 = swift_allocObject();
      *(v1 + 1032) = v20;
      *(v20 + 16) = v72;
      *(v20 + 24) = v9;
      (*(v12 + 32))(v20 + v19, v10, v13);
      *(v20 + ((v69 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v21 = v14;

      swift_unknownObjectRetain();
      v22 = swift_task_alloc();
      *(v1 + 1040) = v22;
      *(v22 + 16) = v15;
      *(v22 + 24) = &unk_10002B428;
      *(v22 + 32) = v20;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 1;
      v23 = swift_task_alloc();
      *(v1 + 1048) = v23;
      *v23 = v1;
      v23[1] = sub_100008F8C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD000000000000021, 0x800000010002CBA0, sub_10000EE48, v22, &type metadata for () + 8);
    }
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v1 + 1008);
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Error connecting to DocServerlessInterface", v28, 2u);
  }

  v29 = *(v1 + 128);
  *(v1 + 400) = *(v1 + 112);
  *(v1 + 416) = v29;
  *(v1 + 432) = *(v1 + 144);
  v30 = *(v1 + 64);
  *(v1 + 336) = *(v1 + 48);
  *(v1 + 352) = v30;
  v31 = *(v1 + 96);
  *(v1 + 368) = *(v1 + 80);
  *(v1 + 384) = v31;
  v32 = *(v1 + 32);
  *(v1 + 304) = *(v1 + 16);
  *(v1 + 320) = v32;
  URL.path(percentEncoded:)(0);
  v33 = String.utf8CString.getter();

  v34 = lstat((v33 + 32), (v1 + 304));

  if ((v34 & 0x80000000) == 0 && (*(v1 + 423) & 0x40) != 0)
  {
    v58 = *(v1 + 840);
    v65 = *(v1 + 768);
    v71 = *(v1 + 736);
    v68 = *(v1 + 720);
    v59 = *(v1 + 672);
    v60 = *(v1 + 640);
    v61 = *(v1 + 632);
    v62 = *(v1 + 624);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v61 + 8))(v60, v62);
    swift_willThrow();

    v58(v68, v59);
    v58(v71, v59);
  }

  else
  {
    *(v1 + 1129) = 0;
    v35 = *(v1 + 856);
    URL.appendingPathComponent(_:isDirectory:)();
    v36 = [v35 defaultManager];
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    *(v1 + 544) = 0;
    v40 = [v36 createDirectoryAtURL:v38 withIntermediateDirectories:1 attributes:0 error:v1 + 544];

    v41 = *(v1 + 544);
    if (v40)
    {
      v42 = v41;
      v43 = swift_task_alloc();
      *(v1 + 1088) = v43;
      *v43 = v1;
      v43[1] = sub_100009DF0;
      v44 = *(v1 + 760);
      v45 = *(v1 + 720);
      v46 = *(v1 + 600);

      return sub_10000D3E4(v1 + 448, v45, v46, v44);
    }

    v47 = v41;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v52;
      *v51 = v52;
      _os_log_impl(&_mh_execute_header, v48, v49, "Error creating Bundle Data Folder: %@", v50, 0xCu);
      sub_10000C148(v51);
    }

    v53 = *(v1 + 840);
    v54 = *(v1 + 768);
    v67 = *(v1 + 720);
    v70 = *(v1 + 736);
    v55 = *(v1 + 696);
    v56 = v48;
    v57 = *(v1 + 672);

    swift_willThrow();

    v53(v55, v57);
    v53(v67, v57);
    v53(v70, v57);
  }

  v63 = *(v1 + 8);

  return v63();
}

uint64_t sub_100008F8C()
{
  *(*v1 + 1056) = v0;

  if (v0)
  {
    v2 = sub_1000093C4;
  }

  else
  {

    v2 = sub_1000090E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000090E8()
{
  [*(v0 + 1008) invalidate];
  v1 = *(v0 + 808);

  return _swift_task_switch(sub_100009184, v1, 0);
}

uint64_t sub_100009184()
{
  v0[133] = *(v0[101] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[134] = v1;
  *v1 = v0;
  v1[1] = sub_100009274;
  v2 = v0[90];
  v3 = v0[75];

  return sub_10001D710(v2, v3);
}

uint64_t sub_100009274()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_10000A830;
  }

  else
  {

    v2 = sub_100009A1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000093C4()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1008);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "got error while fetching latest revision: %@", v5, 0xCu);
    sub_10000C148(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v8;
  *(v0 + 432) = *(v0 + 144);
  v9 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v9;
  v10 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v10;
  v11 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v11;
  URL.path(percentEncoded:)(0);
  v12 = String.utf8CString.getter();

  v13 = lstat((v12 + 32), (v0 + 304));

  if ((v13 & 0x80000000) == 0 && (*(v0 + 423) & 0x40) != 0)
  {
    v38 = *(v0 + 840);
    v44 = *(v0 + 768);
    v48 = *(v0 + 736);
    v46 = *(v0 + 720);
    v39 = *(v0 + 672);
    v40 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v41 + 8))(v40, v42);
    swift_willThrow();

    v38(v46, v39);
    v38(v48, v39);
  }

  else
  {
    *(v0 + 1129) = 0;
    v14 = *(v0 + 856);
    URL.appendingPathComponent(_:isDirectory:)();
    v15 = [v14 defaultManager];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    *(v0 + 544) = 0;
    v19 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v20 = *(v0 + 544);
    if (v19)
    {
      v21 = v20;
      v22 = swift_task_alloc();
      *(v0 + 1088) = v22;
      *v22 = v0;
      v22[1] = sub_100009DF0;
      v23 = *(v0 + 760);
      v24 = *(v0 + 720);
      v25 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v24, v25, v23);
    }

    v27 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error creating Bundle Data Folder: %@", v30, 0xCu);
      sub_10000C148(v31);
    }

    v33 = *(v0 + 840);
    v34 = *(v0 + 768);
    v45 = *(v0 + 720);
    v47 = *(v0 + 736);
    v35 = *(v0 + 696);
    v36 = v28;
    v37 = *(v0 + 672);

    swift_willThrow();

    v33(v35, v37);
    v33(v45, v37);
    v33(v47, v37);
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_100009A1C()
{
  v1 = *(v0 + 1008);
  swift_unknownObjectRelease();

  *(v0 + 1129) = 1;
  v2 = *(v0 + 856);
  URL.appendingPathComponent(_:isDirectory:)();
  v3 = [v2 defaultManager];
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  *(v0 + 544) = 0;
  v7 = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

  v8 = *(v0 + 544);
  if (v7)
  {
    v9 = v8;
    v10 = swift_task_alloc();
    *(v0 + 1088) = v10;
    *v10 = v0;
    v10[1] = sub_100009DF0;
    v11 = *(v0 + 760);
    v12 = *(v0 + 720);
    v13 = *(v0 + 600);

    return sub_10000D3E4(v0 + 448, v12, v13, v11);
  }

  else
  {
    v15 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error creating Bundle Data Folder: %@", v18, 0xCu);
      sub_10000C148(v19);
    }

    v21 = *(v0 + 840);
    v22 = *(v0 + 768);
    v26 = *(v0 + 720);
    v27 = *(v0 + 736);
    v23 = *(v0 + 696);
    v24 = *(v0 + 672);

    swift_willThrow();

    v21(v23, v24);
    v21(v26, v24);
    v21(v27, v24);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_100009DF0()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1096) = *(*v0 + 448);
  *(v2 + 1130) = *(v2 + 456);
  *(v2 + 1104) = *(v2 + 464);
  *(v2 + 1120) = *(v1 + 480);

  return _swift_task_switch(sub_100009F58, 0, 0);
}

uint64_t sub_100009F58()
{
  v18 = *(v0 + 1112);
  v19 = *(v0 + 1120);
  v16 = *(v0 + 1130);
  v14 = *(v0 + 1129);
  v1 = *(v0 + 840);
  v15 = *(v0 + 1096);
  v2 = *(v0 + 736);
  v17 = *(v0 + 1104);
  v3 = *(v0 + 720);
  v13 = *(v0 + 696);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 568);

  v1(v2, v5);
  v7 = *(v4 + 32);
  v7(v6, v3, v5);
  v8 = type metadata accessor for GameSyncedDirectoryLoadResult(0);
  v7(v6 + v8[5], v13, v5);
  *(v6 + v8[6]) = v14;
  v9 = v6 + v8[7];
  *v9 = v15;
  *(v9 + 8) = v16;
  v10 = (v6 + v8[8]);
  *v10 = v17;
  v10[1] = v18;
  *(v6 + v8[9]) = v19;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10000A194()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error getting container: %@", v3, 0xCu);
    sub_10000C148(v4);
  }

  v6 = *(v0 + 768);

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000A3B0()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *(v0 + 672);

  v1(v3, v4);
  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000A530()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *(v0 + 672);

  v1(v3, v4);
  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000A6B0()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 736);
  v3 = *(v0 + 720);
  v4 = *(v0 + 672);

  v1(v3, v4);
  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10000A830()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1008);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "got error while fetching latest revision: %@", v5, 0xCu);
    sub_10000C148(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 128);
  *(v0 + 400) = *(v0 + 112);
  *(v0 + 416) = v8;
  *(v0 + 432) = *(v0 + 144);
  v9 = *(v0 + 64);
  *(v0 + 336) = *(v0 + 48);
  *(v0 + 352) = v9;
  v10 = *(v0 + 96);
  *(v0 + 368) = *(v0 + 80);
  *(v0 + 384) = v10;
  v11 = *(v0 + 32);
  *(v0 + 304) = *(v0 + 16);
  *(v0 + 320) = v11;
  URL.path(percentEncoded:)(0);
  v12 = String.utf8CString.getter();

  v13 = lstat((v12 + 32), (v0 + 304));

  if ((v13 & 0x80000000) == 0 && (*(v0 + 423) & 0x40) != 0)
  {
    v38 = *(v0 + 840);
    v44 = *(v0 + 768);
    v48 = *(v0 + 736);
    v46 = *(v0 + 720);
    v39 = *(v0 + 672);
    v40 = *(v0 + 640);
    v41 = *(v0 + 632);
    v42 = *(v0 + 624);
    static CocoaError.Code.ubiquitousFileUbiquityServerNotAvailable.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_10000E8F0(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v41 + 8))(v40, v42);
    swift_willThrow();

    v38(v46, v39);
    v38(v48, v39);
  }

  else
  {
    *(v0 + 1129) = 0;
    v14 = *(v0 + 856);
    URL.appendingPathComponent(_:isDirectory:)();
    v15 = [v14 defaultManager];
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    *(v0 + 544) = 0;
    v19 = [v15 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v0 + 544];

    v20 = *(v0 + 544);
    if (v19)
    {
      v21 = v20;
      v22 = swift_task_alloc();
      *(v0 + 1088) = v22;
      *v22 = v0;
      v22[1] = sub_100009DF0;
      v23 = *(v0 + 760);
      v24 = *(v0 + 720);
      v25 = *(v0 + 600);

      return sub_10000D3E4(v0 + 448, v24, v25, v23);
    }

    v27 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&_mh_execute_header, v28, v29, "Error creating Bundle Data Folder: %@", v30, 0xCu);
      sub_10000C148(v31);
    }

    v33 = *(v0 + 840);
    v34 = *(v0 + 768);
    v45 = *(v0 + 720);
    v47 = *(v0 + 736);
    v35 = *(v0 + 696);
    v36 = v28;
    v37 = *(v0 + 672);

    swift_willThrow();

    v33(v35, v37);
    v33(v45, v37);
    v33(v47, v37);
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10000AE7C(uint64_t a1, char a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for ContinuousClock();
  v3[3] = v5;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  if (a2)
  {
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_10000AFD8;

    return sub_100011898();
  }

  else
  {
    v8 = swift_task_alloc();
    v3[11] = v8;
    *v8 = v3;
    v8[1] = sub_10000B42C;

    return sub_100011340();
  }
}

uint64_t sub_10000AFD8()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B544, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000B114()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    return _swift_task_switch(sub_10000B3C8, 0, 0);
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_10000B2B0;

    return sub_100011898();
  }
}

uint64_t sub_10000B2B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000B42C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001F70(v4, static Logger.daemon);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error waiting for initial sync, retrying: %@", v7, 0xCu);
    sub_10000C148(v8);
  }

  else
  {
  }

  static Clock<>.continuous.getter();
  v10 = swift_task_alloc();
  *(v3 + 64) = v10;
  *v10 = v3;
  v10[1] = sub_10000B114;

  return sub_100026AF0(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10000B74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  return _swift_task_switch(sub_10000B770, 0, 0);
}

uint64_t sub_10000B770()
{
  v1 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10000B88C;
  v2 = swift_continuation_init();
  v0[17] = sub_10000281C(&qword_100039EC8, &unk_10002B430);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000BF0C;
  v0[13] = &unk_100034FC8;
  v0[14] = v2;
  [v1 fetchLatestRevisionWithReply:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000B88C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_10000BBFC;
  }

  else
  {
    v2 = sub_10000B99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000B99C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BA08()
{
  v0[27] = *(v0[23] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_10000BAC0;
  v3 = v0[24];
  v2 = v0[25];

  return sub_10001B5E4(v3, v2);
}

uint64_t sub_10000BAC0()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000BEA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000BBFC(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();
  v1[20] = v2;
  swift_errorRetain();
  sub_10000281C(&qword_100039ED0, &unk_10002B940);
  sub_10000E838(0, &qword_100039ED8, NSError_ptr);
  if (!swift_dynamicCast())
  {

LABEL_19:
    v16 = v1[1];

    return v16();
  }

  v3 = v1[21];
  v4 = [v3 domain];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  if ([v3 code] != 40)
  {
LABEL_18:
    swift_willThrow();

    goto LABEL_19;
  }

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100001F70(v11, static Logger.daemon);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring item changed error while fetching latest revision...", v14, 2u);
  }

  v15 = v1[23];

  return _swift_task_switch(sub_10000BA08, v15, 0);
}

uint64_t sub_10000BEA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000BF0C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *sub_10000E9E4((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_10000281C(&qword_100039ED0, &unk_10002B940);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return _swift_continuation_throwingResumeWithError(v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return _swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_10000BFE4()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000C040()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000C088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000296C;

  return sub_100025D24(a1);
}

uint64_t sub_10000C148(uint64_t a1)
{
  v2 = sub_10000281C(&qword_100039E40, &unk_10002BAC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C1B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C1E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EE44;

  return sub_10000AE7C(a1, v4, v5);
}

_BYTE *sub_10000C29C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000C3E0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000C498(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10000C514(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_10000C330(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_10000C3E0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10000C498(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10000C514(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000C598(uint64_t a1)
{
  v9 = sub_10000281C(&qword_100039F28, &unk_10002B460);
  v10 = sub_10000E938();
  v8[0] = a1;
  v2 = sub_10000E9E4(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10000C29C(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000EA28(v8);
  return v5;
}

uint64_t sub_10000C648(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return _swift_task_switch(sub_10000C668, 0, 0);
}

uint64_t sub_10000C668()
{
  *(v0 + 232) = 0;
  if ([*(v0 + 224) isCancelled])
  {
    v1 = *(v0 + 8);

    return v1(0);
  }

  else
  {
    v3 = [objc_opt_self() defaultManager];
    *(v0 + 240) = v3;
    URL._bridgeToObjectiveC()(v4);
    v6 = v5;
    *(v0 + 248) = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_10000C820;
    v7 = swift_continuation_init();
    *(v0 + 200) = sub_10000281C(&qword_100039F00, &qword_10002B450);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100002FE4;
    *(v0 + 168) = &unk_100035018;
    *(v0 + 176) = v7;
    [v3 getFileProviderServicesForItemAtURL:v6 completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000C820()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10000C930;
  }

  else
  {
    v2 = sub_10000CB1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C930(uint64_t a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  swift_willThrow();

  sleep(1u);

  if (v4 == 5 || (v5 = v1[28], ++v1[29], ([v5 isCancelled] & 1) != 0))
  {
    v6 = v1[1];

    return v6(0);
  }

  else
  {
    v8 = [objc_opt_self() defaultManager];
    v1[30] = v8;
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v1[31] = v10;
    v1[2] = v1;
    v1[7] = v1 + 26;
    v1[3] = sub_10000C820;
    v12 = swift_continuation_init();
    v1[25] = sub_10000281C(&qword_100039F00, &qword_10002B450);
    v1[18] = _NSConcreteStackBlock;
    v1[19] = 1107296256;
    v1[20] = sub_100002FE4;
    v1[21] = &unk_100035018;
    v1[22] = v12;
    [v8 getFileProviderServicesForItemAtURL:v11 completionHandler:v1 + 18];

    return _swift_continuation_await(v1 + 2);
  }
}

uint64_t sub_10000CB1C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 248);

  v3 = String._bridgeToObjectiveC()();
  v4 = v3;
  if (*(v1 + 16) && (v5 = sub_100010548(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v1 + 56) + 8 * v5);
    *(v0 + 264) = v7;
    v8 = v7;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 208;
    *(v0 + 88) = sub_10000CCE8;
    v9 = swift_continuation_init();
    *(v0 + 200) = sub_10000281C(&qword_100039F08, &qword_10002B458);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_10000EE4C;
    *(v0 + 168) = &unk_100035040;
    *(v0 + 176) = v9;
    [v8 getFileProviderConnectionWithCompletionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_10000CCE8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {

    v3 = sub_10000CF4C;
  }

  else
  {
    v3 = sub_10000CE00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000CE00()
{
  v1 = v0[33];
  v2 = v0[26];
  v3 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___ICDFileProviderClientSideCollaborationProtocol];
  [v2 setRemoteObjectInterface:v3];

  v0[22] = sub_100003124;
  v0[23] = 0;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100002BBC;
  v0[21] = &unk_100035068;
  v4 = _Block_copy(v0 + 18);
  [v2 setInterruptionHandler:v4];
  _Block_release(v4);
  [v2 resume];

  v5 = v0[1];

  return v5(v2);
}

uint64_t sub_10000CF4C(uint64_t a1)
{
  v2 = *(v1 + 264);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_10000CFC8(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a1;
  v5 = a2[1];
  if (v5)
  {
    v6 = *(v4 + OBJC_IVAR___DeviceInfo_name) == *a2 && v5 == *(v4 + OBJC_IVAR___DeviceInfo_name + 8);
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return 1;
    }
  }

  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 name];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = (v4 + OBJC_IVAR___DeviceInfo_name);
  if (*(v4 + OBJC_IVAR___DeviceInfo_name) == v10 && *(v4 + OBJC_IVAR___DeviceInfo_name + 8) == v12)
  {
LABEL_31:

    return 1;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
    return 1;
  }

  v16 = *a3;
  if (v16 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = [v19 localizedNameOfSavingComputer];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v24 == *v13 && v26 == v13[1])
        {

          return 1;
        }

        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v28)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      ++v18;
      if (v21 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_33:

  return 0;
}

unint64_t *sub_10000D23C(unint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = a1;
  v19 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v16 = v6;
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = i;
    while (1)
    {
      if (v9)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v10;
      v13 = sub_10000CFC8(&v18, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        i = v15;
        v6 = v16;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = _swiftEmptyArrayStorage;
LABEL_20:

  return a3;
}

uint64_t sub_10000D3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[23] = a1;
  v4[24] = a2;
  return _swift_task_switch(sub_10000D408, 0, 0);
}

uint64_t sub_10000D408()
{
  v1 = v0[25];
  v0[18] = 0;
  v0[19] = 0;
  v3 = 0;
  v4 = 0;
  if (([v1 isCancelled] & 1) == 0)
  {
    URL._bridgeToObjectiveC()(v2);
    v6 = v5;
    v7 = [v5 br_lastEditorDeviceName];
    if (v7)
    {
      v8 = v7;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = v9;
    }

    else
    {

      v3 = 0;
      v4 = 0;
    }

    v0[18] = v3;
    v0[19] = v4;
  }

  v0[27] = v3;
  v0[28] = v4;
  v10 = objc_opt_self();
  v0[30] = 0;
  v0[31] = _swiftEmptyArrayStorage;
  v0[29] = v10;
  v11 = [v10 defaultManager];
  v0[32] = v11;
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v0[33] = v13;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10000D5EC;
  v15 = swift_continuation_init();
  v0[17] = sub_10000281C(&qword_100039EE0, &qword_10002B440);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000EE4C;
  v0[13] = &unk_100034FF0;
  v0[14] = v15;
  [v11 fetchItemForURL:v14 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000D5EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    *(v1 + 160) = *(v1 + 248);
    v3 = sub_10000E124;
  }

  else
  {
    v3 = sub_10000D704;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000D704()
{
  v35 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 168);

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100001F70(v3, static Logger.daemon);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Got FPItem: %@", v7, 0xCu);
    sub_10000C148(v8);
  }

  v10 = [v4 conflictingVersions];
  if (!v10)
  {

LABEL_12:
    v18 = *(v0 + 248);
LABEL_20:
    *(v0 + 160) = v18;
    v27 = *(v0 + 240);
    *(v0 + 320) = v10;
    *(v0 + 328) = v18;
    *(v0 + 312) = v27;
    v28 = swift_task_alloc();
    *(v0 + 336) = v28;
    *v28 = v0;
    v28[1] = sub_10000DF64;

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  sub_10000E838(0, &qword_100039EF8, NSFileProviderItemVersion_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 280) = v10;

  if (v10 < 1)
  {
    goto LABEL_12;
  }

  v12 = objc_opt_self();
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = [v12 unresolvedConflictVersionsOfItemAtURL:v14];

  if (v16)
  {
    sub_10000E838(0, &qword_100039EF0, NSFileVersion_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = 0;
  }

  *(v0 + 288) = v17;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315138;
    *(v0 + 176) = v17;

    sub_10000281C(&qword_100039EE8, &qword_10002B448);
    v23 = String.init<A>(describing:)();
    v25 = sub_100020014(v23, v24, &v34);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got %s", v21, 0xCu);
    sub_10000EA28(v22);
  }

  v18 = *(v0 + 248);
  if (!v17)
  {
    goto LABEL_20;
  }

  v26 = v17 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v18 = v17;
  if (v26)
  {
    goto LABEL_20;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Waiting for conflicting version to be populated...", v32, 2u);
  }

  v33 = swift_task_alloc();
  *(v0 + 296) = v33;
  *v33 = v0;
  v33[1] = sub_10000DC34;

  return static Task<>.sleep(nanoseconds:)(100);
}

uint64_t sub_10000DC34()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_10000E328;
  }

  else
  {
    v2 = sub_10000DD50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000DD50()
{
  v1 = *(v0 + 304);
  if ([*(v0 + 200) isCancelled])
  {
    v3 = *(v0 + 280);
    v2 = *(v0 + 288);
    *(v0 + 160) = v2;
    *(v0 + 320) = v3;
    *(v0 + 328) = v2;
    *(v0 + 312) = v1;
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = sub_10000DF64;

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  else
  {
    v6 = *(v0 + 288);
    *(v0 + 240) = v1;
    *(v0 + 248) = v6;
    v7 = [*(v0 + 232) defaultManager];
    *(v0 + 256) = v7;
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    *(v0 + 264) = v9;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_10000D5EC;
    v11 = swift_continuation_init();
    *(v0 + 136) = sub_10000281C(&qword_100039EE0, &qword_10002B440);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000EE4C;
    *(v0 + 104) = &unk_100034FF0;
    *(v0 + 112) = v11;
    [v7 fetchItemForURL:v10 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000DF64(uint64_t a1)
{
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_10000E064, 0, 0);
}

uint64_t sub_10000E064()
{
  v1 = v0[40];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[23];
  v5 = v0[34] != 0;
  v6 = sub_10000D23C(v0[43], v0 + 18, v0 + 20);

  *v4 = v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_10000E124(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[32];
  swift_willThrow();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001F70(v4, static Logger.daemon);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error getting FPItem: %@", v7, 0xCu);
    sub_10000C148(v8);
  }

  else
  {
  }

  v10 = v1[31];
  v1[40] = 0;
  v1[41] = v10;
  v1[39] = 0;
  v11 = swift_task_alloc();
  v1[42] = v11;
  *v11 = v1;
  v11[1] = sub_10000DF64;

  return sub_100025ED4(1000000000000000000, 0, 0);
}

uint64_t sub_10000E328()
{
  if ([*(v0 + 200) isCancelled])
  {
    v2 = *(v0 + 280);
    v1 = *(v0 + 288);
    *(v0 + 160) = v1;
    *(v0 + 320) = v2;
    *(v0 + 328) = v1;
    *(v0 + 312) = 0;
    v3 = swift_task_alloc();
    *(v0 + 336) = v3;
    *v3 = v0;
    v3[1] = sub_10000DF64;

    return sub_100025ED4(1000000000000000000, 0, 0);
  }

  else
  {
    v5 = *(v0 + 288);
    *(v0 + 240) = 0;
    *(v0 + 248) = v5;
    v6 = [*(v0 + 232) defaultManager];
    *(v0 + 256) = v6;
    URL._bridgeToObjectiveC()(v7);
    v9 = v8;
    *(v0 + 264) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_10000D5EC;
    v10 = swift_continuation_init();
    *(v0 + 136) = sub_10000281C(&qword_100039EE0, &qword_10002B440);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000EE4C;
    *(v0 + 104) = &unk_100034FF0;
    *(v0 + 112) = v10;
    [v6 fetchItemForURL:v9 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t type metadata accessor for GameSyncedDirectoryLoadResult(uint64_t a1)
{
  result = qword_100039F90;
  if (!qword_100039F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E584()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E664(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000296C;

  return sub_10000B74C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10000E7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E838(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000E89C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000E8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E938()
{
  result = qword_100039F30;
  if (!qword_100039F30)
  {
    sub_10000E99C(&qword_100039F28, &unk_10002B460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039F30);
  }

  return result;
}

uint64_t sub_10000E99C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10000E9E4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000EA28(void *a1)
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

uint64_t sub_10000EA88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000EB68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_10000EC24(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_10000ED08(319, &qword_100039FA0, &type metadata for Int);
    if (v2 <= 0x3F)
    {
      sub_10000ED08(319, &qword_100039FA8, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_10000ED54(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000ED08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000ED54(uint64_t a1)
{
  if (!qword_100039FB0)
  {
    sub_10000E99C(&unk_100039FB8, &unk_10002B490);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100039FB0);
    }
  }
}

uint64_t sub_10000EDC4()
{

  return sub_1000080C0();
}

uint64_t sub_10000EE50()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP9gamesaved22GameSaveDaemonProtocol_];
  sub_10000281C(&qword_10003A180, &qword_10002BC40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10002B4A0;
  v1 = type metadata accessor for GameSyncedDirectoryRequest();
  *(v0 + 56) = sub_10000281C(&qword_10003A188, &qword_10002B700);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 initWithArray:isa];

  result = static Set._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  return result;
}

Swift::Int sub_10000F120()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F198(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2 + 1);
  return Hasher._finalize()();
}

_BYTE *sub_10000F1DC@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result >= 4u)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x2010003u >> (8 * *result);
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10000F214(uint64_t a1)
{
  v2 = sub_1000103D4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000F250(uint64_t a1)
{
  v2 = sub_1000103D4();
  v3 = sub_100010428();
  v4 = sub_10001047C();

  return Error<>._code.getter(a1, v2, v3, v4);
}

Swift::Int sub_10000F308()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F37C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10000F3C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100010A4C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_10000F408(void *a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL);
  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL);
  v8 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline);
  v10 = String._bridgeToObjectiveC()();
  [a1 encodeBool:v9 forKey:v10];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName + 8))
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    [a1 encodeObject:v11 forKey:v12];
  }

  if ((*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts + 8) & 1) == 0)
  {
    v13 = *(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts);
    v14 = String._bridgeToObjectiveC()();
    [a1 encodeInteger:v13 forKey:v14];
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v15 forKey:v16];

  if (*(v2 + OBJC_IVAR___GameSyncedDirectoryResponse_devices))
  {
    type metadata accessor for DeviceInfo();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v18 = String._bridgeToObjectiveC()();
    [a1 encodeObject:isa forKey:v18];
  }
}

uint64_t sub_10000F760()
{
  v1 = v0;
  _StringGuts.grow(_:)(116);
  v2._countAndFlagsBits = 0x5255656C646E7542;
  v2._object = 0xEB00000000203A4CLL;
  String.append(_:)(v2);
  type metadata accessor for URL();
  sub_100011060();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x800000010002CF40;
  String.append(_:)(v4);
  v5 = [*(v0 + OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x696C6E4F7369202CLL;
  v10._object = 0xEC000000203A656ELL;
  String.append(_:)(v10);
  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR___GameSyncedDirectoryResponse_isOnline))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0xD000000000000018;
  v14._object = 0x800000010002CF60;
  String.append(_:)(v14);

  sub_10000281C(&qword_10003A158, &qword_10002B6E0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._object = 0x800000010002CF80;
  v16._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v16);
  sub_10000281C(&qword_10003A160, &qword_10002B6E8);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0x656369766564202CLL;
  v18._object = 0xEB00000000203A73;
  String.append(_:)(v18);

  sub_10000281C(&qword_10003A168, &unk_10002B6F0);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  return 0;
}

uint64_t type metadata accessor for GameSyncedDirectoryResponse(uint64_t a1)
{
  result = qword_10003A088;
  if (!qword_10003A088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FB6C(uint64_t a1)
{
  result = type metadata accessor for URL();
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

void sub_10000FC44(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___GameSyncedDirectoryRequest_mode);
  v4 = String._bridgeToObjectiveC()();
  [a1 encodeInteger:v3 forKey:v4];

  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v5 forKey:v6];
}

uint64_t sub_10000FDE8()
{
  _StringGuts.grow(_:)(33);

  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._object = 0x800000010002CEF0;
  v2._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
  v4 = *(v0 + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier + 8);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  return 0x203A65646F4DLL;
}

id sub_10000FF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameSyncedDirectoryRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000FF7C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v2 forKey:v3];

  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  [a1 encodeObject:v4 forKey:v5];
}

id sub_100010114(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_100010184()
{
  _StringGuts.grow(_:)(27);

  String.append(_:)(*(v0 + OBJC_IVAR___DeviceInfo_name));
  v1._object = 0x800000010002CEA0;
  v1._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR___DeviceInfo_symbol));
  return 0x203A656D614ELL;
}

id sub_100010264()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100010328()
{
  result = qword_10003A108;
  if (!qword_10003A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A108);
  }

  return result;
}

unint64_t sub_100010380()
{
  result = qword_10003A110;
  if (!qword_10003A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A110);
  }

  return result;
}

unint64_t sub_1000103D4()
{
  result = qword_10003A118;
  if (!qword_10003A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A118);
  }

  return result;
}

unint64_t sub_100010428()
{
  result = qword_10003A120;
  if (!qword_10003A120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A120);
  }

  return result;
}

unint64_t sub_10001047C()
{
  result = qword_10003A128;
  if (!qword_10003A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A128);
  }

  return result;
}

unint64_t sub_1000104D0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000105DC(a1, a2, v4);
}

unint64_t sub_100010548(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100010694(a1, v2);
}

unint64_t sub_1000105DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100010694(uint64_t a1, uint64_t a2)
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

unint64_t sub_1000107C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10000281C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1000104D0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1000108BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000281C(&qword_10003A130, &qword_10002BE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000109CC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000104D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100010A3C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000109CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A138, &unk_10002B6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100010A3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100010A4C(unint64_t result)
{
  if (result == 255)
  {
    v1 = 255;
  }

  else
  {
    v1 = 0;
  }

  if (result >= 3)
  {
    return v1;
  }

  return result;
}

id sub_100010A6C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000E838(0, &qword_10003A170, NSURL_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = result;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v6 + 32))(&v2[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v8, v5);
  sub_10000E838(0, &qword_10003A178, NSSecurityScopedURLWrapper_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = result;
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 decodeBoolForKey:v11];

  v2[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v12;
  v13 = String._bridgeToObjectiveC()();
  v14 = [a1 containsValueForKey:v13];

  if (v14)
  {
    sub_10000E838(0, &qword_10003A148, NSString_ptr);
    v15 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v15)
    {
      v33 = 0;
      v34 = 0;
      v16 = v15;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v18 = v33;
      v17 = v34;
      if (!v34)
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v20 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v20 = v18;
    v20[1] = v17;
  }

  else
  {
    v19 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v19 = 0;
    v19[1] = 0;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [a1 containsValueForKey:v21];

  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();
    v24 = [a1 decodeIntegerForKey:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
  *v25 = v24;
  v25[8] = v22 ^ 1;
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (!result)
  {
    goto LABEL_21;
  }

  v26 = result;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = &v2[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
  *v30 = v27;
  v30[1] = v29;
  v31 = String._bridgeToObjectiveC()();
  LODWORD(v27) = [a1 containsValueForKey:v31];

  if (v27)
  {
    type metadata accessor for DeviceInfo();
    v32 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  }

  else
  {
    v32 = 0;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v32;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  return objc_msgSendSuper2(&v35, "init");
}

id sub_100010E5C(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 decodeIntegerForKey:v4];

  if (v5 == 255)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
  }

  if (v5 < 3)
  {
    v6 = v5;
  }

  *&v2[OBJC_IVAR___GameSyncedDirectoryRequest_mode] = v6;
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = &v2[OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier];
    *v12 = v9;
    v12[1] = v11;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for GameSyncedDirectoryRequest();
    return objc_msgSendSuper2(&v13, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100010F58()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10000E838(0, &qword_10003A148, NSString_ptr);
  result = NSCoder.decodeObject<A>(of:forKey:)();
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = &v0[OBJC_IVAR___DeviceInfo_name];
    *v8 = v5;
    v8[1] = v7;
    result = NSCoder.decodeObject<A>(of:forKey:)();
    if (result)
    {
      v9 = result;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13 = &v1[OBJC_IVAR___DeviceInfo_symbol];
      *v13 = v10;
      v13[1] = v12;
      v14.receiver = v1;
      v14.super_class = ObjectType;
      return objc_msgSendSuper2(&v14, "init");
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100011060()
{
  result = qword_10003A150;
  if (!qword_10003A150)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameSaveError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GameSaveError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001122C()
{
  result = qword_10003A1A8;
  if (!qword_10003A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A1A8);
  }

  return result;
}

Swift::Int sub_10001128C()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000112F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100011340()
{
  v1[19] = v0;
  v2 = type metadata accessor for URL();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100011400, v0, 0);
}

uint64_t sub_100011400()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  (*(v2 + 16))(v1, v0[19] + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url, v3);
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v0[23] = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100001F70(v7, static Logger.daemon);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Forcing refresh of container", v10, 2u);
  }

  v11 = [v6 br_cloudDocsContainer];
  v0[24] = v11;
  if (v11)
  {
    v12 = v11;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1000116B4;
    v13 = swift_continuation_init();
    v0[17] = sub_10000281C(&qword_10003A450, &qword_10002B950);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100011834;
    v0[13] = &unk_1000352B8;
    v0[14] = v13;
    [v12 forceRefreshWithCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    sub_100014FE8();
    swift_allocError();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1000116B4()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_1000117A8, v1, 0);
}

uint64_t sub_1000117A8(uint64_t a1)
{
  v3 = v1[23];
  v2 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_100011834(uint64_t a1, void *a2)
{
  v3 = sub_10000E9E4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000118B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Waiting for initial sync for container", v7, 2u);
  }

  v8 = *(v3 + 16);

  v9 = sub_100014E78();
  v10 = swift_task_alloc();
  *(v3 + 24) = v10;
  *v10 = v3;
  v10[1] = sub_100011A54;
  v11 = *(v3 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v8, v9, 0xD000000000000014, 0x800000010002D190, sub_100014ED0, v11, &type metadata for () + 8);
}

uint64_t sub_100011A54()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_100011B98;
  }

  else
  {
    v4 = sub_100011B80;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_100011BB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;

  v7 = String._bridgeToObjectiveC()();

  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v6, v3);
  aBlock[4] = sub_100014F6C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011DF4;
  aBlock[3] = &unk_100035290;
  v10 = _Block_copy(aBlock);

  BRRegisterInitialSyncHandlerForContainer();
  _Block_release(v10);
}

uint64_t sub_100011D80(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10000281C(&qword_100039E50, &qword_10002BE90);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10000281C(&qword_100039E50, &qword_10002BE90);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100011DF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100011E60(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100011E80, v1, 0);
}

uint64_t sub_100011E80()
{
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver;

  sub_10001702C(v3, v4, v5);

  *(v0 + 32) = *(v1 + v2);

  return _swift_task_switch(sub_100011F1C, 0, 0);
}

uint64_t sub_100011F1C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = 0x405E000000000000;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100012020;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000002ELL, 0x800000010002D160, sub_100014E18, v3, &type metadata for Bool);
}

uint64_t sub_100012020()
{

  return _swift_task_switch(sub_100012138, 0, 0);
}

uint64_t sub_100012138()
{
  if (*(v0 + 56) != 1)
  {
    sub_100014E24();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000121FC()
{

  v1 = OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for UbiquitousContainer(uint64_t a1)
{
  result = qword_10003A238;
  if (!qword_10003A238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000122E0(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_1000123BC()
{
  v1 = *(v0 + 64);
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1000107AC(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0;

  return _swift_task_switch(sub_100012438, v1, 0);
}

uint64_t sub_100012438()
{
  v1 = v0[8];
  v2 = [objc_opt_self() defaultCenter];
  v3 = BRAccountTokenDidChangeNotification;
  v0[6] = sub_100014A10;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100012F2C;
  v0[5] = &unk_100035150;
  v4 = _Block_copy(v0 + 2);

  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *(v1 + 120) = v5;
  swift_unknownObjectRelease();
  [objc_opt_self() startAccountTokenChangeObserverIfNeeded];
  v6 = v0[1];
  v7 = v0[8];

  return v6(v7);
}

uint64_t sub_1000125AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_100012918(0, 0, v5, &unk_10002B910, v7);
}

uint64_t sub_1000126D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling BRAccount Token Did Change notification", v7, 2u);
  }

  v8 = swift_task_alloc();
  *(v3 + 24) = v8;
  *v8 = v3;
  v8[1] = sub_100012824;

  return sub_100013020();
}

uint64_t sub_100012824()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100012918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100014C94(a3, v25 - v10, &qword_100039D28, &qword_10002B900);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100014CFC(v11, &qword_100039D28, &qword_10002B900);
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

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

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

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
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

uint64_t sub_100012C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100014C94(a3, v25 - v10, &qword_100039D28, &qword_10002B900);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100014CFC(v11, &qword_100039D28, &qword_10002B900);
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

      sub_10000281C(&unk_100039FB8, &unk_10002B490);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);

      return v22;
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

  sub_100014CFC(a3, &qword_100039D28, &qword_10002B900);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000281C(&unk_100039FB8, &unk_10002B490);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100012F2C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100013040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v3 + 24) = sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Invalidating container handlers", v7, 2u);
  }

  v8 = *(v3 + 16);

  v9 = *(v8 + 112);
  *(v3 + 32) = v9;
  v10 = *(v9 + 32);
  *(v3 + 64) = v10;
  v11 = -1;
  v12 = -1 << v10;
  if (-(-1 << v10) < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);

  if (v13)
  {
    v15 = 0;
LABEL_12:
    *(v3 + 40) = v13;
    *(v3 + 48) = v15;
    v17 = *(*(v14 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    *(v3 + 56) = v17;

    return _swift_task_switch(sub_100013250, v17, 0);
  }

  else
  {
    v16 = 0;
    while (((63 - v12) >> 6) - 1 != v16)
    {
      v15 = v16 + 1;
      v13 = *(v14 + 8 * v16++ + 72);
      if (v13)
      {
        goto LABEL_12;
      }
    }

    v18 = *(v3 + 16);

    *(v18 + 112) = &_swiftEmptyDictionarySingleton;
    v19 = *(v3 + 8);

    return v19();
  }
}

uint64_t sub_100013250()
{
  v17 = v0;
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver);
  v2 = v1[4];
  if (v2)
  {

    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      v8 = v1[2];
      v9 = v1[3];

      v10 = sub_100020014(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stopping metadata query for %s", v6, 0xCu);
      sub_10000EA28(v7);
    }

    v11 = *(v0 + 16);
    [v3 stopQuery];

    v12 = v1[4];
    v1[4] = 0;

    v13 = sub_10001340C;
    v14 = v11;
  }

  else
  {
    v14 = *(v0 + 16);
    v13 = sub_10001531C;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_10001340C()
{

  v4 = *(v0 + 48);
  v5 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v5)
  {
    v6 = *(v0 + 32);
LABEL_7:
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    v8 = *(*(v6 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v5)))));
    *(v0 + 56) = v8;

    v1 = sub_100013250;
    v2 = v8;
    v3 = 0;

    return _swift_task_switch(v1, v2, v3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return _swift_task_switch(v1, v2, v3);
      }

      if (v7 >= (((1 << *(v0 + 64)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v0 + 32);
      v5 = *(v6 + 8 * v7 + 64);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v9 = *(v0 + 16);

    *(v9 + 112) = &_swiftEmptyDictionarySingleton;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100013544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = type metadata accessor for URL();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10001365C, v3, 0);
}

uint64_t sub_10001365C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v3 + 168) = sub_100001F70(v4, static Logger.daemon);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Getting Container", v7, 2u);
  }

  v8 = *(v3 + 104);

  v9 = *(v8 + 112);
  if (*(v9 + 16))
  {
    v11 = *(v3 + 80);
    v10 = *(v3 + 88);

    v12 = sub_1000104D0(v11, v10);
    if (v13)
    {
      v14 = *(*(v9 + 56) + 8 * v12);

      goto LABEL_33;
    }
  }

  v16 = *(v3 + 112);
  v15 = *(v3 + 120);
  v17 = swift_allocBox();
  *(v3 + 176) = v17;
  v66 = v18;
  (*(v15 + 56))(v18, 1, 1, v16);
  v19 = (v15 + 48);
  if ([*(v3 + 96) isCancelled])
  {
LABEL_29:
    v41 = *(v3 + 152);
    v42 = *(v3 + 112);
    sub_100014C94(v66, v41, &qword_10003A430, &unk_10002B930);
    if ((*v19)(v41, 1, v42) != 1)
    {
      v48 = *(v3 + 128);
      v49 = *(v3 + 136);
      v50 = *(v3 + 112);
      v51 = *(v3 + 120);
      v53 = *(v3 + 80);
      v52 = *(v3 + 88);
      (*(v51 + 32))(v49, *(v3 + 152), v50);
      v54 = *(v51 + 16);
      v54(v48, v49, v50);
      type metadata accessor for UbiquitousContainer(0);
      v55 = swift_allocObject();
      *(v3 + 184) = v55;
      swift_defaultActor_initialize();
      v54(v55 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_url, v48, v50);
      *(v55 + 112) = v53;
      *(v55 + 120) = v52;
      type metadata accessor for ContainerObserver(0);
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      v56 = sub_100017414(v53, v52);
      v57 = *(v51 + 8);
      *(v3 + 192) = v57;
      *(v3 + 200) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v57(v48, v50);
      *(v55 + OBJC_IVAR____TtC9gamesaved19UbiquitousContainer_containerObserver) = v56;
      v58 = swift_task_alloc();
      *(v3 + 208) = v58;
      *v58 = v3;
      v58[1] = sub_100013F74;
      v59 = *(v3 + 96);

      return sub_100011E60(v59);
    }

    sub_100014CFC(*(v3 + 152), &qword_10003A430, &unk_10002B930);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Couldn't get container URL", v45, 2u);
    }

    v14 = 0;
LABEL_33:

    v46 = *(v3 + 8);

    return v46(v14);
  }

  v20 = 6;
  v65 = v17;
  while (1)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = String._bridgeToObjectiveC()();
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    *(v23 + 24) = v21;
    *(v3 + 48) = sub_100014C8C;
    *(v3 + 56) = v23;
    *(v3 + 16) = _NSConcreteStackBlock;
    *(v3 + 24) = 1107296256;
    *(v3 + 32) = sub_1000143E4;
    *(v3 + 40) = &unk_100035240;
    v24 = _Block_copy((v3 + 16));

    BRGetProcessMobileContainerForID();
    _Block_release(v24);

    v25 = *(v21 + 16);
    if (v25)
    {
      *(v3 + 64) = v25;
      swift_errorRetain();
      sub_10000281C(&qword_100039ED0, &unk_10002B940);
      sub_100014D5C();
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_19:
    v33 = *(v3 + 160);
    v34 = *(v3 + 112);
    sub_100014C94(v66, v33, &qword_10003A430, &unk_10002B930);
    LODWORD(v33) = (*v19)(v33, 1, v34);
    sub_100014CFC(*(v3 + 160), &qword_10003A430, &unk_10002B930);
    if (v33 != 1)
    {

      goto LABEL_29;
    }

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      if (*(v21 + 16))
      {
        swift_errorRetain();
        v39 = _swift_stdlib_bridgeErrorToNSError();
        v40 = v39;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      *(v37 + 4) = v39;
      *v38 = v40;
      _os_log_impl(&_mh_execute_header, v35, v36, "Retrying to get the container URL with error: %@", v37, 0xCu);
      sub_100014CFC(v38, &qword_100039E40, &unk_10002BAC0);

      v17 = v65;
    }

    sleep(1u);

    if (!--v20 || ([*(v3 + 96) isCancelled] & 1) != 0)
    {
      goto LABEL_29;
    }
  }

  v26 = *(v3 + 72);
  v27 = [v26 domain];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }
  }

  if ([v26 code] != 2)
  {
    goto LABEL_18;
  }

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "iCloud Drive signed out", v62, 2u);
  }

  sub_100010380();
  swift_allocError();
  *v63 = 0;
  swift_willThrow();

  v64 = *(v3 + 8);

  return v64();
}

uint64_t sub_100013F74()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1000141C0;
  }

  else
  {
    v4 = sub_1000140A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000140A0()
{
  v1 = v0[24];
  v2 = v0[23];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[10];
  v6 = v0[11];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v5 + 112);
  *(v5 + 112) = 0x8000000000000000;
  sub_100029AE0(v2, v7, v6, isUniquelyReferenced_nonNull_native);

  *(v5 + 112) = v11;
  v1(v3, v4);

  v9 = v0[1];

  return v9(v2);
}

uint64_t sub_1000141C0()
{
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error initializing metadata query: %@", v3, 0xCu);
    sub_100014CFC(v4, &qword_100039E40, &unk_10002BAC0);
  }

  else
  {
  }

  (*(v0 + 192))(*(v0 + 136), *(v0 + 112));

  v6 = *(v0 + 8);

  return v6(0);
}

uint64_t sub_10001437C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_projectBox();
  sub_100014DA8(a1, v7);
  *(a4 + 16) = a2;
  swift_errorRetain();
}

uint64_t sub_1000143E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_100014CFC(v8, &qword_10003A430, &unk_10002B930);
}

uint64_t sub_100014538()
{

  swift_unknownObjectRelease();
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10001459C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000145FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000146F4;

  return v6(a1);
}

uint64_t sub_1000146F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000147EC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1000148E0;

  return v5(v2 + 16);
}

uint64_t sub_1000148E0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_100014A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100014A30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100014A70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000296C;

  return sub_1000126B8(a1, v4, v5, v6);
}

uint64_t sub_100014B24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014B5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EE44;

  return sub_1000145FC(a1, v4);
}

uint64_t sub_100014C14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100014C4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000281C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014CFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000281C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100014D5C()
{
  result = qword_100039ED8;
  if (!qword_100039ED8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039ED8);
  }

  return result;
}

uint64_t sub_100014DA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100014E24()
{
  result = qword_10003A438;
  if (!qword_10003A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A438);
  }

  return result;
}

unint64_t sub_100014E78()
{
  result = qword_10003A440;
  if (!qword_10003A440)
  {
    type metadata accessor for UbiquitousContainer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A440);
  }

  return result;
}

uint64_t sub_100014ED8()
{
  v1 = sub_10000281C(&qword_100039E50, &qword_10002BE90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100014F6C(uint64_t a1)
{
  sub_10000281C(&qword_100039E50, &qword_10002BE90);

  return sub_100011D80(a1);
}

unint64_t sub_100014FE8()
{
  result = qword_10003A448;
  if (!qword_10003A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A448);
  }

  return result;
}

uint64_t sub_100015054(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EE44;

  return sub_1000147EC(a1, v4);
}

uint64_t sub_10001510C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000296C;

  return sub_1000147EC(a1, v4);
}

uint64_t getEnumTagSinglePayload for UbiquitousContainerError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UbiquitousContainerError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000152B0()
{
  result = qword_10003A458;
  if (!qword_10003A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003A458);
  }

  return result;
}

void *sub_100015328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v12 = SecTaskCreateWithAuditToken(0, &token);
  if (!v12)
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100001F70(v25, static Logger.daemon);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to create SecTask", v28, 2u);
    }

    goto LABEL_15;
  }

  v13 = v12;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100001F70(v14, static Logger.daemon);
  v15 = sub_100022100(v13);
  if (!v15)
  {
    v26 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, v29, "Failed getting application identifier", v30, 2u);
    }

LABEL_15:

    type metadata accessor for GameSaveXPCClient();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v6[4] = v15;
  v6[2] = sub_1000228A8(v13);
  v6[3] = v16;
  v6[7] = a2;
  v6[8] = a3;
  v6[9] = a4;
  v6[5] = a5;
  v6[6] = a1;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    v21 = v6[3];
    *token.val = v6[2];
    *&token.val[2] = v21;

    sub_10000281C(&qword_10003A158, &qword_10002B6E0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100020014(v22, v23, &v32);

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%s] Welcome to GameSaveDaemon!", v19, 0xCu);
    sub_10000EA28(v20);
  }

  return v6;
}

uint64_t sub_100015674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100015694, 0, 0);
}

uint64_t sub_100015694()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_10001572C;

  return sub_10002940C();
}

uint64_t sub_10001572C()
{

  return _swift_task_switch(sub_100015828, 0, 0);
}

uint64_t sub_100015828()
{
  dispatch_group_leave(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

id sub_100015888(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100001F70(v11, static Logger.daemon);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "getSyncedDirectory called with: %@", v15, 0xCu);
    sub_100014CFC(v16, &qword_100039E40, &unk_10002BAC0);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = objc_opt_self();

  v20 = [v19 progressWithTotalUnitCount:100];
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v4;
  v22[5] = v12;
  v22[6] = v20;
  v22[7] = sub_100016810;
  v22[8] = v18;
  v23 = v12;

  v24 = v20;
  sub_100012918(0, 0, v10, &unk_10002BAB8, v22);

  return v24;
}

uint64_t sub_100015B44(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001F70(v6, static Logger.daemon);
  v7 = a1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = a1;
    *(v10 + 12) = 2112;
    v12 = v7;
    if (a2)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 14) = v13;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "getSyncedDirectory reply: %@ %@", v10, 0x16u);
    sub_10000281C(&qword_100039E40, &unk_10002BAC0);
    swift_arrayDestroy();
  }

  return a3(a1, a2);
}

uint64_t sub_100015D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v9 = type metadata accessor for URL();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = type metadata accessor for GameSyncedDirectoryLoadResult(0);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_100015DF8, 0, 0);
}

void sub_100015DF8()
{
  v1 = kTCCServiceUbiquity;
  if (kTCCServiceUbiquity)
  {
    v2 = *(v0 + 32);
    v3 = *(v2 + 64);
    *(v0 + 136) = *(v2 + 48);
    *(v0 + 152) = v3;
    v4 = TCCAccessCheckAuditToken();

    if (v4)
    {
      v5 = (*(v0 + 40) + OBJC_IVAR___GameSyncedDirectoryRequest_containerIdentifier);
      v6 = *v5;
      v7 = v5[1];
      v8 = *(*(v0 + 32) + 32);
      v9 = (v8 + 40);
      v10 = *(v8 + 16) + 1;
      while (1)
      {
        if (!--v10)
        {
          v14 = 2;
          goto LABEL_13;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        *(v0 + 112) = *v9;
        if (v11 == v6 && v12 == v7)
        {
          break;
        }

        v9 += 2;
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          goto LABEL_17;
        }
      }

      v11 = v6;
LABEL_17:
      v19 = *(*(v0 + 40) + OBJC_IVAR___GameSyncedDirectoryRequest_mode);

      v20 = swift_task_alloc();
      *(v0 + 120) = v20;
      *v20 = v0;
      v20[1] = sub_100016038;
      v21 = *(v0 + 104);
      v22 = *(v0 + 48);

      sub_1000032E4(v21, v11, v12, v19, v22);
    }

    else
    {
      v14 = 1;
LABEL_13:
      sub_100010380();
      v15 = swift_allocError();
      *v16 = v14;
      swift_willThrow();
      v17 = *(v0 + 56);
      swift_errorRetain();
      v17(0, v15);

      v18 = *(v0 + 8);

      v18();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100016038()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1000165A4;
  }

  else
  {
    v2 = sub_10001615C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001615C()
{
  v1 = *(v0 + 32);
  URL.path(percentEncoded:)(0);
  v2 = *(v1 + 64);
  *(v0 + 168) = *(v1 + 48);
  *(v0 + 184) = v2;
  String.utf8CString.getter();

  *(v0 + 200) = *(v0 + 168);
  *(v0 + 216) = *(v0 + 184);
  v3 = sandbox_extension_issue_file_to_process();

  if (v3)
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    v8 = *(v0 + 72);
    v45 = *(v0 + 56);
    v9 = String.init(cString:)();
    v43 = v10;
    v44 = v9;
    v11 = objc_allocWithZone(NSSecurityScopedURLWrapper);
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    v42 = [v11 initWithURL:v13 readonly:0];

    v15 = *(v6 + 16);
    v16 = v8;
    v15(v7, v4, v8);
    v41 = *(v4 + v5[6]);
    v17 = (v4 + v5[8]);
    v18 = v17[1];
    v38 = *v17;
    v19 = v4 + v5[7];
    v40 = *v19;
    v39 = *(v19 + 8);
    v20 = *(v4 + v5[9]);
    v21 = type metadata accessor for GameSyncedDirectoryResponse(0);
    v22 = objc_allocWithZone(v21);
    v15(&v22[OBJC_IVAR___GameSyncedDirectoryResponse_directoryURL], v7, v16);
    *&v22[OBJC_IVAR___GameSyncedDirectoryResponse_gameSavedDataFolderURL] = v42;
    v22[OBJC_IVAR___GameSyncedDirectoryResponse_isOnline] = v41;
    v23 = &v22[OBJC_IVAR___GameSyncedDirectoryResponse_lastEditorDeviceName];
    *v23 = v38;
    v23[1] = v18;
    v24 = &v22[OBJC_IVAR___GameSyncedDirectoryResponse_numberOfConflicts];
    *v24 = v40;
    v24[8] = v39;
    v25 = &v22[OBJC_IVAR___GameSyncedDirectoryResponse_directorySandboxExtension];
    *v25 = v44;
    v25[1] = v43;
    *&v22[OBJC_IVAR___GameSyncedDirectoryResponse_devices] = v20;
    *(v0 + 16) = v22;
    *(v0 + 24) = v21;
    v26 = v42;

    v27 = objc_msgSendSuper2((v0 + 16), "init");
    (*(v6 + 8))(v7, v16);
    v45(v27, 0);

    sub_10001697C(v4);
  }

  else
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100001F70(v28, static Logger.daemon);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67109120;
      *(v31 + 4) = errno.getter();
      _os_log_impl(&_mh_execute_header, v29, v30, "Error issuing sandbox extension: %d", v31, 8u);
    }

    v32 = *(v0 + 104);

    v33 = NSPOSIXErrorDomain;
    v34 = [objc_allocWithZone(NSError) initWithDomain:v33 code:errno.getter() userInfo:0];

    swift_willThrow();
    sub_10001697C(v32);
    v35 = *(v0 + 56);
    swift_errorRetain();
    v35(0, v34);
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_1000165A4()
{
  v1 = v0[16];
  v2 = v0[7];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

void sub_1000166F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10001676C()
{

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1000167D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016818()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100016870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000296C;

  return sub_100015D00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001694C(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_10001697C(uint64_t a1)
{
  v2 = type metadata accessor for GameSyncedDirectoryLoadResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016CF0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100016D30(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    sub_100021854();
    Set.Iterator.init(_cocoa:)();
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v20 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        v26 = v17;
        v18 = a1(&v26);
        if (v4)
        {
          break;
        }

        if (v18)
        {
          goto LABEL_23;
        }

        v8 = v15;
        v9 = v16;
        v5 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_20;
        }

        sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
        swift_dynamicCast();
        v17 = v26;
        v15 = v8;
        v16 = v9;
        if (!v26)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      sub_1000218BC(v20);
    }

    else
    {
LABEL_21:
      v5 = v20;
LABEL_20:
      sub_1000218BC(v5);
    }
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_20;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

Swift::Int sub_100016F74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100016FE8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10001702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001F70(v5, static Logger.daemon);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v10 = v4[2];
    v11 = v4[3];

    v12 = sub_100020014(v10, v11, &v31);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing metadata query for %s", v8, 0xCu);
    sub_10000EA28(v9);
  }

  v13 = [objc_allocWithZone(NSMetadataQuery) init];
  v14 = v4[4];
  v4[4] = v13;
  v30 = v13;

  if (v30)
  {
    sub_10000281C(&qword_10003A180, &qword_10002BC40);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10002B4B0;
    v16 = v4[2];
    v17 = v4[3];
    *(v15 + 56) = &type metadata for String;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v15 + 88) = &type metadata for String;
    *(v15 + 64) = v18;
    *(v15 + 72) = v19;

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 setSearchScopes:isa];

    sub_10000E838(0, &qword_10003A768, NSPredicate_ptr);
    sub_10000281C(&qword_10003A770, &qword_10002BC48);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10002B4B0;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    v25 = sub_100021CF4();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v25;
    *(v21 + 64) = v25;
    *(v21 + 72) = 0xD000000000000019;
    *(v21 + 80) = 0x800000010002D320;
    v26 = NSPredicate.init(format:_:)();
    [v30 setPredicate:v26];

    [v30 setOperationQueue:v4[5]];
    v27 = objc_opt_self();
    v28 = [v27 defaultCenter];
    [v28 addObserver:v4 selector:"finishedGatheringWithNotification:" name:NSMetadataQueryDidFinishGatheringNotification object:v30];

    v29 = [v27 defaultCenter];
    [v29 addObserver:v4 selector:"recievedUpdatesWithNotification:" name:NSMetadataQueryDidUpdateNotification object:v30];

    [v30 startQuery];
  }
}

uint64_t sub_100017414(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000218C4(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(v2 + 56) = v5;
  *(v2 + 64) = [objc_allocWithZone(NSRecursiveLock) init];
  v6 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  v7 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v8 = [objc_allocWithZone(NSOperationQueue) init];
  *(v2 + 40) = v8;
  v9 = v8;
  v10 = String._bridgeToObjectiveC()();
  [v9 setName:v10];

  [*(v2 + 40) setMaxConcurrentOperationCount:1];
  return v2;
}

void sub_100017574()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0;
    v3 = qword_100039C20;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100001F70(v5, static Logger.daemon);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      v10 = v2[2];
      v11 = v2[3];

      v12 = sub_100020014(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Stopping metadata query for %s", v8, 0xCu);
      sub_10000EA28(v9);
    }

    [v4 stopQuery];
    v13 = v2[4];
    v2[4] = 0;
  }
}

uint64_t sub_100017730()
{
  sub_100017574();

  sub_100014CFC(v0 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &qword_10003A760, &qword_10002BC38);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ContainerObserver(uint64_t a1)
{
  result = qword_10003A560;
  if (!qword_10003A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100017824(uint64_t a1)
{
  v2 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = sub_10000281C(&qword_10003A760, &qword_10002BC38);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  *(a1 + 48) = 1;
  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100001F70(v9, static Logger.daemon);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v5;
    v13 = v12;
    v20 = swift_slowAlloc();
    v22 = v20;
    *v13 = 136315138;
    v23 = v11;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);

    v16 = sub_100020014(v15, v14, &v22);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v23, "Finished gathering %s", v13, 0xCu);
    sub_10000EA28(v20);

    v5 = v21;
  }

  v17 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  sub_100014C94(a1 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, v8, &qword_10003A760, &qword_10002BC38);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100014CFC(v8, &qword_10003A760, &qword_10002BC38);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100014CFC(v8, &qword_10003A760, &qword_10002BC38);
    v24 = *(a1 + 48);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_100014CFC(a1 + v17, &qword_10003A760, &qword_10002BC38);
  return (*(v3 + 56))(a1 + v17, 1, 1, v2);
}

void sub_100017BA8()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v7 = v1;
    [v7 disableUpdates];
    v2 = [v7 results];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100017CF8(v3);

    if (!v4)
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_100021BB4(v4);

    *(v0 + 56) = v5;

    [v7 enableUpdates];
    v6 = *(v0 + 64);
    [v6 lock];
    sub_100017824(v0);
    [v6 unlock];
  }
}

id *sub_100017CF8(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000E7A8(i, v5);
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_100017E1C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v6 = v1;
    [v6 disableUpdates];
    v2 = [v6 results];
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_100017CF8(v3);

    if (!v4)
    {
      v4 = _swiftEmptyArrayStorage;
    }

    v5 = sub_100021BB4(v4);

    *(v0 + 56) = v5;

    [v6 enableUpdates];
  }
}

uint64_t sub_100017F2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v8, v5);
}

void sub_100018020(uint64_t a1)
{
  sub_10001DE60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000180EC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_10000281C(&qword_100039D28, &qword_10002B900);
  __chkstk_darwin(v8 - 8);
  v10 = aBlock - v9;
  v11 = *(a2 + 64);
  [v11 lock];
  if (*(a2 + 48) == 1)
  {
    LOBYTE(aBlock[0]) = 1;
    sub_10000281C(&unk_10003A578, &unk_10002BBB0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v12 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
    sub_100014CFC(a2 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &qword_10003A760, &qword_10002BC38);
    v13 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a2 + v12, a1, v13);
    (*(v14 + 56))(a2 + v12, 0, 1, v13);
  }

  [v11 unlock];

  aBlock[4] = sub_100021D48;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002BBC;
  aBlock[3] = &unk_100035550;
  v15 = _Block_copy(aBlock);

  [a3 setCancellationHandler:v15];
  _Block_release(v15);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;

  v18 = a3;
  sub_100012918(0, 0, v10, &unk_10002BC58, v17);
}

void sub_1000183BC(uint64_t a1)
{
  v2 = *(a1 + 64);
  [v2 lock];
  sub_100017824(a1);
  [v2 unlock];
}

uint64_t sub_100018454(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a5;
  *(v6 + 32) = a6;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100018518, 0, 0);
}

uint64_t sub_100018518()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1000185F4;

  return sub_100026AF0(v1, v3, 0, 0, 1);
}

uint64_t sub_1000185F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = v2[7];
  v4 = v2[6];
  v5 = v2[5];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100018888;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_10001878C;
  }

  return _swift_task_switch(v6, 0, 0);
}

id sub_10001878C()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = *(v2 + 64);
  [v3 lock];
  sub_100018984(v2);
  if (v1)
  {

    return [v3 unlock];
  }

  else
  {
    v5 = v0[4];
    [v3 unlock];

    [v5 setCancellationHandler:0];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100018888()
{
  v1 = v0[3];
  v2 = *(v1 + 64);
  [v2 lock];
  sub_100018984(v1);
  v3 = v0[4];
  [v2 unlock];

  [v3 setCancellationHandler:0];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100018984(uint64_t a1)
{
  v2 = sub_10000281C(&unk_10003A578, &unk_10002BBB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - v4;
  v6 = sub_10000281C(&qword_10003A760, &qword_10002BC38);
  __chkstk_darwin(v6 - 8);
  v8 = &v11 - v7;
  v9 = OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation;
  sub_100014C94(a1 + OBJC_IVAR____TtC9gamesaved17ContainerObserver_continuation, &v11 - v7, &qword_10003A760, &qword_10002BC38);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100014CFC(v8, &qword_10003A760, &qword_10002BC38);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100014CFC(v8, &qword_10003A760, &qword_10002BC38);
    v12 = *(a1 + 48);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v5, v2);
  }

  sub_100014CFC(a1 + v9, &qword_10003A760, &qword_10002BC38);
  return (*(v3 + 56))(a1 + v9, 1, 1, v2);
}

_OWORD *sub_100018BA0(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v30 = a2;
  v34 = a1;
  v33 = type metadata accessor for URL();
  v37 = *(v33 - 8);
  v5 = *(v37 + 64);
  __chkstk_darwin(v33);
  v31 = v3;
  v32 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + 32))
  {
LABEL_12:
    sub_100014E24();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
    return a3;
  }

  result = swift_allocObject();
  result[1] = 0u;
  v35 = result + 1;
  v36 = result;
  result[2] = 0u;
  if (!a3)
  {
    __break(1u);
    return result;
  }

  v7 = *(v37 + 16);
  v27 = v5 + 7;
  v28 = v7;
  v29 = v37 + 16;
  v25 = &v41;
  v26 = v37 + 32;
  v8 = 1;
  v9 = &qword_10003A740;
  v24 = a3;
  v10 = v37;
  while (1)
  {
    v11 = v31;
    v12 = v32;
    v38 = *(v31 + 40);
    v13 = v33;
    v28(v32, v34, v33);
    v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v15 = v9;
    v16 = (v27 + v14) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    (*(v10 + 32))(v17 + v14, v12, v13);
    *(v17 + v16) = v36;
    v9 = v15;
    v43 = sub_10002171C;
    v44 = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    v41 = sub_100002BBC;
    v42 = &unk_100035528;
    v18 = _Block_copy(aBlock);
    v19 = v38;

    [v19 addOperationWithBlock:v18];
    _Block_release(v18);

    sub_100014C94(v35, aBlock, v9, &unk_10002BC20);
    if (v42)
    {
      break;
    }

    sub_100014CFC(aBlock, v9, &unk_10002BC20);
    a3 = v24;
LABEL_8:
    sleep(v30);
    if (a3 == v8)
    {
      goto LABEL_13;
    }

    if (__CFADD__(v8++, 1))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
  v20 = swift_dynamicCast();
  a3 = v24;
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_100014C94(v35, aBlock, &qword_10003A740, &unk_10002BC20);
  if (v42)
  {
    sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    if (swift_dynamicCast())
    {
      a3 = v39;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    sub_100014CFC(aBlock, &qword_10003A740, &unk_10002BC20);

    return 0;
  }

  return a3;
}

uint64_t sub_100018FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v8[2] = a2;

  sub_100016D30(sub_1000217C4, v8, v4);
  v6 = v5;

  if (v6)
  {
    v9[3] = sub_10000E838(0, &qword_10003A748, NSMetadataItem_ptr);
    v9[0] = v6;
    return sub_1000217E4(v9, a3 + 16);
  }

  return result;
}

uint64_t sub_100019060(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000281C(&qword_10003A430, &unk_10002B930);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  if ([*a1 valueForAttribute:NSMetadataItemURLKey])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    v13 = swift_dynamicCast();
    (*(v4 + 56))(v12, v13 ^ 1u, 1, v3);
  }

  else
  {
    sub_100014CFC(v19, &qword_10003A740, &unk_10002BC20);
    (*(v4 + 56))(v12, 1, 1, v3);
  }

  sub_100014C94(v12, v10, &qword_10003A430, &unk_10002B930);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_100014CFC(v10, &qword_10003A430, &unk_10002B930);
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  (*(v4 + 32))(v6, v10, v3);
  v14 = static URL.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = 1;
LABEL_12:
  sub_100014CFC(v12, &qword_10003A430, &unk_10002B930);
  return v15;
}

uint64_t sub_100019330(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10000281C(&qword_100039D28, &qword_10002B900);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001944C, 0, 0);
}

uint64_t sub_10001944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = v3;
  if (*(v3[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v4 = v3[11];
    v5 = v3[6];
    v6 = v3[7];
    v7 = v3[2];
    v8 = type metadata accessor for Logger();
    v3[12] = sub_100001F70(v8, static Logger.daemon);
    v9 = *(v6 + 16);
    v3[13] = v9;
    v3[14] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41 = v9;
    v9(v4, v7, v5);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v3[11];
    v15 = v3[6];
    v14 = v3[7];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v16 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      v39 = v11;
      v20 = *(v14 + 8);
      v20(v13, v15);
      v21 = sub_100020014(v17, v19, &v42);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v10, v39, "Wait for item at %s", v16, 0xCu);
      sub_10000EA28(v40);
    }

    else
    {

      v20 = *(v14 + 8);
      v20(v13, v15);
    }

    v3[15] = v20;
    v25 = v3[10];
    v26 = v3[7];
    v27 = v3[5];
    v28 = v3[6];
    v30 = v3[3];
    v29 = v3[4];
    v31 = v3[2];
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
    v41(v25, v31, v28);
    v33 = (*(v26 + 80) + 48) & ~*(v26 + 80);
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    *(v34 + 4) = v30;
    *(v34 + 5) = v29;
    (*(v26 + 32))(&v34[v33], v25, v28);
    v35 = v30;

    v36 = sub_100022EC4(0, 0, v27, &unk_10002BC18, v34);
    v3[16] = v36;
    v37 = swift_task_alloc();
    v3[17] = v37;
    v38 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v37 = v3;
    v37[1] = sub_1000198A4;

    return Task.value.getter(v38, v36, &type metadata for () + 8, v38, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();

    v23 = v3[1];

    return v23();
  }
}

uint64_t sub_1000198A4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100019BDC;
  }

  else
  {
    v2 = sub_1000199B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000199B8()
{
  v17 = v0;
  (*(v0 + 104))(*(v0 + 72), *(v0 + 16), *(v0 + 48));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 120);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  if (v3)
  {
    v15 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1000211DC(&qword_10003A150, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_100020014(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Found item at %s", v7, 0xCu);
    sub_10000EA28(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100019BDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100019C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for CocoaError.Code();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100019DBC, 0, 0);
}

uint64_t sub_100019DBC()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for item", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();

    v9 = *(v0 + 8);
    goto LABEL_8;
  }

  v8 = sub_100018BA0(*(v0 + 32), 1u, 1uLL);
  if (v8)
  {

    v9 = *(v0 + 8);
LABEL_8:

    return v9();
  }

  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_10001A0A8;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001A0A8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_10001A4FC;
  }

  else
  {
    v3 = sub_10001A210;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001A210()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for item", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();
    goto LABEL_8;
  }

  v8 = *(v0 + 104);
  v9 = sub_100018BA0(*(v0 + 32), 1u, 1uLL);
  if (v8)
  {
LABEL_8:

    v10 = *(v0 + 8);
LABEL_9:

    return v10();
  }

  if (v9)
  {

    v10 = *(v0 + 8);
    goto LABEL_9;
  }

  static Clock<>.continuous.getter();
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_10001A0A8;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001A4FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001A57C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10000281C(&qword_100039D28, &qword_10002B900);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001A68C, 0, 0);
}

uint64_t sub_10001A68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3;
  if (*(v3[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v4 = v3[10];
    v5 = v3[6];
    v6 = v3[7];
    v7 = v3[2];
    v8 = type metadata accessor for Logger();
    v3[11] = sub_100001F70(v8, static Logger.daemon);
    v38 = *(v6 + 16);
    v38(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v3[10];
    v14 = v3[6];
    v13 = v3[7];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v15 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_100020014(v16, v18, &v39);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Wait for deletion to complete %s", v15, 0xCu);
      sub_10000EA28(v37);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = v3[9];
    v24 = v3[6];
    v25 = v3[7];
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    v29 = v3[3];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    v38(v23, v28, v24);
    v31 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v29;
    *(v32 + 5) = v27;
    (*(v25 + 32))(&v32[v31], v23, v24);
    v33 = v29;

    v34 = sub_100022EC4(0, 0, v26, &unk_10002BC08, v32);
    v3[12] = v34;
    v35 = swift_task_alloc();
    v3[13] = v35;
    v36 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v35 = v3;
    v35[1] = sub_10001AABC;

    return Task.value.getter(v36, v34, &type metadata for () + 8, v36, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v3[1];

    return v21();
  }
}

uint64_t sub_10001AABC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100022018;
  }

  else
  {
    v2 = sub_10001ABD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001ABD0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bundle deletion complete", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10001ACCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for CocoaError.Code();
  v6[8] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_10001AE18, 0, 0);
}

uint64_t sub_10001AE18()
{
  if ([*(v0 + 16) isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100001F70(v1, static Logger.daemon);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Progress cancelled, stop waiting for deletion to complete", v4, 2u);
    }

    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v6 + 8))(v5, v7);
    swift_willThrow();

    v9 = *(v0 + 8);
    goto LABEL_8;
  }

  v8 = sub_100018BA0(*(v0 + 32), 1u, 0x14uLL);
  *(v0 + 96) = v8;
  if (!v8)
  {

    v9 = *(v0 + 8);
LABEL_8:

    return v9();
  }

  static Clock<>.continuous.getter();
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_10001B100;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001B100()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);
  if (v0)
  {
    v3 = sub_10001B55C;
  }

  else
  {
    v3 = sub_10001B268;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001B268()
{
  v1 = *(v0 + 16);

  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100001F70(v2, static Logger.daemon);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Progress cancelled, stop waiting for deletion to complete", v5, 2u);
    }

    v7 = *(v0 + 80);
    v6 = *(v0 + 88);
    v8 = *(v0 + 72);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v7 + 8))(v6, v8);
    swift_willThrow();
    goto LABEL_8;
  }

  v9 = *(v0 + 112);
  v10 = sub_100018BA0(*(v0 + 32), 1u, 0x14uLL);
  *(v0 + 96) = v10;
  if (v9 || !v10)
  {
LABEL_8:

    v11 = *(v0 + 8);

    return v11();
  }

  static Clock<>.continuous.getter();
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_10001B100;

  return sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001B55C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001B5E4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10000281C(&qword_100039D28, &qword_10002B900);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10001B6F4, 0, 0);
}

uint64_t sub_10001B6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = v3;
  if (*(v3[4] + 32))
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v4 = v3[10];
    v5 = v3[6];
    v6 = v3[7];
    v7 = v3[2];
    v8 = type metadata accessor for Logger();
    v3[11] = sub_100001F70(v8, static Logger.daemon);
    v38 = *(v6 + 16);
    v38(v4, v7, v5);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v3[10];
    v14 = v3[6];
    v13 = v3[7];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v15 = 136315138;
      sub_1000211DC(&qword_10003A150, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v14);
      v19 = sub_100020014(v16, v18, &v39);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v9, v10, "Wait for upload to complete %s", v15, 0xCu);
      sub_10000EA28(v37);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v23 = v3[9];
    v24 = v3[6];
    v25 = v3[7];
    v27 = v3[4];
    v26 = v3[5];
    v28 = v3[2];
    v29 = v3[3];
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v26, 1, 1, v30);
    v38(v23, v28, v24);
    v31 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    *(v32 + 4) = v29;
    *(v32 + 5) = v27;
    (*(v25 + 32))(&v32[v31], v23, v24);
    v33 = v29;

    v34 = sub_100022EC4(0, 0, v26, &unk_10002BBF8, v32);
    v3[12] = v34;
    v35 = swift_task_alloc();
    v3[13] = v35;
    v36 = sub_10000281C(&qword_100039ED0, &unk_10002B940);
    *v35 = v3;
    v35[1] = sub_10001BB24;

    return Task.value.getter(v36, v34, &type metadata for () + 8, v36, &protocol self-conformance witness table for Error);
  }

  else
  {
    sub_100014E24();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();

    v21 = v3[1];

    return v21();
  }
}

uint64_t sub_10001BB24()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10001BD34;
  }

  else
  {
    v2 = sub_10001BC38;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001BC38(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Bundle upload complete", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10001BD34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001BDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  type metadata accessor for CocoaError.Code();
  v6[26] = swift_task_alloc();
  v8 = type metadata accessor for CocoaError();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();

  return _swift_task_switch(sub_10001BF08, 0, 0);
}

void sub_10001BF08()
{
  v78 = v0;
  v1 = *(v0 + 160);
  v2 = [objc_opt_self() progressWithTotalUnitCount:100];
  *(v0 + 240) = v2;
  [v1 addChild:v2 withPendingUnitCount:40];
  if ([v1 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for upload to complete", v6, 2u);
    }

    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_8;
  }

  *(v0 + 248) = NSMetadataItemURLKey;
  *(v0 + 256) = NSMetadataUbiquitousItemIsUploadedKey;
  *(v0 + 264) = NSMetadataUbiquitousItemIsUploadingKey;
  *(v0 + 272) = NSMetadataUbiquitousItemUploadingErrorKey;
  v11 = _NSProgressRemoteLocalizedDescriptionKey;
  *(v0 + 280) = NSMetadataUbiquitousItemPercentUploadedKey;
  *(v0 + 288) = v11;
  v12 = sub_100018BA0(*(v0 + 176), 1u, 0x14uLL);
  *(v0 + 296) = v12;
  if (!v12)
  {
    v7 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
LABEL_8:

    v13 = *(v0 + 8);
LABEL_9:

    v13();
    return;
  }

  v14 = v12;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10002BAE0;
  *(v15 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 40) = v16;
  *(v15 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 56) = v17;
  *(v15 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 72) = v18;
  *(v15 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 88) = v19;
  *(v15 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v15 + 104) = v20;
  v7 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v7 valuesForAttributes:isa];

  if (!v22)
  {
    v42 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100001F70(v24, static Logger.daemon);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v77 = v28;
    *v27 = 136315138;
    v29 = Dictionary.description.getter();
    v31 = sub_100020014(v29, v30, &v77);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Item values: %s", v27, 0xCu);
    sub_10000EA28(v28);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v23 + 16))
  {
    v34 = sub_1000104D0(v32, v33);
    v36 = v35;

    if (v36)
    {
      sub_10000E7A8(*(v23 + 56) + 32 * v34, v0 + 16);
      if (swift_dynamicCast())
      {
        if (*(v0 + 321))
        {

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Bundle uploaded", v39, 2u);
          }

          v40 = *(v0 + 240);

          [v40 setCompletedUnitCount:100];

          v13 = *(v0 + 8);
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v23 + 16))
  {
    v46 = sub_1000104D0(v44, v45);
    v48 = v47;

    if (v48)
    {
      sub_10000E7A8(*(v23 + 56) + 32 * v46, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 152);

        v50 = v49;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          *(v53 + 4) = v50;
          *v54 = v50;
          v55 = v50;
          _os_log_impl(&_mh_execute_header, v51, v52, "Bundle upload error %@", v53, 0xCu);
          sub_100014CFC(v54, &qword_100039E40, &unk_10002BAC0);
        }

        v56 = *(v0 + 240);

        swift_willThrow();
        goto LABEL_8;
      }
    }
  }

  else
  {
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v23 + 16))
  {
    v59 = sub_1000104D0(v57, v58);
    v61 = v60;

    if (v61)
    {
      sub_10000E7A8(*(v23 + 56) + 32 * v59, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 320))
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v23 + 16))
        {
          v64 = sub_1000104D0(v62, v63);
          v66 = v65;

          if (v66)
          {
            sub_10000E7A8(*(v23 + 56) + 32 * v64, v0 + 112);

            if (swift_dynamicCast())
            {
              v67 = *(v0 + 144);
              goto LABEL_52;
            }

LABEL_51:
            v67 = 0.0;
LABEL_52:
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              *v72 = 134217984;
              *(v72 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v70, v71, "Bundle upload progress %f", v72, 0xCu);
            }

            if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v67 > -9.22337204e18)
            {
              if (v67 < 9.22337204e18)
              {
                [*(v0 + 240) setCompletedUnitCount:v67];
                v73 = *(v0 + 288);
                v74 = *(v0 + 160);
                v75 = String._bridgeToObjectiveC()();
                [v74 setLocalizedDescription:v75];

                v76 = String._bridgeToObjectiveC()();
                [v74 setUserInfoObject:v76 forKey:v73];

                v68 = 0;
                goto LABEL_46;
              }

LABEL_60:
              __break(1u);
              return;
            }

            __break(1u);
            goto LABEL_60;
          }
        }

        else
        {
        }

        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v68 = 1;
LABEL_46:
  *(v0 + 322) = v68;
  static Clock<>.continuous.getter();
  v69 = swift_task_alloc();
  *(v0 + 304) = v69;
  *v69 = v0;
  v69[1] = sub_10001CA4C;

  sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_10001CA4C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = v2[37];
    v5 = v2[24];
    v4 = v2[25];
    v6 = v2[23];

    (*(v5 + 8))(v4, v6);
    v7 = sub_10001D680;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v7 = sub_10001CBA8;
  }

  return _swift_task_switch(v7, 0, 0);
}

void sub_10001CBA8()
{
  v78 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 160);

  if ([v2 isCancelled])
  {
    if (qword_100039C20 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001F70(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Progress cancelled, stop waiting for upload to complete", v6, 2u);
    }

    v8 = *(v0 + 232);
    v7 = *(v0 + 240);
    v9 = *(v0 + 216);
    v10 = *(v0 + 224);

    static CocoaError.Code.userCancelled.getter();
    sub_100026FA8(_swiftEmptyArrayStorage);
    sub_1000211DC(&qword_100039E58, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    _BridgedStoredNSError.init(_:userInfo:)();
    CocoaError._nsError.getter();
    (*(v10 + 8))(v8, v9);
    swift_willThrow();
    goto LABEL_9;
  }

  v11 = *(v0 + 312);
  v12 = *(v0 + 322);
  v13 = sub_100018BA0(*(v0 + 176), 1u, 0x14uLL);
  *(v0 + 296) = v13;
  if (v11)
  {
    v7 = *(v0 + 240);
LABEL_9:

    v14 = *(v0 + 8);
LABEL_10:

    v14();
    return;
  }

  if (!v13)
  {
    v7 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v41 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v15 = v13;
  sub_10000281C(&qword_10003A738, &unk_10002BBE0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10002BAE0;
  *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 40) = v17;
  *(v16 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 56) = v18;
  *(v16 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 72) = v19;
  *(v16 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 88) = v20;
  *(v16 + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v16 + 104) = v21;
  v7 = v15;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v7 valuesForAttributes:isa];

  if (!v23)
  {
    v42 = *(v0 + 240);
    sub_100014E24();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_100039C20 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100001F70(v25, static Logger.daemon);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v77 = v76;
    *v28 = 136315138;
    v29 = Dictionary.description.getter();
    v31 = sub_100020014(v29, v30, &v77);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Item values: %s", v28, 0xCu);
    sub_10000EA28(v76);
  }

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v24 + 16))
  {
    v34 = sub_1000104D0(v32, v33);
    v36 = v35;

    if (v36)
    {
      sub_10000E7A8(*(v24 + 56) + 32 * v34, v0 + 16);
      if (swift_dynamicCast())
      {
        if (*(v0 + 321))
        {

          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "Bundle uploaded", v39, 2u);
          }

          v40 = *(v0 + 240);

          [v40 setCompletedUnitCount:100];

          v14 = *(v0 + 8);
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v24 + 16))
  {
    v46 = sub_1000104D0(v44, v45);
    v48 = v47;

    if (v48)
    {
      sub_10000E7A8(*(v24 + 56) + 32 * v46, v0 + 48);
      sub_10000E838(0, &qword_100039ED8, NSError_ptr);
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 152);

        v50 = v49;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412290;
          *(v53 + 4) = v50;
          *v54 = v50;
          v55 = v50;
          _os_log_impl(&_mh_execute_header, v51, v52, "Bundle upload error %@", v53, 0xCu);
          sub_100014CFC(v54, &qword_100039E40, &unk_10002BAC0);
        }

        v56 = *(v0 + 240);

        swift_willThrow();
        goto LABEL_9;
      }
    }
  }

  else
  {
  }

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v24 + 16))
  {
    v59 = sub_1000104D0(v57, v58);
    v61 = v60;

    if (v61)
    {
      sub_10000E7A8(*(v24 + 56) + 32 * v59, v0 + 80);
      if (swift_dynamicCast() & 1) != 0 && (*(v0 + 320))
      {
        v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v24 + 16))
        {
          v64 = sub_1000104D0(v62, v63);
          v66 = v65;

          if (v66)
          {
            sub_10000E7A8(*(v24 + 56) + 32 * v64, v0 + 112);

            if (swift_dynamicCast())
            {
              v67 = *(v0 + 144);
              goto LABEL_53;
            }

LABEL_52:
            v67 = 0.0;
LABEL_53:
            v69 = Logger.logObject.getter();
            v70 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              *v71 = 134217984;
              *(v71 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v69, v70, "Bundle upload progress %f", v71, 0xCu);
            }

            if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              __break(1u);
            }

            else if (v67 > -9.22337204e18)
            {
              if (v67 < 9.22337204e18)
              {
                [*(v0 + 240) setCompletedUnitCount:v67];
                if (v12)
                {
                  v72 = *(v0 + 288);
                  v73 = *(v0 + 160);
                  v74 = String._bridgeToObjectiveC()();
                  [v73 setLocalizedDescription:v74];

                  v75 = String._bridgeToObjectiveC()();
                  [v73 setUserInfoObject:v75 forKey:v72];

                  LOBYTE(v12) = 0;
                }

                goto LABEL_47;
              }

LABEL_62:
              __break(1u);
              return;
            }

            __break(1u);
            goto LABEL_62;
          }
        }

        else
        {
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
  }

LABEL_47:
  *(v0 + 322) = v12;
  static Clock<>.continuous.getter();
  v68 = swift_task_alloc();
  *(v0 + 304) = v68;
  *v68 = v0;
  v68[1] = sub_10001CA4C;

  sub_100026AF0(100000000000000000, 0, 0, 0, 1);
}