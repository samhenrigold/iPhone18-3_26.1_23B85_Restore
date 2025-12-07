int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v11 - 8);
  v13 = aBlock - v12;
  v14 = stdout.getter();
  setlinebuf(v14);
  v15 = objc_allocWithZone(type metadata accessor for Server(0));
  qword_1000B9318 = sub_100026F84(0);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1000024AC(0, 0, v13, &unk_10008EED0, v17);

  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    LOBYTE(aBlock[0]) = 0;
    v18 = qword_1000B7C78;
    v19 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v20 = String._bridgeToObjectiveC()();
    [v18 setValue:v19 forKey:v20];

    swift_unknownObjectRelease();
  }

  v21 = SIG_IGN.getter();
  signal(15, v21);
  sub_100002B48();
  qword_1000B9320 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  ObjectType = swift_getObjectType();
  aBlock[4] = sub_100002718;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002874;
  aBlock[3] = &unk_1000AE580;
  v23 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_1000028B8(ObjectType, v24, v25);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v23);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  dispatch_main();
}

uint64_t sub_100002074(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000020D8()
{
  type metadata accessor for BackgroundActivityManager(0);
  v1 = swift_allocObject();
  v0[7] = v1;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC13frauddefensed25BackgroundActivityManager_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100003448(v3, qword_1000B9370);
  (*(*(v3 - 8) + 16))(v1 + v2, v4, v3);
  v5 = type metadata accessor for SignaturesBackgroundActivity(0);
  swift_allocObject();
  v6 = sub_1000107C8();
  v0[8] = v6;
  v7 = static os_log_type_t.default.getter();
  sub_10005E11C(v7, 0xD000000000000026, 0x8000000100093C60, 0xD000000000000047, 0x8000000100093C10, 27);
  v0[5] = v5;
  v0[6] = &off_1000AEAE0;
  v0[2] = v6;

  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_1000022B0;

  return sub_10008B068((v0 + 2));
}

uint64_t sub_1000022B0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100002438;
  }

  else
  {
    sub_100003558((v2 + 16));
    v3 = sub_1000023CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000023CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002438()
{

  sub_100003558((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000024AC(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  sub_100003480(a3, v29 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000034F0(v10);
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

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_1000034F0(a3);
      a2, v21, v22, v23, v24, v25, v26, v27;

      return v20;
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

  sub_1000034F0(a3);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100002718()
{
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003448(v0, qword_1000B9370);
  v1 = static os_log_type_t.error.getter();
  sub_10005E11C(v1, 0xD000000000000035, 0x8000000100093BD0, 0xD000000000000047, 0x8000000100093C10, 39);
  if (qword_1000B6658 != -1)
  {
    swift_once();
  }

  if (qword_1000B7C78)
  {
    v2 = qword_1000B7C78;
    v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v4 = String._bridgeToObjectiveC()();
    [v2 setValue:v3 forKey:v4];

    swift_unknownObjectRelease();
  }

  return xpc_transaction_exit_clean();
}

uint64_t sub_100002874(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000028B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100003650(&qword_1000B6728, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002074(&qword_1000B6730, &qword_10008EF18);
  sub_10000339C();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100002970()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000029A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_1000020BC();
}

uint64_t sub_100002A54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100002B48()
{
  result = qword_1000B6718;
  if (!qword_1000B6718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B6718);
  }

  return result;
}

uint64_t sub_100002B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100002BB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002BBC(uint64_t a1, int a2)
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

uint64_t sub_100002BDC(uint64_t result, int a2, int a3)
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

BOOL sub_100002C44(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100002CAC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002D40(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void sub_100002DC0(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a1 = v4;
}

uint64_t sub_100002E20(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002E8C(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002EF8(void *a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100003028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000308C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000030B8(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67F8, type metadata accessor for NLTagScheme, &unk_10008F228);
  v3 = sub_100003650(&qword_1000B6800, type metadata accessor for NLTagScheme, &unk_10008F1C8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003174(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67A8, type metadata accessor for CKError, &unk_10008F10C);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000031E0(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67A8, type metadata accessor for CKError, &unk_10008F10C);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100003250(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000032BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_1000B67E0, type metadata accessor for CKError, &unk_10008F41C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_100003354(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

unint64_t sub_10000339C()
{
  result = qword_1000B6738;
  if (!qword_1000B6738)
  {
    sub_100003400(&qword_1000B6730, &qword_10008EF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6738);
  }

  return result;
}

uint64_t sub_100003400(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003448(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000034F0(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B7580, &qword_10008EEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003558(void *a1)
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

uint64_t sub_100003650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100003770(uint64_t a1)
{
  v2 = sub_100003650(&qword_1000B67E8, type metadata accessor for FileAttributeKey, &unk_10008F3D8);
  v3 = sub_100003650(&qword_1000B67F0, type metadata accessor for FileAttributeKey, &unk_10008F32C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003830()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v0;
  v2 = String.hashValue.getter();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_100003870(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1000038C8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

uint64_t sub_100003940(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

unint64_t sub_100003C68()
{
  result = qword_1000B67D0;
  if (!qword_1000B67D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B67D0);
  }

  return result;
}

void sub_100003D60(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100003E10()
{
  if (qword_1000B66D0 != -1)
  {
    swift_once();
  }

  if (byte_1000B9448 == 1)
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    v2 = sub_100002074(&qword_1000B68E8, &qword_10008F5E8);
    *v1 = v0;
    v1[1] = sub_100003FB8;
    v3 = v0[8];
    v4 = sub_100005AD8;
    v5 = v0 + 5;
  }

  else
  {
    v6 = swift_task_alloc();
    v0[11] = v6;
    v2 = sub_100002074(&qword_1000B68E8, &qword_10008F5E8);
    *v6 = v0;
    v6[1] = sub_1000040FC;
    v3 = v0[8];
    v4 = sub_100005AD0;
    v5 = v0 + 2;
  }

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0x29286863746566, 0xE700000000000000, v4, v3, v2);
}

uint64_t sub_100003FB8()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100004210;
  }

  else
  {
    v2 = sub_1000040CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000040FC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100004228;
  }

  else
  {
    v2 = sub_100005E30;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100004240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100005AE0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000476C;
  aBlock[3] = &unk_1000AE7C8;
  v11 = _Block_copy(aBlock);

  DeviceIdentityCreateHostSignatureWithCompletion();
  _Block_release(v11);
}

uint64_t sub_100004414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(53);
    v5._countAndFlagsBits = 0xD000000000000031;
    v5._object = 0x8000000100093F20;
    String.append(_:)(v5);
    swift_getErrorValue();
    v6._countAndFlagsBits = Error.localizedDescription.getter();
    object = v6._object;
    String.append(_:)(v6);
    object, v8, v9, v10, v11, v12, v13, v14;
    v15._countAndFlagsBits = 32032;
    v15._object = 0xE200000000000000;
    String.append(_:)(v15);
    sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000057, 0x8000000100093E60, 35);
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    _StringGuts.grow(_:)(53);
    v23._countAndFlagsBits = 0xD000000000000031;
    v23._object = 0x8000000100093F20;
    String.append(_:)(v23);
    swift_getErrorValue();
    v24._countAndFlagsBits = Error.localizedDescription.getter();
    v25 = v24._object;
    String.append(_:)(v24);
    v25, v26, v27, v28, v29, v30, v31, v32;
    v33._countAndFlagsBits = 32032;
    v33._object = 0xE200000000000000;
    String.append(_:)(v33);
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a3 || !sub_100004680(a3))
    {
      v35 = static os_log_type_t.error.getter();
      sub_10005E11C(v35, 0xD000000000000020, 0x8000000100093EF0, 0xD000000000000057, 0x8000000100093E60, 40);
    }

    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    return CheckedContinuation.resume(returning:)();
  }
}

_TtC13frauddefensed22TrustKitUIServerClient *sub_100004680(uint64_t a1)
{
  v6 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100005BBC(i, v5);
    type metadata accessor for SecCertificate(0);
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

uint64_t sub_10000476C(uint64_t a1, void *a2, _TtC13frauddefensed22TrustKitUIServerClient *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v11 = a4;
  v7(v6, v10, a3, a4);

  a3, v12, v13, v14, v15, v16, v17, v18;
  sub_100005A14(v6, v10);
}

void sub_100004850(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100005CEC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004D58;
  aBlock[3] = &unk_1000AE818;
  v11 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v11);
}

void sub_100004A38(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v3 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(53);
    v4._object = 0x8000000100093F20;
    v4._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v4);
    swift_getErrorValue();
    v5._countAndFlagsBits = Error.localizedDescription.getter();
    object = v5._object;
    String.append(_:)(v5);
    object, v7, v8, v9, v10, v11, v12, v13;
    v14._countAndFlagsBits = 32032;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000057, 0x8000000100093E60, 52);
    0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
    _StringGuts.grow(_:)(53);
    v22._object = 0x8000000100093F20;
    v22._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v22);
    swift_getErrorValue();
    v23._countAndFlagsBits = Error.localizedDescription.getter();
    v24 = v23._object;
    String.append(_:)(v23);
    v24, v25, v26, v27, v28, v29, v30, v31;
    v32._countAndFlagsBits = 32032;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();

    return;
  }

  if (!a1 || (v34 = a1, v35 = sub_100053E70(v34), v34, (v35 & 1) == 0))
  {
    v36 = static os_log_type_t.error.getter();
    sub_10005E11C(v36, 0xD00000000000003ALL, 0x8000000100093FC0, 0xD000000000000057, 0x8000000100093E60, 57);
LABEL_9:
    sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
    CheckedContinuation.resume(returning:)();
    return;
  }

  if (a2 && sub_100004680(a2))
  {
    goto LABEL_9;
  }

  v37 = static os_log_type_t.error.getter();
  sub_10005E11C(v37, 0xD000000000000020, 0x8000000100093EF0, 0xD000000000000057, 0x8000000100093E60, 64);
  sub_100002074(&qword_1000B68F0, &qword_10008F5F0);
  CheckedContinuation.resume(returning:)();
}

void sub_100004D58(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);

  v7, v10, v11, v12, v13, v14, v15, v16;
}

uint64_t sub_100004E0C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return _swift_task_switch(sub_100004E30, 0, 0);
}

uint64_t sub_100004E30()
{
  if (qword_1000B66D0 != -1)
  {
    swift_once();
  }

  if (byte_1000B9448 == 1)
  {
    v1 = *(v0 + 56);
    v7 = *(v0 + 40);
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *(v2 + 16) = v7;
    *(v2 + 32) = v1;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    v4 = sub_100002074(&qword_1000B68D8, &qword_10008F5D0);
    *v3 = v0;
    v3[1] = sub_100004FE0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000013, 0x8000000100093DE0, sub_1000059B4, v2, v4);
  }

  else
  {
    v5 = *(v0 + 8);

    return v5(0xD000000000000015, 0x8000000100093DC0, 256);
  }
}

uint64_t sub_100004FE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10000512C;
  }

  else
  {

    v2 = sub_1000050FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000512C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100005190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - v8;
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1000059D4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000476C;
  aBlock[3] = &unk_1000AE778;
  v13 = _Block_copy(aBlock);

  DeviceIdentityCreateHostSignatureWithCompletion();
  _Block_release(v13);
}

uint64_t sub_10000536C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(47);
    0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
    swift_getErrorValue();
    v12._countAndFlagsBits = Error.localizedDescription.getter();
    object = v12._object;
    String.append(_:)(v12);
    object, v14, v15, v16, v17, v18, v19, v20;
    v21._countAndFlagsBits = 32032;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_10005E11C(v4, 0xD00000000000002BLL, 0x8000000100093EC0, 0xD000000000000057, 0x8000000100093E60, 106);
    0x8000000100093EC0, v22, v23, v24, v25, v26, v27, v28;
    _StringGuts.grow(_:)(47);
    0xE000000000000000, v29, v30, v31, v32, v33, v34, v35;
    swift_getErrorValue();
    v36._countAndFlagsBits = Error.localizedDescription.getter();
    v37 = v36._object;
    String.append(_:)(v36);
    v37, v38, v39, v40, v41, v42, v43, v44;
    v45._countAndFlagsBits = 32032;
    v45._object = 0xE200000000000000;
    String.append(_:)(v45);
    sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (a2 >> 60 == 15)
    {
      v47 = static os_log_type_t.error.getter();
      sub_10005E11C(v47, 0xD000000000000022, 0x8000000100093E30, 0xD000000000000057, 0x8000000100093E60, 111);
    }

    else
    {
      sub_100005A7C(a1, a2);
    }

    sub_100002074(&qword_1000B68E0, &qword_10008F5D8);
    return CheckedContinuation.resume(returning:)();
  }
}

unint64_t sub_1000055C8()
{
  sub_100002074(&qword_1000B68F8, &qword_10008F5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F570;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = 43200;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = 0x74696B7473757274;
  *(inited + 224) = 0xE800000000000000;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 312) = &type metadata for String;
  *(inited + 288) = 0x74696B7473757274;
  *(inited + 296) = 0xE800000000000000;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 384) = &type metadata for Bool;
  *(inited + 360) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  sub_100002074(&qword_1000B6900, &unk_10008F600);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10008F580;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(inited + 456) = sub_100002074(&qword_1000B6908, &qword_10008F700);
  *(inited + 432) = v1;
  v3 = sub_1000115E8(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6910, &qword_10008F610);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10000581C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC13frauddefensed18AttestationManager_logger;
  v10 = type metadata accessor for Logger();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttestationManager(uint64_t a1)
{
  result = qword_1000B6848;
  if (!qword_1000B6848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100005914(uint64_t a1)
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

uint64_t sub_1000059FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005A28(a1, a2);
  }

  return a1;
}

uint64_t sub_100005A28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005A7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100005B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(sub_100002074(a5, a6) - 8);
  v13 = *(v7 + 16);
  v14 = v7 + ((*(v12 + 80) + 24) & ~*(v12 + 80));

  return a7(a1, a2, a3, a4, v13, v14);
}

uint64_t sub_100005BBC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005C2C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100002074(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_100005CEC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100002074(&qword_1000B68F0, &qword_10008F5F0);

  sub_100004A38(a1, a2, a3);
}

__n128 sub_100005D84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100005D90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005DD8(uint64_t result, int a2, int a3)
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

void sub_100005E3C(uint64_t a1)
{
  v41 = type metadata accessor for NemesisError();
  v3 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (v5)
  {
    v33 = v1;
    v45 = &_swiftEmptyArrayStorage;
    sub_100049F4C(0, v5, 0);
    v44 = v45;
    v6 = a1 + 56;
    v7 = _HashTable.startBucket.getter();
    v8 = 0;
    v38 = v3 + 8;
    v39 = v3 + 16;
    v34 = a1 + 64;
    v35 = v5;
    v36 = v3;
    v37 = a1 + 56;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v11 = *(a1 + 36);
      v42 = v8;
      v43 = v11;
      v12 = v40;
      v13 = v41;
      (*(v3 + 16))(v40, *(a1 + 48) + *(v3 + 72) * v7, v41);
      sub_10000BC70(&qword_1000B6A60, &type metadata accessor for NemesisError, &protocol conformance descriptor for NemesisError);
      v14 = Error.localizedDescription.getter();
      v16 = v15;
      (*(v3 + 8))(v12, v13);
      v22 = v44;
      v45 = v44;
      v24 = *v44->endpoint;
      v23 = *v44->connection;
      if (v24 >= v23 >> 1)
      {
        sub_100049F4C((v23 > 1), v24 + 1, 1);
        v22 = v45;
      }

      *v22->endpoint = v24 + 1;
      v25 = v22 + 16 * v24;
      *(v25 + 4) = v14;
      *(v25 + 5) = v16;
      v9 = 1 << *(a1 + 32);
      if (v7 >= v9)
      {
        goto LABEL_22;
      }

      v6 = v37;
      v26 = *(v37 + 8 * v10);
      if ((v26 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      v44 = v22;
      if (v43 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v27 = v26 & (-2 << (v7 & 0x3F));
      if (v27)
      {
        v9 = __clz(__rbit64(v27)) | v7 & 0x7FFFFFFFFFFFFFC0;
        v3 = v36;
      }

      else
      {
        v28 = v10 << 6;
        v29 = v10 + 1;
        v30 = (v34 + 8 * v10);
        v3 = v36;
        while (v29 < (v9 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_10000BAC8(v7, v43, 0, v17, v18, v19, v20, v21);
            v9 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        sub_10000BAC8(v7, v43, 0, v17, v18, v19, v20, v21);
      }

LABEL_4:
      v8 = v42 + 1;
      v7 = v9;
      if (v42 + 1 == v35)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_100006178(uint64_t a1, uint64_t a2)
{
  v3[86] = v2;
  v3[85] = a2;
  v3[84] = a1;
  v5 = type metadata accessor for Decision();
  v3[87] = v5;
  v3[88] = *(v5 - 8);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[94] = v6;
  *v6 = v3;
  v6[1] = sub_1000062AC;

  return sub_100007E80(a2);
}

uint64_t sub_1000062AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 760) = v1;

  if (v1)
  {
    v5 = sub_10000782C;
  }

  else
  {
    *(v4 + 768) = a1;
    v5 = sub_1000063D4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000063D4()
{
  v19 = v0;
  v1 = v0[96];
  v2 = v0[85];
  v3 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v0[97] = v3;
  v4 = *(v2 + *(v3 + 24));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v1;
  sub_10000B390(v4, sub_10000A530, 0, isUniquelyReferenced_nonNull_native, &v18);
  v4, v6, v7, v8, v9, v10, v11, v12;
  v13 = v18;
  v0[98] = v18;
  v0[83] = v13;
  LOBYTE(v3) = *(v2 + *(v3 + 28));
  v0[99] = OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger;
  v14 = static os_log_type_t.default.getter();
  if (v3)
  {
    sub_10005E11C(v14, 0xD000000000000022, 0x8000000100094040, 0xD000000000000063, 0x8000000100094070, 129);
    type metadata accessor for SpamDecisioningAsset(0);
    v15 = swift_task_alloc();
    v0[103] = v15;
    *v15 = v0;
    v16 = sub_100007464;
  }

  else
  {
    sub_10005E11C(v14, 0xD000000000000020, 0x8000000100094140, 0xD000000000000063, 0x8000000100094070, 81);
    type metadata accessor for SpamDecisioningAsset(0);
    v15 = swift_task_alloc();
    v0[100] = v15;
    *v15 = v0;
    v16 = sub_1000065E4;
  }

  v15[1] = v16;

  return LogicGraphAsset.execute(for:)(v13);
}

uint64_t sub_1000065E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v4 = sub_1000078D0;
  }

  else
  {
    v4 = sub_1000066FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000066FC()
{
  v1 = *(v0 + 808);

  sub_10000A57C(v2, (v0 + 664));
  v4 = v3;
  v1, v5, v6, v7, v8, v9, v10, v11;
  v318 = v4;
  v320 = sub_100009264(v4);
  if (!*(v4 + 16))
  {
    goto LABEL_10;
  }

  v19 = sub_100057F68(0xD000000000000013, 0x8000000100094170);
  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_10000B704(*(v4 + 56) + 40 * v19, v0 + 216);
  *(v0 + 288) = *(v0 + 248);
  v20 = *(v0 + 232);
  *(v0 + 256) = *(v0 + 216);
  *(v0 + 272) = v20;
  if (!*(v0 + 280))
  {
    sub_10000BC10(v0 + 256, &qword_1000B6A00, &qword_10008F6B0);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v43 = *(v0 + 808);
    if (*(v43 + 16))
    {
      v44 = sub_100057F68(0xD00000000000001FLL, 0x8000000100094190);
      if (v12)
      {
        sub_10000B704(*(*(v0 + 808) + 56) + 40 * v44, v0 + 136);
        *(v0 + 208) = *(v0 + 168);
        v45 = *(v0 + 152);
        *(v0 + 176) = *(v0 + 136);
        *(v0 + 192) = v45;
        if (*(v0 + 200))
        {
          if (swift_dynamicCast())
          {
            v46 = *(v0 + 728);
            v47 = *(v0 + 704);
            v48 = *(v0 + 696);
            v49 = *(v0 + 584);
            v50 = *(v0 + 592);
            (*(v47 + 104))(v46, enum case for Decision.Accept(_:), v48);
            v51 = Decision.rawValue.getter();
            v53 = v52;
            (*(v47 + 8))(v46, v48);
            if (v53)
            {
              if (v49 == v51 && v53 == v50)
              {
                v53, v54, v55, v56, v57, v58, v59, v60;
                v50, v61, v62, v63, v64, v65, v66, v67;
LABEL_29:
                v113 = *(v0 + 808);
                v114 = *(v0 + 784);

                v115 = static os_log_type_t.default.getter();
                _StringGuts.grow(_:)(49);
                *(v0 + 600) = 0;
                *(v0 + 608) = 0xE000000000000000;
                v116._countAndFlagsBits = 0xD00000000000002DLL;
                v116._object = 0x8000000100094200;
                String.append(_:)(v116);
                *(v0 + 416) = v114;
                v317 = 3;
                *(v0 + 424) = 3;
                *(v0 + 432) = v4;
                *(v0 + 440) = v320;
                v117 = 1;
                *(v0 + 448) = 1;
                *(v0 + 450) = 1;
                _print_unlocked<A, B>(_:_:)();
                v118._countAndFlagsBits = 32032;
                v118._object = 0xE200000000000000;
                String.append(_:)(v118);
                v119 = *(v0 + 608);
                sub_10005E11C(v115, *(v0 + 600), v119, 0xD000000000000063, 0x8000000100094070, 111);
                v119, v120, v121, v122, v123, v124, v125, v126;
                v113, v127, v128, v129, v130, v131, v132, v133;

                v134 = 0;
LABEL_42:
                v161 = 1;
LABEL_43:
                v162 = *(v0 + 784);
                v163 = *(v0 + 672);

                *v163 = v162;
                *(v163 + 8) = v317;
                *(v163 + 16) = v318;
                *(v163 + 24) = v320;
                *(v163 + 32) = v117;
                *(v163 + 33) = v134;
                *(v163 + 34) = v161;
                v164 = *(v0 + 8);
                goto LABEL_44;
              }

              v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v53, v99, v100, v101, v102, v103, v104, v105;
              v50, v106, v107, v108, v109, v110, v111, v112;
              if (v98)
              {
                goto LABEL_29;
              }
            }

            else
            {
              v50, v54, v55, v56, v57, v58, v59, v60;
            }
          }
        }

        else
        {
          sub_10000BC10(v0 + 176, &qword_1000B6A00, &qword_10008F6B0);
        }
      }
    }

    v135 = *(v0 + 808);
    if (*(v43 + 16))
    {
      v136 = sub_100057F68(0xD00000000000001CLL, 0x80000001000941B0);
      v135 = *(v0 + 808);
      if (v12)
      {
        sub_10000B704(*v135[1].endpoint + 40 * v136, v0 + 56);
        *(v0 + 128) = *(v0 + 88);
        v137 = *(v0 + 72);
        *(v0 + 96) = *(v0 + 56);
        *(v0 + 112) = v137;
        if (*(v0 + 120))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_49:
            v160 = *(v0 + 808);
            goto LABEL_41;
          }

          v138 = *(v0 + 720);
          v139 = *(v0 + 704);
          v140 = *(v0 + 696);
          v141 = *(v0 + 552);
          v142 = *(v0 + 560);
          (*(v139 + 104))(v138, enum case for Decision.Accept(_:), v140);
          v143 = Decision.rawValue.getter();
          v145 = v144;
          (*(v139 + 8))(v138, v140);
          if (v145)
          {
            if (v141 == v143 && v145 == v142)
            {
              v145, v146, v147, v148, v149, v150, v151, v152;
              v142, v153, v154, v155, v156, v157, v158, v159;
LABEL_48:
              v181 = *(v0 + 808);
              v182 = *(v0 + 784);

              v183 = static os_log_type_t.default.getter();
              _StringGuts.grow(_:)(45);
              *(v0 + 568) = 0;
              *(v0 + 576) = 0xE000000000000000;
              v184._countAndFlagsBits = 0xD000000000000029;
              v184._object = 0x80000001000941D0;
              String.append(_:)(v184);
              *(v0 + 376) = v182;
              v317 = 3;
              *(v0 + 384) = 3;
              *(v0 + 392) = v4;
              *(v0 + 400) = v320;
              *(v0 + 408) = 256;
              v134 = 1;
              *(v0 + 410) = 1;
              _print_unlocked<A, B>(_:_:)();
              v185._countAndFlagsBits = 32032;
              v185._object = 0xE200000000000000;
              String.append(_:)(v185);
              v186 = *(v0 + 576);
              sub_10005E11C(v183, *(v0 + 568), v186, 0xD000000000000063, 0x8000000100094070, 121);
              v186, v187, v188, v189, v190, v191, v192, v193;
              v181, v194, v195, v196, v197, v198, v199, v200;

              v117 = 0;
              goto LABEL_42;
            }

            v166 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v145, v167, v168, v169, v170, v171, v172, v173;
            v142, v174, v175, v176, v177, v178, v179, v180;
            if (v166)
            {
              goto LABEL_48;
            }

            goto LABEL_49;
          }

          v135 = *(v0 + 808);
          v142, v146, v147, v148, v149, v150, v151, v152;
        }

        else
        {
          v135 = *(v0 + 808);
          sub_10000BC10(v0 + 96, &qword_1000B6A00, &qword_10008F6B0);
        }
      }
    }

    v160 = v135;
LABEL_41:
    v160, v12, v13, v14, v15, v16, v17, v18;
    v117 = 1;
    v317 = 3;
    v134 = 1;
    goto LABEL_42;
  }

  v21 = *(v0 + 744);
  v22 = *(v0 + 704);
  v23 = *(v0 + 696);
  v24 = *(v0 + 616);
  v25 = *(v0 + 624);
  v316 = *(v22 + 104);
  v316(v21, enum case for Decision.Accept(_:), v23);
  v26 = Decision.rawValue.getter();
  v28 = v27;
  v315 = *(v22 + 8);
  v315(v21, v23);
  if (v28)
  {
    if (v26 == v24 && v28 == v25)
    {
      v28, v29, v30, v31, v32, v33, v34, v35;
      v25, v36, v37, v38, v39, v40, v41, v42;
LABEL_23:
      v76 = 1;
LABEL_54:
      v217 = *(v0 + 808);
      v218 = *(v0 + 784);

      v219 = static os_log_type_t.default.getter();
      _StringGuts.grow(_:)(67);
      *(v0 + 632) = 0;
      *(v0 + 640) = 0xE000000000000000;
      v220._countAndFlagsBits = 0xD00000000000003FLL;
      v220._object = 0x8000000100094260;
      String.append(_:)(v220);
      *(v0 + 336) = v218;
      v317 = v76;
      *(v0 + 344) = v76;
      *(v0 + 352) = v4;
      *(v0 + 360) = v320;
      *(v0 + 368) = 0;
      *(v0 + 370) = 0;
      _print_unlocked<A, B>(_:_:)();
      v221._countAndFlagsBits = 32032;
      v221._object = 0xE200000000000000;
      String.append(_:)(v221);
      v222 = *(v0 + 640);
      sub_10005E11C(v219, *(v0 + 632), v222, 0xD000000000000063, 0x8000000100094070, 102);
      v222, v223, v224, v225, v226, v227, v228, v229;
      v217, v230, v231, v232, v233, v234, v235, v236;

      v117 = 0;
      v134 = 0;
      v161 = 0;
      goto LABEL_43;
    }

    v314 = v24;
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v28, v69, v70, v71, v72, v73, v74, v75;
    if (v68)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_23;
    }
  }

  else
  {
    v314 = v24;
  }

  v77 = *(v0 + 736);
  v78 = *(v0 + 696);
  v316(v77, enum case for Decision.Reject(_:), v78);
  v79 = Decision.rawValue.getter();
  v81 = v80;
  v315(v77, v78);
  if (v81)
  {
    v89 = v25;
    if (v79 == v314 && v81 == v25)
    {
      swift_bridgeObjectRelease_n();
      v97 = v81;
LABEL_53:
      v97, v90, v91, v92, v93, v94, v95, v96;
      v76 = 0;
      goto LABEL_54;
    }

    v201 = v314;
    v202 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v89, v203, v204, v205, v206, v207, v208, v209;
    v81, v210, v211, v212, v213, v214, v215, v216;
    if (v202)
    {
      v97 = v89;
      goto LABEL_53;
    }
  }

  else
  {
    v89 = v25;
    v25, v82, v83, v84, v85, v86, v87, v88;
    v201 = v314;
  }

  v320, v90, v91, v92, v93, v94, v95, v96;

  v237 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(45);
  0xE000000000000000, v238, v239, v240, v241, v242, v243, v244;
  v245._countAndFlagsBits = v201;
  v245._object = v89;
  String.append(_:)(v245);
  v246._countAndFlagsBits = 32032;
  v246._object = 0xE200000000000000;
  String.append(_:)(v246);
  sub_10005E11C(v237, 0xD000000000000029, 0x8000000100094230, 0xD000000000000063, 0x8000000100094070, 98);
  0x8000000100094230, v247, v248, v249, v250, v251, v252, v253;
  _StringGuts.grow(_:)(45);
  0xE000000000000000, v254, v255, v256, v257, v258, v259, v260;
  v261._countAndFlagsBits = v201;
  v261._object = v89;
  String.append(_:)(v261);
  v89, v262, v263, v264, v265, v266, v267, v268;
  v269._countAndFlagsBits = 32032;
  v269._object = 0xE200000000000000;
  String.append(_:)(v269);
  sub_10000B6B0();
  swift_allocError();
  *v270 = 0xD000000000000029;
  *(v270 + 8) = 0x8000000100094230;
  *(v270 + 16) = 4;
  swift_willThrow();
  v319 = *(v0 + 808);
  v271 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  *(v0 + 536) = 0;
  *(v0 + 544) = 0xE000000000000000;
  v272._object = 0x80000001000940E0;
  v272._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v272);
  swift_getErrorValue();
  v273._countAndFlagsBits = Error.localizedDescription.getter();
  object = v273._object;
  String.append(_:)(v273);
  object, v275, v276, v277, v278, v279, v280, v281;
  v282._countAndFlagsBits = 0x3D7475706E69202CLL;
  v282._object = 0xE800000000000000;
  String.append(_:)(v282);
  _print_unlocked<A, B>(_:_:)();
  v283._countAndFlagsBits = 32032;
  v283._object = 0xE200000000000000;
  String.append(_:)(v283);
  v284 = *(v0 + 544);
  sub_10005E11C(v271, *(v0 + 536), v284, 0xD000000000000063, 0x8000000100094070, 143);
  v284, v285, v286, v287, v288, v289, v290, v291;
  _StringGuts.grow(_:)(67);
  *(v0 + 520) = 0;
  *(v0 + 528) = 0xE000000000000000;
  v292._object = 0x80000001000940E0;
  v292._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v292);
  swift_getErrorValue();
  v293._countAndFlagsBits = Error.localizedDescription.getter();
  v294 = v293._object;
  String.append(_:)(v293);
  v294, v295, v296, v297, v298, v299, v300, v301;
  v302._countAndFlagsBits = 0x3D7475706E69202CLL;
  v302._object = 0xE800000000000000;
  String.append(_:)(v302);
  _print_unlocked<A, B>(_:_:)();
  v303._countAndFlagsBits = 32032;
  v303._object = 0xE200000000000000;
  String.append(_:)(v303);
  v304 = *(v0 + 520);
  v305 = *(v0 + 528);
  swift_allocError();
  *v306 = v304;
  *(v306 + 8) = v305;
  *(v306 + 16) = 5;
  swift_willThrow();

  v319, v307, v308, v309, v310, v311, v312, v313;

  v164 = *(v0 + 8);
LABEL_44:

  return v164();
}

uint64_t sub_100007464(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 832) = a1;
  *(v3 + 840) = v1;

  if (v1)
  {
    v4 = sub_100007BA8;
  }

  else
  {
    v4 = sub_10000757C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000757C()
{
  v1 = *(v0 + 832);

  sub_10000A57C(v2, (v0 + 664));
  v4 = v3;
  v1, v5, v6, v7, v8, v9, v10, v11;
  v12 = sub_100009264(v4);
  if (*v1->endpoint)
  {
    v13 = sub_100057F68(0xD000000000000010, 0x8000000100094120);
    if (v14)
    {
      sub_10000B704(*(*(v0 + 832) + 56) + 40 * v13, v0 + 16);
      *(v0 + 328) = *(v0 + 48);
      v15 = *(v0 + 32);
      *(v0 + 296) = *(v0 + 16);
      *(v0 + 312) = v15;
      if (*(v0 + 320))
      {
        if (swift_dynamicCast())
        {
          v17 = *(v0 + 504);
          v16 = *(v0 + 512);
          goto LABEL_8;
        }
      }

      else
      {
        sub_10000BC10(v0 + 296, &qword_1000B6A00, &qword_10008F6B0);
      }
    }
  }

  v17 = 0;
  v16 = 0;
LABEL_8:
  v18 = *(v0 + 712);
  v19 = *(v0 + 704);
  v20 = *(v0 + 696);
  (*(v19 + 104))(v18, enum case for Decision.Reject(_:), v20);
  v21 = Decision.rawValue.getter();
  v23 = v22;
  (*(v19 + 8))(v18, v20);
  if (!v16)
  {
    *(v0 + 832), v24, v25, v26, v27, v28, v29, v30;
    if (!v23)
    {
      goto LABEL_18;
    }

    v53 = v23;
LABEL_16:
    v53, v46, v47, v48, v49, v50, v51, v52;
    v54 = 1;
    goto LABEL_19;
  }

  if (!v23)
  {
    *(v0 + 832), v24, v25, v26, v27, v28, v29, v30;
    v53 = v16;
    goto LABEL_16;
  }

  v31 = *(v0 + 832);
  if (v17 == v21 && v16 == v23)
  {
    v23, v24, v25, v26, v27, v28, v29, v30;
    v16, v32, v33, v34, v35, v36, v37, v38;
    v31, v39, v40, v41, v42, v43, v44, v45;
LABEL_18:
    v54 = 0;
    goto LABEL_19;
  }

  v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v23, v56, v57, v58, v59, v60, v61, v62;
  v16, v63, v64, v65, v66, v67, v68, v69;
  v31, v70, v71, v72, v73, v74, v75, v76;
  if (v55)
  {
    goto LABEL_18;
  }

  v54 = 1;
LABEL_19:
  v77 = *(v0 + 784);
  v78 = *(v0 + 672);

  *v78 = v77;
  *(v78 + 8) = v54;
  *(v78 + 16) = v4;
  *(v78 + 24) = v12;
  *(v78 + 32) = 0;
  *(v78 + 34) = 0;
  v79 = *(v0 + 8);

  return v79();
}

uint64_t sub_10000782C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000078D0(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v1[67] = 0;
  v1[68] = 0xE000000000000000;
  v3._object = 0x80000001000940E0;
  v3._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 0x3D7475706E69202CLL;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = v1[68];
  sub_10005E11C(v2, v1[67], v15, 0xD000000000000063, 0x8000000100094070, 143);
  v15, v16, v17, v18, v19, v20, v21, v22;
  _StringGuts.grow(_:)(67);
  v1[65] = 0;
  v1[66] = 0xE000000000000000;
  v23._object = 0x80000001000940E0;
  v23._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v23);
  swift_getErrorValue();
  v24._countAndFlagsBits = Error.localizedDescription.getter();
  v25 = v24._object;
  String.append(_:)(v24);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 0x3D7475706E69202CLL;
  v33._object = 0xE800000000000000;
  String.append(_:)(v33);
  _print_unlocked<A, B>(_:_:)();
  v34._countAndFlagsBits = 32032;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35 = v1[65];
  v36 = v1[66];
  sub_10000B6B0();
  swift_allocError();
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = 5;
  swift_willThrow();

  v38 = v1[1];

  return v38();
}

uint64_t sub_100007BA8(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(67);
  v1[67] = 0;
  v1[68] = 0xE000000000000000;
  v3._object = 0x80000001000940E0;
  v3._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 0x3D7475706E69202CLL;
  v13._object = 0xE800000000000000;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15 = v1[68];
  sub_10005E11C(v2, v1[67], v15, 0xD000000000000063, 0x8000000100094070, 143);
  v15, v16, v17, v18, v19, v20, v21, v22;
  _StringGuts.grow(_:)(67);
  v1[65] = 0;
  v1[66] = 0xE000000000000000;
  v23._object = 0x80000001000940E0;
  v23._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v23);
  swift_getErrorValue();
  v24._countAndFlagsBits = Error.localizedDescription.getter();
  v25 = v24._object;
  String.append(_:)(v24);
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33._countAndFlagsBits = 0x3D7475706E69202CLL;
  v33._object = 0xE800000000000000;
  String.append(_:)(v33);
  _print_unlocked<A, B>(_:_:)();
  v34._countAndFlagsBits = 32032;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35 = v1[65];
  v36 = v1[66];
  sub_10000B6B0();
  swift_allocError();
  *v37 = v35;
  *(v37 + 8) = v36;
  *(v37 + 16) = 5;
  swift_willThrow();

  v38 = v1[1];

  return v38();
}

uint64_t sub_100007E80(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = type metadata accessor for Date();
  v2[38] = v3;
  v2[39] = *(v3 - 8);
  v2[40] = swift_task_alloc();
  sub_100002074(&qword_1000B6A68, &qword_10008F6F0);
  v2[41] = swift_task_alloc();
  v4 = type metadata accessor for Locale.Language();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = type metadata accessor for Locale();
  v2[45] = v5;
  v2[46] = *(v5 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  v2[50] = swift_task_alloc();

  return _swift_task_switch(sub_100008098, 0, 0);
}

uint64_t sub_100008098()
{
  v248 = v0;
  v1 = sub_100011724(&_swiftEmptyArrayStorage);
  v244 = v1;
  v2 = objc_allocWithZone(NSDataDetector);
  v0[33] = 0;
  v3 = [v2 initWithTypes:32 error:v0 + 33];
  v4 = v0[33];
  v243 = v0;
  if (!v3)
  {
    v49 = v0[50];
    v50 = v0[36];
    v51 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v52 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(28);
    0xE000000000000000, v53, v54, v55, v56, v57, v58, v59;
    *&v247[0] = 0xD000000000000018;
    *(&v247[0] + 1) = 0x80000001000942A0;
    sub_10000BADC(v50, v49);
    v60._countAndFlagsBits = String.init<A>(describing:)();
    object = v60._object;
    String.append(_:)(v60);
    object, v62, v63, v64, v65, v66, v67, v68;
    v69._countAndFlagsBits = 32032;
    v69._object = 0xE200000000000000;
    String.append(_:)(v69);
    v70 = v243;
    sub_10005E11C(v52, 0xD000000000000018, 0x80000001000942A0, 0xD000000000000063, 0x8000000100094070, 230);
    0x80000001000942A0, v71, v72, v73, v74, v75, v76, v77;

    v78 = v1;
    goto LABEL_22;
  }

  v5 = v3;
  v6 = v0[36] + *(v0[49] + 20);
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);
  v9 = v4;
  v10 = v7;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v5 matchesInString:v11 options:0 range:{0, String.UTF16View.count.getter()}];

  sub_10000BCB8(0, &qword_1000B6AA0, NSTextCheckingResult_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v238 = v5;
    if (v21)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v238 = v5;
    if (v21)
    {
LABEL_4:
      if (v21 < 1)
      {
        __break(1u);
      }

      v22 = 0;
      v23 = v13 & 0xC000000000000001;
      v24 = &_swiftEmptyArrayStorage;
      p_name = &stru_1000B4FF8.name;
      v240 = v21;
      v242 = v13;
      do
      {
        if (v23)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v13 + 8 * v22 + 32);
        }

        v27 = v26;
        [v26 p_name[281]];
        Range<>.init(_:in:)();
        if (v28)
        {
        }

        else
        {
          v29 = v8;
          v30 = v10;
          String.subscript.getter();
          v32 = v31;
          v33 = static String._fromSubstring(_:)();
          v35 = v34;
          v32, v34, v36, v37, v38, v39, v40, v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1000495F0(0, *v24->endpoint + 1, 1, v24, v42, v43, v44, v45);
          }

          v47 = *v24->endpoint;
          v46 = *v24->connection;
          if (v47 >= v46 >> 1)
          {
            v24 = sub_1000495F0((v46 > 1), v47 + 1, 1, v24, v42, v43, v44, v45);
          }

          *v24->endpoint = v47 + 1;
          v48 = v24 + 16 * v47;
          *(v48 + 4) = v33;
          *(v48 + 5) = v35;
          v21 = v240;
          v13 = v242;
          v8 = v29;
          v10 = v30;
          p_name = (&stru_1000B4FF8 + 8);
        }

        ++v22;
      }

      while (v21 != v22);
      v1 = v244;
      goto LABEL_21;
    }
  }

  v24 = &_swiftEmptyArrayStorage;
LABEL_21:
  v13, v14, v15, v16, v17, v18, v19, v20;
  v243[35] = v24;
  v70 = v243;
  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_10000BB40();
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6465746365746564, 0xEC000000736C7255, isUniquelyReferenced_nonNull_native);

  v78 = v1;
LABEL_22:
  v80 = v70[36] + *(v70[49] + 20);
  v82 = *(v80 + 48);
  v81 = *(v80 + 56);
  *(v70 + 408) = sub_100009FFC(v82, v81) & 1;
  AnyHashable.init<A>(_:)();
  v83 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6465746365746564, 0xED0000696A6F6D45, v83);
  sub_100002074(&qword_1000B6A70, &qword_10008F6F8);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_10008F580;
  *(v84 + 32) = NLTagSchemeLanguage;
  v85 = objc_allocWithZone(NLTagger);
  type metadata accessor for NLTagScheme(0);
  v86 = NLTagSchemeLanguage;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v84, v88, v89, v90, v91, v92, v93, v94;
  v95 = [v85 initWithTagSchemes:isa];

  v96 = String._bridgeToObjectiveC()();
  [v95 setString:v96];

  v241 = v95;
  v97 = [v95 dominantLanguage];
  if (v97)
  {
    v98 = v97;
    v70[31] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70[32] = v99;
    AnyHashable.init<A>(_:)();
    v100 = swift_isUniquelyReferenced_nonNull_native();
    v246 = v78;
    sub_10005B20C(v247, 0xD000000000000010, 0x80000001000942F0, v100);
  }

  else
  {
    v101 = v70[50];
    v102 = v243[36];
    v103 = static os_log_type_t.error.getter();
    *&v247[0] = 0;
    *(&v247[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(47);
    *(&v247[0] + 1), v104, v105, v106, v107, v108, v109, v110;
    *&v247[0] = 0xD00000000000002BLL;
    *(&v247[0] + 1) = 0x80000001000942C0;
    sub_10000BADC(v102, v101);
    v111._countAndFlagsBits = String.init<A>(describing:)();
    v112 = v111._object;
    String.append(_:)(v111);
    v112, v113, v114, v115, v116, v117, v118, v119;
    v120._countAndFlagsBits = 32032;
    v120._object = 0xE200000000000000;
    String.append(_:)(v120);
    v121 = *(&v247[0] + 1);
    v70 = v243;
    sub_10005E11C(v103, *&v247[0], *(&v247[0] + 1), 0xD000000000000063, 0x8000000100094070, 244);
    v121, v122, v123, v124, v125, v126, v127, v128;
    v243[7] = 0;
    v243[8] = 0xE000000000000000;
    AnyHashable.init<A>(_:)();
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v246 = v78;
    sub_10005B20C(v247, 0xD000000000000010, 0x80000001000942F0, v129);
  }

  v130 = &_swiftEmptyArrayStorage;
  if (*(v80 + 80))
  {
    v130 = *(v80 + 80);
  }

  v70[34] = v130;

  sub_100002074(&qword_1000B6908, &qword_10008F700);
  sub_10000BB40();
  AnyHashable.init<A>(_:)();
  v131 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0xD000000000000013, 0x8000000100094310, v131);
  v70[9] = v82;
  v70[10] = v81;

  AnyHashable.init<A>(_:)();
  v132 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6567617373656DLL, 0xE700000000000000, v132);
  v133 = *(v80 + 24);
  v70[11] = *(v80 + 16);
  v70[12] = v133;

  AnyHashable.init<A>(_:)();
  v134 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6E696769726FLL, 0xE600000000000000, v134);
  v135 = *(v80 + 96);
  if (v135)
  {
    v70[29] = *(v80 + 88);
    v70[30] = v135;
  }

  else
  {
    v70[13] = 0;
    v70[14] = 0xE000000000000000;
  }

  AnyHashable.init<A>(_:)();
  v136 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6353656C676F6F67, 0xEB0000000065726FLL, v136);
  v138 = *(v80 + 32);
  v137 = *(v80 + 40);
  v70[15] = v138;
  v70[16] = v137;

  AnyHashable.init<A>(_:)();
  v139 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x7265646E6573, 0xE600000000000000, v139);
  v140._countAndFlagsBits = 980182388;
  v140._object = 0xE400000000000000;
  v141 = String.hasPrefix(_:)(v140);

  if (v141)
  {
    v142 = String.count.getter();
    sub_10000B2E0(v142, v138, v137);
    v144 = v143;
    v137, v145, v146, v143, v147, v148, v149, v150;
    v138 = static String._fromSubstring(_:)();
    v137 = v151;
    v144, v151, v152, v153, v154, v155, v156, v157;
  }

  v158._countAndFlagsBits = 0x3A6F746C69616DLL;
  v158._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v158))
  {
    v159 = String.count.getter();
    sub_10000B2E0(v159, v138, v137);
    v161 = v160;
    v137, v162, v163, v160, v164, v165, v166, v167;
    static String._fromSubstring(_:)();
    v137 = v168;
    v161, v168, v169, v170, v171, v172, v173, v174;
  }

  sub_10000BCB8(0, &qword_1000B6A80, NSPredicate_ptr);
  sub_100002074(&qword_1000B6A88, &qword_10008F708);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_10008F580;
  *(v175 + 56) = &type metadata for String;
  *(v175 + 64) = sub_10000BBBC();
  *(v175 + 32) = 0xD000000000000019;
  *(v175 + 40) = 0x8000000100094330;
  v176 = NSPredicate.init(format:_:)();
  v177 = String._bridgeToObjectiveC()();
  v178 = [v176 evaluateWithObject:v177];

  if (v178)
  {
    v186 = String.count.getter();
    v137, v187, v188, v189, v190, v191, v192, v193;
    *(v70 + 409) = v186 == 5;
    AnyHashable.init<A>(_:)();
    v194 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(v247, 0xD000000000000014, 0x8000000100094370, v194);
  }

  else
  {
    v137, v179, v180, v181, v182, v183, v184, v185;
  }

  v196 = v70[47];
  v195 = v70[48];
  v197 = v243[46];
  v198 = v243[45];
  v199 = v243[44];
  v200 = v243[43];
  v201 = v243[42];
  v239 = v243[41];
  static Locale.current.getter();
  Locale.language.getter();
  v202 = *(v197 + 8);
  v202(v195, v198);
  v203 = Locale.Language.minimalIdentifier.getter();
  v205 = v204;
  (*(v200 + 8))(v199, v201);
  v243[17] = v203;
  v243[18] = v205;
  AnyHashable.init<A>(_:)();
  v206 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x614C656369766564, 0xEE0065676175676ELL, v206);
  v245 = v246;
  static Locale.current.getter();
  Locale.region.getter();
  v202(v196, v198);
  v207 = type metadata accessor for Locale.Region();
  v208 = *(v207 - 8);
  v209 = (*(v208 + 48))(v239, 1, v207);
  v210 = v243[41];
  if (v209 == 1)
  {
    sub_10000BC10(v243[41], &qword_1000B6A68, &qword_10008F6F0);
  }

  else
  {
    v211 = Locale.Region.identifier.getter();
    v213 = v212;
    (*(v208 + 8))(v210, v207);
    v243[27] = v211;
    v243[28] = v213;
    AnyHashable.init<A>(_:)();
    v214 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(v247, 0x6F43656369766564, 0xED00007972746E75, v214);
    v245 = v246;
  }

  v215 = *(v80 + 72);
  if (v215)
  {
    v243[25] = *(v80 + 64);
    v243[26] = v215;

    AnyHashable.init<A>(_:)();
    v216 = swift_isUniquelyReferenced_nonNull_native();
    sub_10005B20C(v247, 0xD000000000000013, 0x8000000100094350, v216);
    v245 = v246;
  }

  else
  {
    sub_100056080(0xD000000000000013, 0x8000000100094350, (v243 + 2));
    sub_10000BC10((v243 + 2), &qword_1000B6A28, &qword_10008F6D8);
  }

  if (qword_1000B66E8 != -1)
  {
    swift_once();
  }

  v217 = qword_1000B9470;
  if (qword_1000B9470)
  {
    v218 = qword_1000B9468;
    if (qword_1000B66F0 != -1)
    {
      v237 = qword_1000B9470;
      swift_once();
      v217 = v237;
    }

    v219 = qword_1000B9480;
    if (qword_1000B9480)
    {
      v220 = qword_1000B9478;
      *&v247[0] = v218;
      *(&v247[0] + 1) = v217;

      v221._countAndFlagsBits = 2108704;
      v221._object = 0xE300000000000000;
      String.append(_:)(v221);
      v222._countAndFlagsBits = v220;
      v222._object = v219;
      String.append(_:)(v222);
      v223 = *(&v247[0] + 1);
      v243[23] = *&v247[0];
      v243[24] = v223;
      AnyHashable.init<A>(_:)();
      v224 = swift_isUniquelyReferenced_nonNull_native();
      sub_10005B20C(v247, 0x6F6973726556736FLL, 0xE90000000000006ELL, v224);
    }
  }

  v225 = v243[40];
  v226 = v243[39];
  v227 = v243[38];
  v228 = 7369839;
  if (*(v80 + 104))
  {
    v228 = 0;
  }

  v229 = 0xE300000000000000;
  if (*(v80 + 104))
  {
    v229 = 0xE000000000000000;
  }

  v243[19] = v228;
  v243[20] = v229;
  AnyHashable.init<A>(_:)();
  v230 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x546567617373656DLL, 0xEB00000000657079, v230);
  Date.init()();
  sub_10000BC70(&qword_1000B6A98, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v231 = dispatch thunk of CustomStringConvertible.description.getter();
  v233 = v232;
  (*(v226 + 8))(v225, v227);
  v243[21] = v231;
  v243[22] = v233;
  AnyHashable.init<A>(_:)();
  v234 = swift_isUniquelyReferenced_nonNull_native();
  sub_10005B20C(v247, 0x6D617473656D6974, 0xE900000000000070, v234);

  v235 = v243[1];

  return v235(v245);
}

uint64_t sub_100009264(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v18 = a1;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v6; result = sub_10000BC10(v16, &qword_1000B6A08, &qword_10008F6B8))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_10000B704(*(a1 + 56) + 40 * v12, v17);
    v16[0] = v14;
    v16[1] = v15;

    sub_1000093A4(v14, v15, v17, &v18);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v18;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1000093A4(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4)
{
  v150 = a4;
  v7 = sub_100002074(&qword_1000B6A18, &qword_10008F6C8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v137 - v11;
  v13 = type metadata accessor for Decision();
  v151 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v137 - v17;
  sub_10000B704(a3, &v159);
  if (v162)
  {
    v19.isa = AnyHashable._bridgeToObjectiveC()().isa;
    sub_10000BA20(&v159);
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      v22 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:0];
      v145 = v16;
      v147 = v13;
      v23 = v22;
      [v21 encodeWithCoder:v22];
      [v23 finishEncoding];
      v24 = [v23 encodedData];
      v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v149 = v12;
      v26 = v18;
      v27 = a3;
      v28 = v10;
      v29 = v25;
      isa = v19.isa;
      v30 = a1;
      v31 = a2;
      v33 = v32;

      v13 = v147;
      v16 = v145;

      *&v156 = v29;
      *(&v156 + 1) = v33;
      v10 = v28;
      a3 = v27;
      v18 = v26;
      v12 = v149;
      a2 = v31;
      a1 = v30;
      sub_10000BA74();
      AnyHashable.init<A>(_:)();

      sub_10005674C(&v159, v30, a2);
    }

    else
    {
    }
  }

  else
  {
    sub_10000BC10(&v159, &qword_1000B6A00, &qword_10008F6B0);
  }

  sub_10000B704(a3, &v159);
  if (!v162)
  {
    sub_10000BC10(&v159, &qword_1000B6A00, &qword_10008F6B0);
    v149 = *(v151 + 7);
    (v149)(v12, 1, 1, v13);
    goto LABEL_11;
  }

  v34 = swift_dynamicCast();
  v35 = v151;
  v149 = *(v151 + 7);
  (v149)(v12, v34 ^ 1u, 1, v13);
  if ((*(v35 + 6))(v12, 1, v13) == 1)
  {
LABEL_11:
    sub_10000BC10(v12, &qword_1000B6A18, &qword_10008F6C8);
    goto LABEL_14;
  }

  (*(v151 + 4))(v18, v12, v13);
  v36 = Decision.rawValue.getter();
  if (v37)
  {
    *&v156 = v36;
    *(&v156 + 1) = v37;
    AnyHashable.init<A>(_:)();
  }

  else
  {
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = xmmword_10008F650;
  }

  sub_10005674C(&v159, a1, a2);
  (*(v151 + 1))(v18, v13);
LABEL_14:
  sub_10000B704(a3, &v159);
  if (v162)
  {
    sub_100002074(&qword_1000B6A40, &unk_10008F6E0);
    if (swift_dynamicCast())
    {
      v38 = v156;
      sub_100005E3C(v156);
      v39 = a3;
      v40 = v13;
      v42 = v41;
      v38, v43, v44, v45, v46, v47, v48, v49;
      v50 = sub_10000B924(v42);
      v51 = v42;
      v13 = v40;
      a3 = v39;
      v51, v52, v53, v54, v55, v56, v57, v58;
      *&v156 = v50;

      sub_100002074(&qword_1000B6A48, &unk_100093170);
      sub_10000B9BC();
      AnyHashable.init<A>(_:)();
      sub_10005674C(&v159, a1, a2);
    }
  }

  else
  {
    sub_10000BC10(&v159, &qword_1000B6A00, &qword_10008F6B0);
  }

  sub_10000B704(a3, &v159);
  if (v162)
  {
    v59 = sub_100002074(&qword_1000B6A20, &qword_10008F6D0);
    if (swift_dynamicCast())
    {
      v139 = v59;
      v137[1] = 0;
      v140 = a1;
      v141 = a2;
      v60 = v156;
      v61 = v156 + 64;
      v62 = 1 << *(v156 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v156 + 64);
      v65 = (v62 + 63) >> 6;
      v146 = v151 + 56;
      v144 = (v151 + 32);
      v143 = (v151 + 8);
      swift_bridgeObjectRetain_n();
      v66 = 0;
      v138 = xmmword_10008F650;
      v151 = v60;
      isa = v60;
      v142 = v10;
      v147 = v13;
      v145 = v16;
      while (v64)
      {
LABEL_30:
        v68 = __clz(__rbit64(v64)) | (v66 << 6);
        v69 = (*(v151 + 6) + 16 * v68);
        v70 = *v69;
        v71 = v69[1];
        sub_10000B704(*(v151 + 7) + 40 * v68, &v161);
        v159 = v70;
        v160 = v71;
        v158[3] = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
        v158[0] = swift_allocObject();
        sub_10000B704(&v161, v158[0] + 16);
        sub_100005BBC(v158, &v156);

        if (swift_dynamicCast())
        {
          (v149)(v10, 0, 1, v13);
          (*v144)(v16, v10, v13);
          v72 = Decision.rawValue.getter();
          if (v73)
          {
            *&v153 = v72;
            *(&v153 + 1) = v73;
            AnyHashable.init<A>(_:)();
            v153 = v156;
            v154 = *v157;
            v155 = *&v157[16];

            v74 = isa;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v152 = v74;
            v77 = sub_100057F68(v70, v71);
            v78 = *(v74 + 2);
            v79 = (v76 & 1) == 0;
            v80 = v78 + v79;
            if (__OFADD__(v78, v79))
            {
              goto LABEL_55;
            }

            v81 = v76;
            if (*(v74 + 3) >= v80)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100059AD4();
              }

              v10 = v142;
            }

            else
            {
              sub_100058508(v80, isUniquelyReferenced_nonNull_native);
              v82 = sub_100057F68(v70, v71);
              if ((v81 & 1) != (v83 & 1))
              {
                goto LABEL_57;
              }

              v77 = v82;
              v10 = v142;
            }

            v105 = v152;
            isa = v152;
            if (v81)
            {
              sub_10000B7B4(&v153, v152[7] + 40 * v77);
              v71, v106, v107, v108, v109, v110, v111, v112;
            }

            else
            {
              v152[(v77 >> 6) + 8] |= 1 << v77;
              v113 = (v105[6] + 16 * v77);
              *v113 = v70;
              v113[1] = v71;
              v114 = v105[7] + 40 * v77;
              v115 = v153;
              v116 = v154;
              *(v114 + 32) = v155;
              *v114 = v115;
              *(v114 + 16) = v116;
              v117 = v105[2];
              v118 = __OFADD__(v117, 1);
              v119 = v117 + 1;
              if (v118)
              {
                goto LABEL_56;
              }

              v105[2] = v119;
            }

            v13 = v147;
            v16 = v145;
          }

          else
          {

            v84 = isa;
            v85 = sub_100057F68(v70, v71);
            if (v86)
            {
              v93 = v85;
              v94 = swift_isUniquelyReferenced_nonNull_native();
              *&v153 = v84;
              if ((v94 & 1) == 0)
              {
                sub_100059AD4();
                v84 = v153;
              }

              *(*(v84 + 6) + 16 * v93 + 8), v95, v96, v97, v98, v99, v100, v101;
              v102 = *(v84 + 7) + 40 * v93;
              v103 = *(v102 + 32);
              v104 = *(v102 + 16);
              v156 = *v102;
              *v157 = v104;
              *&v157[16] = v103;
              isa = v84;
              sub_10005A7BC(v93, v84);
            }

            else
            {
              v156 = 0uLL;
              *v157 = 0;
              *&v157[8] = v138;
            }

            v71, v86, v87, v88, v89, v90, v91, v92;
            sub_10000BC10(&v156, &qword_1000B6A28, &qword_10008F6D8);
            v13 = v147;
          }

          (*v143)(v16, v13);
        }

        else
        {
          (v149)(v10, 1, 1, v13);
          sub_10000BC10(v10, &qword_1000B6A18, &qword_10008F6C8);
        }

        v64 &= v64 - 1;
        sub_100003558(v158);
        sub_10000BC10(&v159, &qword_1000B6A08, &qword_10008F6B8);
      }

      while (1)
      {
        v67 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v67 >= v65)
        {
          v120 = v151;

          v120, v121, v122, v123, v124, v125, v126, v127;
          v128 = isa;
          *&v156 = isa;
          sub_10000B824();
          v129 = v141;

          AnyHashable.init<A>(_:)();
          sub_10005674C(&v159, v140, v129);
          v128, v130, v131, v132, v133, v134, v135, v136;
          return;
        }

        v64 = *(v61 + 8 * v67);
        ++v66;
        if (v64)
        {
          v66 = v67;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  else
  {
    sub_10000BC10(&v159, &qword_1000B6A00, &qword_10008F6B0);
  }
}

Swift::Int sub_100009F44()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100009FB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100009FFC(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2)
{
  v4 = type metadata accessor for Unicode.Scalar.Properties();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = (a2 >> 56) & 0xF;
  v53 = a1;
  v54 = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v55 = 0;
  v56 = v11;

  v19 = String.Iterator.next()();
  object = v19.value._object;
  if (v19.value._object)
  {
    countAndFlagsBits = v19.value._countAndFlagsBits;
    v21 = v19.value._object;
    v22 = (v5 + 8);
    while (1)
    {
      v24 = sub_10000A38C(countAndFlagsBits, v21);
      if ((v24 & 0x100000000) == 0)
      {
        v25 = v24;
        Unicode.Scalar.properties.getter();
        v26 = Unicode.Scalar.Properties.isEmoji.getter();
        (*v22)(v10, v4);
        if ((v26 & 1) != 0 && v25 >= 0x238D)
        {
          break;
        }
      }

      v34 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v34 = countAndFlagsBits;
      }

      if (((v21 >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
      {
        v35 = 11;
      }

      else
      {
        v35 = 7;
      }

      if (sub_10000AC74(0xFuLL, v35 | (v34 << 16), countAndFlagsBits, v21) < 2 || (sub_10000A38C(countAndFlagsBits, v21) & 0x100000000) != 0)
      {
        v21, v36, v37, v38, v39, v40, v41, v42;
      }

      else
      {
        Unicode.Scalar.properties.getter();
        v43 = Unicode.Scalar.Properties.isEmoji.getter();
        v21, v44, v45, v46, v47, v48, v49, v50;
        (*v22)(v8, v4);
        if (v43)
        {
          goto LABEL_21;
        }
      }

      v23 = String.Iterator.next()();
      object = v23.value._object;
      countAndFlagsBits = v23.value._countAndFlagsBits;
      v21 = v23.value._object;
      if (!v23.value._object)
      {
        goto LABEL_19;
      }
    }

    v21, v27, v28, v29, v30, v31, v32, v33;
LABEL_21:
    v51 = 1;
  }

  else
  {
LABEL_19:
    v51 = 0;
  }

  v54, object, v13, v14, v15, v16, v17, v18;
  return v51;
}

uint64_t sub_10000A238()
{
  v1 = OBJC_IVAR____TtC13frauddefensed30LogicGraphDecisioningComponent_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10000A2FC(uint64_t a1)
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

unint64_t sub_10000A38C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10000ABDC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v9 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v17[0] = a1;
        v17[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = v17 + v6;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v7 = _StringObject.sharedUTF8.getter();
        }

        v8 = (v7 + v6);
      }

      v9 = *v8;
      if (*v8 < 0)
      {
        v10 = (__clz(v9 ^ 0xFF) - 24);
        if (v10 > 2)
        {
          if (v10 == 3)
          {
            v11 = v8[1];
            v12 = v8[2];
            v13 = ((v9 & 0xF) << 12) | ((v11 & 0x3F) << 6);
          }

          else
          {
            v14 = v8[1];
            v15 = v8[2];
            v12 = v8[3];
            v13 = ((v9 & 0xF) << 18) | ((v14 & 0x3F) << 12) | ((v15 & 0x3F) << 6);
          }

          v9 = v13 & 0xFFFFFFC0 | v12 & 0x3F;
        }

        else if (v10 != 1)
        {
          v9 = v8[1] & 0x3F | ((v9 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  LOBYTE(v17[0]) = v2 == 0;
  return v9 | ((v2 == 0) << 32);
}

uint64_t sub_10000A4F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A530@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_10000B704((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void sub_10000A57C(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient **a2)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_10000A8F0(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_10000A6E8(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void sub_10000A6E8(unint64_t *result, uint64_t a2, uint64_t a3, _TtC13frauddefensed22TrustKitUIServerClient **a4)
{
  v44 = 0;
  v4 = 0;
  v49 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v49 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B704(*(v49 + 56) + 40 * v13, v48);
    v46[0] = v16;
    v46[1] = v15;
    sub_10000B704(v48, &v47);
    v17 = *a4;
    v18 = *(*a4)->endpoint;
    swift_bridgeObjectRetain_n();
    if (v18)
    {

      sub_100057F68(v16, v15);
      v20 = v19;
      v17, v19, v21, v22, v23, v24, v25, v26;
      sub_10000BC10(v46, &qword_1000B6A08, &qword_10008F6B8);
      sub_10000BC10(v48, &qword_1000B6A00, &qword_10008F6B0);
      v15, v27, v28, v29, v30, v31, v32, v33;
      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000BC10(v46, &qword_1000B6A08, &qword_10008F6B8);
      sub_10000BC10(v48, &qword_1000B6A00, &qword_10008F6B0);
      v15, v34, v35, v36, v37, v38, v39, v40;
LABEL_15:
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v44++, 1))
      {
        __break(1u);
LABEL_18:
        sub_10000A978(result, a2, v44, v49);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_18;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_10000A8F0(void *result, uint64_t a2, uint64_t a3, _TtC13frauddefensed22TrustKitUIServerClient **a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_10000A6E8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

Swift::Int sub_10000A978(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
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
  v32 = v4;
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
    sub_10000B704(v17 + 40 * v16, v36);
    v33 = v36[0];
    v34 = v36[1];
    v35 = v37;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    v30 = *(v9 + 56) + 40 * v24;
    *v30 = v33;
    *(v30 + 16) = v34;
    *(v30 + 32) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10000ABDC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10000AE84(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10000AEF8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10000AC74(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_10000B088(a1, a3, a4);
  v8 = sub_10000B088(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

unint64_t sub_10000AE84(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10000B00C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10000AEF8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

unint64_t sub_10000B00C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10000B088(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10000B120(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10000AEF8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10000B120(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10000B00C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B194@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000B704(*(v4 + 56) + 40 * v13, &v22);
    v20 = v23;
    v21 = v22;
    v17 = v24;
    *v1 = v4;
    v1[1] = v3;
    v1[2] = v6;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v19 = v1[5];
      *&v22 = v16;
      *(&v22 + 1) = v15;
      v24 = v20;
      v23 = v21;
      v25 = v17;
      v19(&v22);
      return sub_10000BC10(&v22, &qword_1000B6A08, &qword_10008F6B8);
    }

    else
    {
LABEL_13:
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10000B2E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

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

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10000B390(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v64 = a1;
  v65 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v66 = v8;
  v67 = 0;
  v68 = v11 & v9;
  v69 = a2;
  v70 = a3;

  sub_10000B194(&v59);
  v12 = v60;
  if (!v60)
  {
    goto LABEL_25;
  }

  v13 = v59;
  v56 = v61;
  v57 = v62;
  v58 = v63;
  v14 = *a5;
  result = sub_100057F68(v59, v60);
  v23 = v14[2];
  v24 = (v16 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v16;
  if (v14[3] < v26)
  {
    sub_100058508(v26, a4 & 1);
    result = sub_100057F68(v13, v12);
    if ((v27 & 1) == (v16 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v30 = result;
    sub_100059AD4();
    result = v30;
    v28 = *a5;
    if (v27)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v28 = *a5;
  if (v27)
  {
LABEL_11:
    v29 = result;
    v12, v16, v17, v18, v19, v20, v21, v22;
    sub_10000B7B4(&v56, v28[7] + 40 * v29);
    goto LABEL_15;
  }

LABEL_13:
  v28[(result >> 6) + 8] |= 1 << result;
  v31 = (v28[6] + 16 * result);
  *v31 = v13;
  v31[1] = v12;
  v32 = v28[7] + 40 * result;
  v33 = v56;
  v34 = v57;
  *(v32 + 32) = v58;
  *v32 = v33;
  *(v32 + 16) = v34;
  v35 = v28[2];
  v25 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v25)
  {
    v28[2] = v36;
LABEL_15:
    sub_10000B194(&v59);
    v12 = v60;
    if (v60)
    {
      v27 = 1;
      do
      {
        v13 = v59;
        v56 = v61;
        v57 = v62;
        v58 = v63;
        v38 = *a5;
        result = sub_100057F68(v59, v12);
        v46 = v38[2];
        v47 = (v39 & 1) == 0;
        v25 = __OFADD__(v46, v47);
        v48 = v46 + v47;
        if (v25)
        {
          goto LABEL_26;
        }

        a4 = v39;
        if (v38[3] < v48)
        {
          sub_100058508(v48, 1);
          result = sub_100057F68(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v49 = *a5;
        if (a4)
        {
          v37 = result;
          v12, v39, v40, v41, v42, v43, v44, v45;
          sub_10000B7B4(&v56, v49[7] + 40 * v37);
        }

        else
        {
          v49[(result >> 6) + 8] |= 1 << result;
          v50 = (v49[6] + 16 * result);
          *v50 = v13;
          v50[1] = v12;
          v51 = v49[7] + 40 * result;
          v52 = v56;
          v53 = v57;
          *(v51 + 32) = v58;
          *v51 = v52;
          *(v51 + 16) = v53;
          v54 = v49[2];
          v25 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v25)
          {
            goto LABEL_27;
          }

          v49[2] = v55;
        }

        sub_10000B194(&v59);
        v12 = v60;
      }

      while (v60);
    }

LABEL_25:
    sub_10000BAD4(v64);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_10000B6B0()
{
  result = qword_1000B7590;
  if (!qword_1000B7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B7590);
  }

  return result;
}

uint64_t sub_10000B704(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B774()
{
  if (*(v0 + 40))
  {
    sub_100003558((v0 + 16));
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6A00, &qword_10008F6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B824()
{
  result = qword_1000B6A30;
  if (!qword_1000B6A30)
  {
    sub_100003400(&qword_1000B6A20, &qword_10008F6D0);
    sub_10000B8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A30);
  }

  return result;
}

unint64_t sub_10000B8A8()
{
  result = qword_1000B6A38;
  if (!qword_1000B6A38)
  {
    sub_100003400(&qword_1000B6A00, &qword_10008F6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A38);
  }

  return result;
}

uint64_t sub_10000B924(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10006BA7C(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

unint64_t sub_10000B9BC()
{
  result = qword_1000B6A50;
  if (!qword_1000B6A50)
  {
    sub_100003400(&qword_1000B6A48, &unk_100093170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A50);
  }

  return result;
}

unint64_t sub_10000BA74()
{
  result = qword_1000B6A58;
  if (!qword_1000B6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A58);
  }

  return result;
}

void sub_10000BAC8(_TtC13frauddefensed22TrustKitUIServerClient *result, SEL a2, id a3, id x3_0, id x4_0, id x5_0, id x6_0, id x7_0)
{
  if (a3)
  {
    result, a2, a3, x3_0, x4_0, x5_0, x6_0, x7_0;
  }
}

uint64_t sub_10000BADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogicGraphDecisioningComponent.LogicGraphInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000BB40()
{
  result = qword_1000B6A78;
  if (!qword_1000B6A78)
  {
    sub_100003400(&qword_1000B6908, &qword_10008F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A78);
  }

  return result;
}

unint64_t sub_10000BBBC()
{
  result = qword_1000B6A90;
  if (!qword_1000B6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6A90);
  }

  return result;
}

uint64_t sub_10000BC10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002074(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000BC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000BCB8(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 sub_10000BD10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000BD24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000BD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000BDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SpamDecisioningAsset(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000BEAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SpamDecisioningAsset(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10000BF68(uint64_t a1)
{
  type metadata accessor for SpamDecisioningAsset(319);
  if (v1 <= 0x3F)
  {
    sub_10000BFFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000BFFC(uint64_t a1)
{
  if (!qword_1000B6B10)
  {
    sub_100003400(&qword_1000B6A00, &qword_10008F6B0);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1000B6B10);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogicGraphDecisioningComponent.ProcessingType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C1E8()
{
  result = qword_1000B6B48[0];
  if (!qword_1000B6B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B6B48);
  }

  return result;
}

uint64_t sub_10000C240(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
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

uint64_t sub_10000C310()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 104);
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10000C3D4()
{
  sub_10000C310();

  return swift_deallocClassInstance();
}

uint64_t sub_10000C474()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000C558, 0, 0);
}

uint64_t sub_10000C558()
{
  v1 = v0[15];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[17] = v4;
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[19] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_10000C650;
  v6 = v0[14];

  return sub_1000505B8(v6);
}

uint64_t sub_10000C650()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10000CA40;
  }

  else
  {

    v2 = sub_10000C76C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C76C()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_10000C860;
  v6 = v0[12];
  v7 = v0[13];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_10000C860()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10000CC1C;
  }

  else
  {
    v2 = sub_10000C974;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000C974()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 240);

  v5 = v0[1];
  v6.n128_u64[0] = v4;

  return v5(v6);
}

uint64_t sub_10000CA40()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v5._object = 0x80000001000946F0;
  v5._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 28);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_10000C860;
  v24 = v0[12];
  v25 = v0[13];

  return sub_1000122EC(v24, v25);
}

uint64_t sub_10000CC1C(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(91);
  v4._object = 0x80000001000948F0;
  v4._countAndFlagsBits = 0xD000000000000057;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 38);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;

  sub_100010C70(v2);

  v22 = *(v1 + 8);
  v23.n128_u64[0] = 0x40CC200000000000;

  return v22(v23);
}

char *sub_10000CDA8()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    type metadata accessor for UAFAssetManager(0);
    v1 = swift_allocObject();
    v2 = OBJC_IVAR____TtC13frauddefensed15UAFAssetManager_logger;
    if (qword_1000B66B8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v4 = sub_100003448(v3, qword_1000B9400);
    (*(*(v3 - 8) + 16))(&v1[v2], v4, v3);
    *(v1 + 2) = 0xD000000000000019;
    *(v1 + 3) = 0x8000000100094840;
    *(v1 + 4) = 0xD000000000000022;
    *(v1 + 5) = 0x8000000100094860;
    *(v1 + 6) = 0xD000000000000023;
    *(v1 + 7) = 0x8000000100094890;
    *(v1 + 8) = 0x6D6170732E6B74;
    *(v1 + 9) = 0xE700000000000000;
    *(v0 + 48) = v1;
  }

  return v1;
}

uint64_t sub_10000CF0C()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000CFF0, 0, 0);
}

uint64_t sub_10000CFF0()
{
  v1 = v0[15];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[16] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[17] = v4;
  v0[18] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[19] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_10000D0E8;
  v6 = v0[14];

  return sub_1000505B8(v6);
}

uint64_t sub_10000D0E8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10000D4D8;
  }

  else
  {

    v2 = sub_10000D204;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000D204()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[14];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_10000D2F8;
  v6 = v0[12];
  v7 = v0[13];

  return sub_1000122EC(v6, v7);
}

uint64_t sub_10000D2F8()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10000D6B4;
  }

  else
  {
    v2 = sub_10000D40C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000D40C()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_100010C70(v0[15]);
  v3 = *(v2 + *(v1 + 32));

  sub_100011370(v2, type metadata accessor for SpamDecisioningAsset);
  v4 = *(v3 + 248);

  v5 = v0[1];
  v6.n128_u64[0] = v4;

  return v5(v6);
}

uint64_t sub_10000D4D8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v5._object = 0x80000001000946F0;
  v5._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 51);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_100011DFC(v0[15], v0[13], &qword_1000B6CB8, &unk_10008F9F0);
  v23 = swift_task_alloc();
  v0[22] = v23;
  *v23 = v0;
  v23[1] = sub_10000D2F8;
  v24 = v0[12];
  v25 = v0[13];

  return sub_1000122EC(v24, v25);
}

uint64_t sub_10000D6B4(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(91);
  v4._object = 0x80000001000948F0;
  v4._countAndFlagsBits = 0xD000000000000057;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 61);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;

  sub_100010C70(v2);

  v22 = *(v1 + 8);
  v23.n128_u64[0] = 0x40AC200000000000;

  return v22(v23);
}

uint64_t sub_10000D860()
{
  sub_10000CDA8();
  v1 = sub_10005163C();

  if (v1)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[2];
    v5 = static os_log_type_t.default.getter();
    sub_10005E11C(v5, 0xD00000000000002ALL, 0x80000001000948C0, 0xD000000000000061, 0x80000001000944F0, 72);
    v0[3] = *(v4 + 48);

    v6 = swift_task_alloc();
    v0[4] = v6;
    *v6 = v0;
    v6[1] = sub_10000D9A4;

    return sub_100051B58();
  }
}

uint64_t sub_10000D9A4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000DAE0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10000DAE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000DB44(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v2[98] = type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput(0);
  v2[99] = swift_task_alloc();
  type metadata accessor for SpamDecisioningAsset(0);
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[102] = swift_task_alloc();
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();

  return _swift_task_switch(sub_10000DC64, 0, 0);
}

uint64_t sub_10000DC64()
{
  v0[105] = sub_10000CDA8();
  v1 = swift_task_alloc();
  v0[106] = v1;
  *v1 = v0;
  v1[1] = sub_10000DD08;
  v2 = v0[103];

  return sub_1000505B8(v2);
}

uint64_t sub_10000DD08()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_10000EFD0;
  }

  else
  {

    v2 = sub_10000DE24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000DE24()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_100011D64(v2, v1);
  sub_100011DFC(v0[104], v0[102], &qword_1000B6CB8, &unk_10008F9F0);
  v4 = swift_task_alloc();
  v0[108] = v4;
  *v4 = v0;
  v4[1] = sub_10000DF2C;
  v5 = v0[102];
  v6 = v0[100];

  return sub_1000122EC(v6, v5);
}

uint64_t sub_10000DF2C()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_10000F1CC;
  }

  else
  {
    v2 = sub_10000E040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000E040()
{
  v1 = v0[109];
  sub_100010CD8(v0[100], v0[101]);
  v2 = sub_100010D3C(0);
  v0[110] = v2;
  type metadata accessor for SignaturesSQLiteManager(0);
  swift_allocObject();
  v3 = sub_10006D3FC(0, 0);
  v0[111] = v3;
  v0[62] = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v0[63] = &off_1000B0938;
  v0[59] = v2;
  v0[60] = v3;
  type metadata accessor for SignatureAnalysisDecisioningComponent(0);
  v4 = swift_allocObject();
  v5 = sub_100010F28((v0 + 59), &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v6 = swift_task_alloc();
  (_swift_cvw_initWithCopy)(v6, v5, &type metadata for SignatureAnalysisDecisioningComponentProvider);
  v7 = *v6;
  v8 = v6[1];

  v9 = sub_100010FC8(v7, v8, v4);
  v0[112] = v9;
  sub_100003558(v0 + 59);

  sub_1000318A4();
  if (v1)
  {
    v10 = static os_log_type_t.error.getter();
    _StringGuts.grow(_:)(77);
    v11._object = 0x80000001000945B0;
    v11._countAndFlagsBits = 0xD000000000000049;
    String.append(_:)(v11);
    swift_getErrorValue();
    v12._countAndFlagsBits = Error.localizedDescription.getter();
    object = v12._object;
    String.append(_:)(v12);
    object, v14, v15, v16, v17, v18, v19, v20;
    v21._countAndFlagsBits = 32032;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    sub_10005E11C(v10, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 116);
    0xE000000000000000, v22, v23, v24, v25, v26, v27, v28;

    v29 = sub_1000111EC((v9 + 16), *(v9 + 40))[1];
    v30 = qword_1000B6700;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = qword_1000B89E0;
    v1 = swift_allocObject();
    *(v1 + 16) = sub_100011230;
    *(v1 + 24) = v29;
    v0[45] = sub_100011248;
    v0[46] = v1;
    v0[41] = _NSConcreteStackBlock;
    v0[42] = 1107296256;
    v0[43] = sub_100010FA0;
    v0[44] = &unk_1000AEB48;
    v32 = _Block_copy(v0 + 41);

    dispatch_sync(v31, v32);
    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
      v33 = v0[96];
      sub_100010C70(v0[104]);
      sub_10000F9E8(v33);

      v34 = v0[1];
LABEL_10:

      return v34();
    }

    __break(1u);
  }

  else
  {
    v35 = qword_1000B6700;

    if (v35 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v36 = qword_1000B89E0;
  v0[113] = qword_1000B89E0;
  OS_dispatch_queue.sync<A>(execute:)();

  if (v1)
  {
    v37 = sub_1000111EC((v9 + 16), *(v9 + 40))[1];
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100011E70;
    *(v38 + 24) = v37;
    v0[51] = sub_100011E7C;
    v0[52] = v38;
    v0[47] = _NSConcreteStackBlock;
    v0[48] = 1107296256;
    v0[49] = sub_100010FA0;
    v0[50] = &unk_1000AEB98;
    v39 = _Block_copy(v0 + 47);
    swift_retain_n();

    dispatch_sync(v36, v39);
    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      return result;
    }

    v42 = v0[104];
    v43 = v0[96];
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    sub_100010C70(v42);
    sub_10000F9E8(v43);

    v34 = v0[1];
    goto LABEL_10;
  }

  v0[114] = v0[92];
  v44 = swift_task_alloc();
  v0[115] = v44;
  *v44 = v0;
  v44[1] = sub_10000E774;

  return sub_10000FB20();
}

uint64_t sub_10000E774(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 928) = a1;
  *(v3 + 936) = a2;

  return _swift_task_switch(sub_10000E878, 0, 0);
}

uint64_t sub_10000E878(uint64_t a1)
{
  v2 = v1[101];
  v3 = v1[99];
  v4 = v1[98];
  v1[118] = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  v5 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(80);
  v6._object = 0x8000000100094600;
  v6._countAndFlagsBits = 0xD00000000000004CLL;
  String.append(_:)(v6);
  v7._countAndFlagsBits = Duration.description.getter();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 124);
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  sub_100011308(v2, v3, type metadata accessor for SpamDecisioningAsset);
  *(v3 + *(v4 + 20)) = 0;
  v1[67] = v4;
  v1[68] = &off_1000B0920;
  v24 = sub_1000112A4(v1 + 64);
  sub_100011308(v3, v24, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v25 = swift_task_alloc();
  v1[119] = v25;
  *v25 = v1;
  v25[1] = sub_10000EA74;
  v26 = v1[117];
  v27 = v1[116];

  return sub_100031B04((v1 + 69), (v1 + 64), v27, v26, 0);
}

uint64_t sub_10000EA74()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  if (v0)
  {
    v3 = sub_10000F388;
  }

  else
  {
    sub_100003558((v2 + 512));
    v3 = sub_10000EB90;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000EB90()
{
  v1 = v0[114];
  v2 = v0[99];
  sub_100002074(&qword_1000B6CC8, &unk_10008F950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008F840;
  *(inited + 32) = 0x79745F6863746566;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "fetched_count");
  *(inited + 70) = -4864;
  v4 = sub_10005BC54(v0[70]);
  sub_100056BB0(v4);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6, v8, v9, v10, v11, v12, v13, v14;
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001000946B0;
  v15 = sub_10005BD48();
  sub_100056D70(v15);
  v17 = v16;
  v18 = String._bridgeToObjectiveC()();
  v17, v19, v20, v21, v22, v23, v24, v25;
  *(inited + 96) = v18;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = 0x80000001000946D0;
  sub_100011CC4();
  isa = NSNumber.init(BOOLeanLiteral:)(*(v0 + 584)).super.super.isa;
  sub_100011D10((v0 + 69));
  *(inited + 120) = isa;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000100094690;
  v27 = sub_10005BC54(v1);
  sub_100056BB0(v27);
  v29 = v28;
  v30 = String._bridgeToObjectiveC()();
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(inited + 144) = v30;
  v38 = sub_100011A78(inited);
  swift_setDeallocating();
  sub_100002074(&qword_1000B6CD0, &qword_100092B90);
  swift_arrayDestroy();
  v39 = sub_100056EF0(1u, v38, 0, 0);
  v38, v40, v41, v42, v43, v44, v45, v46;
  v39, v47, v48, v49, v50, v51, v52, v53;
  sub_100011370(v2, type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  v54 = v0[113];
  v55 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v56 = swift_allocObject();
  *(v56 + 16) = sub_100011E70;
  *(v56 + 24) = v55;
  v0[57] = sub_100011E7C;
  v0[58] = v56;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000AEBE8;
  v57 = _Block_copy(v0 + 53);
  swift_retain_n();

  dispatch_sync(v54, v57);
  _Block_release(v57);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v59 = v0[96];
    sub_100010C70(v0[104]);
    sub_10000F9E8(v59);

    v60 = v0[1];

    return v60();
  }

  return result;
}

uint64_t sub_10000EFD0()
{
  v1 = v0[104];

  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(73);
  v3._object = 0x80000001000944A0;
  v3._countAndFlagsBits = 0xD000000000000045;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 94);

  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  v21 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v21 - 8) + 56))(v1, 1, 1, v21);
  sub_100011DFC(v0[104], v0[102], &qword_1000B6CB8, &unk_10008F9F0);
  v22 = swift_task_alloc();
  v0[108] = v22;
  *v22 = v0;
  v22[1] = sub_10000DF2C;
  v23 = v0[102];
  v24 = v0[100];

  return sub_1000122EC(v24, v23);
}

uint64_t sub_10000F1CC(uint64_t a1)
{
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(74);
  v3._object = 0x8000000100094560;
  v3._countAndFlagsBits = 0xD000000000000046;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 102);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;

  v21 = v1[96];
  sub_100010C70(v1[104]);
  sub_10000F9E8(v21);

  v22 = v1[1];

  return v22();
}

uint64_t sub_10000F388()
{
  v1 = v0[120];
  sub_100011370(v0[99], type metadata accessor for SignatureAnalysisDecisioningComponent.SignatureAnalysisSetupInput);
  sub_100003558(v0 + 64);
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(65);
  v3._countAndFlagsBits = 0xD00000000000003DLL;
  v3._object = 0x8000000100094650;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 140);
  0xE000000000000000, v14, v15, v16, v17, v18, v19, v20;
  v0[94] = v1;
  swift_errorRetain();
  sub_100002074(&qword_1000B6CC0, &qword_100091740);
  if (swift_dynamicCast())
  {
    v26 = v0[86];
    v27 = v0[87];
    v28 = *(v0 + 704);
    if (v28 == 9)
    {
      v29 = v0[114];
      sub_100002074(&qword_1000B6CC8, &unk_10008F950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10008F850;
      *(inited + 32) = 0x79745F6863746566;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = String._bridgeToObjectiveC()();
      *(inited + 56) = 0xD000000000000013;
      *(inited + 64) = 0x8000000100094690;
      v31 = sub_10005BC54(v29);
      sub_100056BB0(v31);
      v33 = v32;
      v34 = String._bridgeToObjectiveC()();
      v33, v35, v36, v37, v38, v39, v40, v41;
      *(inited + 72) = v34;
      v42 = sub_100011A78(inited);
      swift_setDeallocating();
      sub_100002074(&qword_1000B6CD0, &qword_100092B90);
      swift_arrayDestroy();
      v43 = sub_10004F2E4(v26, v27, 9);
      v45 = v44;
      sub_100011CAC(v26, v27, 9, v46, v47, v48, v49, v50);
      v51 = sub_100056EF0(1u, v42, v43, v45);
      v45, v52, v53, v54, v55, v56, v57, v58;
      v42, v59, v60, v61, v62, v63, v64, v65;
      v51, v66, v67, v68, v69, v70, v71, v72;
    }

    else
    {
      sub_100011CAC(v0[86], v0[87], v28, v21, v22, v23, v24, v25);
    }
  }

  v0[95] = v0[120];
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v73 = v0[114];
    sub_100002074(&qword_1000B6CC8, &unk_10008F950);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_10008F850;
    *(v74 + 32) = 0x79745F6863746566;
    *(v74 + 40) = 0xEA00000000006570;
    *(v74 + 48) = String._bridgeToObjectiveC()();
    *(v74 + 56) = 0xD000000000000013;
    *(v74 + 64) = 0x8000000100094690;
    v75 = sub_10005BC54(v73);
    sub_100056BB0(v75);
    v77 = v76;
    v78 = String._bridgeToObjectiveC()();
    v77, v79, v80, v81, v82, v83, v84, v85;
    *(v74 + 72) = v78;
    v86 = sub_100011A78(v74);
    swift_setDeallocating();
    sub_100002074(&qword_1000B6CD0, &qword_100092B90);
    swift_arrayDestroy();
    v87 = sub_100056EF0(1u, v86, 0x74694B64756F6C63, 0xEF6572756C696146);

    v86, v88, v89, v90, v91, v92, v93, v94;
    v87, v95, v96, v97, v98, v99, v100, v101;
  }

  else
  {
  }

  v102 = v0[113];
  v103 = sub_1000111EC((v0[112] + 16), *(v0[112] + 40))[1];
  v104 = swift_allocObject();
  *(v104 + 16) = sub_100011E70;
  *(v104 + 24) = v103;
  v0[57] = sub_100011E7C;
  v0[58] = v104;
  v0[53] = _NSConcreteStackBlock;
  v0[54] = 1107296256;
  v0[55] = sub_100010FA0;
  v0[56] = &unk_1000AEBE8;
  v105 = _Block_copy(v0 + 53);
  swift_retain_n();

  dispatch_sync(v102, v105);
  _Block_release(v105);
  LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

  if (v105)
  {
    __break(1u);
  }

  else
  {
    sub_100011370(v0[101], type metadata accessor for SpamDecisioningAsset);
    v107 = v0[96];
    sub_100010C70(v0[104]);
    sub_10000F9E8(v107);

    v108 = v0[1];

    return v108();
  }

  return result;
}

void sub_10000F9E8(void *a1)
{
  [a1 setTaskCompleted];
  v2 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(55);
  v3._object = 0x8000000100094800;
  v3._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v3);
  v4 = [a1 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v7, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 32032;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 87);

  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
}

uint64_t sub_10000FB20()
{
  v1[10] = v0;
  v1[11] = type metadata accessor for SpamDecisioningAsset(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10000FC10, 0, 0);
}

uint64_t sub_10000FC10()
{
  v1 = v0[16];
  v2 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v0[17] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[18] = v4;
  v0[19] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v0[20] = sub_10000CDA8();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_10000FD08;
  v6 = v0[15];

  return sub_1000505B8(v6);
}

uint64_t sub_10000FD08()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_100010284;
  }

  else
  {

    v2 = sub_10000FE24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000FE24()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  sub_100010C70(v2);
  v1(v4, 0, 1, v3);
  sub_100011D64(v4, v2);
  sub_100011DFC(v0[16], v0[14], &qword_1000B6CB8, &unk_10008F9F0);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_10000FF1C;
  v6 = v0[14];
  v7 = v0[12];

  return sub_1000122EC(v7, v6);
}

uint64_t sub_10000FF1C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100010464;
  }

  else
  {
    v2 = sub_100010030;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010030()
{
  v1 = v0[13];
  v2 = v0[11];
  sub_100010CD8(v0[12], v1);
  v3 = *(v1 + *(v2 + 32));
  v4 = *(v3 + 232);
  if (*v4->endpoint)
  {

    sub_100057F68(0x746C7561666564, 0xE700000000000000);
    if (v5)
    {
      v12 = v0[16];
      v13 = v0[13];
      v4, v5, v6, v7, v8, v9, v10, v11;
      goto LABEL_6;
    }

    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  v12 = v0[16];
  v13 = v0[13];
  v14 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(78);
  v15._object = 0x8000000100094790;
  v15._countAndFlagsBits = 0xD00000000000004ALL;
  String.append(_:)(v15);
  v16 = *(v3 + 232);

  v17 = Dictionary.description.getter();
  v19 = v18;
  v16, v18, v20, v21, v22, v23, v24, v25;
  v26._countAndFlagsBits = v17;
  v26._object = v19;
  String.append(_:)(v26);
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34._countAndFlagsBits = 32032;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  sub_10005E11C(v14, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 197);
  0xE000000000000000, v35, v36, v37, v38, v39, v40, v41;
LABEL_6:
  v42 = static Duration.seconds(_:)();
  v44 = v43;
  sub_100010C70(v12);
  sub_100011370(v13, type metadata accessor for SpamDecisioningAsset);

  v45 = v0[1];

  return v45(v42, v44);
}

uint64_t sub_100010284()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  v4 = static os_log_type_t.default.getter();
  _StringGuts.grow(_:)(90);
  v5._object = 0x80000001000946F0;
  v5._countAndFlagsBits = 0xD000000000000056;
  String.append(_:)(v5);
  swift_getErrorValue();
  v6._countAndFlagsBits = Error.localizedDescription.getter();
  object = v6._object;
  String.append(_:)(v6);
  object, v8, v9, v10, v11, v12, v13, v14;
  v15._countAndFlagsBits = 32032;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  sub_10005E11C(v4, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 175);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;

  sub_100010C70(v3);
  v2(v3, 1, 1, v1);
  sub_100011DFC(v0[16], v0[14], &qword_1000B6CB8, &unk_10008F9F0);
  v23 = swift_task_alloc();
  v0[23] = v23;
  *v23 = v0;
  v23[1] = sub_10000FF1C;
  v24 = v0[14];
  v25 = v0[12];

  return sub_1000122EC(v25, v24);
}

uint64_t sub_100010464(uint64_t a1)
{
  v2 = *(v1 + 128);
  v3 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(56);
  v4._object = 0x8000000100094750;
  v4._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  object = v5._object;
  String.append(_:)(v5);
  object, v7, v8, v9, v10, v11, v12, v13;
  v14._countAndFlagsBits = 32032;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  sub_10005E11C(v3, 0, 0xE000000000000000, 0xD000000000000061, 0x80000001000944F0, 183);
  0xE000000000000000, v15, v16, v17, v18, v19, v20, v21;
  v22 = static Duration.seconds(_:)();
  v24 = v23;

  sub_100010C70(v2);

  v25 = *(v1 + 8);

  return v25(v22, v24);
}

uint64_t sub_10001060C()
{

  v1 = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesBackgroundActivity(uint64_t a1)
{
  result = qword_1000B6C00;
  if (!qword_1000B6C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001070C(uint64_t a1)
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

uint64_t sub_1000107C8()
{
  *(v0 + 16) = xmmword_10008F860;
  *(v0 + 32) = xmmword_10008F870;
  *(v0 + 48) = 0;
  type metadata accessor for DaemonAnalyticsManager(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v4 = sub_100003448(v3, qword_1000B93D0);
  v5 = *(*(v3 - 8) + 16);
  v5(v1 + v2, v4, v3);
  v6 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v9 = sub_100003448(v3, qword_1000B9388);
  v5(v7 + v8, v9, v3);
  *(v1 + v6) = v7;
  *(v0 + 56) = v1;
  v10 = OBJC_IVAR____TtC13frauddefensed28SignaturesBackgroundActivity_logger;
  if (qword_1000B6688 != -1)
  {
    swift_once();
  }

  v11 = sub_100003448(v3, qword_1000B9370);
  v5(v0 + v10, v11, v3);
  return v0;
}

uint64_t sub_1000109BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010A4C;

  return sub_10000CF0C();
}

uint64_t sub_100010A4C(double a1)
{
  v6 = *v1;

  v3 = *(v6 + 8);
  v4.n128_f64[0] = a1;

  return v3(v4);
}

uint64_t sub_100010B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A54;

  return sub_10000D840();
}

uint64_t sub_100010BD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100011E6C;

  return sub_10000DB44(a1);
}

uint64_t sub_100010C70(uint64_t a1)
{
  v2 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpamDecisioningAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010D3C(void *a1)
{
  sub_100002074(&qword_1000B6CF8, &qword_10008F978);
  v2 = swift_allocObject();
  v3 = qword_1000B7FA8;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100003448(v4, qword_1000B93E8);
  v6 = *(*(v4 - 8) + 16);
  v6(v2 + v3, v5, v4);
  *(v2 + qword_1000B7FB0) = 200;
  *(v2 + qword_1000B7FB8) = 1;
  v6(v2 + qword_1000B7FC0, v5, v4);
  if (qword_1000B66E0 != -1)
  {
    swift_once();
  }

  if (byte_1000B9460 != 1)
  {
    goto LABEL_11;
  }

  if (qword_1000B66D8 != -1)
  {
    swift_once();
  }

  if ((qword_1000B9450 != 0xD000000000000014 || 0x80000001000947E0 != *algn_1000B9458) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_11:

    a1 = 0;
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_100010F28(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100010FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = &type metadata for SignatureAnalysisDecisioningComponentProvider;
  v19 = &off_1000B0938;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v4 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_changeTokenCache;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_100003448(v5, qword_1000B93E8);
  v7 = *(*(v5 - 8) + 16);
  v7(a3 + v4, v6, v5);
  v8 = OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_analyticsManager;
  type metadata accessor for DaemonAnalyticsManager(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_logger;
  if (qword_1000B66A8 != -1)
  {
    swift_once();
  }

  v11 = sub_100003448(v5, qword_1000B93D0);
  v7(v9 + v10, v11, v5);
  v12 = OBJC_IVAR____TtC13frauddefensed22DaemonAnalyticsManager_eligibilityManager;
  type metadata accessor for EligibilityManager(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = OBJC_IVAR____TtC13frauddefensed18EligibilityManager_logger;
  if (qword_1000B6690 != -1)
  {
    swift_once();
  }

  v15 = sub_100003448(v5, qword_1000B9388);
  v7(v13 + v14, v15, v5);
  *(v9 + v12) = v13;
  *(a3 + v8) = v9;
  v7(a3 + OBJC_IVAR____TtC13frauddefensed37SignatureAnalysisDecisioningComponent_logger, v6, v5);
  sub_100011DD4(&v17, a3 + 16);
  return a3;
}

void *sub_1000111EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100011270(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000112A4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100011308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100011370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000113D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D08, &qword_10008F990);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100057F68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1000114E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D00, &qword_10008F988);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100057F68(v5, v6);
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

unint64_t sub_1000115E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D28, &unk_10008F9C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, v13, &qword_1000B6910, &qword_10008F610);
      result = sub_100057FE0(v13);
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
      result = sub_100011DEC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100011724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6A10, &qword_10008F6C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, &v16, &qword_1000B6D20, &qword_10008F9C0);
      v5 = v16;
      v6 = v17;
      result = sub_100057F68(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_10001185C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CE8, &qword_100092840);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100005A7C(v7, v8);
      result = sub_100057F68(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100011974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CF0, &qword_10008F970);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_100005A7C(v5, v6);
      result = sub_100058024(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_100011A78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6CE0, &unk_10008F960);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100057F68(v5, v6);
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

unint64_t sub_100011B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002074(&qword_1000B6D10, &qword_10008F9A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011DFC(v4, &v13, &qword_1000B6D18, &qword_10008F9A8);
      v5 = v13;
      v6 = v14;
      result = sub_100057F68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100011DEC(&v15, (v3[7] + 32 * result));
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

void sub_100011CAC(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3 <= 0x1Cu)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

unint64_t sub_100011CC4()
{
  result = qword_1000B6CD8;
  if (!qword_1000B6CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000B6CD8);
  }

  return result;
}

uint64_t sub_100011D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011DD4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_100011DEC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100011DFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002074(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100011E9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for LogicGraphAsset();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for Logger();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100012030(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for LogicGraphAsset();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for Logger();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000121D0(uint64_t a1)
{
  sub_10001C548(319, &qword_1000B6D98, type metadata accessor for UAFAssetManager.AssetInfo);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LogicGraphAsset();
    if (v2 <= 0x3F)
    {
      type metadata accessor for JavaScriptAsset(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ConfigurationsAsset(319);
        if (v4 <= 0x3F)
        {
          sub_10001C548(319, &unk_1000B6DA0, type metadata accessor for RecordZonesAsset);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Logger();
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

uint64_t sub_1000122EC(uint64_t a1, uint64_t a2)
{
  v2[20] = a1;
  v2[21] = a2;
  v3 = type metadata accessor for LogicGraphAsset();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v4 = type metadata accessor for URL.DirectoryHint();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_100002074(&qword_1000B6CB8, &unk_10008F9F0);
  v2[47] = swift_task_alloc();
  v5 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v2[48] = v5;
  v2[49] = *(v5 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = type metadata accessor for SpamDecisioningAsset.AssetURLs(0);
  v2[52] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[53] = v6;
  v2[54] = *(v6 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();

  return _swift_task_switch(sub_1000126EC, 0, 0);
}

uint64_t sub_1000126EC()
{
  v1 = *(v0 + 160);
  v2 = type metadata accessor for SpamDecisioningAsset(0);
  *(v0 + 568) = v2;
  v3 = *(v2 + 40);
  *(v0 + 744) = v3;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 576) = v4;
  v5 = sub_100003448(v4, qword_1000B93E8);
  v6 = *(v4 - 8);
  *(v0 + 584) = v6;
  (*(v6 + 16))(v1 + v3, v5, v4);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 560);
    v9 = *(v0 + 424);
    v10 = *(v0 + 432);
    v11 = *(v0 + 384);
    v12 = *(v0 + 392);
    v13 = *(v0 + 160);
    v14 = v7;
    URL.init(fileURLWithPath:)();
    v14, v15, v16, v17, v18, v19, v20, v21;
    (*(v10 + 32))(&v13[*(v11 + 20)], v8, v9);
    strcpy(v13, "user-specified");
    v13[15] = -18;
    v22 = &v13[*(v11 + 24)];
    *v22 = 3157553;
    *(v22 + 1) = 0xE300000000000000;
    (*(v12 + 56))(v13, 0, 1, v11);
  }

  else
  {
    sub_100011DFC(*(v0 + 168), *(v0 + 160), &qword_1000B6CB8, &unk_10008F9F0);
  }

  v23 = *(v0 + 424);
  v24 = *(v0 + 432);
  v26 = *(v0 + 408);
  v25 = *(v0 + 416);
  v27 = *(v0 + 384);
  v28 = *(v0 + 392);
  v29 = *(v0 + 376);
  v30 = *(v0 + 168);
  v31 = *(v24 + 56);
  *(v0 + 592) = v31;
  *(v0 + 600) = (v24 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31(v25, 1, 1, v23);
  v32 = v26[5];
  *(v0 + 748) = v32;
  v199 = v32;
  v31(v25 + v32, 1, 1, v23);
  v33 = v26[6];
  *(v0 + 752) = v33;
  v200 = v33;
  v31(v25 + v33, 1, 1, v23);
  v34 = v26[7];
  *(v0 + 756) = v34;
  v201 = v34;
  v31(v25 + v34, 1, 1, v23);
  v35 = v26[8];
  *(v0 + 760) = v35;
  v31(v25 + v35, 1, 1, v23);
  sub_100011DFC(v30, v29, &qword_1000B6CB8, &unk_10008F9F0);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    sub_10000BC10(*(v0 + 376), &qword_1000B6CB8, &unk_10008F9F0);
  }

  else
  {
    v36 = *(v0 + 560);
    v207 = *(v0 + 432);
    v204 = *(v0 + 424);
    v197 = *(v0 + 416);
    v198 = v35;
    v37 = *(v0 + 368);
    v38 = *(v0 + 248);
    v39 = *(v0 + 256);
    v40 = *(v0 + 240);
    v202 = *(v0 + 400);
    sub_10001C20C(*(v0 + 376), v202);
    object = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    object, v42, v43, v44, v45, v46, v47, v48;
    *(v0 + 80) = 0xD00000000000001BLL;
    *(v0 + 88) = 0x8000000100094EE0;
    v206 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v205 = *(v38 + 104);
    v205(v39);
    sub_10001C1B8();
    URL.appending<A>(component:directoryHint:)();
    v49 = *(v38 + 8);
    v49(v39, v40);
    v203 = *(v207 + 8);
    v203(v36, v204);
    v31(v37, 0, 1, v204);
    sub_10001C270(v37, v197);
    v50 = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    v50, v51, v52, v53, v54, v55, v56, v57;
    *(v0 + 96) = 0xD000000000000019;
    *(v0 + 104) = 0x8000000100094E50;
    (v205)(v39, v206, v40);
    URL.appending<A>(component:directoryHint:)();
    v49(v39, v40);
    v203(v36, v204);
    v31(v37, 0, 1, v204);
    sub_10001C270(v37, v25 + v199);
    v58 = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    v58, v59, v60, v61, v62, v63, v64, v65;
    *(v0 + 112) = 0xD000000000000010;
    *(v0 + 120) = 0x8000000100094DC0;
    (v205)(v39, v206, v40);
    URL.appending<A>(component:directoryHint:)();
    v49(v39, v40);
    v203(v36, v204);
    v31(v37, 0, 1, v204);
    sub_10001C270(v37, v25 + v200);
    v66 = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    v66, v67, v68, v69, v70, v71, v72, v73;
    *(v0 + 128) = 0xD000000000000014;
    *(v0 + 136) = 0x8000000100094D30;
    (v205)(v39, v206, v40);
    URL.appending<A>(component:directoryHint:)();
    v49(v39, v40);
    v203(v36, v204);
    v31(v37, 0, 1, v204);
    sub_10001C270(v37, v25 + v201);
    v74 = URL.path(percentEncoded:)(1)._object;
    URL.init(fileURLWithPath:)();
    v74, v75, v76, v77, v78, v79, v80, v81;
    *(v0 + 144) = 0xD000000000000012;
    *(v0 + 152) = 0x8000000100094CA0;
    (v205)(v39, v206, v40);
    URL.appending<A>(component:directoryHint:)();
    v49(v39, v40);
    v203(v36, v204);
    sub_10001C2E0(v202, type metadata accessor for UAFAssetManager.AssetInfo);
    v31(v37, 0, 1, v204);
    sub_10001C270(v37, v25 + v198);
  }

  sub_100054AB0();
  if (v82)
  {
    v83 = *(v0 + 424);
    v84 = *(v0 + 368);
    v86 = *(v0 + 248);
    v85 = *(v0 + 256);
    v87 = *(v0 + 240);
    v88._object = 0x8000000100094EE0;
    v88._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v88);
    v31(v84, 1, 1, v83);
    (*(v86 + 104))(v85, enum case for URL.DirectoryHint.inferFromPath(_:), v87);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v83) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(53);
    v89._countAndFlagsBits = 0xD000000000000031;
    v89._object = 0x8000000100094F00;
    String.append(_:)(v89);
    v90 = URL.path(percentEncoded:)(1);
    v91 = v90._object;
    String.append(_:)(v90);
    v91, v92, v93, v94, v95, v96, v97, v98;
    v99._countAndFlagsBits = 32032;
    v99._object = 0xE200000000000000;
    String.append(_:)(v99);
    sub_10005E11C(v83, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 56);
    0xE000000000000000, v100, v101, v102, v103, v104, v105, v106;
    v107 = swift_task_alloc();
    *(v0 + 608) = v107;
    *v107 = v0;
    v107[1] = sub_100013900;
    v108 = *(v0 + 544);
    v109 = *(v0 + 232);
LABEL_11:

    return sub_10001B97C(v109, v108);
  }

  v111 = *(v0 + 424);
  v112 = *(v0 + 432);
  v113 = *(v0 + 360);
  sub_100011DFC(*(v0 + 416), v113, &qword_1000B6DE8, &qword_10008FA30);
  v114 = *(v112 + 48);
  if (v114(v113, 1, v111) == 1)
  {
    sub_10000BC10(*(v0 + 360), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 552), *(v0 + 360), *(v0 + 424));
    v115 = [objc_opt_self() defaultManager];
    v116 = URL.path(percentEncoded:)(1)._object;
    v117 = String._bridgeToObjectiveC()();
    v116, v118, v119, v120, v121, v122, v123, v124;
    LODWORD(v116) = [v115 fileExistsAtPath:v117];

    if (v116)
    {
      v125 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(39);
      0xE000000000000000, v126, v127, v128, v129, v130, v131, v132;
      v133 = URL.path(percentEncoded:)(1);
      v134 = v133._object;
      String.append(_:)(v133);
      v134, v135, v136, v137, v138, v139, v140, v141;
      v142._countAndFlagsBits = 32032;
      v142._object = 0xE200000000000000;
      String.append(_:)(v142);
      sub_10005E11C(v125, 0xD000000000000023, 0x8000000100094EB0, 0xD000000000000059, 0x80000001000949D0, 62);
      0x8000000100094EB0, v143, v144, v145, v146, v147, v148, v149;
      v150 = swift_task_alloc();
      *(v0 + 624) = v150;
      *v150 = v0;
      v150[1] = sub_100014494;
      v108 = *(v0 + 552);
      v109 = *(v0 + 224);
      goto LABEL_11;
    }

    (*(*(v0 + 432) + 8))(*(v0 + 552), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v152 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v153 = [v152 resourceURL];

  if (v153)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v154 = 0;
  }

  else
  {
    v154 = 1;
  }

  v155 = *(v0 + 424);
  v157 = *(v0 + 344);
  v156 = *(v0 + 352);
  v31(v157, v154, 1, v155);
  sub_10001C148(v157, v156);
  if (v114(v156, 1, v155) != 1)
  {
    v163 = *(v0 + 536);
    v164 = *(v0 + 528);
    v165 = *(v0 + 424);
    v166 = *(v0 + 432);
    v167 = *(v0 + 352);
    v169 = *(v0 + 248);
    v168 = *(v0 + 256);
    v170 = *(v0 + 240);
    *(v0 + 16) = 0xD00000000000002DLL;
    *(v0 + 24) = 0x8000000100094A30;
    (*(v169 + 104))(v168, enum case for URL.DirectoryHint.inferFromPath(_:), v170);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v169 + 8))(v168, v170);
    v171 = *(v166 + 8);
    *(v0 + 640) = v171;
    *(v0 + 648) = (v166 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v171(v167, v165);
    (*(v166 + 32))(v163, v164, v165);
    LOBYTE(v164) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(41);
    0xE000000000000000, v172, v173, v174, v175, v176, v177, v178;
    v179 = URL.path(percentEncoded:)(1);
    v180 = v179._object;
    String.append(_:)(v179);
    v180, v181, v182, v183, v184, v185, v186, v187;
    v188._countAndFlagsBits = 32032;
    v188._object = 0xE200000000000000;
    String.append(_:)(v188);
    sub_10005E11C(v164, 0xD000000000000025, 0x8000000100094A60, 0xD000000000000059, 0x80000001000949D0, 70);
    0x8000000100094A60, v189, v190, v191, v192, v193, v194, v195;
    v196 = swift_task_alloc();
    *(v0 + 656) = v196;
    *v196 = v0;
    v196[1] = sub_100015028;
    v108 = *(v0 + 536);
    v109 = *(v0 + 216);
    goto LABEL_11;
  }

  v158 = *(v0 + 168);
  sub_10000BC10(*(v0 + 352), &qword_1000B6DE8, &qword_10008FA30);
  v159 = static os_log_type_t.error.getter();
  sub_10005E11C(v159, 0xD00000000000002ALL, 0x80000001000949A0, 0xD000000000000059, 0x80000001000949D0, 66);
  sub_10000B6B0();
  swift_allocError();
  *v160 = 0xD00000000000002ALL;
  *(v160 + 8) = 0x80000001000949A0;
  *(v160 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v158, &qword_1000B6CB8, &unk_10008F9F0);
  v161 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v161, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v162 = *(v0 + 8);

  return v162();
}

uint64_t sub_100013900()
{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = sub_10001A6C0;
  }

  else
  {
    v2 = sub_100013A14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100013A14()
{
  v1 = *(*(v0 + 432) + 8);
  v1(*(v0 + 544), *(v0 + 424));
  v2 = *(v0 + 232);
  *(v0 + 672) = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 568) + 24);
  v6 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v6;
  v6(v4 + v5, v2, v3);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 424);
    v10 = *(v0 + 368);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14._countAndFlagsBits = 0xD000000000000019;
    v14._object = 0x8000000100094E50;
    String.append(_:)(v14);
    v8(v10, 1, 1, v9);
    (*(v11 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v9) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v15._countAndFlagsBits = 0xD00000000000003BLL;
    v15._object = 0x8000000100094E70;
    String.append(_:)(v15);
    v16 = URL.path(percentEncoded:)(1);
    object = v16._object;
    String.append(_:)(v16);
    object, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_100015BBC;
    v34 = *(v0 + 512);
    v35 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v35, v34);
  }

  v37 = *(v0 + 424);
  v38 = *(v0 + 432);
  v39 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v39, &qword_1000B6DE8, &qword_10008FA30);
  v40 = *(v38 + 48);
  if (v40(v39, 1, v37) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v41 = [objc_opt_self() defaultManager];
    v42 = URL.path(percentEncoded:)(1)._object;
    v43 = String._bridgeToObjectiveC()();
    v42, v44, v45, v46, v47, v48, v49, v50;
    LODWORD(v42) = [v41 fileExistsAtPath:v43];

    if (v42)
    {
      v51 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      v59 = URL.path(percentEncoded:)(1);
      v60 = v59._object;
      String.append(_:)(v59);
      v60, v61, v62, v63, v64, v65, v66, v67;
      v68._countAndFlagsBits = 32032;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      sub_10005E11C(v51, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);
      0x8000000100094E20, v69, v70, v71, v72, v73, v74, v75;
      v76 = swift_task_alloc();
      *(v0 + 704) = v76;
      *v76 = v0;
      v76[1] = sub_1000174C0;
      v34 = *(v0 + 520);
      v35 = *(v0 + 200);
      goto LABEL_3;
    }

    v1(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v79 = [v78 resourceURL];

  if (v79)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v81 = *(v0 + 424);
  v83 = *(v0 + 320);
  v82 = *(v0 + 328);
  (*(v0 + 592))(v83, v80, 1, v81);
  sub_10001C148(v83, v82);
  if (v40(v82, 1, v81) != 1)
  {
    v89 = *(v0 + 496);
    v115 = *(v0 + 504);
    v90 = *(v0 + 424);
    v91 = *(v0 + 432);
    v92 = *(v0 + 328);
    v93 = *(v0 + 248);
    v94 = *(v0 + 256);
    v95 = *(v0 + 240);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v93 + 104))(v94, enum case for URL.DirectoryHint.inferFromPath(_:), v95);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v93 + 8))(v94, v95);
    *(v0 + 720) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v92, v90);
    (*(v91 + 32))(v115, v89, v90);
    LOBYTE(v89) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v96._countAndFlagsBits = 0xD00000000000002FLL;
    v96._object = 0x8000000100094B00;
    String.append(_:)(v96);
    v97 = URL.path(percentEncoded:)(1);
    v98 = v97._object;
    String.append(_:)(v97);
    v98, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 32032;
    v106._object = 0xE200000000000000;
    String.append(_:)(v106);
    sub_10005E11C(v89, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);
    0xE000000000000000, v107, v108, v109, v110, v111, v112, v113;
    v114 = swift_task_alloc();
    *(v0 + 728) = v114;
    *v114 = v0;
    v114[1] = sub_100018DC4;
    v34 = *(v0 + 504);
    v35 = *(v0 + 192);
    goto LABEL_3;
  }

  v84 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v85 = static os_log_type_t.error.getter();
  sub_10005E11C(v85, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v86 = 0xD000000000000034;
  *(v86 + 8) = 0x8000000100094A90;
  *(v86 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v84, &qword_1000B6CB8, &unk_10008F9F0);
  v87 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v87, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_100014494()
{
  *(*v1 + 632) = v0;

  if (v0)
  {
    v2 = sub_10001A9C8;
  }

  else
  {
    v2 = sub_1000145A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000145A8()
{
  v1 = *(*(v0 + 432) + 8);
  v1(*(v0 + 552), *(v0 + 424));
  v2 = *(v0 + 224);
  *(v0 + 672) = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 568) + 24);
  v6 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v6;
  v6(v4 + v5, v2, v3);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 424);
    v10 = *(v0 + 368);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14._countAndFlagsBits = 0xD000000000000019;
    v14._object = 0x8000000100094E50;
    String.append(_:)(v14);
    v8(v10, 1, 1, v9);
    (*(v11 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v9) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v15._countAndFlagsBits = 0xD00000000000003BLL;
    v15._object = 0x8000000100094E70;
    String.append(_:)(v15);
    v16 = URL.path(percentEncoded:)(1);
    object = v16._object;
    String.append(_:)(v16);
    object, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_100015BBC;
    v34 = *(v0 + 512);
    v35 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v35, v34);
  }

  v37 = *(v0 + 424);
  v38 = *(v0 + 432);
  v39 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v39, &qword_1000B6DE8, &qword_10008FA30);
  v40 = *(v38 + 48);
  if (v40(v39, 1, v37) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v41 = [objc_opt_self() defaultManager];
    v42 = URL.path(percentEncoded:)(1)._object;
    v43 = String._bridgeToObjectiveC()();
    v42, v44, v45, v46, v47, v48, v49, v50;
    LODWORD(v42) = [v41 fileExistsAtPath:v43];

    if (v42)
    {
      v51 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      v59 = URL.path(percentEncoded:)(1);
      v60 = v59._object;
      String.append(_:)(v59);
      v60, v61, v62, v63, v64, v65, v66, v67;
      v68._countAndFlagsBits = 32032;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      sub_10005E11C(v51, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);
      0x8000000100094E20, v69, v70, v71, v72, v73, v74, v75;
      v76 = swift_task_alloc();
      *(v0 + 704) = v76;
      *v76 = v0;
      v76[1] = sub_1000174C0;
      v34 = *(v0 + 520);
      v35 = *(v0 + 200);
      goto LABEL_3;
    }

    v1(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v79 = [v78 resourceURL];

  if (v79)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v81 = *(v0 + 424);
  v83 = *(v0 + 320);
  v82 = *(v0 + 328);
  (*(v0 + 592))(v83, v80, 1, v81);
  sub_10001C148(v83, v82);
  if (v40(v82, 1, v81) != 1)
  {
    v89 = *(v0 + 496);
    v115 = *(v0 + 504);
    v90 = *(v0 + 424);
    v91 = *(v0 + 432);
    v92 = *(v0 + 328);
    v93 = *(v0 + 248);
    v94 = *(v0 + 256);
    v95 = *(v0 + 240);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v93 + 104))(v94, enum case for URL.DirectoryHint.inferFromPath(_:), v95);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v93 + 8))(v94, v95);
    *(v0 + 720) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v92, v90);
    (*(v91 + 32))(v115, v89, v90);
    LOBYTE(v89) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v96._countAndFlagsBits = 0xD00000000000002FLL;
    v96._object = 0x8000000100094B00;
    String.append(_:)(v96);
    v97 = URL.path(percentEncoded:)(1);
    v98 = v97._object;
    String.append(_:)(v97);
    v98, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 32032;
    v106._object = 0xE200000000000000;
    String.append(_:)(v106);
    sub_10005E11C(v89, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);
    0xE000000000000000, v107, v108, v109, v110, v111, v112, v113;
    v114 = swift_task_alloc();
    *(v0 + 728) = v114;
    *v114 = v0;
    v114[1] = sub_100018DC4;
    v34 = *(v0 + 504);
    v35 = *(v0 + 192);
    goto LABEL_3;
  }

  v84 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v85 = static os_log_type_t.error.getter();
  sub_10005E11C(v85, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v86 = 0xD000000000000034;
  *(v86 + 8) = 0x8000000100094A90;
  *(v86 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v84, &qword_1000B6CB8, &unk_10008F9F0);
  v87 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v87, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_100015028()
{
  *(*v1 + 664) = v0;

  if (v0)
  {
    v2 = sub_10001ACD0;
  }

  else
  {
    v2 = sub_10001513C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001513C()
{
  (*(v0 + 640))(*(v0 + 536), *(v0 + 424));
  v1 = *(v0 + 640);
  v2 = *(v0 + 216);
  *(v0 + 672) = v1;
  v3 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(*(v0 + 568) + 24);
  v6 = *(*(v0 + 184) + 32);
  *(v0 + 680) = v6;
  v6(v4 + v5, v2, v3);
  sub_100054AB0();
  if (v7)
  {
    v8 = *(v0 + 592);
    v9 = *(v0 + 424);
    v10 = *(v0 + 368);
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    v13 = *(v0 + 240);
    v14._countAndFlagsBits = 0xD000000000000019;
    v14._object = 0x8000000100094E50;
    String.append(_:)(v14);
    v8(v10, 1, 1, v9);
    (*(v11 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v13);
    URL.init(filePath:directoryHint:relativeTo:)();
    LOBYTE(v9) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(63);
    v15._countAndFlagsBits = 0xD00000000000003BLL;
    v15._object = 0x8000000100094E70;
    String.append(_:)(v15);
    v16 = URL.path(percentEncoded:)(1);
    object = v16._object;
    String.append(_:)(v16);
    object, v18, v19, v20, v21, v22, v23, v24;
    v25._countAndFlagsBits = 32032;
    v25._object = 0xE200000000000000;
    String.append(_:)(v25);
    sub_10005E11C(v9, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 80);
    0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
    v33 = swift_task_alloc();
    *(v0 + 688) = v33;
    *v33 = v0;
    v33[1] = sub_100015BBC;
    v34 = *(v0 + 512);
    v35 = *(v0 + 208);
LABEL_3:

    return sub_10001B97C(v35, v34);
  }

  v37 = *(v0 + 424);
  v38 = *(v0 + 432);
  v39 = *(v0 + 336);
  sub_100011DFC(*(v0 + 416) + *(v0 + 748), v39, &qword_1000B6DE8, &qword_10008FA30);
  v40 = *(v38 + 48);
  if (v40(v39, 1, v37) == 1)
  {
    sub_10000BC10(*(v0 + 336), &qword_1000B6DE8, &qword_10008FA30);
  }

  else
  {
    (*(*(v0 + 432) + 32))(*(v0 + 520), *(v0 + 336), *(v0 + 424));
    v41 = [objc_opt_self() defaultManager];
    v42 = URL.path(percentEncoded:)(1)._object;
    v43 = String._bridgeToObjectiveC()();
    v42, v44, v45, v46, v47, v48, v49, v50;
    LODWORD(v42) = [v41 fileExistsAtPath:v43];

    if (v42)
    {
      v51 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(49);
      0xE000000000000000, v52, v53, v54, v55, v56, v57, v58;
      v59 = URL.path(percentEncoded:)(1);
      v60 = v59._object;
      String.append(_:)(v59);
      v60, v61, v62, v63, v64, v65, v66, v67;
      v68._countAndFlagsBits = 32032;
      v68._object = 0xE200000000000000;
      String.append(_:)(v68);
      sub_10005E11C(v51, 0xD00000000000002DLL, 0x8000000100094E20, 0xD000000000000059, 0x80000001000949D0, 86);
      0x8000000100094E20, v69, v70, v71, v72, v73, v74, v75;
      v76 = swift_task_alloc();
      *(v0 + 704) = v76;
      *v76 = v0;
      v76[1] = sub_1000174C0;
      v34 = *(v0 + 520);
      v35 = *(v0 + 200);
      goto LABEL_3;
    }

    v1(*(v0 + 520), *(v0 + 424));
  }

  type metadata accessor for SpamDecisioningManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v79 = [v78 resourceURL];

  if (v79)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = 0;
  }

  else
  {
    v80 = 1;
  }

  v81 = *(v0 + 424);
  v83 = *(v0 + 320);
  v82 = *(v0 + 328);
  (*(v0 + 592))(v83, v80, 1, v81);
  sub_10001C148(v83, v82);
  if (v40(v82, 1, v81) != 1)
  {
    v89 = *(v0 + 496);
    v115 = *(v0 + 504);
    v90 = *(v0 + 424);
    v91 = *(v0 + 432);
    v92 = *(v0 + 328);
    v93 = *(v0 + 248);
    v94 = *(v0 + 256);
    v95 = *(v0 + 240);
    *(v0 + 32) = 0xD00000000000002BLL;
    *(v0 + 40) = 0x8000000100094AD0;
    (*(v93 + 104))(v94, enum case for URL.DirectoryHint.inferFromPath(_:), v95);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v93 + 8))(v94, v95);
    *(v0 + 720) = (v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1(v92, v90);
    (*(v91 + 32))(v115, v89, v90);
    LOBYTE(v89) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(51);
    v96._countAndFlagsBits = 0xD00000000000002FLL;
    v96._object = 0x8000000100094B00;
    String.append(_:)(v96);
    v97 = URL.path(percentEncoded:)(1);
    v98 = v97._object;
    String.append(_:)(v97);
    v98, v99, v100, v101, v102, v103, v104, v105;
    v106._countAndFlagsBits = 32032;
    v106._object = 0xE200000000000000;
    String.append(_:)(v106);
    sub_10005E11C(v89, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 94);
    0xE000000000000000, v107, v108, v109, v110, v111, v112, v113;
    v114 = swift_task_alloc();
    *(v0 + 728) = v114;
    *v114 = v0;
    v114[1] = sub_100018DC4;
    v34 = *(v0 + 504);
    v35 = *(v0 + 192);
    goto LABEL_3;
  }

  v84 = *(v0 + 168);
  sub_10000BC10(*(v0 + 328), &qword_1000B6DE8, &qword_10008FA30);
  v85 = static os_log_type_t.error.getter();
  sub_10005E11C(v85, 0xD000000000000034, 0x8000000100094A90, 0xD000000000000059, 0x80000001000949D0, 90);
  sub_10000B6B0();
  swift_allocError();
  *v86 = 0xD000000000000034;
  *(v86 + 8) = 0x8000000100094A90;
  *(v86 + 16) = 6;
  swift_willThrow();
  sub_10000BC10(v84, &qword_1000B6CB8, &unk_10008F9F0);
  v87 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v87, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v88 = *(v0 + 8);

  return v88();
}

uint64_t sub_100015BBC()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_10001AFD4;
  }

  else
  {
    v2 = sub_100015CD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015CD0()
{
  (*(v0 + 672))(*(v0 + 512), *(v0 + 424));
  v1 = *(v0 + 696);
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 208), *(v0 + 176));
  v2 = sub_100054AB0();
  if (v3)
  {
    v285._countAndFlagsBits = v2;
    v285._object = v3;
    v4._countAndFlagsBits = 0xD000000000000010;
    v4._object = 0x8000000100094DC0;
    String.append(_:)(v4);
    v5 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x8000000100094DE0;
    String.append(_:)(v6);
    String.append(_:)(v285);
    v7._countAndFlagsBits = 32032;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);
    0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v15 = sub_10004FA38(v285._countAndFlagsBits, v285._object);
    if (v1)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v113 = sub_100054AB0();
    if (v114)
    {
      v286._countAndFlagsBits = v113;
      v286._object = v114;
      v115._countAndFlagsBits = 0xD000000000000014;
      v115._object = 0x8000000100094D30;
      String.append(_:)(v115);
      v116 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v117._countAndFlagsBits = 0xD000000000000039;
      v117._object = 0x8000000100094D50;
      String.append(_:)(v117);
      String.append(_:)(v286);
      v118._countAndFlagsBits = 32032;
      v118._object = 0xE200000000000000;
      String.append(_:)(v118);
      sub_10005E11C(v116, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);
      0xE000000000000000, v119, v120, v121, v122, v123, v124, v125;
      type metadata accessor for ConfigurationsAsset(0);
      swift_allocObject();
      v126 = sub_10001C8A8(v286._countAndFlagsBits, v286._object);
      goto LABEL_39;
    }

    v127 = *(v0 + 424);
    v128 = *(v0 + 432);
    v129 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v129, &qword_1000B6DE8, &qword_10008FA30);
    v130 = *(v128 + 48);
    if (v130(v129, 1, v127) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v131 = [objc_opt_self() defaultManager];
      object = URL.path(percentEncoded:)(1)._object;
      v133 = String._bridgeToObjectiveC()();
      object, v134, v135, v136, v137, v138, v139, v140;
      LODWORD(object) = [v131 fileExistsAtPath:v133];

      if (object)
      {
        v141 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);
        0xE000000000000000, v142, v143, v144, v145, v146, v147, v148;
        v149 = URL.path(percentEncoded:)(1);
        v150 = v149._object;
        String.append(_:)(v149);
        v150, v151, v152, v153, v154, v155, v156, v157;
        v158._countAndFlagsBits = 32032;
        v158._object = 0xE200000000000000;
        String.append(_:)(v158);
        sub_10005E11C(v141, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);
        0x8000000100094D00, v159, v160, v161, v162, v163, v164, v165;
        v166 = URL.path.getter();
        v168 = v167;
        type metadata accessor for ConfigurationsAsset(0);
        swift_allocObject();
        v220 = sub_10001C8A8(v166, v168);
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v126 = v220;
        goto LABEL_39;
      }

      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v171 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v172 = [v171 resourceURL];

    if (v172)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v173 = 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = *(v0 + 424);
    v176 = *(v0 + 272);
    v175 = *(v0 + 280);
    (*(v0 + 592))(v176, v173, 1, v174);
    sub_10001C148(v176, v175);
    if (v130(v175, 1, v174) == 1)
    {
      v177 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v178 = static os_log_type_t.error.getter();
      sub_10005E11C(v178, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v179 = 0xD000000000000032;
      *(v179 + 8) = 0x8000000100094BD0;
      *(v179 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v177, &qword_1000B6CB8, &unk_10008F9F0);
      v74 = 1;
      goto LABEL_32;
    }

    v183 = *(v0 + 672);
    v185 = *(v0 + 448);
    v184 = *(v0 + 456);
    v186 = *(v0 + 424);
    v187 = *(v0 + 432);
    v188 = *(v0 + 280);
    v189 = *(v0 + 248);
    v190 = *(v0 + 256);
    v191 = *(v0 + 240);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v189 + 104))(v190, enum case for URL.DirectoryHint.inferFromPath(_:), v191);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v189 + 8))(v190, v191);
    v183(v188, v186);
    (*(v187 + 32))(v184, v185, v186);
    LOBYTE(v185) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);
    0xE000000000000000, v192, v193, v194, v195, v196, v197, v198;
    v199 = URL.path(percentEncoded:)(1);
    v200 = v199._object;
    String.append(_:)(v199);
    v200, v201, v202, v203, v204, v205, v206, v207;
    v208._countAndFlagsBits = 32032;
    v208._object = 0xE200000000000000;
    String.append(_:)(v208);
    sub_10005E11C(v185, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);
    0x8000000100094C40, v209, v210, v211, v212, v213, v214, v215;
    v216 = URL.path.getter();
    v218 = v217;
    type metadata accessor for ConfigurationsAsset(0);
    swift_allocObject();
    v219 = sub_10001C8A8(v216, v218);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v126 = v219;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v126;
    v221 = sub_100054AB0();
    if (v222)
    {
      v287._countAndFlagsBits = v221;
      v287._object = v222;
      v223._countAndFlagsBits = 0xD000000000000012;
      v223._object = 0x8000000100094CA0;
      String.append(_:)(v223);
      v224 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v225._countAndFlagsBits = 0xD000000000000037;
      v225._object = 0x8000000100094CC0;
      String.append(_:)(v225);
      String.append(_:)(v287);
      v226._countAndFlagsBits = 32032;
      v226._object = 0xE200000000000000;
      String.append(_:)(v226);
      sub_10005E11C(v224, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);
      0xE000000000000000, v227, v228, v229, v230, v231, v232, v233;
      type metadata accessor for RecordZonesAsset(0);
      swift_allocObject();
      v234 = sub_100072990(v287._countAndFlagsBits, v287._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v283 = *(v0 + 416);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v234;
      sub_10001C2E0(v283, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v181 = *(v0 + 8);
      goto LABEL_35;
    }

    v235 = *(v0 + 424);
    v236 = *(v0 + 432);
    v237 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v237, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v236 + 48))(v237, 1, v235) == 1)
    {
      v238 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v238, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v239 = [objc_opt_self() defaultManager];
      v240 = URL.path(percentEncoded:)(1)._object;
      v241 = String._bridgeToObjectiveC()();
      v240, v242, v243, v244, v245, v246, v247, v248;
      LODWORD(v240) = [v239 fileExistsAtPath:v241];

      if (v240)
      {
        v249 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);
        0xE000000000000000, v250, v251, v252, v253, v254, v255, v256;
        v257 = URL.path(percentEncoded:)(1);
        v258 = v257._object;
        String.append(_:)(v257);
        v258, v259, v260, v261, v262, v263, v264, v265;
        v266._countAndFlagsBits = 32032;
        v266._object = 0xE200000000000000;
        String.append(_:)(v266);
        sub_10005E11C(v249, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);
        0x8000000100094C70, v267, v268, v269, v270, v271, v272, v273;
        v274 = URL.path.getter();
        v276 = v275;
        type metadata accessor for RecordZonesAsset(0);
        swift_allocObject();
        v234 = sub_100072990(v274, v276);
        v277 = *(v0 + 672);
        v278 = *(v0 + 440);
        v279 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v277(v278, v279);
        goto LABEL_47;
      }

      v280 = *(v0 + 672);
      v281 = *(v0 + 440);
      v282 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v280(v281, v282);
    }

    v234 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v23) = [v21 fileExistsAtPath:v24];

  if (!v23)
  {
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager(0);
    v64 = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass:v64];
    v66 = [v65 resourceURL];

    if (v66)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = *(v0 + 424);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    (*(v0 + 592))(v70, v67, 1, v68);
    sub_10001C148(v70, v69);
    if (v20(v69, 1, v68) == 1)
    {
      v71 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v72 = static os_log_type_t.error.getter();
      sub_10005E11C(v72, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v73 = 0xD000000000000033;
      *(v73 + 8) = 0x8000000100094B30;
      *(v73 + 16) = 6;
      swift_willThrow();
      v16 = v71;
      goto LABEL_15;
    }

    v75 = *(v0 + 672);
    v284 = v1;
    v77 = *(v0 + 472);
    v76 = *(v0 + 480);
    v78 = *(v0 + 424);
    v79 = *(v0 + 432);
    v80 = *(v0 + 304);
    v81 = *(v0 + 248);
    v82 = *(v0 + 256);
    v83 = *(v0 + 240);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v81 + 104))(v82, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v81 + 8))(v82, v83);
    v75(v80, v78);
    (*(v79 + 32))(v76, v77, v78);
    LOBYTE(v77) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v84, v85, v86, v87, v88, v89, v90;
    v91 = URL.path(percentEncoded:)(1);
    v92 = v91._object;
    String.append(_:)(v91);
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100._countAndFlagsBits = 32032;
    v100._object = 0xE200000000000000;
    String.append(_:)(v100);
    sub_10005E11C(v77, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);
    0x8000000100094BA0, v101, v102, v103, v104, v105, v106, v107;
    v108 = URL.path.getter();
    v110 = v109;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v111 = sub_10004FA38(v108, v110);
    v61 = *(v0 + 672);
    v62 = *(v0 + 480);
    v63 = *(v0 + 424);
    if (!v284)
    {
      v112 = v111;
      v61(*(v0 + 480), *(v0 + 424));
      v15 = v112;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v32 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);
  0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
  v40._countAndFlagsBits = URL.path.getter();
  v41 = v40._object;
  String.append(_:)(v40);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49._countAndFlagsBits = 32032;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  sub_10005E11C(v32, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);
  0x8000000100094D90, v50, v51, v52, v53, v54, v55, v56;
  v57 = URL.path.getter();
  v59 = v58;
  type metadata accessor for JavaScriptAsset(0);
  swift_allocObject();
  v60 = sub_10004FA38(v57, v59);
  v61 = *(v0 + 672);
  v62 = *(v0 + 488);
  v63 = *(v0 + 424);
  if (!v1)
  {
    v169 = v60;
    v61(*(v0 + 488), *(v0 + 424));
    v15 = v169;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v61(v62, v63);
LABEL_16:
  v74 = 0;
LABEL_32:
  v180 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v180, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v74)
  {
  }

  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v181 = *(v0 + 8);
LABEL_35:

  return v181();
}

uint64_t sub_1000174C0()
{
  *(*v1 + 712) = v0;

  if (v0)
  {
    v2 = sub_10001B304;
  }

  else
  {
    v2 = sub_1000175D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000175D4()
{
  (*(v0 + 672))(*(v0 + 520), *(v0 + 424));
  v1 = *(v0 + 712);
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 200), *(v0 + 176));
  v2 = sub_100054AB0();
  if (v3)
  {
    v285._countAndFlagsBits = v2;
    v285._object = v3;
    v4._countAndFlagsBits = 0xD000000000000010;
    v4._object = 0x8000000100094DC0;
    String.append(_:)(v4);
    v5 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x8000000100094DE0;
    String.append(_:)(v6);
    String.append(_:)(v285);
    v7._countAndFlagsBits = 32032;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);
    0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v15 = sub_10004FA38(v285._countAndFlagsBits, v285._object);
    if (v1)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v113 = sub_100054AB0();
    if (v114)
    {
      v286._countAndFlagsBits = v113;
      v286._object = v114;
      v115._countAndFlagsBits = 0xD000000000000014;
      v115._object = 0x8000000100094D30;
      String.append(_:)(v115);
      v116 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v117._countAndFlagsBits = 0xD000000000000039;
      v117._object = 0x8000000100094D50;
      String.append(_:)(v117);
      String.append(_:)(v286);
      v118._countAndFlagsBits = 32032;
      v118._object = 0xE200000000000000;
      String.append(_:)(v118);
      sub_10005E11C(v116, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);
      0xE000000000000000, v119, v120, v121, v122, v123, v124, v125;
      type metadata accessor for ConfigurationsAsset(0);
      swift_allocObject();
      v126 = sub_10001C8A8(v286._countAndFlagsBits, v286._object);
      goto LABEL_39;
    }

    v127 = *(v0 + 424);
    v128 = *(v0 + 432);
    v129 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v129, &qword_1000B6DE8, &qword_10008FA30);
    v130 = *(v128 + 48);
    if (v130(v129, 1, v127) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v131 = [objc_opt_self() defaultManager];
      object = URL.path(percentEncoded:)(1)._object;
      v133 = String._bridgeToObjectiveC()();
      object, v134, v135, v136, v137, v138, v139, v140;
      LODWORD(object) = [v131 fileExistsAtPath:v133];

      if (object)
      {
        v141 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);
        0xE000000000000000, v142, v143, v144, v145, v146, v147, v148;
        v149 = URL.path(percentEncoded:)(1);
        v150 = v149._object;
        String.append(_:)(v149);
        v150, v151, v152, v153, v154, v155, v156, v157;
        v158._countAndFlagsBits = 32032;
        v158._object = 0xE200000000000000;
        String.append(_:)(v158);
        sub_10005E11C(v141, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);
        0x8000000100094D00, v159, v160, v161, v162, v163, v164, v165;
        v166 = URL.path.getter();
        v168 = v167;
        type metadata accessor for ConfigurationsAsset(0);
        swift_allocObject();
        v220 = sub_10001C8A8(v166, v168);
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v126 = v220;
        goto LABEL_39;
      }

      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v171 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v172 = [v171 resourceURL];

    if (v172)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v173 = 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = *(v0 + 424);
    v176 = *(v0 + 272);
    v175 = *(v0 + 280);
    (*(v0 + 592))(v176, v173, 1, v174);
    sub_10001C148(v176, v175);
    if (v130(v175, 1, v174) == 1)
    {
      v177 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v178 = static os_log_type_t.error.getter();
      sub_10005E11C(v178, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v179 = 0xD000000000000032;
      *(v179 + 8) = 0x8000000100094BD0;
      *(v179 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v177, &qword_1000B6CB8, &unk_10008F9F0);
      v74 = 1;
      goto LABEL_32;
    }

    v183 = *(v0 + 672);
    v185 = *(v0 + 448);
    v184 = *(v0 + 456);
    v186 = *(v0 + 424);
    v187 = *(v0 + 432);
    v188 = *(v0 + 280);
    v189 = *(v0 + 248);
    v190 = *(v0 + 256);
    v191 = *(v0 + 240);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v189 + 104))(v190, enum case for URL.DirectoryHint.inferFromPath(_:), v191);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v189 + 8))(v190, v191);
    v183(v188, v186);
    (*(v187 + 32))(v184, v185, v186);
    LOBYTE(v185) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);
    0xE000000000000000, v192, v193, v194, v195, v196, v197, v198;
    v199 = URL.path(percentEncoded:)(1);
    v200 = v199._object;
    String.append(_:)(v199);
    v200, v201, v202, v203, v204, v205, v206, v207;
    v208._countAndFlagsBits = 32032;
    v208._object = 0xE200000000000000;
    String.append(_:)(v208);
    sub_10005E11C(v185, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);
    0x8000000100094C40, v209, v210, v211, v212, v213, v214, v215;
    v216 = URL.path.getter();
    v218 = v217;
    type metadata accessor for ConfigurationsAsset(0);
    swift_allocObject();
    v219 = sub_10001C8A8(v216, v218);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v126 = v219;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v126;
    v221 = sub_100054AB0();
    if (v222)
    {
      v287._countAndFlagsBits = v221;
      v287._object = v222;
      v223._countAndFlagsBits = 0xD000000000000012;
      v223._object = 0x8000000100094CA0;
      String.append(_:)(v223);
      v224 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v225._countAndFlagsBits = 0xD000000000000037;
      v225._object = 0x8000000100094CC0;
      String.append(_:)(v225);
      String.append(_:)(v287);
      v226._countAndFlagsBits = 32032;
      v226._object = 0xE200000000000000;
      String.append(_:)(v226);
      sub_10005E11C(v224, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);
      0xE000000000000000, v227, v228, v229, v230, v231, v232, v233;
      type metadata accessor for RecordZonesAsset(0);
      swift_allocObject();
      v234 = sub_100072990(v287._countAndFlagsBits, v287._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v283 = *(v0 + 416);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v234;
      sub_10001C2E0(v283, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v181 = *(v0 + 8);
      goto LABEL_35;
    }

    v235 = *(v0 + 424);
    v236 = *(v0 + 432);
    v237 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v237, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v236 + 48))(v237, 1, v235) == 1)
    {
      v238 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v238, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v239 = [objc_opt_self() defaultManager];
      v240 = URL.path(percentEncoded:)(1)._object;
      v241 = String._bridgeToObjectiveC()();
      v240, v242, v243, v244, v245, v246, v247, v248;
      LODWORD(v240) = [v239 fileExistsAtPath:v241];

      if (v240)
      {
        v249 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);
        0xE000000000000000, v250, v251, v252, v253, v254, v255, v256;
        v257 = URL.path(percentEncoded:)(1);
        v258 = v257._object;
        String.append(_:)(v257);
        v258, v259, v260, v261, v262, v263, v264, v265;
        v266._countAndFlagsBits = 32032;
        v266._object = 0xE200000000000000;
        String.append(_:)(v266);
        sub_10005E11C(v249, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);
        0x8000000100094C70, v267, v268, v269, v270, v271, v272, v273;
        v274 = URL.path.getter();
        v276 = v275;
        type metadata accessor for RecordZonesAsset(0);
        swift_allocObject();
        v234 = sub_100072990(v274, v276);
        v277 = *(v0 + 672);
        v278 = *(v0 + 440);
        v279 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v277(v278, v279);
        goto LABEL_47;
      }

      v280 = *(v0 + 672);
      v281 = *(v0 + 440);
      v282 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v280(v281, v282);
    }

    v234 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v23) = [v21 fileExistsAtPath:v24];

  if (!v23)
  {
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager(0);
    v64 = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass:v64];
    v66 = [v65 resourceURL];

    if (v66)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = *(v0 + 424);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    (*(v0 + 592))(v70, v67, 1, v68);
    sub_10001C148(v70, v69);
    if (v20(v69, 1, v68) == 1)
    {
      v71 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v72 = static os_log_type_t.error.getter();
      sub_10005E11C(v72, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v73 = 0xD000000000000033;
      *(v73 + 8) = 0x8000000100094B30;
      *(v73 + 16) = 6;
      swift_willThrow();
      v16 = v71;
      goto LABEL_15;
    }

    v75 = *(v0 + 672);
    v284 = v1;
    v77 = *(v0 + 472);
    v76 = *(v0 + 480);
    v78 = *(v0 + 424);
    v79 = *(v0 + 432);
    v80 = *(v0 + 304);
    v81 = *(v0 + 248);
    v82 = *(v0 + 256);
    v83 = *(v0 + 240);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v81 + 104))(v82, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v81 + 8))(v82, v83);
    v75(v80, v78);
    (*(v79 + 32))(v76, v77, v78);
    LOBYTE(v77) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v84, v85, v86, v87, v88, v89, v90;
    v91 = URL.path(percentEncoded:)(1);
    v92 = v91._object;
    String.append(_:)(v91);
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100._countAndFlagsBits = 32032;
    v100._object = 0xE200000000000000;
    String.append(_:)(v100);
    sub_10005E11C(v77, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);
    0x8000000100094BA0, v101, v102, v103, v104, v105, v106, v107;
    v108 = URL.path.getter();
    v110 = v109;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v111 = sub_10004FA38(v108, v110);
    v61 = *(v0 + 672);
    v62 = *(v0 + 480);
    v63 = *(v0 + 424);
    if (!v284)
    {
      v112 = v111;
      v61(*(v0 + 480), *(v0 + 424));
      v15 = v112;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v32 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);
  0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
  v40._countAndFlagsBits = URL.path.getter();
  v41 = v40._object;
  String.append(_:)(v40);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49._countAndFlagsBits = 32032;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  sub_10005E11C(v32, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);
  0x8000000100094D90, v50, v51, v52, v53, v54, v55, v56;
  v57 = URL.path.getter();
  v59 = v58;
  type metadata accessor for JavaScriptAsset(0);
  swift_allocObject();
  v60 = sub_10004FA38(v57, v59);
  v61 = *(v0 + 672);
  v62 = *(v0 + 488);
  v63 = *(v0 + 424);
  if (!v1)
  {
    v169 = v60;
    v61(*(v0 + 488), *(v0 + 424));
    v15 = v169;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v61(v62, v63);
LABEL_16:
  v74 = 0;
LABEL_32:
  v180 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v180, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v74)
  {
  }

  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v181 = *(v0 + 8);
LABEL_35:

  return v181();
}

uint64_t sub_100018DC4()
{
  *(*v1 + 736) = v0;

  if (v0)
  {
    v2 = sub_10001B634;
  }

  else
  {
    v2 = sub_100018ED8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100018ED8()
{
  (*(v0 + 672))(*(v0 + 504), *(v0 + 424));
  v1 = *(v0 + 736);
  (*(v0 + 680))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 192), *(v0 + 176));
  v2 = sub_100054AB0();
  if (v3)
  {
    v285._countAndFlagsBits = v2;
    v285._object = v3;
    v4._countAndFlagsBits = 0xD000000000000010;
    v4._object = 0x8000000100094DC0;
    String.append(_:)(v4);
    v5 = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(62);
    v6._countAndFlagsBits = 0xD00000000000003ALL;
    v6._object = 0x8000000100094DE0;
    String.append(_:)(v6);
    String.append(_:)(v285);
    v7._countAndFlagsBits = 32032;
    v7._object = 0xE200000000000000;
    String.append(_:)(v7);
    sub_10005E11C(v5, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 103);
    0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v15 = sub_10004FA38(v285._countAndFlagsBits, v285._object);
    if (v1)
    {
      v16 = *(v0 + 168);
LABEL_15:
      sub_10000BC10(v16, &qword_1000B6CB8, &unk_10008F9F0);
      goto LABEL_16;
    }

LABEL_19:
    *(*(v0 + 160) + *(*(v0 + 568) + 28)) = v15;
    v113 = sub_100054AB0();
    if (v114)
    {
      v286._countAndFlagsBits = v113;
      v286._object = v114;
      v115._countAndFlagsBits = 0xD000000000000014;
      v115._object = 0x8000000100094D30;
      String.append(_:)(v115);
      v116 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(61);
      v117._countAndFlagsBits = 0xD000000000000039;
      v117._object = 0x8000000100094D50;
      String.append(_:)(v117);
      String.append(_:)(v286);
      v118._countAndFlagsBits = 32032;
      v118._object = 0xE200000000000000;
      String.append(_:)(v118);
      sub_10005E11C(v116, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 126);
      0xE000000000000000, v119, v120, v121, v122, v123, v124, v125;
      type metadata accessor for ConfigurationsAsset(0);
      swift_allocObject();
      v126 = sub_10001C8A8(v286._countAndFlagsBits, v286._object);
      goto LABEL_39;
    }

    v127 = *(v0 + 424);
    v128 = *(v0 + 432);
    v129 = *(v0 + 288);
    sub_100011DFC(*(v0 + 416) + *(v0 + 756), v129, &qword_1000B6DE8, &qword_10008FA30);
    v130 = *(v128 + 48);
    if (v130(v129, 1, v127) == 1)
    {
      sub_10000BC10(*(v0 + 288), &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 464), *(v0 + 288), *(v0 + 424));
      v131 = [objc_opt_self() defaultManager];
      object = URL.path(percentEncoded:)(1)._object;
      v133 = String._bridgeToObjectiveC()();
      object, v134, v135, v136, v137, v138, v139, v140;
      LODWORD(object) = [v131 fileExistsAtPath:v133];

      if (object)
      {
        v141 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(47);
        0xE000000000000000, v142, v143, v144, v145, v146, v147, v148;
        v149 = URL.path(percentEncoded:)(1);
        v150 = v149._object;
        String.append(_:)(v149);
        v150, v151, v152, v153, v154, v155, v156, v157;
        v158._countAndFlagsBits = 32032;
        v158._object = 0xE200000000000000;
        String.append(_:)(v158);
        sub_10005E11C(v141, 0xD00000000000002BLL, 0x8000000100094D00, 0xD000000000000059, 0x80000001000949D0, 132);
        0x8000000100094D00, v159, v160, v161, v162, v163, v164, v165;
        v166 = URL.path.getter();
        v168 = v167;
        type metadata accessor for ConfigurationsAsset(0);
        swift_allocObject();
        v220 = sub_10001C8A8(v166, v168);
        (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
        v126 = v220;
        goto LABEL_39;
      }

      (*(v0 + 672))(*(v0 + 464), *(v0 + 424));
    }

    type metadata accessor for SpamDecisioningManager(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v171 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v172 = [v171 resourceURL];

    if (v172)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v173 = 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = *(v0 + 424);
    v176 = *(v0 + 272);
    v175 = *(v0 + 280);
    (*(v0 + 592))(v176, v173, 1, v174);
    sub_10001C148(v176, v175);
    if (v130(v175, 1, v174) == 1)
    {
      v177 = *(v0 + 168);
      sub_10000BC10(*(v0 + 280), &qword_1000B6DE8, &qword_10008FA30);
      v178 = static os_log_type_t.error.getter();
      sub_10005E11C(v178, 0xD000000000000032, 0x8000000100094BD0, 0xD000000000000059, 0x80000001000949D0, 136);
      sub_10000B6B0();
      swift_allocError();
      *v179 = 0xD000000000000032;
      *(v179 + 8) = 0x8000000100094BD0;
      *(v179 + 16) = 6;
      swift_willThrow();
      sub_10000BC10(v177, &qword_1000B6CB8, &unk_10008F9F0);
      v74 = 1;
      goto LABEL_32;
    }

    v183 = *(v0 + 672);
    v185 = *(v0 + 448);
    v184 = *(v0 + 456);
    v186 = *(v0 + 424);
    v187 = *(v0 + 432);
    v188 = *(v0 + 280);
    v189 = *(v0 + 248);
    v190 = *(v0 + 256);
    v191 = *(v0 + 240);
    *(v0 + 64) = 0xD000000000000026;
    *(v0 + 72) = 0x8000000100094C10;
    (*(v189 + 104))(v190, enum case for URL.DirectoryHint.inferFromPath(_:), v191);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v189 + 8))(v190, v191);
    v183(v188, v186);
    (*(v187 + 32))(v184, v185, v186);
    LOBYTE(v185) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(49);
    0xE000000000000000, v192, v193, v194, v195, v196, v197, v198;
    v199 = URL.path(percentEncoded:)(1);
    v200 = v199._object;
    String.append(_:)(v199);
    v200, v201, v202, v203, v204, v205, v206, v207;
    v208._countAndFlagsBits = 32032;
    v208._object = 0xE200000000000000;
    String.append(_:)(v208);
    sub_10005E11C(v185, 0xD00000000000002DLL, 0x8000000100094C40, 0xD000000000000059, 0x80000001000949D0, 140);
    0x8000000100094C40, v209, v210, v211, v212, v213, v214, v215;
    v216 = URL.path.getter();
    v218 = v217;
    type metadata accessor for ConfigurationsAsset(0);
    swift_allocObject();
    v219 = sub_10001C8A8(v216, v218);
    (*(v0 + 672))(*(v0 + 456), *(v0 + 424));
    v126 = v219;
LABEL_39:
    *(*(v0 + 160) + *(*(v0 + 568) + 32)) = v126;
    v221 = sub_100054AB0();
    if (v222)
    {
      v287._countAndFlagsBits = v221;
      v287._object = v222;
      v223._countAndFlagsBits = 0xD000000000000012;
      v223._object = 0x8000000100094CA0;
      String.append(_:)(v223);
      v224 = static os_log_type_t.debug.getter();
      _StringGuts.grow(_:)(59);
      v225._countAndFlagsBits = 0xD000000000000037;
      v225._object = 0x8000000100094CC0;
      String.append(_:)(v225);
      String.append(_:)(v287);
      v226._countAndFlagsBits = 32032;
      v226._object = 0xE200000000000000;
      String.append(_:)(v226);
      sub_10005E11C(v224, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 149);
      0xE000000000000000, v227, v228, v229, v230, v231, v232, v233;
      type metadata accessor for RecordZonesAsset(0);
      swift_allocObject();
      v234 = sub_100072990(v287._countAndFlagsBits, v287._object);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
LABEL_47:
      v283 = *(v0 + 416);
      *(*(v0 + 160) + *(*(v0 + 568) + 36)) = v234;
      sub_10001C2E0(v283, type metadata accessor for SpamDecisioningAsset.AssetURLs);

      v181 = *(v0 + 8);
      goto LABEL_35;
    }

    v235 = *(v0 + 424);
    v236 = *(v0 + 432);
    v237 = *(v0 + 264);
    sub_100011DFC(*(v0 + 416) + *(v0 + 760), v237, &qword_1000B6DE8, &qword_10008FA30);
    if ((*(v236 + 48))(v237, 1, v235) == 1)
    {
      v238 = *(v0 + 264);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      sub_10000BC10(v238, &qword_1000B6DE8, &qword_10008FA30);
    }

    else
    {
      (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 264), *(v0 + 424));
      v239 = [objc_opt_self() defaultManager];
      v240 = URL.path(percentEncoded:)(1)._object;
      v241 = String._bridgeToObjectiveC()();
      v240, v242, v243, v244, v245, v246, v247, v248;
      LODWORD(v240) = [v239 fileExistsAtPath:v241];

      if (v240)
      {
        v249 = static os_log_type_t.debug.getter();
        _StringGuts.grow(_:)(45);
        0xE000000000000000, v250, v251, v252, v253, v254, v255, v256;
        v257 = URL.path(percentEncoded:)(1);
        v258 = v257._object;
        String.append(_:)(v257);
        v258, v259, v260, v261, v262, v263, v264, v265;
        v266._countAndFlagsBits = 32032;
        v266._object = 0xE200000000000000;
        String.append(_:)(v266);
        sub_10005E11C(v249, 0xD000000000000029, 0x8000000100094C70, 0xD000000000000059, 0x80000001000949D0, 155);
        0x8000000100094C70, v267, v268, v269, v270, v271, v272, v273;
        v274 = URL.path.getter();
        v276 = v275;
        type metadata accessor for RecordZonesAsset(0);
        swift_allocObject();
        v234 = sub_100072990(v274, v276);
        v277 = *(v0 + 672);
        v278 = *(v0 + 440);
        v279 = *(v0 + 424);
        sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
        v277(v278, v279);
        goto LABEL_47;
      }

      v280 = *(v0 + 672);
      v281 = *(v0 + 440);
      v282 = *(v0 + 424);
      sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
      v280(v281, v282);
    }

    v234 = 0;
    goto LABEL_47;
  }

  v17 = *(v0 + 424);
  v18 = *(v0 + 432);
  v19 = *(v0 + 312);
  sub_100011DFC(*(v0 + 416) + *(v0 + 752), v19, &qword_1000B6DE8, &qword_10008FA30);
  v20 = *(v18 + 48);
  if (v20(v19, 1, v17) == 1)
  {
    sub_10000BC10(*(v0 + 312), &qword_1000B6DE8, &qword_10008FA30);
    goto LABEL_10;
  }

  (*(*(v0 + 432) + 32))(*(v0 + 488), *(v0 + 312), *(v0 + 424));
  v21 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  v23, v25, v26, v27, v28, v29, v30, v31;
  LODWORD(v23) = [v21 fileExistsAtPath:v24];

  if (!v23)
  {
    (*(v0 + 672))(*(v0 + 488), *(v0 + 424));
LABEL_10:
    type metadata accessor for SpamDecisioningManager(0);
    v64 = swift_getObjCClassFromMetadata();
    v65 = [objc_opt_self() bundleForClass:v64];
    v66 = [v65 resourceURL];

    if (v66)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = 0;
    }

    else
    {
      v67 = 1;
    }

    v68 = *(v0 + 424);
    v70 = *(v0 + 296);
    v69 = *(v0 + 304);
    (*(v0 + 592))(v70, v67, 1, v68);
    sub_10001C148(v70, v69);
    if (v20(v69, 1, v68) == 1)
    {
      v71 = *(v0 + 168);
      sub_10000BC10(*(v0 + 304), &qword_1000B6DE8, &qword_10008FA30);
      v72 = static os_log_type_t.error.getter();
      sub_10005E11C(v72, 0xD000000000000033, 0x8000000100094B30, 0xD000000000000059, 0x80000001000949D0, 113);
      sub_10000B6B0();
      swift_allocError();
      *v73 = 0xD000000000000033;
      *(v73 + 8) = 0x8000000100094B30;
      *(v73 + 16) = 6;
      swift_willThrow();
      v16 = v71;
      goto LABEL_15;
    }

    v75 = *(v0 + 672);
    v284 = v1;
    v77 = *(v0 + 472);
    v76 = *(v0 + 480);
    v78 = *(v0 + 424);
    v79 = *(v0 + 432);
    v80 = *(v0 + 304);
    v81 = *(v0 + 248);
    v82 = *(v0 + 256);
    v83 = *(v0 + 240);
    *(v0 + 48) = 0xD000000000000022;
    *(v0 + 56) = 0x8000000100094B70;
    (*(v81 + 104))(v82, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
    sub_10001C1B8();
    URL.appending<A>(path:directoryHint:)();
    (*(v81 + 8))(v82, v83);
    v75(v80, v78);
    (*(v79 + 32))(v76, v77, v78);
    LOBYTE(v77) = static os_log_type_t.debug.getter();
    _StringGuts.grow(_:)(50);
    0xE000000000000000, v84, v85, v86, v87, v88, v89, v90;
    v91 = URL.path(percentEncoded:)(1);
    v92 = v91._object;
    String.append(_:)(v91);
    v92, v93, v94, v95, v96, v97, v98, v99;
    v100._countAndFlagsBits = 32032;
    v100._object = 0xE200000000000000;
    String.append(_:)(v100);
    sub_10005E11C(v77, 0xD00000000000002ELL, 0x8000000100094BA0, 0xD000000000000059, 0x80000001000949D0, 117);
    0x8000000100094BA0, v101, v102, v103, v104, v105, v106, v107;
    v108 = URL.path.getter();
    v110 = v109;
    type metadata accessor for JavaScriptAsset(0);
    swift_allocObject();
    v111 = sub_10004FA38(v108, v110);
    v61 = *(v0 + 672);
    v62 = *(v0 + 480);
    v63 = *(v0 + 424);
    if (!v284)
    {
      v112 = v111;
      v61(*(v0 + 480), *(v0 + 424));
      v15 = v112;
      goto LABEL_19;
    }

    goto LABEL_8;
  }

  v32 = static os_log_type_t.debug.getter();
  _StringGuts.grow(_:)(48);
  0xE000000000000000, v33, v34, v35, v36, v37, v38, v39;
  v40._countAndFlagsBits = URL.path.getter();
  v41 = v40._object;
  String.append(_:)(v40);
  v41, v42, v43, v44, v45, v46, v47, v48;
  v49._countAndFlagsBits = 32032;
  v49._object = 0xE200000000000000;
  String.append(_:)(v49);
  sub_10005E11C(v32, 0xD00000000000002CLL, 0x8000000100094D90, 0xD000000000000059, 0x80000001000949D0, 109);
  0x8000000100094D90, v50, v51, v52, v53, v54, v55, v56;
  v57 = URL.path.getter();
  v59 = v58;
  type metadata accessor for JavaScriptAsset(0);
  swift_allocObject();
  v60 = sub_10004FA38(v57, v59);
  v61 = *(v0 + 672);
  v62 = *(v0 + 488);
  v63 = *(v0 + 424);
  if (!v1)
  {
    v169 = v60;
    v61(*(v0 + 488), *(v0 + 424));
    v15 = v169;
    goto LABEL_19;
  }

LABEL_8:
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v61(v62, v63);
LABEL_16:
  v74 = 0;
LABEL_32:
  v180 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v180, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 20), *(v0 + 176));
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  if (v74)
  {
  }

  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v181 = *(v0 + 8);
LABEL_35:

  return v181();
}

uint64_t sub_10001A6C0()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001A9C8()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 424);
  v3 = *(v0 + 432);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001ACD0()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 536);
  v3 = *(v0 + 424);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v1(v2, v3);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001AFD4()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 512);
  v3 = *(v0 + 424);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v1(v2, v3);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B304()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 520);
  v3 = *(v0 + 424);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v1(v2, v3);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B634()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 504);
  v3 = *(v0 + 424);
  sub_10000BC10(*(v0 + 168), &qword_1000B6CB8, &unk_10008F9F0);
  v1(v2, v3);
  v4 = *(v0 + 160);
  sub_10001C2E0(*(v0 + 416), type metadata accessor for SpamDecisioningAsset.AssetURLs);
  sub_10000BC10(v4, &qword_1000B6CB8, &unk_10008F9F0);
  (*(*(v0 + 184) + 8))(*(v0 + 160) + *(*(v0 + 568) + 24), *(v0 + 176));
  (*(*(v0 + 584) + 8))(*(v0 + 160) + *(v0 + 744), *(v0 + 576));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10001B97C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for URL();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for AssetType();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for AssetInfo();
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10001BB00, 0, 0);
}

uint64_t sub_10001BB00()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[14];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  (*(v0[16] + 104))(v0[17], enum case for AssetType.LogicGraph(_:), v0[15]);
  AssetInfo.init(version:name:id:type:)();
  (*(v4 + 16))(v1, v2, v3);
  (*(v7 + 16))(v5, v8, v6);
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_10001BC78;
  v10 = v0[20];
  v11 = v0[14];
  v12 = v0[10];

  return LogicGraphAsset.init(with:and:)(v12, v10, v11);
}

uint64_t sub_10001BC78()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10001BE34;
  }

  else
  {
    v2 = sub_10001BD8C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001BD8C()
{
  (*(v0[19] + 8))(v0[21], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10001BE34()
{
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v57 = v0[21];
  v55 = v0[19];
  v56 = v0[18];
  v1 = type metadata accessor for Logger();
  sub_100003448(v1, qword_1000B93E8);
  v2 = static os_log_type_t.error.getter();
  _StringGuts.grow(_:)(55);
  v3._object = 0x8000000100094F40;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v3);
  swift_getErrorValue();
  v4._countAndFlagsBits = Error.localizedDescription.getter();
  object = v4._object;
  String.append(_:)(v4);
  object, v6, v7, v8, v9, v10, v11, v12;
  v13._countAndFlagsBits = 0x3D6C7275202CLL;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  sub_10001C340();
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v15 = v14._object;
  String.append(_:)(v14);
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  sub_10005E11C(v2, 0, 0xE000000000000000, 0xD000000000000059, 0x80000001000949D0, 180);
  0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
  _StringGuts.grow(_:)(55);
  v31._object = 0x8000000100094F40;
  v31._countAndFlagsBits = 0xD00000000000002BLL;
  String.append(_:)(v31);
  swift_getErrorValue();
  v32._countAndFlagsBits = Error.localizedDescription.getter();
  v33 = v32._object;
  String.append(_:)(v32);
  v33, v34, v35, v36, v37, v38, v39, v40;
  v41._countAndFlagsBits = 0x3D6C7275202CLL;
  v41._object = 0xE600000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v43 = v42._object;
  String.append(_:)(v42);
  v43, v44, v45, v46, v47, v48, v49, v50;
  v51._countAndFlagsBits = 32032;
  v51._object = 0xE200000000000000;
  String.append(_:)(v51);
  sub_10000B6B0();
  swift_allocError();
  *v52 = 0;
  *(v52 + 8) = 0xE000000000000000;
  *(v52 + 16) = 6;
  swift_willThrow();

  (*(v55 + 8))(v57, v56);

  v53 = v0[1];

  return v53();
}

uint64_t sub_10001C148(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001C1B8()
{
  result = qword_1000B6DF0;
  if (!qword_1000B6DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6DF0);
  }

  return result;
}

uint64_t sub_10001C20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C270(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C2E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001C340()
{
  result = qword_1000B6DF8;
  if (!qword_1000B6DF8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B6DF8);
  }

  return result;
}

uint64_t sub_10001C3AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001C438(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001C4B4(uint64_t a1)
{
  sub_10001C548(319, &unk_1000B6E68, &type metadata accessor for URL);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001C548(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10001C59C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = v1;
  v12._object = v2;
  String.append(_:)(v12);
  v13._object = 0x8000000100094FC0;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  v14._countAndFlagsBits = v3;
  v14._object = v4;
  String.append(_:)(v14);
  return 0x7079547465737361;
}

uint64_t sub_10001C654(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 24);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = OBJC_IVAR____TtC13frauddefensed18MobileAssetManager_logger;
  v18 = type metadata accessor for Logger();
  (*(*(v18 - 8) + 8))(v8 + v17, v18);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileAssetManager(uint64_t a1)
{
  result = qword_1000B6ED8;
  if (!qword_1000B6ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001C760(uint64_t a1)
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

__n128 sub_10001C804(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001C810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001C858(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_10001C8A8(uint64_t a1, _TtC13frauddefensed22TrustKitUIServerClient *a2)
{
  v3 = v2;
  v141 = a2;
  v143 = a1;
  v138 = *v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v137 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for URL.DirectoryHint();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v131 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002074(&qword_1000B6DE8, &qword_10008FA30);
  __chkstk_darwin(v8 - 8);
  v130 = &v127 - v9;
  v134 = type metadata accessor for URL();
  v132 = *(v134 - 8);
  __chkstk_darwin(v134);
  v11 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13frauddefensed19ConfigurationsAsset_logger;
  if (qword_1000B66B0 != -1)
  {
    swift_once();
  }

  v13 = sub_100003448(v4, qword_1000B93E8);
  v14 = *(v5 + 16);
  v15 = &v2[v12];
  v16 = v4;
  v14(v15, v13, v4);
  v17 = [objc_opt_self() defaultManager];
  v18 = String._bridgeToObjectiveC()();
  v139 = v12;
  v140 = v3;
  v19 = v18;
  v20 = [v17 fileExistsAtPath:v18];

  if (!v20)
  {
    v58 = v137;
    v31 = v16;
    v14(v137, &v140[v139], v16);
    v59 = static os_log_type_t.error.getter();
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v60._countAndFlagsBits = 0xD00000000000003ALL;
    v135 = 0xD00000000000003ALL;
    v136 = "onsAsset";
    v60._object = 0x8000000100095020;
    String.append(_:)(v60);
    v61 = v143;
    v62._countAndFlagsBits = v143;
    v63 = v141;
    v62._object = v141;
    String.append(_:)(v62);
    v64._countAndFlagsBits = 32032;
    v64._object = 0xE200000000000000;
    String.append(_:)(v64);
    v65 = v142[1];
    sub_10005E11C(v59, v142[0], v142[1], 0xD000000000000058, 0x8000000100095060, 22);
    v65, v66, v67, v68, v69, v70, v71, v72;
    v44 = *(v5 + 8);
    v44(v58, v16);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v73._countAndFlagsBits = v135;
    v73._object = (v136 | 0x8000000000000000);
    String.append(_:)(v73);
    v74._countAndFlagsBits = v61;
    v74._object = v63;
    String.append(_:)(v74);
    v63, v75, v76, v77, v78, v79, v80, v81;
    v82._countAndFlagsBits = 32032;
    v82._object = 0xE200000000000000;
    String.append(_:)(v82);
    v83 = v142[0];
    v84 = v142[1];
    sub_10000B6B0();
    swift_allocError();
    *v85 = v83;
    *(v85 + 8) = v84;
    *(v85 + 16) = 6;
    swift_willThrow();
    goto LABEL_7;
  }

  v127 = v14;
  v128 = v16;
  v129 = v5;
  v21 = v132;
  v22 = v134;
  (*(v132 + 56))(v130, 1, 1, v134);
  (*(v133 + 104))(v131, enum case for URL.DirectoryHint.inferFromPath(_:), v136);
  v23 = v141;

  v24 = v143;
  URL.init(filePath:directoryHint:relativeTo:)();
  v25 = v135;
  v26 = Data.init(contentsOf:options:)();
  v28 = v23;
  v136 = v25;
  if (v25)
  {
    v29 = v24;
    (*(v21 + 8))(v11, v22);
    v30 = v137;
    v31 = v128;
    v127(v137, &v140[v139], v128);
    v32 = static os_log_type_t.error.getter();
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v33._object = 0x80000001000950C0;
    v33._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v33);
    v34._countAndFlagsBits = v29;
    v34._object = v23;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 32032;
    v35._object = 0xE200000000000000;
    String.append(_:)(v35);
    v36 = v142[1];
    sub_10005E11C(v32, v142[0], v142[1], 0xD000000000000058, 0x8000000100095060, 30);
    v36, v37, v38, v39, v40, v41, v42, v43;
    v44 = *(v129 + 8);
    v44(v30, v31);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v45._object = 0x80000001000950C0;
    v45._countAndFlagsBits = 0xD000000000000030;
    String.append(_:)(v45);
    v46._countAndFlagsBits = v143;
    v46._object = v23;
    String.append(_:)(v46);
    v23, v47, v48, v49, v50, v51, v52, v53;
    v54._countAndFlagsBits = 32032;
    v54._object = 0xE200000000000000;
    String.append(_:)(v54);
    v55 = v142[0];
    v56 = v142[1];
    sub_10000B6B0();
    swift_allocError();
    *v57 = v55;
    *(v57 + 8) = v56;
    *(v57 + 16) = 6;
    swift_willThrow();

LABEL_7:
    v86 = v140;
    v44(&v140[v139], v31);
    swift_deallocPartialClassInstance();
    return v86;
  }

  v88 = v26;
  v89 = v11;
  v90 = v27;
  (*(v21 + 8))(v89, v22);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100020FC4();
  v134 = v88;
  v135 = v90;
  v91 = v136;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v99 = v140;
  if (v91)
  {

    v100 = v137;
    v31 = v128;
    v127(v137, &v99[v139], v128);
    v101 = static os_log_type_t.error.getter();
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v136 = "ath. { filePath=";
    v102._countAndFlagsBits = 0xD000000000000031;
    v133 = 0xD000000000000031;
    v102._object = 0x8000000100095100;
    String.append(_:)(v102);
    v103 = v143;
    v104._countAndFlagsBits = v143;
    v104._object = v28;
    String.append(_:)(v104);
    v105._countAndFlagsBits = 32032;
    v105._object = 0xE200000000000000;
    String.append(_:)(v105);
    v106 = v142[1];
    sub_10005E11C(v101, v142[0], v142[1], 0xD000000000000058, 0x8000000100095060, 38);
    v106, v107, v108, v109, v110, v111, v112, v113;
    v44 = *(v129 + 8);
    v44(v100, v31);
    v142[0] = 0;
    v142[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v114._object = (v136 | 0x8000000000000000);
    v114._countAndFlagsBits = v133;
    String.append(_:)(v114);
    v115._countAndFlagsBits = v103;
    v115._object = v28;
    String.append(_:)(v115);
    v28, v116, v117, v118, v119, v120, v121, v122;
    v123._countAndFlagsBits = 32032;
    v123._object = 0xE200000000000000;
    String.append(_:)(v123);
    v124 = v142[0];
    v125 = v142[1];
    sub_10000B6B0();
    swift_allocError();
    *v126 = v124;
    *(v126 + 8) = v125;
    *(v126 + 16) = 6;
    swift_willThrow();

    sub_100005A28(v134, v135);
    goto LABEL_7;
  }

  v23, v92, v93, v94, v95, v96, v97, v98;

  sub_100005A28(v134, v135);
  memcpy(v99 + 16, v142, 0x170uLL);
  return v99;
}