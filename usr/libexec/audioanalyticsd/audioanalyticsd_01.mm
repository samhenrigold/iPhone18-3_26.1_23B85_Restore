void sub_100017AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  (*(a3 + 16))(a3);
}

uint64_t sub_100017B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v24 = *(v13 - 8);
  v25 = v13;
  __chkstk_darwin(v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(v6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  aBlock[4] = v22;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = v23;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v12, v10);
  (*(v24 + 8))(v15, v25);
}

uint64_t sub_100017E7C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static Double.now()();
    if (*(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) > v11)
    {
      v11 = *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);
    }

    *(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) = v11 + 1.0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v12, v13, "validate() called. { reporterID=%lld }", v14, 0xCu);
    }

    v15 = sub_100003D80(a2, 0, 0x65746164696C6176, 0xE800000000000000);
    sub_10001712C(&qword_100045488, &qword_100035FE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FA0;
    *(inited + 32) = 0x726574726F706572;
    *(inited + 40) = 0xEA00000000004449;
    if (v15)
    {
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:v15[2]];
      *(inited + 56) = 0x5465636976726573;
      *(inited + 64) = 0xEB00000000657079;
      v17 = *(v15 + 32);
    }

    else
    {
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithLongLong:0];
      *(inited + 56) = 0x5465636976726573;
      *(inited + 64) = 0xEB00000000657079;
      v17 = 0xFFFFLL;
    }

    *(inited + 72) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v17];
    v22 = sub_100017344(inited);
    swift_setDeallocating();
    sub_10001712C(&qword_100045490, &qword_100035FE8);
    swift_arrayDestroy();
    sub_10001E774(v22);
    v24 = v23;

    a3(0, v24);
  }

  else
  {
    static Logger.service.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "ClientServerInstance is gone. { action=validate }", v20, 2u);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1000182E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, v4, isa);
}

uint64_t sub_100018388(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TraceArgs();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TraceCode();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v36 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v14, v15, "destroySession() called. { reporterID=%lld }", v16, 0xCu);
    }

    v17 = sub_100003D80(a2, 0, 0x796F7274736564, 0xE700000000000000);
    if (v17)
    {
      v18 = v17;
      v33 = v7;
      v34 = v4;
      v35 = v3;
      v19 = *(v17 + 66);
      v20 = *(v17 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_100019A58;
      *(v22 + 24) = v21;
      aBlock[4] = sub_100002ED8;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB0;
      aBlock[3] = &unk_100041538;
      v23 = _Block_copy(aBlock);

      dispatch_sync(v20, v23);
      _Block_release(v23);
      LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

      if (v23)
      {
        __break(1u);
        return result;
      }

      swift_beginAccess();
      sub_100019A64(a2);
      swift_endAccess();

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = a2;
        _os_log_impl(&_mh_execute_header, v25, v26, "Removing from session list. { reporterID=%lld }", v27, 0xCu);
      }

      v28 = v37;
      v29 = v33;
      (*(v37 + 104))(v9, enum case for TraceCode.serverDestroy(_:), v33);
      static Utilities.positiveReporterID(_:)();
      default argument 1 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 2 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      default argument 3 of TraceArgs.init(arg1:arg2:arg3:arg4:)();
      TraceArgs.init(arg1:arg2:arg3:arg4:)();
      static Trace.post(_:args:)();
      (*(v34 + 8))(v6, v35);
      (*(v28 + 8))(v9, v29);
      sub_100008A00();
    }
  }

  else
  {
    static Logger.service.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "ClientServerInstance is gone. { action=destroySession }", v32, 2u);
    }

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_100018988(uint64_t a1, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  __chkstk_darwin(v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v6 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 36) = a3;
  *(v18 + 40) = v22;
  *(v18 + 48) = a5;
  aBlock[4] = sub_100019CE8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000416A0;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  v25 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v13, v11);
  (*(v14 + 8))(v16, v23);
}

void sub_100018C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  v41 = v9;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v13 = 134218498;
    *(v13 + 4) = a2;
    *(v13 + 12) = 2082;
    v14 = static Utilities.eventCategoryDescription(from:)();
    v16 = a2;
    v17 = a5;
    v18 = sub_100013120(v14, v15, &v42);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2082;
    v19 = static Utilities.eventTypeDescription(from:)();
    v21 = sub_100013120(v19, v20, &v42);

    *(v13 + 24) = v21;
    a5 = v17;
    a2 = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "requestMessage() called. { reporterID=%lld, category=%{public}s, type=%{public}s }", v13, 0x20u);
    swift_arrayDestroy();
  }

  if (sub_100003D80(a2, 0, 0x4D74736575716572, 0xEE00656761737365))
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Registering callback until message arrives.", v24, 2u);
    }

    sub_10002AD88(a5, a6, v41, v8);
  }

  else
  {
    v25 = a5;
    v26 = [objc_opt_self() mainBundle];
    v44._object = 0xE000000000000000;
    v27._countAndFlagsBits = 0x2064696C61766E49;
    v27._object = 0xEF6E6F6973736553;
    v28._object = 0x80000001000370B0;
    v28._countAndFlagsBits = 0xD000000000000016;
    v44._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v44);

    sub_10001712C(&qword_100045470, &qword_100035FC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v31;
    *(inited + 48) = v29;
    v32 = sub_100017358(inited);
    swift_setDeallocating();
    sub_100019C78(inited + 32);
    static Constants.machServiceName.getter();
    sub_10001E9D0(v32);

    v33 = objc_allocWithZone(NSError);
    v34 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v33 initWithDomain:v34 code:-1 userInfo:isa];

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = a2;
      _os_log_impl(&_mh_execute_header, v37, v38, "requestMessage(): Session does not exist. Returning nil. { reporterID=%lld }", v39, 0xCu);
    }

    v40 = v36;
    v25(v36, 0);
  }
}

void sub_100019218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
    if (a2)
    {
LABEL_3:
      v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6.super.isa = 0;
LABEL_6:
  isa = v6.super.isa;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1000192C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v4 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server) + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_100019C6C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041628;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100001C60(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void sub_1000195C0(uint64_t a1, uint64_t a2, void (*a3)(id, BOOL, void))
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v5, v6, "getTailspinSessionID() called. { reporterID=%lld }", v7, 0xCu);
  }

  if (static Constants.unknownReporterID.getter() == a2)
  {
    v8 = [objc_opt_self() mainBundle];
    v27._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0x2064696C61766E49;
    v9._object = 0xEF6E6F6973736553;
    v10._object = 0x8000000100037080;
    v10._countAndFlagsBits = 0xD000000000000024;
    v27._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v27);

    sub_10001712C(&qword_100045470, &qword_100035FC8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100035FB0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v13;
    *(inited + 48) = v11;
    v14 = sub_100017358(inited);
    swift_setDeallocating();
    sub_100019C78(inited + 32);
    static Constants.machServiceName.getter();
    sub_10001E9D0(v14);

    v15 = objc_allocWithZone(NSError);
    v16 = String._bridgeToObjectiveC()();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = [v15 initWithDomain:v16 code:-1 userInfo:isa];

    v19 = v18;
    a3(v18, 0, 0);
  }

  else
  {
    v24 = a3;
    v20 = static TailspinKeys.all.getter();
    v21 = v20 + 40;
    v25 = -*(v20 + 16);
    v22 = -1;
    while (1)
    {
      v23 = v25 + v22;
      if (v25 + v22 == -1)
      {
LABEL_10:

        v24(0, v23 == -1, 0);
        return;
      }

      if (++v22 >= *(v20 + 16))
      {
        break;
      }

      default argument 1 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      default argument 2 of static DefaultsUtilities.get<A>(key:applicationID:userName:)();
      static DefaultsUtilities.get<A>(key:applicationID:userName:)();

      if (v26 != 2)
      {
        v21 += 16;
        if (v26)
        {
          continue;
        }
      }

      goto LABEL_10;
    }

    __break(1u);
  }
}

void sub_1000199DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a4 + 16))(a4);
}

uint64_t sub_100019A64(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000043D4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100029D1C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_10002C75C(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_100019AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1000289A4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10002A250();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for FeatureInfo(0);
    sub_100019D24(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for FeatureState(0);
    v20 = *(v13 - 8);
    sub_100019D80(v12 + *(v20 + 72) * v7, a2);
    sub_10002CA9C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for FeatureState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_100019C78(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045478, &qword_100035FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019D24(uint64_t a1)
{
  v2 = type metadata accessor for FeatureInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100019D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100019E10()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 48) + ((v9 << 9) | (8 * v10)));
    type metadata accessor for OsTransactionHandler();
    static OsTransactionHandler.shared.getter();
    OsTransactionHandler.sessionStopped(for:)(v11);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_logger;
      v13 = type metadata accessor for Logger();
      (*(*(v13 - 8) + 8))(v1 + v12, v13);
      swift_unknownObjectRelease();
      v14 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_clientStartDate;
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 8))(v1 + v14, v15);

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100019FE4()
{
  sub_100019E10();

  return swift_deallocClassInstance();
}

uint64_t sub_10001A044(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10001A150()
{
  v1 = v0;
  v67 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v67 - 1);
  __chkstk_darwin(v67);
  v66 = (v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for DispatchQoS();
  v62 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v71 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v11 = *(v10 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v9 = v11;
  v12 = *(v7 + 104);
  LODWORD(v72) = enum case for DispatchPredicate.onQueue(_:);
  v73 = v7 + 104;
  v13 = v12;
  v12(v9);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v7 + 8);
  result = v15(v9, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v68 = v3;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  LODWORD(v64) = v18;
  v19 = os_log_type_enabled(v17, v18);
  v20 = &unk_100046000;
  v70 = v10;
  v63 = v5;
  if (!v19)
  {
    goto LABEL_7;
  }

  v61 = v17;
  v21 = swift_slowAlloc();
  v59 = swift_slowAlloc();
  v81 = v59;
  v60 = v21;
  *v21 = 136380675;
  v22 = *(v10 + v71);
  *v9 = v22;
  v13(v9, v72, v6);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = v15(v9, v6);
  if ((v22 & 1) == 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v24 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v10 = *(v1 + v24);
  v17 = *(v10 + 16);
  if (v17)
  {
    v25 = sub_1000092F0(*(v10 + 16), 0);
    v58 = sub_100009378(&aBlock, v25 + 4, v17, v10);
    v20 = v76;
    v57 = aBlock;
    v56[2] = v77;
    v56[1] = v78;
    v56[0] = v79;

    sub_10000750C(v57);
    if (v58 != v17)
    {
      __break(1u);
LABEL_7:

      v26 = v71;
      goto LABEL_9;
    }
  }

  v27 = Array.description.getter();
  v29 = v28;

  v30 = sub_100013120(v27, v29, &v81);

  v31 = v60;
  *(v60 + 1) = v30;
  v32 = v61;
  _os_log_impl(&_mh_execute_header, v61, v64, "destroyAllSessions() { sessionIDs=%{private}s }", v31, 0xCu);
  sub_10000AE7C(v59);

  v10 = v70;
  v26 = v71;
  v20 = &unk_100046000;
LABEL_9:
  v33 = *(v10 + v26);
  *v9 = v33;
  v13(v9, v72, v6);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  result = v15(v9, v6);
  if ((v33 & 1) == 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v35 = v20[35];
  swift_beginAccess();
  v36 = *(v1 + v35);
  v37 = *(v36 + 16);
  v69 = v1;
  if (!v37)
  {
    v41 = v66;
    v42 = v67;
    v38 = &_swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v38 = sub_1000092F0(v37, 0);
  v39 = sub_100009378(&aBlock, v38 + 4, v37, v36);
  v40 = aBlock;

  result = sub_10000750C(v40);
  if (v39 != v37)
  {
    goto LABEL_20;
  }

  v41 = v66;
  v42 = v67;
  v10 = v70;
LABEL_14:
  v64 = v38;
  v43 = v38[2];
  v44 = v63;
  v45 = v71;
  if (v43)
  {
    v46 = v64 + 4;
    v67 = &v77;
    v66 = (v65 + 1);
    v65 = (v62 + 8);
    do
    {
      v47 = *v46;
      v72 = v46 + 1;
      v73 = v43;
      v48 = v44;
      v49 = v42;
      v50 = *(v10 + v45);
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      *(v52 + 16) = v51;
      *(v52 + 24) = v47;
      v79 = sub_100019C5C;
      v80 = v52;
      aBlock = _NSConcreteStackBlock;
      v76 = 1107296256;
      v77 = sub_1000016B8;
      v78 = &unk_100041B28;
      v53 = _Block_copy(&aBlock);
      v54 = v50;

      static DispatchQoS.unspecified.getter();
      v74 = &_swiftEmptyArrayStorage;
      sub_10001B340(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10001712C(&unk_100045920, &qword_100035FC0);
      sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v42 = v49;
      v44 = v48;
      _Block_release(v53);

      v55 = v68;
      (*v66)(v41, v42);
      (*v65)(v44, v55);
      v10 = v70;

      v46 = v72;
      v45 = v71;
      v43 = v73 - 1;
    }

    while (v73 != 1);
  }
}

uint64_t sub_10001A9B8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_server);
  v78 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v6 = *(v80 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  *v5 = v6;
  v7 = *(v3 + 104);
  v77 = enum case for DispatchPredicate.onQueue(_:);
  v79 = v3 + 104;
  v76 = v7;
  v7(v5);
  v8 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v9 = *(v3 + 8);
  v81 = v3 + 8;
  v82 = v2;
  v75 = v9;
  result = v9(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v11 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_sessionsByReporterID;
  swift_beginAccess();
  v73 = v11;
  v12 = *(v1 + v11);
  v13 = *(v12 + 16);
  if (v13)
  {
    v74 = v5;
    v14 = sub_1000092F0(v13, 0);
    v15 = sub_100009378(&v84, v14 + 4, v13, v12);
    v16 = v84;

    result = sub_10000750C(v16);
    if (v15 != v13)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = v14;
    v5 = v74;
  }

  else
  {
    v17 = &_swiftEmptyArrayStorage;
  }

  v18 = *(v80 + v78);
  *v5 = v18;
  v19 = v82;
  v76(v5, v77, v82);
  v20 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = v75(v5, v19);
  if ((v18 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v21 = v17[2];
  v74 = v17;
  if (v21)
  {
    v22 = v17 + 4;
    v23 = &_swiftEmptyArrayStorage;
    do
    {
      v27 = *v22++;
      v26 = v27;
      v28 = sub_100003D80(v27, 0, 0x7669746341746567, 0xE900000000000065);
      if (v28)
      {
        v29 = *(v28 + 66);

        if (v29 == 1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10002CEC0(0, v23[2] + 1, 1);
            v23 = v84;
          }

          v25 = v23[2];
          v24 = v23[3];
          if (v25 >= v24 >> 1)
          {
            sub_10002CEC0((v24 > 1), v25 + 1, 1);
            v23 = v84;
          }

          v23[2] = v25 + 1;
          v23[v25 + 4] = v26;
        }
      }

      --v21;
    }

    while (v21);
  }

  else
  {
    v23 = &_swiftEmptyArrayStorage;
  }

  v31 = v23[2];

  if (v31)
  {
    return 0;
  }

  static Double.now()();
  if (*(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation) >= v32)
  {
    return 0;
  }

  swift_retain_n();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v33, v34))
  {

    return 1;
  }

  v71 = v34;
  v72 = v33;
  v35 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v83 = v70;
  *v35 = 136381443;
  *(v35 + 4) = sub_100013120(*(v1 + 24), *(v1 + 32), &v83);
  *(v35 + 12) = 1024;
  *(v35 + 14) = *(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  v74 = v35;
  *(v35 + 18) = 2048;
  v36 = *(v80 + v78);
  *v5 = v36;
  v37 = v82;
  v76(v5, v77, v82);
  v38 = v36;
  LOBYTE(v36) = _dispatchPreconditionTest(_:)();
  result = v75(v5, v37);
  if ((v36 & 1) == 0)
  {
    goto LABEL_50;
  }

  v39 = *(v73 + v1);
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = sub_1000092F0(*(v39 + 16), 0);
    v69 = sub_100009378(&v84, v41 + 4, v40, v39);
    v42 = v84;

    sub_10000750C(v42);
    if (v69 != v40)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v41 = &_swiftEmptyArrayStorage;
  }

  v43 = v41[2];

  v44 = v74;
  *(v74 + 20) = v43;

  *(v44 + 14) = 2048;
  v45 = *(v80 + v78);
  *v5 = v45;
  v46 = v82;
  v76(v5, v77, v82);
  v47 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  result = v75(v5, v46);
  if ((v45 & 1) == 0)
  {
    goto LABEL_51;
  }

  v48 = *(v73 + v1);
  v49 = *(v48 + 16);
  if (!v49)
  {
    v52 = &_swiftEmptyArrayStorage;
LABEL_33:
    v53 = *(v80 + v78);
    *v5 = v53;
    v54 = v82;
    v76(v5, v77, v82);
    v55 = v53;
    LOBYTE(v53) = _dispatchPreconditionTest(_:)();
    result = v75(v5, v54);
    if (v53)
    {
      v56 = v52[2];
      if (v56)
      {
        v57 = v52 + 4;
        v58 = &_swiftEmptyArrayStorage;
        do
        {
          v62 = *v57++;
          v61 = v62;
          v63 = sub_100003D80(v62, 0, 0x7669746341746567, 0xE900000000000065);
          if (v63)
          {
            v64 = *(v63 + 66);

            if (v64 == 1)
            {
              v65 = swift_isUniquelyReferenced_nonNull_native();
              v84 = v58;
              if ((v65 & 1) == 0)
              {
                sub_10002CEC0(0, v58[2] + 1, 1);
                v58 = v84;
              }

              v60 = v58[2];
              v59 = v58[3];
              if (v60 >= v59 >> 1)
              {
                sub_10002CEC0((v59 > 1), v60 + 1, 1);
                v58 = v84;
              }

              v58[2] = v60 + 1;
              v58[v60 + 4] = v61;
            }
          }

          --v56;
        }

        while (v56);
      }

      else
      {
        v58 = &_swiftEmptyArrayStorage;
      }

      v66 = v58[2];

      v67 = v74;
      *(v74 + 30) = v66;

      v68 = v72;
      _os_log_impl(&_mh_execute_header, v72, v71, "ClientServerInstance should be invalidated. { clientProcessName=%{private}s, pid=%d, sessionCount=%ld, activeSessions=%ld }", v67, 0x26u);
      sub_10000AE7C(v70);

      return 1;
    }

    goto LABEL_52;
  }

  v73 = sub_1000092F0(*(v48 + 16), 0);
  v50 = sub_100009378(&v84, v73 + 4, v49, v48);
  v51 = v84;

  result = sub_10000750C(v51);
  if (v50 == v49)
  {
    v52 = v73;
    goto LABEL_33;
  }

LABEL_53:
  __break(1u);
  return result;
}

Swift::Int sub_10001B1A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001B1FC(uint64_t a1)
{
  Hasher._combine(_:)(*(*v1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));

  return String.hash(into:)();
}

Swift::Int sub_10001B254(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001B2AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid) != *(*a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    return 0;
  }

  if (*(v2 + 24) == *(v3 + 24) && *(v2 + 32) == *(v3 + 32))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10001B340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001B390(uint64_t a1, uint64_t (*a2)(void *))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v6 = *(a1 + 36);
  }

  v26 = result;
  v27 = v6;
  v28 = v4 != 0;
  if (v4)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (v28)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v11 = v27;
  if (*(a1 + 36) != v27)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v26;
  if (v26 == 1 << *(a1 + 32))
  {
    return 1 << *(a1 + 32);
  }

  do
  {
    v25[0] = sub_1000079BC(v12, v11, v4 != 0, a1);
    v14 = a2(v25);

    if (v14)
    {
      break;
    }

    if (!v4)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v12 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v12 >> 6;
      v17 = *(a1 + 56 + 8 * (v12 >> 6));
      if (((v17 >> v12) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) == v11)
      {
        v18 = v17 & (-2 << (v12 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v16 << 6;
          v20 = v16 + 1;
          v21 = (a1 + 64 + 8 * v16);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              result = sub_100007BDC(v12, v11, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_28;
            }
          }

          result = sub_100007BDC(v12, v11, 0);
        }

LABEL_28:
        v24 = *(a1 + 36);
        v26 = v15;
        v27 = v24;
        v28 = 0;
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10001712C(&qword_100045990, &qword_1000360D8);
    v7 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v7(v25, 0);
LABEL_7:
    result = __CocoaSet.endIndex.getter();
    if (!v28)
    {
      goto LABEL_35;
    }

    v9 = result;
    v10 = v8;
    v12 = v26;
    v11 = v27;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100007BDC(v9, v10, 1);
  }

  while ((v13 & 1) == 0);
  return v12;
}

uint64_t sub_10001B670(uint64_t result, uint64_t a2, uint64_t (*a3)(void *))
{
  v6 = *result;
  v5 = *(result + 8);
  v30 = result;
  v7 = *(result + 16);
  v32 = *result;
  v33 = v5;
  v34 = v7;
  v8 = a2 & 0xC000000000000001;
  v29 = (a2 & 0xC000000000000001) != 0;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.endIndex.getter();
    if (v7)
    {
      v10 = result;
      v11 = v9;
      v12 = static __CocoaSet.Index.== infix(_:_:)();
      result = sub_100007BDC(v10, v11, 1);
      if ((v12 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (v7)
  {
    goto LABEL_38;
  }

  if (*(a2 + 36) != v5)
  {
    goto LABEL_36;
  }

  if (v6 == 1 << *(a2 + 32))
  {
    goto LABEL_35;
  }

LABEL_10:
  while (v8)
  {
    if (__CocoaSet.Index.handleBitPattern.getter())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    sub_10001712C(&qword_100045990, &qword_1000360D8);
    v18 = Set.Index._asCocoa.modify();
    __CocoaSet.formIndex(after:isUnique:)();
    v18(v31, 0);
    result = __CocoaSet.endIndex.getter();
    if (v34 != 1)
    {
      goto LABEL_37;
    }

    v20 = result;
    v21 = v19;
    v6 = v32;
    v5 = v33;
    v22 = static __CocoaSet.Index.== infix(_:_:)();
    result = sub_100007BDC(v20, v21, 1);
    if (v22)
    {
      v28 = 1;
LABEL_31:
      *v30 = v6;
      *(v30 + 8) = v5;
      *(v30 + 16) = v28;
      return result;
    }

LABEL_9:
    v31[0] = sub_1000079BC(v6, v5, v8 != 0, a2);
    v13 = a3(v31);

    if (v13)
    {
      v28 = v29;
      goto LABEL_31;
    }
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = 1 << *(a2 + 32);
    if (v6 < v14)
    {
      v15 = v6 >> 6;
      v16 = *(a2 + 56 + 8 * (v6 >> 6));
      if (((v16 >> v6) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a2 + 36) != v5)
      {
        goto LABEL_34;
      }

      v17 = v16 & (-2 << (v6 & 0x3F));
      if (v17)
      {
        v14 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (a2 + 64 + 8 * v15);
        while (v24 < (v14 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_100007BDC(v6, v5, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_27;
          }
        }

        result = sub_100007BDC(v6, v5, 0);
      }

LABEL_27:
      v5 = *(a2 + 36);
      v32 = v14;
      v33 = v5;
      v34 = 0;
      if (v14 == 1 << *(a2 + 32))
      {
        v28 = 0;
        v6 = v14;
        goto LABEL_31;
      }

      v6 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id sub_10001B9A0(void *a1, uint64_t a2)
{

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136380675;
    *(v6 + 4) = sub_100013120(*(a2 + 56), *(a2 + 64), &v10);
    _os_log_impl(&_mh_execute_header, v4, v5, "ScheduledActivity { activity=%{private}s }", v6, 0xCu);
    sub_10000AE7C(v7);
  }

  sub_10001C428(v8);

  return [a1 setTaskCompleted];
}

void sub_10001BACC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

NSObject *sub_10001BB34(uint64_t a1, char *a2, char *a3)
{
  v6 = objc_allocWithZone(MAAssetQuery);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithType:v7];

  if (!v8)
  {
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v12, "Failed to create query", v13, 2u);
    }

    goto LABEL_19;
  }

  [v8 returnTypes:a1];
  [v8 setDoNotBlockBeforeFirstUnlock:1];
  if ([v8 queryMetaDataSync]== 5)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Missing entitlement!", v11, 2u);
LABEL_17:
    }

LABEL_18:

LABEL_19:
    return 0;
  }

  v14 = [v8 results];
  if (!v14)
  {

    v9 = Logger.logObject.getter();
    LOBYTE(v19) = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_100013120(a2, a3, &v23);
    v22 = "query.results is nil { errorNote=%{private}s }";
LABEL_16:
    _os_log_impl(&_mh_execute_header, v9, v19, v22, v20, 0xCu);
    sub_10000AE7C(v21);

    goto LABEL_17;
  }

  result = [v8 results];
  if (result)
  {
    v16 = result;
    sub_10001C3DC();
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v17 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v18)
    {
      return v8;
    }

    v9 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v9, v19))
    {
      goto LABEL_18;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *v20 = 136380675;
    *(v20 + 4) = sub_100013120(a2, a3, &v23);
    v22 = "query.results.isEmpty! { errorNote=%{private}s }";
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MobileAssetsHandler.getMobileAssetsConfigPath()()
{
  v0 = type metadata accessor for URL.DirectoryHint();
  v1 = *&v0[-1].cb;
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v41 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  countAndFlagsBits = sub_10001BB34(1, 0xD000000000000011, 0x8000000100037350);
  if (!countAndFlagsBits)
  {
    goto LABEL_27;
  }

  v48 = v7;
  v18 = countAndFlagsBits;
  v19 = [countAndFlagsBits results];

  if (!v19)
  {
LABEL_26:
    countAndFlagsBits = 0;
LABEL_27:
    object = 0;
    goto LABEL_28;
  }

  v45 = v16;
  sub_10001C3DC();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
LABEL_25:

    goto LABEL_26;
  }

LABEL_5:
  v41 = v14;
  v42 = v3;
  v46 = v11;
  v47 = v10;
  v43 = v1;
  v44 = v0;
  v14 = 0;
  v1 = v20 & 0xC000000000000001;
  v10 = v20 & 0xFFFFFFFFFFFFFF8;
  v3 = &OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_;
  v0 = &OBJC_PROTOCOL____TtP15audioanalyticsd14ServerProtocol_;
  while (1)
  {
    if (v1)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v22 = *(v20 + 8 * v14 + 32);
    }

    v23 = v22;
    v11 = (v14 + 1);
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ([v22 wasLocal] && objc_msgSend(v23, "state") == 2)
    {
      break;
    }

    ++v14;
    if (v11 == v21)
    {

      (*(v46 + 7))(v9, 1, 1, v47);
LABEL_20:
      sub_10001E098(v9);
      goto LABEL_26;
    }
  }

  v24 = [v23 getLocalUrl];

  if (v24)
  {
    v25 = v48;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = v46;
    v27 = *(v46 + 7);
    v28 = v25;
    v29 = 0;
  }

  else
  {
    v26 = v46;
    v27 = *(v46 + 7);
    v25 = v48;
    v28 = v48;
    v29 = 1;
  }

  v30 = v47;
  v27(v28, v29, 1, v47);
  v32 = v43;
  v31 = v44;
  v34 = v41;
  v33 = v42;
  sub_10001E028(v25, v9);
  if ((*(v26 + 6))(v9, 1, v30) == 1)
  {
    goto LABEL_20;
  }

  v35 = v45;
  (*(v26 + 4))(v45, v9, v30);
  type metadata accessor for Config();
  v49 = static Config.distributedConfigName.getter();
  v50 = v36;
  (*(v32 + 104))(v33, enum case for URL.DirectoryHint.inferFromPath(_:), v31);
  sub_10001E100();
  URL.appending<A>(component:directoryHint:)();
  (*(v32 + 8))(v33, v31);

  v37 = URL.path(percentEncoded:)(0);
  v38 = *(v26 + 1);
  v38(v34, v30);
  v38(v35, v30);
  object = v37._object;
  countAndFlagsBits = v37._countAndFlagsBits;
LABEL_28:
  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

unint64_t sub_10001C3DC()
{
  result = qword_1000455B0;
  if (!qword_1000455B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000455B0);
  }

  return result;
}

void sub_10001C428(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating assets.", v5, 2u);
  }

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_7;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v19[0] = v9;
  *v8 = 136380675;
  v10 = [*(v2 + 32) tightSummaryIncludingAdditional:{1, v19[0]}];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_100013120(v11, v13, v19);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Options summary. { summary=%{private}s }", v8, 0xCu);
    sub_10000AE7C(v9);

LABEL_7:

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = *(v2 + 32);
    v19[4] = sub_10001E26C;
    v19[5] = v2;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_10001DE2C;
    v19[3] = &unk_100041B50;
    v18 = _Block_copy(v19);

    [v15 startCatalogDownload:v16 options:v17 then:v18];
    _Block_release(v18);

    return;
  }

  __break(1u);
}

void sub_10001C6BC(uint64_t a1, uint64_t a2)
{
  v137 = type metadata accessor for URL();
  v4 = *(v137 - 8);
  v5 = __chkstk_darwin(v137);
  v129 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v128 = &v121 - v8;
  v9 = __chkstk_darwin(v7);
  v124 = &v121 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v121 - v12;
  __chkstk_darwin(v11);
  v14 = &v121 - v13;
  v15 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v14;
    v20 = a2;
    v21 = swift_slowAlloc();
    v143 = a1;
    aBlock = v21;
    *v18 = 136380675;
    type metadata accessor for MADownloadResult(0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100013120(v22, v23, &aBlock);

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got the download metadata { reply=%{private}s }", v18, 0xCu);
    sub_10000AE7C(v21);
    a2 = v20;
    v14 = v19;
  }

  v25 = sub_10001BB34(4, 0xD00000000000001CLL, 0x8000000100037400);
  if (!v25)
  {
    return;
  }

  v26 = v25;
  v27 = [v25 results];
  if (!v27)
  {
    goto LABEL_61;
  }

  v28 = v27;
  sub_10001C3DC();
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v122 = v26;
  if (v29 >> 62)
  {
LABEL_50:
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
      goto LABEL_7;
    }

LABEL_51:

    return;
  }

  v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_51;
  }

LABEL_7:
  v32 = 0;
  v141 = v29 & 0xC000000000000001;
  v132 = v29 & 0xFFFFFFFFFFFFFF8;
  v134 = v4 + 1;
  v126 = v4 + 4;
  v125 = &v146;
  *&v30 = 136381187;
  v133 = v30;
  *&v30 = 136380675;
  v131 = v30;
  *&v30 = 136380931;
  v127 = v30;
  v138 = a2;
  v130 = v14;
  v139 = v15;
  v135 = v31;
  v136 = v29;
  while (1)
  {
    if (v141)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_48;
      }
    }

    else
    {
      if (v32 >= *(v132 + 16))
      {
        goto LABEL_49;
      }

      v33 = *(v29 + 8 * v32 + 32);
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v142 = v34;
    v4 = v33;
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v35, v36))
    {

      goto LABEL_22;
    }

    v140 = v32;
    v37 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v37 = v133;
    v38 = [v4 assetType];

    if (!v38)
    {
      goto LABEL_54;
    }

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100013120(v39, v41, &aBlock);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2081;
    v43 = [v4 assetId];

    if (!v43)
    {
      break;
    }

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = sub_100013120(v44, v46, &aBlock);

    *(v37 + 14) = v47;
    *(v37 + 22) = 2081;
    v48 = [v4 assetServerUrl];

    if (!v48)
    {
      goto LABEL_55;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = URL.absoluteString.getter();
    v51 = v50;
    (v134->isa)(v14, v137);
    v52 = sub_100013120(v49, v51, &aBlock);

    *(v37 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v35, v36, "Found asset to download. { assetType=%{private}s, assetId=%{private}s, url=%{private}s }", v37, 0x20u);
    swift_arrayDestroy();

    a2 = v138;
    v15 = v139;
    v31 = v135;
    v29 = v136;
    v32 = v140;
LABEL_22:
    static Double.now()();
    v54 = v53;
    v55 = [v4 state];
    if (v55 == 4)
    {

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = v29;
        v94 = v31;
        v95 = v14;
        v96 = a2;
        v97 = swift_slowAlloc();
        aBlock = v97;
        *v92 = v131;
        *(v92 + 4) = sub_100013120(*(v96 + 40), *(v96 + 48), &aBlock);
        _os_log_impl(&_mh_execute_header, v90, v91, "Downloading { assetType=%{private}s }", v92, 0xCu);
        sub_10000AE7C(v97);
        a2 = v96;
        v14 = v95;
        v31 = v94;
        v29 = v93;
        v15 = v139;
      }

      goto LABEL_9;
    }

    if (v55 == 2)
    {
      v58 = v4;
      v4 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v4, v78))
      {
        goto LABEL_43;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      aBlock = v80;
      *v79 = v131;
      v81 = [v58 getLocalUrl];

      if (!v81)
      {
        goto LABEL_56;
      }

      v82 = v129;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v83 = v128;
      v84 = v82;
      v85 = v137;
      (v126->isa)(v128, v84, v137);
      sub_10001E274();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (v134->isa)(v83, v85);
      v89 = sub_100013120(v86, v88, &aBlock);

      *(v79 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v4, v78, "Installed { assetType=%{private}s }", v79, 0xCu);
      sub_10000AE7C(v80);

      v14 = v130;
      v15 = v139;
LABEL_42:
      v31 = v135;
      v29 = v136;
LABEL_44:
      a2 = v138;
      goto LABEL_9;
    }

    if (v55 != 1)
    {
      v98 = v4;

      v99 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v99, v4))
      {
        v100 = swift_slowAlloc();
        v101 = v29;
        v102 = v31;
        v103 = v14;
        v104 = a2;
        v105 = swift_slowAlloc();
        aBlock = v105;
        *v100 = v127;
        *(v100 + 4) = sub_100013120(*(v104 + 40), *(v104 + 48), &aBlock);
        *(v100 + 12) = 2049;
        *(v100 + 14) = [v98 state];

        _os_log_impl(&_mh_execute_header, v99, v4, "Unknown asset state { assetType=%{private}s, state=%{private}ld }", v100, 0x16u);
        sub_10000AE7C(v105);
        a2 = v104;
        v14 = v103;
        v31 = v102;
        v29 = v101;
        v15 = v139;
      }

      else
      {
      }

      goto LABEL_9;
    }

    v56 = [v4 nonUserInitiatedDownloadsAllowed];
    v57 = v4;
    v58 = v57;
    if (!v56)
    {
      v4 = Logger.logObject.getter();
      v106 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        aBlock = v108;
        *v107 = v131;
        v109 = [v58 assetServerUrl];

        if (!v109)
        {
          goto LABEL_57;
        }

        v110 = v124;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v111 = URL.absoluteString.getter();
        v113 = v112;
        (v134->isa)(v110, v137);
        v114 = sub_100013120(v111, v113, &aBlock);

        *(v107 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v4, v106, "Cannot download asset, as nonUserInitiatedDownloadsAllowed is false. { url=%{private}s }", v107, 0xCu);
        sub_10000AE7C(v108);

        v14 = v130;
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_44;
    }

    v4 = v57;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v61 = v133;
      v62 = [v4 assetType];

      if (!v62)
      {
        goto LABEL_60;
      }

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_100013120(v63, v65, &aBlock);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2081;
      v67 = [v4 assetId];

      if (!v67)
      {
        goto LABEL_59;
      }

      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v70 = v69;

      v71 = sub_100013120(v68, v70, &aBlock);

      *(v61 + 14) = v71;
      *(v61 + 22) = 2081;
      v72 = [v4 assetServerUrl];

      if (!v72)
      {
        goto LABEL_58;
      }

      v73 = v123;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = URL.absoluteString.getter();
      v76 = v75;
      (v134->isa)(v73, v137);
      v77 = sub_100013120(v74, v76, &aBlock);

      *(v61 + 24) = v77;
      _os_log_impl(&_mh_execute_header, v59, v60, "Downloading asset. { assetType=%{private}s, assetId=%{private}s, url=%{private}s }", v61, 0x20u);
      swift_arrayDestroy();

      a2 = v138;
      v15 = v139;
      v31 = v135;
      v29 = v136;
    }

    else
    {
    }

    v115 = swift_allocObject();
    v115[2] = a2;
    v115[3] = v54;
    v115[4] = v4;
    v148 = sub_10001E2CC;
    v149 = v115;
    aBlock = _NSConcreteStackBlock;
    v145 = 1107296256;
    v146 = sub_10001D980;
    v147 = &unk_100041BA0;
    v116 = _Block_copy(&aBlock);
    v117 = v4;

    [v117 attachProgressCallBack:v116];
    _Block_release(v116);
    v118 = *(a2 + 32);
    v119 = swift_allocObject();
    *(v119 + 16) = v117;
    *(v119 + 24) = a2;
    v148 = sub_10001E2DC;
    v149 = v119;
    aBlock = _NSConcreteStackBlock;
    v145 = 1107296256;
    v146 = sub_10001DE2C;
    v147 = &unk_100041BF0;
    v4 = _Block_copy(&aBlock);
    v120 = v117;

    [v120 startDownload:v118 then:v4];

    _Block_release(v4);
    v14 = v130;
LABEL_9:
    ++v32;
    if (v142 == v31)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_54:

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:

  __break(1u);
LABEL_60:

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_10001D5E0(void *a1, __int16 a2, void *a3, double a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
    v29 = a1;
    v13 = a3;
    v14 = a2 + v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v30 = v18;
      *v17 = 134219011;
      static Double.now()();
      v20 = v19 - a4;
      if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v20 > -9.22337204e18)
      {
        if (v20 < 9.22337204e18)
        {
          *(v17 + 4) = v20;
          v14 = 2048;
          *(v17 + 12) = 2048;
          if (qword_1000453A0 == -1)
          {
            goto LABEL_7;
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        swift_once();
LABEL_7:
        *(v17 + 14) = qword_1000455A0;
        *(v17 + 22) = v14;
        *(v17 + 24) = [v29 totalWritten];
        *(v17 + 32) = v14;
        *(v17 + 34) = [v29 totalExpected];
        *(v17 + 42) = 2081;
        v21 = [v13 assetServerUrl];

        if (v21)
        {
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v22 = URL.absoluteString.getter();
          v24 = v23;
          (*(v9 + 8))(v11, v8);
          v25 = sub_100013120(v22, v24, &v30);

          *(v17 + 44) = v25;
          _os_log_impl(&_mh_execute_header, v15, v16, "Progress callback. { runningTime=%ld, timeout=%ld, totalWritten=%lld, totalExpected=%lld, url=%{private}s }", v17, 0x34u);
          sub_10000AE7C(v18);
        }

        else
        {
          __break(1u);
        }

        return;
      }

      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v29 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v29, v26, "Progress callback, but nil update object.", v27, 2u);
    }
  }

  v28 = v29;
}

void sub_10001D980(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10001D9EC(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = type metadata accessor for Logger();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = [a2 assetServerUrl];
  if (v16)
  {
    v17 = v16;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 32))(v15, v13, v9);
    v18 = URL.absoluteString.getter();
    v20 = v19;
    (*(v10 + 8))(v15, v9);
    if (a1)
    {
LABEL_3:
      static Logger.mobileAsset.getter();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v23 = 136380931;
        v24 = sub_100013120(v18, v20, &v40);

        *(v23 + 4) = v24;
        *(v23 + 12) = 2081;
        v39 = a1;
        type metadata accessor for MADownloadResult(0);
        v25 = String.init<A>(describing:)();
        v27 = sub_100013120(v25, v26, &v40);

        *(v23 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Download failed. { url=%{private}s, result=%{private}s }", v23, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v6 + 8))(v8, v38);
      return;
    }
  }

  else
  {
    v20 = 0xE400000000000000;
    v18 = 560753006;
    if (a1)
    {
      goto LABEL_3;
    }
  }

  v28 = a3;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136380675;
    v33 = sub_100013120(v18, v20, &v40);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Downloaded asset. Calling downloadedCallback. { url=%{private}s }", v31, 0xCu);
    sub_10000AE7C(v32);
  }

  else
  {
  }

  v34 = *(v28 + 16);
  if (v34)
  {
    v35 = *(v28 + 24);

    v34(v36);
    sub_10001E154(v34, v35);
  }
}

uint64_t sub_10001DE2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_10001DE80()
{
  static Double.minutes(_:)();
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < 9.22337204e18)
  {
    qword_1000455A0 = v0;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t MobileAssetsHandler.deinit()
{
  sub_10001E154(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MobileAssetsHandler.__deallocating_deinit()
{
  sub_10001E154(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC15audioanalyticsd19MobileAssetsHandler_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10001E028(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001E098(uint64_t a1)
{
  v2 = sub_10001712C(&qword_1000455A8, &qword_1000360F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001E100()
{
  result = qword_1000455B8;
  if (!qword_1000455B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000455B8);
  }

  return result;
}

uint64_t sub_10001E154(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for MobileAssetsHandler(uint64_t a1)
{
  result = qword_1000455F0;
  if (!qword_1000455F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E1B8(uint64_t a1)
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

unint64_t sub_10001E274()
{
  result = qword_1000456C8;
  if (!qword_1000456C8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000456C8);
  }

  return result;
}

void *sub_10001E2E4(void *a1)
{
  v2 = v1;
  v1[2] = 0;
  v1[3] = 0;
  v4 = [objc_allocWithZone(MADownloadOptions) init];
  [v4 setAllowsCellularAccess:1];
  [v4 setRequiresPowerPluggedIn:1];
  [v4 setCanUseLocalCacheServer:1];
  if (qword_1000453A0 != -1)
  {
    swift_once();
  }

  [v4 setTimeoutIntervalForResource:qword_1000455A0];
  v2[4] = v4;
  v2[5] = 0xD000000000000024;
  v2[6] = 0x8000000100036F70;
  v2[7] = 0xD000000000000028;
  v2[8] = 0x8000000100036FA0;
  static Logger.mobileAsset.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MobileAssetsHandler init", v7, 2u);
  }

  v8 = [objc_opt_self() sharedScheduler];

  v9 = String._bridgeToObjectiveC()();

  v13[4] = sub_10001E574;
  v13[5] = v2;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10001BACC;
  v13[3] = &unk_100041C18;
  v10 = _Block_copy(v13);
  v11 = a1;

  [v8 registerForTaskWithIdentifier:v9 usingQueue:v11 launchHandler:v10];
  _Block_release(v10);

  return v2;
}

uint64_t sub_10001E594()
{

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10001E5DC(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100008388(a1);
    *(v3 + 64) = a1;
  }

  return result;
}

uint64_t (*sub_10001E63C(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 64);
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 8) = v4;
  return sub_10001E6AC;
}

uint64_t sub_10001E6AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_100008388(v1);
    *(v3 + 64) = v1;
  }

  return result;
}

uint64_t sub_10001E718(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10002B070(a1);
  }

  return result;
}

void sub_10001E774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_100045800, &qword_1000362D0);
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = *(*(a1 + 56) + 8 * v13);
        sub_10001F124();

        v18 = v17;
        swift_dynamicCast();
        sub_10000E4E0(&v25, v27);
        sub_10000E4E0(v27, v28);
        sub_10000E4E0(v28, &v26);
        v19 = sub_10000710C(v16, v15);
        if (v20)
        {
          v8 = (v2[6] + 16 * v19);
          *v8 = v16;
          v8[1] = v15;
          v9 = v19;

          v10 = (v2[7] + 32 * v9);
          sub_10000AE7C(v10);
          sub_10000E4E0(&v26, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
          v21 = (v2[6] + 16 * v19);
          *v21 = v16;
          v21[1] = v15;
          sub_10000E4E0(&v26, (v2[7] + 32 * v19));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10001E9D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10001712C(&qword_100045800, &qword_1000362D0);
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_10000E4E0(&v22, v24);
        sub_10000E4E0(v24, v25);
        sub_10000E4E0(v25, &v23);
        v16 = sub_10000710C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_10000AE7C(v10);
          sub_10000E4E0(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10000E4E0(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10001EC94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Config.WorkerConfigs();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_10001F170(&qword_100045810, &protocol conformance descriptor for Config.WorkerConfigs);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_10001F170(&qword_100045818, &protocol conformance descriptor for Config.WorkerConfigs);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F01C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  return sub_10001EC94(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

uint64_t sub_10001F078(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_10001F08C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_10001F0D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001F124()
{
  result = qword_100045808;
  if (!qword_100045808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100045808);
  }

  return result;
}

uint64_t sub_10001F170(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Config.WorkerConfigs();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001F1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1000289A4(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for FeatureState(0);
    v16 = *(v9 - 8);
    sub_1000108FC(v8 + *(v16 + 72) * v7, a3, type metadata accessor for FeatureState);
    v10 = *(v16 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for FeatureState(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

unint64_t *sub_10001F2DC(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v31 = &_swiftEmptyArrayStorage;
  sub_10000799C(0, v2 & ~(v2 >> 63), 0);
  v3 = &_swiftEmptyArrayStorage;
  if (v26)
  {
    result = __CocoaSet.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
  }

  v28 = result;
  v29 = v5;
  v30 = v26 != 0;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v25 = v2;
    while (v6 < v2)
    {
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_35;
      }

      v10 = v28;
      v9 = v29;
      v11 = v30;
      v12 = *(sub_1000079BC(v28, v29, v30, a1) + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_timeToInvalidation);

      v31 = v3;
      v14 = v3[2];
      v13 = v3[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_10000799C((v13 > 1), v14 + 1, 1);
        v3 = v31;
      }

      v3[2] = v14 + 1;
      v3[v14 + 4] = v12;
      if (v26)
      {
        if (!v11)
        {
          goto LABEL_40;
        }

        if (__CocoaSet.Index.handleBitPattern.getter())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v2 = v25;
        sub_10001712C(&qword_100045990, &qword_1000360D8);
        v7 = Set.Index._asCocoa.modify();
        __CocoaSet.formIndex(after:isUnique:)();
        result = v7(v27, 0);
        if (v6 == v25)
        {
LABEL_32:
          sub_100007BDC(v28, v29, v30);
          return v3;
        }
      }

      else
      {
        if (v11)
        {
          goto LABEL_41;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_36;
        }

        v15 = 1 << *(a1 + 32);
        if (v10 >= v15)
        {
          goto LABEL_36;
        }

        v16 = v10 >> 6;
        v17 = *(a1 + 56 + 8 * (v10 >> 6));
        if (((v17 >> v10) & 1) == 0)
        {
          goto LABEL_37;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_38;
        }

        v18 = v17 & (-2 << (v10 & 0x3F));
        if (v18)
        {
          v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v16 << 6;
          v20 = v16 + 1;
          v21 = (a1 + 64 + 8 * v16);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              result = sub_100007BDC(v10, v9, 0);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_31;
            }
          }

          result = sub_100007BDC(v10, v9, 0);
        }

LABEL_31:
        v24 = *(a1 + 36);
        v28 = v15;
        v29 = v24;
        v30 = 0;
        v2 = v25;
        if (v6 == v25)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

char *sub_10001F624(void *a1)
{
  v117 = a1;
  ObjectType = swift_getObjectType();
  *(v1 + OBJC_IVAR____TtC15audioanalyticsd6Server_systemMonitor) = 0;
  v116 = OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue;
  v120 = sub_100004C54(0, &qword_1000453C8, OS_dispatch_queue_ptr);
  v115 = "audioanalyticsd.Server";
  v2 = type metadata accessor for DispatchQoS();
  v122 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v121 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  static DispatchQoS.default.getter();
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v119 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v118 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = &_swiftEmptyArrayStorage;
  v126 = sub_100001CA8(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v125 = sub_10001712C(&qword_1000453D0, &qword_100035C88);
  v124 = sub_100001C18(&qword_100045980, &qword_1000453D0, &qword_100035C88, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v114 = v8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v111 = *(v7 + 104);
  v112 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v113 = v6;
  v111(&v109 - v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v6);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v116[v123] = v11;
  v12 = OBJC_IVAR____TtC15audioanalyticsd6Server_mobileAssetsQueue;
  v116 = "rver.serverQueue";
  __chkstk_darwin(v11);
  v13 = static DispatchQoS.background.getter();
  __chkstk_darwin(v13);
  v127 = &_swiftEmptyArrayStorage;
  v14 = dispatch thunk of SetAlgebra.init<A>(_:)();
  __chkstk_darwin(v14);
  v15 = v10;
  v16 = v111;
  v111(&v109 - v9, v15, v6);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v116 = v12;
  v18 = v123;
  *(v123 + v12) = v17;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances] = &_swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_xpcConnections] = &_swiftEmptySetSingleton;
  *&v18[OBJC_IVAR____TtC15audioanalyticsd6Server_activeReporterIDs] = &_swiftEmptySetSingleton;
  v19 = v18;
  v115 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue;
  __chkstk_darwin(v17);
  v20 = static DispatchQoS.unspecified.getter();
  __chkstk_darwin(v20);
  v127 = &_swiftEmptyArrayStorage;
  v21 = dispatch thunk of SetAlgebra.init<A>(_:)();
  __chkstk_darwin(v21);
  v16(&v109 - v9, v112, v113);
  v22 = v19;
  *&v115[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorFrequency;
  static Double.seconds(_:)();
  *&v19[v23] = v24;
  v25 = OBJC_IVAR____TtC15audioanalyticsd6Server_logger;
  static Logger.service.getter();
  v26 = type metadata accessor for Logger();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v27 + 16);
  v121 = v27 + 16;
  v122 = v28;
  v120 = v30;
  v30(v29, &v19[v25], v26);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Starting Server.", v33, 2u);
  }

  v35 = *(v27 + 8);
  v34 = v27 + 8;
  v124 = v35;
  v35(v29, v26);
  v125 = v26;
  v36 = v117;
  if (v117)
  {
    v37 = v117;
  }

  else
  {
    static Constants.machServiceName.getter();
    v38 = objc_allocWithZone(NSXPCListener);
    v39 = String._bridgeToObjectiveC()();

    v37 = [v38 initWithMachServiceName:v39];
  }

  *&v19[OBJC_IVAR____TtC15audioanalyticsd6Server_listener] = v37;
  v40 = *&v116[v19];
  type metadata accessor for MobileAssetsHandler(0);
  swift_allocObject();
  v41 = v40;
  v42 = v36;
  v43 = sub_10001E2E4(v41);

  v126 = v43;
  v44 = MobileAssetsHandler.getMobileAssetsConfigPath()();
  if (!v44.value._object)
  {
    v45 = &_swiftEmptyArrayStorage;
    if ((static DeviceUtilities.isInternalBuild.getter() & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v45 = sub_10002C2D0(0, 1, 1, &_swiftEmptyArrayStorage);
  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_10002C2D0((v46 > 1), v47 + 1, 1, v45);
  }

  *(v45 + 2) = v47 + 1;
  *&v45[16 * v47 + 32] = v44;
  if (static DeviceUtilities.isInternalBuild.getter())
  {
LABEL_12:
    type metadata accessor for Config();
    v48 = static Config.assetConfigPath.getter();
    v50 = v49;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_10002C2D0(0, *(v45 + 2) + 1, 1, v45);
    }

    v52 = *(v45 + 2);
    v51 = *(v45 + 3);
    if (v52 >= v51 >> 1)
    {
      v45 = sub_10002C2D0((v51 > 1), v52 + 1, 1, v45);
    }

    *(v45 + 2) = v52 + 1;
    v53 = &v45[16 * v52];
    *(v53 + 4) = v48;
    *(v53 + 5) = v50;
  }

LABEL_17:
  v54 = v125;
  v55 = sub_100026818(v45);
  if (!v55)
  {
    __chkstk_darwin(0);
    v105 = &v109 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    static Logger.config.getter();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Failed to find a config! Exiting.", v108, 2u);
    }

    v124(v105, v125);
    exit(-1);
  }

  v56 = v55;
  v118 = v42;
  v119 = v34;

  v57 = OBJC_IVAR____TtC15audioanalyticsd6Server_config;
  *&v19[OBJC_IVAR____TtC15audioanalyticsd6Server_config] = v56;
  type metadata accessor for Config();

  v117 = v56;
  Config.sortableConfigVersion.getter();
  static Config.configVersion.setter();
  v58 = qword_1000453B0;

  if (v58 != -1)
  {
    swift_once();
  }

  Config.updateNeededPreviousFields(workers:)(qword_100046140);

  v59 = static Constants.unknownReporterID.getter();
  v60 = [objc_allocWithZone(NSProcessInfo) init];
  v61 = [v60 processIdentifier];

  v62 = *&v22[v57];
  type metadata accessor for Session(0);
  swift_allocObject();

  *&v22[OBJC_IVAR____TtC15audioanalyticsd6Server_singleMessageSession] = sub_10002B564(v59, v61, 0xD000000000000014, 0x80000001000375F0, v62, 1);
  v128.receiver = v22;
  v128.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v128, "init");
  sub_10002059C();
  swift_beginAccess();
  if (static SystemMonitor.shared)
  {
    v64 = v63;

    sub_10002ED48(v65);
  }

  else
  {
    v66 = v63;
  }

  type metadata accessor for SystemMonitor(0);
  v67 = swift_allocObject();
  v68 = v63;

  v70 = sub_100026C70(v69, v68, v67);

  static SystemMonitor.shared = v70;

  type metadata accessor for TailspinWorker();

  static TailspinWorker.initialize(config:)();

  if (&type metadata accessor for DiagnosticManager && &type metadata for DiagnosticManager && &metaclass for DiagnosticManager && &nominal type descriptor for DiagnosticManager)
  {
    type metadata accessor for DiagnosticManager();

    static DiagnosticManager.initialize(config:)();
  }

  v71 = OBJC_IVAR____TtC15audioanalyticsd6Server_listener;
  v72 = *&v68[OBJC_IVAR____TtC15audioanalyticsd6Server_listener];
  v73 = v68;
  [v72 setDelegate:v73];
  [*&v68[v71] activate];
  v74 = swift_allocObject();
  *(v74 + 16) = v73;
  v75 = v126;
  v77 = *(v126 + 16);
  v76 = *(v126 + 24);
  *(v126 + 16) = sub_100027990;
  *(v75 + 24) = v74;
  v78 = sub_10001E154(v77, v76);
  __chkstk_darwin(v78);
  v80 = &v109 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v73;
  v116 = v81;
  v120(v80, &v81[v73], v54);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "Server created", v84, 2u);
  }

  v124(v80, v54);
  v85 = type metadata accessor for ServerConfig();
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  __chkstk_darwin(v85);
  v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF0;

  Config.serverConfig.getter();

  v89 = ServerConfig.monitorClientConnections.getter();
  v90 = *(v86 + 8);
  v91 = v90(&v109 - v88, v85);
  if (v89)
  {
    v91 = sub_100020C38();
  }

  __chkstk_darwin(v91);

  Config.serverConfig.getter();

  v92 = ServerConfig.osTransactionTimeout.getter();
  v94 = v93;
  v95 = v90(&v109 - v88, v85);
  if (v94)
  {
    __chkstk_darwin(v95);
    v97 = &v109 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
    v98 = v123;
    v99 = v125;
    v120(v97, &v116[v123], v125);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "No osTransactionTimeout found!", v102, 2u);
    }

    else
    {
    }

    v124(v97, v99);
  }

  else
  {
    v98 = v123;
    sub_100001D38(*&v92);
  }

  return v98;
}

void sub_10002059C()
{
  v1 = [objc_allocWithZone(CLISignalHandler) initWithSignal:15];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v8[4] = sub_100027C80;
  v8[5] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100022560;
  v8[3] = &unk_100042288;
  v3 = _Block_copy(v8);
  v4 = v0;

  [v1 setExecutionBlock:v3];
  _Block_release(v3);
  [v1 setEnabled:1];
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Listening for SIGTERM.", v7, 2u);
  }
}

uint64_t sub_100020724(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v33 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v35 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTimeInterval();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for DispatchTime();
  v12 = *(v34 - 8);
  v13 = __chkstk_darwin(v34);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Scheduling server exit.", v20, 2u);
  }

  v31[1] = *&v3[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  static DispatchTime.now()();
  *v11 = 1;
  (*(v9 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v8);
  + infix(_:_:)();
  (*(v9 + 8))(v11, v8);
  v31[0] = *(v12 + 8);
  v21 = v34;
  (v31[0])(v15, v34);
  v22 = swift_allocObject();
  v24 = v32;
  v23 = v33;
  v22[2] = v3;
  v22[3] = v24;
  v22[4] = v23;
  v22[5] = 1;
  aBlock[4] = sub_100027A34;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042100;
  v25 = _Block_copy(aBlock);
  v26 = v3;
  v27 = v35;
  static DispatchQoS.unspecified.getter();
  v41 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
  v28 = v38;
  v29 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v27, v37);
  (v31[0])(v17, v21);
}

uint64_t sub_100020C38()
{
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v16 = *(v0 + OBJC_IVAR____TtC15audioanalyticsd6Server_clientConnectionMonitorQueue);
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v6 + 8);
  v17(v9, v5);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000279BC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100041FE8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
  v14 = v20;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v13);
  (*(v22 + 8))(v2, v14);
  (*(v19 + 8))(v4, v21);
  v17(v11, v18);
}

uint64_t sub_10002101C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Message();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v18[1] = *(v2 + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v11 + 32))(v15 + v14, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100027C1C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042238;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_1000213EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100013824(a2);
  }

  else
  {
    static Logger.service.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Server is gone. {action=broadcast}", v11, 2u);
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100021564(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *&v2[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v15)
  {
    sub_10001A150();
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = a1;
    aBlock[4] = sub_100027978;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100041EF8;
    v18 = _Block_copy(aBlock);
    v19 = v2;

    static DispatchQoS.unspecified.getter();
    v28 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v24 = a1;
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v27 + 8))(v6, v4);
    (*(v25 + 8))(v9, v26);

    v20 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
    swift_beginAccess();
    v21 = *&v19[v20];

    v22 = sub_10002B3F8(v24, v21);

    return v22 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021970(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_100025B38(a2);
  swift_endAccess();
}

uint64_t sub_1000219E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OsTransactionHandler();
  static OsTransactionHandler.shared.getter();
  v7 = OsTransactionHandler.inactive()();

  if (v7)
  {
LABEL_10:
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Exit requested, and no active transaction. Calling exit.", v15, 2u);
    }

    exit(0);
  }

  if (__OFSUB__(a3, a4))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  v10 = os_log_type_enabled(v8, v9);
  if (a3 - a4 <= a2)
  {
    if (v10)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Exit requested, and timeout reached. Calling exit.", v16, 2u);
    }

    exit(0);
  }

  if (v10)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Exit requested, but active transactions. Will try again in 10 seconds.", v11, 2u);
  }

  if (__OFADD__(a2, a4))
  {
    goto LABEL_9;
  }

  return sub_100020724(a3, a2 + a4);
}

void sub_100021BC8(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14[1] = *(Strong + OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue);
    v16 = Strong;
    v10 = swift_allocObject();
    v15 = v6;
    v11 = v10;
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000279C4;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100042010;
    v12 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v17 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    v14[0] = v5;
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);
    (*(v2 + 8))(v4, v1);
    (*(v15 + 8))(v8, v14[0]);

    v13 = v16;
    sub_100020C38();
  }
}

char *sub_100021EFC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = OBJC_IVAR____TtC15audioanalyticsd6Server_clientServerInstances;
  swift_beginAccess();
  v4 = *&v2[v3];
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for ClientServerInstance(0);
    sub_100001CA8(&unk_100045960, type metadata accessor for ClientServerInstance, &unk_100036088);
    Set.Iterator.init(_cocoa:)();
    v4 = v45;
    v5 = v46;
    v7 = v47;
    i = v48;
    v8 = v49;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);

    i = 0;
  }

  v38 = v7;
  v12 = (v7 + 64) >> 6;
  v41 = v4;
  v42 = v2;
  v40 = v5;
  v39 = v12;
LABEL_9:
  v13 = i;
  if (v4 < 0)
  {
    goto LABEL_18;
  }

  do
  {
    while (1)
    {
      v14 = v13;
      v15 = v8;
      for (i = v13; !v15; ++v14)
      {
        i = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_53;
        }

        if (i >= v12)
        {
          goto LABEL_44;
        }

        v15 = *(v5 + 8 * i);
      }

      v16 = (v15 - 1) & v15;
      v17 = *(*(v4 + 48) + ((i << 9) | (8 * __clz(__rbit64(v15)))));

      if (!v17)
      {
        goto LABEL_44;
      }

LABEL_20:
      if (sub_10001A9B8())
      {
        break;
      }

      v13 = i;
      v8 = v16;
      if (v4 < 0)
      {
        goto LABEL_18;
      }
    }

    v43 = v16;
    v18 = OBJC_IVAR____TtC15audioanalyticsd6Server_xpcConnections;
    swift_beginAccess();
    v19 = *&v2[v18];
    if ((v19 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      sub_1000279CC();
      Set.Iterator.init(_cocoa:)();
      v20 = v50;
      v21 = v51;
      v22 = v52;
      v5 = v53;
      v2 = v54;
    }

    else
    {
      v23 = -1 << *(v19 + 32);
      v21 = v19 + 56;
      v22 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v2 = (v25 & *(v19 + 56));
      v20 = v19;
      swift_bridgeObjectRetain_n();
      v5 = 0;
    }

    v26 = (v22 + 64) >> 6;
    if (v20 < 0)
    {
LABEL_34:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_39;
      }

      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      swift_dynamicCast();
      v31 = v44;
      v29 = v5;
      v30 = v2;
      if (!v44)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    while (1)
    {
      v27 = v5;
      v28 = v2;
      v29 = v5;
      if (!v2)
      {
        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v26)
          {
            goto LABEL_39;
          }

          v28 = *(v21 + 8 * v29);
          ++v27;
          if (v28)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_32:
      v30 = (v28 - 1) & v28;
      v31 = *(*(v20 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v31)
      {
        break;
      }

LABEL_36:
      v32 = [v31 processIdentifier];
      if (v32 == *&v17[OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid])
      {
        sub_10000750C(v20);

        v33 = v31;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v4 = v41;
        v2 = v42;
        v12 = v39;
        v5 = v40;
        v8 = v43;
        goto LABEL_9;
      }

      v5 = v29;
      v2 = v30;
      if (v20 < 0)
      {
        goto LABEL_34;
      }
    }

LABEL_39:
    sub_10000750C(v20);

    v13 = i;
    v8 = v43;
    v4 = v41;
    v2 = v42;
    v12 = v39;
    v5 = v40;
  }

  while ((v41 & 0x8000000000000000) == 0);
LABEL_18:
  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for ClientServerInstance(0);
    swift_dynamicCast();
    v17 = v44;
    i = v13;
    v16 = v8;
    if (v44)
    {
      goto LABEL_20;
    }
  }

LABEL_44:
  result = sub_10000750C(v4);
  v5 = &_swiftEmptyArrayStorage;
  if (!(&_swiftEmptyArrayStorage >> 62))
  {
    v34 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_46;
    }

LABEL_55:
  }

LABEL_54:
  result = _CocoaArrayWrapper.endIndex.getter();
  v34 = result;
  if (!result)
  {
    goto LABEL_55;
  }

LABEL_46:
  if (v34 >= 1)
  {
    for (j = 0; j != v34; ++j)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v5 + 8 * j + 32);
      }

      v37 = v36;
      [v36 invalidate];
    }

    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000224B0(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Got SIGTERM. Should die within 2 seconds.", v3, 2u);
  }

  return sub_100020724(2, 0);
}

uint64_t sub_100022560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_1000225E4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for Server(uint64_t a1)
{
  result = qword_1000458A8;
  if (!qword_1000458A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002277C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_100022854(uint64_t a1, int a2, char *a3, char *a4, uint64_t a5)
{
  v32 = a5;
  LODWORD(v31) = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v27 = v7;
    v28 = v12;
    v29 = v11;
    v30 = v8;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 67109379;
      v21 = v31;
      *(v19 + 4) = v31;
      *(v19 + 8) = 2081;
      *(v19 + 10) = sub_100013120(a3, a4, aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "XPC connection was interrupted. { pid=%d, clientProcessName=%{private}s }", v19, 0x12u);
      sub_10000AE7C(v20);
    }

    else
    {

      v21 = v31;
    }

    v31 = *&v16[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v24 = v32;
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v21;
    *(v23 + 40) = a3;
    *(v23 + 48) = a4;
    aBlock[4] = sub_100027980;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000016B8;
    aBlock[3] = &unk_100041F48;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
    v26 = v27;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);
    (*(v30 + 8))(v10, v26);
    (*(v28 + 8))(v14, v29);
  }

  return result;
}

void sub_100022CAC(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (sub_100021564(a2))
    {
    }

    else
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 67109379;
        *(v20 + 4) = a3;
        *(v20 + 8) = 2081;
        *(v20 + 10) = sub_100013120(a4, a5, &v22);
        _os_log_impl(&_mh_execute_header, v18, v19, "Failed to remove client. { pid=%d, clientProcessName=%{private}s }", v20, 0x12u);
        sub_10000AE7C(v21);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Server is gone. { action=interruptionHandler }", v17, 2u);
    }

    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_100022F20(uint64_t a1, uint64_t a2, void *a3, char *a4, char *a5, int a6)
{
  v44 = a6;
  v51 = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v47 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DispatchQoS();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    Date.init()();
    Date.timeIntervalSince(_:)();
    v23 = v22;
    (*(v13 + 8))(v15, v12);
    v24 = a3;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 67175171;
      *(v27 + 4) = [v24 processIdentifier];

      *(v27 + 8) = 2081;
      *(v27 + 10) = sub_100013120(v51, a5, &aBlock);
      *(v27 + 18) = 2049;
      *(v27 + 20) = v23;
      _os_log_impl(&_mh_execute_header, v25, v26, "XPC connection was invalidated. { pid=%{private}d, clientProcessName=%{private}s, uptimeSeconds=%{private}f }", v27, 0x1Cu);
      sub_10000AE7C(v28);
    }

    else
    {
    }

    v33 = String._bridgeToObjectiveC()();
    v34 = swift_allocObject();
    *(v34 + 16) = a2;
    *(v34 + 24) = v23;
    v57 = sub_100027958;
    v58 = v34;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_100023784;
    v56 = &unk_100041E58;
    v35 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v35);

    v43 = *&v21[OBJC_IVAR____TtC15audioanalyticsd6Server_serverQueue];
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v36;
    *(v37 + 24) = a2;
    *(v37 + 32) = v44;
    *(v37 + 40) = v51;
    *(v37 + 48) = a5;
    *(v37 + 56) = v24;
    v57 = sub_100027964;
    v58 = v37;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_1000016B8;
    v56 = &unk_100041EA8;
    v38 = _Block_copy(&aBlock);
    v39 = v24;

    v40 = v45;
    static DispatchQoS.unspecified.getter();
    v52 = &_swiftEmptyArrayStorage;
    sub_100001CA8(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10001712C(&unk_100045920, &qword_100035FC0);
    sub_100001C18(&qword_100045468, &unk_100045920, &qword_100035FC0, &protocol conformance descriptor for [A]);
    v41 = v47;
    v42 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);
    (*(v49 + 8))(v41, v42);
    (*(v46 + 8))(v40, v48);
  }

  else
  {
    static Logger.service.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Server is gone. { action=invalidationHandler }", v31, 2u);
    }

    return (*(v17 + 8))(v19, v16);
  }
}

unint64_t sub_100023634(double a1)
{
  sub_10001712C(&qword_100045950, &qword_100036350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100035FA0;
  *(inited + 32) = 0x4E737365636F7270;
  *(inited + 40) = 0xEB00000000656D61;
  v3 = objc_allocWithZone(NSString);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithString:v4];

  *(inited + 48) = v5;
  *(inited + 56) = 0x73646E6F636573;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v6 = sub_10001759C(inited);
  swift_setDeallocating();
  sub_10001712C(&qword_100045958, &qword_100036358);
  swift_arrayDestroy();
  return v6;
}

Class sub_100023784(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100004C54(0, &qword_100045948, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_100023820(uint64_t a1, uint64_t a2, int a3, char *a4, char *a5, void *a6)
{
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if ((sub_100021564(a2) & 1) == 0)
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28[0] = v20;
        *v19 = 67174915;
        *(v19 + 4) = a3;
        *(v19 + 8) = 2081;
        *(v19 + 10) = sub_100013120(a4, a5, v28);
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to remove client. { pid=%{private}d, clientProcessName=%{private}s }", v19, 0x12u);
        sub_10000AE7C(v20);
      }
    }

    swift_beginAccess();
    v21 = sub_100025D0C(a6);
    swift_endAccess();
    if (!v21)
    {

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28[0] = v24;
        *v23 = 67109379;
        *(v23 + 4) = a3;
        *(v23 + 8) = 2081;
        *(v23 + 10) = sub_100013120(a4, a5, v28);
        _os_log_impl(&_mh_execute_header, v21, v22, "Failed to remove connection. { pid=%d, clientProcessName=%{private}s }", v23, 0x12u);
        sub_10000AE7C(v24);
      }
    }
  }

  else
  {
    static Logger.service.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Server is gone. { action=invalidationHandler }", v27, 2u);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100023BAC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid) != *(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    return 1;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  if (v3 == *(a2 + 24) && v4 == *(a2 + 32))
  {
    return 0;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100023C20(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10002E4B0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100023EF8(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100023C9C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_100001CA8(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FeatureInfo(0);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_100001CA8(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100023DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001712C(&qword_100045998, &qword_100036360);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for FeatureInfo(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108FC(a3, v10, type metadata accessor for FeatureInfo);
  sub_100027BAC(a1, v7);
  return sub_10002ABDC(v7, v10);
}

Swift::Int sub_100023EF8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Config();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100024114(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100023FFC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100023FFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    type metadata accessor for Config();
    sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config, &protocol conformance descriptor for Config);
    v8 = v7 + 8 * v4 - 8;
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 8;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *v11;
      *v11 = v11[1];
      v11[1] = v12;
      --v11;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100024114(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v87 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_92:
    v7 = *v87;
    if (!*v87)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_10002E400(v9);
      v9 = result;
    }

    v79 = *(v9 + 2);
    if (v79 >= 2)
    {
      while (1)
      {
        v80 = *v6;
        if (!*v6)
        {
          goto LABEL_128;
        }

        v6 = (v79 - 1);
        v81 = *&v9[16 * v79];
        v82 = *&v9[16 * v79 + 24];
        sub_10002478C((v80 + 8 * v81), (v80 + 8 * *&v9[16 * v79 + 16]), (v80 + 8 * v82), v7);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002E400(v9);
        }

        if (v79 - 2 >= *(v9 + 2))
        {
          goto LABEL_118;
        }

        v83 = &v9[16 * v79];
        *v83 = v81;
        *(v83 + 1) = v82;
        result = sub_10002E374(v6);
        v79 = *(v9 + 2);
        v6 = a3;
        if (v79 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v85 = v5;
      v11 = 8 * v10;
      v12 = *v6 + 8 * v10 + 16;
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config, &protocol conformance descriptor for Config);
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      v13 = v10;
      v14 = result;
      v15 = v13;
      v16 = v13 + 2;
      while (v7 != v16)
      {
        result = dispatch thunk of static Comparable.< infix(_:_:)();
        ++v16;
        v12 += 8;
        if ((v14 & 1) != (result & 1))
        {
          v7 = v16 - 1;
          break;
        }
      }

      v5 = v85;
      v6 = a3;
      if (v14)
      {
        if (v7 < v15)
        {
          goto LABEL_121;
        }

        v10 = v15;
        if (v15 < v7)
        {
          v17 = 8 * v7 - 8;
          v18 = v7;
          v19 = v15;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v20 = *(v21 + v11);
              *(v21 + v11) = *(v21 + v17);
              *(v21 + v17) = v20;
            }

            ++v19;
            v17 -= 8;
            v11 += 8;
          }

          while (v19 < v18);
        }

        v8 = v7;
      }

      else
      {
        v8 = v7;
        v10 = v15;
      }
    }

    v22 = v6[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_120;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v8 < v10)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    if ((result & 1) == 0)
    {
      result = sub_10002C0C8(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v34 = *(v9 + 2);
    v33 = *(v9 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      result = sub_10002C0C8((v33 > 1), v34 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v35;
    v36 = &v9[16 * v34];
    *(v36 + 4) = v10;
    *(v36 + 5) = v8;
    v37 = *v87;
    if (!*v87)
    {
      goto LABEL_129;
    }

    if (v34)
    {
      v5 = v32;
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v9 + 4);
          v40 = *(v9 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_61:
          if (v42)
          {
            goto LABEL_108;
          }

          v55 = &v9[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_111;
          }

          v61 = &v9[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_115;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v65 = &v9[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_75:
        if (v60)
        {
          goto LABEL_110;
        }

        v68 = &v9[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v71 < v59)
        {
          goto LABEL_4;
        }

LABEL_82:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v77 = *&v9[16 * v76 + 32];
        v7 = *&v9[16 * v38 + 40];
        sub_10002478C((*v6 + 8 * v77), (*v6 + 8 * *&v9[16 * v38 + 32]), (*v6 + 8 * v7), v37);
        if (v5)
        {
        }

        if (v7 < v77)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002E400(v9);
        }

        if (v76 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v78 = &v9[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v7;
        result = sub_10002E374(v38);
        v35 = *(v9 + 2);
        if (v35 <= 1)
        {
          goto LABEL_4;
        }
      }

      v43 = &v9[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_106;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_107;
      }

      v50 = &v9[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_109;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_112;
      }

      if (v54 >= v46)
      {
        v72 = &v9[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_116;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v5 = v32;
LABEL_4:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_122;
  }

  v23 = v8;
  if (v10 + a4 >= v22)
  {
    v24 = v6[1];
  }

  else
  {
    v24 = v10 + a4;
  }

  if (v24 < v10)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v23 == v24)
  {
    v8 = v23;
    goto LABEL_40;
  }

  v86 = v5;
  v25 = *v6;
  type metadata accessor for Config();
  sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config, &protocol conformance descriptor for Config);
  v26 = v25 + 8 * v23 - 8;
  v7 = v10 - v23;
  v89 = v24;
LABEL_33:
  v27 = v23;
  v28 = v7;
  v29 = v26;
  while (1)
  {
    result = dispatch thunk of static Comparable.< infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_32:
      v23 = v27 + 1;
      v26 += 8;
      --v7;
      v8 = v89;
      if (v23 != v89)
      {
        goto LABEL_33;
      }

      v5 = v86;
      v6 = a3;
      goto LABEL_40;
    }

    if (!v25)
    {
      break;
    }

    v30 = *v29;
    *v29 = v29[1];
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t sub_10002478C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config, &protocol conformance descriptor for Config);
LABEL_27:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v18 -= 8;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          *v5 = *v18;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      type metadata accessor for Config();
      sub_100001CA8(&unk_1000459D0, &type metadata accessor for Config, &protocol conformance descriptor for Config);
      while ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_20;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v7 = *v15;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_38:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

Swift::Int sub_100024A60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001712C(&qword_100045940, &qword_100036348);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for ClientServerInstance(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100024E68(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v14 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
        String.hash(into:)();
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100024C78(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10001712C(&qword_100045938, &qword_100036340);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000250D0(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100024E68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001712C(&qword_100045940, &qword_100036348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_1000250D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001712C(&qword_100045938, &qword_100036340);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1000252F8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));
  String.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1000253B4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void *sub_100025438()
{
  v1 = v0;
  sub_10001712C(&qword_100045940, &qword_100036348);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_100025588()
{
  v1 = v0;
  sub_10001712C(&qword_100045938, &qword_100036340);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

Swift::Int sub_1000256D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001712C(&qword_100045940, &qword_100036348);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v16 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));

      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

Swift::Int sub_100025924(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_10001712C(&qword_100045938, &qword_100036340);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100025B38(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_100025EA4(v4, a1);

      return v6;
    }

    return 0;
  }

  Hasher.init(_seed:)();
  v8 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  Hasher._combine(_:)(v8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  v15 = *(v3 + 48);
  v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
  while (1)
  {
    v17 = *(v15 + 8 * v13);
    if (*(v17 + v16) != v8)
    {
      goto LABEL_10;
    }

    v18 = *(v17 + 24) == v9 && *(v17 + 32) == v10;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
LABEL_10:
    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v1;
  v22 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100025438();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v13);
  sub_1000261D4(v13);
  result = v21;
  *v1 = v22;
  return result;
}

uint64_t sub_100025D0C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_10002606C(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100025588();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1000263B8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100025EA4(uint64_t a1, uint64_t a2)
{

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100024A60(v5, v4);
  v20 = v6;
  Hasher.init(_seed:)();
  v7 = *(a2 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
  Hasher._combine(_:)(v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);

  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = ~v11;
  v14 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v12);
    if (*(v15 + v14) == v7)
    {
      break;
    }

LABEL_3:
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v16 = *(v15 + 24) == v8 && *(v15 + 32) == v9;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
    goto LABEL_3;
  }

  v17 = *(*(v6 + 48) + 8 * v12);
  sub_1000261D4(v12);
  if (v7 == *(v17 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid))
  {
    v18 = v8 == *(v17 + 24) && v9 == *(v17 + 32);
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *v2 = v20;
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_10002606C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100024C78(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100004C54(0, &qword_100045930, NSXPCConnection_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_1000263B8(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000261D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(*(v10 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid));

        String.hash(into:)();
        v11 = Hasher._finalize()();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v12 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v12)
        {
LABEL_11:
          v13 = *(v3 + 48);
          v14 = (v13 + 8 * v2);
          v15 = (v13 + 8 * v6);
          if (v2 != v6 || v14 >= v15 + 1)
          {
            *v14 = *v15;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1000263B8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_100026558(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10002C558(v3, 0);
  sub_1000265EC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000265EC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100001C18(&qword_1000459C8, &qword_1000459C0, &unk_1000363B0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10001712C(&qword_1000459C0, &unk_1000363B0);
            v9 = sub_100026790(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Config();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100026790(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100026810;
  }

  __break(1u);
  return result;
}

uint64_t sub_100026818(unint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v31 = 0;
  v32 = (&v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = 0;
  v5 = &_swiftEmptyArrayStorage;
  v34 = &_swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
LABEL_2:
  v8 = &v7[2 * v4];
  while (1)
  {
    if (v6 == v4)
    {
      v34 = v5;
      type metadata accessor for Config();
      static Config.defaultConfigPathEncrypted.getter();
      default argument 2 of Config.init(configPath:allowUnknownFields:platform:encrypted:)();
      if (Config.__allocating_init(configPath:allowUnknownFields:platform:encrypted:)())
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v33 = sub_100026558(v12);
      v13 = v31;
      sub_100023C20(&v33);
      if (v13)
      {
        goto LABEL_35;
      }

      a1 = v33;
      v8 = v32;
      if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
      {
        goto LABEL_28;
      }

      v14 = *(v33 + 16);
      if (v14)
      {
        goto LABEL_18;
      }

LABEL_29:

      return 0;
    }

    if (v4 >= v6)
    {
      break;
    }

    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_27;
    }

    v10 = type metadata accessor for Config();

    v11._countAndFlagsBits = 1668179246;
    v11._object = 0xE400000000000000;
    String.hasSuffix(_:)(v11);
    default argument 2 of Config.init(configPath:allowUnknownFields:platform:encrypted:)();
    a1 = v10;
    ++v4;
    v8 += 2;
    if (Config.__allocating_init(configPath:allowUnknownFields:platform:encrypted:)())
    {
      a1 = &v34;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v5 = v34;
      v4 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (!v14)
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
LABEL_32:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:

    static Logger.config.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v20 = 136380931;
      v21 = Config.configPath.getter();
      v23 = sub_100013120(v21, v22, &v33);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2081;
      v24 = Config.sortableConfigVersion.getter();
      v26 = sub_100013120(v24, v25, &v33);

      *(v20 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Server.findConfig returning. { path=%{private}s, configVersion=%{private}s }", v20, 0x16u);
      swift_arrayDestroy();
    }

    (*(v29 + 8))(v8, v30);
    return v17;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(a1 + 16))
  {
    v17 = *(a1 + 8 * v16 + 32);

    goto LABEL_23;
  }

  __break(1u);
LABEL_35:

  __break(1u);
  return result;
}

uint64_t sub_100026C70(void (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v91 = a2;
  v104 = a1;
  v4 = sub_10001712C(&qword_100045998, &qword_100036360);
  __chkstk_darwin(v4 - 8);
  v90 = v79 - v5;
  v93 = type metadata accessor for SystemMonitorConfig.MonitorType();
  v98 = *(v93 - 8);
  __chkstk_darwin(v93);
  v7 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for FeatureInfo(0);
  v94 = *(v89 - 8);
  v8 = __chkstk_darwin(v89);
  v105 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v97 = v79 - v11;
  v92 = v12;
  __chkstk_darwin(v10);
  v95 = v79 - v13;
  v103 = type metadata accessor for Logger();
  v100 = *(v103 - 1);
  __chkstk_darwin(v103);
  v102 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v106);
  v101 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v20 - 8);
  v21 = sub_100016F14(&_swiftEmptyArrayStorage);
  sub_10001712C(&qword_1000459A0, &qword_100035C80);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = v21;
  *(a3 + 16) = v22;
  v99 = sub_100004C54(0, &qword_1000453C8, OS_dispatch_queue_ptr);
  static DispatchQoS.default.getter();
  (*(v17 + 104))(v19, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100001CA8(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100001C18(&qword_100045980, &qword_1000453D0, &qword_100035C88, &protocol conformance descriptor for [A]);
  v23 = v102;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v103;
  v25 = v100;
  *(a3 + 40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
  static Logger.service.getter();
  v27 = *(v25 + 16);
  v106 = a3;
  v27(v23, a3 + v26, v24);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "SystemMonitor.init()", v30, 2u);
  }

  (*(v25 + 8))(v23, v24);
  v31 = v106;
  *(v106 + 32) = v104;

  v32 = sub_100032A70();
  *(v31 + 24) = v32;
  v33 = v32[2];
  if (v33)
  {
    v96 = OBJC_IVAR____TtC15audioanalyticsd13SystemMonitor_logger;
    v88 = v94[80];
    v34 = (v88 + 32) & ~v88;
    v35 = v32 + v34;
    v36 = *(v94 + 9);
    v103 = (v98 + 88);
    v104 = (v98 + 16);
    LODWORD(v102) = enum case for SystemMonitorConfig.MonitorType.defaults(_:);
    LODWORD(v101) = enum case for SystemMonitorConfig.MonitorType.notify(_:);
    v85 = enum case for SystemMonitorConfig.MonitorType.other(_:);
    v82 = (v98 + 8);
    v87 = v34;
    v84 = (v92 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = v108;
    v79[1] = v32;

    *&v37 = 67109376;
    v81 = v37;
    *&v37 = 136380675;
    v80 = v37;
    v38 = v93;
    v94 = v7;
    v39 = v97;
    v40 = v95;
    v86 = v36;
    while (1)
    {
      sub_1000108FC(v35, v40, type metadata accessor for FeatureInfo);
      (*v104)(v7, v40, v38);
      v46 = (*v103)(v7, v38);
      if (v46 != v102 && v46 != v101)
      {
        if (v46 == v85)
        {
          sub_100019D24(v40);
        }

        else
        {
          sub_1000108FC(v40, v39, type metadata accessor for FeatureInfo);
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            aBlock[0] = v72;
            *v71 = v80;
            v73 = SystemMonitorConfig.MonitorType.rawValue.getter();
            v75 = v74;
            sub_100019D24(v97);
            v76 = sub_100013120(v73, v75, aBlock);
            v39 = v97;

            *(v71 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v69, v70, "Encountered unknown monitorType. { monitorType=%{private}s }", v71, 0xCu);
            sub_10000AE7C(v72);
            v7 = v94;

            v40 = v95;
          }

          else
          {

            sub_100019D24(v39);
          }

          sub_100019D24(v40);
          (*v82)(v7, v38);
        }

        goto LABEL_7;
      }

      v100 = v33;
      v48 = swift_allocObject();
      *(v48 + 16) = -1;
      v49 = (v40 + *(v89 + 28));
      v50 = *v49;
      v98 = v49[1];
      v99 = v50;
      v51 = *(v106 + 40);
      v52 = swift_allocObject();
      swift_weakInit();
      v53 = v40;
      v54 = swift_allocObject();
      *(v54 + 24) = &off_100041CC8;
      swift_unknownObjectWeakInit();
      v55 = v53;
      v56 = v105;
      sub_1000108FC(v55, v105, type metadata accessor for FeatureInfo);
      v57 = v84;
      v58 = swift_allocObject();
      *(v58 + 16) = v52;
      *(v58 + 24) = v54;
      sub_100027A40(v56, v58 + v87);
      *(v58 + v57) = v48;
      v108[2] = sub_100027AA4;
      v108[3] = v58;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v108[0] = sub_100022560;
      v108[1] = &unk_1000421C8;
      v59 = _Block_copy(aBlock);
      v60 = v51;

      v61 = String.utf8CString.getter();
      swift_beginAccess();
      v62 = notify_register_dispatch((v61 + 32), (v48 + 16), v60, v59);
      swift_endAccess();

      _Block_release(v59);

      v63 = Logger.logObject.getter();
      if (v62)
      {
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          *v65 = v81;
          *(v65 + 4) = v62;
          *(v65 + 8) = 1024;
          *(v65 + 10) = *(v48 + 16);

          v66 = v64;
          v67 = v63;
          v68 = "Notify setup result is not OK! { result=%u, token=%d }";
LABEL_22:
          _os_log_impl(&_mh_execute_header, v67, v66, v68, v65, 0xEu);

          goto LABEL_6;
        }
      }

      else
      {
        v77 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v63, v77))
        {
          v65 = swift_slowAlloc();
          *v65 = v81;
          *(v65 + 8) = 1024;
          *(v65 + 10) = *(v48 + 16);

          v66 = v77;
          v67 = v63;
          v68 = "Notify setup result. { result=%u, token=%d }";
          goto LABEL_22;
        }
      }

LABEL_6:
      v7 = v94;
      v40 = v95;
      v33 = v100;
      v41 = *(v48 + 16);
      LOBYTE(aBlock[0]) = 0;
      v42 = v90;
      sub_100030040(v95, v41, v90);
      v43 = v105;
      v44 = sub_1000108FC(v40, v105, type metadata accessor for FeatureInfo);
      __chkstk_darwin(v44);
      sub_100027A40(v43, v79 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
      swift_getKeyPath();

      OSAllocatedUnfairLock<A>.assign<A>(_:newValue:)();

      sub_100027B44(v42);
      sub_100019D24(v40);

      v38 = v93;
      v39 = v97;
      v36 = v86;
LABEL_7:
      v35 += v36;
      if (!--v33)
      {

        return v106;
      }
    }
  }

  return v106;
}

unint64_t sub_1000279CC()
{
  result = qword_100045988;
  if (!qword_100045988)
  {
    sub_100004C54(255, &qword_100045930, NSXPCConnection_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045988);
  }

  return result;
}

uint64_t sub_100027A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100027AA4(uint64_t a1)
{
  v3 = *(type metadata accessor for FeatureInfo(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  sub_10002EE30(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_100027B44(uint64_t a1)
{
  v2 = sub_10001712C(&qword_100045998, &qword_100036360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001712C(&qword_100045998, &qword_100036360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100027C1C()
{
  v1 = *(type metadata accessor for Message() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1000213EC(v2, v3);
}

void sub_100027CD8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.session.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v1 + 24);

    _os_log_impl(&_mh_execute_header, v6, v7, "requestMessage(): Flushing all requests. { reporterID=%lld }", v8, 0xCu);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v14 = 0;
  v15 = &_swiftEmptyArrayStorage;
  while (v12)
  {
LABEL_13:
    v17 = *(*(v9 + 56) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    swift_beginAccess();
    v18 = *(v17 + 16);
    v19 = *(v18 + 16);
    v20 = v15[2];
    v21 = v20 + v19;
    if (__OFADD__(v20, v19))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v21 > v15[3] >> 1)
    {
      if (v20 <= v21)
      {
        v23 = v20 + v19;
      }

      else
      {
        v23 = v20;
      }

      v15 = sub_10002C424(isUniquelyReferenced_nonNull_native, v23, 1, v15);
    }

    v12 &= v12 - 1;
    if (*(v18 + 16))
    {
      if ((v15[3] >> 1) - v15[2] < v19)
      {
        goto LABEL_34;
      }

      sub_10001712C(&qword_100045BA0, &unk_1000364D0);
      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = v15[2];
        v25 = __OFADD__(v24, v19);
        v26 = v24 + v19;
        if (v25)
        {
          goto LABEL_35;
        }

        v15[2] = v26;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v16 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_13;
    }
  }

  v27 = v15[2];
  if (!v27)
  {
LABEL_29:

    return;
  }

  v28 = 0;
  v29 = v15 + 5;
  while (v28 < v15[2])
  {
    ++v28;
    v30 = *(v29 - 1);
    v31 = 0;
    v32 = 0;

    v30(&v32, &v31);

    v29 += 2;
    if (v27 == v28)
    {
      goto LABEL_29;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100028054()
{
  sub_100027CD8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000280B4(uint64_t a1, objc_class *a2, unsigned int a3, unsigned __int16 a4)
{
  v5 = v4;
  v32 = type metadata accessor for Message();
  v10 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100015580(a3 | (a4 << 32));
  swift_beginAccess();
  if (*(v17[3] + 16))
  {
    v31 = a2;
    static Logger.session.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v30 = a1;
    if (v20)
    {
      a1 = swift_slowAlloc();
      *a1 = 134217984;
      *(a1 + 4) = *(v5 + 24);

      _os_log_impl(&_mh_execute_header, v18, v19, "requestMessage(): Registered callback found message. Calling callback. { reporterID=%lld }", a1, 0xCu);
    }

    else
    {
    }

    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    v26 = v17[3];
    if (*(v26 + 16))
    {
      v27 = v32;
      (*(v10 + 16))(v12, v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v32);
      sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
      swift_endAccess();
      if (*(v17[3] + 16) >= 0xBuLL)
      {
        swift_beginAccess();
        sub_10002AA28(0, 1, sub_100015784, sub_10002A8E0);
        swift_endAccess();
      }

      v28 = Message.flattenToAnyDictionary()();
      v30(0, v28);

      return (*(v10 + 8))(v12, v27);
    }

    __break(1u);
    goto LABEL_14;
  }

  v18 = swift_allocObject();
  v18[2].isa = a1;
  v18[3].isa = a2;
  swift_beginAccess();
  a1 = v17[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17[2] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a1 = sub_10002C424(0, *(a1 + 16) + 1, 1, a1);
    v17[2] = a1;
  }

  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  if (v23 >= v22 >> 1)
  {
    a1 = sub_10002C424((v22 > 1), v23 + 1, 1, a1);
  }

  *(a1 + 16) = v23 + 1;
  v24 = a1 + 16 * v23;
  *(v24 + 32) = sub_10002AB00;
  *(v24 + 40) = v18;
  v17[2] = a1;
  swift_endAccess();
  sub_100028648();
}

Swift::Int sub_100028520()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100028580()
{
  v1 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000285C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100028648()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v6 = *(v0 + 16);
  if (*(v6 + 16) >= 0xBuLL)
  {
    swift_beginAccess();
    if (*(v6 + 16))
    {
      v7 = *(v6 + 32);

      sub_10002AA28(0, 1, sub_10002C424, sub_10002A810);
      swift_endAccess();
      static Logger.session.getter();

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = *(v1 + 32);

        _os_log_impl(&_mh_execute_header, v8, v9, "requestMessage(): Exceeded stored callback cache. Flushing oldest callback. { reporterID=%lld }", v10, 0xCu);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      v12 = 0;
      v13[0] = 0;
      v7(v13, &v12);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100028878()
{

  return swift_deallocClassInstance();
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16RetainedMessagesC16CategoryTypePairVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

unint64_t sub_100028950()
{
  result = qword_100045B98;
  if (!qword_100045B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100045B98);
  }

  return result;
}

unint64_t sub_1000289A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for SystemMonitorConfig.MonitorType();
  sub_10002AB30(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FeatureInfo(0);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for SystemMonitorConfig.DataType();
  sub_10002AB30(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10002996C(a1, v2);
}

Swift::Int sub_100028B0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10001712C(&qword_1000453F8, &qword_100035E08);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 8 * (v18 | (v8 << 6));
      v22 = *(v5 + 48) + v21;
      v23 = *v22;
      v24 = *(v22 + 4);
      v25 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v24);
      result = Hasher._finalize()();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 8 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v23;
      *(v17 + 4) = v24;
      *(*(v7 + 56) + v16) = v25;
      ++*(v7 + 16);
      v5 = v34;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100028DC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FeatureState(0);
  v41 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureInfo(0);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10001712C(&qword_100045440, &unk_100035E50);
  v42 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v39 = v10;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v44 = *(v40 + 72);
      v26 = v25 + v44 * v24;
      if (v42)
      {
        sub_100010D10(v26, v9, type metadata accessor for FeatureInfo);
        v27 = *(v10 + 56);
        v43 = *(v41 + 72);
        sub_100010D10(v27 + v43 * v24, v45, type metadata accessor for FeatureState);
      }

      else
      {
        sub_1000108FC(v26, v9, type metadata accessor for FeatureInfo);
        v28 = *(v10 + 56);
        v43 = *(v41 + 72);
        sub_1000108FC(v28 + v43 * v24, v45, type metadata accessor for FeatureState);
      }

      Hasher.init(_seed:)();
      type metadata accessor for SystemMonitorConfig.MonitorType();
      sub_10002AB30(&qword_1000459B0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      type metadata accessor for SystemMonitorConfig.DataType();
      sub_10002AB30(&qword_1000459B8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v10 = v39;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v10 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_100010D10(v9, *(v12 + 48) + v44 * v20, type metadata accessor for FeatureInfo);
      result = sub_100010D10(v45, *(v12 + 56) + v43 * v20, type metadata accessor for FeatureState);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

unint64_t sub_100029318(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100015688(a2 & 0xFFFFFFFFFFFFLL);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100029E78();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100028B0C(v14, a3 & 1);
    v9 = sub_100015688(a2 & 0xFFFFFFFFFFFFLL);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_10002977C(v9, a2 & 0xFFFFFFFFFFFFLL, a1, v19);
  }
}

void sub_10002943C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000710C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_10000C940();
      goto LABEL_7;
    }

    sub_100007518(v15, a4 & 1);
    v25 = sub_10000710C(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for SimpleType();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1000297D0(v12, a2, a3, a1, v18);
}

uint64_t sub_1000295BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeatureInfo(0);
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1000289A4(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_10002A250();
      goto LABEL_7;
    }

    sub_100028DC4(v16, a3 & 1);
    v23 = sub_1000289A4(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000108FC(a2, v10, type metadata accessor for FeatureInfo);
      return sub_100029880(v13, v10, a1, v19);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for FeatureState(0) - 8) + 72) * v13;

  return sub_10002AB78(a1, v21);
}

unint64_t sub_10002977C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 8 * result;
  *v4 = a2;
  *(v4 + 4) = WORD2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

uint64_t sub_1000297D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SimpleType();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_100029880(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for FeatureInfo(0);
  sub_100010D10(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for FeatureInfo);
  v10 = a4[7];
  v11 = type metadata accessor for FeatureState(0);
  result = sub_100010D10(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for FeatureState);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_10002996C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FeatureInfo(0);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return v11;
  }

  v12 = ~v10;
  v13 = *(v7 + 72);
  v35 = v2;
  v36 = v13;
  while (1)
  {
    sub_1000108FC(*(v3 + 48) + v36 * v11, v9, type metadata accessor for FeatureInfo);
    type metadata accessor for SystemMonitorConfig.MonitorType();
    sub_10002AB30(&qword_100045BC0, &type metadata accessor for SystemMonitorConfig.MonitorType, &protocol conformance descriptor for SystemMonitorConfig.MonitorType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v39 == v37 && v40 == v38)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v17 = v6[5];
    v18 = *&v9[v17];
    v19 = *&v9[v17 + 8];
    v20 = (a1 + v17);
    v21 = v18 == *v20 && v19 == v20[1];
    if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v22 = v6[6];
    v23 = *&v9[v22];
    v24 = *&v9[v22 + 8];
    v25 = (a1 + v22);
    if ((v23 != *v25 || v24 != v25[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v26 = v6[7];
    v27 = *&v9[v26];
    v28 = *&v9[v26 + 8];
    v29 = (a1 + v26);
    if ((v27 != *v29 || v28 != v29[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    v30 = v6[8];
    v31 = *&v9[v30];
    v32 = *&v9[v30 + 8];
    v33 = (a1 + v30);
    if ((v31 != *v33 || v32 != v33[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_4;
    }

    type metadata accessor for SystemMonitorConfig.DataType();
    sub_10002AB30(&qword_100045BC8, &type metadata accessor for SystemMonitorConfig.DataType, &protocol conformance descriptor for SystemMonitorConfig.DataType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v39 == v37 && v40 == v38)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v35;
    if (v14)
    {
      goto LABEL_29;
    }

LABEL_4:
    sub_100019D24(v9);
    v11 = (v11 + 1) & v12;
    if (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return v11;
    }
  }

LABEL_29:
  sub_100019D24(v9);
  return v11;
}

void *sub_100029D1C()
{
  v1 = v0;
  sub_10001712C(&qword_100045BA8, &qword_1000364F8);
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

void *sub_100029E78()
{
  v1 = v0;
  sub_10001712C(&qword_1000453F8, &qword_100035E08);
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOWORD(v18) = *(v18 + 4);
        v20 = *(*(v2 + 56) + v17);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 4) = v18;
        *(*(v4 + 56) + v17) = v20;
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

void *sub_100029FE8()
{
  v1 = v0;
  v29 = type metadata accessor for Message();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045430, &qword_100035E40);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 4 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 4 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_10002A250()
{
  v1 = v0;
  v2 = type metadata accessor for FeatureState(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FeatureInfo(0);
  v30 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001712C(&qword_100045440, &unk_100035E50);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1000108FC(*(v6 + 48) + v23, v29, type metadata accessor for FeatureInfo);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1000108FC(*(v6 + 56) + v25, v31, type metadata accessor for FeatureState);
        v26 = v33;
        sub_100010D10(v22, *(v33 + 48) + v23, type metadata accessor for FeatureInfo);
        result = sub_100010D10(v24, *(v26 + 56) + v25, type metadata accessor for FeatureState);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

unint64_t sub_10002A544(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_10002A60C()
{
  v0 = sub_10001712C(&qword_1000457E8, &qword_1000364F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  if (Message.shouldRetain.getter())
  {
    return 1;
  }

  if (Message.type.getter() != 7)
  {
    return 0;
  }

  v4 = Message.category.getter();
  if (v4 != 11 && v4 != 1)
  {
    return 0;
  }

  v6 = Message.content.getter();
  if (*(v6 + 16) && (v7 = sub_10000710C(0x725F736D72616C61, 0xEA0000000000736DLL), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for SimpleType();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v2, v10 + *(v12 + 72) * v9, v11);

    v13 = 1;
    (*(v12 + 56))(v2, 0, 1, v11);
  }

  else
  {

    v14 = type metadata accessor for SimpleType();
    (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
    v13 = 0;
  }

  sub_10000C80C(v2);
  return v13;
}

unint64_t sub_10002A810(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_10001712C(&qword_100045BA0, &unk_1000364D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10002A8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Message();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10002AA28(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10002AB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002AB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002ABDC(uint64_t a1, uint64_t a2)
{
  v5 = sub_10001712C(&qword_100045998, &qword_100036360);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FeatureState(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100006CC8(a1, &qword_100045998, &qword_100036360);
    sub_100019AEC(a2, v7);
    sub_100019D24(a2);
    return sub_100006CC8(v7, &qword_100045998, &qword_100036360);
  }

  else
  {
    sub_100019D80(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1000295BC(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_100019D24(a2);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_10002AD88(uint64_t a1, uint64_t a2, int a3, __int16 a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = a1;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 44) = a4;
  aBlock[4] = sub_10002E748;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_1000423D0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_10002B070(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Message();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v16[1] = *(v1 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue);
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_10002C064;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000016B8;
  aBlock[3] = &unk_100042380;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_100001CF0(&qword_100045460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10001712C(&unk_100045920, &qword_100035FC0);
  sub_100001BC4(&qword_100045468, &unk_100045920, &qword_100035FC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v19 + 8))(v5, v3);
  (*(v17 + 8))(v8, v18);
}

uint64_t sub_10002B3F8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.contains(_:)();

    return v2 & 1;
  }

  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    v6 = *(a1 + OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid);
    Hasher._combine(_:)(v6);
    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    String.hash(into:)();
    v9 = Hasher._finalize()();
    v10 = a2;
    v11 = a2 + 56;
    v12 = -1 << *(a2 + 32);
    v13 = v9 & ~v12;
    if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = *(v10 + 48);
      v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
      do
      {
        v17 = *(v15 + 8 * v13);
        if (*(v17 + v16) == v6)
        {
          v18 = *(v17 + 24) == v7 && *(v17 + 32) == v8;
          if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }

          v16 = OBJC_IVAR____TtC15audioanalyticsd20ClientServerInstance_pid;
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_10002B564(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v7 = v6;
  v55 = a6;
  v52 = a3;
  v53 = a4;
  LODWORD(v51) = a2;
  v10 = type metadata accessor for Keys();
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v54);
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v16 - 8);
  *(v7 + 64) = -1;
  *(v7 + 66) = 0;
  *(v7 + 72) = sub_100005ADC(&_swiftEmptyArrayStorage);
  *(v7 + 80) = 0;
  *(v7 + 88) = &_swiftEmptyArrayStorage;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  static Logger.session.getter();
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_summaryDecoratorWorkers) = &_swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtC15audioanalyticsd7Session_stopSignalTime;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v7 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC15audioanalyticsd7Session_messageHistory;
  *(v7 + v19) = sub_100005CC8(&_swiftEmptyArrayStorage);
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessages) = 0;
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_numProcessedMessagesUnique) = 0;
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_startOnFirstMessageCalled) = 0;
  *(v7 + 16) = a1;
  *(v7 + 48) = v51;
  v20 = v53;
  *(v7 + 32) = v52;
  *(v7 + 40) = v20;
  *(v7 + 56) = a5;
  LOBYTE(v20) = v55;
  *(v7 + 24) = v55;
  v21 = (v20 & 1) == 0;
  v22 = 5;
  if (v21)
  {
    v22 = 1;
  }

  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_stopWaitTime) = v22;
  v23 = sub_100008570();
  v52 = a5;
  v53 = v23;
  aBlock = 0;
  v57 = 0xE000000000000000;

  _StringGuts.grow(_:)(39);

  aBlock = 0xD000000000000025;
  v57 = 0x8000000100037100;
  v51 = a1;
  v62 = a1;
  v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v24);

  static DispatchQoS.userInteractive.getter();
  (*(v13 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v12);
  aBlock = &_swiftEmptyArrayStorage;
  sub_100001CF0(&unk_100045970, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10001712C(&qword_1000453D0, &qword_100035C88);
  sub_100001BC4(&qword_100045980, &qword_1000453D0, &qword_100035C88);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (v55 & 1) != 0 && (*(v7 + 64) = 5, sub_10001712C(&qword_100045E10, &qword_100036680), v25 = (sub_10001712C(&qword_100045400, &unk_100035E10) - 8), v26 = (*(*v25 + 80) + 32) & ~*(*v25 + 80), v27 = swift_allocObject(), *(v27 + 16) = xmmword_100035FB0, v28 = (v27 + v26), v29 = (v28 + v25[14]), v30 = v48, v31 = v49, v32 = v50, (*(v49 + 104))(v48, enum case for Keys.applicationName(_:), v50), v33 = Keys.rawValue.getter(), v35 = v34, (*(v31 + 8))(v30, v32), *v28 = v33, v28[1] = v35, *v29 = 0x6E776F6E6B6E55, v29[1] = 0xE700000000000000, v36 = enum case for SimpleType.string(_:), v37 = type metadata accessor for SimpleType(), (*(*(v37 - 8) + 104))(v29, v36, v37), v38 = sub_100005ADC(v27), swift_setDeallocating(), sub_100006CC8(v28, &qword_100045400, &unk_100035E10), swift_deallocClassInstance(), v39 = *(v7 + OBJC_IVAR____TtC15audioanalyticsd7Session_workQueue), v40 = swift_allocObject(), *(v40 + 16) = v7, *(v40 + 24) = v38, v41 = swift_allocObject(), *(v41 + 16) = sub_10002E868, *(v41 + 24) = v40, v60 = sub_10000853C, v61 = v41, aBlock = _NSConcreteStackBlock, v57 = 1107296256, v58 = sub_100002EB0, v59 = &unk_1000425B0, v42 = _Block_copy(&aBlock), , , , , dispatch_sync(v39, v42), _Block_release(v42), LOBYTE(v39) = swift_isEscapingClosureAtFileLocation(), , , result = , (v39))
  {
    __break(1u);
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Created reporting session. { reporterID=%lld }", v46, 0xCu);
    }

    return v7;
  }

  return result;
}