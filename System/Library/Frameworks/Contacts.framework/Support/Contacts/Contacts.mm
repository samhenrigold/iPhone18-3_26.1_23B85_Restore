void sub_100001848(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

id sub_100001874()
{
  v0 = objc_opt_self();

  return [v0 enterSandbox];
}

id *iOSDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC11postersyncd6Daemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t iOSDaemon.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11postersyncd6Daemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for iOSDaemon(uint64_t a1)
{
  result = qword_100020C58;
  if (!qword_100020C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for macOSDaemon(uint64_t a1)
{
  result = qword_100020DA0;
  if (!qword_100020DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001AF0()
{
  sub_100002324();
  sub_100001D50();
  sub_100002020();
  sub_10000214C();
  v0 = [objc_opt_self() mainRunLoop];
  [v0 run];

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Unexpectedly exited runloop, shutting down...", v2, 2u);
  }
}

uint64_t sub_100001BE0()
{
  v0 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = static ContactPosterContainer.makeContainer(disableCloudKit:inMemory:customStorePath:)();
  sub_1000025F8(v2);
  return v4;
}

id sub_100001D50()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  result = [v6 defaultStoreLocation];
  if (result)
  {
    v8 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    [v6 moveAsideIfUntaggedDevelopmentDB:v10];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Creating singleton NSPersistentCloudKitContainer", v14, 2u);
    }

    v15 = sub_100001BE0();
    if (v15)
    {
      v16 = v15;
      [v6 tagDatabaseAsSafeForProductionInContainer:v15];
      v17 = *(v1 + 32);
      *(v1 + 32) = v16;
      v18 = v16;

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Took strong reference to singleton NSPersistentCloudKitContainer", v21, 2u);
      }

      else
      {

        v19 = v18;
      }
    }

    else
    {
      v19 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v19, v22, "Couldn't tag database as production ready", v23, 2u);
      }
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_100002020()
{
  v1 = objc_allocWithZone(type metadata accessor for PostersNotificationHandlerService(0));
  v2 = PostersNotificationHandlerService.init(container:store:scheduler:)(0, 0, 0);
  v3 = *(v0 + 16);
  *(v0 + 16) = v2;

  v4 = *(v0 + 16);
  oslog = Logger.logObject.getter();
  if (v4)
  {
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Poster Cleanup service started";
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_7;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Notification handler service couldn't be created";
  }

  _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_7:
}

void sub_10000214C()
{
  v1 = APIService.init()();
  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
  v12 = v1;

  if (!v1)
  {
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v12, v8, "Poster API service couldn't be created", v9, 2u);
    }

    goto LABEL_11;
  }

  APIService.start()();
  v3 = Logger.logObject.getter();
  if (!v4)
  {
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v10, "Poster API service started", v11, 2u);
    }

LABEL_11:
    v7 = v12;
    goto LABEL_12;
  }

  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, v5, "Poster API service couldn't be started", v6, 2u);
  }

  v7 = v3;
LABEL_12:
}

void sub_100002324()
{
  v1 = v0;
  if (qword_100020C28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002660(v2, qword_100021678);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Entering the sandbox", v5, 2u);
  }

  (*(*v1 + 224))();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Entered the sandbox", v7, 2u);
  }
}

uint64_t type metadata accessor for Daemon(uint64_t a1)
{
  result = qword_100020EF0;
  if (!qword_100020EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002510(uint64_t a1)
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

uint64_t sub_1000025B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000025F8(uint64_t a1)
{
  v2 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002660(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002698()
{
  sub_1000027EC();
  result = OS_os_log.init(subsystem:category:)();
  qword_100021670 = result;
  return result;
}

id sub_100002790(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DaemonLogging();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1000027EC()
{
  result = qword_100021038;
  if (!qword_100021038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100021038);
  }

  return result;
}

uint64_t sub_100002838()
{
  v0 = type metadata accessor for Logger();
  sub_1000028C4(v0, qword_100021678);
  sub_100002660(v0, qword_100021678);
  if (qword_100020C20 != -1)
  {
    swift_once();
  }

  v1 = qword_100021670;
  return Logger.init(_:)();
}

uint64_t *sub_1000028C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100002968()
{
  if (qword_100020C28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002660(v0, qword_100021678);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Daemon starting up", v3, 2u);
  }

  type metadata accessor for iOSDaemon(0);
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  v4[2] = 0;
  Logger.init(subsystem:category:)();
  sub_100001AF0();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Daemon shutting down", v7, 2u);
  }
}

uint64_t sub_100002B2C()
{
  v0 = type metadata accessor for Logger();
  sub_1000028C4(v0, qword_100021690);
  sub_100002660(v0, qword_100021690);
  return Logger.init(subsystem:category:)();
}

id APIService.init()()
{
  v0 = objc_allocWithZone(CNContactPosterDataService);

  return [v0 init];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> APIService.start()()
{
  v1 = v0;
  if (qword_100021040 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002660(v2, qword_100021690);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting API service", v5, 2u);
  }

  [v1 beginListening];
}

uint64_t variable initialization expression of PostersNotificationHandlerService.cleanupRequested()
{
  sub_1000025B0(&qword_100021310, &qword_1000188B0);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void *sub_100002D54@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void type metadata accessor for NSCloudKitMirroringDelegateResetSyncReason()
{
  if (!qword_100021110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100021110);
    }
  }
}

id PostersNotificationHandlerService.init(container:store:scheduler:)(id a1, void *a2, void *a3)
{
  v4 = v3;
  v72 = a3;
  v7 = type metadata accessor for Logger();
  __chkstk_darwin(v7);
  v8 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  __chkstk_darwin(v8 - 8);
  v10 = v69 - v9;
  v11 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested;
  sub_1000025B0(&qword_100021310, &qword_1000188B0);
  v12 = swift_allocObject();
  *&v4[v11] = v12;
  *(v12 + 16) = 0;
  Logger.init(subsystem:category:)();
  v71 = a1;
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v13 = static ContactPosterContainer.makeContainer(disableCloudKit:inMemory:customStorePath:)();
    sub_100008CF0(v10, &qword_100021300, &unk_1000189C0);
    a1 = v71;
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container] = v13;
  v14 = v72;
  if (a2)
  {
    v15 = a1;
    v16 = a2;
  }

  else
  {
    v18 = objc_allocWithZone(CNContactStore);
    v19 = v71;
    v16 = [v18 init];
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_contactStore] = v16;
  v70 = a2;
  if (v14)
  {
    v20 = a2;
    v21 = v14;
  }

  else
  {
    v22 = objc_opt_self();
    v23 = a2;
    v24 = String._bridgeToObjectiveC()();
    v21 = [v22 serialDispatchQueueSchedulerWithName:v24];
  }

  *&v4[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler] = v21;
  v25 = type metadata accessor for PostersNotificationHandlerService(0);
  v79.receiver = v4;
  v79.super_class = v25;
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2(&v79, "init");
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 defaultCenter];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_100007790;
  v78 = v30;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100003D0C;
  v76 = &unk_10001CC68;
  v31 = _Block_copy(&aBlock);

  v32 = [v29 addObserverForName:NSPersistentCloudKitContainerEventChangedNotification object:0 queue:0 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  v33 = [v27 defaultCenter];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1000077B0;
  v78 = v34;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100003D0C;
  v76 = &unk_10001CC90;
  v35 = _Block_copy(&aBlock);

  v36 = [v33 addObserverForName:CNContactStoreDidChangeNotification object:0 queue:0 usingBlock:v35];
  _Block_release(v35);
  swift_unknownObjectRelease();

  v37 = [v27 defaultCenter];
  v38 = NSCloudKitMirroringDelegateWillResetSyncNotificationName;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1000077B8;
  v78 = v39;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v75 = sub_100003D0C;
  v76 = &unk_10001CCB8;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  v42 = [v37 addObserverForName:v41 object:0 queue:0 usingBlock:v40];
  _Block_release(v40);
  swift_unknownObjectRelease();

  v43 = [v27 defaultCenter];
  v44 = NSCloudKitMirroringDelegateDidResetSyncNotificationName;
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1000077E8;
  v78 = v45;
  aBlock = _NSConcreteStackBlock;
  v74 = 1107296256;
  v69[1] = &v75;
  v75 = sub_100003D0C;
  v76 = &unk_10001CCE0;
  v46 = _Block_copy(&aBlock);
  v47 = v44;

  v48 = [v43 addObserverForName:v47 object:0 queue:0 usingBlock:v46];
  _Block_release(v46);
  swift_unknownObjectRelease();

  v49 = [objc_opt_self() currentEnvironment];
  LODWORD(v43) = [v49 isInternalBuild];

  if (v43)
  {
    v50 = [v27 defaultCenter];
    sub_100008CA8(0, &qword_100021338, NSDistributedNotificationCenter_ptr);
    v51 = [swift_getObjCClassFromMetadata() defaultCenter];
    v52 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:1];
    sub_1000025B0(&qword_100021340, &qword_1000189D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000189B0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v54;
    *(inited + 48) = v52;
    v69[0] = v52;
    v55 = sub_100008308(inited);
    swift_setDeallocating();
    sub_100008CF0(inited + 32, &qword_100021348, &qword_1000189D8);
    v56 = String._bridgeToObjectiveC()();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v55;
    v58[4] = v50;
    v77 = sub_100008410;
    v78 = v58;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100003D0C;
    v76 = &unk_10001CD30;
    v59 = _Block_copy(&aBlock);

    v60 = v50;

    v61 = [v51 addObserverForName:v56 object:0 queue:0 usingBlock:v59];
    _Block_release(v59);
    swift_unknownObjectRelease();

    v62 = String._bridgeToObjectiveC()();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = v55;
    v64[4] = v60;
    v77 = sub_100008490;
    v78 = v64;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100003D0C;
    v76 = &unk_10001CD80;
    v65 = _Block_copy(&aBlock);
    v66 = v60;

    v67 = [v51 addObserverForName:v62 object:0 queue:0 usingBlock:v65];
    swift_unknownObjectRelease();

    _Block_release(v65);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v28;
}

uint64_t type metadata accessor for PostersNotificationHandlerService(uint64_t a1)
{
  result = qword_100021378;
  if (!qword_100021378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003A40(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000025B0(&qword_1000213F0, qword_100018A78);
  __chkstk_darwin(v2 - 8);
  v4 = v20 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Notification.userInfo.getter();
    if (v7)
    {
      v8 = v7;
      v20[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20[2] = v9;
      AnyHashable.init<A>(_:)();
      if (*(v8 + 16) && (v10 = sub_10000E160(v21), (v11 & 1) != 0))
      {
        sub_1000089DC(*(v8 + 56) + 32 * v10, &v22);
        sub_100008A90(v21);

        if (*(&v23 + 1))
        {
          sub_100008CA8(0, &qword_1000213F8, NSPersistentCloudKitContainerEvent_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v12 = v21[0];
          if ([v21[0] type] != 1 || !objc_msgSend(v12, "succeeded"))
          {
            goto LABEL_11;
          }

          v13 = [v12 endDate];
          if (v13)
          {
            v14 = v13;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v15 = type metadata accessor for Date();
            (*(*(v15 - 8) + 56))(v4, 0, 1, v15);
            sub_100008CF0(v4, &qword_1000213F0, qword_100018A78);
            sub_100004314();
LABEL_11:

            return;
          }

          v19 = type metadata accessor for Date();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          v16 = &qword_1000213F0;
          v17 = qword_100018A78;
          v18 = v4;
          goto LABEL_16;
        }
      }

      else
      {

        sub_100008A90(v21);
        v22 = 0u;
        v23 = 0u;
      }
    }

    else
    {

      v22 = 0u;
      v23 = 0u;
    }

    v16 = &qword_1000213A8;
    v17 = &qword_100018A40;
    v18 = &v22;
LABEL_16:
    sub_100008CF0(v18, v16, v17);
  }
}

uint64_t sub_100003D0C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_100003E00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100004568();
  }
}

void sub_100003E54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

NSObject *sub_100003EC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const char *a5, void **a6, const char *a7)
{
  v12 = type metadata accessor for Notification();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v30 = a5;
    v31 = a7;
    v18 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29[1] = v18;
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, v30, v21, 2u);
    }

    v22 = *a6;
    v32 = 0u;
    v33 = 0u;
    v23 = v22;
    sub_100008D90(a3);
    Notification.init(name:object:userInfo:)();
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [a4 postNotification:isa];

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, v31, v27, 2u);

      v28 = v23;
    }

    else
    {
      v28 = v17;
      v17 = v25;
      v25 = v23;
    }

    return (*(v13 + 8))(v15, v12);
  }

  return result;
}

id PostersNotificationHandlerService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for PostersNotificationHandlerService(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100004314()
{
  v1 = v0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(**&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested] + 136))(), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  v3 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  v4 = os_log_type_enabled(log, v3);
  if (v2)
  {
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Ignoring poster store change notification overlapping with a queued cleanup request", v10, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Dispatching a poster store change notification for background cleanup handling", v5, 2u);
    }

    v6 = *&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_100008C04;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004524;
    aBlock[3] = &unk_10001CE20;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 performBlock:v8];
    _Block_release(v8);
  }
}

uint64_t sub_100004524(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_100004568()
{
  v1 = v0;
  v2 = 0;
  atomic_compare_exchange_strong_explicit((*(**&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested] + 136))(), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  v3 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  v4 = os_log_type_enabled(log, v3);
  if (v2)
  {
    if (v4)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Ignoring contact store change notification overlapping with a queued cleanup request", v10, 2u);
    }
  }

  else
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v3, "Dispatching a contact store change notification for background cleanup handling", v5, 2u);
    }

    v6 = *&v0[OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_scheduler];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    aBlock[4] = sub_100008BE0;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004524;
    aBlock[3] = &unk_10001CDD0;
    v8 = _Block_copy(aBlock);
    v9 = v1;

    [v6 performBlock:v8];
    _Block_release(v8);
  }
}

void sub_1000047A0(const char *a1, const char *a2)
{
  v4 = static os_log_type_t.debug.getter();
  v5 = Logger.logObject.getter();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, v4, a1, v6, 2u);
  }

  sub_100006370();
  v7 = static os_log_type_t.debug.getter();
  log = Logger.logObject.getter();
  if (os_log_type_enabled(log, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, log, v7, a2, v8, 2u);
  }
}

uint64_t sub_1000048D8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = [objc_opt_self() defaultStoreLocation];
  if (v12)
  {
    v13 = v12;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  sub_100008AE4(v9, v11);
  type metadata accessor for URL();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_100008CF0(v11, &qword_100021300, &unk_1000189C0);
    v16 = 1;
  }

  else
  {
    v18[0] = 0xD000000000000019;
    v18[1] = 0x8000000100019770;
    (*(v3 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v2);
    sub_100008B54();
    URL.appending<A>(component:directoryHint:)();
    (*(v3 + 8))(v5, v2);
    (*(v15 + 8))(v11, v14);
    v16 = 0;
  }

  return (*(v15 + 56))(a1, v16, 1, v14);
}

BOOL sub_100004BE8()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_10000E160(v27), (v3 & 1) == 0))
  {

    sub_100008A90(v27);
LABEL_10:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_11;
  }

  sub_1000089DC(*(v1 + 56) + 32 * v2, &v28);
  sub_100008A90(v27);

  if (!*(&v29 + 1))
  {
LABEL_11:
    sub_100008CF0(&v28, &qword_1000213A8, &qword_100018A40);
    goto LABEL_12;
  }

  sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v4 = v27[0];
    v5 = [v27[0] unsignedIntegerValue];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27[0] = v9;
      *v8 = 136315138;
      *&v28 = v5;
      type metadata accessor for NSCloudKitMirroringDelegateResetSyncReason();
      v10 = String.init<A>(describing:)();
      v12 = sub_100007BD8(v10, v11, v27);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "CloudKit reset for reason: %s.", v8, 0xCu);
      sub_100008698(v9);
    }

    return v5 == 1;
  }

LABEL_12:
  v14 = Notification.userInfo.getter();
  if (!v14)
  {
LABEL_19:
    v28 = 0u;
    v29 = 0u;
    goto LABEL_20;
  }

  v15 = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v15 + 16) || (v16 = sub_10000E160(v27), (v17 & 1) == 0))
  {

    sub_100008A90(v27);
    goto LABEL_19;
  }

  sub_1000089DC(*(v15 + 56) + 32 * v16, &v28);
  sub_100008A90(v27);

  if (!*(&v29 + 1))
  {
LABEL_20:
    sub_100008CF0(&v28, &qword_1000213A8, &qword_100018A40);
    goto LABEL_21;
  }

  sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v18 = 0;
    v21 = 0xE700000000000000;
    v19 = 0x6E776F6E6B6E75;
    goto LABEL_22;
  }

  v18 = v27[0];
  sub_1000025B0(&qword_1000213B8, &qword_100018A48);
  v19 = String.init<A>(describing:)();
  v21 = v20;
LABEL_22:

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27[0] = v25;
    *v24 = 136315138;
    v26 = sub_100007BD8(v19, v21, v27);

    *(v24 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "CloudKit reset notification didn't map to a known ResetSyncReason: %s.", v24, 0xCu);
    sub_100008698(v25);
  }

  else
  {
  }

  return 0;
}

void sub_100005040()
{
  v1 = v0;
  v2 = type metadata accessor for BackupRestoreMigrator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v53[-v15];
  __chkstk_darwin(v14);
  v60 = &v53[-v17];
  if (sub_100004BE8())
  {
    sub_1000048D8(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100008CF0(v7, &qword_100021300, &unk_1000189C0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Received CloudKit reset for login, but unexpectedly couldn't construct URL for the poster store. Abandoning ship.", v20, 2u);
      }
    }

    else
    {
      v57 = v2;
      (*(v9 + 32))(v60, v7, v8);
      v24 = objc_opt_self();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 os_transactionInhibitorWithLabel:v25];

      v55 = v26;
      [v26 start];
      v27 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v58 = v9;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Created backup-before-signin transaction", v31, 2u);
        v9 = v58;
      }

      v56 = v3;

      v54 = v27;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "CloudKit mirroring will reset due to account login. Starting backup", v34, 2u);
        v9 = v58;
      }

      v35 = *(v1 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
      v36 = *(v9 + 16);
      v36(v16, v60, v8);
      v37 = v35;
      BackupRestoreMigrator.init(container:tempURL:modelName:recoveryLimit:)();
      v38 = BackupRestoreMigrator.attemptMigration(direction:)();
      v39 = v56;
      if (v38)
      {
        v36(v13, v60, v8);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v61 = v54;
          *v42 = 136315138;
          sub_100008A38();
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          v46 = v58;
          (*(v58 + 8))(v13, v8);
          v47 = sub_100007BD8(v43, v45, &v61);

          *(v42 + 4) = v47;
          v48 = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "Successfully backed up poster data to %s", v42, 0xCu);
          sub_100008698(v54);
        }

        else
        {

          v48 = v58;
          (*(v58 + 8))(v13, v8);
        }

        (*(v39 + 8))(v59, v57);
      }

      else
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Attempted to back up poster data, but there was no readable data to backup, so no temp database was created.", v51, 2u);
        }

        (*(v39 + 8))(v59, v57);
        v48 = v58;
      }

      v52 = v60;
      sub_1000065D8(v55, v1, "Stopped backup-before-signin transaction");
      swift_unknownObjectRelease();
      (*(v48 + 8))(v52, v8);
    }
  }

  else
  {
    v60 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v60, v21, "No migration needed for a non-login CloudKit reset.", v22, 2u);
    }

    v23 = v60;
  }
}

void sub_1000059D8()
{
  v1 = v0;
  v2 = type metadata accessor for BackupRestoreMigrator();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v59 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v53[-v12];
  v14 = __chkstk_darwin(v11);
  v16 = &v53[-v15];
  __chkstk_darwin(v14);
  v60 = &v53[-v17];
  if (sub_100004BE8())
  {
    sub_1000048D8(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_100008CF0(v7, &qword_100021300, &unk_1000189C0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Received CloudKit didReset for login, but unexpectedly couldn't construct URL for the poster store. Giving up with potentially abandoned backup.", v20, 2u);
      }
    }

    else
    {
      v57 = v2;
      (*(v9 + 32))(v60, v7, v8);
      v24 = objc_opt_self();
      v25 = String._bridgeToObjectiveC()();
      v26 = [v24 os_transactionInhibitorWithLabel:v25];

      v55 = v26;
      [v26 start];
      v27 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      v30 = os_log_type_enabled(v28, v29);
      v58 = v9;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Created restore-after-signin transaction", v31, 2u);
        v9 = v58;
      }

      v56 = v3;

      v54 = v27;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "CloudKit mirroring did reset due to account login. Attempting to restore from backup.", v34, 2u);
        v9 = v58;
      }

      v35 = *(v1 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
      v36 = *(v9 + 16);
      v36(v16, v60, v8);
      v37 = v35;
      BackupRestoreMigrator.init(container:tempURL:modelName:recoveryLimit:)();
      v38 = BackupRestoreMigrator.attemptMigration(direction:)();
      v39 = v56;
      if (v38)
      {
        v36(v13, v60, v8);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v61 = v54;
          *v42 = 136315138;
          sub_100008A38();
          v43 = dispatch thunk of CustomStringConvertible.description.getter();
          v45 = v44;
          v46 = v58;
          (*(v58 + 8))(v13, v8);
          v47 = sub_100007BD8(v43, v45, &v61);

          *(v42 + 4) = v47;
          v48 = v46;
          _os_log_impl(&_mh_execute_header, v40, v41, "Successfully restored poster data from %s", v42, 0xCu);
          sub_100008698(v54);
        }

        else
        {

          v48 = v58;
          (*(v58 + 8))(v13, v8);
        }

        (*(v39 + 8))(v59, v57);
      }

      else
      {
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "Attempted to restore backed up poster data, but there was no data to restore.", v51, 2u);
        }

        (*(v39 + 8))(v59, v57);
        v48 = v58;
      }

      v52 = v60;
      sub_1000065D8(v55, v1, "Stopped restore-after-signin transaction");
      swift_unknownObjectRelease();
      (*(v48 + 8))(v52, v8);
    }
  }

  else
  {
    v60 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v60, v21, "No restore needed for a non-login CloudKit reset.", v22, 2u);
    }

    v23 = v60;
  }
}

void sub_100006370()
{
  v1 = v0;
  v2 = (*(**(v0 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_cleanupRequested) + 136))();
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v3, 0, memory_order_relaxed, memory_order_relaxed);
  if (v3)
  {
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 os_transactionInhibitorWithLabel:v7];

    [v8 start];
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Created poster cleanup transaction", v11, 2u);
    }

    v12 = sub_1000068E4(0);
    sub_10000941C(v12);
    v13 = sub_1000068E4(1);
    sub_10000941C(v13);
    sub_10000669C(&_swiftEmptyArrayStorage);

    sub_1000065D8(v8, v1, "Stopped poster cleanup transaction");

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = static os_log_type_t.error.getter();
    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, log, v4, "Unexpectedly started cleanup with request flag unset, returning early", v5, 2u);
    }
  }
}

void sub_1000065D8(void *a1, uint64_t a2, const char *a3)
{
  [a1 stop];
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a3, v5, 2u);
  }
}

void sub_10000669C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = static os_log_type_t.info.getter();

    v3 = Logger.logObject.getter();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = v1;

      _os_log_impl(&_mh_execute_header, v3, v2, "Will post notification because we updated poster data for %ld contacts", v4, 0xCu);
    }

    else
    {
    }

    sub_100008CA8(0, &qword_100021338, NSDistributedNotificationCenter_ptr);
    v5 = [swift_getObjCClassFromMetadata() defaultCenter];
    v6 = String._bridgeToObjectiveC()();
    [v5 postNotificationName:v6 object:0];

    v7 = static os_log_type_t.info.getter();

    log = Logger.logObject.getter();
    if (os_log_type_enabled(log, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v1;

      _os_log_impl(&_mh_execute_header, log, v7, "Did post notification because we updated poster data for %ld contacts", v8, 0xCu);
    }

    else
    {
    }
  }
}

char *sub_1000068E4(uint64_t a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_logger;
  v5 = static os_log_type_t.debug.getter();
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v107[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      v9 = 0xD00000000000001ELL;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (v3)
    {
      v10 = "missingExternalDetails";
    }

    else
    {
      v10 = "com.apple.contacts.postersyncd";
    }

    v11 = v4;
    v12 = sub_100007BD8(v9, v10 | 0x8000000000000000, v107);

    *(v7 + 4) = v12;
    v4 = v11;
    _os_log_impl(&_mh_execute_header, v6, v5, "Looking for candidates: %s", v7, 0xCu);
    sub_100008698(v8);
  }

  v13 = *(v2 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_contactStore);
  v14 = _s18ContactsPosterSync15ExchangeContextVyACSgSo14CNContactStoreCcfC_0(v13);
  if (!v14)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Could not fetch Exchange containers from CNContactStore, giving up", v25, 2u);
    }

    return &_swiftEmptyArrayStorage;
  }

  v15 = v14;
  v16 = *(v2 + OBJC_IVAR____TtC18ContactsPosterSync33PostersNotificationHandlerService_container);
  if (v3)
  {
    v17 = sub_1000121EC(v16);
    v19 = v17;
    v20 = v18;
    v106 = v4;
    if (v21)
    {
      if (v17[2])
      {
        v103 = v16;
        v22 = 1;
        goto LABEL_23;
      }

      v22 = 1;
      if (!*(v18 + 16))
      {
LABEL_55:

        sub_100008720(v19, v20, v22);
        v59 = static os_log_type_t.debug.getter();
        v60 = Logger.logObject.getter();
        if (os_log_type_enabled(v60, v59))
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v107[0] = v62;
          *v61 = 136315138;
          if (v3)
          {
            v67 = 0xD00000000000001ELL;
          }

          else
          {
            v67 = 0xD000000000000016;
          }

          if (v3)
          {
            v68 = "missingExternalDetails";
          }

          else
          {
            v68 = "com.apple.contacts.postersyncd";
          }

          v69 = sub_100007BD8(v67, v68 | 0x8000000000000000, v107);

          *(v61 + 4) = v69;
          v66 = "Scan for %s shows everything up to date";
          goto LABEL_63;
        }

LABEL_64:

        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v22 = 0;
      if (!v17[2])
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
    v26 = sub_1000120A0(v16);
    v106 = v4;
    v20 = 0;
    v22 = 0;
    v19 = v26;
    if (!v26[2])
    {
      goto LABEL_55;
    }
  }

  v103 = v16;
LABEL_23:
  v28 = static os_log_type_t.debug.getter();
  sub_1000086E4(v19, v20, v22);
  v29 = Logger.logObject.getter();
  sub_100008720(v19, v20, v22);
  v104 = v20;
  v105 = v19;
  if (os_log_type_enabled(v29, v28))
  {
    v100 = v29;
    v30 = v22;
    v31 = v19;
    LODWORD(v99) = v28;
    v32 = v20;
    v33 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v107[0] = v101;
    *v33 = 136315394;
    if (v3)
    {
      v34 = 0xD00000000000001ELL;
    }

    else
    {
      v34 = 0xD000000000000016;
    }

    if (v3)
    {
      v35 = "missingExternalDetails";
    }

    else
    {
      v35 = "com.apple.contacts.postersyncd";
    }

    LODWORD(v102) = v3;
    v36 = sub_100007BD8(v34, v35 | 0x8000000000000000, v107);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_1000086E4(v31, v32, v30);
    v37 = CleanupCandidates.description.getter(v31, v32, v30);
    v39 = v38;
    v40 = v31;
    v22 = v30;
    sub_100008720(v40, v32, v30);
    v3 = sub_100007BD8(v37, v39, v107);

    *(v33 + 14) = v3;
    LOBYTE(v3) = v102;
    _os_log_impl(&_mh_execute_header, v100, v99, "Potential cleanup for %s: %s", v33, 0x16u);
    swift_arrayDestroy();

    if (!v30)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (!v22)
    {
LABEL_31:
      v41 = v105;
      v42 = sub_100013078(v105, v13, v15);

      v43 = v104;
      goto LABEL_34;
    }
  }

  v41 = v105;
  v107[0] = v105;

  v43 = v104;

  sub_100009328(v44);
  v42 = sub_1000124D8(v107[0], v13, v15);

LABEL_34:
  v45 = v42[2];
  if (!v45)
  {

    sub_100008720(v41, v43, v22);
    v59 = static os_log_type_t.debug.getter();
    v60 = Logger.logObject.getter();
    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v107[0] = v62;
      *v61 = 136315138;
      if (v3)
      {
        v63 = 0xD00000000000001ELL;
      }

      else
      {
        v63 = 0xD000000000000016;
      }

      if (v3)
      {
        v64 = "missingExternalDetails";
      }

      else
      {
        v64 = "com.apple.contacts.postersyncd";
      }

      v65 = sub_100007BD8(v63, v64 | 0x8000000000000000, v107);

      *(v61 + 4) = v65;
      v66 = "Found no updates : %s";
LABEL_63:
      _os_log_impl(&_mh_execute_header, v60, v59, v66, v61, 0xCu);
      sub_100008698(v62);

      goto LABEL_64;
    }

    goto LABEL_64;
  }

  v46 = static os_log_type_t.debug.getter();
  swift_bridgeObjectRetain_n();
  v47 = Logger.logObject.getter();
  v102 = v45;
  if (!os_log_type_enabled(v47, v46))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_66;
  }

  LODWORD(v101) = v46;
  v48 = v45;
  v49 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v107[0] = v100;
  *v49 = 136315650;
  if (v3)
  {
    v50 = 0xD00000000000001ELL;
  }

  else
  {
    v50 = 0xD000000000000016;
  }

  if (v3)
  {
    v51 = "missingExternalDetails";
  }

  else
  {
    v51 = "com.apple.contacts.postersyncd";
  }

  v52 = sub_100007BD8(v50, v51 | 0x8000000000000000, v107);

  *(v49 + 4) = v52;
  *(v49 + 12) = 2048;
  v53 = v42[2];

  *(v49 + 14) = v53;

  *(v49 + 22) = 2080;
  v54 = 2;
  if (v48 < 2)
  {
    v54 = v48;
  }

  if (v42[2] >= v54)
  {

    v55 = ArraySlice.description.getter();
    v57 = v56;

    v58 = sub_100007BD8(v55, v57, v107);

    *(v49 + 24) = v58;
    _os_log_impl(&_mh_execute_header, v47, v101, "Updates planned for %s (%ld: %s", v49, 0x20u);
    swift_arrayDestroy();

    v41 = v105;
    v45 = v102;
LABEL_66:
    v70 = [v103 newBackgroundContext];
    v96 = v42;
    v97 = __chkstk_darwin(v70);
    NSManagedObjectContext.performAndWait<A>(_:)();

    v71 = static os_log_type_t.info.getter();

    v72 = Logger.logObject.getter();
    v103 = v42;
    if (os_log_type_enabled(v72, v71))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v107[0] = v74;
      *v73 = 134218242;
      *(v73 + 4) = v103[2];

      *(v73 + 12) = 2080;
      if (v3)
      {
        v75 = 0xD00000000000001ELL;
      }

      else
      {
        v75 = 0xD000000000000016;
      }

      if (v3)
      {
        v76 = "missingExternalDetails";
      }

      else
      {
        v76 = "com.apple.contacts.postersyncd";
      }

      v77 = v22;
      v78 = sub_100007BD8(v75, v76 | 0x8000000000000000, v107);

      *(v73 + 14) = v78;
      v22 = v77;
      _os_log_impl(&_mh_execute_header, v72, v71, "Updated %ld identifiers for %s in poster store.", v73, 0x16u);
      sub_100008698(v74);
      v79 = v103;

      v41 = v105;
    }

    else
    {
      v79 = v42;
    }

    v80 = 0;
    v81 = v79 + 10;
    v99 = (v45 - 1);
    result = &_swiftEmptyArrayStorage;
    HIDWORD(v98) = v22;
    v100 = v79 + 10;
LABEL_76:
    v82 = &v81[7 * v80];
    v83 = v80;
    v101 = result;
    while (v83 < v79[2].isa)
    {
      if ((v82->isa & 1) == 0 && v22)
      {
        isa = v82[-6].isa;
        v84 = v82[-5].isa;
        v87 = v82[-4].isa;
        v86 = v82[-3].isa;
        v89 = v82[-2].isa;
        v88 = v82[-1].isa;
        v106 = &v98;
        v107[0] = v87;
        v107[1] = v86;
        v107[2] = v89;
        v107[3] = v88;
        __chkstk_darwin(result);
        v96 = v107;
        sub_1000087CC(isa, v84, v87, v86, v89, v88, 0);

        if (sub_100008180(sub_100008788, &v95, v105))
        {
          sub_1000088DC(isa, v84, v87, v86, v89, v88, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v102;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v101 = sub_10000793C(0, *(v101 + 2) + 1, 1, v101);
          }

          v22 = HIDWORD(v98);
          result = v101;
          v92 = *(v101 + 2);
          v91 = *(v101 + 3);
          if (v92 >= v91 >> 1)
          {
            result = sub_10000793C((v91 > 1), v92 + 1, 1, v101);
          }

          v80 = (v83 + 1);
          *(result + 2) = v92 + 1;
          v93 = &result[16 * v92];
          *(v93 + 4) = isa;
          *(v93 + 5) = v84;
          v81 = v100;
          v41 = v105;
          v79 = v103;
          if (v99 == v83)
          {
LABEL_88:
            v94 = result;
            sub_100008720(v41, v104, v22);

            return v94;
          }

          goto LABEL_76;
        }

        sub_1000088DC(isa, v84, v87, v86, v89, v88, 0);
        result = v101;
        v45 = v102;
        v41 = v105;
        v22 = HIDWORD(v98);
        v79 = v103;
      }

      v83 = (v83 + 1);
      v82 += 7;
      if (v45 == v83)
      {
        goto LABEL_88;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id PostersNotificationHandlerService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_100007758()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_100007818(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213D8, &unk_100018A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000793C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021390, &qword_100018A30);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_100007A48(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213E0, &qword_100019290);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100007B54(uint64_t a1, uint64_t a2)
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

  sub_1000025B0(&qword_100021390, &qword_100018A30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_100007BD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007CA4(v11, 0, 0, 1, a1, a2);
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
    sub_1000089DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008698(v11);
  return v7;
}

unint64_t sub_100007CA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007DB0(a5, a6);
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

char *sub_100007DB0(uint64_t a1, unint64_t a2)
{
  v3 = sub_100007DFC(a1, a2);
  sub_100007F2C(&off_10001CB58);
  return v3;
}

char *sub_100007DFC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008018(v5, 0);
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
        v7 = sub_100008018(v10, 0);
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

uint64_t sub_100007F2C(uint64_t result)
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

  result = sub_10000808C(result, v11, 1, v3);
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

void *sub_100008018(uint64_t a1, uint64_t a2)
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

  sub_1000025B0(&qword_100021398, &qword_100018A38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000808C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021398, &qword_100018A38);
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

uint64_t sub_100008180(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v12 = v6[1];
      v13 = *v6;
      v14 = v12;

      sub_100008874(v12, *(&v12 + 1));
      v9 = a1(&v13);
      v10 = v14;

      sub_100008970(v10, *(&v10 + 1));
      LOBYTE(v4) = (v3 != 0) | v9;
      if ((v3 != 0) | v9 & 1)
      {
        break;
      }

      v7 = v8 - 1;
      v6 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_10000825C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

unint64_t sub_100008308(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025B0(&qword_1000213E8, &qword_100018A70);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000E0E8(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008448()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000084D0(uint64_t a1)
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

unint64_t sub_100008588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000025B0(&qword_1000215A0, &unk_100018A50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008C28(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10000E0E8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100008C98(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100008698(void *a1)
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

uint64_t sub_1000086E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_100008720(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000087CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {

    sub_100008874(a3, a4);
  }

  else
  {

    return sub_100008874(a5, a6);
  }
}

uint64_t sub_100008874(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008888(a1, a2);
  }

  return a1;
}

uint64_t sub_100008888(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000088DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {

    sub_100008970(a3, a4);
  }

  else
  {

    return sub_100008970(a5, a6);
  }
}

uint64_t sub_100008970(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100008984(a1, a2);
  }

  return a1;
}

uint64_t sub_100008984(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1000089DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100008A38()
{
  result = qword_1000213A0;
  if (!qword_1000213A0)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213A0);
  }

  return result;
}

uint64_t sub_100008AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_100021300, &unk_1000189C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100008B54()
{
  result = qword_1000213C0;
  if (!qword_1000213C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000213C0);
  }

  return result;
}

uint64_t sub_100008BA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008C28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_1000213D0, &unk_100019240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_100008C98(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100008CA8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100008CF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000025B0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100008D90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021588, &qword_100019230);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_100008CA8(0, &qword_1000213B0, NSNumber_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100008C98(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100008C98(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100008C98(v32, (v2[7] + 32 * v10));
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

uint64_t sub_100009060(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021588, &qword_100019230);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
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
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000089DC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100008C98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100008C98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100008C98(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
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
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100008C98(v32, (v2[7] + 32 * v10));
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

char *sub_100009328(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100007A48(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000941C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10000793C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t CleanupType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void *static PosterCleanup.scan(for:in:)(char a1, void *a2)
{
  if (a1)
  {
    return sub_1000121EC(a2);
  }

  else
  {
    return sub_1000120A0(a2);
  }
}

BOOL CleanupCandidates.isEmpty.getter(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 16);
  result = (a3 ^ 1) & (v3 == 0);
  if (((a3 ^ 1) & 1) == 0 && !v3)
  {
    return *(a2 + 16) == 0;
  }

  return result;
}

id static PosterCleanup.updates(for:from:context:)(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  if ((a3 & 1) == 0)
  {
    return sub_100013078(a1, a4, a5);
  }

  sub_100009328(v8);
  v9 = sub_1000124D8(a1, a4, a5);

  if (!v5)
  {
    return v9;
  }

  return result;
}

void static PosterCleanup.apply(updates:to:)(uint64_t a1, id a2)
{
  if (*(a1 + 16))
  {
    v2 = [a2 newBackgroundContext];
    __chkstk_darwin(v2);
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

id sub_100009718(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_9:
    v21 = 0;
    if ([a2 save:&v21])
    {
      return v21;
    }

    v12 = v21;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v4 = (a1 + 80);
  while (1)
  {
    v6 = *(v4 - 6);
    v5 = *(v4 - 5);
    v8 = *(v4 - 4);
    v7 = *(v4 - 3);
    v10 = *(v4 - 2);
    v9 = *(v4 - 1);
    if (*v4)
    {
      break;
    }

    sub_1000087CC(*(v4 - 6), *(v4 - 5), *(v4 - 4), *(v4 - 3), *(v4 - 2), *(v4 - 1), 0);

    sub_100008874(v10, v9);
    sub_10001424C(v6, v5, v8, v7);
    if (v2)
    {

      sub_100008970(v10, v9);
      v13 = v6;
      v14 = v5;
      v15 = v8;
      v16 = v7;
      v17 = v10;
      v18 = v9;
      v19 = 0;
      return sub_1000088DC(v13, v14, v15, v16, v17, v18, v19);
    }

    sub_1000088DC(v6, v5, v8, v7, v10, v9, 0);

    sub_100008970(v10, v9);

LABEL_3:
    v4 += 56;
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  sub_1000087CC(*(v4 - 6), *(v4 - 5), *(v4 - 4), *(v4 - 3), *(v4 - 2), *(v4 - 1), 1);

  sub_100008874(v8, v7);

  sub_1000145D0(v6, v5, v8, v7, v10, v9, a2);
  if (!v2)
  {
    sub_1000088DC(v6, v5, v8, v7, v10, v9, 1);

    sub_100008970(v8, v7);
    goto LABEL_3;
  }

  sub_100008970(v8, v7);
  v13 = v6;
  v14 = v5;
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v9;
  v19 = 1;
  return sub_1000088DC(v13, v14, v15, v16, v17, v18, v19);
}

unint64_t sub_1000099D8()
{
  v1 = v0;
  sub_10000E070();
  inited = swift_initStackObject();
  *(inited + 32) = sub_100008CA8(0, &qword_1000215D8, CNContactImageManagedObject_ptr);
  *(inited + 40) = sub_100008CA8(0, &qword_1000215E0, CNContactPosterManagedObject_ptr);
  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  v3 = 0;
  v32 = 0x8000000100019A20;
  while (2)
  {
    v4 = v3;
    v5 = [swift_getObjCClassFromMetadata() entityName];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v5];

    v7 = NSPredicate.init(format:_:)();
    [v6 setPredicate:v7];

    sub_1000025B0(&qword_100021580, &qword_100019228);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000189B0;
    *(v8 + 56) = &type metadata for String;
    v9 = v32;
    *(v8 + 32) = 0xD000000000000011;
    *(v8 + 40) = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setPropertiesToFetch:isa];

    [v6 setResultType:2];
    [v6 setReturnsDistinctResults:1];
    sub_100008CA8(0, &unk_100021640, NSDictionary_ptr);
    v11 = v1;
    result = NSManagedObjectContext.fetch<A>(_:)();
    if (v1)
    {

      return swift_setDeallocating();
    }

    v13 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v15 = result;
    }

    else
    {
      v15 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v6;
    if (!v15)
    {
      v26 = &_swiftEmptyArrayStorage;
      goto LABEL_3;
    }

    v16 = 0;
    v26 = &_swiftEmptyArrayStorage;
    do
    {
      v17 = v16;
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *(v14 + 16))
          {
            goto LABEL_37;
          }

          result = *(v13 + 8 * v17 + 32);
        }

        v18 = result;
        v16 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          return result;
        }

        *&v27 = 0xD000000000000011;
        *(&v27 + 1) = v32;
        v19 = [result __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v19)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v27 = 0u;
          v28 = 0u;
        }

        v29[0] = v27;
        v29[1] = v28;
        if (*(&v28 + 1))
        {
          break;
        }

        result = sub_100008CF0(v29, &qword_1000213A8, &qword_100018A40);
LABEL_13:
        ++v17;
        if (v16 == v15)
        {
          v1 = v11;
          goto LABEL_3;
        }
      }

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = v31;
      if (!v31)
      {
        goto LABEL_13;
      }

      v21 = v30;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000793C(0, *(v26 + 2) + 1, 1, v26);
        v26 = result;
      }

      v23 = *(v26 + 2);
      v22 = *(v26 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_10000793C((v22 > 1), v23 + 1, 1, v26);
        v26 = result;
      }

      *(v26 + 2) = v23 + 1;
      v24 = &v26[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v20;
      v1 = v11;
    }

    while (v16 != v15);
LABEL_3:

    sub_100014A48(v26);

    v3 = 1;
    if ((v4 & 1) == 0)
    {
      continue;
    }

    return swift_setDeallocating();
  }
}

void sub_100009EA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = [objc_opt_self() entityName];
  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v7];

  sub_100008CA8(0, &qword_1000215B0, NSPredicate_ptr);
  v9 = NSPredicate.init(format:_:)();
  [v8 setPredicate:v9];

  sub_1000025B0(&qword_100021580, &qword_100019228);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000189B0;
  *(v10 + 56) = &type metadata for String;
  strcpy((v10 + 32), "externalUUID");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setPropertiesToFetch:isa];

  sub_100008CA8(0, &qword_1000215C8, CNContactExternalDetailsManagedObject_ptr);
  v12 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return;
  }

  v13 = sub_100014AB8(v12);

  if (!v13[2] || (v14 = sub_10000E238(1), (v15 & 1) == 0))
  {
    v31 = &_swiftEmptyArrayStorage;
    goto LABEL_31;
  }

  v16 = *(v13[7] + 8 * v14);
  if (v16 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v49 = v13;
    v50 = a2;
    v51 = v4;
    v52 = v8;
    v54 = a3;

    if (i)
    {
      v18 = 0;
      v59 = v16 & 0xFFFFFFFFFFFFFF8;
      v61 = v16 & 0xC000000000000001;
      a2 = &_swiftEmptyArrayStorage;
      v57 = v16;
      while (1)
      {
        if (v61)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v59 + 16))
          {
            goto LABEL_59;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v8 = v19;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = [v19 externalUUID];
        if (v21)
        {
          v22 = v21;
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          v4 = 0;
          v24 = 0;
        }

        v25 = [v8 fallbackDetailsForExchange];
        if (v25)
        {
          v26 = v25;
          v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          a3 = v27;
        }

        else
        {

          v13 = 0;
          a3 = 0xF000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_100007A48(0, *(a2 + 16) + 1, 1, a2);
        }

        v29 = *(a2 + 16);
        v28 = *(a2 + 24);
        v8 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          a2 = sub_100007A48((v28 > 1), v29 + 1, 1, a2);
        }

        *(a2 + 16) = v8;
        v30 = (a2 + 32 * v29);
        *(v30 + 4) = v4;
        *(v30 + 5) = v24;
        *(v30 + 6) = v13;
        *(v30 + 7) = a3;
        ++v18;
        v16 = v57;
        if (v20 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    a2 = &_swiftEmptyArrayStorage;
LABEL_30:

    v31 = sub_100014D7C(a2);
    v4 = v51;

    v8 = v52;
    a3 = v54;
    v13 = v49;
    a2 = v50;
LABEL_31:
    *a2 = v31;

    if (!v13[2] || (v32 = sub_10000E238(0), (v33 & 1) == 0))
    {

      v48 = &_swiftEmptyArrayStorage;
      goto LABEL_57;
    }

    v16 = *(v13[7] + 8 * v32);

    v34 = v16 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v8;
    v55 = a3;
    if (!v34)
    {
      break;
    }

    a2 = 0;
    v60 = v16 & 0xFFFFFFFFFFFFFF8;
    v62 = v16 & 0xC000000000000001;
    v13 = &_swiftEmptyArrayStorage;
    v56 = v34;
    v58 = v16;
    while (1)
    {
      if (v62)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *(v60 + 16))
        {
          goto LABEL_61;
        }

        v35 = *(v16 + 8 * a2 + 32);
      }

      v36 = v35;
      v8 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v37 = [v35 externalUUID];
      if (v37)
      {
        v38 = v37;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v4 = 0;
        v40 = 0;
      }

      v41 = [v36 fallbackDetailsForExchange];
      if (v41)
      {
        v42 = v41;
        v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        a3 = v44;
      }

      else
      {

        v43 = 0;
        a3 = 0xF000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100007A48(0, v13[2] + 1, 1, v13);
      }

      v46 = v13[2];
      v45 = v13[3];
      if (v46 >= v45 >> 1)
      {
        v13 = sub_100007A48((v45 > 1), v46 + 1, 1, v13);
      }

      v13[2] = v46 + 1;
      v47 = &v13[4 * v46];
      v47[4] = v4;
      v47[5] = v40;
      v47[6] = v43;
      v47[7] = a3;
      ++a2;
      v16 = v58;
      if (v8 == v56)
      {
        goto LABEL_56;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v13 = &_swiftEmptyArrayStorage;
LABEL_56:

  v48 = sub_100014D7C(v13);

  a3 = v55;
LABEL_57:
  *a3 = v48;
}

uint64_t ExternalDetails.init(_:)(void *a1)
{
  v2 = [a1 externalUUID];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = [a1 fallbackDetailsForExchange];
  if (v5)
  {
    v6 = v5;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

id sub_10000A5B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 externalUUID];
  if (result)
  {
    v9 = result;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (*(a3 + 16) && (, v13 = sub_10000E1A4(v10, v12), v15 = v14, , (v15 & 1) != 0) && (v16 = *(*(a3 + 56) + 8 * v13), v16[2]))
    {
      v18 = v16[4];
      v17 = v16[5];
      v19 = v16[6];
      v20 = v16[7];
      swift_beginAccess();

      sub_100008874(v19, v20);
      sub_10000ED70(&v30, v10, v12);
      swift_endAccess();

      v21 = [a1 identifier];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      swift_beginAccess();
      v25 = *(a5 + 16);

      sub_100008874(v19, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a5 + 16) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100007818(0, *(v25 + 2) + 1, 1, v25);
        *(a5 + 16) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100007818((v27 > 1), v28 + 1, 1, v25);
      }

      *(v25 + 2) = v28 + 1;
      v29 = &v25[56 * v28];
      *(v29 + 4) = v22;
      *(v29 + 5) = v24;
      *(v29 + 6) = v18;
      *(v29 + 7) = v17;
      *(v29 + 8) = v19;
      *(v29 + 9) = v20;
      v29[80] = 0;
      *(a5 + 16) = v25;
      swift_endAccess();

      return sub_100008970(v19, v20);
    }

    else
    {
    }
  }

  return result;
}

void sub_10000A7F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t static ExchangeFallbackMatch.decoding(_:)@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v4 = type metadata accessor for ExchangeFallbackMatch(0);
  sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

Swift::String_optional __swiftcall ExchangeFallbackMatch.findExchangeContactIn(store:context:)(CNContactStore store, ContactsPosterSync::ExchangeContext context)
{
  v4 = objc_opt_self();
  v5 = sub_10000B7A4();
  sub_100009060(v5);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_10000BC90(context.exchangeContainerIdentifiers._rawValue);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 exactMatchForNameAndAtLeastOneHandleFromPayload:isa containerIdentifiers:v7 contactStore:store.super.isa];

  if (v8)
  {
    v9 = [v8 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = v10;
  v14 = v12;
  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

id static ExchangeFallbackMatch.keyDescriptor.getter()
{
  v0 = [objc_opt_self() descriptorForRequiredKeys];

  return v0;
}

id sub_10000AAFC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for ExchangeFallbackMatch(0);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 externalUUID];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    result = sub_100015140(a1, a3, a4);
    if (!v18)
    {
      return result;
    }

    v14 = result;
    v16 = v18;
  }

  v19 = &DaemonSandboxer_iOS__metaData;
  if (*(a3 + 16))
  {
    v49 = v14;
    v20 = [a1 identifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_100014F4C(v21, v23, a4);
    v26 = v25;

    if (v26 && (v50[0] = v24, v50[1] = v26, __chkstk_darwin(v27), *(&v48 - 2) = v50, v28 = sub_10000825C(sub_1000157C4, (&v48 - 4), a3), , (v28 & 1) != 0))
    {
      v29 = objc_opt_self();
      sub_1000025B0(&qword_100021600, &unk_100019270);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100018A90;
      *(v30 + 32) = a1;
      sub_100008CA8(0, &qword_100021630, CNContact_ptr);
      v31 = a1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v33 = [v29 userActivityPayloadWithContacts:isa shouldUnify:0];

      v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = sub_100009060(v34);

      ExchangeFallbackMatch.init(_:)(v35, v11);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_100015580(&qword_100021408, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
      v36 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v38 = v37;

      v14 = v49;
      v19 = &DaemonSandboxer_iOS__metaData;
      sub_1000136A4(v11);
    }

    else
    {
      v36 = 0;
      v38 = 0xF000000000000000;
      v14 = v49;
      v19 = &DaemonSandboxer_iOS__metaData;
    }
  }

  else
  {
    v36 = 0;
    v38 = 0xF000000000000000;
  }

  sub_100008874(v36, v38);
  v39 = [a1 v19[24].base_meths];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  swift_beginAccess();
  v43 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_100007818(0, *(v43 + 2) + 1, 1, v43);
    *(a5 + 16) = v43;
  }

  v46 = *(v43 + 2);
  v45 = *(v43 + 3);
  if (v46 >= v45 >> 1)
  {
    v43 = sub_100007818((v45 > 1), v46 + 1, 1, v43);
  }

  *(v43 + 2) = v46 + 1;
  v47 = &v43[56 * v46];
  *(v47 + 4) = v14;
  *(v47 + 5) = v16;
  *(v47 + 6) = v36;
  *(v47 + 7) = v38;
  *(v47 + 8) = v40;
  *(v47 + 9) = v42;
  v47[80] = 1;
  *(a5 + 16) = v43;
  swift_endAccess();
  return sub_100008970(v36, v38);
}

uint64_t ExchangeFallbackMatch.asData.getter()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for ExchangeFallbackMatch(0);
  sub_100015580(&qword_100021408, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

int *ExchangeFallbackMatch.init(givenName:familyName:organizationName:phoneNumbers:emails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v33 = a1;
  v16 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  if (a2 | a4)
  {
    v22 = type metadata accessor for PersonNameComponents();
    v31 = a5;
    v32 = a8;
    v23 = v22;
    v24 = *(v22 - 8);
    v30 = a7;
    v25 = *(v24 + 56);
    v25(v19, 1, 1, v22);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    v26 = v23;
    a8 = v32;
    v25(v21, 0, 1, v26);
    a7 = v30;
    a5 = v31;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v27 = type metadata accessor for PersonNameComponents();
    (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  }

  sub_100013484(v21, a9);
  result = type metadata accessor for ExchangeFallbackMatch(0);
  v29 = (a9 + result[5]);
  *v29 = a5;
  v29[1] = a6;
  *(a9 + result[6]) = a7;
  *(a9 + result[7]) = a8;
  *(a9 + result[8]) = 1;
  return result;
}

int *ExchangeFallbackMatch.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v10;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v11 = sub_10000E160(v47), (v12 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v11, &v48);
    sub_100008A90(v47);
    if (swift_dynamicCast())
    {
      v13 = v46;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100008A90(v47);
    v13 = 0;
  }

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v14;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v15 = sub_10000E160(v47), (v16 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v15, &v48);
    sub_100008A90(v47);
    if (swift_dynamicCast())
    {
      v17 = v46;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_100008A90(v47);
    v17 = 0;
  }

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v18;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v19 = sub_10000E160(v47), (v20 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v19, &v48);
    sub_100008A90(v47);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v22 = v45;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = v46;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    sub_100008A90(v47);
    v22 = 0;
    v23 = 0;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v24;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v25 = sub_10000E160(v47), (v26 & 1) == 0))
  {
    sub_100008A90(v47);
    goto LABEL_27;
  }

  sub_1000089DC(*(a1 + 56) + 32 * v25, &v48);
  sub_100008A90(v47);
  sub_1000025B0(&qword_100021418, &qword_100018AC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v27 = &_swiftEmptyArrayStorage;
    goto LABEL_28;
  }

  v27 = v45;
LABEL_28:
  v44 = v27;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v28;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v29 = sub_10000E160(v47), (v30 & 1) != 0))
  {
    sub_1000089DC(*(a1 + 56) + 32 * v29, &v48);
    sub_100008A90(v47);

    sub_1000025B0(&qword_100021418, &qword_100018AC8);
    if (swift_dynamicCast())
    {
      v31 = v45;
      goto LABEL_34;
    }
  }

  else
  {

    sub_100008A90(v47);
  }

  v31 = &_swiftEmptyArrayStorage;
LABEL_34:
  if (v13 | v17)
  {
    v32 = type metadata accessor for PersonNameComponents();
    v41 = v31;
    v33 = v32;
    v34 = *(v32 - 8);
    v43 = v22;
    v35 = *(v34 + 56);
    v42 = v23;
    v35(v7, 1, 1, v32);
    PersonNameComponents.init(namePrefix:givenName:middleName:familyName:nameSuffix:nickname:phoneticRepresentation:)();
    v36 = v33;
    v31 = v41;
    v35(v9, 0, 1, v36);
    v23 = v42;
    v22 = v43;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v37 = type metadata accessor for PersonNameComponents();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
  }

  sub_100013484(v9, a2);
  result = type metadata accessor for ExchangeFallbackMatch(0);
  v39 = (a2 + result[5]);
  *v39 = v22;
  v39[1] = v23;
  *(a2 + result[6]) = v44;
  *(a2 + result[7]) = v31;
  *(a2 + result[8]) = 1;
  return result;
}

unint64_t sub_10000B7A4()
{
  v1 = v0;
  v2 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v46 - v6;
  sub_1000025B0(&unk_100021590, &qword_100019238);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000189B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = v9;
  *(inited + 48) = 1;
  v10 = sub_100008588(inited);
  swift_setDeallocating();
  sub_100008CF0(inited + 32, &qword_1000213D0, &unk_100019240);
  sub_100015518(v1, v7, &qword_100021410, &qword_100018AC0);
  v11 = type metadata accessor for PersonNameComponents();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    sub_100008CF0(v7, &qword_100021410, &qword_100018AC0);
  }

  else
  {
    v14 = PersonNameComponents.givenName.getter();
    v16 = v15;
    (*(v12 + 8))(v7, v11);
    if (v16)
    {
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v1;
      v18 = v17;
      v51 = &type metadata for String;
      *&v50 = v14;
      *(&v50 + 1) = v16;
      sub_100008C98(&v50, v49);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v10;
      sub_100010A80(v49, v46, v18, isUniquelyReferenced_nonNull_native);
      v1 = v47;

      v10 = v48;
    }
  }

  sub_100015518(v1, v5, &qword_100021410, &qword_100018AC0);
  if (v13(v5, 1, v11) == 1)
  {
    sub_100008CF0(v5, &qword_100021410, &qword_100018AC0);
  }

  else
  {
    v20 = PersonNameComponents.familyName.getter();
    v22 = v21;
    (*(v12 + 8))(v5, v11);
    if (v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      v51 = &type metadata for String;
      *&v50 = v20;
      *(&v50 + 1) = v22;
      sub_100008C98(&v50, v49);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v10;
      sub_100010A80(v49, v23, v25, v26);

      v10 = v48;
    }
  }

  v27 = type metadata accessor for ExchangeFallbackMatch(0);
  v28 = (v1 + v27[5]);
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    v51 = &type metadata for String;
    *&v50 = v30;
    *(&v50 + 1) = v29;
    sub_100008C98(&v50, v49);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    sub_100010A80(v49, v31, v33, v34);

    v10 = v48;
  }

  v35 = *(v1 + v27[6]);
  if (*(v35 + 16))
  {
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v51 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
    *&v50 = v35;
    sub_100008C98(&v50, v49);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    sub_100010A80(v49, v36, v38, v39);

    v10 = v48;
  }

  v40 = *(v1 + v27[7]);
  if (*(v40 + 16))
  {
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    v51 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
    *&v50 = v40;
    sub_100008C98(&v50, v49);

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    sub_100010A80(v49, v41, v43, v44);

    return v48;
  }

  return v10;
}

unint64_t *sub_10000BC90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = &_swiftEmptyArrayStorage;
    sub_1000105B0(0, v1, 0);
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
        sub_1000105B0((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_100008C98(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000BD90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = &_swiftEmptyArrayStorage;
    sub_1000105F0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];

      if (v8 >= v7 >> 1)
      {
        sub_1000105F0((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for String;
      v12 = &protocol witness table for String;
      *&v10 = v6;
      *(&v10 + 1) = v5;
      v2[2] = v8 + 1;
      sub_10001545C(&v10, &v2[5 * v8 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

unint64_t *sub_10000BE8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = &_swiftEmptyArrayStorage;
    sub_1000105F0(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v9 = *v4;
      v10 = v4[1];

      sub_100008874(v10, *(&v10 + 1));
      v14 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000105F0((v5 > 1), v6 + 1, 1);
        v2 = v14;
      }

      v12 = &type metadata for ExternalDetails;
      v13 = sub_100015474();
      v7 = swift_allocObject();
      *&v11 = v7;
      *(v7 + 16) = v9;
      *(v7 + 32) = v10;
      v2[2] = v6 + 1;
      sub_10001545C(&v11, &v2[5 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

Swift::Int sub_10000BFC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000C03C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_10000C080()
{
  v1 = *v0;
  v2 = 0x706D6F43656D616ELL;
  v3 = 0x6D754E656E6F6870;
  v4 = 0x736C69616D65;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000C130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001529C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000C170(uint64_t a1)
{
  v2 = sub_100013538();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C1AC(uint64_t a1)
{
  v2 = sub_100013538();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_10000C27C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a2 + 56);
      v4 = (a1 + 56);
      do
      {
        v6 = *(v4 - 1);
        v5 = *v4;
        v7 = *(v4 - 3);
        v8 = *(v4 - 2);
        v9 = *(v3 - 2);
        v14 = *(v3 - 3);
        v10 = *(v3 - 1);
        v11 = *v3;

        sub_100008874(v6, v5);

        sub_100008874(v10, v11);
        v12 = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v7, v8, v6, v5, v14, v9, v10, v11);

        sub_100008970(v10, v11);

        sub_100008970(v6, v5);
        if (!v12)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t ExchangeFallbackMatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000025B0(&qword_100021420, &qword_100018AD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000134F4(a1, a1[3]);
  sub_100013538();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for PersonNameComponents();
  sub_100015580(&qword_100021430, &type metadata accessor for PersonNameComponents, &protocol conformance descriptor for PersonNameComponents);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for ExchangeFallbackMatch(0);
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_1000025B0(&qword_100021418, &qword_100018AC8);
    sub_1000135D4(&qword_100021438, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void ExchangeFallbackMatch.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PersonNameComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_100015518(v2, &v17 - v8, &qword_100021410, &qword_100018AC0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100015580(&qword_100021440, &type metadata accessor for PersonNameComponents, &protocol conformance descriptor for PersonNameComponents);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  v10 = type metadata accessor for ExchangeFallbackMatch(0);
  if (*(v2 + v10[5] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = *(v2 + v10[6]);
  Hasher._combine(_:)(*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 40;
    do
    {

      String.hash(into:)();

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  v14 = *(v2 + v10[7]);
  Hasher._combine(_:)(*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 40;
    do
    {

      String.hash(into:)();

      v16 += 16;
      --v15;
    }

    while (v15);
  }

  Hasher._combine(_:)(*(v2 + v10[8]));
}

Swift::Int ExchangeFallbackMatch.hashValue.getter()
{
  Hasher.init(_seed:)();
  ExchangeFallbackMatch.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t ExchangeFallbackMatch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_1000025B0(&qword_100021448, &qword_100018AD8);
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for ExchangeFallbackMatch(0);
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000134F4(a1, a1[3]);
  sub_100013538();
  v26 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100008698(a1);
  }

  v13 = v24;
  v14 = v12;
  type metadata accessor for PersonNameComponents();
  LOBYTE(v28) = 0;
  sub_100015580(&qword_100021450, &type metadata accessor for PersonNameComponents, &protocol conformance descriptor for PersonNameComponents);
  v15 = v25;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_100013484(v6, v14);
  LOBYTE(v28) = 1;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = (v14 + v10[5]);
  *v17 = v16;
  v17[1] = v18;
  v19 = sub_1000025B0(&qword_100021418, &qword_100018AC8);
  v27 = 2;
  v22[1] = sub_1000135D4(&qword_100021458, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v22[2] = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v10[6]) = v28;
  v27 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v10[7]) = v28;
  LOBYTE(v28) = 4;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v13 + 8))(v26, v15);
  *(v14 + v10[8]) = v20;
  sub_100013640(v14, v23);
  sub_100008698(a1);
  return sub_1000136A4(v14);
}

Swift::Int sub_10000CE4C(uint64_t a1)
{
  Hasher.init(_seed:)();
  ExchangeFallbackMatch.hash(into:)(v2);
  return Hasher._finalize()();
}

void ExternalDetails.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  v12 = type metadata accessor for ExchangeFallbackMatch(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v16[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (a5 >> 60 != 15)
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_100008888(a4, a5);
    JSONDecoder.init()();
    sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    (*(v13 + 56))(v11, 0, 1, v12);
    sub_100013700(v11, v15);
    ExchangeFallbackMatch.hash(into:)(a1);
    sub_100008970(a4, a5);
    sub_1000136A4(v15);
  }
}

Swift::Int ExternalDetails.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_10000D1C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_10000D22C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v7, v2, v3, v5, v4);
  return Hasher._finalize()();
}

ContactsPosterSync::CleanupType_optional __swiftcall CleanupType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBA8, v2);

  if (v3 == 1)
  {
    v4.value = ContactsPosterSync_CleanupType_missingLocalContactIdentifiers;
  }

  else
  {
    v4.value = ContactsPosterSync_CleanupType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D2DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "com.apple.contacts.postersyncd";
  }

  else
  {
    v4 = "missingExternalDetails";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "missingExternalDetails";
  }

  else
  {
    v7 = "com.apple.contacts.postersyncd";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10000D388()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D408(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10000D474(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000D4F0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10001CBA8, *a1);

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

void sub_10000D550(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "missingExternalDetails";
  }

  else
  {
    v3 = "com.apple.contacts.postersyncd";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_10000D5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s18ContactsPosterSync10UpdatePlanO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

Swift::Int sub_10000D620()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000D68C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000D6DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = 3026478;
  }

  if (v1 <= 2)
  {
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  sub_1000025B0(&qword_100021558, &qword_100019210);
  v4._countAndFlagsBits = ArraySlice.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = v2;
  v5._object = v3;
  String.append(_:)(v5);

  return 0;
}

uint64_t CleanupCandidates.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _StringGuts.grow(_:)(96);
    v4._countAndFlagsBits = 0xD00000000000003BLL;
    v4._object = 0x8000000100019790;
    String.append(_:)(v4);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 0x746E657272756320;
    v6._object = 0xEB0000000028202CLL;
    String.append(_:)(v6);
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8._object = 0x80000001000197D0;
    v8._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v8);
    v9 = sub_10000BE8C(a1);
  }

  else
  {
    _StringGuts.grow(_:)(69);
    v10._countAndFlagsBits = 0xD00000000000002CLL;
    v10._object = 0x80000001000197F0;
    String.append(_:)(v10);
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0xD000000000000014;
    v12._object = 0x8000000100019820;
    String.append(_:)(v12);
    v9 = sub_10000BD90(a1);
  }

  v13 = sub_10000D6DC(v9);
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

uint64_t UpdatePlan.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (*(v0 + 48))
  {
    _StringGuts.grow(_:)(102);
    v7._countAndFlagsBits = 0xD00000000000002FLL;
    v7._object = 0x8000000100019840;
    String.append(_:)(v7);
    v8._countAndFlagsBits = ExternalDetails.description.getter(v1, v2, v3, v4);
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000032;
    v9._object = 0x8000000100019870;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v5;
    v10._object = v6;
    String.append(_:)(v10);
  }

  else
  {
    _StringGuts.grow(_:)(92);
    v11._countAndFlagsBits = 0xD000000000000035;
    v11._object = 0x80000001000198B0;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v1;
    v12._object = v2;
    String.append(_:)(v12);
    v13._object = 0x80000001000198F0;
    v13._countAndFlagsBits = 0xD000000000000022;
    String.append(_:)(v13);
    v14._countAndFlagsBits = ExternalDetails.description.getter(v3, v4, v5, v6);
    String.append(_:)(v14);
  }

  v15._countAndFlagsBits = 62;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0;
}

unint64_t ExternalDetails.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 != 15)
  {
    v9 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = a1;
        v11 = a2;
LABEL_15:
        v4 = 0;
        v5 = 0xE000000000000000;
LABEL_16:
        sub_100008970(a3, a4);
        a2 = v11;
        a1 = v10;
        if (v11)
        {
          goto LABEL_3;
        }

LABEL_17:
        v8 = 0xD000000000000018;

        return v8;
      }

      if (*(a3 + 16) == *(a3 + 24))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = a1;
        v11 = a2;
        if ((a4 & 0xFF000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_13:
        v4 = 0xD000000000000018;
        v5 = 0x8000000100019940;
        goto LABEL_16;
      }

      if (a3 == a3 >> 32)
      {
        goto LABEL_2;
      }
    }

    v10 = a1;
    v11 = a2;
    v12 = a4;
    v13 = a3;
    sub_100008874(a3, a4);
    a3 = v13;
    a4 = v12;
    goto LABEL_13;
  }

LABEL_2:
  v4 = 0;
  v5 = 0xE000000000000000;
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_3:
  String.append(_:)(*&a1);
  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 60;
}

uint64_t sub_10000DCB0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000DEE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100010F38(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100008984(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10000DCB0(v13, a3, a4, &v12);
  v10 = v4;
  sub_100008984(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10000E070()
{
  v0 = sub_1000025B0(&qword_1000215F0, &qword_100019260);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000215F8;
    v3 = &unk_100019268;
  }

  else
  {
    v2 = &qword_100021600;
    v3 = &unk_100019270;
  }

  return sub_1000025B0(v2, v3);
}

unint64_t sub_10000E0E8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000E2A4(a1, a2, v4);
}

unint64_t sub_10000E160(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000E35C(a1, v4);
}

unint64_t sub_10000E1A4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = Hasher._finalize()();

  return sub_10000E424(a1, a2, v4);
}

unint64_t sub_10000E238(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 & 1);
  v2 = Hasher._finalize()();

  return sub_10000E4F0(v1, v2);
}

unint64_t sub_10000E2A4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10000E35C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000155C8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100008A90(v8);
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

unint64_t sub_10000E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_10000E4F0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10000E560(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000025B0(&qword_1000215A0, &unk_100018A50);
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
        sub_100008C98(v24, v34);
      }

      else
      {
        sub_1000089DC(v24, v34);
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
      result = sub_100008C98(v34, (*(v7 + 56) + 32 * v15));
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

Swift::Int sub_10000E818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000025B0(&qword_100021628, &unk_1000192A0);
  v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 56) + 8 * v19);
      v31 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000EAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000025B0(&qword_100021658, &unk_1000192B8);
  v30 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_10000ED70(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000F830(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = *v5;
  Hasher.init(_seed:)();
  v26 = a5;
  v11 = a4;
  ExternalDetails.hash(into:)(v28, a2, a3, a4, a5);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = (*(v10 + 48) + 32 * v14);
      v17 = *v16;
      v18 = v16[1];
      v20 = v16[2];
      v19 = v16[3];

      sub_100008874(v20, v19);
      LOBYTE(v17) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v17, v18, v20, v19, a2, a3, v11, v26);

      sub_100008970(v20, v19);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100008970(v11, v26);
    v23 = (*(v10 + 48) + 32 * v14);
    v27 = v23[1];
    *a1 = *v23;
    *(a1 + 16) = v27;

    sub_100008874(v27, *(&v27 + 1));
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28[0] = *v24;

    sub_100008874(v11, v26);
    sub_10000F9B0(a2, a3, v11, v26, v14, isUniquelyReferenced_nonNull_native);
    *v24 = v28[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v11;
    *(a1 + 24) = v26;
    return 1;
  }
}

Swift::Int sub_10000F0B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000025B0(&unk_100021610, &qword_100019288);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10000F318(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for ExchangeFallbackMatch(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  sub_1000025B0(&qword_100021650, &qword_1000192B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v6;
    v46 = v5;
    v41 = v1;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v43 = (v7 + 56);
    v44 = result;
    v18 = result + 56;
    v47 = v9;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_15:
      v26 = (*(v9 + 48) + 32 * (v23 | (v12 << 6)));
      v27 = *v26;
      v49 = v26[1];
      v50 = v27;
      Hasher.init(_seed:)();
      if (*(&v50 + 1))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v28 = *(&v49 + 1);
      if (*(&v49 + 1) >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        v29 = v49;
        sub_100008888(v49, v28);
        JSONDecoder.init()();
        sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
        v31 = v45;
        v30 = v46;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        (*v43)(v30, 0, 1, v31);
        v32 = v42;
        sub_100013700(v30, v42);
        ExchangeFallbackMatch.hash(into:)(v51);
        sub_100008970(v29, v28);
        sub_1000136A4(v32);
        v11 = v44;
      }

      result = Hasher._finalize()();
      v33 = -1 << *(v11 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      v9 = v47;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v21 = v49;
        v20 = v50;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v21 = v49;
      v20 = v50;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v22 = (*(v11 + 48) + 32 * v19);
      *v22 = v20;
      v22[1] = v21;
      ++*(v11 + 16);
      v16 = v48;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v40 = 1 << *(v9 + 32);
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    v2 = v41;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

Swift::Int sub_10000F830(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000F0B8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000FB74();
      goto LABEL_16;
    }

    sub_10000FE4C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10000F9B0(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_10000F318(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_10000FCD0();
      goto LABEL_12;
    }

    sub_100010084(v10 + 1);
  }

  v12 = *v6;
  Hasher.init(_seed:)();
  ExternalDetails.hash(into:)(v28, v9, a2, a3, a4);
  result = Hasher._finalize()();
  v13 = -1 << *(v12 + 32);
  a5 = result & ~v13;
  if ((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v14 = ~v13;
    do
    {
      v15 = (*(v12 + 48) + 32 * a5);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = v15[3];

      sub_100008874(v18, v19);
      LOBYTE(v16) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v16, v17, v18, v19, v9, a2, a3, a4);

      result = sub_100008970(v18, v19);
      if (v16)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v14;
    }

    while (((*(v12 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v20 = *v25;
  *(*v25 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = (*(v20 + 48) + 32 * a5);
  *v21 = v9;
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10000FB74()
{
  v1 = v0;
  sub_1000025B0(&unk_100021610, &qword_100019288);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_10000FCD0()
{
  v1 = v0;
  sub_1000025B0(&qword_100021650, &qword_1000192B0);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = (*(v4 + 48) + v17);
        v20 = v18[1];
        *v19 = *v18;
        v19[1] = v20;

        result = sub_100008874(v20, *(&v20 + 1));
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

Swift::Int sub_10000FE4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000025B0(&unk_100021610, &qword_100019288);
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

Swift::Int sub_100010084(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v40 - v4;
  v6 = type metadata accessor for ExchangeFallbackMatch(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  sub_1000025B0(&qword_100021650, &qword_1000192B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v6;
    v45 = v5;
    v40 = v2;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v42 = (v7 + 56);
    v43 = v9;
    v18 = result + 56;
    v46 = result;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v47 = (v16 - 1) & v16;
LABEL_15:
      v26 = (*(v9 + 48) + 32 * (v23 | (v12 << 6)));
      v27 = v26[1];
      v48 = *v26;
      v49 = v27;
      Hasher.init(_seed:)();
      v28 = *(&v49 + 1);
      if (*(&v48 + 1))
      {
        Hasher._combine(_:)(1u);

        sub_100008874(v49, v28);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
        sub_100008874(v49, v28);
      }

      if (v28 >> 60 != 15)
      {
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        v29 = v49;
        sub_100008888(v49, v28);
        JSONDecoder.init()();
        sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
        v31 = v44;
        v30 = v45;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        (*v42)(v30, 0, 1, v31);
        v32 = v41;
        sub_100013700(v30, v41);
        ExchangeFallbackMatch.hash(into:)(v50);
        sub_100008970(v29, v28);
        sub_1000136A4(v32);
        v9 = v43;
      }

      result = Hasher._finalize()();
      v11 = v46;
      v33 = -1 << *(v46 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v20 = v48;
        v21 = v49;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_33;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v20 = v48;
      v21 = v49;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v22 = (*(v11 + 48) + 32 * v19);
      *v22 = v20;
      v22[1] = v21;
      ++*(v11 + 16);
      v16 = v47;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v40;
        goto LABEL_31;
      }

      v25 = *(v13 + 8 * v12);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v47 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v11;
  }

  return result;
}

char *sub_100010590(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000105B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001071C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000105D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001082C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000105F0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100010938(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100010610(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021390, &qword_100018A30);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10001071C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_100021580, &qword_100019228);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_10001082C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000025B0(&qword_1000213E0, &qword_100019290);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_100010938(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000025B0(&qword_100021550, &qword_100019208);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000025B0(&qword_100021558, &qword_100019210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_OWORD *sub_100010A80(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000E0E8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100010C3C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10000E560(v16, a4 & 1);
    v11 = sub_10000E0E8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100008698(v22);

    return sub_100008C98(a1, v22);
  }

  else
  {
    sub_100010BD0(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_100010BD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100008C98(a4, (a5[7] + 32 * a1));
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

void *sub_100010C3C()
{
  v1 = v0;
  sub_1000025B0(&qword_1000215A0, &unk_100018A50);
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
        sub_1000089DC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100008C98(v25, (*(v4 + 56) + v22));
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

void *sub_100010DE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100010F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10000DCB0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_100010FF0(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_100008888(a3, a4);
          return sub_10000DEE0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100011158(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {

      return sub_10000C1EC(a1, a4);
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  if (v6 != *(a4 + 16))
  {
    return 0;
  }

  if (v6 && a1 != a4)
  {
    v7 = (a4 + 56);
    v8 = (a1 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v8 - 3);
      v11 = *(v8 - 2);
      v13 = *(v7 - 2);
      v19 = *(v7 - 3);
      v14 = *(v7 - 1);
      v15 = *v7;

      sub_100008874(v10, v9);

      sub_100008874(v14, v15);
      LOBYTE(v12) = _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v12, v11, v10, v9, v19, v13, v14, v15);

      sub_100008970(v14, v15);

      sub_100008970(v10, v9);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      v7 += 4;
      v8 += 4;
    }

    while (--v6);
  }

  return sub_10000C27C(a2, a5);
}

BOOL _s18ContactsPosterSync21ExchangeFallbackMatchV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_1000025B0(&qword_100021570, &qword_100019220);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = *(v12 + 56);
  sub_100015518(a1, &v26 - v13, &qword_100021410, &qword_100018AC0);
  sub_100015518(a2, &v14[v15], &qword_100021410, &qword_100018AC0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_100015518(v14, v10, &qword_100021410, &qword_100018AC0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_100015580(&qword_100021578, &type metadata accessor for PersonNameComponents, &protocol conformance descriptor for PersonNameComponents);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_100008CF0(v14, &qword_100021410, &qword_100018AC0);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_100008CF0(v14, &qword_100021570, &qword_100019220);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100008CF0(v14, &qword_100021410, &qword_100018AC0);
LABEL_10:
  v20 = type metadata accessor for ExchangeFallbackMatch(0);
  v21 = v20[5];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25 || (*v22 != *v24 || v23 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_10000C1EC(*(a1 + v20[6]), *(a2 + v20[6])) & 1) != 0 && (sub_10000C1EC(*(a1 + v20[7]), *(a2 + v20[7])))
  {
    return *(a1 + v20[8]) == *(a2 + v20[8]);
  }

  return 0;
}

BOOL _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v51 = a4;
  v52 = a7;
  v50 = a3;
  v13 = type metadata accessor for ExchangeFallbackMatch(0);
  v49 = *(v13 - 8);
  __chkstk_darwin(v13);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000025B0(&qword_100021568, &qword_100019218);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  v19 = __chkstk_darwin(v18 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v44 - v21;
  __chkstk_darwin(v20);
  v25 = &v44 - v24;
  if (a2)
  {
    if (a6)
    {
      if (a1 == a5 && a2 == a6)
      {
        goto LABEL_6;
      }

      v26 = v23;
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = v26;
      if (v27)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_6:
  v28 = v51;
  if (v51 >> 60 != 15 && a8 >> 60 != 15)
  {
    v45 = v23;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    sub_100008874(v50, v28);
    v47 = a8;
    sub_100008874(v52, a8);
    JSONDecoder.init()();
    v46 = sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v34 = v49;

    v35 = *(v34 + 56);
    v35(v25, 0, 1, v13);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v35(v22, 0, 1, v13);
    v36 = *(v15 + 48);
    sub_100015518(v25, v17, &qword_100021460, &qword_100018AE0);
    sub_100015518(v22, &v17[v36], &qword_100021460, &qword_100018AE0);
    v37 = *(v49 + 48);
    v38 = v37(v17, 1, v13);
    if (v38 == 1)
    {
      sub_100008970(v50, v51);
      sub_100008970(v52, v47);
      sub_100008CF0(v22, &qword_100021460, &qword_100018AE0);
      sub_100008CF0(v25, &qword_100021460, &qword_100018AE0);
      if (v37(&v17[v36], 1, v13) == 1)
      {
        sub_100008CF0(v17, &qword_100021460, &qword_100018AE0);
        return 1;
      }
    }

    else
    {
      v39 = v45;
      sub_100015518(v17, v45, &qword_100021460, &qword_100018AE0);
      if (v37(&v17[v36], 1, v13) != 1)
      {
        v42 = &v17[v36];
        v43 = v48;
        sub_100013700(v42, v48);
        matched = _s18ContactsPosterSync21ExchangeFallbackMatchV23__derived_struct_equalsySbAC_ACtFZ_0(v39, v43);
        sub_100008970(v50, v51);
        sub_100008970(v52, v47);
        sub_1000136A4(v43);
        sub_100008CF0(v22, &qword_100021460, &qword_100018AE0);
        sub_100008CF0(v25, &qword_100021460, &qword_100018AE0);
        sub_1000136A4(v39);
        sub_100008CF0(v17, &qword_100021460, &qword_100018AE0);
        return matched;
      }

      sub_100008970(v50, v51);
      sub_100008970(v52, v47);
      sub_100008CF0(v22, &qword_100021460, &qword_100018AE0);
      sub_100008CF0(v25, &qword_100021460, &qword_100018AE0);
      sub_1000136A4(v39);
    }

    sub_100008CF0(v17, &qword_100021568, &qword_100019218);
    return 0;
  }

  if (v51 >> 60 == 15)
  {
    if (a8 >> 60 == 15)
    {
      v31 = v50;
      sub_100008874(v50, v51);
      sub_100008874(v52, a8);
      sub_100008970(v31, v28);
      return 1;
    }
  }

  else if (a8 >> 60 != 15)
  {
    v40 = v50;
    sub_100008874(v50, v51);
    v41 = v52;
    sub_100008874(v52, a8);
    matched = sub_100010FF0(v40, v28, v41, a8);
    sub_100008970(v41, a8);
    sub_100008970(v40, v28);
    return matched;
  }

  v32 = v50;
  sub_100008874(v50, v51);
  v33 = v52;
  sub_100008874(v52, a8);
  sub_100008970(v32, v28);
  sub_100008970(v33, a8);
  return 0;
}

uint64_t _s18ContactsPosterSync10UpdatePlanO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (*(a1 + 48))
  {
    if (a2[6])
    {
      v10 = a2[4];
      v11 = a2[5];
      if (_s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v4, v5, v6, v8, *a2, a2[1], a2[2], a2[3]))
      {
        if (v7 == v10 && v9 == v11)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    return 0;
  }

  if (a2[6])
  {
    return 0;
  }

  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[4];
  v16 = a2[5];
  if ((v4 != *a2 || v5 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _s18ContactsPosterSync15ExternalDetailsV2eeoiySbAC_ACtFZ_0(v6, v8, v7, v9, v13, v14, v15, v16);
}

void *_s18ContactsPosterSync15ExchangeContextVyACSgSo14CNContactStoreCcfC_0(void *a1)
{
  v2 = [objc_opt_self() predicateForContainersWithType:2];
  v22 = 0;
  v3 = [a1 containersMatchingPredicate:v2 error:&v22];
  v4 = v22;
  if (!v3)
  {
    v20 = v22;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    return 0;
  }

  v5 = v3;
  sub_100008CA8(0, &qword_100021638, CNContainer_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v4;

  if (v6 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:

    return &_swiftEmptyArrayStorage;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v22 = &_swiftEmptyArrayStorage;
  sub_100010590(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
  }

  v9 = 0;
  v10 = v22;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    v13 = [v12 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v22 = v10;
    v18 = v10[2];
    v17 = v10[3];
    if (v18 >= v17 >> 1)
    {
      sub_100010590((v17 > 1), v18 + 1, 1);
      v10 = v22;
    }

    ++v9;
    v10[2] = v18 + 1;
    v19 = &v10[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
  }

  while (v8 != v9);

  return v10;
}

void *sub_1000120A0(void *a1)
{
  v3 = [a1 newBackgroundContext];
  v10 = &_swiftEmptySetSingleton;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (v1)
  {

    return v2;
  }

  v4 = v10;
  v5 = v10[2];
  if (!v5)
  {

    return &_swiftEmptyArrayStorage;
  }

  v2 = sub_100007B54(v10[2], 0);
  v8 = sub_100010DE0(&v9, v2 + 4, v5, v4);
  v6 = v9;

  result = sub_100015854(v6);
  if (v8 == v5)
  {

    return v2;
  }

  __break(1u);
  return result;
}

void *sub_1000121EC(void *a1)
{
  v3 = [a1 newBackgroundContext];
  NSManagedObjectContext.performAndWait<A>(_:)();

  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }
}

void *sub_100012298(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  for (i = (a1 + 32); ; i += 2)
  {
    v23 = i[1];
    v24 = *i;
    v4 = *(i + 1);

    sub_100008874(v23, *(&v23 + 1));

    v6 = sub_10000E1A4(v24, v4);
    v7 = _swiftEmptyDictionarySingleton[2];
    v8 = (v5 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      break;
    }

    v10 = v5;
    if (_swiftEmptyDictionarySingleton[3] < v9)
    {
      sub_10000E818(v9, 1);
      v11 = sub_10000E1A4(v24, v4);
      if ((v10 & 1) != (v12 & 1))
      {
        goto LABEL_19;
      }

      v6 = v11;
    }

    if (v10)
    {

      v13 = _swiftEmptyDictionarySingleton[7];
      v14 = *(v13 + 8 * v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v13 + 8 * v6) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100007A48(0, *(v14 + 2) + 1, 1, v14);
        *(v13 + 8 * v6) = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_100007A48((v16 > 1), v17 + 1, 1, v14);
        *(v13 + 8 * v6) = v14;
      }

      *(v14 + 2) = v17 + 1;
      v3 = &v14[32 * v17];
      *(v3 + 2) = v24;
      *(v3 + 3) = v23;
    }

    else
    {
      sub_1000025B0(&qword_1000213E0, &qword_100019290);
      v18 = swift_allocObject();
      v18[1] = xmmword_1000189B0;
      v18[2] = v24;
      v18[3] = v23;
      _swiftEmptyDictionarySingleton[(v6 >> 6) + 8] |= 1 << v6;
      *(_swiftEmptyDictionarySingleton[6] + 16 * v6) = v24;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v6) = v18;
      v19 = _swiftEmptyDictionarySingleton[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_18;
      }

      _swiftEmptyDictionarySingleton[2] = v21;
    }

    if (!--v1)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_1000025B0(&qword_100021620, &qword_100019298);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1000124D8(uint64_t a1, void *a2, uint64_t a3)
{
  v93 = a3;
  v95 = a2;
  v5 = sub_1000025B0(&qword_100021460, &qword_100018AE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v86 - v6;
  v8 = type metadata accessor for ExchangeFallbackMatch(0);
  *&v102 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return &_swiftEmptyArrayStorage;
  }

  v99 = *(a1 + 16);
  v89 = v11;
  v94 = v9;
  v97 = v7;

  *&v103 = sub_100012298(v12);
  v101 = v3;

  sub_1000025B0(&qword_100021600, &unk_100019270);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100018AA0;
  v14 = CNContactExternalUUIDKey;
  *(v13 + 32) = CNContactIdentifierKey;
  *(v13 + 40) = v14;
  v15 = CNContactExternalIdentifierKey;
  *(v13 + 48) = CNContactExternalIdentifierKey;
  v16 = objc_allocWithZone(CNContactFetchRequest);
  v17 = CNContactIdentifierKey;
  v18 = v14;
  v19 = v15;
  sub_1000025B0(&qword_100021608, &qword_100019280);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v90 = [v16 initWithKeysToFetch:isa];

  v21 = 0;
  v96 = a1 + 32;
  v22 = &_swiftEmptyArrayStorage;
LABEL_3:
  v23 = (a1 + 32 * v21);
  while (v99 != v21)
  {
    if (v21 >= v99)
    {
      __break(1u);
LABEL_48:
      __break(1u);
    }

    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_48;
    }

    v25 = v23[5];
    ++v21;
    v23 += 4;
    if (v25)
    {
      v26 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_10000793C(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_10000793C((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[16 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v21 = v24;
      goto LABEL_3;
    }
  }

  v30 = objc_opt_self();
  v31 = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 predicateForContactsMatchingExternalUUIDs:v31];

  v33 = v90;
  [v90 setPredicate:v32];

  v34 = v33;
  [v33 setUnifyResults:0];
  v35 = swift_allocObject();
  *(v35 + 16) = &_swiftEmptyArrayStorage;
  v91 = (v35 + 16);
  v36 = swift_allocObject();
  *(v36 + 16) = &_swiftEmptySetSingleton;
  v98 = v36 + 16;
  v37 = swift_allocObject();
  v37[2] = v103;
  v37[3] = v36;
  v37[4] = v35;
  aBlock[4] = sub_10001574C;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000A7F8;
  aBlock[3] = &unk_10001D1F0;
  v38 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(v31) = [v95 enumerateNonUnifiedContactsWithFetchRequest:v33 error:aBlock usingBlock:v38];
  _Block_release(v38);
  if (v31)
  {
    v86 = v36;
    v87 = v35;
    v39 = *(v93 + 16);
    v40 = aBlock[0];
    if (v39)
    {
      swift_beginAccess();
      v41 = 0;
      v92 = (v102 + 56);
      v42 = v101;
      v43 = v97;
      v44 = v96;
      v45 = v99;
      do
      {
        v46 = (v44 + 32 * v41);
        v102 = *v46;
        v47 = *(&v102 + 1);
        if (!*(&v102 + 1))
        {
          goto LABEL_18;
        }

        v48 = v46[1];
        v49 = *v98;
        v50 = *(*v98 + 16);
        v103 = v48;
        v51 = *(&v48 + 1);
        if (v50)
        {
          v101 = v42;
          Hasher.init(_seed:)();

          v52 = v103;
          v100 = v51;
          sub_100008874(v103, v51);

          v53 = v102;
          String.hash(into:)();
          v54 = Hasher._finalize()();
          v55 = -1 << *(v49 + 32);
          v56 = v54 & ~v55;
          if ((*(v49 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            v57 = ~v55;
            while (1)
            {
              v58 = (*(v49 + 48) + 16 * v56);
              v59 = *v58 == v53 && v47 == v58[1];
              if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v56 = (v56 + 1) & v57;
              if (((*(v49 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            sub_100008970(v52, v100);

            v42 = v101;
LABEL_41:
            v43 = v97;
            v44 = v96;
            goto LABEL_17;
          }

LABEL_29:

          v51 = v100;
          v42 = v101;
          v43 = v97;
          v44 = v96;
        }

        else
        {

          sub_100008874(v103, v51);
        }

        if (v51 >> 60 == 15)
        {
          swift_bridgeObjectRelease_n();
          sub_100008970(v103, v51);
        }

        else
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          v60 = v42;
          v61 = v103;
          sub_100008888(v103, v51);
          JSONDecoder.init()();
          sub_100015580(&qword_100021400, type metadata accessor for ExchangeFallbackMatch, &protocol conformance descriptor for ExchangeFallbackMatch);
          v62 = v94;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v60)
          {
            v100 = v51;
            v101 = 0;

            (*v92)(v43, 0, 1, v62);
            v63 = v43;
            v64 = v89;
            sub_100013700(v63, v89);
            v65 = objc_opt_self();
            v66 = sub_10000B7A4();
            sub_100009060(v66);

            v67 = Dictionary._bridgeToObjectiveC()().super.isa;

            sub_10000BC90(v93);
            v68 = Array._bridgeToObjectiveC()().super.isa;

            v69 = [v65 exactMatchForNameAndAtLeastOneHandleFromPayload:v67 containerIdentifiers:v68 contactStore:v95];

            if (!v69)
            {
              sub_1000136A4(v64);

              v82 = v100;
              sub_100008970(v61, v100);

              sub_100008970(v61, v82);
              v43 = v97;
              v44 = v96;
              v42 = v101;
              goto LABEL_17;
            }

            v70 = [v69 identifier];
            v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v72 = v71;

            sub_1000136A4(v64);
            v73 = v91;
            swift_beginAccess();
            v74 = *v73;

            v75 = v61;
            sub_100008874(v61, v100);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v73 = v74;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v74 = sub_100007818(0, *(v74 + 2) + 1, 1, v74);
              *v91 = v74;
            }

            v42 = v101;
            v78 = *(v74 + 2);
            v77 = *(v74 + 3);
            v79 = v103;
            if (v78 >= v77 >> 1)
            {
              v83 = sub_100007818((v77 > 1), v78 + 1, 1, v74);
              v79 = v103;
              v74 = v83;
            }

            *(v74 + 2) = v78 + 1;
            v80 = &v74[56 * v78];
            *(v80 + 4) = v88;
            *(v80 + 5) = v72;
            *(v80 + 4) = v79;
            *(v80 + 3) = v102;
            v80[80] = 0;
            *v91 = v74;
            swift_endAccess();
            swift_beginAccess();
            sub_10000ED70(&v104, v102, v47);
            swift_endAccess();
            v81 = v100;
            sub_100008970(v75, v100);

            sub_100008970(v75, v81);

            goto LABEL_41;
          }

          sub_100008970(v61, v51);

          sub_100008970(v61, v51);

          (*v92)(v43, 1, 1, v62);
          sub_100008CF0(v43, &qword_100021460, &qword_100018AE0);
          v42 = 0;
        }

LABEL_17:
        v45 = v99;
LABEL_18:
        ++v41;
      }

      while (v41 != v45);
    }

    swift_beginAccess();
    v84 = *(v87 + 16);
  }

  else
  {
    v84 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v84;
}

void *sub_100013078(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = &_swiftEmptyArrayStorage;
  if (*(a1 + 16))
  {
    sub_1000025B0(&qword_100021600, &unk_100019270);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100018AA0;
    v7 = CNContactExternalUUIDKey;
    *(v6 + 32) = CNContactIdentifierKey;
    *(v6 + 40) = v7;
    v8 = CNContactExternalIdentifierKey;
    *(v6 + 48) = CNContactExternalIdentifierKey;
    v30 = v6;
    if (*(a3 + 16))
    {
      v9 = objc_opt_self();
      v10 = CNContactIdentifierKey;
      v11 = v7;
      v12 = v8;
      v13 = [v9 descriptorForRequiredKeys];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      v14 = CNContactIdentifierKey;
      v15 = v7;
      v16 = v8;
    }

    v17 = objc_allocWithZone(CNContactFetchRequest);
    sub_1000025B0(&qword_100021608, &qword_100019280);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithKeysToFetch:isa];

    v20 = objc_opt_self();
    v21 = Array._bridgeToObjectiveC()().super.isa;
    v22 = [v20 predicateForContactsWithIdentifiers:v21];

    [v19 setPredicate:v22];
    [v19 setUnifyResults:0];
    v23 = swift_allocObject();
    *(v23 + 16) = &_swiftEmptyArrayStorage;
    v24 = swift_allocObject();
    v24[2] = a3;
    v24[3] = a2;
    v24[4] = v23;
    aBlock[4] = sub_1000157B8;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000A7F8;
    aBlock[3] = &unk_10001D240;
    v3 = _Block_copy(aBlock);

    v25 = a2;

    aBlock[0] = 0;
    v26 = [v25 enumerateNonUnifiedContactsWithFetchRequest:v19 error:aBlock usingBlock:v3];
    _Block_release(v3);
    if (v26)
    {
      v27 = aBlock[0];

      swift_beginAccess();
      v3 = *(v23 + 16);
    }

    else
    {
      v28 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return v3;
}

uint64_t type metadata accessor for ExchangeFallbackMatch(uint64_t a1)
{
  result = qword_1000214D8;
  if (!qword_1000214D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1000134F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100013538()
{
  result = qword_100021428;
  if (!qword_100021428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021428);
  }

  return result;
}

uint64_t sub_10001358C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000135D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001358C(&qword_100021418, &qword_100018AC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExchangeFallbackMatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000136A4(uint64_t a1)
{
  v2 = type metadata accessor for ExchangeFallbackMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExchangeFallbackMatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000137B0()
{
  result = qword_100021470;
  if (!qword_100021470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021470);
  }

  return result;
}

unint64_t sub_100013808()
{
  result = qword_100021478;
  if (!qword_100021478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021478);
  }

  return result;
}

uint64_t sub_100013880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001395C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000025B0(&qword_100021410, &qword_100018AC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100013A20(uint64_t a1)
{
  sub_100013B04(319);
  if (v1 <= 0x3F)
  {
    sub_100013B5C(319, &qword_1000214F0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100013B5C(319, &unk_1000214F8, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100013B04(uint64_t a1)
{
  if (!qword_1000214E8)
  {
    type metadata accessor for PersonNameComponents();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1000214E8);
    }
  }
}

void sub_100013B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for String);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100013BC0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100013BDC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100013C04(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013C10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100013C6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CleanupType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CleanupType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100013E50(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013E64(uint64_t a1, unsigned int a2)
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

uint64_t sub_100013EAC(uint64_t result, unsigned int a2, unsigned int a3)
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