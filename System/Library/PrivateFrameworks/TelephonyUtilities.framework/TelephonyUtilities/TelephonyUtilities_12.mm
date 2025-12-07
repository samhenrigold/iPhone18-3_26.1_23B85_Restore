char *sub_1002A6F58(uint64_t a1, void *a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities__emergencyCallbackPossible] = 0;
  v7 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_emergencyCallbackCapabilitiesDidChange];
  *v7 = 0;
  v7[1] = 0;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutWorkItem] = 0;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_queue] = a2;
  *&a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver] = a1;
  v8 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_preventDetachAfterEmergencyCallTimeoutDeterminationHandler];
  *v8 = sub_1002A63B4;
  v8[1] = 0;
  v9 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchAfterHandler];
  *v9 = sub_1002A6420;
  v9[1] = 0;
  v10 = &a3[OBJC_IVAR___CSDEmergencyCallbackCapabilities_dispatchCancelHandler];
  *v10 = sub_1002A6610;
  v10[1] = 0;
  v21.receiver = a3;
  v21.super_class = ObjectType;
  v11 = a2;
  v12 = objc_msgSendSuper2(&v21, "init");
  v13 = OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver;
  v14 = *&v12[OBJC_IVAR___CSDEmergencyCallbackCapabilities_callCenterObserver];
  v15 = v12;
  [v14 setTriggers:1];
  v16 = *&v12[v13];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20[4] = sub_100028174;
  v20[5] = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100028100;
  v20[3] = &unk_100623010;
  v18 = _Block_copy(v20);
  swift_unknownObjectRetain();

  [v16 setCallChanged:v18];
  _Block_release(v18);

  swift_unknownObjectRelease();
  return v15;
}

uint64_t sub_1002A7184()
{

  sub_1002A730C(*(v0 + 24));
  return v0;
}

uint64_t sub_1002A71B4()
{
  v0 = sub_1002A7184();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_1002A7208(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002A722C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002A7280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1002A72DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1002A730C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id sub_1002A731C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___CSDFaceTimeUnknownReporter_idsService;
  v7 = objc_allocWithZone(IDSService);
  *&v2[v6] = sub_1003C1FE0(0xD000000000000026, 0x80000001005646A0);
  *&v2[OBJC_IVAR___CSDFaceTimeUnknownReporter_queue] = a1;
  *&v2[OBJC_IVAR___CSDFaceTimeUnknownReporter_chManager] = a2;
  v9.receiver = v2;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

void sub_1002A7418(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDFaceTimeUnknownReporter_idsService);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 sharedInstance];
    v6 = [v5 callerID];

    if (v6)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      CSDCall.spamModel(with:)(v7, v9, v27);

      v11 = sub_10034B658(v10);
      sub_1002A7DD8(v27);
      v12 = static os_log_type_t.error.getter();
      v13 = v12;
      v14 = sub_10003D4D0(v12);
      if (os_log_type_enabled(v14, v13))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26 = v16;
        *v15 = 136315138;
        v17 = sub_100291118(v11);
        v19 = sub_10002741C(v17, v18, &v26);

        *(v15 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v14, v13, "FTUR: report unknown, model.dictionary: %s", v15, 0xCu);
        sub_100009B7C(v16);
      }

      if (v11)
      {
        v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v20.super.isa = 0;
      }

      [v4 reportSpamMessage:v20.super.isa];

      v23 = static os_log_type_t.error.getter();
      v24 = sub_10003D4D0(v23);
      os_log(_:dso:log:_:_:)();

      return;
    }

    v22 = static os_log_type_t.error.getter();
    v25 = sub_10003D4D0(v22);
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v21 = static os_log_type_t.error.getter();
    v25 = sub_10003D4D0(v21);
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1002A7750()
{
  v0 = 3553323;
  v1 = [objc_opt_self() tu_defaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_1002A7838(uint64_t a1, uint64_t a2)
{
  if (qword_1006A0A68 != -1)
  {
    swift_once();
  }

  if (byte_1006A4C90 == 1)
  {
    sub_1002A7750();
    sub_1002A7E94();
    sub_1002A7EE8();
    v2 = BidirectionalCollection<>.starts<A>(with:)();
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

id sub_1002A791C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_10026D814(&qword_1006A2EA0, &qword_10057CB60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10057CA80;
  v7 = objc_opt_self();
  *(v6 + 32) = [v7 predicateForCallsWithStatusOriginated:1];
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057CA80;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 predicateForCallsWithRemoteParticipantHandleValue:v9];

  *(v8 + 32) = v10;
  v16 = v8;
  if (a4)
  {
    v11 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
      v13 = [v7 predicateForCallsWithRemoteParticipantHandleNormalizedValue:v12];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v16;
    }
  }

  if (sub_10000B6F4(v8) < 2)
  {
    if (!sub_10000B6F4(v8))
    {

      goto LABEL_17;
    }

    sub_10039C390(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v8 + 32);
    }
  }

  else
  {
    sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
    sub_100421378();
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_17:
  sub_100006AF0(0, &qword_1006A30E0, NSCompoundPredicate_ptr);
  return sub_10000C350();
}

BOOL sub_1002A7BC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = sub_1002A791C(a1, a2, a3, a4);
  v6 = sub_10003D4D0(v5);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10057D690;
  *(v7 + 56) = sub_100006AF0(0, &unk_1006A30C0, NSPredicate_ptr);
  *(v7 + 64) = sub_1002A7E2C();
  *(v7 + 32) = v5;
  v8 = v5;
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("FTUR: Fetching call history calls matching predicate %@", 55, 2, &_mh_execute_header, v6, v9, v7);

  v10 = [*(v4 + OBJC_IVAR___CSDFaceTimeUnknownReporter_chManager) callsWithPredicate:v8 limit:1 offset:0 batchSize:0];
  sub_100006AF0(0, &unk_1006A30D0, CHRecentCall_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = sub_10000B6F4(v11);

  return v12 == 0;
}

unint64_t sub_1002A7E2C()
{
  result = qword_1006AB480;
  if (!qword_1006AB480)
  {
    sub_100006AF0(255, &unk_1006A30C0, NSPredicate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006AB480);
  }

  return result;
}

unint64_t sub_1002A7E94()
{
  result = qword_1006A30E8;
  if (!qword_1006A30E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30E8);
  }

  return result;
}

unint64_t sub_1002A7EE8()
{
  result = qword_1006A30F0;
  if (!qword_1006A30F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A30F0);
  }

  return result;
}

uint64_t sub_1002A7FE4()
{
  v1 = *(v0 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  sub_1000115CC(v1, *(v0 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8));
  return v1;
}

uint64_t sub_1002A80CC(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  v4 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  v5 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000051F8(v4, v5);
}

BOOL sub_1002A8120()
{
  v1 = [*(v0 + OBJC_IVAR___CSDCarPlayManager_carSessionStatus) currentSession];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

char *sub_1002A8170()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v32 = v0;
  v33 = v1;
  __chkstk_darwin(v0);
  sub_100007FDC();
  v31 = v3 - v2;
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100007FDC();
  v9 = v8 - v7;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v10);
  sub_100007FDC();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v29 = v12;
  v30 = v11;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v15 = v14 - v13;
  v26 = OBJC_IVAR___CSDCarPlayManager_carSessionQueue;
  sub_1002A8914();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100017FB0(&qword_1006A0CB0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10026D814(&qword_1006A31B0, &unk_10057E920);
  sub_100018040(&qword_1006A0CC0, &qword_1006A31B0, &unk_10057E920);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v28[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = &v28[OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = [objc_allocWithZone(CARSessionStatus) init];
  *&v28[OBJC_IVAR___CSDCarPlayManager_carSessionStatus] = v17;
  v35.receiver = v28;
  v35.super_class = type metadata accessor for CarPlayManager();
  v18 = objc_msgSendSuper2(&v35, "init");
  v19 = *&v18[OBJC_IVAR___CSDCarPlayManager_carSessionQueue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002A8958;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004CEC;
  aBlock[3] = &unk_100623230;
  v21 = _Block_copy(aBlock);
  v22 = v18;
  v23 = v19;

  static DispatchQoS.unspecified.getter();
  sub_100017FB0(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v33 + 8))(v31, v32);
  (*(v29 + 8))(v15, v30);

  v24 = *&v22[OBJC_IVAR___CSDCarPlayManager_carSessionStatus];
  [v24 setSessionObserver:v22];

  return v22;
}

void sub_1002A867C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___CSDCarPlayManager_carSessionStatus);

    [v3 waitForSessionInitialization];
  }
}

id sub_1002A8718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002A8834(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged);
  if (v3)
  {
    v5 = *(v2 + OBJC_IVAR___CSDCarPlayManager_carPlayScreenConnectionChanged + 8);

    v3(a2 & 1);

    sub_1000051F8(v3, v5);
  }
}

unint64_t sub_1002A8914()
{
  result = qword_1006A31A0;
  if (!qword_1006A31A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A31A0);
  }

  return result;
}

void sub_1002A8978(void *a1, void *a2)
{
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = [a2 provider];
  v8 = [v7 isTelephonyProvider];

  if (v8 && ([a2 isUsingBaseband] & 1) != 0)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v10 = [a2 provider];
    v11 = [v10 isFaceTimeProvider];

    if (v11)
    {
      LOBYTE(v9) = 2;
    }

    else
    {
      v12 = [a2 callSubType];
      v9 = 0x504030100uLL >> (8 * v12);
      if (v12 > 4)
      {
        LOBYTE(v9) = 0;
      }
    }
  }

  [a1 setSource:v9];
  if ([a2 receptionistState])
  {
    v13 = 3;
  }

  else
  {
    v13 = 1;
  }

  [a1 setUsage:v13];
  v14 = [a2 uniqueProxyIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v15 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100015468(v6, 1, v15) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v15 - 8) + 8))(v6, v15);
  }

  [a1 setReportingSamplingUUID:isa];
}

NSString sub_1002A8BAC()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1B8 = result;
  return result;
}

NSString sub_1002A8BE4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1C0 = result;
  return result;
}

NSString sub_1002A8C1C()
{
  result = String._bridgeToObjectiveC()();
  qword_1006BA1C8 = result;
  return result;
}

uint64_t sub_1002A8C54()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = qword_1006A0788;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  sub_100009FC0(v4, v5, v6, v7, qword_1006BA1B8);

  v8 = [v1 defaultCenter];
  v9 = qword_1006A0790;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  sub_100009FC0(v10, v11, v12, v13, qword_1006BA1C0);

  v14 = [v1 defaultCenter];
  v15 = qword_1006A0798;

  if (v15 != -1)
  {
    swift_once();
  }

  [v14 addObserver:v0 selector:"disclosureAudioHasBeenGenerated:" name:qword_1006BA1C8 object:0];

  return v0;
}

uint64_t sub_1002A8E88(uint64_t a1)
{
  sub_1002A949C();
  swift_beginAccess();
  sub_1002A95B4(a1 + 16, v4);
  if (!v5)
  {
    return sub_1002A9624(v4);
  }

  sub_100009AB0(v4, v3);
  sub_1002A9624(v4);
  sub_100009B14(v3, v3[3]);
  sub_1002B3B78();
  return sub_100009B7C(v3);
}

uint64_t sub_1002A8F30(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t))
{
  v5 = a3;

  a4(v6);
}

void sub_1002A8FB4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = v4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v19 = type metadata accessor for Logger();
  sub_10000AF9C(v19, qword_1006BA670);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v26 = v18;
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, v27, v22, 2u);
    v18 = v26;
  }

  v23 = *(v7 + 56);
  if (v23)
  {
    aBlock[4] = a3;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004CEC;
    aBlock[3] = a4;
    v24 = _Block_copy(aBlock);
    v25 = v23;

    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10000AC00();
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v10 + 8))(v13, v8);
    (*(v15 + 8))(v18, v28);
  }
}

uint64_t sub_1002A92D8(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  sub_1002A95B4(a1 + 16, v6);
  if (!v7)
  {
    return sub_1002A9624(v6);
  }

  sub_100009AB0(v6, v5);
  sub_1002A9624(v6);
  sub_100009B14(v5, v5[3]);
  a2();
  return sub_100009B7C(v5);
}

uint64_t sub_1002A939C(void *a1, const char *a2)
{
  [a1 askProviderToAllowAudioInjection:1];
  if (qword_1006A0B50 != -1)
  {
    sub_100008194(&qword_1006A0B50);
  }

  v3 = type metadata accessor for Logger();
  sub_10000AF9C(v3, qword_1006BA670);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1002A949C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong askProviderToAllowAudioInjection:0];
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_1002A94F4()
{
  sub_1002A9624(v0 + 16);

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_1002A952C()
{
  sub_1002A94F4();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_1002A95B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&unk_1006A3310, &unk_10057E2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A9624(uint64_t a1)
{
  v2 = sub_10026D814(&unk_1006A3310, &unk_10057E2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002A96FC(uint64_t a1)
{
  v2 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  swift_beginAccess();
  sub_10003A270(a1 + v9, v4, &qword_1006A5360, &qword_10057CB80);
  if (sub_100015468(v4, 1, v5) == 1)
  {
    static Locale.current.getter();
    if (sub_100015468(v4, 1, v5) != 1)
    {
      sub_100009A04(v4, &qword_1006A5360, &qword_10057CB80);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  v10 = a1 + OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation;
  v11 = *(a1 + OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation);
  if (v11)
  {
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    v14 = (a1 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    sub_100009B14(v14, v14[3]);
    v15 = v11;

    sub_100380660();
    if ((v16 & 1) == 0)
    {
      (*(v6 + 8))(v8, v5);

      return;
    }

    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000AF9C(v17, qword_1006BA688);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = v13;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Start translation because we are notified that audio file has finished generation", v20, 2u);
      v13 = v26;
    }

    v21 = OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem;
    if (*(a1 + OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    *(a1 + v21) = 0;

    v22 = *v10;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    sub_1002B6738(v22, v23, v24);
    sub_1002AAA80(v15, v13, v12);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002A9A84(void *a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  if (*(a2 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = sub_1002AC028;
    v16[4] = 0;

    sub_1002B16A0();
  }

  else
  {
    v14 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(a2 + v14, v6, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v6, 1, v7) == 1)
    {
      static Locale.current.getter();
      if (sub_100015468(v6, 1, v7) != 1)
      {
        sub_100009A04(v6, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      (*(v8 + 32))(v13, v6, v7);
    }

    v18 = (a2 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    sub_100009B14(v18, v18[3]);
    sub_100380660();
    if (v19)
    {
      v20 = *(a2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v20)
      {
        v21 = v20;
        sub_1002A53B8();
      }

      sub_100009B14((a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(a1);
      sub_1002B0B74(1);
      return (*(v8 + 8))(v13, v7);
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000AF9C(v22, qword_1006BA688);
      (*(v8 + 16))(v11, v13, v7);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v45 = v43;
        *v25 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        v26 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v8;
        v29 = v28;
        v44 = *(v27 + 8);
        v44(v11, v7);
        v30 = sub_10002741C(v26, v29, &v45);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Disclosure files for %s do not exist! Not allowing translation", v25, 0xCu);
        sub_100009B7C(v43);
      }

      else
      {

        v44 = *(v8 + 8);
        v44(v11, v7);
      }

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
      v34 = objc_allocWithZone(NSError);
      v35 = sub_100323698(v31, v33, 3, 0);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v38 = 136315138;
        swift_getErrorValue();
        v40 = Error.localizedDescription.getter();
        v42 = sub_10002741C(v40, v41, &v45);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "Cannot start call translation for active call, error: %s", v38, 0xCu);
        sub_100009B7C(v39);
      }

      return (v44)(v13, v7);
    }
  }
}

void sub_1002AA308(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v6 - 8);
  v8 = &v41[-v7];
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v41[-v14];
  _Block_copy(a3);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1002B7324;
  *(v17 + 24) = v16;
  if (*(a2 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = sub_1002B6780;
    v21[4] = v17;
    _Block_copy(a3);
    _Block_copy(a3);

    sub_1002B16A0();
  }

  else
  {
    v45 = a1;
    v18 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(a2 + v18, v8, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v8, 1, v9) == 1)
    {
      _Block_copy(a3);
      _Block_copy(a3);

      static Locale.current.getter();
      v19 = v10;
      if (sub_100015468(v8, 1, v9) != 1)
      {
        sub_100009A04(v8, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      v19 = v10;
      (*(v10 + 32))(v15, v8, v9);
      _Block_copy(a3);
      _Block_copy(a3);
    }

    v22 = (a2 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    sub_100009B14(v22, v22[3]);
    sub_100380660();
    if (v23)
    {
      v24 = *(a2 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v24)
      {
        v25 = v24;
        sub_1002A53B8();
      }

      sub_100009B14((a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(a2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(v45);
      sub_1002B0B74(1);
      (*(v19 + 8))(v15, v9);
    }

    else
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000AF9C(v26, qword_1006BA688);
      (*(v19 + 16))(v13, v15, v9);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v43 = v29;
        v45 = swift_slowAlloc();
        v46 = v45;
        *v29 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        v42 = v28;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        v44 = *(v19 + 8);
        v44(v13, v9);
        v33 = sub_10002741C(v30, v32, &v46);

        v34 = v43;
        *(v43 + 1) = v33;
        _os_log_impl(&_mh_execute_header, v27, v42, "Disclosure files for %s do not exist! Not allowing translation", v34, 0xCu);
        sub_100009B7C(v45);

        v35 = v44;
      }

      else
      {

        v35 = *(v19 + 8);
        v35(v13, v9);
      }

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      v39 = objc_allocWithZone(NSError);
      v40 = sub_100323698(v36, v38, 3, 0);
      _Block_copy(a3);
      sub_1002B0904(v40, a3);

      v35(v15, v9);
    }
  }

  _Block_release(a3);
  _Block_release(a3);
  _Block_release(a3);
}

uint64_t sub_1002AAA80(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for Locale();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  if (*(v4 + OBJC_IVAR___CSDCallTranslationController_translationMode) > 1u)
  {
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a2;
    v21[4] = a3;

    sub_1002B16A0();
  }

  else
  {
    v18 = a1;
    v19 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
    swift_beginAccess();
    sub_10003A270(v4 + v19, v10, &qword_1006A5360, &qword_10057CB80);
    if (sub_100015468(v10, 1, v11) == 1)
    {
      static Locale.current.getter();
      if (sub_100015468(v10, 1, v11) != 1)
      {
        sub_100009A04(v10, &qword_1006A5360, &qword_10057CB80);
      }
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
    }

    v23 = (v4 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
    swift_beginAccess();
    sub_100009B14(v23, v23[3]);
    sub_100380660();
    if (v24)
    {
      v25 = *(v4 + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v25)
      {
        v26 = v25;
        sub_1002A53B8();
      }

      sub_100009B14((v4 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(v4 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
      sub_1002A9384(v18);
      sub_1002B0B74(1);
      (a2)(0);
      return (*(v12 + 8))(v17, v11);
    }

    else
    {
      v46 = a3;
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000AF9C(v27, qword_1006BA688);
      (*(v12 + 16))(v15, v17, v11);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v43 = v30;
        v44 = swift_slowAlloc();
        v47 = v44;
        *v30 = 136315138;
        sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
        v31 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = a2;
        v33 = v32;
        v34 = *(v12 + 8);
        v34(v15, v11);
        v35 = sub_10002741C(v31, v33, &v47);
        a2 = v45;

        v36 = v43;
        *(v43 + 1) = v35;
        _os_log_impl(&_mh_execute_header, v28, v29, "Disclosure files for %s do not exist! Not allowing translation", v36, 0xCu);
        sub_100009B7C(v44);

        v37 = v34;
      }

      else
      {

        v37 = *(v12 + 8);
        v37(v15, v11);
      }

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;
      v41 = objc_allocWithZone(NSError);
      v42 = sub_100323698(v38, v40, 3, 0);
      a2();

      return (v37)(v17, v11);
    }
  }
}

void sub_1002AB14C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  ObjectType = swift_getObjectType();
  v23 = [objc_allocWithZone(TUFeatureFlags) init];
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v5 = type metadata accessor for Logger();
  sub_1000075F0(v5, qword_1006BA688);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (sub_10000BB44(v7))
  {
    v8 = sub_100006DC4();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing CallTranslationController", v8, 2u);
    sub_100005F40(v8);
  }

  v9 = type metadata accessor for TranslationDisclosureController();
  swift_allocObject();
  v10 = sub_1002A8C54();
  swift_getObjectType();
  v11 = type metadata accessor for TranslationDisclosureDataSource(0);
  v12 = v1;
  v13 = v3;
  sub_10037EED0();
  v27[3] = v9;
  v27[4] = &off_1006232A8;
  v27[0] = v10;
  v25 = v11;
  v26 = &off_10062AA38;
  v24[0] = v14;
  v15 = objc_allocWithZone(ObjectType);
  sub_10001BDB8(v27, v9);
  sub_10000F2D8();
  __chkstk_darwin(v16);
  sub_10000E598();
  (*(v17 + 16))(ObjectType);
  sub_10001BDB8(v24, v25);
  sub_10000F2D8();
  __chkstk_darwin(v18);
  sub_100007FDC();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  sub_1002B6894(v13, *ObjectType, *v21, v23, v12, v15);
  sub_100009B7C(v24);
  sub_100009B7C(v27);
  swift_deallocPartialClassInstance();
  sub_100005EDC();
}

uint64_t sub_1002AB48C(void **a1)
{
  v2 = type metadata accessor for Locale();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000AF9C(v6, qword_1006BA688);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = &selRef_isInstalled;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v23 = v2;
    v12 = v11;
    v22 = swift_slowAlloc();
    v25 = v22;
    *v12 = 136315138;
    v13 = [v7 locale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = Locale.identifier.getter();
    v16 = v15;
    HIDWORD(v21) = v9;
    v17 = v24;
    (*(v24 + 8))(v4, v23);
    v18 = sub_10002741C(v14, v16, &v25);

    *(v12 + 4) = v18;
    v10 = &selRef_isInstalled;
    _os_log_impl(&_mh_execute_header, v8, BYTE4(v21), "Start generating disclosure for %s", v12, 0xCu);
    sub_100009B7C(v22);

    v2 = v23;
  }

  else
  {

    v17 = v24;
  }

  v19 = [v7 v10[343]];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002AB748();
  return (*(v17 + 8))(v4, v2);
}

void sub_1002AB748()
{
  sub_100005EF4();
  v79 = v0;
  v2 = v1;
  v3 = type metadata accessor for DisclosureRequest(0);
  sub_100008070();
  __chkstk_darwin(v4);
  sub_100007BAC();
  v82 = (v5 - v6);
  __chkstk_darwin(v7);
  v81 = &v76 - v8;
  v9 = type metadata accessor for LanguageManager();
  sub_100007FEC();
  v78 = v10;
  __chkstk_darwin(v11);
  sub_100007FDC();
  v77 = v13 - v12;
  v14 = type metadata accessor for Locale();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = (v19 - v18);
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v21 = type metadata accessor for Logger();
  sub_1000075F0(v21, qword_1006BA688);
  v22 = *(v16 + 16);
  v84 = v16 + 16;
  v80 = v22;
  v22(v20, v2, v14);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  v25 = os_log_type_enabled(v23, v24);
  v83 = v14;
  if (v25)
  {
    v26 = sub_100005274();
    v76 = v9;
    v27 = v26;
    v28 = sub_100005E84();
    v89[0] = v28;
    *v27 = 136315138;
    sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v14;
    v32 = v31;
    (*(v16 + 8))(v20, v30);
    v33 = sub_10002741C(v29, v32, v89);

    *(v27 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "downloadAndGenerateRemoteLocaleDisclosure for %s", v27, 0xCu);
    sub_100009B7C(v28);
    sub_100006868();
    v34 = v27;
    v9 = v76;
    sub_100005F40(v34);
  }

  else
  {

    (*(v16 + 8))(v20, v14);
  }

  [objc_allocWithZone(TUFeatureFlags) init];
  v35 = v77;
  LanguageManager.init(featureFlags:)();
  v36 = LanguageManager.mappedASRAssetIdentifier(for:useCase:)();
  v38 = v37;
  v40 = v39;
  (v78->info)(v35, v9);
  v41 = v79;
  v89[0] = Locale.identifier.getter();
  v89[1] = v42;
  v89[2] = v36;
  v89[3] = v38;
  v89[4] = v40;
  sub_100051D0C();

  v43 = Locale.identifier.getter();
  v45 = v44;
  v78 = @"CallServices";
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v46;

  v47._countAndFlagsBits = 47;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0xD000000000000014;
  v48._object = 0x80000001005613C0;
  String.append(_:)(v48);

  v49._countAndFlagsBits = v43;
  v49._object = v45;
  String.append(_:)(v49);

  v50 = v87;
  v51 = v88;
  v52 = v80;
  v53 = v81;
  v80(&v81[v3[5]], v2, v83);
  v54 = &v53[v3[9]];
  v54[3] = &type metadata for CallDisclosureFileLocation;
  v54[4] = &off_100631AF0;
  *v54 = v50;
  v54[1] = v51;
  *v53 = 0;
  v55 = &v53[v3[6]];
  *v55 = 0xD000000000000023;
  v55[1] = 0x8000000100564B30;
  v56 = &v53[v3[7]];
  *v56 = 0xD000000000000024;
  v56[1] = 0x8000000100564AD0;
  sub_10000B9F4();
  *v57 = v58;
  v57[1] = 0xEF6E6F6974616C73;
  v53[v3[10]] = 1;
  v59 = (v41 + OBJC_IVAR___CSDCallTranslationController_disclosureDataSource);
  swift_beginAccess();
  sub_100009B14(v59, v59[3]);
  sub_10037F794();

  v60 = Locale.identifier.getter();
  v62 = v61;
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v63;

  v64._countAndFlagsBits = 47;
  v64._object = 0xE100000000000000;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0xD000000000000013;
  v65._object = 0x80000001005613E0;
  String.append(_:)(v65);

  v66._countAndFlagsBits = v60;
  v66._object = v62;
  String.append(_:)(v66);

  v67 = v85;
  v68 = v86;
  v69 = v82;
  v52(&v82[v3[5]], v2, v83);
  v70 = &v69[v3[9]];
  v70[3] = &type metadata for CallDisclosureFileLocation;
  v70[4] = &off_100631AF0;
  *v70 = v67;
  v70[1] = v68;
  *v69 = 1;
  v71 = &v69[v3[6]];
  *v71 = 0xD000000000000022;
  v71[1] = 0x8000000100564B60;
  v72 = &v69[v3[7]];
  *v72 = 0xD000000000000023;
  v72[1] = 0x8000000100564AA0;
  sub_10000B9F4();
  *v73 = v74;
  v73[1] = 0xEF6E6F6974616C73;
  v69[v3[10]] = v75;
  sub_100009B14(v59, v59[3]);
  sub_10037F794();

  sub_1002B66D4(v69);
  sub_1002B66D4(v53);
  sub_100005EDC();
}

id sub_1002ABE24()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for CallTranslationController(uint64_t a1)
{
  result = qword_1006A33C0;
  if (!qword_1006A33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AC028(uint64_t a1)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000AF9C(v1, qword_1006BA688);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      swift_getErrorValue();
      v5 = Error.localizedDescription.getter();
      v7 = sub_10002741C(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Cannot start call translation for active call, error: %s", v3, 0xCu);
      sub_100009B7C(v4);
    }

    else
    {
    }
  }
}

uint64_t sub_1002AC628(void *a1, char a2, uint64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v41[3] = a4;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v41 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = *(a5 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v16)
  {
    v17 = a6;
    v18 = [v16 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for UUID();
    sub_10000AF74(v14, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    sub_10000AF74(v14, 1, 1, v20);
    v21 = a6;
  }

  v22 = *(a5 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v22)
  {
    v23 = [v22 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for UUID();
  sub_10000AF74(v12, v24, 1, v25);
  type metadata accessor for AudioSessionProvider();
  v26 = sub_10003F454(a1);
  if (v26)
  {
    v27 = v26;
    sub_1002B2144();
    if (*(v28 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v30 = swift_allocObject();
      *(v30 + 16) = sub_1002B6884;
      *(v30 + 24) = v15;
      aBlock[4] = sub_1002B688C;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002B306C;
      aBlock[3] = &unk_1006236E8;
      v31 = _Block_copy(aBlock);

      [v27 setAudioSessionPropertiesWithProperties:isa completion:v31];
      _Block_release(v31);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000AF9C(v36, qword_1006BA688);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "setAudioSessionProperties empty", v39, 2u);
      }

      sub_1002B30EC(0, a6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000AF9C(v32, qword_1006BA688);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Couldn't get audio session for call", v35, 2u);
    }

    sub_1002B30EC(0, a6);
  }

  sub_100009A04(v12, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v14, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_1002ACB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const char *a21)
{
  sub_100005EF4();
  v64 = v21;
  v62 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v29 - 8);
  sub_100007BAC();
  v32 = v30 - v31;
  __chkstk_darwin(v33);
  v35 = &v61 - v34;
  v36 = *(v26 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v36)
  {
    v37 = [v36 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = type metadata accessor for UUID();
    v39 = 0;
  }

  else
  {
    v38 = type metadata accessor for UUID();
    v39 = 1;
  }

  v63 = a21;
  v40 = 1;
  sub_10000AF74(v35, v39, 1, v38);
  v41 = *(v26 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v41)
  {
    v42 = [v41 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  v43 = type metadata accessor for UUID();
  sub_10000AF74(v32, v40, 1, v43);
  type metadata accessor for AudioSessionProvider();
  v44 = sub_10003F454(v28);
  if (v44)
  {
    v45 = v44;
    sub_1002B2144();
    if (*(v46 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v65[4] = v24;
      v65[5] = 0;
      sub_100009FE4();
      v65[1] = 1107296256;
      v65[2] = sub_1002B306C;
      v65[3] = v62;
      v48 = _Block_copy(v65);

      [v45 setAudioSessionPropertiesWithProperties:isa completion:v48];
      _Block_release(v48);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        sub_1000081B4(&qword_1006A0B58);
      }

      v54 = type metadata accessor for Logger();
      sub_1000075F0(v54, qword_1006BA688);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.fault.getter();
      if (sub_10000BB44(v56))
      {
        v57 = sub_100006DC4();
        sub_10000D6E8(v57);
        sub_100015CC0(&_mh_execute_header, v58, v56, "setAudioSessionProperties empty");
        sub_100006868();
      }

      sub_1002AE364(0, v64, v63);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v49 = type metadata accessor for Logger();
    sub_1000075F0(v49, qword_1006BA688);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (sub_10000BB44(v51))
    {
      v52 = sub_100006DC4();
      sub_10000D6E8(v52);
      sub_100015CC0(&_mh_execute_header, v53, v51, "Couldn't get audio session for call");
      sub_100006868();
    }

    sub_1002AE364(0, v64, v63);
  }

  v59 = sub_100006B30();
  sub_100009A04(v59, v60, &unk_10057C9D0);
  sub_100009A04(v35, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100005EDC();
}

uint64_t sub_1002ACEB4(void *a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, void *a6, void *a7, void (*a8)(void), uint64_t a9)
{
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v14 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v49 = a8;
  v20[4] = a8;
  v20[5] = a9;
  v21 = *(a5 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
  if (v21)
  {
    v22 = a6;
    v23 = a7;

    v24 = [v21 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for UUID();
    sub_10000AF74(v19, 0, 1, v25);
  }

  else
  {
    v26 = type metadata accessor for UUID();
    sub_10000AF74(v19, 1, 1, v26);
    v27 = a6;
    v28 = a7;
  }

  v29 = *(a5 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
  if (v29)
  {
    v30 = [v29 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = type metadata accessor for UUID();
  sub_10000AF74(v17, v31, 1, v32);
  type metadata accessor for AudioSessionProvider();
  v33 = sub_10003F454(a1);
  if (v33)
  {
    v34 = v33;
    sub_1002B2144();
    if (*(v35 + 16))
    {
      sub_10026D814(&qword_1006A6660, &qword_10057E270);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v37 = swift_allocObject();
      *(v37 + 16) = sub_1002B71F0;
      *(v37 + 24) = v20;
      aBlock[4] = sub_1002B7320;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1002B306C;
      aBlock[3] = &unk_100623760;
      v38 = _Block_copy(aBlock);

      [v34 setAudioSessionPropertiesWithProperties:isa completion:v38];
      _Block_release(v38);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000AF9C(v43, qword_1006BA688);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "setAudioSessionProperties empty", v46, 2u);
      }

      sub_1002B1F0C(0, a6, a7, v49);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000AF9C(v39, qword_1006BA688);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Couldn't get audio session for call", v42, 2u);
    }

    sub_1002B1F0C(0, a6, a7, v49);
  }

  sub_100009A04(v17, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v19, &unk_1006A3DD0, &unk_10057C9D0);
}

void sub_1002AD448(void *a1, void *a2, unsigned int a3, char *a4, void (**a5)(void, void))
{
  v10 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v71 = &v68 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&a4[OBJC_IVAR___CSDCallTranslationController_queue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v72 = a3;
    v73 = a5;
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA688);
  v22 = a1;
  v23 = a2;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  v26 = os_log_type_enabled(v24, v25);
  v70 = v13;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v75 = v69;
    *v27 = 136315650;
    v74 = v72;
    v29 = String.init<A>(reflecting:)();
    v31 = sub_10002741C(v29, v30, &v75);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v22;
    *(v27 + 22) = 2112;
    *(v27 + 24) = v23;
    *v28 = v22;
    v28[1] = v23;
    v32 = v22;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "Requested to STOP translation reason: %s using request %@ for call %@", v27, 0x20u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    sub_100009B7C(v69);
  }

  v34 = *&a4[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (v34)
  {
    v35 = a4;
    v36 = v34;
    sub_1002AC628(v23, 0, 0, 0, v35, v35);
    if (*&v35[OBJC_IVAR___CSDCallTranslationController_translationMode] >= 2u)
    {
      v66 = v23;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v75 = v54;
        *v53 = 136315138;
        v55 = v72;
        v74 = v72;
        v56 = String.init<A>(reflecting:)();
        v58 = sub_10002741C(v56, v57, &v75);

        *(v53 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v51, v52, "force stop trasnlation for video call, reason: %s", v53, 0xCu);
        sub_100009B7C(v54);

        v67 = v73;
      }

      else
      {

        v67 = v73;
        v55 = v72;
      }

      sub_1002B10D4(v55);
    }

    else
    {
      v37 = sub_1002A5A50();
      sub_10026D814(&unk_1006A3460, &unk_10057E260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v37;
      sub_1002B32F8(inited);
      v66 = v23;
      swift_setDeallocating();
      v67 = v73;
      v73[2](v73, 0);
    }

    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v59 = type metadata accessor for Locale();
    v60 = v71;
    sub_10000AF74(v71, 1, 1, v59);
    v61 = v70;
    sub_10000AF74(v70, 1, 1, v59);
    v62 = [v66 callUUID];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    sub_10046EE78(v60, v61, v63, v65);

    sub_100009A04(v61, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v60, &qword_1006A5360, &qword_10057CB80);
  }

  else
  {
    v39 = v23;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&_mh_execute_header, v40, v41, "No translation session found for call %@ to stop translation", v42, 0xCu);
      sub_100009A04(v43, &unk_1006A2630, &qword_10057CB40);
    }

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
    v48 = objc_allocWithZone(NSError);
    v49 = sub_100323698(v45, v47, 12, 0);
    v50 = _convertErrorToNSError(_:)();
    v67 = v73;
    (v73)[2](v73, v50);
  }

  _Block_release(v67);
}

void sub_1002ADC8C()
{
  sub_100005EF4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  __chkstk_darwin(v8 - 8);
  sub_100007BAC();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v74 = &v72 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = *&v1[OBJC_IVAR___CSDCallTranslationController_queue];
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v14);
  if (v21)
  {
    v75 = v3;
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4(&qword_1006A0B58);
LABEL_3:
  v23 = type metadata accessor for Logger();
  sub_10000AF9C(v23, qword_1006BA688);
  v24 = v7;
  v25 = v5;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  v28 = os_log_type_enabled(v26, v27);
  v73 = v11;
  if (v28)
  {
    v29 = sub_100005E84();
    v30 = swift_slowAlloc();
    v72 = sub_100005E84();
    v77 = v72;
    *v29 = 136315650;
    v76 = v75;
    v31 = String.init<A>(reflecting:)();
    LOBYTE(v20) = v1;
    v33 = sub_10002741C(v31, v32, &v77);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v24;
    *(v29 + 22) = 2112;
    *(v29 + 24) = v25;
    *v30 = v24;
    v30[1] = v25;
    v34 = v24;
    v35 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "Requested to STOP translation reason: %s using request %@ for call %@", v29, 0x20u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();
    sub_100005F40(v30);
    v36 = v72;
    sub_100009B7C(v72);
    sub_100005F40(v36);
    sub_100005F40(v29);
  }

  v37 = *&v1[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (v37)
  {
    v38 = v1;
    v39 = v37;
    sub_1002AC628(v25, 0, 0, 0, v38, v38);
    if (*&v38[OBJC_IVAR___CSDCallTranslationController_translationMode] >= 2u)
    {
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (sub_10000689C(v56))
      {
        v57 = sub_100005274();
        v58 = v25;
        v59 = sub_100005E84();
        v77 = v59;
        *v57 = 136315138;
        v60 = v75;
        v76 = v75;
        v61 = String.init<A>(reflecting:)();
        v63 = sub_10002741C(v61, v62, &v77);

        *(v57 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v55, v20, "force stop trasnlation for video call, reason: %s", v57, 0xCu);
        sub_100009B7C(v59);
        v64 = v59;
        v25 = v58;
        sub_100005F40(v64);
        sub_100005F40(v57);
      }

      else
      {

        v60 = v75;
      }

      sub_1002B10D4(v60);
    }

    else
    {
      v40 = sub_1002A5A50();
      sub_10026D814(&unk_1006A3460, &unk_10057E260);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057D690;
      *(inited + 32) = v40;
      sub_1002B32F8(inited);
      swift_setDeallocating();
    }

    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v65 = type metadata accessor for Locale();
    v66 = v74;
    sub_10000AF74(v74, 1, 1, v65);
    v67 = v73;
    sub_10000AF74(v73, 1, 1, v65);
    v68 = [v25 callUUID];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    sub_10046EE78(v66, v67, v69, v71);

    sub_100009A04(v67, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v66, &qword_1006A5360, &qword_10057CB80);
  }

  else
  {
    v42 = v25;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v43, v44))
    {
      sub_100005274();
      v45 = sub_100007974();
      *v25 = 138412290;
      *(v25 + 1) = v42;
      *v45 = v42;
      v46 = v42;
      sub_100008A6C();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_100009A04(v45, &unk_1006A2630, &qword_10057CB40);
      sub_100006868();
      sub_100005F40(v25);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = objc_allocWithZone(NSError);
    v53 = sub_100006B30();
  }

  sub_100005EDC();
}

void sub_1002AE364(char a1, const char *a2, const char *a3)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v4 = type metadata accessor for Logger();
    sub_1000075F0(v4, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = sub_100006DC4();
      *v6 = 0;
      v7 = v5;
      v8 = oslog;
      v9 = a2;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v8, v7, v9, v6, 2u);
      sub_100005F40(v6);
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v11 = type metadata accessor for Logger();
    sub_1000075F0(v11, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v6 = sub_100006DC4();
      *v6 = 0;
      v7 = v12;
      v8 = oslog;
      v9 = a3;
      goto LABEL_10;
    }
  }
}

void sub_1002AE4A8(void *a1, void *a2, char *a3, void (**a4)(void, void))
{
  v51 = a2;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&a3[OBJC_IVAR___CSDCallTranslationController_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  _Block_copy(a4);
  _Block_copy(a4);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if ([*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] audioCallTranslationEnabled])
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = a1;
      v20 = [v18 remoteLocale];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1002AB748();
      (*(v8 + 8))(v10, v7);
      _Block_copy(a4);
      sub_1002AEA80(v18, v51, a3, a4);
    }

    else
    {
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
        _Block_copy(a4);
        v39 = a1;
        sub_1002AD448(v38, v51, 0, a3, a4);
      }

      else
      {
        if (qword_1006A0B58 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000AF9C(v40, qword_1006BA688);
        v41 = a1;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v52 = v41;
          v53 = v45;
          *v44 = 136315138;
          sub_100006AF0(0, &unk_1006A3450, TUCallTranslationRequest_ptr);
          v46 = v41;
          v47 = String.init<A>(reflecting:)();
          v49 = sub_10002741C(v47, v48, &v53);

          *(v44 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "Unhandled call translation request %s", v44, 0xCu);
          sub_100009B7C(v45);
        }

        a4[2](a4, 0);
      }
    }

    goto LABEL_9;
  }

  if (qword_1006A0B58 != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v21 = type metadata accessor for Logger();
  sub_10000AF9C(v21, qword_1006BA688);
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v52 = v22;
    v53 = v26;
    *v25 = 136315138;
    sub_100006AF0(0, &unk_1006A3450, TUCallTranslationRequest_ptr);
    v27 = v22;
    v28 = String.init<A>(reflecting:)();
    v30 = sub_10002741C(v28, v29, &v53);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Call translation feature flag is not enabled, dropping %s", v25, 0xCu);
    sub_100009B7C(v26);
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  v34 = objc_allocWithZone(NSError);
  v35 = sub_100323698(v31, v33, 2, 0);
  v36 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v36);

LABEL_9:
  _Block_release(a4);
  _Block_release(a4);
  _Block_release(a4);
}

void sub_1002AEA80(void *a1, void *a2, _BYTE *a3, void (**a4)(void, void))
{
  v235 = type metadata accessor for DispatchTimeInterval();
  v233 = *(v235 - 8);
  __chkstk_darwin(v235);
  v231 = (&v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = type metadata accessor for DispatchTime();
  v232 = *(v234 - 8);
  v9 = __chkstk_darwin(v234);
  v229 = &v221 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v230 = &v221 - v11;
  v227 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v227);
  v228 = &v221 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v14 = __chkstk_darwin(v13 - 8);
  v239 = &v221 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v238 = &v221 - v17;
  v18 = __chkstk_darwin(v16);
  v246 = &v221 - v19;
  __chkstk_darwin(v18);
  v247 = &v221 - v20;
  v249 = type metadata accessor for Locale();
  v242 = *(v249 - 8);
  v21 = __chkstk_darwin(v249);
  v226 = &v221 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v237 = &v221 - v24;
  v25 = __chkstk_darwin(v23);
  v244 = &v221 - v26;
  __chkstk_darwin(v25);
  v243 = (&v221 - v27);
  v28 = sub_10026D814(&qword_1006A5360, &qword_10057CB80);
  v29 = __chkstk_darwin(v28 - 8);
  v236 = &v221 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v241 = &v221 - v32;
  v33 = __chkstk_darwin(v31);
  v240 = &v221 - v34;
  __chkstk_darwin(v33);
  v36 = &v221 - v35;
  v37 = type metadata accessor for DispatchPredicate();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = (&v221 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = swift_allocObject();
  *(v248 + 16) = a4;
  v41 = *&a3[OBJC_IVAR___CSDCallTranslationController_queue];
  *v40 = v41;
  (*(v38 + 104))(v40, enum case for DispatchPredicate.onQueue(_:), v37);
  _Block_copy(a4);
  _Block_copy(a4);
  v245 = v41;
  v42 = _dispatchPreconditionTest(_:)();
  (*(v38 + 8))(v40, v37);
  if (v42)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v43 = type metadata accessor for Logger();
  v44 = sub_10000AF9C(v43, qword_1006BA688);
  v45 = a1;
  v46 = a2;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v44;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412546;
    *(v50 + 4) = v45;
    *(v50 + 12) = 2112;
    *(v50 + 14) = v46;
    *v51 = v45;
    v51[1] = v46;
    v52 = v45;
    v53 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "Requested to START translation using request %@ for call %@", v50, 0x16u);
    sub_10026D814(&unk_1006A2630, &qword_10057CB40);
    swift_arrayDestroy();

    v44 = v49;
  }

  v54 = [v45 translationLinks];
  v55 = OBJC_IVAR___CSDCallTranslationController_translationLinks;
  *&a3[OBJC_IVAR___CSDCallTranslationController_translationLinks] = v54;
  v56 = [v45 remoteAudioMode];
  *&a3[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode] = v56;
  v57 = [v45 remoteLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000AF74(v36, 0, 1, v249);
  v58 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  swift_beginAccess();
  sub_1002B723C(v36, &a3[v58], &qword_1006A5360, &qword_10057CB80);
  swift_endAccess();
  if (([v45 translationMode] == 2 || !objc_msgSend(v45, "translationMode")) && (objc_msgSend(*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags], "transcriptTranslationEnabled") & 1) == 0)
  {
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      v125 = "TranscriptTranslation feature flag is not enabled! Not allowing translation";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v122, v123, v125, v124, 2u);
    }

LABEL_46:

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;
    objc_allocWithZone(NSError);
    v65 = v126;
    v66 = v128;
    v67 = 2;
LABEL_47:
    v129 = sub_100323698(v65, v66, v67, 0);
    v130 = _convertErrorToNSError(_:)();
    (a4)[2](a4, v130);

LABEL_48:

LABEL_80:
    _Block_release(a4);
    _Block_release(a4);
    return;
  }

  v224 = v58;
  if ([v45 translationMode] != 1)
  {
    goto LABEL_14;
  }

  if (![*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] voiceTranslationEnabled])
  {
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      v125 = "VoiceTranslation feature flag is not enabled! Not allowing translation";
      goto LABEL_45;
    }

    goto LABEL_46;
  }

  if ([v46 isVideo])
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Video call doesn't support audio only translation! Not allowing translation", v61, 2u);
    }

    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
    objc_allocWithZone(NSError);
    v65 = v62;
    v66 = v64;
    v67 = 9;
    goto LABEL_47;
  }

LABEL_14:
  if (![v45 translationMode])
  {
    if (([*&a3[OBJC_IVAR___CSDCallTranslationController_featureFlags] voiceTranslationEnabled] & 1) == 0)
    {
      [v45 setTranslationMode:2];
      v222 = v44;
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "VoiceTranslation feature flag is not enabled! Falling back to text only translation", v70, 2u);
      }

      v44 = v222;
    }

    if ([v46 isVideo])
    {
      [v45 setTranslationMode:2];
      v71 = v44;
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Video call doesn't support audio and text translation! Falling back to text only translation", v74, 2u);
      }

      v44 = v71;
    }
  }

  v225 = a4;
  v75 = [v45 translationMode];
  v76 = OBJC_IVAR___CSDCallTranslationController_translationMode;
  *&a3[OBJC_IVAR___CSDCallTranslationController_translationMode] = v75;
  v77 = a3[v55];
  v223 = v76;
  if ((v77 & 2) != 0)
  {
    v78 = [v45 localLocale];
    v79 = v243;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = [v45 remoteLocale];
    v81 = v244;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v82 = objc_allocWithZone(STSpeechTranslatorConfiguration);
    v83 = sub_1002B6354(v79, v81);
    v84 = v83;
    if (*&a3[v76] == 2)
    {
      [v83 setOmitTranslatedAudio:1];
    }

    v85 = objc_allocWithZone(STSpeechTranslatorClient);
    v86 = [v85 initWithConfiguration:v84 delegate:a3 delegateQueue:v245];
    v87 = OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator;
    v88 = *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator] = v86;

    if (!*&a3[v87])
    {
      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&_mh_execute_header, v168, v169, "Failed to create uplinkSpeechTranslator", v170, 2u);
      }

      v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v173 = v172;
      v174 = objc_allocWithZone(NSError);
      v129 = sub_100323698(v171, v173, 10, 0);
      v130 = _convertErrorToNSError(_:)();
      a4 = v225;
      (v225)[2](v225, v130);

      goto LABEL_48;
    }

    v221 = v84;
    v89 = a3;
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v44;
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = *&a3[v87];
      if (!v95)
      {
        v219 = v225;
        _Block_release(v225);
        _Block_release(v219);
        __break(1u);
        goto LABEL_88;
      }

      v96 = v94;
      *(v93 + 4) = v95;
      *v94 = v95;
      v97 = v95;
      _os_log_impl(&_mh_execute_header, v90, v91, "Created uplinkSpeechTranslator: %@", v93, 0xCu);
      sub_100009A04(v96, &unk_1006A2630, &qword_10057CB40);

      v44 = v92;
      v76 = v223;
    }
  }

  v98 = v247;
  if ((a3[v55] & 1) == 0)
  {
    goto LABEL_39;
  }

  v99 = [v45 remoteLocale];
  v100 = v243;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = [v45 localLocale];
  v102 = v244;
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v103 = objc_allocWithZone(STSpeechTranslatorConfiguration);
  v104 = sub_1002B6354(v100, v102);
  v105 = v104;
  if (*&a3[v76] == 2)
  {
    [v104 setOmitTranslatedAudio:1];
  }

  v106 = objc_allocWithZone(STSpeechTranslatorClient);
  v107 = [v106 initWithConfiguration:v105 delegate:a3 delegateQueue:v245];
  v108 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v109 = *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator] = v107;

  if (!*&a3[v108])
  {
    v182 = Logger.logObject.getter();
    v183 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&_mh_execute_header, v182, v183, "Failed to create downlinkSpeechTranslator", v184, 2u);
    }

    v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v186;
    v188 = objc_allocWithZone(NSError);
    v129 = sub_100323698(v185, v187, 11, 0);
    v130 = _convertErrorToNSError(_:)();
    a4 = v225;
    (v225)[2](v225, v130);

    goto LABEL_48;
  }

  v110 = a3;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v111, v112))
  {
LABEL_38:

LABEL_39:
    v222 = v44;
    v119 = *&a3[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    if (v119)
    {
      v120 = [v119 translatorIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v121 = 0;
    }

    else
    {
      v121 = 1;
    }

    v131 = type metadata accessor for UUID();
    v132 = 1;
    sub_10000AF74(v98, v121, 1, v131);
    v133 = *&a3[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
    if (v133)
    {
      v134 = [v133 translatorIdentifier];
      v135 = v246;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v132 = 0;
      a4 = v225;
    }

    else
    {
      a4 = v225;
      v135 = v246;
    }

    sub_10000AF74(v135, v132, 1, v131);
    v136 = v238;
    sub_10003A270(v98, v238, &unk_1006A3DD0, &unk_10057C9D0);
    v137 = v135;
    v138 = v239;
    sub_10003A270(v137, v239, &unk_1006A3DD0, &unk_10057C9D0);
    v139 = objc_allocWithZone(type metadata accessor for CallTranslationSession(0));
    v140 = v45;
    v141 = v46;
    v142 = sub_1002A4204(v140, v141, v136, v138);
    v143 = OBJC_IVAR___CSDCallTranslationController_translationSession;
    v144 = *&a3[OBJC_IVAR___CSDCallTranslationController_translationSession];
    *&a3[OBJC_IVAR___CSDCallTranslationController_translationSession] = v142;

    v145 = *&a3[v143];
    if (v145)
    {
      v146 = v145;
      v147 = sub_1002A4CAC();
    }

    else
    {
      v147 = 0;
    }

    v148 = v249;
    v149 = v240;
    [v141 setTranslationSession:v147];

    [v141 setTranslationDisclosureLocation:*&a3[OBJC_IVAR___CSDCallTranslationController_disclosureLocation]];
    v150 = *&a3[v143];
    if (v150)
    {
      v151 = *(v242 + 16);
      v151(v149, v150 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_localLocale, v148);
      sub_10000AF74(v149, 0, 1, v148);
      v152 = v241;
      v151(v241, v150 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v148);
      v153 = 0;
    }

    else
    {
      v153 = 1;
      sub_10000AF74(v149, 1, 1, v148);
      v152 = v241;
    }

    v154 = v149;
    sub_10000AF74(v152, v153, 1, v148);
    type metadata accessor for CallTranslationRTTHelper();
    swift_initStaticObject();
    v155 = [v141 callUUID];
    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;

    sub_10046EE78(v154, v152, v156, v158);

    sub_100009A04(v152, &qword_1006A5360, &qword_10057CB80);
    sub_100009A04(v154, &qword_1006A5360, &qword_10057CB80);
    if ([v141 status] == 1)
    {
      v159 = v247;
      if (*&a3[v223] < 2u)
      {
        v160 = v236;
        sub_10003A270(&a3[v224], v236, &qword_1006A5360, &qword_10057CB80);
        if (sub_100015468(v160, 1, v148) == 1)
        {
          v161 = v237;
          static Locale.current.getter();
          if (sub_100015468(v160, 1, v148) != 1)
          {
            sub_100009A04(v160, &qword_1006A5360, &qword_10057CB80);
          }
        }

        else
        {
          v161 = v237;
          (*(v242 + 32))(v237, v160, v148);
        }

        v189 = &a3[OBJC_IVAR___CSDCallTranslationController_disclosureDataSource];
        swift_beginAccess();
        sub_100009B14(v189, v189[3]);
        sub_100380660();
        if ((v190 & 1) == 0)
        {
          v191 = v242;
          v192 = v226;
          (*(v242 + 16))(v226, v161, v148);
          v193 = Logger.logObject.getter();
          v194 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v193, v194))
          {
            v195 = swift_slowAlloc();
            v243 = swift_slowAlloc();
            aBlock[0] = v243;
            *v195 = 136315138;
            sub_10000ECD8(&qword_1006A3448, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
            v196 = dispatch thunk of CustomStringConvertible.description.getter();
            v197 = v192;
            v198 = v196;
            v200 = v199;
            v201 = *(v191 + 8);
            v244 = ((v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v201(v197, v148);
            v202 = sub_10002741C(v198, v200, aBlock);

            *(v195 + 4) = v202;
            _os_log_impl(&_mh_execute_header, v193, v194, "Disclosure files for %s do not exist! Waiting for download", v195, 0xCu);
            sub_100009B7C(v243);
          }

          else
          {

            v201 = *(v191 + 8);
            v244 = ((v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v201(v192, v148);
          }

          a4 = v225;
          v203 = v235;
          v204 = &a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
          v205 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
          v206 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation + 8];
          v207 = *&a3[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation + 16];
          *v204 = v141;
          v204[1] = sub_1002B6730;
          v204[2] = v248;
          v208 = v141;

          sub_1002B6738(v205, v206, v207);
          v209 = swift_allocObject();
          *(v209 + 16) = a3;
          aBlock[4] = sub_1002B6778;
          aBlock[5] = v209;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100004CEC;
          aBlock[3] = &unk_100623490;
          _Block_copy(aBlock);
          v250 = _swiftEmptyArrayStorage;
          sub_10000ECD8(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          v210 = a3;
          sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
          sub_1000057D0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          type metadata accessor for DispatchWorkItem();
          swift_allocObject();
          v211 = DispatchWorkItem.init(flags:block:)();

          *&v210[OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem] = v211;

          v212 = v229;
          static DispatchTime.now()();
          v213 = v231;
          *v231 = 3;
          v214 = v233;
          (*(v233 + 104))(v213, enum case for DispatchTimeInterval.seconds(_:), v203);
          v215 = v230;
          + infix(_:_:)();
          (*(v214 + 8))(v213, v203);
          v216 = *(v232 + 8);
          v217 = v212;
          v218 = v234;
          v216(v217, v234);
          OS_dispatch_queue.asyncAfter(deadline:execute:)();

          v216(v215, v218);
          v201(v237, v249);
          sub_100009A04(v246, &unk_1006A3DD0, &unk_10057C9D0);
          sub_100009A04(v247, &unk_1006A3DD0, &unk_10057C9D0);
          goto LABEL_79;
        }

        (*(v242 + 8))(v161, v148);
      }

      _Block_copy(a4);

      sub_1002AA308(v141, a3, a4);

      sub_100009A04(v246, &unk_1006A3DD0, &unk_10057C9D0);
      v181 = v159;
    }

    else
    {
      v162 = v141;
      v163 = Logger.logObject.getter();
      v164 = static os_log_type_t.info.getter();
      v165 = os_log_type_enabled(v163, v164);
      v166 = v247;
      if (v165)
      {
        v167 = swift_slowAlloc();
        *v167 = 67109120;
        *(v167 + 4) = [v162 status];

        _os_log_impl(&_mh_execute_header, v163, v164, "call status is %d, only starting translation when call is connected", v167, 8u);
      }

      else
      {

        v163 = v162;
      }

      v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v177 = v176;
      v178 = objc_allocWithZone(NSError);
      v179 = sub_100323698(v175, v177, 5, 0);
      v180 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v180);

      sub_100009A04(v246, &unk_1006A3DD0, &unk_10057C9D0);
      v181 = v166;
    }

    sub_100009A04(v181, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_79:

    goto LABEL_80;
  }

  v113 = v44;
  v114 = swift_slowAlloc();
  v115 = swift_slowAlloc();
  *v114 = 138412290;
  v116 = *&a3[v108];
  if (v116)
  {
    v117 = v115;
    *(v114 + 4) = v116;
    *v115 = v116;
    v118 = v116;
    _os_log_impl(&_mh_execute_header, v111, v112, "Created downlinkSpeechTranslator: %@", v114, 0xCu);
    sub_100009A04(v117, &unk_1006A2630, &qword_10057CB40);

    v98 = v247;
    v44 = v113;
    goto LABEL_38;
  }

LABEL_88:
  v220 = v225;
  _Block_release(v225);
  _Block_release(v220);
  __break(1u);
}

char *sub_1002B073C(char *result)
{
  v1 = &result[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  v2 = *&result[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  if (v2)
  {
    v3 = *(v1 + 1);
    v4 = qword_1006A0B58;
    v5 = v2;

    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000AF9C(v6, qword_1006BA688);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Disclosure audio file generation timed out.", v9, 2u);
    }

    [v5 setTranslationSession:0];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    v13 = objc_allocWithZone(NSError);

    v14 = sub_100323698(v10, v12, 3, 0);
    v3();

    v15 = *v1;
    v16 = *(v1 + 1);
    v17 = *(v1 + 2);
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *v1 = 0;

    return sub_1002B6738(v15, v16, v17);
  }

  return result;
}

void sub_1002B0904(uint64_t a1, void (**aBlock)(void, void))
{
  if (a1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v10 code];
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_allocWithZone(NSError);
    v8 = sub_100323698(v3, v5, v6, 0);
    v9 = _convertErrorToNSError(_:)();
    (aBlock)[2](aBlock, v9);

    _Block_release(aBlock);
  }

  else
  {

    _Block_release(aBlock);
  }
}

void sub_1002B0A5C(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    swift_errorRetain();
    sub_10026D814(&unk_1006A2610, &qword_10057D4A0);
    sub_100006AF0(0, &qword_1006A2B90, NSError_ptr);
    if (swift_dynamicCast())
    {
      v6 = [v9 code];
    }

    else
    {
      v6 = 0;
    }

    v7 = objc_allocWithZone(NSError);
    v8 = sub_100323698(v3, v5, v6, 0);
    a2();
  }
}

void sub_1002B0B74(char a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LanguageManager();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___CSDCallTranslationController_translationSession;
  if (*(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      if (([v31 isRTT] & 1) != 0 || objc_msgSend(v31, "isTTY"))
      {
        [objc_allocWithZone(TUFeatureFlags) init];
        LanguageManager.init(featureFlags:)();
        v13 = 0xD000000000000023;
        if (a1)
        {
          v13 = 0xD000000000000024;
        }

        v30 = v13;
        if (a1)
        {
          v14 = "_STOP_DISCLOSURE_V2";
        }

        else
        {
          v14 = "AndStartTranslation";
        }

        v15 = TUBundle();
        if (v15)
        {
          v16 = v15;
          v17 = *(v1 + v11);
          if (v17)
          {
            (*(v4 + 16))(v6, v17 + OBJC_IVAR____TtC13callservicesd22CallTranslationSession_remoteLocale, v3);
            v18 = Locale.identifier.getter();
            v20 = v19;
            (*(v4 + 8))(v6, v3);
          }

          else
          {
            v18 = 0;
            v20 = 0;
          }

          v21._countAndFlagsBits = 0x6E6172546C6C6143;
          v21._object = 0xEF6E6F6974616C73;
          v22._object = (v14 | 0x8000000000000000);
          v22._countAndFlagsBits = v30;
          v23.value._countAndFlagsBits = v18;
          v23.value._object = v20;
          v24 = LanguageManager.localizedString(forKey:table:bundle:languageCode:)(v22, v21, v16, v23);

          (*(v8 + 8))(v10, v7);
          type metadata accessor for CallTranslationRTTHelper();
          swift_initStaticObject();
          v25 = [v31 callUUID];

          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          sub_10046EC98(v24.value._countAndFlagsBits, v24.value._object, v26, v28);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        v29 = v31;
      }
    }
  }
}

void sub_1002B0EF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      v7 = *(Strong + OBJC_IVAR___CSDCallTranslationController_translationSession);
      if (v7)
      {
        v8 = qword_1006A0B58;
        v9 = v7;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_10000AF9C(v10, qword_1006BA688);
        swift_errorRetain();
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          *v13 = 138412290;
          swift_errorRetain();
          v15 = _swift_stdlib_bridgeErrorToNSError();
          *(v13 + 4) = v15;
          *v14 = v15;
          _os_log_impl(&_mh_execute_header, v11, v12, "Starting translation failed: Failed to start speech translation %@", v13, 0xCu);
          sub_100009A04(v14, &unk_1006A2630, &qword_10057CB40);
        }

        sub_1002B10D4(7);
        v6 = v9;
      }
    }

    else
    {
      sub_1002B1410();
      a3(0);
    }
  }
}

void sub_1002B10D4(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v2)
  {
    v8 = v2;
    v4 = sub_1002A54AC(a1);
    sub_1002B32F8(v4);
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000AF9C(v5, qword_1006BA688);
    v8 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v8, v6, "No translation session found to force stop translation", v7, 2u);
    }
  }
}

void sub_1002B1410()
{
  v1 = v0;
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v4 - v3) = v6;
  v7 = sub_1000150CC();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100010218();
  v11(v10);
  if (v6)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4(&qword_1006A0B58);
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA688);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (sub_10000689C(v14))
  {
    v15 = sub_100006DC4();
    sub_10000D6E8(v15);
    sub_100015CC0(&_mh_execute_header, v16, v5, "Translation start disclosure finished");
    sub_100006868();
  }

  v17 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v17)
  {
    v18 = v17;
    sub_1002A53E4();
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (sub_10000A648(v20))
    {
      v21 = sub_100006DC4();
      *v21 = 0;
      sub_100008A90(&_mh_execute_header, v22, v23, "Start disclosure finished, but we aren't tracking a translation session");
      sub_100005F40(v21);
    }
  }
}

void sub_1002B16A0()
{
  sub_100005EF4();
  v3 = v2;
  v53 = v4;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v51 = v8;
  v52 = v7;
  __chkstk_darwin(v7);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v49 = v10;
  v50 = v9;
  __chkstk_darwin(v9);
  sub_100007FDC();
  v13 = v12 - v11;
  v14 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100007FDC();
  v20 = v19 - v18;
  v21 = *&v0[OBJC_IVAR___CSDCallTranslationController_queue];
  *(v19 - v18) = v21;
  (*(v16 + 104))(v19 - v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v21;
  v22 = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v20, v14);
  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = 1;
    v24 = dispatch_group_create();
    v25 = *&v0[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
    if (v25)
    {
      v26 = v25;
      dispatch_group_enter(v24);
      v27 = swift_allocObject();
      v27[2] = v24;
      v27[3] = v23;
      v27[4] = v0;
      v27[5] = v6;
      v27[6] = v53;
      v27[7] = v3;
      v57 = sub_1002B681C;
      v58 = v27;
      sub_100009FE4();
      sub_10000E5B0(COERCE_DOUBLE(1107296256));
      v55 = v28;
      v56 = &unk_100623670;
      v29 = _Block_copy(v54);
      v30 = v24;

      v31 = v0;
      v32 = v6;

      [v26 startTranslationWithCompletionHandler:v29];
      _Block_release(v29);
    }

    v33 = *&v0[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
    v34 = v53;
    if (v33)
    {
      v48 = v33;
      dispatch_group_enter(v24);
      v35 = swift_allocObject();
      v35[2] = v24;
      v35[3] = v23;
      v35[4] = v0;
      v35[5] = v6;
      v35[6] = v53;
      v35[7] = v3;
      v57 = sub_1002B67A4;
      v58 = v35;
      sub_100009FE4();
      sub_10000E5B0(COERCE_DOUBLE(1107296256));
      v55 = v36;
      v56 = &unk_100623620;
      v37 = _Block_copy(v54);
      v38 = v24;

      v39 = v0;
      v40 = v6;

      [v48 startTranslationWithCompletionHandler:v37];
      v41 = v37;
      v34 = v53;
      _Block_release(v41);
    }

    v42 = swift_allocObject();
    v42[2] = v23;
    v42[3] = v0;
    v42[4] = v6;
    v42[5] = v34;
    v42[6] = v3;
    v57 = sub_1002B6794;
    v58 = v42;
    sub_100009FE4();
    v54[1] = 1107296256;
    v55 = sub_100004CEC;
    v56 = &unk_1006235D0;
    v43 = _Block_copy(v54);

    v44 = v0;
    v45 = v6;

    static DispatchQoS.unspecified.getter();
    sub_1000150B4();
    sub_10000ECD8(v46, v47, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
    sub_1000057D0();
    sub_100008A7C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v43);

    (*(v51 + 8))(v1, v52);
    (*(v49 + 8))(v13, v50);

    sub_100005EDC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B1B9C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, const char *a8, void *a9, uint64_t a10, const char *a11)
{
  if (a1)
  {
    v17 = a9;
    swift_errorRetain();
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v18 = type metadata accessor for Logger();
    sub_1000075F0(v18, qword_1006BA688);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_100005274();
      v22 = a6;
      v23 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, a8, v21, 0xCu);
      sub_100009A04(v23, &unk_1006A2630, &qword_10057CB40);
      v25 = v23;
      a6 = v22;
      sub_100005F40(v25);
      v26 = v21;
      v17 = a9;
      sub_100005F40(v26);
    }

    swift_beginAccess();
    *(a3 + 16) = 0;
    v27 = *(a4 + *v17);
    if (v27)
    {
      [v27 stopTranslation];
    }

    v28 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:a5];
    sub_1002ADC8C();
    swift_errorRetain();
    a6(a1);

    dispatch_group_leave(a2);
    sub_1000068B8();
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v29 = type metadata accessor for Logger();
    sub_1000075F0(v29, qword_1006BA688);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();
    if (sub_10000BB44(v31))
    {
      v32 = sub_100006DC4();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, a11, v32, 2u);
      sub_100005F40(v32);
    }

    sub_1000068B8();

    dispatch_group_leave(v33);
  }
}

uint64_t sub_1002B1E4C(uint64_t a1, char *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  result = swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    v11 = *&a2[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode];
    v12 = *&a2[OBJC_IVAR___CSDCallTranslationController_translationMode];
    v13 = a3;
    v14 = a2;

    return sub_1002ACEB4(v13, 1, v11, v12, v14, v13, v14, a4, a5);
  }

  return result;
}

void sub_1002B1F0C(char a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    (a4)(0, a2, a3);
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000AF9C(v7, qword_1006BA688);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = [v8 provider];
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Not able to configure audio session for %@", v11, 0xCu);
      sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    }

    v14 = *(a3 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
    if (v14)
    {
      [v14 stopTranslation];
    }

    v15 = *(a3 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
    if (v15)
    {
      [v15 stopTranslation];
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v19 = objc_allocWithZone(NSError);
    v20 = sub_100323698(v16, v18, 13, 0);
    a4();
  }
}

void sub_1002B2144()
{
  sub_100005EF4();
  v88 = v1;
  v89 = v2;
  v4 = v3;
  v91 = v5;
  v7 = v6;
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v8 - 8);
  sub_100007BAC();
  v93 = v9 - v10;
  __chkstk_darwin(v11);
  v13 = &v82 - v12;
  v14 = type metadata accessor for UUID();
  sub_100007FEC();
  v95 = v15;
  __chkstk_darwin(v16);
  sub_100007BAC();
  v92 = v17 - v18;
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  v22 = sub_10026D814(&unk_1006A3470, &qword_10057E278);
  inited = swift_initStackObject();
  v90 = xmmword_10057D6A0;
  *(inited + 16) = xmmword_10057D6A0;
  v94 = kAudioTranslationKey_Enabled;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v24;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v7 & 1];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v25;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInt:v4];
  sub_10026D814(&qword_1006A6660, &qword_10057E270);
  v26 = Dictionary.init(dictionaryLiteral:)();
  if (v7)
  {
    v86 = v22;
    v87 = v14;
    v27 = OBJC_IVAR___CSDCallTranslationController_translationLinks;
    if ((*(v0 + OBJC_IVAR___CSDCallTranslationController_translationLinks) & 2) != 0)
    {
      v85 = v0;
      sub_10003A270(v88, v13, &unk_1006A3DD0, &unk_10057C9D0);
      v28 = v87;
      if (sub_100015468(v13, 1, v87) == 1)
      {
        sub_100009A04(v13, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        v32 = *(v95 + 32);
        v83 = v21;
        v32(v21, v13, v28);
        v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v33;
        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        v34 = swift_initStackObject();
        sub_10000FBD8(v34, xmmword_10057CA70);
        v34[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[2].n128_u64[1] = v35;
        v36 = [objc_allocWithZone(NSNumber) initWithBool:1];
        v37 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        v34[4].n128_u64[1] = v37;
        v34[3].n128_u64[0] = v36;
        v34[5].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[5].n128_u64[1] = v38;
        UUID.uuidString.getter();
        v39 = String._bridgeToObjectiveC()();

        v34[7].n128_u64[1] = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
        v34[6].n128_u64[0] = v39;
        v34[8].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[8].n128_u64[1] = v40;
        v41 = objc_allocWithZone(NSNumber);
        v42 = v91;
        v43 = [v41 initWithInt:v91];
        v34[10].n128_u64[1] = v37;
        v34[9].n128_u64[0] = v43;
        v34[11].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34[11].n128_u64[1] = v44;
        sub_10026D814(&qword_1006A3490, &qword_1005880C0);
        v45 = swift_initStackObject();
        sub_10000FBD8(v45, v90);
        v45[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45[2].n128_u64[1] = v46;
        v45[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithBool:1];
        v45[3].n128_u64[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45[4].n128_u64[0] = v47;
        v45[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:v42];
        v48 = Dictionary.init(dictionaryLiteral:)();
        v34[13].n128_u64[1] = sub_10026D814(&qword_1006A3498, &qword_10057E280);
        v34[12].n128_u64[0] = v48;
        Dictionary.init(dictionaryLiteral:)();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = v26;
        sub_1002B706C(isa, v88, v84, isUniquelyReferenced_nonNull_native, v96);

        (*(v95 + 8))(v83, v87);
        v26 = v96[0];
      }

      v0 = v85;
    }

    v51 = v93;
    if (*(v0 + v27))
    {
      sub_10003A270(v89, v93, &unk_1006A3DD0, &unk_10057C9D0);
      v52 = v87;
      if (sub_100015468(v51, 1, v87) == 1)
      {
        sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
      }

      else
      {
        (*(v95 + 32))();
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v89 = v53;
        sub_10026D814(&unk_1006A39A0, &unk_10057D700);
        v54 = swift_initStackObject();
        sub_10000FBD8(v54, xmmword_10057CA70);
        v54[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54[2].n128_u64[1] = v55;
        v56 = [objc_allocWithZone(NSNumber) initWithBool:1];
        v57 = sub_100006AF0(0, &qword_1006A3480, NSNumber_ptr);
        v54[4].n128_u64[1] = v57;
        v54[3].n128_u64[0] = v56;
        v54[5].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54[5].n128_u64[1] = v58;
        UUID.uuidString.getter();
        v59 = String._bridgeToObjectiveC()();

        v54[7].n128_u64[1] = sub_100006AF0(0, &qword_1006A9E70, NSString_ptr);
        v54[6].n128_u64[0] = v59;
        v54[8].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54[8].n128_u64[1] = v60;
        v61 = objc_allocWithZone(NSNumber);
        v62 = v91;
        v63 = [v61 initWithInt:v91];
        v54[10].n128_u64[1] = v57;
        v54[9].n128_u64[0] = v63;
        v54[11].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54[11].n128_u64[1] = v64;
        sub_10026D814(&qword_1006A3490, &qword_1005880C0);
        v65 = swift_initStackObject();
        sub_10000FBD8(v65, v90);
        v65[2].n128_u64[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65[2].n128_u64[1] = v66;
        v65[3].n128_u64[0] = [objc_allocWithZone(NSNumber) initWithBool:1];
        v65[3].n128_u64[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65[4].n128_u64[0] = v67;
        v65[4].n128_u64[1] = [objc_allocWithZone(NSNumber) initWithInt:v62];
        v68 = Dictionary.init(dictionaryLiteral:)();
        v54[13].n128_u64[1] = sub_10026D814(&qword_1006A3498, &qword_10057E280);
        v54[12].n128_u64[0] = v68;
        Dictionary.init(dictionaryLiteral:)();
        v69 = Dictionary._bridgeToObjectiveC()().super.isa;

        v70 = swift_isUniquelyReferenced_nonNull_native();
        v96[0] = v26;
        sub_1002B706C(v69, v93, v89, v70, v96);

        (*(v95 + 8))(v92, v52);
      }
    }

    v71 = swift_initStackObject();
    *(v71 + 16) = xmmword_10057D690;
    *(v71 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v71 + 40) = v72;
    sub_10000FD20();
    v73 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v71 + 48) = v73;
    sub_10000FD20();
    Dictionary.init(dictionaryLiteral:)();
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v74 = type metadata accessor for Logger();
    sub_1000075F0(v74, qword_1006BA688);

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = sub_100005274();
      v78 = sub_100005E84();
      v96[0] = v78;
      *v77 = 136315138;
      v79 = Dictionary.description.getter();
      v81 = sub_10002741C(v79, v80, v96);

      *(v77 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v75, v76, "Created translation configuration %s", v77, 0xCu);
      sub_100009B7C(v78);
      sub_100005F40(v78);
      sub_100005F40(v77);
    }
  }

  else
  {
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_10057D690;
    *(v29 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v29 + 40) = v30;
    sub_10000FD20();
    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    *(v29 + 48) = v31;
    sub_10000FD20();
    Dictionary.init(dictionaryLiteral:)();
  }

  sub_100005EDC();
}

void sub_1002B2B88(uint64_t a1, const char *a2, const char *a3)
{
  v3 = a1;
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
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;

  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v30 = *(*(v3 + 56) + 4 * v12);
    v16 = p_inst_meths[363];

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000075F0(v17, qword_1006BA688);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = sub_100005E84();
      v31 = v21;
      *v20 = 136315394;
      v22 = sub_10002741C(v15, v14, &v31);

      *(v20 + 4) = v22;
      *(v20 + 12) = 1024;
      v23 = v30;
      *(v20 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v18, v19, "setAudioSessionProperties: %s, %d", v20, 0x12u);
      sub_100009B7C(v21);
      v24 = v21;
      p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);
      sub_100005F40(v24);
      v25 = v20;
      v3 = v29;
      sub_100005F40(v25);
    }

    else
    {

      v23 = v30;
    }

    v7 &= v7 - 1;
    if (v23)
    {
      sub_1002AE364(0, a2, a3);
      sub_1000068B8();

      return;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      sub_1002AE364(1, a2, a3);
      sub_1000068B8();
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1002B2DDC(uint64_t a1, void (*a2)(uint64_t))
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
  v8 = 0;
  p_inst_meths = &OBJC_PROTOCOL___CSDAssistantServicesObserver.inst_meths;

  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v25 = *(*(v2 + 56) + 4 * v11);
    v15 = p_inst_meths[363];

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000AF9C(v16, qword_1006BA688);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315394;
      v21 = sub_10002741C(v14, v13, &v26);

      *(v19 + 4) = v21;
      *(v19 + 12) = 1024;
      v22 = v25;
      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "setAudioSessionProperties: %s, %d", v19, 0x12u);
      sub_100009B7C(v20);
      p_inst_meths = (&OBJC_PROTOCOL___CSDAssistantServicesObserver + 24);

      v2 = v24;
    }

    else
    {

      v22 = v25;
    }

    v6 &= v6 - 1;
    if (v22)
    {
      a2(0);

      return;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      a2(1);
      return;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1002B306C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1002B30EC(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000AF9C(v3, qword_1006BA688);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Stop translation audio session successfully", v6, 2u);
    }

    v7 = *(a2 + OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator);
    if (v7)
    {
      [v7 stopTranslation];
    }

    v8 = *(a2 + OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator);
    if (v8)
    {

      [v8 stopTranslation];
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000AF9C(v9, qword_1006BA688);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to stop translation audio session", v11, 2u);
    }
  }
}

void sub_1002B32F8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 32);
  do
  {
    if (!v2)
    {
      break;
    }

    v4 = *v3++;
    sub_1002B3330(v4);
    --v2;
  }

  while (!v1);
}

void sub_1002B3330(char a1)
{
  v2 = v1;
  switch(a1)
  {
    case 1:
      if (*(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession) && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
      {
        v12 = Strong;
        if (qword_1006A0B58 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_10000AF9C(v13, qword_1006BA688);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, v15, "Playing stop disclosure", v16, 2u);
        }

        sub_100009B14((v2 + OBJC_IVAR___CSDCallTranslationController_disclosureController), *(v2 + OBJC_IVAR___CSDCallTranslationController_disclosureController + 24));
        sub_1002A9390(v12);
        sub_1002B0B74(0);
      }

      else
      {
        sub_1002B6680();
        swift_allocError();
        *v17 = 4;
        swift_willThrow();
      }

      break;
    case 3:
      return;
    default:
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000AF9C(v3, qword_1006BA688);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Setting translation session to nil", v6, 2u);
      }

      v7 = OBJC_IVAR___CSDCallTranslationController_translationSession;
      if (*(v2 + OBJC_IVAR___CSDCallTranslationController_translationSession))
      {
        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          [v8 setTranslationSession:0];
        }
      }

      v10 = *(v2 + v7);
      *(v2 + v7) = 0;

      break;
  }
}

void sub_1002B35CC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = *(v1 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v7 - v6) = v9;
  (*(v4 + 104))(v7 - v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    sub_1000081B4(&qword_1006A0B58);
LABEL_7:
    v18 = type metadata accessor for Logger();
    sub_1000075F0(v18, qword_1006BA688);
    v12 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (sub_10000A648(v19))
    {
      v20 = sub_100006DC4();
      *v20 = 0;
      sub_100008A90(&_mh_execute_header, v21, v22, "startDisclosureDidFinish: Invalid frontmost call, return");
      sub_100005F40(v20);
    }

    goto LABEL_19;
  }

  v11 = sub_10000D7E0();
  if (!v11)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

  v12 = v11;
  v13 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v13)
  {
    if (sub_1002A41F0() == 1)
    {
      sub_100006890();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v12;
      v16 = v13;

      v17 = v12;
      sub_1002B16A0();

      return;
    }

    v27 = qword_1006A0B58;
    v28 = v13;
    if (v27 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v29 = type metadata accessor for Logger();
    sub_10000AF9C(v29, qword_1006BA688);
    v30 = v28;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_100005274();
      v34 = sub_100005E84();
      v38 = v34;
      *v33 = 136315138;
      sub_1002A41F0();
      v35 = String.init<A>(reflecting:)();
      v37 = sub_10002741C(v35, v36, &v38);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Current state is %s, not in playingStartDisclosure state, return", v33, 0xCu);
      sub_100009B7C(v34);
      sub_100005F40(v34);
      sub_100005F40(v33);
    }
  }

  else
  {
    if (qword_1006A0B58 != -1)
    {
      sub_1000081B4(&qword_1006A0B58);
    }

    v23 = type metadata accessor for Logger();
    sub_1000075F0(v23, qword_1006BA688);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (sub_10000689C(v25))
    {
      v26 = sub_100006DC4();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v1, "No translation session so not handle audio route changed", v26, 2u);
      sub_100005F40(v26);
    }
  }

LABEL_19:
}

void sub_1002B39A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a1)
    {
      if (qword_1006A0B58 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000AF9C(v7, qword_1006BA688);
      swift_errorRetain();
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        swift_errorRetain();
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v12;
        *v11 = v12;
        _os_log_impl(&_mh_execute_header, v8, v9, "startDisclosureDidFinish: Failed to start speech translation %@", v10, 0xCu);
        sub_100009A04(v11, &unk_1006A2630, &qword_10057CB40);
      }

      v13 = [objc_allocWithZone(TUCallTranslationStopRequest) initWithCall:a3];
      sub_1002ADC8C();

      v6 = v13;
    }

    else
    {
      sub_1002B1410();
    }
  }
}

void sub_1002B3B78()
{
  v1 = v0;
  type metadata accessor for DispatchPredicate();
  sub_100007FEC();
  __chkstk_darwin(v2);
  sub_100007FDC();
  v5 = v4 - v3;
  v6 = *(v0 + OBJC_IVAR___CSDCallTranslationController_queue);
  *(v4 - v3) = v6;
  v7 = sub_1000150CC();
  v8(v7);
  v9 = v6;
  _dispatchPreconditionTest(_:)();
  v10 = sub_100010218();
  v11(v10);
  if (v6)
  {
    if (qword_1006A0B58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  sub_1000081B4(&qword_1006A0B58);
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000AF9C(v12, qword_1006BA688);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (sub_10000689C(v14))
  {
    v15 = sub_100006DC4();
    sub_10000D6E8(v15);
    sub_100015CC0(&_mh_execute_header, v16, v5, "Translation stop disclosure finished");
    sub_100006868();
  }

  v17 = *(v1 + OBJC_IVAR___CSDCallTranslationController_translationSession);
  if (v17)
  {
    v18 = v17;
    sub_1002A5B08();
  }
}

void sub_1002B3E08(uint64_t a1)
{
  sub_1002B3EF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002B3EF4(uint64_t a1)
{
  if (!qword_1006A33D0)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A33D0);
    }
  }
}

void sub_1002B3F4C(uint64_t a1, int a2)
{
  v172 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v173 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v166 = &v165 - v9;
  v10 = __chkstk_darwin(v8);
  v168 = &v165 - v11;
  v12 = __chkstk_darwin(v10);
  v176 = &v165 - v13;
  __chkstk_darwin(v12);
  v178 = &v165 - v14;
  v187 = sub_10026D814(&unk_1006A2A30, &unk_10057D150);
  v15 = __chkstk_darwin(v187);
  v175 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v182 = &v165 - v18;
  v19 = __chkstk_darwin(v17);
  v183 = &v165 - v20;
  __chkstk_darwin(v19);
  v22 = &v165 - v21;
  v23 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v24 = __chkstk_darwin(v23 - 8);
  v167 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v171 = &v165 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v165 - v29;
  v31 = __chkstk_darwin(v28);
  v169 = &v165 - v32;
  v33 = __chkstk_darwin(v31);
  v179 = &v165 - v34;
  v35 = __chkstk_darwin(v33);
  v177 = &v165 - v36;
  v37 = __chkstk_darwin(v35);
  v170 = &v165 - v38;
  v39 = __chkstk_darwin(v37);
  v180 = &v165 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v165 - v42;
  v44 = __chkstk_darwin(v41);
  v46 = &v165 - v45;
  v47 = __chkstk_darwin(v44);
  v49 = &v165 - v48;
  __chkstk_darwin(v47);
  v51 = &v165 - v50;
  v188 = v5;
  v52 = *(v5 + 16);
  v184 = a1;
  v185 = v5 + 16;
  v189 = v52;
  v52(&v165 - v50, a1, v4);
  v53 = 1;
  sub_10000AF74(v51, 0, 1, v4);
  v186 = v2;
  v181 = OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator;
  v54 = *&v2[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator];
  v174 = v30;
  if (v54)
  {
    v55 = [v54 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  sub_10000AF74(v49, v53, 1, v4);
  v56 = *(v187 + 48);
  sub_10003A270(v51, v22, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v49, &v22[v56], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v22, 1, v4) == 1)
  {
    sub_100009A04(v49, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v22[v56], 1, v4) == 1)
    {
      v57 = v186;
      v58 = v184;
LABEL_16:
      v66 = v176;
      sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
      v67 = v177;
      goto LABEL_17;
    }
  }

  else
  {
    sub_10003A270(v22, v46, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v22[v56], 1, v4) != 1)
    {
      v63 = v188;
      v64 = v178;
      (*(v188 + 32))(v178, &v22[v56], v4);
      sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v165) = dispatch thunk of static Equatable.== infix(_:_:)();
      v65 = *(v63 + 8);
      v65(v64, v4);
      sub_100009A04(v49, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
      v65(v46, v4);
      sub_100009A04(v22, &unk_1006A3DD0, &unk_10057C9D0);
      v57 = v186;
      v58 = v184;
      v66 = v176;
      v67 = v177;
      if (v165)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    sub_100009A04(v49, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v51, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v188 + 8))(v46, v4);
  }

  sub_100009A04(v22, &unk_1006A2A30, &unk_10057D150);
  v57 = v186;
  v58 = v184;
LABEL_9:
  v189(v43, v58, v4);
  v59 = 1;
  sub_10000AF74(v43, 0, 1, v4);
  v165 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v60 = *&v57[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  if (v60)
  {
    v61 = [v60 translatorIdentifier];
    v62 = v180;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = 0;
  }

  else
  {
    v62 = v180;
  }

  sub_10000AF74(v62, v59, 1, v4);
  v68 = *(v187 + 48);
  v69 = v183;
  sub_10003A270(v43, v183, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v62, &v69[v68], &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v69, 1, v4) == 1)
  {
    sub_100009A04(v62, &unk_1006A3DD0, &unk_10057C9D0);
    v22 = v183;
    sub_100009A04(v43, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(&v22[v68], 1, v4) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v83 = v170;
  sub_10003A270(v69, v170, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(&v69[v68], 1, v4) == 1)
  {
    sub_100009A04(v180, &unk_1006A3DD0, &unk_10057C9D0);
    v22 = v183;
    sub_100009A04(v43, &unk_1006A3DD0, &unk_10057C9D0);
    (*(v188 + 8))(v83, v4);
LABEL_23:
    sub_100009A04(v22, &unk_1006A2A30, &unk_10057D150);
LABEL_24:
    if (qword_1006A0B58 != -1)
    {
      swift_once();
    }

    v84 = type metadata accessor for Logger();
    sub_10000AF9C(v84, qword_1006BA688);
    v85 = v173;
    v189(v173, v58, v4);
    v86 = v57;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v87, v88))
    {

      (*(v188 + 8))(v85, v4);
      return;
    }

    v89 = swift_slowAlloc();
    v190[0] = swift_slowAlloc();
    *v89 = 136315650;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v85;
    v93 = v92;
    v94 = *(v188 + 8);
    v94(v91, v4);
    v95 = sub_10002741C(v90, v93, v190);

    *(v89 + 4) = v95;
    *(v89 + 12) = 2080;
    v96 = *&v57[v181];
    if (v96)
    {
      v97 = [v96 translatorIdentifier];
      v98 = v178;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v99 = UUID.uuidString.getter();
      v101 = v100;
      v94(v98, v4);
    }

    else
    {
      v101 = 0xE300000000000000;
      v99 = 7104878;
    }

    v147 = sub_10002741C(v99, v101, v190);

    *(v89 + 14) = v147;
    *(v89 + 22) = 2080;
    v148 = *&v186[v165];
    if (v148)
    {
      v149 = [v148 translatorIdentifier];
      v150 = v178;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v151 = UUID.uuidString.getter();
      v153 = v152;
      v94(v150, v4);
    }

    else
    {
      v153 = 0xE300000000000000;
      v151 = 7104878;
    }

    v154 = sub_10002741C(v151, v153, v190);

    *(v89 + 24) = v154;
    _os_log_impl(&_mh_execute_header, v87, v88, "Couldn't match %s with %s or %s", v89, 0x20u);
    swift_arrayDestroy();

    goto LABEL_75;
  }

  v116 = v188;
  v117 = v178;
  (*(v188 + 32))(v178, &v69[v68], v4);
  sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v118 = v83;
  v119 = v69;
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v116 + 8);
  v121(v117, v4);
  sub_100009A04(v180, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v43, &unk_1006A3DD0, &unk_10057C9D0);
  v121(v118, v4);
  v58 = v184;
  v57 = v186;
  sub_100009A04(v119, &unk_1006A3DD0, &unk_10057C9D0);
  v66 = v176;
  v67 = v177;
  if ((v120 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  v71 = sub_10000AF9C(v70, qword_1006BA688);
  v189(v66, v58, v4);
  v180 = v71;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v188;
  if (v74)
  {
    v76 = swift_slowAlloc();
    v77 = v66;
    v78 = swift_slowAlloc();
    v190[0] = v78;
    *v76 = 136315138;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = v80;
    v183 = *(v75 + 8);
    (v183)(v77, v4);
    v82 = sub_10002741C(v79, v81, v190);
    v58 = v184;
    v57 = v186;

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v72, v73, "invalided SpeechTranslator %s", v76, 0xCu);
    sub_100009B7C(v78);
  }

  else
  {

    v183 = *(v75 + 8);
    (v183)(v66, v4);
  }

  v102 = v179;
  v189(v67, v58, v4);
  v103 = 1;
  sub_10000AF74(v67, 0, 1, v4);
  v104 = *&v57[v181];
  if (v104)
  {
    v105 = [v104 translatorIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = 0;
  }

  sub_10000AF74(v102, v103, 1, v4);
  v106 = *(v187 + 48);
  v107 = v182;
  sub_10003A270(v67, v182, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v102, v107 + v106, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v107, 1, v4) == 1)
  {
    sub_100009A04(v102, &unk_1006A3DD0, &unk_10057C9D0);
    v108 = v182;
    sub_100009A04(v67, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v108 + v106, 1, v4) == 1)
    {
      sub_100009A04(v108, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_44:
      v125 = v181;
      v126 = *&v57[v181];
      if (v126)
      {
        [v126 invalidate];
        v127 = *&v57[v125];
      }

      else
      {
        v127 = 0;
      }

      v136 = v168;
      *&v57[v125] = 0;

      v189(v136, v58, v4);
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v190[0] = v140;
        *v139 = 136315138;
        sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v141 = dispatch thunk of CustomStringConvertible.description.getter();
        v143 = v142;
        (v183)(v136, v4);
        v144 = sub_10002741C(v141, v143, v190);
        v57 = v186;

        *(v139 + 4) = v144;
        v145 = "invalidated uplinkSpeechTranslator %s";
LABEL_68:
        _os_log_impl(&_mh_execute_header, v137, v138, v145, v139, 0xCu);
        sub_100009B7C(v140);

        goto LABEL_71;
      }

      v146 = v136;
      goto LABEL_70;
    }

    goto LABEL_37;
  }

  v109 = v169;
  sub_10003A270(v107, v169, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v107 + v106, 1, v4) == 1)
  {
    sub_100009A04(v179, &unk_1006A3DD0, &unk_10057C9D0);
    v108 = v182;
    sub_100009A04(v67, &unk_1006A3DD0, &unk_10057C9D0);
    (v183)(v109, v4);
LABEL_37:
    sub_100009A04(v108, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_38;
  }

  v122 = v107 + v106;
  v123 = v178;
  (*(v188 + 32))(v178, v122, v4);
  sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  LODWORD(v184) = dispatch thunk of static Equatable.== infix(_:_:)();
  v124 = v183;
  (v183)(v123, v4);
  sub_100009A04(v179, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v67, &unk_1006A3DD0, &unk_10057C9D0);
  v124(v109, v4);
  sub_100009A04(v107, &unk_1006A3DD0, &unk_10057C9D0);
  if (v184)
  {
    goto LABEL_44;
  }

LABEL_38:
  v110 = v174;
  v189(v174, v58, v4);
  v111 = 1;
  sub_10000AF74(v110, 0, 1, v4);
  v112 = OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator;
  v113 = *&v57[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator];
  if (v113)
  {
    v114 = [v113 translatorIdentifier];
    v115 = v171;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v111 = 0;
  }

  else
  {
    v115 = v171;
  }

  v128 = v175;
  sub_10000AF74(v115, v111, 1, v4);
  v129 = *(v187 + 48);
  sub_10003A270(v110, v128, &unk_1006A3DD0, &unk_10057C9D0);
  sub_10003A270(v115, v128 + v129, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v128, 1, v4) != 1)
  {
    v130 = v167;
    sub_10003A270(v128, v167, &unk_1006A3DD0, &unk_10057C9D0);
    if (sub_100015468(v128 + v129, 1, v4) != 1)
    {
      v131 = v128 + v129;
      v132 = v178;
      (*(v188 + 32))(v178, v131, v4);
      sub_10000ECD8(&qword_1006A2620, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v187) = dispatch thunk of static Equatable.== infix(_:_:)();
      v133 = v183;
      (v183)(v132, v4);
      sub_100009A04(v115, &unk_1006A3DD0, &unk_10057C9D0);
      sub_100009A04(v174, &unk_1006A3DD0, &unk_10057C9D0);
      v133(v130, v4);
      sub_100009A04(v175, &unk_1006A3DD0, &unk_10057C9D0);
      if ((v187 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_54;
    }

    sub_100009A04(v115, &unk_1006A3DD0, &unk_10057C9D0);
    sub_100009A04(v110, &unk_1006A3DD0, &unk_10057C9D0);
    (v183)(v130, v4);
LABEL_52:
    sub_100009A04(v128, &unk_1006A2A30, &unk_10057D150);
    goto LABEL_71;
  }

  sub_100009A04(v115, &unk_1006A3DD0, &unk_10057C9D0);
  sub_100009A04(v110, &unk_1006A3DD0, &unk_10057C9D0);
  if (sub_100015468(v128 + v129, 1, v4) != 1)
  {
    goto LABEL_52;
  }

  sub_100009A04(v128, &unk_1006A3DD0, &unk_10057C9D0);
LABEL_54:
  v134 = *&v57[v112];
  if (v134)
  {
    [v134 invalidate];
    v135 = *&v57[v112];
  }

  else
  {
    v135 = 0;
  }

  v155 = v166;
  *&v57[v112] = 0;

  v189(v155, v58, v4);
  v137 = Logger.logObject.getter();
  v138 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v137, v138))
  {
    v156 = v155;
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v190[0] = v140;
    *v139 = 136315138;
    sub_10000ECD8(&qword_1006A25E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v157 = dispatch thunk of CustomStringConvertible.description.getter();
    v159 = v158;
    (v183)(v156, v4);
    v160 = sub_10002741C(v157, v159, v190);
    v57 = v186;

    *(v139 + 4) = v160;
    v145 = "invalidated downlinkSpeechTranslator %s";
    goto LABEL_68;
  }

  v146 = v155;
LABEL_70:
  (v183)(v146, v4);
LABEL_71:
  v161 = *&v57[OBJC_IVAR___CSDCallTranslationController_translationSession];
  if (!v161)
  {
    v87 = Logger.logObject.getter();
    v163 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v87, v163))
    {
      goto LABEL_76;
    }

    v164 = swift_slowAlloc();
    *v164 = 0;
    _os_log_impl(&_mh_execute_header, v87, v163, "invalid tranlsationSession", v164, 2u);
LABEL_75:

    goto LABEL_76;
  }

  v87 = v161;
  v162 = sub_1002A5698(v172);
  sub_1002B32F8(v162);

LABEL_76:
}

void sub_1002B57C4()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for UUID();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000E598();
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v10 = type metadata accessor for Logger();
  sub_1000075F0(v10, qword_1006BA688);
  v11 = v5;
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v24 = v8;
    v25 = v6;
    v26 = v0;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = sub_100005E84();
    v27 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    if (v3)
    {
      swift_getErrorValue();
      v17 = v11;
      v18 = Error.localizedDescription.getter();
      v20 = v19;
    }

    else
    {
      v21 = v11;
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v22 = sub_10002741C(v18, v20, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "client: %@ didStopTranslationWithError: %s", v14, 0x16u);
    sub_100009A04(v15, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v15);
    sub_100009B7C(v16);
    sub_100005F40(v16);
    sub_100005F40(v14);

    v6 = v25;
    v8 = v24;
  }

  else
  {
  }

  v23 = [v11 translatorIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002B3F4C(v1, 5);
  (*(v8 + 8))(v1, v6);
  sub_100005EDC();
}

void sub_1002B5AB0()
{
  sub_100005EF4();
  v2 = v1;
  v3 = type metadata accessor for UUID();
  sub_100007FEC();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000E598();
  if (qword_1006A0B58 != -1)
  {
    sub_1000081B4(&qword_1006A0B58);
  }

  v7 = type metadata accessor for Logger();
  sub_10000AF9C(v7, qword_1006BA688);
  v8 = v2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_100005274();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "client: %@ serverDidDisconnect", v11, 0xCu);
    sub_100009A04(v12, &unk_1006A2630, &qword_10057CB40);
    sub_100005F40(v12);
    sub_100005F40(v11);
  }

  v14 = [v8 translatorIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002B3F4C(v0, 6);
  (*(v5 + 8))(v0, v3);
  sub_100005EDC();
}

void sub_1002B5CE4()
{
  sub_100005EF4();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_10000E598();
  v10 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100007FDC();
  v16 = v15 - v14;
  sub_100006890();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v23[4] = v5;
  v23[5] = v17;
  sub_100009FE4();
  sub_1000081D4(COERCE_DOUBLE(1107296256));
  v23[2] = v18;
  v23[3] = v3;
  v19 = _Block_copy(v23);
  v20 = v0;
  static DispatchQoS.unspecified.getter();
  sub_1000150B4();
  sub_10000ECD8(v21, v22, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_1000057D0();
  sub_100008A7C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10001E3D8();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v8 + 8))(v1, v6);
  (*(v12 + 8))(v16, v10);

  sub_100005EDC();
}

void sub_1002B5EE4(uint64_t a1)
{
  v2 = type metadata accessor for TranslationDisclosureDataSource(0);
  v3 = *(a1 + OBJC_IVAR___CSDCallTranslationController_queue);
  v4 = *(a1 + OBJC_IVAR___CSDCallTranslationController_speechAssetManager);
  v5 = v3;
  sub_10037EED0();
  v16 = v2;
  v17 = &off_10062AA38;
  *&v15 = v6;
  v7 = OBJC_IVAR___CSDCallTranslationController_disclosureDataSource;
  swift_beginAccess();
  sub_100009B7C((a1 + v7));
  sub_10002F0C8(&v15, a1 + v7);
  swift_endAccess();
  sub_100009AB0(a1 + v7, &v15);
  v8 = sub_10001BDB8(&v15, v16);
  __chkstk_darwin(v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v11 + 16))(v10);
  v12 = sub_1002B6538(*v10);
  sub_100009B7C(&v15);
  v13 = *(a1 + OBJC_IVAR___CSDCallTranslationController_disclosureLocation);
  *(a1 + OBJC_IVAR___CSDCallTranslationController_disclosureLocation) = v12;
}

uint64_t getEnumTagSinglePayload for StopTranslationReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StopTranslationReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1002B623C()
{
  result = qword_1006A3438;
  if (!qword_1006A3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3438);
  }

  return result;
}

id sub_1002B6298(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100032304;
  v10[3] = &unk_1006238A0;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithTaskHint:a1 useDedicatedMachPort:a2 & 1 observations:v7];
  _Block_release(v7);

  return v8;
}

id sub_1002B6354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v7 = Locale._bridgeToObjectiveC()().super.isa;
  v8 = [v3 initWithSourceLocale:isa targetLocale:v7];

  v9 = type metadata accessor for Locale();
  v10 = *(*(v9 - 8) + 8);
  v10(a2, v9);
  v10(a1, v9);
  return v8;
}

uint64_t sub_1002B641C(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002B6488(void *a1, void *a2, uint64_t a3)
{
  v11[3] = type metadata accessor for CallTranslationController(0);
  v11[4] = &off_1006233D0;
  v11[0] = a1;
  sub_100009AB0(v11, v10);
  swift_beginAccess();
  v6 = a1;
  sub_1002B723C(v10, a3 + 16, &unk_1006A3310, &unk_10057E2A0);
  swift_endAccess();
  v7 = *(a3 + 56);
  *(a3 + 56) = a2;
  v8 = a2;

  return sub_100009B7C(v11);
}

id sub_1002B6538(uint64_t a1)
{
  v2 = type metadata accessor for TranslationDisclosureDataSource(0);
  v14[3] = v2;
  v14[4] = &off_10062AA38;
  v14[0] = a1;
  v3 = type metadata accessor for CallTranslationDisclosureFileLocation();
  v4 = objc_allocWithZone(v3);
  v5 = sub_10001BDB8(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_10062AA38;
  v13[0] = v9;
  sub_100009AB0(v13, v4 + OBJC_IVAR___CSDCallTranslationDisclosureFileLocation_translationDisclosureDataSource);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100009B7C(v13);
  sub_100009B7C(v14);
  return v10;
}

unint64_t sub_1002B6680()
{
  result = qword_1006A3440;
  if (!qword_1006A3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3440);
  }

  return result;
}

uint64_t sub_1002B66D4(uint64_t a1)
{
  v2 = type metadata accessor for DisclosureRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1002B6738(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1002B67C4()
{

  return _swift_deallocObject(v0);
}

id sub_1002B6894(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v68 = type metadata accessor for TranslationDisclosureController();
  v69 = &off_1006232A8;
  v67[0] = a2;
  v66[3] = type metadata accessor for TranslationDisclosureDataSource(0);
  v66[4] = &off_10062AA38;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationSession] = 0;
  v66[0] = a3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_uplinkSpeechTranslator] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_downlinkSpeechTranslator] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationLinks] = 3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_remoteAudioMode] = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_translationMode] = 0;
  v13 = OBJC_IVAR___CSDCallTranslationController_remoteLocale;
  v14 = type metadata accessor for Locale();
  sub_10000AF74(&a6[v13], 1, 1, v14);
  *&a6[OBJC_IVAR___CSDCallTranslationController_audioFileGenerationTimeout] = 3;
  *&a6[OBJC_IVAR___CSDCallTranslationController_pendingAudioFileGenerationTimeoutWorkItem] = 0;
  v15 = &a6[OBJC_IVAR___CSDCallTranslationController_pendingConfigureAndStartTranslation];
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = 0;
  *&a6[OBJC_IVAR___CSDCallTranslationController_queue] = a1;
  *&a6[OBJC_IVAR___CSDCallTranslationController_featureFlags] = a4;
  sub_100009AB0(v67, &a6[OBJC_IVAR___CSDCallTranslationController_disclosureController]);
  sub_100009AB0(v66, &a6[OBJC_IVAR___CSDCallTranslationController_disclosureDataSource]);
  *&a6[OBJC_IVAR___CSDCallTranslationController_speechAssetManager] = a5;
  sub_100009AB0(v66, v63);
  v16 = sub_10001BDB8(v63, v64);
  __chkstk_darwin(v16);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = a1;
  v22 = a5;
  v23 = sub_1002B6538(v20);
  sub_100009B7C(v63);
  *&a6[OBJC_IVAR___CSDCallTranslationController_disclosureLocation] = v23;
  v62.receiver = a6;
  v62.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v62, "init");
  v25 = sub_100009B14(v67, v68);
  v64 = ObjectType;
  v65 = &off_1006233D0;
  v63[0] = v24;
  v26 = *v25;
  v27 = *sub_100009B14(v63, ObjectType);
  v28 = v24;
  sub_1002B6488(v27, v21, v26);
  sub_100009B7C(v63);
  if (qword_1006A0B58 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000AF9C(v29, qword_1006BA688);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "init CallTranslationController", v32, 2u);
  }

  v33 = [objc_opt_self() processInfo];
  v34 = [v33 environment];

  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = sub_1002CB47C(5264449, 0xE300000000000000, v35);
  v38 = v37;

  if (v38)
  {
    if (v36 == 49 && v38 == 0xE100000000000000)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_21;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Skip setting up languageStatusObserver in ATP environment";
LABEL_20:
    _os_log_impl(&_mh_execute_header, v42, v43, v52, v51, 2u);

    goto LABEL_21;
  }

LABEL_11:
  type metadata accessor for GMAvailability();
  v41 = dispatch thunk of static GMAvailability.isAvailable.getter();
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  v44 = os_log_type_enabled(v42, v43);
  if ((v41 & 1) == 0)
  {
    if (!v44)
    {
      goto LABEL_21;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = "Skip observing installed languages because GM is not available";
    goto LABEL_20;
  }

  if (v44)
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Start observing installed languages", v45, 2u);
  }

  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;
  *(v48 + 24) = v46;
  v49 = objc_allocWithZone(_LTLanguageStatus);

  v50 = sub_1002B6298(9, 0, sub_1000326F4, v48);
  swift_beginAccess();
  v42 = *(v46 + 16);
  *(v46 + 16) = v50;

LABEL_21:

  v53 = objc_opt_self();
  v54 = [v53 defaultCenter];
  [v54 addObserver:v28 selector:"handleCurrentLocaleDidChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v55 = [v53 defaultCenter];
  [v55 addObserver:v28 selector:"handleCallStatusChangedWithNotification:" name:TUCallCenterCallStatusChangedNotification object:0];

  v56 = [v53 defaultCenter];
  [v56 addObserver:v28 selector:"handleFaceTimeAudioUpgradeToVideoWithNotification:" name:TUCallUpgradedToVideoNotification object:0];

  v57 = [v53 defaultCenter];
  [v57 addObserver:v28 selector:"handleTranslationStatusChangedWithNotification:" name:TUCallTranslationAvailabilityChangedNotification object:0];

  v58 = [v53 defaultCenter];
  [v58 addObserver:v28 selector:"handleAudioRouteChangedWithNotification:" name:AVAudioSessionRouteChangeNotification object:0];

  v59 = [v53 defaultCenter];
  [v59 addObserver:v28 selector:"handleAudioRouteChangedWithNotification:" name:@"CSDRouteManagerRoutesChangedNotification" object:0];

  sub_100009B7C(v66);
  sub_100009B7C(v67);
  return v28;
}

uint64_t sub_1002B706C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = sub_100005208(a2, a3);
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
  sub_10026D814(&unk_1006A34A0, &unk_10057E288);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = sub_100005208(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a5;
  if (v17)
  {
    *(v20[7] + 8 * v16) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1002B71A8(v16, a2, a3, a1, v20);
  }
}

unint64_t sub_1002B71A8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1002B71FC()
{

  return _swift_deallocObject(v0);
}

uint64_t sub_1002B723C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100007674(a1, a2, a3, a4);
  sub_100008070();
  v5 = sub_100006B30();
  v6(v5);
  return v4;
}

uint64_t sub_1002B7290()
{

  v1 = sub_1000081EC();

  return _swift_deallocObject(v1);
}

char *sub_1002B7328()
{
  v0 = [objc_allocWithZone(type metadata accessor for CallCenterObserver()) init];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 routeController];

  v3 = objc_allocWithZone(type metadata accessor for PowerAssertionManager());
  v4 = sub_1002B7770(v0, v2, v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1002B7408(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription);
  v3 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription + 8);
  v4 = objc_allocWithZone(IMPowerAssertion);

  v5 = sub_1002B770C(v2, v3);
  v6 = OBJC_IVAR___CSDPowerAssertionManager_powerAssertion;
  v7 = *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion);
  *(a1 + OBJC_IVAR___CSDPowerAssertionManager_powerAssertion) = v5;

  v9 = sub_100004778(v8);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10057D690;
  v11 = *(a1 + v6);
  v12 = v11;
  v13 = sub_100031B38(v11);
  v15 = v14;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100009D88();
  *(v10 + 32) = v13;
  *(v10 + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("acquired PowerAssertion %@", 26, 2, &_mh_execute_header, v9, v16, v10);
}

uint64_t sub_1002B7540(void *a1)
{
  v2 = [a1 provider];
  v3 = [v2 isFaceTimeProvider];

  if (((v3 & 1) != 0 || (v5 = [a1 provider], v6 = objc_msgSend(v5, "isTelephonyProvider"), v5, v6) && (objc_msgSend(a1, "isUsingBaseband") & 1) == 0) && sub_1003174D8(objc_msgSend(a1, "status"), &off_100620470))
  {
    return [a1 isEndpointOnCurrentDevice] ^ 1;
  }

  else
  {
    return 0;
  }
}

id sub_1002B761C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerAssertionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002B770C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithIdentifier:v3];

  return v4;
}

char *sub_1002B7770(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_powerAssertion] = 0;
  v5 = &a3[OBJC_IVAR___CSDPowerAssertionManager_powerAssertionDescription];
  *v5 = 0xD000000000000037;
  *(v5 + 1) = 0x8000000100564C60;
  v6 = &a3[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &a3[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver] = a1;
  *&a3[OBJC_IVAR___CSDPowerAssertionManager_routeController] = a2;
  v26.receiver = a3;
  v26.super_class = type metadata accessor for PowerAssertionManager();
  v8 = a1;
  v9 = a2;
  v10 = objc_msgSendSuper2(&v26, "init");
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = &v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  v13 = *&v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler];
  v14 = *&v10[OBJC_IVAR___CSDPowerAssertionManager_acquirePowerAssertionHandler + 8];
  *v12 = sub_1002B79E0;
  v12[1] = v11;
  v15 = v10;
  sub_1000051F8(v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = &v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  v19 = *&v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler];
  v18 = *&v15[OBJC_IVAR___CSDPowerAssertionManager_releasePowerAssertionHandler + 8];
  *v17 = sub_1000319DC;
  v17[1] = v16;
  sub_1000051F8(v19, v18);
  v20 = OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver;
  result = *&v15[OBJC_IVAR___CSDPowerAssertionManager_callCenterObserver];
  if (result)
  {
    result = [result setTriggers:33];
    v22 = *&v15[v20];
    if (v22)
    {
      swift_unknownObjectRetain();

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25[4] = sub_1000319D4;
      v25[5] = v23;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 1107296256;
      v25[2] = sub_100028100;
      v25[3] = &unk_1006239B8;
      v24 = _Block_copy(v25);

      [v22 setCallChanged:v24];
      _Block_release(v24);

      swift_unknownObjectRelease();
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002B79E8()
{
  result = qword_1006A3520;
  if (!qword_1006A3520)
  {
    sub_100006AF0(255, &qword_1006A34B0, off_1006165E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3520);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MuteReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1002B7B2C(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B7B64@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002B7B2C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1002B7B90@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1002B7B44(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1002B7BC0()
{
  result = qword_1006A3528;
  if (!qword_1006A3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3528);
  }

  return result;
}

void *sub_1002B7C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = _swiftEmptyDictionarySingleton;
  return v3;
}

void sub_1002B7C2C(unint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v118 = a4;
  LODWORD(v121) = a2;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  v119 = v9;
  v120 = v8;
  __chkstk_darwin(v8);
  sub_100007FDC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100007FDC();
  v19 = v18 - v17;
  v20 = type metadata accessor for DispatchTimeInterval();
  sub_100007FEC();
  v117 = v21;
  __chkstk_darwin(v22);
  sub_100007FDC();
  v116 = (v24 - v23);
  v115 = type metadata accessor for DispatchTime();
  sub_100007FEC();
  v114 = v25;
  v27 = __chkstk_darwin(v26);
  v113 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v100 - v29;
  type metadata accessor for OS_dispatch_source.TimerFlags();
  sub_100007FEC();
  __chkstk_darwin(v31);
  sub_100007FDC();
  v36 = v35 - v34;
  if (!*(a1 + 16))
  {
    return;
  }

  v102 = v36;
  v103 = v33;
  v104 = v32;
  v106 = v20;
  v108 = v19;
  v110 = v12;
  v111 = a5;
  v112 = v13;
  v37 = v122;
  swift_beginAccess();
  v38 = sub_1002CB4C4(*(v37 + 40));
  v123 = v39;
  v124 = v38;
  v41 = v40;
  if (qword_1006A0B20 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  v43 = sub_10000AF9C(v42, qword_1006BA5E0);

  v44 = v124;
  sub_1002B9048(v124, v41);
  v105 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  sub_1002B9008(v44, v41);
  v47 = os_log_type_enabled(v45, v46);
  v109 = v15;
  HIDWORD(v107) = a3;
  if (v47)
  {
    v48 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v48 = 136315906;
    v49 = String.init<A>(reflecting:)();
    sub_10001022C(v49, v50);
    v101 = v30;
    sub_10000F52C();
    *(v48 + 4) = v41;
    *(v48 + 12) = 2080;
    v51 = Set.description.getter();
    sub_10001022C(v51, v52);
    sub_10000F52C();
    *(v48 + 14) = v41;
    *(v48 + 22) = 2080;
    v53 = v121;
    LOBYTE(v125) = v121;
    v54 = String.init<A>(reflecting:)();
    sub_10001022C(v54, v55);
    sub_10000F52C();
    *(v48 + 24) = v41;
    *(v48 + 32) = 2080;
    v56 = sub_10029112C(v124, v41, v123);
    sub_10001022C(v56, v57);
    sub_10000F52C();
    *(v48 + 34) = v41;
    v30 = v101;
    _os_log_impl(&_mh_execute_header, v45, v46, "ConversationLinkSync: enqueue action {messageType: %s, destinations: %s, mode: %s, hasExisting: %s}", v48, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v53 = v121;
  }

  if (!v53)
  {
    goto LABEL_15;
  }

  if (v53 != 1)
  {
    if (v124)
    {
      sub_1002B9008(v124, v41);
      return;
    }

LABEL_15:
    sub_1002F62FC(a1, v58, v59, v60, v61, v62, v63, v64, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
    v74 = v75;
    if (v124)
    {
LABEL_26:

      v79 = v124;
      swift_getObjectType();
      sub_1002B9048(v79, v41);
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      v121 = v41;

      swift_unknownObjectRelease_n();
      goto LABEL_27;
    }

    v121 = v41;
    goto LABEL_18;
  }

  if (v124)
  {
    v125 = a1;

    v65 = v123;
    sub_1002B9048(v124, v41);

    v67 = sub_10001E78C(v66);
    v68 = &v125;
    sub_1003C2420(v67);

    v69 = *(v41 + 16);
    if (v69 < v65)
    {
      __break(1u);
    }

    else
    {
      aBlock = sub_100327838(v123, v69, v41);
      v127 = v70;
      v128 = v71;
      v129 = v72;
      sub_1002B8730(v125);
      v68 = aBlock;
      v67 = v127;
      v46 = v128;
      a1 = v129;
      if ((v129 & 1) == 0)
      {
LABEL_12:
        sub_1002F6384(v68, v67, v46, a1);
        v74 = v73;
LABEL_25:
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v77 = swift_dynamicCastClass();
      if (!v77)
      {
        swift_unknownObjectRelease();
        v77 = _swiftEmptyArrayStorage;
      }

      v78 = v77[2];

      if (!__OFSUB__(a1 >> 1, v46))
      {
        if (v78 == (a1 >> 1) - v46)
        {
          v74 = swift_dynamicCastClass();
          if (!v74)
          {
            swift_unknownObjectRelease();
            v74 = _swiftEmptyArrayStorage;
          }

          goto LABEL_25;
        }

        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v121 = v41;
  sub_1002F62FC(a1, v58, v59, v60, v61, v62, v63, v64, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117);
  v74 = v76;
LABEL_18:

LABEL_27:
  sub_1002B9088();
  aBlock = _swiftEmptyArrayStorage;
  sub_1002B9D48(&qword_1006A3628, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10026D814(&qword_1006A3630, &unk_10057E528);
  sub_100018040(&unk_1006A3638, &qword_1006A3630, &unk_10057E528);
  v80 = v102;
  v81 = v104;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v82 = v122;
  static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v103 + 8))(v80, v81);
  v83 = *(v82 + 24);
  v84 = v74[2];

  v85 = v83(v84, HIDWORD(v107));
  swift_getObjectType();
  v86 = v113;
  static DispatchTime.now()();
  + infix(_:_:)();
  v87 = *(v114 + 8);
  v88 = v115;
  v87(v86, v115);
  v89 = v116;
  sub_1002B88A8(v116);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  (*(v117 + 8))(v89, v106);
  v87(v30, v88);
  v90 = swift_allocObject();
  swift_weakInit();
  v91 = swift_allocObject();
  v92 = v118;
  v91[2] = v90;
  v91[3] = v92;
  v91[4] = v111;
  v130 = sub_1002B90CC;
  v131 = v91;
  aBlock = _NSConcreteStackBlock;
  v127 = 1107296256;
  v128 = sub_100004CEC;
  v129 = &unk_100623C90;
  v93 = _Block_copy(&aBlock);

  v94 = v108;
  static DispatchQoS.unspecified.getter();
  v95 = v110;
  sub_1002B8B28();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v93);
  (*(v119 + 8))(v95, v120);
  (*(v109 + 8))(v94, v112);

  OS_dispatch_source.resume()();
  swift_unknownObjectRetain();
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 134217984;
    *(v98 + 4) = v85;
    _os_log_impl(&_mh_execute_header, v96, v97, "ConversationLinkSync: Scheduled action {interval: %f}", v98, 0xCu);
  }

  v99 = v122;
  swift_beginAccess();
  swift_unknownObjectRetain();

  swift_isUniquelyReferenced_nonNull_native();
  v125 = *(v99 + 40);
  sub_100378670();
  *(v99 + 40) = v125;
  swift_endAccess();
  sub_1002B9008(v124, v121);

  swift_unknownObjectRelease_n();
}

void sub_1002B8730(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002B90D8(v2);
  v4 = v1[2];
  v3 = v1[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = v1[1] + 16 * v4 + 16 * v5;
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if (v6 != &v7[2 * v8 + 4])
  {

LABEL_7:
    v9 = v5;
    goto LABEL_9;
  }

  v10 = v7[3];

  v11 = (v10 >> 1) - v8;
  v12 = __OFADD__(v5, v11);
  v9 = v5 + v11;
  if (v12)
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_9:
  v13 = v9 - v5;
  if (__OFSUB__(v9, v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1002F66FC();
  if (v14 < v2)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  v16 = (v5 + v14);
  if (__OFADD__(v5, v15))
  {
    goto LABEL_22;
  }

  sub_1002B91E0(v16);
LABEL_14:
  if (v15 == v13)
  {
    v22[0] = v17;
    v22[1] = v18;
    v22[2] = v19;
    v22[3] = v20;
    v22[4] = v21;
    sub_1002B9298(v22);
  }

  else
  {

    sub_100022DDC(v17);
  }
}

uint64_t sub_1002B88A8@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1002B8920(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  swift_beginAccess();
  v5 = *(v4 + 40);

  if (!*(v5 + 16))
  {
  }

  v6 = sub_1002DA6A0();
  if ((v7 & 1) == 0)
  {
  }

  v8 = *(v5 + 56) + 24 * v6;
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  swift_unknownObjectRetain();

  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v11 = v9 + 16 * v10;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);

  a2(v12, v13);

  if (v10 + 1 == *(v9 + 16))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1002B8C00();
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      swift_beginAccess();
      swift_unknownObjectRetain();

      swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v15 + 40);
      sub_100378670();
      *(v15 + 40) = v16;
      swift_endAccess();

      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B8B28()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1002B9D48(&qword_1006A2CC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_100018040(&qword_1006A2CD0, &unk_1006A2960, &unk_10057D6E0);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_1002B8C00()
{
  result = swift_beginAccess();
  if (*(*(v0 + 40) + 16))
  {
    result = sub_1002DA6A0();
    if (v2)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();

      OS_dispatch_source.cancel()();
      v3 = swift_beginAccess();
      v4 = sub_10038383C(v3);
      v6 = v5;
      swift_endAccess();
      sub_1002B9008(v4, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1002B8CE8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1002DA6A0();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 24 * v2);
  swift_unknownObjectRetain();

  return v4;
}

uint64_t sub_1002B8D7C()
{

  return v0;
}

uint64_t sub_1002B8DAC()
{
  sub_1002B8D7C();

  return _swift_deallocClassInstance(v0, 48, 7);
}

__n128 sub_1002B8E04(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002B8E18(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1002B8E58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1002B8EA4(_BYTE *result, int a2, int a3)
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

unint64_t sub_1002B8F5C()
{
  result = qword_1006A3610;
  if (!qword_1006A3610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3610);
  }

  return result;
}

unint64_t sub_1002B8FB4()
{
  result = qword_1006A3618;
  if (!qword_1006A3618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3618);
  }

  return result;
}

uint64_t sub_1002B9008(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002B9048(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_1002B9088()
{
  result = qword_1006A3620;
  if (!qword_1006A3620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006A3620);
  }

  return result;
}

uint64_t sub_1002B90D8(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if ((v6 + 16 * v3 + 16 * v4) != &v7[2 * v8 + 4])
  {

LABEL_7:
    v9 = v4;
    goto LABEL_9;
  }

  v10 = v7[3];

  v11 = (v10 >> 1) - v8;
  v12 = __OFADD__(v4, v11);
  v9 = v4 + v11;
  if (v12)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 < result)
  {
    if (v9 + 0x4000000000000000 >= 0)
    {
      v13 = 2 * v9;
      if (v13 > result)
      {
        result = v13;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_1002B94CC(result);
}

void *sub_1002B91E0(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = _swiftEmptyArrayStorage;
  }

  v8 = result[2];
  v5 = __OFADD__(v8, v7);
  v9 = &v7[v8];
  if (v5)
  {
    goto LABEL_13;
  }

  result[2] = v9;

  v10 = &v7[v4];
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_1002B9298(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
    goto LABEL_29;
  }

  v5 = v1;
  v6 = *(result + 1);
  v31 = *result;
  v32 = v6;
  v33 = result[4];
  result = sub_1002B9B38();
  v7 = result;
  v9 = v8;
  v29 = v1;
  if (v8)
  {
    while (2)
    {
      if (__OFADD__(v4, 1))
      {
LABEL_26:
        __break(1u);
      }

      else
      {
        v30 = sub_1002B9628(v4, v4 + 1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
        v10 = sub_1002B97E8();
        sub_1002B9804(&v30, v4, 0, v10);

        v12 = *(v5 + 16);
        v11 = *(v5 + 24);
        v13 = (v11 >> 1) - v12;
        if (!__OFSUB__(v11 >> 1, v12))
        {
          v14 = *(v5 + 8) + 16 * v12;
          if ((v11 & 1) == 0)
          {
            goto LABEL_11;
          }

          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain();
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            swift_unknownObjectRelease();
            v15 = _swiftEmptyArrayStorage;
          }

          v16 = v15[2];
          if ((v14 + 16 * v13) != &v15[2 * v16 + 4])
          {

            goto LABEL_11;
          }

          v17 = v15[3];

          v18 = (v17 >> 1) - v16;
          v19 = __OFADD__(v13, v18);
          v13 += v18;
          if (!v19)
          {
LABEL_11:
            v20 = v31;
            v21 = *(&v32 + 1);
            v22 = (v32 + 64) >> 6;
            v23 = v33;
            while (v4 < v13)
            {
              v24 = (v14 + 16 * v4);
              *v24 = v7;
              v24[1] = v9;
              ++v4;
              if (!v23)
              {
                while (1)
                {
                  v25 = v21 + 1;
                  if (__OFADD__(v21, 1))
                  {
                    break;
                  }

                  if (v25 >= v22)
                  {
                    v23 = 0;
                    v7 = 0;
                    v9 = 0;
                    goto LABEL_21;
                  }

                  v23 = *(*(&v20 + 1) + 8 * v25);
                  ++v21;
                  if (v23)
                  {
                    v21 = v25;
                    goto LABEL_19;
                  }
                }

                __break(1u);
                goto LABEL_26;
              }

              v25 = v21;
LABEL_19:
              v26 = __clz(__rbit64(v23));
              v23 &= v23 - 1;
              v27 = (*(v20 + 48) + ((v25 << 10) | (16 * v26)));
              v7 = *v27;
              v9 = v27[1];
            }

LABEL_21:
            *(&v32 + 1) = v21;
            v33 = v23;
            v5 = v29;
            result = sub_1002B91E0(v4);
            if (v9)
            {
              continue;
            }

            goto LABEL_22;
          }

          goto LABEL_28;
        }
      }

      break;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

LABEL_22:
  v28 = v31;

  return sub_100022DDC(v28);
}

uint64_t sub_1002B94CC(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_1002F5D8C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        swift_arrayInitWithCopy();
        v5 = sub_1002B9A44(v15, v14);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        result = swift_unknownObjectRelease();
        v1[1] = v17;
        v1[2] = v19;
        v1[3] = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v6 + 16 * v7) != &v9[2 * v10 + 4])
  {

    goto LABEL_9;
  }

  v11 = v9[3];

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1002B9628(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_1002F5D8C(v6, v25);
}

uint64_t *sub_1002B9804(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = (v6 - v5);
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = &v14[-v13];
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  v32 = (v18 + 16 * a3);
  result = sub_1002B9BF0(v7);
  if (result)
  {
    v19 = result;
    v29 = v4[2];
    v28 = a4;
    v20 = &v4[1][2 * v29];
    swift_arrayDestroy();
    sub_100060528(v20, a2, v17);
    swift_arrayDestroy();
    v28(v18, a3);
    sub_100060528(&v20[16 * a2 + 16 * v30], v13, v32);
    v21 = v29;
    swift_arrayDestroy();
    *(v19 + 16) = 0;

LABEL_15:

    swift_unknownObjectRelease();
    result = sub_1002B9A44(v9, v21);
    *v4 = result;
    v4[1] = v25;
    v4[2] = v26;
    v4[3] = v27;
    return result;
  }

  v21 = v4[2];
  v22 = v21 + a2;
  if (__OFADD__(v21, a2))
  {
    goto LABEL_21;
  }

  if (v22 < v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v22, v21))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_arrayInitWithCopy();
  result = (a4)(&v17[16 * a2], a3);
  v23 = &v30[v22];
  if (__OFADD__(v22, v30))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v4[3] >> 1;
  if (v24 < v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v24, v23))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1002B9A44(uint64_t result, uint64_t a2)
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

uint64_t sub_1002B9A8C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
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

  result = sub_100060528((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
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

uint64_t sub_1002B9B38()
{
  v2 = v0[3];
  v1 = v0[4];
  if (v1)
  {
    v3 = v0[3];
LABEL_7:
    v4 = (v1 - 1) & v1;
    v5 = *(*(*v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v1)))));

LABEL_8:
    v0[3] = v2;
    v0[4] = v4;
    return v5;
  }

  else
  {
    while (1)
    {
      v3 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v3 >= ((v0[2] + 64) >> 6))
      {
        v4 = 0;
        v5 = 0;
        goto LABEL_8;
      }

      v1 = *(v0[1] + 8 * v3);
      ++v2;
      if (v1)
      {
        v2 = v3;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1002B9BF0(void *a1)
{
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = v1[1] + 16 * v6;
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = v9[2];
  if ((v8 + 16 * v7) != &v9[2 * v10 + 4])
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = v9[3];

  v14 = (v12 >> 1) - v10;
  v15 = __OFADD__(v7, v14);
  v11 = v7 + v14;
  if (!v15)
  {
LABEL_10:
    if (v11 < a1)
    {
      return 0;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = _swiftEmptyArrayStorage;
    }

    v16 = (v8 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v7 + v16;
    if (!__OFADD__(v7, v16))
    {
      v4 = a1[2];
      if (isUniquelyReferenced_nonNull >= v4)
      {
        return a1;
      }

LABEL_19:
      sub_1002B9A8C(isUniquelyReferenced_nonNull, v4, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002B9D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_1002B9D90(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002B9E6C()
{
  result = qword_1006A3648;
  if (!qword_1006A3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3648);
  }

  return result;
}

uint64_t sub_1002B9F2C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for AVAudioSessionInterruptionProvider();
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  sub_1002BA0C4(__src);
  memcpy((v2 + 80), __src, 0xA8uLL);
  *(v2 + 16) = v0;
  *(v2 + 24) = &off_100628E00;
  *(v2 + 32) = 1;
  *(v2 + 40) = v1;
  return v2;
}

uint64_t sub_1002B9FF0(uint64_t a1)
{
  v1 = [objc_allocWithZone(AVAudioSession) initProxySession:a1 autoReconnect:0];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(TUFeatureFlags) init];
  type metadata accessor for AVAudioSessionInterruptionProvider();
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 1;
  *(v4 + 72) = 0;
  sub_1002BA0C4(__src);
  memcpy((v4 + 80), __src, 0xA8uLL);
  *(v4 + 16) = v2;
  *(v4 + 24) = &off_100628E00;
  *(v4 + 32) = 0;
  *(v4 + 40) = v3;
  return v4;
}

uint64_t sub_1002BA0D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1002BA114(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002BA174(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BA33C(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BA3A0(uint64_t a1, uint64_t a2)
{
  sub_100434BAC(a2);
  String.hash(into:)();
}

uint64_t sub_1002BA3F4(uint64_t a1, char a2)
{
  String.hash(into:)();
}

uint64_t sub_1002BA484()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v1[2];
  v5 = v1[3];
  objc_allocWithZone(TUMutableRoute);

  v6 = sub_10001619C(v2, v3, v4, v5);
  [v6 setDeviceType:v1[4]];
  [v6 setSupportsRelay:1];
  [v6 setCurrentlyPicked:*(v1 + 40)];
  [v6 setGuest:{objc_msgSend(v1[6], "isGuest")}];
  if (v1[8])
  {
    v7 = String._bridgeToObjectiveC()();
    [v6 setModelIdentifier:v7];
  }

  [v6 copy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_100006AF0(0, &qword_1006A2C28, TURoute_ptr);
  swift_dynamicCast();
  return v9;
}

uint64_t sub_1002BA5EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] != *(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  sub_100006AF0(0, &unk_1006A39B0, NSObject_ptr);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[8];
  v7 = *(a2 + 64);
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (a1[7] == *(a2 + 56) && v6 == v7)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_1002BA708(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(*(v1 + 40) & 1);
  NSObject.hash(into:)();
  if (*(v1 + 64))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1002BA7BC()
{
  Hasher.init(_seed:)();
  sub_1002BA708(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002BA804(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1002BA708(v2);
  return Hasher._finalize()();
}

unint64_t sub_1002BA848()
{
  result = qword_1006A3728;
  if (!qword_1006A3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3728);
  }

  return result;
}

void sub_1002BA89C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() destinationWithDevice:a1];
  v5 = sub_10001B8C8(a1, &selRef_uniqueIDOverride);
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_10001B8C8(a1, &selRef_name);
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_10001B8C8(a1, &selRef_modelIdentifier);
  if (v14)
  {
    v15 = sub_10001BF50(v13, v14);
    v16 = sub_10001B8C8(a1, &selRef_modelIdentifier);
    v18 = v17;

    *a2 = v7;
    *(a2 + 8) = v8;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v15;
    *(a2 + 40) = 0;
    *(a2 + 48) = v4;
    *(a2 + 56) = v16;
    *(a2 + 64) = v18;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1002BA99C(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 48))();
  if (v5)
  {

    return sub_10001BF50(v4, v5);
  }

  else if (((*(a2 + 40))(a1, a2) & 2) != 0)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002BAA28(uint64_t a1, uint64_t a2)
{
  (*(a2 + 48))(a1);
  if (!v2)
  {
    return 0;
  }

  v3._countAndFlagsBits = 0x5654656C707041;
  v3._object = 0xE700000000000000;
  v4 = String.hasPrefix(_:)(v3);

  return v4;
}

uint64_t sub_1002BAA98@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - v9;
  v54[3] = a2;
  v54[4] = a3;
  sub_1002A1D5C(v54);
  (*(*(a2 - 8) + 32))();
  v11 = sub_100006694();
  if ((sub_1003EE3A0(v11, v12) & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = sub_100006694();
  v14(v13);
  v15 = type metadata accessor for UUID();
  v16 = sub_100015468(v10, 1, v15);
  sub_10001D334(v10);
  if (v16 != 1)
  {
    v26 = sub_100006694();
    v28 = sub_1002BA99C(v26, v27);
    if (v28 <= 0x1B && ((1 << v28) & 0x8400040) != 0)
    {
      v29 = sub_100006694();
      if ((v30(v29) & 0x200) != 0)
      {
        sub_100009AB0(v54, v52);
        sub_10001BDB8(v52, v53);
        sub_10000A664();
        __chkstk_darwin(v40);
        v42 = sub_100008204(v41, v50);
        v43(v42);
        v44 = sub_10000F544();
        sub_1002BAF48(v44, v45, v46, v47, v48);
        goto LABEL_10;
      }
    }

LABEL_7:

    v31 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_100009AB0(v54, v52);
  sub_10001BDB8(v52, v53);
  sub_10000A664();
  __chkstk_darwin(v17);
  v19 = sub_100008204(v18, v50);
  v20(v19);
  v21 = sub_10000F544();
  sub_1002BAD9C(v21, v22, v23, v24, v25);
LABEL_10:
  v31 = v54[5];
  v32 = v54[6];
  v33 = v54[7];
  v34 = v54[8];
  v35 = v54[9];
  v51 = v55;
  v36 = v56;
  v37 = v57;
  v38 = v58;
  sub_100009B7C(v52);
  if (v32)
  {
    v39 = v51 & 1;
    goto LABEL_12;
  }

  v31 = 0;
LABEL_8:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
LABEL_12:
  result = sub_100009B7C(v54);
  *a4 = v31;
  a4[1] = v32;
  a4[2] = v33;
  a4[3] = v34;
  a4[4] = v35;
  a4[5] = v39;
  a4[6] = v36;
  a4[7] = v37;
  a4[8] = v38;
  return result;
}

uint64_t sub_1002BAD9C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  __chkstk_darwin(a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v11);
  v12 = a4[4](a3, a4);
  v14 = v13;
  if (v13)
  {
    v15 = a4[1];
    v25 = v12;
    v24 = v15(a3, a4);
    v17 = v16;
    v18 = sub_1002BA99C(a3, a4);
    v19 = a4[6](a3, a4);
    v21 = v20;
  }

  else
  {

    v24 = 0;
    v25 = 0;
    v17 = 0;
    v18 = 0;
    a2 = 0;
    v19 = 0;
    v21 = 0;
  }

  result = (*(v9 + 8))(v11, a3);
  v23 = v25;
  *a5 = v24;
  a5[1] = v17;
  a5[2] = v23;
  a5[3] = v14;
  a5[4] = v18;
  a5[5] = 0;
  a5[6] = a2;
  a5[7] = v19;
  a5[8] = v21;
  return result;
}

uint64_t sub_1002BAF48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a2;
  v9 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v19;
  (*(v19 + 32))(v18, a1, a3);
  (*(a4 + 56))(a3, a4);
  v20 = sub_100015468(v11, 1, v12);
  v44 = a3;
  if (v20 != 1)
  {
    (*(v13 + 32))(v16, v11, v12);
    v42 = (*(a4 + 64))(a3, a4);
    if (!v21)
    {
      (*(v13 + 8))(v16, v12);

      goto LABEL_9;
    }

    v38 = v21;
    v41 = v13;
    v22 = UUID.uuidString.getter();
    v39 = v23;
    v24 = sub_1002BA99C(a3, a4);
    v40 = v22;
    switch(v24)
    {
      case 6:
        v25 = 14;
        break;
      case 22:
        v25 = 23;
        break;
      case 27:
        v25 = 28;
        break;
      default:
        v37 = 0;
        goto LABEL_14;
    }

    v37 = v25;
LABEL_14:
    v32 = (*(a4 + 48))(a3, a4);
    v33 = v34;
    (*(v41 + 8))(v16, v12);
    v31 = v45;
    v28 = v42;
    v27 = v39;
    v26 = v40;
    v30 = v37;
    v29 = v38;
    goto LABEL_15;
  }

  sub_10001D334(v11);
LABEL_9:
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_15:
  result = (*(v43 + 8))(v18, v44);
  *a5 = v26;
  a5[1] = v27;
  a5[2] = v28;
  a5[3] = v29;
  a5[4] = v30;
  a5[5] = 0;
  a5[6] = v31;
  a5[7] = v32;
  a5[8] = v33;
  return result;
}

void sub_1002BB354(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  sub_10026D814(&qword_1006A37D0, &qword_10057E748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057D690;
  *(inited + 32) = 0xD00000000000002DLL;
  *(inited + 40) = 0x8000000100564E70;
  *(inited + 48) = a1;

  sub_10026D814(&unk_1006AC0B0, &unk_10057E750);
  Dictionary.init(dictionaryLiteral:)();
  v6 = objc_opt_self();
  sub_100455590();
  v8 = v7;

  sub_1002E4C68(v8, v6);
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (a3)[2](a3, isa);

  _Block_release(a3);
}

uint64_t sub_1002BB584()
{
  v0 = type metadata accessor for P256.KeyAgreement.PublicKey();
  sub_100007FEC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100007FDC();
  v6 = v5 - v4;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v7 = P256.KeyAgreement.PublicKey.compactRepresentation.getter();
  (*(v2 + 8))(v6, v0);
  return v7;
}

BOOL LetMeInRequestorKeyAgreement.isExhausted.getter()
{
  v1 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v2 = sub_100007BF0(v1);
  __chkstk_darwin(v2);
  sub_100007BAC();
  v5 = v3 - v4;
  __chkstk_darwin(v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v0 + v9, v8);
  v10 = type metadata accessor for SymmetricKey();
  v11 = sub_100015468(v8, 1, v10);
  sub_100009A5C(v8, &qword_1006A37D8, &qword_10057E770);
  if (v11 != 1)
  {
    return 0;
  }

  v12 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v0 + v12, v5);
  v13 = sub_100015468(v5, 1, v10) == 1;
  sub_100009A5C(v5, &qword_1006A37D8, &qword_10057E770);
  return v13;
}

uint64_t sub_1002BB7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1002BB864(uint64_t a1, unint64_t a2)
{
  v6 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v7 = sub_100007BF0(v6);
  __chkstk_darwin(v7);
  sub_100007BAC();
  v84 = v8 - v9;
  __chkstk_darwin(v10);
  v83 = &v73 - v11;
  type metadata accessor for SharedSecret();
  sub_100007FEC();
  v81 = v13;
  v82 = v12;
  __chkstk_darwin(v12);
  sub_100007FDC();
  v86 = v15 - v14;
  v91 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  sub_100007FEC();
  v17 = v16;
  __chkstk_darwin(v18);
  sub_100007FDC();
  v88 = v20 - v19;
  v21 = type metadata accessor for SymmetricKey();
  sub_100007FEC();
  v80 = v22;
  __chkstk_darwin(v23);
  sub_100007BAC();
  v79 = (v24 - v25);
  __chkstk_darwin(v26);
  v85 = &v73 - v27;
  v28 = sub_10026D814(&qword_1006A3838, &qword_10057E7A0);
  v29 = sub_100007BF0(v28);
  __chkstk_darwin(v29);
  sub_100015F18();
  v30 = type metadata accessor for P256.KeyAgreement.PublicKey();
  sub_100007FEC();
  v87 = v31;
  __chkstk_darwin(v32);
  sub_100007FDC();
  v35 = v34 - v33;
  v36 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_localKey;
  P256.KeyAgreement.PrivateKey.init(compactRepresentable:)();
  v93 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_100007928();
  sub_10000AF74(v37, v38, v39, v21);
  v98 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  v92 = v2;
  sub_100007928();
  sub_10000AF74(v40, v41, v42, v21);
  *&v95 = a1;
  *(&v95 + 1) = a2;
  sub_100290AC4(a1, a2);
  v43 = v90;
  P256.KeyAgreement.PublicKey.init<A>(compactRepresentation:)();
  v89 = v36;
  if (v43)
  {

    sub_100007928();
    sub_10000AF74(v44, v45, v46, v30);
    sub_100009A5C(v3, &qword_1006A3838, &qword_10057E7A0);
    v47 = sub_1002BCB28();
    sub_100008248(&type metadata for ConversationLinkCryptoErrorType, v47);
    *v48 = 0;
    swift_willThrow();
    sub_100049B14(a1, a2);
    v49 = v92;
    (*(v17 + 8))(&v92[v89], v91);
    v52 = sub_1000112A4(v93);
    sub_100009A5C(v52, v53, &qword_10057E770);
    v54 = sub_1000112A4(v98);
    sub_100009A5C(v54, v55, &qword_10057E770);
    type metadata accessor for LetMeInRequestorKeyAgreement(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v77 = v21;
    v78 = a1;
    v90 = a2;
    sub_10000E5C8(v3);
    (*(v87 + 32))(v35, v3, v30);
    v51 = v91;
    v50 = v92;
    (*(v17 + 16))(v88, &v92[v36], v91);
    P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
    v74 = v35;
    v75 = v30;
    v76 = v17;
    v57 = v86;
    v89 = 0;
    type metadata accessor for SHA256();
    v73 = xmmword_10057E760;
    v95 = xmmword_10057E760;
    if (qword_1006A0B98 != -1)
    {
      swift_once();
    }

    v96 = qword_1006A8A00;
    v97 = *algn_1006A8A08;
    sub_100290AC4(qword_1006A8A00, *algn_1006A8A08);
    sub_1002BCB7C();
    v58 = sub_1002BCBD4();
    sub_1000170F8(v58, &v95, &v96, v59, v60, &type metadata for Data);
    sub_100049B14(v96, v97);
    sub_100049B14(v95, *(&v95 + 1));
    v95 = v73;
    v61 = v84;
    v62 = v82;
    if (qword_1006A0BA0 != -1)
    {
      swift_once();
    }

    v96 = qword_1006A8A10;
    v97 = *algn_1006A8A18;
    v63 = sub_100290AC4(qword_1006A8A10, *algn_1006A8A18);
    v64 = v79;
    sub_1000170F8(v63, &v95, &v96, v65, v66, &type metadata for Data);
    (*(v81 + 8))(v57, v62);
    (*(v76 + 8))(v88, v51);
    (*(v87 + 8))(v74, v75);
    sub_100049B14(v96, v97);
    sub_100049B14(v95, *(&v95 + 1));
    v67 = *(v80 + 32);
    v68 = v83;
    v69 = v77;
    v67(v83, v85, v77);
    sub_10000E5C8(v68);
    v67(v61, v64, v69);
    sub_10000E5C8(v61);
    v70 = v93;
    sub_1000170DC(v50 + v93);
    sub_1002BCC28(v68, v50 + v70);
    swift_endAccess();
    v71 = v98;
    sub_1000170DC(v50 + v98);
    sub_1002BCC28(v61, v50 + v71);
    swift_endAccess();
    v72 = type metadata accessor for LetMeInRequestorKeyAgreement(0);
    v94.receiver = v50;
    v94.super_class = v72;
    v49 = objc_msgSendSuper2(&v94, "init");
    sub_100049B14(v78, v90);
  }

  return v49;
}

NSObject *sub_1002BC008(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v4 = v2;
  v66 = a1;
  v5 = sub_10026D814(&qword_1006A3858, &qword_10057E7A8);
  v6 = sub_100007BF0(v5);
  __chkstk_darwin(v6);
  sub_100015F18();
  type metadata accessor for AES.GCM.SealedBox();
  sub_100007FEC();
  v64 = v8;
  v65 = v7;
  __chkstk_darwin(v7);
  sub_100007FDC();
  v71 = (v10 - v9);
  v11 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v12 = sub_100007BF0(v11);
  __chkstk_darwin(v12);
  sub_100007BAC();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = (&v61 - v17);
  v19 = type metadata accessor for SymmetricKey();
  sub_100007FEC();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100007FDC();
  v25 = v24 - v23;
  v26 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_requestKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v4 + v26, v18);
  if (sub_100015468(v18, 1, v19) == 1)
  {
    sub_100009A5C(v18, &qword_1006A37D8, &qword_10057E770);
    v27 = sub_1002BCB28();
    sub_100008248(&type metadata for ConversationLinkCryptoErrorType, v27);
    *v28 = 1;
    swift_willThrow();
    return v18;
  }

  v63 = v21;
  (*(v21 + 32))(v25, v18, v19);
  v29 = sub_1002BB584();
  if (v30 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v31 = type metadata accessor for Logger();
    sub_10000AF9C(v31, qword_1006BA5E0);
    v18 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v18, v32, "Failed to derive let me in requestor's public key from the locally-generated private key", v33, 2u);
    }

    v34 = sub_1002BCB28();
    v35 = sub_100008248(&type metadata for ConversationLinkCryptoErrorType, v34);
    sub_100007C5C(v35, v36);
    goto LABEL_11;
  }

  v37 = v30;
  v62 = v29;
  v69 = v66;
  v70 = v67;
  type metadata accessor for AES.GCM.Nonce();
  sub_100007928();
  sub_10000AF74(v38, v39, v40, v41);
  sub_1002BCBD4();
  v18 = v71;
  v42 = v68;
  static AES.GCM.seal<A>(_:using:nonce:)();
  if (v42)
  {
    sub_100290B6C(v62, v37);
    sub_100009A5C(v3, &qword_1006A3858, &qword_10057E7A8);
LABEL_11:
    v43 = sub_10000FD30();
    v44(v43);
    return v18;
  }

  sub_100009A5C(v3, &qword_1006A3858, &qword_10057E7A8);
  v46 = AES.GCM.SealedBox.combined.getter();
  if (v47 >> 60 == 15)
  {
    if (qword_1006A0B20 != -1)
    {
      sub_100008228(&qword_1006A0B20);
    }

    v48 = type metadata accessor for Logger();
    sub_10000AF9C(v48, qword_1006BA5E0);
    v18 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v18, v49);
    v51 = v63;
    if (v50)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v18, v49, "Failed to retrieve combined data from encrypted LMI response.", v52, 2u);
    }

    v53 = sub_1002BCB28();
    v54 = sub_100008248(&type metadata for ConversationLinkCryptoErrorType, v53);
    sub_100007C5C(v54, v55);
    sub_100290B6C(v62, v37);
    (*(v64 + 8))(v71, v65);
    (*(v51 + 8))(v25, v19);
  }

  else
  {
    v18 = v46;
    (*(v64 + 8))(v71, v65);
    v56 = sub_10000FD30();
    v57(v56);
    sub_100007928();
    sub_10000AF74(v58, v59, v60, v19);
    sub_1000170DC(v4 + v26);
    sub_1002BCC28(v15, v4 + v26);
    swift_endAccess();
  }

  return v18;
}

id sub_1002BC560(uint64_t a1, unint64_t a2)
{
  v42 = a2;
  type metadata accessor for AES.GCM.SealedBox();
  sub_100007FEC();
  v40 = v5;
  v41 = v4;
  __chkstk_darwin(v4);
  sub_100007FDC();
  v8 = v7 - v6;
  v9 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  v10 = sub_100007BF0(v9);
  __chkstk_darwin(v10);
  sub_100007BAC();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for SymmetricKey();
  sub_100007FEC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_100007FDC();
  v23 = v22 - v21;
  v24 = OBJC_IVAR___CSDLetMeInRequestorKeyAgreement_responseKey;
  sub_1000052D0();
  swift_beginAccess();
  sub_1002BB7F4(v2 + v24, v16);
  if (sub_100015468(v16, 1, v17) == 1)
  {
    sub_100009A5C(v16, &qword_1006A37D8, &qword_10057E770);
    v25 = sub_1002BCB28();
    sub_100008248(&type metadata for ConversationLinkCryptoErrorType, v25);
    *v26 = 2;
    swift_willThrow();
    return v2;
  }

  (*(v19 + 32))(v23, v16, v17);
  v27 = v42;
  sub_100290AC4(a1, v42);
  v28 = v43;
  sub_10039C5A8(a1, v27);
  if (v28)
  {
    (*(v19 + 8))(v23, v17);
    return v2;
  }

  v29 = static AES.GCM.open(_:using:)();
  v30 = v8;
  v31 = v29;
  v33 = v32;
  v43 = v30;
  sub_100007928();
  sub_10000AF74(v34, v35, v36, v17);
  sub_1000170DC(v2 + v24);
  sub_1002BCC28(v13, v2 + v24);
  swift_endAccess();
  v37 = objc_allocWithZone(CSDMessagingConversationMessage);
  sub_100290AC4(v31, v33);
  result = sub_10039D1B4();
  if (result)
  {
    v2 = result;
    sub_100049B14(v31, v33);
    (*(v40 + 8))(v43, v41);
    (*(v19 + 8))(v23, v17);
    return v2;
  }

  __break(1u);
  return result;
}

id LetMeInRequestorKeyAgreement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LetMeInRequestorKeyAgreement(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LetMeInRequestorKeyAgreement(uint64_t a1)
{
  result = qword_1006A3820;
  if (!qword_1006A3820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BCA04(uint64_t a1)
{
  type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    sub_1002BCAD0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002BCAD0(uint64_t a1)
{
  if (!qword_1006A3830)
  {
    type metadata accessor for SymmetricKey();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006A3830);
    }
  }
}

unint64_t sub_1002BCB28()
{
  result = qword_1006A3840;
  if (!qword_1006A3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3840);
  }

  return result;
}

unint64_t sub_1002BCB7C()
{
  result = qword_1006A3848;
  if (!qword_1006A3848)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3848);
  }

  return result;
}

unint64_t sub_1002BCBD4()
{
  result = qword_1006A3850;
  if (!qword_1006A3850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006A3850);
  }

  return result;
}

uint64_t sub_1002BCC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10026D814(&qword_1006A37D8, &qword_10057E770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BCC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003CED1C(a1);
  v4 = sub_1002F1DF4(v3);
  sub_1003CEA7C(v4);
  v6 = v5;

  return v6 & 1;
}

uint64_t sub_1002BCDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001E550();
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v42 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = sub_10001E578();
    v39 = result;
    v40 = v9;
    v41 = v10 & 1;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v37 = a3;
      v11 = 0;
      while (!__OFADD__(v11++, 1))
      {
        v13 = v39;
        v14 = v40;
        v15 = v41;
        v16 = sub_100008260();
        sub_1002E9460(v16, v17, v15, a1);
        v19 = v18;
        v20 = [v18 handle];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if ((a1 & 0xC000000000000001) != 0)
        {
          if (!v15)
          {
            goto LABEL_31;
          }

          sub_100008260();
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_10026D814(&unk_1006A38A0, &qword_10057E7C8);
          v25 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v25(v38, 0);
        }

        else
        {
          if (v15)
          {
            goto LABEL_32;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_27;
          }

          v21 = 1 << *(a1 + 32);
          if (v13 >= v21)
          {
            goto LABEL_27;
          }

          v22 = v13 >> 6;
          v23 = *(a1 + 56 + 8 * (v13 >> 6));
          if (((v23 >> v13) & 1) == 0)
          {
            goto LABEL_28;
          }

          if (*(a1 + 36) != v14)
          {
            goto LABEL_29;
          }

          v24 = v23 & (-2 << (v13 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v22 << 6;
            v27 = v22 + 1;
            v28 = (a1 + 64 + 8 * v22);
            while (v27 < (v21 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                v31 = sub_100008260();
                result = sub_100010000(v31, v32, 0);
                v21 = __clz(__rbit64(v29)) + v26;
                goto LABEL_22;
              }
            }

            v33 = sub_100008260();
            result = sub_100010000(v33, v34, 0);
          }

LABEL_22:
          v39 = v21;
          v40 = v14;
          v41 = 0;
        }

        if (v11 == v6)
        {
          sub_100010000(v39, v40, v41);
          v7 = v42;
          a3 = v37;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_25:
    v35 = sub_1002F1DF4(v7);
    v36 = sub_1002BD090(v35, a2, a3);

    return v36;
  }

  return result;
}

uint64_t sub_1002BD090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003CEA7C(a1);
  if (v3)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002BD128(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  sub_100006AF0(0, a5, a6);
  sub_10000CE3C(a7, a5, a6);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = a1;
  v18 = a8(v13, v14, v16);

  return v18;
}

void sub_1002BD204(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_100004778(a1);
  static os_log_type_t.error.getter();
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057D690;
  type metadata accessor for CXCallFailureReason(0);
  v9 = String.init<A>(reflecting:)();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100009D88();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  os_log(_:dso:log:type:_:)("BlockUtilities failing call due to %d", v15);

  [a4 fail];
  v12 = [objc_allocWithZone(CXCallFailureContext) init];
  [v12 setFailureReason:a1];
  if ((a1 - 16) > 5)
  {
    v13 = 511;
  }

  else
  {
    v13 = qword_10057E7D0[a1 - 16];
  }

  [v12 setProviderEndedReason:v13];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [a2 reportCallWithUUID:isa failedAtDate:0 withContext:v12];
}

id sub_1002BD4C4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___CSDBlockUtilities_blocklistUtilities;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for BlocklistUtilities()) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1002BD588(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationUUID] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationGroupUUID] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_uuidToNWActivity] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting] = _swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR___CSDRTCReporter_idsSessionUUIDToChatUUIDs] = _swiftEmptyDictionarySingleton;
  v4 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  *&v1[v4] = Dictionary.init(dictionaryLiteral:)();
  v5 = OBJC_IVAR___CSDRTCReporter_userScoreEnabled;
  v6 = [objc_allocWithZone(TUFeatureFlags) init];
  v7 = [v6 FTUserScore];

  v1[v5] = v7;
  *&v1[OBJC_IVAR___CSDRTCReporter_queue] = a1;
  *&v1[OBJC_IVAR___CSDRTCReporter_chManager] = 0;
  v8 = objc_allocWithZone(CSDAppleIDUtilities);
  v9 = a1;
  v10 = [v8 init];
  *&v1[OBJC_IVAR___CSDRTCReporter_appleIDUtilities] = v10;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "init");

  return v11;
}

id sub_1002BD764(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDToCallReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationUUID] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_callUUIDtoConversationGroupUUID] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_uuidToNWActivity] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_uuidToNWActivityConnecting] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR___CSDRTCReporter_idsSessionUUIDToChatUUIDs] = _swiftEmptyDictionarySingleton;
  v6 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  *&v2[v6] = Dictionary.init(dictionaryLiteral:)();
  v7 = OBJC_IVAR___CSDRTCReporter_userScoreEnabled;
  v8 = [objc_allocWithZone(TUFeatureFlags) init];
  v9 = [v8 FTUserScore];

  v2[v7] = v9;
  *&v2[OBJC_IVAR___CSDRTCReporter_queue] = a1;
  *&v2[OBJC_IVAR___CSDRTCReporter_chManager] = a2;
  v10 = objc_allocWithZone(CSDAppleIDUtilities);
  v11 = a1;
  v12 = a2;
  v13 = [v10 init];
  *&v2[OBJC_IVAR___CSDRTCReporter_appleIDUtilities] = v13;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, "init");

  return v14;
}

void sub_1002BD96C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v73 = &v69 - v10;
  v11 = __chkstk_darwin(v9);
  v74 = &v69 - v12;
  __chkstk_darwin(v11);
  v14 = &v69 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR___CSDRTCReporter_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = [a1 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationReportingSessions;
    swift_beginAccess();
    v23 = sub_100025C58(v14, *(v2 + v22));
    swift_endAccess();
    v25 = v5 + 8;
    v24 = *(v5 + 8);
    v26 = v24(v14, v4);
    if (v23)
    {

      v28 = sub_10003D4D0(v27);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_10057D690;
      v30 = [a1 UUID];
      v31 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 16))(v73, v31, v4);
      v32 = String.init<A>(reflecting:)();
      v34 = v33;
      v24(v31, v4);
      *(v29 + 56) = &type metadata for String;
      *(v29 + 64) = sub_100009D88();
      *(v29 + 32) = v32;
      *(v29 + 40) = v34;
      v35 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("conversation reporting session exists for uuid %@", 49, 2, &_mh_execute_header, v28, v35, v29);
    }

    else
    {
      v70 = sub_10003D4D0(v26);
      sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10057D690;
      v37 = [a1 UUID];
      v71 = a1;
      v38 = v8;
      v39 = v24;
      v40 = v37;
      v41 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v5 + 16))(v73, v41, v4);
      v42 = String.init<A>(reflecting:)();
      v44 = v43;
      v72 = v25;
      v73 = v4;
      v45 = v4;
      v46 = v39;
      v39(v41, v45);
      v47 = v38;
      v48 = v71;
      *(v36 + 56) = &type metadata for String;
      *(v36 + 64) = sub_100009D88();
      *(v36 + 32) = v42;
      *(v36 + 40) = v44;
      v49 = static os_log_type_t.default.getter();
      v50 = v70;
      os_log(_:dso:log:type:_:)("Creating conversation reporting session for conversation uuid %@", 64, 2, &_mh_execute_header, v70, v49, v36);

      v51 = [v48 reportingHierarchyToken];
      v52 = sub_1002C6DAC(v48, v51);

      v53 = [v48 groupUUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      if (v52)
      {
        v61 = v52;
        swift_isUniquelyReferenced_nonNull_native();
        v75 = *(v2 + v22);
        sub_1003788C4();
        *(v2 + v22) = v75;
      }

      else
      {
        sub_100383A0C(v47, v54, v55, v56, v57, v58, v59, v60, v69, v70);

        v61 = 0;
      }

      v63 = v73;
      v64 = v46;
      v46(v47, v73);
      swift_endAccess();
      v65 = [v48 groupUUID];
      v66 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v67 = objc_allocWithZone(type metadata accessor for RTCCSDConversationInfo(0));
      sub_1004471E0(v48);
      v68 = OBJC_IVAR___CSDRTCReporter_groupUUIDToConversationInfo;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v75 = *(v2 + v68);
      sub_10037889C();
      *(v2 + v68) = v75;
      v64(v66, v63);
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002BE04C(void *a1, uint64_t a2, void *a3)
{
  if ([a1 supportsRelay])
  {
    v5 = [a3 callUUID];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = OBJC_IVAR___CSDRTCReporter_relayDeviceRouteChangesByCallUUID;
    swift_beginAccess();
    v10 = sub_100005E74(v6, v8, *(a2 + v9));

    if (v10)
    {
      swift_endAccess();
      v11 = sub_100320904(v10);

      if (v11)
      {
        v11[OBJC_IVAR____TtC13callservicesd22RTCCSDRelayDeviceRoute_failed] = 0;
      }
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_1002BE1E8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a2 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v6, v8, v9, v10, v11, v12, v13, v14, v28, v29);
  v16 = v15;
  v17 = *(v4 + 8);
  v17(v6, v3);
  swift_endAccess();

  v18 = [a2 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  sub_100383A0C(v6, v19, v20, v21, v22, v23, v24, v25, v28, v29);
  v27 = v26;
  v17(v6, v3);
  swift_endAccess();
}

void sub_1002BE38C(uint64_t a1, id a2)
{
  v3 = [a2 callUUID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = OBJC_IVAR___CSDRTCReporter_callInfosPendingScoreForCallUUIDs;
  swift_beginAccess();
  v8 = sub_1002CB61C(v4, v6, *(a1 + v7));
  v10 = v9;

  swift_endAccess();
  if (v8)
  {
    if (v8 == 1)
    {
      return;
    }

    sub_1002BE480();
  }
}

void sub_1002BE480()
{
  sub_100005EF4();
  v27 = v2;
  v4 = v3;
  v6 = v5;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100007FEC();
  __chkstk_darwin(v7);
  sub_10000E598();
  type metadata accessor for DispatchQoS();
  sub_100007FEC();
  v28 = v9;
  v29 = v8;
  __chkstk_darwin(v8);
  sub_10000E4F4();
  v11 = sub_10003D4D0(v10);
  sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10057D690;

  v13 = String.init<A>(reflecting:)();
  v15 = v14;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100009D88();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("UserScore: ReportController: reached RTCReporter with current UUID: %@", 70, 2, &_mh_execute_header, v11, v16, v12);

  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  *(v17 + 24) = v6;
  *(v17 + 32) = v4;
  *(v17 + 40) = v27;
  v30[4] = sub_1002C75F8;
  v30[5] = v17;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_100004CEC;
  v30[3] = &unk_100623E80;
  v18 = _Block_copy(v30);

  v19 = v0;
  static DispatchQoS.unspecified.getter();
  sub_10000A01C();
  sub_10000ED20(v20, v21, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10026D814(&unk_1006A2960, &unk_10057D6E0);
  sub_10000826C();
  sub_10001000C(v22, v23, &unk_10057D6E0, v24);
  sub_10000E970();
  sub_100015F2C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100008AB0();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v25 = sub_100007764();
  v26(v25);
  (*(v28 + 8))(v1, v29);

  sub_100005EDC();
}

uint64_t sub_1002BE79C(void *a1, uint64_t a2)
{
  v3 = v2;
  v142 = a2;
  v139 = a1;
  v4 = sub_10026D814(&unk_1006A3DD0, &unk_10057C9D0);
  v5 = __chkstk_darwin(v4 - 8);
  v130 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v125 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v131 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v125 - v14;
  v15 = __chkstk_darwin(v13);
  v127 = &v125 - v16;
  v17 = __chkstk_darwin(v15);
  v137 = &v125 - v18;
  v19 = __chkstk_darwin(v17);
  v135 = &v125 - v20;
  __chkstk_darwin(v19);
  v22 = &v125 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v3 + OBJC_IVAR___CSDRTCReporter_queue);
  *v26 = v27;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  v29 = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if (v29)
  {
    v136 = v10;
    v32 = v10 + 2;
    v31 = v10[2];
    v33 = v142;
    v31(v22, v142, v9);
    v34 = v139;
    v35 = [v139 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000AF74(v8, 0, 1, v9);
    swift_beginAccess();
    sub_10003D99C(v8, v22);
    swift_endAccess();
    v31(v22, v33, v9);
    v36 = [v34 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10000AF74(v8, 0, 1, v9);
    swift_beginAccess();
    sub_10003D99C(v8, v22);
    swift_endAccess();
    v37 = [v34 groupUUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v140 = v32;
    v31(v8, v142, v9);
    v38 = v31;
    sub_10000AF74(v8, 0, 1, v9);
    v39 = OBJC_IVAR___CSDRTCReporter_conversationGroupUUIDToCallUUID;
    swift_beginAccess();
    v128 = v39;
    v138 = v22;
    sub_10003D99C(v8, v22);
    swift_endAccess();
    v40 = [v34 UUID];
    v41 = v135;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = [v34 report];
    v43 = OBJC_IVAR___CSDRTCReporter_conversationUUIDToConversationReport;
    swift_beginAccess();
    v141 = v3;
    if (v42)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v143 = *(v3 + v43);
      sub_1003788EC();
      *(v3 + v43) = v143;
    }

    else
    {
      sub_100383A30(v41, v44, v45, v46, v47, v48, v49, v50, v125, v126);
    }

    v53 = v136 + 8;
    v52 = *(v136 + 1);
    v52(v41, v9);
    v54 = swift_endAccess();
    v55 = sub_10003D4D0(v54);
    v135 = sub_10026D814(&qword_1006A2980, &unk_10057DCE0);
    v56 = swift_allocObject();
    v133 = xmmword_10057D690;
    *(v56 + 16) = xmmword_10057D690;
    v57 = [v34 UUID];
    v58 = v9;
    v59 = v138;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v38(v137, v59, v58);
    v60 = String.init<A>(reflecting:)();
    v62 = v61;
    v134 = v52;
    v52(v59, v58);
    *(v56 + 56) = &type metadata for String;
    v63 = sub_100009D88();
    *(v56 + 64) = v63;
    *(v56 + 32) = v60;
    *(v56 + 40) = v62;
    v64 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("multiway call reporting session %@", 34, 2, &_mh_execute_header, v55, v64, v56);

    v65 = OBJC_IVAR___CSDRTCReporter_callUUIDToGFTCallReportingSessions;
    v66 = v141;
    swift_beginAccess();
    v67 = v142;
    v68 = sub_100025C58(v142, *(v66 + v65));
    swift_endAccess();
    if (v68)
    {

      v70 = sub_10003D4D0(v69);
      v71 = swift_allocObject();
      *(v71 + 16) = v133;
      v38(v59, v67, v58);
      v72 = String.init<A>(reflecting:)();
      *(v71 + 56) = &type metadata for String;
      *(v71 + 64) = v63;
      *(v71 + 32) = v72;
      *(v71 + 40) = v73;
      v74 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("multiway call reporting session already exists for uuid %@", 58, 2, &_mh_execute_header, v70, v74, v71);

      v75 = v141;
      swift_beginAccess();
      v76 = sub_100025C58(v67, *(v75 + v65));
      swift_endAccess();
    }

    else
    {
      v132 = v53;
      v126 = v38;
      v77 = v139;
      v78 = [v139 reportingHierarchySubToken];
      if (!v78)
      {
        v79 = sub_10003D4D0(0);
        v80 = swift_allocObject();
        *(v80 + 16) = v133;
        v126(v138, v67, v58);
        v81 = String.init<A>(reflecting:)();
        *(v80 + 56) = &type metadata for String;
        *(v80 + 64) = v63;
        *(v80 + 32) = v81;
        *(v80 + 40) = v82;
        v83 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("no reporting token for callUUID: %@", 35, 2, &_mh_execute_header, v79, v83, v80);
      }

      *&v133 = v78;
      v84 = [v77 groupUUID];
      v85 = v129;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v86 = v130;
      sub_1002CB574();
      if (sub_100015468(v86, 1, v58) == 1)
      {
        sub_1000099A4(v86, &unk_1006A3DD0, &unk_10057C9D0);
        swift_endAccess();
        v87 = v134(v85, v58);
      }

      else
      {
        v88 = v127;
        (*(v136 + 4))(v127, v86, v58);
        swift_endAccess();
        v89 = v134;
        v134(v85, v58);
        swift_beginAccess();
        sub_100383A0C(v88, v90, v91, v92, v93, v94, v95, v96, v125, v126);
        v98 = v97;
        swift_endAccess();

        v87 = v89(v88, v58);
      }

      v136 = sub_10003D4D0(v87);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_10057D6A0;
      v100 = v138;
      v101 = v126;
      v126(v138, v67, v58);
      v102 = String.init<A>(reflecting:)();
      *(v99 + 56) = &type metadata for String;
      *(v99 + 64) = v63;
      *(v99 + 32) = v102;
      *(v99 + 40) = v103;
      v104 = [v139 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v101(v137, v100, v58);
      v105 = String.init<A>(reflecting:)();
      v107 = v106;
      v108 = v100;
      v109 = v58;
      v134(v108, v58);
      *(v99 + 96) = &type metadata for String;
      *(v99 + 104) = v63;
      *(v99 + 72) = v105;
      *(v99 + 80) = v107;
      v110 = v142;
      v111 = static os_log_type_t.default.getter();
      v112 = v136;
      os_log(_:dso:log:type:_:)("Creating multiway call %@ reporting session for conversation UUID %@", 68, 2, &_mh_execute_header, v136, v111, v99);

      v113 = v131;
      v101(v131, v110, v109);
      v114 = v133;
      v115 = v141;
      v116 = sub_1002C6DAC(v139, v133);
      swift_beginAccess();
      if (v116)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v143 = *(v115 + v65);
        sub_1003788C4();
        *(v115 + v65) = v143;
      }

      else
      {
        sub_100383A0C(v113, v117, v118, v119, v120, v121, v122, v123, v125, v126);
      }

      v134(v113, v109);
      swift_endAccess();
      swift_beginAccess();
      v76 = sub_100025C58(v110, *(v115 + v65));
      swift_endAccess();
    }

    return v76;
  }

  else
  {
    __break(1u);
  }

  return result;
}