uint64_t sub_1000016D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000016E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000016F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001738(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000017A8(void *a1)
{
  v43 = type metadata accessor for Entitlements();
  v2 = *(v43 - 8);
  v3 = __chkstk_darwin(v43);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v41 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received new connection, %@", v14, 0xCu);
    sub_100001E9C(v15, &qword_1000353F8, &qword_100027B40);
  }

  (*(v8 + 8))(v10, v7);
  v17 = objc_opt_self();
  v18 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP14SiriTTSService14DaemonProtocol_];
  v19 = static DaemonXPCAllowedTypeSets.CancellableRequestsTypes.getter();
  sub_100001EFC(v19);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [v18 setClasses:isa forSelector:"cancelWithRequest:" argumentIndex:0 ofReply:0];

  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100027E40;
  v22 = sub_1000228D4(0, &qword_100035B70, NSArray_ptr);
  *(v21 + 56) = sub_10000AEF4(&qword_100035B78, &qword_100028010);
  *(v21 + 32) = v22;
  v23 = type metadata accessor for SynthesisVoice();
  *(v21 + 88) = sub_10000AEF4(&qword_100035B80, &qword_100028018);
  *(v21 + 64) = v23;
  sub_1000228D4(0, &qword_100035B88, NSSet_ptr);
  v24 = NSSet.init(arrayLiteral:)();
  sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
  sub_1000022D8();
  v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100001EFC(v25);

  v26 = Set._bridgeToObjectiveC()().super.isa;

  [v18 setClasses:v26 forSelector:"subscribeWithVoices:clientId:accessoryId:reply:" argumentIndex:0 ofReply:0];

  [v11 setExportedInterface:v18];
  v27 = [v17 interfaceWithProtocol:&OBJC_PROTOCOL____TtP14SiriTTSService22DaemonDelegateProtocol_];
  [v11 setRemoteObjectInterface:v27];
  v28 = v11;
  Entitlements.init(connection:)();
  v48 = sub_100005568;
  v49 = 0;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100005500;
  v47 = &unk_100031F60;
  v29 = _Block_copy(&aBlock);
  v30 = [v28 remoteObjectProxyWithErrorHandler:v29];
  _Block_release(v29);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000AEF4(&unk_100035A40, &unk_100027F40);
  swift_dynamicCast();
  v31 = v43;
  v32 = v42;
  (*(v2 + 16))(v42, v6, v43);
  v33 = objc_allocWithZone(type metadata accessor for DaemonXPCHandler(0));
  v34 = swift_unknownObjectRetain();
  v35 = sub_100002340(v34, v32);
  swift_unknownObjectRelease();
  [v28 setExportedObject:v35];
  v36 = swift_allocObject();
  *(v36 + 16) = v28;
  *(v36 + 24) = v35;
  v48 = sub_100002F38;
  v49 = v36;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_100002B68;
  v47 = &unk_100031FB0;
  v37 = _Block_copy(&aBlock);
  v38 = v28;
  v39 = v35;

  [v38 setInvalidationHandler:v37];
  _Block_release(v37);
  [v38 resume];

  swift_unknownObjectRelease();
  (*(v2 + 8))(v6, v31);
  return 1;
}

uint64_t sub_100001E5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100001E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000AEF4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int sub_100001EFC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_10000AEF4(&qword_100035BA0, &qword_100028020);
  v3 = static _SetStorage.allocate(capacity:)();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
  sub_1000022D8();
  result = Set.Iterator.init(_cocoa:)();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = (v3 + 7);
  while (v1 < 0)
  {
    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
LABEL_34:
      sub_100002278(v1);

      return v3;
    }

    *&v27 = v16;
    sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_1000228D4(0, &qword_100035B90, NSObject_ptr);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v12[8 * (v21 >> 6)]) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*&v12[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v12[8 * v22];
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v12[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
    v14 = v3[6] + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++v3[2];
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1000022A0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000022D8()
{
  result = qword_100035B98;
  if (!qword_100035B98)
  {
    sub_1000228D4(255, &qword_100035B90, NSObject_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035B98);
  }

  return result;
}

id sub_100002340(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession] = 0;
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate] = a1;
  type metadata accessor for Preferences();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_preferences] = static Preferences.shared.getter();
  v5 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_entitlements;
  v6 = type metadata accessor for Entitlements();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v3[v5], a2, v6);
  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider] = TTSAssetUAFAssetProvider.init()();
  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_trialAssetProvider] = TrialAssetProvider.init()();
  if (qword_1000351C0 != -1)
  {
    swift_once();
  }

  *&v3[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_subscriptionService] = qword_100035D38;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for DaemonXPCHandler(0);

  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a2, v6);
  return v8;
}

void sub_100002584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_uafAssetProvider))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.listVoices(_:)();
  }

  else
  {
    v4 = dispatch thunk of TrialAssetProvider.listVoices(_:)();
    sub_100003A24(v4, sub_100019048);
    type metadata accessor for PreinstalledVoiceProvider();
    swift_allocObject();
    PreinstalledVoiceProvider.init()();
    v5 = dispatch thunk of PreinstalledVoiceProvider.listVoices(_:)();

    sub_100003A24(v5, sub_100019048);
  }

  type metadata accessor for SynthesisVoice();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa);
}

uint64_t sub_100002770()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000027AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v4 + 16);
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = a4;
  aBlock[4] = sub_100002D7C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A10;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_100002A74()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100002ABC()
{
  result = qword_1000353F0;
  if (!qword_1000353F0)
  {
    sub_10000B094(&qword_1000351A0, &unk_100027BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353F0);
  }

  return result;
}

uint64_t sub_100002B20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002B68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v8 = v7;
  if (a3)
  {
    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = a4;
      v10 = 0;
      a4 = (v8 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (dispatch thunk of SynthesisVoiceSubscription.clientId.getter() == a2 && v14 == a3)
        {
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v15 & 1) == 0)
          {

            goto LABEL_7;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_7:
        ++v10;
        if (v13 == i)
        {
          a4 = v17;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:

    v8 = _swiftEmptyArrayStorage;
  }

  a4(v8);
}

void (*sub_100002D8C(void *a1))(char *, void)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "XPC connection invalidated, %@", v9, 0xCu);
    sub_100001E9C(v10, &qword_1000353F8, &qword_100027B40);
  }

  (*(v3 + 8))(v5, v2);
  return sub_100002F40();
}

void (*sub_100002F40())(char *, void)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  static Logger.service.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidate DaemonXPCHandler, %@", v11, 0xCu);
    sub_100001E9C(v12, &qword_1000353F8, &qword_100027B40);
  }

  v15 = *(v2 + 8);
  v14 = v2 + 8;
  v40 = v15;
  v15(v7, v1);
  v16 = *&v8[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  if (qword_1000351B0 != -1)
  {
    swift_once();
  }

  v17 = qword_100035298;
  [qword_100035298 lock];
  if (qword_1000351A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = off_100035290;

  __chkstk_darwin([v17 unlock]);
  *(&v37 - 2) = v16;
  v19 = sub_10000343C(v18, sub_100003A1C);

  if (v19 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v21 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_16;
    }
  }

  if (v21 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  for (i = 0; i != v21; ++i)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v19 + 8 * i + 32);
    }

    v24 = v23;
    [v23 cancel];
  }

LABEL_16:

  v25 = OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession;
  if (!*&v8[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_activeSession])
  {
    return result;
  }

  type metadata accessor for EngineCachingService();
  static EngineCachingService.shared.getter();
  result = dispatch thunk of EngineCachingService.activeSessionCount.modify();
  v27 = *v26 - 1;
  if (__OFSUB__(*v26, 1))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v39 = v14;
  *v26 = v27;
  result(v41, 0);

  static Logger.service.getter();
  v28 = v5;
  v29 = v8;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38 = v1;
    v34 = v33;
    *v32 = 138412546;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2048;
    v35 = v29;
    static EngineCachingService.shared.getter();
    v36 = dispatch thunk of EngineCachingService.activeSessionCount.getter();

    *(v32 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "DaemonXPCHandler %@ invalidated, total active session count: %ld", v32, 0x16u);
    sub_100001E9C(v34, &qword_1000353F8, &qword_100027B40);
    v1 = v38;
  }

  v40(v28, v1);
  *&v8[v25] = 0;
  return swift_unknownObjectRelease();
}

unint64_t sub_10000343C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v39 = v7;
  v36 = v3;
  v37 = result;
  while (v6)
  {
LABEL_10:
    v12 = __clz(__rbit64(v6)) | (v9 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);

    v17 = a2(v15, v14, v16);

    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v10 >> 62;
    if (v10 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v19;
    v21 = __OFADD__(result, v19);
    v22 = result + v19;
    if (v21)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v20)
      {
LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_22:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v42 = result;
      v23 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v20)
    {
      goto LABEL_21;
    }

    v23 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v22 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v42 = v10;
LABEL_23:
    v24 = *(v23 + 16);
    v25 = *(v23 + 24);
    if (v18)
    {
      v27 = v23;
      result = _CocoaArrayWrapper.endIndex.getter();
      v23 = v27;
      v26 = result;
    }

    else
    {
      v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (v26)
    {
      if (((v25 >> 1) - v24) < v44)
      {
        goto LABEL_42;
      }

      v41 = v9;
      v28 = v23 + 8 * v24 + 32;
      v38 = v23;
      if (v18)
      {
        if (v26 < 1)
        {
          goto LABEL_44;
        }

        sub_10000675C(&qword_100035A88, &qword_100035A80, &qword_100027F70, &protocol conformance descriptor for [A]);
        v29 = 0;
        do
        {
          sub_10000AEF4(&qword_100035A80, &qword_100027F70);
          v30 = sub_100019390(v43, v29, v17);
          v32 = v26;
          v33 = *v31;
          (v30)(v43, 0);
          *(v28 + 8 * v29) = v33;
          v26 = v32;
          ++v29;
        }

        while (v32 != v29);
      }

      else
      {
        type metadata accessor for TaskOperation();
        swift_arrayInitWithCopy();
      }

      v3 = v36;
      v2 = v37;
      v7 = v39;
      v10 = v42;
      v9 = v41;
      if (v44 >= 1)
      {
        v34 = *(v38 + 16);
        v21 = __OFADD__(v34, v44);
        v35 = v34 + v44;
        if (v21)
        {
          goto LABEL_43;
        }

        *(v38 + 16) = v35;
      }
    }

    else
    {

      v7 = v39;
      v10 = v42;
      if (v44 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_10;
    }
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
  return result;
}

void *sub_1000037C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  [v4 lock];
  v5 = *(v1 + 32);
  if (v5)
  {
    v6 = v5;
    v7 = TaskOperation.delegate.getter();
    swift_unknownObjectRelease();
    if (v7 == a1)
    {
      v8 = v6;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  swift_beginAccess();
  v9 = *(v2 + 24);
  if (v9 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v17 = v4;
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = TaskOperation.delegate.getter();
      swift_unknownObjectRelease();
      if (v15 == a1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v11;
      if (v14 == i)
      {
        v4 = v17;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  sub_100003BBC(_swiftEmptyArrayStorage);
  [v4 unlock];
  return _swiftEmptyArrayStorage;
}

uint64_t sub_100003A24(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100003B1C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100003B1C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100003CF0(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v32[0] = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v34 = *(v32[0] - 8);
  v3 = __chkstk_darwin(v32[0]);
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v32 - v5;
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v7 = type metadata accessor for RequestPreprocessAction();
  swift_allocObject();
  swift_retain_n();
  v8 = RequestPreprocessAction.init(pool:)();
  v39 = v7;
  v40 = &protocol witness table for RequestPreprocessAction;
  v38 = v8;
  swift_allocObject();
  v9 = WorkflowNode.init(action:)();
  v10 = type metadata accessor for RequestParsingAction();
  swift_allocObject();
  v11 = RequestParsingAction.init(pool:)();
  v39 = v10;
  v40 = &protocol witness table for RequestParsingAction;
  v38 = v11;
  swift_allocObject();
  v12 = WorkflowNode.init(action:)();
  v13 = type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  v14 = VoiceSelectionAction.init(pool:)();
  v39 = v13;
  v40 = &protocol witness table for VoiceSelectionAction;
  v38 = v14;
  swift_allocObject();
  v15 = WorkflowNode.init(action:)();
  v16 = type metadata accessor for SynthesisPrewarmAction();
  swift_allocObject();
  v17 = SynthesisPrewarmAction.init(pool:)();
  v39 = v16;
  v40 = &protocol witness table for SynthesisPrewarmAction;
  v38 = v17;
  swift_allocObject();
  v18 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100027E00;
  *(v19 + 32) = v9;
  *(v19 + 40) = v12;
  *(v19 + 48) = v15;
  *(v19 + 56) = v18;
  v32[2] = v9;

  v35 = v12;

  v32[1] = v15;

  v20 = v32[0];
  v37 = v6;
  DirectedAcyclicGraph.chain(nodes:)(v19);

  type metadata accessor for SynthesisRequest();
  v21 = v36;
  SynthesizingRequestProtocol.privacySensitive.getter();
  SynthesizingRequestProtocol.privacySensitive.setter();
  v22 = sub_100019520(v21, a2);
  if (v22)
  {
    if (sub_10001992C(v21, v22, a2))
    {
      v23 = v20;
      v24 = type metadata accessor for OspreyTTSPrewarmAction();
      swift_allocObject();
      v25 = OspreyTTSPrewarmAction.init(pool:)();
      v39 = v24;
      v40 = &protocol witness table for OspreyTTSPrewarmAction;
      v38 = v25;
      swift_allocObject();
      v26 = WorkflowNode.init(action:)();
      v38 = v35;
      v41 = v26;
      v20 = v23;
      DirectedAcyclicGraph.connect(fromNode:toNode:)();
    }
  }

  SynthesizingRequestProtocol.privacySensitive.setter();
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  v27 = v32[3];
  dispatch thunk of ObjectPool.find<A>()();
  if (v27)
  {
  }

  v28 = v34;
  v29 = v37;
  (*(v34 + 16))(v33, v37, v20);
  type metadata accessor for Workflow();
  swift_allocObject();
  v30 = Workflow.init(graph:notification:errorHandlers:)();
  (*(v28 + 8))(v29, v20);

  return v30;
}

uint64_t sub_1000041F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004240(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000430C(v11, 0, 0, 1, a1, a2);
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
    sub_100004418(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004474(v11);
  return v7;
}

unint64_t sub_10000430C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005DC0(a5, a6);
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

uint64_t sub_100004418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004474(void *a1)
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

uint64_t sub_1000044C0(void *a1, uint64_t a2, const void *a3)
{
  v6 = type metadata accessor for UUID();
  v70 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v8 - 8);
  v69 = &v60 - v9;
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v67 = *(v10 - 1);
  v68 = v10;
  __chkstk_darwin(v10);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v64);
  v65 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v63 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = swift_allocObject();
  *(v73 + 16) = a3;
  _Block_copy(a3);
  static Logger.service.getter();
  v19 = a1;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v71 = v6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v72 = a2;
    v61 = a3;
    v25 = v24;
    *&aBlock = v24;
    *v23 = 136446210;
    v26 = [v19 description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v15;
    v28 = v19;
    v30 = v29;

    v31 = sub_100004240(v27, v30, &aBlock);
    v19 = v28;

    *(v23 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received #PrewarmRequest %{public}s", v23, 0xCu);
    sub_100004474(v25);
    a2 = v72;

    (*(v16 + 8))(v18, v60);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  type metadata accessor for ObjectPool();
  swift_allocObject();
  v32 = ObjectPool.init()();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for LocalAssetProvider();
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for VocalizerCustomVoiceProvider();
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for PreinstalledVoiceProvider();
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for BuiltInVoiceProvider();
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v33 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v33, v34, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v35 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v35;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v36 = sub_100003CF0(v19, v32);

  v61 = v19;
  v72 = a2;
  v37 = swift_allocObject();
  *(v37 + 16) = _swiftEmptyArrayStorage;

  v38 = os_transaction_create();
  if (v38)
  {
    v39 = v38;
    ObjectType = swift_getObjectType();
    *&aBlock = v39;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 16) = _swiftEmptyArrayStorage;
    v41 = _swiftEmptyArrayStorage;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_10000663C(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      *(v37 + 16) = v41;
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_10000663C((v42 > 1), v43 + 1, 1, v41);
      *(v37 + 16) = v41;
    }

    swift_unknownObjectRelease();
    *(v41 + 2) = v43 + 1;
    sub_10000674C(&aBlock, &v41[32 * v43 + 32]);
    *(v37 + 16) = v41;
  }

  if (static MobileGestalt.isWatchOS.getter())
  {
    v44 = 0;
  }

  else
  {
    sub_1000228D4(0, &qword_100035B30, OS_dispatch_queue_ptr);
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1000041F8(&qword_100035CF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
    sub_10000AEF4(&unk_100035B40, &qword_100027980);
    sub_10000675C(&qword_100035D00, &unk_100035B40, &qword_100027980, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v67 + 104))(v66, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v68);
    v44 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v45 = v44;
  }

  v46 = v61;
  objc_allocWithZone(type metadata accessor for TaskOperation());
  v46;
  swift_unknownObjectRetain();
  v68 = v35;
  v72 = v36;
  v47 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v48 = swift_allocObject();
  v49 = v73;
  v48[2] = sub_100022B24;
  v48[3] = v49;
  v48[4] = v47;
  v48[5] = v37;
  v77 = sub_1000071D8;
  v78 = v48;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v75 = sub_100002B68;
  ObjectType = &unk_100031F38;
  v50 = _Block_copy(&aBlock);
  v51 = v47;

  sub_1000067AC(sub_1000071D8, v48);

  [v51 setCompletionBlock:v50];
  _Block_release(v50);

  v52 = v69;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v54 = v70;
  v53 = v71;
  if ((*(v70 + 48))(v52, 1, v71))
  {
    sub_100001E9C(v52, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
  }

  else
  {
    v55 = v62;
    (*(v54 + 16))(v62, v52, v53);
    sub_100001E9C(v52, &qword_100035810, &qword_100027D68);
    v56 = UUID.uuidString.getter();
    v58 = v57;
    (*(v54 + 8))(v55, v53);
    sub_100007504(v56, v58);
  }

  sub_100007914(v51);
}

uint64_t sub_1000050F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100005134(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1000051EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for OspreyServerConfig();
  v7 = swift_allocObject();
  type metadata accessor for CKKnowledgeStore();
  v8 = dispatch thunk of static CKKnowledgeStore.userDefaultsKnowledgeStore()();
  v7[3] = a2;
  v7[4] = v8;
  v7[2] = a1;
  v9 = type metadata accessor for OspreyBuiltInConfig();
  swift_allocObject();

  v10 = OspreyBuiltInConfig.init()();
  sub_10000AEF4(&qword_100035B20, &qword_100027FE8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100027E40;
  *(v11 + 56) = v6;
  v12 = sub_1000041F8(&qword_100035B28, type metadata accessor for OspreyServerConfig, &unk_100027DA4);
  *(v11 + 32) = v7;
  *(v11 + 96) = v9;
  *(v11 + 104) = &protocol witness table for OspreyBuiltInConfig;
  *(v11 + 64) = v12;
  *(v11 + 72) = v10;
  v13 = type metadata accessor for OspreyChainedConfigs();
  swift_allocObject();

  v14 = OspreyChainedConfigs.init(configs:)();
  a3[3] = v13;
  a3[4] = &protocol witness table for OspreyChainedConfigs;

  *a3 = v14;
  return result;
}

void *sub_10000535C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000053A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000053B8()
{
  v1 = *(v0 + 32);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

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
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      v9[0] = v6;
      sub_10001301C();
      v4 = StringProtocol.components<A>(separatedBy:)();

      return v4;
    }
  }

  else
  {
    sub_1000099A4(v9);
  }

  return 0;
}

void sub_100005500(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100005568(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = Error.localizedDescription.getter();
    v11 = sub_100004240(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "XPC connection error from Daemon to Framework, error: %s", v7, 0xCu);
    sub_100004474(v8);
  }

  return (*(v2 + 8))(v4, v1);
}

void sub_100005734()
{
  v0 = type metadata accessor for Logger();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  aBlock[4] = sub_100005B4C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031DA8;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  [v25 pingWithReply:v15];
  _Block_release(v15);
  static DispatchTime.now()();
  *v5 = 1;
  (*(v3 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v2);
  + infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  v17 = *(v7 + 8);
  v17(v10, v6);
  OS_dispatch_semaphore.wait(timeout:)();
  v17(v12, v6);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
  }

  else
  {
    v18 = v22;
    static Logger.service.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unable to get reply from client in time.", v21, 2u);
    }

    else
    {
    }

    (*(v23 + 8))(v18, v24);
  }
}

uint64_t sub_100005B14()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100005B70(id a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    [a1 updateState:{0, a4, a5, a6, a7, a8}];
  }

  v11 = static NSNotificationName.taskCompletion.getter();
  NSNotificationCenter.post(event:)(v11);

  sub_100005734();
  v12 = dispatch thunk of TaskOperation.error.getter();
  a4();

  swift_beginAccess();
  *(a7 + 16) = _swiftEmptyArrayStorage;

  if ((a9 & 1) == 0)
  {
    return sandbox_extension_release();
  }

  return result;
}

void *sub_100005C90(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100005E0C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
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
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005E0C(v10, 0);
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

void *sub_100005DC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005C90(a1, a2);
  sub_100005E80(&off_1000314A0);
  return v3;
}

void *sub_100005E0C(uint64_t a1, uint64_t a2)
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

  sub_10000AEF4(&unk_100035CE0, &qword_100027970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100005E80(uint64_t result)
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

  result = sub_10000B0DC(result, v11, 1, v3);
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

id sub_100005F6C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSError.TTSErrorCode();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = __chkstk_darwin(v4);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v58 - v7;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  static Logger.service.getter();
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = v9;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting task: %@)", v19, 0xCu);
    sub_100006568(v20);

    v9 = v18;
  }

  v24 = *(v9 + 8);
  v23 = v9 + 8;
  v22 = v24;
  v24(v14, v8);
  [v15 start];
  static Logger.service.getter();
  v25 = v15;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v66 = a2;
  if (v28)
  {
    v59 = v22;
    v60 = v23;
    v61 = v8;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67 = v31;
    *v29 = 138412546;
    *(v29 + 4) = v25;
    *v30 = v25;
    *(v29 + 12) = 2080;
    v32 = v25;
    v33 = dispatch thunk of TaskOperation.error.getter();
    if (v33)
    {
      v34 = v33;
      v35 = [v33 localizedDescription];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v38 = 0xE700000000000000;
      v36 = 0x73736563637573;
    }

    v39 = sub_100004240(v36, v38, &v67);

    *(v29 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v26, v27, "Task finished: %@, error: %s", v29, 0x16u);
    sub_100006568(v30);

    sub_100004474(v31);

    v59(v12, v61);
  }

  else
  {

    v22(v12, v8);
  }

  v40 = dispatch thunk of TaskOperation.error.getter();
  v41 = v40;
  v43 = v64;
  v42 = v65;
  if (v40)
  {
    v44 = [v40 code];
  }

  else
  {
    v44 = 0;
  }

  v45 = *(v43 + 104);
  v46 = v63;
  v45(v63, enum case for TTSError.TTSErrorCode.waitDequeueTimeout(_:), v42);
  v47 = TTSError.TTSErrorCode.rawValue.getter();
  v48 = *(v43 + 8);
  v48(v46, v42);
  if (v41 && v44 == v47)
  {
    sub_10000B9B4(0x5353545469726953, 0xEE00656369767265, 0x676E61486B736154, 0xE800000000000000, 0x6473747469726973, 0xE800000000000000);
  }

  else
  {
    v49 = dispatch thunk of TaskOperation.error.getter();
    v50 = v49;
    if (v49)
    {
      v51 = [v49 code];
    }

    else
    {
      v51 = 0;
    }

    v52 = v62;
    v45(v62, enum case for TTSError.TTSErrorCode.synthesisIssueBNNSInference(_:), v42);
    v53 = TTSError.TTSErrorCode.rawValue.getter();
    v48(v52, v42);
    if (v50 && v51 == v53)
    {
      sub_10000BECC(0x5353545469726953, 0xEE00656369767265, 0xD000000000000016, 0x8000000100029170, 0x6473747469726973, 0xE800000000000000);
    }
  }

  v54 = v66;
  v55 = *(v66 + 40);
  [v55 lock];
  v56 = *(v54 + 32);
  *(v54 + 32) = 0;

  [v55 unlock];
  return sub_1000067BC();
}

uint64_t sub_100006568(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_1000353F8, &qword_100027B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000065D8(uint64_t a1, uint64_t a2)
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

char *sub_10000663C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035A70, &unk_100027F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_10000674C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000675C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000B094(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000067AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_1000067BC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 40);
  [v11 lock];
  swift_beginAccess();
  v12 = *(v0 + 24);
  if (v12 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return [v11 unlock];
    }
  }

  else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return [v11 unlock];
  }

  v41 = v8;
  v42 = v4;
  if ((v12 & 0xC000000000000001) != 0)
  {

    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }

    v8 = *(v12 + 32);
  }

  v13 = *(v2 + 32);
  v43 = v11;
  if (v13)
  {
    v14 = v13;
    v15 = TaskOperation.request.getter();
    v45 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v40 = v15;
      v16 = TaskOperation.request.getter();
      v44 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
      v17 = swift_dynamicCastObjCProtocolConditional();

      if (v17)
      {
        swift_getObjectType();
        if (AudibleRequestProtocol.immediate.getter())
        {
          [v14 cancel];
        }

        goto LABEL_21;
      }

      [v14 cancel];
      v20 = TaskOperation.queue.getter();
      if (!v20)
      {
LABEL_21:

LABEL_38:
        goto LABEL_39;
      }

      v21 = v20;
      v22 = TaskOperation.queue.getter();
      if (v22)
      {
        v39 = v22;
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        v51 = sub_10000DC58;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100002B68;
        v50 = &unk_100031840;
        v24 = _Block_copy(&aBlock);
        v25 = v21;
        static DispatchQoS.unspecified.getter();
        v46 = _swiftEmptyArrayStorage;
        sub_100007488();
        sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
        sub_100002ABC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v26 = v39;
        OS_dispatch_queue.async(group:qos:flags:execute:)();

        _Block_release(v24);
LABEL_36:
        (*(v42 + 8))(v6, v3);
        v41[1](v10, v7);

        goto LABEL_39;
      }

      sub_10000AEF4(&qword_1000353D8, &qword_100027B38);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100027AE0;
      static DispatchWorkItemFlags.detached.getter();
      aBlock = v27;
      sub_100007488();
      sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
      sub_100002ABC();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      v51 = sub_10000DC18;
      v52 = v28;
      aBlock = _NSConcreteStackBlock;
      v48 = 1107296256;
      v49 = sub_100002B68;
      v50 = &unk_1000317F0;
      _Block_copy(&aBlock);
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v29 = v21;
      DispatchWorkItem.init(flags:block:)();

      OS_dispatch_queue.async(execute:)();
    }

    else
    {
    }

LABEL_39:
    v11 = v43;
    return [v11 unlock];
  }

  result = swift_beginAccess();
  v12 = *(v2 + 24);
  v1 = v12 >> 62;
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_27:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_13:
      if ((v12 & 0xC000000000000001) == 0)
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v19 = *(v12 + 32);
        if (!v1)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

LABEL_31:
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v1)
      {
LABEL_16:
        result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_33;
      }

LABEL_32:
      result = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
      if (result)
      {
        sub_1000072A8(0, 1);
        swift_endAccess();

        v30 = *(v2 + 32);
        *(v2 + 32) = v8;
        v31 = v8;

        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        *(v32 + 24) = v2;
        v14 = v31;

        v33 = TaskOperation.queue.getter();
        if (!v33)
        {
          sub_10000AEF4(&qword_1000353D8, &qword_100027B38);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100027AE0;
          static DispatchWorkItemFlags.detached.getter();
          aBlock = v37;
          sub_100007488();
          sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
          sub_100002ABC();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v51 = sub_1000071D0;
          v52 = v32;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_100002B68;
          v50 = &unk_100031750;
          _Block_copy(&aBlock);
          type metadata accessor for DispatchWorkItem();
          swift_allocObject();

          DispatchWorkItem.init(flags:block:)();

          OS_dispatch_queue.async(execute:)();

          goto LABEL_38;
        }

        v34 = v33;
        v35 = swift_allocObject();
        *(v35 + 16) = sub_1000071D0;
        *(v35 + 24) = v32;
        v51 = sub_1000071A8;
        v52 = v35;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_100002B68;
        v50 = &unk_1000317A0;
        v36 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        v46 = _swiftEmptyArrayStorage;
        sub_100007488();
        sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
        sub_100002ABC();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v36);

        goto LABEL_36;
      }

      goto LABEL_42;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1000070F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007134()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000716C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000071DC(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = dispatch thunk of TaskOperation.error.getter();
  a1();

  swift_beginAccess();
  *(a4 + 16) = _swiftEmptyArrayStorage;
}

uint64_t sub_1000072A8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1000072A4(result, 1);

  return sub_100007380(v5, v3, 0);
}

uint64_t sub_100007380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TaskOperation();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_100007488()
{
  result = qword_1000353E0;
  if (!qword_1000353E0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000353E0);
  }

  return result;
}

uint64_t sub_100007504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000351B0 != -1)
  {
    swift_once();
  }

  v8 = qword_100035298;
  [qword_100035298 lock];
  if (qword_1000351A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = off_100035290;
  if (*(off_100035290 + 2))
  {
    v10 = sub_1000077E4(a1, a2);
    if (v11)
    {
      v12 = *(v9[7] + 8 * v10);
      swift_endAccess();
LABEL_11:

      [v8 unlock];
      return v12;
    }
  }

  swift_endAccess();
  type metadata accessor for TaskQueue();
  v13 = swift_allocObject();
  v13[3] = _swiftEmptyArrayStorage;
  v13[4] = 0;
  v14 = objc_allocWithZone(NSRecursiveLock);

  v13[5] = [v14 init];
  sub_10000B048();
  static OS_dispatch_queue.synthesisQoS.getter();
  static OS_dispatch_queue.platformSynthesisPriority.getter();
  v15 = static OS_dispatch_queue.synthesisQueue(label:qos:priority:)();
  (*(v5 + 8))(v7, v4);
  v13[2] = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = off_100035290;
  off_100035290 = 0x8000000000000000;
  sub_10000CFF8(v13, a1, a2, isUniquelyReferenced_nonNull_native);

  v17 = v21;
  off_100035290 = v21;
  result = swift_endAccess();
  if (v17[2])
  {
    result = sub_1000077E4(a1, a2);
    if (v19)
    {
      v12 = *(v17[7] + 8 * result);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000077E4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000785C(a1, a2, v4);
}

unint64_t sub_10000785C(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_100007914(unint64_t i)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v36 - v9;
  static Logger.service.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v40 = i;
  if (v13)
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Will enqueue task", v14, 2u);
    i = v40;
  }

  v16 = *(v5 + 8);
  v15 = v5 + 8;
  v38 = v16;
  v16(v10, v4);
  v17 = *(v2 + 40);
  [v17 lock];
  v18 = TaskOperation.request.getter();
  v42 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  v19 = swift_dynamicCastObjCProtocolConditional();

  v39 = v17;
  if (!v19)
  {
    swift_beginAccess();
    v28 = i;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  swift_beginAccess();
  v20 = *(v2 + 24);
  v36[1] = v15;
  v37 = v4;
  if (v20 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i)
    {
      while (!__OFSUB__(i--, 1))
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_31;
          }

          if (i >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v22 = *(v20 + 32 + 8 * i);
        }

        v23 = v22;
        v24 = TaskOperation.request.getter();

        v41 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
        if (swift_dynamicCastObjCProtocolConditional())
        {

          v20 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_29;
          }

          goto LABEL_17;
        }

        if (!i)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_30;
    }

LABEL_16:

    i = -1;
    v20 = 0;
    if (!__OFADD__(-1, 1))
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_17:
  swift_beginAccess();
  v25 = *(v2 + 24);
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v37;
  if (v26 < v20)
  {
    __break(1u);
  }

  else if ((v20 & 0x8000000000000000) == 0)
  {
    v27 = v40;
    sub_10000DB2C(v20, v20, v27);
    swift_endAccess();

    i = v40;
    goto LABEL_24;
  }

  __break(1u);
LABEL_37:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_23:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_24:
  static Logger.service.getter();
  v29 = i;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&_mh_execute_header, v30, v31, "Enqueued task: %@", v32, 0xCu);
    sub_100006568(v33);
  }

  v38(v8, v4);
  sub_1000067BC();
  return [v39 unlock];
}

uint64_t sub_100007DC4()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_100007E04(void *a1, char *a2, const void *a3)
{
  v136 = a2;
  v5 = type metadata accessor for UUID();
  v128 = *(v5 - 8);
  v129 = v5;
  __chkstk_darwin(v5);
  v124 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v7 - 8);
  v127 = v118 - v8;
  v9 = type metadata accessor for Logger();
  v133 = *(v9 - 1);
  v134 = v9;
  v10 = __chkstk_darwin(v9);
  v125 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v126 = v118 - v13;
  __chkstk_darwin(v12);
  v132 = v118 - v14;
  v15 = type metadata accessor for OSSignpostID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v118 - v20;
  v131 = type metadata accessor for OSSignposter();
  v22 = *(v131 - 8);
  __chkstk_darwin(v131);
  v24 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = swift_allocObject();
  *(v135 + 16) = a3;
  v130 = a3;
  _Block_copy(a3);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = swift_slowAlloc();
    v123 = v15;
    v28 = a1;
    v29 = v27;
    *v27 = 0;
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, v26, v30, "TTS enqueue speech task", "", v29, 2u);
    a1 = v28;
    v15 = v123;
  }

  (*(v16 + 16))(v19, v21, v15);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v31 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v16 + 8))(v21, v15);
  (*(v22 + 8))(v24, v131);
  v32 = v132;
  static Logger.service.getter();
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&aBlock = v37;
    *v36 = 136446210;
    v38 = v31;
    v39 = [v33 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_100004240(v40, v42, &aBlock);

    *(v36 + 4) = v43;
    v31 = v38;
    _os_log_impl(&_mh_execute_header, v34, v35, "Received #SpeechRequest %{public}s", v36, 0xCu);
    sub_100004474(v37);
  }

  (v133)[1](v32, v134);
  type metadata accessor for ObjectPool();
  swift_allocObject();
  v44 = ObjectPool.init()();
  v45 = [objc_allocWithZone(NSNotificationCenter) init];
  *&aBlock = v45;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for Entitlements();
  dispatch thunk of ObjectPool.inject<A>(object:)();
  v46 = type metadata accessor for InternalSettings();
  *&aBlock = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for InlineStreamingStorage();
  *&aBlock = static InlineStreamingStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TTSAssetUAFAssetProvider();
  swift_allocObject();
  *&aBlock = TTSAssetUAFAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *&aBlock = TrialAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for LocalAssetProvider();
  swift_allocObject();
  *&aBlock = LocalAssetProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for VocalizerCustomVoiceProvider();
  swift_allocObject();
  *&aBlock = VocalizerCustomVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for PreinstalledVoiceProvider();
  swift_allocObject();
  *&aBlock = PreinstalledVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for BuiltInVoiceProvider();
  swift_allocObject();
  *&aBlock = BuiltInVoiceProvider.init()();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyClient();
  *&aBlock = static OspreyClient.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for OspreyChainedConfigs();
  v47 = dispatch thunk of BaseRequest.clientBundleId.getter();
  sub_1000051EC(v47, v48, &aBlock);

  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  v49 = type metadata accessor for SiriSynthesisProfile();
  v50 = swift_allocObject();
  *(v50 + 28) = 0;
  *(v50 + 32) = 1;
  *(v50 + 16) = 0x4014000000000000;
  *(v50 + 24) = 0;
  sub_1000228D4(0, &qword_100035B30, OS_dispatch_queue_ptr);
  v51 = static OS_dispatch_queue.appSynthesisPriority(request:)();
  *(v50 + 28) = v51;
  *(v50 + 32) = BYTE4(v51) & 1;
  *(&v138 + 1) = v49;
  v139 = sub_1000041F8(&qword_100035AC8, type metadata accessor for SiriSynthesisProfile, &unk_100027C68);
  *&aBlock = v50;

  sub_10000AEF4(&qword_100035AD0, &qword_100027FA0);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  sub_100004474(&aBlock);
  type metadata accessor for EngineCachingService();
  *&aBlock = static EngineCachingService.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for CacheStorage();
  v52 = static CacheStorage.sharedSynthesisCache.getter();
  if (v52)
  {
    *&aBlock = v52;
    dispatch thunk of ObjectPool.inject<A>(object:)();
  }

  type metadata accessor for PreinstalledAudioStorage();
  *&aBlock = static PreinstalledAudioStorage.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  v53 = sub_1000149D4(v33, v44);

  v118[4] = v50;
  v120 = v31;
  v54 = *&v136[OBJC_IVAR____TtC13SiriTTSDaemon16DaemonXPCHandler_remoteDelegate];
  v123 = type metadata accessor for DelegateHandler();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v55 = v33;
  v130 = v53;

  v56 = v45;
  v118[1] = v54;
  v122 = v55;
  v131 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v57 = type metadata accessor for CoreAnalyticsSynthesisHandler();
  aBlock = 0u;
  v138 = 0u;
  v139 = 0;
  swift_allocObject();
  v58 = v56;
  v59 = CoreAnalyticsSynthesisHandler.init(notificationCenter:coreAnalyticsService:)();
  v60 = type metadata accessor for SignpostHandler();
  swift_allocObject();
  v61 = v58;
  v62 = SignpostHandler.init(notificationCenter:)();
  v119 = type metadata accessor for SiriAnalyticsHandler();
  v63 = v61;
  v64 = SiriAnalyticsHandler.__allocating_init(notificationCenter:logSynthesisEvents:)();
  v118[3] = v46;
  v65 = v64;
  v66 = type metadata accessor for AudioHandler();
  swift_allocObject();
  v121 = v63;
  v67 = AudioHandler.init(notificationCenter:)();
  v68 = swift_allocObject();
  v132 = v68;
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100027950;
  *(v69 + 32) = v131;
  *(v69 + 56) = v123;
  *(v69 + 64) = v59;
  *(v69 + 88) = v57;
  *(v69 + 96) = v62;
  *(v69 + 120) = v60;
  *(v69 + 128) = v65;
  *(v69 + 184) = v66;
  *(v69 + 152) = v119;
  *(v69 + 160) = v67;
  *(v68 + 16) = v69;

  v119 = v59;

  v118[5] = v62;

  v118[2] = v65;

  v123 = v67;

  v70 = os_transaction_create();
  v71 = v126;
  if (v70)
  {
    v72 = v70;
    *(&v138 + 1) = swift_getObjectType();
    *&aBlock = v72;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v132 + 2) = v69;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v69 = sub_10000663C(0, *(v69 + 16) + 1, 1, v69);
      *(v132 + 2) = v69;
    }

    v75 = *(v69 + 16);
    v74 = *(v69 + 24);
    if (v75 >= v74 >> 1)
    {
      v69 = sub_10000663C((v74 > 1), v75 + 1, 1, v69);
      *(v132 + 2) = v69;
    }

    swift_unknownObjectRelease();
    *(v69 + 16) = v75 + 1;
    sub_10000674C(&aBlock, (v69 + 32 * v75 + 32));
    *(v132 + 2) = v69;
  }

  static InternalSettings.shared.getter();
  v76 = dispatch thunk of InternalSettings.enableDiagnostic.getter();

  v78 = v133;
  v77 = v134;
  v79 = v122;
  if (v76 != 2 && (v76 & 1) != 0)
  {
    v80 = type metadata accessor for DiagnosticService();
    swift_allocObject();
    v81 = v121;
    v82 = DiagnosticService.init(notification:)();
    *(&v138 + 1) = v80;
    *&aBlock = v82;
    v83 = v132;
    v84 = *(v132 + 2);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v83 + 2) = v84;
    if ((v85 & 1) == 0)
    {
      v84 = sub_10000663C(0, *(v84 + 2) + 1, 1, v84);
      *(v132 + 2) = v84;
    }

    v87 = *(v84 + 2);
    v86 = *(v84 + 3);
    if (v87 >= v86 >> 1)
    {
      v84 = sub_10000663C((v86 > 1), v87 + 1, 1, v84);
    }

    *(v84 + 2) = v87 + 1;
    sub_10000674C(&aBlock, &v84[32 * v87 + 32]);
    *(v132 + 2) = v84;
  }

  dispatch thunk of BaseRequest.sandboxToken.getter();
  v89 = v88;
  if (v88)
  {
    static Logger.service.getter();
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v90, v91, "Consuming sandbox token", v92, 2u);
      v79 = v122;
    }

    v93 = v78[1];
    v93(v71, v77);
    String.utf8CString.getter();

    v89 = sandbox_extension_consume();

    if (v89 != -1)
    {
      v94 = 0;
      goto LABEL_29;
    }

    static Logger.service.getter();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Unable to consume sandbox extension", v97, 2u);
    }

    v93(v125, v77);
    v89 = 0;
  }

  v94 = 1;
LABEL_29:
  v98 = [objc_allocWithZone(ResourceHint) initWithResourceType:10 andState:1];
  v126 = v98;
  v99 = objc_allocWithZone(type metadata accessor for TaskOperation());
  v133 = v79;
  v100 = v121;

  v101 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v102 = swift_allocObject();
  *(v102 + 16) = v98;
  *(v102 + 24) = v100;
  v104 = v135;
  v103 = v136;
  *(v102 + 32) = v136;
  *(v102 + 40) = sub_100022B24;
  *(v102 + 48) = v104;
  *(v102 + 56) = v101;
  *(v102 + 64) = v132;
  *(v102 + 72) = v89;
  *(v102 + 80) = v94;
  v139 = sub_100005C58;
  v140 = v102;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v138 = sub_100002B68;
  *(&v138 + 1) = &unk_100031E20;
  v105 = _Block_copy(&aBlock);
  v106 = v101;
  v134 = v100;
  v107 = v106;
  v108 = v126;
  v109 = v103;

  sub_1000067AC(sub_100005C58, v102);

  [v107 setCompletionBlock:v105];
  _Block_release(v105);

  v110 = v127;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v112 = v128;
  v111 = v129;
  if ((*(v128 + 48))(v110, 1, v129))
  {
    sub_100001E9C(v110, &qword_100035810, &qword_100027D68);
    sub_100007504(0x6B7361546E69614DLL, 0xED00006575657551);
    sub_100007914(v107);
  }

  else
  {
    v113 = v124;
    (*(v112 + 16))(v124, v110, v111);
    sub_100001E9C(v110, &qword_100035810, &qword_100027D68);
    v114 = UUID.uuidString.getter();
    v116 = v115;
    (*(v112 + 8))(v113, v111);
    sub_100007504(v114, v116);

    sub_100007914(v107);
  }

  sub_100016838(v120, "TTS enqueue speech task");
}

uint64_t sub_1000090C4()
{

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100009128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000AEF4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000091B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  type metadata accessor for RequestPreprocessAction();
  swift_allocObject();
  swift_retain_n();
  RequestPreprocessAction.init(pool:)();
  swift_allocObject();
  v2 = WorkflowNode.init(action:)();
  type metadata accessor for RequestParsingAction();
  swift_allocObject();
  RequestParsingAction.init(pool:)();
  swift_allocObject();
  v8 = WorkflowNode.init(action:)();
  type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  VoiceSelectionAction.init(pool:)();
  swift_allocObject();
  v7 = WorkflowNode.init(action:)();
  type metadata accessor for CacheReadingAction();
  swift_allocObject();
  CacheReadingAction.init(pool:)();
  swift_allocObject();
  v6 = WorkflowNode.init(action:)();
  type metadata accessor for HasAudioCondition();
  swift_allocObject();
  HasAudioCondition.init()();
  swift_allocObject();
  WorkflowNode.init(condition:)();
  type metadata accessor for SynthesisEngineSelectionAction();
  swift_allocObject();
  SynthesisEngineSelectionAction.init(pool:)();
  swift_allocObject();
  WorkflowNode.init(action:)();
  type metadata accessor for DeviceSynthesisAction();
  swift_allocObject();
  DeviceSynthesisAction.init(pool:)();
  swift_allocObject();
  WorkflowNode.init(action:)();
  type metadata accessor for SynthesisBufferingAction();
  swift_allocObject();
  SynthesisBufferingAction.init(pool:)();
  swift_allocObject();
  WorkflowNode.init(action:)();
  type metadata accessor for IsNaturalVoiceCondition();
  swift_allocObject();
  IsNaturalVoiceCondition.init(pool:)();
  swift_allocObject();
  WorkflowNode.init(condition:)();
  type metadata accessor for OpusEncodingAction();
  swift_allocObject();
  OpusEncodingAction.init(pool:)();
  swift_allocObject();
  WorkflowNode.init(action:)();
  type metadata accessor for PassThroughAction();
  swift_allocObject();
  PassThroughAction.init()();
  swift_allocObject();
  v3 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100027E00;
  *(v4 + 32) = v2;
  *(v4 + 40) = v8;
  *(v4 + 48) = v7;
  *(v4 + 56) = v6;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v4);

  DirectedAcyclicGraph.connect(fromNode:toNode:)();

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  DirectedAcyclicGraph.connect(fromNode:toNode:)();

  return v3;
}

void *sub_1000097CC(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_100017988(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_10002262C(v8, v5);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_100017988((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1000041F8(&qword_100035AE0, type metadata accessor for WorkflowFactory.TTSErrorHandler, &unk_100028070);
      v12 = sub_100022690(&v14);
      sub_10002262C(v5, v12);
      v7[2] = v11 + 1;
      sub_1000053A0(&v14, &v7[5 * v11 + 4]);
      sub_1000226F4(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1000099A4(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_1000358F8, &qword_100027DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100009A0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100009AB8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100009B34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009B6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009BAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009BE4()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009C2C()
{

  if (*(v0 + 80))
  {
  }

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100009C9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100009CD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100009D44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100009E6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100009F48()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100009F88()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100009FD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v3 - 8);
  v118 = v3;
  __chkstk_darwin(v3);
  v115 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchQoS();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin(v6);
  v107 = (&v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v111 = *(v8 - 8);
  v112 = v8;
  v9 = __chkstk_darwin(v8);
  v106 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v99 - v11;
  v105 = type metadata accessor for DispatchQoS.QoSClass();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  v14 = __chkstk_darwin(v13);
  v100 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v99 - v16;
  v18 = type metadata accessor for Logger();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v102 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v119 = &v99 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v99 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v99 - v28;
  __chkstk_darwin(v27);
  v31 = &v99 - v30;
  static Logger.service.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "sirittsd starting...", v34, 2u);
  }

  v35 = *(v19 + 8);
  v35(v31, v18);
  static Logger.service.getter();
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "sirittsd entering sandbox...", v38, 2u);
  }

  v35(v29, v18);
  sub_1000256FC();
  static Logger.service.getter();
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Getting group container access...", v41, 2u);
  }

  v35(v26, v18);
  sub_10000AF3C(v13, qword_100035D08);
  v42 = sub_10000AFA0(v13, qword_100035D08);
  v43 = [objc_opt_self() defaultManager];
  v44 = String._bridgeToObjectiveC()();
  v45 = [v43 containerURLForSecurityApplicationGroupIdentifier:v44];

  v120 = v18;
  v101 = v35;
  if (v45)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = v119;
  v48 = type metadata accessor for URL();
  v49 = *(v48 - 8);
  (*(v49 + 56))(v17, v46, 1, v48);
  sub_10000AFD8(v17, v42);
  static Logger.service.getter();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136315138;
    v54 = v42;
    v55 = v100;
    sub_10000B1D0(v54, v100);
    if ((*(v49 + 48))(v55, 1, v48) == 1)
    {
      sub_10000B240(v55);
      object = 0xE400000000000000;
      countAndFlagsBits = 1819047278;
    }

    else
    {
      v59 = URL.path(percentEncoded:)(1);
      object = v59._object;
      (*(v49 + 8))(v55, v48);
      countAndFlagsBits = v59._countAndFlagsBits;
    }

    v60 = sub_100004240(countAndFlagsBits, object, aBlock);

    *(v52 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v50, v51, "Group container URL: %s", v52, 0xCu);
    sub_100004474(v53);

    v58 = v119;
  }

  else
  {

    v58 = v47;
  }

  v61 = v101;
  v101(v58, v120);
  qword_100035D20 = [objc_allocWithZone(type metadata accessor for DaemonXPCListener()) init];
  (*((swift_isaMask & *qword_100035D20) + 0x58))();
  v62 = v102;
  static Logger.service.getter();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "sirittsd is ready to serve...", v65, 2u);
  }

  v61(v62, v120);
  sub_10000AEF4(&qword_100035198, &qword_100027968);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_100027950;
  updated = Activity.voiceUpdateActivity.unsafeMutableAddressor();
  v68 = *(updated + 3);
  v69 = *(updated + 8);
  *(v66 + 32) = *updated;
  *(v66 + 40) = v69;
  *(v66 + 56) = v68;

  v70 = Activity.cleanUpActivity.unsafeMutableAddressor();
  v71 = *(v70 + 3);
  v72 = *(v70 + 8);
  *(v66 + 64) = *v70;
  *(v66 + 72) = v72;
  *(v66 + 88) = v71;

  v73 = Activity.weeklyVoiceUpdateActivity.unsafeMutableAddressor();
  v74 = *(v73 + 3);
  v75 = *(v73 + 8);
  *(v66 + 96) = *v73;
  *(v66 + 104) = v75;
  *(v66 + 120) = v74;

  v76 = Activity.neuralCompiling.unsafeMutableAddressor();
  v77 = *(v76 + 3);
  v78 = *(v76 + 8);
  *(v66 + 128) = *v76;
  *(v66 + 136) = v78;
  *(v66 + 152) = v77;

  v79 = Activity.postInstall.unsafeMutableAddressor();
  v80 = *(v79 + 3);
  v81 = *(v79 + 8);
  *(v66 + 160) = *v79;
  *(v66 + 168) = v81;
  *(v66 + 184) = v80;
  qword_100035D28 = v66;

  Activity.checkIn()();

  Activity.checkIn()();

  Activity.checkIn()();

  Activity.checkIn()();

  Activity.checkIn()();

  type metadata accessor for TTSAssetUAFAssetProvider();
  static TTSAssetUAFAssetProvider.startSirittsdObserver()();
  type metadata accessor for BackgroundLoader();
  swift_allocObject();
  qword_100035D30 = BackgroundLoader.init()();
  sub_10000B048();
  v82 = v104;
  v83 = v103;
  v84 = v105;
  (*(v104 + 104))(v103, enum case for DispatchQoS.QoSClass.background(_:), v105);
  v120 = static OS_dispatch_queue.global(qos:)();
  (*(v82 + 8))(v83, v84);
  v85 = v106;
  static DispatchTime.now()();
  v87 = v107;
  v86 = v108;
  *v107 = 5;
  v88 = v109;
  (*(v86 + 104))(v87, enum case for DispatchTimeInterval.seconds(_:), v109);
  v89 = v110;
  + infix(_:_:)();
  (*(v86 + 8))(v87, v88);
  v90 = v112;
  v91 = *(v111 + 8);
  v91(v85, v112);
  aBlock[4] = sub_10000AEAC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_1000314C8;
  v92 = _Block_copy(aBlock);
  v93 = v113;
  static DispatchQoS.unspecified.getter();
  v121 = _swiftEmptyArrayStorage;
  sub_100007488();
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  v94 = v115;
  v95 = v118;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v96 = v120;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v92);

  (*(v117 + 8))(v94, v95);
  (*(v114 + 8))(v93, v116);
  v91(v89, v90);
  v97 = [objc_opt_self() currentRunLoop];
  [v97 run];

  return 0;
}

uint64_t sub_10000AEF4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_10000AF3C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000AFA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000AFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000B048()
{
  result = qword_100035B30;
  if (!qword_100035B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035B30);
  }

  return result;
}

uint64_t sub_10000B094(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

char *sub_10000B0DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000AEF4(&unk_100035CE0, &qword_100027970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000B1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B240(uint64_t a1)
{
  v2 = sub_10000AEF4(&qword_100035190, &qword_100027960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_10000B2C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B334(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10000B388(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v22[1] = a5;
    v23 = a4;
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_100004240(a2, a3, &v24);
    *(v16 + 12) = 2080;
    if (!a1)
    {
      sub_10000D598(_swiftEmptyArrayStorage);
    }

    v17 = Dictionary.description.getter();
    v19 = v18;

    v20 = sub_100004240(v17, v19, &v24);

    *(v16 + 14) = v20;
    swift_arrayDestroy();

    (*(v11 + 8))(v13, v10);
    return v23(0);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    return a4(0);
  }
}

uint64_t sub_10000B610(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t variable initialization expression of BackgroundLoader.backgroundQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_10000B048();
  static DispatchQoS.background.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_10000B8A0();
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000B8F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

unint64_t sub_10000B8A0()
{
  result = qword_100035CF0;
  if (!qword_100035CF0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035CF0);
  }

  return result;
}

unint64_t sub_10000B8F8()
{
  result = qword_100035D00;
  if (!qword_100035D00)
  {
    sub_10000B094(&unk_100035B40, &qword_100027980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035D00);
  }

  return result;
}

void type metadata accessor for AFPowerContextOption()
{
  if (!qword_1000351D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1000351D0);
    }
  }
}

void sub_10000B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Logger();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v33 - v11;
  v12 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 signatureWithDomain:v13 type:v14 subType:v15 detectedProcess:v16 triggerThresholdValues:v17];

  if (!v18 || (aBlock[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), v18, !aBlock[0]))
  {
    static Logger.service.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to create DiagnosticReporter signature", v31, 2u);
    }

    (*(v35 + 8))(v33, v36);
    sub_10000BE6C();
    swift_allocError();
    *v32 = 0;
    [objc_opt_self() sleepForTimeInterval:1.0];
    exit(0);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = Array._bridgeToObjectiveC()().super.isa;
  sub_10000D598(_swiftEmptyArrayStorage);
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = swift_allocObject();
  v22[2] = a5;
  v22[3] = a6;
  v22[4] = sub_10000C6D8;
  v22[5] = 0;
  aBlock[4] = sub_10000BEC0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B610;
  aBlock[3] = &unk_100031610;
  v23 = _Block_copy(aBlock);

  v24 = [v12 snapshotWithSignature:isa delay:v20 events:v21 payload:0 actions:v23 reply:0.0];
  _Block_release(v23);

  if (v24)
  {
  }

  else
  {
    v25 = v34;
    static Logger.service.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to trigger DiagnosticReport", v28, 2u);
    }

    (*(v35 + 8))(v25, v36);
  }
}

unint64_t sub_10000BE6C()
{
  result = qword_1000351D8;
  if (!qword_1000351D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000351D8);
  }

  return result;
}

void sub_10000BECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for Logger();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v34 = &v33 - v12;
  v13 = [objc_allocWithZone(SDRDiagnosticReporter) init];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v13 signatureWithDomain:v14 type:v15 subType:v16 detectedProcess:v17 triggerThresholdValues:v18];

  if (!v19 || (aBlock[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), v19, !aBlock[0]))
  {
    static Logger.service.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to create DiagnosticReporter signature", v32, 2u);
    }

    (*(v35 + 8))(v11, v36);
    goto LABEL_10;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21 = Array._bridgeToObjectiveC()().super.isa;
  sub_10000D598(_swiftEmptyArrayStorage);
  v22 = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = nullsub_1;
  v23[5] = 0;
  aBlock[4] = sub_10000C550;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B610;
  aBlock[3] = &unk_100031660;
  v24 = _Block_copy(aBlock);

  v25 = [v13 snapshotWithSignature:isa delay:v21 events:v22 payload:0 actions:v24 reply:0.0];
  _Block_release(v24);

  if (v25)
  {
LABEL_10:

    return;
  }

  v26 = v34;
  static Logger.service.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to trigger DiagnosticReport", v29, 2u);
  }

  (*(v35 + 8))(v26, v36);
}

uint64_t sub_10000C33C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t getEnumTagSinglePayload for AutoBugCapture.DiagnosticReporterError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AutoBugCapture.DiagnosticReporterError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000C4F8()
{
  result = qword_1000351E0;
  if (!qword_1000351E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000351E0);
  }

  return result;
}

void *sub_10000C58C()
{
  result = sub_10000D6D4(_swiftEmptyArrayStorage);
  off_100035290 = result;
  return result;
}

id sub_10000C5B4()
{
  result = [objc_allocWithZone(NSRecursiveLock) init];
  qword_100035298 = result;
  return result;
}

uint64_t sub_10000C610(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[4] = a2;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10000C5E8;
  v8[3] = a3;
  v6 = _Block_copy(v8);

  dispatch_sync(a1, v6);
  _Block_release(v6);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  return result;
}

void *sub_10000C708(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  [v4 lock];
  v5 = *(v1 + 32);
  if (v5 && (v6 = v5, v7 = TaskOperation.request.getter(), v6, v8 = dispatch thunk of BaseRequest.requestCreatedTime.getter(), v7, v8 == a1))
  {
    v9 = *(v2 + 32);
    v10 = v9;
    [v4 unlock];
  }

  else
  {
    swift_beginAccess();
    v11 = *(v2 + 24);
    v20 = v4;
    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (!i)
      {
        break;
      }

      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v9 = v14;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = TaskOperation.request.getter();
        v17 = dispatch thunk of BaseRequest.requestCreatedTime.getter();

        if (v17 == a1)
        {

          goto LABEL_18;
        }

        ++v13;
        if (v15 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_16:

    v9 = 0;
LABEL_18:
    [v20 unlock];
  }

  return v9;
}

uint64_t sub_10000C8B0()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

unint64_t sub_10000C924(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000C9AC(a1, v4);
}

unint64_t sub_10000C968(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_10000CA74(a1, v2);
}

unint64_t sub_10000C9AC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000DC98(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000DCF4(v8);
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

unint64_t sub_10000CA74(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

Swift::Int sub_10000CAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000CD88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      result = static Hasher._hash(seed:_:)();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000CFF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000077E4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10000CAE0(v16, a4 & 1);
      v11 = sub_1000077E4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10000D2CC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_10000D174(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10000C968(a2);
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
      sub_10000CD88(v14, a3 & 1);
      result = sub_10000C968(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_10000AEF4(&qword_100035410, &unk_100027B58);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_10000D43C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
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

  return swift_unknownObjectRelease();
}

void *sub_10000D2CC()
{
  v1 = v0;
  sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10000D43C()
{
  v1 = v0;
  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_10000D598(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_100035400, &qword_100027B48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009128(v4, v13, &qword_100035408, &qword_100027B50);
      result = sub_10000C924(v13);
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
      result = sub_10000674C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10000D6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_1000353C0, &qword_100027B20);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1000077E4(v5, v6);
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

unint64_t sub_10000D7D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000AEF4(&qword_1000353C8, &qword_100027B28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100009128(v4, &v13, &qword_1000353D0, &qword_100027B30);
      v5 = v13;
      v6 = v14;
      result = sub_1000077E4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000674C(&v15, (v3[7] + 32 * result));
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

void *sub_10000D908(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000AEF4(&qword_100035418, &qword_100027B68);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_10000C968(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;
    swift_unknownObjectRetain();
    v8 = sub_10000C968(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000DA10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for TaskOperation();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_10000DB2C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1000072A4(result, 1);

  return sub_10000DA10(v7, v6, 1, v4);
}

id sub_10000DD8C()
{
  result = [objc_allocWithZone(type metadata accessor for DaemonSession()) init];
  qword_100035520 = result;
  return result;
}

uint64_t BackgroundLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  BackgroundLoader.init()();
  return v0;
}

uint64_t BackgroundLoader.init()()
{
  v1 = v0;
  v13 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v13 - 8);
  __chkstk_darwin(v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000B048();
  v12[0] = "tClient";
  v12[1] = v7;
  static DispatchQoS.background.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10000ED84(&qword_100035CF0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000AEF4(&unk_100035B40, &qword_100027980);
  sub_10000EDCC(&qword_100035D00, &unk_100035B40, &qword_100027980);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 24) = 0;
  v8 = [objc_opt_self() defaultCenter];
  v9 = static NSNotificationName.voiceAssetChanged.getter();
  swift_allocObject();
  swift_weakInit();

  v10 = NSNotificationCenter.addObserver(event:callback:)();

  *(v1 + 24) = v10;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10000E0E8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    BackgroundLoader.loadMainSiriVoice()();
  }

  return result;
}

uint64_t BackgroundLoader.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t BackgroundLoader.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return _swift_deallocClassInstance(v0, 32, 7);
}

Swift::Void __swiftcall BackgroundLoader.loadMainSiriVoice()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v53 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v49 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v49 - v13;
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = [objc_opt_self() sharedPreferences];
  v18 = [v17 outputVoice];

  if (v18)
  {
    v19 = [v18 languageCode];
    if (v19)
    {
      v50 = v1;
      v20 = v19;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = [v18 name];
      if (v21)
      {
        v22 = v21;
        v49 = v0;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (static Features.lowInactiveMemory.getter())
        {

          static Logger.service.getter();
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v23, v24, "Skip loading Siri voice in background due to low inactive memory requirement", v25, 2u);
          }

          (*(v5 + 8))(v16, v4);
        }

        else
        {
          v32 = objc_allocWithZone(type metadata accessor for SynthesisVoice());
          v33 = SynthesisVoice.init(language:name:)();
          objc_allocWithZone(type metadata accessor for SynthesisRequest());
          v34 = v33;
          v35 = SynthesisRequest.init(text:voice:)();
          static Logger.service.getter();
          v36 = v34;
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            *v39 = 138412290;
            *(v39 + 4) = v36;
            *v40 = v36;
            v41 = v36;
            _os_log_impl(&_mh_execute_header, v37, v38, "Loading Siri voice %@ in sirittsd", v39, 0xCu);
            sub_100006568(v40);
          }

          (*(v5 + 8))(v14, v4);
          v55 = *(v55 + 16);
          v42 = swift_allocObject();
          *(v42 + 16) = v35;
          *(v42 + 24) = v36;
          aBlock[4] = sub_10000ED7C;
          aBlock[5] = v42;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100002B68;
          aBlock[3] = &unk_100031918;
          v43 = _Block_copy(aBlock);
          v44 = v36;
          v45 = v35;
          v46 = v51;
          static DispatchQoS.unspecified.getter();
          v56 = _swiftEmptyArrayStorage;
          sub_10000ED84(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
          sub_10000EDCC(&qword_1000353F0, &qword_1000351A0, &unk_100027BE0);
          v47 = v53;
          v48 = v49;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v43);
          (*(v50 + 8))(v47, v48);
          (*(v52 + 8))(v46, v54);
        }

        return;
      }
    }

    static Logger.service.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Can't get current Siri voice, skip background voice loading", v31, 2u);
    }

    (*(v5 + 8))(v11, v4);
  }

  else
  {
    static Logger.service.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Can't get current Siri voice, skip background voice loading", v28, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000E9E8(uint64_t a1, void *a2)
{
  if (qword_1000351B8 != -1)
  {
    swift_once();
  }

  *(swift_allocObject() + 16) = a2;
  v3 = a2;
  dispatch thunk of DaemonSession.prewarm(request:didFinish:)();
}

uint64_t sub_10000EAA0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  if (a1)
  {
    swift_errorRetain();
    static Logger.service.getter();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_100004240(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Error prewarming in sirittsd, %s", v13, 0xCu);
      sub_100004474(v14);
    }

    else
    {
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    static Logger.service.getter();
    v18 = a2;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "Loaded Siri voice %@ in sirittsd", v21, 0xCu);
      sub_100006568(v22);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000ED84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EDCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000B094(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AFPowerContextOption.description.getter(uint64_t a1)
{
  v1 = 0x64696F7661;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x64656375646572;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x7274736E6F636E75;
  }
}

uint64_t sub_10000EECC()
{
  v1 = *v0;
  v2 = 0x64696F7661;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x64656375646572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x7274736E6F636E75;
  }
}

uint64_t sub_10000EF6C()
{
  type metadata accessor for SubscriptionService();
  swift_allocObject();
  result = sub_10000EFA8();
  qword_100035D38 = result;
  return result;
}

uint64_t sub_10000EFA8()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_10000B048();
  static DispatchQoS.default.getter();
  v8[1] = 0;
  sub_100002B20(&qword_1000357F8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  dispatch thunk of OptionSet.init(rawValue:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v1);
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 128) = _swiftEmptyArrayStorage;
  *(v0 + 136) = [objc_allocWithZone(NSLock) init];
  type metadata accessor for Preferences();
  *(v0 + 24) = static Preferences.shared.getter();
  type metadata accessor for TTSAssetUAFAssetProvider();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  swift_allocObject();
  *(v0 + 112) = TTSAssetUAFAssetProvider.init()();
  type metadata accessor for TrialAssetProvider();
  swift_allocObject();
  *(v0 + 120) = TrialAssetProvider.init()();
  return v0;
}

uint64_t sub_10000F240(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a6;
  v61 = a7;
  v68 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for TTSError.TTSErrorCode();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v21 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    (*(v18 + 104))(v20, enum case for TTSError.TTSErrorCode.unknown(_:), v17);
    type metadata accessor for TTSError();
    sub_100002B20(&qword_100035818, &type metadata accessor for TTSError, &protocol conformance descriptor for TTSError);
    swift_allocError();
    TTSError.init(code:description:)();
    return swift_willThrow();
  }

  v57 = v11;
  if (a5)
  {
    v22 = HIBYTE(a5) & 0xF;
    if ((a5 & 0x2000000000000000) == 0)
    {
      v22 = a4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v58 = swift_allocBox();
      v35 = v34;
      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      a4 = 0;
LABEL_15:
      v37 = v68;
      if (v68 >> 62)
      {
        v38 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v38 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v38)
      {
        aBlock = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v38 < 0)
        {
          __break(1u);
          goto LABEL_31;
        }

        if ((v37 & 0xC000000000000001) != 0)
        {
          v39 = 0;
          do
          {
            v40 = v39 + 1;
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            objc_allocWithZone(type metadata accessor for SynthesisVoiceSubscription());

            SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v39 = v40;
          }

          while (v38 != v40);
        }

        else
        {
          v42 = (v37 + 32);
          v43 = type metadata accessor for SynthesisVoiceSubscription();
          do
          {
            v44 = *v42++;
            v45 = objc_allocWithZone(v43);

            v46 = v44;
            SynthesisVoiceSubscription.init(voice:clientId:accessoryId:)();
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v37 = v68;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            --v38;
          }

          while (v38);
        }

        v41 = aBlock;
      }

      else
      {
        v41 = _swiftEmptyArrayStorage;
      }

      v47 = v67;
      v68 = *(v67 + 16);
      v48 = swift_allocObject();
      v48[2] = v47;
      v48[3] = a2;
      v48[4] = a3;
      v48[5] = a4;
      v48[6] = 0;
      v48[7] = v41;
      v48[8] = v58;
      v48[9] = v37;
      v50 = v60;
      v49 = v61;
      v48[10] = v60;
      v48[11] = v49;
      v73 = sub_100012958;
      v74 = v48;
      aBlock = _NSConcreteStackBlock;
      v70 = 1107296256;
      v71 = sub_100002B68;
      v72 = &unk_100031AD8;
      v51 = _Block_copy(&aBlock);

      sub_1000067AC(v50, v49);
      v52 = v62;
      static DispatchQoS.unspecified.getter();
      v75 = _swiftEmptyArrayStorage;
      sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
      sub_100002ABC();
      v53 = v64;
      v54 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v51);
      (*(v66 + 8))(v53, v54);
      (*(v63 + 8))(v52, v65);
    }
  }

  v56 = v20;
  v59 = a5;
  v58 = swift_allocBox();
  v24 = v23;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  if (!v59)
  {
    goto LABEL_15;
  }

  UUID.init(uuidString:)();
  v27 = (*(v26 + 48))(v16, 1, v25);
  sub_100001E9C(v16, &qword_100035810, &qword_100027D68);
  if (v27 != 1)
  {
    sub_100009128(v67 + 32, &aBlock, &qword_100035800, &unk_100027D50);
    if (!v72)
    {
      sub_100001E9C(&aBlock, &qword_100035800, &unk_100027D50);
      goto LABEL_12;
    }

LABEL_31:
    abort();
  }

LABEL_12:
  (*(v18 + 104))(v56, enum case for TTSError.TTSErrorCode.unknown(_:), v17);
  aBlock = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v28._object = 0x8000000100029440;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = a2;
  v29._object = a3;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000038;
  v30._object = 0x8000000100029460;
  String.append(_:)(v30);
  v31._countAndFlagsBits = a4;
  v31._object = v59;
  String.append(_:)(v31);

  v32._countAndFlagsBits = 39;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  type metadata accessor for TTSError();
  sub_100002B20(&qword_100035818, &type metadata accessor for TTSError, &protocol conformance descriptor for TTSError);
  swift_allocError();
  TTSError.init(code:description:)();
  swift_willThrow();
}

uint64_t sub_10000FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v87 = a8;
  v93 = a3;
  v95 = a2;
  v14 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v14 - 8);
  v84 = &v83 - v15;
  v83 = swift_projectBox();
  v85 = a1;
  v86 = *(a1 + 24);
  v16 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v17 = v16;
  v100[0] = _swiftEmptyArrayStorage;
  if (v16 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v16; v18; i = v17)
  {
    v99 = a6;
    v19 = 0;
    v20 = v17 & 0xC000000000000001;
    v17 &= 0xFFFFFFFFFFFFFF8uLL;
    while (1)
    {
      if (v20)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          goto LABEL_26;
        }

        v21 = *(i + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (dispatch thunk of SynthesisVoiceSubscription.clientId.getter() == v95 && v24 == v93)
      {
      }

      else
      {
        a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a6 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v25 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
      if (a5)
      {
        if (v26)
        {
          if (v25 == a4 && v26 == a5)
          {

            goto LABEL_7;
          }

          a6 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (a6)
          {
LABEL_22:

            goto LABEL_7;
          }
        }
      }

      else
      {
        if (!v26)
        {
          goto LABEL_22;
        }
      }

LABEL_6:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      a6 = *(v100[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_7:
      ++v19;
      if (v23 == v18)
      {
        v27 = v100[0];
        v17 = i;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_29:
  v102 = v27;

  sub_100013250(v28);
  v101 = v17;

  v29 = dispatch thunk of Preferences.previousVoiceSubscriptions.getter();
  v90 = v29;
  if (v29 >> 62)
  {
    goto LABEL_76;
  }

  v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v31 = v17;
  if (v30)
  {
LABEL_31:
    v32 = 0;
    v92 = v90 & 0xC000000000000001;
    v89 = v90 & 0xFFFFFFFFFFFFFF8;
    v88 = v90 + 32;
    v31 = v17;
    v91 = v30;
    do
    {
      while (1)
      {
        if (v92)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v89 + 16))
          {
            goto LABEL_75;
          }

          v33 = *(v88 + 8 * v32);
        }

        v34 = v33;
        v35 = __OFADD__(v32, 1);
        v36 = v32 + 1;
        if (v35)
        {
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          v30 = _CocoaArrayWrapper.endIndex.getter();
          v31 = v17;
          if (!v30)
          {
            goto LABEL_77;
          }

          goto LABEL_31;
        }

        v94 = v36;
        if (!(v31 >> 62))
        {
          break;
        }

        v37 = _CocoaArrayWrapper.endIndex.getter();
        if (v37)
        {
          goto LABEL_41;
        }

LABEL_68:
        v61 = v34;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = i;
        v32 = v94;
        if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v31 = v101;
        if (v32 == v91)
        {
          goto LABEL_77;
        }
      }

      v37 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_68;
      }

LABEL_41:
      v38 = 0;
      v98 = v31 & 0xFFFFFFFFFFFFFF8;
      v99 = v31 & 0xC000000000000001;
      v97 = v31;
      while (1)
      {
        if (v99)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v38 >= *(v98 + 16))
          {
            goto LABEL_73;
          }

          v39 = *(v31 + 8 * v38 + 32);
        }

        v40 = v39;
        v17 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v41 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
        v43 = v42;
        v44 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
        if (v43)
        {
          if (!v45)
          {
            goto LABEL_42;
          }

          if (v41 == v44 && v43 == v45)
          {
          }

          else
          {
            v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v46 & 1) == 0)
            {

              goto LABEL_43;
            }
          }
        }

        else if (v45)
        {
LABEL_42:

          goto LABEL_43;
        }

        v47 = dispatch thunk of SynthesisVoiceSubscription.clientId.getter();
        v49 = v48;
        if (v47 == dispatch thunk of SynthesisVoiceSubscription.clientId.getter() && v49 == v50)
        {
        }

        else
        {
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v51 & 1) == 0)
          {

            v31 = v97;
            goto LABEL_43;
          }
        }

        v52 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
        v53 = dispatch thunk of SynthesisVoice.language.getter();
        v55 = v54;

        v56 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
        v57 = dispatch thunk of SynthesisVoice.language.getter();
        v59 = v58;

        if (v53 == v57 && v55 == v59)
        {

          v17 = i;
          v31 = v97;
          goto LABEL_33;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v31 = v97;
        if (v60)
        {
          break;
        }

LABEL_43:
        ++v38;
        if (v17 == v37)
        {
          goto LABEL_68;
        }
      }

      v17 = i;
LABEL_33:
      v32 = v94;
    }

    while (v94 != v91);
  }

LABEL_77:

  dispatch thunk of Preferences.previousVoiceSubscriptions.setter();

  dispatch thunk of Preferences.voiceSubscriptions.setter();
  v62 = v83;
  swift_beginAccess();
  v63 = v62;
  v64 = v84;
  sub_100009128(v63, v84, &qword_100035810, &qword_100027D68);
  v65 = type metadata accessor for UUID();
  if ((*(*(v65 - 8) + 48))(v64, 1, v65) == 1)
  {

    sub_100001E9C(v64, &qword_100035810, &qword_100027D68);
    return sub_100010478(a9, a10);
  }

  sub_100001E9C(v64, &qword_100035810, &qword_100027D68);
  if ((v95 != 0xD00000000000001BLL || 0x80000001000294D0 != v93) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_102;
  }

  v66 = v87;
  v97 = v31;
  if (!(v87 >> 62))
  {
    v67 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      goto LABEL_84;
    }

LABEL_102:

    return sub_100010478(a9, a10);
  }

LABEL_101:
  v79 = v66;
  v80 = _CocoaArrayWrapper.endIndex.getter();
  v66 = v79;
  v67 = v80;
  if (!v80)
  {
    goto LABEL_102;
  }

LABEL_84:
  v68 = 0;
  v69 = v66 & 0xC000000000000001;
  v70 = v66 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v69)
    {
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v68 >= *(v70 + 16))
      {
        goto LABEL_100;
      }

      v71 = *(v66 + 8 * v68 + 32);
    }

    v72 = v71;
    v73 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v74 = dispatch thunk of SynthesisVoice.name.getter();
    if (v75)
    {
      v76 = v74;
      v77 = v75;

      v78 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v78 = v76 & 0xFFFFFFFFFFFFLL;
      }

      if (v78)
      {
        break;
      }
    }

    ++v68;
    v66 = v87;
    if (v73 == v67)
    {
      goto LABEL_102;
    }
  }

  sub_100009128(v85 + 72, v100, &qword_100035820, &unk_100027D70);
  if (v100[3])
  {
    dispatch thunk of SynthesisVoice.language.getter();
    dispatch thunk of SynthesisVoice.name.getter();
    if (!v82)
    {
      __break(1u);
    }

    abort();
  }

  sub_100001E9C(v100, &qword_100035820, &unk_100027D70);
  return sub_100010478(a9, a10);
}

uint64_t sub_100010478(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = *(v3 + 16);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10001294C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A88;
  v15 = _Block_copy(aBlock);

  sub_1000067AC(a1, a2);
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

uint64_t sub_100010734(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = dispatch thunk of Preferences.voiceSubscriptions.getter();
  v6 = v5;
  v12[1] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = a1;
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v3 = v9;
      a1 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12[0] = v9;
      if (sub_1000108F0(v12))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (a1 == i)
      {
        a1 = v11;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  if (*(a1 + 112))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.subscribeVoices(_:completion:)();
  }

  else
  {
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_1000108F0(void **a1)
{
  v2 = type metadata accessor for Logger();
  v18 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  type metadata accessor for TTSAsset();
  v6 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
  dispatch thunk of SynthesisVoice.language.getter();

  v7 = dispatch thunk of SynthesisVoiceSubscription.voice.getter();
  dispatch thunk of SynthesisVoice.name.getter();

  static TTSAsset.brand(forLanguage:name:)();

  v8 = VoiceBrand.rawValue.getter();
  if (v8 != VoiceBrand.rawValue.getter())
  {
    return 1;
  }

  dispatch thunk of SynthesisVoiceSubscription.clientId.getter();
  v9 = static WorkoutConfig.isClientAllowed(_:)();

  if (v9)
  {
    return 1;
  }

  static Logger.service.getter();
  v11 = v5;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Ignoring disallowed subscription %@", v14, 0xCu);
    sub_100001E9C(v15, &qword_1000353F8, &qword_100027B40);
  }

  (*(v18 + 8))(v4, v2);
  return 0;
}

uint64_t sub_100010B60()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = sub_1000128CC;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  aBlock[3] = &unk_100031A38;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_100002B20(&qword_1000353E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000AEF4(&qword_1000351A0, &unk_100027BE0);
  sub_100002ABC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_100010DE4(unint64_t a1)
{
  v147 = 0;
  v153 = type metadata accessor for Logger();
  v3 = *(v153 - 8);
  v4 = __chkstk_darwin(v153);
  v143 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v140 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v140 - v10;
  v12 = __chkstk_darwin(v9);
  v149 = &v140 - v13;
  __chkstk_darwin(v12);
  v15 = &v140 - v14;
  static Logger.service.getter();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Running subscription clean up", v18, 2u);
  }

  v151 = *(v3 + 8);
  v152 = v3 + 8;
  v151(v15, v153);
  if (*(a1 + 112))
  {
    dispatch thunk of TTSAssetUAFAssetProvider.cleanupTemporarySubscriptions()();
  }

  sub_100009128(a1 + 32, &v155, &qword_100035800, &unk_100027D50);
  v19 = v147;
  *&v145 = a1;
  v141 = v8;
  v142 = v11;
  if (v156)
  {
    sub_1000053A0(&v155, v154);
    v150 = *(a1 + 24);
    v20 = dispatch thunk of Preferences.voiceSubscriptions.getter();
    v21 = v20;
    v22 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v20 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v24 = v21 & 0xC000000000000001;
    v25 = _swiftEmptyArrayStorage;
    while (v23 != v19)
    {
      if (v24)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v22 + 16))
        {
          goto LABEL_102;
        }

        v26 = *(v21 + 8 * v19 + 32);
      }

      v1 = v26;
      a1 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_101;
      }

      v27 = dispatch thunk of SynthesisVoiceSubscription.accessoryId.getter();
      v29 = v28;

      ++v19;
      if (v29)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_100017684(0, *(v25 + 2) + 1, 1, v25);
        }

        v1 = *(v25 + 2);
        v30 = *(v25 + 3);
        if (v1 >= v30 >> 1)
        {
          v25 = sub_100017684((v30 > 1), v1 + 1, 1, v25);
        }

        *(v25 + 2) = v1 + 1;
        v31 = &v25[16 * v1];
        *(v31 + 4) = v27;
        *(v31 + 5) = v29;
        v19 = a1;
      }
    }

    v32 = sub_10001B620(v25);

    __chkstk_darwin(v33);
    *(&v140 - 2) = v154;
    v19 = v147;
    v34 = sub_1000121E8(sub_10001292C, (&v140 - 4), v32);
    v36 = v34;
    a1 = 0;
    v24 = (v34 + 56);
    v37 = 1 << v34[32];
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v1 = v38 & *(v34 + 7);
    v39 = (v37 + 63) >> 6;
    *&v35 = 136315138;
    v146 = v35;
    v40 = v149;
    v147 = v19;
    v148 = v34;
    while (v1)
    {
LABEL_30:
      v42 = (*(v36 + 6) + ((a1 << 10) | (16 * __clz(__rbit64(v1)))));
      v44 = *v42;
      v43 = v42[1];

      static Logger.service.getter();

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v155 = v48;
        *v47 = v146;
        *(v47 + 4) = sub_100004240(v44, v43, &v155);
        _os_log_impl(&_mh_execute_header, v45, v46, "Clearing auto-downloaded asset preferences for accessory %s", v47, 0xCu);
        sub_100004474(v48);
        v40 = v149;

        v36 = v148;
      }

      v151(v40, v153);
      v1 &= v1 - 1;
      dispatch thunk of Preferences.clearSubscriptions(accessoryId:)();

      v19 = v147;
    }

    while (1)
    {
      v41 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      if (v41 >= v39)
      {

        sub_100004474(v154);
        a1 = v145;
        goto LABEL_34;
      }

      v1 = *(v24 + 8 * v41);
      ++a1;
      if (v1)
      {
        a1 = v41;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
  }

  else
  {
    sub_100001E9C(&v155, &qword_100035800, &unk_100027D50);
LABEL_34:
    v49 = dispatch thunk of Preferences.voiceSubscriptions.getter();
    v1 = v49;
    v24 = v49 >> 62;
    if (!(v49 >> 62))
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }
  }

  v50 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:
  v51 = _swiftEmptyArrayStorage;
  if (v50)
  {
    v154[0] = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v50 < 0)
    {
      __break(1u);
      goto LABEL_157;
    }

    v53 = v19;
    v54 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v55 = *(v1 + 8 * v54 + 32);
      }

      v56 = v55;
      ++v54;
      dispatch thunk of SynthesisVoiceSubscription.voice.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v50 != v54);
    v51 = v154[0];
    v19 = v53;
  }

  v140 = v51 >> 62;
  if (v51 >> 62)
  {
    v97 = v51;
    v98 = _CocoaArrayWrapper.endIndex.getter();
    v51 = v97;
    v57 = v98;
  }

  else
  {
    v57 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v150 = v51;
  v148 = v1;
  v147 = v19;
  if (!v57)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_57;
  }

  v58 = v51;
  v154[0] = _swiftEmptyArrayStorage;
  result = sub_100017968(0, v57 & ~(v57 >> 63), 0);
  if (v57 < 0)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  v59 = 0;
  v19 = v154[0];
  v60 = v58;
  v61 = v58 & 0xC000000000000001;
  do
  {
    if (v61)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v62 = *(v60 + 8 * v59 + 32);
    }

    v63 = v62;
    v64 = dispatch thunk of SynthesisVoice.language.getter();
    v66 = v65;

    v154[0] = v19;
    v68 = *(v19 + 16);
    v67 = *(v19 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_100017968((v67 > 1), v68 + 1, 1);
      v19 = v154[0];
    }

    ++v59;
    *(v19 + 16) = v68 + 1;
    v69 = v19 + 16 * v68;
    *(v69 + 32) = v64;
    *(v69 + 40) = v66;
    v60 = v150;
    v1 = v148;
  }

  while (v57 != v59);
  a1 = v145;
LABEL_57:
  v70 = sub_10001B620(v19);

  if (v24)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v72 = result;
  }

  else
  {
    v72 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v142;
  if (!v72)
  {
    goto LABEL_70;
  }

  if (v72 < 1)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  v74 = 0;
  *&v146 = v1 & 0xC000000000000001;
  *&v71 = 138543362;
  v144 = v71;
  do
  {
    if (v146)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v79 = *(v1 + 8 * v74 + 32);
    }

    v80 = v79;
    static Logger.service.getter();
    v81 = v80;
    v82 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v19))
    {
      v75 = v73;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = v144;
      *(v76 + 4) = v81;
      *v77 = v81;
      v78 = v81;
      _os_log_impl(&_mh_execute_header, v82, v19, "Subscription %{public}@", v76, 0xCu);
      sub_100001E9C(v77, &qword_1000353F8, &qword_100027B40);
      a1 = v145;

      v73 = v75;
      v1 = v148;
    }

    else
    {
      v78 = v82;
      v82 = v81;
    }

    ++v74;

    v151(v73, v153);
  }

  while (v72 != v74);
LABEL_70:

  v154[0] = _swiftEmptyArrayStorage;
  v83 = v150;
  v84 = v150 & 0xFFFFFFFFFFFFFF8;
  if (v140)
  {
    v85 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v85 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = _swiftEmptyArrayStorage;
  if (v85)
  {
    v24 = 0;
    v86 = v83 & 0xC000000000000001;
    *&v146 = _swiftEmptyArrayStorage;
    do
    {
      v87 = v24;
      while (1)
      {
        if (v86)
        {
          v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v87 >= *(v84 + 16))
          {
            goto LABEL_100;
          }

          v88 = *(v150 + 8 * v87 + 32);
        }

        v19 = v88;
        v24 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          goto LABEL_99;
        }

        if (dispatch thunk of TrialAssetProvider.findVoice(_:)())
        {
          break;
        }

        ++v87;
        if (v24 == v85)
        {
          goto LABEL_89;
        }
      }

      VoiceAsset.voice.getter();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v19 = *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      *&v146 = v154[0];
    }

    while (v24 != v85);
  }

  else
  {
    *&v146 = _swiftEmptyArrayStorage;
  }

LABEL_89:

  v150 = *(a1 + 120);
  v89 = dispatch thunk of TrialAssetProvider.listVoiceAssets(_:)();
  v90 = v89;
  if (v89 >> 62)
  {
    v91 = _CocoaArrayWrapper.endIndex.getter();
    v92 = v141;
    v93 = v146;
    if (v91)
    {
LABEL_91:
      v154[0] = _swiftEmptyArrayStorage;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v91 & 0x8000000000000000) == 0)
      {
        v94 = 0;
        do
        {
          if ((v90 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          ++v94;
          VoiceAsset.voice.getter();

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v91 != v94);

        v96 = v154[0];
        v93 = v146;
        goto LABEL_107;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }
  }

  else
  {
    v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v92 = v141;
    v93 = v146;
    if (v91)
    {
      goto LABEL_91;
    }
  }

  v96 = _swiftEmptyArrayStorage;
LABEL_107:
  v99 = v147;
  if (v96 >> 62)
  {
    goto LABEL_153;
  }

  v100 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_109:
  v149 = v70;
  if (v100)
  {
    if (v100 >= 1)
    {
      v101 = 0;
      v102 = v96 & 0xC000000000000001;
      *&v95 = 138543362;
      v145 = v95;
      v148 = v96 & 0xC000000000000001;
      do
      {
        if (v102)
        {
          v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v103 = *(v96 + 8 * v101 + 32);
        }

        v104 = v103;
        v154[0] = v103;
        __chkstk_darwin(v103);
        *(&v140 - 2) = v154;
        if ((sub_100013280(sub_1000128D4, (&v140 - 4), v93) & 1) == 0)
        {
          v147 = v99;
          static Logger.service.getter();
          v105 = v104;
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            v109 = v100;
            v110 = v96;
            v111 = v92;
            v112 = swift_slowAlloc();
            *v108 = v145;
            *(v108 + 4) = v105;
            *v112 = v105;
            v113 = v105;
            _os_log_impl(&_mh_execute_header, v106, v107, "Remove not-in-use voice %{public}@", v108, 0xCu);
            sub_100001E9C(v112, &qword_1000353F8, &qword_100027B40);
            v92 = v111;
            v96 = v110;
            v100 = v109;

            v93 = v146;
          }

          v151(v92, v153);
          dispatch thunk of TrialAssetProvider.removeVoices(_:)();
          v99 = v147;
          v102 = v148;
          v70 = v149;
        }

        ++v101;
      }

      while (v100 != v101);
      goto LABEL_120;
    }

LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

LABEL_120:
  v147 = v99;

  v114 = dispatch thunk of TrialAssetProvider.listResources()();
  v115 = v114;
  if (v114 >> 62)
  {
    v116 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v116 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v116)
  {
    v154[0] = _swiftEmptyArrayStorage;
    result = sub_100017968(0, v116 & ~(v116 >> 63), 0);
    if ((v116 & 0x8000000000000000) == 0)
    {
      v117 = 0;
      v118 = v154[0];
      do
      {
        if ((v115 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v119 = ResourceAsset.resource.getter();
        v92 = dispatch thunk of SynthesisResource.language.getter();
        v121 = v120;

        v154[0] = v118;
        v123 = v118[2];
        v122 = v118[3];
        if (v123 >= v122 >> 1)
        {
          sub_100017968((v122 > 1), v123 + 1, 1);
          v118 = v154[0];
        }

        ++v117;
        v118[2] = v123 + 1;
        v124 = &v118[2 * v123];
        v124[4] = v92;
        v124[5] = v121;
        v70 = v149;
      }

      while (v116 != v117);

      goto LABEL_133;
    }

LABEL_161:
    __break(1u);
    return result;
  }

  v118 = _swiftEmptyArrayStorage;
LABEL_133:
  v126 = v118[2];
  v99 = v143;
  if (v126)
  {
    v96 = 0;
    v148 = (v118 + 4);
    v93 = v70 + 56;
    *&v125 = 136446210;
    v146 = v125;
    do
    {
      if (v96 >= v118[2])
      {
        __break(1u);
LABEL_153:
        result = _CocoaArrayWrapper.endIndex.getter();
        v100 = result;
        goto LABEL_109;
      }

      v127 = (v148 + 16 * v96);
      v92 = *v127;
      v128 = v127[1];
      if (*(v70 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v129 = Hasher._finalize()();
        v130 = -1 << *(v70 + 32);
        v131 = v129 & ~v130;
        if ((*(v93 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131))
        {
          v132 = ~v130;
          do
          {
            v133 = (*(v70 + 48) + 16 * v131);
            v134 = *v133 == v92 && v133[1] == v128;
            if (v134 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_136;
            }

            v131 = (v131 + 1) & v132;
          }

          while (((*(v93 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v131) & 1) != 0);
        }
      }

      else
      {
      }

      static Logger.service.getter();

      v135 = Logger.logObject.getter();
      v136 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = v126;
        v139 = swift_slowAlloc();
        v154[0] = v139;
        *v137 = v146;
        *(v137 + 4) = sub_100004240(v92, v128, v154);
        _os_log_impl(&_mh_execute_header, v135, v136, "Remove not-in-use resource of language %{public}s", v137, 0xCu);
        sub_100004474(v139);
        v126 = v138;
        v70 = v149;

        v99 = v143;
      }

      v151(v99, v153);
      dispatch thunk of TrialAssetProvider.removeResource(language:)();
LABEL_136:
      ++v96;
    }

    while (v96 != v126);
  }
}

BOOL sub_100011F58(void *a1)
{
  v2 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = a1[1];
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    UUID.init(uuidString:)();
    v7 = type metadata accessor for UUID();
    v8 = (*(*(v7 - 8) + 48))(v4, 1, v7);
    sub_100001E9C(v4, &qword_100035810, &qword_100027D68);
    if (v8 != 1)
    {
      abort();
    }
  }

  return v6 != 0;
}

id *sub_100012064()
{
  sub_100001E9C((v0 + 4), &qword_100035800, &unk_100027D50);
  sub_100001E9C((v0 + 9), &qword_100035820, &unk_100027D70);

  return v0;
}

uint64_t sub_1000120DC()
{
  sub_100012064();

  return _swift_deallocClassInstance(v0, 144, 7);
}

__n128 sub_100012134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100012148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100012190(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_1000121E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v31 = a1;
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v27 = v6;
    v32 = v3;
    v29 = &v26;
    __chkstk_darwin(a1);
    v28 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v7);
    v30 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v18 = (*(v4 + 48) + 16 * v16);
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;

      v3 = v32;
      v20 = v31(v33);
      v32 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v21 = v20;

      v4 = v17;
      if (v21)
      {
        *&v28[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1000126A8(v28, v27, v30, v4);
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        return sub_1000126A8(v28, v27, v30, v4);
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_100012618(v24, v6, v4, v31);

  if (!v3)
  {
    return v25;
  }

  return result;
}

Swift::Int sub_1000124A4(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_1000126A8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100012618(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
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

    v8 = sub_1000124A4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_1000126A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10000AEF4(&qword_100035808, &qword_100027D60);
  result = static _SetStorage.allocate(capacity:)();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000129A8()
{
  v1 = type metadata accessor for String.Encoding();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 valueForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20[0] = v18;
  v20[1] = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      static String.Encoding.utf8.getter();
      v8 = String.data(using:allowLossyConversion:)();
      v10 = v9;

      (*(v2 + 8))(v4, v1);
      if (v10 >> 60 != 15)
      {
        v11 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v18 = 0;
        v13 = [v11 JSONObjectWithData:isa options:0 error:&v18];

        v14 = v18;
        if (v13)
        {
          _bridgeAnyObjectToAny(_:)();
          sub_1000131E8(v8, v10);
          swift_unknownObjectRelease();
          sub_10000AEF4(&qword_100035908, &qword_100027DE8);
          if (swift_dynamicCast())
          {
            return v18;
          }
        }

        else
        {
          v16 = v14;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_1000131E8(v8, v10);
        }
      }
    }
  }

  else
  {
    sub_1000099A4(v20);
  }

  return 0;
}

double sub_100012C68@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_1000129A8();
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  if (*(v1 + 24))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x746C7561666564;
  }

  v7 = *(v3 + 16);

  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = sub_1000077E4(v5, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_11:

LABEL_12:
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    return result;
  }

  sub_100004418(*(v4 + 56) + 32 * v8, a1);

  return result;
}

uint64_t sub_100012D54()
{
  sub_100012C68(&v6);
  if (!v7)
  {
    sub_1000099A4(&v6);
    return 0;
  }

  sub_10000674C(&v6, v8);
  sub_100004418(v8, &v6);
  if (!swift_dynamicCast())
  {
    sub_100004474(v8);
    if (swift_dynamicCast())
    {
      v1 = v4;
      sub_100004474(&v6);
      return v1;
    }

    sub_100004474(&v6);
    return 0;
  }

  v3 = 0;
  v0 = sub_100013070(v4, v5, &v3);

  sub_100004474(v8);
  if (v0)
  {
    v1 = v3;
  }

  else
  {
    v1 = 0;
  }

  sub_100004474(&v6);
  return v1;
}

uint64_t sub_100012E90()
{
  sub_100012C68(&v6);
  if (!v7)
  {
    sub_1000099A4(&v6);
    return 0;
  }

  sub_10000674C(&v6, v8);
  sub_100004418(v8, &v6);
  if (!swift_dynamicCast())
  {
    sub_100004474(v8);
    if (swift_dynamicCast())
    {
      v1 = v4;
      sub_100004474(&v6);
      return v1;
    }

    sub_100004474(&v6);
    return 0;
  }

  v3 = 0;
  v0 = sub_100013070(v4, v5, &v3);

  sub_100004474(v8);
  if (v0)
  {
    v1 = v3;
  }

  else
  {
    v1 = 0;
  }

  sub_100004474(&v6);
  return v1;
}

unint64_t sub_10001301C()
{
  result = qword_100035900;
  if (!qword_100035900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100035900);
  }

  return result;
}

BOOL sub_100013070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_100013168@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1000131E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000131FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1000131FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100013280(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

BOOL sub_1000133A8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for TTSError.TTSErrorCode();
    ++v2;
    sub_1000041F8(&unk_100035C60, &type metadata accessor for TTSError.TTSErrorCode, &protocol conformance descriptor for TTSError.TTSErrorCode);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

BOOL sub_1000134B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v3 = SynthesisVoice.VoiceType.rawValue.getter();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = SynthesisVoice.VoiceType.rawValue.getter();
    v9 = v8 == SynthesisVoice.VoiceType.rawValue.getter();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id DaemonXPCListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DaemonXPCListener.init()()
{
  static Constants.MachServiceName.getter();
  v1 = objc_allocWithZone(NSXPCListener);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithMachServiceName:v2];

  *&v0[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] = v3;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DaemonXPCListener();
  v4 = objc_msgSendSuper2(&v6, "init");
  [*&v4[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] setDelegate:v4];
  return v4;
}

id DaemonXPCListener.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener;
  [*&v0[OBJC_IVAR____TtC13SiriTTSDaemon17DaemonXPCListener_listener] setDelegate:0];
  [*&v0[v1] invalidate];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DaemonXPCListener();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_100013888(uint64_t a1)
{
  v3 = type metadata accessor for TTSError.TTSErrorCode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AEF4(&qword_100035C58, &qword_1000280A0);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for TTSError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = a1;
  swift_errorRetain();
  sub_10000AEF4(&qword_100035A90, &qword_100027F78);
  v14 = swift_dynamicCast();
  v15 = *(v11 + 56);
  if (v14)
  {
    v15(v9, 0, 1, v10);
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v1 + *(type metadata accessor for WorkflowFactory.TTSErrorHandler(0) + 20));
    TTSError.code.getter();
    v17 = sub_1000133A8(v6, v16);
    (*(v4 + 8))(v6, v3);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v15(v9, 1, 1, v10);
    sub_100001E9C(v9, &qword_100035C58, &qword_1000280A0);
    return 0;
  }

  return v17;
}

uint64_t sub_100013B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100013BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), void *a5)
{
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  type metadata accessor for RequestPreprocessAction();
  swift_allocObject();
  swift_retain_n();
  RequestPreprocessAction.init(pool:)();
  swift_allocObject();
  v8 = WorkflowNode.init(action:)();
  type metadata accessor for RequestParsingAction();
  swift_allocObject();
  RequestParsingAction.init(pool:)();
  swift_allocObject();
  v9 = WorkflowNode.init(action:)();
  a3(0);
  swift_allocObject();
  a4(a2);
  swift_allocObject();
  v10 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100027DF0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v11);

  return v10;
}

uint64_t sub_100013DDC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  type metadata accessor for RequestParsingAction();
  swift_allocObject();
  swift_retain_n();
  RequestParsingAction.init(pool:)();
  swift_allocObject();
  v2 = WorkflowNode.init(action:)();
  type metadata accessor for InlineStreamingAction();
  swift_allocObject();
  InlineStreamingAction.init(pool:)();
  swift_allocObject();
  v3 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100027E10;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;

  sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  DirectedAcyclicGraph.chain(nodes:)(v4);

  return v3;
}

uint64_t sub_100013F94@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - v8;
  v10 = sub_1000091B0(v24 - v8, a2);
  if (a1)
  {
    v11 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();

    v12 = AudioPlaybackAction.init(pool:)();
    v29 = v11;
    v30 = &protocol witness table for AudioPlaybackAction;
    v28 = v12;
    type metadata accessor for WorkflowNode();
    swift_allocObject();
    v27 = WorkflowNode.init(action:)();
    v28 = v10;

    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v13 = type metadata accessor for AudioDumpAction();
  swift_allocObject();

  v14 = AudioDumpAction.init(pool:)();
  dispatch thunk of AudioDumpAction.diagnosticTag.setter();
  v29 = v13;
  v30 = &protocol witness table for AudioDumpAction;
  v28 = v14;
  type metadata accessor for WorkflowNode();
  swift_allocObject();

  v26 = WorkflowNode.init(action:)();
  v27 = v26;
  v28 = v10;
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  (*(v7 + 16))(a3, v9, v6);
  sub_10000AEF4(&qword_100035B00, &qword_100027FC8);
  v15 = type metadata accessor for TTSError.TTSErrorCode();
  v24[1] = v10;
  v25 = a3;
  v16 = v15;
  v17 = *(v15 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v24[0] = v9;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100027E20;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, enum case for TTSError.TTSErrorCode.inlineStreamTimeout(_:), v16);
  v22(v21 + v18, enum case for TTSError.TTSErrorCode.ospreyNetworkTimeout(_:), v16);
  v22(v21 + 2 * v18, enum case for TTSError.TTSErrorCode.ospreyInvalidAudioFormat(_:), v16);

  (*(v7 + 8))(v24[0], v6);
  result = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  *(v25 + *(result + 20)) = v20;
  return result;
}

uint64_t sub_100014318@<X0>(int a1@<W0>, uint64_t a3@<X8>)
{
  LODWORD(v43) = a1;
  v49 = a3;
  v42 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v47 = v41 - v3;
  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  DirectedAcyclicGraph.init()();
  v4 = type metadata accessor for RetryTextModificationAction();
  swift_allocObject();
  swift_retain_n();
  v5 = RetryTextModificationAction.init(pool:)();
  v52 = v4;
  v53 = &protocol witness table for RetryTextModificationAction;
  v51 = v5;
  swift_allocObject();
  v48 = WorkflowNode.init(action:)();
  v6 = type metadata accessor for RequestPreprocessAction();
  swift_allocObject();
  v7 = RequestPreprocessAction.init(pool:)();
  v52 = v6;
  v53 = &protocol witness table for RequestPreprocessAction;
  v51 = v7;
  swift_allocObject();
  v8 = WorkflowNode.init(action:)();
  v9 = type metadata accessor for RequestParsingAction();
  swift_allocObject();
  v10 = RequestParsingAction.init(pool:)();
  v52 = v9;
  v53 = &protocol witness table for RequestParsingAction;
  v51 = v10;
  swift_allocObject();
  v11 = WorkflowNode.init(action:)();
  v12 = type metadata accessor for VoiceSelectionAction();
  swift_allocObject();
  v13 = VoiceSelectionAction.init(pool:)();
  v52 = v12;
  v53 = &protocol witness table for VoiceSelectionAction;
  v51 = v13;
  swift_allocObject();
  v14 = WorkflowNode.init(action:)();
  v15 = type metadata accessor for SynthesisEngineSelectionAction();
  swift_allocObject();
  v16 = SynthesisEngineSelectionAction.init(pool:)();
  v52 = v15;
  v53 = &protocol witness table for SynthesisEngineSelectionAction;
  v51 = v16;
  swift_allocObject();
  v17 = WorkflowNode.init(action:)();
  v18 = type metadata accessor for DeviceSynthesisAction();
  swift_allocObject();
  v19 = DeviceSynthesisAction.init(pool:)();
  v52 = v18;
  v53 = &protocol witness table for DeviceSynthesisAction;
  v51 = v19;
  swift_allocObject();
  v20 = WorkflowNode.init(action:)();
  v21 = type metadata accessor for SynthesisBufferingAction();
  swift_allocObject();
  v22 = SynthesisBufferingAction.init(pool:)();
  v52 = v21;
  v53 = &protocol witness table for SynthesisBufferingAction;
  v51 = v22;
  swift_allocObject();
  v23 = WorkflowNode.init(action:)();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100027E30;
  *(v24 + 32) = v48;
  *(v24 + 40) = v8;
  *(v24 + 48) = v11;
  *(v24 + 56) = v14;
  *(v24 + 64) = v17;
  *(v24 + 72) = v20;
  *(v24 + 80) = v23;

  v46 = v8;

  v44 = v11;

  v41[3] = v14;

  v41[2] = v17;

  v41[1] = v20;

  v25 = v42;
  v26 = v47;
  DirectedAcyclicGraph.chain(nodes:)(v24);

  if (v43)
  {
    v27 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();
    v28 = AudioPlaybackAction.init(pool:)();
    v52 = v27;
    v53 = &protocol witness table for AudioPlaybackAction;
    v51 = v28;
    swift_allocObject();
    v50 = WorkflowNode.init(action:)();
    v51 = v23;
    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v29 = type metadata accessor for AudioDumpAction();
  swift_allocObject();
  v30 = AudioDumpAction.init(pool:)();
  dispatch thunk of AudioDumpAction.diagnosticTag.setter();
  v52 = v29;
  v53 = &protocol witness table for AudioDumpAction;
  v51 = v30;
  swift_allocObject();

  v50 = WorkflowNode.init(action:)();
  v51 = v23;
  v43 = v23;
  v31 = v25;
  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  v32 = v45;
  (*(v45 + 16))(v49, v26, v25);
  sub_10000AEF4(&qword_100035B00, &qword_100027FC8);
  v33 = type metadata accessor for TTSError.TTSErrorCode();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100027E40;
  v38 = v37 + v36;
  v39 = *(v34 + 104);
  v39(v38, enum case for TTSError.TTSErrorCode.inlineStreamNetworkStall(_:), v33);
  v39(v38 + v35, enum case for TTSError.TTSErrorCode.ospreyNetworkStall(_:), v33);

  (*(v32 + 8))(v47, v31);
  result = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  *(v49 + *(result + 20)) = v37;
  return result;
}

uint64_t sub_1000149D4(void *a1, uint64_t a2)
{
  v53 = a2;
  v3 = sub_10000AEF4(&qword_100035AD8, &qword_100027FA8);
  v4 = __chkstk_darwin(v3 - 8);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v50 = &v46 - v7;
  __chkstk_darwin(v6);
  v51 = &v46 - v8;
  v48 = type metadata accessor for OSSignpostID();
  v9 = *(v48 - 8);
  v10 = __chkstk_darwin(v48);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v47 = type metadata accessor for OSSignposter();
  v15 = *(v47 - 8);
  __chkstk_darwin(v47);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signpost.signposter.getter();
  static OSSignpostID.exclusive.getter();
  v18 = OSSignposter.logHandle.getter();
  v19 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v20 = swift_slowAlloc();
    v46 = a1;
    v21 = v20;
    *v20 = 0;
    v22 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v19, v22, "TTS build synthesis/speech workflow", "", v21, 2u);
    a1 = v46;
  }

  v23 = v48;
  (*(v9 + 16))(v12, v14, v48);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v46 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v14, v23);
  (*(v15 + 8))(v17, v47);
  v24 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v25 = *(v24 - 8);
  v26 = v51;
  (*(v25 + 56))(v51, 1, 1, v24);
  v60 = 0;
  v59 = _swiftEmptyArrayStorage;
  type metadata accessor for InternalSettings();
  v27 = v53;
  swift_retain_n();
  v28 = v49;
  dispatch thunk of ObjectPool.find<A>()();
  if (v28)
  {

    v29 = static InternalSettings.shared.getter();
    v49 = 0;
  }

  else
  {
    v49 = 0;
    v29 = v55;
  }

  v30 = v52;
  v31 = v50;
  v48 = v29;
  v32 = sub_1000151F8(v50, v29, v27, a1, &v59, &v60);
  sub_1000225BC(v31, v26);
  v58 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v33 = type metadata accessor for AudioPlaybackAction();
    swift_allocObject();
    v34 = AudioPlaybackAction.init(pool:)();
    v56 = v33;
    v57 = &protocol witness table for AudioPlaybackAction;
    v55 = v34;
    type metadata accessor for WorkflowNode();
    swift_allocObject();
    result = WorkflowNode.init(action:)();
    if (!v32)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v54 = result;
    v55 = v32;
    result = (*(v25 + 48))(v26, 1, v24);
    if (result == 1)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    DirectedAcyclicGraph.connect(fromNode:toNode:)();
  }

  v36 = type metadata accessor for AudioDumpAction();
  swift_allocObject();
  v37 = AudioDumpAction.init(pool:)();
  v56 = v36;
  v57 = &protocol witness table for AudioDumpAction;
  v55 = v37;
  type metadata accessor for WorkflowNode();
  swift_allocObject();
  result = WorkflowNode.init(action:)();
  if (!v32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v54 = result;
  v55 = v32;
  v50 = result;
  v38 = *(v25 + 48);
  result = v38(v26, 1, v24);
  if (result == 1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  if (v60 != 1)
  {

LABEL_17:
    sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
    v44 = v49;
    dispatch thunk of ObjectPool.find<A>()();
    if (v44)
    {
    }

    sub_100009128(v26, v30, &qword_100035AD8, &qword_100027FA8);
    result = v38(v30, 1, v24);
    if (result != 1)
    {
      sub_1000097CC(v59);

      type metadata accessor for Workflow();
      swift_allocObject();
      v45 = Workflow.init(graph:notification:errorHandlers:)();

      sub_100001E9C(v26, &qword_100035AD8, &qword_100027FA8);
      sub_100016838(v46, "TTS build synthesis/speech workflow");

      return v45;
    }

    goto LABEL_23;
  }

  v39 = type metadata accessor for SynthesisCacheWritingAction();
  swift_allocObject();
  v40 = SynthesisCacheWritingAction.init(pool:)();
  v56 = v39;
  v57 = &protocol witness table for SynthesisCacheWritingAction;
  v55 = v40;
  swift_allocObject();
  v47 = WorkflowNode.init(action:)();
  v41 = type metadata accessor for OpusEncodingAction();
  swift_allocObject();
  v42 = OpusEncodingAction.init(pool:)();
  v56 = v41;
  v57 = &protocol witness table for OpusEncodingAction;
  v55 = v42;
  swift_allocObject();
  v43 = WorkflowNode.init(action:)();
  v54 = v43;
  v55 = v32;
  result = v38(v26, 1, v24);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  DirectedAcyclicGraph.connect(fromNode:toNode:)();
  v54 = v47;
  v55 = v43;
  result = v38(v26, 1, v24);
  if (result != 1)
  {
    DirectedAcyclicGraph.connect(fromNode:toNode:)();

    v30 = v52;
    goto LABEL_17;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000151F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, _BYTE *a6)
{
  v80 = a6;
  v82 = a5;
  v85 = a1;
  v8 = type metadata accessor for WorkflowFactory.TTSErrorHandler(0);
  v81 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v79 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v78 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v78 - v15;
  __chkstk_darwin(v14);
  v18 = &v78 - v17;
  v19 = type metadata accessor for Logger();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v23 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v78 - v24;
  v25 = dispatch thunk of InternalSettings.forceAlpine.getter();
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v28 = dispatch thunk of InternalSettings.disableInlineStreamTTS.getter();
    if (v28 == 2 || (v28 & 1) == 0)
    {
      type metadata accessor for InlineStreamingStorage();
      dispatch thunk of ObjectPool.find<A>()();
      swift_getObjectType();
      SynthesizingRequestProtocol.text.getter();
      v39 = dispatch thunk of InlineStreamingStorage.findSignal(matchingText:)();

      if (v39)
      {

        v86 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          sub_100013F94(1, a3, v18);
          v40 = v82;
          v41 = *v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v40 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = sub_100017790(0, v41[2] + 1, 1, v41);
            *v82 = v41;
          }

          v44 = v41[2];
          v43 = v41[3];
          if (v44 >= v43 >> 1)
          {
            v41 = sub_100017790((v43 > 1), v44 + 1, 1, v41);
            *v82 = v41;
          }

          v41[2] = v44 + 1;
          v45 = (*(v81 + 80) + 32) & ~*(v81 + 80);
          v46 = *(v81 + 72);
          sub_100022750(v18, v41 + v45 + v46 * v44);
          sub_100014318(1, v16);
          v47 = v82;
          v48 = *v82;
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *v47 = v48;
          if ((v49 & 1) == 0)
          {
            v48 = sub_100017790(0, v48[2] + 1, 1, v48);
            *v82 = v48;
          }

          v51 = v48[2];
          v50 = v48[3];
          if (v51 >= v50 >> 1)
          {
            v48 = sub_100017790((v50 > 1), v51 + 1, 1, v48);
            *v82 = v48;
          }

          v48[2] = v51 + 1;
          sub_100022750(v16, v48 + v45 + v51 * v46);
          v26 = v83;
        }

        else
        {
          sub_100013F94(0, a3, v18);
          v70 = v82;
          v71 = *v82;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          *v70 = v71;
          v26 = v83;
          if ((v72 & 1) == 0)
          {
            v71 = sub_100017790(0, v71[2] + 1, 1, v71);
            *v82 = v71;
          }

          v74 = v71[2];
          v73 = v71[3];
          if (v74 >= v73 >> 1)
          {
            v71 = sub_100017790((v73 > 1), v74 + 1, 1, v71);
            *v82 = v71;
          }

          v71[2] = v74 + 1;
          sub_100022750(v18, v71 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v74);
        }

        v38 = sub_100013DDC(v26, a3);
        goto LABEL_52;
      }
    }

    else
    {
      static Logger.service.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Disable inline streaming due to internal settings", v31, 2u);
      }

      (*(v20 + 8))(v22, v19);
    }

    ObjectType = swift_getObjectType();
    v33 = sub_100019728(a4, a3, ObjectType);
    if (sub_10001A778(a4, v33, a3, ObjectType))
    {
      if (v33)
      {

        v34 = VoiceAsset.voice.getter();

        v35 = v34;
        dispatch thunk of SynthesisVoice.footprint.getter();

        v36 = SynthesisVoice.Footprint.rawValue.getter();
        if (v36 == SynthesisVoice.Footprint.rawValue.getter() || (dispatch thunk of SynthesisVoice.type.getter(), v37 = SynthesisVoice.VoiceType.rawValue.getter(), v37 == SynthesisVoice.VoiceType.rawValue.getter()))
        {
          if (sub_100015BA4())
          {
            dispatch thunk of OspreyBuiltInConfig.timeout.getter();
            dispatch thunk of OspreyBuiltInConfig.timeout.setter();
          }
        }
      }

      else
      {
        v35 = 0;
      }

      v87 = &OBJC_PROTOCOL___SiriTTSAudibleRequestProtocol;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        sub_100013F94(1, a3, v13);
        v52 = v82;
        v53 = *v82;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *v52 = v53;
        if ((v54 & 1) == 0)
        {
          v53 = sub_100017790(0, v53[2] + 1, 1, v53);
          *v82 = v53;
        }

        v56 = v53[2];
        v55 = v53[3];
        if (v56 >= v55 >> 1)
        {
          v53 = sub_100017790((v55 > 1), v56 + 1, 1, v53);
          *v82 = v53;
        }

        v53[2] = v56 + 1;
        v57 = (*(v81 + 80) + 32) & ~*(v81 + 80);
        v58 = *(v81 + 72);
        sub_100022750(v13, v53 + v57 + v58 * v56);
        v59 = v79;
        sub_100014318(1, v79);
        v60 = v82;
        v61 = *v82;
        v62 = swift_isUniquelyReferenced_nonNull_native();
        *v60 = v61;
        if ((v62 & 1) == 0)
        {
          v61 = sub_100017790(0, v61[2] + 1, 1, v61);
          *v82 = v61;
        }

        v64 = v61[2];
        v63 = v61[3];
        if (v64 >= v63 >> 1)
        {
          v61 = sub_100017790((v63 > 1), v64 + 1, 1, v61);
          *v82 = v61;
        }

        v61[2] = v64 + 1;
        sub_100022750(v59, v61 + v57 + v64 * v58);
        v26 = v83;
      }

      else
      {
        sub_100013F94(0, a3, v13);
        v65 = v82;
        v66 = *v82;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *v65 = v66;
        v26 = v83;
        if ((v67 & 1) == 0)
        {
          v66 = sub_100017790(0, v66[2] + 1, 1, v66);
          *v82 = v66;
        }

        v69 = v66[2];
        v68 = v66[3];
        if (v69 >= v68 >> 1)
        {
          v66 = sub_100017790((v68 > 1), v69 + 1, 1, v66);
          *v82 = v66;
        }

        v66[2] = v69 + 1;
        sub_100022750(v13, v66 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v69);
      }

      v27 = sub_100013BA0(v26, a3, &type metadata accessor for OspreyTTSAction, &OspreyTTSAction.init(pool:), &protocol witness table for OspreyTTSAction);

      goto LABEL_53;
    }

    *v80 = 1;
    v26 = v83;
    v38 = sub_1000091B0(v83, a3);
LABEL_52:
    v27 = v38;
LABEL_53:

    goto LABEL_54;
  }

  v26 = v83;
  v27 = sub_100013BA0(v83, a3, &type metadata accessor for AlpineTTSAction, &AlpineTTSAction.init(pool:), &protocol witness table for AlpineTTSAction);
LABEL_54:
  v76 = v84;
  v75 = v85;
  (*(v23 + 32))(v85, v26, v84);
  (*(v23 + 56))(v75, 0, 1, v76);
  return v27;
}

uint64_t sub_100015BA4()
{
  sub_10000AEF4(&qword_100035AC0, &qword_100027F98);
  dispatch thunk of ObjectPool.find<A>()();
  sub_1000053A0(&v4, v5);
  sub_1000227B4(v5, &v4);
  type metadata accessor for OspreyChainedConfigs();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v0 = OspreyChainedConfigs.configs.getter();
  v1 = *(v0 + 16);
  if (!v1)
  {

LABEL_6:
    sub_100004474(v5);
    return 0;
  }

  sub_1000227B4(v0 + 40 * v1 - 8, &v4);

  sub_100004474(v5);
  type metadata accessor for OspreyBuiltInConfig();
  if (swift_dynamicCast())
  {
    return v3;
  }

  return 0;
}

uint64_t sub_100015D78(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v64 = a3;
  v4 = type metadata accessor for UUID();
  v66 = *(v4 - 8);
  v67 = v4;
  __chkstk_darwin(v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000AEF4(&qword_100035810, &qword_100027D68);
  __chkstk_darwin(v6 - 8);
  v65 = &v57 - v7;
  v8 = sub_10000AEF4(&qword_100035A50, &qword_100027F50);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v57 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.service.getter();
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received #PreviewRequest %{public}@", v20, 0xCu);
    sub_100001E9C(v21, &qword_1000353F8, &qword_100027B40);
  }

  (*(v14 + 8))(v16, v13);
  type metadata accessor for ObjectPool();
  swift_allocObject();
  v23 = ObjectPool.init()();
  v24 = [objc_allocWithZone(NSNotificationCenter) init];
  aBlock[0] = v24;
  sub_1000228D4(0, &qword_100035A58, NSNotificationCenter_ptr);
  dispatch thunk of ObjectPool.inject<A>(object:)();
  type metadata accessor for InternalSettings();
  aBlock[0] = static InternalSettings.shared.getter();
  dispatch thunk of ObjectPool.inject<A>(object:)();

  type metadata accessor for WorkflowNode();
  sub_1000041F8(&qword_100035A60, &type metadata accessor for WorkflowNode, &protocol conformance descriptor for WorkflowNode);
  v25 = v68;
  DirectedAcyclicGraph.init()();
  sub_10000AEF4(&qword_100035A68, &qword_100027F58);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100027E10;
  v27 = type metadata accessor for RequestParsingAction();
  swift_allocObject();

  v28 = RequestParsingAction.init(pool:)();
  v72 = v27;
  v73 = &protocol witness table for RequestParsingAction;
  aBlock[0] = v28;
  swift_allocObject();
  *(v26 + 32) = WorkflowNode.init(action:)();
  v29 = type metadata accessor for AudioPlaybackAction();
  swift_allocObject();

  v63 = v23;
  v30 = AudioPlaybackAction.init(pool:)();
  v72 = v29;
  v73 = &protocol witness table for AudioPlaybackAction;
  aBlock[0] = v30;
  swift_allocObject();
  *(v26 + 40) = WorkflowNode.init(action:)();
  v31 = v70;
  DirectedAcyclicGraph.chain(nodes:)(v26);

  (*(v69 + 16))(v11, v25, v31);
  type metadata accessor for Workflow();
  swift_allocObject();
  v32 = v24;
  v33 = Workflow.init(graph:notification:errorHandlers:)();
  v34 = type metadata accessor for DelegateHandler();
  swift_allocObject();
  v35 = v17;
  swift_unknownObjectRetain_n();
  v35;
  v36 = v32;
  v37 = DelegateHandler.init(notificationCenter:delegate:request:)();
  v38 = type metadata accessor for AudioHandler();
  swift_allocObject();
  v59 = v36;
  v39 = AudioHandler.init(notificationCenter:)();
  v40 = swift_allocObject();
  sub_10000AEF4(&unk_100035A70, &unk_100027F60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100027E40;
  *(v41 + 32) = v37;
  *(v41 + 88) = v38;
  *(v41 + 56) = v34;
  *(v41 + 64) = v39;
  *(v40 + 16) = v41;
  v42 = objc_allocWithZone(type metadata accessor for TaskOperation());
  swift_retain_n();
  v60 = v37;

  v62 = v33;
  v43 = TaskOperation.init(request:workflow:delegate:audioHandler:notification:queue:)();
  v44 = swift_allocObject();
  v45 = v64;
  v44[2] = v61;
  v44[3] = v45;
  v44[4] = v43;
  v44[5] = v40;
  v73 = sub_100007260;
  v74 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002B68;
  v72 = &unk_100031B50;
  v46 = _Block_copy(aBlock);
  v47 = v43;

  sub_1000067AC(sub_100007260, v44);

  [v47 setCompletionBlock:v46];
  _Block_release(v46);

  v48 = v65;
  dispatch thunk of BaseRequest.accessoryId.getter();
  v50 = v66;
  v49 = v67;
  if ((*(v66 + 48))(v48, 1, v67))
  {
    sub_100001E9C(v48, &qword_100035810, &qword_100027D68);
    v51 = 0xED00006575657551;
    v52 = 0x6B7361546E69614DLL;
  }

  else
  {
    v53 = v58;
    (*(v50 + 16))(v58, v48, v49);
    sub_100001E9C(v48, &qword_100035810, &qword_100027D68);
    v54 = UUID.uuidString.getter();
    v51 = v55;
    (*(v50 + 8))(v53, v49);
    v52 = v54;
  }

  sub_100007504(v52, v51);

  sub_100007914(v47);

  (*(v69 + 8))(v68, v70);
}