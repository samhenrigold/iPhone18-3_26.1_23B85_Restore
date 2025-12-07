int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_workloop.Attributes();
  __chkstk_darwin();
  v7 = stdout.getter();
  setlinebuf(v7);
  type metadata accessor for Daemon();
  qword_100010228 = swift_allocObject();
  sub_1000015CC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100001618();
  sub_100001670(&qword_1000100E0, &qword_100008068);
  sub_1000016B8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  qword_100010230 = OS_dispatch_workloop.init(label:attributes:autoreleaseFrequency:osWorkgroup:)();
  dispatch_activate(qword_100010230);
  v8 = objc_autoreleasePoolPush();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = qword_100010230;
  aBlock[4] = sub_100001764;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100001800;
  aBlock[3] = &unk_10000C5E8;
  v10 = _Block_copy(aBlock);

  dispatch_async_and_wait(v9, v10);
  _Block_release(v10);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    objc_autoreleasePoolPop(v8);
    dispatch_main();
  }

  __break(1u);
  return result;
}

unint64_t sub_1000015CC()
{
  result = qword_1000100D0;
  if (!qword_1000100D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000100D0);
  }

  return result;
}

unint64_t sub_100001618()
{
  result = qword_1000100D8;
  if (!qword_1000100D8)
  {
    type metadata accessor for OS_dispatch_workloop.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100D8);
  }

  return result;
}

uint64_t sub_100001670(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000016B8()
{
  result = qword_1000100E8;
  if (!qword_1000100E8)
  {
    sub_10000171C(&qword_1000100E0, &qword_100008068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000100E8);
  }

  return result;
}

uint64_t sub_10000171C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001764()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006B94(qword_100010230);
}

uint64_t sub_100001828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001840()
{
  sub_100001670(&qword_1000101B8, &qword_1000080A8);
  __chkstk_darwin();
  v1 = &v5 - v0;
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1000041E4(0, 0, v1, &unk_1000080B8, v3);
}

uint64_t sub_100001930()
{
  v1 = type metadata accessor for SystemStatus();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  sub_100001670(&qword_1000101C0, &qword_1000080C0);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  return _swift_task_switch(sub_100001A54, 0, 0);
}

uint64_t sub_100001A54()
{
  if (qword_1000100C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006F00(v1, qword_1000100F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Daemon][run] Initializing systemDB", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_100001B9C;

  return sub_100002A78();
}

uint64_t sub_100001B9C()
{

  return _swift_task_switch(sub_100001C98, 0, 0);
}

uint64_t sub_100001C98()
{
  v1 = v0[17];
  v0[19] = type metadata accessor for ServicesIntelligenceProvider();
  v0[20] = static ServicesIntelligenceProvider.shared.getter();
  v2 = type metadata accessor for RequestContext();
  v0[21] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[22] = v4;
  v0[23] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v8 = (&async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:) + async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:));
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_100001DB4;
  v6 = v0[17];

  return v8(v6);
}

uint64_t sub_100001DB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  sub_1000072BC(v4, &qword_1000101C0, &qword_1000080C0);

  if (v1)
  {
    v5 = sub_1000029D4;
  }

  else
  {
    v5 = sub_100001F1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100001F1C()
{
  (*(v0 + 176))(*(v0 + 128), 1, 1, *(v0 + 168));
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_100001FD4;
  v2 = *(v0 + 200);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);

  return static SystemDatabase.getSystemStatus(using:requestContext:)(v4, v2, v3);
}

uint64_t sub_100001FD4()
{
  v1 = *(*v0 + 128);

  sub_1000072BC(v1, &qword_1000101C0, &qword_1000080C0);

  return _swift_task_switch(sub_1000020FC, 0, 0);
}

uint64_t sub_1000020FC()
{
  v1 = *(v0[11] + 104);
  v1(v0[13], enum case for SystemStatus.ready(_:), v0[10]);
  sub_1000073AC(&qword_1000101C8, &type metadata accessor for SystemStatus, &protocol conformance descriptor for SystemStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(v5 + 8);
  v0[28] = v6;
  v0[29] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);

  if (v2)
  {
    goto LABEL_10;
  }

  v1(v0[12], enum case for SystemStatus.degraded(_:), v0[10]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = v0[12];
  v8 = v0[10];
  if (v0[6] == v0[8] && v0[7] == v0[9])
  {
    v6(v0[12], v0[10]);

LABEL_10:
    v10 = v0[22];
    v11 = v0[21];
    v12 = v0[15];
    v0[30] = static ServicesIntelligenceProvider.shared.getter();
    v10(v12, 1, 1, v11);
    v13 = swift_task_alloc();
    v0[31] = v13;
    *v13 = v0;
    v13[1] = sub_10000240C;
    v14 = v0[15];

    return ServicesIntelligenceProvider.refreshConfiguration(requestContext:)(v14);
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6(v7, v8);

  if (v9)
  {
    goto LABEL_10;
  }

  NSLog(_:_:)();

  return _swift_task_switch(sub_100002780, 0, 0);
}

uint64_t sub_10000240C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = *(v2 + 120);
  if (v0)
  {

    sub_1000072BC(v5, &qword_1000101C0, &qword_1000080C0);

    return _swift_task_switch(sub_1000025F8, 0, 0);
  }

  else
  {
    sub_1000072BC(v5, &qword_1000101C0, &qword_1000080C0);

    v6 = swift_task_alloc();
    *(v3 + 256) = v6;
    *v6 = v4;
    v6[1] = sub_100002684;

    return sub_1000032EC();
  }
}

uint64_t sub_1000025F8()
{
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_100002684;

  return sub_1000032EC();
}

uint64_t sub_100002684()
{

  return _swift_task_switch(sub_100002780, 0, 0);
}

uint64_t sub_100002780()
{
  NSLog(_:_:)();
  *(v0 + 264) = static ServicesIntelligenceProvider.shared.getter();
  sub_1000073AC(&qword_1000101D0, &type metadata accessor for ServicesIntelligenceProvider, &protocol conformance descriptor for ServicesIntelligenceProvider);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100002860, v2, v1);
}

uint64_t sub_100002860()
{
  dispatch thunk of ServicesIntelligenceProvider.shutdown()();

  return _swift_task_switch(sub_1000028C8, 0, 0);
}

uint64_t sub_1000028C8()
{
  v1 = v0[28];
  v2 = v0[14];
  v3 = v0[10];
  NSLog(_:_:)();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000029D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100002A78()
{
  sub_100001670(&qword_1000101C0, &qword_1000080C0);
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_100002B1C, 0, 0);
}

uint64_t sub_100002B1C()
{
  if (qword_1000100C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006F00(v1, qword_1000100F0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Daemon][initializeSystemDB] about to initialize", v4, 2u);
  }

  v5 = v0[7];

  NSLog(_:_:)();
  type metadata accessor for ServicesIntelligenceProvider();
  v0[8] = static ServicesIntelligenceProvider.shared.getter();
  v6 = type metadata accessor for RequestContext();
  v0[9] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[10] = v8;
  v0[11] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v5, 1, 1, v6);
  v12 = (&async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:) + async function pointer to dispatch thunk of ServicesIntelligenceProvider.getSystemDatabaseClient(requestContext:));
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_100002D10;
  v10 = v0[7];

  return v12(v10);
}

uint64_t sub_100002D10(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_1000072BC(v4, &qword_1000101C0, &qword_1000080C0);

  if (v1)
  {
    v5 = sub_100003104;
  }

  else
  {
    v5 = sub_100002E78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100002E78()
{
  (*(v0 + 80))(*(v0 + 48), 1, 1, *(v0 + 72));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100002F2C;
  v2 = *(v0 + 104);
  v3 = *(v0 + 48);

  return static SystemDatabase.initialize(using:requestContext:)(v2, v3);
}

uint64_t sub_100002F2C()
{
  v2 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  sub_1000072BC(v2, &qword_1000101C0, &qword_1000080C0);
  if (v0)
  {
    v3 = sub_1000031F4;
  }

  else
  {
    v3 = sub_10000306C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10000306C()
{
  NSLog(_:_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100003104()
{
  _StringGuts.grow(_:)(70);
  v1._object = 0x8000000100008320;
  v1._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v1);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  NSLog(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000031F4()
{

  _StringGuts.grow(_:)(70);
  v1._object = 0x8000000100008320;
  v1._countAndFlagsBits = 0xD000000000000044;
  String.append(_:)(v1);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  NSLog(_:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000032EC()
{
  v1 = sub_100001670(&qword_1000101D8, &qword_1000080D8);
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v2 = type metadata accessor for MetricsTopic();
  v0[26] = v2;
  v0[27] = *(v2 - 8);
  v0[28] = swift_task_alloc();
  v3 = type metadata accessor for Process();
  v0[29] = v3;
  v0[30] = *(v3 - 8);
  v0[31] = swift_task_alloc();

  return _swift_task_switch(sub_10000346C, 0, 0);
}

uint64_t sub_10000346C()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  *(v0 + 256) = [objc_opt_self() bagForProfile:v1 profileVersion:v2];

  v3 = static Process.amsMetricsProducer.getter();
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 240);
    sub_100006610(0, v4, 0);
    v6 = *(v5 + 16);
    v5 += 16;
    v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v37 = *(v5 + 56);
    v38 = v6;
    v35 = (v5 - 8);
    do
    {
      v8 = *(v0 + 248);
      v9 = *(v0 + 232);
      v38(v8, v7, v9);
      v10 = Process.bundleID.getter();
      v12 = v11;
      (*v35)(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100006610((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
      v7 += v37;
      --v4;
    }

    while (v4);
  }

  *(v0 + 264) = _swiftEmptyArrayStorage;
  v17 = _swiftEmptyArrayStorage[2];
  *(v0 + 272) = v17;
  if (v17)
  {
    v18 = *(v0 + 216);
    v19 = *(v0 + 192);
    v20 = enum case for MetricsTopic.platform(_:);
    *(v0 + 328) = enum case for MetricsTopic.platform(_:);
    *(v0 + 280) = 0;
    if (_swiftEmptyArrayStorage[2])
    {
      v21 = *(v0 + 256);
      v22 = *(v0 + 224);
      v23 = *(v0 + 208);
      v36 = *(v0 + 200);
      v34 = *(v0 + 184);
      *(v0 + 288) = _swiftEmptyArrayStorage[4];
      *(v0 + 296) = _swiftEmptyArrayStorage[5];
      v24 = objc_allocWithZone(AMSMetrics);
      swift_bridgeObjectRetain_n();
      v25 = v21;
      v26 = String._bridgeToObjectiveC()();

      v27 = [v24 initWithContainerID:v26 bag:v25];
      *(v0 + 304) = v27;

      (*(v18 + 104))(v22, v20, v23);
      MetricsTopic.rawValue.getter();
      (*(v18 + 8))(v22, v23);
      v28 = String._bridgeToObjectiveC()();

      v29 = [v27 flushTopic:v28];
      *(v0 + 312) = v29;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 168;
      *(v0 + 24) = sub_100003988;
      swift_continuation_init();
      *(v0 + 136) = v34;
      v30 = sub_100007198((v0 + 112));
      sub_100007364(0, &qword_1000101E0, NSNumber_ptr);
      sub_100001670(&qword_1000101E8, &qword_1000080E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v19 + 32))(v30, v36, v34);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100005DC8;
      *(v0 + 104) = &unk_10000C660;
      [v29 resultWithCompletion:?];
      (*(v19 + 8))(v30, v34);
      v16 = v0 + 16;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_await(v16);
  }

  else
  {
    v31 = *(v0 + 256);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_100003988()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {

    v2 = sub_100003FE8;
  }

  else
  {
    v2 = sub_100003AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003AAC()
{
  v38 = v0;
  v1 = *(v0 + 168);

  if (qword_1000100C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006F00(v2, qword_1000100F0);

  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  v8 = *(v0 + 304);
  if (v6)
  {
    v9 = *(v0 + 288);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v3;
    *v11 = v3;
    *(v10 + 12) = 2080;
    v13 = v3;
    v14 = sub_100006068(v9, v7, &v37);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Flushed %@ events from container: %s", v10, 0x16u);
    sub_1000072BC(v11, &qword_1000101F0, &qword_1000080E8);

    sub_100007270(v12);
  }

  else
  {
  }

  v16 = *(v0 + 280) + 1;
  if (v16 == *(v0 + 272))
  {
    v17 = *(v0 + 256);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    *(v0 + 280) = v16;
    v20 = *(v0 + 264);
    if (v16 >= *(v20 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = *(v0 + 328);
      v22 = *(v0 + 256);
      v24 = *(v0 + 216);
      v23 = *(v0 + 224);
      v25 = *(v0 + 208);
      v36 = *(v0 + 200);
      v26 = *(v0 + 192);
      v35 = *(v0 + 184);
      v27 = v20 + 16 * v16;
      *(v0 + 288) = *(v27 + 32);
      *(v0 + 296) = *(v27 + 40);
      v28 = objc_allocWithZone(AMSMetrics);
      swift_bridgeObjectRetain_n();
      v29 = v22;
      v30 = String._bridgeToObjectiveC()();

      v31 = [v28 initWithContainerID:v30 bag:v29];
      *(v0 + 304) = v31;

      (*(v24 + 104))(v23, v21, v25);
      MetricsTopic.rawValue.getter();
      (*(v24 + 8))(v23, v25);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v31 flushTopic:v32];
      *(v0 + 312) = v33;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 168;
      *(v0 + 24) = sub_100003988;
      swift_continuation_init();
      *(v0 + 136) = v35;
      v34 = sub_100007198((v0 + 112));
      sub_100007364(0, &qword_1000101E0, NSNumber_ptr);
      sub_100001670(&qword_1000101E8, &qword_1000080E0);
      CheckedContinuation.init(continuation:function:)();
      (*(v26 + 32))(v34, v36, v35);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_100005DC8;
      *(v0 + 104) = &unk_10000C660;
      [v33 resultWithCompletion:?];
      (*(v26 + 8))(v34, v35);
      v15 = v0 + 16;
    }

    return _swift_continuation_await(v15);
  }
}

uint64_t sub_100003FE8()
{
  v15 = v0;
  v1 = v0[39];
  v2 = v0[38];
  v3 = v0[32];
  swift_willThrow();

  if (qword_1000100C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006F00(v4, qword_1000100F0);
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
    v11 = sub_100006068(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error during flush metrics: %s", v7, 0xCu);
    sub_100007270(v8);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000041E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001670(&qword_1000101B8, &qword_1000080A8);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100007128(a3, v21 - v8);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_1000072BC(v9, &qword_1000101B8, &qword_1000080A8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1000072BC(a3, &qword_1000101B8, &qword_1000080A8);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000072BC(a3, &qword_1000101B8, &qword_1000080A8);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100004480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000044C4(void *a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  aBlock[4] = sub_1000076C0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004480;
  aBlock[3] = &unk_10000C818;
  v11 = _Block_copy(aBlock);
  v12 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000073AC(&qword_1000101A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001670(&qword_1000101A8, &qword_1000080A0);
  sub_1000073F4(&qword_1000101B0, &qword_1000101A8, &qword_1000080A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v15);
}

uint64_t sub_100004778(void *a1)
{
  sub_100001670(&qword_1000101B8, &qword_1000080A8);
  __chkstk_darwin();
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = a1;
  v6 = a1;
  sub_1000053D0(0, 0, v3, &unk_100008138, v5);
}

uint64_t sub_100004880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_100001670(&qword_1000101C0, &qword_1000080C0);
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();

  return _swift_task_switch(sub_100004928, 0, 0);
}

uint64_t sub_100004928()
{
  NSLog(_:_:)();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1000049D8;

  return sub_100002A78();
}

uint64_t sub_1000049D8()
{

  return _swift_task_switch(sub_100004AD4, 0, 0);
}

uint64_t sub_100004AD4()
{
  v1 = v0[4];
  v0[6] = type metadata accessor for ServicesIntelligenceProvider();
  v0[7] = static ServicesIntelligenceProvider.shared.getter();
  v2 = type metadata accessor for RequestContext();
  v0[8] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 56);
  v0[9] = v4;
  v0[10] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100004BDC;
  v6 = v0[4];

  return ServicesIntelligenceProvider.refreshConfiguration(requestContext:)(v6);
}

uint64_t sub_100004BDC()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {

    sub_1000072BC(v3, &qword_1000101C0, &qword_1000080C0);
    v4 = sub_100004D68;
  }

  else
  {
    sub_1000072BC(v3, &qword_1000101C0, &qword_1000080C0);

    v4 = sub_100004D84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100004D84(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[3];
  v1[12] = static ServicesIntelligenceProvider.shared.getter();
  v2(v4, 1, 1, v3);
  v5 = swift_task_alloc();
  v1[13] = v5;
  *v5 = v1;
  v5[1] = sub_100004E5C;
  v6 = v1[3];

  return ServicesIntelligenceProvider.refreshTreatments(requestContext:)(v6);
}

uint64_t sub_100004E5C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    sub_1000072BC(v5, &qword_1000101C0, &qword_1000080C0);

    return _swift_task_switch(sub_100005048, 0, 0);
  }

  else
  {
    sub_1000072BC(v5, &qword_1000101C0, &qword_1000080C0);

    v6 = swift_task_alloc();
    *(v3 + 112) = v6;
    *v6 = v4;
    v6[1] = sub_1000050D4;

    return sub_1000032EC();
  }
}

uint64_t sub_100005048()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1000050D4;

  return sub_1000032EC();
}

uint64_t sub_1000050D4()
{

  return _swift_task_switch(sub_1000051D0, 0, 0);
}

uint64_t sub_1000051D0()
{
  NSLog(_:_:)();
  *(v0 + 120) = static ServicesIntelligenceProvider.shared.getter();
  sub_1000073AC(&qword_1000101D0, &type metadata accessor for ServicesIntelligenceProvider, &protocol conformance descriptor for ServicesIntelligenceProvider);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000052B0, v2, v1);
}

uint64_t sub_1000052B0()
{
  dispatch thunk of ServicesIntelligenceProvider.shutdown()();

  return _swift_task_switch(sub_100005318, 0, 0);
}

uint64_t sub_100005318()
{
  v1 = *(v0 + 16);
  NSLog(_:_:)();

  [v1 setTaskCompleted];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000053D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100001670(&qword_1000101B8, &qword_1000080A8);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_100007128(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000072BC(v10, &qword_1000101B8, &qword_1000080A8);
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

      sub_1000072BC(a3, &qword_1000101B8, &qword_1000080A8);

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

  sub_1000072BC(a3, &qword_1000101B8, &qword_1000080A8);
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

void sub_1000056C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

const char *sub_100005728(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = XPC_EVENT_KEY_NAME.getter();
  result = xpc_dictionary_get_string(a1, v12);
  if (result)
  {
    v14 = String.init(cString:)();
    v21 = a2;
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1000074C8;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004480;
    aBlock[3] = &unk_10000C750;
    v18 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v22 = _swiftEmptyArrayStorage;
    sub_1000073AC(&qword_1000101A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v20 = v8;
    sub_100001670(&qword_1000101A8, &qword_1000080A0);
    sub_1000073F4(&qword_1000101B0, &qword_1000101A8, &qword_1000080A0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
  }

  return result;
}

uint64_t sub_100005A00(uint64_t a1, uint64_t a2)
{
  sub_100001670(&qword_1000101B8, &qword_1000080A8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;
  v7[5] = a2;

  sub_1000053D0(0, 0, v5, &unk_100008110, v7);
}

uint64_t sub_100005B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100005B30, 0, 0);
}

uint64_t sub_100005B30()
{
  v1 = v0[3];
  v2 = v0[2] == 0xD00000000000003BLL && 0x8000000100008550 == v1;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v0[2] == 0xD000000000000029 && 0x8000000100008590 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    NSLog(_:_:)();
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    _StringGuts.grow(_:)(64);
    v7._countAndFlagsBits = 0xD00000000000003ELL;
    v7._object = 0x80000001000085C0;
    String.append(_:)(v7);
    v8._countAndFlagsBits = v6;
    v8._object = v5;
    String.append(_:)(v8);
    NSLog(_:_:)();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_100005CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100005D54()
{
  v0 = type metadata accessor for Logger();
  sub_1000077BC(v0, qword_1000100F0);
  sub_100006F00(v0, qword_1000100F0);
  return Logger.init(subsystem:category:)();
}

void sub_100005DC8(uint64_t a1, void *a2, void *a3)
{
  sub_100007320((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100001670(&qword_1000101D8, &qword_1000080D8);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a2)
  {
    v6 = a2;
    sub_100001670(&qword_1000101D8, &qword_1000080D8);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005E78(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005F70;

  return v6(a1);
}

uint64_t sub_100005F70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100006068(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006134(v11, 0, 0, 1, a1, a2);
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
    sub_10000720C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007270(v11);
  return v7;
}

unint64_t sub_100006134(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006240(a5, a6);
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

void *sub_100006240(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000628C(a1, a2);
  sub_1000063BC(&off_10000C5C0);
  return v3;
}

void *sub_10000628C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000064A8(v5, 0);
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
        v7 = sub_1000064A8(v10, 0);
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

uint64_t sub_1000063BC(uint64_t result)
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

  result = sub_10000651C(result, v11, 1, v3);
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

void *sub_1000064A8(uint64_t a1, uint64_t a2)
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

  sub_100001670(&qword_1000101F8, &qword_1000080F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000651C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001670(&qword_1000101F8, &qword_1000080F0);
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

char *sub_100006610(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100006630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100006630(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001670(&qword_100010200, &qword_1000080F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000673C(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v18 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v17[1] = sub_100007364(0, &qword_100010208, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1000073AC(&qword_100010210, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100001670(&qword_100010218, &qword_100008100);
  sub_1000073F4(&qword_100010220, &qword_100010218, &qword_100008100);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  NSLog(_:_:)();
  v7 = [objc_opt_self() sharedScheduler];
  v8 = String._bridgeToObjectiveC()();
  v9 = swift_allocObject();
  v10 = v19;
  *(v9 + 16) = v19;
  v24 = sub_100007480;
  v25 = v9;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000056C0;
  v23 = &unk_10000C6B0;
  v11 = _Block_copy(&aBlock);
  v12 = v6;
  v13 = v10;

  [v7 registerForTaskWithIdentifier:v8 usingQueue:v12 launchHandler:v11];
  _Block_release(v11);

  NSLog(_:_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v24 = sub_100007488;
  v25 = v14;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100005CC0;
  v23 = &unk_10000C700;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v12, v15);
  _Block_release(v15);
}

uint64_t sub_100006B94(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v5 = *(v17 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000100C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006F00(v8, qword_1000100F0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Daemon][run] XPC & launch events setup", v11, 2u);
  }

  type metadata accessor for ServicesIntelligenceXPC.Server();
  static ServicesIntelligenceXPC.Server.shared.getter();
  dispatch thunk of ServicesIntelligenceXPC.Server.run()();

  sub_10000673C(a1, v12, v13);
  aBlock[4] = sub_100001840;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004480;
  aBlock[3] = &unk_10000C610;
  v14 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1000073AC(&qword_1000101A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100001670(&qword_1000101A8, &qword_1000080A0);
  sub_1000073F4(&qword_1000101B0, &qword_1000101A8, &qword_1000080A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v17);
}

uint64_t sub_100006F00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006F88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100007034;

  return sub_100001930();
}

uint64_t sub_100007034()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007128(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001670(&qword_1000101B8, &qword_1000080A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100007198(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000720C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007270(void *a1)
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

uint64_t sub_1000072BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001670(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_100007320(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007364(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000073AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000073F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000171C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007448()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007490()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000074D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007034;

  return sub_100005B10(a1, v4, v5, v7, v6);
}

uint64_t sub_1000075D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000783C;

  return sub_100005E78(a1, v4);
}

uint64_t sub_1000076C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007708(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000783C;

  return sub_100004880(a1, v4, v5, v6);
}

uint64_t *sub_1000077BC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}