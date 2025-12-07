unint64_t sub_1000A4474()
{
  result = qword_1002A9C30;
  if (!qword_1002A9C30)
  {
    sub_10009589C(&unk_1002A7B10, &unk_10023F3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9C30);
  }

  return result;
}

unint64_t sub_1000A44D8()
{
  result = qword_1002AA500;
  if (!qword_1002AA500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AA500);
  }

  return result;
}

uint64_t sub_1000A452C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000A0D2C(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SetupPayload.Version(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SetupPayload.Version(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A46B8()
{
  result = qword_1002A7008;
  if (!qword_1002A7008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7008);
  }

  return result;
}

void sub_1000A470C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = [v1 primaryAccessory];
    if (v2)
    {
      v3 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController;
      if (!*(v0 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
      {
        v16 = v2;
        v4 = objc_opt_self();
        sub_100095274(&unk_1002A73A0, &qword_10023C670);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_10023C170;
        *(v5 + 56) = &type metadata for UInt32;
        *(v5 + 64) = &protocol witness table for UInt32;
        *(v5 + 32) = 297;
        String.init(format:_:)();
        v6 = String._bridgeToObjectiveC()();

        v7 = [v4 UUIDWithString:v6];

        v8 = [v7 UUIDString];
        if (!v8)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v8 = String._bridgeToObjectiveC()();
        }

        v9 = [v16 servicesOfType:v8];

        if (v9 && (v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = sub_1000A52A4(v10), , v11))
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v12 = v11[4];
          }

          v13 = v12;

          v14 = [objc_allocWithZone(DataStreamController) initWithAccessory:v16 service:v13 workQueue:*(v0 + 40)];
        }

        else
        {
          [*(v0 + v3) deRegisterFromNotifications];
          v15 = *(v0 + v3);
          [v15 invalidate];

          v14 = 0;
        }

        v2 = *(v0 + v3);
        *(v0 + v3) = v14;
      }
    }
  }
}

void sub_1000A49A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (v8)
  {
    v9 = v8;
    v20 = String._bridgeToObjectiveC()();
    [v9 addBulkSendListener:a2 fileType:v20];

    v10 = v20;
  }

  else
  {
    (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v4);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = *(a1 + 24);
      v16 = DockCoreInfo.description.getter();
      v18 = v17;

      v19 = sub_1000952D4(v16, v18, &v21);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Cancelling listener registration due to no active data stream %s", v13, 0xCu);
      sub_100095808(v14);
    }

    (*(v5 + 8))(v7, v4);
  }
}

id sub_1000A4C20(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (v8)
  {

    return [v8 removeBulkSendListener:a2];
  }

  else
  {
    (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v4);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v12 = 136315138;
      v13 = *(a1 + 24);
      v14 = DockCoreInfo.description.getter();
      v20 = a2;
      v16 = v15;

      v17 = sub_1000952D4(v14, v16, &v21);
      a2 = v20;

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Cancelling listener registration due to no active data stream %s", v12, 0xCu);
      sub_100095808(v19);
    }

    (*(v5 + 8))(v7, v4);
    return [a2 accessoryDidCloseDataStream:a1];
  }
}

id sub_1000A4E88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (result)
  {
    result = [result setupRequiresCharactertisticReads];
  }

  *a2 = result;
  return result;
}

void sub_1000A4ED4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class isa, uint64_t a8)
{
  v19 = a2;
  v20 = a8;
  v10 = sub_100095274(&qword_1002A7018, &qword_10023C180);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  (*(v11 + 16))(v13, a1, v10);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v13, v10);
  aBlock[4] = sub_1000A5470;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A5218;
  aBlock[3] = &unk_100275CE8;
  v18 = _Block_copy(aBlock);

  [v19 openBulkSendSessionForFileType:v14 reason:v15 metadata:isa queue:v20 callback:v18];
  _Block_release(v18);
}

uint64_t sub_1000A5104(void *a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
LABEL_3:
    sub_100095274(&qword_1002A7018, &qword_10023C180);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v4 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v5 = 0xD000000000000024;
    v5[1] = 0x800000010022F730;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.CommunicationFailure(_:), v4);
    goto LABEL_3;
  }

  v3 = a1;
  sub_100095274(&qword_1002A7018, &qword_10023C180);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000A5218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id *sub_1000A52A4(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_100095B34(i, v6);
    sub_1000A5390(0, v4);
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
      return v7;
    }
  }

  return 0;
}

unint64_t sub_1000A5390(uint64_t a1, uint64_t a2)
{
  result = qword_1002A7010;
  if (!qword_1002A7010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A7010);
  }

  return result;
}

uint64_t sub_1000A53DC()
{
  v1 = sub_100095274(&qword_1002A7018, &qword_10023C180);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000A5470(void *a1, uint64_t a2)
{
  sub_100095274(&qword_1002A7018, &qword_10023C180);

  return sub_1000A5104(a1, a2);
}

uint64_t sub_1000A54FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000A5514()
{
  result = qword_1002A6F50;
  if (!qword_1002A6F50)
  {
    type metadata accessor for Errors();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A6F50);
  }

  return result;
}

Swift::Int sub_1000A5580()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000A55F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void *sub_1000A5644(uint64_t a1, unint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7138, &qword_10023C3A8);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v7)
  {
    goto LABEL_6;
  }

  sub_1000A0CD8(a1, a2);
LABEL_6:
  Data.Iterator.init(_:at:)();
  type metadata accessor for Data.Iterator();
  sub_1000B5038(&qword_1002A7140, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  result = dispatch thunk of IteratorProtocol.next()();
  v9 = 0;
  v10 = 0;
  if (v18)
  {
LABEL_19:
    *&v6[*(v4 + 36)] = v10;
    sub_100095C84(v6, &qword_1002A7138, &qword_10023C3A8);
    return v9;
  }

  else
  {
    v9 = 0;
    v11 = -7;
    v12 = 7;
    while (1)
    {
      v10 = v11 + 8;
      if (__OFADD__(v11 + 7, 1))
      {
        break;
      }

      v13 = v17 << v12;
      if (v12 >= 0x40)
      {
        v13 = 0;
      }

      v14 = v17 >> v11;
      if (v12 <= 0xFFFFFFFFFFFFFFC0)
      {
        v14 = 0;
      }

      if (v11 + 7 >= 8)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      if ((v11 - 65) < 0xFFFFFFFFFFFFFF7FLL)
      {
        v15 = 0;
      }

      v9 |= v15;
      result = dispatch thunk of IteratorProtocol.next()();
      ++v11;
      --v12;
      if (v18 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A5820@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2F20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000A584C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000B5350;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275F88;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

void *sub_1000A5B08(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting Pair-setup", v9, 2u);
  }

  (*(v4 + 8))(v6, v3);
  sub_1000B3CF8(0, 0xF000000000000000);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if ([result respondsToSelector:"pairSetupSessionDidStart:"])
    {
      [v11 pairSetupSessionDidStart:a1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000A5D58(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000B5348;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275F38;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

void sub_1000A6020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_100095274(&unk_1002A7170, &qword_10023C3C8);
  __chkstk_darwin(v7 - 8);
  v41 = &v39 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = *(v10 + 16);
  v42 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v43 = v16;
  v16(&v39 - v14, a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v9);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = v6;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Stopping Pair-setup", v19, 2u);
    v6 = v40;
  }

  v20 = *(v10 + 8);
  v20(v15, v9);
  if (*(a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type) != 3)
  {
    v21 = type metadata accessor for SPAKE2.Prover();
    v22 = v41;
    (*(*(v21 - 8) + 56))(v41, 1, 1, v21);
    v23 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
    swift_beginAccess();
    sub_1000B51CC(v22, a1 + v23, &unk_1002A7170, &qword_10023C3C8);
    swift_endAccess();
    v24 = type metadata accessor for SymmetricKey();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    v25 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
    swift_beginAccess();
    sub_1000B51CC(v6, a1 + v25, &qword_1002A7148, &unk_10023C3B0);
    swift_endAccess();
  }

  if (a2)
  {
    v43(v13, a1 + v42, v9);
    swift_errorRetain();
    v26 = v13;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v43 = v20;
      v30 = v29;
      v31 = swift_slowAlloc();
      v44[0] = v31;
      *v30 = 136315138;
      swift_getErrorValue();
      v42 = v26;
      v32 = Error.localizedDescription.getter();
      v34 = a2;
      v35 = sub_1000952D4(v32, v33, v44);

      *(v30 + 4) = v35;
      a2 = v34;
      _os_log_impl(&_mh_execute_header, v27, v28, "Pair-setup failed: %s", v30, 0xCu);
      sub_100095808(v31);

      (v43)(v42, v9);
    }

    else
    {

      v20(v26, v9);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    if ([Strong respondsToSelector:"pairSetupSession:didStopWithError:"])
    {
      if (a2)
      {
        v38 = _convertErrorToNSError(_:)();
      }

      else
      {
        v38 = 0;
      }

      [v37 pairSetupSession:a1 didStopWithError:v38];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_1000A65B0()
{
  v1 = v0;
  v2 = type metadata accessor for Data.Deallocator();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pair-setup: M1", v11, 2u);
  }

  (*(v6 + 8))(v8, v5);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  TLV8BufferInit();
  TLV8BufferAppendUInt64();
  sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10023C170;
  v13 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  *(v12 + 32) = *(v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state);
  v14 = sub_100104264(v12);
  v16 = v15;

  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v14, v16);
  [(objc_class *)v17.super.isa bytes];
  [(objc_class *)v17.super.isa length];
  TLV8BufferAppend();
  LODWORD(v31) = *(v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags);
  TLV8BufferAppend();
  v30 = 0;
  v31 = 0;
  TLV8BufferDetach();
  v18 = v31;
  if (v31 && (v19 = v30, v30 >= 1))
  {
    (*(v28 + 104))(v4, enum case for Data.Deallocator.free(_:), v29);
    v20 = sub_1000B35D0(v18, v19, v4);
    v22 = v21;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      isa = Data._bridgeToObjectiveC()().super.isa;
      [v24 pairSetupSession:v1 didReceiveSetupExchangeData:isa];
      sub_1000A0D2C(v20, v22);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000A0D2C(v20, v22);
    }

    *(v1 + v13) = 2;
    TLV8BufferFree();
  }

  else
  {
    sub_1000B4F34();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1000A69F8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v4;
  v15[5] = a3;
  v15[6] = a4;
  aBlock[4] = sub_1000B52F8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275EE8;
  v16 = _Block_copy(aBlock);
  sub_1000B4F20(a1, a2);
  v17 = v4;
  sub_1000A0CD8(a3, a4);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v11, v9);
  (*(v12 + 8))(v14, v20);
}

void *sub_1000A6CE8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  v17 = *(v11 + 16);
  v18 = a3 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  if (a2 >> 60 == 15)
  {
    v17(&v33 - v15, v18, v10);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "M2: Cannot get Setup Code from user!", v21, 2u);
    }

    (*(v11 + 8))(v16, v10);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v23 = result;
      if ([result respondsToSelector:"pairSetupSessionDidReceiveInvalidSetupCode:"])
      {
        [v23 pairSetupSessionDidReceiveInvalidSetupCode:a3];
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v17(v14, v18, v10);
    sub_1000A0CD8(a1, a2);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v34 = a4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a3;
      v37 = v28;
      v33 = v28;
      *v27 = 136380675;
      v29 = sub_10013B46C(a1, a2);
      v35 = a5;
      v31 = a1;
      v32 = sub_1000952D4(v29, v30, &v37);
      a5 = v35;

      *(v27 + 4) = v32;
      a1 = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "M2: Got Setup Code from user: %{private}s", v27, 0xCu);
      sub_100095808(v33);

      a4 = v34;
    }

    (*(v11 + 8))(v14, v10);
    sub_1000A75DC(a1, a2, a4, a5);
    return sub_1000A452C(a1, a2);
  }

  return result;
}

void sub_1000A7060(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v56 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v53 = &v48 - v10;
  __chkstk_darwin(v9);
  v12 = &v48 - v11;
  v13 = *(v6 + 16);
  v55 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v13(&v48 - v11, &v3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Pair-setup: M2", v16, 2u);
  }

  v17 = *(v6 + 8);
  v17(v12, v5);
  if (a2 >> 60 != 15)
  {
    v50 = v17;
    v18 = v57;
    sub_1000B4F20(v57, a2);
    v19 = sub_1000B38B8(v18, a2, 3u);
    v21 = v20;
    v54 = v3;
    v22 = &v3[v55];
    v23 = v53;
    v49 = v13;
    v13(v53, v22, v5);
    sub_1000A0CD8(v19, v21);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_1000A0D2C(v19, v21);
    v26 = os_log_type_enabled(v24, v25);
    v51 = v19;
    v52 = v21;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = a2;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136380675;
      v30 = sub_10013B46C(v19, v21);
      v32 = sub_1000952D4(v30, v31, aBlock);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "M2: shareV %{private}s", v27, 0xCu);
      sub_100095808(v29);
      a2 = v48;
    }

    v33 = v50;
    v50(v23, v5);
    v34 = a2;
    v35 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v35 bytes];
    [(objc_class *)v35 length];
    [(objc_class *)v35 bytes];
    UInt64 = TLV8GetUInt64();
    v49(v56, &v54[v55], v5);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = UInt64;
      _os_log_impl(&_mh_execute_header, v37, v38, "M2: flags %llu", v39, 0xCu);
    }

    v33(v56, v5);
    v40 = v54;
    v54[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 3;
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v51;
    if (Strong)
    {
      v43 = Strong;
      v44 = swift_allocObject();
      v44[2] = v40;
      v44[3] = v42;
      v45 = v52;
      v44[4] = v52;
      aBlock[4] = sub_1000B5274;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001B2348;
      aBlock[3] = &unk_100275E98;
      v46 = _Block_copy(aBlock);
      sub_1000A0CD8(v42, v45);
      v47 = v40;

      [v43 pairSetupSession:v47 didReceiveSetupCodeRequestWithCompletionHandler:v46];
      sub_1000A0D2C(v42, v45);
      swift_unknownObjectRelease();

      sub_1000A452C(v57, v34);
      _Block_release(v46);
    }

    else
    {
      sub_1000A0D2C(v51, v52);

      sub_1000A452C(v57, a2);
    }
  }
}

uint64_t sub_1000A75DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v156 = a1;
  v5 = v4;
  v147 = a3;
  v148 = a4;
  v172 = a2;
  v6 = type metadata accessor for Data.Deallocator();
  v143 = *(v6 - 8);
  v144 = v6;
  __chkstk_darwin(v6);
  v142 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SPAKE2.CipherSuite();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v171 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100095274(&unk_1002A7170, &qword_10023C3C8);
  v11 = __chkstk_darwin(v10 - 8);
  v151 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v155 = &v141 - v13;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v146 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v150 = &v141 - v19;
  v20 = __chkstk_darwin(v18);
  v152 = (&v141 - v21);
  v22 = __chkstk_darwin(v20);
  v145 = (&v141 - v23);
  v24 = __chkstk_darwin(v22);
  v149 = (&v141 - v25);
  __chkstk_darwin(v24);
  v27 = &v141 - v26;
  v28 = *(v15 + 16);
  v160 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v161 = v28;
  v162 = v15 + 16;
  v28((&v141 - v26), v5 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v14);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pair-setup: M3", v31, 2u);
  }

  v163 = v14;

  v158 = *(v15 + 8);
  v159 = v15 + 8;
  v158(v27, v14);
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  v32 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption;
  if (*(v5 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption))
  {
    v33 = 0x74694B6B636F44;
  }

  else
  {
    v33 = 0x72696173726F43;
  }

  v34 = 0xE700000000000000;
  String.append(_:)(*&v33);

  v35._object = 0xED00006F666E492DLL;
  v35._countAndFlagsBits = 0x676E69726961502DLL;
  String.append(_:)(v35);
  v36 = sub_100100D58(v177[0], v177[1]);
  v173 = v37;
  v174 = v36;
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  if (*(v5 + v32))
  {
    v38 = 0x74694B6B636F44;
  }

  else
  {
    v38 = 0x72696173726F43;
  }

  v39 = 0xE700000000000000;
  String.append(_:)(*&v38);

  v40._object = 0xED0000746C61532DLL;
  v40._countAndFlagsBits = 0x676E69726961502DLL;
  String.append(_:)(v40);
  v167 = sub_100100D58(v177[0], v177[1]);
  v168 = v41;
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  if (*(v5 + v32))
  {
    v42 = 0x74694B6B636F44;
  }

  else
  {
    v42 = 0x72696173726F43;
  }

  v43 = 0xE700000000000000;
  String.append(_:)(*&v42);

  v44._countAndFlagsBits = 0x7265766F72502DLL;
  v44._object = 0xE700000000000000;
  String.append(_:)(v44);
  v169 = sub_100100D58(v177[0], v177[1]);
  v170 = v45;
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  if (*(v5 + v32))
  {
    v46 = 0x74694B6B636F44;
  }

  else
  {
    v46 = 0x72696173726F43;
  }

  v47 = 0xE700000000000000;
  String.append(_:)(*&v46);
  v48._countAndFlagsBits = 0x656966697265562DLL;
  v48._object = 0xE900000000000072;
  String.append(_:)(v48);
  v166 = sub_100100D58(v177[0], v177[1]);
  v50 = v49;
  v177[0] = 0;
  v177[1] = 0xE000000000000000;
  v164 = v5;
  if (*(v5 + v32))
  {
    v51 = 0x74694B6B636F44;
  }

  else
  {
    v51 = 0x72696173726F43;
  }

  v52 = 0xE700000000000000;
  String.append(_:)(*&v51);
  v53._countAndFlagsBits = 0x65532D726961502DLL;
  v53._object = 0xEB00000000707574;
  String.append(_:)(v53);
  v54 = sub_100100D58(v177[0], v177[1]);
  v56 = v55;
  v165 = v55;
  (*(v153 + 104))(v171, enum case for SPAKE2.CipherSuite.P256_SHA256_HKDF_SHA256_HMAC_SHA256(_:), v154);
  sub_1000A0CD8(v156, v172);
  sub_1000A0CD8(v167, v168);
  sub_1000A0CD8(v174, v173);
  sub_1000A0CD8(v54, v56);
  sub_1000A0CD8(v166, v50);
  sub_1000A0CD8(v169, v170);
  v171 = v50;
  v57 = v155;
  v58 = v173;
  v172 = v54;
  v59 = v157;
  SPAKE2.Prover.init(seed:salt:info:context:verifierID:proverID:cipherSuite:)();
  if (v59)
  {
    v60 = v163;
    v61 = v152;
    v161(v152, v164 + v160, v163);
    swift_errorRetain();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v177[0] = v65;
      *v64 = 136315138;
      swift_getErrorValue();
      v66 = Error.localizedDescription.getter();
      v68 = v58;
      v69 = sub_1000952D4(v66, v67, v177);

      *(v64 + 4) = v69;
      v58 = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Unable to create Spake2+ prover: %s", v64, 0xCu);
      sub_100095808(v65);

      v70 = v152;
      v71 = v163;
    }

    else
    {

      v70 = v61;
      v71 = v60;
    }

    v158(v70, v71);
    sub_1000B4F34();
    swift_allocError();
    *v84 = 1;
    swift_willThrow();

    sub_1000A0D2C(v172, v165);
    sub_1000A0D2C(v166, v171);
    sub_1000A0D2C(v169, v170);
    sub_1000A0D2C(v167, v168);
    v85 = v174;
    v86 = v58;
    return sub_1000A0D2C(v85, v86);
  }

  v72 = type metadata accessor for SPAKE2.Prover();
  v73 = *(v72 - 8);
  (*(v73 + 56))(v57, 0, 1, v72);
  v74 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
  v75 = v164;
  swift_beginAccess();
  sub_1000B51CC(v57, v75 + v74, &unk_1002A7170, &qword_10023C3C8);
  swift_endAccess();
  memset(v177, 0, sizeof(v177));
  TLV8BufferInit();
  v155 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  LOBYTE(v176[0]) = *(v75 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state);
  TLV8BufferAppend();
  v156 = v74;
  v76 = v151;
  sub_1000B5150(v75 + v74, v151, &unk_1002A7170, &qword_10023C3C8);
  v77 = *(v73 + 48);
  v157 = v72;
  result = v77(v76, 1, v72);
  if (result == 1)
  {
    __break(1u);
LABEL_83:
    __break(1u);
    return result;
  }

  v80 = SPAKE2.Prover.getShare()();
  v81 = 0;
  v82 = v76;
  v83 = v163;
  v87 = v79;
  (*(v73 + 8))(v82, v157);
  v88 = v87 >> 62;
  v153 = 0;
  v154 = v77;
  if ((v87 >> 62) > 1)
  {
    if (v88 != 2)
    {
      memset(v176, 0, 14);
      goto LABEL_40;
    }

    v89 = *(v80 + 16);
    v90 = *(v80 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v89, __DataStorage._offset.getter()))
    {
      goto LABEL_76;
    }

    if (!__OFSUB__(v90, v89))
    {
      __DataStorage._length.getter();
      TLV8BufferAppend();
      v91 = v149;
LABEL_38:
      v81 = v153;
      goto LABEL_41;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v88)
  {
    if (v80 >> 32 >= v80)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v80, __DataStorage._offset.getter()))
      {
        v91 = v149;
        __DataStorage._length.getter();
        TLV8BufferAppend();
        goto LABEL_38;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    __break(1u);
    goto LABEL_75;
  }

  v176[0] = v80;
  LOWORD(v176[1]) = v87;
  BYTE2(v176[1]) = BYTE2(v87);
  BYTE3(v176[1]) = BYTE3(v87);
  BYTE4(v176[1]) = BYTE4(v87);
  BYTE5(v176[1]) = BYTE5(v87);
LABEL_40:
  TLV8BufferAppend();
  v91 = v149;
LABEL_41:
  v161(v91, v164 + v160, v83);
  sub_1000A0CD8(v80, v87);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  sub_1000A0D2C(v80, v87);
  v152 = v92;
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v176[0] = v95;
    *v94 = 136380675;
    v96 = sub_10013B46C(v80, v87);
    v98 = sub_1000952D4(v96, v97, v176);
    v81 = v153;

    *(v94 + 4) = v98;
    v99 = v152;
    _os_log_impl(&_mh_execute_header, v152, v93, "M3: shareP %{private}s", v94, 0xCu);
    sub_100095808(v95);
    v83 = v163;

    sub_1000A0D2C(v80, v87);
    v100 = v149;
  }

  else
  {
    sub_1000A0D2C(v80, v87);

    v100 = v91;
  }

  v101 = v158;
  v158(v100, v83);
  v102 = v164;
  v103 = v156;
  swift_beginAccess();
  result = v154(v102 + v103, 1, v157);
  if (result == 1)
  {
    goto LABEL_83;
  }

  v104 = SPAKE2.Prover.processPeerShareAndGenerateVerificationTag(peerShare:)();
  if (!v81)
  {
    v114 = v104;
    v115 = v105;
    swift_endAccess();
    v116 = v115 >> 62;
    v157 = v114;
    if ((v115 >> 62) > 1)
    {
      if (v116 != 2)
      {
        memset(v176, 0, 14);
        TLV8BufferAppend();
        v117 = v145;
        goto LABEL_63;
      }

      v119 = v114;
      v120 = *(v114 + 16);
      v121 = *(v119 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v120, __DataStorage._offset.getter()))
      {
        goto LABEL_80;
      }

      if (!__OFSUB__(v121, v120))
      {
LABEL_61:
        __DataStorage._length.getter();
        TLV8BufferAppend();
        v102 = v164;
        v117 = v145;
        v114 = v157;
        goto LABEL_63;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v117 = v145;
    if (!v116)
    {
      v176[0] = v114;
      LOWORD(v176[1]) = v115;
      BYTE2(v176[1]) = BYTE2(v115);
      BYTE3(v176[1]) = BYTE3(v115);
      BYTE4(v176[1]) = BYTE4(v115);
      BYTE5(v176[1]) = BYTE5(v115);
      TLV8BufferAppend();
LABEL_63:
      v161(v117, v102 + v160, v83);
      sub_1000A0CD8(v114, v115);
      v122 = Logger.logObject.getter();
      v123 = static os_log_type_t.default.getter();
      sub_1000A0D2C(v114, v115);
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v176[0] = v125;
        *v124 = 136380675;
        v126 = sub_10013B46C(v114, v115);
        v128 = sub_1000952D4(v126, v127, v176);

        *(v124 + 4) = v128;
        _os_log_impl(&_mh_execute_header, v122, v123, "M3: confirmP %{private}s", v124, 0xCu);
        sub_100095808(v125);

        sub_1000A0D2C(v157, v115);
        v158(v145, v163);
      }

      else
      {
        sub_1000A0D2C(v114, v115);

        v101(v145, v83);
      }

      v176[0] = 0;
      v175 = 0;
      TLV8BufferDetach();
      v129 = v176[0];
      v130 = v164;
      v131 = v155;
      if (v176[0] && (v132 = v175, v175 >= 1))
      {
        v133 = v142;
        (*(v143 + 104))(v142, enum case for Data.Deallocator.free(_:), v144);
        v134 = sub_1000B35D0(v129, v132, v133);
        v136 = v135;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v138 = Strong;
          isa = Data._bridgeToObjectiveC()().super.isa;
          [v138 pairSetupSession:v164 didReceiveSetupExchangeData:isa];
          sub_1000A0D2C(v134, v136);

          v130 = v164;
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1000A0D2C(v134, v136);
        }

        v131[v130] = 4;
        TLV8BufferFree();
      }

      else
      {
        sub_1000B4F34();
        swift_allocError();
        *v140 = 0;
        swift_willThrow();
      }

      sub_1000A0D2C(v167, v168);
      sub_1000A0D2C(v174, v173);
      sub_1000A0D2C(v172, v165);
      sub_1000A0D2C(v166, v171);
      v85 = v169;
      v86 = v170;
      return sub_1000A0D2C(v85, v86);
    }

    if (v114 >> 32 >= v114)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v114, __DataStorage._offset.getter()))
      {
        goto LABEL_61;
      }

LABEL_81:
      __break(1u);
    }

LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  swift_endAccess();
  v106 = v146;
  v161(v146, v102 + v160, v83);
  swift_errorRetain();
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v176[0] = v110;
    *v109 = 136315138;
    swift_getErrorValue();
    v111 = Error.localizedDescription.getter();
    v113 = sub_1000952D4(v111, v112, v176);

    *(v109 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v107, v108, "Unable to verify peer key: %s", v109, 0xCu);
    sub_100095808(v110);

    v101(v146, v163);
  }

  else
  {

    v101(v106, v83);
  }

  sub_1000B4F34();
  swift_allocError();
  *v118 = 2;
  swift_willThrow();
  sub_1000A0D2C(v167, v168);
  sub_1000A0D2C(v174, v173);
  sub_1000A0D2C(v172, v165);
  sub_1000A0D2C(v166, v171);
  sub_1000A0D2C(v169, v170);
}

uint64_t sub_1000A8ACC(uint64_t a1, unint64_t a2)
{
  v140 = a2;
  v138 = a1;
  v3 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v3 - 8);
  v5 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for SymmetricKey();
  v126 = *(v131 - 8);
  __chkstk_darwin(v131);
  v124 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v125 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v130 = &v119 - v11;
  __chkstk_darwin(v10);
  v129 = &v119 - v12;
  v13 = sub_100095274(&unk_1002A7170, &qword_10023C3C8);
  __chkstk_darwin(v13 - 8);
  v15 = &v119 - v14;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 1);
  v18 = __chkstk_darwin(v16);
  v127 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v132 = &v119 - v21;
  __chkstk_darwin(v20);
  v23 = &v119 - v22;
  v24 = *(v17 + 16);
  v141 = v2;
  v133 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v134 = v24;
  v24(&v119 - v22, &v2[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v16);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Pair-setup: M4", v27, 2u);
  }

  v28 = *(v17 + 8);
  v136 = (v17 + 8);
  isa = v16;
  v135 = v28;
  v28(v23, v16);
  v29 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
  v30 = v141;
  swift_beginAccess();
  sub_1000B5150(&v30[v29], v15, &unk_1002A7170, &qword_10023C3C8);
  v31 = type metadata accessor for SPAKE2.Prover();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v128 = v32 + 48;
  v34 = v33(v15, 1, v31);
  result = sub_100095C84(v15, &unk_1002A7170, &qword_10023C3C8);
  if (v34 != 1)
  {
    v123 = v33;
    v36 = v140;
    if (v140 >> 60 != 15)
    {
      v119 = v5;
      v37 = v138;
      sub_1000A0CD8(v138, v140);
      v38 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v38 bytes];
      [(objc_class *)v38 length];
      v144 = 0;
      v142 = 0;
      v39 = v38;
      v121 = v38;
      [(objc_class *)v39 bytes];
      TLV8Get();
      if (v144 && *v144 == 2)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v41 = Strong;
          if ([Strong respondsToSelector:"pairSetupSessionDidReceiveInvalidSetupCode:"])
          {
            [v41 pairSetupSessionDidReceiveInvalidSetupCode:v141];
          }

          swift_unknownObjectRelease();
        }

        sub_1000B4F34();
        swift_allocError();
        *v42 = 2;
        swift_willThrow();

        return sub_1000A452C(v37, v36);
      }

      v43 = sub_1000B38B8(v37, v36, 4u);
      v45 = v44;
      v46 = v132;
      v134(v132, &v141[v133], isa);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      v49 = os_log_type_enabled(v47, v48);
      v120 = v43;
      v122 = v45;
      if (v49)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = v43;
        v53 = v51;
        v143[0] = v51;
        *v50 = 136380675;
        v54 = sub_10013B46C(v52, v45);
        v56 = sub_1000952D4(v54, v55, v143);
        v57 = v139;

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "M4: confirmV %{private}s", v50, 0xCu);
        sub_100095808(v53);

        v135(v132, isa);
      }

      else
      {

        v135(v46, isa);
        v57 = v139;
      }

      v58 = v130;
      v59 = v129;
      v60 = v141;
      swift_beginAccess();
      result = v123(&v60[v29], 1, v31);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        v61 = v120;
        SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)();
        v62 = v131;
        if (v57)
        {
          swift_endAccess();
          v63 = v127;
          v64 = isa;
          v134(v127, &v60[v133], isa);
          swift_errorRetain();
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v143[0] = v68;
            *v67 = 136315138;
            swift_getErrorValue();
            v69 = Error.localizedDescription.getter();
            v71 = sub_1000952D4(v69, v70, v143);

            *(v67 + 4) = v71;
            v61 = v120;
            _os_log_impl(&_mh_execute_header, v65, v66, "Unable to verify confirmV and generate shared secret: %s", v67, 0xCu);
            sub_100095808(v68);
          }

          v135(v63, v64);
          sub_1000B4F34();
          swift_allocError();
          *v76 = 2;
          swift_willThrow();

          sub_1000A452C(v138, v140);

          v77 = v61;
          return sub_1000A0D2C(v77, v122);
        }

        swift_endAccess();
        v72 = v126;
        (*(v126 + 56))(v59, 0, 1, v62);
        v73 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
        swift_beginAccess();
        v74 = v60;
        sub_1000B51CC(v59, &v60[v73], &qword_1002A7148, &unk_10023C3B0);
        swift_endAccess();
        sub_1000B5150(&v60[v73], v58, &qword_1002A7148, &unk_10023C3B0);
        v75 = *(v72 + 48);
        if (v75(v58, 1, v62))
        {
          sub_100095C84(v58, &qword_1002A7148, &unk_10023C3B0);
        }

        else
        {
          v78 = v124;
          (*(v72 + 16))(v124, v58, v62);
          v79 = sub_100095C84(v58, &qword_1002A7148, &unk_10023C3B0);
          v80 = __chkstk_darwin(v79);
          *(&v119 - 2) = v60;
          __chkstk_darwin(v80);
          *(&v119 - 2) = sub_1000B51C4;
          *(&v119 - 1) = v81;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v62 = v131;
          (*(v72 + 8))(v78, v131);
        }

        v82 = sub_100100D58(0xD000000000000017, 0x800000010022F910);
        v84 = v83;
        v85.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000A0D2C(v82, v84);
        v86 = sub_100100D58(0xD000000000000017, 0x800000010022F930);
        v88 = v87;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1000A0D2C(v86, v88);
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v89 = __DataStorage.init(length:)() | 0x4000000000000000;
        v90 = &v74[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey];
        swift_beginAccess();
        v91 = *v90;
        v92 = v90[1];
        *v90 = 0x2000000000;
        v90[1] = v89;
        sub_1000A452C(v91, v92);
        v93 = v125;
        sub_1000B5150(&v74[v73], v125, &qword_1002A7148, &unk_10023C3B0);
        v94 = v75(v93, 1, v62);
        v136 = v85.super.isa;
        if (v94)
        {
          v139 = 0;
          sub_100095C84(v93, &qword_1002A7148, &unk_10023C3B0);
        }

        else
        {
          v95 = v126;
          v96 = v124;
          (*(v126 + 16))(v124, v93, v62);
          v97 = sub_100095C84(v93, &qword_1002A7148, &unk_10023C3B0);
          v98 = __chkstk_darwin(v97);
          *(&v119 - 4) = v74;
          *(&v119 - 3) = v85.super.isa;
          *(&v119 - 2) = isa;
          __chkstk_darwin(v98);
          *(&v119 - 2) = sub_1000B51B8;
          *(&v119 - 1) = v99;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v139 = 0;
          (*(v95 + 8))(v96, v62);
        }

        result = sub_1000B38B8(v138, v140, 5u);
        v101 = v90[1];
        if (v101 >> 60 != 15)
        {
          v102 = result;
          v103 = v100;
          v104 = *v90;
          sub_1000B4F20(v104, v101);
          v105 = sub_1000B3A90(v102, v103, v104, v101, 0x343067734D2D5350, 0xE800000000000000);
          v107 = v106;
          sub_1000A452C(v104, v101);
          v108 = sub_1000B38B8(v105, v107, 0x1Cu);
          v110 = v108;
          v111 = v109;
          if ((*&v141[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type] & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            v141[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 7;
            sub_1000A5D58(0);

            sub_1000A452C(v138, v140);
            sub_1000A0D2C(v110, v111);
            sub_1000A0D2C(v105, v107);
            sub_1000A0D2C(v102, v103);

            return sub_1000A0D2C(v120, v122);
          }

          v141[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 5;
          v112 = v109 >> 62;
          if ((v109 >> 62) > 1)
          {
            if (v112 != 2)
            {
              goto LABEL_44;
            }

            v113 = *(v108 + 16);
            v114 = *(v108 + 24);
          }

          else
          {
            if (!v112)
            {
              if ((v109 & 0xFF000000000000) == 0)
              {
                goto LABEL_44;
              }

LABEL_38:
              static String.Encoding.utf8.getter();
              String.init(data:encoding:)();
              if (v115)
              {
                v116 = swift_unknownObjectWeakLoadStrong();
                if (v116)
                {
                  v117 = v116;
                  if ([v116 respondsToSelector:"pairSetupSession:didReceiveProductData:"])
                  {
                    v118 = String._bridgeToObjectiveC()();

                    [v117 pairSetupSession:v141 didReceiveProductData:v118];
                    swift_unknownObjectRelease();
                  }

                  else
                  {

                    swift_unknownObjectRelease();
                  }
                }

                else
                {
                }
              }

              goto LABEL_44;
            }

            v113 = v108;
            v114 = v108 >> 32;
          }

          if (v113 != v114)
          {
            goto LABEL_38;
          }

LABEL_44:
          sub_1000AA754();

          sub_1000A452C(v138, v140);
          sub_1000A0D2C(v110, v111);
          sub_1000A0D2C(v105, v107);
          sub_1000A0D2C(v102, v103);

          v77 = v120;
          return sub_1000A0D2C(v77, v122);
        }
      }

      __break(1u);
    }
  }

  return result;
}

_BYTE *sub_1000A9B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (result)
  {
    v11 = sub_1000B3808(result, a2 - result);
    v13 = v12;
    (*(v7 + 16))(v10, a3 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v6);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136380675;
      v18 = sub_10013B46C(v11, v13);
      v21 = v13;
      v20 = sub_1000952D4(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "M4: Spake2+ Secret %{private}s", v16, 0xCu);
      sub_100095808(v17);

      sub_1000A0D2C(v11, v21);
    }

    else
    {
      sub_1000A0D2C(v11, v13);
    }

    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_1000A9D14(uint64_t a1, uint64_t a2, char *a3, void *a4, char *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey];
  swift_beginAccess();
  if (v14[1] >> 60 == 15)
  {
    __break(1u);
LABEL_8:

    __break(1u);
    return;
  }

  sub_1000B1128(v14, a1, a2, a4, a5);
  swift_endAccess();
  (*(v11 + 16))(v13, &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v10);
  a5 = a3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v27 = v10;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136380675;
    v19 = v14[1];
    if (v19 >> 60 != 15)
    {
      v20 = v18;
      v21 = *v14;
      sub_1000A0CD8(v21, v19);

      v22 = sub_10013B46C(v21, v19);
      v24 = v23;
      sub_1000A452C(v21, v19);
      v25 = sub_1000952D4(v22, v24, v28);

      *(v17 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "M4: SessionKey %{private}s", v17, 0xCu);
      sub_100095808(v20);

      (*(v11 + 8))(v13, v27);
      return;
    }

    goto LABEL_8;
  }

  (*(v11 + 8))(v13, v10);
}

uint64_t sub_1000A9FB8(void *a1, uint64_t a2, unint64_t a3)
{
  v44 = a2;
  v48 = a3;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v53, 0, sizeof(v53));
  TLV8BufferInit();
  v8 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;

  v46 = *(v5 + 8);
  v47 = v4;
  v46(v7, v4);
  if (v11 >> 60 != 15)
  {
    v12 = v11 >> 62;
    if ((v11 >> 62) > 1)
    {
      if (v12 != 2)
      {
        memset(v52, 0, 14);
        goto LABEL_15;
      }

      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (__DataStorage._bytes.getter() && __OFSUB__(v13, __DataStorage._offset.getter()))
      {
        goto LABEL_54;
      }

      if (__OFSUB__(v14, v13))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      if (!v12)
      {
        v52[0] = v9;
        LOWORD(v52[1]) = v11;
        BYTE2(v52[1]) = BYTE2(v11);
        BYTE3(v52[1]) = BYTE3(v11);
        BYTE4(v52[1]) = BYTE4(v11);
        BYTE5(v52[1]) = BYTE5(v11);
LABEL_15:
        TLV8BufferAppend();
        sub_1000A452C(v9, v11);
        goto LABEL_16;
      }

      if (v9 >> 32 < v9)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
      {
        goto LABEL_55;
      }
    }

    __DataStorage._length.getter();
    goto LABEL_15;
  }

LABEL_16:
  v15 = [a1 publicKey];
  v16 = [v15 data];

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      memset(v52, 0, 14);
      goto LABEL_29;
    }

    v21 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
    {
      goto LABEL_49;
    }

    if (!__OFSUB__(v22, v21))
    {
      __DataStorage._length.getter();
      goto LABEL_29;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (!v20)
  {
    v52[0] = v17;
    LOWORD(v52[1]) = v19;
    BYTE2(v52[1]) = BYTE2(v19);
    BYTE3(v52[1]) = BYTE3(v19);
    BYTE4(v52[1]) = BYTE4(v19);
    BYTE5(v52[1]) = BYTE5(v19);
LABEL_29:
    TLV8BufferAppend();
    sub_1000A0D2C(v17, v19);
    v23 = v48;
    goto LABEL_30;
  }

  if (v17 >> 32 < v17)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (__DataStorage._bytes.getter() && __OFSUB__(v17, __DataStorage._offset.getter()))
  {
    goto LABEL_50;
  }

  v23 = v48;
  __DataStorage._length.getter();
  TLV8BufferAppend();
  sub_1000A0D2C(v17, v19);
LABEL_30:
  v24 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v24)
    {
      v52[0] = v44;
      LOWORD(v52[1]) = v23;
      BYTE2(v52[1]) = BYTE2(v23);
      BYTE3(v52[1]) = BYTE3(v23);
      BYTE4(v52[1]) = BYTE4(v23);
      BYTE5(v52[1]) = BYTE5(v23);
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (v24 == 2)
  {
    v25 = *(v44 + 16);
    if (!__DataStorage._bytes.getter() || !__OFSUB__(v25, __DataStorage._offset.getter()))
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    v26 = v44;
    if (v44 <= v44 >> 32)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v26, __DataStorage._offset.getter()))
      {
LABEL_41:
        __DataStorage._length.getter();
        goto LABEL_43;
      }

      goto LABEL_51;
    }

    goto LABEL_48;
  }

  memset(v52, 0, 14);
LABEL_43:
  TLV8BufferAppend();
  static String.Encoding.utf8.getter();
  v27 = String.data(using:allowLossyConversion:)();
  v29 = v28;
  v46(v7, v47);
  if (v29 >> 60 == 15)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  v30.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v27, v29);
  v31 = (v45 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey);
  swift_beginAccess();
  v32 = v31[1];
  if (v32 >> 60 == 15)
  {
    goto LABEL_57;
  }

  v33 = *v31;
  sub_1000A0CD8(v33, v32);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v33, v32);
  v51[0] = sub_1000B2E80(v53[1]);
  v51[1] = v35;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v36 = __DataStorage.init(length:)();
  v49 = 0x1000000000;
  v50 = v36 | 0x4000000000000000;
  v37 = isa;
  v38 = v30.super.isa;
  sub_1000B0130(v51, &v49, v37, v38, v53);
  v39 = v49;
  v40 = v50;
  Data.append(_:)();
  TLV8BufferFree();

  v41 = v51[0];
  sub_1000A0D2C(v39, v40);
  return v41;
}

uint64_t sub_1000AA754()
{
  v1 = v0;
  v2 = type metadata accessor for Data.Deallocator();
  v108 = *(v2 - 8);
  v109 = v2;
  __chkstk_darwin(v2);
  v107 = v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SymmetricKey();
  v119 = *(v125 - 1);
  __chkstk_darwin(v125);
  v106 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.Encoding();
  isa = *(v5 - 1);
  v116 = v5;
  __chkstk_darwin(v5);
  v114 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v8 = __chkstk_darwin(v7 - 8);
  v113 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v104 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v117 = v104 - v18;
  v19 = __chkstk_darwin(v17);
  v110 = v104 - v20;
  __chkstk_darwin(v19);
  v22 = v104 - v21;
  v23 = *(v13 + 16);
  v120 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v121 = v23;
  v122 = v13 + 16;
  v23(v104 - v21, &v1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v12);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v118 = v16;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Pair-setup: M5", v27, 2u);
    v16 = v118;
  }

  v123 = *(v13 + 8);
  v124 = v13 + 8;
  v123(v22, v12);
  v28 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  v112 = v28;
  sub_1000B5150(&v1[v28], v11, &qword_1002A7148, &unk_10023C3B0);
  v111 = *(v119 + 48);
  LODWORD(v28) = v111(v11, 1, v125);
  sub_100095C84(v11, &qword_1002A7148, &unk_10023C3B0);
  if (v28 == 1)
  {
    v29 = v117;
    v121(v117, &v1[v120], v12);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Unable to retreive shared secret key!", v32, 2u);
    }

    return (v123)(v29, v12);
  }

  v117 = v12;
  v34 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v56 = v110;
    v57 = v117;
    v121(v110, &v1[v120], v117);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unable to retrieve pair-setup identifier from accessory server!", v60, 2u);
    }

    v123(v56, v57);
    sub_1000B4F34();
    swift_allocError();
    *v61 = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  v129[0] = 0;
  v36 = [Strong pairSetupSession:v1 didReceiveLocalPairingIdentityRequestWithError:v129];
  swift_unknownObjectRelease();
  v37 = v129[0];
  v105 = v36;
  if (!v36)
  {
    v62 = v129[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v57 = v117;
    goto LABEL_37;
  }

  v104[1] = v34;
  v110 = v1;
  v104[0] = type metadata accessor for __DataStorage();
  swift_allocObject();
  v38 = v37;
  v39 = __DataStorage.init(length:)();
  v130 = 0x2000000000;
  v131 = v39 | 0x4000000000000000;
  v40 = v114;
  static String.Encoding.utf8.getter();
  v41 = String.data(using:allowLossyConversion:)();
  v43 = v42;
  v44 = v116;
  v45 = *(isa + 1);
  result = v45(v40, v116);
  if (v43 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_48;
  }

  v46.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v41, v43);
  static String.Encoding.utf8.getter();
  v47 = String.data(using:allowLossyConversion:)();
  v49 = v48;
  result = v45(v40, v44);
  if (v49 >> 60 == 15)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  isa = v46.super.isa;
  v50.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v47, v49);
  v51 = v113;
  sub_1000B5150(&v110[v112], v113, &qword_1002A7148, &unk_10023C3B0);
  v52 = v125;
  v53 = v111(v51, 1, v125);
  v54 = v105;
  v116 = v50.super.isa;
  if (v53)
  {
    sub_100095C84(v51, &qword_1002A7148, &unk_10023C3B0);
    v55 = v126;
  }

  else
  {
    v63 = v119;
    v64 = v106;
    (*(v119 + 16))(v106, v51, v52);
    v65 = sub_100095C84(v51, &qword_1002A7148, &unk_10023C3B0);
    v66 = __chkstk_darwin(v65);
    v104[-4] = &v130;
    v104[-3] = isa;
    v104[-2] = v50.super.isa;
    v104[-1] = v54;
    __chkstk_darwin(v66);
    v104[-2] = sub_1000B5144;
    v104[-1] = v67;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    v68 = v126;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v55 = v68;
    (*(v63 + 8))(v64, v52);
  }

  swift_allocObject();
  v69 = __DataStorage.init(length:)();
  v70.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v129[0] = 0x4000000000;
  v129[1] = v69;
  v71 = v70.super.isa;
  v72 = v54;
  v125 = v71;
  sub_1000B2CF0(v129, v71, v72);
  v126 = v55;
  v73 = v129[0];
  v74 = v129[1];
  memset(v129, 0, 336);
  TLV8BufferInit();
  v75 = v73;
  v76 = v110;
  v77 = sub_1000A9FB8(v72, v75, v74 | 0x4000000000000000);
  v79 = v78;
  v119 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  LOBYTE(v128[0]) = v76[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state];
  TLV8BufferAppend();
  v80 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    v81 = isa;
    if (v80 != 2)
    {
      memset(v128, 0, 14);
      goto LABEL_31;
    }

    v114 = v74;
    v82 = *(v77 + 16);
    v83 = *(v77 + 24);
    if (__DataStorage._bytes.getter() && __OFSUB__(v82, __DataStorage._offset.getter()))
    {
      goto LABEL_45;
    }

    if (!__OFSUB__(v83, v82))
    {
      __DataStorage._length.getter();
      TLV8BufferAppend();
      v74 = v114;
      v81 = isa;
      goto LABEL_32;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v81 = isa;
  if (v80)
  {
    if (v77 >> 32 >= v77)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v77, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        TLV8BufferAppend();
        v81 = isa;
        goto LABEL_32;
      }

LABEL_46:
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  v128[0] = v77;
  LOWORD(v128[1]) = v79;
  BYTE2(v128[1]) = BYTE2(v79);
  BYTE3(v128[1]) = BYTE3(v79);
  BYTE4(v128[1]) = BYTE4(v79);
  BYTE5(v128[1]) = BYTE5(v79);
LABEL_31:
  TLV8BufferAppend();
LABEL_32:
  v128[0] = 0;
  v127 = 0;
  TLV8BufferDetach();
  v84 = v128[0];
  if (v128[0])
  {
    v85 = v127;
    if (v127 >= 1)
    {
      v114 = v74;
      v86 = v107;
      (*(v108 + 104))(v107, enum case for Data.Deallocator.free(_:), v109);
      v87 = sub_1000B35D0(v84, v85, v86);
      v89 = v88;
      v90 = v110;
      v91 = swift_unknownObjectWeakLoadStrong();
      if (v91)
      {
        v92 = v91;
        v93 = Data._bridgeToObjectiveC()().super.isa;
        [v92 pairSetupSession:v90 didReceiveSetupExchangeData:v93];
        sub_1000A0D2C(v87, v89);

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1000A0D2C(v87, v89);
      }

      v90[v119] = 6;
      TLV8BufferFree();

      sub_1000A0D2C(v77, v79);

      return sub_1000A0D2C(v130, v131);
    }
  }

  sub_1000B4F34();
  swift_allocError();
  *v94 = 0;
  swift_willThrow();

  sub_1000A0D2C(v77, v79);

  sub_1000A0D2C(v130, v131);
  v57 = v117;
  v16 = v118;
  v1 = v110;
LABEL_37:
  v121(v16, &v1[v120], v57);
  swift_errorRetain();
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v126 = 0;
    v98 = v97;
    v99 = swift_slowAlloc();
    v129[0] = v99;
    *v98 = 136315138;
    swift_getErrorValue();
    v100 = Error.localizedDescription.getter();
    v102 = sub_1000952D4(v100, v101, v129);

    *(v98 + 4) = v102;
    _os_log_impl(&_mh_execute_header, v95, v96, "Pair-setup: M5: Unable to retrieve pairing identity: %s", v98, 0xCu);
    sub_100095808(v99);

    v103 = v118;
  }

  else
  {

    v103 = v16;
  }

  return (v123)(v103, v57);
}

uint64_t sub_1000AB620(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6)
{
  v12 = type metadata accessor for String.Encoding();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B0AEC(a3, a1, a2, a4, a5);
  v16 = [a6 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  static String.Encoding.utf8.getter();
  v17 = String.data(using:allowLossyConversion:)();
  v19 = v18;

  result = (*(v13 + 8))(v15, v12);
  if (v19 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    Data.append(_:)();
    sub_1000A452C(v17, v19);
    v21 = [a6 publicKey];
    v22 = [v21 data];

    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    Data.append(_:)();
    return sub_1000A0D2C(v23, v25);
  }

  return result;
}

id sub_1000AB818(id result, uint64_t a2, void *a3, void *a4)
{
  if (result)
  {
    result = ccsha512_di();
    if (result)
    {
      [a3 length];
      [a3 bytes];
      v6 = [a4 publicKey];
      result = [v6 data];
      if (result)
      {
        v7 = result;

        [v7 bytes];
        v8 = v7;
        result = [a4 privateKey];
        if (result)
        {
          v9 = result;
          result = [result data];
          if (result)
          {
            v10 = result;

            [v10 bytes];
            v11 = v10;
            return cced25519_sign();
          }

LABEL_11:
          __break(1u);
          return result;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1000AB978(void *a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v152 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for SymmetricKey();
  v158 = *(v159 - 1);
  __chkstk_darwin(v159);
  v155 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  __chkstk_darwin(v8 - 8);
  v157 = (&v141 - v9);
  v10 = type metadata accessor for Logger();
  v11 = __chkstk_darwin(v10);
  v163 = (&v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v156 = &v141 - v14;
  v15 = __chkstk_darwin(v13);
  v160 = (&v141 - v16);
  v17 = __chkstk_darwin(v15);
  v161 = &v141 - v18;
  __chkstk_darwin(v17);
  v20 = &v141 - v19;
  v22 = v21;
  v23 = v21 + 16;
  v165 = *(v21 + 16);
  v166 = v2;
  v164 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger;
  v165(&v141 - v19, v2 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v10);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Pair-setup: M6", v26, 2u);
  }

  v29 = *(v22 + 8);
  v28 = v22 + 8;
  v27 = v29;
  result = (v29)(v20, v10);
  if (a2 >> 60 != 15)
  {
    v153 = v27;
    v154 = v28;
    sub_1000A0CD8(a1, a2);
    v162 = a2;
    v31 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v31 bytes];
    [(objc_class *)v31 length];
    v173 = 0;
    v168 = 0;
    [(objc_class *)v31 bytes];
    TLV8Get();
    v32 = v173;
    if (v173 && *v173)
    {
      v33 = a1;
      v34 = v161;
      v165(v161, v166 + v164, v10);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 16777472;
        v37[4] = *v32;
        _os_log_impl(&_mh_execute_header, v35, v36, "Pair-setup M6 bad status %hhu", v37, 5u);
      }

      v153(v34, v10);
      sub_1000B4F34();
      v38 = swift_allocError();
      *v39 = 1;
      v167 = v38;
      swift_willThrow();

      return sub_1000A452C(v33, v162);
    }

    v161 = v10;
    v40 = sub_1000B38B8(a1, v162, 5u);
    v42 = v40;
    v43 = v41;
    v44 = v41 >> 62;
    if ((v41 >> 62) <= 1)
    {
      v45 = v163;
      if (!v44)
      {
        if (BYTE6(v41) >= 0x10uLL)
        {
LABEL_22:
          v150 = v23;
          v145 = v31;
          v55 = v166 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey;
          result = swift_beginAccess();
          v56 = *(v55 + 8);
          if (v56 >> 60 == 15)
          {
            __break(1u);
            goto LABEL_61;
          }

          v57 = *v55;
          sub_1000B4F20(*v55, *(v55 + 8));
          v143 = v43;
          v58 = sub_1000B3A90(v42, v43, v57, v56, 0x363067734D2D5350, 0xE800000000000000);
          v60 = v59;
          sub_1000A452C(v57, v56);
          v61 = sub_1000B38B8(v58, v60, 1u);
          v147 = v42;
          v62 = v61;
          v64 = v63;
          v65 = sub_1000B38B8(v58, v60, 3u);
          v67 = v66;
          v141 = v58;
          v142 = v60;
          v68 = sub_1000B38B8(v58, v60, 0xAu);
          v70 = v69;
          isa = Data._bridgeToObjectiveC()().super.isa;
          v71 = v70;
          v72 = v62;
          sub_1000A0D2C(v68, v71);
          v73 = v160;
          v165(v160, v166 + v164, v161);
          sub_1000A0CD8(v72, v64);
          sub_1000A0CD8(v65, v67);
          v74 = Logger.logObject.getter();
          v75 = static os_log_type_t.default.getter();
          v76 = v64;
          sub_1000A0D2C(v72, v64);
          v77 = v65;
          v78 = v65;
          v79 = v67;
          sub_1000A0D2C(v78, v67);
          v80 = os_log_type_enabled(v74, v75);
          v163 = v67;
          v144 = a1;
          v146 = v77;
          v148 = v76;
          v151 = v72;
          if (v80)
          {
            v81 = swift_slowAlloc();
            v170[0] = swift_slowAlloc();
            *v81 = 136380931;
            v82 = sub_10013B46C(v72, v76);
            v84 = sub_1000952D4(v82, v83, v170);

            *(v81 + 4) = v84;
            *(v81 + 12) = 2081;
            v85 = sub_10013B46C(v77, v79);
            v87 = sub_1000952D4(v85, v86, v170);

            *(v81 + 14) = v87;
            v88 = v166;
            _os_log_impl(&_mh_execute_header, v74, v75, "Pair-setup M6 [identifier= %{private}s publicKey=%{private}s]", v81, 0x16u);
            swift_arrayDestroy();

            v153(v160, v161);
            v42 = v158;
          }

          else
          {

            v153(v73, v161);
            v42 = v158;
            v88 = v166;
          }

          type metadata accessor for __DataStorage();
          swift_allocObject();
          v89 = __DataStorage.init(length:)();
          v171 = 0x2000000000;
          v172 = v89 | 0x4000000000000000;
          v90 = sub_100100D58(0xD00000000000001ELL, 0x800000010022F890);
          v92 = v91;
          v31 = Data._bridgeToObjectiveC()().super.isa;
          sub_1000A0D2C(v90, v92);
          v93 = sub_100100D58(0xD00000000000001ELL, 0x800000010022F8B0);
          v95 = v94;
          v45 = Data._bridgeToObjectiveC()().super.isa;
          sub_1000A0D2C(v93, v95);
          v96 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
          swift_beginAccess();
          v97 = v88 + v96;
          v51 = v157;
          sub_1000B5150(v97, v157, &qword_1002A7148, &unk_10023C3B0);
          v50 = v159;
          v98 = v42[6](v51, 1, v159);
          v43 = isa;
          v160 = v31;
          v158 = v45;
          if (v98)
          {
            sub_100095C84(v51, &qword_1002A7148, &unk_10023C3B0);
            v99 = v146;
            goto LABEL_33;
          }

LABEL_32:
          v102 = v155;
          v42[2](v155, v51, v50);
          v103 = sub_100095C84(v51, &qword_1002A7148, &unk_10023C3B0);
          v104 = __chkstk_darwin(v103);
          *(&v141 - 8) = &v171;
          *(&v141 - 7) = v31;
          v105 = v151;
          *(&v141 - 6) = v45;
          *(&v141 - 5) = v105;
          v99 = v146;
          *(&v141 - 4) = v148;
          *(&v141 - 3) = v99;
          *(&v141 - 2) = v163;
          __chkstk_darwin(v104);
          *(&v141 - 2) = sub_1000B5110;
          *(&v141 - 1) = v106;
          sub_100095274(&qword_1002A7168, &qword_10023C3C0);
          v107 = v167;
          SymmetricKey.withUnsafeBytes<A>(_:)();
          v167 = v107;
          (v42[1])(v102, v50);
LABEL_33:
          v108.super.isa = Data._bridgeToObjectiveC()().super.isa;
          v109.super.isa = Data._bridgeToObjectiveC()().super.isa;
          result = ccsha512_di();
          if (result)
          {
            [(objc_class *)v109.super.isa length];
            [(objc_class *)v109.super.isa bytes];
            [(objc_class *)v43 bytes];
            [(objc_class *)v108.super.isa bytes];
            if (cced25519_verify())
            {
              sub_1000B4F34();
              v110 = swift_allocError();
              *v111 = 2;
              v167 = v110;
              swift_willThrow();

              sub_1000A0D2C(v151, v148);
              sub_1000A0D2C(v99, v163);

              sub_1000A0D2C(v141, v142);
              sub_1000A0D2C(v147, v143);
              sub_1000A452C(v144, v162);
            }

            else
            {
              v159 = v108.super.isa;
              v114 = v156;
              v115 = v161;
              v165(v156, v166 + v164, v161);
              v116 = Logger.logObject.getter();
              v117 = static os_log_type_t.default.getter();
              v118 = os_log_type_enabled(v116, v117);
              v119 = v147;
              v120 = v148;
              if (v118)
              {
                v121 = swift_slowAlloc();
                *v121 = 0;
                _os_log_impl(&_mh_execute_header, v116, v117, "Pair-setup M6 pairing complete!", v121, 2u);
                v114 = v156;
              }

              v153(v114, v115);
              *(v166 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state) = 7;
              v122 = objc_allocWithZone(HMFPairingKey);
              v123 = v163;
              sub_1000A0CD8(v99, v163);
              v124 = Data._bridgeToObjectiveC()().super.isa;
              v125 = [v122 initWithPairingKeyData:v124];

              sub_1000A0D2C(v99, v123);
              if (v125)
              {
                static String.Encoding.utf8.getter();
                v126 = v151;
                String.init(data:encoding:)();
                if (v127)
                {
                  v128 = objc_allocWithZone(HAPPairingIdentity);
                  v129 = v125;
                  v130 = String._bridgeToObjectiveC()();

                  v131 = [v128 initWithIdentifier:v130 publicKey:v129 privateKey:0];

                  v132 = v166;
                  Strong = swift_unknownObjectWeakLoadStrong();
                  if (Strong)
                  {
                    v169 = 0;
                    v134 = [Strong pairSetupSession:v132 didPairWithPeer:v131 error:&v169];
                    swift_unknownObjectRelease();
                    v135 = v142;
                    if (v134)
                    {
                      v136 = v169;
                    }

                    else
                    {
                      v140 = v169;
                      _convertNSErrorToError(_:)();

                      swift_willThrow();

                      v167 = 0;
                    }

                    v139 = v147;
                  }

                  else
                  {
                    v139 = v147;
                    v135 = v142;
                  }

                  sub_1000A5D58(0);

                  sub_1000A0D2C(v151, v120);
                  sub_1000A0D2C(v99, v163);

                  sub_1000A0D2C(v141, v135);
                  sub_1000A0D2C(v139, v143);
                  sub_1000A452C(v144, v162);
                }

                else
                {

                  sub_1000A0D2C(v126, v120);
                  sub_1000A0D2C(v99, v163);

                  sub_1000A0D2C(v141, v142);
                  sub_1000A0D2C(v119, v143);
                  sub_1000A452C(v144, v162);
                }
              }

              else
              {

                sub_1000A0D2C(v151, v120);
                sub_1000A0D2C(v99, v123);

                sub_1000A0D2C(v141, v142);
                sub_1000A0D2C(v119, v143);
                sub_1000A452C(v144, v162);
              }
            }

            v112 = v171;
            v113 = v172;
            return sub_1000A0D2C(v112, v113);
          }

LABEL_61:
          __break(1u);
          return result;
        }

        goto LABEL_16;
      }

      if (!__OFSUB__(HIDWORD(v40), v40))
      {
        if (HIDWORD(v40) - v40 >= 16)
        {
          goto LABEL_22;
        }

        goto LABEL_16;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v45 = v163;
    if (v44 == 2)
    {
      v47 = *(v40 + 16);
      v46 = *(v40 + 24);
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      if (v48)
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v49 >= 16)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    v50 = a1;
    v165(v45, v166 + v164, v161);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v51, v52))
    {
LABEL_48:

      v153(v45, v161);
      sub_1000B4F34();
      v137 = swift_allocError();
      *v138 = 2;
      v167 = v137;
      swift_willThrow();

      sub_1000A452C(v50, v162);
      v112 = v42;
      v113 = v43;
      return sub_1000A0D2C(v112, v113);
    }

    v53 = swift_slowAlloc();
    *v53 = 134217984;
    if (v44 > 1)
    {
      if (v44 == 2)
      {
        v101 = v42[2];
        v100 = v42[3];
        v48 = __OFSUB__(v100, v101);
        v54 = v100 - v101;
        if (v48)
        {
          __break(1u);
          goto LABEL_32;
        }
      }

      else
      {
        v54 = 0;
      }

      goto LABEL_47;
    }

    if (!v44)
    {
      v54 = BYTE6(v43);
LABEL_47:
      *(v53 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v51, v52, "Pair-setup M6 invalid encrypted data length: %ld", v53, 0xCu);

      goto LABEL_48;
    }

    LODWORD(v54) = HIDWORD(v42) - v42;
    if (!__OFSUB__(HIDWORD(v42), v42))
    {
      v54 = v54;
      goto LABEL_47;
    }

LABEL_59:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ACB98(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000B0AEC(a3, a1, a2, a4, a5);
  Data.append(_:)();
  return Data.append(_:)();
}

void sub_1000ACC3C(_BYTE *a1, void *a2, unint64_t a3)
{
  v6 = type metadata accessor for Logger();
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state;
  v11 = a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state];
  if (!a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state])
  {
    v11 = 1;
    a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 1;
  }

  if (a3 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v19 = v7;
  v12 = Data._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v12 bytes];
  [(objc_class *)v12 length];
  v21 = 0;
  v20 = 0;
  [(objc_class *)v12 bytes];
  TLV8Get();
  if (!v21 || *v21 == a1[v10])
  {

    v11 = a1[v10];
LABEL_7:
    if (v11 > 3)
    {
      if (v11 == 4)
      {
        sub_1000A8ACC(a2, a3);
      }

      else if (v11 == 6)
      {
        sub_1000AB978(a2, a3);
      }
    }

    else if (v11 == 1)
    {
      sub_1000A65B0();
    }

    else if (v11 == 2)
    {
      sub_1000A7060(a2, a3);
    }

    return;
  }

  v13 = v19;
  (*(v19 + 16))(v9, &a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v6);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 16777472;
    v17[4] = a1[v10];

    _os_log_impl(&_mh_execute_header, v15, v16, "Exchange data received in invalid state: %hhu", v17, 5u);

    v14 = v12;
  }

  else
  {

    v15 = v12;
  }

  (*(v13 + 8))(v9, v6);
}

uint64_t sub_1000AD028()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger, v11);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Split pair setup done.", v17, 2u);
  }

  (*(v12 + 8))(v14, v11);
  v18 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  sub_1000B5150(v1 + v18, v10, &qword_1002A7148, &unk_10023C3B0);
  v19 = type metadata accessor for SymmetricKey();
  v20 = (*(*(v19 - 8) + 48))(v10, 1, v19);
  result = sub_100095C84(v10, &qword_1002A7148, &unk_10023C3B0);
  if (v20 != 1)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    aBlock[4] = sub_1000B5018;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100275E48;
    v23 = _Block_copy(aBlock);
    v24 = v1;
    static DispatchQoS.unspecified.getter();
    v30 = _swiftEmptyArrayStorage;
    sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    v25 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v28 + 8))(v4, v25);
    (*(v26 + 8))(v7, v27);
  }

  return result;
}

uint64_t sub_1000AD4EC(uint64_t a1)
{
  v59 = 0;
  v2 = type metadata accessor for SymmetricKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100095274(&qword_1002A7148, &unk_10023C3B0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v57 - v9;
  v11 = sub_100100D58(0x74655374696C7053, 0xEE00746C61537075);
  v13 = v12;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v11, v13);
  v14 = sub_100100D58(0xD000000000000018, 0x800000010022F850);
  v16 = v15;
  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v14, v16);
  v18 = sub_100100D58(0xD000000000000019, 0x800000010022F870);
  v20 = v19;
  v60 = Data._bridgeToObjectiveC()().super.isa;
  v21 = v18;
  v22 = v3;
  sub_1000A0D2C(v21, v20);
  v23 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  swift_beginAccess();
  sub_1000B5150(a1 + v23, v10, &qword_1002A7148, &unk_10023C3B0);
  v24 = *(v3 + 48);
  v25 = v24(v10, 1, v2);
  v61 = v17.super.isa;
  if (v25)
  {
    sub_100095C84(v10, &qword_1002A7148, &unk_10023C3B0);
    v26 = v58;
  }

  else
  {
    v27 = *(v3 + 16);
    v57 = a1;
    v28 = v58;
    v27(v58, v10, v2);
    v29 = sub_100095C84(v10, &qword_1002A7148, &unk_10023C3B0);
    v30 = __chkstk_darwin(v29);
    v31 = isa;
    *(&v57 - 4) = v57;
    *(&v57 - 3) = v31;
    *(&v57 - 2) = v17.super.isa;
    __chkstk_darwin(v30);
    *(&v57 - 2) = sub_1000B50E8;
    *(&v57 - 1) = v32;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    v26 = v28;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v3 + 8))(v28, v2);
    a1 = v57;
  }

  sub_1000B5150(a1 + v23, v8, &qword_1002A7148, &unk_10023C3B0);
  v33 = v24(v8, 1, v2);
  v34 = a1;
  v35 = v60;
  if (v33)
  {
    sub_100095C84(v8, &qword_1002A7148, &unk_10023C3B0);
  }

  else
  {
    (*(v22 + 16))(v26, v8, v2);
    v36 = sub_100095C84(v8, &qword_1002A7148, &unk_10023C3B0);
    v37 = __chkstk_darwin(v36);
    v38 = isa;
    *(&v57 - 4) = v34;
    *(&v57 - 3) = v38;
    *(&v57 - 2) = v35;
    __chkstk_darwin(v37);
    *(&v57 - 2) = sub_1000B5080;
    *(&v57 - 1) = v39;
    sub_100095274(&qword_1002A7168, &qword_10023C3C0);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    (*(v22 + 8))(v26, v2);
  }

  v40 = sub_1001AC9BC(8uLL);
  v42 = v41;
  v43 = HIWORD(v41);
  __s = v40;
  v68 = v41;
  v70 = BYTE6(v41);
  v44 = HIDWORD(v41);
  v69 = WORD2(v41);
  v45 = BYTE6(v41);
  memset_s(&__s, v45, 0, v45);
  v46 = __s;
  v47 = v68 | ((v69 | (v70 << 16)) << 32);
  v48 = (v34 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  *v48 = v46;
  v48[1] = v47;
  sub_1000A0D2C(v49, v50);
  v63 = v40;
  v66 = v43;
  v65 = v44;
  v64 = v42;
  memset_s(&v63, v45, 0, v45);
  v51 = v63;
  v52 = v64 | ((v65 | (v66 << 16)) << 32);

  v53 = (v34 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  *v53 = v51;
  v53[1] = v52;
  return sub_1000A0D2C(v54, v55);
}

uint64_t sub_1000ADAEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v12 = __DataStorage.init(length:)() | 0x4000000000000000;
  v13 = (a3 + *a6);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  *v13 = 0x2000000000;
  v13[1] = v12;
  result = sub_1000A452C(v14, v15);
  if (v13[1] >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1000B1128(v13, a1, a2, a4, a5);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000ADC1C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey;
  result = swift_beginAccess();
  if (*(v4 + 8) >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v7 = a1 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey;
    result = swift_beginAccess();
    v6 = *(v7 + 8) >> 60 != 15;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1000ADD6C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey;
  v8 = swift_beginAccess();
  if (*(v7 + 8) >> 60 == 15)
  {
    v9 = 3;
LABEL_10:
    sub_1000B346C();
    swift_allocError();
    *v11 = v9;
    return swift_willThrow();
  }

  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    if (a1 == a1 >> 32)
    {
LABEL_9:
      v9 = 2;
      goto LABEL_10;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  __chkstk_darwin(v8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v13;
}

uint64_t sub_1000ADEE0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = result;
  v11 = a2 >> 62;
  v30 = a6;
  if ((a2 >> 62) <= 1)
  {
    if (!v11)
    {
      result = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v11 != 2)
  {
    result = 0;
    goto LABEL_11;
  }

  v12 = *(result + 16);
  v13 = *(result + 24);
  result = v13 - v12;
  if (__OFSUB__(v13, v12))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      goto LABEL_16;
    }

    result = HIDWORD(v10) - v10;
  }

LABEL_11:
  *&v29 = sub_1000B2E80(result);
  *(&v29 + 1) = v14;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v27 = 0x1000000000;
  v28 = __DataStorage.init(length:)() | 0x4000000000000000;
  v15 = &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey];
  result = swift_beginAccess();
  v16 = v15[1];
  if (v16 >> 60 == 15)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v17 = *v15;
  sub_1000A0CD8(v17, v16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A452C(v17, v16);
  v19 = isa;
  v20 = a3;
  sub_1000B4F20(a4, a5);
  sub_1000A0CD8(v10, a2);
  sub_1000B1790(&v29, &v27, v19, v20, a4, a5, v10, a2);
  v21 = v27;
  v22 = v28;
  Data.append(_:)();
  if (v20[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption] == 1)
  {
    v23 = &v20[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
    swift_beginAccess();
    v25 = *v23;
    v24 = v23[1];
    sub_1000A0CD8(v25, v24);
    Data.append(_:)();
    sub_1000A0D2C(v25, v24);
  }

  v26 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce;
  swift_beginAccess();
  sub_1000B1E64(&v20[v26]);
  swift_endAccess();

  *v30 = v29;
  return sub_1000A0D2C(v21, v22);
}

void *sub_1000AE150(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4 + OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey;
  v9 = swift_beginAccess();
  if (*(v8 + 8) >> 60 == 15)
  {
    sub_1000B346C();
    swift_allocError();
    v11 = 3;
LABEL_13:
    *v10 = v11;
    return swift_willThrow();
  }

  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_12;
    }
  }

  else if (v12)
  {
    if (a1 == a1 >> 32)
    {
LABEL_12:
      sub_1000B346C();
      swift_allocError();
      v11 = 2;
      goto LABEL_13;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

  __chkstk_darwin(v9);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v14;
  }

  return result;
}

void sub_1000AE2E8(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, objc_class *a4@<X3>, unint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v136 = a5;
  v135 = a4;
  v11 = type metadata accessor for Logger();
  v133 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v132 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption;
  if (a1[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption])
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  v16 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v17 = 0;
    if (v16 != 2)
    {
      goto LABEL_13;
    }

    v19 = *(a2 + 16);
    v18 = *(a2 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(a3);
    goto LABEL_13;
  }

  LODWORD(v17) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v17 = v17;
LABEL_13:
  v20 = __OFSUB__(v17, 16);
  v21 = v17 - 16;
  if (v20)
  {
    __break(1u);
    goto LABEL_111;
  }

  v134 = a6;
  v22 = v21 - v15;
  if (__OFSUB__(v21, v15))
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v131 = v12;
  sub_1000A0CD8(a2, a3);
  sub_10015319C(v22, a2, a3, v143);
  v146 = &type metadata for Data;
  v147 = &protocol witness table for Data;
  v145 = *v143;
  v23 = sub_1000A09E0(&v145, &type metadata for Data);
  v24 = *v23;
  v25 = v23[1];
  v26 = v25 >> 62;
  v138 = v14;
  v139 = a1;
  if ((v25 >> 62) <= 1)
  {
    if (!v26)
    {
      *&v144 = v24;
      WORD4(v144) = v25;
      BYTE10(v144) = BYTE2(v25);
      BYTE11(v144) = BYTE3(v25);
      BYTE12(v144) = BYTE4(v25);
      BYTE13(v144) = BYTE5(v25);
      v27 = (&v144 + BYTE6(v25));
      v28 = &v144;
      goto LABEL_38;
    }

    v36 = v24;
    v37 = v24 >> 32;
    v38 = v37 - v36;
    if (v37 >= v36)
    {
      v31 = __DataStorage._bytes.getter();
      if (v31)
      {
        v39 = __DataStorage._offset.getter();
        if (__OFSUB__(v36, v39))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v31 += v36 - v39;
      }

      v40 = __DataStorage._length.getter();
      if (v40 >= v38)
      {
        v35 = v38;
      }

      else
      {
        v35 = v40;
      }

      goto LABEL_33;
    }

    goto LABEL_113;
  }

  if (v26 != 2)
  {
    *(&v144 + 6) = 0;
    *&v144 = 0;
    v28 = &v144;
    v27 = &v144;
    goto LABEL_38;
  }

  v30 = *(v24 + 16);
  v29 = *(v24 + 24);
  v31 = __DataStorage._bytes.getter();
  if (v31)
  {
    v32 = __DataStorage._offset.getter();
    if (__OFSUB__(v30, v32))
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    v31 += v30 - v32;
  }

  v20 = __OFSUB__(v29, v30);
  v33 = v29 - v30;
  if (v20)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v34 = __DataStorage._length.getter();
  if (v34 >= v33)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

LABEL_33:
  v41 = (v35 + v31);
  if (v31)
  {
    v27 = v41;
  }

  else
  {
    v27 = 0;
  }

  v28 = v31;
LABEL_38:
  sub_1001AC450(v28, v27, &v141);
  v42 = *(&v141 + 1);
  v43 = v141;
  sub_100095808(&v145);
  sub_1000A0CD8(a2, a3);
  sub_1000AEF1C(v15, a2, a3, &v145);
  sub_1001A36A0(16, v145, *(&v145 + 1), v143);
  v146 = &type metadata for Data;
  v147 = &protocol witness table for Data;
  v145 = *v143;
  v44 = sub_1000A09E0(&v145, &type metadata for Data);
  v45 = *v44;
  v46 = v44[1];
  v47 = v46 >> 62;
  v48 = v42;
  v140 = v43;
  if ((v46 >> 62) <= 1)
  {
    if (!v47)
    {
      *&v144 = v45;
      WORD4(v144) = v46;
      BYTE10(v144) = BYTE2(v46);
      BYTE11(v144) = BYTE3(v46);
      BYTE12(v144) = BYTE4(v46);
      BYTE13(v144) = BYTE5(v46);
      v49 = (&v144 + BYTE6(v46));
LABEL_61:
      sub_1001AC450(&v144, v49, &v141);
      v64 = v6;
      goto LABEL_62;
    }

    v57 = v45;
    v58 = v45 >> 32;
    v59 = v58 - v57;
    if (v58 >= v57)
    {
      v52 = __DataStorage._bytes.getter();
      if (v52)
      {
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v57, v60))
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        v52 += v57 - v60;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v59)
      {
        v56 = v59;
      }

      else
      {
        v56 = v61;
      }

      goto LABEL_56;
    }

    goto LABEL_115;
  }

  if (v47 != 2)
  {
    *(&v144 + 6) = 0;
    *&v144 = 0;
    v49 = &v144;
    goto LABEL_61;
  }

  v51 = *(v45 + 16);
  v50 = *(v45 + 24);
  v52 = __DataStorage._bytes.getter();
  if (v52)
  {
    v53 = __DataStorage._offset.getter();
    if (__OFSUB__(v51, v53))
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v52 += v51 - v53;
  }

  v20 = __OFSUB__(v50, v51);
  v54 = v50 - v51;
  if (v20)
  {
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v55 = __DataStorage._length.getter();
  if (v55 >= v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = v55;
  }

LABEL_56:
  v62 = &v52[v56];
  if (v52)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  sub_1001AC450(v52, v63, &v141);
  v64 = v6;
  v43 = v140;
LABEL_62:
  v65 = *(&v141 + 1);
  v137 = v141;
  sub_100095808(&v145);
  v66 = v42 >> 62;
  v67 = v139;
  if ((v42 >> 62) <= 1)
  {
    if (!v66)
    {
      v68 = BYTE6(v42);
      goto LABEL_72;
    }

LABEL_69:
    if (!__OFSUB__(HIDWORD(v43), v43))
    {
      v68 = HIDWORD(v43) - v43;
      goto LABEL_72;
    }

    goto LABEL_117;
  }

  if (v66 == 2)
  {
    v70 = *(v43 + 16);
    v69 = *(v43 + 24);
    v68 = v69 - v70;
    if (__OFSUB__(v69, v70))
    {
      __break(1u);
      goto LABEL_69;
    }
  }

  else
  {
    v68 = 0;
  }

LABEL_72:
  *&v144 = sub_1000B2E80(v68);
  *(&v144 + 1) = v71;
  if (v67[v138] != 1)
  {
    v138 = v64;
    goto LABEL_105;
  }

  sub_1000A0CD8(a2, a3);
  sub_1001A36A0(8, a2, a3, v143);
  v146 = &type metadata for Data;
  v147 = &protocol witness table for Data;
  v145 = *v143;
  v72 = sub_1000A09E0(&v145, &type metadata for Data);
  v73 = *v72;
  v74 = v72[1];
  v75 = v74 >> 62;
  v130 = v42;
  if ((v74 >> 62) > 1)
  {
    if (v75 != 2)
    {
      *(&v141 + 6) = 0;
      *&v141 = 0;
      v77 = &v141;
      v76 = &v141;
      goto LABEL_96;
    }

    v78 = *(v73 + 16);
    v79 = *(v73 + 24);
    v80 = __DataStorage._bytes.getter();
    if (v80)
    {
      v81 = __DataStorage._offset.getter();
      v73 = v78 - v81;
      if (__OFSUB__(v78, v81))
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v80 += v73;
    }

    v20 = __OFSUB__(v79, v78);
    v82 = v79 - v78;
    if (!v20)
    {
      goto LABEL_88;
    }

    __break(1u);
    goto LABEL_84;
  }

  if (v75)
  {
LABEL_84:
    v83 = v73;
    v84 = v73 >> 32;
    v82 = v84 - v83;
    if (v84 >= v83)
    {
      v80 = __DataStorage._bytes.getter();
      if (!v80)
      {
LABEL_88:
        v86 = __DataStorage._length.getter();
        if (v86 >= v82)
        {
          v87 = v82;
        }

        else
        {
          v87 = v86;
        }

        v88 = (v87 + v80);
        if (v80)
        {
          v76 = v88;
        }

        else
        {
          v76 = 0;
        }

        v77 = v80;
        goto LABEL_96;
      }

      v85 = __DataStorage._offset.getter();
      if (!__OFSUB__(v83, v85))
      {
        v80 += v83 - v85;
        goto LABEL_88;
      }

LABEL_124:
      __break(1u);
    }

    goto LABEL_122;
  }

  *&v141 = v73;
  WORD4(v141) = v74;
  BYTE10(v141) = BYTE2(v74);
  BYTE11(v141) = BYTE3(v74);
  BYTE12(v141) = BYTE4(v74);
  BYTE13(v141) = BYTE5(v74);
  v76 = (&v142[-1] + BYTE6(v74));
  v77 = &v141;
LABEL_96:
  sub_1001AC450(v77, v76, v142);
  v138 = v64;
  v89 = v142[0];
  v90 = v142[1];
  sub_100095808(&v145);
  sub_1001AC9BC(8uLL);
  sub_10015319C(8, v89, v90, &v141);
  v91 = v141;
  v92 = sub_1000A5644(v141, *(&v141 + 1));
  v93 = &v67[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
  swift_beginAccess();
  v94 = *v93;
  v95 = v93[1];
  sub_1000A0CD8(*v93, v95);
  v96 = sub_1000A5644(v94, v95);
  sub_1000A0D2C(v94, v95);
  if (v92 < v96)
  {
    sub_1000B4F34();
    swift_allocError();
    *v97 = 2;
    swift_willThrow();
    sub_1000A0D2C(v137, v65);
    sub_1000A0D2C(v140, v130);
    v99 = v91 >> 64;
    v98 = v91;
LABEL_108:
    sub_1000A0D2C(v98, v99);
    sub_1000A0D2C(v144, *(&v144 + 1));
    return;
  }

  v100 = sub_1000A5644(v91, *(&v91 + 1));
  v101 = *v93;
  v102 = v93[1];
  sub_1000A0CD8(*v93, v102);
  v103 = sub_1000A5644(v101, v102);
  sub_1000A0D2C(v101, v102);
  if (v103 >= v100)
  {
    sub_1000A0D2C(v91, *(&v91 + 1));
    v67 = v139;
    v43 = v140;
  }

  else
  {
    v67 = v139;
    v104 = v131;
    (*(v133 + 16))(v132, &v139[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_logger], v131);
    v105 = v67;
    sub_1000A0CD8(v91, *(&v91 + 1));
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v129 = v107;
      v109 = v108;
      *v108 = 134218240;
      v110 = *v93;
      v111 = v93[1];
      sub_1000A0CD8(*v93, v111);
      v128 = sub_1000A5644(v110, v111);
      v112 = v110;
      v67 = v139;
      v113 = v111;
      v104 = v131;
      sub_1000A0D2C(v112, v113);
      *(v109 + 1) = v128;

      *(v109 + 6) = 2048;
      *(v109 + 14) = sub_1000A5644(v91, *(&v91 + 1));
      sub_1000A0D2C(v91, *(&v91 + 1));
      _os_log_impl(&_mh_execute_header, v106, v129, "Detected potential packet drop while decrypting message: %llu != %llu", v109, 0x16u);
    }

    else
    {
      sub_1000A0D2C(v91, *(&v91 + 1));

      v106 = v105;
    }

    v43 = v140;

    (*(v133 + 8))(v132, v104);
    v114 = *v93;
    v115 = v93[1];
    *v93 = v91;
    sub_1000A0D2C(v114, v115);
  }

  v48 = v130;
LABEL_105:
  v116 = v65;
  v117 = &v67[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey];
  swift_beginAccess();
  v118 = v117[1];
  if (v118 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v119 = *v117;
    sub_1000A0CD8(v119, v118);
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000A452C(v119, v118);
    v121 = v67;
    v122 = isa;
    v123 = v135;
    v124 = v136;
    sub_1000B4F20(v135, v136);
    sub_1000A0CD8(v43, v48);
    v125 = v137;
    sub_1000A0CD8(v137, v116);
    v126 = sub_1000B3FCC(&v144, v122, v121, v123, v124, v43, v48, v125, v116);
    v139 = v116;
    sub_1000A0D2C(v125, v116);
    sub_1000A0D2C(v43, v48);
    sub_1000A452C(v123, v124);

    v127 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce;
    swift_beginAccess();
    sub_1000B1E64(&v121[v127]);
    swift_endAccess();
    if (v126)
    {
      [objc_allocWithZone(NSError) initWithDomain:@"HAPErrorDomain" code:v126 userInfo:0];
      swift_willThrow();
      sub_1000A0D2C(v125, v139);

      v98 = v140;
      v99 = v48;
      goto LABEL_108;
    }

    sub_1000A0D2C(v125, v139);
    sub_1000A0D2C(v140, v48);

    *v134 = v144;
  }
}

uint64_t sub_1000AEF1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1001AC908(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_1001AC8A4(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_1000A0D2C(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

Class sub_1000AF07C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, unint64_t, uint64_t, unint64_t))
{
  v9 = a3;
  v10 = a1;
  v11 = a4;
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v11)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xF000000000000000;
  }

  v18 = a6(v12, v14, v15, v17);
  v20 = v19;

  sub_1000A452C(v15, v17);
  sub_1000A0D2C(v12, v14);
  v21.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v18, v20);

  return v21.super.isa;
}

id sub_1000AF214()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKPairSetupSession(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DKPairSetupSession(uint64_t a1)
{
  result = qword_1002A70E0;
  if (!qword_1002A70E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AF3D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    sub_1000AF570(319, &qword_1002A70F0, &type metadata accessor for SymmetricKey);
    if (v3 <= 0x3F)
    {
      sub_1000AF570(319, &qword_1002A70F8, &type metadata accessor for SPAKE2.Prover);
      if (v4 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000AF570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1000AF5C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000AF618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DKPairSetupSession.PairSetupState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DKPairSetupSession.PairSetupState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AF7C8()
{
  result = qword_1002A7100;
  if (!qword_1002A7100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7100);
  }

  return result;
}

uint64_t sub_1000AF81C(uint64_t *a1, id a2, void *a3, void *a4, SEL *a5, void *a6, unint64_t a7)
{
  v12 = *a1;
  v11 = a1[1];
  v62 = a1;
  v13 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v16 = a4;
    if (v13 != 2)
    {
      *(&v66 + 7) = 0;
      *&v66 = 0;
      v32 = a2;
      v17 = a3;
      sub_1000A0CD8(v16, a5);
      sub_1000A0CD8(a6, a7);
      v33 = &selRef__sendControlPacket_forRequest_completionHandler_;
      v62 = [a2 bytes];
      v60 = [v17 bytes];
      isa = Data._bridgeToObjectiveC()().super.isa;
      v16 = [(objc_class *)isa bytes];
      v35 = isa;
      v36 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v36)
        {
          if (__OFSUB__(HIDWORD(a4), a4))
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
          }

          v21 = a5;
        }

        else
        {
          v21 = a5;
        }

        goto LABEL_36;
      }

      goto LABEL_24;
    }

    v60 = a2;
    v58 = a3;
    sub_1000A0CD8(v16, a5);
    sub_1000A0CD8(a6, a7);

    sub_1000A0D2C(v12, v11);
    *&v66 = v12;
    *(&v66 + 1) = v11 & 0x3FFFFFFFFFFFFFFFLL;
    *v62 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v17 = v11 & 0x3FFFFFFFFFFFFFFFLL;
    v56 = v12;
    v22 = *(v12 + 16);
    if (!__DataStorage._bytes.getter())
    {

      sub_1000A0D2C(v16, a5);
      result = sub_1000A0D2C(a6, a7);
      __break(1u);
      goto LABEL_65;
    }

    v23 = __DataStorage._offset.getter();
    if (!__OFSUB__(v22, v23))
    {
      v55 = (v22 - v23);
      __DataStorage._length.getter();
      v21 = &selRef__sendControlPacket_forRequest_completionHandler_;
      [v60 bytes];
      [v58 bytes];
      v24 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v24 bytes];
      v25 = v24;
      v26 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (v26 && __OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_62;
        }

LABEL_39:
        v45 = Data._bridgeToObjectiveC()().super.isa;
        [v45 v21[152]];
        v46 = v45;
        chacha20_poly1305_decrypt_all_64x64();

        v16 = a4;
        sub_1000A0D2C(a4, a5);
        *v62 = v56;
        v62[1] = v17 | 0x8000000000000000;
        goto LABEL_40;
      }

LABEL_28:
      if (v26 == 2)
      {
        v40 = v16[2];
        v39 = v16[3];
        v16 = (v39 - v40);
        if (__OFSUB__(v39, v40))
        {
          __break(1u);
LABEL_32:
          if (!__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_37;
          }

          goto LABEL_60;
        }
      }

      goto LABEL_39;
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v60 = v7;
  if (!v13)
  {
    v14 = a2;
    v15 = a3;
    v16 = a4;
    sub_1000A0CD8(a4, a5);
    v58 = a6;
    sub_1000A0CD8(a6, a7);
    sub_1000A0D2C(v12, v11);
    *&v66 = v12;
    WORD4(v66) = v11;
    BYTE10(v66) = BYTE2(v11);
    BYTE11(v66) = BYTE3(v11);
    BYTE12(v66) = BYTE4(v11);
    BYTE13(v66) = BYTE5(v11);
    BYTE14(v66) = BYTE6(v11);
    v17 = &selRef__sendControlPacket_forRequest_completionHandler_;
    v56 = v14;
    [v14 bytes];
    v55 = v15;
    [v15 bytes];
    v18 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v18 bytes];
    v19 = v18;
    v20 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      v21 = a2;
      if (!v20)
      {
LABEL_37:
        v43 = Data._bridgeToObjectiveC()().super.isa;
        [v43 *(v17 + 1216)];
        v44 = v43;
        chacha20_poly1305_decrypt_all_64x64();

        sub_1000A0D2C(v16, a5);
        *v62 = v66;
        v62[1] = DWORD2(v66) | ((WORD6(v66) | (BYTE14(v66) << 16)) << 32);
LABEL_54:
        sub_1000A0D2C(a6, a7);

        sub_1000A0D2C(v16, a5);
        return sub_1000A0D2C(a6, a7);
      }

      goto LABEL_32;
    }

    v21 = a2;
    if (v20 != 2)
    {
      goto LABEL_37;
    }

    v37 = a4[2];
    v36 = a4[3];
    v33 = (v36 - v37);
    if (!__OFSUB__(v36, v37))
    {
      goto LABEL_37;
    }

    __break(1u);
LABEL_24:
    v21 = a5;
    if (v36 != 2 || (v38 = a4[2], v26 = a4[3], a5 = (v26 - v38), !__OFSUB__(v26, v38)))
    {
LABEL_36:
      v41 = Data._bridgeToObjectiveC()().super.isa;
      [v41 v33[152]];
      v42 = v41;
      chacha20_poly1305_decrypt_all_64x64();

      v16 = a4;
      a5 = v21;
      sub_1000A0D2C(a4, v21);
LABEL_40:
      v21 = a2;
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_28;
  }

  v27 = v11 & 0x3FFFFFFFFFFFFFFFLL;
  v28 = a2;
  v29 = a3;
  sub_1000A0CD8(a4, a5);
  sub_1000A0CD8(a6, a7);
  sub_1000A0CD8(v12, v11);
  sub_1000A0D2C(v12, v11);
  *v62 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v30 = v28;
  v59 = v29;
  sub_1000A0CD8(a4, a5);
  sub_1000A0CD8(a6, a7);
  v31 = v12 >> 32;
  v57 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v31 < v12)
    {
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v12, __DataStorage._offset.getter()))
    {
      goto LABEL_59;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v47 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v27 = v47;
    v30 = v57;
  }

  if (v31 < v12)
  {
    goto LABEL_56;
  }

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v12, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v30 bytes];
      [v59 bytes];
      v49 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v49 bytes];
      v50 = v49;
      v51 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v51 != 2 || !__OFSUB__(a4[3], a4[2]))
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else if (!v51)
      {
        goto LABEL_53;
      }

      if (__OFSUB__(HIDWORD(a4), a4))
      {
        goto LABEL_63;
      }

LABEL_53:
      v52 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v52 bytes];
      v53 = v52;
      chacha20_poly1305_decrypt_all_64x64();

      sub_1000A0D2C(a4, a5);
      sub_1000A0D2C(a6, a7);

      sub_1000A0D2C(a4, a5);
      v54 = v27 | 0x4000000000000000;
      v16 = a4;
      v21 = a2;
      *v62 = v12;
      v62[1] = v54;
      goto LABEL_54;
    }

    goto LABEL_57;
  }

LABEL_65:
  __break(1u);
  return result;
}

void sub_1000B0130(uint64_t *a1, uint64_t *a2, void *a3, void *a4, void *a5)
{
  v5 = a4;
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&v49 + 7) = 0;
      *&v49 = 0;
      v30 = a4;
      v31 = a3;
      sub_1000B05E0(a2, v31, v30, a5, &v49);

      goto LABEL_21;
    }

    v43 = a4;
    v16 = a3;

    sub_1000A0D2C(v9, v8);
    *&v49 = v9;
    *(&v49 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v17 = *(v49 + 16);
    v18 = *(v49 + 24);
    v19 = __DataStorage._bytes.getter();
    if (!v19)
    {

      __break(1u);
      goto LABEL_29;
    }

    v20 = v19;
    v21 = __DataStorage._offset.getter();
    v22 = v17 - v21;
    if (!__OFSUB__(v17, v21))
    {
      if (!__OFSUB__(v18, v17))
      {
        __DataStorage._length.getter();
        sub_1000B05E0(a2, v16, v43, a5, v20 + v22);

        v23 = *(&v49 + 1) | 0x8000000000000000;
        *a1 = v49;
LABEL_20:
        a1[1] = v23;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v10)
  {
    v40 = a4;
    v11 = a3;
    sub_1000A0D2C(v9, v8);
    *&v49 = v9;
    WORD4(v49) = v8;
    BYTE10(v49) = BYTE2(v8);
    BYTE11(v49) = BYTE3(v8);
    BYTE12(v49) = BYTE4(v8);
    BYTE13(v49) = BYTE5(v8);
    BYTE14(v49) = BYTE6(v8);
    v12 = v40;
    v13 = v11;
    sub_1000B05E0(a2, v13, v12, a5, &v49);
    v14 = v49;
    v15 = DWORD2(v49) | ((WORD6(v49) | (BYTE14(v49) << 16)) << 32);

    *a1 = v14;
    a1[1] = v15;
    v5 = a4;
LABEL_21:

    return;
  }

  v24 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v25 = a4;
  v26 = a3;
  sub_1000A0CD8(v9, v8);
  sub_1000A0D2C(v9, v8);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v44 = v25;
  v41 = v26;
  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v9, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v32 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v24 = v32;
  }

  if (v27 < v9)
  {
    goto LABEL_23;
  }

  v33 = __DataStorage._bytes.getter();
  if (v33)
  {
    v34 = v33;
    v35 = __DataStorage._offset.getter();
    v36 = v9 - v35;
    if (!__OFSUB__(v9, v35))
    {
      __DataStorage._length.getter();
      v37 = v34 + v36;
      v38 = v44;
      v39 = v41;
      sub_1000B05E0(a2, v39, v38, a5, v37);

      v23 = v24 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

void sub_1000B05E0(uint64_t *a1, id a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a3;
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v25 = a2;
      v26 = v5;
      [a2 bytes];
      [v26 bytes];
      chacha20_poly1305_encrypt_all_64x64();

      goto LABEL_20;
    }

    v12 = a2;
    v28 = v5;
    v13 = v5;

    sub_1000A0D2C(v8, v7);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v15 = *(v8 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v15, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v12 bytes];
      [v13 bytes];
      chacha20_poly1305_encrypt_all_64x64();

      v16 = v14 | 0x8000000000000000;
      *a1 = v8;
LABEL_19:
      a1[1] = v16;
      v5 = v28;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = a3;
  if (!v9)
  {
    v10 = a2;
    v11 = v5;
    sub_1000A0D2C(v8, v7);
    LOWORD(v29) = v7;
    BYTE2(v29) = BYTE2(v7);
    HIBYTE(v29) = BYTE3(v7);
    LOBYTE(v30) = BYTE4(v7);
    HIBYTE(v30) = BYTE5(v7);
    [v10 bytes];
    [v11 bytes];
    chacha20_poly1305_encrypt_all_64x64();

    v5 = v28;
    *a1 = v8;
    a1[1] = v29 | ((v30 | (BYTE6(v7) << 16)) << 32);
LABEL_20:

    return;
  }

  v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = a2;
  v19 = v5;
  sub_1000A0CD8(v8, v7);
  sub_1000A0D2C(v8, v7);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v20 = v18;
  v21 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v8 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v23 < v8)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v8, __DataStorage._offset.getter()))
    {
LABEL_25:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v27 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v17 = v27;
    v23 = v8 >> 32;
  }

  if (v23 < v8)
  {
    goto LABEL_22;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v8, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v20 bytes];
      [v21 bytes];
      chacha20_poly1305_encrypt_all_64x64();

      v16 = v17 | 0x4000000000000000;
      *a1 = v8;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1000B0AEC(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, void *a5)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v24 = a4;
      v25 = a5;
      [a4 bytes];
      [a4 length];
      [v25 bytes];
      [v25 length];
      CryptoHKDF();

      goto LABEL_20;
    }

    v12 = a4;
    v27 = a5;
    v13 = a5;

    sub_1000A0D2C(v7, v8);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(v7 + 16);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v12 bytes];
      [v12 length];
      [v13 bytes];
      [v13 length];
      CryptoHKDF();

      v15 = v8 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v15;
      a5 = v27;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v9)
  {
    v10 = a4;
    v11 = a5;
    sub_1000A0D2C(v7, v8);
    LOWORD(v28) = v8;
    BYTE2(v28) = BYTE2(v8);
    HIBYTE(v28) = BYTE3(v8);
    LOBYTE(v29) = BYTE4(v8);
    HIBYTE(v29) = BYTE5(v8);
    [v10 bytes];
    [v10 length];
    [v11 bytes];
    [v11 length];
    CryptoHKDF();

    *a1 = v7;
    a1[1] = v28 | ((v29 | (BYTE6(v8) << 16)) << 32);
LABEL_20:

    return;
  }

  v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  v17 = a4;
  v27 = a5;
  v18 = a5;
  sub_1000A0CD8(v7, v8);
  sub_1000A0D2C(v7, v8);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v19 = v17;
  v20 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v22 < v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
    {
LABEL_25:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v26 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v26;
    v22 = v7 >> 32;
  }

  if (v22 < v7)
  {
    goto LABEL_22;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v7, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v19 bytes];
      [v19 length];
      [v20 bytes];
      [v20 length];
      CryptoHKDF();

      v15 = v16 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
}

void sub_1000B1128(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v23 = a4;
      v24 = a5;
      [a4 bytes];
      [a4 length];
      [v24 bytes];
      [v24 length];
      CryptoHKDF();

      goto LABEL_21;
    }

    v12 = a4;
    v27 = a5;
    v13 = a5;

    sub_1000A0D2C(v8, v7);
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (!__DataStorage._bytes.getter())
    {

      __break(1u);
      goto LABEL_29;
    }

    if (!__OFSUB__(v14, __DataStorage._offset.getter()))
    {
      if (!__OFSUB__(v15, v14))
      {
        __DataStorage._length.getter();
        [v12 bytes];
        [v12 length];
        [v13 bytes];
        [v13 length];
        CryptoHKDF();

        v16 = v7 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
        *a1 = v8;
LABEL_20:
        a1[1] = v16;
        a5 = v27;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v9)
  {
    v10 = a4;
    v11 = a5;
    sub_1000A0D2C(v8, v7);
    LOWORD(v28) = v7;
    BYTE2(v28) = BYTE2(v7);
    HIBYTE(v28) = BYTE3(v7);
    LOBYTE(v29) = BYTE4(v7);
    HIBYTE(v29) = BYTE5(v7);
    [v10 bytes];
    [v10 length];
    [v11 bytes];
    [v11 length];
    CryptoHKDF();

    *a1 = v8;
    a1[1] = v28 | ((v29 | (BYTE6(v7) << 16)) << 32);
LABEL_21:

    return;
  }

  v17 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = a4;
  v27 = a5;
  v19 = a5;
  sub_1000A0CD8(v8, v7);
  sub_1000A0D2C(v8, v7);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v20 = v18;
  v26 = v19;
  v21 = v8 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v21 < v8)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v8, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v25 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v17 = v25;
  }

  if (v21 < v8)
  {
    goto LABEL_23;
  }

  if (__DataStorage._bytes.getter())
  {
    if (!__OFSUB__(v8, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      [v20 bytes];
      [v20 length];
      [v26 bytes];
      [v26 length];
      CryptoHKDF();

      v16 = v17 | 0x4000000000000000;
      *a1 = v8;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_1000B1790(uint64_t *a1, uint64_t *a2, void *a3, void *a4, uint64_t a5, unint64_t a6, void *a7, char *a8)
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v12 = a3;
  v15 = *a1;
  v14 = a1[1];
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      *(&v65 + 7) = 0;
      *&v65 = 0;
      v17 = a4;
      v39 = a4;
      sub_1000B4F20(a5, v10);
      sub_1000A0CD8(v9, v8);
      sub_1000B4F20(a5, v10);
      sub_1000A0CD8(v9, v8);
      sub_1000B2100(a2, v12, v39, a5, v10, v9, v8, &v65);
      sub_1000A452C(a5, v10);
      goto LABEL_21;
    }

    v56 = a4;
    v55 = a4;
    sub_1000B4F20(a5, v10);
    v60 = a7;
    v64 = v8;
    sub_1000A0CD8(a7, v8);
    v58 = v12;
    v53 = v12;

    sub_1000A0D2C(v15, v14);
    *&v65 = v15;
    *(&v65 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v23 = *(v65 + 16);
    v24 = *(v65 + 24);
    v25 = __DataStorage._bytes.getter();
    if (!v25)
    {

      sub_1000A452C(a5, v10);
      result = sub_1000A0D2C(v60, v8);
      __break(1u);
      goto LABEL_29;
    }

    v26 = v25;
    v27 = __DataStorage._offset.getter();
    v28 = v23 - v27;
    if (!__OFSUB__(v23, v27))
    {
      if (!__OFSUB__(v24, v23))
      {
        __DataStorage._length.getter();
        v29 = v26 + v28;
        sub_1000B4F20(a5, v10);
        sub_1000A0CD8(v60, v64);
        v8 = v64;
        v30 = v29;
        v9 = v60;
        sub_1000B2100(a2, v53, v55, a5, v10, v60, v64, v30);
        sub_1000A452C(a5, v10);
        v31 = *(&v65 + 1) | 0x8000000000000000;
        v32 = a1;
        *a1 = v65;
LABEL_20:
        v32[1] = v31;
        v12 = v58;
        v17 = v56;
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = a3;
  if (!v16)
  {
    v17 = a4;
    v52 = a4;
    sub_1000B4F20(a5, v10);
    sub_1000A0CD8(a7, a8);
    v50 = v58;
    sub_1000A0D2C(v15, v14);
    *&v65 = v15;
    WORD4(v65) = v14;
    BYTE10(v65) = BYTE2(v14);
    BYTE11(v65) = BYTE3(v14);
    BYTE12(v65) = BYTE4(v14);
    BYTE13(v65) = BYTE5(v14);
    BYTE14(v65) = BYTE6(v14);
    v18 = v52;
    sub_1000B4F20(a5, v10);
    sub_1000A0CD8(a7, a8);
    v19 = v50;
    sub_1000B2100(a2, v19, v18, a5, v10, a7, a8, &v65);
    v20 = v65;
    v21 = DWORD2(v65) | ((WORD6(v65) | (BYTE14(v65) << 16)) << 32);

    v9 = a7;
    sub_1000A452C(a5, v10);
    *a1 = v20;
    a1[1] = v21;
    v8 = a8;
    v12 = v58;
LABEL_21:
    sub_1000A0D2C(v9, v8);

    sub_1000A452C(a5, v10);
    return sub_1000A0D2C(v9, v8);
  }

  v56 = a4;
  v33 = a4;
  sub_1000B4F20(a5, a6);
  sub_1000A0CD8(v9, v8);
  v34 = v12;
  sub_1000A0CD8(v15, v14);
  sub_1000A0D2C(v15, v14);
  *a1 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v35 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  v36 = v33;
  sub_1000B4F20(a5, a6);
  sub_1000A0CD8(v9, v8);
  v54 = v34;
  v37 = v15;
  v38 = v15 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v38 < v15)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v15, __DataStorage._offset.getter()))
    {
LABEL_27:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v37 = v15;
    v35 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
  }

  if (v38 < v37)
  {
    goto LABEL_23;
  }

  v40 = a5;
  v41 = v37;
  v51 = v40;

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v43 = result;
    v44 = __DataStorage._offset.getter();
    v45 = v41 - v44;
    if (!__OFSUB__(v41, v44))
    {
      v49 = v35;
      __DataStorage._length.getter();
      v46 = v43 + v45;
      v47 = v36;
      a5 = v51;
      v10 = a6;
      sub_1000B4F20(v51, a6);
      v8 = a8;
      sub_1000A0CD8(v9, a8);
      v48 = v54;
      sub_1000B2100(a2, v48, v47, v51, a6, v9, a8, v46);

      sub_1000A452C(v51, a6);
      sub_1000A0D2C(v9, a8);

      sub_1000A452C(v51, a6);
      v31 = v49 | 0x4000000000000000;
      v32 = a1;
      *a1 = v15;
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_1000B1E64(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_1000A0D2C(v3, v2);
      v27 = v3;
      v28 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *result = xmmword_10023BF90;
      sub_1000A0D2C(0, 0xC000000000000000);
      sub_1000B2DC4(&v27);
      v9 = v27;
      v10 = v28 | 0x4000000000000000;
    }

    else
    {
      sub_1000A0D2C(v3, v2);
      v27 = v3;
      LOWORD(v28) = v2;
      BYTE2(v28) = BYTE2(v2);
      BYTE3(v28) = BYTE3(v2);
      BYTE4(v28) = BYTE4(v2);
      BYTE5(v28) = BYTE5(v2);
      BYTE6(v28) = BYTE6(v2);
      if (BYTE6(v2))
      {
        v5 = BYTE6(v2) - 1;
        v6 = &v27;
        do
        {
          v7 = ++*v6;
          v6 = (v6 + 1);
          if (v7)
          {
            v8 = 1;
          }

          else
          {
            v8 = v5 == 0;
          }

          --v5;
        }

        while (!v8);
      }

      v9 = v27;
      v10 = v28 | ((WORD2(v28) | (BYTE6(v28) << 16)) << 32);
    }

    *result = v9;
    result[1] = v10;
    return;
  }

  if (v4 != 2)
  {
    return;
  }

  sub_1000A0D2C(v3, v2);
  v27 = v3;
  v28 = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *result = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v12 = v27;
  v11 = v28;
  v13 = *(v27 + 16);
  v14 = *(v27 + 24);
  v15 = __DataStorage._bytes.getter();
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = __DataStorage._offset.getter();
  v18 = v13 - v17;
  if (__OFSUB__(v13, v17))
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  v19 = __OFSUB__(v14, v13);
  v20 = v14 - v13;
  if (v19)
  {
    goto LABEL_30;
  }

  v21 = __DataStorage._length.getter();
  if (v21 >= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v22)
  {
    v23 = (v16 + v18);
    v24 = v22 - 1;
    do
    {
      if (++*v23++)
      {
        v26 = 1;
      }

      else
      {
        v26 = v24 == 0;
      }

      --v24;
    }

    while (!v26);
  }

  *result = v12;
  result[1] = v11 | 0x8000000000000000;
}

uint64_t sub_1000B2100(uint64_t *a1, id a2, char *a3, uint64_t a4, unint64_t a5, void *a6, char *a7, uint64_t a8)
{
  v14 = *a1;
  v13 = a1[1];
  v95 = a1;
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      *(&v96 + 7) = 0;
      *&v96 = 0;
      v51 = a2;
      sub_1000B4F20(a4, a5);
      sub_1000A0CD8(a6, a7);
      v18 = &selRef__sendControlPacket_forRequest_completionHandler_;
      v95 = [a2 bytes];
      v52 = a4;
      v25 = a5;
      v53 = &a3[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
      swift_beginAccess();
      v54 = *v53;
      v55 = v53[1];
      sub_1000A0CD8(*v53, v55);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v90 = [(objc_class *)isa bytes];
      sub_1000A0D2C(v54, v55);
      v57 = isa;
      if (v25 >> 60 == 15)
      {
        v58 = v52;
        a5 = v25;
        v33 = 0;
        v19 = 0;
        goto LABEL_23;
      }

      v58 = v52;
      v65 = Data._bridgeToObjectiveC()().super.isa;
      v19 = [(objc_class *)v65 bytes];
      v66 = v65;
      a5 = v25;
      v67 = v25 >> 62;
      if ((v25 >> 62) > 1)
      {
        goto LABEL_50;
      }

      if (!v67)
      {
        v33 = BYTE6(v25);
        goto LABEL_23;
      }

      if (!__OFSUB__(HIDWORD(v58), v58))
      {
        v33 = HIDWORD(v58) - v58;
        goto LABEL_23;
      }

      goto LABEL_113;
    }

    v90 = a2;
    v88 = a3;
    v92 = a4;
    v30 = a4;
    v31 = a5;
    sub_1000B4F20(v30, a5);
    sub_1000A0CD8(a6, a7);

    sub_1000A0D2C(v14, v13);
    *&v96 = v14;
    *(&v96 + 1) = v13 & 0x3FFFFFFFFFFFFFFFLL;
    *v95 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v19 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = *(v14 + 16);
    if (!__DataStorage._bytes.getter())
    {

      sub_1000A452C(v92, v31);
      result = sub_1000A0D2C(a6, a7);
      __break(1u);
      goto LABEL_117;
    }

    if (!__OFSUB__(v32, __DataStorage._offset.getter()))
    {
      v87 = v14;
      __DataStorage._length.getter();
      v33 = &selRef__sendControlPacket_forRequest_completionHandler_;
      [v90 bytes];
      v34 = &v88[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
      swift_beginAccess();
      v36 = *v34;
      v35 = v34[1];
      sub_1000A0CD8(v36, v35);
      v37 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v37 bytes];
      sub_1000A0D2C(v36, v35);
      v38 = v37;
      a5 = v31;
      if (v31 >> 60 != 15)
      {
        goto LABEL_39;
      }

      v18 = 0;
      v25 = v92;
      goto LABEL_13;
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v92 = a4;
  if (!v15)
  {
    v16 = a2;
    v17 = a3;
    sub_1000B4F20(a4, a5);
    v88 = a7;
    v90 = a6;
    sub_1000A0CD8(a6, a7);
    sub_1000A0D2C(v14, v13);
    *&v96 = v14;
    WORD4(v96) = v13;
    BYTE10(v96) = BYTE2(v13);
    BYTE11(v96) = BYTE3(v13);
    BYTE12(v96) = BYTE4(v13);
    BYTE13(v96) = BYTE5(v13);
    BYTE14(v96) = BYTE6(v13);
    v18 = &selRef__sendControlPacket_forRequest_completionHandler_;
    v87 = v16;
    [v16 bytes];
    v19 = v17;
    v20 = &v17[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
    swift_beginAccess();
    v22 = *v20;
    v21 = v20[1];
    sub_1000A0CD8(v22, v21);
    v23 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v23 bytes];
    sub_1000A0D2C(v22, v21);
    v24 = v23;
    if (a5 >> 60 == 15)
    {
      v25 = v92;
    }

    else
    {
      v25 = v92;
      v62 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v62 bytes];
      v63 = v62;
      v64 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        while (1)
        {
          a7 = v88;
          a6 = v90;
          if (v64 != 2)
          {
            goto LABEL_5;
          }

          v70 = *(v25 + 16);
          v67 = *(v25 + 24);
          v58 = v67 - v70;
          if (!__OFSUB__(v67, v70))
          {
            goto LABEL_5;
          }

          __break(1u);
LABEL_50:
          if (v67 == 2)
          {
            v72 = *(v58 + 16);
            v71 = *(v58 + 24);
            v33 = v71 - v72;
            if (__OFSUB__(v71, v72))
            {
              __break(1u);
LABEL_54:
              if (!__OFSUB__(HIDWORD(a6), a6))
              {
                v29 = v25;
                goto LABEL_59;
              }

LABEL_108:
              __break(1u);
LABEL_109:
              __break(1u);
              goto LABEL_110;
            }
          }

          else
          {
            v33 = 0;
          }

LABEL_23:
          v59 = Data._bridgeToObjectiveC()().super.isa;
          [v59 *(v18 + 1216)];
          v60 = v59;
          v61 = a7 >> 62;
          if ((a7 >> 62) <= 1)
          {
            v25 = v58;
            v42 = a3;
            if (!v61 || !__OFSUB__(HIDWORD(a6), a6))
            {
LABEL_60:
              chacha20_poly1305_encrypt_all_64x64();
              sub_1000A452C(v25, a5);
              goto LABEL_89;
            }

            goto LABEL_109;
          }

          v25 = v58;
          v42 = a3;
          if (v61 != 2 || !__OFSUB__(a6[3], a6[2]))
          {
            goto LABEL_60;
          }

          __break(1u);
LABEL_39:
          v25 = v92;
          v42 = Data._bridgeToObjectiveC()().super.isa;
          [v42 *(v33 + 1216)];
          v68 = v42;
          v69 = a5 >> 62;
          if ((a5 >> 62) > 1)
          {
            if (v69 == 2)
            {
              v74 = *(v92 + 16);
              v73 = *(v92 + 24);
              v18 = v73 - v74;
              if (__OFSUB__(v73, v74))
              {
                __break(1u);
LABEL_65:
                if (!__OFSUB__(HIDWORD(a6), a6))
                {
LABEL_66:
                  chacha20_poly1305_encrypt_all_64x64();

                  sub_1000A452C(v25, a5);
                  *v95 = v87;
                  v95[1] = v19 | 0x8000000000000000;
                  goto LABEL_89;
                }

LABEL_110:
                __break(1u);
LABEL_111:
                __break(1u);
LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                __break(1u);
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else if (v69)
          {
            if (__OFSUB__(HIDWORD(v92), v92))
            {
              goto LABEL_114;
            }

            v18 = HIDWORD(v92) - v92;
          }

          else
          {
            v18 = BYTE6(a5);
          }

LABEL_13:
          v39 = Data._bridgeToObjectiveC()().super.isa;
          [v39 *(v33 + 1216)];
          v40 = v39;
          v41 = a7 >> 62;
          if ((a7 >> 62) <= 1)
          {
            v42 = a3;
            if (v41)
            {
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          v42 = a3;
          if (v41 != 2)
          {
            goto LABEL_66;
          }

          v64 = a6[3];
          if (!__OFSUB__(v64, a6[2]))
          {
            goto LABEL_66;
          }

          __break(1u);
        }
      }

      if (v64 && __OFSUB__(HIDWORD(v92), v92))
      {
        goto LABEL_112;
      }
    }

LABEL_5:
    v26 = Data._bridgeToObjectiveC()().super.isa;
    [v26 *(v18 + 1216)];
    v27 = v26;
    v28 = a7 >> 62;
    if ((a7 >> 62) <= 1)
    {
      if (v28)
      {
        goto LABEL_54;
      }

      v29 = v25;
LABEL_59:
      chacha20_poly1305_encrypt_all_64x64();

      sub_1000A452C(v29, a5);
      *v95 = v96;
      v95[1] = DWORD2(v96) | ((WORD6(v96) | (BYTE14(v96) << 16)) << 32);
      v25 = v29;
      a6 = v90;
      v42 = a3;
      goto LABEL_89;
    }

    if (v28 != 2)
    {
      v29 = v25;
      goto LABEL_59;
    }

    if (!__OFSUB__(a6[3], a6[2]))
    {
      v29 = v25;
      goto LABEL_59;
    }

LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v43 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v44 = a2;
  v45 = a3;
  sub_1000B4F20(a4, a5);
  sub_1000A0CD8(a6, a7);
  sub_1000A0CD8(v14, v13);
  sub_1000A0D2C(v14, v13);
  *v95 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v91 = v44;
  v46 = v45;
  v47 = a4;
  v48 = a5;
  sub_1000B4F20(v47, a5);
  sub_1000A0CD8(a6, a7);
  v49 = v14 >> 32;
  v89 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v49 < v14)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v14, __DataStorage._offset.getter()))
    {
      goto LABEL_106;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v75 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v43 = v75;
  }

  if (v49 < v14)
  {
    goto LABEL_103;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_117:
    __break(1u);
    return result;
  }

  if (__OFSUB__(v14, __DataStorage._offset.getter()))
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  a5 = v48;
  __DataStorage._length.getter();
  [v91 bytes];
  v77 = &v46[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
  swift_beginAccess();
  v42 = *v77;
  v78 = *(v77 + 1);
  sub_1000A0CD8(v42, v78);
  v79 = Data._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v79 bytes];
  sub_1000A0D2C(v42, v78);
  v80 = v79;
  if (v48 >> 60 == 15)
  {
    v25 = v92;
  }

  else
  {
    v25 = v92;
    v84 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v84 bytes];
    v85 = v84;
    v86 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      goto LABEL_83;
    }

    if (v86 && __OFSUB__(HIDWORD(v92), v92))
    {
      goto LABEL_115;
    }
  }

  while (1)
  {
    v81 = Data._bridgeToObjectiveC()().super.isa;
    [(objc_class *)v81 bytes];
    v82 = v81;
    v83 = a7 >> 62;
    if ((a7 >> 62) <= 1)
    {
      break;
    }

    v42 = a3;
    if (v83 != 2)
    {
      goto LABEL_88;
    }

    v86 = a6[3];
    if (!__OFSUB__(v86, a6[2]))
    {
      goto LABEL_88;
    }

    __break(1u);
LABEL_83:
    if (v86 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
    {
      __break(1u);
      goto LABEL_87;
    }
  }

  v42 = a3;
  if (!v83)
  {
    goto LABEL_88;
  }

LABEL_87:
  if (__OFSUB__(HIDWORD(a6), a6))
  {
    goto LABEL_111;
  }

LABEL_88:
  chacha20_poly1305_encrypt_all_64x64();

  sub_1000A452C(v25, a5);
  sub_1000A0D2C(a6, a7);

  sub_1000A452C(v25, a5);
  *v95 = v14;
  v95[1] = v43 | 0x4000000000000000;
LABEL_89:
  sub_1000A0D2C(a6, a7);

  sub_1000A452C(v25, a5);
  return sub_1000A0D2C(a6, a7);
}

void sub_1000B2CF0(int *a1, void *a2, void *a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = __DataStorage._bytes.getter();
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = __DataStorage._offset.getter();
  v11 = v6 - v10;
  if (__OFSUB__(v6, v10))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v7 - v6;
  v13 = __DataStorage._length.getter();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  sub_1000AB818((v9 + v11), v9 + v11 + v14, a2, a3);
}

void sub_1000B2DC4(int *a1)
{
  Data.InlineSlice.ensureUniqueReference()();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = __DataStorage._bytes.getter();
  if (!v4)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = __DataStorage._offset.getter();
  v7 = v2 - v6;
  if (__OFSUB__(v2, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v3 - v2;
  v9 = __DataStorage._length.getter();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v10)
  {
    v11 = (v5 + v7);
    v12 = v10 - 1;
    do
    {
      if (++*v11++)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12 == 0;
      }

      --v12;
    }

    while (!v14);
  }
}

uint64_t sub_1000B2E80(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1001AC9BC(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000B2F20(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

id sub_1000B2F34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v33 = a2;
  v34 = a4;
  v35 = a3;
  v32 = a1;
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v31 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_delegate;
  swift_unknownObjectWeakInit();
  v26 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_flags] = 0;
  v29 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue;
  v12 = sub_1000B3420(0, v11);
  v27 = "com.apple.bluetooth.discovery";
  v28 = v12;
  static DispatchQoS.unspecified.getter();
  *__s = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v4[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  Logger.init(subsystem:category:)();
  v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_state] = 1;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readKey] = xmmword_10023C1B0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeKey] = xmmword_10023C1B0;
  *&v4[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sessionKey] = xmmword_10023C1B0;
  v13 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_sharedSecret;
  v14 = type metadata accessor for SymmetricKey();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_prover;
  v16 = type metadata accessor for SPAKE2.Prover();
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = &v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
  memset(__s, 0, sizeof(__s));
  v38 = 8;
  memset_s(__s, 8uLL, 0, 8uLL);
  v18 = *&__s[8] | ((*&__s[12] | (v38 << 16)) << 32);
  *v17 = *__s;
  v17[1] = v18;
  v19 = &v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_writeNonce];
  memset(__s, 0, sizeof(__s));
  v38 = 8;
  memset_s(__s, 8uLL, 0, 8uLL);
  v20 = *&__s[8] | ((*&__s[12] | (v38 << 16)) << 32);
  *v19 = *__s;
  v19[1] = v20;
  v21 = v33;
  *&v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_role] = v32;
  *&v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_type] = v21;
  swift_unknownObjectWeakAssign();
  v5[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_enhancedEncryption] = v35;
  if (v21 == 3)
  {
    v22 = 16810000;
    goto LABEL_5;
  }

  if (v21 == 4)
  {
    v22 = 16809984;
LABEL_5:
    *&v5[v26] = v22;
  }

  v23 = type metadata accessor for DKPairSetupSession(0);
  v36.receiver = v5;
  v36.super_class = v23;
  return objc_msgSendSuper2(&v36, "init");
}

unint64_t sub_1000B3420(uint64_t a1, uint64_t a2)
{
  result = qword_1002A6820;
  if (!qword_1002A6820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A6820);
  }

  return result;
}

unint64_t sub_1000B346C()
{
  result = qword_1002A9300;
  if (!qword_1002A9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A9300);
  }

  return result;
}

uint64_t sub_1000B34EC(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1001AC9DC(v3, v7);

  return v8;
}

uint64_t sub_1000B35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    type metadata accessor for __DataStorage();
    swift_allocObject();

    v10 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == enum case for Data.Deallocator.none(_:))
    {
      v11 = __DataStorage._capacity.modify();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1000B34EC(v10, a2);
  }

  else
  {
    v13 = Data.Deallocator._deallocator.getter();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t sub_1000B3808(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1001AC9DC(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1000B38B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data._bridgeToObjectiveC()().super.isa;
  [(objc_class *)v7 bytes];
  [(objc_class *)v7 length];
  v14 = 0;
  v15 = 0;
  v13 = 0;
  [(objc_class *)v7 bytes];
  TLV8GetOrCopyCoalesced();
  v8 = v14;
  if (v14)
  {
    v9 = v13;
    (*(v4 + 104))(v6, enum case for Data.Deallocator.free(_:), v3);
    v10 = sub_1000B35D0(v8, v9, v6);
  }

  else
  {
    if (!v15)
    {

      return 0;
    }

    v10 = sub_1000B3808(v15, v13);
  }

  v11 = v10;

  return v11;
}

uint64_t sub_1000B3A90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for String.Encoding();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  static String.Encoding.utf8.getter();
  v13 = String.data(using:allowLossyConversion:)();
  v15 = v14;
  result = (*(v9 + 8))(v11, v8);
  if (v15 >> 60 == 15)
  {
    goto LABEL_27;
  }

  v17.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1000A452C(v13, v15);
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_12;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a2);
    goto LABEL_12;
  }

  LODWORD(v19) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_25;
  }

  v19 = v19;
LABEL_12:
  v23 = v19 - 16;
  if (!__OFSUB__(v19, 16))
  {
    sub_1000A0CD8(a1, a2);
    sub_10015319C(v23, a1, a2, &v33);
    v24 = v33;
    v25 = v34;
    sub_1000A0CD8(a1, a2);
    result = sub_1001A36A0(16, a1, a2, &v33);
    v26 = v33;
    v27 = v34;
    v28 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v28 != 2)
      {
        result = 0;
        goto LABEL_23;
      }

      v30 = v24[2];
      v29 = v24[3];
      result = v29 - v30;
      if (!__OFSUB__(v29, v30))
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v28)
    {
      result = BYTE6(v25);
LABEL_23:
      v33 = sub_1000B2E80(result);
      v34 = v31;
      sub_1000AF81C(&v33, v12.super.isa, v17.super.isa, v24, v25, v26, v27);
      return v33;
    }

    if (!__OFSUB__(HIDWORD(v24), v24))
    {
      result = HIDWORD(v24) - v24;
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000B3CF8(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_clientQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1000B53A8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100275FD8;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_1000B4F20(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_1000B5038(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1000B3FCC(unint64_t *a1, void *a2, void *a3, objc_class *a4, unint64_t a5, uint64_t a6, unint64_t a7, char **a8, unint64_t a9)
{
  v10 = a6;
  v12 = a9;
  v13 = *a1;
  v14 = a1[1];
  v124 = a1;
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    v125 = a7;
    if (v15 == 2)
    {
      v32 = a2;
      v33 = a3;
      sub_1000A0CD8(v10, v125);
      sub_1000A0CD8(a8, a9);
      sub_1000B4F20(a4, a5);
      v34 = v32;
      sub_1000A0CD8(a6, v125);
      sub_1000A0CD8(a8, a9);
      v35 = v33;
      sub_1000B4F20(a4, a5);
      sub_1000A0CD8(v13, v14);
      sub_1000A0D2C(v13, v14);
      *&v130 = v13;
      *(&v130 + 1) = v14 & 0x3FFFFFFFFFFFFFFFLL;
      *v124 = xmmword_10023BF90;
      sub_1000A0D2C(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v117 = v13;
      v36 = *(v13 + 16);
      v37 = v34;
      v121 = a6;
      v38 = a6;
      v12 = a9;
      sub_1000A0CD8(v38, v125);
      v26 = a4;
      sub_1000A0CD8(a8, a9);
      v39 = v35;
      sub_1000B4F20(a4, a5);
      v118 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      result = __DataStorage._bytes.getter();
      if (!result)
      {
        __break(1u);
        goto LABEL_115;
      }

      if (!__OFSUB__(v36, __DataStorage._offset.getter()))
      {
        __DataStorage._length.getter();
        v114 = v37;
        [v37 bytes];
        v41 = &v39[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
        swift_beginAccess();
        v43 = *v41;
        v42 = v41[1];
        sub_1000A0CD8(v43, v42);
        isa = Data._bridgeToObjectiveC()().super.isa;
        [(objc_class *)isa bytes];
        sub_1000A0D2C(v43, v42);
        v45 = isa;
        v113 = v39;
        if (a5 >> 60 == 15)
        {
          v46 = a9;
          v29 = v121;
          v47 = &selRef__sendControlPacket_forRequest_completionHandler_;
          goto LABEL_10;
        }

        v72 = Data._bridgeToObjectiveC()().super.isa;
        [(objc_class *)v72 bytes];
        v73 = v72;
        v74 = a5 >> 62;
        v29 = v121;
        v47 = &selRef__sendControlPacket_forRequest_completionHandler_;
        if ((a5 >> 62) > 1)
        {
          goto LABEL_41;
        }

        if (!v74)
        {
          v46 = a9;
          goto LABEL_10;
        }

        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v46 = a9;
          goto LABEL_10;
        }

LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    *(&v130 + 7) = 0;
    *&v130 = 0;
    v59 = a2;
    v20 = v10;
    sub_1000A0CD8(v10, v125);
    sub_1000A0CD8(a8, a9);
    v60 = v59;
    v118 = a9;
    sub_1000A0CD8(a8, a9);
    v61 = a3;
    sub_1000B4F20(a4, a5);
    v26 = &selRef__sendControlPacket_forRequest_completionHandler_;
    v124 = [v59 bytes];
    v62 = &v61[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
    swift_beginAccess();
    v64 = *v62;
    v63 = v62[1];
    sub_1000A0CD8(v64, v63);
    v65 = Data._bridgeToObjectiveC()().super.isa;
    v117 = [(objc_class *)v65 bytes];
    sub_1000A0D2C(v64, v63);
    v66 = v65;
    if (a5 >> 60 == 15)
    {
      v12 = a9;
    }

    else
    {
      v70 = Data._bridgeToObjectiveC()().super.isa;
      v24.super.isa = &selRef__sendControlPacket_forRequest_completionHandler_;
      [(objc_class *)v70 bytes];
      v29 = v70;
      v71 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        goto LABEL_37;
      }

      if (v71)
      {
        v12 = a9;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
          goto LABEL_110;
        }
      }

      else
      {
LABEL_74:
        v12 = v118;
      }

LABEL_75:
      v26 = v24.super.isa;
    }

    v101 = Data._bridgeToObjectiveC()().super.isa;
    [v101 *(v26 + 152)];
    v102 = v101;
    v103 = v125 >> 62;
    if ((v125 >> 62) > 1)
    {
      if (v103 != 2 || !__OFSUB__(*(v10 + 24), *(v10 + 16)))
      {
        goto LABEL_84;
      }

      __break(1u);
    }

    else if (!v103)
    {
      goto LABEL_84;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_84:
    v78 = a8;
    v104 = Data._bridgeToObjectiveC()().super.isa;
    [v104 *(v26 + 152)];
    v105 = v104;
    v81 = chacha20_poly1305_decrypt_all_64x64();
    sub_1000A0D2C(a8, v12);
    v26 = a4;
    v82 = a5;
    v30 = v125;
    goto LABEL_99;
  }

  v121 = a6;
  if (!v15)
  {
    v17 = a2;
    v112 = a3;
    sub_1000A0CD8(v10, a7);
    sub_1000A0CD8(a8, a9);
    sub_1000B4F20(a4, a5);
    v18 = v17;
    v125 = a7;
    sub_1000A0CD8(v10, a7);
    v118 = a9;
    sub_1000A0CD8(a8, a9);
    v19 = v112;
    sub_1000B4F20(a4, a5);
    sub_1000A0D2C(v13, v14);
    *&v130 = v13;
    WORD4(v130) = v14;
    BYTE10(v130) = BYTE2(v14);
    BYTE11(v130) = BYTE3(v14);
    BYTE12(v130) = BYTE4(v14);
    BYTE13(v130) = BYTE5(v14);
    BYTE14(v130) = BYTE6(v14);
    v117 = v18;
    v20 = [v18 bytes];
    v21 = &v19[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
    swift_beginAccess();
    v23 = *v21;
    v22 = v21[1];
    sub_1000A0CD8(v23, v22);
    v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v113 = [(objc_class *)v24.super.isa bytes];
    sub_1000A0D2C(v23, v22);
    v25 = v24.super.isa;
    v111 = v19;
    v114 = v20;
    if (a5 >> 60 == 15)
    {
      v26 = &selRef__sendControlPacket_forRequest_completionHandler_;
      v27 = a8;
      v28 = a7;
      v30 = a9;
      v29 = v121;
LABEL_65:
      v93 = v29;
      v94 = Data._bridgeToObjectiveC()().super.isa;
      [v94 *(v26 + 152)];
      v95 = v94;
      v96 = v28;
      v97 = v28 >> 62;
      if ((v28 >> 62) > 1)
      {
        if (v97 != 2 || !__OFSUB__(*(v93 + 3), *(v93 + 2)))
        {
          goto LABEL_73;
        }

        __break(1u);
      }

      else if (!v97)
      {
        goto LABEL_73;
      }

      if (!__OFSUB__(HIDWORD(v93), v93))
      {
LABEL_73:
        v78 = v27;
        v98 = Data._bridgeToObjectiveC()().super.isa;
        [v98 *(v26 + 152)];
        v99 = v98;
        v81 = chacha20_poly1305_decrypt_all_64x64();

        v26 = a4;
        v82 = a5;
        sub_1000A452C(a4, a5);
        v100 = v93;
        v12 = v30;
        v30 = v96;
        v10 = v100;
        sub_1000A0D2C(v100, v30);
        sub_1000A0D2C(v27, v12);
        *v124 = v130;
        v124[1] = DWORD2(v130) | ((WORD6(v130) | (BYTE14(v130) << 16)) << 32);
LABEL_99:

        sub_1000A452C(v26, v82);
        sub_1000A0D2C(v10, v30);
        sub_1000A0D2C(v78, v12);
        return v81;
      }

      goto LABEL_105;
    }

    v67 = Data._bridgeToObjectiveC()().super.isa;
    v26 = &selRef__sendControlPacket_forRequest_completionHandler_;
    [(objc_class *)v67 bytes];
    v68 = v67;
    v69 = a5 >> 62;
    if ((a5 >> 62) <= 1)
    {
      v27 = a8;
      v28 = a7;
      v30 = a9;
      v29 = v121;
      if (!v69)
      {
        goto LABEL_65;
      }

LABEL_61:
      if (__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      goto LABEL_65;
    }

    while (1)
    {
      v27 = a8;
      v28 = v125;
      v30 = v118;
      v29 = v121;
      if (v69 != 2)
      {
        goto LABEL_65;
      }

      v75 = *(a4 + 2);
      v71 = *(a4 + 3);
      v76 = __OFSUB__(v71, v75);
      LODWORD(v71) = v71 - v75;
      if (!v76)
      {
        goto LABEL_65;
      }

      __break(1u);
LABEL_37:
      v10 = v20;
      if (v71 != 2)
      {
        goto LABEL_74;
      }

      v77 = *(a4 + 2);
      v74 = *(a4 + 3);
      v47 = (v74 - v77);
      v12 = v118;
      if (!__OFSUB__(v74, v77))
      {
        goto LABEL_75;
      }

      __break(1u);
LABEL_41:
      if (v74 == 2)
      {
        if (__OFSUB__(*(v26 + 3), *(v26 + 2)))
        {
          goto LABEL_111;
        }

        v46 = v12;
      }

      else
      {
        v46 = v12;
      }

LABEL_10:
      v20 = v29;
      v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
      [v24.super.isa v47[152]];
      v48 = v24.super.isa;
      v49 = v125 >> 62;
      if ((v125 >> 62) <= 1)
      {
        break;
      }

      if (v49 != 2)
      {
        goto LABEL_46;
      }

      v69 = v20[3];
      if (!__OFSUB__(v69, v20[2]))
      {
        goto LABEL_46;
      }

      __break(1u);
    }

    if (v49)
    {
      v10 = v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
LABEL_46:
      v10 = v20;
    }

    v12 = v46;
    v78 = a8;
    v79 = Data._bridgeToObjectiveC()().super.isa;
    [v79 v47[152]];
    v80 = v79;
    v81 = chacha20_poly1305_decrypt_all_64x64();
    sub_1000A0D2C(a8, v12);
    v30 = v125;
    sub_1000A0D2C(v10, v125);
    v82 = a5;
    sub_1000A452C(v26, a5);

    sub_1000A452C(v26, a5);
    sub_1000A0D2C(v10, v125);
    sub_1000A0D2C(a8, v12);
    v83 = v118 | 0x8000000000000000;
LABEL_98:
    *v124 = v117;
    v124[1] = v83;
    goto LABEL_99;
  }

  v117 = *a1;
  v50 = a2;
  v51 = a3;
  sub_1000A0CD8(v10, a7);
  sub_1000A0CD8(a8, a9);
  sub_1000B4F20(a4, a5);
  v119 = v50;
  v52 = v10;
  v53 = a7;
  sub_1000A0CD8(v52, a7);
  v54 = a8;
  v55 = a5;
  v26 = a4;
  v56 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1000A0CD8(v54, a9);
  v115 = v51;
  sub_1000B4F20(a4, a5);
  sub_1000A0CD8(v117, v14);
  sub_1000A0D2C(v117, v14);
  *v124 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
  v57 = v117 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v57 < v117)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v117, __DataStorage._offset.getter()))
    {
      goto LABEL_104;
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v84 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v56 = v84;
    v55 = a5;
  }

  if (v57 < v117)
  {
    goto LABEL_101;
  }

  v120 = v119;
  v30 = v53;
  sub_1000A0CD8(v121, v53);
  sub_1000A0CD8(a8, a9);
  v85 = v115;
  sub_1000B4F20(a4, v55);

  result = __DataStorage._bytes.getter();
  if (result)
  {
    if (!__OFSUB__(v117, __DataStorage._offset.getter()))
    {
      __DataStorage._length.getter();
      v27 = &selRef__sendControlPacket_forRequest_completionHandler_;
      [v120 bytes];
      v116 = v85;
      v86 = &v85[OBJC_IVAR____TtC14dockaccessoryd18DKPairSetupSession_readNonce];
      swift_beginAccess();
      v88 = *v86;
      v87 = v86[1];
      sub_1000A0CD8(v88, v87);
      v89 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v89 bytes];
      sub_1000A0D2C(v88, v87);
      v90 = v89;
      if (a5 >> 60 == 15)
      {
        v10 = v121;
      }

      else
      {
        v91 = Data._bridgeToObjectiveC()().super.isa;
        v28 = [(objc_class *)v91 bytes];
        v29 = v91;
        v92 = a5 >> 62;
        v10 = v121;
        if ((a5 >> 62) > 1)
        {
          if (v92 == 2 && __OFSUB__(*(a4 + 3), *(a4 + 2)))
          {
            __break(1u);
            goto LABEL_61;
          }
        }

        else if (v92 && __OFSUB__(HIDWORD(a4), a4))
        {
LABEL_113:
          __break(1u);
        }
      }

      v106 = Data._bridgeToObjectiveC()().super.isa;
      [(objc_class *)v106 bytes];
      v107 = v106;
      v108 = v30 >> 62;
      v126 = v56;
      if ((v30 >> 62) > 1)
      {
        if (v108 != 2 || !__OFSUB__(*(v10 + 24), *(v10 + 16)))
        {
          goto LABEL_97;
        }

        __break(1u);
      }

      else if (!v108)
      {
LABEL_97:
        v78 = a8;
        v109 = Data._bridgeToObjectiveC()().super.isa;
        [(objc_class *)v109 bytes];
        v110 = v109;
        v81 = chacha20_poly1305_decrypt_all_64x64();
        sub_1000A0D2C(a8, a9);
        sub_1000A0D2C(v10, v30);
        v26 = a4;
        v82 = a5;
        sub_1000A452C(a4, a5);

        sub_1000A452C(a4, a5);
        sub_1000A0D2C(v10, v30);
        sub_1000A0D2C(a8, a9);
        v83 = v126 | 0x4000000000000000;
        goto LABEL_98;
      }

      if (__OFSUB__(HIDWORD(v10), v10))
      {
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      goto LABEL_97;
    }

    goto LABEL_102;
  }

LABEL_115:
  __break(1u);
  return result;
}

uint64_t sub_1000B4F20(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000A0CD8(result, a2);
  }

  return result;
}

unint64_t sub_1000B4F34()
{
  result = qword_1002A7130;
  if (!qword_1002A7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7130);
  }

  return result;
}

uint64_t sub_1000B4FE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B5020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B5038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B50A8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = 0;
  return result;
}

uint64_t sub_1000B5150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B51CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000B5234()
{
  sub_1000A0D2C(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B52A0()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_1000A0D2C(*(v0 + 16), v1);
  }

  sub_1000A0D2C(*(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B5308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B5358()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000A0D2C(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t getEnumTagSinglePayload for PairSetupError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PairSetupError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000B5554()
{
  result = qword_1002A7180;
  if (!qword_1002A7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A7180);
  }

  return result;
}

uint64_t sub_1000B55F8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A71F0);
  sub_100093DE8(v2, qword_1002A71F0);
  return Logger.init(subsystem:category:)();
}

id sub_1000B5678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger;
  Logger.init(subsystem:category:)();
  (*(v5 + 16))(v7, &v3[v8], v4);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "camera capture interface open", v11, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v12 = type metadata accessor for dockCameraCaptureHandler(0);
  v14.receiver = v3;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1000B5858@<X0>(char *a2@<X8>)
{
  v3 = type metadata accessor for Logger();
  v31 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v29 - v10;
  v12 = type metadata accessor for Errors();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v14(v11, 1, 1, v12);
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v17 = v15;
    v29[0] = v3;
    v30 = v14;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v18 = sub_10019B91C(v17, v16);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      sub_100095C84(v11, &unk_1002A6F30, &unk_10023C4D0);
      v22 = type metadata accessor for DKXPCClientApplication(0);
      result = v30(&a2[*(v22 + 24)], 1, 1, v12);
      *a2 = v17;
      *(a2 + 1) = v20;
      *(a2 + 2) = v21;
      return result;
    }

    (*(v31 + 16))(v5, v29[1] + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v29[0]);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed fetching App ID from connection", v27, 2u);
    }

    (*(v31 + 8))(v5, v29[0]);
    sub_100095C84(v11, &unk_1002A6F30, &unk_10023C4D0);
    *v9 = 0xD000000000000026;
    *(v9 + 1) = 0x800000010022FA70;
    (*(v13 + 104))(v9, enum case for Errors.NotFound(_:), v12);
    v30(v9, 0, 1, v12);
    sub_1000A089C(v9, v11);
    v28 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v11, &a2[*(v28 + 24)]);
    *(a2 + 2) = 0;
    *a2 = v17;
  }

  else
  {
    sub_100095C84(v11, &unk_1002A6F30, &unk_10023C4D0);
    *v9 = 0xD000000000000017;
    *(v9 + 1) = 0x800000010022FA50;
    (*(v13 + 104))(v9, enum case for Errors.XPCNil(_:), v12);
    v14(v9, 0, 1, v12);
    sub_1000A089C(v9, v11);
    v24 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v11, &a2[*(v24 + 24)]);
    *(a2 + 2) = 0;
    *a2 = 0;
  }

  *(a2 + 1) = 0;
  return result;
}

void sub_1000B5DA8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1000B5E6C(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(void *, void *, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(a3, a4, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1000B5F48(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_1000B9C48(v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1000B606C(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t type metadata accessor for dockCameraCaptureHandler(uint64_t a1)
{
  result = qword_1002A7230;
  if (!qword_1002A7230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B61C4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1000B6254(int a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v23[1] = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66B8 != -1)
  {
    swift_once();
  }

  v13 = sub_100093DE8(v9, qword_1002A71F0);
  (*(v10 + 16))(v12, v13, v9);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23[0] = a5;
    v18 = v17;
    v24[0] = v17;
    v24[1] = a2;
    *v16 = 67109378;
    *(v16 + 4) = a1;
    *(v16 + 8) = 2080;
    v24[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000952D4(v19, v20, v24);

    *(v16 + 10) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, v23[0], v16, 0x12u);
    sub_100095808(v18);
  }

  (*(v10 + 8))(v12, v9);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1001A1AA8(Strong);
}

id sub_1000B65BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000B6618(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v28 = a2;
  v4 = type metadata accessor for Logger();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v7 = qword_1002B1CF0;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v12 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v12 + 4);

  v13 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
  v14 = swift_beginAccess();
  v15 = *(v7 + v13);
  v31[0] = v8;
  v31[1] = v10;
  __chkstk_darwin(v14);
  *(&v27 - 2) = v31;

  LOBYTE(v8) = sub_10019EE0C(sub_1000BAB94, (&v27 - 4), v15);

  v16 = a1;
  v17 = v8 ^ 1;
  v18 = *(v7 + v11);

  os_unfair_lock_unlock(v18 + 4);

  v19 = v29;
  (*(v29 + 16))(v6, v28 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v4);
  v20 = v16;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412546;
    *(v23 + 4) = v20;
    *v24 = v16;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v17 & 1;
    v25 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "app %@ tracking enabled: %{BOOL}d", v23, 0x12u);
    sub_100095C84(v24, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v19 + 8))(v6, v4);
  return (*(v30 + 16))(v30, v17 & 1, 0);
}

void sub_1000B6934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Errors();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() currentConnection];
  if (v13)
  {
    if (qword_1002A6780 != -1)
    {
      v24 = v13;
      swift_once();
      v13 = v24;
    }

    v14 = v13;
    [v13 processIdentifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v26 = v14;
    sub_1001A1870(v15, v17, v14);

    (*(a3 + 16))(a3, 1, 0);
    v18 = v26;
  }

  else
  {
    (*(v10 + 16))(v12, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed fetching current NSXPCConnection, cannot construct client", v21, 2u);
    }

    (*(v10 + 8))(v12, v9);
    *v8 = 0xD000000000000017;
    v8[1] = 0x800000010022FA50;
    (*(v6 + 104))(v8, enum case for Errors.XPCNil(_:), v5);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v6 + 16))(v22, v8, v5);
    v23 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v23);

    (*(v6 + 8))(v8, v5);
  }
}

void sub_1000B6D18(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = type metadata accessor for Errors();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 processIdentifier];
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v18 = qword_1002B1CF0;
    v19 = CameraSessionInformation.appId.getter();
    v21 = v20;
    v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v23 = *(v18 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v23 + 4);

    v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_appIdMap;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v18 + v24);
    *(v18 + v24) = 0x8000000000000000;
    sub_1001EB828(v19, v21, v17, isUniquelyReferenced_nonNull_native);
    *(v18 + v24) = v38;
    swift_endAccess();
    v26 = *(v18 + v22);

    os_unfair_lock_unlock(v26 + 4);

    if (a2)
    {
      sub_10018B174(a1, v27);
      type metadata accessor for CameraSessionInformation();
      isa = Array._bridgeToObjectiveC()().super.isa;
      (*(v37 + 16))(v37, isa, 0);
    }

    else
    {
      type metadata accessor for CameraSessionInformation();
      v35 = Array._bridgeToObjectiveC()().super.isa;
      (*(v37 + 16))(v37, v35, 0);
    }
  }

  else
  {
    (*(v12 + 16))(v14, a3 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v11);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed fetching current NSXPCConnection, cannot construct client", v31, 2u);
    }

    (*(v12 + 8))(v14, v11);
    *v10 = 0xD000000000000017;
    v10[1] = 0x800000010022FA50;
    (*(v8 + 104))(v10, enum case for Errors.XPCNil(_:), v7);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v8 + 16))(v32, v10, v7);
    v33 = _convertErrorToNSError(_:)();
    type metadata accessor for CameraSessionInformation();
    v34 = Array._bridgeToObjectiveC()().super.isa;
    (*(v37 + 16))(v37, v34, v33);

    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1000B71E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v15 = qword_1002B1CF0;
    v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v17 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v19 = *(v15 + v16);
    v20 = v18;

    os_unfair_lock_unlock(v19 + 4);

    if (v18)
    {
      v21 = dispatch thunk of DockCoreAccessory.info.getter();

      type metadata accessor for TrackingSummaryInternal();
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      v25 = static TrackingSummaryInternal.decode(data:)();
      sub_1000A0D2C(v22, v24);
      if (v25)
      {
        v26 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v26)
        {
          v27 = v26;
          sub_1001BB39C(v25);
        }

        sub_10018D4B4(v25);
        sub_1000B7698(v21, a1, sub_1000BAAE0, &unk_100276158, &selRef_trackingSummaryDataWithInfo_data_);
        (*(a3 + 16))(a3, 1, 0);
      }

      else
      {
      }
    }

    v34 = *(a3 + 16);

    return v34(a3, 0, 0);
  }

  else
  {
    (*(v11 + 16))(v13, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed fetching current NSXPCConnection, cannot construct client", v30, 2u);
    }

    (*(v11 + 8))(v13, v10);
    *v9 = 0xD000000000000017;
    v9[1] = 0x800000010022FA50;
    (*(v7 + 104))(v9, enum case for Errors.XPCNil(_:), v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v7 + 16))(v31, v9, v6);
    v32 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v32);

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000B7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v49 = a5;
  v45 = a4;
  v44 = a3;
  v48 = a2;
  v54 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v50 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v7 = *(v42 - 8);
  __chkstk_darwin(v42);
  v51 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
LABEL_21:
    swift_once();
  }

  v9 = qword_1002B1CF0;
  sub_1001F1F04(_swiftEmptyArrayStorage);

  v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v11 = *(v9 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v11 + 4);

  v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  v13 = *(v9 + v12);
  v53 = v9;
  v14 = *(v9 + v10);

  os_unfair_lock_unlock(v14 + 4);

  v15 = 0;
  v16 = 1 << *(v13 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v13 + 64);
  v52 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
  v47 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn;
  v19 = (v16 + 63) >> 6;
  v41 = v56;
  v40 = (v5 + 8);
  v39 = v7 + 1;
  v20 = &stru_10029A000;
  while (v18)
  {
LABEL_11:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(v13 + 56) + ((v15 << 10) | (16 * v22));
    if (*v23)
    {
      v24 = *(v23 + 8);
      v25 = *v23;
      v5 = v24;
      v7 = [v25 v20[62].attr];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9200, &qword_10023C4F0);
      if (swift_dynamicCast())
      {
        v27 = v58;
        v7 = sub_1000BAA94(0, v26);
        v28 = v5;
        v5 = static NSObject.== infix(_:_:)();

        if (v5)
        {
          v46 = v27;
          v7 = v53;
          v29 = *(v53 + v52);

          os_unfair_lock_lock(v29 + 4);

          v30 = *(v7 + v47);
          if (v30)
          {
            v7 = v30[3];
            if (v7)
            {
              v56[2] = v44;
              v57 = v30;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              v56[0] = sub_100147FC8;
              v56[1] = v45;
              v38 = v30;
              v37 = _Block_copy(aBlock);
              swift_retain_n();
              v36 = v7;
              static DispatchQoS.unspecified.getter();
              v58 = _swiftEmptyArrayStorage;
              sub_1000BAAE8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_100095274(&unk_1002A6B60, qword_10023AE10);
              sub_1000BAB30();
              v31 = v43;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v32 = v37;
              v33 = v36;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v32);

              (*v40)(v50, v31);
              (*v39)(v51, v42);
              v7 = v57;
            }
          }

          v34 = *(v53 + v52);

          os_unfair_lock_unlock(v34 + 4);

          v5 = v46;
          [v46 *v49];
        }

        swift_unknownObjectRelease();

        v20 = &stru_10029A000;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v21 >= v19)
    {
    }

    v18 = *(v13 + 64 + 8 * v21);
    ++v15;
    if (v18)
    {
      v15 = v21;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1000B7C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() currentConnection];
  if (v14)
  {

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v15 = qword_1002B1CF0;
    v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v17 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v19 = *(v15 + v16);
    v20 = v18;

    os_unfair_lock_unlock(v19 + 4);

    if (v18)
    {
      v21 = dispatch thunk of DockCoreAccessory.info.getter();

      type metadata accessor for DKIntelligentTrackingState();
      v22 = static DKIntelligentTrackingState.decode(nsdata:)();
      if (v22)
      {
        v23 = v22;
        v24 = *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_idsServer);
        if (v24)
        {
          v25 = v24;
          sub_1001BA230(v23);
        }

        v26 = *(v15 + v16);

        os_unfair_lock_lock(v26 + 4);

        *(v15 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_lastTrackingSummaryDebug) = v23;

        v27 = *(v15 + v16);

        os_unfair_lock_unlock(v27 + 4);

        type metadata accessor for TrackingStand();
        static TrackingStand._trackingSummaryInternalState(from:)();
        v28 = dispatch thunk of TrackingSummaryInternal.encode()();
        if (v29 >> 60 != 15)
        {
          v30 = v28;
          v31 = v29;
          isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1000B7698(v21, isa, sub_1000BAAE0, &unk_100276158, &selRef_trackingSummaryDataWithInfo_data_);

          sub_1000A452C(v30, v31);
        }

        sub_1000B7698(v21, a1, sub_1000BABC4, &unk_100276180, &selRef_trackingSummaryDataDebugWithInfo_data_);
        (*(a3 + 16))(a3, 1, 0);
      }

      else
      {
      }
    }

    v39 = *(a3 + 16);

    return v39(a3, 0, 0);
  }

  else
  {
    (*(v11 + 16))(v13, a2 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v10);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Failed fetching current NSXPCConnection, cannot construct client", v35, 2u);
    }

    (*(v11 + 8))(v13, v10);
    *v9 = 0xD000000000000017;
    v9[1] = 0x800000010022FA50;
    (*(v7 + 104))(v9, enum case for Errors.XPCNil(_:), v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v7 + 16))(v36, v9, v6);
    v37 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v37);

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1000B81D4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v112 = a4;
  v102 = a2;
  v106 = a1;
  v109 = type metadata accessor for Logger();
  v107 = *(v109 - 8);
  v5 = __chkstk_darwin(v109);
  v100 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v104 = &v97 - v8;
  __chkstk_darwin(v7);
  v101 = (&v97 - v9);
  v10 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v11 = __chkstk_darwin(v10 - 8);
  v103 = (&v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v15 = (&v97 - v14);
  __chkstk_darwin(v13);
  v17 = &v97 - v16;
  v18 = type metadata accessor for Errors();
  v113 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v99 = (&v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v22 = &v97 - v21;
  v23 = type metadata accessor for DKAPIUsageType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v27);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a3;
  sub_1000B5858(v29);
  v30 = *(v29 + 2);
  if (v30)
  {
    v108 = *(v29 + 1);
    v111 = v30;
  }

  else
  {
    v111 = 0xE700000000000000;
    v108 = 0x6E776F6E6B6E75;
  }

  (*(v24 + 104))(v26, enum case for DKAPIUsageType.selectSubject(_:), v23);

  v110 = DKAPIUsageType.rawValue.getter();
  (*(v24 + 8))(v26, v23);
  sub_1000A090C(&v29[*(v27 + 24)], v17);
  v31 = v113;
  v32 = v18;
  if ((*(v113 + 48))(v17, 1, v18) == 1)
  {
    sub_100095C84(v17, &unk_1002A6F30, &unk_10023C4D0);
    if (v106)
    {
      v33 = qword_1002A6780;
      v34 = v106;
      if (v33 != -1)
      {
        swift_once();
      }

      v35 = qword_1002B1CF0;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      v39 = v34;
      v40 = sub_100194808(v36, v38);
      v42 = v41;

      if (v40)
      {
        v101 = v40;
        v43 = v42;
        v108 = v29;

        (*(v112 + 16))(v112, 1, 0);
        (*(v107 + 16))(v104, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v109);
        v44 = v102;
        v45 = v102;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          *(v48 + 4) = v45;
          *v49 = v44;
          v50 = v45;
          _os_log_impl(&_mh_execute_header, v46, v47, "completing original selectSubject with err %@", v48, 0xCu);
          sub_100095C84(v49, &unk_1002A6F60, &unk_10023C4E0);
          v31 = v113;
        }

        (*(v107 + 8))(v104, v109);
        v98 = v43;
        v51 = v101;
        (v101)(v44 == 0, v44);
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v53;
        v55 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v56 = *(v35 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v56 + 4);

        swift_beginAccess();
        v57 = sub_1001E4D18(v52, v54);
        v59 = v58;
        swift_endAccess();
        sub_1000BAA84(v57, v59);
        v60 = *(v35 + v55);

        os_unfair_lock_unlock(v60 + 4);

        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;

        v64 = v103;
        (*(v31 + 56))(v103, 1, 1, v32);
        sub_10018C604(v61, v63, v110, v64);
        sub_1000BAA84(v51, v98);

        sub_100095C84(v64, &unk_1002A6F30, &unk_10023C4D0);
        return sub_1000BAA28(v108);
      }

      else
      {

        v78 = v107;
        v79 = v100;
        v80 = v39;
        v81 = v109;
        (*(v107 + 16))(v100, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v109);
        v82 = v80;
        v83 = v111;

        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v88 = v82;
          v89 = swift_slowAlloc();
          v114[0] = v89;
          *v86 = 136315394;
          v90 = sub_1000952D4(v108, v83, v114);
          v91 = v78;
          v92 = v90;

          *(v86 + 4) = v92;
          *(v86 + 12) = 2112;
          *(v86 + 14) = v88;
          *v87 = v106;
          v93 = v88;
          _os_log_impl(&_mh_execute_header, v84, v85, "Client %s responded but no completion exists for appID %@", v86, 0x16u);
          sub_100095C84(v87, &unk_1002A6F60, &unk_10023C4E0);
          v31 = v113;

          sub_100095808(v89);
          v82 = v88;

          (*(v91 + 8))(v100, v109);
        }

        else
        {

          (*(v78 + 8))(v79, v81);
        }

        v94 = v99;
        *v99 = 0x6C706D6F63206F6ELL;
        v94[1] = 0xED00006E6F697465;
        (*(v31 + 104))(v94, enum case for Errors.NotFound(_:), v32);
        sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
        swift_allocError();
        (*(v31 + 16))(v95, v94, v32);
        v96 = _convertErrorToNSError(_:)();
        (*(v112 + 16))(v112, 0, v96);

        (*(v31 + 8))(v94, v32);
        sub_1000BAA28(v29);
      }
    }

    v68 = v107;
    v69 = v101;
    v70 = v109;
    (*(v107 + 16))(v101, v105 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v109);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "No appID, can't lookup completion", v73, 2u);
    }

    (*(v68 + 8))(v69, v70);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v66 = swift_allocError();
    strcpy(v74, "missing appID");
    *(v74 + 7) = -4864;
    (*(v31 + 104))(v74, enum case for Errors.InvalidParameter(_:), v32);
    swift_willThrow();
  }

  else
  {
    (*(v31 + 32))(v22, v17, v18);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v66 = swift_allocError();
    (*(v31 + 16))(v67, v22, v18);
    swift_willThrow();
    (*(v31 + 8))(v22, v18);
  }

  v75 = _convertErrorToNSError(_:)();
  (*(v112 + 16))(v112, 0, v75);

  v76 = v111;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v114[0] = v66;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v77 = swift_dynamicCast();
  (*(v31 + 56))(v15, v77 ^ 1u, 1, v32);
  sub_10018C604(v108, v76, v110, v15);

  sub_1000BAA28(v29);
  return sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_1000B8ED4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v98 = a2;
  v103 = a1;
  v102 = type metadata accessor for Logger();
  v104 = *(v102 - 8);
  v5 = __chkstk_darwin(v102);
  v96 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v99 = &v95 - v8;
  __chkstk_darwin(v7);
  v97 = &v95 - v9;
  v10 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v11 = __chkstk_darwin(v10 - 8);
  v100 = (&v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v11);
  v105 = (&v95 - v14);
  __chkstk_darwin(v13);
  v16 = &v95 - v15;
  v17 = type metadata accessor for Errors();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DKAPIUsageType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DKXPCClientApplication(0);
  __chkstk_darwin(v25);
  v27 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a3;
  sub_1000B5858(v27);
  v28 = *(v27 + 2);
  if (v28)
  {
    v106 = *(v27 + 1);
    v109 = v28;
  }

  else
  {
    v109 = 0xE700000000000000;
    v106 = 0x6E776F6E6B6E75;
  }

  (*(v22 + 104))(v24, enum case for DKAPIUsageType.setRegionOfInterest(_:), v21);

  v108 = DKAPIUsageType.rawValue.getter();
  (*(v22 + 8))(v24, v21);
  sub_1000A090C(&v27[*(v25 + 24)], v16);
  v29 = v18;
  v30 = *(v18 + 48);
  v31 = v17;
  p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
  if (v30(v16, 1, v17) == 1)
  {
    sub_100095C84(v16, &unk_1002A6F30, &unk_10023C4D0);
    v33 = v103;
    if (v103)
    {
      v97 = v27;
      v34 = qword_1002A6780;
      v35 = v103;
      v36 = v102;
      v37 = v104;
      if (v34 != -1)
      {
        swift_once();
      }

      v38 = qword_1002B1CF0;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;
      v42 = v35;
      v43 = sub_100194938(v39, v41);
      v95 = v44;

      if (v43)
      {
        v105 = v43;
        v106 = v42;

        (*(v107 + 16))(v107, 1, 0);
        v45 = v99;
        (*(v37 + 16))(v99, v101 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v36);
        v46 = v98;
        v47 = v98;
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          *(v50 + 4) = v47;
          *v51 = v46;
          v52 = v47;
          _os_log_impl(&_mh_execute_header, v48, v49, "completing original setRectOfInterest with err %@", v50, 0xCu);
          sub_100095C84(v51, &unk_1002A6F60, &unk_10023C4E0);
          v36 = v102;
        }

        (*(v104 + 8))(v45, v36);
        v53 = v95;
        v54 = v105;
        (v105)(1, 0);
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
        v58 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v59 = *(v38 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v59 + 4);

        swift_beginAccess();
        v60 = sub_1001E4D18(v55, v57);
        v62 = v61;
        swift_endAccess();
        sub_1000BAA84(v60, v62);
        v63 = *(v38 + v58);

        os_unfair_lock_unlock(v63 + 4);

        v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v66 = v65;
        v67 = v106;

        v68 = v100;
        (*(v29 + 56))(v100, 1, 1, v31);
        sub_10018C604(v64, v66, v108, v68);
        sub_1000BAA84(v54, v53);

        sub_100095C84(v68, &unk_1002A6F30, &unk_10023C4D0);
        return sub_1000BAA28(v97);
      }

      v79 = v96;
      (*(v37 + 16))(v96, v101 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v36);
      v80 = v42;
      v81 = v109;

      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v109 = v81;
        v85 = v84;
        v86 = swift_slowAlloc();
        v87 = v37;
        v88 = swift_slowAlloc();
        v110[0] = v88;
        *v85 = 136315394;
        *(v85 + 4) = sub_1000952D4(v106, v109, v110);
        *(v85 + 12) = 2112;
        *(v85 + 14) = v80;
        *v86 = v33;
        v89 = v80;
        _os_log_impl(&_mh_execute_header, v82, v83, "Client %s responded but no completion exists for appID %@", v85, 0x16u);
        sub_100095C84(v86, &unk_1002A6F60, &unk_10023C4E0);

        sub_100095808(v88);

        (*(v87 + 8))(v96, v102);
      }

      else
      {

        (*(v37 + 8))(v79, v36);
      }

      p_cb = &OBJC_PROTOCOL___DKLogging.cb;
      v90 = v80;
      v27 = v97;
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v70 = swift_allocError();
      strcpy(v91, "no completion");
      *(v91 + 7) = -4864;
      (*(v29 + 104))(v91, enum case for Errors.NotFound(_:), v31);
      swift_willThrow();
    }

    else
    {
      v72 = v104;
      v73 = v102;
      v74 = v97;
      (*(v104 + 16))(v97, v101 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v102);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "No appID, can't lookup completion", v77, 2u);
      }

      (*(v72 + 8))(v74, v73);
      sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v70 = swift_allocError();
      strcpy(v78, "missing appID");
      *(v78 + 7) = -4864;
      (*(v29 + 104))(v78, enum case for Errors.InvalidParameter(_:), v31);
      swift_willThrow();
      p_cb = (&OBJC_PROTOCOL___DKLogging + 64);
    }
  }

  else
  {
    (*(v29 + 32))(v20, v16, v17);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v70 = swift_allocError();
    (*(v29 + 16))(v71, v20, v17);
    swift_willThrow();
    (*(v29 + 8))(v20, v17);
  }

  v92 = _convertErrorToNSError(_:)();
  (*(v107 + 16))(v107, 0, v92);

  if (*(p_cb + 240) != -1)
  {
    swift_once();
  }

  v110[0] = v70;
  swift_errorRetain();
  sub_100095274(&qword_1002A7268, &unk_10023C680);
  v93 = v105;
  v94 = swift_dynamicCast();
  (*(v29 + 56))(v93, v94 ^ 1u, 1, v31);
  sub_10018C604(v106, v109, v108, v93);

  sub_1000BAA28(v27);
  return sub_100095C84(v93, &unk_1002A6F30, &unk_10023C4D0);
}

void sub_1000B9B38(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v4 + 4);

  swift_beginAccess();
  v5 = *(v2 + v3);

  os_unfair_lock_unlock(v5 + 4);

  type metadata accessor for DockCoreAccessory();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a1 + 16))(a1, isa, 0);
}

void sub_1000B9C48(uint64_t a1, void *a2)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v4 = qword_1002B1CF0;
  v5 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v6 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v6 + 4);

  v7 = *(v4 + *a2);
  v8 = *(v4 + v5);
  v9 = v7;

  os_unfair_lock_unlock(v8 + 4);

  (*(a1 + 16))(a1, v9, 0);
}

uint64_t sub_1000B9D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1 + OBJC_IVAR____TtC14dockaccessoryd24dockCameraCaptureHandler_logger, v8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "getAccessoryDiagnostics unsupported on entitled interface", v14, 2u);
  }

  (*(v9 + 8))(v11, v8);
  *v7 = 0xD000000000000021;
  v7[1] = 0x800000010022FAA0;
  (*(v5 + 104))(v7, enum case for Errors.OperationNotSupported(_:), v4);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
  swift_allocError();
  (*(v5 + 16))(v15, v7, v4);
  v16 = _convertErrorToNSError(_:)();
  (*(a2 + 16))(a2, 0, v16);

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000BA018(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v4 + 4);

  v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingButtonState);
  v6 = *(v2 + v3);

  os_unfair_lock_unlock(v6 + 4);

  v7 = *(a1 + 16);

  return v7(a1, v5, 0);
}

uint64_t sub_1000BA0EC(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v53 - v8;
  v10 = [a1 processIdentifier];
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 valueForEntitlement:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  aBlock = v69;
  v66 = v70;
  if (*(&v70 + 1))
  {
    v13 = swift_dynamicCast();
    if (v13)
    {
      v15 = v63;
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v16 = v64;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v15 = 0;
    v16 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v58 = sub_10019B91C(a1, v14);
  v18 = v17;
  if (qword_1002A66B8 != -1)
  {
    swift_once();
  }

  v19 = sub_100093DE8(v3, qword_1002A71F0);
  v20 = *(v4 + 16);
  v60 = v19;
  v61 = v4 + 16;
  v59 = v20;
  (v20)(v9);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v62 = v9;
  v23 = v22;

  v24 = os_log_type_enabled(v21, v23);
  v57 = v15;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v56 = v4;
    v26 = v25;
    v53 = swift_slowAlloc();
    *&v69 = v53;
    *v26 = 67109634;
    *(v26 + 4) = v10;
    *(v26 + 8) = 2080;
    *&aBlock = v15;
    *(&aBlock + 1) = v16;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v55 = v7;
    v27 = String.init<A>(describing:)();
    v54 = v16;
    v29 = v3;
    v30 = v10;
    v31 = sub_1000952D4(v27, v28, &v69);

    *(v26 + 10) = v31;
    *(v26 + 18) = 2080;
    *&aBlock = v58;
    *(&aBlock + 1) = v18;
    v7 = v55;
    v32 = String.init<A>(describing:)();
    v34 = sub_1000952D4(v32, v33, &v69);
    v16 = v54;

    *(v26 + 20) = v34;
    v10 = v30;
    v3 = v29;
    _os_log_impl(&_mh_execute_header, v21, v23, "new connection from pid %d, appID entitlement %s, appID %s", v26, 0x1Cu);
    swift_arrayDestroy();

    v35 = v56;

    v36 = *(v35 + 8);
    v36(v62, v29);
  }

  else
  {

    v36 = *(v4 + 8);
    v36(v62, v3);
  }

  v37 = String._bridgeToObjectiveC()();
  v38 = [a1 valueForEntitlement:v37];

  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  aBlock = v69;
  v66 = v70;
  if (*(&v70 + 1))
  {
    if (swift_dynamicCast() & 1) != 0 && (v63)
    {
      v39 = objc_opt_self();
      v62 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore31DockDaemonCameraCaptureProtocol_];
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v10;
      v42 = v57;
      *(v41 + 24) = v57;
      *(v41 + 32) = v16;
      *(v41 + 40) = v40;
      v67 = sub_1000BA9B8;
      v68 = v41;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_100147FC8;
      *(&v66 + 1) = &unk_1002760E0;
      v43 = _Block_copy(&aBlock);

      [a1 setInvalidationHandler:v43];
      _Block_release(v43);
      v44 = swift_allocObject();
      *(v44 + 16) = v10;
      *(v44 + 24) = v42;
      *(v44 + 32) = v16;
      *(v44 + 40) = v40;
      v67 = sub_1000BA9FC;
      v68 = v44;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v66 = sub_100147FC8;
      *(&v66 + 1) = &unk_100276130;
      v45 = _Block_copy(&aBlock);

      [a1 setInterruptionHandler:v45];
      _Block_release(v45);
      v46 = v62;
      [a1 setExportedInterface:v62];
      v47 = [v39 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore31DockClientCameraCaptureProtocol_];
      [a1 setRemoteObjectInterface:v47];
      v48 = [objc_allocWithZone(type metadata accessor for dockCameraCaptureHandler(0)) init];
      [a1 setExportedObject:v48];
      [a1 resume];

      return 1;
    }
  }

  else
  {

    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
  }

  v59(v7, v60, v3);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 67109120;
    *(v52 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v50, v51, "process %d is not entitled for cameracapture. Add entitlements and try again", v52, 8u);
  }

  v36(v7, v3);
  [a1 invalidate];
  return 0;
}

uint64_t sub_1000BA97C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}