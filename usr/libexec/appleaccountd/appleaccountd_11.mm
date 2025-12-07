uint64_t sub_10014A6A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__notificationManager;
  v2 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__cdpRequestController;
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__custodianStorageController;
  v6 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotReachableStatusHandler(uint64_t a1)
{
  result = qword_1003DF330;
  if (!qword_1003DF330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10014A8D0(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003DC940, &unk_1003D9890, &unk_1003405D0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10014AAC4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1000082A8;

  return sub_10014A09C(a1, a2, a3, a4, a5, a6, a7 & 1);
}

void sub_10014ABA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005814(&qword_1003DEC40, &unk_10033E620);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23[-1] - v10;
  v12 = type metadata accessor for TrustedContactUserNotification(0);
  __chkstk_darwin(v12);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = &v23[-1] - v14;
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100008D04(v16, qword_1003FAA88);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_1000A6B60(a1, 1);
    if (os_log_type_enabled(v22, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = _convertErrorToNSError(_:)();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v22, v17, "Error finding if a healthy custodian exists: %@", v18, 0xCu);
      sub_100083380(v19);
    }

    v21 = v22;
  }

  else if ((a1 & 1) == 0)
  {
    sub_100012050(a4, &v23[-1] - v14);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__notificationManager, v8);
    Dependency.wrappedValue.getter();
    (*(v9 + 8))(v11, v8);
    sub_1000080F8(v23, v23[3]);
    sub_1002CA150(v24);
    sub_1002D2E28(v24, 0, 0);
    sub_1000C5460(v24);
    sub_10014B664(v15, type metadata accessor for TrustedContactUserNotification);
    sub_10000839C(v23);
  }
}

uint64_t sub_10014AEC4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v28 = type metadata accessor for URL();
  v7 = *(v28 - 8);
  v8 = __chkstk_darwin(v28);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  (*(v14 + 16))(&v25 - v15, v2 + OBJC_IVAR____TtC13appleaccountd25NotReachableStatusHandler__custodianStorageController, v13);
  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v17 = sub_1000080F8(v30, v30[3]);
  v18 = swift_allocObject();
  v19 = v27;
  *(v18 + 16) = v26;
  *(v18 + 24) = v19;
  v20 = sub_1000080F8((*v17 + 16), *(*v17 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v21 = *(v7 + 8);
  v22 = v10;
  v23 = v28;
  v21(v22, v28);
  (*(v4 + 16))(v6, *v20 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v6, v3);
  sub_1000080F8(v29, v29[3]);
  sub_1000324D8(v12, sub_10014B658, v18);

  v21(v12, v23);
  sub_10000839C(v29);
  return sub_10000839C(v30);
}

uint64_t sub_10014B250(uint64_t a1, char a2, void (*a3)(uint64_t, void), uint64_t a4)
{
  v8 = type metadata accessor for CustodianRecord(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    v17[1] = a4;
    v12 = 0;
    v13 = *(a1 + 16);
    do
    {
      v14 = v12;
      if (v13 == v12)
      {
        break;
      }

      sub_100012050(a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v12++, v11);
      v15 = *&v11[*(v8 + 36)];
      sub_10014B664(v11, type metadata accessor for CustodianRecord);
    }

    while (v15 != 2);
    a1 = v13 != v14;
  }

  a3(a1, a2 & 1);
  return sub_1000A6B60(a1, a2 & 1);
}

uint64_t sub_10014B3BC()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_10014B59C(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CustodianRecord(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10014ABA8(a1, a2 & 1, v6, v7);
}

uint64_t sub_10014B620()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10014B664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10014B6C4()
{
  result = sub_10014B6E8();
  qword_1003FA828 = result;
  unk_1003FA830 = v1;
  return result;
}

uint64_t sub_10014B6E8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = sub_1003084DC(0xD000000000000010, 0x800000010032F3A0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void *sub_10014B7C8()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v13[1] = _swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10015B688(0xD000000000000017);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA40);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "============== appleaccountd starting ==============", v11, 2u);
  }

  return v1;
}

uint64_t sub_10014BB20()
{
  type metadata accessor for XPCNotificationObserver();
  swift_initStaticObject();
  sub_100314434();
  if (qword_1003D7E30 != -1)
  {
    swift_once();
  }

  *(qword_1003FA948 + OBJC_IVAR____TtC13appleaccountd18AppInstallObserver_observers) = _swiftEmptyArrayStorage;

  return swift_deallocClassInstance();
}

void sub_10014BBFC(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA40);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_10021145C(v1, v3, &v13);
      _os_log_impl(&_mh_execute_header, v5, v6, "notifyd Event name: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    if (qword_1003D7DF8 != -1)
    {
      swift_once();
    }

    sub_10015B224(v1, v3);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA40);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "notifyd Event name unavailable", v11, 2u);
    }
  }
}

uint64_t sub_10014BE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10014BEE8(void *a1)
{
  if (qword_1003D7E30 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_10024EC8C(a1);
}

uint64_t sub_10014C0CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v4 - 8);
  v12 = v4;
  __chkstk_darwin(v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v15 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v16 = &off_1003B1488;
  *&v14 = a1;
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  *(a2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel__commonFields) = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue;
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  *(a2 + v9) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10003E950(&v14, a2 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_followUpController);
  return a2;
}

void sub_10014C40C()
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "processLaunchEvents", v3, 2u);
  }

  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  v12 = sub_10014BBFC;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10014BE88;
  v11 = &unk_1003AACA8;
  v5 = _Block_copy(&v8);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v4, v5);
  _Block_release(v5);

  v6 = static OS_dispatch_queue.main.getter();
  v12 = sub_10014BEE8;
  v13 = 0;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_10014BE88;
  v11 = &unk_1003AACD0;
  v7 = _Block_copy(&v8);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v6, v7);
  _Block_release(v7);
}

void *sub_10014C620(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v24[3] = type metadata accessor for LocalCache();
  v24[4] = &off_1003B4950;
  v24[0] = a2;
  a3[14] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a3[15] = v10;
  a3[16] = 0;
  a3[17] = _swiftEmptyArrayStorage;
  a3[18] = [objc_allocWithZone(NSOperationQueue) init];
  sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  a3[19] = 0;
  a3[20] = 0;
  static DispatchQoS.unspecified.getter();
  *&v22[0] = _swiftEmptyArrayStorage;
  sub_10014EF3C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  a3[21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = type metadata accessor for CloudKitStore();
  a3[2] = v20;
  a3[5] = v11;
  a3[6] = &off_1003B3B88;
  sub_100040738(v24, (a3 + 7));
  sub_10014EF84((a3 + 2), v22);
  type metadata accessor for CloudKitSyncPushDelegate();
  v12 = swift_allocObject();
  v13 = qword_1003D7EB0;

  if (v13 != -1)
  {
    swift_once();
  }

  *(v12 + 16) = qword_1003FA9B8;
  v14 = v22[1];
  *(v12 + 24) = v22[0];
  *(v12 + 40) = v14;
  *(v12 + 56) = v23;
  a3[12] = v12;
  v15 = type metadata accessor for CloudKitAPSBridge();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC13appleaccountd17CloudKitAPSBridge_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_1003B4750;
  swift_unknownObjectWeakAssign();
  v21.receiver = v16;
  v21.super_class = v15;

  v17 = objc_msgSendSuper2(&v21, "init");
  sub_10000839C(v24);
  a3[13] = v17;
  return a3;
}

void sub_10014C9E4()
{
  v0 = type metadata accessor for DependencyRegistry.Entry();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v161 = sub_100008D04(v4, qword_1003FAA40);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting up dependencies", v7, 2u);
  }

  v8 = type metadata accessor for DependencyRegistry();
  sub_100005814(&qword_1003D9AF0, &qword_10033F198);
  v3[3] = &type metadata for ClientInfoProvider;
  *v3 = 0xD000000000000020;
  v3[1] = 0x800000010032C200;
  v9 = v1 + 104;
  v10 = *(v1 + 104);
  v169 = enum case for DependencyRegistry.Entry.exact(_:);
  v10(v3);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  v11 = v13;
  v13(v3, v0);
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  v14 = type metadata accessor for XPCActivitySchedulerFactory();
  v15 = swift_allocObject();
  v3[3] = v14;
  v16 = v10;
  v3[4] = sub_10014EF3C(&qword_1003DF5A8, type metadata accessor for XPCActivitySchedulerFactory, &unk_100343C94);
  *v3 = v15;
  v164 = enum case for DependencyRegistry.Entry.factory(_:);
  v10(v3);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v13(v3, v0);
  v17 = type metadata accessor for DaemonAccountStore();
  v18 = swift_allocObject();
  v19 = [objc_opt_self() defaultStore];
  if (!v19)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v18 + 16) = v19;
  v162 = objc_opt_self();
  *(v18 + 24) = [v162 sharedInstance];
  v20 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  v3[3] = v17;
  *v3 = v18;
  v21 = v169;
  v168 = v9;
  (v16)(v3, v169, v0);

  v158 = v20;
  v166 = v8;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v163 = v11;
  v11(v3, v0);
  v22 = [objc_opt_self() contextForPrimaryAccount];
  v167 = v12;
  v159 = v18;
  if (!v22)
  {
    v27 = v16;
    v39 = [objc_allocWithZone(CDPWalrusStateController) init];
    v40 = [objc_allocWithZone(CDPStateController) init];
    v41 = [objc_allocWithZone(ACAccountStore) init];
    v38 = type metadata accessor for CDPRequestController();
    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = v40;
    v42[4] = v41;
    v174 = v38;
    v175 = &off_1003AA7A0;
    v173[0] = v42;
    goto LABEL_14;
  }

  v23 = v22;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Setting health check context type", v26, 2u);
  }

  v27 = v16;

  [v23 setType:15];
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Passing primary context with health check context type to CDPRequestController", v30, 2u);
  }

  v31 = objc_allocWithZone(CDPWalrusStateController);
  v32 = v23;
  v33 = [v31 initWithContext:v32];
  v34 = [objc_allocWithZone(CDPStateController) initWithContext:v32];

  if (!v34)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v35 = [objc_allocWithZone(ACAccountStore) init];
  v36 = type metadata accessor for CDPRequestController();
  v37 = swift_allocObject();
  v37[2] = v33;
  v37[3] = v34;
  v37[4] = v35;
  v171 = v36;
  v172 = &off_1003AA7A0;

  *&v170 = v37;
  sub_10003E950(&v170, v173);
  v38 = v174;
LABEL_14:
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  v43 = sub_1000080F8(v173, v38);
  v3[3] = v38;
  v44 = sub_10000DBEC(v3);
  (*(*(v38 - 8) + 16))(v44, v43, v38);
  v165 = v27;
  (v27)(v3, v21, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45 = v163;
  v163(v3, v0);
  sub_100005814(&qword_1003DF5B0, &qword_100343688);
  v46 = type metadata accessor for CDPFollowUpHandlerFactory();
  v47 = swift_allocObject();
  v3[3] = v46;
  v3[4] = sub_10014EF3C(&qword_1003DF5B8, type metadata accessor for CDPFollowUpHandlerFactory, &unk_100343AB4);
  *v3 = v47;
  (v27)(v3, v164, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  v48 = [objc_allocWithZone(AAFollowUpController) init];
  v49 = sub_100005814(&unk_1003DACE0, &unk_10033F920);
  v3[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  *v3 = v48;
  v50 = v169;
  (v27)(v3, v169, v0);
  v161 = v48;
  v157 = v49;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  v51 = [v162 sharedInstance];
  v3[3] = sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  *v3 = v51;
  (v27)(v3, v50, v0);
  v156 = v51;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  v52 = [objc_opt_self() currentInfo];
  if (!v52)
  {
    v52 = [objc_allocWithZone(AADeviceInfo) init];
  }

  v3[3] = sub_100016034(0, &unk_1003DF5C8, AADeviceInfo_ptr);
  *v3 = v52;
  v53 = v169;
  v54 = v165;
  v165(v3, v169, v0);
  v155 = v52;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  v3[3] = &type metadata for RecoveryConstants;
  *v3 = 60;
  v54(v3, v53, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  sub_100005814(&unk_1003D9820, &unk_10033EFD0);
  v55 = v54;
  v56 = v45;
  v57 = [objc_allocWithZone(AAContactsManager) init];
  v3[3] = sub_100016034(0, &qword_1003DF5D8, AAContactsManager_ptr);
  *v3 = v57;
  v55(v3, v53, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  v58 = type metadata accessor for AnalyticsRTCReporter();
  v59 = [objc_allocWithZone(v58) init];
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  v3[3] = v58;
  *v3 = v59;
  v60 = v165;
  v165(v3, v169, v0);
  v154 = v59;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v45(v3, v0);
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  if (qword_1003D7EA8 != -1)
  {
    swift_once();
  }

  v61 = qword_1003FA9B0;
  v3[3] = type metadata accessor for PushHelperService();
  *v3 = v61;
  v62 = v169;
  v60(v3, v169, v0);
  v63 = v61;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v56(v3, v0);
  sub_100005814(&unk_1003DF5E0, &unk_100343690);
  v3[3] = &type metadata for DeviceInfoProvider;
  v60(v3, v62, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v56(v3, v0);
  sub_100005814(&qword_1003E0400, &qword_100344870);
  v64 = v60;
  v65 = [objc_allocWithZone(AAFKeychainManager) init];
  v3[3] = sub_100016034(0, &qword_1003DF5F0, AAFKeychainManager_ptr);
  *v3 = v65;
  v66 = v169;
  v64(v3, v169, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v56(v3, v0);
  v67 = sub_100016034(0, &qword_1003DF5F8, NSUserDefaults_ptr);
  v68 = [objc_opt_self() standardUserDefaults];
  v3[3] = v67;
  *v3 = v68;
  v69 = v66;
  v70 = v165;
  v165(v3, v69, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v56(v3, v0);
  sub_100005814(&qword_1003DF600, &unk_1003436A0);
  v71 = type metadata accessor for DeviceStateFactory();
  v72 = swift_allocObject();
  v3[3] = v71;
  v3[4] = sub_10014EF3C(&qword_1003DF608, type metadata accessor for DeviceStateFactory, &unk_100343B7C);
  *v3 = v72;
  v70(v3, v164, v0);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v56(v3, v0);
  v73 = type metadata accessor for CDPContextProvider();
  v74 = swift_allocObject();
  v153 = v74;
  sub_100005814(&qword_1003D9870, &qword_10033F000);
  v3[3] = v73;
  *v3 = v74;
  v75 = v0;
  v76 = v169;
  v70(v3, v169, v75);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v77 = v56;
  v56(v3, v75);
  v78 = type metadata accessor for DaemonAnalyticsAccountModel(0);
  v79 = swift_allocObject();
  v152 = v161;
  v80 = sub_10014C0CC(v152, v79);
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  v81 = v165;
  v3[3] = v78;
  v151[4] = v80;
  *v3 = v80;
  v81(v3, v76, v75);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v77(v3, v75);
  v82 = type metadata accessor for CloudKitStore();
  v83 = swift_allocObject();
  v83[3] = 0;
  swift_unknownObjectWeakInit();
  v84 = sub_100005814(&unk_1003D9830, &qword_10033E970);
  v3[3] = v82;
  *v3 = v83;
  v85 = v169;
  v81(v3, v169, v75);

  v161 = v84;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v86 = v163;
  v163(v3, v75);
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v3[3] = v82;
  v162 = v83;
  *v3 = v83;
  v160 = v75;
  v81(v3, v85, v75);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v86(v3, v75);
  v87 = v86;
  v88 = type metadata accessor for LocalCache();
  swift_allocObject();
  v89 = sub_1003081E0();
  v90 = sub_100005814(&unk_1003DF610, &unk_1003437A0);
  v3[3] = v88;
  *v3 = v89;
  v91 = v160;
  v165(v3, v169, v160);

  v151[1] = v90;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v87(v3, v91);
  v171 = v88;
  v172 = &off_1003B4950;
  *&v170 = v89;
  v151[3] = v89;
  v92 = type metadata accessor for CloudKitSyncManager();
  v93 = swift_allocObject();
  v94 = sub_10003E968(&v170, v88);
  __chkstk_darwin(v94);
  v96 = (v151 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v97 + 16))(v96);
  v98 = *v96;
  v99 = v162;

  v100 = sub_10014C620(v99, v98, v93);

  sub_10000839C(&v170);
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  v3[3] = v92;
  v151[2] = v100;
  *v3 = v100;
  v101 = v169;
  v102 = v165;
  v165(v3, v169, v91);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v103 = v163;
  v163(v3, v91);
  sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
  v104 = type metadata accessor for SmartUbiquitousKeyValueStore(0);
  v105 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  *(v105 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___unencryptedUKVS) = 0;
  *(v105 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptedUKVS) = 0;
  *(v105 + OBJC_IVAR____TtC13appleaccountd28SmartUbiquitousKeyValueStore____lazy_storage___encryptionAvailableTask) = 0;
  v3[3] = v104;
  *v3 = v105;
  v102(v3, v101, v91);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v103(v3, v91);
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  v106 = type metadata accessor for NotificationManagerFactory();
  v107 = swift_allocObject();
  v3[3] = v106;
  v3[4] = sub_10014EF3C(&qword_1003DF620, type metadata accessor for NotificationManagerFactory, &unk_100343BCC);
  *v3 = v107;
  v102(v3, v164, v91);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v108 = v103;
  v103(v3, v91);
  sub_100005814(&unk_1003DF628, &unk_100349290);
  v109 = type metadata accessor for DeamonSetupServiceRequestController();
  v110 = swift_allocObject();
  v3[3] = v109;
  *v3 = v110;
  v102(v3, v169, v91);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v103(v3, v91);
  sub_100005814(&unk_1003DA950, &unk_1003436B0);
  v111 = type metadata accessor for AAAppleIDAuthenticationProviderFactory();
  v112 = swift_allocObject();
  v3[3] = v111;
  v3[4] = sub_10014EF3C(&qword_1003DF638, type metadata accessor for AAAppleIDAuthenticationProviderFactory, &unk_100343ADC);
  *v3 = v112;
  v113 = v164;
  v114 = v165;
  v165(v3, v164, v91);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v108(v3, v91);
  sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  v115 = type metadata accessor for TapToRadarHelperFactory();
  v116 = swift_allocObject();
  v3[3] = v115;
  v3[4] = sub_10014EF3C(&qword_1003DF648, type metadata accessor for TapToRadarHelperFactory, &unk_100343A64);
  *v3 = v116;
  v117 = v160;
  v114(v3, v113, v160);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v108(v3, v117);
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  v118 = type metadata accessor for TapToRadarRequesterFactory();
  v119 = swift_allocObject();
  v3[3] = v118;
  v3[4] = sub_10014EF3C(&qword_1003DF658, type metadata accessor for TapToRadarRequesterFactory, &unk_100343B2C);
  *v3 = v119;
  v120 = v165;
  v165(v3, v113, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v108(v3, v117);
  sub_100005814(&qword_1003DF660, &qword_1003436C0);
  v121 = type metadata accessor for WalrusPCSSignatureValidatorFactory();
  v122 = swift_allocObject();
  v3[3] = v121;
  v3[4] = sub_10014EF3C(&qword_1003DF668, type metadata accessor for WalrusPCSSignatureValidatorFactory, &unk_100343A8C);
  *v3 = v122;
  v120(v3, v113, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v108(v3, v117);
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  v123 = type metadata accessor for StorageController(0);
  v124 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v171 = v123;
  v172 = &off_1003B49F0;
  *&v170 = v124;
  v125 = sub_1000080F8(&v170, v123);
  v3[3] = v123;
  v126 = sub_10000DBEC(v3);
  (*(*(v123 - 8) + 16))(v126, v125, v123);
  v127 = v169;
  v120(v3, v169, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v128 = v163;
  v163(v3, v117);
  sub_10000839C(&v170);
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  v129 = type metadata accessor for UrlBagProvider();
  v130 = swift_allocObject();
  strcpy((v130 + 16), "custodianCfgs");
  *(v130 + 30) = -4864;
  *(v130 + 32) = 0xD000000000000026;
  *(v130 + 40) = 0x800000010032F290;
  v3[3] = v129;
  *v3 = v130;
  v120(v3, v127, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v128(v3, v117);
  sub_100005814(&qword_1003DF670, &qword_1003436C8);
  v131 = type metadata accessor for PDPAndADPCheckingFactory();
  v132 = swift_allocObject();
  v3[3] = v131;
  v3[4] = sub_10014EF3C(&qword_1003DF678, type metadata accessor for PDPAndADPCheckingFactory, &unk_100343A3C);
  *v3 = v132;
  v120(v3, v164, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133 = v163;
  v163(v3, v117);
  v134 = sub_100016034(0, &qword_1003DF680, CDPCustodianRecoveryKeyController_ptr);
  v135 = [objc_allocWithZone(CDPCustodianRecoveryKeyController) init];
  v3[3] = v134;
  *v3 = v135;
  v120(v3, v169, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133(v3, v117);
  sub_100005814(&unk_1003D9800, &unk_10033EFB0);
  v136 = type metadata accessor for CustodianIDMSRequestManagerFactory();
  v137 = swift_allocObject();
  v3[3] = v136;
  v3[4] = sub_10014EF3C(&unk_1003DF690, type metadata accessor for CustodianIDMSRequestManagerFactory, &unk_100343C44);
  *v3 = v137;
  v120(v3, v164, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133(v3, v117);
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  v138 = [objc_opt_self() sharedService];
  v3[3] = sub_100016034(0, &qword_1003DF6A0, AAMessagingService_ptr);
  *v3 = v138;
  v139 = v169;
  v120(v3, v169, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133(v3, v117);
  sub_100005814(&qword_1003DF6A8, qword_10034A1B0);
  v140 = [objc_opt_self() mainBundle];
  v3[3] = &type metadata for BundleInfoProvider;
  *v3 = v140;
  v120(v3, v139, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133(v3, v117);
  sub_100005814(&unk_1003DDBF0, &qword_1003427F0);
  v141 = type metadata accessor for CustodianSPAKEFactory();
  v142 = swift_allocObject();
  v3[3] = v141;
  *v3 = v142;
  v120(v3, v139, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v133(v3, v117);
  sub_100005814(&unk_1003D9B70, &unk_10033F1B0);
  v143 = [objc_allocWithZone(AATrustedContactFlowPresenter) init];
  v3[3] = sub_100016034(0, &qword_1003DF6B0, AATrustedContactFlowPresenter_ptr);
  *v3 = v143;
  v120(v3, v139, v117);
  v144 = v120;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v145 = v163;
  v163(v3, v117);
  sub_100005814(&qword_1003DF6B8, &qword_100346BB0);
  v146 = type metadata accessor for ProtoAccountManager(0);
  v147 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v3[3] = v146;
  *v3 = v147;
  v148 = v169;
  v144(v3, v169, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v145(v3, v117);
  sub_100005814(&qword_1003DF6C0, &unk_10033E6D0);
  v149 = type metadata accessor for AgeMigrationAccountManager(0);
  v150 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v3[3] = v149;
  *v3 = v150;
  v165(v3, v148, v117);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();

  sub_10000839C(v173);
  v145(v3, v117);
}

void sub_10014EAFC()
{
  if (qword_1003D7DF0 != -1)
  {
    swift_once();
  }

  if (unk_1003FA830)
  {
    v0 = qword_1003FA828;
  }

  else
  {
    v0 = 0xD000000000000012;
  }

  if (unk_1003FA830)
  {
    v1 = unk_1003FA830;
  }

  else
  {
    v1 = 0x800000010032F270;
  }

  v2 = qword_1003D7F20;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAA40);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v8 = sub_10021145C(v0, v1, &v25);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Starting appleaccountd - %s", v6, 0xCu);
    sub_10000839C(v7);
  }

  else
  {
  }

  sub_10014C40C();
  sub_10014C9E4();
  if (qword_1003D7DF8 != -1)
  {
    swift_once();
  }

  sub_1001566A4();
  type metadata accessor for XPCNotificationObserver();
  swift_initStaticObject();
  sub_100313FEC();
  v23 = [objc_allocWithZone(ACAccountStore) init];
  v9 = [v23 aa_primaryAppleAccount];
  if (!v9)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Not logged in to AppleAccount", v22, 2u);
    }

    type metadata accessor for PDPAndADPChecks(0);
    swift_allocObject();
    sub_1002A0A78();
    sub_10029FED8();

    goto LABEL_24;
  }

  v24 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v10, v11))
  {

LABEL_24:
    v19 = v23;
    goto LABEL_25;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v25 = v13;
  *v12 = 136315138;
  v14 = [v24 username];

  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = sub_10021145C(v15, v17, &v25);

  *(v12 + 4) = v18;
  _os_log_impl(&_mh_execute_header, v10, v11, "Logged into: %s", v12, 0xCu);
  sub_10000839C(v13);

  v19 = v24;
LABEL_25:
}

uint64_t sub_10014EF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014EF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DF6C8, qword_1003436E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014EFF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10014F014()
{
  v0 = type metadata accessor for StorageController(0);
  v1 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  if (qword_1003D7E00 != -1)
  {
    swift_once();
  }

  v2 = qword_1003FA840;
  v3 = qword_1003D7E08;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1003FA848;
  v14[3] = v0;
  v14[4] = &off_1003B49F0;
  v14[0] = v1;
  v5 = objc_allocWithZone(type metadata accessor for AppleAccountDaemonManager());
  v6 = sub_10003E968(v14, v0);
  __chkstk_darwin(v6);
  v8 = (&v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;

  v11 = sub_100151BE4(v10, v2, v4, v5);

  sub_10000839C(v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

id sub_10014F284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleAccountDaemonManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10014F460(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_10014F484, 0, 0);
}

uint64_t sub_10014F484()
{
  v1 = [*(v0 + 72) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = v1;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    *(v0 + 88) = v5;
    *(v0 + 96) = v7;
    v8 = (v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache);
    v9 = *(v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache + 24);
    v10 = v8[4];
    sub_1000080F8(v8, v9);
    *(v0 + 56) = v3;
    *(v0 + 16) = v5;
    *(v0 + 24) = v7;
    v11 = *(*(v10 + 8) + 8);
    v24 = (*(v11 + 32) + **(v11 + 32));
    v12 = swift_task_alloc();
    *(v0 + 104) = v12;
    *v12 = v0;
    v12[1] = sub_10014F7B8;

    return v24(v0 + 48, v0 + 56, v0 + 16, v9, v11);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 72);
    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAA40);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 72);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get altDSID from account: %@", v20, 0xCu);
      sub_100083380(v21);
    }

    type metadata accessor for AAError(0);
    *(v0 + 40) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_10014F7B8()
{
  v1 = *v0;

  return _swift_task_switch(sub_10014F8D0, 0, 0);
}

uint64_t sub_10014F8D0()
{
  v18 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  if (v6)
  {
    v8 = v0[11];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = v9;
    v14 = sub_10021145C(v8, v7, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Cached login response (%@) for altDSID: %s", v10, 0x16u);
    sub_100083380(v11);

    sub_10000839C(v12);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_10014FC60(void *a1, void *a2, void *aBlock, void *a4)
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
  v10[1] = sub_10014FD38;

  return sub_10014F460(v8, v9);
}

uint64_t sub_10014FD38()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 40);
  if (v2)
  {
    v10 = _convertErrorToNSError(_:)();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 40), 0);
  }

  _Block_release(*(v4 + 40));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10014FEF4(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return _swift_task_switch(sub_10014FF14, 0, 0);
}

uint64_t sub_10014FF14()
{
  v1 = [*(v0 + 72) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 80);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 88) = v4;
    *(v0 + 96) = v6;
    v7 = (v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache);
    v8 = *(v2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache + 24);
    v9 = v7[4];
    sub_1000080F8(v7, v8);
    *(v0 + 16) = v4;
    *(v0 + 24) = v6;
    v10 = *(*(v9 + 8) + 8);
    v23 = (*(v10 + 40) + **(v10 + 40));
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v11[1] = sub_100150238;

    return v23(v0 + 48, v0 + 16, v8, v10);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 72);
    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 72);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to get altDSID from account: %@", v19, 0xCu);
      sub_100083380(v20);
    }

    type metadata accessor for AAError(0);
    *(v0 + 40) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100150238()
{

  return _swift_task_switch(sub_100150334, 0, 0);
}

uint64_t sub_100150334()
{
  v27 = v0;
  v1 = v0[6];
  if (v1)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA40);
    v3 = v1;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[12];
    if (v6)
    {
      v8 = v0[11];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v9 = 138412546;
      *(v9 + 4) = v3;
      *v10 = v1;
      *(v9 + 12) = 2080;
      v12 = v3;
      v13 = sub_10021145C(v8, v7, v26);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "Returning cached login response (%@) for altDSID: %s", v9, 0x16u);
      sub_100083380(v10);

      sub_10000839C(v11);
    }

    else
    {
    }

    v23 = v0[1];

    return v23(v3);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[12];
    if (v17)
    {
      v19 = v0[11];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      v22 = sub_10021145C(v19, v18, v26);

      *(v20 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cached login response not found for altDSID: %s", v20, 0xCu);
      sub_10000839C(v21);
    }

    else
    {
    }

    type metadata accessor for AAError(0);
    v0[8] = -4411;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100150888(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10015094C;

  return sub_10014FEF4(v6);
}

uint64_t sub_10015094C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_100150B04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA40);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "[AppleAccountDaemonManager urlConfiguration] called.", v9, 2u);
  }

  sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager), *(v3 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager + 24));
  return sub_100162438(a1, a2);
}

void sub_100150CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_100150D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  return _swift_task_switch(sub_100150DB0, 0, 0);
}

uint64_t sub_100150DB0()
{
  sub_100040738(v0[7] + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_protoAccountManager, (v0 + 2));
  sub_1000080F8(v0 + 2, v0[5]);
  v1 = type metadata accessor for ProtoAccountManager(0);
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100150F08;

  return (sub_100245AE4)(v1, &off_1003B0B70);
}

uint64_t sub_100150F08()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10015108C;
  }

  else
  {
    v2 = sub_10015101C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015101C()
{
  v1 = v0[8];
  sub_10000839C(v0 + 2);
  v1(0);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10015108C()
{
  v1 = v0[11];
  v2 = v0[8];
  sub_10000839C(v0 + 2);
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100151268(void *a1)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "AppleAccountTool sending %@ to reporter", v6, 0xCu);
    sub_100083380(v7);
  }

  [objc_msgSend(objc_opt_self() "reporter")];

  return swift_unknownObjectRelease();
}

uint64_t sub_1001513DC(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10026028C(sub_100152D94, v7);
}

uint64_t sub_100151524(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, v2, v3, "Failed to complete AppleID Availability health check: %@", v4, 0xCu);
      sub_100083380(v5);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Successfully completed AppleID Availability health check", v11, 2u);
    }

    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001518E8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100151990;

  return sub_100152930();
}

uint64_t sub_100151990()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 16);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 16));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_100151AF4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100151B34()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000082A8;

  return sub_1001518E8(v2);
}

id sub_100151BE4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v40 = type metadata accessor for DependencyRegistry.Entry();
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42[3] = type metadata accessor for StorageController(0);
  v42[4] = &off_1003B49F0;
  v42[0] = a1;
  sub_100040738(v42, &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController]);
  v11 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_loginResponseCache];
  *(v11 + 3) = sub_100005814(&qword_1003DF788, qword_1003437B0);
  *(v11 + 4) = sub_10015321C();
  *v11 = a2;
  v12 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_urlConfigurationManager];
  *(v12 + 3) = type metadata accessor for URLConfigurationManager();
  *(v12 + 4) = &off_1003AB498;
  *v12 = a3;
  v13 = type metadata accessor for DaemonAccountStore();
  v14 = swift_allocObject();
  v15 = objc_opt_self();

  result = [v15 defaultStore];
  if (result)
  {
    *(v14 + 16) = result;
    *(v14 + 24) = [objc_opt_self() sharedInstance];
    v17 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_accountStore];
    *(v17 + 3) = v13;
    *(v17 + 4) = &off_1003AB0B8;
    *v17 = v14;
    v18 = [objc_allocWithZone(AAFollowUpController) init];
    v19 = &a4[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_followUpController];
    *(v19 + 3) = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
    *(v19 + 4) = &off_1003B1488;
    *v19 = v18;
    type metadata accessor for DependencyRegistry();
    v20 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
    v21 = *(v17 + 3);
    v22 = sub_1000080F8(v17, v21);
    v10[3] = v21;
    v23 = sub_10000DBEC(v10);
    (*(*(v21 - 8) + 16))(v23, v22, v21);
    v24 = enum case for DependencyRegistry.Entry.exact(_:);
    v39 = a4;
    v37 = *(v8 + 104);
    v25 = v40;
    v37(v10, enum case for DependencyRegistry.Entry.exact(_:), v40);
    v38 = v20;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v26 = *(v8 + 8);
    v26(v10, v25);
    sub_100005814(&unk_1003DACE0, &unk_10033F920);
    v27 = *(v19 + 3);
    v28 = sub_1000080F8(v19, v27);
    v10[3] = v27;
    v29 = sub_10000DBEC(v10);
    (*(*(v27 - 8) + 16))(v29, v28, v27);
    v37(v10, v24, v25);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v26(v10, v25);
    v30 = type metadata accessor for ProtoAccountManager(0);
    v31 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v32 = v39;
    v33 = &v39[OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_protoAccountManager];
    v33[3] = v30;
    v33[4] = &off_1003B0B70;
    *v33 = v31;
    v34 = type metadata accessor for AppleAccountDaemonManager();
    v41.receiver = v32;
    v41.super_class = v34;
    v35 = objc_msgSendSuper2(&v41, "init");
    sub_10000839C(v42);
    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100152054(void *a1)
{
  sub_100208774();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  *(inited + 32) = sub_100016034(0, &qword_1003DE9A8, ACAccount_ptr);
  sub_100256FF4(inited);
  v2 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001521EC(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  _Block_copy(a3);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAA40);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v23 = a2;
    v24 = v6;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v13 = [v8 aa_altDSID];
    if (!v13)
    {
      _Block_release(a3);

      __break(1u);
      return;
    }

    v14 = v13;

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_10021145C(v15, v17, &v25);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Account %s is deleted.\nChecking if it's the primary account…", v11, 0xCu);
    sub_10000839C(v12);

    a2 = v23;
    v6 = v24;
  }

  else
  {
  }

  if ([v8 aa_isAccountClass:AAAccountClassPrimary])
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Primary account is deleted. Purging the AAD storage…", v21, 2u);
    }

    type metadata accessor for DataCryptor(0);
    swift_allocObject();
    sub_100301968(0xD000000000000017, 0x800000010032F3E0, 0x614364726F636572, 0xEB00000000656863);
    sub_100303ECC();
    sub_1000080F8((a2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController), *(a2 + OBJC_IVAR____TtC13appleaccountd25AppleAccountDaemonManager_storageController + 24));
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10005B8F8;
    *(v22 + 24) = v6;

    sub_10030C838(sub_1000D8510, v22);
  }

  else
  {
    a3[2](a3, 0);
  }
}

void sub_100152560(void (**a1)(void, void))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = objc_opt_self();
  _Block_copy(a1);
  v4 = [v3 sharedInstance];
  v5 = [v4 protoAccount];

  if (v5)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA40);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v5;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing proto account %@", v10, 0xCu);
      sub_100083380(v11);
    }

    v13 = [objc_opt_self() defaultStore];
    if (v13)
    {
      v14 = v13;
      v15 = [v3 sharedInstance];
      v16 = swift_allocObject();
      *(v16 + 16) = sub_10005B8F8;
      *(v16 + 24) = v2;
      v23[4] = sub_100152F90;
      v23[5] = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10013BB5C;
      v23[3] = &unk_1003AAE38;
      v17 = _Block_copy(v23);
      v18 = v7;

      [v14 removeAccount:v18 withCompletionHandler:v17];

      _Block_release(v17);
    }

    else
    {
      _Block_release(a1);
      __break(1u);
    }
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No proto account to remove.", v22, 2u);
    }

    a1[2](a1, 0);
  }
}

uint64_t sub_10015294C()
{
  type metadata accessor for AppleIDAvailabilityScheduler(0);
  swift_allocObject();
  v1 = sub_10025FAD0(sub_100151268, 0, 0);
  *(v0 + 16) = v1;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAA40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting the AppleID Availability health check...", v5, 2u);
  }

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100152B1C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000025, 0x800000010032F5E0, sub_100152CF8, v1, &type metadata for () + 8);
}

uint64_t sub_100152B1C()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_100152C94;
  }

  else
  {
    v2 = sub_100152C30;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100152C30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100152C94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100152D00()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100152D94(uint64_t a1)
{
  sub_100005814(&qword_1003DABC0, &unk_100342840);

  return sub_100151524(a1);
}

uint64_t sub_100152E10()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100152E48()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_100152E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000EF88;

  return sub_100150D8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100152F58()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100152F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100152FB8()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100153000()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000EF88;

  return sub_100150888(v2, v3, v4);
}

unint64_t sub_1001530B4()
{
  result = qword_1003D8370;
  if (!qword_1003D8370)
  {
    type metadata accessor for AAError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8370);
  }

  return result;
}

uint64_t sub_10015310C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10015315C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EF88;

  return sub_10014FC60(v2, v3, v5, v4);
}

unint64_t sub_10015321C()
{
  result = qword_1003DF790;
  if (!qword_1003DF790)
  {
    sub_100008CBC(&qword_1003DF788, qword_1003437B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DF790);
  }

  return result;
}

uint64_t sub_1001532C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DaemonActivityScheduler();
  result = swift_allocObject();
  *(result + 16) = 0;
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_100153330@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TrustedContactHealthScheduler(0);
  v3 = swift_allocObject();
  sub_100005814(&qword_1003DF5A0, &qword_100343680);
  result = Dependency.init(dependencyId:config:)();
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_1001533D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(AKCustodianController) init];
  a1[3] = type metadata accessor for CustodianIDMSRequestManager(0);
  v3 = sub_10000DBEC(a1);
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  result = Dependency.init(dependencyId:config:)();
  *v3 = v2;
  return result;
}

uint64_t sub_1001534B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BeneficiaryAccessKeyRepairHandler(0);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0F80, &unk_100344570);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0F90, &unk_100343CF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E0220, &unk_100344580);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  result = Dependency.init(dependencyId:config:)();
  *(v3 + OBJC_IVAR____TtC13appleaccountd33BeneficiaryAccessKeyRepairHandler____lazy_storage___inheritanceContext) = 1;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

id sub_1001536BC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UserNotificationManager(0);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v4 = [objc_allocWithZone(AAFollowUpController) init];
  v5 = (v3 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v5[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v5[4] = &off_1003B1488;
  *v5 = v4;
  v6 = type metadata accessor for NotificationController();
  result = [objc_allocWithZone(v6) init];
  v8 = (v3 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v8[3] = v6;
  v8[4] = &off_1003B3148;
  *v8 = result;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_100153830@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RecoveryFactorsController(0);
  v3 = swift_allocObject();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  result = Dependency.init(dependencyId:config:)();
  a1[3] = v2;
  *a1 = v3;
  return result;
}

id sub_100153A54@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AAAppleIDAuthenticationController();
  v3 = swift_allocObject();
  result = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  *(v3 + 16) = result;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_100153B34@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1(0);
  result = swift_allocObject();
  a2[3] = v3;
  *a2 = result;
  return result;
}

uint64_t sub_100153B9C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AAFTapToRadarHelper) init];
  result = sub_100016034(0, &qword_1003DF640, AAFTapToRadarHelper_ptr);
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_100153C50@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  swift_allocObject();
  result = a2();
  a3[3] = v5;
  *a3 = result;
  return result;
}

id sub_100153CB0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AAFollowUpController) init];
  v3 = type metadata accessor for DaemonTaskDispatcher();
  v4 = swift_allocObject();
  v5 = type metadata accessor for DaemonAccountStore();
  v6 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v6 + 16) = result;
    *(v6 + 24) = [objc_opt_self() sharedInstance];
    v21 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
    v22 = &off_1003B1488;
    *&v20 = v2;
    v18 = v3;
    v19 = &off_1003AB248;
    *&v17 = v4;
    v16[3] = v5;
    v16[4] = &off_1003AB0B8;
    v16[0] = v6;
    updated = type metadata accessor for AccountUpdatePerformer();
    v9 = swift_allocObject();
    v10 = sub_10003E968(v16, v5);
    __chkstk_darwin(v10);
    v12 = (&v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v9[17] = v5;
    v9[18] = &off_1003AB0B8;
    v9[14] = v14;
    sub_10003E950(&v20, (v9 + 2));
    v9[7] = sub_1003162FC;
    v9[8] = 0;
    sub_10003E950(&v17, (v9 + 9));
    result = sub_10000839C(v16);
    a1[3] = updated;
    a1[4] = &off_1003B5158;
    *a1 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100153EE4()
{
  result = [objc_allocWithZone(type metadata accessor for ConnectionManager(0)) init];
  qword_1003FA838 = result;
  return result;
}

id sub_100153F18()
{
  v1 = v0;
  v209 = sub_100005814(&unk_1003D97E0, &unk_10033EF90);
  v197 = *(v209 - 8);
  __chkstk_darwin(v209);
  v208 = &v186 - v2;
  v3 = type metadata accessor for DependencyRegistry.Entry();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v186 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  v7 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_daemonManager;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for AppleAccountDaemonManager()) init];
  v8 = type metadata accessor for CustodianDefaults();
  v9 = swift_allocObject();
  v10 = &v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDefaults];
  v215 = v0;
  v10[3] = v8;
  v10[4] = &off_1003A6358;
  *v10 = v9;
  v218 = type metadata accessor for DependencyRegistry();
  sub_100005814(&unk_1003E0380, &qword_100343D88);
  v11 = sub_1000080F8(v10, v8);
  v6[3] = v8;
  v12 = sub_10000DBEC(v6);
  (*(*(v8 - 8) + 16))(v12, v11, v8);
  v216 = enum case for DependencyRegistry.Entry.exact(_:);
  v13 = *(v4 + 104);
  v212 = v3;
  v13(v6);
  v214 = v13;
  v213 = v4 + 104;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  v217 = v14;
  v219 = v4 + 8;
  v15 = type metadata accessor for TrustedContactHealthScheduler(0);
  v16 = swift_allocObject();
  v17 = sub_100005814(&qword_1003DF5A0, &qword_100343680);
  Dependency.init(dependencyId:config:)();
  v18 = &v1[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_healthScheduler];
  v18[3] = v15;
  v18[4] = &off_1003B1F08;
  *v18 = v16;
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  v19 = sub_1000080F8(v18, v15);
  v6[3] = v15;
  v20 = sub_10000DBEC(v6);
  (*(*(v15 - 8) + 16))(v20, v19, v15);
  v21 = v216;
  v22 = v212;
  (v13)(v6, v216, v212);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v23 = v22;
  v14(v6, v22);
  v24 = type metadata accessor for TrustedContactsPreflightScheduler(0);
  v25 = swift_allocObject();
  v202 = v17;
  Dependency.init(dependencyId:config:)();
  *(v25 + OBJC_IVAR____TtC13appleaccountd33TrustedContactsPreflightScheduler____lazy_storage___activityProvider) = 0;
  v26 = v215;
  v27 = &v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactsPreflightScheduler];
  v27[3] = v24;
  v27[4] = &off_1003B2A20;
  *v27 = v25;
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  v28 = sub_1000080F8(v27, v24);
  v6[3] = v24;
  v29 = sub_10000DBEC(v6);
  (*(*(v24 - 8) + 16))(v29, v28, v24);
  v30 = v21;
  v31 = v21;
  v32 = v214;
  (v214)(v6, v31, v23);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v217(v6, v23);
  v33 = type metadata accessor for TrustedContactInitiator(0);
  swift_allocObject();
  v34 = sub_100161820();
  v35 = &v26[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator];
  v35[3] = v33;
  v35[4] = &off_1003AB398;
  *v35 = v34;
  sub_100005814(&unk_1003E0390, &qword_100346800);
  v36 = sub_1000080F8(v35, v33);
  v6[3] = v33;
  v37 = sub_10000DBEC(v6);
  (*(*(v33 - 8) + 16))(v37, v36, v33);
  v32(v6, v30, v23);
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v38 = v23;
  v39 = v217;
  v217(v6, v23);
  v40 = [objc_allocWithZone(AKInheritanceController) init];
  v41 = sub_100005814(&qword_1003E0F80, &unk_100344570);
  v6[3] = swift_getObjectType();
  *v6 = v40;
  v32(v6, v30, v23);
  v196 = v40;
  v210 = v41;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v39(v6, v23);
  v42 = type metadata accessor for StorageController(0);
  v43 = swift_allocObject();
  sub_100005814(&unk_1003DF610, &unk_1003437A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  *(&v228 + 1) = v42;
  v229 = &off_1003B49F0;
  *&v227 = v43;
  v44 = type metadata accessor for InheritanceStorageController(0);
  v200 = v44;
  v45 = swift_allocObject();
  v46 = sub_10003E968(&v227, v42);
  __chkstk_darwin(v46);
  v48 = (&v186 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;
  v51 = v45;
  v52 = (v45 + OBJC_IVAR____TtC13appleaccountd28InheritanceStorageController_storageController);
  v52[3] = v42;
  v52[4] = &off_1003B49F0;
  *v52 = v50;
  v53 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  v211 = v45;
  v207 = v53;
  Dependency.init(dependencyId:config:)();
  sub_10000839C(&v227);
  v54 = sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  v6[3] = v44;
  *v6 = v51;
  v55 = v216;
  v32(v6, v216, v38);

  v206 = v54;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v39(v6, v38);
  v56 = type metadata accessor for InheritanceSecurityController(0);
  v57 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D7FD0, &unk_10033FB30);
  Dependency.init(dependencyId:config:)();
  *(v57 + 16) = [objc_allocWithZone(CDPInheritanceTrustController) init];
  sub_100005814(&unk_1003E0210, &qword_100343D90);
  v6[3] = v56;
  *v6 = v57;
  v58 = v55;
  v59 = v212;
  v32(v6, v58, v212);
  v195 = v57;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v39(v6, v59);
  v60 = type metadata accessor for InheritanceCleanupController(0);
  v61 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  v210 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceCleanupController;
  *&v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceCleanupController] = v61;
  v6[3] = v60;
  *v6 = v61;
  v32(v6, v216, v59);

  v198 = v60;
  v62 = v59;
  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v39(v6, v59);
  sub_100005814(&unk_1003E03A0, &unk_1003436D0);
  Dependency.init(dependencyId:config:)();
  v63 = type metadata accessor for DaemonDestinationBuilder();
  v64 = swift_allocObject();
  Dependency.wrappedValue.getter();
  v65 = v227;
  *(&v228 + 1) = v63;
  v229 = &off_1003A9008;
  *&v227 = v64;
  v66 = type metadata accessor for DaemonIDSMessenger();
  v67 = swift_allocObject();
  v68 = sub_10003E968(&v227, v63);
  __chkstk_darwin(v68);
  v70 = (&v186 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v71 + 16))(v70);
  v72 = *v70;
  v67[6] = v63;
  v67[7] = &off_1003A9008;
  v67[2] = v65;
  v67[3] = v72;
  v194 = v64;

  sub_10000839C(&v227);
  *(&v228 + 1) = v66;
  v229 = &off_1003B2BB0;
  *&v227 = v67;
  type metadata accessor for InheritanceSetupMessenger();
  v73 = swift_allocObject();
  v74 = sub_10003E968(&v227, v66);
  __chkstk_darwin(v74);
  v76 = (&v186 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v73[5] = v66;
  v73[6] = &off_1003B2BB0;
  v73[2] = v78;
  v193 = v67;

  sub_10000839C(&v227);
  type metadata accessor for InheritanceCloudSharingController(0);
  v79 = swift_allocObject();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  v205 = v79;
  Dependency.init(dependencyId:config:)();
  v80 = v211;

  v206 = v73;

  v81 = sub_10015A158(v80, v73, v79, type metadata accessor for InheritanceSetupMessenger, &off_1003AE2A0, &off_1003AEC98, type metadata accessor for BeneficiaryAcceptedStatusHandler);
  v204 = v81;
  v82 = type metadata accessor for BeneficiaryAcceptedStatusHandler();
  v6[3] = v82;
  *v6 = v81;
  v83 = v216;
  v84 = v214;
  (v214)(v6, v216, v62);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v217(v6, v62);
  type metadata accessor for UserNotificationManager(0);
  v85 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v86 = [objc_allocWithZone(AAFollowUpController) init];
  v87 = (v85 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v87[3] = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v87[4] = &off_1003B1488;
  *v87 = v86;
  v88 = type metadata accessor for NotificationController();
  v89 = [objc_allocWithZone(v88) init];
  v90 = (v85 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v90[3] = v88;
  v90[4] = &off_1003B3148;
  *v90 = v89;
  v91 = *&v215[v210];
  v92 = v211;

  v203 = v85;

  v93 = v92;
  v94 = sub_10015A158(v92, v91, v85, type metadata accessor for InheritanceCleanupController, &off_1003AE988, &off_1003B3418, type metadata accessor for BeneficiaryDeclinedStatusHandler);
  v95 = type metadata accessor for BeneficiaryDeclinedStatusHandler();
  v6[3] = v95;
  *v6 = v94;
  v96 = v212;
  v84(v6, v83, v212);

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v97 = v217;
  v217(v6, v96);
  v98 = v200;
  *(&v228 + 1) = v200;
  v229 = &off_1003B0008;
  *&v227 = v93;
  v99 = v93;
  v225 = v82;
  v226 = &off_1003ADB00;
  *&v224 = v204;
  v222 = v95;
  v223 = &off_1003ADCA0;
  *&v221 = v94;
  v100 = type metadata accessor for InheritanceInvitationResponseHandler();
  v101 = swift_allocObject();
  v102 = sub_10003E968(&v227, v98);
  __chkstk_darwin(v102);
  v104 = (&v186 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v105 + 16))(v104);
  v106 = *v104;
  v101[5] = v98;
  v101[6] = &off_1003B0008;
  v101[2] = v106;
  sub_10003E950(&v224, (v101 + 7));
  sub_10003E950(&v221, (v101 + 12));

  v192 = v94;

  sub_10000839C(&v227);
  v6[3] = v100;
  *v6 = v101;
  v107 = v216;
  v108 = v212;
  v84(v6, v216, v212);
  v201 = v101;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v97(v6, v108);
  type metadata accessor for DaemonFamilyRequester();
  v109 = swift_allocObject();
  swift_retain_n();
  v110 = v206;

  v111 = sub_100208A08(v99, v109);
  type metadata accessor for DaemonMessageUtil();
  v112 = swift_allocObject();
  v113 = sub_10015A444(v99, v110, v111, v112);
  v6[3] = type metadata accessor for InheritanceInvitationHandler(0);
  *v6 = v113;
  v114 = v214;
  (v214)(v6, v107, v108);
  v200 = v113;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v115 = v217;
  v217(v6, v108);

  v116 = v205;

  v117 = v203;

  v118 = sub_10015A7C8(v116, v99, v117);
  v6[3] = type metadata accessor for InheritanceAccessKeyMessageHandler();
  *v6 = v118;
  v114(v6, v107, v108);
  v199 = v118;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v115(v6, v108);
  v119 = *&v215[v210];
  v120 = v198;
  *(&v228 + 1) = v198;
  v229 = &off_1003AE988;
  *&v227 = v119;
  v121 = type metadata accessor for BeneficiaryRemovedMessageHandler();
  v122 = swift_allocObject();
  v123 = sub_10003E968(&v227, v120);
  __chkstk_darwin(v123);
  v125 = (&v186 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v126 + 16))(v125);
  v127 = *v125;
  v122[5] = v120;
  v122[6] = &off_1003AE988;
  v122[2] = v127;

  sub_10000839C(&v227);
  v6[3] = v121;
  *v6 = v122;
  v128 = v108;
  v129 = v214;
  (v214)(v6, v216, v108);
  v130 = v122;

  static DependencyRegistry.register<A>(_:entry:dependencyId:)();
  v217(v6, v108);
  type metadata accessor for DaemonAccountStore();
  v131 = swift_allocObject();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    *(v131 + 16) = result;
    *(v131 + 24) = [objc_opt_self() sharedInstance];
    v133 = v201;

    v134 = v200;

    v135 = v199;

    v210 = v130;

    v136 = sub_10015AAAC(v131, v134, v133, v135, v130);
    v137 = &v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceMessageProcessor];
    *v137 = v136;
    *(v137 + 1) = &off_1003AE078;
    sub_100005814(&unk_1003E03B0, &qword_100343D98);
    v6[3] = swift_getObjectType();
    *v6 = v136;
    v138 = v216;
    (v129)(v6, v216, v128);
    v139 = v136;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v140 = v217;
    v217(v6, v128);
    v141 = sub_100016034(0, &unk_1003E6400, AAPreferences_ptr);
    v142 = [objc_allocWithZone(AAPreferences) init];
    v6[3] = v141;
    *v6 = v142;
    (v129)(v6, v138, v128);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v140(v6, v128);
    v143 = type metadata accessor for InheritanceRequestManager(0);
    v144 = [objc_allocWithZone(v143) init];
    v145 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager;
    v146 = v215;
    *&v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager] = v144;
    type metadata accessor for CustodianDaemonContainer();
    v227 = 0u;
    v228 = 0u;
    v229 = 0;
    swift_allocObject();
    *&v146[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer] = sub_10003AA68(&v227);
    v147 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AACustodianMachService];
    *&v146[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener] = v147;
    v148 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAccountUserNotificationMachService];
    *&v146[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener] = v148;
    type metadata accessor for PostInstallActivityScheduler(0);
    v149 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    *(v149 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler____lazy_storage___activityProvider) = 0;
    *&v146[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_postInstallActivityScheduler] = v149;
    v150 = *&v146[v145];
    v6[3] = v143;
    *v6 = v150;
    v151 = v216;
    v152 = v214;
    (v214)(v6, v216, v128);
    v153 = v150;
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v154 = v128;
    v155 = v217;
    v217(v6, v154);
    v156 = [objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter()) init];
    v157 = type metadata accessor for InheritanceRecordsCleaner(0);
    v158 = swift_allocObject();
    v159 = sub_10015B004(v156, v158);
    sub_100005814(&unk_1003E03C0, &unk_100343DA0);
    v6[3] = v157;
    v198 = v159;
    *v6 = v159;
    v160 = v212;
    v152(v6, v151, v212);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v155(v6, v160);
    IdentityMachService.getter();
    v161 = objc_allocWithZone(NSXPCListener);
    v162 = String._bridgeToObjectiveC()();

    v163 = [v161 initWithMachServiceName:v162];

    *&v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener] = v163;
    v164 = type metadata accessor for WalrusStateHandler(0);
    v165 = swift_allocObject();
    v187 = sub_100005814(&unk_1003D9890, &unk_1003405D0);
    Dependency.init(dependencyId:config:)();
    v166 = sub_100005814(&unk_1003DACD0, &unk_10033F020);
    v191 = v165;
    v186 = v166;
    Dependency.init(dependencyId:config:)();
    v189 = sub_100005814(&qword_1003DF600, &unk_1003436A0);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003D9880, &unk_10033F010);
    Dependency.init(dependencyId:config:)();
    v188 = sub_100005814(&qword_1003DF5B0, &qword_100343688);
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03D0, &qword_100343DB0);
    v6[3] = v164;
    *v6 = v165;
    v167 = v216;
    v168 = v212;
    v169 = v214;
    (v214)(v6, v216, v212);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v217(v6, v168);
    v170 = type metadata accessor for RecoveryKeyStateProvider(0);
    v171 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v190 = v171;
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03D8, &qword_100343DB8);
    v6[3] = v170;
    *v6 = v171;
    v169(v6, v167, v168);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v172 = v217;
    v217(v6, v168);
    sub_100005814(&qword_1003E03E0, &qword_100343DC0);
    v6[3] = &type metadata for FeatureFlagStateProvider;
    v169(v6, v167, v168);
    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v172(v6, v168);
    v173 = v172;
    v174 = type metadata accessor for EscrowRecordViabilityProvider(0);
    v175 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    Dependency.init(dependencyId:config:)();
    v187 = v175;
    Dependency.init(dependencyId:config:)();
    sub_100005814(&qword_1003E03E8, &qword_100343DC8);
    v6[3] = v174;
    *v6 = v175;
    v176 = v214;
    (v214)(v6, v167, v168);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v173(v6, v168);
    *(&v228 + 1) = &type metadata for AAFeatureFlags;
    v229 = sub_10015B62C();
    LOBYTE(v227) = 0;
    LOBYTE(v162) = isFeatureEnabled(_:)();
    sub_10000839C(&v227);
    v177 = type metadata accessor for AppleIDAvailabilityScheduler(0);
    swift_allocObject();
    v178 = sub_10025FAD0(sub_1001560F8, 0, v162 & 1);
    v179 = v215;
    *&v215[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_appleIDAvailabilityScheduler] = v178;
    v6[3] = v177;
    *v6 = v178;
    v176(v6, v167, v168);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v180 = v217;
    v217(v6, v168);
    v181 = type metadata accessor for MaintenanceActivityScheduler(0);
    v182 = swift_allocObject();
    Dependency.init(dependencyId:config:)();
    *(v182 + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler____lazy_storage___activityProvider) = 0;
    *&v179[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_maintenanceActivityScheduler] = v182;
    v6[3] = v181;
    *v6 = v182;
    (v214)(v6, v167, v168);

    static DependencyRegistry.register<A>(_:entry:dependencyId:)();
    v180(v6, v168);
    v183 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAgeMigrationMachService];
    *&v179[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener] = v183;
    v184 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:AAAccountServiceMachService];

    (*(v197 + 8))(v208, v209);
    *&v179[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener] = v184;
    v185 = type metadata accessor for ConnectionManager(0);
    v220.receiver = v179;
    v220.super_class = v185;
    return objc_msgSendSuper2(&v220, "init");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001560F8(void *a1)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "ConnectionManager: Sending %@ to reporter", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  [objc_msgSend(objc_opt_self() "reporter")];

  return swift_unknownObjectRelease();
}

id sub_1001562BC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener] invalidate];
  [*&v0[v1] setDelegate:0];
  v2 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener] invalidate];
  [*&v0[v2] setDelegate:0];
  v3 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener] invalidate];
  [*&v0[v3] setDelegate:0];
  v4 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener] invalidate];
  [*&v0[v4] setDelegate:0];
  v5 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener;
  [*&v0[OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener] invalidate];
  [*&v0[v5] setDelegate:0];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ConnectionManager(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for ConnectionManager(uint64_t a1)
{
  result = qword_1003E02E8;
  if (!qword_1003E02E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001565C4(uint64_t a1)
{
  sub_100157F0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001566A4()
{
  v1 = v0;
  v159 = sub_100005814(&unk_1003E0370, &qword_10033F320);
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v152 - v2;
  v3 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener;
  v4 = [*(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener) serviceName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v9;
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100008D04(v10, qword_1003FAA40);

  v163 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v173[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_10021145C(v6, v8, v173);
    _os_log_impl(&_mh_execute_header, v12, v13, "Resuming XPC listener for Mach service %s...", v14, 0xCu);
    sub_10000839C(v15);
  }

  v156 = v8;
  [*(v1 + v3) setDelegate:v1];
  [*(v1 + v3) resume];
  v16 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener;
  v17 = [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener) serviceName];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v22;
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v173[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10021145C(v19, v21, v173);
    _os_log_impl(&_mh_execute_header, v23, v24, "Resuming XPC listener for Mach service %s...", v25, 0xCu);
    sub_10000839C(v26);
  }

  [*(v1 + v16) setDelegate:v1];
  [*(v1 + v16) resume];
  v27 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener;
  v28 = [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener) serviceName];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v33;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v173[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10021145C(v30, v32, v173);
    _os_log_impl(&_mh_execute_header, v34, v35, "Resuming XPC listener for Mach service %s...", v36, 0xCu);
    sub_10000839C(v37);
  }

  [*(v1 + v27) setDelegate:v1];
  [*(v1 + v27) resume];
  [*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_inheritanceManager) startup];
  v38 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer;
  v161 = *(*(v1 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer) + 352);
  swift_unknownObjectRetain();
  v39 = sub_100305F0C(0, 1, 1, _swiftEmptyArrayStorage);
  v41 = v39[2];
  v40 = v39[3];
  v42 = v41 + 1;
  if (v41 >= v40 >> 1)
  {
    v39 = sub_100305F0C((v40 > 1), v41 + 1, 1, v39);
  }

  v39[2] = v42;
  *&v39[2 * v41 + 4] = v161;
  *&v161 = v38;
  v43 = v39[3];
  v160 = *(*(v1 + v38) + 368);
  swift_unknownObjectRetain();
  if (v42 >= v43 >> 1)
  {
    v39 = sub_100305F0C((v43 > 1), v41 + 2, 1, v39);
  }

  v39[2] = v41 + 2;
  *&v39[2 * v42 + 4] = v160;
  v44 = [objc_allocWithZone(CDPWalrusStateController) init];
  v45 = [objc_allocWithZone(CDPStateController) init];
  v46 = [objc_opt_self() contextForPrimaryAccount];
  *&v160 = v45;
  v162 = v1;
  if (v46)
  {
    v47 = v46;
    v48 = v44;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Setting health check context type", v51, 2u);
    }

    [v47 setType:15];
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "Passing primary context with health check context type to CDPRequestController", v54, 2u);
    }

    v55 = objc_allocWithZone(CDPWalrusStateController);
    v56 = v47;
    v57 = [v55 initWithContext:v56];
    v58 = [objc_allocWithZone(CDPStateController) initWithContext:v56];

    if (!v58)
    {
      __break(1u);
      return;
    }

    v59 = [objc_allocWithZone(ACAccountStore) init];
    v60 = type metadata accessor for CDPRequestController();
    v61 = swift_allocObject();
    v61[2] = v57;
    v61[3] = v58;
    v61[4] = v59;
    v171 = v60;
    v172 = &off_1003AA7A0;

    *&v170 = v61;
    sub_10003E950(&v170, v173);
    v62 = v48;
  }

  else
  {

    v63 = objc_allocWithZone(ACAccountStore);
    v62 = v44;
    v64 = v44;
    v65 = v45;
    v66 = [v63 init];
    v67 = type metadata accessor for CDPRequestController();
    v68 = swift_allocObject();
    v68[2] = v64;
    v68[3] = v65;
    v68[4] = v66;
    v173[3] = v67;
    v173[4] = &off_1003AA7A0;
    v173[0] = v68;
  }

  sub_100040738(v173, &v170);
  v69 = objc_allocWithZone(AKWalrusController);
  v70 = v62;
  v71 = [v69 init];
  type metadata accessor for AuthKitRequestController();
  v72 = swift_allocObject();
  *(v72 + 16) = v71;
  v73 = sub_10003E968(&v170, v171);
  __chkstk_darwin(v73);
  v75 = (&v152 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  v77 = *v75;
  v156 = v70;
  v78 = sub_100159580(v77, v70, v72);
  sub_10000839C(&v170);
  sub_100040738(*(v162 + v161) + 144, &v170);
  v79 = type metadata accessor for UserNotificationManager(0);
  v80 = swift_allocObject();

  v154 = sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v81 = [objc_allocWithZone(AAFollowUpController) init];
  v82 = (v80 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v153 = sub_100016034(0, &qword_1003E0360, AAFollowUpController_ptr);
  v82[3] = v153;
  v82[4] = &off_1003B1488;
  *v82 = v81;
  v83 = type metadata accessor for NotificationController();
  v84 = [objc_allocWithZone(v83) init];
  v85 = (v80 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v85[3] = v83;
  v85[4] = &off_1003B3148;
  *v85 = v84;
  sub_100040738(v173, v167);
  v86 = sub_10003E968(&v170, v171);
  __chkstk_darwin(v86);
  v88 = (&v152 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88);
  v90 = sub_10003E968(v167, v168);
  __chkstk_darwin(v90);
  v92 = (&v152 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v93 + 16))(v92);
  v94 = *v88;
  v95 = *v92;
  v155 = v78;
  v96 = sub_100159764(v94, v78, v80, v95);
  sub_10000839C(v167);
  sub_10000839C(&v170);
  v98 = v39[2];
  v97 = v39[3];
  if (v98 >= v97 >> 1)
  {
    v39 = sub_100305F0C((v97 > 1), v98 + 1, 1, v39);
  }

  v39[2] = v98 + 1;
  v99 = &v39[2 * v98];
  v99[4] = v96;
  v99[5] = &off_1003B2FD0;
  v100 = v162;
  sub_100040738(*(v162 + v161) + 144, &v170);
  v101 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  v102 = [objc_allocWithZone(AAFollowUpController) init];
  v103 = (v101 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_followUpController);
  v103[3] = v153;
  v103[4] = &off_1003B1488;
  *v103 = v102;
  v104 = [objc_allocWithZone(v83) init];
  v105 = (v101 + OBJC_IVAR____TtC13appleaccountd23UserNotificationManager_notificationController);
  v105[3] = v83;
  v105[4] = &off_1003B3148;
  *v105 = v104;
  v106 = sub_10003E968(&v170, v171);
  *&v161 = &v152;
  __chkstk_darwin(v106);
  v108 = (&v152 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108);
  v110 = *v108;
  v111 = type metadata accessor for DaemonAccountStore();
  v168 = v111;
  v169 = &off_1003AB0B8;
  v167[0] = v110;
  v165 = v79;
  v166 = &off_1003B3418;
  v164[0] = v101;
  type metadata accessor for TermsPushServiceDelegate();
  v112 = swift_allocObject();
  v113 = sub_10003E968(v167, v111);
  __chkstk_darwin(v113);
  v115 = (&v152 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v116 + 16))(v115);
  v117 = sub_10003E968(v164, v165);
  __chkstk_darwin(v117);
  v119 = (&v152 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v120 + 16))(v119);
  v121 = *v115;
  v122 = *v119;
  v112[5] = v111;
  v112[6] = &off_1003AB0B8;
  v112[2] = v121;
  v112[10] = v79;
  v112[11] = &off_1003B3418;
  v112[7] = v122;
  sub_10000839C(v164);
  sub_10000839C(v167);
  sub_10000839C(&v170);
  v124 = v39[2];
  v123 = v39[3];
  if (v124 >= v123 >> 1)
  {
    v39 = sub_100305F0C((v123 > 1), v124 + 1, 1, v39);
  }

  v39[2] = v124 + 1;
  v125 = &v39[2 * v124];
  v125[4] = v112;
  v125[5] = &off_1003B2CE8;
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  v126 = v157;
  Dependency.init(dependencyId:config:)();
  v127 = v159;
  Dependency.wrappedValue.getter();
  sub_1000080F8(&v170, v171);
  sub_1002C5CB4(v39, &off_1003A3748);
  (*(v158 + 8))(v126, v127);
  sub_10000839C(&v170);
  v128 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener;
  v129 = [*(v100 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener) serviceName];
  if (v129)
  {
    v130 = v129;
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;
  }

  else
  {
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v134;
  }

  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&v170 = v138;
    *v137 = 136315138;
    v139 = sub_10021145C(v131, v133, &v170);

    *(v137 + 4) = v139;
    _os_log_impl(&_mh_execute_header, v135, v136, "Resuming XPC listener for Mach service %s...", v137, 0xCu);
    sub_10000839C(v138);
  }

  else
  {
  }

  [*(v100 + v128) setDelegate:v100];
  [*(v100 + v128) resume];
  v140 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  v141 = [*(v100 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener) serviceName];
  if (v141)
  {
    v142 = v141;
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v145 = v144;
  }

  else
  {
    v143 = IdentityMachService.getter();
    v145 = v146;
  }

  v147 = Logger.logObject.getter();
  v148 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v147, v148))
  {
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    *&v170 = v150;
    *v149 = 136315138;
    v151 = sub_10021145C(v143, v145, &v170);

    *(v149 + 4) = v151;
    _os_log_impl(&_mh_execute_header, v147, v148, "Resuming XPC listener for Mach service %s...", v149, 0xCu);
    sub_10000839C(v150);
  }

  else
  {
  }

  [*(v100 + v140) setDelegate:v100];
  [*(v100 + v140) resume];
  [*(v100 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_daemonManager) startup];
  sub_100157A34();

  sub_10000839C(v173);
}

void sub_100157A34()
{
  v1 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;

  sub_10025FF0C();

  v5 = *(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_postInstallActivityScheduler);
  v6 = *(v2 + 16);
  v31 = v2 + 16;
  v32 = v6;
  v6(v4, v5 + OBJC_IVAR____TtC13appleaccountd28PostInstallActivityScheduler__xpcActivityScheduler, v1);

  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v29 = v2 + 8;
  v30 = v7;
  v7(v4, v1);
  v8 = sub_1000080F8(&v34, v37);
  sub_1002D8BCC();
  v9 = *v8;
  v10 = static String._fromUTF8Repairing(_:)();
  v12 = v11;
  v39 = 0;
  v40 = xmmword_100343D00;
  v41 = xmmword_100343D10;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = sub_100313A50(&v39, v10, v12, sub_10015B61C, v13);

  *(v9 + 16) = v14;

  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for OSTransaction();
  swift_allocObject();
  v16 = sub_10030F0FC("com.apple.appleaccountd.postinstall", 35, 2);
  sub_10031352C(v16, v15);

  sub_10000839C(&v34);
  sub_100040738(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_healthScheduler, &v34);
  v17 = v37;
  v18 = v38;
  sub_1000080F8(&v34, v37);
  (*(v18 + 8))(v17, v18);
  sub_10000839C(&v34);
  v32(v4, *(v0 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_maintenanceActivityScheduler) + OBJC_IVAR____TtC13appleaccountd28MaintenanceActivityScheduler__xpcActivityScheduler, v1);

  Dependency.wrappedValue.getter();
  v30(v4, v1);
  v19 = sub_1000080F8(v33, v33[3]);
  sub_1002B2D88();
  v20 = *v19;
  v21 = static String._fromUTF8Repairing(_:)();
  v23 = v22;
  v24 = sub_1002B31D4();
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v24 < 9.22337204e18)
  {
    LOWORD(v34) = 257;
    v35 = v24 / 2;
    v36 = v35;
    v37 = v24;
    v38 = 32;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = sub_100313A50(&v34, v21, v23, sub_10015B624, v25);

    *(v20 + 16) = v26;

    v27 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v28 = sub_10030F0FC("com.apple.appleaccountd.maintenance", 35, 2);
    sub_10031352C(v28, v27);

    sub_10000839C(v33);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100157F0C(uint64_t a1)
{
  if (!qword_1003D9A38)
  {
    sub_100008CBC(&qword_1003D9A40, &unk_10033F180);
    v1 = type metadata accessor for Dependency();
    if (!v2)
    {
      atomic_store(v1, &qword_1003D9A38);
    }
  }
}

uint64_t sub_100157F70(void *a1, void *a2)
{
  v3 = v2;
  sub_100016034(0, &qword_1003DEC00, NSObject_ptr);
  v6 = OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener;
  v7 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_identityServiceListener);
  v8 = static NSObject.== infix(_:_:)();

  if (v8 & 1) != 0 && [objc_opt_self() isIdentityKitEnabled] && (v9 = objc_msgSend(objc_opt_self(), "standardUserDefaults"), v10 = String._bridgeToObjectiveC()(), v11 = objc_msgSend(v9, "BOOLForKey:", v10), v9, v10, (v11))
  {
    v12 = 1;
  }

  else
  {
    if ((sub_10015B430(a2) & 1) == 0)
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100008D04(v39, qword_1003FAA40);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_18;
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Client does not have any valid entitlemnts.", v42, 2u);
      goto LABEL_17;
    }

    v12 = 0;
  }

  v13 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianServiceListener);
  v14 = static NSObject.== infix(_:_:)();

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_custodianDaemonContainer);
    *(&v119 + 1) = type metadata accessor for CustodianDaemonContainer();
    v120 = &off_1003A54A0;
    *&aBlock = v15;
    type metadata accessor for CustodianDaemonService(0);
    v16 = swift_allocObject();
    v17 = sub_10003E968(&aBlock, *(&v119 + 1));
    __chkstk_darwin(v17);
    v19 = (&aBlock - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19);
    v21 = *v19;

    v22 = a2;
    v23 = sub_100159B20(v21, v22, v16);
    sub_10000839C(&aBlock);
    [v22 setExportedObject:{v23, aBlock}];
    v24 = [objc_opt_self() XPCInterface];
    [v22 setExportedInterface:v24];

    [v22 resume];
    v25 = sub_1000080F8((v3 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator), *(v3 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_trustedContactInitiator + 24));
    v26 = *v25;
    v27 = *(*v25 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
    v28 = swift_allocObject();
    v28[2] = v26;
    v28[3] = sub_100159244;
    v28[4] = 0;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_10015B5B0;
    *(v29 + 24) = v28;
    v120 = sub_100071DCC;
    v121 = v29;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v119 = sub_10030F718;
    *(&v119 + 1) = &unk_1003AB018;
    v30 = _Block_copy(&aBlock);
    v31 = v27;

    dispatch_sync(v31, v30);

    _Block_release(v30);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else if (qword_1003D7F20 == -1)
    {
LABEL_10:
      v32 = type metadata accessor for Logger();
      sub_100008D04(v32, qword_1003FAA40);
      v33 = v22;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        *(v36 + 4) = v33;
        *v37 = v33;
        v38 = v33;
        _os_log_impl(&_mh_execute_header, v34, v35, "New custodian connection accepted: %@", v36, 0xCu);
        sub_100008D3C(v37, &unk_1003D9140, &qword_10033E640);
      }

      goto LABEL_42;
    }

    swift_once();
    goto LABEL_10;
  }

  v44 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_notificationServiceListener);
  v45 = static NSObject.== infix(_:_:)();

  if ((v45 & 1) == 0)
  {
    v57 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_ageMigrationServiceListener);
    v58 = static NSObject.== infix(_:_:)();

    if (v58)
    {
      v59 = type metadata accessor for PersonalInformationController(0);
      v60 = swift_allocObject();
      sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
      Dependency.init(dependencyId:config:)();
      sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
      Dependency.init(dependencyId:config:)();
      sub_100005814(&unk_1003DA950, &unk_1003436B0);
      Dependency.init(dependencyId:config:)();
      v61 = [objc_allocWithZone(AKAgeRangeSettingsProvider) init];
      *(&v119 + 1) = v59;
      v120 = &off_1003B5900;
      *&aBlock = v60;
      type metadata accessor for AgeMigrationDaemonService(0);
      v62 = swift_allocObject();
      v63 = sub_10003E968(&aBlock, v59);
      __chkstk_darwin(v63);
      v65 = (&aBlock - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v66 + 16))(v65);
      v67 = *v65;
      v68 = (v62 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_personalInformationService);
      v68[3] = v59;
      v68[4] = &off_1003B5900;
      *v68 = v67;
      v69 = a2;
      sub_100005814(&qword_1003DF6C0, &unk_10033E6D0);
      Dependency.init(dependencyId:config:)();
      Dependency.init(dependencyId:config:)();
      Dependency.init(dependencyId:config:)();
      *(v62 + OBJC_IVAR____TtC13appleaccountd25AgeMigrationDaemonService_ageRangeSettingsProvider) = v61;
      *(v62 + 16) = v69;
      sub_10000839C(&aBlock);
      [v69 setExportedObject:{v62, aBlock}];
      v70 = [objc_opt_self() XPCInterface];
      [v69 setExportedInterface:v70];

      [v69 resume];
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      sub_100008D04(v71, qword_1003FAA40);
      v72 = v69;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_41;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v53 = 138412290;
      *(v53 + 4) = v72;
      *v54 = v72;
      v73 = v72;
      v56 = "New age migration connection accepted: %@";
      goto LABEL_40;
    }

    v74 = *(v2 + v6);
    v75 = static NSObject.== infix(_:_:)();

    if (v75)
    {
      if (v12)
      {
LABEL_31:
        type metadata accessor for IdentityDaemonService();
        [a2 setExportedObject:swift_allocObject()];
        type metadata accessor for IdentityDaemonInterface();
        v76 = static IdentityDaemonInterface.exportedInterface.getter();
        [a2 setExportedInterface:v76];

        [a2 resume];
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v77 = type metadata accessor for Logger();
        sub_100008D04(v77, qword_1003FAA40);
        v78 = a2;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_41;
        }

        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v78;
        *v54 = v78;
        v79 = v78;
        v56 = "New identity connection accepted: %@";
        goto LABEL_40;
      }

      v99 = String._bridgeToObjectiveC()();
      v100 = [a2 valueForEntitlement:v99];

      if (v100)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v123 = 0u;
        v124 = 0u;
      }

      aBlock = v123;
      v119 = v124;
      if (*(&v124 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v122 == 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_100008D3C(&aBlock, &qword_1003D87C8, qword_100344800);
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v107 = type metadata accessor for Logger();
      sub_100008D04(v107, qword_1003FAA40);
      v108 = a2;
      v40 = Logger.logObject.getter();
      v109 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *&aBlock = v111;
        *v110 = 136315138;
        v112 = v108;
        v113 = [v112 description];
        v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v116 = v115;

        v117 = sub_10021145C(v114, v116, &aBlock);

        *(v110 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v40, v109, "Client is missing Identity entitlement: %s", v110, 0xCu);
        sub_10000839C(v111);

        goto LABEL_17;
      }
    }

    else
    {
      v80 = *(v2 + OBJC_IVAR____TtC13appleaccountd17ConnectionManager_accountServiceListener);
      v81 = static NSObject.== infix(_:_:)();

      if (v81)
      {
        sub_100153CB0(&aBlock);
        v82 = sub_10003E968(&aBlock, *(&v119 + 1));
        __chkstk_darwin(v82);
        v84 = (&aBlock - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v85 + 16))(v84);
        v86 = *v84;
        updated = type metadata accessor for AccountUpdatePerformer();
        *(&v124 + 1) = updated;
        v125 = &off_1003B5158;
        *&v123 = v86;
        type metadata accessor for AccountService();
        v88 = swift_allocObject();
        v89 = sub_10003E968(&v123, updated);
        __chkstk_darwin(v89);
        v91 = (&aBlock - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v92 + 16))(v91);
        v93 = *v91;
        v88[6] = updated;
        v88[7] = &off_1003B5158;
        v88[2] = a2;
        v88[3] = v93;
        v94 = a2;
        sub_10000839C(&v123);
        sub_10000839C(&aBlock);
        [v94 setExportedObject:v88];
        v95 = [objc_opt_self() XPCInterface];
        [v94 setExportedInterface:v95];

        [v94 resume];
        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v96 = type metadata accessor for Logger();
        sub_100008D04(v96, qword_1003FAA40);
        v97 = v94;
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_41;
        }

        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412290;
        *(v53 + 4) = v97;
        *v54 = v97;
        v98 = v97;
        v56 = "New AppleAccount service connection accepted: %@";
        goto LABEL_40;
      }

      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v101 = type metadata accessor for Logger();
      sub_100008D04(v101, qword_1003FAA40);
      v102 = a1;
      v40 = Logger.logObject.getter();
      v103 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        *v104 = 138412290;
        *(v104 + 4) = v102;
        *v105 = v102;
        v106 = v102;
        _os_log_impl(&_mh_execute_header, v40, v103, "Fatal error! Unknown XPC listener: %@", v104, 0xCu);
        sub_100008D3C(v105, &unk_1003D9140, &qword_10033E640);

LABEL_17:
      }
    }

LABEL_18:

    return 0;
  }

  type metadata accessor for AccountUserNotificationDaemonService(0);
  v46 = swift_allocObject();
  sub_100005814(&unk_1003D9890, &unk_1003405D0);
  Dependency.init(dependencyId:config:)();
  *(v46 + 16) = a2;
  v47 = a2;
  [v47 setExportedObject:v46];
  v48 = [objc_opt_self() XPCInterface];
  [v47 setExportedInterface:v48];

  [v47 resume];
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_100008D04(v49, qword_1003FAA40);
  v50 = v47;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v51, v52))
  {
    goto LABEL_41;
  }

  v53 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  *v53 = 138412290;
  *(v53 + 4) = v50;
  *v54 = v50;
  v55 = v50;
  v56 = "New account user notification connection accepted: %@";
LABEL_40:
  _os_log_impl(&_mh_execute_header, v51, v52, v56, v53, 0xCu);
  sub_100008D3C(v54, &unk_1003D9140, &qword_10033E640);

LABEL_41:

LABEL_42:

  return 1;
}

void sub_100159244(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100008D04(v1, qword_1003FAA40);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "TrustedContactInitiator.start failed: %@", v3, 0xCu);
      sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_100159458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = type metadata accessor for CDPRequestController();
  v14 = &off_1003AA7A0;
  *&v12 = a1;
  v10 = type metadata accessor for AuthKitRequestController();
  v11 = &off_1003B3850;
  *&v9 = a3;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DF628, &unk_100349290);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF660, &qword_1003436C0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v12, a4 + 16);
  *(a4 + 56) = a2;
  sub_10003E950(&v9, a4 + 64);
  return a4;
}

uint64_t sub_100159580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for CDPRequestController();
  v22 = &off_1003AA7A0;
  v20[0] = a1;
  v18 = type metadata accessor for AuthKitRequestController();
  v19 = &off_1003B3850;
  v17[0] = a3;
  type metadata accessor for WalrusPCSAuthRequestProvider(0);
  v6 = swift_allocObject();
  v7 = sub_10003E968(v20, v21);
  __chkstk_darwin(v7);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10003E968(v17, v18);
  __chkstk_darwin(v11);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_100159458(*v9, a2, *v13, v6);
  sub_10000839C(v17);
  sub_10000839C(v20);
  return v15;
}

void *sub_100159764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DaemonAccountStore();
  v44[3] = v8;
  v44[4] = &off_1003AB0B8;
  v44[0] = a1;
  v9 = type metadata accessor for WalrusPCSAuthRequestProvider(0);
  v42 = v9;
  v43 = &off_1003B2E58;
  v41[0] = a2;
  v10 = type metadata accessor for UserNotificationManager(0);
  v39 = v10;
  v40 = &off_1003B3418;
  v38[0] = a3;
  v11 = type metadata accessor for CDPRequestController();
  v36 = v11;
  v37 = &off_1003AA7A0;
  v35[0] = a4;
  type metadata accessor for WalrusPushServiceDelegate();
  v12 = swift_allocObject();
  v13 = sub_10003E968(v44, v8);
  __chkstk_darwin(v13);
  v15 = (&v35[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10003E968(v41, v42);
  __chkstk_darwin(v17);
  v19 = (&v35[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_10003E968(v38, v39);
  __chkstk_darwin(v21);
  v23 = (&v35[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_10003E968(v35, v36);
  __chkstk_darwin(v25);
  v27 = (&v35[-1] - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v15;
  v30 = *v19;
  v31 = *v23;
  v32 = *v27;
  v12[5] = v8;
  v12[6] = &off_1003AB0B8;
  v12[2] = v29;
  v12[10] = v9;
  v12[11] = &off_1003B2E58;
  v12[7] = v30;
  v12[15] = v10;
  v12[16] = &off_1003B3418;
  v12[12] = v31;
  v12[20] = v11;
  v12[21] = &off_1003AA7A0;
  v12[17] = v32;
  sub_10000839C(v35);
  sub_10000839C(v38);
  sub_10000839C(v41);
  sub_10000839C(v44);
  return v12;
}

void *sub_100159B20(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = type metadata accessor for CustodianDaemonContainer();
  v34 = &off_1003A54A0;
  v32[0] = a1;
  sub_100005814(&qword_1003D9A10, &qword_100343D80);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9880, &unk_10033F010);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9830, &qword_10033E970);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A50, qword_100343CC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A60, &qword_10033F190);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9A70, &unk_10033F060);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9810, &unk_10033EFC0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AF0, &qword_10033F198);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9B00, &unk_10033F1A0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9B70, &unk_10033F1B0);
  Dependency.init(dependencyId:config:)();
  sub_100040738(v32, (a3 + 2));
  a3[7] = a2;
  v6 = sub_1000080F8(v32, v33);
  sub_100040738(*v6 + 184, (a3 + 13));
  v7 = sub_1000080F8(v32, v33);
  sub_100040738(*v7 + 104, (a3 + 8));
  v8 = sub_1000080F8(v32, v33);
  sub_100040738(*v8 + 64, (a3 + 18));
  v9 = sub_1000080F8(v32, v33);
  sub_100040738(*v9 + 24, (a3 + 23));
  v10 = sub_1000080F8(v32, v33);
  sub_100040738(*v10 + 144, (a3 + 28));
  v11 = sub_1000080F8(v32, v33);
  sub_100040738(*v11 + 272, (a3 + 33));
  v12 = sub_1000080F8(v32, v33);
  sub_100040738(*v12 + 384, (a3 + 38));
  v13 = sub_1000080F8(v32, v33);
  sub_100040738(*v13 + 424, (a3 + 43));
  v14 = sub_1000080F8(v32, v33);
  sub_100040738(*v14 + 464, (a3 + 48));
  a3[54] = *(*sub_1000080F8(v32, v33) + 16);
  sub_100040738((a3 + 18), v31);
  sub_100040738((a3 + 43), v30);
  v15 = *(*sub_1000080F8(v32, v33) + 16);
  v16 = sub_10003E968(v31, v31[3]);
  __chkstk_darwin(v16);
  v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v21 = type metadata accessor for CustodianStorageController();
  v29[3] = v21;
  v29[4] = &off_1003A4C78;
  v29[0] = v20;
  type metadata accessor for CustodianSuggestionsManager();
  v22 = swift_allocObject();
  v23 = sub_10003E968(v29, v21);
  __chkstk_darwin(v23);
  v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = *v25;
  v22[10] = v21;
  v22[11] = &off_1003A4C78;
  v22[7] = v27;
  sub_10003E950(v30, (v22 + 2));
  v22[12] = v15;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10000839C(v29);
  sub_10000839C(v31);
  a3[53] = v22;
  sub_10000839C(v32);
  return a3;
}

void *sub_10015A158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v14 = *a3;
  v15 = type metadata accessor for InheritanceStorageController(0);
  v41[3] = v15;
  v41[4] = &off_1003B0008;
  v41[0] = a1;
  v16 = a4(0);
  v39 = v16;
  v40 = a5;
  v37 = a6;
  v38[0] = a2;
  v36 = v14;
  v35[0] = a3;
  a7(0);
  v17 = swift_allocObject();
  v18 = sub_10003E968(v41, v15);
  __chkstk_darwin(v18);
  v20 = (&v35[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = sub_10003E968(v38, v39);
  __chkstk_darwin(v22);
  v24 = (&v35[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_10003E968(v35, v36);
  __chkstk_darwin(v26);
  v28 = (&v35[-1] - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v20;
  v31 = *v24;
  v32 = *v28;
  v17[5] = v15;
  v17[6] = &off_1003B0008;
  v17[7] = v31;
  v17[2] = v30;
  v17[10] = v16;
  v17[11] = a5;
  v17[15] = v14;
  v17[16] = a6;
  v17[12] = v32;
  sub_10000839C(v35);
  sub_10000839C(v38);
  sub_10000839C(v41);
  return v17;
}

uint64_t sub_10015A444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for InheritanceStorageController(0);
  v42[3] = v9;
  v42[4] = &off_1003B0008;
  v42[0] = a1;
  v10 = type metadata accessor for InheritanceSetupMessenger();
  v40 = v10;
  v41 = &off_1003AE2A0;
  v39[0] = a2;
  v37 = type metadata accessor for InheritanceFamilyManager(0);
  v38 = &off_1003B3860;
  *&v36 = a3;
  v34 = v8;
  v35 = &off_1003B2C48;
  v33[0] = a4;
  type metadata accessor for InheritanceInvitationHandler(0);
  v11 = swift_allocObject();
  v12 = sub_10003E968(v42, v9);
  __chkstk_darwin(v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_10003E968(v39, v40);
  __chkstk_darwin(v16);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_10003E968(v33, v34);
  __chkstk_darwin(v20);
  v22 = (&v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = *v14;
  v25 = *v18;
  v26 = *v22;
  v27 = (v11 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_storageController);
  v27[3] = v9;
  v27[4] = &off_1003B0008;
  *v27 = v24;
  v28 = (v11 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messenger);
  v28[3] = v10;
  v28[4] = &off_1003AE2A0;
  *v28 = v25;
  v32 = &off_1003B2C48;
  v31 = v8;
  *&v30 = v26;
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_10003E950(&v36, v11 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_familyManager);
  sub_10003E950(&v30, v11 + OBJC_IVAR____TtC13appleaccountd28InheritanceInvitationHandler_messageUtil);
  sub_10000839C(v33);
  sub_10000839C(v39);
  sub_10000839C(v42);
  return v11;
}

void *sub_10015A7C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for InheritanceCloudSharingController(0);
  v33[3] = v7;
  v33[4] = &off_1003AEC98;
  v33[0] = a1;
  v8 = type metadata accessor for InheritanceStorageController(0);
  v31 = v8;
  v32 = &off_1003B0008;
  v30[0] = a2;
  v28 = v6;
  v29 = &off_1003B3418;
  v27[0] = a3;
  type metadata accessor for InheritanceAccessKeyMessageHandler();
  v9 = swift_allocObject();
  v10 = sub_10003E968(v33, v7);
  __chkstk_darwin(v10);
  v12 = (&v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_10003E968(v30, v31);
  __chkstk_darwin(v14);
  v16 = (&v27[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10003E968(v27, v28);
  __chkstk_darwin(v18);
  v20 = (&v27[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v12;
  v23 = *v16;
  v24 = *v20;
  v9[5] = v7;
  v9[6] = &off_1003AEC98;
  v9[7] = v23;
  v9[2] = v22;
  v9[10] = v8;
  v9[11] = &off_1003B0008;
  v9[15] = v6;
  v9[16] = &off_1003B3418;
  v9[12] = v24;
  sub_10000839C(v27);
  sub_10000839C(v30);
  sub_10000839C(v33);
  return v9;
}

id sub_10015AAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v41 = *a5;
  v10 = type metadata accessor for DaemonAccountStore();
  v63[3] = v10;
  v63[4] = &off_1003AB0B8;
  v63[0] = a1;
  v43 = type metadata accessor for InheritanceInvitationHandler(0);
  v61 = v43;
  v62 = &off_1003AD888;
  v60[0] = a2;
  v42 = type metadata accessor for InheritanceInvitationResponseHandler();
  v58 = v42;
  v59 = &off_1003ADA28;
  v57[0] = a3;
  v11 = type metadata accessor for InheritanceAccessKeyMessageHandler();
  v55 = v11;
  v56 = &off_1003AD7D8;
  v54[0] = a4;
  v52 = v41;
  v53 = &off_1003AD7C8;
  v51[0] = a5;
  v44 = type metadata accessor for InheritanceMessageProcessor();
  v12 = objc_allocWithZone(v44);
  v13 = sub_10003E968(v63, v10);
  __chkstk_darwin(v13);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_10003E968(v60, v61);
  __chkstk_darwin(v17);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = sub_10003E968(v57, v58);
  __chkstk_darwin(v21);
  v23 = (&v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = sub_10003E968(v54, v55);
  __chkstk_darwin(v25);
  v27 = (&v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = sub_10003E968(v51, v52);
  __chkstk_darwin(v29);
  v31 = (&v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v15;
  v34 = *v19;
  v35 = *v23;
  v36 = *v27;
  v37 = *v31;
  v50[3] = v10;
  v50[4] = &off_1003AB0B8;
  v50[0] = v33;
  v49[4] = &off_1003AD888;
  v49[3] = v43;
  v49[0] = v34;
  v48[3] = v42;
  v48[4] = &off_1003ADA28;
  v48[0] = v35;
  v47[3] = v11;
  v47[4] = &off_1003AD7D8;
  v47[0] = v36;
  v46[3] = v41;
  v46[4] = &off_1003AD7C8;
  v46[0] = v37;
  sub_100040738(v50, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accountStore);
  sub_100040738(v49, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationHandler);
  sub_100040738(v48, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_invitationResponseHandler);
  sub_100040738(v47, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_accessKeyMessageHandler);
  sub_100040738(v46, v12 + OBJC_IVAR____TtC13appleaccountd27InheritanceMessageProcessor_beneficiaryRemovedMessageHandler);
  v45.receiver = v12;
  v45.super_class = v44;
  v38 = objc_msgSendSuper2(&v45, "init");
  sub_10000839C(v46);
  sub_10000839C(v47);
  sub_10000839C(v48);
  sub_10000839C(v49);
  sub_10000839C(v50);
  sub_10000839C(v51);
  sub_10000839C(v54);
  sub_10000839C(v57);
  sub_10000839C(v60);
  sub_10000839C(v63);
  return v38;
}

uint64_t sub_10015B004(uint64_t a1, uint64_t a2)
{
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  type metadata accessor for InheritanceRequestManager(0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACE0, &unk_10033F920);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100016034(0, &qword_1003DF5C0, AKAccountManager_ptr);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003E0400, &qword_100344870);
  Dependency.init(dependencyId:config:)();
  v4 = (a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_checkName);
  type metadata accessor for InheritanceRecordsCleaner(0);
  sub_100005814(&qword_1003E0408, &unk_100343DD0);
  *v4 = String.init<A>(describing:)();
  v4[1] = v5;
  v6 = OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_queue;
  v7 = [objc_allocWithZone(NSOperationQueue) init];
  *(a2 + v6) = v7;
  *(a2 + OBJC_IVAR____TtC13appleaccountd25InheritanceRecordsCleaner_analyticsReporter) = a1;
  [v7 setMaxConcurrentOperationCount:1];
  return a2;
}

void sub_10015B224(uint64_t a1, unint64_t a2)
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAA40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10021145C(a1, a2, v12);
    _os_log_impl(&_mh_execute_header, v5, v6, "Handling launch event for %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  v12[0] = a1;
  v12[1] = a2;
  sub_1000709A0();
  if (!StringProtocol.caseInsensitiveCompare<A>(_:)())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Found notification com.apple.keystore.lockstatus", v11, 2u);
    }
  }
}

uint64_t sub_10015B430(void *a1)
{
  v2 = &off_1003A3918;
  v3 = 10;
  do
  {

    v4 = String._bridgeToObjectiveC()();

    v5 = [a1 valueForEntitlement:v4];

    if (v5)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast() & 1) != 0 && (v7)
      {
        return 1;
      }
    }

    else
    {
      sub_100008D3C(v10, &qword_1003D87C8, qword_100344800);
    }

    v2 += 2;
    --v3;
  }

  while (v3);
  return 0;
}

uint64_t sub_10015B570()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10015B5CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015B5E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_10015B62C()
{
  result = qword_1003E03F0;
  if (!qword_1003E03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E03F0);
  }

  return result;
}

uint64_t sub_10015B688(uint64_t a1)
{
  String.utf8CString.getter();
  v1 = _set_user_dir_suffix();

  if (!v1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10015B718()
{
  v1 = *(v0 + 24);
  result = [v1 primaryAuthKitAccount];
  if (result)
  {
    v3 = result;
    v4 = [v1 DSIDForAccount:result];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 stringValue];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v7;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10015B7D0()
{
  v1 = *(v0 + 16);
  result = [v1 aa_primaryAppleAccount];
  if (result)
  {
    v3 = result;
    v4 = [result aa_altDSID];
    v5 = [v1 aa_authKitAccountForAltDSID:v4];

    if (v5)
    {
      v6 = [*(v0 + 24) custodianInfosForAccount:v5];
      if (v6)
      {
        v7 = v6;
        sub_100005814(&unk_1003DABD0, &qword_10033E720);
        v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v8;
      }
    }

    return 0;
  }

  return result;
}

id sub_10015B8BC()
{
  v1 = *(v0 + 16);
  result = [v1 aa_primaryAppleAccount];
  if (result)
  {
    v3 = result;
    v4 = [result aa_altDSID];
    v5 = [v1 aa_authKitAccountForAltDSID:v4];

    if (v5)
    {
      v6 = [objc_opt_self() sharedInstance];
      v7 = [v6 securityLevelForAccount:v5];

      result = v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10015B998(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_10015B9B8, 0, 0);
}

uint64_t sub_10015B9B8()
{
  v1 = v0[18];
  v2 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10015BAE4;
  v3 = swift_continuation_init();
  v0[17] = sub_100005814(&unk_1003DEE00, qword_100343450);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10024442C;
  v0[13] = &unk_1003AB220;
  v0[14] = v3;
  [v2 saveVerifiedAccount:v1 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015BAE4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10015BC10;
  }

  else
  {
    v2 = sub_10015BBF4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015BC10(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2(0);
}

id sub_10015BC80(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6 = 0;
  if ([v3 saveVerifiedAccount:a1 error:&v6])
  {
    return v6;
  }

  v5 = v6;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_10015BD58(unsigned __int8 a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = [v9 aa_primaryAppleAccount];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    v13 = String._bridgeToObjectiveC()();
    [v11 setAccountProperty:v12 forKey:v13];

    v14 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v15 = String._bridgeToObjectiveC()();
    [v11 setAccountProperty:v14 forKey:v15];

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    aBlock[4] = sub_10005B220;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003AB1F8;
    v17 = _Block_copy(aBlock);
    v18 = v11;

    [v9 saveAccount:v18 withCompletionHandler:v17];
    _Block_release(v17);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    aBlock[6] = -7002;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = aBlock[0];
    a3(aBlock[0]);
  }
}

uint64_t sub_10015BF9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1000080F8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10015C06C(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return _swift_task_switch(sub_10015C08C, 0, 0);
}

uint64_t sub_10015C08C()
{
  v1 = v0[19];
  v2 = *(v0[20] + 16);
  sub_100308EB0(_swiftEmptyArrayStorage);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[21] = isa;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10015C204;
  v4 = swift_continuation_init();
  v0[17] = sub_100005814(&qword_1003D89F0, &unk_10033E700);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015BF9C;
  v0[13] = &unk_1003AB1A8;
  v0[14] = v4;
  [v2 discoverPropertiesForAccount:v1 options:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015C204()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_10013D56C;
  }

  else
  {
    v2 = sub_10015C314;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015C314()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015C380(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_10015C3A4, 0, 0);
}

uint64_t sub_10015C3A4()
{
  v1 = *(v0[21].super.isa + 2);
  if (v0[20].super.isa)
  {
    v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v0[22].super.isa = v2.super.isa;
  isa = v0[19].super.isa;
  v0[2].super.isa = v0;
  v0[7].super.isa = &v0[18];
  v0[3].super.isa = sub_10015C508;
  v4 = swift_continuation_init();
  v0[17].super.isa = sub_100005814(&qword_1003E0590, qword_100343E60);
  v0[10].super.isa = _NSConcreteStackBlock;
  v0[11].super.isa = 1107296256;
  v0[12].super.isa = sub_10013D5DC;
  v0[13].super.isa = &unk_1003AB180;
  v0[14].super.isa = v4;
  [v1 renewCredentialsForAccount:isa options:v2.super.isa completion:&v0[10]];

  return _swift_continuation_await(&v0[2]);
}

uint64_t sub_10015C508()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_10015C684;
  }

  else
  {
    v2 = sub_10015C618;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015C618()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10015C684(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10015C6F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10015C758()
{
  v1 = [*(*v0 + 16) aa_appleAccounts];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_10015C7C0();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_10015C7C0()
{
  result = qword_1003DE9A8;
  if (!qword_1003DE9A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DE9A8);
  }

  return result;
}

uint64_t sub_10015C824()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10015C85C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015C884(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000082A8;

  return v7();
}

uint64_t sub_10015C990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1000BCD5C(0, 0, v6, &unk_100343EE8, v8);
}

uint64_t sub_10015CAA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10015CAE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000082A8;

  return sub_10015C884(a1, v4, v5, v6);
}

uint64_t sub_10015CC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10000EF88;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_10015CD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v6[6] = a3;
  v6[7] = v3;
  v6[5] = a2;
  v8 = *v3;
  v6[8] = *v3;
  v6[9] = *(v8 + 88);
  sub_100008CBC(&qword_1003E06F8, &qword_1003440B8);
  v6[10] = swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  v6[11] = swift_task_alloc();
  v9 = *(v8 + 80);
  v6[12] = v9;
  v10 = *(v9 - 8);
  v6[13] = v10;
  v6[14] = *(v10 + 64);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  v6[17] = swift_task_alloc();
  v11 = swift_task_alloc();
  v6[18] = v11;
  *v11 = v6;
  v11[1] = sub_10015CF4C;

  return sub_10015F080(a1, a3);
}

uint64_t sub_10015CF4C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10015D05C, v1, 0);
}

uint64_t sub_10015D05C()
{
  v48 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v43 = v2;
  v44 = v1;
  v3 = v0[13];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v8 = v0[7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v46 = *(v3 + 16);
  v46(v2, v7, v4);
  v10 = *(v6 + 96);
  type metadata accessor for ExpiringValueCache(255, v4, v5, v10);
  WitnessTable = swift_getWitnessTable();
  v12 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v8;
  *(v13 + 3) = WitnessTable;
  *(v13 + 4) = v4;
  *(v13 + 5) = v5;
  *(v13 + 6) = v10;
  *(v13 + 7) = v8;
  (*(v3 + 32))(&v13[v12], v43, v4);
  swift_retain_n();
  v45 = sub_10001359C(0, 0, v44, &unk_1003440C8, v13);
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[6];
  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAA40);
  v46(v14, v16, v15);
  swift_retain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[15];
    v20 = v0[16];
    v22 = v0[12];
    v23 = v0[13];
    v24 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v24 = 136315394;
    v46(v20, v21, v22);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v23 + 8))(v21, v22);
    v28 = sub_10021145C(v25, v27, &v47);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;

    v29 = Duration.description.getter();
    v31 = v30;

    v32 = sub_10021145C(v29, v31, &v47);

    *(v24 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v18, v19, "caching value for key: %s, expiring in %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v33 = v0[15];
    v34 = v0[12];
    v35 = v0[13];

    (*(v35 + 8))(v33, v34);
  }

  v36 = v0[11];
  v38 = v0[9];
  v37 = v0[10];
  v39 = v0[5];
  v46(v0[16], v0[6], v0[12]);
  v40 = *(v37 + 48);
  (*(*(v38 - 8) + 16))(v36, v39, v38);
  *(v36 + v40) = v45;
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  swift_beginAccess();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();

  v41 = v0[1];

  return v41();
}

uint64_t sub_10015D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = *a4;
  v5[7] = *a4;
  v8 = type metadata accessor for CancellationError();
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = *(v7 + 88);
  v9 = type metadata accessor for Optional();
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  v11 = *(v7 + 80);
  v5[19] = v11;
  v5[20] = *(v11 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return _swift_task_switch(sub_10015D7F4, a4, 0);
}

uint64_t sub_10015D7F4()
{
  v30 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v5, qword_1003FAA40);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  if (v9)
  {
    v28 = v8;
    v12 = v0[19];
    v11 = v0[20];
    v27 = v0[25];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = Duration.description.getter();
    v16 = v15;

    v17 = sub_10021145C(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v6(v27, v10, v12);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v10, v12);
    v22 = sub_10021145C(v18, v20, &v29);

    *(v13 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v7, v28, "sleeping for %s to expire value for key: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[19];
    v24 = v0[20];

    v21 = *(v24 + 8);
    v21(v10, v23);
  }

  v0[30] = v21;
  static Clock<>.continuous.getter();
  v25 = swift_task_alloc();
  v0[31] = v25;
  *v25 = v0;
  v25[1] = sub_10015DB28;

  return sub_10015FEF4(0x86AC351052600000, 32, 0, 0, 1);
}

uint64_t sub_10015DB28()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = v2[18];
  v4 = v2[17];
  v5 = v2[16];
  v6 = v2[5];
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_10015E5E4;
  }

  else
  {
    v7 = sub_10015DCA4;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10015DCA4()
{
  v98 = v0;
  (*(v0 + 224))(*(v0 + 192), *(v0 + 48), *(v0 + 152));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  if (v3)
  {
    v5 = *(v0 + 224);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 152);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v97[0] = v10;
    *v9 = 136315138;
    v5(v6, v7, v8);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    v4(v7, v8);
    v14 = sub_10021145C(v11, v13, v97);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "checking for cancellation before removing value for key: %s", v9, 0xCu);
    sub_10000839C(v10);
  }

  else
  {
    v15 = *(v0 + 192);
    v16 = *(v0 + 152);

    v4(v15, v16);
  }

  v17 = *(v0 + 256);
  static Task<>.checkCancellation()();
  if (v17)
  {
    *(v0 + 272) = v17;
    *(v0 + 16) = v17;
    swift_errorRetain();
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v18 = swift_dynamicCast();
    v19 = *(v0 + 224);
    v20 = *(v0 + 152);
    if (v18)
    {
      v22 = *(v0 + 80);
      v21 = *(v0 + 88);
      v24 = *(v0 + 64);
      v23 = *(v0 + 72);
      v93 = *(v0 + 48);
      v95 = *(v0 + 176);

      (*(v23 + 32))(v22, v21, v24);
      v19(v95, v93, v20);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.debug.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 240);
      if (v27)
      {
        v29 = *(v0 + 224);
        v30 = *(v0 + 200);
        v31 = *(v0 + 176);
        v32 = *(v0 + 152);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v97[0] = v34;
        *v33 = 136315138;
        v29(v30, v31, v32);
        v35 = String.init<A>(describing:)();
        v37 = v36;
        v28(v31, v32);
        v38 = sub_10021145C(v35, v37, v97);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v25, v26, "Expiration cancelled, skipping value removal for key: %s", v33, 0xCu);
        sub_10000839C(v34);
      }

      else
      {
        v78 = *(v0 + 176);
        v79 = *(v0 + 152);

        v28(v78, v79);
      }

      v81 = *(v0 + 72);
      v80 = *(v0 + 80);
      v82 = *(v0 + 64);
      sub_100160560(&qword_1003E0700, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
      swift_allocError();
      (*(v81 + 16))(v83, v80, v82);
      swift_willThrow();
      (*(v81 + 8))(v80, v82);

      v84 = *(v0 + 8);

      return v84();
    }

    v53 = *(v0 + 168);
    v54 = *(v0 + 48);

    v19(v53, v54, v20);
    swift_errorRetain();
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 240);
    if (v57)
    {
      v59 = *(v0 + 224);
      v60 = *(v0 + 200);
      v61 = *(v0 + 168);
      v62 = *(v0 + 152);
      v63 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97[0] = v96;
      *v63 = 136315394;
      v59(v60, v61, v62);
      v64 = String.init<A>(describing:)();
      v66 = v65;
      v58(v61, v62);
      v67 = sub_10021145C(v64, v66, v97);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2112;
      swift_errorRetain();
      v68 = _swift_stdlib_bridgeErrorToNSError();
      *(v63 + 14) = v68;
      *v94 = v68;
      _os_log_impl(&_mh_execute_header, v55, v56, "Expiration task failed for key (%s with error: %@)", v63, 0x16u);
      sub_100083380(v94);

      sub_10000839C(v96);
    }

    else
    {
      v86 = *(v0 + 168);
      v87 = *(v0 + 152);

      v58(v86, v87);
    }

    v88 = *(v0 + 152);
    v89 = *(v0 + 96);
    v90 = *(v0 + 56);
    *(v0 + 24) = *(v0 + 40);
    v74 = swift_task_alloc();
    *(v0 + 280) = v74;
    v75 = type metadata accessor for ExpiringValueCache(0, v88, v89, *(v90 + 96));
    WitnessTable = swift_getWitnessTable();
    *v74 = v0;
    v77 = sub_10015EE24;
  }

  else
  {
    (*(v0 + 224))(*(v0 + 184), *(v0 + 48), *(v0 + 152));
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 240);
    if (v41)
    {
      v43 = *(v0 + 224);
      v44 = *(v0 + 200);
      v45 = *(v0 + 184);
      v46 = *(v0 + 152);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97[0] = v48;
      *v47 = 136315138;
      v43(v44, v45, v46);
      v49 = String.init<A>(describing:)();
      v51 = v50;
      v42(v45, v46);
      v52 = sub_10021145C(v49, v51, v97);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v39, v40, "remove value for key: %s", v47, 0xCu);
      sub_10000839C(v48);
    }

    else
    {
      v69 = *(v0 + 184);
      v70 = *(v0 + 152);

      v42(v69, v70);
    }

    v71 = *(v0 + 152);
    v72 = *(v0 + 96);
    v73 = *(v0 + 56);
    *(v0 + 32) = *(v0 + 40);
    v74 = swift_task_alloc();
    *(v0 + 264) = v74;
    v75 = type metadata accessor for ExpiringValueCache(0, v71, v72, *(v73 + 96));
    WitnessTable = swift_getWitnessTable();
    *v74 = v0;
    v77 = sub_10015EBD8;
  }

  v74[1] = v77;
  v91 = *(v0 + 120);
  v92 = *(v0 + 48);

  return sub_10015CC00(v91, v92, v75, WitnessTable);
}

uint64_t sub_10015E5E4()
{
  v62 = v0;
  v1 = v0[32];
  v0[2] = v1;
  v0[34] = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  v2 = swift_dynamicCast();
  v3 = v0[28];
  v4 = v0[19];
  if (v2)
  {
    v6 = v0[10];
    v5 = v0[11];
    v8 = v0[8];
    v7 = v0[9];
    v57 = v0[6];
    v59 = v0[22];

    (*(v7 + 32))(v6, v5, v8);
    v3(v59, v57, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[30];
    if (v11)
    {
      v13 = v0[28];
      v14 = v0[25];
      v15 = v0[22];
      v16 = v0[19];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v61[0] = v18;
      *v17 = 136315138;
      v13(v14, v15, v16);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      v12(v15, v16);
      v22 = sub_10021145C(v19, v21, v61);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Expiration cancelled, skipping value removal for key: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {
      v39 = v0[22];
      v40 = v0[19];

      v12(v39, v40);
    }

    v42 = v0[9];
    v41 = v0[10];
    v43 = v0[8];
    sub_100160560(&qword_1003E0700, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    (*(v42 + 16))(v44, v41, v43);
    swift_willThrow();
    (*(v42 + 8))(v41, v43);

    v45 = v0[1];

    return v45();
  }

  else
  {
    v23 = v0[21];
    v24 = v0[6];

    v3(v23, v24, v4);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[30];
    if (v27)
    {
      v29 = v0[28];
      v30 = v0[25];
      v31 = v0[21];
      v32 = v0[19];
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61[0] = v60;
      *v33 = 136315394;
      v29(v30, v31, v32);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      v28(v31, v32);
      v37 = sub_10021145C(v34, v36, v61);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2112;
      swift_errorRetain();
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v38;
      *v58 = v38;
      _os_log_impl(&_mh_execute_header, v25, v26, "Expiration task failed for key (%s with error: %@)", v33, 0x16u);
      sub_100083380(v58);

      sub_10000839C(v60);
    }

    else
    {
      v47 = v0[21];
      v48 = v0[19];

      v28(v47, v48);
    }

    v49 = v0[19];
    v50 = v0[12];
    v51 = v0[7];
    v0[3] = v0[5];
    v52 = swift_task_alloc();
    v0[35] = v52;
    v53 = type metadata accessor for ExpiringValueCache(0, v49, v50, *(v51 + 96));
    WitnessTable = swift_getWitnessTable();
    *v52 = v0;
    v52[1] = sub_10015EE24;
    v55 = v0[15];
    v56 = v0[6];

    return sub_10015CC00(v55, v56, v53, WitnessTable);
  }
}

uint64_t sub_10015EBD8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10015ED44, v4, 0);
}

uint64_t sub_10015ED44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015EE24()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10015EF90, v4, 0);
}

uint64_t sub_10015EF90(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10015F080(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v3[12] = *(v4 + 88);
  v3[13] = type metadata accessor for Optional();
  v3[14] = swift_task_alloc();
  sub_100008CBC(&qword_1003E06F8, &qword_1003440B8);
  v3[15] = swift_getTupleTypeMetadata2();
  v5 = type metadata accessor for Optional();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = *(v4 + 80);
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10015F2B8, v2, 0);
}

uint64_t sub_10015F2B8()
{
  v90 = v0;
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA40);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[28];
  v85 = v6;
  if (v9)
  {
    v11 = v0[27];
    v13 = v0[24];
    v12 = v0[25];
    v14 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v89 = v87;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    v84 = *(v12 + 8);
    v84(v10, v13);
    v18 = sub_10021145C(v15, v17, &v89);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetching cached value for key: %s", v14, 0xCu);
    sub_10000839C(v87);
  }

  else
  {
    v20 = v0[24];
    v19 = v0[25];

    v84 = *(v19 + 8);
    v84(v10, v20);
  }

  v21 = v0[23];
  v22 = v0[22];
  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];
  swift_beginAccess();

  Dictionary.subscript.getter();

  v86 = *(v23 + 16);
  v86(v22, v21, v24);
  v26 = *(v25 - 8);
  v88 = *(v26 + 48);
  v27 = v88(v22, 1, v25);
  v28 = v0[22];
  if (v27 == 1)
  {
    (*(v0[17] + 8))(v0[22], v0[16]);
  }

  else
  {
    v29 = v0[12];
    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    Task.cancel()();

    (*(*(v29 - 8) + 8))(v28, v29);
  }

  v30 = v0[24];
  v31 = v0[21];
  v76 = v0[26];
  v77 = v0[20];
  v32 = v0[15];
  v78 = v0[16];
  v80 = v0[23];
  v33 = v0[9];
  v85(v0[27], v33, v30);
  (*(v26 + 56))(v31, 1, 1, v32);
  swift_beginAccess();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  swift_endAccess();
  v85(v76, v33, v30);
  v86(v77, v80, v78);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v82 = v35;
    log = v34;
    v36 = v0[26];
    v37 = v0[27];
    v38 = v0[24];
    v39 = v0[19];
    v40 = v0[16];
    v79 = v0[20];
    v81 = v0[15];
    v41 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v41 = 136315394;
    v85(v37, v36, v38);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    v84(v36, v38);
    v45 = sub_10021145C(v42, v44, &v89);

    *(v41 + 4) = v45;
    *(v41 + 12) = 2080;
    v86(v39, v79, v40);
    v46 = v88(v39, 1, v81);
    v47 = v0[19];
    if (v46 == 1)
    {
      v48 = v0[12];
      (*(v0[17] + 8))(v0[19], v0[16]);
      v49 = *(v48 - 8);
      v50 = 1;
    }

    else
    {
      v57 = v0[14];
      v58 = v0[12];

      v49 = *(v58 - 8);
      (*(v49 + 32))(v57, v47, v58);
      v50 = 0;
    }

    v59 = v0[20];
    v60 = v0[16];
    v61 = v0[17];
    (*(v49 + 56))(v0[14], v50, 1, v0[12]);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    v56 = *(v61 + 8);
    v56(v59, v60);
    v65 = sub_10021145C(v62, v64, &v89);

    *(v41 + 14) = v65;
    _os_log_impl(&_mh_execute_header, log, v82, "fetched cached value for key: %s, returning: %s", v41, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v51 = v0[26];
    v52 = v0[24];
    v53 = v0[20];
    v54 = v0[16];
    v55 = v0[17];

    v56 = *(v55 + 8);
    v56(v53, v54);
    v84(v51, v52);
  }

  v66 = v0[18];
  v67 = v0[15];
  (*(v0[17] + 32))(v66, v0[23], v0[16]);
  v68 = v88(v66, 1, v67);
  v69 = v0[18];
  v70 = v0[12];
  if (v68 == 1)
  {
    v56(v0[18], v0[16]);
    v71 = *(v70 - 8);
    v72 = 1;
  }

  else
  {
    v73 = v0[8];

    v71 = *(v70 - 8);
    (*(v71 + 32))(v73, v69, v70);
    v72 = 0;
  }

  (*(v71 + 56))(v0[8], v72, 1, v0[12]);

  v74 = v0[1];

  return v74();
}

uint64_t sub_10015FBBC()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10015FBE4()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_10015FC34(uint64_t a1)
{
  result = sub_10015FC5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10015FC5C()
{
  result = qword_1003E06B8;
  if (!qword_1003E06B8)
  {
    sub_100008CBC(&qword_1003DF788, qword_1003437B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E06B8);
  }

  return result;
}

uint64_t sub_10015FCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000EF88;

  return sub_10015CD34(a1, a2, a3);
}

uint64_t sub_10015FDA4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000082A8;

  return sub_10015F080(a1, a2);
}

uint64_t sub_10015FE50(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_10015FE8C()
{
  sub_100005814(&qword_1003DF788, qword_1003437B0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = sub_1003093E4(_swiftEmptyArrayStorage);
  result = -1.59123824e-276;
  *(v0 + 112) = xmmword_100343EF0;
  qword_1003FA840 = v0;
  return result;
}

uint64_t sub_10015FEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10015FFF4, 0, 0);
}

uint64_t sub_10015FFF4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100160560(&qword_1003E0708, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100160560(&qword_1003E0710, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_100160184;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_100160184()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100160340, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100160340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001603AC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100160470(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000082A8;

  return sub_10015D57C(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_100160560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001605D8()
{
  sub_10000839C((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_100160660(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - v12;
  if (*(v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync))
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "TrustedContact CloudKit sync already completed", v17, 2u);
    }

    a1(0);
  }

  else
  {
    v45 = v7;
    v46 = v6;
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions;
    swift_beginAccess();
    v20 = *(v3 + v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v19) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1003064E8(0, v20[2] + 1, 1, v20);
      *(v3 + v19) = v20;
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1003064E8((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = &v20[2 * v23];
    v24[4] = sub_100161B4C;
    v24[5] = v18;
    *(v3 + v19) = v20;
    swift_endAccess();
    v25 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress;
    if (*(v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress))
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008D04(v26, qword_1003FAA40);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "TrustedContact CloudKit sync currently in progress", v29, 2u);
      }
    }

    else
    {
      if (qword_1003D7F20 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100008D04(v30, qword_1003FAA40);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Starting TrustedContact CloudKit sync", v33, 2u);
      }

      (*(v11 + 16))(v13, v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore, v10);
      Dependency.wrappedValue.getter();
      (*(v11 + 8))(v13, v10);
      v34 = [*(*sub_1000080F8(v47 v48) + 16)];
      sub_10000839C(v47);
      v35 = v45;
      if (v34)
      {
        v36 = [v34 aa_isSubscribedToTrustedContactContainers] ^ 1;
      }

      else
      {
        v36 = 0;
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 67109120;
        *(v39 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v37, v38, "TrustedContact CloudKit subscription needed: %{BOOL}d", v39, 8u);
      }

      *(v3 + v25) = 1;
      v40 = v46;
      (*(v35 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__syncManager, v46);
      Dependency.wrappedValue.getter();
      (*(v35 + 8))(v9, v40);
      sub_1000080F8(v47, v48);
      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = v34;
      *(v42 + 32) = v36;

      v43 = v34;
      sub_1002E8E0C(3, v36, sub_100161BB8, v42);

      sub_10000839C(v47);
    }
  }
}

uint64_t sub_100160CF8(char a1, uint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue);
    v23 = v12;
    v22 = v17;

    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    *(v18 + 32) = a4 & 1;
    *(v18 + 33) = a1 & 1;
    aBlock[4] = sub_100161C18;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031EF0;
    aBlock[3] = &unk_1003AB448;
    v19 = _Block_copy(aBlock);
    v20 = a3;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100161C40(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005814(&unk_1003DABE0, &unk_10033EC20);
    sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    (*(v13 + 8))(v15, v23);
  }

  return result;
}

uint64_t sub_100161014(uint64_t a1, char *a2, char a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100161090(a2, a3 & 1, a4 & 1);
  }

  return result;
}

uint64_t sub_100161090(char *a1, char a2, char a3)
{
  v5 = v3;
  LOBYTE(v7) = a2;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v29 - v12;
  if ((a3 & 1) == 0)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100008D04(v21, qword_1003FAA40);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "TrustedContact CloudKit sync failed", v24, 2u);
    }

    type metadata accessor for AAError(0);
    v30 = 0;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100161C40(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v18 = v29[0];
    goto LABEL_13;
  }

  v4 = v11;
  if (qword_1003D7F20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA40);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "TrustedContact CloudKit sync succeeded", v17, 2u);
    }

    v18 = 0;
    *(v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync) = 1;
    if ((v7 & 1) != 0 && a1)
    {
      v19 = a1;
      [v19 aa_setSubscribedToTrustedContactContainers:1];
      (*(v10 + 16))(v13, v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore, v4);
      Dependency.wrappedValue.getter();
      v20 = *(v10 + 8);
      v10 += 8;
      v20(v13, v4);
      sub_1000080F8(v29, v29[3]);
      sub_10015BC80(v19);

      sub_10000839C(v29);
      v18 = 0;
    }

LABEL_13:
    a1 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions;
    swift_beginAccess();
    v13 = *&a1[v5];
    v25 = *(v13 + 2);

    if (!v25)
    {
      break;
    }

    v7 = 0;
    v26 = v13 + 40;
    while (v7 < *(v13 + 2))
    {
      ++v7;
      v10 = *(v26 - 1);
      v30 = v18;

      (v10)(&v30);

      v26 += 16;
      if (v25 == v7)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:

  *&a1[v5] = _swiftEmptyArrayStorage;

  *(v5 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress) = 0;
  return result;
}

uint64_t sub_100161598()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__syncManager;
  v2 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactInitiator(uint64_t a1)
{
  result = qword_1003E0818;
  if (!qword_1003E0818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100161700(uint64_t a1)
{
  sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100161820()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v1 - 8);
  v10 = v1;
  __chkstk_darwin(v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  v8 = OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_serialQueue;
  v7[1] = sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100161C40(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + v8) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeDidSync) = 0;
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafeSyncInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC13appleaccountd23TrustedContactInitiator_unsafePendingCompletions) = _swiftEmptyArrayStorage;
  return v0;
}

uint64_t sub_100161B14()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100161B78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100161BCC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1);
}

uint64_t sub_100161C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100161C40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100161C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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

uint64_t sub_100161D6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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

uint64_t type metadata accessor for URLConfigurationCache(uint64_t a1)
{
  result = qword_1003E0920;
  if (!qword_1003E0920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100161E70(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = sub_100016034(319, &qword_1003E0930, AAURLConfiguration_ptr);
    if (v3 <= 0x3F)
    {
      result = sub_100016034(319, &unk_1003E0938, NSHTTPURLResponse_ptr);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100161F2C(uint64_t a1)
{
  type metadata accessor for URLConfigurationManager();
  swift_allocObject();
  result = sub_100161F68();
  qword_1003FA848 = result;
  return result;
}

uint64_t sub_100161F68()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = sub_100071C74();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 56) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1001621C8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = objc_allocWithZone(NSURLComponents);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithString:v6];

  if (v7)
  {
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    [v8 setPath:v9];

    v10 = v8;
    v11 = String._bridgeToObjectiveC()();
    [v10 setQuery:v11];

    v12 = [v10 URL];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v4, 0, 1, v14);
    }

    else
    {

      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    }

    return sub_100135D14(v4, a1);
  }

  else
  {
    v15 = type metadata accessor for URL();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t sub_100162438(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 56);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1001637A8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AB4D0;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100163F0C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_100162708(uint64_t a1, void (*a2)(void *, void, id), uint64_t a3)
{
  v6 = sub_1001628A4();
  if (v6)
  {
    v7 = v6;
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA40);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "cachedURLConfiguration is present", v11, 2u);
    }

    v12 = v7;
    a2(v7, 0, 0);
  }

  else
  {
    dispatch_suspend(*(a1 + 56));

    sub_1001637CC(a1, a1, a2, a3);
  }
}

id sub_1001628A4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v35 - v7;
  swift_beginAccess();
  sub_100012D04(v1 + 16, &v36, &qword_1003E0A18, qword_100344288);
  if (*(&v37 + 1))
  {
    sub_10003E950(&v36, v39);
    static Date.now.getter();
    v9 = sub_1000080F8(v39, v39[3]);
    (*(v3 + 16))(v6, v9, v2);
    Date.timeIntervalSince(_:)();
    v11 = v10;
    v12 = *(v3 + 8);
    v12(v6, v2);
    v12(v8, v2);
    if (v11 > 600.0)
    {
      v38 = 0;
      v36 = 0u;
      v37 = 0u;
      swift_beginAccess();
      sub_100163E9C(&v36, v1 + 16);
      swift_endAccess();
    }

    sub_10000839C(v39);
  }

  else
  {
    sub_100008D3C(&v36, &qword_1003E0A18, qword_100344288);
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAA40);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = *(v1 + 40);
    if (v18)
    {
      v19 = sub_1000080F8((v1 + 16), *(v1 + 40));
      v35 = &v35;
      v20 = *(v18 - 8);
      __chkstk_darwin(v19);
      v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v22);
      v23 = type metadata accessor for URLConfigurationCache(0);
      v24 = *(v20 + 8);
      v25 = *&v22[*(v23 + 20)];
      v24(v22, v18);
    }

    else
    {
      v25 = 0;
    }

    *(v16 + 4) = v25;
    *v17 = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "[URLConfigurationManager cachedURLConfiguration]: %@", v16, 0xCu);
    sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
  }

  v26 = *(v1 + 40);
  if (!v26)
  {
    return 0;
  }

  v27 = sub_1000080F8((v1 + 16), *(v1 + 40));
  v28 = *(v26 - 8);
  __chkstk_darwin(v27);
  v30 = &v35 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v30);
  v31 = type metadata accessor for URLConfigurationCache(0);
  v32 = *(v28 + 8);
  v33 = *&v30[*(v31 + 20)];
  v32(v30, v26);
  return v33;
}

uint64_t sub_100162D80(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void *, uint64_t))
{
  if (a1 && a2)
  {
    v10 = qword_1003D7F20;
    v27 = a1;
    v11 = a2;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA40);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Successfully fetched URL configuration", v15, 2u);
    }

    if (qword_1003D7E08 != -1)
    {
      swift_once();
    }

    v16 = qword_1003FA848;
    v17 = type metadata accessor for URLConfigurationCache(0);
    v28[3] = v17;
    v28[4] = &off_1003AB470;
    v18 = sub_10000DBEC(v28);
    Date.init()();
    *(v18 + *(v17 + 20)) = v27;
    *(v18 + *(v17 + 24)) = v11;
    swift_beginAccess();
    sub_100163E9C(v28, v16 + 16);
    swift_endAccess();
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA40);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      if (a3)
      {
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        v25 = v24;
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      *(v22 + 4) = v24;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch URL configuration, error: %@", v22, 0xCu);
      sub_100008D3C(v23, &unk_1003D9140, &qword_10033E640);
    }
  }

  dispatch_resume(*(a4 + 56));
  return a5(a1, a2, a3);
}

void sub_10016309C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t, id))
{
  if (*(a1 + 24))
  {
    sub_100012D04(a1, v35, &qword_1003D87C8, qword_100344800);
    if (v36)
    {
      sub_100005814(&qword_1003DBB88, &qword_10033FC30);
      if (swift_dynamicCast())
      {
        v7 = objc_allocWithZone(AAURLConfiguration);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [v7 initWithDictionary:isa];

        if (qword_1003D7F20 != -1)
        {
          swift_once();
        }

        v10 = type metadata accessor for Logger();
        sub_100008D04(v10, qword_1003FAA40);
        v11 = v9;
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          *(v14 + 4) = v11;
          *v15 = v11;
          v16 = v11;
          _os_log_impl(&_mh_execute_header, v12, v13, "[URLConfigurationManager fetchURLConfiguration]: %@", v14, 0xCu);
          sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);
        }

        v17 = v11;
        a4(v11, a2, 0);

        return;
      }
    }

    else
    {
      sub_100008D3C(v35, &qword_1003D87C8, qword_100344800);
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAA40);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "[URLConfigurationManager fetchURLConfiguration]: Failed to convert object to dictionary.", v27, 2u);
    }

    if (a3)
    {
      v28 = _convertErrorToNSError(_:)();
    }

    else
    {
      v28 = 0;
    }

    v29 = [objc_opt_self() aa_errorWithCode:-4402 underlyingError:v28];

    a4(0, a2, v29);
  }

  else if (a3)
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA40);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "[URLConfigurationManager fetchURLConfiguration]: %@", v21, 0xCu);
      sub_100008D3C(v22, &unk_1003D9140, &qword_10033E640);
    }

    a4(0, a2, a3);
  }

  else
  {
    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAA40);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "[URLConfigurationManager fetchURLConfiguration]: Both object and error are nil.", v33, 2u);
    }

    v34 = [objc_opt_self() aa_errorWithCode:-4402 underlyingError:0];
    a4(0, a2, v34);
  }
}

uint64_t sub_100163664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_100070AF0(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v8 = a3;
  v9 = a4;
  v7(v13, a3, a4);

  return sub_100008D3C(v13, &qword_1003D87C8, qword_100344800);
}

uint64_t sub_100163730()
{
  sub_100008D3C(v0 + 16, &qword_1003E0A18, qword_100344288);

  return swift_deallocClassInstance();
}

uint64_t sub_1001637B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001637CC(uint64_t a1, uint64_t a2, void (*a3)(void, void, id), uint64_t a4)
{
  v46 = type metadata accessor for URLRequest();
  v7 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100005814(&qword_1003E7500, &qword_10033EC30);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for URL();
  v48 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v45 = &v41 - v15;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v17 = qword_1003D7F20;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v44 = sub_100008D04(v18, qword_1003FAA40);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v12;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "[URLConfigurationManager fetchURLConfiguration] called.", v21, 2u);
    v12 = v42;
  }

  sub_1001621C8(v11);
  v22 = v48;
  if ((*(v48 + 48))(v11, 1, v12) == 1)
  {
    sub_100008D3C(v11, &qword_1003E7500, &qword_10033EC30);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "[URLConfigurationManager fetchURLConfiguration]: configurationURL is nil.", v25, 2u);
    }

    v26 = [objc_opt_self() aa_errorWithCode:-4417 underlyingError:0];
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&_mh_execute_header, v27, v28, "Failed to fetch URL configuration, error: %@", v29, 0xCu);
      sub_100008D3C(v30, &unk_1003D9140, &qword_10033E640);
    }

    dispatch_resume(*(a2 + 56));
    a3(0, 0, v26);
  }

  else
  {
    v32 = v45;
    (*(v22 + 32))(v45, v11, v12);
    (*(v22 + 16))(v43, v32, v12);
    v33 = v47;
    URLRequest.init(url:cachePolicy:timeoutInterval:)();
    v34 = [objc_opt_self() sharedSession];
    v35 = v22;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_100163E50;
    *(v37 + 24) = v16;
    aBlock[4] = sub_100163E94;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100163664;
    aBlock[3] = &unk_1003AB548;
    v38 = v12;
    v39 = _Block_copy(aBlock);

    v40 = [v34 bodyTaskWithRequest:isa completion:v39];
    _Block_release(v39);

    [v40 resume];
    swift_unknownObjectRelease();
    (*(v7 + 8))(v33, v46);
    (*(v35 + 8))(v32, v38);
  }
}

uint64_t sub_100163E5C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100163E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E0A18, qword_100344288);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100163F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100163F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003E0AD0, qword_100344310);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(AAMyPhotoRequest) initWithAccount:a2];
  if (v8)
  {
    v9 = v8;
    (*(v5 + 16))(v7, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    (*(v5 + 32))(v11 + v10, v7, v4);
    aBlock[4] = sub_100165694;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001641BC;
    aBlock[3] = &unk_1003AB660;
    v12 = _Block_copy(aBlock);

    [v9 performRequestWithHandler:v12];
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_10016413C(uint64_t a1, void *a2)
{
  if (a2)
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v3 = a2;
    sub_100005814(&qword_1003E0AD0, qword_100344310);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_1001641BC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_1001643F0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1001644C8;

  return sub_100164D08(v5);
}

uint64_t sub_1001644C8(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_100164654()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10016469C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000082A8;

  return sub_1001643F0(v2, v3, v4);
}

uint64_t sub_100164750(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10000EF88;

  return v6();
}

uint64_t sub_10016483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000BF7F8(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100164AF8(v11);
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

    sub_100164AF8(a3);

    return v21;
  }

LABEL_8:
  sub_100164AF8(a3);
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

uint64_t sub_100164AF8(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100164B60()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100164B98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000EF88;

  return sub_1000BF868(a1, v4);
}

uint64_t sub_100164C50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000082A8;

  return sub_1000BF868(a1, v4);
}

uint64_t sub_100164D08(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for UUID();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v2 = type metadata accessor for URL.DirectoryHint();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100164E68, 0, 0);
}

uint64_t sub_100164E68()
{
  v1 = *(v0 + 104);
  type metadata accessor for IdentityDataStore();
  *(v0 + 184) = swift_initStackObject();
  v2 = [v1 identifier];
  if (v2)
  {
    v10 = v2;
    v11 = *(v0 + 176);
    v13 = *(v0 + 136);
    v12 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_100165B80(v15, v17, v11);

    strcpy((v0 + 72), "identity.json");
    *(v0 + 86) = -4864;
    (*(v13 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
    sub_1000709A0();
    URL.appending<A>(component:directoryHint:)();
    (*(v13 + 8))(v12, v14);
    v18 = Data.init(contentsOf:options:)();
    v20 = v19;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for Identity();
    sub_1001655A8();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);

    sub_100012324(v18, v20);

    v25 = *(v24 + 8);
    v25(v22, v23);
    v25(v21, v23);
    v26 = *(v0 + 96);

    v27 = *(v0 + 8);

    return v27(v26);
  }

  else
  {
    __break(1u);
    return withCheckedContinuation<A>(isolation:function:_:)(0, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_100165248()
{

  return _swift_task_switch(sub_100165360, 0, 0);
}

uint64_t sub_100165360()
{
  v1 = *(v0 + 88);
  v2 = [v1 photoData];
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xF000000000000000;
  }

  UUID.init()();
  v7 = [v1 cropRect];
  v8 = 0uLL;
  if (v7)
  {
    v9 = v7;
    static CGRect._conditionallyBridgeFromObjectiveC(_:result:)();

    v8 = 0uLL;
    v10 = 0uLL;
  }

  else
  {
    v10 = 0uLL;
  }

  v11 = *(v0 + 104);
  *(v0 + 16) = v8;
  *(v0 + 32) = v10;
  *(v0 + 48) = 1;
  type metadata accessor for Identity.Avatar();
  sub_100052704(v4, v6);
  v12 = Identity.Avatar.__allocating_init(identifier:imageData:cropRect:)();
  type metadata accessor for Identity();
  UUID.init()();
  v13 = v12;
  v14 = Identity.__allocating_init(identifier:avatar:)();
  sub_100165748(v14, v11);
  sub_100015D58(v4, v6);

  v15 = *(v0 + 8);

  return v15(v14);
}

unint64_t sub_10016555C()
{
  result = qword_1003E0AC0;
  if (!qword_1003E0AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E0AC0);
  }

  return result;
}

unint64_t sub_1001655A8()
{
  result = qword_1003E0AC8;
  if (!qword_1003E0AC8)
  {
    type metadata accessor for Identity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E0AC8);
  }

  return result;
}

uint64_t sub_100165600()
{
  v1 = sub_100005814(&qword_1003E0AD0, qword_100344310);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_100165694(uint64_t a1, void *a2)
{
  sub_100005814(&qword_1003E0AD0, qword_100344310);

  sub_10016413C(a1, a2);
}

uint64_t sub_100165728(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100165748(uint64_t a1, void *a2)
{
  v36[0] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = __chkstk_darwin(v7);
  v37 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v36 - v10;
  v12 = [a2 identifier];
  if (!v12)
  {
    __break(1u);
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  sub_100165B80(v14, v16, v11);

  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  URL.path(percentEncoded:)(1);
  v19 = String._bridgeToObjectiveC()();

  LOBYTE(v13) = [v18 fileExistsAtPath:v19];

  if ((v13 & 1) == 0)
  {
    v20 = [v17 defaultManager];
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    v40[0] = 0;
    v24 = [v20 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v40];

    if (!v24)
    {
      v35 = v40[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return (*(v38 + 8))(v11, v39);
    }

    v25 = v40[0];
  }

  strcpy(v40, "identity.json");
  HIWORD(v40[1]) = -4864;
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  sub_1000709A0();
  v26 = v37;
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v40[0] = v36[0];
  type metadata accessor for Identity();
  sub_100165FC0();
  v27 = v36[1];
  v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v27)
  {
  }

  else
  {
    v30 = v28;
    v31 = v29;

    Data.write(to:options:)();
    sub_100012324(v30, v31);
  }

  v32 = v39;
  v33 = *(v38 + 8);
  v33(v26, v39);
  return (v33)(v11, v32);
}

uint64_t sub_100165B80@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v42 = a2;
  v40 = a3;
  v3 = type metadata accessor for URL.DirectoryHint();
  v39 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v8);
  v43 = &v33[-v12];
  v13 = __chkstk_darwin(v11);
  v15 = &v33[-v14];
  __chkstk_darwin(v13);
  v17 = &v33[-v16];
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 URLsForDirectory:14 inDomains:1];

  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16))
  {

    if (*(v20 + 16))
    {
      (*(v7 + 16))(v15, v20 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

      v21 = *(v7 + 32);
      v37 = v17;
      v21(v17, v15, v6);
      v44 = 0xD000000000000017;
      v45 = 0x800000010032F3E0;
      v22 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v23 = v39;
      v38 = v6;
      v36 = *(v39 + 104);
      v34 = enum case for URL.DirectoryHint.inferFromPath(_:);
      v36(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
      sub_1000709A0();
      v24 = v43;
      URL.appending<A>(component:directoryHint:)();
      v35 = v10;
      v25 = *(v23 + 8);
      v25(v5, v3);
      v44 = v41;
      v45 = v42;
      v26 = v22;
      v27 = v36;
      v36(v5, v26, v3);
      URL.appending<A>(component:directoryHint:)();
      v25(v5, v3);
      v44 = 0x797469746E656449;
      v45 = 0xE800000000000000;
      v27(v5, v34, v3);
      v28 = v35;
      URL.appending<A>(component:directoryHint:)();
      v25(v5, v3);
      v29 = *(v7 + 8);
      v30 = v28;
      v31 = v38;
      v29(v30, v38);
      v29(v24, v31);
      return (v29)(v37, v31);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100165FC0()
{
  result = qword_1003E0B88;
  if (!qword_1003E0B88)
  {
    type metadata accessor for Identity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E0B88);
  }

  return result;
}

void *sub_100166018(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_1002E0224(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = __DataStorage._offset.getter();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = __DataStorage._bytes.getter();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = __DataStorage._offset.getter();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_100005814(&unk_1003E7720, &qword_100346B60);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10033EB30;
      *(v20 + 56) = &type metadata for UInt8;
      *(v20 + 64) = &protocol witness table for UInt8;
      *(v20 + 32) = v19;
      v21 = String.init(format:_:)();
      v45 = v8;
      v24 = v8[2];
      v23 = v8[3];
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1002E0224((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      v8[2] = v24 + 1;
      v25 = &v8[2 * v24];
      v25[4] = v21;
      v25[5] = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_100166388(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100167764(a1, a2, a3, a5, a6, a7);

  return swift_unknownObjectRelease();
}

void sub_1001663CC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  if (a1)
  {
    v43 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100008D04(v15, qword_1003FAAB8);
    (*(v9 + 16))(v12, a2, v8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v42 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v19 = 136315394;
      sub_100168520(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      (*(v9 + 8))(v12, v8);
      v24 = sub_10021145C(v21, v23, &v45);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v20 = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "   checkInheritanceKey failed for beneficiaryID %s    error: %@", v19, 0x16u);
      sub_100008D3C(v20, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v41);

      a3 = v42;
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    type metadata accessor for InheritanceError(0);
    v44 = 2109;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v37 = v45;
    v38 = _convertErrorToNSError(_:)();

    a3(v38);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    (*(v9 + 16))(v14, a2, v8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = a4;
      v31 = a3;
      v32 = v30;
      v45 = v30;
      *v29 = 136315138;
      sub_100168520(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v9 + 8))(v14, v8);
      v36 = sub_10021145C(v33, v35, &v45);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "   checkInheritanceKey succeeded for beneficiaryID %s", v29, 0xCu);
      sub_10000839C(v32);
      a3 = v31;
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    type metadata accessor for InheritanceError(0);
    v44 = 2101;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v45;
    v38 = _convertErrorToNSError(_:)();

    a3(v38);
  }
}

void sub_1001669E4(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v6 - 8);
  v8 = &v75 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_5;
  }

  v14 = sub_1003084DC(0x69636966656E6562, 0xEF64697555797261);
  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = (*(v13 + 56) + 16 * v14);
  v18 = *v16;
  v17 = v16[1];

  v83 = v18;
  UUID.init(uuidString:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_100008D3C(v8, &qword_1003D8B60, &unk_10033F210);
LABEL_5:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "💥 Failure to parse beneficiaryInfo.", v22, 2u);
    }

    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  v23 = *(v13 + 16);
  v82 = v17;
  if (v23)
  {
    v24 = sub_1003084DC(0x646F436D69616C63, 0xED00006873614865);
    if (v25)
    {
      v26 = (*(v13 + 56) + 16 * v24);
      v27 = v26[1];
      v77 = *v26;
    }

    else
    {
      v77 = 0;
      v27 = 0;
    }

    v17 = v82;
  }

  else
  {
    v77 = 0;
    v27 = 0;
  }

  v76 = v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_100008D04(v28, qword_1003FAAB8);

  v84 = v29;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();

  v32 = os_log_type_enabled(v30, v31);
  v78 = v3;
  v79 = v27;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v85[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_10021145C(v83, v17, v85);
    _os_log_impl(&_mh_execute_header, v30, v31, "Beneficiary UUID: %s", v33, 0xCu);
    sub_10000839C(v34);

    v27 = v79;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  v37 = os_log_type_enabled(v35, v36);
  v80 = a2;
  v81 = v10;
  v38 = v76;
  if (v37)
  {
    v39 = v27;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v86 = v41;
    *v40 = 136315138;
    v85[0] = v77;
    v85[1] = v39;

    sub_100005814(&qword_1003E26F0, &qword_10034B4C0);
    v42 = String.init<A>(describing:)();
    v44 = sub_10021145C(v42, v43, &v86);
    v10 = v81;

    *(v40 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Claim code hash: %s", v40, 0xCu);
    sub_10000839C(v41);
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v85[0] = v48;
    *v47 = 136315138;
    if (*(v13 + 16) && (v49 = sub_1003084DC(0x4B64657070617277, 0xEA00000000007965), (v50 & 1) != 0))
    {
      v51 = (*(v13 + 56) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];

      v54 = v53;
    }

    else
    {
      v54 = 0;
      v52 = 0xE000000000000000;
    }

    v55 = sub_10021145C(v54, v52, v85);

    *(v47 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "Wrapped Key: %s", v47, 0xCu);
    sub_10000839C(v48);

    v10 = v81;
  }

  else
  {
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v85[0] = v59;
    *v58 = 136315138;
    if (*(v13 + 16) && (v60 = sub_1003084DC(0x4B64657070617277, 0xEE00687361487965), (v61 & 1) != 0))
    {
      v62 = (*(v13 + 56) + 16 * v60);
      v64 = *v62;
      v63 = v62[1];

      v65 = v64;
    }

    else
    {
      v65 = 0;
      v63 = 0xE000000000000000;
    }

    v66 = sub_10021145C(v65, v63, v85);

    *(v58 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v56, v57, "Wrapped Key Hash: %s", v58, 0xCu);
    sub_10000839C(v59);

    v10 = v81;
  }

  else
  {
  }

  v67 = v82;
  if (v79)
  {
    v68 = sub_1001672C8(v83, v82, v77, v79, v38);
    sub_100168568(v68, v69);
  }

  else
  {

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v85[0] = v73;
      *v72 = 136315138;
      v74 = sub_10021145C(v83, v67, v85);

      *(v72 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v70, v71, "Claim code is nil for uuid: %s", v72, 0xCu);
      sub_10000839C(v73);
    }

    else
    {
    }
  }

  (*(v10 + 8))(v38, v9);
}

uint64_t sub_1001672C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v31 = a3;
  v32 = a4;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v5;
  v33 = v16;
  v17 = sub_10031AF8C(a5);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v18;
  if (v16[3] < v22)
  {
    sub_1002CDBD0(v22, isUniquelyReferenced_nonNull_native);
    v17 = sub_10031AF8C(a5);
    if ((v6 & 1) == (v23 & 1))
    {
      goto LABEL_6;
    }

    v17 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v28 = v17;
    sub_1002D0C30();
    v17 = v28;
    v24 = v33;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v29 = v17;
    (*(v12 + 16))(v14, a5, v11);
    sub_1002CFDC0(v29, v14, a1, a2, v31, v32, v24);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v24 = v33;
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v25 = (v24[7] + 32 * v17);
  result = *v25;
  *v25 = a1;
  v25[1] = a2;
  v27 = v32;
  v25[2] = v31;
  v25[3] = v27;
LABEL_11:
  *v7 = v24;
  return result;
}

void sub_1001674A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Claim code hash missing on idMS.... Checking if keys state on OT...", v14, 2u);
    a1 = v21;
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a3;
  v18[1] = a4;
  aBlock[4] = sub_100168468;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020E828;
  aBlock[3] = &unk_1003AB720;
  v19 = _Block_copy(aBlock);

  [a2 checkInheritanceKeyForBeneficiaryID:isa completion:v19];
  _Block_release(v19);
}

void sub_100167764(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SHA256Digest();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v97 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SHA256();
  v98 = *(v14 - 8);
  v99 = v14;
  v15 = __chkstk_darwin(v14);
  v96 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v103 = &v89 - v17;
  v18 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  sub_100168334(a1, v20);
  v102 = a4;
  swift_unknownObjectRetain();
  v22 = sub_1001E36E8(v20);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_100008D04(v23, qword_1003FAAB8);
  v25 = v22;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v95 = a2;
    v29 = a1;
    v30 = a3;
    v31 = a5;
    v32 = v28;
    v33 = v24;
    v34 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v25;
    *v34 = v25;
    v35 = v25;
    _os_log_impl(&_mh_execute_header, v26, v27, "BeneficiaryInfo: %@", v32, 0xCu);
    sub_100008D3C(v34, &unk_1003D9140, &qword_10033E640);
    v24 = v33;

    a5 = v31;
    a3 = v30;
    a1 = v29;
    a2 = v95;
  }

  if (*(a2 + 16))
  {
    v36 = sub_10031AF8C(a1);
    if (v37)
    {
      v38 = *(a2 + 56) + 32 * v36;
      v40 = *(v38 + 16);
      v39 = *(v38 + 24);

      v41 = [v25 accessKey];
      if (v41 && (v42 = v41, v43 = [v41 claimTokenString], v42, v43))
      {
        v93 = v40;
        v94 = a5;
        v95 = v39;
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v24;
        v46 = v45;

        v47 = sub_100170228(v44, v46);
        v49 = v48;
        SHA256.init()();
        sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
        v50 = v96;
        v51 = v99;
        dispatch thunk of HashFunction.init()();
        sub_100015D6C(v47, v49);
        v91 = v47;
        v90 = v49;
        sub_10018F16C(v47, v49, v50);
        sub_100012324(v47, v49);
        v52 = v97;
        dispatch thunk of HashFunction.finalize()();
        v98 = *(v98 + 8);
        (v98)(v50, v51);
        v53 = v101;
        v107 = v101;
        v108 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
        v54 = sub_10000DBEC(v106);
        v55 = v100;
        (*(v100 + 16))(v54, v52, v53);
        sub_1000080F8(v106, v107);
        dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
        (*(v55 + 8))(v52, v53);
        v56 = v104;
        v57 = v105;
        sub_10000839C(v106);
        sub_100012324(v91, v90);
        (v98)(v103, v51);
        v106[0] = sub_100166018(v56, v57);
        sub_100005814(&qword_1003DA1E0, &qword_100345E50);
        sub_10005A668();
        v58 = BidirectionalCollection<>.joined(separator:)();
        v60 = v59;
        sub_100012324(v56, v57);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v106[0] = v64;
          *v63 = 136315138;
          *(v63 + 4) = sub_10021145C(v58, v60, v106);
          _os_log_impl(&_mh_execute_header, v61, v62, "localClaimCodeHash: %s", v63, 0xCu);
          sub_10000839C(v64);
        }

        v65 = v95;

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v106[0] = v69;
          *v68 = 136315138;
          v70 = v93;
          *(v68 + 4) = sub_10021145C(v93, v95, v106);
          _os_log_impl(&_mh_execute_header, v66, v67, "idMS ClaimCode Hash: %s", v68, 0xCu);
          sub_10000839C(v69);

          v65 = v95;
        }

        else
        {

          v70 = v93;
        }

        v106[0] = v58;
        v106[1] = v60;
        v104 = v70;
        v105 = v65;
        sub_1000709A0();
        v82 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.debug.getter();
        v85 = os_log_type_enabled(v83, v84);
        if (!v82)
        {
          if (v85)
          {
            v88 = swift_slowAlloc();
            *v88 = 0;
            _os_log_impl(&_mh_execute_header, v83, v84, "🌈 Claim code matches!", v88, 2u);
          }

          sub_1001AE97C(1, 0, v102);

          goto LABEL_25;
        }

        if (v85)
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "🌧️ Claim code does not match.", v86, 2u);
        }

        type metadata accessor for InheritanceError(0);
        v104 = 2100;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
        _BridgedStoredNSError.init(_:userInfo:)();
        v87 = v106[0];
        v79 = _convertErrorToNSError(_:)();

        v80 = v79;
        v81 = v102;
      }

      else
      {

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&_mh_execute_header, v75, v76, "Claim code hash was not found in local CK record.", v77, 2u);
        }

        type metadata accessor for InheritanceError(0);
        v104 = 2102;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
        _BridgedStoredNSError.init(_:userInfo:)();
        v78 = v106[0];
        v79 = _convertErrorToNSError(_:)();

        v80 = v79;
        v81 = v102;
      }

      sub_1001AE97C(0, v80, v81);

LABEL_25:
      return;
    }
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "Claim code hash was not found in idMS response.", v73, 2u);
  }

  v74 = swift_allocObject();
  *(v74 + 16) = sub_100168328;
  *(v74 + 24) = v21;

  sub_1001674A8(a1, a3, sub_100168398, v74);
}

uint64_t sub_1001682F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100168334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeneficiaryInfoRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001683C8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 16);
}

void sub_100168468(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_1001663CC(a1, v1 + v4, v6, v7);
}

uint64_t sub_100168508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100168520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100168568(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001686DC(uint64_t a1, void *a2, void (*a3)(uint64_t, char *, uint64_t, uint64_t, void *), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t, char *, uint64_t, uint64_t, void *))
{
  v214 = a6;
  v210 = a5;
  v205 = a3;
  v207 = a2;
  v215 = a1;
  v213 = a14;
  v212 = a13;
  v202 = type metadata accessor for SHA256Digest();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v198 = &v193 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = type metadata accessor for SHA256();
  v199 = *(v200 - 8);
  v22 = __chkstk_darwin(v200);
  v197 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v203 = &v193 - v24;
  v25 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v193 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v28[2] = a7;
  v28[3] = a8;
  v204 = a9;
  v28[4] = a9;
  v28[5] = a10;
  v28[6] = a11;
  v29 = swift_allocObject();
  v30 = a4;
  v29[2] = a4;
  v31 = v210;
  v32 = v214;
  v29[3] = v210;
  v29[4] = v32;
  v29[5] = v213;
  v29[6] = v28;
  v209 = v29;
  v206 = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  sub_100168334(v215, v27);
  v212 = a7;
  swift_retain_n();
  v33 = a8;
  v211 = a10;
  swift_retain_n();
  v34 = a11;
  v35 = v33;
  v36 = v34;
  v37 = v35;
  v38 = v36;
  v39 = v30;
  swift_errorRetain();
  v208 = v31;

  v210 = v28;

  v40 = sub_1001E36E8(v27);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v206 = type metadata accessor for Logger();
  sub_100008D04(v206, qword_1003FAAB8);
  v41 = v40;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 138412290;
    *(v44 + 4) = v41;
    *v45 = v41;
    v46 = v41;
    _os_log_impl(&_mh_execute_header, v42, v43, "BeneficiaryInfo: %@", v44, 0xCu);
    sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);
  }

  v213 = v37;

  v47 = v207;
  if (v207[2] && (v48 = sub_10031AF8C(v215), (v49 & 1) != 0))
  {
    v50 = v47[7] + 32 * v48;
    v52 = *(v50 + 16);
    v51 = *(v50 + 24);

    v53 = [v41 accessKey];
    v215 = v39;
    v196 = v38;
    v195 = v41;
    v205 = a18;
    if (!v53 || (v54 = v53, v55 = [v53 claimTokenString], v54, !v55))
    {
      v93 = v39;

      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&_mh_execute_header, v94, v95, "Claim code hash was not found in local CK record.", v96, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v220 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v97 = v229;
      v98 = _convertErrorToNSError(_:)();

      v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v100;
      v221 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v220 = v98;
      sub_100070AF0(&v220, &v228);
      v102 = v98;
      v103 = v212;

      v203 = v213;
      v104 = v211;

      v207 = v196;
      v105 = v102;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v227 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v228, v99, v101, isUniquelyReferenced_nonNull_native);

      if (v93)
      {
        swift_getErrorValue();
        v107 = v225;
        v108 = v226;
        swift_errorRetain();
        sub_100256810(v107, v108);
        swift_getErrorValue();
        v109 = sub_100256874(v223, v224);
        v110 = objc_allocWithZone(NSError);
        v111 = String._bridgeToObjectiveC()();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v113 = [v110 initWithDomain:v111 code:v109 userInfo:isa];

        v114 = _convertErrorToNSError(_:)();
        v115 = v208;
        [v208 populateUnderlyingErrorsStartingWithRootError:v114];
      }

      else
      {

        v116 = v105;
        v117 = _convertErrorToNSError(_:)();

        v115 = v208;
        [v208 populateUnderlyingErrorsStartingWithRootError:v117];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v206, qword_1003FAB30);
      v118 = v115;
      v119 = v214;

      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *&v220 = swift_slowAlloc();
        *v122 = 136315394;
        *(v122 + 4) = sub_10021145C(*(v119 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v119 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v220);
        *(v122 + 12) = 2080;
        v123 = [v118 debugDescription];
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        v127 = v124;
        v104 = v211;
        v128 = sub_10021145C(v127, v126, &v220);

        *(v122 + 14) = v128;
        v103 = v212;
        _os_log_impl(&_mh_execute_header, v120, v121, "%s - Reporting Preflight Event %s", v122, 0x16u);
        swift_arrayDestroy();
      }

      v92 = v213;
      v129 = v205;
      [*(v119 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v118];
      v130 = v203;
      v131 = v207;
      v129(v103, v203, v204, v104, v207);

      goto LABEL_43;
    }

    v194 = v52;
    v207 = v51;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_100170228(v56, v58);
    v61 = v60;
    SHA256.init()();
    sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v62 = v197;
    v63 = v200;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v59, v61);
    v193 = v59;
    sub_10018F16C(v59, v61, v62);
    sub_100012324(v59, v61);
    v64 = v198;
    dispatch thunk of HashFunction.finalize()();
    v199 = *(v199 + 8);
    (v199)(v62, v63);
    v65 = v202;
    v221 = v202;
    v222 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v66 = sub_10000DBEC(&v220);
    v67 = v201;
    (*(v201 + 16))(v66, v64, v65);
    sub_1000080F8(&v220, v221);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v67 + 8))(v64, v65);
    v68 = v228;
    sub_10000839C(&v220);
    sub_100012324(v193, v61);
    (v199)(v203, v63);
    *&v220 = sub_100166018(v68, *(&v68 + 1));
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v69 = BidirectionalCollection<>.joined(separator:)();
    v71 = v70;
    sub_100012324(v68, *(&v68 + 1));

    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v220 = v75;
      *v74 = 136315138;
      *(v74 + 4) = sub_10021145C(v69, v71, &v220);
      _os_log_impl(&_mh_execute_header, v72, v73, "localClaimCodeHash: %s", v74, 0xCu);
      sub_10000839C(v75);
    }

    v76 = v207;

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.debug.getter();

    v79 = os_log_type_enabled(v77, v78);
    v80 = v211;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v220 = v82;
      *v81 = 136315138;
      v83 = v194;
      *(v81 + 4) = sub_10021145C(v194, v76, &v220);
      _os_log_impl(&_mh_execute_header, v77, v78, "idMS ClaimCode Hash: %s", v81, 0xCu);
      sub_10000839C(v82);

      v84 = v215;
      v85 = v196;
    }

    else
    {

      v84 = v215;
      v85 = v196;
      v83 = v194;
    }

    *&v220 = v69;
    *(&v220 + 1) = v71;
    *&v228 = v83;
    *(&v228 + 1) = v76;
    sub_1000709A0();
    v132 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.debug.getter();
    v135 = os_log_type_enabled(v133, v134);
    if (v132)
    {
      v136 = v212;
      v137 = v84;
      if (v135)
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&_mh_execute_header, v133, v134, "🌧️ Claim code does not match.", v138, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v220 = 2100;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v139 = v229;
      v140 = _convertErrorToNSError(_:)();

      v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v143 = v142;
      v221 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v220 = v140;
      sub_100070AF0(&v220, &v228);
      v144 = v140;

      v207 = v213;

      v203 = v196;
      v145 = v144;
      v146 = swift_isUniquelyReferenced_nonNull_native();
      v227 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v228, v141, v143, v146);

      if (v137)
      {
        swift_getErrorValue();
        v147 = v218;
        v148 = v219;
        swift_errorRetain();
        sub_100256810(v147, v148);
        swift_getErrorValue();
        v149 = sub_100256874(v216, v217);
        v150 = objc_allocWithZone(NSError);
        v151 = String._bridgeToObjectiveC()();

        v152 = Dictionary._bridgeToObjectiveC()().super.isa;

        v153 = [v150 initWithDomain:v151 code:v149 userInfo:v152];

        v154 = _convertErrorToNSError(_:)();
        v155 = v208;
        [v208 populateUnderlyingErrorsStartingWithRootError:v154];
      }

      else
      {

        v161 = v145;
        v162 = _convertErrorToNSError(_:)();

        v155 = v208;
        [v208 populateUnderlyingErrorsStartingWithRootError:v162];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v206, qword_1003FAB30);
      v118 = v155;
      v163 = v214;

      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        *&v220 = swift_slowAlloc();
        *v166 = 136315394;
        *(v166 + 4) = sub_10021145C(*(v163 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v163 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v220);
        *(v166 + 12) = 2080;
        v167 = [v118 debugDescription];
        v168 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v170 = v169;

        v171 = v168;
        v80 = v211;
        v172 = sub_10021145C(v171, v170, &v220);

        *(v166 + 14) = v172;
        v136 = v212;
        _os_log_impl(&_mh_execute_header, v164, v165, "%s - Reporting Preflight Event %s", v166, 0x16u);
        swift_arrayDestroy();
      }

      v92 = v213;
      v173 = v205;
      [*(v163 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v118];
      v174 = v207;
      v175 = v203;
      v173(v136, v207, v204, v80, v203);

LABEL_43:

      v38 = v196;
      goto LABEL_44;
    }

    v156 = v212;
    if (v135)
    {
      v157 = swift_slowAlloc();
      *v157 = 0;
      _os_log_impl(&_mh_execute_header, v133, v134, "🌈 Claim code matches!", v157, 2u);
    }

    v158 = v213;

    v159 = v85;
    if (v84)
    {
      v160 = _convertErrorToNSError(_:)();
    }

    else
    {
      v160 = 0;
    }

    v177 = v208;
    v178 = v205;
    [v208 populateUnderlyingErrorsStartingWithRootError:v160];

    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    sub_100008D04(v206, qword_1003FAB30);
    v179 = v177;
    v180 = v214;

    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v208 = v158;
      v184 = v183;
      v207 = swift_slowAlloc();
      *&v220 = v207;
      *v184 = 136315394;
      *(v184 + 4) = sub_10021145C(*(v180 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v180 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v220);
      *(v184 + 12) = 2080;
      v185 = v178;
      v186 = v159;
      v187 = [v179 debugDescription];
      v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v190 = v189;

      v191 = v188;
      v156 = v212;
      v192 = sub_10021145C(v191, v190, &v220);
      v80 = v211;

      *(v184 + 14) = v192;
      v159 = v186;
      v178 = v185;
      _os_log_impl(&_mh_execute_header, v181, v182, "%s - Reporting Preflight Event %s", v184, 0x16u);
      swift_arrayDestroy();

      v158 = v208;
    }

    v38 = v196;
    [*(v180 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v179];
    v178(v156, v158, v204, v80, v159);
  }

  else
  {
    v86 = v41;
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "Claim code hash was not found in idMS response.", v89, 2u);
    }

    v90 = swift_allocObject();
    v91 = v209;
    *(v90 + 16) = a16;
    *(v90 + 24) = v91;

    sub_1001674A8(v215, v205, a17, v90);
  }

  v92 = v213;
LABEL_44:
}

uint64_t sub_10016A0E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t (*a9)(void), uint64_t a10, uint64_t a11)
{
  v188 = a6;
  v178 = a3;
  v180 = a2;
  *&v176 = type metadata accessor for SHA256Digest();
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v172 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for SHA256();
  v173 = *(v174 - 8);
  v17 = __chkstk_darwin(v174);
  v171 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  *(&v176 + 1) = &v167 - v19;
  v20 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v167 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v23[2] = a7;
  v23[3] = a8;
  v177 = a9;
  v23[4] = a9;
  v23[5] = a10;
  v23[6] = a11;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v25 = a4;
  v26 = v188;
  v24[4] = v188;
  v24[5] = sub_10016D3F0;
  v182 = v24;
  v24[6] = v23;
  v179 = sub_100016034(0, &qword_1003E0C40, AABeneficiaryInfo_ptr);
  v186 = a1;
  sub_100168334(a1, v22);

  v27 = a8;

  swift_errorRetain();

  v28 = v27;

  swift_errorRetain();
  v183 = a7;

  v187 = v28;
  v185 = a10;

  v184 = a11;
  v29 = v25;
  swift_errorRetain();
  swift_errorRetain();
  v181 = a5;

  v30 = sub_1001E36E8(v22);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100008D04(v31, qword_1003FAAB8);
  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    *(v35 + 4) = v32;
    *v36 = v32;
    v37 = v32;
    _os_log_impl(&_mh_execute_header, v33, v34, "BeneficiaryInfo: %@", v35, 0xCu);
    sub_100008D3C(v36, &unk_1003D9140, &qword_10033E640);
  }

  v38 = v180;
  v39 = v185;
  if (v180[2] && (v40 = sub_10031AF8C(v186), (v41 & 1) != 0))
  {
    v42 = v38[7] + 32 * v40;
    v43 = *(v42 + 24);
    v178 = *(v42 + 16);

    v180 = v32;
    v44 = [v32 accessKey];
    v186 = v29;
    v170 = v23;
    v179 = v31;
    if (!v44 || (v45 = v44, v46 = [v44 claimTokenString], v45, !v46))
    {

      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&_mh_execute_header, v84, v85, "Claim code hash was not found in local CK record.", v86, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v193 = 2102;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v87 = v202;
      v88 = _convertErrorToNSError(_:)();

      v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = v90;
      v194 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v193 = v88;
      sub_100070AF0(&v193, &v201);
      v92 = v88;
      v93 = v183;

      v94 = v187;

      v73 = v184;
      swift_errorRetain();
      v95 = v92;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v201, v89, v91, isUniquelyReferenced_nonNull_native);

      if (v186)
      {
        swift_getErrorValue();
        v97 = v198;
        v98 = v199;
        swift_errorRetain();
        sub_100256810(v97, v98);
        swift_getErrorValue();
        v99 = sub_100256874(v196, v197);
        v100 = objc_allocWithZone(NSError);
        v101 = String._bridgeToObjectiveC()();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v103 = [v100 initWithDomain:v101 code:v99 userInfo:isa];

        v26 = v188;
        v104 = _convertErrorToNSError(_:)();

        v105 = v181;
        [v181 populateUnderlyingErrorsStartingWithRootError:v104];
      }

      else
      {

        v106 = v95;
        v107 = _convertErrorToNSError(_:)();

        v105 = v181;
        [v181 populateUnderlyingErrorsStartingWithRootError:v107];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v179, qword_1003FAB30);
      v108 = v105;

      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *&v193 = swift_slowAlloc();
        *v111 = 136315394;
        *(v111 + 4) = sub_10021145C(*(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v193);
        *(v111 + 12) = 2080;
        v112 = [v108 debugDescription];
        v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = v114;

        v116 = v113;
        v73 = v184;
        v117 = sub_10021145C(v116, v115, &v193);
        v93 = v183;

        *(v111 + 14) = v117;
        v39 = v185;
        _os_log_impl(&_mh_execute_header, v109, v110, "%s - Reporting Preflight Event %s", v111, 0x16u);
        swift_arrayDestroy();

        v26 = v188;
      }

      [*(v26 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v108];
      v118 = v93;
      goto LABEL_42;
    }

    v169 = v43;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    v50 = sub_100170228(v47, v49);
    v52 = v51;
    SHA256.init()();
    sub_100168520(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v53 = v171;
    v54 = v174;
    dispatch thunk of HashFunction.init()();
    sub_100015D6C(v50, v52);
    v168 = v50;
    v167 = v52;
    sub_10018F16C(v50, v52, v53);
    sub_100012324(v50, v52);
    v55 = v172;
    dispatch thunk of HashFunction.finalize()();
    v173 = *(v173 + 8);
    (v173)(v53, v54);
    v56 = v176;
    v194 = v176;
    v195 = sub_100168520(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    v57 = sub_10000DBEC(&v193);
    v58 = v175;
    (*(v175 + 16))(v57, v55, v56);
    sub_1000080F8(&v193, v194);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    (*(v58 + 8))(v55, v56);
    v59 = v201;
    sub_10000839C(&v193);
    sub_100012324(v168, v167);
    (v173)(*(&v176 + 1), v54);
    *&v193 = sub_100166018(v59, *(&v59 + 1));
    sub_100005814(&qword_1003DA1E0, &qword_100345E50);
    sub_10005A668();
    v60 = BidirectionalCollection<>.joined(separator:)();
    v62 = v61;
    sub_100012324(v59, *(&v59 + 1));

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();

    v65 = os_log_type_enabled(v63, v64);
    *(&v176 + 1) = v62;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v193 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_10021145C(v60, v62, &v193);
      _os_log_impl(&_mh_execute_header, v63, v64, "localClaimCodeHash: %s", v66, 0xCu);
      sub_10000839C(v67);
    }

    *&v176 = v60;
    v68 = v169;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.debug.getter();

    v71 = os_log_type_enabled(v69, v70);
    v72 = v183;
    v73 = v184;
    if (v71)
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v193 = v75;
      *v74 = 136315138;
      v76 = v178;
      *(v74 + 4) = sub_10021145C(v178, v68, &v193);
      _os_log_impl(&_mh_execute_header, v69, v70, "idMS ClaimCode Hash: %s", v74, 0xCu);
      sub_10000839C(v75);

      v39 = v185;
      v77 = v188;
      v78 = v186;
    }

    else
    {

      v39 = v185;
      v77 = v188;
      v78 = v186;
      v76 = v178;
    }

    v193 = v176;
    *&v201 = v76;
    *(&v201 + 1) = v68;
    sub_1000709A0();
    v119 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.debug.getter();
    v122 = os_log_type_enabled(v120, v121);
    if (v119)
    {
      if (v122)
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&_mh_execute_header, v120, v121, "🌧️ Claim code does not match.", v123, 2u);
      }

      type metadata accessor for InheritanceError(0);
      *&v193 = 2100;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100168520(&qword_1003D8040, type metadata accessor for InheritanceError, &unk_10033C05C);
      _BridgedStoredNSError.init(_:userInfo:)();
      v124 = v202;
      v125 = _convertErrorToNSError(_:)();

      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;
      v194 = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
      *&v193 = v125;
      sub_100070AF0(&v193, &v201);
      v129 = v125;

      v178 = v187;

      swift_errorRetain();
      v95 = v129;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v200 = &_swiftEmptyDictionarySingleton;
      sub_1002CF8B4(&v201, v126, v128, v130);

      if (v186)
      {
        swift_getErrorValue();
        v131 = v191;
        v132 = v192;
        swift_errorRetain();
        sub_100256810(v131, v132);
        swift_getErrorValue();
        v133 = sub_100256874(v189, v190);
        v134 = objc_allocWithZone(NSError);
        v135 = String._bridgeToObjectiveC()();

        v136 = Dictionary._bridgeToObjectiveC()().super.isa;

        v137 = [v134 initWithDomain:v135 code:v133 userInfo:v136];

        v77 = v188;
        v138 = _convertErrorToNSError(_:)();

        v139 = v181;
        [v181 populateUnderlyingErrorsStartingWithRootError:v138];
      }

      else
      {

        v144 = v95;
        v145 = _convertErrorToNSError(_:)();

        v139 = v181;
        [v181 populateUnderlyingErrorsStartingWithRootError:v145];
      }

      if (qword_1003D7F70 != -1)
      {
        swift_once();
      }

      sub_100008D04(v179, qword_1003FAB30);
      v108 = v139;

      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        *&v193 = swift_slowAlloc();
        *v148 = 136315394;
        *(v148 + 4) = sub_10021145C(*(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v193);
        *(v148 + 12) = 2080;
        v149 = [v108 debugDescription];
        v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v152 = v151;

        v153 = v150;
        v73 = v184;
        v154 = sub_10021145C(v153, v152, &v193);
        v72 = v183;

        *(v148 + 14) = v154;
        v39 = v185;
        _os_log_impl(&_mh_execute_header, v146, v147, "%s - Reporting Preflight Event %s", v148, 0x16u);
        swift_arrayDestroy();

        v77 = v188;
      }

      [*(v77 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v108];
      v118 = v72;
      v94 = v178;
LABEL_42:
      sub_1001B8338(v118, v94, v177, v39, v73);

      goto LABEL_43;
    }

    v140 = v181;
    if (v122)
    {
      v141 = swift_slowAlloc();
      *v141 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "🌈 Claim code matches!", v141, 2u);
    }

    v142 = v187;

    swift_errorRetain();
    if (v78)
    {
      v143 = _convertErrorToNSError(_:)();
    }

    else
    {
      v143 = 0;
    }

    [v140 populateUnderlyingErrorsStartingWithRootError:v143];

    if (qword_1003D7F70 != -1)
    {
      swift_once();
    }

    sub_100008D04(v179, qword_1003FAB30);
    v157 = v140;

    v158 = Logger.logObject.getter();
    v159 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *&v193 = swift_slowAlloc();
      *v160 = 136315394;
      *(v160 + 4) = sub_10021145C(*(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName), *(v188 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_checkName + 8), &v193);
      *(v160 + 12) = 2080;
      v161 = [v157 debugDescription];
      v162 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v164 = v163;

      v165 = v162;
      v39 = v185;
      v166 = sub_10021145C(v165, v164, &v193);
      v73 = v184;

      *(v160 + 14) = v166;
      _os_log_impl(&_mh_execute_header, v158, v159, "%s - Reporting Preflight Event %s", v160, 0x16u);
      swift_arrayDestroy();
      v77 = v188;
    }

    [*(v77 + OBJC_IVAR____TtC13appleaccountd31InheritancePreflightHealthCheck_analyticsReporter) sendEvent:v157];
    sub_1001B8338(v72, v142, v177, v39, v73);
  }

  else
  {
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Claim code hash was not found in idMS response.", v81, 2u);
    }

    v82 = swift_allocObject();
    v83 = v182;
    *(v82 + 16) = sub_10016D57C;
    *(v82 + 24) = v83;

    sub_1001674A8(v186, v178, sub_10016D578, v82);
  }

LABEL_43:

  v155 = v187;
}