void sub_100001208()
{
  sub_1000058DC(&qword_1000104D0, &qword_100006DB0);
  __chkstk_darwin();
  v1 = &aBlock - v0;
  sub_1000058DC(&qword_1000104D8, &qword_100006DB8);
  __chkstk_darwin();
  v3 = &aBlock - v2;
  sub_1000058DC(&qword_1000104E0, &qword_100006DC0);
  __chkstk_darwin();
  v5 = &aBlock - v4;
  sub_1000058DC(&qword_1000104E8, &unk_100006DC8);
  __chkstk_darwin();
  v7 = &aBlock - v6;
  if (getppid() == 1)
  {
    v8 = static os_log_type_t.default.getter();
    sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "ecosystemanalyticsd: Starting ecosystemanalyticsd", 49, 2, &_swiftEmptyArrayStorage);

    type metadata accessor for EcosystemAnalyticsd();
    v10 = swift_allocObject();
    sub_100001EEC();
    v11 = static os_log_type_t.default.getter();
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "ecosystemanalyticsd: Entering sandbox no-op on iOS", 50, 2, &_swiftEmptyArrayStorage);

    if (sub_100001A78())
    {
      v13 = static os_log_type_t.info.getter();
      v14 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "ecosystemanalyticsd: Checking if device is in static sampling group", 67, 2, &_swiftEmptyArrayStorage);

      v15 = String._bridgeToObjectiveC()();
      LODWORD(v13) = AnalyticsIsEventUsed();

      if (v13)
      {
        v16 = static os_log_type_t.default.getter();
        v17 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "ecosystemanalyticsd: Device is in static sampling group", 55, 2, &_swiftEmptyArrayStorage);

        v18 = swift_allocObject();
        *(v18 + 16) = 0xD00000000000002DLL;
        *(v18 + 24) = 0x8000000100007460;
        v19 = swift_allocObject();
        *(v19 + 16) = v18;
        *(v19 + 24) = 0;
        *(v19 + 32) = v10;
        v45 = sub_100006494;
        v46 = v19;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_100004C60;
        v44 = &unk_10000C6C8;
        v20 = _Block_copy(&aBlock);

        v21 = String.utf8CString.getter();
        xpc_activity_register((v21 + 32), XPC_ACTIVITY_CHECK_IN, v20);

        _Block_release(v20);
      }
    }

    if (sub_100001A78())
    {
      v22 = static os_log_type_t.info.getter();
      v23 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "ecosystemanalyticsd: Checking if device is in runtime sampling group", 68, 2, &_swiftEmptyArrayStorage);

      v24 = String._bridgeToObjectiveC()();
      LODWORD(v22) = AnalyticsIsEventUsed();

      if (v22)
      {
        v25 = static os_log_type_t.default.getter();
        v26 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v26, "ecosystemanalyticsd: Device is in runtime sampling group", 56, 2, &_swiftEmptyArrayStorage);

        v27 = swift_allocObject();
        *(v27 + 16) = 0xD00000000000002ELL;
        *(v27 + 24) = 0x8000000100007350;
        v28 = swift_allocObject();
        *(v28 + 16) = v27;
        *(v28 + 24) = 1;
        *(v28 + 32) = v10;
        v45 = sub_1000061C0;
        v46 = v28;
        aBlock = _NSConcreteStackBlock;
        v42 = 1107296256;
        v43 = sub_100004C60;
        v44 = &unk_10000C678;
        v29 = _Block_copy(&aBlock);

        v30 = String.utf8CString.getter();
        xpc_activity_register((v30 + 32), XPC_ACTIVITY_CHECK_IN, v29);

        _Block_release(v29);
      }
    }

    if (sub_100001A78())
    {
      v31 = static os_log_type_t.info.getter();
      v32 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v32, "ecosystemanalyticsd: Checking if device is in general sampling group", 68, 2, &_swiftEmptyArrayStorage);
    }

    dispatch_main();
  }

  v33 = static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v34 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Error: This service may only be launched by launchd.\n", 53, 2, &_swiftEmptyArrayStorage);

  v35 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
  v36 = type metadata accessor for TargetType();
  (*(*(v36 - 8) + 56))(v5, 1, 1, v36);
  v37 = enum case for AnalysisFailureType.xpcError(_:);
  v38 = type metadata accessor for AnalysisFailureType();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v3, v37, v38);
  (*(v39 + 56))(v3, 0, 1, v38);
  v40 = type metadata accessor for AnalysisFailureState();
  (*(*(v40 - 8) + 56))(v1, 1, 1, v40);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v1, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v3, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v5, &qword_1000104E0, &qword_100006DC0);
  sub_100006124(v7, &qword_1000104E8, &unk_100006DC8);
  exit(-1);
}

uint64_t sub_100001A78()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x64656C62616E65, 0xE700000000000000);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      v9 = static os_log_type_t.default.getter();
      sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100006D20;
      *(v10 + 56) = &type metadata for Bool;
      *(v10 + 64) = &protocol witness table for Bool;
      *(v10 + 32) = v8;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
      v11 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v11, "ecosystemanalyticsd: Detected enabled default: %d", v13);

      return v8;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_100001C54(char a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000060C8;
  *(v6 + 24) = v5;
  v9[4] = sub_1000060E4;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100001EC4;
  v9[3] = &unk_10000C600;
  v7 = _Block_copy(v9);

  dispatch_sync(v3, v7);
  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001DC8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v4, v3, "ecosystemanalyticsd: _memoryPressureDetected value set to: %{BOOL}d", v5, 8u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 17) = v2 & 1;
  }

  return result;
}

void *sub_100001EEC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin();
  v42 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_source.MemoryPressureEvent();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin();
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v51 = *(v49 - 8);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  v8 = type metadata accessor for DispatchQoS();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 1;
  v11 = sub_100006410(0, &qword_1000105D8, OS_dispatch_queue_ptr);
  v36 = "abled default: %d";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v12 = sub_100006374(&qword_1000105E0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v48 = sub_1000058DC(&qword_1000105E8, qword_100006DF8);
  v13 = sub_1000063BC(&qword_1000105F0, &qword_1000105E8, qword_100006DF8);
  v47 = v7;
  v35 = v12;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v14 = v51 + 104;
  v46 = *(v51 + 104);
  v32 = v6;
  v15 = v49;
  v46(v6);
  v51 = v14;
  v31 = v10;
  v33 = v11;
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = v50;
  v50[3] = v16;
  v36 = "tem.memoryPressureQueue";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  v34 = v13;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v32;
  v19 = v45;
  v20 = v46;
  (v46)(v32, v45, v15);
  v21 = v31;
  v17[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v49;
  v20(v18, v19, v49);
  v23 = v21;
  v50[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v36 = "tem-analytics.runtime-analysis";
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v46)(v18, v45, v22);
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v25 = v50;
  v50[6] = v24;
  sub_100006410(0, &qword_1000105F8, OS_dispatch_source_ptr);
  v26 = v37;
  static OS_dispatch_source.MemoryPressureEvent.procLimitWarn.getter();
  static OS_dispatch_source.makeMemoryPressureSource(eventMask:queue:)();
  (*(v38 + 8))(v26, v39);
  swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100006458;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006484;
  aBlock[3] = &unk_10000C7E0;
  v28 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v29 = v42;
  sub_100003188();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v28);
  (*(v43 + 8))(v29, v44);
  (*(v40 + 8))(v23, v41);

  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  return v25;
}

uint64_t sub_100002658(uint64_t a1)
{
  v33 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v35 - 8);
  __chkstk_darwin();
  v34 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin();
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058DC(&qword_1000104D0, &qword_100006DB0);
  __chkstk_darwin();
  v31 = &v31 - v4;
  sub_1000058DC(&qword_1000104D8, &qword_100006DB8);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_1000058DC(&qword_1000104E0, &qword_100006DC0);
  __chkstk_darwin();
  v8 = &v31 - v7;
  sub_1000058DC(&qword_1000104E8, &unk_100006DC8);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v16 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "ecosystemanalyticsd: Received low memory warning", 48, 2, &_swiftEmptyArrayStorage);

  static os_signpost_type_t.event.getter();
  v17 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v12 + 8))(v14, v11);
  v18 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = type metadata accessor for TargetType();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = enum case for AnalysisFailureType.memoryPressureError(_:);
  v21 = type metadata accessor for AnalysisFailureType();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v6, v20, v21);
  (*(v22 + 56))(v6, 0, 1, v21);
  v23 = type metadata accessor for AnalysisFailureState();
  v24 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v24, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v6, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v8, &qword_1000104E0, &qword_100006DC0);
  sub_100006124(v10, &qword_1000104E8, &unk_100006DC8);
  sub_100006410(0, &qword_1000105D8, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100006460;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006484;
  aBlock[3] = &unk_10000C808;
  v26 = _Block_copy(aBlock);

  v27 = v32;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000058DC(&qword_100010558, &unk_100006DD8);
  sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
  v29 = v34;
  v28 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v26);

  (*(v38 + 8))(v29, v28);
  return (*(v36 + 8))(v27, v37);
}

uint64_t sub_100002D90(uint64_t a1)
{
  sub_1000058DC(&qword_1000104D0, &qword_100006DB0);
  __chkstk_darwin();
  v2 = &v18 - v1;
  sub_1000058DC(&qword_1000104D8, &qword_100006DB8);
  __chkstk_darwin();
  v4 = &v18 - v3;
  sub_1000058DC(&qword_1000104E0, &qword_100006DC0);
  __chkstk_darwin();
  v6 = &v18 - v5;
  sub_1000058DC(&qword_1000104E8, &unk_100006DC8);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = static os_log_type_t.error.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v10 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "ecosystemanalyticsd: Setting memoryPressureDetected to true", 59, 2, &_swiftEmptyArrayStorage);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100001C54(1);
  }

  v11 = type metadata accessor for AnalysisTypeForCA();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = type metadata accessor for TargetType();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = enum case for AnalysisFailureType.memoryPressureError(_:);
  v14 = type metadata accessor for AnalysisFailureType();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v4, v13, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  v16 = type metadata accessor for AnalysisFailureState();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
  sub_100006124(v2, &qword_1000104D0, &qword_100006DB0);
  sub_100006124(v4, &qword_1000104D8, &qword_100006DB8);
  sub_100006124(v6, &qword_1000104E0, &qword_100006DC0);
  return sub_100006124(v8, &qword_1000104E8, &unk_100006DC8);
}

uint64_t sub_100003188()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000058DC(&qword_100010558, &unk_100006DD8);
  sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void sub_100003260(_xpc_activity_s *a1, uint64_t a2, int a3, void *a4)
{
  v83 = a4;
  v82 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000058DC(&qword_1000104D0, &qword_100006DB0);
  __chkstk_darwin();
  v81 = &v74 - v13;
  sub_1000058DC(&qword_1000104D8, &qword_100006DB8);
  __chkstk_darwin();
  v15 = &v74 - v14;
  sub_1000058DC(&qword_1000104E0, &qword_100006DC0);
  __chkstk_darwin();
  v17 = &v74 - v16;
  sub_1000058DC(&qword_1000104E8, &unk_100006DC8);
  __chkstk_darwin();
  v19 = &v74 - v18;
  if (xpc_activity_get_state(a1))
  {
    if (xpc_activity_get_state(a1) == 2)
    {
      v75 = v9;
      v76 = v11;
      v77 = v10;
      v78 = v7;
      v79 = v6;
      v20 = static os_log_type_t.default.getter();
      v74 = sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v21 = swift_allocObject();
      v80 = xmmword_100006D20;
      *(v21 + 16) = xmmword_100006D20;
      swift_beginAccess();
      v22 = *(a2 + 16);
      v23 = *(a2 + 24);
      *(v21 + 56) = &type metadata for String;
      v24 = sub_10000603C();
      *(v21 + 64) = v24;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

      v25 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v25, "ecosystemanalyticsd: Activity fired in RUN %@", 45, 2, v21);

      if (xpc_activity_should_defer(a1))
      {
        v26 = static os_log_type_t.default.getter();
        v27 = swift_allocObject();
        *(v27 + 16) = v80;
        swift_beginAccess();
        v29 = *(a2 + 16);
        v28 = *(a2 + 24);
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = v24;
        *(v27 + 32) = v29;
        *(v27 + 40) = v28;

        v30 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v30, "ecosystemanalyticsd: Activity should defer before doing anything %@", 67, 2, v27);

        if (!xpc_activity_set_state(a1, 3))
        {
          v31 = static os_log_type_t.fault.getter();
          v32 = swift_allocObject();
          *(v32 + 16) = v80;
          state = xpc_activity_get_state(a1);
          *(v32 + 56) = &type metadata for Int;
          *(v32 + 64) = &protocol witness table for Int;
          *(v32 + 32) = state;
          v34 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v34, "ecosystemanalyticsd: Unable to defer with state %#lx", v74);

          v35 = type metadata accessor for AnalysisTypeForCA();
          (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
          v36 = type metadata accessor for TargetType();
          (*(*(v36 - 8) + 56))(v17, 1, 1, v36);
          v37 = enum case for AnalysisFailureType.xpcError(_:);
          v38 = type metadata accessor for AnalysisFailureType();
          v39 = *(v38 - 8);
          (*(v39 + 104))(v15, v37, v38);
          (*(v39 + 56))(v15, 0, 1, v38);
          v86 = 0;
          v87 = 0xE000000000000000;
          _StringGuts.grow(_:)(29);

          v86 = 0xD00000000000001BLL;
          v87 = 0x80000001000075A0;
          v85 = xpc_activity_get_state(a1);
          v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v40);

          swift_unknownObjectRetain();
          v41 = v81;
          AnalysisFailureState.init(xpcActivity:)();
          v42 = type metadata accessor for AnalysisFailureState();
          (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
          static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();

          sub_100006124(v41, &qword_1000104D0, &qword_100006DB0);
          sub_100006124(v15, &qword_1000104D8, &qword_100006DB8);
          sub_100006124(v17, &qword_1000104E0, &qword_100006DC0);
          sub_100006124(v19, &qword_1000104E8, &unk_100006DC8);
        }
      }

      else
      {
        if (v82)
        {
          v56 = v75;
          v66 = v83;
          if (v82 == 1)
          {
            v67 = v83[5];
            v57 = swift_allocObject();
            v57[2] = v66;
            v57[3] = a2;
            v57[4] = a1;
            v92 = sub_100006268;
            v93 = v57;
            aBlock = _NSConcreteStackBlock;
            v89 = 1107296256;
            v69 = &unk_10000C768;
          }

          else
          {
            v67 = v83[6];
            v68 = swift_allocObject();
            v68[2] = v66;
            v68[3] = a2;
            v68[4] = a1;
            v92 = sub_100006214;
            v93 = v68;
            aBlock = _NSConcreteStackBlock;
            v89 = 1107296256;
            v69 = &unk_10000C718;
          }

          v90 = sub_100006484;
          v91 = v69;
          v70 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          v71 = v67;
          v72 = v84;
          static DispatchQoS.unspecified.getter();
          v86 = &_swiftEmptyArrayStorage;
          sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000058DC(&qword_100010558, &unk_100006DD8);
          sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
          v73 = v79;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v70);

          (*(v78 + 8))(v56, v73);
          (*(v76 + 8))(v72, v77);
        }

        else
        {
          v58 = v83;
          v59 = v83[4];
          v60 = swift_allocObject();
          v60[2] = v58;
          v60[3] = a2;
          v60[4] = a1;
          v92 = sub_1000062BC;
          v93 = v60;
          aBlock = _NSConcreteStackBlock;
          v89 = 1107296256;
          v90 = sub_100006484;
          v91 = &unk_10000C7B8;
          v61 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v62 = v59;

          v63 = v84;
          static DispatchQoS.unspecified.getter();
          v86 = &_swiftEmptyArrayStorage;
          sub_100006374(&qword_100010550, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1000058DC(&qword_100010558, &unk_100006DD8);
          sub_1000063BC(&qword_100010560, &qword_100010558, &unk_100006DD8);
          v64 = v75;
          v65 = v79;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v61);

          (*(v78 + 8))(v64, v65);
          (*(v76 + 8))(v63, v77);
        }
      }
    }

    else
    {
      v50 = static os_log_type_t.info.getter();
      sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_100006D30;
      v52 = xpc_activity_get_state(a1);
      *(v51 + 56) = &type metadata for Int;
      *(v51 + 64) = &protocol witness table for Int;
      *(v51 + 32) = v52;
      swift_beginAccess();
      v54 = *(a2 + 16);
      v53 = *(a2 + 24);
      *(v51 + 96) = &type metadata for String;
      *(v51 + 104) = sub_10000603C();
      *(v51 + 72) = v54;
      *(v51 + 80) = v53;
      sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

      v55 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v55, "ecosystemanalyticsd: Activity fired in neither CHECK_IN nor RUN: %d %@", 70, 2, v51);
    }
  }

  else
  {
    v43 = static os_log_type_t.info.getter();
    sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100006D20;
    swift_beginAccess();
    v46 = *(a2 + 16);
    v45 = *(a2 + 24);
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = sub_10000603C();
    *(v44 + 32) = v46;
    *(v44 + 40) = v45;
    sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

    v47 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v47, "ecosystemanalyticsd: Activity fired in CHECK_IN %@", 50, 2, v44);

    swift_beginAccess();
    v48 = *(a2 + 16);
    v49 = *(a2 + 24);

    sub_100003F7C(v48, v49, a1);
  }
}

void sub_100003F7C(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  sub_1000058DC(&qword_1000104D0, &qword_100006DB0);
  __chkstk_darwin();
  v41 = &v37 - v6;
  sub_1000058DC(&qword_1000104D8, &qword_100006DB8);
  __chkstk_darwin();
  v8 = &v37 - v7;
  sub_1000058DC(&qword_1000104E0, &qword_100006DC0);
  __chkstk_darwin();
  v10 = &v37 - v9;
  sub_1000058DC(&qword_1000104E8, &unk_100006DC8);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v14 = swift_allocObject();
  v39 = xmmword_100006D20;
  *(v14 + 16) = xmmword_100006D20;
  *(v14 + 56) = &type metadata for String;
  v38 = sub_10000603C();
  *(v14 + 64) = v38;
  v40 = a1;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);

  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v15, "ecosystemanalytiscd: Scheduling next report for %@", 50, 2, v14);

  v42 = a3;
  v16 = xpc_activity_copy_criteria(a3);
  if (!v16)
  {
    v22 = static os_log_type_t.error.getter();
    v23 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v23, "ecosystemanalytiscd: Failed to copy XPC criteria", 48, 2, &_swiftEmptyArrayStorage);

    v24 = type metadata accessor for AnalysisTypeForCA();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    v25 = type metadata accessor for TargetType();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    v26 = enum case for AnalysisFailureType.xpcError(_:);
    v27 = type metadata accessor for AnalysisFailureType();
    v28 = *(v27 - 8);
    (*(v28 + 104))(v8, v26, v27);
    (*(v28 + 56))(v8, 0, 1, v27);
    v29 = type metadata accessor for AnalysisFailureState();
    v30 = v41;
    (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
    static AnalysisFailure.send(analysisType:targetType:retries:targetPath:targetName:targetBundleID:targetBundleVersion:failureType:failureDescription:daemonState:)();
    sub_100006124(v30, &qword_1000104D0, &qword_100006DB0);
    sub_100006124(v8, &qword_1000104D8, &qword_100006DB8);
    sub_100006124(v10, &qword_1000104E0, &qword_100006DC0);
    sub_100006124(v12, &qword_1000104E8, &unk_100006DC8);
    return;
  }

  v17 = v16;
  v18 = sub_100004F64();
  v19 = static os_log_type_t.default.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100006D30;
  *(v20 + 56) = &type metadata for Int;
  *(v20 + 64) = &protocol witness table for Int;
  if (v18)
  {
    *(v20 + 32) = 301;
    *(v20 + 96) = &type metadata for Int;
    *(v20 + 104) = &protocol witness table for Int;
    *(v20 + 72) = 301;
    v21 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v21, "ecosystemanalytiscd: Development mode enabled. Setting activity to run in %ld seconds, with grace period: %d)", v37, v38);

    xpc_dictionary_set_string(v17, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    if (XPC_ACTIVITY_EXPECTED_DURATION)
    {
      xpc_dictionary_set_int64(v17, XPC_ACTIVITY_EXPECTED_DURATION, 60);
      xpc_dictionary_set_uint64(v17, XPC_ACTIVITY_DELAY, 0x12DuLL);
      xpc_dictionary_set_uint64(v17, XPC_ACTIVITY_GRACE_PERIOD, 0x12DuLL);
      xpc_activity_set_criteria(v42, v17);

      swift_unknownObjectRelease();
      return;
    }

    __break(1u);
    goto LABEL_18;
  }

  *(v20 + 32) = 604800;
  *(v20 + 96) = &type metadata for Int;
  *(v20 + 104) = &protocol witness table for Int;
  *(v20 + 72) = 86400;
  v31 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v31, "ecosystemanalytiscd: Setting activity to run in %ld seconds, with grace period: %d)", v37, v38);

  if (!XPC_ACTIVITY_EXPECTED_DURATION)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  xpc_dictionary_set_int64(v17, XPC_ACTIVITY_EXPECTED_DURATION, 60);
  xpc_dictionary_set_uint64(v17, XPC_ACTIVITY_DELAY, 0x93A80uLL);
  xpc_dictionary_set_uint64(v17, XPC_ACTIVITY_GRACE_PERIOD, 0x15180uLL);
  v32 = v40;
  if (v40 == 0xD00000000000002ELL && 0x8000000100007350 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
    {
LABEL_19:
      __break(1u);
      return;
    }

    xpc_dictionary_set_BOOL(v17, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
  }

  xpc_activity_set_criteria(v42, v17);
  v33 = static os_log_type_t.default.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v39;
  v35 = v38;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = v35;
  *(v34 + 32) = v32;
  *(v34 + 40) = a2;

  v42 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v42, "ecosystemanalytiscd: Scheduled next report for %@", 49, 2, v34);
  swift_unknownObjectRelease();

  v36 = v42;
}

uint64_t sub_100004730(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  v5 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "ecosystemanalyticsd: creating static_analysis transaction", 57, 2, &_swiftEmptyArrayStorage);

  os_transaction_create();
  v7 = static os_log_type_t.default.getter();
  v8 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    sub_1000058DC(&qword_1000105C8, &qword_100006DE8);
    v11 = String.init<A>(describing:)();
    v13 = sub_100005924(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v7, "ecosystemanalyticsd: performing static_analysis - %s", v9, 0xCu);
    sub_1000062C8(v10);
  }

  sub_100004CC0(v14);
  xpc_transaction_exit_clean();
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);

  sub_100003F7C(v15, v16, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100004918(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000495C(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  v5 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "ecosystemanalyticsd: creating runtime_analysis transaction", 58, 2, &_swiftEmptyArrayStorage);

  os_transaction_create();
  v7 = static os_log_type_t.default.getter();
  v8 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18[0] = v10;
    *v9 = 136315138;
    swift_unknownObjectRetain();
    sub_1000058DC(&qword_1000105C8, &qword_100006DE8);
    v11 = String.init<A>(describing:)();
    v13 = sub_100005924(v11, v12, v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v7, "ecosystemanalyticsd: performing runtime_analysis - %s", v9, 0xCu);
    sub_1000062C8(v10);
  }

  sub_10000537C(v14);
  xpc_transaction_exit_clean();
  swift_beginAccess();
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);

  sub_100003F7C(v15, v16, a3);
  swift_unknownObjectRelease();
}

uint64_t sub_100004B44(uint64_t a1, uint64_t a2, _xpc_activity_s *a3)
{
  v5 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "ecosystemanalyticsd: performing general_analysis", 48, 2, &_swiftEmptyArrayStorage);

  v7 = static os_log_type_t.default.getter();
  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "ecosystemanalyticsd: Performing general analysis", 48, 2, &_swiftEmptyArrayStorage);

  xpc_transaction_exit_clean();
  swift_beginAccess();
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);

  sub_100003F7C(v9, v10, a3);
}

uint64_t sub_100004C60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100004CC0(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "ecosystemanalyticsd: Performing static analysis", 47, 2, &_swiftEmptyArrayStorage);

  swift_allocObject();
  swift_weakInit();
  if (sub_100004F64())
  {
    sub_10000510C(0x7041636974617473, 0xED00006874615070, "ecosystemanalyticsd: Detected staticAppPath default, overriding behavior to analyze %@", 86);
    if (v3)
    {
      type metadata accessor for AnalysisCoordinator();
      v4 = static AnalysisCoordinator.staticallyAnalyzeAppPath(_:interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
LABEL_6:
      v6 = v4;

      goto LABEL_8;
    }

    sub_10000510C(0x614D636974617473, 0xEF687461506F6863, "ecosystemanalyticsd: Detected staticMachoPath default, overriding behavior to analyze %@", 88);
    if (v5)
    {
      type metadata accessor for AnalysisCoordinator();
      v4 = static AnalysisCoordinator.staticallyAnalyzeMachOPath(_:interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
      goto LABEL_6;
    }
  }

  type metadata accessor for AnalysisCoordinator();
  v6 = static AnalysisCoordinator.staticallyAnalyze(interruptCallback:sendEvents:coreSymbolication:printTostdout:)();
LABEL_8:
  v7 = static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100006D20;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v6;
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v9, "ecosystemanalyticsd: Completed static analysis, sent %d events", v11);
}

uint64_t sub_100004F64()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x6D706F6C65766564, 0xEB00000000746E65);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      if (v8)
      {
        v9 = static os_log_type_t.default.getter();
        sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
        v10 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "ecosystemanalyticsd: Detected development default, overriding behavior to run more frequently.", 94, 2, &_swiftEmptyArrayStorage);

        return 1;
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10000510C(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, ...)
{
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = [v9 dictionaryRepresentation];
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v11 + 16))
  {
    sub_100005ECC(a1, a2);
    v13 = v12;

    if (v13)
    {
      v27 = a3;
      v14 = [v8 standardUserDefaults];
      v15 = String._bridgeToObjectiveC()();
      v16 = [v14 stringForKey:v15];

      if (v16)
      {

        v17 = [v8 standardUserDefaults];
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 stringForKey:v18];

        if (v19)
        {
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v23 = static os_log_type_t.default.getter();
          sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_100006D20;
          *(v24 + 56) = &type metadata for String;
          *(v24 + 64) = sub_10000603C();
          *(v24 + 32) = v20;
          *(v24 + 40) = v22;
          sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
          v25 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v25, v27, a4, 2, v24);

          return v20;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_10000537C(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
  v2 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "ecosystemanalyticsd: Performing runtime analysis", 48, 2, &_swiftEmptyArrayStorage);

  swift_allocObject();
  swift_weakInit();
  if (sub_100004F64())
  {
    sub_1000055DC();
    v4 = v3;
    type metadata accessor for AnalysisCoordinator();
    if ((v4 & 0x100000000) == 0 && v4)
    {
      v5 = static AnalysisCoordinator.runtimeAnalyzePID(_:interruptCallback:sendEvents:printTostdout:)();
      goto LABEL_7;
    }
  }

  else
  {
    type metadata accessor for AnalysisCoordinator();
  }

  v5 = static AnalysisCoordinator.runtimeAnalyze(interruptCallback:sendEvents:printTostdout:)();
LABEL_7:
  v6 = v5;
  v7 = static os_log_type_t.default.getter();
  sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100006D20;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v6;
  v9 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v9, "ecosystemanalyticsd: Completed runtime analysis, sent %d events", v11);
}

uint64_t sub_100005558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OS_dispatch_queue.sync<A>(execute:)();

    return v3;
  }

  return result;
}

void sub_1000055DC()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = [v1 dictionaryRepresentation];
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v3 + 16))
  {
    sub_100005ECC(0x50656D69746E7572, 0xEA00000000006469);
    v5 = v4;

    if (v5)
    {
      v6 = [v0 standardUserDefaults];
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 integerForKey:v7];

      if (v8 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v8 <= 0x7FFFFFFF)
      {
        v9 = static os_log_type_t.default.getter();
        sub_1000058DC(&qword_1000104C0, &qword_100006DA8);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_100006D20;
        *(v10 + 56) = &type metadata for Int32;
        *(v10 + 64) = &protocol witness table for Int32;
        *(v10 + 32) = v8;
        sub_100006410(0, &qword_1000104B8, OS_os_log_ptr);
        v11 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v11, "ecosystemanalyticsd: Detected runtimePid default, overriding behavior to analyze %d", v12);

        return;
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1000057FC()
{

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100005870()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000058DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005924(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000059F0(v11, 0, 0, 1, a1, a2);
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
    sub_100006314(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000062C8(v11);
  return v7;
}

unint64_t sub_1000059F0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005AFC(a5, a6);
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

char *sub_100005AFC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005B48(a1, a2);
  sub_100005C78(&off_10000C560);
  return v3;
}

char *sub_100005B48(uint64_t a1, unint64_t a2)
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

  v6 = sub_100005D64(v5, 0);
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
        v7 = sub_100005D64(v10, 0);
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

uint64_t sub_100005C78(uint64_t result)
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

  result = sub_100005DD8(result, v11, 1, v3);
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

void *sub_100005D64(uint64_t a1, uint64_t a2)
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

  sub_1000058DC(&qword_1000105D0, &qword_100006DF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005DD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000058DC(&qword_1000105D0, &qword_100006DF0);
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

unint64_t sub_100005ECC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100005F44(a1, a2, v4);
}

unint64_t sub_100005F44(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000603C()
{
  result = qword_1000104C8;
  if (!qword_1000104C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C8);
  }

  return result;
}

uint64_t sub_100006090()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000610C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006124(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000058DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006184()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000061D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006220(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006274()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000062C8(void *a1)
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

uint64_t sub_100006314(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000063BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006220(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006410(uint64_t a1, unint64_t *a2, void *a3)
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