uint64_t sub_100001BD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100001C38(void *a1, void *a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  sub_1000021B0(a1, a2, (a3 + 16));

  objc_autoreleasePoolPop(v6);
}

void sub_100001CA8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 eventBody]) != 0)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    objc_allocWithZone(type metadata accessor for AppIntentProcessor());
    swift_unknownObjectRetain();
    v10 = AppIntentProcessor.init(event:)();
    [a2 addOperation:v10];

    swift_beginAccess();
    v11 = *(a3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      *(a3 + 16) = v13;
      objc_autoreleasePoolPop(v9);
      v14 = swift_allocObject();
      *(v14 + 16) = v8;
      aBlock[4] = sub_100005D18;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004DB8;
      aBlock[3] = &unk_10001CE68;
      v15 = _Block_copy(aBlock);
      v16 = v8;

      [a2 addOperationWithBlock:v15];
      _Block_release(v15);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_1000210B0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002B54(v17, qword_100021A60);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136315138;
      aBlock[6] = a1;
      swift_unknownObjectRetain();
      v21 = String.init<A>(describing:)();
      v23 = sub_100004694(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v18, "cannot process AppIntent event:\nevent=%s", v19, 0xCu);
      sub_100004758(v20);
    }

    else
    {
    }
  }
}

uint64_t sub_100001FD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002014(void *a1)
{
  result = sub_100005D20(a1);
  if (v2)
  {
    v3 = result;
    v4 = v2;
    type metadata accessor for SignalRepository();
    static SignalRepository.shared.getter();
    sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
    v5 = type metadata accessor for SignalCachingStrategyOption();
    v6 = *(v5 - 8);
    v7 = *(v6 + 72);
    v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000142C0;
    v10 = (v9 + v8);
    *v10 = v3;
    v10[1] = v4;
    v11 = *(v6 + 104);
    (v11)(v10, enum case for SignalCachingStrategyOption.perAppIntentEvent(_:), v5);
    v12 = (v10 + v7);
    *v12 = 0x6E65746E49707041;
    v12[1] = 0xE900000000000074;
    v11();
    sub_100002704(v9);
    dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();
  }

  return result;
}

void sub_1000021B0(void *a1, void *a2, void *a3)
{
  if (([a1 respondsToSelector:"eventBody"] & 1) == 0)
  {
    __break(1u);
    return;
  }

  v6 = [a1 eventBody];
  if (v6)
  {
    v7 = v6;
    objc_allocWithZone(type metadata accessor for BiomeSiriUIProcessor());
    v8 = v7;
    v9 = BiomeSiriUIProcessor.init(siriUIEvent:)();
    [a2 addOperation:v9];

    swift_beginAccess();
    if (!__OFADD__(*a3, 1))
    {
      ++*a3;
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (qword_1000210C8 != -1)
  {
LABEL_10:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002B54(v10, qword_100021AA8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Fail to derive proper BMSiriUI event", v13, 2u);
  }
}

uint64_t sub_1000023B0(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v21)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriRemembers25SiriRemembersXPCInterface_];
      [a2 setExportedInterface:v6];

      v7 = [objc_allocWithZone(type metadata accessor for SiriRemembersService()) init];
      [a2 setExportedObject:v7];

      [a2 resume];
      if (qword_1000210C0 != -1)
      {
        sub_100010BB0(&qword_1000210C0);
      }

      v8 = type metadata accessor for Logger();
      sub_100002B54(v8, qword_100021A90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      *v11 = 67240192;
      v11[1] = v3;
      sub_100002C30(&_mh_execute_header, v12, v13, "process [%{public}d] is connected to siriinferenced");
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    sub_100010B48(v24);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0(&qword_1000210C0);
  }

  v15 = type metadata accessor for Logger();
  sub_100002B54(v15, qword_100021A90);
  v9 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v16))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v17 = swift_slowAlloc();
  *v17 = 67240192;
  v17[1] = v3;
  sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v14 = 0;
LABEL_16:

LABEL_18:

  return v14;
}

uint64_t sub_1000026A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000026F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *sub_100002704(uint64_t a1)
{
  v2 = type metadata accessor for SignalCachingStrategyOption();
  sub_100002BB8();
  v36 = v3;
  v5 = __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v31 - v8;
  if (!*(a1 + 16))
  {
    v10 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_1000045B0(&qword_1000212C8, &qword_100014320);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v39 = result + 56;
  v12 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v12 + 32) & ~v12);
  v38 = v36 + 16;
  v13 = (v36 + 8);
  v32 = (v36 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v36 + 72);
    v37 = v11 + 1;
    v15 = *(v36 + 16);
    v15(v40, v34 + v14 * v11, v2);
    sub_100005DF8();
    sub_100005D84(&qword_1000212D0, v16, &protocol conformance descriptor for SignalCachingStrategyOption);
    v17 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v18 = ~(-1 << v10[32]);
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *&v39[8 * v20];
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v7, *(v10 + 6) + v19 * v14, v2);
      sub_100005DF8();
      sub_100005D84(&qword_1000212D8, v24, &protocol conformance descriptor for SignalCachingStrategyOption);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *v13;
      (*v13)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v27 = v40;
    *&v39[8 * v20] = v22 | v21;
    result = (*v32)(*(v10 + 6) + v19 * v14, v27, v2);
    v28 = *(v10 + 2);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v10 + 2) = v30;
LABEL_12:
    v11 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100002A1C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002A94(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_1000212B8, "B%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100002AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersService();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_100002B54(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002B8C()
{
}

uint64_t sub_100002BCC()
{
}

void sub_100002C30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 8u);
}

void sub_100002CD4(uint64_t a1, uint64_t a2, void (**a3)(void, uint64_t))
{
  v24 = a3;
  v3 = type metadata accessor for UserDonator();
  v22 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InteractionStore();
  v20 = *(v6 - 8);
  v21 = v6;
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Donation();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100002B54(v12, qword_100021A60);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "saving donation to InteractionStore", v15, 2u);
  }

  type metadata accessor for ActivityHeartbeat();
  static ActivityHeartbeat.instance.getter();
  dispatch thunk of ActivityHeartbeat.keepAlive()();

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000031F8();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  Donation.userDonator.getter();
  static InteractionStore.viewService(user:)();
  (*(v22 + 8))(v5, v3);
  Donation.donateToSiriRemembersView(_:)();
  v19 = v24;
  v24[2](v24, 1);
  sub_10000A4BC(v16, v18);
  (*(v20 + 8))(v8, v21);
  (*(v23 + 8))(v11, v9);
  _Block_release(v19);
}

unint64_t sub_1000031F8()
{
  result = qword_100021820;
  if (!qword_100021820)
  {
    type metadata accessor for Donation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021820);
  }

  return result;
}

uint64_t sub_100003264()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000032DC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10000337C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OSSignpostID();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000B10C(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OSSignpostID();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000B148(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000034D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100003520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100003558()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100003594()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000035DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v3 - 8);
  v84 = v3;
  __chkstk_darwin(v3);
  v81 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v77 = *(v6 - 8);
  v78 = v6;
  __chkstk_darwin(v6);
  v76 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v70 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v70 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v70 - v18;
  __chkstk_darwin(v17);
  v21 = &v70 - v20;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v70 = v16;
  v22 = sub_100002B54(v8, qword_100021A90);
  v24 = v9 + 16;
  v23 = *(v9 + 16);
  v72 = v22;
  v88 = v23;
  (v23)(v21);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "starting siriinferenced...", v27, 2u);
  }

  v29 = *(v9 + 8);
  v28 = v9 + 8;
  v87 = v29;
  v29(v21, v8);
  v30 = type metadata accessor for Signpost(0);
  sub_10000454C(v30, qword_1000219F8);
  v74 = v30;
  v31 = sub_100002B54(v30, qword_1000219F8);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  sub_10000A988("StartDaemon", 11, 2, qword_100021A58, v31);
  sub_100008DF0();
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v32 = sub_100002B54(v8, qword_100021A60);
  v86 = v24;
  v88(v19, v32, v8);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v35 = sub_100004E30(v34);
  v85 = v28;
  v75 = v31;
  if (v35)
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    *v31 = 136315138;
    *(v31 + 4) = sub_100004694(0xD000000000000022, 0x8000000100014760, &aBlock);
    sub_100004DF8(&_mh_execute_header, v36, v34, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();
  }

  v87(v19, v8);
  sub_10000464C(0, &qword_1000210D0, NSXPCListener_ptr);
  qword_100021A10 = sub_1000042CC(0xD000000000000022, 0x8000000100014760);
  v37 = &OS_xpc_object__prots;
  qword_100021A18 = [objc_allocWithZone(type metadata accessor for SiriRemembersServiceDelegate()) init];
  [qword_100021A10 setDelegate:qword_100021A18];
  [qword_100021A10 resume];
  v38 = v70;
  v88(v70, v32, v8);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.info.getter();
  if (sub_100004E30(v40))
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    *v38 = 136315138;
    *(v38 + 4) = sub_100004694(0xD000000000000018, 0x8000000100014740, &aBlock);
    sub_100004DF8(&_mh_execute_header, v41, v40, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();

    v42 = v38;
    v37 = &OS_xpc_object__prots;
  }

  else
  {

    v42 = v38;
  }

  v87(v42, v8);
  qword_100021A20 = sub_1000042CC(0xD000000000000018, 0x8000000100014740);
  qword_100021A28 = [objc_allocWithZone(type metadata accessor for SiriInferenceServiceDelegate()) v37[309].count];
  [qword_100021A20 setDelegate:qword_100021A28];
  [qword_100021A20 resume];
  v43 = v71;
  v88(v71, v32, v8);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.info.getter();
  if (sub_100004E30(v45))
  {
    swift_slowAlloc();
    aBlock = sub_100004E14();
    LODWORD(SiriSignalsServiceDelegate.name) = 136315138;
    *(&SiriSignalsServiceDelegate.name + 4) = sub_100004694(0xD000000000000020, 0x8000000100014790, &aBlock);
    sub_100004DF8(&_mh_execute_header, v46, v45, "starting %s XPC listener");
    sub_100004DC0();
    sub_100002B8C();
  }

  v87(v43, v8);
  qword_100021A30 = sub_1000042CC(0xD000000000000020, 0x8000000100014790);
  qword_100021A38 = [objc_allocWithZone(type metadata accessor for SiriSignalsServiceDelegate()) v37[309].count];
  [qword_100021A30 setDelegate:qword_100021A38];
  [qword_100021A30 resume];
  type metadata accessor for BackgroundQueue();
  v47 = static BackgroundQueue.shared.getter();
  v93 = sub_100004340;
  v94 = 0;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_100004DB8;
  v92 = &unk_10001CD00;
  v48 = _Block_copy(&aBlock);
  [v47 addOperationWithBlock:v48];
  _Block_release(v48);

  v49 = SIG_IGN.getter();
  signal(15, v49);
  v50 = v73;
  v88(v73, v72, v8);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.info.getter();
  if (sub_100004E30(v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "starting BackgroundManager", v53, 2u);
    sub_100002B8C();
  }

  v87(v50, v8);
  v54 = qword_100021A58;
  v55 = v76;
  OSSignpostID.init(log:)();
  v56 = static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100014280;
  v58 = StaticString.description.getter();
  v60 = v59;
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = sub_1000045F8();
  *(v57 + 32) = v58;
  *(v57 + 40) = v60;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v56, &_mh_execute_header, v54, "StartBackgroundManager", 22, 2, v55, "%@ enableTelemetry=YES", 22, 2, v57);

  type metadata accessor for BackgroundManager();
  swift_allocObject();
  v61 = sub_100006438(0, 0);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v77 + 8))(v55, v78);
  qword_100021A40 = v61;
  sub_10000464C(0, &qword_1000210E8, OS_dispatch_source_ptr);
  sub_10000464C(0, &qword_1000210F0, OS_dispatch_queue_ptr);
  v62 = static OS_dispatch_queue.main.getter();
  v63 = static OS_dispatch_source.makeSignalSource(signal:queue:)();

  qword_100021A48 = v63;
  ObjectType = swift_getObjectType();
  v93 = sub_100004344;
  v94 = 0;
  aBlock = _NSConcreteStackBlock;
  v90 = 1107296256;
  v91 = sub_100004DB8;
  v92 = &unk_10001CD28;
  v65 = _Block_copy(&aBlock);
  v66 = v79;
  static DispatchQoS.unspecified.getter();
  v67 = v81;
  sub_1000044C4(ObjectType, v68, v69);
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v65);
  (*(v83 + 8))(v67, v84);
  (*(v80 + 8))(v66, v82);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  sub_100009020(qword_100021A40);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  dispatch_main();
}

id sub_1000042CC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 initWithMachServiceName:v3];

  return v4;
}

uint64_t sub_100004344()
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "got SIGTERM signal", v3, 2u);
  }

  type metadata accessor for BackgroundQueue();
  v4 = static BackgroundQueue.shared.getter();
  [v4 cancelAllOperations];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "cancelled BackgroundQueue ops, calling xpc_transaction_exit_clean", v7, 2u);
  }

  return _xpc_transaction_exit_clean();
}

uint64_t sub_1000044C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  sub_100004CB0(v3, v4, v5);
  sub_1000045B0(&qword_100021168, &qword_1000142A0);
  sub_100004D08();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t *sub_10000454C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000045B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000045F8()
{
  result = qword_1000210E0;
  if (!qword_1000210E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210E0);
  }

  return result;
}

uint64_t sub_10000464C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_100004694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000047A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1000048A4(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100004758(v11);
  return v7;
}

uint64_t sub_100004758(void *a1)
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

unint64_t sub_1000047A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004900(a5, a6);
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

uint64_t sub_1000048A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100004900(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000494C(a1, a2);
  sub_100004A64(&off_10001CCD8);
  return v3;
}

char *sub_10000494C(uint64_t a1, unint64_t a2)
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
    result = sub_100004B48(v5, 0);
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

        v9 = result + 32;
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

        v9 = v7 + 32;
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

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_100004A64(uint64_t result)
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

    result = sub_100004BB8(result, v7, 1, v3);
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

void *sub_100004B48(uint64_t a1, uint64_t a2)
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

  sub_1000045B0(&qword_1000210F8, &qword_100014298);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_100004BB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000045B0(&qword_1000210F8, &qword_100014298);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t sub_100004CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100021160;
  if (!qword_100021160)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021160);
  }

  return result;
}

unint64_t sub_100004D08()
{
  result = qword_100021170;
  if (!qword_100021170)
  {
    sub_100004D6C(&qword_100021168, &qword_1000142A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021170);
  }

  return result;
}

uint64_t sub_100004D6C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004DC0()
{
  sub_100004758(v0);
}

void sub_100004DF8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0xCu);
}

uint64_t sub_100004E14()
{

  return swift_slowAlloc();
}

BOOL sub_100004E30(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100004E48(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = 0;
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002B54(v6, qword_100021A60);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing BiomeMonitorAppIntent", v9, 2u);
  }

  *(v3 + 24) = a2;

  sub_100004F8C(a1);
  v11 = v10;

  v12 = *(v3 + 16);
  *(v3 + 16) = v11;

  return v3;
}

void sub_100004F8C(void *a1)
{
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BB8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002BA8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100002BA8();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002B54(v9, qword_100021A60);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Registering AppIntentBiomeMonitor", v12, 2u);
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100005E10();
  sub_100005D84(v13, v14, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  sub_100005E28();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = objc_allocWithZone(BMBiomeScheduler);
  v17 = sub_100005E28();
  v19 = sub_100012C18(v17, v18, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = objc_autoreleasePoolPush();
  sub_1000052C8(v19, a1, v20, &v25);
  objc_autoreleasePoolPop(v21);
  if (v24)
  {

    __break(1u);
  }

  else
  {
  }
}

void sub_1000052C8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v9 = [v8 Intent];
  swift_unknownObjectRelease();
  v10 = [v9 DSLPublisher];

  v11 = [v10 subscribeOn:a1];
  v28 = sub_100005638;
  v29 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100011DF0;
  v27 = &unk_10001CDC8;
  v12 = _Block_copy(&v24);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v28 = sub_10000200C;
  v29 = v13;
  v24 = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100001BD8;
  v27 = &unk_10001CE18;
  v14 = _Block_copy(&v24);
  v15 = a2;

  v16 = [v11 sinkWithCompletion:v12 receiveInput:v14];
  _Block_release(v14);
  _Block_release(v12);

  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100002B54(v17, qword_100021A60);

  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412546;
    v23 = [v18 status];
    *(v21 + 4) = v23;
    *v22 = v23;
    *(v21 + 12) = 2048;
    swift_beginAccess();
    *(v21 + 14) = *(a3 + 16);

    _os_log_impl(&_mh_execute_header, v19, v20, "AppIntentBiomeMonitor status=%@ fetchedEvents=%ld", v21, 0x16u);
    sub_100002A94(v22);
  }

  else
  {
  }

  *a4 = v18;
}

void sub_100005638(void *a1)
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A60);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "BiomeMonitorAppIntent is done: %@", v5, 0xCu);
    sub_100002A94(v6);
  }
}

void sub_100005774()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BB8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002BA8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100002BA8();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002B54(v9, qword_100021A60);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deregistering AppIntentBiomeMonitor", v12, 2u);
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100005E10();
  sub_100005D84(v13, v14, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  sub_100005E28();
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = objc_allocWithZone(BMBiomeScheduler);
  v17 = sub_100005E28();
  v19 = sub_100012C18(v17, v18, v15);
  v20 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v21 = [v20 Intent];
  swift_unknownObjectRelease();
  v22 = [v21 DSLPublisher];

  v23 = [v22 subscribeOn:v19];
  v31 = nullsub_1;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100011DF0;
  v30 = &unk_10001CD50;
  v24 = _Block_copy(&aBlock);
  v31 = nullsub_1;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100001BD8;
  v30 = &unk_10001CD78;
  v25 = _Block_copy(&aBlock);
  v26 = [v23 sinkWithCompletion:v24 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v24);

  [v26 cancel];
}

uint64_t sub_100005C18()
{
  sub_100005BF0();

  return _swift_deallocClassInstance(v0, 32, 7);
}

unint64_t sub_100005C70()
{
  result = qword_1000210F0;
  if (!qword_1000210F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000210F0);
  }

  return result;
}

unint64_t sub_100005CB4()
{
  result = qword_1000212B0;
  if (!qword_1000212B0)
  {
    sub_100004D6C(&qword_100021530, &qword_1000146E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212B0);
  }

  return result;
}

uint64_t sub_100005D20(void *a1)
{
  v1 = [a1 intentClass];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100005D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100005E34()
{
  v0 = type metadata accessor for DASActivity();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - v6;
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  type metadata accessor for AppSelectionActivationFlag();
  if (static AppSelectionActivationFlag.notHomePodOrIsActive.getter())
  {
    type metadata accessor for SignalRepository();
    static SignalRepository.shared.getter();
    DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
    v10 = sub_100008768(0, 1, 1, &_swiftEmptyArrayStorage);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_100008768((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    (*(v1 + 32))(&v10[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12], v9, v0);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_100008768(0, *(v10 + 2) + 1, 1, v10);
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_100008768((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v17 = *(v1 + 32);
  v16 = v1 + 32;
  v15 = v17;
  v18 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v19 = *(v16 + 40);
  v17(&v10[v18 + v19 * v14], v7, v0);
  DASActivity.init(name:interval:spaceoutRatio:priority:requiresExternalPower:terminateCondition:action:)();
  v21 = *(v10 + 2);
  v20 = *(v10 + 3);
  if (v21 >= v20 >> 1)
  {
    v10 = sub_100008768((v20 > 1), v21 + 1, 1, v10);
  }

  *(v10 + 2) = v21 + 1;
  v15(&v10[v18 + v21 * v19], v4, v0);
  return v10;
}

uint64_t sub_1000061F0()
{
  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
  v0 = type metadata accessor for SignalCachingStrategyOption();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100014280;
  (*(v1 + 104))(v3 + v2, enum case for SignalCachingStrategyOption.perDay(_:), v0);
  sub_100002704(v3);
  dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();
}

uint64_t sub_100006318()
{
  v0 = type metadata accessor for AudioAppSignalsSyncer.SyncTrigger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioAppSignalsSyncer();
  AudioAppSignalsSyncer.__allocating_init()();
  (*(v1 + 104))(v3, enum case for AudioAppSignalsSyncer.SyncTrigger.timer(_:), v0);
  dispatch thunk of AudioAppSignalsSyncer.syncAudioAppSignals(bypassMinSyncDuration:trigger:completion:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100006438(uint64_t a1, char a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  v6 = dispatch_semaphore_create(1);
  *(v2 + 40) = 0xD00000000000003ELL;
  *(v2 + 48) = 0x80000001000149E0;
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v6;

  if (a2)
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v7 = sub_100005E34();
  }

  *(v2 + 56) = v7;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v8 = type metadata accessor for Logger();
  sub_100008C68(v8, qword_100021A78);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    type metadata accessor for DASActivity();

    v13 = Array.description.getter();
    v15 = v14;

    v16 = sub_100004694(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "BackgroundManager: created DAS Activities  %s", v11, 0xCu);
    sub_100004758(v12);
    sub_100008B78(v12);
    sub_100002BCC();
  }

  if (a1)
  {
  }

  else
  {
    sub_100006648();
  }

  return v3;
}

void sub_100006648()
{
  v2 = *(v0 + 32);
  OS_dispatch_semaphore.wait()();
  v1 = AFPreferencesAssistantEnabled() != 0;
  sub_1000066B4(v1);
  OS_dispatch_semaphore.signal()();
}

void sub_1000066B4(char a1)
{
  v3 = v2;
  v5 = a1 & 1;
  v6 = *v3;
  v7 = sub_1000045B0(&qword_100021500, "2%");
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  type metadata accessor for DASActivity();
  sub_100008C18();
  v11 = v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  if ((*(v3 + 24) == 0) != v5)
  {
    if (a1)
    {
      if (qword_1000210B8 != -1)
      {
        sub_100008B58(&qword_1000210B8);
      }

      v18 = type metadata accessor for Logger();
      sub_100008C68(v18, qword_100021A78);
      v61 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!sub_100008C30(v19))
      {
        goto LABEL_21;
      }

      v22 = sub_100008BB0();
      *v22 = 0;
      v23 = "Siri is already on. skipping.";
    }

    else
    {
      if (qword_1000210B8 != -1)
      {
        sub_100008B58(&qword_1000210B8);
      }

      v37 = type metadata accessor for Logger();
      sub_100008C68(v37, qword_100021A78);
      v61 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (!sub_100008C30(v38))
      {
        goto LABEL_21;
      }

      v22 = sub_100008BB0();
      *v22 = 0;
      v23 = "Siri is already off. skipping.";
    }

    sub_100008C98(&_mh_execute_header, v20, v21, v23);
    sub_100008B78(v22);
LABEL_21:
    sub_100008C80();

    return;
  }

  if (a1)
  {
    if (qword_1000210B8 != -1)
    {
      sub_100008B58(&qword_1000210B8);
    }

    v24 = type metadata accessor for Logger();
    sub_100008C68(v24, qword_100021A78);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (sub_100004E30(v26))
    {
      *sub_100008BB0() = 0;
      sub_100008C4C(&_mh_execute_header, v27, v26, "Siri is on. Enabling background tasks...");
      sub_100002BCC();
    }

    v28 = *(v3 + 16);
    type metadata accessor for BackgroundManager.Inner();
    v29 = swift_allocObject();
    sub_100007E74(v28);
    *(v3 + 24) = v29;

    sub_100007D68();
    sub_100007A54();
    v30 = *(v3 + 56);
    v31 = *(v30 + 16);
    if (v31)
    {
      v34 = *(v11 + 16);
      v33 = v11 + 16;
      v32 = v34;
      v35 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v36 = *(v33 + 56);
      do
      {
        v32(v17, v35, v1);
        DASActivity.registerAndSubmit()();
        (*(v33 - 8))(v17, v1);
        v35 += v36;
        --v31;
      }

      while (v31);
    }
  }

  else
  {
    if (qword_1000210B8 != -1)
    {
      sub_100008B58(&qword_1000210B8);
    }

    v41 = type metadata accessor for Logger();
    v60 = sub_100002B54(v41, qword_100021A78);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (sub_100004E30(v43))
    {
      v44 = sub_100008BB0();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Siri is off. Disabling background tasks and deleting data...", v44, 2u);
      sub_100008B78(v44);
    }

    v45 = *(v3 + 24);
    if (v45 && *(v45 + 32))
    {
      type metadata accessor for RolloutsAnalyticsActivity();

      static RolloutsAnalyticsActivity.deregister(analyticsManager:)();
    }

    *(v3 + 24) = 0;

    type metadata accessor for AppIntentBiomeMonitor();
    sub_100005774();
    type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
    static SiriRemembersDonationFromAppIntentsListener.stop()();
    type metadata accessor for SiriUIBiomeMonitor();
    static SiriUIBiomeMonitor.deregister()();
    v46 = *(v3 + 40);
    v47 = *(v3 + 48);
    v61 = v6;
    sub_100006C30(v46, v47);
    sub_100007D68();
    v48 = *(v3 + 56);
    v49 = *(v48 + 16);
    if (v49)
    {
      v52 = *(v11 + 16);
      v51 = v11 + 16;
      v50 = v52;
      v53 = v48 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
      v54 = *(v51 + 56);
      do
      {
        v50(v15, v53, v1);
        DASActivity.unregister(cancel:)(1);
        (*(v51 - 8))(v15, v1);
        v53 += v54;
        --v49;
      }

      while (v49);
    }

    type metadata accessor for BackgroundQueue();
    v55 = static BackgroundQueue.shared.getter();
    dispatch thunk of BackgroundQueue.pause()();

    v56 = v60;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();
    if (sub_100008BC8(v58))
    {
      v59 = sub_100008BB0();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v56, "paused operations on the BackgroundQueue, deleting SiriRemembersDB and RunTimeDataDB", v59, 2u);
      sub_100008B78(v59);
    }

    sub_10000700C();
    static RunTimeDataDB.defaultURL.getter();
    sub_1000072A8(v9);
    sub_100008A24(v9);
  }

  sub_100008C80();
}

void sub_100006C30(uint64_t a1, unint64_t a2)
{
  LOBYTE(v25) = 1;
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v25];

  if (!v6)
  {
LABEL_8:

    return;
  }

  v7 = String._bridgeToObjectiveC()();
  v26 = 0;
  v8 = [v4 removeItemAtPath:v7 error:&v26];

  if (v8)
  {
    v9 = qword_1000210B8;
    v10 = v26;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002B54(v11, qword_100021A78);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_100004694(a1, a2, &v26);
      _os_log_impl(&_mh_execute_header, v12, v13, "Deleted at location: %{public}s", v14, 0xCu);
      sub_100004758(v15);
    }

    goto LABEL_8;
  }

  v16 = v26;
  v17 = _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_1000210B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100002B54(v18, qword_100021A78);

  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = sub_100004694(a1, a2, &v26);
    *(v21 + 12) = 2082;
    v25 = v17;
    swift_errorRetain();
    sub_1000045B0(&qword_100021508, &qword_1000143C0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100004694(v22, v23, &v26);

    *(v21 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v19, v20, "could not delete at\nlocation: %{public}s\nerror: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_10000700C()
{
  static InteractionStore.delete()();
  if (qword_1000210B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A78);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Succeed to delete the InteractionStore", v2, 2u);
  }
}

void sub_1000072A8(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021500, "2%");
  v3 = __chkstk_darwin(v2);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v40 - v7;
  __chkstk_darwin(v6);
  v10 = (v40 - v9);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v40 - v16;
  sub_100008A8C(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v10;
    v41 = *v10;
    sub_1000045B0(&qword_100021508, &qword_1000143C0);
    swift_willThrowTypedImpl();
    if (qword_1000210B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002B54(v19, qword_100021A78);
    sub_100008A8C(a1, v8);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v22 = 136446466;
      sub_100008A8C(v8, v5);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_100008A24(v8);
      v26 = sub_100004694(v23, v25, &v41);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v40[2] = v18;
      swift_errorRetain();
      sub_1000045B0(&qword_100021508, &qword_1000143C0);
      v27 = String.init<A>(describing:)();
      v29 = sub_100004694(v27, v28, &v41);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "could not delete URL\nurl=%{public}s\nerror=%{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100008A24(v8);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    sub_100012CC4();
    if (qword_1000210B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100002B54(v30, qword_100021A78);
    (*(v12 + 16))(v15, v17, v11);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      v41 = v40[0];
      *v33 = 136446210;
      sub_100008AFC();
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v12 + 8);
      v37(v15, v11);
      v38 = sub_100004694(v34, v36, &v41);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "deleted URL %{public}s", v33, 0xCu);
      sub_100004758(v40[0]);

      v37(v17, v11);
    }

    else
    {

      v39 = *(v12 + 8);
      v39(v15, v11);
      v39(v17, v11);
    }
  }
}

void sub_100007834()
{
  if (*(v0 + 24))
  {
    type metadata accessor for BackgroundManager.Inner();
    v1 = sub_100008C0C();
    sub_100007878(v1, v2);
  }
}

void sub_100007878(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() appIntentsStream];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 name];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {

    goto LABEL_15;
  }

  sub_100008C0C();
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_15:
    sub_1000080C8();
    return;
  }

  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v12 = type metadata accessor for Logger();
  sub_100008C68(v12, qword_100021A78);

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v14 = 136446210;
    v15 = sub_100008C0C();
    *(v14 + 4) = sub_100004694(v15, v16, v17);
    _os_log_impl(&_mh_execute_header, oslog, v13, "_DKKnowledgeStorageDidTombstoneEvents noop. stream=%{public}s", v14, 0xCu);
    sub_100004758(v19);
    sub_100002BCC();
    sub_100008B78(v14);
  }
}

void sub_100007A54()
{
  type metadata accessor for XPCActivity.RepeatInterval();
  sub_100008C18();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v6 = type metadata accessor for Logger();
  sub_100002B54(v6, qword_100021A78);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (sub_100004E30(v8))
  {
    v9 = sub_100008BB0();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "registering XPC activities", v9, 2u);
    sub_100008B78(v9);
  }

  static XPCActivity.registerFirstBoot()();
  type metadata accessor for AppSelectionActivationFlag();
  if (static AppSelectionActivationFlag.notHomePodOrIsActive.getter())
  {
    static XPCActivity.registerDailyTaskSuccessEvaluation()();
    static XPCActivity.registerUserEngagementSignalCollection()();
    type metadata accessor for HolidaysDBUpdater();
    static HolidaysDBUpdater.metricName.getter();
    StaticString.description.getter();
    v10 = enum case for XPCActivity.RepeatInterval.everyDay(_:);
    v11 = *(v2 + 104);
    v11(v5, enum case for XPCActivity.RepeatInterval.everyDay(_:), v0);
    sub_100008BE4();

    v12 = *(v2 + 8);
    v13 = sub_100008C0C();
    v12(v13);
    type metadata accessor for ProcessUnstitchedIntents();
    static ProcessUnstitchedIntents.metricName.getter();
    StaticString.description.getter();
    v11(v5, v10, v0);
    sub_100008BE4();

    v14 = sub_100008C0C();
    v12(v14);
    static ScrubInteractionStore.register()();
    static SiriRemembersBiomeEventBackfiller.register()();
    static SiriSuggestionsBiomeEventBackFiller.register()();
    sub_100008C80();
  }

  else
  {
    v21[1] = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (sub_100008C30(v15))
    {
      v16 = sub_100008BB0();
      *v16 = 0;
      sub_100008C98(&_mh_execute_header, v17, v18, "BackgroundManager: Suppressing some activities that wake the daemon on HomePod.");
      sub_100008B78(v16);
    }

    sub_100008C80();
  }
}

uint64_t sub_100007D2C(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for ProcessUnstitchedIntents());
  swift_unknownObjectRetain();
  return ProcessUnstitchedIntents.init(activity:)();
}

uint64_t sub_100007D68()
{
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A78);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008BC8(v2))
  {
    v3 = sub_100008BB0();
    *v3 = 0;
    sub_100008B90(&_mh_execute_header, v4, v5, "unregistering XPC activities");
    sub_100008B78(v3);
  }

  type metadata accessor for ProcessUnstitchedIntents();
  static ProcessUnstitchedIntents.metricName.getter();
  StaticString.description.getter();
  static XPCActivity.unregister(name:)();

  type metadata accessor for HolidaysDBUpdater();
  static HolidaysDBUpdater.metricName.getter();
  StaticString.description.getter();
  static XPCActivity.unregister(name:)();

  v6 = static XPCActivity.unregister(name:)();

  return static SiriRemembersBiomeEventBackfiller.unregister()(v6);
}

void *sub_100007E74(char a1)
{
  v2 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A78);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v6))
  {
    v7 = sub_100008BB0();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "starting Biome monitors", v7, 2u);
    sub_100008B78(v7);
  }

  type metadata accessor for BackgroundQueue();
  v8 = static BackgroundQueue.shared.getter();
  type metadata accessor for SiriInferenceSuggestionsBridgeProvider();
  v9 = static SiriInferenceSuggestionsBridgeProvider.instance.getter();
  type metadata accessor for AppIntentBiomeMonitor();
  swift_allocObject();
  v2[2] = sub_100004E48(v8, v9);

  type metadata accessor for SiriRemembersDonationFromAppIntentsListener();
  static SiriRemembersDonationFromAppIntentsListener.start()();
  v10 = static BackgroundQueue.shared.getter();
  type metadata accessor for SiriUIBiomeMonitor();
  swift_allocObject();
  v2[3] = SiriUIBiomeMonitor.init(queue:)(v10);

  type metadata accessor for SiriRolloutsMonitor();
  swift_allocObject();
  v2[4] = sub_100010CB4();

  if (v2[4])
  {

    v11 = static BackgroundQueue.shared.getter();
    sub_100010DB0(v11);
  }

  sub_1000080C8();
  if (a1)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (sub_100004E30(v13))
    {
      *sub_100008BB0() = 0;
      sub_100008C4C(&_mh_execute_header, v14, v13, "not starting SiriSignals for testing");
      sub_100002BCC();
    }
  }

  else
  {
    sub_100008204();
  }

  v15 = static BackgroundQueue.shared.getter();
  dispatch thunk of BackgroundQueue.resume()();

  return v2;
}

void sub_1000080C8()
{
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A78);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_100008BC8(v2))
  {
    v3 = sub_100008BB0();
    *v3 = 0;
    sub_100008B90(&_mh_execute_header, v4, v5, "queuing post-tombstone privacy-related background tasks");
    sub_100008B78(v3);
  }

  type metadata accessor for BackgroundQueue();
  v6 = static BackgroundQueue.shared.getter();
  v7 = [objc_allocWithZone(type metadata accessor for ScrubDodMLRecords()) init];
  [v6 addOperation:v7];

  v8 = static BackgroundQueue.shared.getter();
  v9 = [objc_allocWithZone(type metadata accessor for ScrubRuntimeDataRecords()) init];
  [v8 addOperation:v9];
}

void sub_100008204()
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008C68(v0, qword_100021A60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (sub_100008BC8(v2))
  {
    v3 = sub_100008BB0();
    *v3 = 0;
    sub_100008B90(&_mh_execute_header, v4, v5, "Starting Biome Listeners for SiriSignals");
    sub_100008B78(v3);
  }

  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.startBiomeListeners()();

  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.startAppInstallListener()();

  type metadata accessor for BackgroundQueue();
  v6 = static BackgroundQueue.shared.getter();
  v8[4] = sub_100008388;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100004DB8;
  v8[3] = &unk_10001CE90;
  v7 = _Block_copy(v8);
  [v6 addOperationWithBlock:v7];
  _Block_release(v7);
}

void sub_100008388()
{
  if (qword_1000210B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002B54(v0, qword_100021A60);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Pre-warming all SiriSignals", v3, 2u);
  }

  type metadata accessor for SignalRepository();
  static SignalRepository.shared.getter();
  dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:userInteractive:)();

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Done Pre-warming all SiriSignals", v5, 2u);
  }
}

void *sub_100008518()
{
  v1 = v0;
  if (qword_1000210B8 != -1)
  {
    sub_100008B58(&qword_1000210B8);
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v4))
  {
    *sub_100008BB0() = 0;
    sub_100008C4C(&_mh_execute_header, v5, v4, "BackgroundManager.Inner beginning deinit");
    sub_100002BCC();
  }

  type metadata accessor for BackgroundQueue();
  v6 = static BackgroundQueue.shared.getter();
  [v6 cancelAllOperations];

  v7 = static BackgroundQueue.shared.getter();
  [v7 waitUntilAllOperationsAreFinished];

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (sub_100004E30(v9))
  {
    v10 = sub_100008BB0();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "BackgroundManager.Inner finished deinit", v10, 2u);
    sub_100008B78(v10);
  }

  return v1;
}

uint64_t sub_100008678()
{
  sub_100008518();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000086AC()
{

  return v0;
}

uint64_t sub_1000086E4()
{
  sub_1000086AC();

  return _swift_deallocClassInstance(v0, 64, 7);
}

char *sub_100008768(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_100008854(v8, v7);
  v10 = *(type metadata accessor for DASActivity() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_100008950(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_100008854(uint64_t a1, uint64_t a2)
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

  sub_1000045B0(&qword_100021518, &qword_1000143C8);
  v4 = *(type metadata accessor for DASActivity() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008950(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for DASActivity(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for DASActivity();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_100008A24(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021500, "2%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045B0(&qword_100021500, "2%");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008AFC()
{
  result = qword_100021510;
  if (!qword_100021510)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021510);
  }

  return result;
}

uint64_t sub_100008B58(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100008B78(uint64_t a1)
{
}

void sub_100008B90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100008BB0()
{

  return swift_slowAlloc();
}

BOOL sub_100008BC8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100008BE4()
{

  return static XPCActivity.register(name:repeatInterval:isPrivacyCritical:makeOperation:)(v1, v3, v2, 0, v0, 0);
}

BOOL sub_100008C30(os_log_type_t a1)
{
  v4 = *(v1 - 88);

  return os_log_type_enabled(v4, a1);
}

void sub_100008C4C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void sub_100008C98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

uint64_t sub_100008DF0()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if (!v0)
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100002B54(v17, qword_100021A90);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v19))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v20, v21, "Sandbox: _set_user_dir_suffix returned nil");
      sub_10000A538();
    }

    v16 = 3;
LABEL_25:
    static Exit.exit(_:)(v16);
  }

  v1 = NSTemporaryDirectory();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100002B54(v22, qword_100021A90);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v24))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v25, v26, "Unable to create temp directory");
      sub_10000A538();
    }

    v16 = 4;
    goto LABEL_25;
  }

  v6 = sub_100009E5C(65537);
  if (!v7 || (sub_100012DE8(v6, v7), v9 = v8, , !v9))
  {
    if (qword_1000210C0 != -1)
    {
      sub_10000A524();
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002B54(v11, qword_100021A90);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v13))
    {
      *sub_100008BB0() = 0;
      sub_100008B90(&_mh_execute_header, v14, v15, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed");
      sub_10000A538();
    }

    v16 = 1;
    goto LABEL_25;
  }
}

void sub_100009020(uint64_t a1)
{
  if (qword_1000210C0 != -1)
  {
    sub_10000A524();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100008BB0();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "registering XPC notification handlers", v5, 2u);
  }

  if (qword_1000210A0 != -1)
  {
    swift_once();
  }

  v6 = qword_100021A50;
  v15 = sub_100009F60;
  v16 = a1;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v13 = sub_100001BD8;
  v14 = &unk_10001CF58;
  v7 = _Block_copy(v12);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v6, v7);
  _Block_release(v7);
  v15 = sub_100009F68;
  v16 = a1;
  v12[0] = _NSConcreteStackBlock;
  sub_100002BE8();
  v13 = v8;
  v14 = &unk_10001CF80;
  v9 = _Block_copy(v12);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v9);
  _Block_release(v9);
  v15 = sub_100009C00;
  v16 = 0;
  v12[0] = _NSConcreteStackBlock;
  sub_100002BE8();
  v13 = v10;
  v14 = &unk_10001CFA8;
  v11 = _Block_copy(v12);
  xpc_set_event_stream_handler("com.apple.xpc.activity", v6, v11);
  _Block_release(v11);
}

uint64_t sub_1000092A8()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005C70();
  static DispatchQoS.userInitiated.getter();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100021A50 = result;
  return result;
}

void sub_1000094B0(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1000210C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002B54(v4, qword_100021A90);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_100004694(v1, v3, &v20);
      _os_log_impl(&_mh_execute_header, v5, v6, "received XPC event from notifyd: %{public}s", v7, 0xCu);
      sub_100004758(v8);
    }

    if (!kAFPreferencesDidChangeDarwinNotification)
    {
      __break(1u);
      return;
    }

    if (v1 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v3 == v9)
    {

LABEL_14:

      sub_100006648();
      return;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_14;
    }

    v12 = v1 == 0xD000000000000040 && 0x8000000100014B70 == v3;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      oslog = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v13, "AppSelection was activated so siriinferenced should run on the normal schedule", v14, 2u);
      }
    }

    else
    {

      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        v18 = sub_100004694(v1, v3, &v20);

        *(v16 + 4) = v18;
        _os_log_impl(&_mh_execute_header, oslog, v15, "XPC event [%s] is unhandled", v16, 0xCu);
        sub_100004758(v17);

        return;
      }
    }
  }
}

const char *sub_100009850(void *a1)
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    sub_1000045B0(&unk_100021520, &qword_100014418);
    v7 = String.init<A>(describing:)();
    v9 = sub_100004694(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "received XPC event from distnoted: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    string = xpc_dictionary_get_string(a1, "Object");
    v12 = String.init(cString:)();
    v14 = v13;
    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v18 = v12 == 0xD00000000000002ELL && 0x8000000100014C70 == v14;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 == 0xD000000000000030 ? (v19 = 0x8000000100014CA0 == v14) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          type metadata accessor for SignalRepository();
          static SignalRepository.shared.getter();
          sub_1000045B0(&qword_1000212C0, &qword_1000143D0);
          v20 = *(type metadata accessor for SignalCachingStrategyOption() - 8);
          v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_100014280;
          v23 = (v22 + v21);
          *v23 = v12;
          v23[1] = v14;
          (*(v20 + 104))(v22 + v21, enum case for SignalCachingStrategyOption.perSystemNotification(_:));
          sub_100002704(v22);
          dispatch thunk of SignalRepository.prewarm(matchingCachingStrategy:)();
        }
      }
    }

    if (string)
    {
      String.init(cString:)();
    }

    sub_100007834();
  }

  return result;
}

void sub_100009C00(void *a1)
{
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    swift_unknownObjectRetain();
    sub_1000045B0(&unk_100021520, &qword_100014418);
    v7 = String.init<A>(describing:)();
    v9 = sub_100004694(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "received XPC event from XPC activity: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    if (String.init(cString:)() == 0xD000000000000022 && 0x8000000100014C40 == v10)
    {

      return;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return;
    }
  }

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "xpc activity is unhandled", v15, 2u);
  }
}

uint64_t sub_100009E5C(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v4 = 0x40000000000;
  v5 = __DataStorage.init(length:)();
  sub_10000A414(&v4, 0);
  v5 |= 0x4000000000000000uLL;
  v2 = sub_100009FC8(&v4, a1);
  sub_10000A4BC(v4, v5);
  return v2;
}

uint64_t sub_100009EFC@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = String.init(cString:)();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

unint64_t sub_100009F70()
{
  result = qword_1000212A8;
  if (!qword_1000212A8)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000212A8);
  }

  return result;
}

uint64_t sub_100009FC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  v6 = a2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10000A4BC(v4, v3);
      *a1 = xmmword_100014400;
      sub_10000A4BC(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v4)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_10000A368(v4, v4 >> 32, v12, v6);

      v11 = v12 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v11;
      break;
    case 2uLL:

      sub_10000A4BC(v4, v3);
      v18 = v4;
      v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100014400;
      sub_10000A4BC(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v9 = v19;
      v10 = sub_10000A368(*(v18 + 16), *(v18 + 24), v19, v6);
      if (v2)
      {
        v11 = v19 | 0x8000000000000000;
        *a1 = v18;
LABEL_19:
        a1[1] = v11;
      }

      else
      {
        v5 = v10;
        *a1 = v18;
        a1[1] = v9 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v17, 0, 15);
      sub_100009EFC(v17, a2, &v18);
      if (!v2)
      {
        return v18;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      v16 = a2;
      sub_10000A4BC(v4, v3);
      *v17 = v4;
      *&v17[8] = v3;
      v17[10] = BYTE2(v3);
      v17[11] = BYTE3(v3);
      v17[12] = BYTE4(v3);
      v17[13] = BYTE5(v3);
      v17[14] = BYTE6(v3);
      sub_100009EFC(v17, v16, &v18);
      if (!v2)
      {
        v5 = v18;
      }

      v8 = *&v17[8] | ((*&v17[12] | (v17[14] << 16)) << 32);
      *a1 = *v17;
      a1[1] = v8;
      return v5;
  }

  return v5;
}

uint64_t sub_10000A368(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = __DataStorage._offset.getter();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  result = sub_100009EFC((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_10000A414(int *a1, int a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v4 - v8;
  if (__OFSUB__(v4, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v5 - v4;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v7 + v9), a2, v12);
}

uint64_t sub_10000A4BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000A538()
{
}

void static Exit.exit(_:)(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v1 = v1;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Exiting with reason: %d", v5, 8u);
  }

  else
  {

    v1 = v1;
  }

  _exit(v1);
}

siriinferenced::ExitReason_optional __swiftcall ExitReason.init(rawValue:)(Swift::Int32 rawValue)
{
  if (rawValue >= 6)
  {
    LOBYTE(rawValue) = 6;
  }

  return rawValue;
}

Swift::Int sub_10000A680(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_10000A700(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

siriinferenced::ExitReason_optional sub_10000A744@<W0>(Swift::Int32 *a1@<X0>, siriinferenced::ExitReason_optional *a2@<X8>)
{
  result.value = ExitReason.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_10000A770@<X0>(_DWORD *a1@<X8>)
{
  result = ExitReason.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10000A7A0()
{
  result = qword_100021538;
  if (!qword_100021538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExitReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExitReason(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_10000A988(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Signpost(0);
  v11 = a5 + *(v10 + 20);
  *v11 = a1;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  v12 = a4;
  OSSignpostID.init(log:)();
  *(a5 + *(v10 + 24)) = v12;
  v19 = v12;
  v13 = static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100014280;
  v15 = StaticString.description.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000045F8();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = 2;
  os_signpost(_:dso:log:name:signpostID:_:_:)(v13, &_mh_execute_header, v19, a1, a2, a3, a5, "%@ enableTelemetry=YES", 22, v18, v14);
}

uint64_t sub_10000AAD8()
{
  sub_10000464C(0, &unk_1000215A8, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_100021A58 = result;
  return result;
}

uint64_t Logger.asyncBackground(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v39 = a2;
  v41 = type metadata accessor for DispatchWorkItemFlags();
  sub_100002BB8();
  v44 = v3;
  __chkstk_darwin(v4);
  sub_100002BA8();
  v40 = v6 - v5;
  type metadata accessor for DispatchQoS();
  sub_100002BB8();
  v42 = v8;
  v43 = v7;
  __chkstk_darwin(v7);
  sub_100002BA8();
  v11 = v10 - v9;
  v12 = type metadata accessor for Logger();
  sub_100002BB8();
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v17);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100002BB8();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_100002BA8();
  v24 = v23 - v22;
  sub_10000464C(0, &qword_1000210F0, OS_dispatch_queue_ptr);
  (*(v20 + 104))(v24, enum case for DispatchQoS.QoSClass.utility(_:), v18);
  v25 = static OS_dispatch_queue.global(qos:)();
  (*(v20 + 8))(v24, v18);
  (*(v14 + 16))(v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v37[1], v12);
  v26 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v27 = swift_allocObject();
  (*(v14 + 32))(v27 + v26, v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v28 = (v27 + ((v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v39;
  *v28 = v38;
  v28[1] = v29;
  aBlock[4] = sub_10000B068;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004DB8;
  aBlock[3] = &unk_10001D0A8;
  v30 = _Block_copy(aBlock);

  v31 = static DispatchQoS.unspecified.getter();
  v45 = &_swiftEmptyArrayStorage;
  sub_100004CB0(v31, v32, v33);
  sub_1000045B0(&qword_100021168, &qword_1000142A0);
  sub_100004D08();
  v35 = v40;
  v34 = v41;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v44 + 8))(v35, v34);
  (*(v42 + 8))(v11, v43);
}

void sub_10000AF40(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = a2();
    v9 = sub_100004694(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "%s", v5, 0xCu);
    sub_100004758(v6);
  }
}

void sub_10000B068()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  sub_10000AF40(v0 + v2, v4, v5);
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_100021598;
  if (!qword_100021598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B1BC(uint64_t a1)
{
  result = type metadata accessor for OSSignpostID();
  if (v2 <= 0x3F)
  {
    result = sub_10000464C(319, &unk_1000215A8, OS_os_log_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000B264()
{
  v0 = type metadata accessor for Logger();
  sub_10000454C(v0, qword_100021A78);
  sub_100002B54(v0, qword_100021A78);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  v1 = qword_100021A58;
  return Logger.init(_:)();
}

uint64_t sub_10000B328(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_10000454C(v5, a2);
  sub_100002B54(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000B3A0(void *a1)
{
  v2 = type metadata accessor for UUID();
  sub_100002BB8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000EF58();
  v132 = (v6 - v7);
  sub_10000EF78();
  v9 = __chkstk_darwin(v8);
  v11 = &v121 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v121 - v13;
  __chkstk_darwin(v12);
  sub_10000F0E0();
  v129 = v15;
  v16 = sub_1000045B0(&qword_100021708, &qword_100014588);
  __chkstk_darwin(v16 - 8);
  sub_10000EF58();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  sub_10000F0E0();
  v137 = v21;
  v125 = type metadata accessor for Logger();
  sub_100002BB8();
  v124 = v22;
  __chkstk_darwin(v23);
  sub_10000EFC4();
  sub_10000EF9C();
  v136 = v24;
  Logger.init(subsystem:category:)();
  v25 = [a1 matchingRecordSet];
  v126 = a1;
  v26 = [a1 recipe];
  v27 = [v26 recipeUserInfo];

  v123 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000EE8C(&qword_100021710, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v127 = Dictionary.init(dictionaryLiteral:)();
  v138 = v25;
  v28 = [v25 nativeRecordInfo];
  sub_1000045B0(&qword_100021668, &qword_100014518);
  v146 = v2;
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = 0;
  v144 = 0;
  v130 = v4;
  v131 = v29;
  sub_10000EF0C();
  v34 = v33 & v32;
  v36 = (v35 + 63) >> 6;
  v37 = (v4 + 16);
  v142 = v4 + 32;
  v135 = (v4 + 8);
  v38 = v14;
  *&v39 = 136315138;
  v128 = v39;
  v140 = v19;
  v141 = v11;
  v145 = v14;
  v133 = v36;
  v134 = v31;
  v139 = v37;
  while (1)
  {
    if (v34)
    {
      v40 = v30;
      goto LABEL_8;
    }

    do
    {
      v40 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      if (v40 >= v36)
      {
        sub_1000045B0(&qword_100021718, &qword_100014590);
        sub_10000F1A4();
        sub_10000B148(v80, v81, v82, v83);
        v34 = 0;
        goto LABEL_9;
      }

      v34 = *(v31 + 8 * v40);
      ++v30;
    }

    while (!v34);
    v30 = v40;
LABEL_8:
    v41 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v42 = v41 | (v40 << 6);
    v44 = v130;
    v43 = v131;
    v45 = v129;
    v46 = v146;
    (*(v130 + 16))(v129, *(v131 + 48) + *(v130 + 72) * v42, v146);
    v47 = *(*(v43 + 56) + 8 * v42);
    v48 = sub_1000045B0(&qword_100021718, &qword_100014590);
    v49 = *(v48 + 48);
    v50 = *(v44 + 32);
    v19 = v140;
    v50(v140, v45, v46);
    *(v19 + v49) = v47;
    sub_10000F1B0();
    sub_10000B148(v51, v52, v53, v48);

    v11 = v141;
    v38 = v145;
LABEL_9:
    sub_10000EC68(v19, v137, &qword_100021708, &qword_100014588);
    sub_1000045B0(&qword_100021718, &qword_100014590);
    v54 = sub_10000F158();
    if (sub_10000B10C(v54, v55, v56) == 1)
    {
      break;
    }

    v57 = sub_10000F198();
    v58 = v146;
    v59(v57);
    v60 = *v139;
    (*v139)(v11, v38, v58);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v147 = 0;
    v62 = [v138 nativeRecordDataForRecordUUID:isa error:&v147];

    if (!v62)
    {
      v63 = *v135;
      v64 = v147;
      v65 = v146;
      v144 = v63;
      v63(v11, v146);
      v66 = _convertNSErrorToError(_:)();

      v143 = v66;
      swift_willThrow();
      v67 = v132;
      v60(v132, v145, v65);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        sub_10000F04C();
        v70 = swift_slowAlloc();
        sub_10000F040();
        v71 = swift_slowAlloc();
        v147 = v71;
        *v70 = v128;
        v72 = UUID.uuidString.getter();
        v74 = v73;
        v75 = v67;
        v76 = v144;
        v144(v75, v146);
        v77 = sub_100004694(v72, v74, &v147);

        *(v70 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v68, v69, "failure retrieving native record data for %s; skipping from collection", v70, 0xCu);
        sub_100004758(v71);
        sub_10000EF4C();

        sub_10000EF4C();

        v38 = v145;
        v76(v145, v146);
      }

      else
      {

        v78 = v146;
        v79 = v144;
        v144(v67, v146);
        v38 = v145;
        v79(v145, v78);
      }

      v144 = 0;
      v19 = v140;
      v11 = v141;
      v36 = v133;
      v31 = v134;
      continue;
    }

    v84 = v147;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v86;

    sub_10000EF84();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v147 = v62;
    sub_10000E920(v11);
    sub_10000F084();
    v92 = v90 + v91;
    if (__OFADD__(v90, v91))
    {
      goto LABEL_31;
    }

    v93 = v88;
    v94 = v89;
    sub_1000045B0(&qword_100021720, qword_100014598);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v92))
    {
      v11 = v141;
      v95 = sub_10000E920(v141);
      v38 = v145;
      v19 = v140;
      if ((v94 & 1) != (v96 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v95 = v93;
      v19 = v140;
      v11 = v141;
      v38 = v145;
    }

    v97 = v147;
    v127 = v147;
    if (v94)
    {
      v98 = (*(v147 + 7) + 16 * v95);
      v99 = *v98;
      v100 = v98[1];
      v101 = v143;
      *v98 = v85;
      v98[1] = v101;
      sub_10000A4BC(v99, v100);
      v102 = *v135;
      (*v135)(v11, v146);
      v103 = sub_10000F198();
      (v102)(v103);
      goto LABEL_25;
    }

    v104 = v95;
    sub_10000F064(v147 + 8 * (v95 >> 6));
    v106 = v97[6] + *(v130 + 72) * v105;
    v122 = v85;
    v107 = v146;
    v60(v106, v11, v146);
    v108 = (v97[7] + 16 * v104);
    v109 = v143;
    *v108 = v122;
    v108[1] = v109;
    v110 = *(v130 + 8);
    v110(v11, v107);
    v110(v38, v107);
    v111 = v97[2];
    v112 = __OFADD__(v111, 1);
    v113 = v111 + 1;
    if (v112)
    {
      goto LABEL_32;
    }

    v97[2] = v113;
LABEL_25:
    v36 = v133;
    v31 = v134;
  }

  v114 = v123;
  v115 = v144;
  sub_10000BE38(v123, v127);

  if (v115)
  {
    v114 = _convertErrorToNSError(_:)();
    v116 = sub_10000F184();
    [v116 v117];
  }

  else
  {
    Dictionary._bridgeToObjectiveC()();
    sub_10000F0EC();

    v118 = sub_10000F184();
    [v118 v119];
  }

  return (*(v124 + 8))(v136, v125);
}

uint64_t sub_10000BE38(void (**a1)(void), uint64_t a2)
{
  v353 = a2;
  v5 = type metadata accessor for CustomSignalType();
  sub_100002BB8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000EF58();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_10000F0E0();
  v343 = v13;
  v14 = sub_1000045B0(&qword_100021680, &qword_100014530);
  __chkstk_darwin(v14 - 8);
  sub_10000F094(&v315 - v15);
  v357 = type metadata accessor for CustomSignal();
  sub_100002BB8();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_10000EFC4();
  sub_10000F094(v19);
  v20 = type metadata accessor for UUID();
  sub_100002BB8();
  v352 = v21;
  __chkstk_darwin(v22);
  sub_10000EF58();
  v359 = v23 - v24;
  sub_10000EF78();
  __chkstk_darwin(v25);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v26);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v27);
  sub_10000F000();
  v363 = v28;
  sub_10000EF78();
  __chkstk_darwin(v29);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v30);
  sub_10000F000();
  sub_10000EF68();
  __chkstk_darwin(v31);
  sub_10000F000();
  v360 = v32;
  sub_10000EF78();
  __chkstk_darwin(v33);
  sub_10000F0E0();
  v350 = v34;
  v35 = sub_1000045B0(&qword_100021688, &qword_100014538);
  __chkstk_darwin(v35 - 8);
  sub_10000EF58();
  sub_10000EF68();
  __chkstk_darwin(v36);
  sub_10000F000();
  v362 = v37;
  sub_10000EF78();
  __chkstk_darwin(v38);
  sub_10000F000();
  v364 = v39;
  sub_10000EF78();
  __chkstk_darwin(v40);
  sub_10000F0E0();
  sub_10000F094(v41);
  v333 = type metadata accessor for Logger();
  sub_100002BB8();
  v332 = v42;
  __chkstk_darwin(v43);
  sub_10000EFC4();
  sub_10000EF9C();
  v356 = v44;
  Logger.init(subsystem:category:)();
  sub_10000DFBC(1701667182, 0xE400000000000000, a1, &v369);
  v351 = v20;
  v330 = v2;
  v354 = v3;
  v334 = a1;
  if (!*(&v370 + 1))
  {
    sub_10000E9B8(&v369, &qword_100021690, &qword_100014540);
LABEL_10:
    v346 = sub_1000045B0(&qword_100021668, &qword_100014518);
    v342 = Dictionary.init(dictionaryLiteral:)();
    v47 = sub_10000F134() + 64;
    sub_10000EF0C();
    v365 = v49 & v48;
    v51 = ((v50 + 63) >> 6);
    v360 = v352 + 16;
    v361 = (v352 + 32);
    v347 = (v352 + 8);
    v341 = "v8@?0";

    v52 = 0;
    *&v53 = 136315138;
    v345 = v53;
    v340 = xmmword_100014280;
    v54 = v359;
    sub_10000F178();
    v348 = v47;
    v349 = v51;
    while (1)
    {
      while (1)
      {
        v56 = v365;
        if (!v365)
        {
          v17 = v355;
          v57 = v363;
          v58 = v54;
          while (1)
          {
            v59 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              break;
            }

            if (v59 >= v51)
            {
              v70 = v20;
              sub_1000045B0(&qword_100021698, &qword_100014548);
              sub_10000F1A4();
              sub_10000B148(v116, v117, v118, v119);
              v365 = 0;
              goto LABEL_18;
            }

            v56 = *(v47 + 8 * v59);
            ++v52;
            if (v56)
            {
              v52 = v59;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_131;
        }

LABEL_17:
        v365 = (v56 - 1) & v56;
        sub_10000F0A4();
        v61 = *(v60 - 256);
        v63 = v350;
        (*(v61 + 16))(v350, v62 + *(v61 + 72) * v17, v20);
        v64 = (*(v51 + 7) + 16 * v17);
        v65 = *v64;
        v66 = v64[1];
        v67 = sub_1000045B0(&qword_100021698, &qword_100014548);
        v68 = (v358 + *(v67 + 48));
        v69 = v63;
        v70 = v20;
        (*(v61 + 32))(v358, v69, v20);
        *v68 = v65;
        v68[1] = v66;
        sub_10000F1B0();
        sub_10000B148(v71, v72, v73, v67);
        sub_10000E850(v65, v66);
        v58 = v359;
        v17 = v355;
        v57 = v363;
LABEL_18:
        v74 = sub_10000F198();
        sub_10000EC68(v74, v75, &qword_100021688, &qword_100014538);
        sub_1000045B0(&qword_100021698, &qword_100014548);
        v76 = sub_10000F158();
        if (sub_10000B10C(v76, v77, v78) == 1)
        {
          sub_10000F134();

          sub_10000F00C();
          if (*(&v370 + 1))
          {
            sub_10000F1BC();
            v142 = swift_dynamicCast();
            v143 = v354;
            if (v142 && (v366 & 1) != 0)
            {
              v55 = sub_10000E488(v342);
              if (v143)
              {
                sub_10000EF84();
                v17 = Logger.logObject.getter();
                v144 = static os_log_type_t.error.getter();
                if (sub_100008BC8(v144))
                {
                  *sub_100008BB0() = 0;
                  sub_10000F1F4(&_mh_execute_header, v145, v146, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
                  sub_10000EF4C();
                }

                v147 = sub_10000F058(&v368);
                sub_10000E250(v147, v148, v149);
                sub_10000F0EC();

LABEL_125:

                v305 = sub_10000EED4();
                v306(v305);
                return v17;
              }

LABEL_131:
              v17 = v55;
              v311 = sub_10000EED4();
              v312(v311);
              goto LABEL_134;
            }
          }

          else
          {
            sub_10000E9B8(&v369, &qword_100021690, &qword_100014540);
          }

          v150 = sub_10000F058(&v368);
          sub_10000E250(v150, v151, v152);
          sub_10000F0EC();

LABEL_128:
          v308 = sub_10000EED4();
          v309(v308);
          return v17;
        }

        v79 = sub_10000F128();
        v20 = v70;
        v81 = v80;
        v83 = v82;
        v84(v79);
        v85 = objc_opt_self();
        v364 = v83;
        isa = Data._bridgeToObjectiveC()().super.isa;
        *&v369 = 0;
        v87 = [v85 JSONObjectWithData:isa options:0 error:&v369];

        v88 = v369;
        if (v87)
        {
          break;
        }

        v17 = v369;
        v51 = _convertNSErrorToError(_:)();

        v354 = v51;
        swift_willThrow();
        sub_10000F1E8();
        v100();
        sub_10000EF84();
        v101 = v20;
        v20 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        sub_10000F0C8();
        if (os_log_type_enabled(v20, v102))
        {
          sub_10000F04C();
          v17 = swift_slowAlloc();
          sub_10000F040();
          v103 = swift_slowAlloc();
          v357 = v81;
          v104 = v103;
          *v17 = sub_10000F074(v103).n128_u32[0];
          v105 = UUID.uuidString.getter();
          v107 = v106;
          v108 = v101;
          v109 = *v347;
          (*v347)(v359, v108);
          v51 = sub_100004694(v105, v107, &v369);
          sub_10000F178();

          *(v17 + 4) = v51;
          _os_log_impl(&_mh_execute_header, v20, v88, "Unable to decode record %s, skipping", v17, 0xCu);
          sub_100004758(v104);
          v54 = v359;
          sub_10000EF4C();

          sub_10000EF4C();

          sub_10000EFD8();

          sub_10000EFF4();
          v109();
          sub_10000F0D4();
        }

        else
        {
          sub_10000A4BC(v81, v364);

          sub_10000F1C8();
          v54 = v58;
          (v17)(v58, v101);
          (v17)(v363, v101);
          sub_10000F0D4();
          v20 = v101;
        }

LABEL_34:
        v47 = v348;
        sub_10000F14C();
      }

      v89 = v369;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000F1BC();
      v90 = swift_dynamicCast();
      v357 = v81;
      if (!v90)
      {
        break;
      }

      v91 = v366;
      if (*(v366 + 16))
      {
        v51 = v366;
        v92 = sub_10000E8A8(0x79546C616E676973, 0xEA00000000006570);
        if (v93)
        {
          sub_1000048A4(*(v91 + 56) + 32 * v92, &v369);

          sub_10000E9B8(&v369, &qword_100021690, &qword_100014540);
          v17 = v344;
          sub_10000F1E8();
          v94();
          sub_10000EF84();
          v95 = Logger.logObject.getter();
          static os_log_type_t.debug.getter();
          sub_10000F0C8();
          if (os_log_type_enabled(v95, v96))
          {
            sub_10000F04C();
            v20 = swift_slowAlloc();
            sub_10000F040();
            v97 = swift_slowAlloc();
            *v20 = sub_10000F074(v97).n128_u32[0];
            v51 = v17;
            UUID.uuidString.getter();
            sub_10000F16C();
            v17 = v98;
            v99 = *v347;
            sub_10000F140();
            v99();
            sub_100004694(v51, v17, &v369);
            sub_10000F16C();

            *(v20 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v95, v88, "Record %s looks like a CustomSignal, skipping", v20, 0xCu);
            sub_100004758(v97);
            v54 = v359;
            sub_10000EF4C();

            sub_10000EF28();
            sub_10000EFD8();

            (v99)(v363, v20);
          }

          else
          {
            v54 = v58;
            sub_10000EFD8();

            sub_10000F1C8();
            (v17)();
            (v17)(v57, v20);
          }

LABEL_33:
          sub_10000F178();
          goto LABEL_34;
        }
      }

      v369 = 0u;
      v370 = 0u;
      sub_10000E9B8(&v369, &qword_100021690, &qword_100014540);
      sub_10000EF84();
      v120 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_10000F0C8();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = sub_100008BB0();
        *v122 = 0;
        _os_log_impl(&_mh_execute_header, v120, v88, "SiriInference dodML plugin ran succesfully", v122, 2u);
        sub_10000EF4C();
      }

      v343 = String._bridgeToObjectiveC()();
      sub_1000045B0(&qword_1000216A0, &qword_100014550);
      inited = swift_initStackObject();
      *(inited + 16) = v340;
      *(inited + 32) = 0x656D6F6374756FLL;
      *(inited + 40) = 0xE700000000000000;
      v124 = sub_10000464C(0, &qword_1000216A8, NSString_ptr);
      *(inited + 48) = NSString.init(stringLiteral:)();
      sub_10000464C(0, &qword_1000216B0, NSObject_ptr);
      sub_10000F16C();
      Dictionary.init(dictionaryLiteral:)();
      Dictionary._bridgeToObjectiveC()();
      sub_10000F16C();

      v125 = v343;
      AnalyticsSendEvent();

      v126 = UUID.uuidString.getter();
      v17 = v127;
      sub_10000F058(&v368);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v369 = v57;
      v343 = v126;
      sub_10000E8A8(v126, v17);
      sub_10000F084();
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_136;
      }

      v20 = v128;
      LODWORD(v342) = v129;
      sub_1000045B0(&qword_1000216B8, &qword_100014558);
      v51 = &v369;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v132))
      {
        v51 = v369;
        v133 = sub_10000E8A8(v343, v17);
        if ((v342 & 1) != (v134 & 1))
        {
LABEL_140:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v20 = v133;
        sub_10000F14C();
      }

      else
      {
        sub_10000F14C();
        v135 = v342;
      }

      v342 = v369;
      if (v135)
      {
        *(*(v369 + 56) + 8 * v20) = v91;
      }

      else
      {
        sub_10000F064(v369 + 8 * (v20 >> 6));
        v137 = (v136[6] + 16 * v20);
        *v137 = v343;
        v137[1] = v17;
        *(v136[7] + 8 * v20) = v91;
        v138 = v136[2];
        v139 = __OFADD__(v138, 1);
        v140 = v138 + 1;
        if (v139)
        {
          goto LABEL_137;
        }

        v136[2] = v140;
      }

      sub_10000EFF4();
      sub_10000F178();
      v54 = v58;
      sub_10000EFD8();

      sub_10000EF90();
      v55 = v141(v57, v20);
      v47 = v348;
    }

    sub_10000F1E8();
    v110();
    sub_10000EF84();
    v111 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    sub_10000F0C8();
    v51 = v17;
    if (os_log_type_enabled(v111, v112))
    {
      sub_10000F04C();
      v20 = swift_slowAlloc();
      sub_10000F040();
      v17 = swift_slowAlloc();
      *v20 = sub_10000F074(v17).n128_u32[0];
      v343 = UUID.uuidString.getter();
      v114 = v113;
      v115 = *v347;
      sub_10000F140();
      v115();
      v51 = sub_100004694(v343, v114, &v369);
      v54 = v359;

      *(v20 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v111, v88, "Couldn't decode data for %s into a record, skipping", v20, 0xCu);
      sub_100004758(v17);
      sub_10000EF4C();

      sub_10000EF28();
      sub_10000EFD8();

      (v115)(v363, v20);
    }

    else
    {
      v54 = v58;
      sub_10000EFD8();

      v17 = *v347;
      (*v347)(v51, v20);
      (v17)(v57, v20);
    }

    goto LABEL_33;
  }

  sub_10000F1BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v342 = v11;
  if (v366 == 0x536F747541736D73 && v367 == 0xEB00000000646E65)
  {

    goto LABEL_57;
  }

  v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v46 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_57:
  v341 = v5;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v358 = JSONDecoder.init()();
  sub_1000045B0(&qword_1000216C0, &qword_100014560);
  v329 = Dictionary.init(dictionaryLiteral:)();
  v153 = sub_10000F134();
  v154 = v153 + 64;
  v155 = 1 << *(v153 + 32);
  if (v155 < 64)
  {
    v156 = ~(-1 << v155);
  }

  else
  {
    v156 = -1;
  }

  v157 = v156 & *(v153 + 64);
  v344 = (v155 + 63) >> 6;
  v359 = v352 + 16;
  v361 = (v352 + 32);
  *&v345 = v352 + 8;
  *&v340 = v17 + 32;
  isUniquelyReferenced_nonNull_native = enum case for CustomSignalType.messagesAutoSend(_:);
  v338 = v7 + 104;
  v337 = (v7 + 8);
  v336 = v17 + 8;

  v158 = 0;
  *&v159 = 136315138;
  v335 = v159;
  sub_10000F0F8();
  v161 = v360;
  v355 = v154;
LABEL_61:
  v162 = v364;
  while (1)
  {
    if (v157)
    {
      goto LABEL_67;
    }

    do
    {
      v163 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        __break(1u);
        goto LABEL_133;
      }

      if (v163 >= v344)
      {
        v177 = v161;
        v173 = v20;
        sub_1000045B0(&qword_100021698, &qword_100014548);
        sub_10000F1A4();
        sub_10000B148(v227, v228, v229, v230);
        v365 = 0;
        goto LABEL_68;
      }

      v157 = *(v154 + 8 * v163);
      ++v158;
    }

    while (!v157);
    v158 = v163;
LABEL_67:
    v164 = (v157 - 1) & v157;
    v365 = v164;
    sub_10000F0A4();
    v166 = *(v165 - 256);
    v168 = v350;
    (*(v166 + 16))(v350, v167 + *(v166 + 72) * v162, v20);
    v169 = *(v164 + 56) + 16 * v162;
    a1 = *v169;
    v157 = *(v169 + 8);
    v170 = sub_1000045B0(&qword_100021698, &qword_100014548);
    v162 = v364;
    v171 = (v364 + *(v170 + 48));
    v172 = *(v166 + 32);
    v173 = v20;
    v172(v364, v168, v20);
    *v171 = a1;
    v171[1] = v157;
    sub_10000F1B0();
    sub_10000B148(v174, v175, v176, v170);
    sub_10000E850(a1, v157);
    sub_10000F0F8();
    v177 = v360;
LABEL_68:
    sub_10000F14C();
    sub_10000EC68(v178, v157, &qword_100021688, &qword_100014538);
    sub_1000045B0(&qword_100021698, &qword_100014548);
    v179 = sub_10000F0EC();
    if (sub_10000B10C(v179, 1, v162) == 1)
    {
      break;
    }

    v180 = (v157 + *(v162 + 48));
    v181 = a1;
    v183 = *v180;
    v182 = v180[1];
    v20 = v173;
    (*v361)(v177, v157, v173);
    sub_10000EE8C(&dword_1000216C8, &type metadata accessor for CustomSignal, &protocol conformance descriptor for CustomSignal);
    v184 = v347;
    v362 = v183;
    a1 = v181;
    v185 = v354;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v363 = v182;
    if (v185)
    {

      sub_10000F1A4();
      sub_10000B148(v186, v187, v188, v181);
      sub_10000E9B8(v184, &qword_100021680, &qword_100014530);
      v189 = v346;
      sub_10000F1E8();
      v190();
      sub_10000EF84();
      v191 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_10000F0C8();
      if (os_log_type_enabled(v191, v192))
      {
        sub_10000F04C();
        v193 = swift_slowAlloc();
        sub_10000F040();
        v194 = swift_slowAlloc();
        *v193 = sub_10000F1D4(v194).n128_u32[0];
        v195 = UUID.uuidString.getter();
        v197 = v196;
        a1 = v345;
        v198 = *v345;
        sub_10000F140();
        v198();
        v199 = sub_100004694(v195, v197, &v369);

        *(v193 + 4) = v199;
        _os_log_impl(&_mh_execute_header, v191, v173, "Unable to decode %s to CustomSignal, so not an SMS record", v193, 0xCu);
        sub_100004758(v173);
        sub_10000EF28();
        sub_10000EF4C();

        sub_10000A4BC(v362, v363);

        v161 = v360;
        v200 = sub_10000F0BC();
        (v198)(v200);
        sub_10000F0F8();
        sub_10000F0D4();
      }

      else
      {
        sub_10000A4BC(v362, v363);

        sub_10000F1C8();
        (v191)(v189, v173);
        (v191)(v177, v173);
        sub_10000F0D4();
        v161 = v177;
      }

      goto LABEL_80;
    }

    v354 = 0;
    sub_10000F1B0();
    sub_10000B148(v201, v202, v203, v181);
    sub_10000EF90();
    v204(v348, v184, v181);
    a1 = v343;
    CustomSignal.signalType.getter();
    sub_10000EF90();
    v205 = v342;
    v206 = v341;
    v207(v342, isUniquelyReferenced_nonNull_native, v341);
    sub_10000EE8C(&qword_1000216D0, &type metadata accessor for CustomSignalType, &protocol conformance descriptor for CustomSignalType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v208 = v367;
    if (v369 == v366 && *(&v369 + 1) == v367)
    {
      v231 = *v337;
      v232 = sub_10000F128();
      v231(v232);
      (v231)(a1, v206);

LABEL_83:
      v233 = sub_10000464C(0, &qword_1000216D8, NSKeyedUnarchiver_ptr);
      v234 = sub_10000464C(0, &qword_1000216A8, NSString_ptr);
      sub_10000464C(0, &qword_1000216E0, NSNumber_ptr);
      v20 = CustomSignal.item.getter();
      v236 = v235;
      LOBYTE(v237) = v233;
      v238 = v354;
      v239 = static NSKeyedUnarchiver.unarchivedDictionary<A, B>(ofKeyClass:objectClass:from:)();
      if (v238)
      {

        sub_10000A4BC(v20, v236);
        sub_10000F0D4();
        sub_10000F0F8();
LABEL_86:
        sub_10000EF84();
        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.error.getter();
        sub_100008BC8(v241);
        sub_10000EFF4();
        v161 = v360;
        if (v242)
        {
          v243 = sub_100008BB0();
          *v243 = 0;
          _os_log_impl(&_mh_execute_header, v240, v237, "SiriInference dodML plugin tried to decode smsAutoSend record but failed - skipping", v243, 2u);
          sub_10000EF4C();
        }

        sub_10000A4BC(v362, v363);

        v244 = sub_10000EEF4();
        v245(v244, a1);
        sub_10000EF90();
        v246 = sub_10000F0BC();
        v160 = v247(v246);
        v162 = v364;
        v157 = v365;
        v154 = v355;
        continue;
      }

      v237 = v239;
      v354 = 0;
      sub_10000A4BC(v20, v236);
      sub_10000F0F8();
      if (!v237)
      {
        goto LABEL_86;
      }

      v326 = Dictionary.init(dictionaryLiteral:)();
      v20 = v351;
      v161 = v360;
      if ((v237 & 0xC000000000000001) != 0)
      {
        v251 = __CocoaDictionary.makeIterator()();
        v319 = 0;
        v252 = 0;
        v253 = 0;
        v320 = v251 | 0x8000000000000000;
      }

      else
      {
        v254 = -1 << *(v237 + 32);
        v252 = ~v254;
        v255 = *(v237 + 64);
        v319 = v237 + 64;
        v256 = -v254;
        if (v256 < 64)
        {
          v257 = ~(-1 << v256);
        }

        else
        {
          v257 = -1;
        }

        v253 = v257 & v255;
        v320 = v237;
      }

      v258 = 0;
      v315 = v252;
      v259 = (v252 + 64) >> 6;
      v318 = v234;
      v316 = v237;
      v260 = v320;
      v317 = v259;
      v261 = v253;
      if ((v320 & 0x8000000000000000) == 0)
      {
LABEL_97:
        v262 = v258;
        v263 = v261;
        v264 = v258;
        if (v261)
        {
LABEL_101:
          v325 = (v263 - 1) & v263;
          v265 = (v264 << 9) | (8 * __clz(__rbit64(v263)));
          v266 = *(*(v260 + 48) + v265);
          v324 = *(*(v260 + 56) + v265);
          v327 = v261;
          v328 = v266;
          v267 = v324;
          goto LABEL_104;
        }

        while (1)
        {
          v264 = v262 + 1;
          if (__OFADD__(v262, 1))
          {
            break;
          }

          if (v264 >= v259)
          {
            goto LABEL_116;
          }

          v263 = *(v319 + 8 * v264);
          ++v262;
          if (v263)
          {
            goto LABEL_101;
          }
        }

        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
      }

      while (1)
      {
        v264 = v258;
        v327 = v261;
        v268 = __CocoaDictionary.Iterator.next()();
        if (!v268)
        {
          break;
        }

        v270 = v269;
        v366 = v268;
        swift_dynamicCast();
        v328 = v369;
        v366 = v270;
        swift_dynamicCast();
        v267 = v369;
        v325 = v327;
LABEL_104:
        if (!v328)
        {
          break;
        }

        v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v273 = v272;
        v324 = v267;
        v323 = [v267 integerValue];
        sub_10000F058(&v354);
        v321 = swift_isUniquelyReferenced_nonNull_native();
        *&v369 = v267;
        v322 = v271;
        v327 = v273;
        sub_10000E8A8(v271, v273);
        sub_10000F084();
        v278 = v276 + v277;
        if (__OFADD__(v276, v277))
        {
          goto LABEL_138;
        }

        v20 = v274;
        v279 = v275;
        sub_1000045B0(&qword_1000216E8, &qword_100014568);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v321, v278))
        {
          v280 = sub_10000E8A8(v322, v327);
          v161 = v360;
          if ((v279 & 1) != (v281 & 1))
          {
            goto LABEL_140;
          }

          v20 = v280;
        }

        else
        {
          v161 = v360;
        }

        v282 = v328;
        if (v279)
        {

          v326 = v369;
          sub_10000F104(*(v369 + 56));
        }

        else
        {
          v283 = v369;
          sub_10000F064(v369 + 8 * (v20 >> 6));
          v284 = (v283[6] + 16 * v20);
          v285 = v327;
          *v284 = v322;
          v284[1] = v285;
          sub_10000F104(v283[7]);

          v286 = v283[2];
          v139 = __OFADD__(v286, 1);
          v287 = v286 + 1;
          if (v139)
          {
            goto LABEL_139;
          }

          v326 = v283;
          v283[2] = v287;
        }

        sub_10000EFF4();
        v260 = v320;
        v259 = v317;
        v258 = v264;
        v261 = v325;
        if ((v320 & 0x8000000000000000) == 0)
        {
          goto LABEL_97;
        }
      }

LABEL_116:
      sub_10000EA18(v320);

      v288 = UUID.uuidString.getter();
      v290 = v289;
      sub_10000F058(&v357);
      v291 = swift_isUniquelyReferenced_nonNull_native();
      *&v369 = v161;
      sub_10000EA20(v326, v288, v290, v291);

      sub_10000A4BC(v362, v363);
      v292 = sub_10000EEF4();
      v293(v292, a1);
      sub_10000EF90();
      v294 = sub_10000F0BC();
      v160 = v295(v294);
      v329 = v369;
      v154 = v355;
      v157 = v365;
      goto LABEL_61;
    }

    v210 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a1 = v337;
    v211 = *v337;
    (*v337)(v205, v206);
    v212 = sub_10000F128();
    v211(v212);

    if (v210)
    {
      goto LABEL_83;
    }

    v161 = v360;
    v213 = v331;
    v214 = sub_10000F198();
    v215(v214);
    sub_10000EF84();
    v216 = Logger.logObject.getter();
    v217 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v216, v217))
    {
      sub_10000F04C();
      v218 = swift_slowAlloc();
      sub_10000F040();
      v219 = swift_slowAlloc();
      *v218 = sub_10000F1D4(v219).n128_u32[0];
      v220 = UUID.uuidString.getter();
      v222 = v221;
      v223 = *v345;
      sub_10000F140();
      v223();
      sub_100004694(v220, v222, &v369);
      sub_10000F0EC();

      *(v218 + 4) = v220;
      _os_log_impl(&_mh_execute_header, v216, v217, "Record %s was not an SMS auto-send record, skipping", v218, 0xCu);
      sub_100004758(v20);
      sub_10000EF28();
      v161 = v360;
      sub_10000EF4C();

      sub_10000A4BC(v362, v363);

      v224 = sub_10000EEF4();
      a1 = v357;
      v225(v224, v357);
      v226 = sub_10000F0BC();
      v160 = (v223)(v226);
    }

    else
    {
      sub_10000A4BC(v362, v363);

      sub_10000F1C8();
      v208(v213, v20);
      v248 = sub_10000EEF4();
      a1 = v357;
      v249(v248, v357);
      v250 = sub_10000F0BC();
      v160 = (v208)(v250);
    }

LABEL_80:
    v162 = v364;
    v157 = v365;
    v154 = v355;
  }

  sub_10000F134();

  sub_10000F00C();
  v296 = v354;
  if (!*(&v370 + 1))
  {
    sub_10000E9B8(&v369, &qword_100021690, &qword_100014540);
    v298 = v329;
LABEL_127:
    sub_10000E250(v298, &qword_1000216C0, &qword_100014560);
    v17 = v307;

    goto LABEL_128;
  }

  sub_10000F1BC();
  v297 = swift_dynamicCast();
  v298 = v329;
  if (!v297 || (v366 & 1) == 0)
  {
    goto LABEL_127;
  }

  sub_10000E020(v329);
  v160 = sub_10000E488(v299);
  if (v296)
  {

    sub_10000EF84();
    v300 = Logger.logObject.getter();
    v301 = static os_log_type_t.error.getter();
    if (sub_100008BC8(v301))
    {
      *sub_100008BB0() = 0;
      sub_10000F1F4(&_mh_execute_header, v302, v303, "SiriInference dodml failed to convert and compress records when requested for some reason, returning as raw data");
      sub_10000EF4C();
    }

    sub_10000E250(v298, &qword_1000216C0, &qword_100014560);
    v17 = v304;

    goto LABEL_125;
  }

LABEL_133:
  v17 = v160;
  v313 = sub_10000EED4();
  v314(v313);

LABEL_134:

  return v17;
}

double sub_10000DFBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10000E8A8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1000048A4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_10000E020(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000045B0(&qword_1000216F8, &qword_100014578);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    sub_1000045B0(&qword_1000216C0, &qword_100014560);
    sub_1000045B0(&qword_100021668, &qword_100014518);
    swift_dynamicCast();
    v13 = sub_10000E8A8(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      *(v2[7] + 8 * v14) = v21;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v17 = (v2[6] + 16 * v13);
      *v17 = v12;
      v17[1] = v11;
      *(v2[7] + 8 * v13) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_10000E250(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1[2])
  {
    sub_1000045B0(&qword_100021700, &qword_100014580);
    v4 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  sub_10000EF0C();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  while (v7)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (a1[6] + 16 * (v12 | (v11 << 6)));
    v15 = *v13;
    v14 = v13[1];

    sub_1000045B0(a2, a3);
    swift_dynamicCast();
    sub_10000EBA4(&v27, v29);
    sub_10000EBA4(v29, v30);
    sub_10000EBA4(v30, &v28);
    v16 = sub_10000E8A8(v15, v14);
    v17 = v16;
    if (v18)
    {
      v19 = (v4[6] + 16 * v16);
      *v19 = v15;
      v19[1] = v14;

      v20 = (v4[7] + 32 * v17);
      sub_100004758(v20);
      sub_10000EBA4(&v28, v20);
      v10 = v11;
    }

    else
    {
      if (v4[2] >= v4[3])
      {
        goto LABEL_17;
      }

      *(v4 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v21 = (v4[6] + 16 * v16);
      *v21 = v15;
      v21[1] = v14;
      sub_10000EBA4(&v28, (v4[7] + 32 * v16));
      v22 = v4[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v4[2] = v24;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v7 = a1[v11 + 8];
    ++v10;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_10000E488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000045B0(&qword_100021670, &qword_100014520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100014280;
    *(inited + 32) = 0x73736572706D6F63;
    *(inited + 40) = 0xEA00000000006465;
    v3 = sub_10000E598();
    if (v1)
    {

      *(inited + 16) = 0;
      swift_setDeallocating();
      return sub_10000E7F0();
    }

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v3;
    *(inited + 56) = v4;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t sub_10000E598()
{
  v0 = objc_opt_self();
  sub_1000045B0(&qword_100021668, &qword_100014518);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v12 = 0;
  v2 = [v0 dataWithJSONObject:isa options:0 error:&v12];

  v3 = v12;
  if (v2)
  {
    v12 = 0;
    v4 = v3;
    v5 = [v2 compressedDataUsingAlgorithm:3 error:&v12];
    if (v5)
    {
      v6 = v5;
      v7 = v12;
      v8 = [v6 base64EncodedStringWithOptions:0];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v10 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return sub_10000F128();
}

id sub_10000E740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000E798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceDodMLPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000E7F0()
{
  sub_1000045B0(&qword_100021678, &qword_100014528);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10000E850(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_10000E8A8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000EBB4(a1, a2, v4);
}

unint64_t sub_10000E920(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10000EE8C(&qword_100021710, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10000ECD0(a1, v2);
}

uint64_t sub_10000E9B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000045B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10000EA20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E8A8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000045B0(&qword_1000216F0, &qword_100014570);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_10000E8A8(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;
  }

  else
  {
    sub_10000EB5C(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_10000EB5C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

_OWORD *sub_10000EBA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000EBB4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10000EC68(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000045B0(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000ECD0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000EE8C(&qword_100021728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_10000EE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000EF28()
{
}

uint64_t sub_10000EFD8()
{
  v2 = *(v0 - 272);
  v3 = *(v0 - 216);

  return sub_10000A4BC(v2, v3);
}

double sub_10000F00C()
{
  v2 = *(v0 - 488);

  return sub_10000DFBC(0x73736572706D6F63, 0xEA00000000006465, v2, (v0 - 128));
}

void sub_10000F104(uint64_t a1@<X8>)
{
  *(a1 + 8 * v1) = *(v2 - 576);
  v4 = *(v2 - 568);
}

void sub_10000F1F4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000F214(uint64_t a1)
{
  v1 = type metadata accessor for CoreAnalyticsMetric();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100002B54(v5, qword_100021A90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "running accuracyLogging on daemon", v8, 2u);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  sub_100010680();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000A4BC(v9, v11);
  CoreAnalyticsMetric.fullyQualifiedEventName.getter();
  v12 = String._bridgeToObjectiveC()();

  CoreAnalyticsMetric.eventPayload()();
  sub_1000106D8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  AnalyticsSendEvent();

  return (*(v2 + 8))(v4, v1);
}

void sub_10000F550(uint64_t a1, void (**a2)(void))
{
  type metadata accessor for BackgroundQueue();
  v3 = static BackgroundQueue.shared.getter();
  [v3 waitUntilAllOperationsAreFinished];

  a2[2](a2);

  _Block_release(a2);
}

uint64_t sub_10000F61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  sub_10000B148(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  sub_10000FAB4(0, 0, v14, &unk_1000145D8, v16);
}

uint64_t sub_10000F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return (_swift_task_switch)(sub_10000F810, 0, 0);
}

uint64_t sub_10000F810()
{
  v1 = v0[4];
  type metadata accessor for SearchTermAppsRanker();
  v0[11] = static SearchTermAppsRanker.shared.getter();
  v8 = (&async function pointer to dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:) + async function pointer to dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_10000F8F8;
  v3 = v0[10];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return v8(v3, v5, v6, v1 & ~(v1 >> 63), v1 < 1, v4);
}

uint64_t sub_10000F8F8()
{
  sub_100010754();
  sub_100010760();
  v1 = *v0;
  sub_100010728();
  *v2 = v1;
  *(v4 + 104) = v3;

  return (_swift_task_switch)(sub_10000FA08, 0, 0);
}

uint64_t sub_10000FA08()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  (*(v0 + 48))(*(v0 + 104), v1);

  (*(v2 + 8))(v1, v3);

  sub_100010748();

  return v4();
}

uint64_t sub_10000FAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_100010304(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = sub_10000B10C(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10000E9B8(v11, &qword_100021758, &qword_1000145C8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
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

      sub_10000E9B8(a3, &qword_100021758, &qword_1000145C8);

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

  sub_10000E9B8(a3, &qword_100021758, &qword_1000145C8);
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

void sub_10000FE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v5 = UUID._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, v5);
}

uint64_t sub_10000FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SearchTermAppsRankerDataCollector();
  static SearchTermAppsRankerDataCollector.shared.getter();
  dispatch thunk of SearchTermAppsRankerDataCollector.appSelectedForSearchTerm(rankEventId:selectedAppBundleId:numberOfAppsShown:)();
}

id sub_100010090()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceService();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000100E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriInferenceService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100010140(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  v11 = sub_100010738(v10);
  *v11 = v12;
  v11[1] = sub_100010224;

  return sub_10000F740(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100010224(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_100010754();
  sub_100010760();
  v9 = *v8;
  sub_100010728();
  *v10 = v9;

  sub_100010748();

  return v11();
}

uint64_t sub_100010304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000045B0(&qword_100021758, &qword_1000145C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010374(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001046C;

  return v6(a1);
}

uint64_t sub_10001046C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_100010754();
  sub_100010760();
  v9 = *v8;
  sub_100010728();
  *v10 = v9;

  sub_100010748();

  return v11();
}

uint64_t sub_100010550()
{
  v0 = swift_task_alloc();
  v1 = sub_100010738(v0);
  *v1 = v2;
  v3 = sub_100002C10(v1);

  return v4(v3);
}

uint64_t sub_1000105E8()
{
  v0 = swift_task_alloc();
  v1 = sub_100010738(v0);
  *v1 = v2;
  v3 = sub_100002C10(v1);

  return v4(v3);
}

unint64_t sub_100010680()
{
  result = qword_100021760;
  if (!qword_100021760)
  {
    type metadata accessor for CoreAnalyticsMetric();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021760);
  }

  return result;
}

unint64_t sub_1000106D8()
{
  result = qword_1000216B0;
  if (!qword_1000216B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000216B0);
  }

  return result;
}

uint64_t sub_10001076C(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v21)
    {
      v6 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP13SiriInference25SiriInferenceXPCInterface_];
      [a2 setExportedInterface:v6];

      v7 = [objc_allocWithZone(type metadata accessor for SiriInferenceService()) init];
      [a2 setExportedObject:v7];

      [a2 resume];
      if (qword_1000210C0 != -1)
      {
        sub_100010BB0(&qword_1000210C0);
      }

      v8 = type metadata accessor for Logger();
      sub_100002B54(v8, qword_100021A90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        v14 = 1;
        goto LABEL_18;
      }

      v11 = swift_slowAlloc();
      *v11 = 67240192;
      v11[1] = v3;
      sub_100002C30(&_mh_execute_header, v12, v13, "process [%{public}d] is connected to siriinferenced");
      v14 = 1;
      goto LABEL_16;
    }
  }

  else
  {
    sub_100010B48(v24);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0(&qword_1000210C0);
  }

  v15 = type metadata accessor for Logger();
  sub_100002B54(v15, qword_100021A90);
  v9 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v9, v16))
  {
    v14 = 0;
    goto LABEL_18;
  }

  v17 = swift_slowAlloc();
  *v17 = 67240192;
  v17[1] = v3;
  sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v14 = 0;
LABEL_16:

LABEL_18:

  return v14;
}

id sub_100010A98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriInferenceServiceDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100010AF0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriInferenceServiceDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100010B48(uint64_t a1)
{
  v2 = sub_1000045B0(&qword_100021690, &qword_100014540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010BB0(uint64_t a1)
{

  return swift_once();
}

id sub_100010BD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriRemembersService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100010C04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriRemembersServiceDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100010C5C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriRemembersServiceDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100010CB4()
{
  v1 = v0;
  if (qword_1000210B0 != -1)
  {
    sub_100010F90(&qword_1000210B0);
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021A60);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Initializing SiriRolloutsMonitor", v5, 2u);
  }

  v6 = type metadata accessor for ExperimentationAnalyticsManager();
  v7 = [objc_allocWithZone(v6) init];
  v1[5] = v6;
  v1[6] = &protocol witness table for ExperimentationAnalyticsManager;
  v1[2] = v7;
  return v1;
}

void sub_100010DB0(void *a1)
{
  v2 = v1;
  if (qword_1000210B0 != -1)
  {
    sub_100010F90(&qword_1000210B0);
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Registering SiriRolloutsMonitor activity", v7, 2u);
  }

  sub_100010F2C(v2 + 16, v10);
  v8 = objc_allocWithZone(type metadata accessor for RolloutsAnalyticsActivity());
  v9 = RolloutsAnalyticsActivity.init(analyticsManager:)();
  [a1 addOperation:v9];
}

uint64_t sub_100010ED0()
{
  sub_100004758((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100010F2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100010F90(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100010FB0(int a1, id a2)
{
  v3 = [a2 processIdentifier];
  v4 = String._bridgeToObjectiveC()();
  v5 = [a2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (*(&v29 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v27)
    {
      if (qword_1000210B8 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100002B54(v6, qword_100021A78);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "made the connection", v9, 2u);
      }

      v10 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP11SiriSignals23SiriSignalsXPCInterface_];
      [a2 setExportedInterface:v10];

      v11 = [objc_allocWithZone(type metadata accessor for SiriSignalsService()) init];
      [a2 setExportedObject:v11];

      [a2 resume];
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "resumed the connection", v14, 2u);
      }

      if (qword_1000210C0 != -1)
      {
        sub_100010BB0(&qword_1000210C0);
      }

      sub_100002B54(v6, qword_100021A90);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v15, v16))
      {
        v20 = 1;
        goto LABEL_24;
      }

      v17 = swift_slowAlloc();
      *v17 = 67240192;
      v17[1] = v3;
      sub_100002C30(&_mh_execute_header, v18, v19, "process [%{public}d] is connected to siriinferenced");
      v20 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    sub_100010B48(v30);
  }

  if (qword_1000210C0 != -1)
  {
    sub_100010BB0(&qword_1000210C0);
  }

  v21 = type metadata accessor for Logger();
  sub_100002B54(v21, qword_100021A90);
  v15 = Logger.logObject.getter();
  v22 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v15, v22))
  {
    v20 = 0;
    goto LABEL_24;
  }

  v23 = swift_slowAlloc();
  *v23 = 67240192;
  v23[1] = v3;
  sub_100002C30(&_mh_execute_header, v24, v25, "process [%{public}d] is not entitled to call the Siri Inference SPI.\nAdd the proper entitlements and try again.");
  v20 = 0;
LABEL_22:

LABEL_24:

  return v20;
}

id sub_10001140C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriSignalsServiceDelegate();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100011464(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SiriSignalsServiceDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000114BC()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000210A8 != -1)
  {
    swift_once();
  }

  v4 = qword_100021A58;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  sub_1000045B0(&qword_1000210D8, &qword_100014290);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100014280;
  v6 = StaticString.description.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000045F8();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_100011DE0();
  os_signpost(_:dso:log:name:signpostID:_:_:)(v9, v10, v11, v12, v13, v14, v15, v16, 22, 2, v5);

  sub_100011700();
  static os_signpost_type_t.end.getter();
  sub_100011DE0();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100011700()
{
  v23 = type metadata accessor for DispatchTimeInterval();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v2 = (v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for DispatchTime();
  v3 = *(v22 - 8);
  v4 = __chkstk_darwin(v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v21[1] = sub_100002B54(v9, qword_100021A90);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "calling suggestions service bridge...", v12, 2u);
  }

  type metadata accessor for SiriInferenceSuggestionsBridgeProvider();
  static SiriInferenceSuggestionsBridgeProvider.instance.getter();
  v13 = dispatch_semaphore_create(0);
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  static SiriInferenceSuggestionsBridgeProvider.getAsync(_:callback:)();

  static DispatchTime.now()();
  *v2 = 20;
  v15 = v23;
  (*(v0 + 104))(v2, enum case for DispatchTimeInterval.seconds(_:), v23);
  + infix(_:_:)();
  (*(v0 + 8))(v2, v15);
  v16 = *(v3 + 8);
  v17 = v22;
  v16(v6, v22);
  OS_dispatch_semaphore.wait(timeout:)();
  v16(v8, v17);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "The suggestions bridge did not return within 20 seconds. Carrying on anyway", v20, 2u);
    }
  }
}

uint64_t sub_100011AB0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return (_swift_task_switch)(sub_100011AD0, 0, 0);
}

uint64_t sub_100011AD0()
{
  sub_100011D9C(*(v0 + 16), *(*(v0 + 16) + 24));
  dispatch thunk of SiriInferenceSuggestionsBridge.startSiriSuggestionsService()();
  if (qword_1000210C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002B54(v1, qword_100021A90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "successfully called suggestions service bridge", v4, 2u);
  }

  OS_dispatch_semaphore.signal()();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100011C0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011CA8;

  return sub_100011AB0(a1, v4);
}

uint64_t sub_100011CA8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_100011D9C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100011DF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void static SiriUIBiomeMonitor.deregister()()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BB8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002BA8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100002BA8();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002B54(v9, qword_100021A60);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deregistering SiriUIBiomeMonitor", v12, 2u);
    sub_10000EF4C();
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  sub_100012CB8();
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = objc_allocWithZone(BMBiomeScheduler);
  v15 = sub_100012CB8();
  v17 = sub_100012C18(v15, v16, v13);
  v18 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v19 = [v18 UI];
  swift_unknownObjectRelease();
  v20 = [v19 DSLPublisher];

  v21 = [v20 subscribeOn:v17];
  v29 = nullsub_1;
  v30 = 0;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100011DF0;
  v28 = &unk_10001D198;
  v22 = _Block_copy(&aBlock);
  v29 = nullsub_1;
  v30 = 0;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100001BD8;
  v28 = &unk_10001D1C0;
  v23 = _Block_copy(&aBlock);
  v24 = [v21 sinkWithCompletion:v22 receiveInput:v23];
  _Block_release(v23);
  _Block_release(v22);

  [v24 cancel];
}

uint64_t SiriUIBiomeMonitor.__allocating_init(queue:)(void *a1)
{
  v2 = swift_allocObject();
  SiriUIBiomeMonitor.init(queue:)(a1);
  return v2;
}

uint64_t SiriUIBiomeMonitor.init(queue:)(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002B54(v4, qword_100021A60);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Initializing SiriUIBiomeMonitor", v7, 2u);
    sub_10000EF4C();
  }

  v8 = sub_1000123F0(a1);
  v9 = *(v2 + 16);
  *(v2 + 16) = v8;

  return v2;
}

id sub_1000123F0(void *a1)
{
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100002BB8();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100002BA8();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  sub_100002BA8();
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  sub_100002BA8();
  if (qword_1000210B0 != -1)
  {
    sub_100005DE4();
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100002B54(v41, qword_100021A60);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Registering SiriUIBiomeMonitor", v11, 2u);
    sub_10000EF4C();
  }

  sub_100005C70();
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_100009F70();
  sub_1000045B0(&qword_100021530, &qword_1000146E0);
  sub_100005CB4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
  sub_100012CB8();
  v12 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = objc_allocWithZone(BMBiomeScheduler);
  v14 = sub_100012CB8();
  v16 = sub_100012C18(v14, v15, v12);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v19 = [v18 UI];
  swift_unknownObjectRelease();
  v20 = [v19 DSLPublisher];

  v21 = [v20 subscribeOn:v16];
  v50 = sub_100012A84;
  v51 = 0;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100011DF0;
  v49 = &unk_10001D210;
  v22 = _Block_copy(&aBlock);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  v50 = sub_100001CA0;
  v51 = v23;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_100001BD8;
  v49 = &unk_10001D260;
  v24 = _Block_copy(&aBlock);
  v25 = a1;

  v26 = [v21 sinkWithCompletion:v22 receiveInput:v24];
  _Block_release(v24);
  _Block_release(v22);

  if (qword_1000210C8 != -1)
  {
    swift_once();
  }

  sub_100002B54(v41, qword_100021AA8);
  swift_retain_n();
  v27 = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v44 = v16;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v30 = 136315650;
    v32 = [v27 debugDescription];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = sub_100004694(v33, v35, &v45);

    *(v30 + 4) = v36;
    *(v30 + 12) = 2112;
    v37 = [v27 status];
    *(v30 + 14) = v37;
    *v31 = v37;
    *(v30 + 22) = 2048;
    swift_beginAccess();
    v38 = *(v17 + 16);

    *(v30 + 24) = v38;

    _os_log_impl(&_mh_execute_header, v28, v29, "Biome: Created Sink: %s, Sink Status: %@, Fetched Event Count: %ld", v30, 0x20u);
    sub_100002A94(v31);
    sub_10000EF4C();

    sub_100004758(v42);
    sub_10000EF4C();

    sub_10000EF4C();
  }

  else
  {
  }

  return v27;
}

void sub_100012A84(void *a1)
{
  if (qword_1000210C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002B54(v2, qword_100021AA8);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Biome: BiomeClientDaemon Completion: %@", v5, 0xCu);
    sub_100002A94(v6);
  }
}

uint64_t SiriUIBiomeMonitor.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

id sub_100012C18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = String._bridgeToObjectiveC()();

  v6 = [v3 initWithIdentifier:v5 targetQueue:a3];

  return v6;
}

void sub_100012CC4()
{
  v0 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 fileExistsAtPath:v1];

  if (v2)
  {
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    v9 = 0;
    v6 = [v0 removeItemAtURL:v4 error:&v9];

    if (v6)
    {
      v7 = v9;
    }

    else
    {
      v8 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_100012DE8(uint64_t a1, uint64_t a2)
{
  v2 = String.utf8CString.getter();
  v3 = realpath_DARWIN_EXTSN((v2 + 32), 0);

  if (!v3)
  {
    return 0;
  }

  v4 = String.init(cString:)();

  return v4;
}