int main(int argc, const char **argv, const char **envp)
{
  qword_1000080F8 = 0;
  v3 = objc_autoreleasePoolPush();
  sub_1000011B4();
  objc_autoreleasePoolPop(v3);
  return 0;
}

void sub_1000011B4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  nullsub_1();
  if (MKBGetDeviceLockState() == 3)
  {
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100001FEC(v4, static Logger.daemon);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Key bag disabled, proceeding as if the device was unlocked since boot", v7, 2u);
    }

    goto LABEL_10;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
LABEL_10:
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001FEC(v8, static Logger.daemon);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Device was unlocked since boot, starting daemon", v11, 2u);
    }

    sub_10000195C();
    goto LABEL_29;
  }

  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100001FEC(v12, static Logger.daemon);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Device wasn't unlocked since boot, waiting for first unlock", v15, 2u);
  }

  sub_100002024();
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.utility(_:), v0);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  out_token = -1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Registering for first unlock notification", v19, 2u);
  }

  v42 = sub_100001B54;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100001C24;
  v41 = &unk_100004258;
  v20 = _Block_copy(&aBlock);
  v21 = v16;
  v22 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v21, v20);
  _Block_release(v20);
  if (v22 || out_token == -1)
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_35;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Failed to register for first unlock notification";
    goto LABEL_34;
  }

  v37 = -1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Registering for lock status notification", v25, 2u);
  }

  v42 = sub_100001C78;
  v43 = 0;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100001C24;
  v41 = &unk_100004280;
  v26 = _Block_copy(&aBlock);
  v27 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v37, v21, v26);
  _Block_release(v26);

  if (v27 || v37 == -1)
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_35;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Failed to register for lock status notification";
LABEL_34:
    _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 2u);

LABEL_35:

    exit(1);
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Device was unlocked already, exiting", v35, 2u);
    }

    exit(0);
  }

LABEL_29:
  v28 = [objc_opt_self() mainRunLoop];
  [v28 run];
}

uint64_t sub_10000195C()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Starting daemon", v3, 2u);
  }

  type metadata accessor for Daemon();
  swift_allocObject();
  qword_1000080F8 = Daemon.init()();

  Daemon.run()();
  v4 = [objc_opt_self() defaultCenter];
  v8[4] = sub_100001E28;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100001EF8;
  v8[3] = &unk_1000042A8;
  v5 = _Block_copy(v8);
  v6 = [v4 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  return swift_unknownObjectRelease();
}

void sub_100001B54()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Received first unlock notification, exiting", v3, 2u);
  }

  exit(0);
}

uint64_t sub_100001C24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_100001C78()
{
  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    if (qword_100008030 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001FEC(v3, static Logger.daemon);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received lock status notification: device was unlocked, exiting", v6, 2u);
    }

    exit(0);
  }

  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received lock status notification: device remains locked since boot", v2, 2u);
  }
}

void sub_100001E28()
{
  if (qword_100008030 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001FEC(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Current locale did change, exiting", v3, 2u);
  }

  exit(0);
}

uint64_t sub_100001EF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100001FEC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_100002024()
{
  result = qword_1000080F0;
  if (!qword_1000080F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000080F0);
  }

  return result;
}

uint64_t sub_100002070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000023E8()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.orderExtractionDiagnosticExtension);
  sub_100001FEC(v0, static Logger.orderExtractionDiagnosticExtension);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002518()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.diagnosticExtension);
  sub_100001FEC(v0, static Logger.diagnosticExtension);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002928()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.backgroundDelivery);
  sub_100001FEC(v0, static Logger.backgroundDelivery);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002A60()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectOfflineLab);
  sub_100001FEC(v0, static Logger.bankConnectOfflineLab);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002B9C()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectService);
  sub_100001FEC(v0, static Logger.bankConnectService);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100002F00(v5, a2);
  sub_100001FEC(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002D4C()
{
  v0 = type metadata accessor for Logger();
  sub_100002F00(v0, static Logger.bankConnectWidget);
  sub_100001FEC(v0, static Logger.bankConnectWidget);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002DF0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();

  return sub_100001FEC(v4, a2);
}

uint64_t sub_100002E68@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100001FEC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_100002F00(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}