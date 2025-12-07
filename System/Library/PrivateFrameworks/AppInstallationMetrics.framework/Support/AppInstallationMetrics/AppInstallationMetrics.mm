uint64_t sub_1000018D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a2;
  v21 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container;
  v10 = *(v6 + 16);
  v10(v3 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container, a1, v5);
  sub_100002A8C();
  v11 = static AMSCachedBag.makeBag(bagService:)();
  v12 = objc_allocWithZone(AMSMetrics);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithContainerID:v13 bag:v11];

  swift_unknownObjectRelease();
  type metadata accessor for ASEMetrics();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v14;
  [v16 setFlushTimerEnabled:0];
  [v16 setIncludeMMeClientInfoAndDeviceHeaders:1];
  [v16 setMetricsSigningFlavour:1];
  v10(v8, v3 + v9, v5);
  type metadata accessor for InstallationEventManager(0);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();

  v18 = type metadata accessor for BagService();
  (*(*(v18 - 8) + 8))(v20, v18);
  (*(v6 + 8))(v21, v5);
  (*(v6 + 32))(v17 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container, v8, v5);
  *(v17 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_aseMetrics) = v15;
  *(v3 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager) = v17;
  return v3;
}

uint64_t sub_100001B60()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100001C0C(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v39 - v6;
  v8 = sub_100002AD8(&qword_1000393F0, &unk_10002A3D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v15 = container_system_path_for_identifier();
  if (v47 <= 1 && v15)
  {
    v16 = v15;
    (*(v12 + 56))(v10, 1, 1, v11);
    v44 = v16;
    URL.init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)();
    sub_100002B20(v10);
    if ((sub_10000F7B4() & 1) == 0)
    {
      static Logger.general.getter();
      v17 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v43))
      {
        v18 = swift_slowAlloc();
        v42 = v18;
        v41 = swift_slowAlloc();
        v48[0] = v41;
        *v18 = 136315138;
        swift_beginAccess();
        sub_1000026E8(&qword_100039400, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v40 = v17;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = sub_10001DC98(v19, v20, v48);

        v22 = v42;
        *(v42 + 1) = v21;
        v17 = v40;
        _os_log_impl(&_mh_execute_header, v40, v43, "Updating %s to exclude from backup", v22, 0xCu);
        sub_100002B88(v41);
      }

      (*(v2 + 8))(v7, v1);
      swift_beginAccess();
      sub_10000FBC4(1);
      swift_endAccess();
    }

    v23 = [objc_opt_self() defaultManager];
    swift_beginAccess();
    URL._bridgeToObjectiveC()(v24);
    v26 = v25;
    v46 = 0;
    v27 = [v23 createDirectoryAtURL:v25 withIntermediateDirectories:1 attributes:0 error:&v46];

    v28 = v46;
    if (v27)
    {
      (*(v12 + 16))(v45, v14, v11);
      v29 = *(v12 + 8);
      v30 = v28;
      v29(v14, v11);
    }

    else
    {
      v38 = v46;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      (*(v12 + 8))(v14, v11);
    }

    v37 = v44;
LABEL_15:
    free(v37);
    return;
  }

  v31 = v15;
  static Logger.general.getter();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    swift_beginAccess();
    *(v34 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v32, v33, "Unable to obtain container path: error %llu", v34, 0xCu);
  }

  (*(v2 + 8))(v5, v1);
  swift_beginAccess();
  v35 = v47;
  type metadata accessor for container_error_t(0);
  sub_1000026E8(&qword_1000393F8, type metadata accessor for container_error_t, "٬");
  swift_allocError();
  *v36 = v35;
  swift_willThrow();
  v37 = v31;
  if (v31)
  {
    goto LABEL_15;
  }
}

uint64_t sub_10000220C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026E8(&qword_1000393D8, type metadata accessor for container_error_t, &unk_10002A228);
  v5 = sub_100002A38();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t type metadata accessor for Dependencies(uint64_t a1)
{
  result = qword_1000392A8;
  if (!qword_1000392A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000022F0(uint64_t a1)
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

__n128 sub_10000238C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000239C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000023BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void *sub_100002420@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002454(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000024D0(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100002554@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000259C(uint64_t a1)
{
  v2 = sub_1000026E8(&qword_1000393C8, type metadata accessor for AMSBagKey, &unk_10002A33C);
  v3 = sub_1000026E8(&qword_1000393D0, type metadata accessor for AMSBagKey, &unk_10002A2DC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000026E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100002734@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000277C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000027A8(uint64_t a1)
{
  v2 = sub_1000026E8(&qword_100039440, type metadata accessor for URLResourceKey, &unk_10002A5A4);
  v3 = sub_1000026E8(&qword_100039448, type metadata accessor for URLResourceKey, &unk_10002A4F8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002864()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_1000028A0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000028F4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100002968(void *a1, uint64_t *a2)
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

unint64_t sub_100002A38()
{
  result = qword_1000393E0;
  if (!qword_1000393E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000393E0);
  }

  return result;
}

unint64_t sub_100002A8C()
{
  result = qword_1000393E8;
  if (!qword_1000393E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000393E8);
  }

  return result;
}

uint64_t sub_100002AD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002B20(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_1000393F0, &unk_10002A3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002B88(void *a1)
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

__n128 sub_100002C10(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002C1C(uint64_t a1, int a2)
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

uint64_t sub_100002C3C(uint64_t result, int a2, int a3)
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

void sub_100002C7C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100002DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_100002E8C, v3, 0);
}

uint64_t sub_100002E8C()
{
  v1 = &_swiftEmptyArrayStorage;
  *(v0 + 16) = &_swiftEmptyArrayStorage;
  v2 = (v0 + 16);
  if (sub_100007EFC(*(v0 + 24), *(v0 + 32), *(v0 + 40)))
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v1 = *v2;
  }

  *(v0 + 80) = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_100003138;
    v4 = *(v0 + 40);

    return sub_1000032C4(v1, v4);
  }

  v6 = *(v0 + 40);

  static Logger.events.getter();
  v7 = v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Failed to generate an AMS metrics event", v11, 0xCu);
    sub_10000D6F8(v12, &qword_100039DA0, &qword_10002A740);
  }

  v15 = *(v0 + 64);
  v14 = *(v0 + 72);
  v16 = *(v0 + 56);

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100003138()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100003264, v1, 0);
}

uint64_t sub_100003264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000032C4(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_100002AD8(&qword_100039608, &qword_10002A7A8);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return _swift_task_switch(sub_100003414, 0, 0);
}

uint64_t sub_100003414()
{
  v55 = v0;
  v1 = *(v0 + 152);
  static Logger.metrics.getter();
  swift_bridgeObjectRetain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2050;
    if (v5 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = *(v0 + 152);

    *(v7 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Preparing to enqueue %{public}ld events", v7, 0x16u);
    sub_10000D6F8(v8, &qword_100039DA0, &qword_10002A740);
  }

  else
  {
    v5 = *(v0 + 144);
    swift_bridgeObjectRelease_n();
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 192);
  v13 = *(v0 + 200);
  v14 = *(v0 + 144);
  v15 = *(v13 + 8);
  *(v0 + 240) = v15;
  *(v0 + 248) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53 = v15;
  v15(v11, v12);
  v54 = &_swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_33:
    v16 = v5 & 0xFFFFFFFFFFFFFF8;
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = v5 & 0xFFFFFFFFFFFFFF8;
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  v19 = v5 & 0xC000000000000001;
  v20 = *(v0 + 144) + 32;
  v21 = &_swiftEmptyArrayStorage;
  while (v17 != v18)
  {
    if (v19)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v18 >= *(v16 + 16))
      {
        goto LABEL_32;
      }

      v5 = *(v20 + 8 * v18);

      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    v23 = sub_1000097BC(v5, *(v0 + 152));

    ++v18;
    if (v23)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v5 = &v54;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v21 = v54;
      v18 = v22;
    }
  }

  if (v21 >> 62)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
    v24 = *(v0 + 152);
    if (v41)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v24 = *(v0 + 152);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      static Logger.metrics.getter();
      swift_bridgeObjectRetain_n();
      v25 = v24;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 152);
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412546;
        *(v29 + 4) = v28;
        *v30 = v28;
        *(v29 + 12) = 2050;
        if (v21 >> 62)
        {
          v31 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = *(v0 + 152);

        *(v29 + 14) = v31;

        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Enqueueing %{public}ld events", v29, 0x16u);
        sub_10000D6F8(v30, &qword_100039DA0, &qword_10002A740);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      v33 = *(v0 + 184);
      v34 = *(v0 + 168);
      v35 = *(v0 + 176);
      v36 = *(v0 + 160);
      v53(*(v0 + 216), *(v0 + 192));
      v37 = *(v36 + 16);
      sub_10000D5F8(0, &qword_100039610, AMSMetricsEvent_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v39 = [v37 promiseForEnqueueingEvents:isa];
      *(v0 + 256) = v39;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 280;
      *(v0 + 24) = sub_100003B90;
      swift_continuation_init();
      *(v0 + 136) = v34;
      v40 = sub_10000D510((v0 + 112));
      sub_100002AD8(&qword_100039D90, &qword_10002A770);
      CheckedContinuation.init(continuation:function:)();
      (*(v35 + 32))(v40, v33, v34);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1000069C4;
      *(v0 + 104) = &unk_100035908;
      [v39 resultWithTimeout:v0 + 80 completion:120.0];
      (*(v35 + 8))(v40, v34);

      return _swift_continuation_await(v0 + 16);
    }
  }

  static Logger.metrics.getter();
  v42 = v24;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v0 + 152);
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v45;
    *v47 = v45;
    v48 = v45;
    _os_log_impl(&_mh_execute_header, v43, v44, "[%@] No AMSMetricsEvents to enqueue", v46, 0xCu);
    sub_10000D6F8(v47, &qword_100039DA0, &qword_10002A740);
  }

  v49 = *(v0 + 224);
  v50 = *(v0 + 192);

  v53(v49, v50);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_100003B90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_100003EC8;
  }

  else
  {
    v2 = sub_100003CA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_100003D34;
  v2 = *(v0 + 152);

  return sub_10001ED00(v2);
}

uint64_t sub_100003D34()
{

  return _swift_task_switch(sub_100003E30, 0, 0);
}

uint64_t sub_100003E30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003EC8()
{
  v1 = *(v0 + 152);
  swift_willThrow();
  static Logger.metrics.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 256);
  if (v5)
  {
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2114;
    v10 = v7;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    v9[1] = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to enqueue events due to error: %{public}@", v8, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 240))(*(v0 + 208), *(v0 + 192));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000040BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for InstallationEvent();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for AppInstallationEvent();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v9 = type metadata accessor for AppInstallationEligibility();
  v4[38] = v9;
  v4[39] = *(v9 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[44] = v10;
  v4[45] = *(v10 - 8);
  v4[46] = swift_task_alloc();
  v11 = type metadata accessor for AppInstallType();
  v4[47] = v11;
  v4[48] = *(v11 - 8);
  v4[49] = swift_task_alloc();

  return _swift_task_switch(sub_1000044A0, v3, 0);
}

uint64_t sub_1000044A0()
{
  v59 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  AppInstallationEvent.installType.getter();
  v4 = sub_10000F52C();
  v5 = *(v2 + 8);
  v0[50] = v5;
  v0[51] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  if (v4)
  {
    v6 = v0[9];
    v8 = v6[3];
    v7 = v6[4];
    sub_10000D5B4(v6, v8);
    v9 = sub_100011AC8(v8, v7);
    v10 = swift_task_alloc();
    v0[52] = v10;
    *v10 = v0;
    v10[1] = sub_100004A04;
    v11 = v0[10];
    v12 = v0[8];

    return sub_10000AEF4((v0 + 2), v12, v9 & 1, v11);
  }

  else
  {
    v57 = v5;
    v15 = v0[25];
    v14 = v0[26];
    v16 = v0[23];
    v17 = v0[24];
    v18 = v0[10];
    v19 = v0[8];
    static Logger.events.getter();
    v20 = *(v17 + 16);
    v20(v14, v19, v16);
    v20(v15, v19, v16);
    v21 = v18;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[49];
      v52 = v0[47];
      v56 = v0[32];
      v54 = v0[31];
      v55 = v0[30];
      v53 = v23;
      v25 = v0[26];
      v49 = v0[25];
      log = v22;
      v26 = v0[23];
      v27 = v0[24];
      v28 = v0[10];
      v29 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v29 = 138412802;
      *(v29 + 4) = v28;
      *v50 = v28;
      *(v29 + 12) = 2080;
      v30 = v28;
      v31 = AppInstallationEvent.bundleID.getter();
      v33 = v32;
      v34 = *(v27 + 8);
      v34(v25, v26);
      v35 = sub_10001DC98(v31, v33, &v58);

      *(v29 + 14) = v35;
      *(v29 + 22) = 2080;
      AppInstallationEvent.installType.getter();
      v36 = sub_10000F070(0);
      v38 = v37;
      v57(v24, v52);
      v34(v49, v26);
      v39 = sub_10001DC98(v36, v38, &v58);

      *(v29 + 24) = v39;
      _os_log_impl(&_mh_execute_header, log, v53, "[%@] Skipping installation event for bundleID: %s with non valid installType: %s", v29, 0x20u);
      sub_10000D6F8(v50, &qword_100039DA0, &qword_10002A740);

      swift_arrayDestroy();

      (*(v54 + 8))(v56, v55);
    }

    else
    {
      v41 = v0[31];
      v40 = v0[32];
      v42 = v0[30];
      v44 = v0[25];
      v43 = v0[26];
      v45 = v0[23];
      v46 = v0[24];

      v47 = *(v46 + 8);
      v47(v44, v45);
      v47(v43, v45);
      (*(v41 + 8))(v40, v42);
    }

    sub_100002B88(v0[9]);

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_100004A04()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  *(v1 + 424) = v1[1];
  *(v1 + 440) = v3;
  *(v1 + 456) = v1[3];

  return _swift_task_switch(sub_100004B34, v2, 0);
}

uint64_t sub_100004B34()
{
  v170 = v0;
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v5 = v0[38];
  v6 = v0[39];
  v7 = v0[9];
  v8 = v7[3];
  v9 = v7[4];
  sub_10000D5B4(v7, v8);
  v157 = sub_100011D28(v8, v9);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v2 + 8))(v1, v3);
  AppInstallationEvent.eligibility.getter();
  v10 = AppInstallationEligibility.billingStorefront.getter();
  v12 = v11;
  v13 = *(v6 + 8);
  v13(v4, v5);
  v163 = v13;
  if (v12)
  {
    v14 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v14 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v14 && (v10 != 48 || v12 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v162 = v10;
      v115 = v0[29];
      v116 = v0[23];
      v117 = v0[24];
      v118 = v0[10];
      v119 = v0[8];
      static Logger.events.getter();
      (*(v117 + 16))(v115, v119, v116);
      v120 = v118;

      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();

      v123 = os_log_type_enabled(v121, v122);
      v124 = v0[37];
      v125 = v0[30];
      v126 = v0[31];
      v127 = v0[29];
      v129 = v0[23];
      v128 = v0[24];
      if (v123)
      {
        v156 = v0[37];
        v130 = v0[10];
        v147 = v122;
        v131 = swift_slowAlloc();
        v168 = v12;
        v132 = swift_slowAlloc();
        v169[0] = swift_slowAlloc();
        *v131 = 138412802;
        *(v131 + 4) = v130;
        *v132 = v130;
        *(v131 + 12) = 2080;
        v133 = v130;
        v134 = AppInstallationEvent.bundleID.getter();
        v152 = v125;
        v136 = v135;
        (*(v128 + 8))(v127, v129);
        v137 = sub_10001DC98(v134, v136, v169);

        *(v131 + 14) = v137;
        *(v131 + 22) = 2080;
        *(v131 + 24) = sub_10001DC98(v162, v168, v169);
        _os_log_impl(&_mh_execute_header, v121, v147, "[%@] Event with bundleID: %s has a polus storefront: %s", v131, 0x20u);
        sub_10000D6F8(v132, &qword_100039DA0, &qword_10002A740);

        swift_arrayDestroy();

        (*(v126 + 8))(v156, v152);
      }

      else
      {

        (*(v128 + 8))(v127, v129);
        (*(v126 + 8))(v124, v125);
      }

      goto LABEL_23;
    }

    v15 = v0[42];
    v16 = v0[38];
    v17 = v0[28];
    v18 = v0[23];
    v19 = v0[24];
    v20 = v0[10];
    v21 = v0[8];

    AppInstallationEvent.eligibility.getter();
    v160 = AppInstallationEligibility.storefront.getter();
    v23 = v22;
    v163(v15, v16);

    static Logger.events.getter();
    (*(v19 + 16))(v17, v21, v18);
    v24 = v23;
    v25 = v20;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = v0[36];
    v30 = v0[30];
    v31 = v0[31];
    v32 = v0[28];
    v34 = v0[23];
    v33 = v0[24];
    if (v28)
    {
      v153 = v0[36];
      v35 = v0[10];
      v146 = v27;
      v36 = swift_slowAlloc();
      v165 = v24;
      v37 = swift_slowAlloc();
      v169[0] = swift_slowAlloc();
      *v36 = 138412802;
      *(v36 + 4) = v35;
      *v37 = v35;
      *(v36 + 12) = 2080;
      v38 = v35;
      v39 = AppInstallationEvent.bundleID.getter();
      v149 = v30;
      v41 = v40;
      (*(v33 + 8))(v32, v34);
      v42 = sub_10001DC98(v39, v41, v169);

      *(v36 + 14) = v42;
      *(v36 + 22) = 2080;
      if (v165)
      {
        v43 = v160;
      }

      else
      {
        v43 = 16718;
      }

      if (v165)
      {
        v44 = v165;
      }

      else
      {
        v44 = 0xE200000000000000;
      }

      v45 = sub_10001DC98(v43, v44, v169);

      *(v36 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v26, v146, "[%@] Event with bundleID: %s is missing a polus storefront. Falling back to header sourced storefront: %s", v36, 0x20u);
      sub_10000D6F8(v37, &qword_100039DA0, &qword_10002A740);
      v24 = v165;

      swift_arrayDestroy();

      (*(v31 + 8))(v153, v149);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
      (*(v31 + 8))(v29, v30);
    }

    v50 = v0[22];
    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    sub_10001CE60(0, 0, v50, &unk_10002A750, v52);

    if (!v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v46 = v0[41];
    v47 = v0[38];
    AppInstallationEvent.eligibility.getter();
    AppInstallationEligibility.storefront.getter();
    v49 = v48;
    v13(v46, v47);
    if (!v49)
    {
LABEL_20:
      v53 = v0[27];
      v54 = v0[23];
      v55 = v0[24];
      v56 = v0[10];
      v57 = v0[8];
      static Logger.events.getter();
      (*(v55 + 16))(v53, v57, v54);
      v58 = v56;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      v61 = os_log_type_enabled(v59, v60);
      v62 = v0[35];
      v63 = v0[30];
      v64 = v0[31];
      v65 = v0[27];
      v67 = v0[23];
      v66 = v0[24];
      if (v61)
      {
        v166 = v0[35];
        v68 = v0[10];
        v148 = v60;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        v169[0] = v150;
        *v69 = 138412546;
        *(v69 + 4) = v68;
        *v70 = v68;
        *(v69 + 12) = 2080;
        v71 = v68;
        v72 = AppInstallationEvent.bundleID.getter();
        v154 = v63;
        v74 = v73;
        (*(v66 + 8))(v65, v67);
        v75 = sub_10001DC98(v72, v74, v169);

        *(v69 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v59, v148, "[%@] Failed to find storefront for bundleID: %s", v69, 0x16u);
        sub_10000D6F8(v70, &qword_100039DA0, &qword_10002A740);

        sub_100002B88(v150);

        (*(v64 + 8))(v166, v154);
      }

      else
      {

        (*(v66 + 8))(v65, v67);
        (*(v64 + 8))(v62, v63);
      }
    }
  }

LABEL_23:
  v139 = v0[50];
  v76 = v0[49];
  v138 = v0[47];
  v77 = v0[42];
  v78 = v0[40];
  v79 = v0[38];
  v80 = v0[20];
  v81 = v0[18];
  v141 = v0[19];
  v140 = v0[21];
  v82 = v0[17];
  v145 = v0[15];
  v142 = v0[16];
  v143 = v0[13];
  v144 = v0[12];
  v151 = v0[14];
  v155 = v0[10];
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v83 = *(v81 + 8);
  v0[59] = v83;
  v0[60] = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v83(v80, v82);
  AppInstallationEvent.eligibility.getter();
  AppInstallationEligibility.accountID.getter();
  v163(v77, v79);
  AppInstallationEvent.bundleID.getter();
  AppInstallationEvent.eligibility.getter();
  AppInstallationEligibility.billingCountryCode.getter();
  v163(v78, v79);
  AppInstallationEvent.externalVersionID.getter();
  AppInstallationEvent.installDate.getter();
  AppInstallationEvent.installType.getter();
  sub_10000F070(v157 & 1);
  v139(v76, v138);
  AppInstallationEvent.isBeta.getter();
  AppInstallationEvent.itemID.getter();
  AppInstallationEvent.osVersion.getter();
  AppInstallationEvent.platform.getter();
  AppInstallationEvent.source.getter();
  AppInstallationEvent.token.getter();
  AppInstallationEvent.webDomain.getter();
  (*(v81 + 16))(v141, v140, v82);
  InstallationEvent.init(altDsid:dsid:billingStorefront:bundleID:clientID:countryCode:eventVersion:evid:installDate:installType:isBeta:itemID:osVersion:platform:source:storefront:token:webDomain:postTargetDate:gsToken:jwtGSToken:)();
  static Logger.events.getter();
  v84 = *(v143 + 16);
  v84(v145, v142, v144);
  v84(v151, v142, v144);
  v85 = v155;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();

  v88 = os_log_type_enabled(v86, v87);
  v89 = v0[34];
  v90 = v0[30];
  v91 = v0[31];
  v92 = v0[14];
  v93 = v0[15];
  v95 = v0[12];
  v94 = v0[13];
  if (v88)
  {
    v167 = v0[34];
    v96 = v0[10];
    v164 = v0[30];
    v97 = swift_slowAlloc();
    v161 = v91;
    v98 = swift_slowAlloc();
    v169[0] = swift_slowAlloc();
    *v97 = 138412802;
    *(v97 + 4) = v96;
    *v98 = v96;
    *(v97 + 12) = 2080;
    v99 = v96;
    v100 = InstallationEvent.bundleID.getter();
    v159 = v87;
    v102 = v101;
    v158 = v86;
    v103 = *(v94 + 8);
    v103(v93, v95);
    v104 = sub_10001DC98(v100, v102, v169);

    *(v97 + 14) = v104;
    *(v97 + 22) = 2080;
    v105 = InstallationEvent.clientID.getter();
    v107 = v106;
    v103(v92, v95);
    v108 = sub_10001DC98(v105, v107, v169);

    *(v97 + 24) = v108;
    _os_log_impl(&_mh_execute_header, v158, v159, "[%@] Enqueuing event with bundleID: %s clientEventID: %s", v97, 0x20u);
    sub_10000D6F8(v98, &qword_100039DA0, &qword_10002A740);

    swift_arrayDestroy();

    v109 = *(v161 + 8);
    v109(v167, v164);
  }

  else
  {

    v103 = *(v94 + 8);
    v103(v92, v95);
    v103(v93, v95);
    v109 = *(v91 + 8);
    v109(v89, v90);
  }

  v0[61] = v103;
  v0[62] = v109;
  v110 = swift_task_alloc();
  v0[63] = v110;
  *v110 = v0;
  v110[1] = sub_10000599C;
  v111 = v0[16];
  v112 = v0[10];
  v113 = v0[9];

  return sub_100002DC8(v111, v113, v112);
}

uint64_t sub_10000599C()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100005AAC, v1, 0);
}

uint64_t sub_100005AAC(uint64_t a1)
{
  v2 = *(v1 + 80);
  static Logger.events.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Enqueue complete", v7, 0xCu);
    sub_10000D6F8(v8, &qword_100039DA0, &qword_10002A740);
  }

  v10 = *(v1 + 496);
  v19 = *(v1 + 488);
  v20 = *(v1 + 472);
  v11 = *(v1 + 264);
  v12 = *(v1 + 240);
  v13 = *(v1 + 168);
  v15 = *(v1 + 128);
  v14 = *(v1 + 136);
  v16 = *(v1 + 96);

  v10(v11, v12);
  v19(v15, v16);
  v20(v13, v14);
  sub_100002B88(*(v1 + 72));

  v17 = *(v1 + 8);

  return v17();
}

void sub_100005D88(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395E0, &qword_10002A780);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v6 = a2;
    sub_100002AD8(&qword_1000395E0, &qword_10002A780);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_100005E30(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395D8, &qword_10002A778);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (a2)
    {
      sub_10000D5F8(0, &qword_100039600, ACAccount_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_100002AD8(&qword_1000395D8, &qword_10002A778);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100005F04()
{
  v1[19] = v0;
  v2 = sub_100002AD8(&qword_1000395C8, &qword_10002A768);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100005FD0, 0, 0);
}

uint64_t sub_100005FD0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1000061A0;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_10000D510(v1 + 14);
  sub_10000D5F8(0, &qword_1000395D0, NSString_ptr);
  sub_100002AD8(&qword_100039D90, &qword_10002A770);
  CheckedContinuation.init(continuation:function:)();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100006794;
  v1[13] = &unk_100035890;
  [v11 resultWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_1000061A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_100006340;
  }

  else
  {
    v2 = sub_1000062B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000062B0()
{
  v1 = *(v0 + 144);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5 = *(v0 + 8);

  return v5(v2, v4);
}

uint64_t sub_100006340()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t InstallationEventManager.deinit()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t InstallationEventManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon24InstallationEventManager_container;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t static InstallationEvent.== infix(_:_:)(uint64_t a1)
{
  v1 = InstallationEvent.clientID.getter();
  v3 = v2;
  if (v1 == InstallationEvent.clientID.getter() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t InstallationEvent.hash(into:)(uint64_t a1)
{
  InstallationEvent.id.getter();
  String.hash(into:)();
}

Swift::Int InstallationEvent.hashValue.getter()
{
  Hasher.init(_seed:)();
  InstallationEvent.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000065F8(uint64_t a1)
{
  Hasher.init(_seed:)();
  InstallationEvent.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t type metadata accessor for InstallationEventManager(uint64_t a1)
{
  result = qword_1000394F0;
  if (!qword_1000394F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000066EC(uint64_t a1)
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

void sub_100006794(uint64_t a1, void *a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100002AD8(&qword_1000395C8, &qword_10002A768);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100002AD8(&qword_1000395C8, &qword_10002A768);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100006844(void *a1)
{
  v11[1] = a1;
  type metadata accessor for ASEEvent();
  sub_10000D7C4(&qword_100039640, type metadata accessor for ASEEvent, "Ѥ");
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11[0] = 0;
    v8 = [v6 JSONObjectWithData:isa options:4 error:v11];

    v9 = v11[0];
    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10000D80C(v4, v5);
      return swift_unknownObjectRelease();
    }

    else
    {
      v10 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10000D80C(v4, v5);
    }
  }

  return result;
}

void sub_1000069C4(uint64_t a1, char a2, void *a3)
{
  sub_10000D5B4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100002AD8(&qword_100039608, &qword_10002A7A8);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100002AD8(&qword_100039608, &qword_10002A7A8);
    CheckedContinuation.resume(returning:)();
  }
}

unint64_t *sub_100006A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_100026684(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100026684((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10000D7B4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Int sub_100006B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100002AD8(&qword_100039628, &qword_10002A7C0);
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
    sub_10000D758(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_10000D7B4(v33, v32);
    sub_100002AD8(&qword_100039638, &qword_10002A7D0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000D7B4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000D7B4(v31, v32);
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
    result = sub_10000D7B4(v32, (v2[7] + 32 * v10));
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

Swift::Int sub_100006E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002AD8(&qword_100039658, &unk_10002AE80);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000D7B4(v24, v34);
      }

      else
      {
        sub_10000D758(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000D7B4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000711C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100002AD8(&qword_100039628, &qword_10002A7C0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10000D7B4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_10000D69C(v23, &v36);
        sub_10000D758(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10000D7B4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

void *sub_1000073D4()
{
  v1 = v0;
  sub_100002AD8(&qword_100039658, &unk_10002AE80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000D758(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000D7B4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_100007578()
{
  v1 = v0;
  sub_100002AD8(&qword_100039628, &qword_10002A7C0);
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
        v18 = 40 * v17;
        sub_10000D69C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000D758(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000D7B4(v22, (*(v4 + 56) + v17));
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

_OWORD *sub_100007754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v28 = &type metadata for String;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v12 = sub_1000134FC(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 32 * v12);
      sub_100002B88(v19);
      return sub_10000D7B4(&v27, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v15, a5 & 1);
  v21 = sub_1000134FC(a3, a4);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v12 = v21;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_10000D860(&v27, &type metadata for String);
  __chkstk_darwin(v23);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  sub_100007CF0(v12, a3, a4, *v25, v25[1], v18);

  return sub_100002B88(&v27);
}

_OWORD *sub_100007938(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LOBYTE(v23) = a1;
  v24 = &type metadata for Bool;
  v9 = *a5;
  v11 = sub_1000134FC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100002B88(v18);
      return sub_10000D7B4(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v14, a4 & 1);
  v20 = sub_1000134FC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_10000D860(&v23, &type metadata for Bool);
  sub_100007C6C(v11, a2, a3, *v22, v17);

  return sub_100002B88(&v23);
}

_OWORD *sub_100007A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  *&v23 = a1;
  v24 = &type metadata for Int64;
  v9 = *a5;
  v11 = sub_1000134FC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      sub_100002B88(v18);
      return sub_10000D7B4(&v23, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_1000073D4();
    goto LABEL_7;
  }

  sub_100006E64(v14, a4 & 1);
  v20 = sub_1000134FC(a2, a3);
  if ((v15 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v11 = v20;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = sub_10000D860(&v23, &type metadata for Int64);
  sub_100007BE8(v11, a2, a3, *v22, v17);

  return sub_100002B88(&v23);
}

_OWORD *sub_100007BE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int64;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000D7B4(&v11, (a5[7] + 32 * a1));
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

_OWORD *sub_100007C6C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v11[0] = a4;
  v12 = &type metadata for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000D7B4(v11, (a5[7] + 32 * a1));
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

_OWORD *sub_100007CF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_10000D7B4(&v12, (a6[7] + 32 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_100007D74@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_10000D69C(*(v3 + 48) + 40 * v13, &v17);
    sub_10000D758(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_10000D7B4(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_10000D6F8(&v17, &qword_100039630, &qword_10002A7C8);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
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
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
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

uint64_t sub_100007EFC(uint64_t a1, void *a2, void *a3)
{
  v125 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v126 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Calendar.Component();
  v131 = *(v7 - 8);
  v132 = v7;
  __chkstk_darwin(v7);
  v129 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Date();
  v128 = *(v130 - 8);
  __chkstk_darwin(v130);
  v127 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_100039648, &qword_10002A7D8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10002A610;
  *(v10 + 32) = 0x6449656C646E7562;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = InstallationEvent.bundleID.getter();
  *(v10 + 56) = v11;
  *(v10 + 72) = &type metadata for String;
  strcpy((v10 + 80), "clientEventId");
  *(v10 + 94) = -4864;
  *(v10 + 96) = InstallationEvent.clientID.getter();
  *(v10 + 104) = v12;
  *(v10 + 120) = &type metadata for String;
  strcpy((v10 + 128), "eventVersion");
  *(v10 + 141) = 0;
  *(v10 + 142) = -5120;
  *(v10 + 144) = 1;
  *(v10 + 168) = &type metadata for Int;
  *(v10 + 176) = 0x6F6973726556736FLL;
  *(v10 + 184) = 0xE90000000000006ELL;
  *(v10 + 192) = InstallationEvent.osVersion.getter();
  *(v10 + 200) = v13;
  *(v10 + 216) = &type metadata for String;
  *(v10 + 224) = 0x656372756F73;
  *(v10 + 232) = 0xE600000000000000;
  v14 = InstallationEvent.source.getter();
  *(v10 + 264) = &type metadata for String;
  *(v10 + 240) = v14;
  *(v10 + 248) = v15;
  v16 = sub_100013944(v10);
  swift_setDeallocating();
  sub_100002AD8(&qword_100039650, qword_10002A7E0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v17 = InstallationEvent.webDomain.getter();
  if (v18)
  {
    v137 = &type metadata for String;
    *&v136 = v17;
    *(&v136 + 1) = v18;
    sub_10000D7B4(&v136, v134);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133 = v16;
    v20 = sub_10000D860(v134, v135);
    __chkstk_darwin(v20);
    v22 = (&v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_100007754(*v22, v22[1], 0x69616D6F44626577, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native, &v133);
    sub_100002B88(v134);
    v16 = v133;
  }

  v24 = InstallationEvent.installType.getter();
  v137 = &type metadata for String;
  *&v136 = v24;
  *(&v136 + 1) = v25;
  sub_10000D7B4(&v136, v134);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v16;
  v27 = sub_10000D860(v134, v135);
  __chkstk_darwin(v27);
  v29 = (&v125 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29);
  sub_100007754(*v29, v29[1], 0x546C6C6174736E69, 0xEB00000000657079, v26, &v133);
  sub_100002B88(v134);
  v31 = v133;
  if (InstallationEvent.isBeta.getter())
  {
    v137 = &type metadata for Bool;
    LOBYTE(v136) = 1;
    sub_10000D7B4(&v136, v134);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v33 = sub_10000D860(v134, v135);
    sub_100007938(*v33, 0x617465427369, 0xE600000000000000, v32, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v34 = InstallationEvent.countryCode.getter();
  if (v35)
  {
    v137 = &type metadata for String;
    *&v136 = v34;
    *(&v136 + 1) = v35;
    sub_10000D7B4(&v136, v134);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v37 = sub_10000D860(v134, v135);
    __chkstk_darwin(v37);
    v39 = (&v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39);
    sub_100007754(*v39, v39[1], 0x437972746E756F63, 0xEB0000000065646FLL, v36, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v41 = InstallationEvent.storefront.getter();
  if (v42)
  {
    v137 = &type metadata for String;
    *&v136 = v41;
    *(&v136 + 1) = v42;
    sub_10000D7B4(&v136, v134);
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v44 = sub_10000D860(v134, v135);
    __chkstk_darwin(v44);
    v46 = (&v125 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46);
    sub_100007754(*v46, v46[1], 0x6F726665726F7473, 0xEA0000000000746ELL, v43, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v48 = InstallationEvent.altDsid.getter();
  if (v49)
  {
    v137 = &type metadata for String;
    *&v136 = v48;
    *(&v136 + 1) = v49;
    sub_10000D7B4(&v136, v134);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v51 = sub_10000D860(v134, v135);
    __chkstk_darwin(v51);
    v53 = (&v125 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v54 + 16))(v53);
    sub_100007754(*v53, v53[1], 0x64497344746C61, 0xE700000000000000, v50, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v55 = a2[3];
  v56 = a2[4];
  sub_10000D5B4(a2, v55);
  v57 = sub_100011A7C(v55, v56);
  v58 = InstallationEvent.dsid.getter();
  if (v59 & 1) == 0 && (v57)
  {
    v137 = &type metadata for Int64;
    *&v136 = v58;
    sub_10000D7B4(&v136, v134);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v61 = sub_10000D860(v134, v135);
    sub_100007A90(*v61, 1682535268, 0xE400000000000000, v60, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v62 = a2[3];
  v63 = a2[4];
  sub_10000D5B4(a2, v62);
  if (sub_100011AC8(v62, v63))
  {
    v64 = InstallationEvent.gsToken.getter();
    if (v65)
    {
      v137 = &type metadata for String;
      *&v136 = v64;
      *(&v136 + 1) = v65;
      sub_10000D7B4(&v136, v134);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v31;
      v67 = sub_10000D860(v134, v135);
      __chkstk_darwin(v67);
      v69 = (&v125 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v70 + 16))(v69);
      sub_100007754(*v69, v69[1], 0x6E656B6F547367, 0xE700000000000000, v66, &v133);
      sub_100002B88(v134);
      v31 = v133;
    }
  }

  v71 = InstallationEvent.jwtGSToken.getter();
  if (v72)
  {
    v137 = &type metadata for String;
    *&v136 = v71;
    *(&v136 + 1) = v72;
    sub_10000D7B4(&v136, v134);
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v74 = sub_10000D860(v134, v135);
    __chkstk_darwin(v74);
    v76 = (&v125 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v77 + 16))(v76);
    sub_100007754(*v76, v76[1], 0x6B6F54534774776ALL, 0xEA00000000006E65, v73, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v78 = InstallationEvent.token.getter();
  if (v79)
  {
    v137 = &type metadata for String;
    *&v136 = v78;
    *(&v136 + 1) = v79;
    sub_10000D7B4(&v136, v134);
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v81 = sub_10000D860(v134, v135);
    __chkstk_darwin(v81);
    v83 = (&v125 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v84 + 16))(v83);
    sub_100007754(*v83, v83[1], 0x6E656B6F74, 0xE500000000000000, v80, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v85 = a2[3];
  v86 = a2[4];
  sub_10000D5B4(a2, v85);
  v87 = sub_100011B14(v85, v86);
  *&v136 = 0x6D726F6674616C70;
  *(&v136 + 1) = 0xE800000000000000;
  __chkstk_darwin(v87);
  *(&v125 - 2) = &v136;
  v88 = sub_100013620(sub_10000D8B0, (&v125 - 4), v87);
  if (v88)
  {
    v89 = InstallationEvent.platform.getter();
    v137 = &type metadata for String;
    *&v136 = v89;
    *(&v136 + 1) = v90;
    sub_10000D7B4(&v136, v134);
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v92 = sub_10000D860(v134, v135);
    __chkstk_darwin(v92);
    v94 = (&v125 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v95 + 16))(v94);
    sub_100007754(*v94, v94[1], 0x6D726F6674616C70, 0xE800000000000000, v91, &v133);
    v88 = sub_100002B88(v134);
    v31 = v133;
  }

  *&v136 = 0x64496D616461;
  *(&v136 + 1) = 0xE600000000000000;
  __chkstk_darwin(v88);
  *(&v125 - 2) = &v136;
  v96 = sub_100013620(sub_10000D8E8, (&v125 - 4), v87);
  if (v96)
  {
    v96 = InstallationEvent.itemID.getter();
    if ((v97 & 1) == 0)
    {
      v137 = &type metadata for Int64;
      *&v136 = v96;
      sub_10000D7B4(&v136, v134);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v31;
      v99 = sub_10000D860(v134, v135);
      sub_100007A90(*v99, 0x64496D616461, 0xE600000000000000, v98, &v133);
      v96 = sub_100002B88(v134);
      v31 = v133;
    }
  }

  *&v136 = 0xD000000000000011;
  *(&v136 + 1) = 0x800000010002BBA0;
  __chkstk_darwin(v96);
  *(&v125 - 2) = &v136;
  v100 = sub_100013620(sub_10000D8E8, (&v125 - 4), v87);
  if (v100)
  {
    v100 = InstallationEvent.evid.getter();
    if ((v101 & 1) == 0)
    {
      v137 = &type metadata for Int64;
      *&v136 = v100;
      sub_10000D7B4(&v136, v134);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v133 = v31;
      v103 = sub_10000D860(v134, v135);
      sub_100007A90(*v103, 0xD000000000000011, 0x800000010002BBA0, v102, &v133);
      v100 = sub_100002B88(v134);
      v31 = v133;
    }
  }

  *&v136 = 0x646C697562;
  *(&v136 + 1) = 0xE500000000000000;
  __chkstk_darwin(v100);
  *(&v125 - 2) = &v136;
  v104 = sub_100013620(sub_10000D8E8, (&v125 - 4), v87);

  if (v104)
  {
    v105 = [objc_opt_self() buildVersion];
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v137 = &type metadata for String;
    *&v136 = v106;
    *(&v136 + 1) = v108;
    sub_10000D7B4(&v136, v134);
    LOBYTE(v105) = swift_isUniquelyReferenced_nonNull_native();
    v133 = v31;
    v109 = sub_10000D860(v134, v135);
    __chkstk_darwin(v109);
    v111 = (&v125 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v112 + 16))(v111);
    sub_100007754(*v111, v111[1], 0x646C697562, 0xE500000000000000, v105, &v133);
    sub_100002B88(v134);
    v31 = v133;
  }

  v113 = v127;
  Date.init()();
  v115 = v131;
  v114 = v132;
  v116 = v129;
  (*(v131 + 104))(v129, enum case for Calendar.Component.hour(_:), v132);
  v117 = sub_100021790(v113, v116);
  (*(v115 + 8))(v116, v114);
  (*(v128 + 8))(v113, v130);
  if (v117)
  {
    type metadata accessor for ASEEvent();
    swift_allocObject();
    return sub_10000E6FC(v31, v117);
  }

  else
  {

    static Logger.events.getter();
    v119 = v125;
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *v122 = 138412290;
      *(v122 + 4) = v119;
      *v123 = v119;
      v124 = v119;
      _os_log_impl(&_mh_execute_header, v120, v121, "[%@] Failed to derezz event", v122, 0xCu);
      sub_10000D6F8(v123, &qword_100039DA0, &qword_10002A740);
    }

    (*(v5 + 8))(v126, v4);
    return 0;
  }
}

uint64_t sub_1000091E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_100007D74(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_10000D694(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_10000D7B4(&v40, v33);
    v15 = *a5;
    v16 = sub_1000135DC(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_10000711C(v21, a4 & 1);
      v16 = sub_1000135DC(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_100007578();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10000D758(*(*a5 + 56) + 32 * v16, v32);
      sub_100002B88(v33);
      sub_10000D640(&v34);
      v14 = *(v12 + 56);
      sub_100002B88((v14 + v13));
      sub_10000D7B4(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_10000D7B4(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_100007D74(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100009424(uint64_t *a1)
{
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  type metadata accessor for DictionaryEncoder();
  inited = swift_initStackObject();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(inited + 16) = JSONEncoder.init()();
  sub_100006844(a1);

  sub_100002AD8(&qword_100039620, &qword_10002A7B8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v7;
  if (a1[14])
  {
    v5 = sub_100006B68(a1[14]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8[0] = v7;
    sub_1000091E0(v5, sub_10000771C, 0, isUniquelyReferenced_nonNull_native, v8);

    return v8[0];
  }

  return result;
}

id sub_1000097BC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009424(a1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  static Logger.metrics.getter();
  v10 = a2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v62 = v5;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v65[0] = v16;
    *v14 = 138412546;
    *(v14 + 4) = v10;
    *v15 = v10;
    *(v14 + 12) = 2082;
    v60 = v11;
    v61 = v4;
    v17 = v9;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v20 = v10;
    v21 = v19;
    v9 = v17;
    *(v14 + 14) = sub_10001DC98(v18, v21, v65);
    v22 = v60;
    _os_log_impl(&_mh_execute_header, v60, v12, "[%@] Building AMSMetricsEvent for topic: %{public}s", v14, 0x16u);
    sub_10000D6F8(v15, &qword_100039DA0, &qword_10002A740);

    sub_100002B88(v16);

    (*(v62 + 8))(v7, v61);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v24 = objc_allocWithZone(AMSMetricsEvent);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v23 = [v24 initWithUnderlyingDictionary:isa];

  if (*(a1 + 104))
  {
    [v23 setEventTime:?];
  }

  if (*(a1 + 80))
  {
    v26 = String._bridgeToObjectiveC()();
    [v23 setDiagnosticsSubmissionBugType:v26];
  }

  v27 = *(a1 + 88);
  if (v27 != 2)
  {
    [v23 setPreventSampling:v27 & 1];
  }

  v28 = *(a1 + 96);
  v29 = &Dependencies;
  if (v28)
  {
    v30 = *(v28 + 16);
    v31 = &_swiftEmptyArrayStorage;
    if (v30)
    {
      v61 = v23;
      v62 = v9;
      v65[0] = &_swiftEmptyArrayStorage;
      sub_1000266A4(0, v30, 0);
      v32 = (v28 + 32);
      v31 = v65[0];
      do
      {
        v34 = *v32++;
        v33 = v34;
        v35 = v34 == 6;
        if (v34 == 6)
        {
          v36 = 0x6F6973726556736FLL;
        }

        else
        {
          v36 = 0x656E6F7A656D6974;
        }

        if (v35)
        {
          v37 = 0xE90000000000006ELL;
        }

        else
        {
          v37 = 0xEE0074657366664FLL;
        }

        if (v33 == 4)
        {
          v38 = 0x56646C697542736FLL;
        }

        else
        {
          v38 = 0x656D614E736FLL;
        }

        if (v33 == 4)
        {
          v39 = 0xEE006E6F69737265;
        }

        else
        {
          v39 = 0xE600000000000000;
        }

        if (v33 <= 5)
        {
          v36 = v38;
          v37 = v39;
        }

        v40 = 0x7372655665736162;
        if (v33 == 2)
        {
          v41 = 0xEB000000006E6F69;
        }

        else
        {
          v40 = 0x726556746E657665;
          v41 = 0xEC0000006E6F6973;
        }

        if (v33)
        {
          v42 = 0x6973726556707061;
        }

        else
        {
          v42 = 7368801;
        }

        if (v33)
        {
          v43 = 0xEA00000000006E6FLL;
        }

        else
        {
          v43 = 0xE300000000000000;
        }

        if (v33 <= 1)
        {
          v40 = v42;
          v41 = v43;
        }

        if (v33 <= 3)
        {
          v44 = v40;
        }

        else
        {
          v44 = v36;
        }

        if (v33 <= 3)
        {
          v45 = v41;
        }

        else
        {
          v45 = v37;
        }

        v65[0] = v31;
        v47 = v31[2];
        v46 = v31[3];
        if (v47 >= v46 >> 1)
        {
          sub_1000266A4((v46 > 1), v47 + 1, 1);
          v31 = v65[0];
        }

        v31[2] = v47 + 1;
        v48 = &v31[2 * v47];
        *(v48 + 4) = v44;
        *(v48 + 5) = v45;
        --v30;
      }

      while (v30);
      v23 = v61;
      v29 = &Dependencies;
    }

    sub_100006A68(v31);

    v49 = Array._bridgeToObjectiveC()().super.isa;

    [v23 *&v29[45].flags];
  }

  sub_100002AD8(&qword_100039618, &qword_10002A7B0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10002A620;
  *(v50 + 32) = 0x6973726556707061;
  *(v50 + 40) = 0xEA00000000006E6FLL;
  *(v50 + 56) = &type metadata for String;
  strcpy((v50 + 64), "hardwareFamily");
  *(v50 + 79) = -18;
  *(v50 + 120) = &type metadata for String;
  *(v50 + 88) = &type metadata for String;
  *(v50 + 96) = 29551;
  *(v50 + 104) = 0xE200000000000000;
  v51 = Array._bridgeToObjectiveC()().super.isa;

  [v23 *&v29[45].flags];

  if (!isAppInstallationMetricsEnabled()())
  {

    [v23 setAnonymous:1];
    return v23;
  }

  v52 = [v23 underlyingDictionary];
  v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = 0x64497344746C61;
  v64 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v53 + 16) || (v54 = sub_1000135DC(v65), (v55 & 1) == 0))
  {

    sub_10000D640(v65);
    return v23;
  }

  sub_10000D758(*(v53 + 56) + 32 * v54, v66);
  sub_10000D640(v65);

  if ((swift_dynamicCast() & 1) == 0)
  {

    return v23;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v57 = result;

    v58 = String._bridgeToObjectiveC()();

    v59 = [v57 ams_iTunesAccountWithAltDSID:v58];

    if (v59)
    {
      [v23 setAccount:v59];
    }

    return v23;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  v6 = sub_100002AD8(&qword_1000395D8, &qword_10002A778);
  v5[41] = v6;
  v5[42] = *(v6 - 8);
  v5[43] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v5[44] = v7;
  v5[45] = *(v7 - 8);
  v5[46] = swift_task_alloc();
  v8 = sub_100002AD8(&qword_1000395E0, &qword_10002A780);
  v5[47] = v8;
  v5[48] = *(v8 - 8);
  v5[49] = swift_task_alloc();

  return _swift_task_switch(sub_10000A15C, 0, 0);
}

uint64_t sub_10000A15C(uint64_t a1)
{
  if (v1[38])
  {
    v2 = v1 + 10;
    v3 = v1[48];
    v4 = v1[49];
    v5 = v1[47];
    v29 = v1[39];
    v6 = String._bridgeToObjectiveC()();
    v1[50] = v6;
    v1[10] = v1;
    v1[15] = v1 + 35;
    v1[11] = sub_10000A630;
    swift_continuation_init();
    v1[33] = v5;
    v7 = sub_10000D510(v1 + 30);
    sub_100002AD8(&qword_1000395F8, &qword_10002A798);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v7, v4, v5);
    v1[26] = _NSConcreteStackBlock;
    v1[27] = 1107296256;
    v1[28] = sub_100005D88;
    v1[29] = &unk_1000358E0;
    [v29 accountWithIdentifier:v6 completion:?];
    (*(v3 + 8))(v7, v5);
  }

  else
  {
    v8 = v1[40];
    static Logger.events.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[40];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Falling back to lookup by DSID", v13, 0xCu);
      sub_10000D6F8(v14, &qword_100039DA0, &qword_10002A740);
    }

    v2 = v1 + 2;
    v17 = v1[45];
    v16 = v1[46];
    v18 = v1[44];
    v28 = v1[43];
    v19 = v1[41];
    v20 = v1[42];
    v30 = v1[39];

    (*(v17 + 8))(v16, v18);
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10002A630;
    *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v21 + 40) = v22;
    *(v21 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v21 + 56) = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v1[52] = isa;

    v25 = Array._bridgeToObjectiveC()().super.isa;
    v1[53] = v25;
    v1[2] = v1;
    v1[7] = v1 + 34;
    v1[3] = sub_10000AB14;
    swift_continuation_init();
    v1[25] = v19;
    v26 = sub_10000D510(v1 + 22);
    sub_100002AD8(&qword_1000395F0, &qword_10002A790);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v20 + 32))(v26, v28, v19);
    v1[18] = _NSConcreteStackBlock;
    v1[19] = 1107296256;
    v1[20] = sub_100005E30;
    v1[21] = &unk_1000358B8;
    [v30 accountsWithAccountTypeIdentifiers:isa preloadedProperties:v25 completion:?];
    (*(v20 + 8))(v26, v19);
  }

  return _swift_continuation_await(v2);
}

uint64_t sub_10000A630()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {
    v2 = sub_10000ADCC;
  }

  else
  {
    v2 = sub_10000A740;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000A740()
{
  v1 = *(v0 + 280);

  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = *(v0 + 320);
    static Logger.events.getter();
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 320);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Falling back to lookup by DSID", v9, 0xCu);
      sub_10000D6F8(v10, &qword_100039DA0, &qword_10002A740);
    }

    v13 = *(v0 + 360);
    v12 = *(v0 + 368);
    v14 = *(v0 + 352);
    v23 = *(v0 + 344);
    v15 = *(v0 + 328);
    v16 = *(v0 + 336);
    v24 = *(v0 + 312);

    (*(v13 + 8))(v12, v14);
    sub_100002AD8(&qword_1000395E8, &qword_10002A788);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10002A630;
    *(v17 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v17 + 40) = v18;
    *(v17 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v17 + 56) = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 416) = isa;

    v21 = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 424) = v21;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_10000AB14;
    swift_continuation_init();
    *(v0 + 200) = v15;
    v22 = sub_10000D510((v0 + 176));
    sub_100002AD8(&qword_1000395F0, &qword_10002A790);
    sub_100002AD8(&qword_100039D90, &qword_10002A770);
    CheckedContinuation.init(continuation:function:)();
    (*(v16 + 32))(v22, v23, v15);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100005E30;
    *(v0 + 168) = &unk_1000358B8;
    [v24 accountsWithAccountTypeIdentifiers:isa preloadedProperties:v21 completion:?];
    (*(v16 + 8))(v22, v15);

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_10000AB14()
{
  v1 = *(*v0 + 48);
  *(*v0 + 432) = v1;
  if (v1)
  {
    v2 = sub_10000AE5C;
  }

  else
  {
    v2 = sub_10000AC24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000AC24()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 272);

  if (v2)
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_15;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 ams_DSID];
        if (v9)
        {
          v10 = *(v16 + 288);
          v11 = v3;
          v12 = v9;
          v13 = [v9 longLongValue];

          v3 = v11;
          if (v13 == v10)
          {

            goto LABEL_19;
          }
        }

        ++v5;
        if (v8 == i)
        {
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
  }

  v7 = 0;
LABEL_19:

  v14 = *(v16 + 8);

  return v14(v7);
}

uint64_t sub_10000ADCC()
{
  v1 = *(v0 + 400);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000AE5C()
{
  v1 = v0[53];
  v2 = v0[52];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10000AEF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = a4;
  *(v4 + 528) = a3;
  *(v4 + 176) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for AppInstallationEligibility();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_10000B078, 0, 0);
}

uint64_t sub_10000B078(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[35];
  v4 = v1[36];
  AppInstallationEvent.eligibility.getter();
  v5 = AppInstallationEligibility.accountID.getter();
  v7 = v6;
  v8 = *(v4 + 8);
  v8(v2, v3);
  if (v7)
  {
    v9 = v1[24];
    static Logger.events.getter();
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v1[24];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v13;
      *v15 = v13;
      v16 = v13;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] GS lookup failed due to missing accountID", v14, 0xCu);
      sub_10000D6F8(v15, &qword_100039DA0, &qword_10002A740);
    }

    v17 = v1[28];
    v18 = v1[25];
    v19 = v1[26];

    (*(v19 + 8))(v17, v18);
    v20 = v1[22];

    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v21 = v1[1];

    return v21();
  }

  else
  {
    v23 = v1[37];
    v24 = v1[35];
    v25 = [objc_opt_self() ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeProduction];
    v1[39] = v25;
    AppInstallationEvent.eligibility.getter();
    v26 = AppInstallationEligibility.accountIdentifier.getter();
    v28 = v27;
    v1[40] = v27;
    v8(v23, v24);
    v29 = swift_task_alloc();
    v1[41] = v29;
    *v29 = v1;
    v29[1] = sub_10000B394;
    v30 = v1[24];

    return sub_100009FC4(v5, v26, v28, v25, v30);
  }
}

uint64_t sub_10000B394(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v4 = sub_10000B8D4;
  }

  else
  {
    v4 = sub_10000B4D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000B4D0(uint64_t a1)
{
  v2 = v1[42];
  if (v2)
  {
    v3 = v1[39];
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v2 accountStore:v3 serviceIdentifier:v4 useCachedServiceToken:1];
    v1[44] = v5;

    v1[45] = [v5 perform];
    v6 = swift_task_alloc();
    v1[46] = v6;
    *v6 = v1;
    v6[1] = sub_10000B7BC;

    return sub_100005F04();
  }

  else
  {
    v8 = v1[24];
    static Logger.events.getter();
    v9 = v8;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v1[24];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%@] GS lookup failed due to missing account", v13, 0xCu);
      sub_10000D6F8(v14, &qword_100039DA0, &qword_10002A740);

      v16 = v1[39];
    }

    else
    {
      v16 = v10;
      v10 = v1[39];
    }

    v17 = v1[29];
    v18 = v1[25];
    v19 = v1[26];

    (*(v19 + 8))(v17, v18);
    v20 = v1[22];

    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v21 = v1[1];

    return v21();
  }
}

uint64_t sub_10000B7BC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[47] = a1;
  v4[48] = a2;
  v4[49] = v2;

  if (v2)
  {
    v5 = sub_10000BC18;
  }

  else
  {
    v5 = sub_10000BFB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000B8D4(uint64_t a1)
{
  v2 = v1[24];
  static Logger.events.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] GS lookup failed due to account lookup error: %{public}@", v7, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v1[26] + 8))(v1[34], v1[25]);
  v11 = v1[24];
  static Logger.events.getter();
  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v1[24];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%@] GS lookup failed due to missing account", v16, 0xCu);
    sub_10000D6F8(v17, &qword_100039DA0, &qword_10002A740);

    v19 = v1[39];
  }

  else
  {
    v19 = v13;
    v13 = v1[39];
  }

  v20 = v1[29];
  v21 = v1[25];
  v22 = v1[26];

  (*(v22 + 8))(v20, v21);
  v23 = v1[22];

  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = v1[1];

  return v24();
}

uint64_t sub_10000BC18()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 192);

  static Logger.events.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Lookup failed while getting grandSlamJWT token due to error: %{public}@", v7, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(*(v0 + 208) + 8);
  v11(*(v0 + 264), *(v0 + 200));
  *(v0 + 464) = 0;
  *(v0 + 472) = 0;
  *(v0 + 456) = v11;
  v12 = *(v0 + 336);
  if (*(v0 + 528))
  {
    v13 = *(v0 + 312);
    v14 = String._bridgeToObjectiveC()();
    v15 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v12 accountStore:v13 serviceIdentifier:v14 useCachedServiceToken:1];
    *(v0 + 480) = v15;

    *(v0 + 488) = [v15 perform];
    v16 = swift_task_alloc();
    *(v0 + 496) = v16;
    *v16 = v0;
    v16[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v18 = [*(v0 + 336) ams_altDSID];
    v19 = *(v0 + 336);
    v20 = *(v0 + 312);
    if (v18)
    {
      v21 = v18;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v23;
      v29 = v22;
    }

    else
    {

      v28 = 0;
      v29 = 0;
    }

    v26 = *(v0 + 464);
    v27 = *(v0 + 472);
    v24 = *(v0 + 176);

    *v24 = v29;
    v24[1] = v28;
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v26;
    v24[5] = v27;
    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_10000BFB8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);

  sub_100026C10(v3, v1, (v0 + 16));
  v5 = *(v0 + 192);
  if (v2)
  {
    static Logger.events.getter();
    v6 = v5;
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 192);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v9;
      *v11 = v9;
      *(v10 + 12) = 2114;
      v12 = v9;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v13;
      v11[1] = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Verification failed while getting jwtGSToken token due to error: %{public}@", v10, 0x16u);
      sub_100002AD8(&qword_100039DA0, &qword_10002A740);
      swift_arrayDestroy();
    }

    else
    {
    }

    v25 = *(*(v0 + 208) + 8);
    v25(*(v0 + 216), *(v0 + 200));
    v1 = *(v0 + 384);
  }

  else
  {
    v14 = sub_100024F48(*(v0 + 192));
    static Logger.events.getter();
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 192);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412546;
      *(v19 + 4) = v18;
      *v20 = v18;
      *(v19 + 12) = 1026;
      *(v19 + 14) = v14 & 1;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Expired check for jwtGSToken returned: %{BOOL,public}d", v19, 0x12u);
      sub_10000D6F8(v20, &qword_100039DA0, &qword_10002A740);
    }

    v22 = *(v0 + 256);
    v23 = *(v0 + 200);
    v24 = *(v0 + 208);
    sub_10000D4BC(v0 + 16);

    v25 = *(v24 + 8);
    *(v0 + 400) = v25;
    v25(v22, v23);
    if (v14)
    {
      v26 = *(v0 + 192);
      static Logger.events.getter();
      v27 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = *(v0 + 192);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v30;
        *v32 = v30;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v28, v29, "[%@] Getting fresh jwtGSToken", v31, 0xCu);
        sub_10000D6F8(v32, &qword_100039DA0, &qword_10002A740);
      }

      v34 = *(v0 + 336);
      v35 = *(v0 + 312);
      v36 = *(v0 + 248);
      v37 = *(v0 + 200);

      v25(v36, v37);
      v38 = String._bridgeToObjectiveC()();
      v39 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v34 accountStore:v35 serviceIdentifier:v38 useCachedServiceToken:0];
      *(v0 + 408) = v39;

      *(v0 + 416) = [v39 perform];
      v40 = swift_task_alloc();
      *(v0 + 424) = v40;
      *v40 = v0;
      v41 = sub_10000C65C;
      goto LABEL_14;
    }
  }

  *(v0 + 464) = *(v0 + 376);
  *(v0 + 472) = v1;
  *(v0 + 456) = v25;
  v42 = *(v0 + 336);
  if (*(v0 + 528) == 1)
  {
    v43 = *(v0 + 312);
    v44 = String._bridgeToObjectiveC()();
    v45 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v42 accountStore:v43 serviceIdentifier:v44 useCachedServiceToken:1];
    *(v0 + 480) = v45;

    *(v0 + 488) = [v45 perform];
    v40 = swift_task_alloc();
    *(v0 + 496) = v40;
    *v40 = v0;
    v41 = sub_10000CDA0;
LABEL_14:
    v40[1] = v41;

    return sub_100005F04();
  }

  v47 = [*(v0 + 336) ams_altDSID];
  v48 = *(v0 + 336);
  v49 = *(v0 + 312);
  if (v47)
  {
    v50 = v47;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v52;
    v58 = v51;
  }

  else
  {

    v57 = 0;
    v58 = 0;
  }

  v55 = *(v0 + 464);
  v56 = *(v0 + 472);
  v53 = *(v0 + 176);

  *v53 = v58;
  v53[1] = v57;
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v55;
  v53[5] = v56;
  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_10000C65C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 432) = v2;

  if (v2)
  {
    v7 = sub_10000CA00;
  }

  else
  {
    *(v6 + 440) = a2;
    *(v6 + 448) = a1;
    v7 = sub_10000C790;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000C790()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 408);

  v3 = *(v0 + 400);
  *(v0 + 464) = *(v0 + 448);
  *(v0 + 472) = v1;
  *(v0 + 456) = v3;
  v4 = *(v0 + 336);
  if (*(v0 + 528) == 1)
  {
    v5 = *(v0 + 312);
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v4 accountStore:v5 serviceIdentifier:v6 useCachedServiceToken:1];
    *(v0 + 480) = v7;

    *(v0 + 488) = [v7 perform];
    v8 = swift_task_alloc();
    *(v0 + 496) = v8;
    *v8 = v0;
    v8[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v10 = [*(v0 + 336) ams_altDSID];
    v11 = *(v0 + 336);
    v12 = *(v0 + 312);
    if (v10)
    {
      v13 = v10;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v15;
      v21 = v14;
    }

    else
    {

      v20 = 0;
      v21 = 0;
    }

    v18 = *(v0 + 464);
    v19 = *(v0 + 472);
    v16 = *(v0 + 176);

    *v16 = v21;
    v16[1] = v20;
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v18;
    v16[5] = v19;
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10000CA00()
{
  v1 = *(v0 + 408);

  v2 = *(v0 + 192);
  static Logger.events.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Verification failed while getting jwtGSToken token due to error: %{public}@", v7, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = *(*(v0 + 208) + 8);
  v11(*(v0 + 216), *(v0 + 200));
  v12 = *(v0 + 384);
  *(v0 + 464) = *(v0 + 376);
  *(v0 + 472) = v12;
  *(v0 + 456) = v11;
  v13 = *(v0 + 336);
  if (*(v0 + 528))
  {
    v14 = *(v0 + 312);
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_allocWithZone(AMSServiceTokenTask) initWithAccount:v13 accountStore:v14 serviceIdentifier:v15 useCachedServiceToken:1];
    *(v0 + 480) = v16;

    *(v0 + 488) = [v16 perform];
    v17 = swift_task_alloc();
    *(v0 + 496) = v17;
    *v17 = v0;
    v17[1] = sub_10000CDA0;

    return sub_100005F04();
  }

  else
  {
    v19 = [*(v0 + 336) ams_altDSID];
    v20 = *(v0 + 336);
    v21 = *(v0 + 312);
    if (v19)
    {
      v22 = v19;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v24;
      v30 = v23;
    }

    else
    {

      v29 = 0;
      v30 = 0;
    }

    v27 = *(v0 + 464);
    v28 = *(v0 + 472);
    v25 = *(v0 + 176);

    *v25 = v30;
    v25[1] = v29;
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v27;
    v25[5] = v28;
    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10000CDA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 504) = v2;

  if (v2)
  {
    v7 = sub_10000D040;
  }

  else
  {
    *(v6 + 512) = a2;
    *(v6 + 520) = a1;
    v7 = sub_10000CED8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10000CED8()
{
  v16 = *(v0 + 512);
  v1 = *(v0 + 480);

  v15 = *(v0 + 520);
  v2 = [*(v0 + 336) ams_altDSID];
  v3 = *(v0 + 336);
  v4 = *(v0 + 312);
  if (v2)
  {
    v5 = v2;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v7;
    v14 = v6;
  }

  else
  {

    v13 = 0;
    v14 = 0;
  }

  v11 = *(v0 + 464);
  v12 = *(v0 + 472);
  v8 = *(v0 + 176);

  *v8 = v14;
  v8[1] = v13;
  v8[2] = v15;
  v8[3] = v16;
  v8[4] = v11;
  v8[5] = v12;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10000D040()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 192);

  static Logger.events.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2114;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Lookup failed while getting grandSlam token due to error: %{public}@", v7, 0x16u);
    sub_100002AD8(&qword_100039DA0, &qword_10002A740);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 456))(*(v0 + 240), *(v0 + 200));
  v11 = [*(v0 + 336) ams_altDSID];
  v12 = *(v0 + 336);
  v13 = *(v0 + 312);
  if (v11)
  {
    v14 = v11;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v16;
    v23 = v15;
  }

  else
  {

    v22 = 0;
    v23 = 0;
  }

  v20 = *(v0 + 464);
  v21 = *(v0 + 472);
  v17 = *(v0 + 176);

  *v17 = v23;
  v17[1] = v22;
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v20;
  v17[5] = v21;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10000D2E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D31C(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D3C8;

  return sub_1000283DC();
}

uint64_t sub_10000D3C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_10000D510(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_10000D5B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000D5F8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10000D6F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002AD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D758(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000D7B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000D80C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000D860(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

Swift::Int sub_10000D914()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D9C8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000DA68(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10000DB18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E6B0(*a1);
  *a2 = result;
  return result;
}

void sub_10000DB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5129543;
  v5 = 0xE300000000000000;
  v6 = 5525065;
  v7 = 0xE300000000000000;
  v8 = 4144959;
  if (v2 != 3)
  {
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 5064002;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10000DBB8(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = 0xE000000000000000;
    v6 = a1;
    v7 = 5525065;
    v8 = 4144959;
    if (a1 == 3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v8 = 0;
    }

    if (a1 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v7 = v8;
    }

    v9 = 5129543;
    if (a1)
    {
      v9 = 5064002;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v6 <= 1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = v5;
    }

    v12 = v11;
    String.append(_:)(*&v10);

    sub_10000E488();
    v13._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v13);

    return 0;
  }
}

uint64_t sub_10000DCCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100002B88(a1);
  }

  sub_10000D5B4(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v6;
  sub_100002B88(v9);
  result = sub_100002B88(a1);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_10000DDA0(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10000DBB8(v2, v3, v4);
  sub_10000D860(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100002B88(v6);
}

void *sub_10000DE68(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100002B88(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10000D5B4(v12, v12[3]);
    sub_10000E3E0();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v8 = v11;
    v9 = &v3[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
    *v9 = v10[1];
    LOBYTE(v9[1].receiver) = v8;
    sub_100002B88(v12);
    v10[0].receiver = v3;
    v10[0].super_class = ObjectType;
    v6 = [(objc_super *)v10 init];
    sub_100002B88(a1);
  }

  return v6;
}

uint64_t sub_10000DFBC()
{
  v1 = v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation;
  v2 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation);
  if (*(v1 + 16) == 1)
  {
  }

  else
  {
    v3 = 0xE000000000000000;
    if (v2 <= 1u)
    {
      v3 = 0xE300000000000000;
      if (v2)
      {
        v4 = 5064002;
      }

      else
      {
        v4 = 5129543;
      }
    }

    else if (v2 == 2)
    {
      v3 = 0xE300000000000000;
      v4 = 5525065;
    }

    else if (v2 == 3)
    {
      v3 = 0xE300000000000000;
      v4 = 4144959;
    }

    else
    {
      v4 = 0;
    }

    v5 = v3;
    String.append(_:)(*&v4);

    sub_10000E488();
    v6._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v6);

    return 0;
  }

  return v2;
}

id sub_10000E0F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

id sub_10000E190()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10000E210(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000E224(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000E26C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_10000E2D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_10000DE68(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000E320(void *a1)
{
  sub_10000D5B4(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10000D860(v2, v2[3]);
  sub_10000E434();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_100002B88(v2);
}

unint64_t sub_10000E3E0()
{
  result = qword_100039690;
  if (!qword_100039690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039690);
  }

  return result;
}

unint64_t sub_10000E434()
{
  result = qword_100039698;
  if (!qword_100039698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039698);
  }

  return result;
}

unint64_t sub_10000E488()
{
  result = qword_1000396A0;
  if (!qword_1000396A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A0);
  }

  return result;
}

uint64_t sub_10000E4DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogKey.Prefix(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LogKey.Prefix(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E65C()
{
  result = qword_1000396A8;
  if (!qword_1000396A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000396A8);
  }

  return result;
}

unint64_t sub_10000E6B0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000352C0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000E6FC(uint64_t a1, uint64_t a2)
{
  strcpy((v2 + 16), "xp_app_install");
  *(v2 + 31) = -18;
  *(v2 + 32) = &_swiftEmptyArrayStorage;
  *(v2 + 40) = 0x40F5180000000000;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 1;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 2;
  *(v2 + 96) = &off_100035258;
  *(v2 + 104) = a2;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_10000E768(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x707954746E657665;
  }

  else
  {
    v3 = 0x6369706F74;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE900000000000065;
  }

  if (*a2)
  {
    v5 = 0x707954746E657665;
  }

  else
  {
    v5 = 0x6369706F74;
  }

  if (*a2)
  {
    v6 = 0xE900000000000065;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000E810()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000E894(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000E904(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000E984@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100035358, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10000E9E4(uint64_t *a1@<X8>)
{
  v2 = 0x6369706F74;
  if (*v1)
  {
    v2 = 0x707954746E657665;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000065;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10000EA24()
{
  if (*v0)
  {
    return 0x707954746E657665;
  }

  else
  {
    return 0x6369706F74;
  }
}

uint64_t sub_10000EA60@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100035358, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10000EADC(uint64_t a1)
{
  v2 = sub_10000EDB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EB18(uint64_t a1)
{
  v2 = sub_10000EDB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000EB54()
{

  return v0;
}

uint64_t sub_10000EBA4()
{
  sub_10000EB54();

  return swift_deallocClassInstance();
}

uint64_t sub_10000EBFC(void *a1)
{
  v2 = sub_100002AD8(&qword_1000397A0, &qword_10002AAB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000D5B4(a1, a1[3]);
  sub_10000EDB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_10000ED3C(uint64_t a1)
{
  result = sub_10000ED64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000ED64()
{
  result = qword_100039640;
  if (!qword_100039640)
  {
    type metadata accessor for ASEEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039640);
  }

  return result;
}

unint64_t sub_10000EDB8()
{
  result = qword_1000397A8;
  if (!qword_1000397A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SupplementalField(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SupplementalField(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000EF6C()
{
  result = qword_1000397B0;
  if (!qword_1000397B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B0);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_1000397B8;
  if (!qword_1000397B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397B8);
  }

  return result;
}

unint64_t sub_10000F01C()
{
  result = qword_1000397C0;
  if (!qword_1000397C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000397C0);
  }

  return result;
}

uint64_t sub_10000F070(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppInstallType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for AppInstallType.autoDownload(_:))
  {
    return 0x6E776F446F747561;
  }

  if (v8 == enum case for AppInstallType.buy(_:))
  {
    return 7959906;
  }

  if (v8 == enum case for AppInstallType.clipBuy(_:))
  {
    return 0x79754270696C63;
  }

  if (v8 == enum case for AppInstallType.promotion(_:))
  {
    return 0x6F69746F6D6F7270;
  }

  if (v8 == enum case for AppInstallType.queue(_:))
  {
    return 0x6575657571;
  }

  if (v8 == enum case for AppInstallType.redownload(_:))
  {
    return 0x6F6C6E776F646572;
  }

  if (v8 == enum case for AppInstallType.restore(_:))
  {
    return 0x65726F74736572;
  }

  if (v8 == enum case for AppInstallType.restoreUpdate(_:))
  {
    return 0x5565726F74736572;
  }

  v10 = v8;
  result = 0x64705565726F7473;
  if (v10 != enum case for AppInstallType.storeUpdate(_:))
  {
    if (v10 == enum case for AppInstallType.updateAutomatic(_:))
    {
      if ((a1 & 1) == 0)
      {
        return 0x7541657461647075;
      }
    }

    else if (v10 == enum case for AppInstallType.betaInstall(_:))
    {
      return 0x74736E4961746562;
    }

    else if (v10 == enum case for AppInstallType.betaUpdate(_:))
    {
      return 0x6164705561746562;
    }

    else if (v10 == enum case for AppInstallType.deviceManagedInstall(_:))
    {
      return 0xD000000000000014;
    }

    else if (v10 == enum case for AppInstallType.deviceManagedUpdate(_:))
    {
      return 0xD000000000000013;
    }

    else if (v10 == enum case for AppInstallType.userManagedInstall(_:))
    {
      return 0xD000000000000012;
    }

    else if (v10 == enum case for AppInstallType.tvProviderBuy(_:))
    {
      return 0x6469766F72507674;
    }

    else if (v10 == enum case for AppInstallType.tvProviderUpdate(_:))
    {
      return 0xD000000000000010;
    }

    else if (v10 == enum case for AppInstallType.upp(_:))
    {
      return 7368821;
    }

    else if (v10 == enum case for AppInstallType.web(_:))
    {
      return 6448503;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      return 0x6E776F6E6B6E75;
    }
  }

  return result;
}

uint64_t sub_10000F52C()
{
  v1 = v0;
  v2 = type metadata accessor for AppInstallType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 1;
  if (v6 != enum case for AppInstallType.autoDownload(_:) && v6 != enum case for AppInstallType.buy(_:) && v6 != enum case for AppInstallType.clipBuy(_:) && v6 != enum case for AppInstallType.promotion(_:) && v6 != enum case for AppInstallType.queue(_:) && v6 != enum case for AppInstallType.redownload(_:) && v6 != enum case for AppInstallType.restore(_:) && v6 != enum case for AppInstallType.restoreUpdate(_:) && v6 != enum case for AppInstallType.storeUpdate(_:) && v6 != enum case for AppInstallType.updateAutomatic(_:) && v6 != enum case for AppInstallType.betaInstall(_:) && v6 != enum case for AppInstallType.betaUpdate(_:) && v6 != enum case for AppInstallType.deviceManagedInstall(_:) && v6 != enum case for AppInstallType.deviceManagedUpdate(_:) && v6 != enum case for AppInstallType.userManagedInstall(_:))
  {
    result = 0;
    if (v6 != enum case for AppInstallType.tvProviderBuy(_:) && v6 != enum case for AppInstallType.tvProviderUpdate(_:))
    {
      result = 1;
      if (v6 != enum case for AppInstallType.upp(_:) && v6 != enum case for AppInstallType.web(_:))
      {
        (*(v3 + 8))(v5, v2);
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000F7B4()
{
  v10 = type metadata accessor for URL();
  __chkstk_darwin(v10);
  v0 = type metadata accessor for Logger();
  v9[2] = *(v0 - 8);
  v9[3] = v0;
  __chkstk_darwin(v0);
  v1 = type metadata accessor for URLResourceValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002AD8(&qword_1000397C8, &qword_10002AC28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002AC10;
  *(inited + 32) = NSURLIsExcludedFromBackupKey;
  v6 = NSURLIsExcludedFromBackupKey;
  sub_10000FF68(inited);
  swift_setDeallocating();
  sub_10000FFF4(inited + 32);
  URL.resourceValues(forKeys:)();

  v7 = URLResourceValues.isExcludedFromBackup.getter();
  (*(v2 + 8))(v4, v1);
  return v7 & 1;
}

uint64_t sub_10000FBC4(char a1)
{
  v1 = a1 & 1;
  v2 = type metadata accessor for Logger();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for URLResourceValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10000F7B4();
  if ((result & 1) != v1)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    URL.setResourceValues(_:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_10000FF00(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039DA0, &qword_10002A740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FF68(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100010050();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001FD50(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10000FFF4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010050()
{
  result = qword_100039440;
  if (!qword_100039440)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039440);
  }

  return result;
}

uint64_t sub_1000100A8()
{
  v2 = v0[1];
  os_activity_scope_leave(&v2);
  return swift_deallocClassInstance();
}

uint64_t sub_100010134()
{
  qword_1000397D0 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

os_activity_t sub_100010170(os_activity_t description, char a2, void *dso)
{
  v3 = description;
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (qword_100039270 == -1)
      {
LABEL_4:
        v4 = dso;
        v5 = qword_1000397D0;

        return _os_activity_create(v4, v3, v5, OS_ACTIVITY_FLAG_DEFAULT);
      }

LABEL_17:
      v13 = dso;
      swift_once();
      dso = v13;
      goto LABEL_4;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (description >> 32)
  {
    goto LABEL_16;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return description;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
LABEL_19:
    v7 = (description & 0x3F) << 8;
    v8 = (description >> 6) + v7 + 33217;
    v9 = (v7 | (description >> 6) & 0x3F) << 8;
    v10 = (description >> 18) + ((v9 | (description >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (description >> 12) + v9 + 8487393;
    if (description >> 16)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (description < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_12;
  }

  if (description > 0x7F)
  {
    goto LABEL_19;
  }

  v6 = description + 1;
LABEL_12:
  *descriptiona = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (qword_100039270 != -1)
  {
    v12 = dso;
    swift_once();
    dso = v12;
  }

  return _os_activity_create(dso, descriptiona, qword_1000397D0, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t type metadata accessor for ServiceListenerDelegate(uint64_t a1)
{
  result = qword_100039918;
  if (!qword_100039918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010490(uint64_t a1)
{
  result = type metadata accessor for BagService();
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

uint64_t sub_100010530(void *a1)
{
  v3 = type metadata accessor for BagService();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP22AppInstallationMetrics15ServiceProtocol_];
  [a1 setExportedInterface:v7];
  v8 = *(v1 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_dependencies);
  v9 = *(v4 + 16);
  v9(v6, v1 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon23ServiceListenerDelegate_bagService, v3);
  v10 = type metadata accessor for Service(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies] = v8;
  v9(&v11[OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_bagService], v6, v3);
  v14.receiver = v11;
  v14.super_class = v10;

  v12 = objc_msgSendSuper2(&v14, "init");
  (*(v4 + 8))(v6, v3);
  [a1 setExportedObject:v12];

  [a1 setRemoteObjectInterface:v7];
  [a1 resume];

  return 1;
}

uint64_t _s14BasePropertiesOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14BasePropertiesOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100010880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x6F6973726556736FLL;
  v5 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v4 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v6 = 0x56646C697542736FLL;
  v7 = 0xEE006E6F69737265;
  if (a1 != 4)
  {
    v6 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x7372655665736162;
  v9 = 0xEB000000006E6F69;
  if (a1 != 2)
  {
    v8 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  v10 = 0x6973726556707061;
  if (a1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  else
  {
    v10 = 7368801;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE90000000000006ELL;
        if (v11 != 0x6F6973726556736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x656E6F7A656D6974;
      v15 = 0x74657366664FLL;
    }

    else
    {
      if (a2 != 4)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x656D614E736FLL)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }

      v14 = 0x56646C697542736FLL;
      v15 = 0x6E6F69737265;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v11 != v14)
    {
LABEL_45:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_46;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x7372655665736162)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xEC0000006E6F6973;
      if (v11 != 0x726556746E657665)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000006E6FLL;
    if (v11 != 0x6973726556707061)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE300000000000000;
    if (v11 != 7368801)
    {
      goto LABEL_45;
    }
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v16 = 1;
LABEL_46:

  return v16 & 1;
}

uint64_t sub_100010B3C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5129543;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 5064002;
    }

    else
    {
      v4 = 5129543;
    }

    v5 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v5 = 0xE300000000000000;
    v4 = 5525065;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 4144959;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE000000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 5525065;
  v8 = 0xE300000000000000;
  v9 = 4144959;
  if (a2 != 3)
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (a2)
  {
    v2 = 5064002;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE300000000000000;
  }

  else
  {
    v11 = v6;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100010C68(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_100010DBC(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100010F4C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000110F8(*a1);
  *a2 = result;
  return result;
}

void sub_100010F7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v7 = 0xEE006E6F69737265;
  v8 = 0x56646C697542736FLL;
  if (v2 != 4)
  {
    v8 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7372655665736162;
  if (v2 != 2)
  {
    v10 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x6973726556707061;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000110A4()
{
  result = qword_100039930;
  if (!qword_100039930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100039930);
  }

  return result;
}

unint64_t sub_1000110F8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000353A8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011144(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v43 = a1;
  v44 = a4;
  v42 = a3;
  v41 = a2;
  v40 = type metadata accessor for OSSignpostID();
  v6 = *(v40 - 8);
  v7 = __chkstk_darwin(v40);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v34 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OSSignposter();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = v44;
  v23 = v41;
  *(v5 + 16) = v43;
  *(v5 + 24) = v23;
  *(v5 + 32) = v42;
  v24 = *(v12 + 16);
  v41 = v11;
  v24(v14, v22, v11);
  OSSignposter.init(logger:)();
  v25 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter;
  (*(v16 + 32))(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter, v21, v15);
  (*(v16 + 16))(v19, v5 + v25, v15);
  static OSSignpostID.exclusive.getter();
  v26 = OSSignposter.logHandle.getter();
  v27 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v36 = v19;
  v37 = v5;
  v35 = v16;
  v38 = v12;
  if ((v42 & 1) == 0)
  {
    v29 = v43;
    if (v43)
    {
LABEL_9:
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v27, v31, v29, "", v30, 2u);

      v5 = v37;
      v12 = v38;
      v16 = v35;
      v19 = v36;
LABEL_10:

      v32 = v40;
      (*(v6 + 16))(v39, v10, v40);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v33 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v12 + 8))(v44, v41);
      (*(v6 + 8))(v10, v32);
      (*(v16 + 8))(v19, v15);
      *(v5 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval) = v33;
      return v5;
    }

    __break(1u);
  }

  if (v43 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v43 & 0xFFFFF800) != 0xD800)
  {
    if (v43 >> 16 <= 0x10)
    {
      v29 = &v45;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100011558()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostError();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OSSignpostID();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter;
  (*(v8 + 16))(v10, v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_signposter, v7);
  v32 = *(v0 + 16);
  v31 = *(v0 + 32);
  v12 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval;
  v13 = *(v0 + OBJC_IVAR____TtC28AppInstallationMetricsDaemon16SignpostInterval_interval);

  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v29 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  v16 = v37;
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v36 + 8))(v6, v16);
    v25 = *(v8 + 8);
    v25(v10, v7);
    v25((v1 + v11), v7);

    return v1;
  }

  v30 = v13;
  v26[0] = v1;
  v26[1] = v12;
  v27 = v10;
  v28 = v11;
  v17 = v37;
  if ((v31 & 1) == 0)
  {
    v19 = v34;
    v18 = v35;
    v21 = v32;
    v20 = v33;
    if (v32)
    {
LABEL_9:

      checkForErrorAndConsumeState(state:)();

      if ((*(v19 + 88))(v20, v18) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v20, v18);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v29, v24, v21, v22, v23, 2u);

      v16 = v17;
      v10 = v27;
      v11 = v28;
      v1 = v26[0];
      goto LABEL_13;
    }

    __break(1u);
  }

  v20 = v33;
  v19 = v34;
  v18 = v35;
  if (v32 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v32 & 0xFFFFF800) != 0xD800)
  {
    if (v32 >> 16 <= 0x10)
    {
      v21 = &v38;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_100011928()
{
  sub_100011558();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignpostInterval(uint64_t a1)
{
  result = qword_100039960;
  if (!qword_100039960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000119D4(uint64_t a1)
{
  result = type metadata accessor for OSSignposter();
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

char *sub_100011B14(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AnyValue();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch thunk of Bag.subscript.getter();
  if (!v6)
  {
    return &off_100035208;
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v3 + 16;
    v9 = *(v3 + 16);
    v10 = *(v3 + 80);
    v21 = v6;
    v11 = v6 + ((v10 + 32) & ~v10);
    v22 = *(v8 + 56);
    v23 = v9;
    v24 = v8;
    v12 = (v8 - 8);
    v13 = &_swiftEmptyArrayStorage;
    v9(v5, v11, v2);
    while (1)
    {
      v15 = AnyValue.string.getter();
      v17 = v16;
      (*v12)(v5, v2);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100026414(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_100026414((v18 > 1), v19 + 1, 1, v13);
        }

        *(v13 + 2) = v19 + 1;
        v14 = &v13[16 * v19];
        *(v14 + 4) = v15;
        *(v14 + 5) = v17;
      }

      v11 += v22;
      if (!--v7)
      {
        break;
      }

      v23(v5, v11, v2);
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v13;
}

uint64_t sub_100011DC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  type metadata accessor for BagService.PermittedDataOrigin();
  v2[8] = swift_task_alloc();
  type metadata accessor for BagService.UpdatePolicy();
  v2[9] = swift_task_alloc();
  type metadata accessor for BagService.ExpiredDataUsage();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for BagService.Policy();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100011F78, 0, 0);
}

uint64_t sub_100011F78()
{
  static BagService.ExpiredDataUsage.notPermitted.getter();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_100012054;
  v2 = v0[14];
  v3 = v0[2];

  return BagService.createBag(policy:)(v3, v2);
}

uint64_t sub_100012054()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *v1;
  v5[16] = v0;

  v6 = *(v3 + 8);
  v5[17] = v6;
  v5[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100012244, 0, 0);
  }

  else
  {

    v7 = v5[1];

    return v7();
  }
}

uint64_t sub_100012244(uint64_t a1)
{
  static Logger.general.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load non-expired bag; falling back to expired bag: %{public}@", v4, 0xCu);
    sub_10000FF00(v5);
  }

  v7 = v1[7];
  v8 = v1[4];
  v9 = v1[5];

  v10 = *(v9 + 8);
  v1[19] = v10;
  v1[20] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v7, v8);
  static BagService.ExpiredDataUsage.permitted(maxExpirationDuration:)();
  static BagService.UpdatePolicy.never.getter();
  static BagService.PermittedDataOrigin.networkAndPersistence.getter();
  BagService.Policy.init(expiredDataUsage:updatePolicy:permittedDataOrigin:)();
  v11 = swift_task_alloc();
  v1[21] = v11;
  *v11 = v1;
  v11[1] = sub_100012438;
  v12 = v1[13];
  v13 = v1[2];

  return BagService.createBag(policy:)(v13, v12);
}

uint64_t sub_100012438()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_10001266C;
  }

  else
  {
    v5 = sub_1000125B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000125B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001266C(uint64_t a1)
{
  static Logger.general.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load bag from network or storage: %{public}@", v4, 0xCu);
    sub_10000FF00(v5);
  }

  v7 = v1[19];
  v8 = v1[6];
  v9 = v1[4];
  v10 = v1[2];

  v7(v8, v9);
  *(v10 + 24) = &type metadata for EmptyBag;
  *(v10 + 32) = sub_10001283C();

  v11 = v1[1];

  return v11();
}

unint64_t sub_10001283C()
{
  result = qword_1000399F8;
  if (!qword_1000399F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000399F8);
  }

  return result;
}

uint64_t sub_100012914@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  sub_100012994(a2, a3);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 1, 1, v4);
}

uint64_t sub_100012994(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10001DC98(a1, a2, &v14);
    _os_log_impl(&_mh_execute_header, v8, v9, "Read key %s from an empty bag", v10, 0xCu);
    sub_100002B88(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100012B44()
{
  sub_100002AD8(&qword_100039A08, &qword_10002AE08);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_100039A00 = result;
  return result;
}

uint64_t sub_100012BCC()
{

  return swift_deallocClassInstance();
}

BOOL sub_100012C2C(uint64_t a1)
{
  v4 = sub_100012CEC(a1);
  if (!v1)
  {
    v5 = v4;
    v6 = (a1 + 56);
    v7 = *(a1 + 16) + 1;
    do
    {
      v2 = --v7 == 0;
      if (!v7)
      {
        break;
      }

      v8 = v6 + 4;
      v10 = *(v6 - 1);
      v9 = *v6;
      v12 = *(v6 - 3);
      v11 = *(v6 - 2);

      LOBYTE(v12) = sub_100013134(v5, v12, v11, v10, v9);

      v6 = v8;
    }

    while ((v12 & 1) != 0);
  }

  return v2;
}

unint64_t sub_100012CEC(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return sub_100013A74(&_swiftEmptyArrayStorage);
  }

  v23[0] = v4;
  error = 0;
  v24 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v8 = a1 + 56;
  do
  {
    v8 += 32;

    String._bridgeToObjectiveC()();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v7;
  }

  while (v7);
  type metadata accessor for CFString(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = SecTaskCopyValuesForEntitlements(v1, isa, &error);

  if (v10)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      result = v24;
      if (v24)
      {
        return result;
      }
    }

    else
    {
    }
  }

  static Logger.daemon.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    swift_beginAccess();
    if (error)
    {
      v16 = error;
      v23[1] = v16;
      type metadata accessor for CFError(0);
      sub_1000138FC(&qword_100039B78, type metadata accessor for CFError, &protocol conformance descriptor for CFErrorRef);
      v17 = Error.localizedDescription.getter();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = sub_10001DC98(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error obtaining entitlements: %s", v14, 0xCu);
    sub_100002B88(v15);
  }

  (*(v23[0] + 8))(v6, v3);
  v21 = type metadata accessor for AppInstallationMetricsError();
  sub_1000138FC(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, enum case for AppInstallationMetricsError.unknown(_:), v21);
  return swift_willThrow();
}

uint64_t sub_100013134(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v14 = sub_1000134FC(a2, a3), (v15 & 1) != 0))
  {
    sub_10000D758(*(a1 + 56) + 32 * v14, v33);
  }

  else
  {
    memset(v33, 0, sizeof(v33));
  }

  if (a5)
  {
    sub_100013DF4(v33, &v30, &qword_100039B60, "~!");
    if (v32)
    {
      sub_100002AD8(&qword_100039B68, &qword_10002AE68);
      v16 = swift_dynamicCast();
      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }

      v17 = v29;
      v30 = a4;
      v31 = a5;
      __chkstk_darwin(v16);
      *(&v27 - 2) = &v30;
      v18 = sub_100013620(sub_1000138A4, (&v27 - 4), v17);

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:
      sub_100013574(v33);
      return 1;
    }
  }

  else
  {
    sub_100013DF4(v33, &v30, &qword_100039B60, "~!");
    if (v32)
    {
      if (!swift_dynamicCast() || (v29 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  sub_100013574(&v30);
LABEL_15:
  if (os_variant_has_internal_content())
  {
    v28 = a4;
    static Logger.daemon.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v27 = v11;
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v22 = 136446466;
      *(v22 + 4) = sub_10001DC98(a2, a3, &v29);
      *(v22 + 12) = 2082;
      if (a5)
      {
        v30 = 47;
        v31 = 0xE100000000000000;
        v23._countAndFlagsBits = v28;
        v23._object = a5;
        String.append(_:)(v23);
        v24 = v30;
        v25 = v31;
      }

      else
      {
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v26 = sub_10001DC98(v24, v25, &v29);

      *(v22 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Missing entitlement %{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();

      (*(v27 + 8))(v13, v10);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }
  }

  sub_100013574(v33);
  return 0;
}

unint64_t sub_1000134FC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000136CC(a1, a2, v4);
}

uint64_t sub_100013574(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_100039B60, "~!");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000135DC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100013784(a1, v4);
}

uint64_t sub_100013620(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_1000136CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100013784(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000D69C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000D640(v8);
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

uint64_t sub_10001384C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000138A4(uint64_t *a1)
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

uint64_t sub_1000138FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100013944(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002AD8(&qword_100039658, &unk_10002AE80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013DF4(v4, &v13, &qword_100039650, qword_10002A7E0);
      v5 = v13;
      v6 = v14;
      result = sub_1000134FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D7B4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100013A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002AD8(&qword_100039B80, &qword_10002AE70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100013DF4(v4, &v13, &qword_100039B88, &qword_10002AE78);
      v5 = v13;
      v6 = v14;
      result = sub_1000134FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D7B4(&v15, (v3[7] + 32 * result));
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

SecTaskRef sub_100013BA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v23 = HIDWORD(a4);
  v11 = type metadata accessor for Logger();
  v21 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  token.val[0] = v7;
  token.val[1] = v8;
  token.val[2] = v6;
  token.val[3] = v9;
  token.val[4] = v5;
  token.val[5] = v10;
  token.val[6] = v4;
  token.val[7] = v23;
  result = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
  if (!result)
  {
    v15 = v21;
    static Logger.daemon.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Error creating security task for entitlement check", v18, 2u);
    }

    (*(v15 + 8))(v13, v11);
    v19 = type metadata accessor for AppInstallationMetricsError();
    sub_1000138FC(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for AppInstallationMetricsError.unknown(_:), v19);
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_100013DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002AD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 sub_100013E5C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013E68(uint64_t a1, int a2)
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

uint64_t sub_100013EB0(uint64_t result, int a2, int a3)
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

void sub_100013F00()
{
  v1 = v0;
  v17 = type metadata accessor for Logger();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 16);
  v10 = String._bridgeToObjectiveC()();
  sub_1000150C8();
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.background(_:), v5);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  aBlock[4] = sub_100015114;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000141F8;
  aBlock[3] = &unk_100035C80;
  v12 = _Block_copy(aBlock);

  LOBYTE(v1) = [v9 registerForTaskWithIdentifier:v10 usingQueue:v11 launchHandler:v12];
  _Block_release(v12);

  if ((v1 & 1) == 0)
  {
    static Logger.activity.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "[DailyWakeupTask] Error registering task", v15, 2u);
    }

    (*(v2 + 8))(v4, v17);
  }
}

void sub_1000141F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100014260()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v8 = *(v0 + 16);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 taskRequestForIdentifier:v9];

  if (v10)
  {

    static Logger.activity.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "[DailyWakeupTask] Task already scheduled", v13, 2u);
    }

    v7 = v5;
  }

  else
  {
    v14 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithIdentifier:v15];

    v17 = v16;
    [v17 setRequiresNetworkConnectivity:1];
    [v17 setRequiresExternalPower:0];
    [v17 setInterval:86400.0];
    [v17 setExpectedDuration:10.0];

    v22 = 0;
    if (![v8 submitTaskRequest:v17 error:&v22])
    {
      v21 = v22;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v18 = v22;
    static Logger.activity.getter();
    v11 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v11, v19, "[DailyWakeupTask] Task submitted", v20, 2u);
    }

    else
    {

      v11 = v17;
    }
  }

  (*(v2 + 8))(v7, v1);
}

id sub_1000145D4(void *a1, uint64_t a2)
{
  v4 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_100014C7C(0, 0, v6, &unk_10002AF30, v8);

  sub_100015228(v6);
  return [a1 setTaskCompleted];
}

uint64_t sub_1000146FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000147C8, 0, 0);
}

uint64_t sub_1000147C8(uint64_t a1)
{
  static Logger.activity.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DailyWakeupTask] Wakeup to flush metrics", v4, 2u);
  }

  v5 = v1[9];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[5];

  v9 = *(v7 + 8);
  v1[10] = v9;
  v9(v5, v6);
  v10 = *(v8 + 24);
  v1[11] = v10;

  return _swift_task_switch(sub_1000148DC, v10, 0);
}

uint64_t sub_1000148DC()
{
  v1 = type metadata accessor for LogKey();
  v2 = objc_allocWithZone(v1);
  v0[2].receiver = 0;
  swift_stdlib_random();
  v3 = &v2[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
  *v3 = (v0[2].receiver << 32) | 1;
  *(v3 + 1) = 0;
  v3[16] = 0;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v4 = objc_msgSendSuper2(v0 + 1, "init");
  v0[6].receiver = v4;
  v5 = swift_task_alloc();
  v0[6].super_class = v5;
  *v5 = v0;
  *(v5 + 1) = sub_1000149F0;

  return sub_10001ED00(v4);
}

uint64_t sub_1000149F0()
{
  v1 = *(*v0 + 88);

  return _swift_task_switch(sub_100014B00, v1, 0);
}

uint64_t sub_100014B00()
{

  return _swift_task_switch(sub_100014B68, 0, 0);
}

uint64_t sub_100014B68(uint64_t a1)
{
  static Logger.activity.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[DailyWakeupTask] Wakeup flush complete", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[8];
  v7 = v1[6];

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_100014C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100015290(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100015228(v11);
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

uint64_t sub_100014F1C()
{

  v1 = OBJC_IVAR____TtC28AppInstallationMetricsDaemon15DailyWakeupTask_bagService;
  v2 = type metadata accessor for BagService();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DailyWakeupTask(uint64_t a1)
{
  result = qword_100039BC0;
  if (!qword_100039BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001501C(uint64_t a1)
{
  result = type metadata accessor for BagService();
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

unint64_t sub_1000150C8()
{
  result = qword_100039C58;
  if (!qword_100039C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039C58);
  }

  return result;
}

uint64_t sub_10001511C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015134()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100015174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000D3C8;

  return sub_1000146FC(a1, v4, v5, v6);
}

uint64_t sub_100015228(uint64_t a1)
{
  v2 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015290(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015300()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100015338(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000D3C8;

  return sub_10001D8B8(a1, v4);
}

__uint64_t sub_1000153F4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100002AD8(&qword_100039D08, &qword_10002AF88);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v13 = &v33[-v12];
  __chkstk_darwin(v11);
  v40 = &v33[-v14];
  v15 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  result = os_transaction_get_timestamp();
  if (v15 < result)
  {
    __break(1u);
  }

  else
  {
    v17 = result;
    v37 = v10;
    v39 = v3;
    v18 = objc_opt_self();
    v19 = [v18 nanoseconds];
    sub_100015894();
    v20 = v40;
    Measurement.init(value:unit:)();
    static Logger.general.getter();
    (*(v7 + 16))(v13, v20, v6);

    v38 = v5;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = v2;
      v24 = v23;
      v35 = swift_slowAlloc();
      v41 = v35;
      *v24 = 33555202;
      *(v24 + 4) = v17;
      v34 = v22;
      *(v24 + 6) = 2080;
      *(v24 + 8) = sub_10001DC98(*(v1 + 24), *(v1 + 32), &v41);
      *(v24 + 16) = 2080;
      v25 = [v18 milliseconds];
      v26 = v37;
      Measurement<>.converted(to:)();

      v27 = Measurement<>.formatted()();
      v29 = v28;
      v30 = *(v7 + 8);
      v30(v26, v6);
      v30(v13, v6);
      v31 = sub_10001DC98(v27, v29, &v41);

      *(v24 + 18) = v31;
      _os_log_impl(&_mh_execute_header, v21, v34, "[TXN%hx] 🐏 Ending transaction (%s) (%s)", v24, 0x1Au);
      swift_arrayDestroy();

      (*(v39 + 8))(v38, v36);
      v30(v40, v6);
    }

    else
    {

      v32 = *(v7 + 8);
      v32(v13, v6);
      (*(v39 + 8))(v38, v2);
      v32(v40, v6);
    }

    swift_unknownObjectRelease();

    return v1;
  }

  return result;
}

uint64_t sub_10001583C()
{
  sub_1000153F4();

  return swift_deallocClassInstance();
}

unint64_t sub_100015894()
{
  result = qword_100039D10;
  if (!qword_100039D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100039D10);
  }

  return result;
}

void *sub_1000158E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[3] = StaticString.description.getter();
  v4[4] = v9;
  String.utf8CString.getter();
  v10 = os_transaction_create();

  if (v10)
  {
    v4[2] = v10;
    timestamp = os_transaction_get_timestamp();
    static Logger.general.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v24 = v6;
      v16 = v15;
      v17 = swift_slowAlloc();
      v23 = v5;
      v18 = v17;
      v25 = v17;
      *v16 = 33554946;
      *(v16 + 4) = timestamp;
      *(v16 + 6) = 2080;
      v19 = StaticString.description.getter();
      v21 = sub_10001DC98(v19, v20, &v25);

      *(v16 + 8) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "[TXN%hx] 🐏 Beginning transaction (%s)", v16, 0x10u);
      sub_100002B88(v18);

      (*(v24 + 8))(v8, v23);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015B1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v5;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_10002B0C8;
  *(v17 + 24) = v15;
  v18 = objc_opt_self();
  v19 = v5;

  sub_10001EA94(a1, a2);
  v20 = [v18 currentConnection];
  v21 = v20;
  if (v20)
  {
    [v20 auditToken];
    v27 = v32;
    v28 = v31;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  LOBYTE(v31) = v21 == 0;
  sub_100013DF4(v14, v12, &qword_1000395C0, &qword_10002AF20);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = "handleAppInstall";
  *(v22 + 40) = 16;
  *(v22 + 48) = 2;
  *(v22 + 56) = v19;
  v23 = v27;
  *(v22 + 64) = v28;
  *(v22 + 80) = v23;
  *(v22 + 96) = v31;
  *(v22 + 104) = &unk_10002B0D0;
  *(v22 + 112) = v17;
  v24 = ObjectType;
  *(v22 + 120) = v30;
  *(v22 + 128) = a4;
  *(v22 + 136) = v24;
  v25 = v19;

  sub_10001CE60(0, 0, v12, &unk_10002B0D8, v22);

  return sub_10000D6F8(v14, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100015DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = type metadata accessor for Logger();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  v9 = type metadata accessor for AppInstallationEvent();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_100015F28, 0, 0);
}

uint64_t sub_100015F28()
{
  v47 = v0;
  v1 = sub_100013BA4(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
  v2 = sub_100012C2C(&off_100035488);

  sub_10001E28C(&unk_1000354A8);
  if (v2)
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = type metadata accessor for LogKey();
    v8 = objc_allocWithZone(v7);
    *(v0 + 88) = 0;
    swift_stdlib_random();
    v9 = &v8[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
    *v9 = (*(v0 + 88) << 32) | 1;
    *(v9 + 1) = 0;
    v9[16] = 0;
    *(v0 + 56) = v8;
    *(v0 + 64) = v7;
    v10 = objc_msgSendSuper2((v0 + 56), "init");
    *(v0 + 256) = v10;
    *(v0 + 72) = v6;
    *(v0 + 80) = v5;
    *(v0 + 96) = v3;
    *(v0 + 104) = v0 + 72;
    sub_10001EA94(v6, v5);
    *(v0 + 112) = &type metadata for Data;
    *(v0 + 120) = v4;
    *(v0 + 128) = sub_10001EB3C();
    *(v0 + 136) = sub_10001EB90(&unk_100039DD0, &type metadata accessor for AppInstallationEvent, &protocol conformance descriptor for AppInstallationEvent);
    decodeXPCValues<each A, B>(from:)();
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v17 = *(v0 + 224);
    v18 = *(v0 + 232);
    sub_10000D80C(*(v0 + 72), *(v0 + 80));
    static Logger.general.getter();
    (*(v18 + 16))(v16, v15, v17);
    v19 = v10;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    log = v20;
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v26 = *(v0 + 216);
    v25 = *(v0 + 224);
    v28 = *(v0 + 200);
    v27 = *(v0 + 208);
    if (v22)
    {
      v44 = *(v0 + 200);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v29 = 138412546;
      *(v29 + 4) = v19;
      *v30 = v19;
      *(v29 + 12) = 2080;
      v31 = v19;
      v32 = AppInstallationEvent.bundleID.getter();
      v43 = v26;
      v34 = v33;
      v41 = v21;
      v37 = *(v24 + 8);
      v35 = v24 + 8;
      v36 = v37;
      v37(v23, v25);
      v38 = sub_10001DC98(v32, v34, &v46);

      *(v29 + 14) = v38;
      _os_log_impl(&_mh_execute_header, log, v41, "[%@] Adding install for bundleID: %s", v29, 0x16u);
      sub_10000D6F8(v30, &qword_100039DA0, &qword_10002A740);

      sub_100002B88(v42);

      (*(v27 + 8))(v43, v44);
    }

    else
    {

      v39 = *(v24 + 8);
      v35 = v24 + 8;
      v36 = v39;
      v39(v23, v25);
      (*(v27 + 8))(v26, v28);
    }

    *(v0 + 264) = v35;
    *(v0 + 272) = v36;
    *(v0 + 280) = *(*(*(v0 + 192) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);

    v40 = swift_task_alloc();
    *(v0 + 288) = v40;
    *v40 = v0;
    v40[1] = sub_100016458;

    return sub_100011DC0(v0 + 16);
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100016458()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[37] = v3;
  *v3 = v2;
  v3[1] = sub_1000165C8;
  v4 = v1[32];
  v5 = v1[31];

  return sub_1000040BC(v5, (v1 + 2), v4);
}

uint64_t sub_1000165C8()
{

  return _swift_task_switch(sub_1000166E0, 0, 0);
}

uint64_t sub_1000166E0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100016864(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = [objc_opt_self() currentConnection];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
    v19 = v22;
    v20 = v21;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  LOBYTE(v21) = v14 == 0;
  sub_100013DF4(v11, v9, &qword_1000395C0, &qword_10002AF20);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = "clearEvents";
  *(v15 + 40) = 11;
  *(v15 + 48) = 2;
  *(v15 + 56) = v2;
  v16 = v19;
  *(v15 + 64) = v20;
  *(v15 + 80) = v16;
  *(v15 + 96) = v21;
  *(v15 + 104) = &unk_10002B0A8;
  *(v15 + 112) = 0;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = ObjectType;
  v17 = v2;

  sub_10001CE60(0, 0, v9, &unk_10002B0B0, v15);

  return sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100016AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100016B68, 0, 0);
}

uint64_t sub_100016B68()
{
  v1 = sub_100013BA4(v0[2], v0[3], v0[4], v0[5]);
  v2 = sub_100012C2C(&off_1000354C8);

  sub_10001E28C(&unk_1000354E8);
  if (v2)
  {
    static Logger.general.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Clearing events no longer supported", v5, 2u);
    }

    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
  }

  else
  {
    v10 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for AppInstallationMetricsError.notAuthorized(_:), v10);
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100016DB0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = [objc_opt_self() currentConnection];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
    v19 = v22;
    v20 = v21;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  LOBYTE(v21) = v14 == 0;
  sub_100013DF4(v11, v9, &qword_1000395C0, &qword_10002AF20);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = "handlePing";
  *(v15 + 40) = 10;
  *(v15 + 48) = 2;
  *(v15 + 56) = v2;
  v16 = v19;
  *(v15 + 64) = v20;
  *(v15 + 80) = v16;
  *(v15 + 96) = v21;
  *(v15 + 104) = &unk_10002B078;
  *(v15 + 112) = 0;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = ObjectType;
  v17 = v2;

  sub_10001CE60(0, 0, v9, &unk_10002B088, v15);

  return sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100016FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000170B8, 0, 0);
}

uint64_t sub_1000170B8()
{
  v1 = sub_100013BA4(v0[3], v0[4], v0[5], v0[6]);
  v2 = sub_100012C2C(&off_100035508);

  sub_10001E28C(&unk_100035528);
  if (v2)
  {
    static Logger.general.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "ping", v5, 2u);
    }

    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[2];

    (*(v7 + 8))(v6, v8);
    *v9 = 1735290736;
    v9[1] = 0xE400000000000000;

    v10 = v0[1];
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_100017314(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1000173A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_10002B058;
  *(v13 + 24) = v11;
  v14 = objc_opt_self();
  v15 = v3;

  v16 = [v14 currentConnection];
  v17 = v16;
  if (v16)
  {
    [v16 auditToken];
    v23 = v28;
    v24 = v27;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  LOBYTE(v27) = v17 == 0;
  sub_100013DF4(v10, v8, &qword_1000395C0, &qword_10002AF20);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = "flush";
  *(v18 + 40) = 5;
  *(v18 + 48) = 2;
  *(v18 + 56) = v15;
  v19 = v23;
  *(v18 + 64) = v24;
  *(v18 + 80) = v19;
  *(v18 + 96) = v27;
  *(v18 + 104) = &unk_10002B068;
  *(v18 + 112) = v13;
  v20 = ObjectType;
  *(v18 + 120) = v26;
  *(v18 + 128) = a2;
  *(v18 + 136) = v20;
  v21 = v15;

  sub_10001CE60(0, 0, v8, &unk_10002B070, v18);

  return sub_10000D6F8(v10, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100017668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = type metadata accessor for Logger();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100017730, 0, 0);
}

uint64_t sub_100017730()
{
  v1 = sub_100013BA4(v0[5], v0[6], v0[7], v0[8]);
  v2 = sub_100012C2C(&off_100035548);

  sub_10001E28C(&unk_100035568);
  if (v2)
  {
    v3 = *(*(v0[9] + OBJC_IVAR____TtC28AppInstallationMetricsDaemon7Service_dependencies) + OBJC_IVAR____TtC28AppInstallationMetricsDaemon12Dependencies_eventManager);
    v0[13] = v3;

    return _swift_task_switch(sub_100017904, v3, 0);
  }

  else
  {
    v4 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for AppInstallationMetricsError.notAuthorized(_:), v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100017904()
{
  v1 = type metadata accessor for LogKey();
  v2 = objc_allocWithZone(v1);
  v0[2].receiver = 0;
  swift_stdlib_random();
  v3 = &v2[OBJC_IVAR____TtC28AppInstallationMetricsDaemon6LogKey_representation];
  *v3 = (v0[2].receiver << 32) | 1;
  *(v3 + 1) = 0;
  v3[16] = 0;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v4 = objc_msgSendSuper2(v0 + 1, "init");
  v0[7].receiver = v4;
  v5 = swift_task_alloc();
  v0[7].super_class = v5;
  *v5 = v0;
  *(v5 + 1) = sub_100017A18;

  return sub_10001ED00(v4);
}

uint64_t sub_100017A18()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_100017B28, v1, 0);
}

uint64_t sub_100017B28()
{

  return _swift_task_switch(sub_100017B98, 0, 0);
}

uint64_t sub_100017B98(uint64_t a1)
{
  static Logger.general.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "flush complete", v4, 2u);
  }

  v6 = v1[11];
  v5 = v1[12];
  v7 = v1[10];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_100017CD0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = [objc_opt_self() currentConnection];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
    v19 = v22;
    v20 = v21;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  LOBYTE(v21) = v14 == 0;
  sub_100013DF4(v11, v9, &qword_1000395C0, &qword_10002AF20);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = "handlePostImmediately";
  *(v15 + 40) = 21;
  *(v15 + 48) = 2;
  *(v15 + 56) = v2;
  v16 = v19;
  *(v15 + 64) = v20;
  *(v15 + 80) = v16;
  *(v15 + 96) = v21;
  *(v15 + 104) = &unk_10002B018;
  *(v15 + 112) = 0;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = ObjectType;
  v17 = v2;

  sub_10001CE60(0, 0, v9, &unk_10002B028, v15);

  return sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_100017F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100017FD4, 0, 0);
}

uint64_t sub_100017FD4()
{
  v1 = sub_100013BA4(v0[2], v0[3], v0[4], v0[5]);
  v2 = sub_100012C2C(&off_100035588);

  sub_10001E28C(&unk_1000355A8);
  if (v2)
  {
    static Logger.general.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Post no longer supported", v5, 2u);
    }

    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[6];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];
  }

  else
  {
    v10 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for AppInstallationMetricsError.notAuthorized(_:), v10);
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_10001821C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100002AD8(&qword_1000395C0, &qword_10002AF20);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = [objc_opt_self() currentConnection];
  v14 = v13;
  if (v13)
  {
    [v13 auditToken];
    v19 = v22;
    v20 = v21;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  LOBYTE(v21) = v14 == 0;
  sub_100013DF4(v11, v9, &qword_1000395C0, &qword_10002AF20);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = "getClientEvents";
  *(v15 + 40) = 15;
  *(v15 + 48) = 2;
  *(v15 + 56) = v2;
  v16 = v19;
  *(v15 + 64) = v20;
  *(v15 + 80) = v16;
  *(v15 + 96) = v21;
  *(v15 + 104) = &unk_10002AFC0;
  *(v15 + 112) = 0;
  *(v15 + 120) = a1;
  *(v15 + 128) = a2;
  *(v15 + 136) = ObjectType;
  v17 = v2;

  sub_10001CE60(0, 0, v9, &unk_10002AFD0, v15);

  return sub_10000D6F8(v11, &qword_1000395C0, &qword_10002AF20);
}

uint64_t sub_10001845C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100018524, 0, 0);
}

uint64_t sub_100018524()
{
  v1 = sub_100013BA4(v0[3], v0[4], v0[5], v0[6]);
  v2 = sub_100012C2C(&off_1000355C8);

  sub_10001E28C(&unk_1000355E8);
  if (v2)
  {
    static Logger.general.getter();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Installation Events no longer supported", v5, 2u);
    }

    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = v0[2];

    (*(v7 + 8))(v6, v8);
    *v9 = &_swiftEmptyArrayStorage;

    v10 = v0[1];
  }

  else
  {
    v11 = type metadata accessor for AppInstallationMetricsError();
    sub_10001EB90(&qword_100039B70, &type metadata accessor for AppInstallationMetricsError, &protocol conformance descriptor for AppInstallationMetricsError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for AppInstallationMetricsError.notAuthorized(_:), v11);
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_10001877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 112) = v13;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_100002AD8(&qword_100039D70, &qword_10002AFF0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_1000188D8, 0, 0);
}

uint64_t sub_1000188D8()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[18];
  v26 = v0[17];
  v27 = v0[21];
  v4 = v0[16];
  v6 = v1[8];
  v5 = v1[9];
  v23 = *(v1 + 6);
  v24 = *(v1 + 5);
  v25 = *(v1 + 7);
  v7 = *(v1 + 224);
  (*(v3 + 56))(v2, 1, 1);
  v8 = swift_task_alloc();
  v1[23] = v8;
  *(v8 + 16) = v24;
  *(v8 + 32) = v23;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v25;
  *(v8 + 88) = v4;
  type metadata accessor for LogActivity();
  v9 = swift_allocObject();
  v1[24] = v9;
  v10 = sub_100010170(v6, v7, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v10, (v1 + 5));
  swift_unknownObjectRelease();
  *(v9 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v11 = sub_1000158E0(v6, v5, v7);
  v1[25] = v11;
  sub_100013DF4(v2, v27, &qword_100039D70, &qword_10002AFF0);
  v12 = (*(v3 + 48))(v27, 1, v26);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = v1[20];
    v16 = v1[18];
    v15 = v1[19];
    v17 = v1[17];
    v18 = v1[8];
    v28 = v1[9];
    v19 = *(v1 + 224);
    (*(v16 + 32))(v14, v1[21], v17);
    (*(v16 + 16))(v15, v14, v17);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_100011144(v18, v28, v19, v15);
    (*(v16 + 8))(v14, v17);
  }

  v1[26] = v13;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v9;
  v1[3] = v11;
  v1[4] = v13;

  v20 = swift_task_alloc();
  v1[27] = v20;
  *v20 = v1;
  v20[1] = sub_100018C5C;
  v21 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v1 + 2, &unk_10002B038, v8, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}

uint64_t sub_100018C5C()
{

  if (v0)
  {

    v1 = sub_10001EBF8;
  }

  else
  {

    v1 = sub_10001EC88;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100018DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 112) = v13;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_100002AD8(&qword_100039D70, &qword_10002AFF0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100018F48, 0, 0);
}

uint64_t sub_100018F48()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[18];
  v26 = v0[17];
  v27 = v0[21];
  v4 = v0[16];
  v6 = v1[8];
  v5 = v1[9];
  v23 = *(v1 + 6);
  v24 = *(v1 + 5);
  v25 = *(v1 + 7);
  v7 = *(v1 + 224);
  (*(v3 + 56))(v2, 1, 1);
  v8 = swift_task_alloc();
  v1[23] = v8;
  *(v8 + 16) = v24;
  *(v8 + 32) = v23;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v25;
  *(v8 + 88) = v4;
  type metadata accessor for LogActivity();
  v9 = swift_allocObject();
  v1[24] = v9;
  v10 = sub_100010170(v6, v7, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v10, (v1 + 5));
  swift_unknownObjectRelease();
  *(v9 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v11 = sub_1000158E0(v6, v5, v7);
  v1[25] = v11;
  sub_100013DF4(v2, v27, &qword_100039D70, &qword_10002AFF0);
  v12 = (*(v3 + 48))(v27, 1, v26);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = v1[20];
    v16 = v1[18];
    v15 = v1[19];
    v17 = v1[17];
    v18 = v1[8];
    v28 = v1[9];
    v19 = *(v1 + 224);
    (*(v16 + 32))(v14, v1[21], v17);
    (*(v16 + 16))(v15, v14, v17);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_100011144(v18, v28, v19, v15);
    (*(v16 + 8))(v14, v17);
  }

  v1[26] = v13;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v9;
  v1[3] = v11;
  v1[4] = v13;

  v20 = swift_task_alloc();
  v1[27] = v20;
  *v20 = v1;
  v20[1] = sub_1000192CC;
  v21 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v1 + 2, &unk_10002B098, v8, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}

uint64_t sub_1000192CC()
{

  if (v0)
  {

    v1 = sub_10001955C;
  }

  else
  {

    v1 = sub_10001945C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10001945C()
{
  v1 = *(v0 + 176);

  sub_10000D6F8(v1, &qword_100039D70, &qword_10002AFF0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10001955C()
{
}

uint64_t sub_1000195F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 112) = v13;
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 224) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  *(v8 + 56) = a1;
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_100002AD8(&qword_100039D70, &qword_10002AFF0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_10001974C, 0, 0);
}

uint64_t sub_10001974C()
{
  v1 = v0;
  v2 = v0[22];
  v3 = v0[18];
  v26 = v0[17];
  v27 = v0[21];
  v4 = v0[16];
  v6 = v1[8];
  v5 = v1[9];
  v23 = *(v1 + 6);
  v24 = *(v1 + 5);
  v25 = *(v1 + 7);
  v7 = *(v1 + 224);
  (*(v3 + 56))(v2, 1, 1);
  v8 = swift_task_alloc();
  v1[23] = v8;
  *(v8 + 16) = v24;
  *(v8 + 32) = v23;
  *(v8 + 48) = v6;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v25;
  *(v8 + 88) = v4;
  type metadata accessor for LogActivity();
  v9 = swift_allocObject();
  v1[24] = v9;
  v10 = sub_100010170(v6, v7, &_mh_execute_header);
  v1[5] = 0;
  v1[6] = 0;
  os_activity_scope_enter(v10, (v1 + 5));
  swift_unknownObjectRelease();
  *(v9 + 16) = *(v1 + 5);
  type metadata accessor for Transaction();
  swift_allocObject();
  v11 = sub_1000158E0(v6, v5, v7);
  v1[25] = v11;
  sub_100013DF4(v2, v27, &qword_100039D70, &qword_10002AFF0);
  v12 = (*(v3 + 48))(v27, 1, v26);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = v1[20];
    v16 = v1[18];
    v15 = v1[19];
    v17 = v1[17];
    v18 = v1[8];
    v28 = v1[9];
    v19 = *(v1 + 224);
    (*(v16 + 32))(v14, v1[21], v17);
    (*(v16 + 16))(v15, v14, v17);
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_100011144(v18, v28, v19, v15);
    (*(v16 + 8))(v14, v17);
  }

  v1[26] = v13;
  if (qword_100039278 != -1)
  {
    swift_once();
  }

  v1[2] = v9;
  v1[3] = v11;
  v1[4] = v13;

  v20 = swift_task_alloc();
  v1[27] = v20;
  *v20 = v1;
  v20[1] = sub_100018C5C;
  v21 = v1[7];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v21, v1 + 2, &unk_10002B000, v8, 0, 0, 0xD00000000000002ALL, 0x800000010002C360);
}