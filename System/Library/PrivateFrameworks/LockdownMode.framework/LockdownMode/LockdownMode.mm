void sub_100002220(id a1)
{
  qword_100043030 = objc_opt_new();

  _objc_release_x1();
}

void sub_100002398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1000023BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _modifyThreatNotificationCFU];
    WeakRetained = v2;
  }
}

void sub_100002400(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2) != -1)
  {
    v4 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did receive CFU update notification", v5, 2u);
    }

    [v3 _modifyThreatNotificationCFU];
  }
}

id sub_1000029D4(uint64_t a1)
{
  v4[0] = @"type";
  v4[1] = @"elapsedTime";
  v5[0] = &off_10003E0B0;
  v5[1] = &off_10003E0C8;
  v4[2] = @"ldmEnabled";
  v1 = [NSNumber numberWithBool:*(a1 + 32)];
  v4[3] = @"analyticsEnabled";
  v5[2] = v1;
  v5[3] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

void sub_100002B20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

uint64_t sub_100002B58()
{
  *(v0 + 16) = 0;
  if (_set_user_dir_suffix())
  {
    if (qword_100041CE8 != -1)
    {
      swift_once();
    }

    v1 = static LockdownModeServer.shared;
    v2 = *(v0 + 16);
    *(v0 + 16) = static LockdownModeServer.shared;
    v3 = v1;

    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100002C2C()
{

  return swift_deallocClassInstance();
}

id variable initialization expression of LockdownModeServer.listener()
{
  static Constants.serviceName.getter();
  v0 = objc_allocWithZone(NSXPCListener);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t variable initialization expression of LockdownModeServer.eventsQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100003B7C();
  static DispatchQoS.utility.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_1000046C4(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_100003C10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t sub_100002F34(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_100003044(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000030D4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000314C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000031CC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000322C(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100003298(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100003304(void *a1, uint64_t a2)
{
  v4 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000033B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_100003494@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000034BC(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF8, type metadata accessor for LAError, &unk_100031ACC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100003528(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF8, type metadata accessor for LAError, &unk_100031ACC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003598(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100003604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000046C4(&qword_100041EF0, type metadata accessor for LAError, &unk_100031978);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000368C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000036B8(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041F60, type metadata accessor for FileAttributeKey, &unk_100031B80);
  v3 = sub_1000046C4(&qword_100041F68, type metadata accessor for FileAttributeKey, &unk_10003167C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003774@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_1000037BC(uint64_t a1)
{
  v2 = sub_1000046C4(&qword_100041F50, type metadata accessor for FileProtectionType, &unk_1000317F0);
  v3 = sub_1000046C4(&qword_100041F58, type metadata accessor for FileProtectionType, &unk_100031790);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003878()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000038B4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100003908()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_10000397C(void *a1, uint64_t *a2)
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

void sub_100003A04()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting lockdownmoded…", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for LockdownModeDaemon();
  swift_initStackObject();
  sub_100002B58();

  CFRunLoopRun();
}

unint64_t sub_100003B7C()
{
  result = qword_100041D00;
  if (!qword_100041D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041D00);
  }

  return result;
}

uint64_t sub_100003BC8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003C10()
{
  result = qword_100041D18;
  if (!qword_100041D18)
  {
    sub_100003C74(&qword_100041D10, &qword_1000314B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041D18);
  }

  return result;
}

uint64_t sub_100003C74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003CBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E78, &qword_100031528);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v11, &qword_100041E80, &qword_100031530);
      v5 = v11;
      result = sub_10001A234(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100003DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E90, &qword_100031540);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1000045C4(i, &v11, &qword_100041E98, &qword_100031548);
      v5 = v11;
      result = sub_10001A32C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_100003F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DD8, "zn");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, v13, &qword_100041DE0, &unk_1000314F0);
      result = sub_10001A2E8(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000427C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10000403C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E00, &qword_100031510);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v11, &qword_100041E08, &qword_100031518);
      v5 = v11;
      result = sub_10001A374(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000427C(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100004164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E88, &qword_100031538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_10001A480(v5);
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

_OWORD *sub_10000427C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000428C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DE8, &unk_100032360);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001A408(v5, v6);
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

unint64_t sub_100004390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041DF0, &qword_100031500);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000045C4(v4, &v13, &qword_100041DF8, &qword_100031508);
      v5 = v13;
      v6 = v14;
      result = sub_10001A408(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000427C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1000044C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003BC8(&qword_100041E70, &qword_100031520);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001A408(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1000045C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003BC8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000046C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000048D0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_100004A88()
{
  result = qword_100041F20;
  if (!qword_100041F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041F20);
  }

  return result;
}

uint64_t sub_100004C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = type metadata accessor for Logger();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_100004D40, 0, 0);
}

uint64_t sub_100004D40()
{
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_100004E70;
  v3 = swift_continuation_init();
  v0[17] = sub_100003BC8(&qword_100042150, &qword_100031C58);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100005220;
  v0[13] = &unk_10003D3C0;
  v0[14] = v3;
  [v2 saveAccount:v1 withDataclassActions:0 doVerify:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004E70()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_100005088;
  }

  else
  {
    v2 = sub_100004F80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004F80(uint64_t a1)
{
  if ((*(v1 + 200) & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Could not set state of Shared Albums due to an unknown error", v4, 2u);
    }

    (*(*(v1 + 168) + 8))(*(v1 + 184), *(v1 + 160));
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100005088()
{
  swift_willThrow();
  static Logger.daemonLogger.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Could not set state of Shared Albums: %@", v3, 0xCu);
    sub_100005E54(v4, &qword_100042158, qword_100031C60);
  }

  else
  {
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100005220(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_100005EB4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100003BC8(&unk_100042360, qword_100031DD0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000052EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003BC8(&unk_100042300, "6i");
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005B7C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005E54(v11, &unk_100042300, "6i");
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

      sub_100005E54(a3, &unk_100042300, "6i");

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

  sub_100005E54(a3, &unk_100042300, "6i");
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

uint64_t sub_100005610(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005708;

  return v6(a1);
}

uint64_t sub_100005708()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_100005800(char a1)
{
  v2 = sub_100003BC8(&unk_100042300, "6i");
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v12 = [objc_opt_self() pl_sharedAccountStore];
  v5 = [v12 cachedPrimaryAppleAccount];
  if (v5)
  {
    v6 = a1 & 1;
    v7 = v5;
    [v5 setEnabled:v6 forDataclass:ACAccountDataclassSharedStreams];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v12;
    v9[5] = v7;
    sub_1000052EC(0, 0, v4, &unk_100031C38, v9);
  }

  else
  {
    v10 = v12;
  }
}

uint64_t sub_100005980()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000059C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005A88;

  return sub_100004C74(a1, v4, v5, v7, v6);
}

uint64_t sub_100005A88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&unk_100042300, "6i");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005BEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return sub_100005610(a1, v4);
}

uint64_t sub_100005CA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100005CDC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005A88;

  return sub_100005610(a1, v4);
}

uint64_t sub_100005DA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005E08(void *a1)
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

uint64_t sub_100005E54(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003BC8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100005EB4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

NSString sub_100005F00()
{
  result = String._bridgeToObjectiveC()();
  qword_100042160 = result;
  return result;
}

NSString sub_100005F38()
{
  result = String._bridgeToObjectiveC()();
  qword_100042168 = result;
  return result;
}

NSString sub_100005F70()
{
  result = String._bridgeToObjectiveC()();
  qword_100042170 = result;
  return result;
}

uint64_t sub_100005FD4()
{
  result = kSFOperationDiscoverableModeKey;
  if (kSFOperationDiscoverableModeKey)
  {
    if (qword_100041CE0 != -1)
    {
      v10 = kSFOperationDiscoverableModeKey;
      swift_once();
      result = v10;
    }

    if (CFPreferencesCopyAppValue(result, qword_100042170))
    {
      type metadata accessor for CFString(0);
      v1 = swift_dynamicCastUnknownClassUnconditional();
    }

    else
    {
      v1 = kSFOperationDiscoverableModeOff;
      v2 = kSFOperationDiscoverableModeOff;
    }

    v3 = kSFOperationDiscoverableModeContactsOnly;
    if (kSFOperationDiscoverableModeContactsOnly)
    {
      if (!v1)
      {
        if (!kSFOperationDiscoverableModeEveryone)
        {
          return 2;
        }

        return 0;
      }

      type metadata accessor for CFString(0);
      sub_10000626C();
      v4 = v1;
      v5 = v3;
      v6 = static _CFObject.== infix(_:_:)();

      if (v6)
      {

        return 1;
      }
    }

    else if (!v1)
    {
      return 1;
    }

    v7 = kSFOperationDiscoverableModeEveryone;
    if (kSFOperationDiscoverableModeEveryone)
    {
      type metadata accessor for CFString(0);
      sub_10000626C();
      v8 = v7;
      v9 = static _CFObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }

      return 2;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100006178(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_7;
    }

    v1 = kSFOperationDiscoverableModeContactsOnly;
    if (kSFOperationDiscoverableModeContactsOnly)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v1 = kSFOperationDiscoverableModeOff;
  if (kSFOperationDiscoverableModeOff)
  {
    goto LABEL_8;
  }

  __break(1u);
LABEL_7:
  v1 = kSFOperationDiscoverableModeEveryone;
  if (!kSFOperationDiscoverableModeEveryone)
  {
LABEL_15:
    __break(1u);
    return;
  }

LABEL_8:
  v2 = v1;
  v3 = kSFOperationDiscoverableModeKey;
  if (!kSFOperationDiscoverableModeKey)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = qword_100041CE0;
  v5 = v2;
  v6 = v5;
  if (v4 != -1)
  {
    swift_once();
    v5 = v6;
  }

  CFPreferencesSetAppValue(v3, v5, qword_100042170);
}

unint64_t sub_10000626C()
{
  result = qword_100042670;
  if (!qword_100042670)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042670);
  }

  return result;
}

id sub_1000062C4()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];

  return v1;
}

char *sub_100006320()
{
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v39 - 1);
  __chkstk_darwin(v39);
  v3 = v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v6 = v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter) = 0;
  v38 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_queue;
  v7 = sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  v37[0] = "lockdownmode-icon.png";
  v37[1] = v7;
  static DispatchQoS.userInitiated.getter();
  v41 = &_swiftEmptyArrayStorage;
  sub_10000A0FC(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_10000A1CC(&qword_100041D18, &qword_100041D10, &qword_1000314B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v39);
  *&v38[v0] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = type metadata accessor for NotificationsManager();
  v40.receiver = v0;
  v40.super_class = v8;
  v9 = objc_msgSendSuper2(&v40, "init");
  v10 = objc_allocWithZone(UNUserNotificationCenter);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithBundleIdentifier:v12];

  v14 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter;
  v15 = *&v11[OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter];
  *&v11[OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter] = v13;

  v16 = String._bridgeToObjectiveC()();
  sub_10000A220(0, &qword_100042370, UNNotificationAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = Array._bridgeToObjectiveC()().super.isa;
  v19 = objc_opt_self();
  v39 = [v19 categoryWithIdentifier:v16 actions:isa intentIdentifiers:v18 options:0];

  v20 = String._bridgeToObjectiveC()();
  v21 = Array._bridgeToObjectiveC()().super.isa;
  v22 = Array._bridgeToObjectiveC()().super.isa;
  v38 = [v19 categoryWithIdentifier:v20 actions:v21 intentIdentifiers:v22 options:0];

  v23 = String._bridgeToObjectiveC()();
  v24 = Array._bridgeToObjectiveC()().super.isa;
  v25 = Array._bridgeToObjectiveC()().super.isa;
  v26 = [v19 categoryWithIdentifier:v23 actions:v24 intentIdentifiers:v25 options:0];

  result = *&v11[v14];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  [result setDelegate:v11];
  result = *&v11[v14];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = [result setWantsNotificationResponsesDelivered];
  v28 = *&v11[v14];
  if (v28)
  {
    sub_100003BC8(&qword_100042348, &unk_100031DB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100031CA0;
    v30 = v38;
    v31 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v30;
    *(inited + 48) = v26;
    v32 = v28;
    v33 = v31;
    v34 = v30;
    v35 = v26;
    sub_10002DF10(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_10000A220(0, &qword_100042378, UNNotificationCategory_ptr);
    sub_10000A268();
    v36 = Set._bridgeToObjectiveC()().super.isa;

    [v32 setNotificationCategories:v36];

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100006944(unsigned __int8 a1, uint64_t a2, int a3)
{
  v80 = a3;
  v78 = *&a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v81 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v9 - 8);
  v79 = v75 - v10;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v14 = *(v84 - 8);
  __chkstk_darwin(v84);
  v16 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v3;
  sub_100008C40();
  if (a1 > 2u)
  {
    if (a1 != 4)
    {
      goto LABEL_8;
    }

    v17 = "wnMode.turnOffFailed";
  }

  else
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v17 = "wnMode.turnOnPostBuddy";
    if (a1 != 1)
    {
      goto LABEL_8;
    }
  }

  if ((v17 | 0x8000000000000000) == 0x8000000100033F90)
  {
    goto LABEL_12;
  }

LABEL_8:
  v82 = "wnMode.turnOnSignIn";
  v83 = 0xD00000000000001ELL;
  v76 = v7;
  v77 = v6;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_14:
    sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    v23 = v86;
    *(v22 + 16) = v86;
    *(v22 + 24) = a1;
    *(v22 + 32) = ObjectType;
    v91 = sub_10000A0EC;
    v92 = v22;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_10000B434;
    v90 = &unk_10003D500;
    v24 = _Block_copy(&aBlock);
    v25 = v23;

    static DispatchQoS.unspecified.getter();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000A0FC(&qword_100042320, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003BC8(&qword_100042328, &qword_100031DA0);
    sub_10000A1CC(&qword_100042330, &qword_100042328, &qword_100031DA0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v85 + 8))(v13, v11);
    (*(v14 + 8))(v16, v84);
    return;
  }

  if (a1 == 3)
  {
LABEL_12:

    goto LABEL_14;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_14;
  }

  if (a1 == 2)
  {
    goto LABEL_12;
  }

  v75[1] = 0x8000000100033F60;
  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_14;
  }

  v26 = [objc_allocWithZone(UNMutableNotificationContent) init];
  if (a1 > 2u)
  {
    if (a1 != 3)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v28 = objc_opt_self();
      v29 = [v28 bundleForClass:ObjCClassFromMetadata];
      v30 = 0xD000000000000012;
      if (a1 == 4)
      {
        v31._countAndFlagsBits = 0xD00000000000001ALL;
        v72 = 0x8000000100034070;
        v31._object = 0x80000001000340D0;
        v32._countAndFlagsBits = 0;
        v32._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, v29, v32, *&v30);

        v33 = String._bridgeToObjectiveC()();

        [v26 setTitle:v33];

        v34 = [v28 bundleForClass:ObjCClassFromMetadata];
        v35 = 0xD000000000000011;
        v36 = 0xD00000000000001CLL;
        v73 = 0x80000001000340B0;
        v37 = 0x80000001000340F0;
      }

      else
      {
        v50._countAndFlagsBits = 0xD00000000000001BLL;
        v74 = 0x8000000100034070;
        v50._object = 0x8000000100034050;
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v50, 0, v29, v51, *&v30);

        v52 = String._bridgeToObjectiveC()();

        [v26 setTitle:v52];

        v34 = [v28 bundleForClass:ObjCClassFromMetadata];
        v35 = 0xD000000000000011;
        v36 = 0xD00000000000001DLL;
        v73 = 0x80000001000340B0;
        v37 = 0x8000000100034090;
      }

      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v36, 0, v34, v38, *&v35);

      v39 = String._bridgeToObjectiveC()();

      [v26 setBody:v39];

      [v26 setInterruptionLevel:3];
    }
  }

  else if (!a1)
  {
    v40 = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass:v40];
    v93._countAndFlagsBits = 0xD000000000000012;
    v93._object = 0x8000000100034070;
    v43._countAndFlagsBits = 0x4E574F444B434F4CLL;
    v43._object = 0xED000045444F4D5FLL;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v93);

    v45 = String._bridgeToObjectiveC()();

    [v26 setTitle:v45];

    v46 = [v41 bundleForClass:v40];
    v94._countAndFlagsBits = 0xD000000000000011;
    v47._countAndFlagsBits = 0xD000000000000016;
    v94._object = 0x80000001000340B0;
    v47._object = 0x8000000100034110;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v94);

    v49 = String._bridgeToObjectiveC()();

    [v26 setBody:v49];

    [v26 setInterruptionLevel:1];
  }

  v53 = String._bridgeToObjectiveC()();

  [v26 setCategoryIdentifier:v53];

  v54 = v79;
  URL.init(string:)();
  v55 = type metadata accessor for URL();
  v56 = *(v55 - 8);
  v58 = 0;
  if ((*(v56 + 48))(v54, 1, v55) != 1)
  {
    URL._bridgeToObjectiveC()(v57);
    v58 = v59;
    (*(v56 + 8))(v54, v55);
  }

  [v26 setDefaultActionURL:v58];

  v60 = String._bridgeToObjectiveC()();
  v61 = [objc_opt_self() iconForApplicationIdentifier:v60];

  [v26 setIcon:v61];
  [v26 setSound:0];
  [v26 setShouldIgnoreDowntime:1];
  [v26 setShouldIgnoreDoNotDisturb:1];
  [v26 setShouldShowSubordinateIcon:1];
  [v26 setShouldBackgroundDefaultAction:1];
  v62 = 0;
  v63 = v76;
  if ((v80 & 1) == 0)
  {
    v62 = [objc_opt_self() triggerWithTimeInterval:0 repeats:v78];
  }

  v64 = v81;
  UUID.init()();
  UUID.uuidString.getter();
  (*(v63 + 8))(v64, v77);
  v65 = v26;
  v66 = v62;
  v67 = String._bridgeToObjectiveC()();

  v68 = [objc_opt_self() requestWithIdentifier:v67 content:v65 trigger:v66];

  v69 = *&v86[OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter];
  if (v69)
  {
    v91 = sub_100008A48;
    v92 = 0;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_10000B478;
    v90 = &unk_10003D4B0;
    v70 = _Block_copy(&aBlock);
    v71 = v69;
    [v71 addNotificationRequest:v68 withCompletionHandler:v70];

    _Block_release(v70);
  }

  else
  {
    __break(1u);
  }
}

void sub_100007824(void *a1, int a2, uint64_t a3)
{
  v136 = a3;
  v135 = a2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v134 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v133 = &v132 - v8;
  v141 = type metadata accessor for URL();
  v9 = *(v141 - 8);
  v10 = __chkstk_darwin(v141);
  v140 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v132 - v12;
  sub_100003BC8(&unk_100042338, &unk_100031DA8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100031CB0;
  if (!kCFUserNotificationAlertHeaderKey)
  {
    __break(1u);
    goto LABEL_33;
  }

  v15 = v14;
  v142 = v13;
  *(v14 + 32) = kCFUserNotificationAlertHeaderKey;
  v16 = kCFUserNotificationAlertHeaderKey;
  v17 = sub_1000062C4();
  v147._countAndFlagsBits = 0xD000000000000012;
  v147._object = 0x8000000100034070;
  v18._countAndFlagsBits = 0x4E574F444B434F4CLL;
  v18._object = 0xED000045444F4D5FLL;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, 0, v17, v19, v147);

  *(v15 + 64) = &type metadata for String;
  *(v15 + 40) = v20;
  if (!kCFUserNotificationAlertMessageKey)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v137 = v5;
  v138 = v4;
  *(v15 + 72) = kCFUserNotificationAlertMessageKey;
  v21 = kCFUserNotificationAlertMessageKey;
  v22 = sub_1000062C4();
  v148._countAndFlagsBits = 0xD000000000000011;
  v148._object = 0x80000001000340B0;
  v23._object = 0x8000000100034130;
  v23._countAndFlagsBits = 0xD000000000000015;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v148);

  *(v15 + 104) = &type metadata for String;
  *(v15 + 80) = v25;
  if (!kCFUserNotificationDefaultButtonTitleKey)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v26 = a1;
  *(v15 + 112) = kCFUserNotificationDefaultButtonTitleKey;
  v27 = kCFUserNotificationDefaultButtonTitleKey;
  v28 = sub_1000062C4();
  v29._countAndFlagsBits = 0xD000000000000013;
  v149._object = 0xEC000000656C7469;
  v29._object = 0x8000000100034150;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v149._countAndFlagsBits = 0x74206E6F74747542;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v149);

  *(v15 + 144) = &type metadata for String;
  *(v15 + 120) = v31;
  if (!kCFUserNotificationAlternateButtonTitleKey)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v15 + 152) = kCFUserNotificationAlternateButtonTitleKey;
  v32 = kCFUserNotificationAlternateButtonTitleKey;
  v33 = sub_1000062C4();
  v150._object = 0xEC000000656C7469;
  v34._countAndFlagsBits = 0x524554414CLL;
  v34._object = 0xE500000000000000;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v150._countAndFlagsBits = 0x74206E6F74747542;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v150);

  *(v15 + 184) = &type metadata for String;
  *(v15 + 160) = v36;
  if (!kCFUserNotificationAlertTopMostKey)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v37 = v26;
  *(v15 + 192) = kCFUserNotificationAlertTopMostKey;
  *(v15 + 224) = &type metadata for Bool;
  *(v15 + 200) = 1;
  v38 = kCFUserNotificationAlertTopMostKey;
  v39 = sub_100003CBC(v15);
  swift_setDeallocating();
  sub_100003BC8(&qword_100041E80, &qword_100031530);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = SBUserNotificationWakeDisplay;
  if (!SBUserNotificationWakeDisplay)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v41 = v40;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = v39;
  sub_10001A4C4(error, v41, isUniquelyReferenced_nonNull_native);

  v43 = SBUserNotificationDismissOnLock;
  if (!SBUserNotificationDismissOnLock)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v44 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 0;
  sub_10000427C(&v145, error);
  v45 = v43;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v44;
  sub_10001A4C4(error, v45, v46);

  v47 = SBUserNotificationIgnoresQuietMode;
  if (!SBUserNotificationIgnoresQuietMode)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v48 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v49 = v47;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v48;
  sub_10001A4C4(error, v49, v50);

  v51 = SBUserNotificationAllowInLoginWindow;
  if (!SBUserNotificationAllowInLoginWindow)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v52 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v53 = v51;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v52;
  sub_10001A4C4(error, v53, v54);

  v55 = SBUserNotificationDontDismissOnUnlock;
  if (!SBUserNotificationDontDismissOnUnlock)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v56 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v57 = v55;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v56;
  sub_10001A4C4(error, v57, v58);

  v59 = SBUserNotificationAllowMenuButtonDismissal;
  if (!SBUserNotificationAllowMenuButtonDismissal)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v60 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 0;
  sub_10000427C(&v145, error);
  v61 = v59;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v60;
  sub_10001A4C4(error, v61, v62);

  v63 = SBUserNotificationPendWhileKeyBagLockedKey;
  if (!SBUserNotificationPendWhileKeyBagLockedKey)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v64 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 0;
  sub_10000427C(&v145, error);
  v65 = v63;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v64;
  sub_10001A4C4(error, v65, v66);

  v67 = SBUserNotificationPendInSetupIfNotAllowedKey;
  if (!SBUserNotificationPendInSetupIfNotAllowedKey)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v68 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v69 = v67;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v68;
  sub_10001A4C4(error, v69, v70);

  v71 = SBUserNotificationAllowLockscreenDismissalKey;
  if (!SBUserNotificationAllowLockscreenDismissalKey)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  v72 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 0;
  sub_10000427C(&v145, error);
  v73 = v71;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v72;
  sub_10001A4C4(error, v73, v74);

  v75 = SBUserNotificationDisplayActionButtonOnLockScreen;
  if (!SBUserNotificationDisplayActionButtonOnLockScreen)
  {
    goto LABEL_46;
  }

  v76 = v143;
  v146 = &type metadata for Bool;
  LOBYTE(v145._countAndFlagsBits) = 1;
  sub_10000427C(&v145, error);
  v77 = v75;
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v143 = v76;
  sub_10001A4C4(error, v77, v78);

  v79 = v143;
  v80 = objc_allocWithZone(ISIcon);
  v81 = String._bridgeToObjectiveC()();
  v82 = [v80 initWithBundleIdentifier:v81];

  v83 = objc_allocWithZone(ISIconDecoration);
  v84 = v82;
  v85 = String._bridgeToObjectiveC()();
  v86 = [v83 initWithType:v85];

  [v86 setPosition:3];
  sub_100003BC8(&qword_100042348, &unk_100031DB8);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100031CC0;
  *(v87 + 32) = v86;
  v88 = v86;
  sub_100003BC8(&unk_100042350, &qword_100031DC8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v90 = [v84 iconWithDecorations:isa];

  v91 = objc_allocWithZone(ISImageDescriptor);
  v92 = v90;
  v139 = [v91 initWithSize:128.0 scale:{128.0, 2.0}];
  v93 = [v92 prepareImageForDescriptor:?];

  v94 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v95 = v140;
  URL.init(fileURLWithPath:)();

  v96 = v142;
  URL.appendingPathComponent(_:)();
  v97 = *(v9 + 8);
  v140 = (v9 + 8);
  v97(v95, v141);
  if (v93)
  {
    v98 = v93;
    URL._bridgeToObjectiveC()(v99);
    v101 = v100;
    v102 = [v98 writeToURL:v100];

    if (v102)
    {
      if (!SBUserNotificationIconImagePath)
      {
        __break(1u);
        return;
      }

      v103 = SBUserNotificationIconImagePath;
      v96 = v142;
      v104 = URL.path(percentEncoded:)(1);
      v146 = &type metadata for String;
      v145 = v104;
      sub_10000427C(&v145, error);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v143 = v79;
      sub_10001A4C4(error, v103, v105);
    }

    else
    {
      v96 = v142;
    }
  }

  error[0] = 0;
  type metadata accessor for CFString(0);
  sub_10000A0FC(&qword_100041F38, type metadata accessor for CFString, &unk_100031B3C);
  v106 = Dictionary._bridgeToObjectiveC()().super.isa;

  v107 = CFUserNotificationCreate(0, 0.0, 3uLL, error, v106);

  if (v107)
  {
    v134 = v88;
    v108 = v107;
    RunLoopSource = CFUserNotificationCreateRunLoopSource(kCFAllocatorDefault, v108, sub_100008680, 0);
    if (RunLoopSource)
    {
      v110 = RunLoopSource;
      v111 = swift_allocObject();
      *(v111 + 16) = v37;
      *(v111 + 24) = v135;
      *(v111 + 32) = v136;
      v112 = xmmword_100042240;
      v138 = v92;
      v113 = v97;
      v115 = qword_100042250;
      v114 = qword_100042258;
      *&xmmword_100042240 = v110;
      *(&xmmword_100042240 + 1) = v107;
      qword_100042250 = sub_10000A144;
      qword_100042258 = v111;
      v116 = v110;
      v117 = v108;
      v118 = v116;
      v119 = v37;
      sub_10000A154(v112, *(&v112 + 1), v115, v114);
      v120 = CFRunLoopGetMain();
      v121 = v118;
      v122 = v142;
      CFRunLoopAddSource(v120, v121, kCFRunLoopCommonModes);

      v113(v122, v141);
    }

    else
    {
      v128 = v133;
      static Logger.daemonLogger.getter();
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 0;
        _os_log_impl(&_mh_execute_header, v129, v130, "Could not create RunLoopSource", v131, 2u);
      }

      (*(v137 + 8))(v128, v138);
      v97(v96, v141);
    }
  }

  else
  {
    v123 = v97;
    v124 = v134;
    static Logger.daemonLogger.getter();
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 67109120;
      swift_beginAccess();
      *(v127 + 4) = error[0];
      _os_log_impl(&_mh_execute_header, v125, v126, "Could not create UserNotification: %d", v127, 8u);
    }

    (*(v137 + 8))(v124, v138);
    v123(v96, v141);
  }
}

void sub_100008680(uint64_t a1, char a2)
{
  if (xmmword_100042240)
  {
    v3 = qword_100042250;

    v3(a2 & 3);
  }
}

uint64_t sub_1000086EC(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  swift_beginAccess();
  sub_1000045C4(a2 + v13, &v26, &qword_100042680, &unk_100031D90);
  if (v27)
  {
    sub_10000A19C(&v26, v28);
    if (a1)
    {
      if (xmmword_100042240)
      {
        v14 = *(&xmmword_100042240 + 1);
        v15 = xmmword_100042240;
        v16 = v14;

        CFRunLoopSourceInvalidate(v15);
        CFUserNotificationCancel(v16);
      }

      *(*sub_100005EB4(v28, v29) + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 0;
    }

    else
    {
      static Logger.daemonLogger.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Received UserNotification response to turn on Lockdown Mode. Turning on…", v23, 2u);
      }

      (*(v7 + 8))(v10, v6);
      sub_100005EB4(v28, v29);
      v24 = swift_allocObject();
      *(v24 + 16) = a3;
      sub_100012394(1, 0, 1, 1, 1, 0, 0, 0, 0, sub_10000A1C4, v24);
    }

    return sub_100005E08(v28);
  }

  else
  {
    sub_100005E54(&v26, &qword_100042680, &unk_100031D90);
    static Logger.daemonLogger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No delegate set for NotificationsManager", v19, 2u);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

uint64_t sub_100008A48(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  result = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = a1;
      v15 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_100003BC8(&unk_100042360, qword_100031DD0);
      v11 = String.init<A>(describing:)();
      v13 = sub_100019C8C(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error posting notification: %s", v9, 0xCu);
      sub_100005E08(v10);
    }

    else
    {
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_100008C40()
{
  v1 = *(v0 + OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_notificationCenter);
  if (v1)
  {
    [v1 removeAllDeliveredNotifications];
    if (xmmword_100042240)
    {
      v2 = *(&xmmword_100042240 + 1);
      source = xmmword_100042240;
      v3 = v2;

      CFRunLoopSourceInvalidate(source);
      CFUserNotificationCancel(v3);
      v4 = xmmword_100042240;
      v5 = qword_100042250;
      v6 = qword_100042258;
      xmmword_100042240 = 0u;
      *&qword_100042250 = 0u;
      sub_10000A154(v4, *(&v4 + 1), v5, v6);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100008D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotificationsManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008F6C(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_100009054;

  return sub_100009B18(v9);
}

uint64_t sub_100009054()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000091C4()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009214()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100005A88;

  return sub_100008F6C(v2, v3, v5, v4);
}

uint64_t sub_1000092D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100005EFC;

  return v6();
}

uint64_t sub_1000093C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005EFC;

  return sub_1000092D4(v2, v3, v4);
}

uint64_t sub_100009480(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100005A88;

  return v7();
}

uint64_t sub_100009568()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000095A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005EFC;

  return sub_100009480(a1, v4, v5, v6);
}

uint64_t sub_100009674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003BC8(&unk_100042300, "6i");
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000045C4(a3, v23 - v10, &unk_100042300, "6i");
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100005E54(v11, &unk_100042300, "6i");
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100005E54(a3, &unk_100042300, "6i");

    return v21;
  }

LABEL_8:
  sub_100005E54(a3, &unk_100042300, "6i");
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100009970()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000099A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005EFC;

  return sub_100005610(a1, v4);
}

uint64_t sub_100009A60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005A88;

  return sub_100005610(a1, v4);
}

uint64_t sub_100009B18(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100009BFC, 0, 0);
}

uint64_t sub_100009BFC()
{
  v40 = v0;
  v1 = [*(v0 + 80) actionIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  static Logger.daemonLogger.getter();

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 136);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v39 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_100019C8C(v2, v4, &v39);
    _os_log_impl(&_mh_execute_header, v5, v6, "Received notification: %{public}s", v11, 0xCu);
    sub_100005E08(v12);
  }

  v13 = *(v10 + 8);
  v13(v8, v9);
  v14 = *(v0 + 88);
  v15 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
  swift_beginAccess();
  sub_1000045C4(v14 + v15, v0 + 16, &qword_100042680, &unk_100031D90);
  if (*(v0 + 40))
  {
    sub_100005E54(v0 + 16, &qword_100042680, &unk_100031D90);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v2 && v16 == v4)
    {
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
        static Logger.daemonLogger.getter();

        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.fault.getter();

        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 120);
        v34 = *(v0 + 96);
        if (v32)
        {
          v38 = *(v0 + 120);
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v39 = v36;
          *v35 = 136380675;
          v37 = sub_100019C8C(v2, v4, &v39);

          *(v35 + 4) = v37;
          _os_log_impl(&_mh_execute_header, v30, v31, "Unknown notification actionIdentifier: %{private}s", v35, 0xCu);
          sub_100005E08(v36);

          v26 = v38;
        }

        else
        {

          v26 = v33;
        }

        v27 = v34;
        goto LABEL_14;
      }
    }

    static Logger.daemonLogger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 128);
    v21 = *(v0 + 96);
    if (v25)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Opening settings…";
      goto LABEL_12;
    }
  }

  else
  {

    sub_100005E54(v0 + 16, &qword_100042680, &unk_100031D90);
    static Logger.daemonLogger.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 112);
    v21 = *(v0 + 96);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "No delegate set for NotificationsManager";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v17, v18, v23, v22, 2u);
    }
  }

  v26 = v20;
  v27 = v21;
LABEL_14:
  v13(v26, v27);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10000A09C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A0B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000A0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10000A154(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000A19C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10000A1CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003C74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000A220(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_10000A268()
{
  result = qword_100042380;
  if (!qword_100042380)
  {
    sub_10000A220(255, &qword_100042378, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042380);
  }

  return result;
}

void sub_10000A30C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003B7C();
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v6);
  v10 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v6);
  mach_service = xpc_connection_create_mach_service("com.apple.amfi.xpc", v10, 0);

  aBlock[4] = LockdownModeServer.LockdownModeState.rawValue.getter;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000226B4;
  aBlock[3] = &unk_10003D578;
  v12 = _Block_copy(aBlock);
  xpc_connection_set_event_handler(mach_service, v12);
  _Block_release(v12);
  xpc_connection_resume(mach_service);
  if (a1)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = &_swiftEmptyDictionarySingleton;
  sub_10001A8A0(v13, 0x6E6F69746361, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v16 = _CFXPCCreateXPCMessageWithCFObject();

  if (v16)
  {

    v17 = xpc_connection_send_message_with_reply_sync(mach_service, v16);
    type = xpc_get_type(v17);
    if (type == XPC_TYPE_ERROR.getter())
    {
      static Logger.daemonLogger.getter();
      swift_unknownObjectRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v31 = v2;
        v22 = v21;
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v22 = 136315138;
        v23 = [v17 description];
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v3;
        v26 = v25;

        v27 = sub_100019C8C(v24, v26, aBlock);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v19, v20, "Received an XPC error when setting Developer Mode: %s", v22, 0xCu);
        sub_100005E08(v29);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v30 + 8))(v5, v31);
      }

      else
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      if (xpc_dictionary_get_value(v17, "cfreply"))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        xpc_connection_cancel(mach_service);
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000A7C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10000A7D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = a1;
  v13 = v11;
  if (v12)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  sub_10002BD3C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000AA38(v6);
    v15 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v16 = *(v8 + 8);
    v16(v6, v7);
    URL.path.getter();
    v16(v10, v7);
    v15 = String._bridgeToObjectiveC()();
  }

  v17 = [v13 objectForKey:v14 inDomain:v15];

  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10000AA38(uint64_t a1)
{
  v2 = sub_100003BC8(&unk_100042310, &unk_100032370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000AAA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = a2;
  v12 = v10;
  if (v11)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  sub_10002BD3C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000AA38(v5);
    v14 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v15 = *(v7 + 8);
    v15(v5, v6);
    URL.path.getter();
    v15(v9, v6);
    v14 = String._bridgeToObjectiveC()();
  }

  [v12 removeObjectForKey:v13 inDomain:v14];
}

void sub_10000ACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100003BC8(&unk_100042310, &unk_100032370);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [objc_opt_self() standardUserDefaults];
  sub_10000B004(a1, v24);
  v12 = v25;
  if (v25)
  {
    v13 = sub_100005EB4(v24, v25);
    v22 = &v22;
    v14 = *(v12 - 8);
    __chkstk_darwin(v13);
    v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v16, v12);
    sub_100005E08(v24);
    if (a3)
    {
LABEL_3:
      v18 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  sub_10002BD3C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000AA38(v7);
    v19 = 0;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v20 = *(v9 + 8);
    v20(v7, v8);
    URL.path.getter();
    v20(v11, v8);
    v19 = String._bridgeToObjectiveC()();
  }

  v21 = v23;
  [v23 setObject:v17 forKey:v18 inDomain:{v19, v22}];

  swift_unknownObjectRelease();
}

uint64_t sub_10000B004(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003BC8(&qword_100042500, &qword_100031EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_10000B098()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedConnection];
  if (v4)
  {
    v5 = v4;
    v6 = MCFeatureLockdownModeAllowed;
    v7 = [v5 effectiveBoolValueForSetting:v6];

    return v7 == 1;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not get MC connection", v11, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }
}

void sub_10000B238(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v12 = v6;
    [v6 setBoolValue:a1 & 1 forSetting:MCFeatureLockdownModeAllowed];
    v7 = v12;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not get MC connection", v10, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t *LockdownModeServer.shared.unsafeMutableAddressor()
{
  if (qword_100041CE8 != -1)
  {
    swift_once();
  }

  return &static LockdownModeServer.shared;
}

uint64_t sub_10000B434(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_10000B478(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_10000B4E4()
{
  result = [objc_allocWithZone(type metadata accessor for LockdownModeServer()) init];
  static LockdownModeServer.shared = result;
  return result;
}

id static LockdownModeServer.shared.getter()
{
  if (qword_100041CE8 != -1)
  {
    swift_once();
  }

  v1 = static LockdownModeServer.shared;

  return v1;
}

char *sub_10000B570()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager;
  v2 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for NotificationsManager()) init];
    v10[3] = type metadata accessor for LockdownModeServer();
    v10[4] = &off_10003D618;
    v10[0] = v0;
    v5 = OBJC_IVAR____TtC13lockdownmoded20NotificationsManager_delegate;
    swift_beginAccess();
    v6 = v0;
    sub_1000224B8(v10, v4 + v5, &qword_100042680, &unk_100031D90);
    swift_endAccess();
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10000B64C()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v2 = *(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  }

  else
  {
    v4 = objc_allocWithZone(NSUbiquitousKeyValueStore);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithStoreIdentifier:v5 type:2];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_10000B6F8()
{
  v1 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager;
  v2 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for IDSManager()) init];
    v10[3] = type metadata accessor for LockdownModeServer();
    v10[4] = &off_10003D638;
    v10[0] = v0;
    v5 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
    swift_beginAccess();
    v6 = v0;
    sub_1000224B8(v10, v4 + v5, &qword_100042FF0, &qword_1000324B0);
    swift_endAccess();
    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t LockdownModeServer.LockdownModeState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 6710895;
    case 2:
      return 28271;
    case 1:
      return 0x646567617473;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

unint64_t LockdownModeServer.LockdownModeState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

Swift::Int sub_10000B85C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B8D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t *sub_10000B914@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_10000B930(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 6710895;
  }

  if (v2 == 2)
  {
    return 28271;
  }

  if (v2 == 1)
  {
    return 0x646567617473;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B9AC()
{
  v1 = (v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
  if (*(v0 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = MGGetStringAnswer();

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v2 = 0x3A656369766564;
    *v1 = 0x3A656369766564;
    v1[1] = 0xE700000000000000;
  }

  return v2;
}

uint64_t sub_10000BAA8()
{
  v0 = sub_10000B64C();
  sub_10000B9AC();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 dictionaryForKey:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v3 + 16) || (v4 = sub_10001A408(0x6574617473, 0xE500000000000000), (v5 & 1) == 0))
  {

    return 0;
  }

  sub_100005DA4(*(v3 + 56) + 32 * v4, v8);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v7 == 2)
  {
    return 2;
  }

  else
  {
    return v7 == 1;
  }
}

void sub_10000BBC8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000B64C();
  sub_10000B9AC();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 dictionaryForKey:v9];

  if (v10)
  {
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = sub_100004390(&_swiftEmptyArrayStorage);
  }

  v26 = &type metadata for Int;
  *&v25 = a1;
  sub_10000427C(&v25, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v11;
  sub_10001A750(v24, 0x6574617473, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v13 = v23;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v26 = &type metadata for Double;
  *&v25 = v15;
  sub_10000427C(&v25, v24);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v13;
  sub_10001A750(v24, 0x7441746573, 0xE500000000000000, v16);
  v17 = v23;
  v26 = &type metadata for Double;
  *&v25 = v15;
  sub_10000427C(&v25, v24);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v23 = v17;
  sub_10001A750(v24, 0x616470557473616CLL, 0xEB00000000646574, v18);
  v19 = *(v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = String._bridgeToObjectiveC()();

  [v19 setDictionary:isa forKey:v21];
}

uint64_t sub_10000BEBC()
{
  v1 = v0;
  v39 = type metadata accessor for Date();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000B64C();
  v5 = [v4 dictionaryRepresentation];

  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_10000B9AC();
  v9 = v8;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v42 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v13 = (v10 + 63) >> 6;
  v37 = (v2 + 8);
  v14 = v7;

  v15 = 0;
  while (v12)
  {
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = (*(v6 + 48) + ((v15 << 10) | (16 * v17)));
    v19 = *v18 == v14 && v18[1] == v9;
    if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v20._countAndFlagsBits = 0x656369766564;
      v20._object = 0xE600000000000000;
      if (!String.hasPrefix(_:)(v20))
      {
        goto LABEL_25;
      }

      v21 = *(v1 + v42);
      v41 = v1;
      v22 = v21;
      v23 = String._bridgeToObjectiveC()();
      v40 = v14;
      v24 = v23;

      v25 = [v22 dictionaryForKey:v24];

      v1 = v41;
      v14 = v40;
      if (v25)
      {
        v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v26 + 16) && (v27 = sub_10001A408(0x6574617473, 0xE500000000000000), (v28 & 1) != 0) && (sub_100005DA4(*(v26 + 56) + 32 * v27, v44), (swift_dynamicCast() & 1) != 0) && (*&v43 - 1) <= 1 && *(v26 + 16) && (v29 = sub_10001A408(0x616470557473616CLL, 0xEB00000000646574), (v30 & 1) != 0))
        {
          sub_100005DA4(*(v26 + 56) + 32 * v29, v44);

          if (swift_dynamicCast())
          {
            v31 = v43;
            v32 = v38;
            Date.init()();
            Date.timeIntervalSince1970.getter();
            v34 = v33;
            (*v37)(v32, v39);
            if (v34 - v31 <= 1209600.0)
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
LABEL_25:
        }
      }
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return 0;
    }

    v12 = *(v6 + 64 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:

  return 1;
}

char *sub_10000C2D0()
{
  v1 = type metadata accessor for Logger();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = __chkstk_darwin(v1);
  v55 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v54 = &v47 - v5;
  __chkstk_darwin(v4);
  v51 = &v47 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___notificationsManager] = 0;
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore] = 0;
  v11 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener;
  static Constants.serviceName.getter();
  v12 = objc_allocWithZone(NSXPCListener);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v12 initWithMachServiceName:v13];

  *&v0[v11] = v14;
  *&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager] = 0;
  v47 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_eventsQueue;
  sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
  static DispatchQoS.utility.getter();
  v57 = &_swiftEmptyArrayStorage;
  sub_100022560(&qword_100041D08, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003BC8(&qword_100041D10, &qword_1000314B0);
  sub_10000A1CC(&qword_100041D18, &qword_100041D10, &qword_1000314B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v49 + 104))(v48, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v50);
  *&v0[v47] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 0;
  v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] = 0;
  v15 = &v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey];
  v16 = type metadata accessor for LockdownModeServer();
  *v15 = 0;
  v15[1] = 0;
  v56.receiver = v0;
  v56.super_class = v16;
  v17 = objc_msgSendSuper2(&v56, "init");
  v18 = v51;
  static Logger.daemonLogger.getter();
  v19 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v22 = 136446466;
    type metadata accessor for LockdownModeXNU();
    v23 = static LockdownModeXNU.lockdownModeEnabled.getter();
    v24 = (v23 & 1) == 0;
    if (v23)
    {
      v25 = 28271;
    }

    else
    {
      v25 = 6710895;
    }

    if (v24)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xE200000000000000;
    }

    v27 = sub_100019C8C(v25, v26, &v57);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v28 = [objc_allocWithZone(LAStorage) init];
    v29 = [v28 BOOLForKey:6];

    if (v29)
    {
      v30 = 28271;
    }

    else
    {
      v30 = 6710895;
    }

    if (v29)
    {
      v31 = 0xE200000000000000;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_100019C8C(v30, v31, &v57);

    *(v22 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "Setting up lockdownmoded… (sysctl: %{public}s, ACM: %{public}s)", v22, 0x16u);
    swift_arrayDestroy();
  }

  v33 = *(v52 + 8);
  v34 = v19;
  v35 = v53;
  v33(v34, v53);
  v36 = v54;
  static Logger.daemonLogger.getter();
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = v55;
  if (v39)
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Setting up observers…", v41, 2u);
  }

  v33(v36, v35);
  sub_10000CB6C();
  static Logger.daemonLogger.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Setting up the XPC server…", v44, 2u);
  }

  v33(v40, v35);
  v45 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener;
  [*&v17[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener] setDelegate:v17];
  [*&v17[v45] resume];

  return v17;
}

id LockdownModeServer.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_listener] invalidate];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockdownModeServer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000CB6C()
{
  v1 = sub_10000B6F8();
  v22 = type metadata accessor for LockdownModeServer();
  v23 = &off_10003D638;
  aBlock = v0;
  v2 = OBJC_IVAR____TtC13lockdownmoded10IDSManager_delegate;
  swift_beginAccess();
  v3 = v0;
  sub_1000224B8(&aBlock, &v1[v2], &qword_100042FF0, &qword_1000324B0);
  swift_endAccess();

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v5[2] = 0xD000000000000023;
  v5[3] = 0x80000001000345E0;
  v5[4] = sub_10001EF58;
  v5[5] = v4;
  v23 = sub_10001EF64;
  v24 = v5;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D810;
  v6 = _Block_copy(&aBlock);
  v7 = v3;

  v8 = String.utf8CString.getter();
  xpc_activity_register((v8 + 32), XPC_ACTIVITY_CHECK_IN, v6);

  _Block_release(v6);

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  v10[2] = 0xD000000000000032;
  v10[3] = 0x8000000100034610;
  v10[4] = sub_10001EF70;
  v10[5] = v9;
  v23 = sub_100022630;
  v24 = v10;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D888;
  v11 = _Block_copy(&aBlock);
  v12 = v7;

  v13 = String.utf8CString.getter();
  xpc_activity_register((v13 + 32), XPC_ACTIVITY_CHECK_IN, v11);

  _Block_release(v11);

  v14 = *(v12 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_eventsQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v23 = sub_10001EFB8;
  v24 = v15;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000226B4;
  v22 = &unk_10003D8D8;
  v16 = _Block_copy(&aBlock);
  v17 = v12;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v14, v16);
  _Block_release(v16);
  v18 = [objc_opt_self() defaultCenter];
  [v18 addObserver:v17 selector:"deviceIsSetup" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];
}

uint64_t sub_10000CF48(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v9 = &v37 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    if (qword_100041CF8 != -1)
    {
      swift_once();
    }

    if (off_1000441F0())
    {
      static Logger.daemonLogger.getter();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v38 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v38);
        _os_log_impl(&_mh_execute_header, v18, v19, "We're in Buddy. Skipping activity for now: %s", v20, 0xCu);
        sub_100005E08(v21);
      }

      (*(v5 + 8))(v17, v4);
    }

    else
    {
      if (qword_100041CF0 != -1)
      {
        swift_once();
      }

      sub_100028470();
      sub_10000F4BC();
    }

    static Logger.daemonLogger.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v38);
      _os_log_impl(&_mh_execute_header, v22, v23, "Done running activity: %s", v24, 0xCu);
      sub_100005E08(v25);
    }

    v26 = *(v5 + 8);
    v26(v15, v4);
    result = xpc_activity_set_state(a1, 5);
    if ((result & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v38);
        _os_log_impl(&_mh_execute_header, v28, v29, "Could not set activity state to Done: %s", v30, 0xCu);
        sub_100005E08(v31);
      }

      return (v26)(v12, v4);
    }
  }

  else
  {
    static Logger.daemonLogger.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v38 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100019C8C(0xD000000000000023, 0x80000001000345E0, &v38);
      _os_log_impl(&_mh_execute_header, v32, v33, "Lockdown Mode is off. Unregistering activity: %s", v34, 0xCu);
      sub_100005E08(v35);
    }

    (*(v5 + 8))(v9, v4);
    v36 = String.utf8CString.getter();
    xpc_activity_unregister((v36 + 32));
  }

  return result;
}

uint64_t sub_10000D65C(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v31 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v31 - v13;
  __chkstk_darwin(v12);
  if (qword_100041CF8 != -1)
  {
    swift_once();
  }

  if (off_1000441F0())
  {
    static Logger.daemonLogger.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v31);
      _os_log_impl(&_mh_execute_header, v15, v16, "We're in Buddy. Skipping activity for now: %s", v17, 0xCu);
      sub_100005E08(v18);
    }

    (*(v5 + 8))(v14, v4);
  }

  else
  {
    if (qword_100041CF0 != -1)
    {
      swift_once();
    }

    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
    {
      v19 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v19 = static LockdownModeXNU.lockdownModeEnabled.getter();
    }

    sub_10002B764(v19 & 1);
  }

  static Logger.daemonLogger.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v31);
    _os_log_impl(&_mh_execute_header, v20, v21, "Done running activity: %s", v22, 0xCu);
    sub_100005E08(v23);
  }

  v24 = *(v5 + 8);
  v24(v11, v4);
  result = xpc_activity_set_state(a1, 5);
  if ((result & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100019C8C(0xD000000000000032, 0x8000000100034610, v31);
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not set activity state to Done: %s", v28, 0xCu);
      sub_100005E08(v29);
    }

    return (v24)(v8, v4);
  }

  return result;
}

void sub_10000DBE0(void *a1, _BYTE *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v109 = *(v4 - 8);
  __chkstk_darwin(v4);
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for DispatchQoS();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for DispatchTime();
  v104 = *(v110 - 8);
  v7 = __chkstk_darwin(v110);
  v102 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v95 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v95 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v95 - v19;
  v21 = __chkstk_darwin(v18);
  v100 = &v95 - v22;
  v23 = __chkstk_darwin(v21);
  v101 = &v95 - v24;
  v25 = __chkstk_darwin(v23);
  v111 = &v95 - v26;
  v27 = __chkstk_darwin(v25);
  v112 = &v95 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v95 - v30;
  __chkstk_darwin(v29);
  v33 = &v95 - v32;
  v34 = XPC_EVENT_KEY_NAME.getter();
  if (!xpc_dictionary_get_string(a1, v34))
  {
    return;
  }

  v96 = v17;
  v98 = v20;
  v99 = v4;
  v97 = v14;
  v113 = v11;
  v114 = a2;
  v35 = String.init(cString:)();
  v37 = v36;
  static Logger.daemonLogger.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v10;
    v42 = swift_slowAlloc();
    *&aBlock = v42;
    *v40 = 136315138;
    v43 = v37;
    *(v40 + 4) = sub_100019C8C(v35, v37, &aBlock);
    sub_100005E08(v42);
    v10 = v41;
  }

  else
  {
    v43 = v37;
  }

  v44 = *(v113 + 8);
  v44(v33, v10);
  v45 = v114;
  v46 = v43;
  v47 = v35;
  if (v35 == 0xD000000000000035 && 0x8000000100034670 == v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_100041CF8 != -1)
    {
      swift_once();
    }

    if (off_1000441F0())
    {
      v48 = v35;
      static Logger.daemonLogger.getter();

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&aBlock = v52;
        *v51 = 136315138;
        v53 = sub_100019C8C(v48, v46, &aBlock);

        *(v51 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v49, v50, "Not handling %s because we're in Buddy", v51, 0xCu);
        sub_100005E08(v52);

        v45 = v114;
      }

      else
      {
      }

      v44(v31, v10);
      v45[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 0;
      v59 = v112;
      static Logger.daemonLogger.getter();
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "skipNextKVSSync unset", v62, 2u);
      }

      v63 = v59;
LABEL_25:
      v44(v63, v10);
      return;
    }

    v54 = 0;
LABEL_20:
    sub_10000F710(v54);
    return;
  }

  if (v35 == 0xD000000000000025 && 0x80000001000346B0 == v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1000115B8();
    v45[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync] = 1;
    v55 = v111;
    static Logger.daemonLogger.getter();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v56, v57, "skipNextKVSSync set", v58, 2u);
    }

    v44(v55, v10);
    v54 = 1;
    goto LABEL_20;
  }

  if (v35 == 0xD000000000000021 && 0x80000001000346E0 == v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v64 = v99;
    if (v45[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] == 1)
    {
      v65 = v101;
      static Logger.daemonLogger.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Buddy exited and we have pendingEnablementPrompt set. Scheduling turnOnAlert notification…", v68, 2u);
        v45 = v114;
      }

      v44(v65, v10);
      sub_10000A220(0, &qword_100041D00, OS_dispatch_queue_ptr);
      v69 = static OS_dispatch_queue.main.getter();
      v70 = v102;
      static DispatchTime.now()();
      v71 = v103;
      + infix(_:_:)();
      v114 = *(v104 + 8);
      (v114)(v70, v110);
      v72 = swift_allocObject();
      *(v72 + 16) = v45;
      v117 = sub_10001EFC0;
      v118 = v72;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v116 = sub_10000B434;
      *(&v116 + 1) = &unk_10003D928;
      v73 = _Block_copy(&aBlock);
      v74 = v45;

      v75 = v105;
      static DispatchQoS.unspecified.getter();
      *&aBlock = &_swiftEmptyArrayStorage;
      sub_100022560(&qword_100042320, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100003BC8(&qword_100042328, &qword_100031DA0);
      sub_10000A1CC(&qword_100042330, &qword_100042328, &qword_100031DA0);
      v76 = v107;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v73);

      (*(v109 + 8))(v76, v64);
      (*(v106 + 8))(v75, v108);
      (v114)(v71, v110);
    }

    return;
  }

  if ((v35 != 0xD000000000000038 || 0x8000000100034710 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v35 != 0xD000000000000033 || 0x8000000100034750 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v89 = v96;
    static Logger.daemonLogger.getter();

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&aBlock = v93;
      *v92 = 136315138;
      v94 = sub_100019C8C(v35, v46, &aBlock);

      *(v92 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v90, v91, "Unhandled notification: %s", v92, 0xCu);
      sub_100005E08(v93);
    }

    else
    {
    }

    v63 = v89;
    goto LABEL_25;
  }

  v77 = v100;
  static Logger.daemonLogger.getter();
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&_mh_execute_header, v78, v79, "Checking if the active paired device is setup…", v80, 2u);
  }

  v44(v77, v10);
  v81 = [objc_opt_self() sharedInstance];
  if (!v81)
  {
    __break(1u);
    return;
  }

  v82 = v81;
  v83 = [v81 getActivePairedDevice];

  if (!v83)
  {

    aBlock = 0u;
    v116 = 0u;
LABEL_56:
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    return;
  }

  if ([v83 valueForProperty:NRDevicePropertyIsSetup])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v119 = 0u;
    v120 = 0u;
  }

  aBlock = v119;
  v116 = v120;
  if (!*(&v120 + 1))
  {

    goto LABEL_56;
  }

  sub_10000A220(0, &unk_100042660, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_58:

    return;
  }

  v84 = v119;
  if (![v119 BOOLValue])
  {

    goto LABEL_58;
  }

  v113 = v47;
  static Logger.daemonLogger.getter();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&_mh_execute_header, v85, v86, "Paired device is setup. Turning on Lockdown Mode (if not Tinker)…", v87, 2u);
  }

  v44(v98, v10);
  if (v114[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled])
  {
    v88 = 1;
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    v88 = static LockdownModeXNU.lockdownModeEnabled.getter();
  }

  sub_100013B28(v88 & 1);
}

void sub_10000ED24()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Posting scheduled turnOnPostBuddy notification…", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  sub_100011E54(2u, 0, 1);
}

uint64_t sub_10000EE78(_xpc_activity_s *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(_xpc_activity_s *), uint64_t a5)
{
  v49 = a5;
  v50 = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v52 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - v13);
  v15 = __chkstk_darwin(v12);
  v53 = &v47 - v16;
  v17 = __chkstk_darwin(v15);
  v51 = (&v47 - v18);
  __chkstk_darwin(v17);
  v20 = &v47 - v19;
  static Logger.daemonLogger.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v48 = v9;
    v25 = v8;
    v26 = v24;
    v54 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100019C8C(a2, a3, &v54);
    _os_log_impl(&_mh_execute_header, v21, v22, "Received an XPC activity: %s", v23, 0xCu);
    sub_100005E08(v26);
    v8 = v25;
    v9 = v48;
  }

  v27 = *(v9 + 8);
  v27(v20, v8);
  state = xpc_activity_get_state(a1);
  v29 = v53;
  if (state == 2)
  {
    static Logger.daemonLogger.getter();

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v52 = a1;
      v40 = v8;
      v41 = v39;
      v42 = swift_slowAlloc();
      v54 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_100019C8C(a2, a3, &v54);
      _os_log_impl(&_mh_execute_header, v37, v38, "Running activity: %s", v41, 0xCu);
      sub_100005E08(v42);

      v8 = v40;
      a1 = v52;

      v43 = v53;
    }

    else
    {

      v43 = v29;
    }

    v27(v43, v8);
    if (xpc_activity_set_state(a1, 4))
    {
      return v50(a1);
    }

    static Logger.daemonLogger.getter();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v30 = v14;
      v33 = v8;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100019C8C(a2, a3, &v54);
      v36 = "Could not set activity state to Continue: %s";
      goto LABEL_18;
    }

    v44 = v14;
  }

  else
  {
    if (state)
    {
      v30 = v52;
      static Logger.daemonLogger.getter();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v8;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v54 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_100019C8C(a2, a3, &v54);
        v36 = "Error handling activity: %s";
        goto LABEL_18;
      }
    }

    else
    {
      v30 = v51;
      static Logger.daemonLogger.getter();

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v8;
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v54 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_100019C8C(a2, a3, &v54);
        v36 = "Checked-in activity: %s";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v31, v32, v36, v34, 0xCu);
        sub_100005E08(v35);

        v44 = v30;
        v45 = v33;
        return (v27)(v44, v45);
      }
    }

    v44 = v30;
  }

  v45 = v8;
  return (v27)(v44, v45);
}

uint64_t sub_10000F45C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000F4BC()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000B64C();
  sub_10000B9AC();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 dictionaryForKey:v7];

  if (v8)
  {
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    Date.init()();
    Date.timeIntervalSince1970.getter();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
    v19 = &type metadata for Double;
    *&v18 = v11;
    sub_10000427C(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[1] = v9;
    sub_10001A750(v17, 0x616470557473616CLL, 0xEB00000000646574, isUniquelyReferenced_nonNull_native);
    v13 = *(v1 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v15 = String._bridgeToObjectiveC()();

    [v13 setDictionary:isa forKey:v15];
  }
}

void sub_10000F710(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v6);
  v11 = &v42[-v10];
  v12 = __chkstk_darwin(v9);
  v14 = &v42[-v13];
  __chkstk_darwin(v12);
  v16 = &v42[-v15];
  sub_10001B1C4();
  if (v17)
  {
    if ((a1 & 1) != 0 || (v18 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync, *(v2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_skipNextKVSSync) != 1))
    {
      v29 = a1 & 1;
      static Logger.daemonLogger.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v43 = a1 & 1;
        v33 = v32;
        v34 = swift_slowAlloc();
        aBlock[0] = v34;
        *v33 = 136446210;
        if (a1)
        {
          v35 = 0x53746E756F636361;
        }

        else
        {
          v35 = 0x6168436574617473;
        }

        if (a1)
        {
          v36 = 0xED00006E496E6769;
        }

        else
        {
          v36 = 0xEB0000000065676ELL;
        }

        v37 = sub_100019C8C(v35, v36, aBlock);

        *(v33 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Fetching state from KVS (source: %{public}s)…", v33, 0xCu);
        sub_100005E08(v34);

        v29 = v43;
      }

      (*(v5 + 8))(v11, v4);
      v38 = sub_10000B64C();
      v39 = swift_allocObject();
      *(v39 + 16) = v2;
      *(v39 + 24) = v29;
      aBlock[4] = sub_10001EF4C;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000B478;
      aBlock[3] = &unk_10003D798;
      v40 = _Block_copy(aBlock);
      v41 = v2;

      [v38 synchronizeWithCompletionHandler:v40];
      _Block_release(v40);
    }

    else
    {
      static Logger.daemonLogger.getter();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "skipNextKVSSync is set, skipping KVS sync…", v21, 2u);
      }

      v22 = *(v5 + 8);
      v22(v16, v4);
      *(v2 + v18) = 0;
      static Logger.daemonLogger.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "skipNextKVSSync unset", v25, 2u);
      }

      v22(v14, v4);
    }
  }

  else
  {
    static Logger.daemonLogger.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No Apple account available. Not syncing with KVS", v28, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

void sub_10000FBF8(uint64_t a1, uint64_t a2, int a3)
{
  v233 = a3;
  v234 = a2;
  v238 = type metadata accessor for Logger();
  v236 = *(v238 - 8);
  v4 = __chkstk_darwin(v238);
  v237 = &v210 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v229 = &v210 - v7;
  v8 = __chkstk_darwin(v6);
  v231 = &v210 - v9;
  v10 = __chkstk_darwin(v8);
  v230 = &v210 - v11;
  v12 = __chkstk_darwin(v10);
  v232 = &v210 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v210 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v210 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v210 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v210 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v210 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v210 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v210 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v210 - v36;
  __chkstk_darwin(v35);
  v39 = &v210 - v38;
  v40 = type metadata accessor for Date();
  v41 = __chkstk_darwin(v40);
  v44 = &v210 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v45 = v236;
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      swift_errorRetain();
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v50;
      *v49 = v50;
      _os_log_impl(&_mh_execute_header, v46, v47, "Could not sync the state with KVS: %@", v48, 0xCu);
      sub_100005E54(v49, &qword_100042158, qword_100031C60);
    }

    (*(v45 + 8))(v237, v238);
    return;
  }

  v228 = v42;
  v216 = v44;
  v217 = v41;
  v224 = v39;
  v210 = v34;
  v219 = v37;
  v221 = v31;
  v226 = v28;
  v211 = v22;
  v212 = v19;
  v214 = v25;
  v213 = v16;
  v51 = v234;
  v52 = sub_10000B64C();
  sub_10000B9AC();
  v53 = String._bridgeToObjectiveC()();

  v54 = [v52 dictionaryForKey:v53];

  v55 = &type metadata for Any;
  if (v54)
  {
    v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = 0.0;
    v58 = v238;
    if (v56)
    {
      v59 = *(v56 + 16);
      v227 = v56;
      if (v59)
      {

        v60 = sub_10001A408(0x7441746573, 0xE500000000000000);
        if (v61)
        {
          sub_100005DA4(*(v56 + 56) + 32 * v60, &v240);

          v62 = swift_dynamicCast();
          v220 = 0;
          v223 = v62 ^ 1;
          if (v62)
          {
            v57 = v239;
          }

          else
          {
            v57 = 0.0;
          }

          goto LABEL_17;
        }
      }

      v220 = 0;
    }

    else
    {
      v227 = 0;
      v220 = 1;
    }

    v223 = 1;
  }

  else
  {
    v227 = 0;
    v57 = 0.0;
    v220 = 1;
    v223 = 1;
    v58 = v238;
  }

LABEL_17:
  v225 = OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore;
  v63 = [*(v51 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore) dictionaryRepresentation];
  v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v65 = 0;
  v222 = 0.0;
  v66 = 0;
  v68 = v64 + 64;
  v67 = *(v64 + 64);
  v237 = v64;
  v69 = 1;
  v70 = 1 << *(v64 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & v67;
  v235 = (v51 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___deviceKVSKey);
  v73 = (v70 + 63) >> 6;
  v215 = (v228 + 8);
  v74 = 0.0;
  v75 = 0.0;
  LODWORD(v228) = 1;
  while (1)
  {
    v76 = v75;
    v77 = v69;
    v78 = v65;
    if (!v72)
    {
      break;
    }

LABEL_25:
    v80 = __clz(__rbit64(v72));
    v72 &= v72 - 1;
    v81 = (*(v237 + 6) + ((v66 << 10) | (16 * v80)));
    v82 = *v81 == *v235 && v235[1] == v81[1];
    v65 = v78;
    if (!v82)
    {
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v65 = v78;
      v69 = v77;
      v75 = v76;
      if ((v83 & 1) == 0)
      {

        v84._countAndFlagsBits = 0x656369766564;
        v84._object = 0xE600000000000000;
        if (!String.hasPrefix(_:)(v84))
        {
          goto LABEL_50;
        }

        v85 = *(v234 + v225);
        v218 = v78;
        v86 = v55;
        v87 = v58;
        v88 = v85;
        v89 = String._bridgeToObjectiveC()();

        v90 = [v88 dictionaryForKey:v89];

        v58 = v87;
        v55 = v86;
        v78 = v218;

        v65 = v78;
        v69 = v77;
        v75 = v76;
        if (v90)
        {
          v91 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          if (!*(v91 + 16) || (v92 = sub_10001A408(0x616470557473616CLL, 0xEB00000000646574), (v93 & 1) == 0) || (sub_100005DA4(*(v91 + 56) + 32 * v92, &v240), (swift_dynamicCast() & 1) == 0) || (v94 = v239, v95 = v216, Date.init()(), Date.timeIntervalSince1970.getter(), v97 = v96, (*v215)(v95, v217), v97 - v94 > 1209600.0) || !*(v91 + 16) || (v98 = sub_10001A408(0x7441746573, 0xE500000000000000), (v99 & 1) == 0) || (sub_100005DA4(*(v91 + 56) + 32 * v98, &v240), (swift_dynamicCast() & 1) == 0) || !*(v91 + 16) || (v100 = v239, v101 = sub_10001A408(0x6574617473, 0xE500000000000000), (v102 & 1) == 0))
          {
LABEL_50:

            goto LABEL_51;
          }

          sub_100005DA4(*(v91 + 56) + 32 * v101, &v240);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_51;
          }

          v65 = v78;
          v69 = v77;
          v75 = v76;
          if (*&v239 <= 2uLL)
          {
            v103 = v74 < v100;
            v104 = v74 >= v100;
            if (v74 < v100)
            {
              v74 = v100;
            }

            v105 = v222;
            if (v103)
            {
              v105 = v239;
            }

            v222 = v105;
            LODWORD(v228) = v104 & v228;
            if (*&v239 == 1)
            {
              v69 = 0;
              v106 = v76 < v100;
              v65 = 1;
LABEL_54:
              v75 = v100;
              if (!v106)
              {
LABEL_51:
                v65 = v78;
                v69 = v77;
                v75 = v76;
              }
            }

            else
            {
              v65 = v78;
              v69 = v77;
              v75 = v76;
              if (*&v239 == 2)
              {
                v69 = 0;
                v106 = v76 < v100;
                v65 = 2;
                goto LABEL_54;
              }
            }
          }
        }
      }
    }
  }

  while (2)
  {
    v79 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
      goto LABEL_148;
    }

    if (v79 < v73)
    {
      v72 = *(v68 + 8 * v79);
      ++v66;
      if (v72)
      {
        v66 = v79;
        goto LABEL_25;
      }

      continue;
    }

    break;
  }

  if ((v228 & 1) == 0)
  {
    v111 = *&v78;
    if (v223)
    {

      v112 = v226;
      goto LABEL_79;
    }

    v112 = v226;
    if (v74 >= v57)
    {

      goto LABEL_79;
    }

    if (v220)
    {
      v240 = 0u;
      v241 = 0u;
    }

    else
    {
      if (*(v227 + 16))
      {
        v113 = v227;
        v114 = sub_10001A408(0x6574617473, 0xE500000000000000);
        v115 = v219;
        if (v116)
        {
          sub_100005DA4(*(v113 + 56) + 32 * v114, &v240);
        }

        else
        {
          v240 = 0u;
          v241 = 0u;
        }
      }

      else
      {
        v240 = 0u;
        v241 = 0u;
        v115 = v219;
      }

      if (*(&v241 + 1))
      {
        if (swift_dynamicCast())
        {
          v117 = v239;
          if (*&v239 <= 2uLL)
          {
            v118 = v236;
            if (v233)
            {
              v119 = v210;
              static Logger.daemonLogger.getter();
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.default.getter();
              v122 = os_log_type_enabled(v120, v121);
              v123 = v238;
              if (v122)
              {
                v124 = swift_slowAlloc();
                *v124 = 0;
              }

              (*(v118 + 8))(v119, v123);
              v111 = v222;
              v125 = v233;
              goto LABEL_96;
            }

            v111 = v239;
            static Logger.daemonLogger.getter();
            v195 = Logger.logObject.getter();
            v196 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v195, v196))
            {

              (*(v118 + 8))(v115, v238);
              v125 = v233;
              goto LABEL_96;
            }

            v197 = swift_slowAlloc();
            *&v240 = swift_slowAlloc();
            *v197 = 136446978;
            if (v222 == 0.0)
            {
              v198 = 0xE300000000000000;
              v199 = 6710895;
            }

            else if (*&v222 == 2)
            {
              v198 = 0xE200000000000000;
              v199 = 28271;
            }

            else
            {
              v198 = 0xE600000000000000;
              v199 = 0x646567617473;
            }

            v200 = sub_100019C8C(v199, v198, &v240);

            *(v197 + 4) = v200;
            *(v197 + 12) = 2082;
            v201 = Double.description.getter();
            v203 = sub_100019C8C(v201, v202, &v240);

            *(v197 + 14) = v203;
            *(v197 + 22) = 2082;
            v204 = Double.description.getter();
            v206 = sub_100019C8C(v204, v205, &v240);

            *(v197 + 24) = v206;
            *(v197 + 32) = 2082;
            if (v117 == 0.0)
            {
              v207 = 0xE300000000000000;
              v118 = v236;
              v125 = v233;
              v208 = 6710895;
            }

            else if (*&v117 == 2)
            {
              v207 = 0xE200000000000000;
              v208 = 28271;
              v118 = v236;
              v125 = v233;
            }

            else
            {
              v118 = v236;
              v125 = v233;
              v207 = 0xE600000000000000;
              v208 = 0x646567617473;
            }

            v209 = sub_100019C8C(v208, v207, &v240);

            *(v197 + 34) = v209;
            swift_arrayDestroy();

            (*(v118 + 8))(v219, v238);
            goto LABEL_95;
          }
        }

LABEL_79:
        v125 = v233;
        if (v77 & 1 | ((v233 & 1) == 0))
        {
          v57 = v74;
          v111 = v222;
          v118 = v236;
LABEL_96:
          static Logger.daemonLogger.getter();
          v139 = Logger.logObject.getter();
          v140 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            *&v240 = swift_slowAlloc();
            *v141 = 136446722;
            if (v125)
            {
              v142 = 0x53746E756F636361;
            }

            else
            {
              v142 = 0x6168436574617473;
            }

            if (v125)
            {
              v143 = 0xED00006E496E6769;
            }

            else
            {
              v143 = 0xEB0000000065676ELL;
            }

            v144 = sub_100019C8C(v142, v143, &v240);

            *(v141 + 4) = v144;
            *(v141 + 12) = 2082;
            if (v111 == 0.0)
            {
              v146 = 6710895;
              v145 = 0xE300000000000000;
            }

            else if (*&v111 == 2)
            {
              v145 = 0xE200000000000000;
              v146 = 28271;
            }

            else
            {
              v145 = 0xE600000000000000;
              v146 = 0x646567617473;
            }

            v147 = sub_100019C8C(v146, v145, &v240);

            *(v141 + 14) = v147;
            *(v141 + 22) = 2082;
            v148 = Double.description.getter();
            v150 = sub_100019C8C(v148, v149, &v240);

            *(v141 + 24) = v150;
            _os_log_impl(&_mh_execute_header, v139, v140, "syncWithKVS calculated kvsState (source: %{public}s) is: %{public}s (kvsSetAt: %{public}s)", v141, 0x20u);
            swift_arrayDestroy();

            v72 = *(v118 + 8);
            (v72)(v226, v238);
          }

          else
          {

            v72 = *(v118 + 8);
            (v72)(v112, v238);
          }

          if ((v125 & 1) == 0)
          {
            v151 = [objc_opt_self() standardUserDefaults];
            sub_10000A7D8(0xEC00000074417465, &v240);

            if (*(&v241 + 1))
            {
              if ((swift_dynamicCast() & 1) != 0 && v57 == v239)
              {
                v152 = v214;
                static Logger.daemonLogger.getter();
                v153 = Logger.logObject.getter();
                v154 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v153, v154))
                {
                  v155 = swift_slowAlloc();
                  *&v240 = swift_slowAlloc();
                  *v155 = 136446466;
                  if (v111 == 0.0)
                  {
                    v157 = 6710895;
                    v156 = 0xE300000000000000;
                  }

                  else
                  {
                    if (*&v111 != 2)
                    {
                      v190 = v238;
                      v156 = 0xE600000000000000;
                      v157 = 0x646567617473;
                      goto LABEL_155;
                    }

                    v156 = 0xE200000000000000;
                    v157 = 28271;
                  }

                  v190 = v238;
LABEL_155:
                  v191 = sub_100019C8C(v157, v156, &v240);

                  *(v155 + 4) = v191;
                  *(v155 + 12) = 2082;
                  v192 = Double.description.getter();
                  v194 = sub_100019C8C(v192, v193, &v240);

                  *(v155 + 14) = v194;
                  _os_log_impl(&_mh_execute_header, v153, v154, "We handled the calculated KVS state before (%{public}s, skippedSetAt: %{public}s). Skipping syncWithKVS…", v155, 0x16u);
                  swift_arrayDestroy();

                  v167 = v152;
                  v168 = v190;
                  goto LABEL_156;
                }

                v167 = v152;
                v168 = v238;
LABEL_156:
                (v72)(v167, v168);
                return;
              }
            }

            else
            {
              sub_100005E54(&v240, &qword_100042500, &qword_100031EB0);
            }
          }

          v158 = [objc_opt_self() standardUserDefaults];
          *(&v241 + 1) = &type metadata for Double;
          *&v240 = v57;
          sub_10000ACC4(&v240, 0x5364657070696B73, 0xEC00000074417465);

          sub_100005E54(&v240, &qword_100042500, &qword_100031EB0);
          if ((*&v111 - 1) >= 2)
          {
            v169 = v234;
            if (v111 != 0.0)
            {
              return;
            }

            if ((*(v234 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) == 0)
            {
              type metadata accessor for LockdownModeXNU();
              if ((static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0)
              {
                *(v169 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 0;
                v180 = sub_10000B570();
                sub_100008C40();

                *(v169 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 0;
                v160 = v229;
                static Logger.daemonLogger.getter();
                v161 = Logger.logObject.getter();
                v162 = static os_log_type_t.default.getter();
                v181 = os_log_type_enabled(v161, v162);
                v164 = v238;
                if (!v181)
                {
                  goto LABEL_125;
                }

                v165 = swift_slowAlloc();
                *v165 = 0;
                goto LABEL_124;
              }
            }

            v66 = v238;
            if (v125)
            {
              v170 = v230;
              static Logger.daemonLogger.getter();
              v171 = Logger.logObject.getter();
              v172 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v171, v172))
              {
                v173 = swift_slowAlloc();
                *v173 = 0;
LABEL_135:
                _os_log_impl(&_mh_execute_header, v171, v172, v174, v173, 2u);
              }

LABEL_136:

              v167 = v170;
              v168 = v66;
              goto LABEL_156;
            }

            v175 = v231;
            static Logger.daemonLogger.getter();
            v176 = Logger.logObject.getter();
            v177 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v176, v177))
            {
              v178 = swift_slowAlloc();
              *v178 = 0;
            }

            (v72)(v175, v66);
            v179 = 0;
LABEL_151:
            sub_100011E54(v179, 0, 1);
            return;
          }

          v159 = v234;
          if (*(v234 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
          {
            v160 = v232;
            static Logger.daemonLogger.getter();
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.default.getter();
            v163 = os_log_type_enabled(v161, v162);
            v164 = v238;
            if (!v163)
            {
LABEL_125:

              v167 = v160;
              v168 = v164;
              goto LABEL_156;
            }

            v165 = swift_slowAlloc();
            *v165 = 0;
LABEL_124:
            _os_log_impl(&_mh_execute_header, v161, v162, v166, v165, 2u);

            goto LABEL_125;
          }

          v66 = v238;
          if (*(v159 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown))
          {
            v170 = v213;
            static Logger.daemonLogger.getter();
            v171 = Logger.logObject.getter();
            v172 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v171, v172))
            {
              v173 = swift_slowAlloc();
              *v173 = 0;
              v174 = "enablementPromptShown is already set. No need to show a prompt again";
              goto LABEL_135;
            }

            goto LABEL_136;
          }

          *(v159 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_enablementPromptShown) = 1;
          if (v125)
          {
            v182 = v211;
            static Logger.daemonLogger.getter();
            v183 = Logger.logObject.getter();
            v184 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v183, v184))
            {
              v185 = swift_slowAlloc();
              *v185 = 0;
              _os_log_impl(&_mh_execute_header, v183, v184, "Posting a turnOnSignIn notification…", v185, 2u);
            }

            (v72)(v182, v66);
            v179 = 1;
            goto LABEL_151;
          }

LABEL_148:
          v186 = v212;
          static Logger.daemonLogger.getter();
          v187 = Logger.logObject.getter();
          v188 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v187, v188))
          {
            v189 = swift_slowAlloc();
            *v189 = 0;
            _os_log_impl(&_mh_execute_header, v187, v188, "Posting a turnOnStateChange notification…", v189, 2u);
          }

          (v72)(v186, v66);
          v179 = 3;
          goto LABEL_151;
        }

        v126 = v221;
        static Logger.daemonLogger.getter();
        v127 = Logger.logObject.getter();
        v128 = static os_log_type_t.default.getter();
        v129 = os_log_type_enabled(v127, v128);
        v118 = v236;
        if (!v129)
        {

          (*(v118 + 8))(v126, v238);
          v57 = v74;
          goto LABEL_96;
        }

        v130 = 6710895;
        v131 = swift_slowAlloc();
        *&v240 = swift_slowAlloc();
        *v131 = 136446466;
        if (v222 == 0.0)
        {
          v132 = v125;
          v133 = 0xE300000000000000;
          v134 = 6710895;
        }

        else
        {
          v132 = v125;
          if (*&v222 == 2)
          {
            v133 = 0xE200000000000000;
            v134 = 28271;
          }

          else
          {
            v133 = 0xE600000000000000;
            v134 = 0x646567617473;
          }
        }

        v135 = sub_100019C8C(v134, v133, &v240);

        *(v131 + 4) = v135;
        *(v131 + 12) = 2082;
        if (v111 == 0.0)
        {
          v136 = 0xE300000000000000;
          v125 = v132;
        }

        else
        {
          v125 = v132;
          if (*&v111 != 2)
          {
            v137 = v221;
            v136 = 0xE600000000000000;
            v130 = 0x646567617473;
            goto LABEL_94;
          }

          v136 = 0xE200000000000000;
          v130 = 28271;
        }

        v137 = v221;
LABEL_94:
        v138 = sub_100019C8C(v130, v136, &v240);

        *(v131 + 14) = v138;
        _os_log_impl(&_mh_execute_header, v127, v128, "Latest state on other devices: %{public}s. Latest enabled state on other devices: %{public}s", v131, 0x16u);
        swift_arrayDestroy();

        (*(v118 + 8))(v137, v238);
        v57 = v74;
LABEL_95:
        v112 = v226;
        goto LABEL_96;
      }
    }

    sub_100005E54(&v240, &qword_100042500, &qword_100031EB0);
    goto LABEL_79;
  }

  v107 = v224;
  static Logger.daemonLogger.getter();
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&_mh_execute_header, v108, v109, "There's no Lockdown Mode state on other devices. Skipping syncWithKVS…", v110, 2u);
  }

  (*(v236 + 8))(v107, v58);
}

void sub_1000115B8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &aBlock - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &aBlock - v11;
  __chkstk_darwin(v10);
  v14 = &aBlock - v13;
  static Logger.daemonLogger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing device KVS state (if needed)…", v17, 2u);
  }

  v18 = *(v3 + 8);
  v18(v14, v2);
  v19 = sub_10000B64C();
  sub_10000B9AC();
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 objectForKey:v20];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    static Logger.daemonLogger.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device state is already set in KVS for this device. No need to store it again", v24, 2u);
    }

    v25 = v6;
LABEL_14:
    v18(v25, v2);
    return;
  }

  aBlock = 0u;
  v39 = 0u;
  sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
  sub_10001B1C4();
  if ((v26 & 1) == 0)
  {
    static Logger.daemonLogger.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "No Apple account available. Not setting the default device state", v37, 2u);
    }

    v25 = v9;
    goto LABEL_14;
  }

  static Logger.daemonLogger.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Synchronizing KVS state to check if device state is already stored…", v29, 2u);
  }

  v18(v12, v2);
  v30 = *&v1[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___keyValueStore];
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  v40 = sub_10001EF0C;
  v41 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v39 = sub_10000B478;
  *(&v39 + 1) = &unk_10003D748;
  v32 = _Block_copy(&aBlock);
  v33 = v30;
  v34 = v1;

  [v33 synchronizeWithCompletionHandler:v32];
  _Block_release(v32);
}

void sub_100011A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v29 - v10;
  __chkstk_darwin(v9);
  v13 = v29 - v12;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Could not synchronize to set default device state in KVS: %{public}@", v16, 0xCu);
      sub_100005E54(v17, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v19 = sub_10000BAA8();
    if (*(a2 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
    {
      if ((v19 - 1) >= 2)
      {
        sub_10000BBC8(1);
      }
    }

    else
    {
      v20 = sub_10000B64C();
      sub_10000B9AC();
      v21 = String._bridgeToObjectiveC()();

      v22 = [v20 objectForKey:v21];

      if (v22)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100005E54(v29, &qword_100042500, &qword_100031EB0);
        static Logger.daemonLogger.getter();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "Device state is already set in KVS. No need to store it again", v25, 2u);
        }

        (*(v5 + 8))(v11, v4);
      }

      else
      {
        memset(v29, 0, sizeof(v29));
        sub_100005E54(v29, &qword_100042500, &qword_100031EB0);
        sub_10000BBC8(0);
        static Logger.daemonLogger.getter();
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Set the default state in KVS for device to off", v28, 2u);
        }

        (*(v5 + 8))(v13, v4);
      }
    }
  }
}

void sub_100011E54(unsigned __int8 a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for Logger();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = "wnMode.turnOnSignIn";
  v32 = 0xD00000000000001ELL;
  if (a1 > 2u)
  {
    if (a1 != 4)
    {
      goto LABEL_8;
    }

    v10 = "wnMode.turnOffFailed";
  }

  else
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    v10 = "wnMode.turnOnPostBuddy";
    if (a1 != 1)
    {
      goto LABEL_8;
    }
  }

  if ((v10 | 0x8000000000000000) == 0x8000000100033F90)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_8:
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_15;
  }

  if (a1 == 2)
  {
    goto LABEL_14;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_15;
  }

  if (a1 == 3)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
LABEL_39:
    v34 = sub_10000B570();
    sub_100006944(a1, a2, a3 & 1);
    v29 = v34;

    return;
  }

LABEL_15:
  if (qword_100041CF8 != -1)
  {
    swift_once();
  }

  if (!off_1000441F0())
  {
    goto LABEL_39;
  }

  v14 = v3;
  static Logger.daemonLogger.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v35 = v18;
    *v17 = 136315138;
    v19 = 0x8000000100033F30;
    v20 = 0xD000000000000028;
    v21 = 0x8000000100033F00;
    if (a1 == 4)
    {
      v22 = 0xD000000000000023;
    }

    else
    {
      v22 = 0xD000000000000024;
    }

    if (a1 != 4)
    {
      v21 = 0x8000000100033ED0;
    }

    if (a1 != 3)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = v31 | 0x8000000000000000;
    v24 = 0x8000000100033F60;
    v25 = 0xD000000000000026;
    if (a1 == 1)
    {
      v25 = 0xD000000000000023;
      v24 = 0x8000000100033F90;
    }

    if (a1)
    {
      v23 = v24;
    }

    else
    {
      v25 = v32;
    }

    if (a1 <= 2u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v20;
    }

    if (a1 <= 2u)
    {
      v27 = v23;
    }

    else
    {
      v27 = v19;
    }

    v28 = sub_100019C8C(v26, v27, &v35);

    *(v17 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "Delaying %s notification because we're in Buddy…", v17, 0xCu);
    sub_100005E08(v18);
  }

  (*(v33 + 8))(v9, v34);
  *(v14 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 1;
}

void sub_100012394(uint64_t a1, int a2, int a3, int a4, int a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void (*a10)(void), uint64_t a11)
{
  v134 = a7;
  v121 = a6;
  v135 = a4;
  LODWORD(v141) = a3;
  LODWORD(v138) = a2;
  v136 = a11;
  v137 = a10;
  v139 = a9;
  ObjectType = swift_getObjectType();
  v126 = type metadata accessor for DispatchTime();
  v125 = *(v126 - 8);
  v15 = __chkstk_darwin(v126);
  v123 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v124 = &v114 - v17;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v120 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v118 = &v114 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v114 - v25;
  v26 = __chkstk_darwin(v24);
  v116 = &v114 - v27;
  v28 = __chkstk_darwin(v26);
  v127 = &v114 - v29;
  v30 = __chkstk_darwin(v28);
  v117 = &v114 - v31;
  v32 = __chkstk_darwin(v30);
  v122 = &v114 - v33;
  v34 = __chkstk_darwin(v32);
  v132 = &v114 - v35;
  v36 = __chkstk_darwin(v34);
  v119 = &v114 - v37;
  __chkstk_darwin(v36);
  v39 = &v114 - v38;
  static Logger.daemonLogger.getter();

  v40 = v11;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v140 = v19;
  v128 = a5;
  if (v43)
  {
    v129 = v18;
    v44 = a1;
    v45 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v45 = 136447746;
    v130 = v44;
    if (v44)
    {
      v46 = 28271;
    }

    else
    {
      v46 = 6710895;
    }

    if (v44)
    {
      v47 = 0xE200000000000000;
    }

    else
    {
      v47 = 0xE300000000000000;
    }

    v48 = sub_100019C8C(v46, v47, aBlock);

    *(v45 + 4) = v48;
    *(v45 + 12) = 1026;
    *(v45 + 14) = v138 & 1;
    *(v45 + 18) = 1026;
    v115 = a8;
    *(v45 + 20) = v141 & 1;
    *(v45 + 24) = 1026;
    if (a8)
    {
      v49 = 7628147;
    }

    else
    {
      v49 = 0x74657320746F6ELL;
    }

    *(v45 + 26) = a5 & 1;
    if (a8)
    {
      v50 = 0xE300000000000000;
    }

    else
    {
      v50 = 0xE700000000000000;
    }

    v51 = v139;
    *(v45 + 30) = 2082;
    v52 = sub_100019C8C(v49, v50, aBlock);

    *(v45 + 32) = v52;
    *(v45 + 40) = 1026;
    *(v45 + 42) = v51 & 1;
    *(v45 + 46) = 1026;
    v53 = v40;
    if (v40[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
    {

      v54 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v57 = static LockdownModeXNU.lockdownModeEnabled.getter();

      v54 = v57 & 1;
    }

    v58 = v140;
    *(v45 + 48) = v54;

    _os_log_impl(&_mh_execute_header, v41, v42, "Setting Lockdown Mode state to: %{public}s, forAllDevices: %{BOOL,public}d, includePaired: %{BOOL,public}d, setRestrictions: %{BOOL,public}d, passcode: %{public}s, skipAccount: %{BOOL,public}d. Current state: %{BOOL,public}d", v45, 0x34u);
    swift_arrayDestroy();

    v59 = v39;
    v55 = v129;
    v138 = *(v58 + 8);
    v138(v59, v129);
    a1 = v130;
    v56 = v115;
  }

  else
  {

    v138 = *(v19 + 8);
    v138(v39, v18);
    v55 = v18;
    v53 = v40;
    v56 = a8;
  }

  if (v135)
  {
    v60 = a1;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v62 = objc_opt_self();
    v63 = [v62 bundleForClass:ObjCClassFromMetadata];
    v143._object = 0xEC000000656D616ELL;
    v64._countAndFlagsBits = 0x4E574F444B434F4CLL;
    v64._object = 0xED000045444F4D5FLL;
    v143._countAndFlagsBits = 0x2065727574616546;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, 0, v63, v65, v143);

    v67 = [v62 bundleForClass:ObjCClassFromMetadata];
    v144._object = 0xEB00000000656C74;
    v68._countAndFlagsBits = 0x41505F5245544E45;
    v68._object = 0xEE0045444F435353;
    v144._countAndFlagsBits = 0x6974207472656C41;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v68, 0, v67, v69, v144);

    v74 = sub_100022A10(v66._countAndFlagsBits, v66._object, v70._countAndFlagsBits, v70._object, v134, v56);

    a1 = v60;
    v71 = v141;
    if (!v74)
    {
      v75 = v119;
      static Logger.daemonLogger.getter();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "Could not get authentication context. Unknown error", v78, 2u);
      }

      v138(v75, v55);
      sub_10001EC70();
      v79 = swift_allocError();
      *v80 = 0;
      *(v80 + 8) = 0;
      *(v80 + 16) = 2;
      (v137)(v79);

      return;
    }
  }

  else
  {
    v74 = 0;
    v71 = v141;
  }

  if ((v139 & 1) == 0)
  {
    sub_10001B1C4();
    v72 = v73;
    if ((v71 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v72 = 0;
  if (v71)
  {
LABEL_26:
    sub_100013B28(a1 & 1);
  }

LABEL_27:
  sub_1000233AC(a1 & 1, v74);
  v139 = v72;
  v53[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] = a1 & 1;
  v81 = sub_10002B110();
  v129 = v55;
  v130 = a1;
  v141 = v81;
  if (v128)
  {
    if (a1)
    {
      sub_100027E54();
    }

    v82 = v74;
    v83 = v137;
    if (v121)
    {
      v84 = v121;
    }

    else
    {
      v84 = &_swiftEmptyArrayStorage;
    }

    sub_100027134(a1 & 1, v84);
  }

  else
  {
    v82 = v74;
    v83 = v137;
  }

  v85 = objc_opt_self();
  v86 = [v85 standardUserDefaults];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  static Constants.userDefaultsKey.getter();
  v88 = String._bridgeToObjectiveC()();

  [v86 setObject:isa forKey:v88 inDomain:NSGlobalDomain];

  v89 = v130;
  v90 = [v85 standardUserDefaults];
  [v90 synchronize];

  v91 = [v85 standardUserDefaults];
  sub_10000AAA0(0x5364657070696B73, 0xEC00000074417465);

  v92 = v83;
  v93 = v129;
  v94 = v82;
  if ((v128 & 1) != 0 && (v89 & 1) == 0)
  {
    sub_100028210();
  }

  if (v139)
  {
    v95 = v92;
    v137 = v82;
    sub_10000BBC8(v89 & 1);
    v96 = dispatch_semaphore_create(0);
    v97 = v122;
    static Logger.daemonLogger.getter();
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 67240192;
      *(v100 + 4) = v89 & 1;
      _os_log_impl(&_mh_execute_header, v98, v99, "Synchronizing the new state with KVS… (enabled: %{BOOL,public}d)", v100, 8u);
    }

    v138(v97, v93);
    v101 = sub_10000B64C();
    v102 = swift_allocObject();
    *(v102 + 16) = v96;
    aBlock[4] = sub_100022558;
    aBlock[5] = v102;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000B478;
    aBlock[3] = &unk_10003DBD0;
    v103 = _Block_copy(aBlock);
    v104 = v96;

    [v101 synchronizeWithCompletionHandler:v103];
    _Block_release(v103);

    v105 = v123;
    static DispatchTime.now()();
    v106 = v124;
    + infix(_:_:)();
    v107 = *(v125 + 8);
    v108 = v126;
    v107(v105, v126);
    OS_dispatch_semaphore.wait(timeout:)();
    v107(v106, v108);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v109 = v117;
      static Logger.daemonLogger.getter();
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      v112 = os_log_type_enabled(v110, v111);
      v94 = v137;
      if (v112)
      {
        v113 = swift_slowAlloc();
        *v113 = 0;
        _os_log_impl(&_mh_execute_header, v110, v111, "Could not synchronize after setting key in KVS in setEnabled. Waited too long. Continuing anyways…", v113, 2u);
      }

      else
      {
      }

      v138(v109, v93);
    }

    else
    {

      v94 = v137;
    }

    v92 = v95;
  }

  (v92)(0);
}

Swift::Int sub_100013968(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not synchronize after setting key in KVS in setEnabled: %{public}@. Continuing anyways…", v8, 0xCu);
      sub_100005E54(v9, &qword_100042158, qword_100031C60);
    }

    (*(v3 + 8))(v5, v2);
  }

  return OS_dispatch_semaphore.signal()();
}

void sub_100013B28(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000B6F8();
  v10 = sub_10002D9C8();

  if (v10)
  {
    static Logger.daemonLogger.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = v2;
      *v13 = 67240192;
      *(v13 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "Sending setState message to Watch… (enabled: %{BOOL,public}d)", v13, 8u);
    }

    (*(v6 + 8))(v8, v5);
    v14 = *(v3 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer____lazy_storage___idsManager);
    sub_100003BC8(&qword_1000425F8, &unk_100032108);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100031EA0;
    v19 = 1701869940;
    v20 = 0xE400000000000000;
    v16 = v14;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = 0;
    v19 = 0x64656C62616E65;
    v20 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for Bool;
    *(inited + 144) = a1 & 1;
    v17 = sub_100003F00(inited);
    swift_setDeallocating();
    sub_100003BC8(&qword_100041DE0, &unk_1000314F0);
    swift_arrayDestroy();
    sub_10002DB30(v17, v10);
  }
}

uint64_t sub_100013DF4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138543362;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not migrate from NSUserDefaults. Failed to turn on Lockdown Mode: %{public}@", v10, 0xCu);
      sub_100005E54(v11, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_100013FC8(void *a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemonLogger.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, a2, v11, 0xCu);
    sub_100005E54(v12, &qword_100042158, qword_100031C60);
  }

  return (*(v5 + 8))(v7, v4);
}

void LockdownModeServer.setEnabled(enabled:options:completion:)(int a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v106 = a3;
  v107 = a4;
  v104 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v90 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v90 - v14;
  v16 = __chkstk_darwin(v13);
  v103 = &v90 - v17;
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v20 = [objc_opt_self() currentConnection];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  v101 = v15;
  v102 = v12;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 valueForEntitlement:v22];

  if (v23)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v111 = 0u;
    v112 = 0u;
  }

  v110[0] = v111;
  v110[1] = v112;
  if (!*(&v112 + 1))
  {

    sub_100005E54(v110, &qword_100042500, &qword_100031EB0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0 || v108 != 1)
  {

LABEL_16:
    static Logger.daemonLogger.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v110[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v110);
      _os_log_impl(&_mh_execute_header, v29, v30, "Client is missing entitlement: %s", v31, 0xCu);
      sub_100005E08(v32);
    }

    (*(v6 + 8))(v9, v5);
    sub_10001EC70();
    swift_allocError();
    *v33 = 0xD00000000000002ALL;
    *(v33 + 8) = 0x80000001000342C0;
    *(v33 + 16) = 0;
    v106();
    goto LABEL_19;
  }

  if (!a2)
  {
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v111 = 0u;
    v112 = 0u;
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v99 = 0;
    v96 = 0;
    v95 = 0;
    v98 = 0;
    v111 = 0u;
    v112 = 0u;
    LODWORD(a2) = 1;
    v94 = 1;
    LOBYTE(v28) = 1;
    LOBYTE(v25) = v104;
LABEL_83:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v100 = 0;
    if (v25)
    {
      goto LABEL_88;
    }

    goto LABEL_84;
  }

  v108 = static Constants.stateOptionReboot.getter();
  v109 = v24;
  AnyHashable.init<A>(_:)();
  LOBYTE(v25) = v104;
  if (!*(a2 + 16) || (v26 = sub_10001A2E8(v110), (v27 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_21;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v26, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_21:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_22;
  }

  if (!swift_dynamicCast())
  {
LABEL_22:
    LODWORD(v28) = 1;
    goto LABEL_23;
  }

  LODWORD(v28) = LOBYTE(v110[0]);
LABEL_23:
  v108 = static Constants.stateOptionPasscode.getter();
  v109 = v34;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v35 = sub_10001A2E8(v110), (v36 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_33;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v35, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_33:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    v99 = 0;
    v96 = 0;
    goto LABEL_34;
  }

  v37 = swift_dynamicCast();
  v38 = *&v110[0];
  if (!v37)
  {
    v38 = 0;
  }

  v96 = v38;
  if (v37)
  {
    v39 = *(&v110[0] + 1);
  }

  else
  {
    v39 = 0;
  }

  v99 = v39;
LABEL_34:
  v108 = static Constants.stateOptionAllDevices.getter();
  v109 = v40;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v41 = sub_10001A2E8(v110), (v42 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_40;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v41, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_40:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_41;
  }

  if (!swift_dynamicCast())
  {
LABEL_41:
    v95 = 0;
    goto LABEL_42;
  }

  v95 = LOBYTE(v110[0]);
LABEL_42:
  v108 = static Constants.stateOptionIncludePaired.getter();
  v109 = v43;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v44 = sub_10001A2E8(v110), (v45 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_48;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v44, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_48:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_49;
  }

  if (!swift_dynamicCast())
  {
LABEL_49:
    v46 = 1;
    goto LABEL_50;
  }

  v46 = LOBYTE(v110[0]);
LABEL_50:
  v94 = v46;
  v108 = static Constants.stateOptionAcknowledgementOnly.getter();
  v109 = v47;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v48 = sub_10001A2E8(v110), (v49 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_56;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v48, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_56:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_57;
  }

  if (!swift_dynamicCast())
  {
LABEL_57:
    v98 = 0;
    goto LABEL_58;
  }

  v98 = LOBYTE(v110[0]);
LABEL_58:
  v108 = static Constants.stateOptionRequireAuthentication.getter();
  v109 = v50;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v51 = sub_10001A2E8(v110), (v52 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_64;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v51, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_64:
    sub_100005E54(&v111, &qword_100042500, &qword_100031EB0);
    goto LABEL_65;
  }

  if (!swift_dynamicCast())
  {
LABEL_65:
    v53 = 1;
    goto LABEL_66;
  }

  v53 = LOBYTE(v110[0]);
LABEL_66:
  v93 = v53;
  v108 = static Constants.stateOptionExcludeRestrictions.getter();
  v109 = v54;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v55 = sub_10001A2E8(v110), (v56 & 1) == 0))
  {
    sub_10001ECCC(v110);
    v111 = 0u;
    v112 = 0u;
    goto LABEL_81;
  }

  sub_100005DA4(*(a2 + 56) + 32 * v55, &v111);
  sub_10001ECCC(v110);
  if (!*(&v112 + 1))
  {
LABEL_81:
    LODWORD(a2) = v93;
    goto LABEL_83;
  }

  sub_100003BC8(&qword_100042518, &qword_100031EB8);
  if (swift_dynamicCast())
  {
    v92 = v28;
    v28 = 0;
    v57 = *&v110[0];
    v97 = *(*&v110[0] + 16);
    v58 = *&v110[0] + 40;
    v100 = &_swiftEmptyArrayStorage;
    v91 = *&v110[0] + 40;
LABEL_71:
    v59 = (v58 + 16 * v28);
    while (1)
    {
      if (v97 == v28)
      {

        LOBYTE(v25) = v104;
        LOBYTE(v28) = v92;
        goto LABEL_107;
      }

      if (v28 >= *(v57 + 16))
      {
        break;
      }

      ++v28;
      v60 = v59 + 2;
      v25 = *(v59 - 1);
      v61 = *v59;

      v62._countAndFlagsBits = v25;
      v62._object = v61;
      a2 = _findStringSwitchCase(cases:string:)(&off_10003D178, v62);

      v59 = v60;
      if (a2 < 8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_100019B98(0, *(v100 + 2) + 1, 1, v100);
        }

        v64 = *(v100 + 2);
        v63 = *(v100 + 3);
        v25 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v100 = sub_100019B98((v63 > 1), v64 + 1, 1, v100);
        }

        v65 = v100;
        *(v100 + 2) = v25;
        v65[v64 + 32] = a2;
        v58 = v91;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_110:
    swift_once();
LABEL_96:
    v74 = off_1000441F0();
    v75 = v74;
    if ((v25 & 1) != 0 && v74)
    {
      v76 = a2;
      static Logger.daemonLogger.getter();
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "Client requested to turn on Lockdown Mode while in Buddy. Clearing all notifications…", v79, 2u);
      }

      (*(v6 + 8))(v102, v5);
      v105[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
      v80 = sub_10000B570();
      sub_100008C40();

      LODWORD(a2) = v76;
    }

    v81 = swift_allocObject();
    *(v81 + 16) = v106;
    *(v81 + 24) = v107;
    v82 = v25 & 1;
    *(v81 + 32) = v25 & 1;
    *(v81 + 33) = v75;
    v83 = v105;
    *(v81 + 40) = v105;
    *(v81 + 48) = v28;

    v84 = v83;
    sub_100012394(v82, v95, v94, a2, 1, v100, v96, v99, 0, sub_10001ECC8, v81);

    return;
  }

  v100 = 0;
LABEL_107:
  LODWORD(a2) = v93;
  if ((v25 & 1) == 0)
  {
LABEL_84:
    if ((a2 & 1) == 0)
    {
      static Logger.daemonLogger.getter();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Client requested to turn off Lockdown Mode without authentication. Ignoring override…", v68, 2u);
      }

      (*(v6 + 8))(v19, v5);
      LODWORD(a2) = 1;
    }
  }

LABEL_88:
  if (!v98)
  {
    if (qword_100041CF8 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_110;
  }

  if (v25 & 1) != 0 || (v105[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
  {
    v69 = v101;
    static Logger.daemonLogger.getter();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Client requested acknowledgementOnly but Lockdown Mode is either already on or client wants to turn it on. Ignoring acknowledgementOnly…", v72, 2u);
    }

    (*(v6 + 8))(v69, v5);
    sub_10001EC70();
    swift_allocError();
    *v73 = 0;
    *(v73 + 8) = 0;
    *(v73 + 16) = 2;
    v106();

LABEL_19:

    return;
  }

  v85 = v103;
  static Logger.daemonLogger.getter();
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "Client requested acknowledgementOnly. Clearing Lockdown Mode notifications…", v88, 2u);
  }

  (*(v6 + 8))(v85, v5);
  v105[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt] = 0;
  v89 = sub_10000B570();
  sub_100008C40();

  (v106)(0);
}

uint64_t sub_100015110(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, char a4, char a5, uint64_t a6, char a7)
{
  v54 = a3;
  v55 = a2;
  v53 = type metadata accessor for Logger();
  v12 = *(v53 - 8);
  v13 = __chkstk_darwin(v53);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v52 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v52 - v20;
  __chkstk_darwin(v19);
  v23 = &v52 - v22;
  if (!a1)
  {
    if (a5)
    {
      v28 = 0;
    }

    else
    {
      v28 = 2;
    }

    sub_10002CCE4(a4 & 1, v28);
    *(a6 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer_pendingEnablementPrompt) = 0;
    v29 = sub_10000B570();
    sub_100008C40();

    static Logger.daemonLogger.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v56 = v33;
      *v32 = 136446210;
      if (a4)
      {
        v34 = 28271;
      }

      else
      {
        v34 = 6710895;
      }

      if (a4)
      {
        v35 = 0xE200000000000000;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_100019C8C(v34, v35, &v56);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully set the Lockdown Mode state to %{public}s", v32, 0xCu);
      sub_100005E08(v33);
    }

    v37 = *(v12 + 8);
    v38 = v53;
    v37(v23, v53);
    if (a7)
    {
      static Logger.daemonLogger.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "Rebooting…", v41, 2u);
      }

      v37(v21, v38);
      sub_10002C7F4(0xD000000000000016, 0x80000001000347D0);
    }

    v42 = 0;
    return v55(v42);
  }

  v59 = a1;
  swift_errorRetain();
  sub_100003BC8(&unk_100042360, qword_100031DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v56 = v47;
      *v45 = 136446466;
      if (a4)
      {
        v48 = 28271;
      }

      else
      {
        v48 = 6710895;
      }

      if (a4)
      {
        v49 = 0xE200000000000000;
      }

      else
      {
        v49 = 0xE300000000000000;
      }

      v50 = sub_100019C8C(v48, v49, &v56);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2114;
      swift_errorRetain();
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 14) = v51;
      *v46 = v51;
      _os_log_impl(&_mh_execute_header, v43, v44, "Could not set the Lockdown Mode state to %{public}s: %{public}@", v45, 0x16u);
      sub_100005E54(v46, &qword_100042158, qword_100031C60);

      sub_100005E08(v47);
    }

    (*(v12 + 8))(v15, v53);
    v42 = a1;
    return v55(v42);
  }

  if (v58 != 2 || v56 != 1 || v57)
  {
    sub_1000225A8(v56, v57, v58);
    goto LABEL_26;
  }

  static Logger.daemonLogger.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Cancelled setting Lockdown Mode state", v26, 2u);
  }

  (*(v12 + 8))(v18, v53);
  v55(0);
  return sub_1000225A8(1, 0, 2u);
}

void sub_100015778(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void LockdownModeServer.getEnabledInAccount(synchronize:completion:)(int a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v35[-v12];
  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {
    v15 = v14;
    v36 = a1;
    v37 = v3;
    v16 = a2;
    v17 = a3;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v15 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    aBlock = v43;
    v39 = v44;
    v20 = v17;
    a2 = v16;
    if (*(&v44 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v42 == 1)
      {
        if (v36)
        {
          v21 = v37;
          static Logger.daemonLogger.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Client requested to fetch the state from KVS…", v24, 2u);
          }

          (*(v8 + 8))(v13, v7);
          v25 = v21;
          v26 = sub_10000B64C();
          v27 = swift_allocObject();
          v27[2] = v16;
          v27[3] = v20;
          v27[4] = v21;
          v40 = sub_10001ED20;
          v41 = v27;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v39 = sub_10000B478;
          *(&v39 + 1) = &unk_10003D5F0;
          v28 = _Block_copy(&aBlock);

          v29 = v25;

          [v26 synchronizeWithCompletionHandler:v28];
          _Block_release(v28);
        }

        else
        {
          v34 = sub_10000BEBC();
          v16(v34 & 1);
        }

        return;
      }
    }

    else
    {

      sub_100005E54(&aBlock, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&aBlock = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, &aBlock);
    _os_log_impl(&_mh_execute_header, v30, v31, "Client is missing entitlement: %s", v32, 0xCu);
    sub_100005E08(v33);
  }

  (*(v8 + 8))(v11, v7);
  a2(0);
}

uint64_t sub_100015C54(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v17 = a2;
      v11 = v10;
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "Could not synchronize state with KVS: %@", v11, 0xCu);
      sub_100005E54(v12, &qword_100042158, qword_100031C60);

      a2 = v17;
    }

    (*(v5 + 8))(v7, v4);
  }

  v14 = sub_10000BEBC();
  return a2(v14 & 1);
}

void LockdownModeServer.notifyRestrictionChanged(_:completion:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v6 = type metadata accessor for Logger();
  v55 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v51 - v11;
  __chkstk_darwin(v10);
  v14 = &v51 - v13;
  if (qword_100041CF0 != -1)
  {
    swift_once();
  }

  v15 = static RestrictionsManager.shared;
  v16 = [objc_opt_self() currentConnection];

  v62._countAndFlagsBits = a1;
  v62._object = a2;
  v17 = _s13lockdownmoded19RestrictionsManagerC14RestrictionKeyO8rawValueAESgSS_tcfC_0(v62);
  if (v17 == 8)
  {
    goto LABEL_11;
  }

  v18 = v17;
  swift_beginAccess();
  v19 = *(v15 + 24);
  if (!*(v19 + 16))
  {
    goto LABEL_11;
  }

  v20 = sub_10001A480(v18);
  if ((v21 & 1) == 0)
  {

LABEL_11:
    sub_10001EC70();
    v32 = swift_allocError();
    *v33 = a1;
    *(v33 + 8) = a2;
    *(v33 + 16) = 1;

    (v57)(v32);

    return;
  }

  v22 = *(*(v19 + 56) + 8 * v20);

  v23 = v22;
  v24 = *(v22 + 128);
  if (v24)
  {
    v54 = v23;
    v25 = *(v23 + 120);
    *&v60 = 0xD000000000000020;
    *(&v60 + 1) = 0x80000001000342F0;

    v26._countAndFlagsBits = v25;
    v26._object = v24;
    String.append(_:)(v26);

    v28 = *(&v60 + 1);
    v27 = v60;
    if (v16)
    {
      v29 = v16;
      v53 = v27;
      v30 = String._bridgeToObjectiveC()();
      v31 = [v29 valueForEntitlement:v30];
      v52 = v29;

      if (v31)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        if (swift_dynamicCast())
        {
          v27 = v53;
          if (v58 != 1)
          {
            goto LABEL_33;
          }

LABEL_28:

          if (*(v54 + 112))
          {
            static Logger.daemonLogger.getter();
            v42 = Logger.logObject.getter();
            v43 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Restriction is already set to changed. No need to update", v44, 2u);
            }

            (*(v55 + 8))(v14, v6);
          }

          else
          {
            *(v54 + 112) = 1;
            sub_100027E54();
          }

          (v57)(0);

          goto LABEL_36;
        }
      }

      else
      {
        sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
      }

      v40 = String._bridgeToObjectiveC()();
      v41 = [v52 valueForEntitlement:v40];

      if (v41)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v27 = v53;
      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        if (swift_dynamicCast() & 1) != 0 && (v58)
        {
          goto LABEL_28;
        }

LABEL_33:
        static Logger.daemonLogger.getter();

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = v27;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v60 = v49;
          *v48 = 136315138;
          *(v48 + 4) = sub_100019C8C(v47, v28, &v60);
          _os_log_impl(&_mh_execute_header, v45, v46, "Client is missing entitlement: %s", v48, 0xCu);
          sub_100005E08(v49);

          v27 = v47;
        }

        (*(v55 + 8))(v12, v6);
        sub_10001EC70();
        swift_allocError();
        *v50 = v27;
        *(v50 + 8) = v28;
        *(v50 + 16) = 0;
        v57();

LABEL_36:

        return;
      }
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
      v60 = 0u;
      v61 = 0u;
    }

    sub_100005E54(&v60, &qword_100042500, &qword_100031EB0);
    goto LABEL_33;
  }

  static Logger.daemonLogger.getter();

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v60 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_100019C8C(a1, a2, &v60);
    _os_log_impl(&_mh_execute_header, v34, v35, "Could not update restriction because it is not set as updatable: %s", v36, 0xCu);
    sub_100005E08(v37);
  }

  (*(v55 + 8))(v9, v6);
  sub_10001EC70();
  v38 = swift_allocError();
  *v39 = a1;
  *(v39 + 8) = a2;
  *(v39 + 16) = 1;

  (v57)(v38);
}

void LockdownModeServer.enableIfNeeded(reboot:completion:)(int a1, void (*a2)(void, uint64_t), uint64_t a3)
{
  v34 = a3;
  v35 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v33 = a1;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

    v32 = v3;
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast() && (v36 & 1) != 0)
      {
LABEL_16:
        static Logger.daemonLogger.getter();
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        v20 = os_log_type_enabled(v18, v19);
        v21 = v33;
        if (v20)
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v21 & 1;
          _os_log_impl(&_mh_execute_header, v18, v19, "Client requested to enableIfNeeded (reboot: %{BOOL}d)", v22, 8u);
        }

        (*(v6 + 8))(v11, v5);
        v23 = v34;

        v24 = v32;
        sub_10001C190(0, v24, v35, v23, v24, v21 & 1);

        return;
      }
    }

    else
    {
      sub_100005E54(&v39, &qword_100042500, &qword_100031EB0);
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 valueForEntitlement:v16];

    if (v17)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    v39 = v37;
    v40 = v38;
    if (*(&v38 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v36)
      {
        goto LABEL_16;
      }
    }

    else
    {

      sub_100005E54(&v39, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v39 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v39);
    _os_log_impl(&_mh_execute_header, v25, v26, "Client is missing entitlement: %s", v27, 0xCu);
    sub_100005E08(v28);
  }

  (*(v6 + 8))(v9, v5);
  sub_10001EC70();
  v29 = swift_allocError();
  *v30 = 0xD000000000000027;
  *(v30 + 8) = 0x8000000100034320;
  *(v30 + 16) = 0;
  v35(0, v29);
}

uint64_t sub_100016B84(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, char a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    type metadata accessor for LockdownModeXNU();
    if (static LockdownModeXNU.lockdownModeEnabled.getter())
    {
      v20 = 0;
LABEL_12:
      v18 = v20 & 1;
      v19 = 0;
      return a2(v18, v19);
    }

    if (*(a4 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled))
    {
      v20 = 1;
    }

    else
    {
      v20 = static LockdownModeXNU.lockdownModeEnabled.getter();
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (a5)
    {
      sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034790);
      v20 = 1;
    }

    goto LABEL_12;
  }

  static Logger.daemonLogger.getter();
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v17;
    *v16 = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "Could not enableIfNeeded: %@", v15, 0xCu);
    sub_100005E54(v16, &qword_100042158, qword_100031C60);
  }

  (*(v10 + 8))(v12, v9);
  v18 = 0;
  v19 = a1;
  return a2(v18, v19);
}

void sub_100016DE4(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_100016E6C(char a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t LockdownModeServer.migrateIfNeeded(completion:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 valueForEntitlement:v14];

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

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v26 == 1)
      {
        static Logger.daemonLogger.getter();
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, v17, "Client requested to migrateIfNeeded", v18, 2u);
        }

        (*(v6 + 8))(v11, v5);

        sub_10001DB20(1, v3, v25, a2);
      }
    }

    else
    {

      sub_100005E54(v29, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v29[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, v29);
    _os_log_impl(&_mh_execute_header, v20, v21, "Client is missing entitlement: %s", v22, 0xCu);
    sub_100005E08(v23);
  }

  (*(v6 + 8))(v9, v5);
  sub_10001EC70();
  swift_allocError();
  *v24 = 0xD000000000000027;
  *(v24 + 8) = 0x8000000100034320;
  *(v24 + 16) = 0;
  (v25)();
}

uint64_t sub_1000172C8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      v10 = v8;
      goto LABEL_9;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v15;
    *v14 = v15;
    _os_log_impl(&_mh_execute_header, v11, v12, "Could not migrateIfNeeded: %@", v13, 0xCu);
    sub_100005E54(v14, &qword_100042158, qword_100031C60);

    v10 = v8;
  }

  else
  {
    static Logger.daemonLogger.getter();
    v11 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v16))
    {
      a1 = 0;
      goto LABEL_9;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v11, v16, "Successfully ran migrateIfNeeded", v17, 2u);
    a1 = 0;
  }

LABEL_9:

  (*(v5 + 8))(v10, v4);
  return a2(a1);
}

void LockdownModeServer.rebootIfNeeded(completion:)(void (*a1)(void), uint64_t a2)
{
  v43 = a2;
  v4 = type metadata accessor for Logger();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = [objc_opt_self() currentConnection];
  if (v16)
  {
    v17 = v16;
    v39 = v2;
    v40 = a1;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast() && (v44 & 1) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100005E54(&v47, &qword_100042500, &qword_100031EB0);
    }

    v20 = String._bridgeToObjectiveC()();
    v21 = [v17 valueForEntitlement:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    v47 = v45;
    v48 = v46;
    a1 = v40;
    if (*(&v46 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v44)
        {
LABEL_16:
          static Logger.daemonLogger.getter();
          v22 = Logger.logObject.getter();
          v23 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v22, v23, "Checking if a reboot is needed…", v24, 2u);
          }

          v25 = v42;
          v26 = *(v41 + 8);
          v26(v15, v42);
          if (qword_100041CF0 != -1)
          {
            swift_once();
          }

          v27 = v40;
          if (*(static RestrictionsManager.shared + 32) == 1 && ((*(v39 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) != 0) || (static LockdownModeXNU.lockdownModeEnabled.getter() & 1) == 0))
          {
            static Logger.daemonLogger.getter();
            v36 = Logger.logObject.getter();
            v37 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              *v38 = 0;
              _os_log_impl(&_mh_execute_header, v36, v37, "Lockdown Mode was turned on by a migrator. Rebooting…", v38, 2u);
            }

            v26(v13, v25);
            sub_10002C7F4(0xD00000000000001ALL, 0x8000000100034350);
          }

          else
          {
            static Logger.daemonLogger.getter();
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v28, v29, "Lockdown Mode was not turned on by a migrator. No need to reboot", v30, 2u);
            }

            v26(v10, v25);
          }

          (v27)(0);

          return;
        }

        a1 = v40;
      }

      else
      {
      }
    }

    else
    {

      sub_100005E54(&v47, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v47 = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_100019C8C(0xD000000000000027, 0x8000000100034320, &v47);
    _os_log_impl(&_mh_execute_header, v31, v32, "Client is missing entitlement: %s", v33, 0xCu);
    sub_100005E08(v34);
  }

  (*(v41 + 8))(v7, v42);
  sub_10001EC70();
  swift_allocError();
  *v35 = 0xD000000000000027;
  *(v35 + 8) = 0x8000000100034320;
  *(v35 + 16) = 0;
  a1();
}

void sub_100017C18(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_100017C94(uint64_t a1, char a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Could not turn on Lockdown Mode due to an error: %@", v13, 0xCu);
      sub_100005E54(v14, &qword_100042158, qword_100031C60);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    if ((a2 - 1) >= 3u)
    {
      static Logger.daemonLogger.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unhandled category", v18, 2u);
      }

      (*(v5 + 8))(v10, v4);
    }

    else
    {
      sub_10002CCE4(1, 0x40301u >> (8 * ((a2 - 1) & 0x1F)));
    }

    sub_10002C7F4(0xD00000000000001DLL, 0x80000001000347B0);
  }
}

void sub_100017F40()
{
  v46 = type metadata accessor for Logger();
  v1 = *(v46 - 8);
  v2 = __chkstk_darwin(v46);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v43 = &v42 - v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - v7;
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  v11 = sub_100003BC8(&qword_1000425F0, &qword_100032100);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 getActivePairedDevice];
  v19 = v18;
  if (!v17)
  {
    goto LABEL_15;
  }

  v45 = v1;
  if (v18)
  {
    v20 = v0;
    v21 = v17;
    v22 = v19;
    v23 = [v19 pairingID];
    if (v23)
    {
      v24 = v23;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 56))(v14, 0, 1, v25);
    }

    else
    {
      v25 = type metadata accessor for UUID();
      (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
    }

    sub_10001EE9C(v14, v16);
    type metadata accessor for UUID();
    v29 = *(v25 - 8);
    isa = 0;
    if ((*(v29 + 48))(v16, 1, v25) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v29 + 8))(v16, v25);
    }
  }

  else
  {
    v22 = 0;
    v20 = v0;
    v26 = type metadata accessor for UUID();
    (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    v27 = v17;
    isa = 0;
  }

  v30 = [v17 hasCompletedInitialSyncForPairingID:isa];

  v31 = v20;
  v19 = v22;
  v1 = v45;
  if (v30)
  {
    if (*(v31 + OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled) & 1) != 0 || (type metadata accessor for LockdownModeXNU(), (static LockdownModeXNU.lockdownModeEnabled.getter()))
    {
      static Logger.daemonLogger.getter();
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "deviceIsSetup called. Turning on Lockdown Mode on paired device (if not Tinker)…", v34, 2u);
        v1 = v45;
      }

      (*(v1 + 8))(v8, v46);
      sub_100013B28(1);
    }

    else
    {
      v38 = v43;
      static Logger.daemonLogger.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&_mh_execute_header, v39, v40, "deviceIsSetup called but Lockdown Mode is off. No action needed", v41, 2u);
      }

      else
      {
      }

      (*(v1 + 8))(v38, v46);
    }
  }

  else
  {
LABEL_15:
    static Logger.daemonLogger.getter();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "deviceIsSetup called but paired device hasn't completed initial sync. Skipping for now…", v37, 2u);
    }

    else
    {
    }

    (*(v1 + 8))(v10, v46);
  }
}

void LockdownModeServer.setManagedConfigurationState(enabled:completion:)(int a1, void (*a2)(void), uint64_t a3)
{
  v35 = a3;
  v36 = type metadata accessor for Logger();
  v5 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    LODWORD(v34) = a1;
    v17 = a2;
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 valueForEntitlement:v18];

    if (v19)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
    }

    v40[0] = v38;
    v40[1] = v39;
    a2 = v17;
    if (*(&v39 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v37 == 1)
      {
        static Logger.daemonLogger.getter();
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 67109120;
          *(v22 + 4) = v34 & 1;
          _os_log_impl(&_mh_execute_header, v20, v21, "Client requested to set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v22, 8u);
        }

        v23 = *(v5 + 8);
        v23(v14, v36);
        if (qword_100041CF0 != -1)
        {
          swift_once();
        }

        v24 = v34;
        sub_10002B764(v34 & 1);
        static Logger.daemonLogger.getter();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 67109120;
          *(v32 + 4) = v24 & 1;
          _os_log_impl(&_mh_execute_header, v30, v31, "Successfully set the managed configuration value: lockdownModeEnabled=%{BOOL}d", v32, 8u);
        }

        v23(v12, v36);
        (v17)(0);

        return;
      }
    }

    else
    {

      sub_100005E54(v40, &qword_100042500, &qword_100031EB0);
    }
  }

  static Logger.daemonLogger.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v40[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_100019C8C(0xD00000000000002ALL, 0x80000001000342C0, v40);
    _os_log_impl(&_mh_execute_header, v25, v26, "Client is missing entitlement: %s", v27, 0xCu);
    sub_100005E08(v28);
  }

  (*(v5 + 8))(v8, v36);
  sub_10001EC70();
  swift_allocError();
  *v29 = 0xD00000000000002ALL;
  *(v29 + 8) = 0x80000001000342C0;
  *(v29 + 16) = 0;
  a2();
}

void sub_100018D48(uint64_t a1)
{
  v76 = type metadata accessor for Logger();
  v2 = *(v76 - 8);
  v3 = __chkstk_darwin(v76);
  v73 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v71 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v71 - v9;
  v11 = __chkstk_darwin(v8);
  v74 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v72 = &v71 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v71 - v19;
  __chkstk_darwin(v18);
  v22 = &v71 - v21;
  static Logger.daemonLogger.getter();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Received IDS message", v25, 2u);
  }

  v26 = *(v2 + 8);
  v27 = v76;
  v26(v22, v76);
  v77 = 1701869940;
  v78 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v28 = sub_10001A2E8(v79), (v29 & 1) == 0))
  {
    sub_10001ECCC(v79);
LABEL_19:
    static Logger.daemonLogger.getter();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = v27;
      v47 = swift_slowAlloc();
      v48 = v26;
      v49 = swift_slowAlloc();
      v79[0] = v49;
      *v47 = 136446210;
      v50 = Dictionary.description.getter();
      v52 = sub_100019C8C(v50, v51, v79);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Incoming message is missing a type: %{public}s", v47, 0xCu);
      sub_100005E08(v49);

      v48(v7, v46);
      return;
    }

    v53 = v7;
LABEL_22:
    v26(v53, v27);
    return;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v28, v80);
  sub_10001ECCC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v77 == 1)
  {
    v54 = v26;
    static Logger.daemonLogger.getter();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
    }

    v54(v10, v27);
    if (v75[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled])
    {
      v58 = 1;
    }

    else
    {
      type metadata accessor for LockdownModeXNU();
      v58 = static LockdownModeXNU.lockdownModeEnabled.getter();
    }

    sub_100013B28(v58 & 1);
    return;
  }

  if (v77)
  {
    goto LABEL_19;
  }

  v30 = v26;
  static Logger.daemonLogger.getter();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    v27 = v76;
  }

  v26 = v30;
  v30(v20, v27);
  v77 = 0x64656C62616E65;
  v78 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  v34 = v74;
  if (!*(a1 + 16) || (v35 = sub_10001A2E8(v79), (v36 & 1) == 0))
  {
    sub_10001ECCC(v79);
    goto LABEL_29;
  }

  sub_100005DA4(*(a1 + 56) + 32 * v35, v80);
  sub_10001ECCC(v79);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    static Logger.daemonLogger.getter();

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v79[0] = v62;
      *v61 = 136446210;
      v63 = Dictionary.description.getter();
      v65 = v27;
      v66 = sub_100019C8C(v63, v64, v79);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Incoming setState message is invalid: %{public}s", v61, 0xCu);
      sub_100005E08(v62);

      v30(v34, v65);
      return;
    }

    v53 = v34;
    goto LABEL_22;
  }

  v37 = v77;
  v38 = v75;
  if (v75[OBJC_IVAR____TtC13lockdownmoded18LockdownModeServer__cachedEnabled] == 1)
  {
    if ((v77 & 1) == 0)
    {
LABEL_15:
      static Logger.daemonLogger.getter();
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 67109120;
        *(v41 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v39, v40, "Setting Lockdown Mode state to: %{BOOL}d from IDS message…", v41, 8u);
        v38 = v75;
      }

      v30(v17, v27);
      v42 = swift_allocObject();
      *(v42 + 16) = v38;
      v43 = v38;
      sub_100012394(v37, 0, 0, v37 ^ 1, 1, 0, 0, 0, 0, sub_10001EE94, v42);

      return;
    }
  }

  else
  {
    type metadata accessor for LockdownModeXNU();
    if (v37 != (static LockdownModeXNU.lockdownModeEnabled.getter() & 1))
    {
      goto LABEL_15;
    }
  }

  v67 = v72;
  static Logger.daemonLogger.getter();
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, v68, v69, "Local state matches the one in the IDS message. No action needed", v70, 2u);
  }

  v30(v67, v27);
}

void sub_100019764(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (a1)
  {
    static Logger.daemonLogger.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Could not turn on Lockdown Mode due to an error: %@", v11, 0xCu);
      sub_100005E54(v12, &qword_100042158, qword_100031C60);
    }

    (*(v3 + 8))(v6, v2);
    sub_100011E54(5u, 0, 1);
  }

  else
  {
    static Logger.daemonLogger.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Rebooting…", v16, 2u);
    }

    (*(v3 + 8))(v8, v2);
    sub_10002C7F4(0xD000000000000014, 0x80000001000345C0);
  }
}

unint64_t ServerError.errorDescription.getter(unint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    _StringGuts.grow(_:)(23);

    v5 = 0xD000000000000015;
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    _StringGuts.grow(_:)(25);

    v5 = 0xD000000000000017;
LABEL_5:
    v10 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v10;
  }

  v8 = 0x206E776F6E6B6E55;
  if (a1 ^ 2 | a2)
  {
    v9 = 0xD00000000000001ALL;
  }

  else
  {
    v9 = 0xD000000000000026;
  }

  if (a1 | a2)
  {
    v8 = 0xD000000000000018;
  }

  if (a1 <= 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

char *sub_100019B98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BC8(&qword_100042678, &qword_100032118);
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

unint64_t sub_100019C8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100019D58(v11, 0, 0, 1, a1, a2);
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
    sub_100005DA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E08(v11);
  return v7;
}

unint64_t sub_100019D58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100019E64(a5, a6);
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

char *sub_100019E64(uint64_t a1, unint64_t a2)
{
  v3 = sub_100019EB0(a1, a2);
  sub_100019FE0(&off_10003D150);
  return v3;
}

char *sub_100019EB0(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001A0CC(v5, 0);
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
        v7 = sub_10001A0CC(v10, 0);
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

uint64_t sub_100019FE0(uint64_t result)
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

  result = sub_10001A140(result, v11, 1, v3);
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

void *sub_10001A0CC(uint64_t a1, uint64_t a2)
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

  sub_100003BC8(&qword_100042688, qword_100032120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A140(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003BC8(&qword_100042688, qword_100032120);
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

unint64_t sub_10001A234(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100022560(&qword_100042670, type metadata accessor for CFString, &unk_100031B10);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10001AAD8(a1, v2);
}

unint64_t sub_10001A2E8(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001ABE4(a1, v4);
}

unint64_t sub_10001A32C(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001ACAC(v1, v2);
}

unint64_t sub_10001A374(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10001AD18(a1, v2);
}

unint64_t sub_10001A408(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001AE1C(a1, a2, v4);
}

unint64_t sub_10001A480(uint64_t a1)
{
  v2 = a1;
  v3 = sub_100024F58(*(v1 + 40), a1);

  return sub_10001AED4(v2, v3);
}

_OWORD *sub_10001A4C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10001A234(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100029E68();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100028FF0(v13, a3 & 1);
    v8 = sub_10001A234(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100005E08(v19);

    return sub_10000427C(a1, v19);
  }

  else
  {
    sub_10001AA04(v8, a2, a1, v18);

    return a2;
  }
}

unint64_t sub_10001A604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10001A480(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000292A0(v14, a3 & 1);
      result = sub_10001A480(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100029FE8();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
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

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

_OWORD *sub_10001A750(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001A408(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10002A2B4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100029910(v16, a4 & 1);
    v11 = sub_10001A408(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100005E08(v22);

    return sub_10000427C(a1, v22);
  }

  else
  {
    sub_10001AA6C(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_10001A8A0(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10001A408(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100029BC8(v16, a4 & 1);
      result = sub_10001A408(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10002A458();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_10001AA04(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10000427C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_10001AA6C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000427C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_10001AAD8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100022560(&qword_100042670, type metadata accessor for CFString, &unk_100031B10);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001ABE4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10002245C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001ECCC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10001ACAC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001AD18(uint64_t a1, uint64_t a2)
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

unint64_t sub_10001AE1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001AED4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v6 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v11 = 0xD000000000000017;
            v12 = 0x8000000100033C30;
          }

          else
          {
            v11 = 0x65706F6C65766544;
            v12 = 0xED000065646F4D72;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v11 = 0x5279616C50726941;
          }

          else
          {
            v11 = 0xD000000000000011;
          }

          if (v6 == 4)
          {
            v12 = 0xEF72657669656365;
          }

          else
          {
            v12 = 0x8000000100033C10;
          }
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = 5067348;
        }

        else
        {
          v7 = 0x6C41646572616853;
        }

        if (v6 == 2)
        {
          v8 = 0xE300000000000000;
        }

        else
        {
          v8 = 0xEC000000736D7562;
        }

        if (*(*(v27 + 48) + v4))
        {
          v9 = 0x766572506B6E694CLL;
        }

        else
        {
          v9 = 0x5479616C50726941;
        }

        if (v6)
        {
          v10 = 0xEC00000073776569;
        }

        else
        {
          v10 = 0xEB0000000056546FLL;
        }

        if (v6 <= 1)
        {
          v11 = v9;
        }

        else
        {
          v11 = v7;
        }

        if (v6 <= 1)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }
      }

      v13 = 0xD000000000000017;
      if (v5 != 6)
      {
        v13 = 0x65706F6C65766544;
      }

      v14 = 0xED000065646F4D72;
      if (v5 == 6)
      {
        v14 = 0x8000000100033C30;
      }

      v15 = 0x5279616C50726941;
      if (v5 != 4)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0xEF72657669656365;
      if (v5 != 4)
      {
        v16 = 0x8000000100033C10;
      }

      if (v5 <= 5)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v5 == 2)
      {
        v17 = 5067348;
      }

      else
      {
        v17 = 0x6C41646572616853;
      }

      if (v5 == 2)
      {
        v18 = 0xE300000000000000;
      }

      else
      {
        v18 = 0xEC000000736D7562;
      }

      if (v5)
      {
        v19 = 0x766572506B6E694CLL;
      }

      else
      {
        v19 = 0x5479616C50726941;
      }

      if (v5)
      {
        v20 = 0xEC00000073776569;
      }

      else
      {
        v20 = 0xEB0000000056546FLL;
      }

      if (v5 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v5 <= 3 ? v17 : v13;
      v22 = v5 <= 3 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        return v28;
      }

      v4 = (v28 + 1) & v25;
      if (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}