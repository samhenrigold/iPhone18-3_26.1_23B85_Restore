BOOL sub_10011A500(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 1;
  v11 = *(v8 + 28);
  v12 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
  v13 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  LOBYTE(v12) = sub_10011E628(v10);
  sub_10002178C(v10, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  if (v12)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = a3;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32[0] = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_10000D01C(*&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v32);
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s - reminderNotification is already present. Not showing alert", v18, 0xCu);
      sub_100004984(v19);
    }

    goto LABEL_13;
  }

  v20 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
  swift_beginAccess();
  sub_100005F04(&a3[v20], v6, &unk_1005AB3F0, &qword_1004C4BF0);
  v21 = type metadata accessor for SecureLocation(0);
  LODWORD(v20) = (*(*(v21 - 8) + 48))(v6, 1, v21);
  sub_100002CE0(v6, &unk_1005AB3F0, &qword_1004C4BF0);
  if (v20 != 1)
  {
    v16 = *&a3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold];
    CurrentLocationMonitor.requestLocation()();
LABEL_13:

    goto LABEL_14;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005DFB98);
  v23 = a3;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v31);
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - no last published location to compare distance threshold", v26, 0xCu);
    sub_100004984(v27);
  }

  v28 = type metadata accessor for Transaction();
  __chkstk_darwin(v28);
  *(&v30 - 2) = v23;
  *(&v30 - 8) = 0;
  static Transaction.named<A>(_:with:)();
LABEL_14:
  Transaction.capture()();
  return sub_10013AD7C();
}

uint64_t sub_10011A9BC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    if (qword_1005A7EE8 == -1)
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
  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFB98);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(*&v8[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v8[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s - scheduling notification timer", v11, 0xCu);
    sub_100004984(v12);
  }

  v13 = *&v8[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer];
  v14 = type metadata accessor for Transaction();
  __chkstk_darwin(v14);
  v16[-2] = v8;
  v16[-1] = v13;

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_10011AC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  aBlock[4] = sub_10011EC0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590588;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

uint64_t sub_10011AF68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  aBlock[4] = sub_10011EC14;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005905D8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v3);
  (*(v6 + 8))(v8, v18);
}

void *sub_10011B320(void *result)
{
  if (result)
  {
    return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  return result;
}

uint64_t sub_10011B380(uint64_t a1, char *a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  aBlock[4] = sub_10011E148;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005903F8;
  v13 = _Block_copy(aBlock);

  v14 = a2;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_10011B674(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v6 - 8);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v14 = __chkstk_darwin(v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v66 - v17;
  if ((sub_100118A5C() & 1) == 0 && (a3 & 1) == 0)
  {
    if (qword_1005A7EE8 == -1)
    {
LABEL_4:
      v19 = type metadata accessor for Logger();
      sub_10000A6F0(v19, qword_1005DFB98);
      v20 = a2;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_10000D01C(*&v20[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v20[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s - conditions not satisfied for posting user notification", v23, 0xCu);
        sub_100004984(v24);
      }

      goto LABEL_28;
    }

LABEL_30:
    swift_once();
    goto LABEL_4;
  }

  v67 = v8;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v26 = sub_10000A6F0(v25, qword_1005DFB98);
  v27 = a2;
  v66[0] = v26;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v66[1] = a1;
  v68 = v27;
  v69 = v18;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v31 = 136446210;
    *(v31 + 4) = sub_10000D01C(*&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s - posting publish reminder notification", v31, 0xCu);
    sub_100004984(v32);

    v18 = v69;
  }

  *v18 = 1;
  v33 = *(v13 + 20);
  v34 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
  v35 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v35 - 8) + 104))(&v18[v33], v34, v35);
  v36 = v67;
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  sub_100021534(v18, v16, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v37 = objc_allocWithZone(UNUserNotificationCenter);
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 initWithBundleIdentifier:v38];

  v40 = sub_100292238(v16);
  sub_10011DC64();
  UUID.uuidString.getter();
  (*(v10 + 8))(v12, v9);
  v41 = v40;
  v42 = String._bridgeToObjectiveC()();

  v43 = [objc_opt_self() requestWithIdentifier:v42 content:v41 trigger:0 destinations:7];

  [v39 addNotificationRequest:v43 withCompletionHandler:0];
  sub_10002178C(v16, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v44 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts;
  v45 = v68;
  v46 = *&v68[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  a2 = type metadata accessor for Transaction();
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  *(v47 + 24) = 0;
  static Transaction.asyncTask(name:block:)();

  v48 = *&v45[v44];
  v49 = v48 + 1;
  if (__OFADD__(v48, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  *&v45[v44] = v49;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v50 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v50);
  v51 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_100021534(v50 + *(v51 + 28), v36, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v50);

  v52 = *(v36 + 96);
  sub_10002178C(v36, type metadata accessor for SecureLocationsConfig);
  v53 = v69;
  if (v49 >= v52)
  {
    goto LABEL_26;
  }

  v54 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer;
  v55 = *&v45[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer];
  if (!v55)
  {
LABEL_23:
    v59 = v45;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = v53;
      v64 = swift_slowAlloc();
      aBlock[0] = v64;
      *v62 = 136446210;
      *(v62 + 4) = sub_10000D01C(*&v59[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v59[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v60, v61, "%{public}s - scheduled next reminder alert", v62, 0xCu);
      sub_100004984(v64);

      v65 = v63;
LABEL_27:
      sub_10002178C(v65, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
LABEL_28:
      Transaction.capture()();
      return;
    }

LABEL_26:
    v65 = v53;
    goto LABEL_27;
  }

  v56 = *(v55 + 16);
  v57 = swift_allocObject();
  *(v57 + 16) = sub_10011E210;
  *(v57 + 24) = v55;
  aBlock[4] = sub_1000C7A78;
  aBlock[5] = v57;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100590470;
  v58 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v56, v58);
  _Block_release(v58);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if ((v56 & 1) == 0)
  {
    v53 = v69;
    if (*&v45[v54])
    {

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_10011C040()
{
  v1 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  __chkstk_darwin(v1);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  swift_beginAccess();
  sub_100022364(v6, v0 + v8, &unk_1005AE5B0, &qword_1004C32F0);
  swift_endAccess();
  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer);
  if (v9 && (v10 = *(v9 + 16), v11 = swift_allocObject(), *(v11 + 16) = sub_10011FAE4, *(v11 + 24) = v9, aBlock[4] = sub_1000CAA0C, aBlock[5] = v11, aBlock[0] = _NSConcreteStackBlock, aBlock[1] = 1107296256, aBlock[2] = sub_10013EC94, aBlock[3] = &unk_100590538, v12 = _Block_copy(aBlock), swift_retain_n(), , , dispatch_sync(v10, v12), _Block_release(v12), LOBYTE(v10) = swift_isEscapingClosureAtFileLocation(), , result = , (v10 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts) = 1;
    *v3 = 1;
    v14 = *(v1 + 20);
    v15 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
    v16 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v16 - 8) + 104))(&v3[v14], v15, v16);
    sub_10011E234(v3);
    return sub_10002178C(v3, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  }

  return result;
}

id sub_10011C368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureLocationsStewieManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10011C574(uint64_t a1)
{
  sub_10011C74C(319, &qword_1005AB268, &type metadata accessor for SecureLocationsStewie.ServiceState);
  if (v1 <= 0x3F)
  {
    sub_10011C74C(319, &unk_1005AB270, type metadata accessor for SecureLocation);
    if (v2 <= 0x3F)
    {
      sub_10011C74C(319, &qword_1005AE6B0, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10011C74C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10011C848(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1005A7EE8 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = v1;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v20);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - stateChanged %@", v14, 0x16u);
    sub_100002CE0(v15, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v16);
  }

  return sub_100116DE4(v11, 0);
}

void sub_10011CB4C(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v2 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie;
    v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = (a1 & 4) != 0;
    if (qword_1005A7EE8 == -1)
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
  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005DFB98);
  v12 = v3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(*&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v27);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v3[v2];

    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s - connectedServicesChanged: %{BOOL}d", v15, 0x12u);
    sub_100004984(v16);
  }

  else
  {
  }

  v17 = v3[v2];
  v18 = v12;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  if (v17 == 1)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_10000D01C(*&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v27);
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - findMy is part of connected services. we can publish", v22, 0xCu);
      sub_100004984(v23);
    }

    sub_10010CD7C();
  }

  else
  {
    if (v21)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_10000D01C(*&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v18[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v27);
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s - findMy is not connected", v24, 0xCu);
      sub_100004984(v25);
    }

    sub_1001126B4();
  }
}

uint64_t sub_10011CF88()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000D01C(*&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - supportChanged notification ", v5, 0xCu);
    sub_100004984(v6);
  }

  sub_100108CCC();
  return sub_10001D6F0();
}

void sub_10011D13C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (*(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold) == a1)
    {
      v5 = type metadata accessor for Transaction();
      __chkstk_darwin(v5);
      v6 = a3;
      static Transaction.named<A>(_:with:)();
    }
  }
}

uint64_t sub_10011D210(uint64_t a1, char *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  aBlock[4] = sub_10011E11C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005903A8;
  v13 = _Block_copy(aBlock);

  v14 = a2;
  v15 = a3;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v19 + 8))(v8, v6);
  (*(v9 + 8))(v11, v18);
}

void sub_10011D508(uint64_t a1, char *a2, void *a3)
{
  v40 = a1;
  v5 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for SecureLocation(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
  swift_beginAccess();
  sub_100005F04(&a2[v15], v10, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100002CE0(v10, &unk_1005AB3F0, &qword_1004C4BF0);
    v16 = type metadata accessor for Transaction();
    __chkstk_darwin(v16);
    *(&v40 - 2) = a2;
    *(&v40 - 8) = 0;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    sub_10008DB80(v10, v14);
    v18 = v14[2];
    v17 = v14[3];
    v20 = v14[7];
    v19 = v14[8];
    v22 = v14[4];
    v21 = v14[5];
    v23 = v14[6];
    v24 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v26 = [v24 initWithCoordinate:isa altitude:v17 horizontalAccuracy:v18 verticalAccuracy:v19 course:v21 speed:v22 timestamp:{v20, v23, v40}];

    [a3 distanceFromLocation:v26];
    v28 = v27;
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v29 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v29);
    v30 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_100021534(v29 + *(v30 + 28), v7, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v29);

    v31 = v7[14];
    sub_10002178C(v7, type metadata accessor for SecureLocationsConfig);
    if (v31 <= v28)
    {
      v38 = type metadata accessor for Transaction();
      __chkstk_darwin(v38);
      *(&v40 - 2) = a2;
      *(&v40 - 8) = 0;
      static Transaction.named<A>(_:with:)();
      v39 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold];
      CurrentLocationMonitor.stopMonitor()();
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = a2;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v41 = v37;
        *v36 = 136446722;
        *(v36 + 4) = sub_10000D01C(*&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v41);
        *(v36 + 12) = 2048;
        *(v36 + 14) = v28;
        *(v36 + 22) = 2048;
        *(v36 + 24) = v31;
        _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s - not posting publish reminder notification. distanceMoved %f is less than configThreshold %f", v36, 0x20u);
        sub_100004984(v37);
      }
    }

    sub_10002178C(v14, type metadata accessor for SecureLocation);
  }

  Transaction.capture()();
}

id sub_10011DAA4()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    MobileGestalt_get_wapiCapability();

    (*(v1 + 104))(v3, enum case for LocalizationUtility.Table.default(_:), v0);
    v6 = static LocalizationUtility.localizedString(key:table:)();
    (*(v1 + 8))(v3, v0);
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011DBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for LocalUserNotificationCategory();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10011DC64()
{
  v0 = type metadata accessor for LocalUserNotificationCategory();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:), v0);
  LocalUserNotificationCategory.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v4 = String.utf8Data.getter();
  v6 = v5;

  v8[0] = v4;
  v8[1] = v6;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  return sub_1000049D0(v4, v6);
}

uint64_t sub_10011DDB0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004B564(&unk_1005AB410, qword_1004C53E0);
  swift_allocObject();
  *(v1 + 24) = DispatchSpecificKey.init()();
  *v7 = a1;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v8 = a1;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  OS_dispatch_queue.getSpecific<A>(key:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    *(v2 + 16) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v2;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10011E8F8;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1000CAA0C;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013EC94;
    aBlock[3] = &unk_1005904E8;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    dispatch_sync(v12, v11);

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10011E09C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10011E174()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1000D15E8(v2, v3);
}

char *sub_10011E234(uint64_t a1)
{
  v31 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v32 = &off_100590F10;
  v2 = sub_10000331C(v30);
  sub_100021534(a1, v2, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v3 = v31;
  v4 = v32;
  sub_100011AEC(v30, v31);
  (v4[12])(v3, v4);
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [v7 deliveredNotifications];
  sub_1000545A4(0, &unk_1005AB490, UNNotification_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28[2] = v30;
  v10 = sub_10020D474(sub_10011EBD0, v28, v9);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 removeDeliveredNotificationsWithIdentifiers:isa];

    return sub_100004984(v30);
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v29 = _swiftEmptyArrayStorage;
  result = sub_10002B3C0(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v27 = v7;
    v14 = 0;
    v15 = v29;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v17 request];
      v19 = [v18 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v29 = v15;
      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_10002B3C0((v23 > 1), v24 + 1, 1);
        v15 = v29;
      }

      ++v14;
      v15[2] = v24 + 1;
      v25 = &v15[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v12 != v14);

    v7 = v27;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_10011E568()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initWithData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

BOOL sub_10011E628(uint64_t a1)
{
  v15 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v16 = &off_100590F10;
  v2 = sub_10000331C(v14);
  sub_100021534(a1, v2, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v3 = v15;
  v4 = v16;
  sub_100011AEC(v14, v15);
  (v4[12])(v3, v4);
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [v7 deliveredNotifications];
  sub_1000545A4(0, &unk_1005AB490, UNNotification_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = v14;
  v10 = sub_10020D474(sub_10011EBD0, v13, v9);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100004984(v14);
  return v11 != 0;
}

void sub_10011E810()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Not supported on this platform", v2, 2u);
  }
}

void sub_10011E934(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_1005A7EE8 == -1)
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
  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  v10 = v1;
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v18);
    *(v13 + 12) = 2080;
    v17 = a1;
    swift_unknownObjectRetain();
    sub_10004B564(&unk_1005AB480, &qword_1004C53F8);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, &v18);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s - Anomalous - we are not expecting to receive any message %s", v13, 0x16u);
    swift_arrayDestroy();
  }
}

double sub_10011EC54@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(v7);
  if (!v2)
  {
    v5 = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    *(a1 + 32) = v5;
  }

  return result;
}

uint64_t sub_10011ECA0(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100023D38(a1, v6, v7, v1 + v5);
}

uint64_t sub_10011ED90()
{
  v1 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10011EE54(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_100023D38(a1, v6, v7, v1 + v5);
}

uint64_t sub_10011F030(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_10011F068()
{
  v1 = *(sub_10004B564(&unk_1005AB4C0, &qword_1004C3440) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10011F108()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10011F1A0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10011F230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100110148(a1, v4, v5, v7, v6);
}

uint64_t sub_10011F2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100110918(a1, v4, v5, v6, v7);
}

uint64_t sub_10011F3D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1000D0FF4(v2);
}

uint64_t sub_10011F46C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1000D0FF4(v2);
}

uint64_t sub_10011F528(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_10004B564(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}

uint64_t sub_10011F5C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v7 = *(sub_10004B564(a1, a2) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);

  v11 = a3(0);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v9, 1, v11))
  {
    (*(v12 + 8))(v4 + v9, v11);
  }

  v13 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  a4(*(v4 + v13));

  return _swift_deallocObject(v4, v13 + 8, v8 | 7);
}

void sub_10011F704(uint64_t a1)
{
  v3 = *(sub_10004B564(&qword_1005A9F00, &qword_1004C3448) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_10010B83C(a1, v4, v5);
}

uint64_t sub_10011F7CC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10011F820(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SecureLocation(0);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_100104094(a1, a2, v5, v6);
}

void sub_10011F8C0()
{
  v1 = *(type metadata accessor for SecureLocation(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_10010C7B0(v2, v3, v4);
}

uint64_t sub_10011F948()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011F9DC(uint64_t a1)
{
  result = type metadata accessor for LocalUserNotificationCategory();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10011FBA8()
{
  v1 = 0x746867696C666E69;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x676E69766F6D6572;
  }

  if (*v0)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10011FC24()
{
  v1 = 0xE900000000000064;
  _StringGuts.grow(_:)(31);

  v2 = type metadata accessor for SecureLocationsSubscription(0);
  type metadata accessor for Date();
  sub_1001233CC(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x2065646F6D20;
  v4._object = 0xE600000000000000;
  String.append(_:)(v4);
  v5 = *(v0 + *(v2 + 24));
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = 0xE500000000000000;
      v7 = 0x72656E776FLL;
      goto LABEL_15;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        v6 = 0x80000001004DDB80;
        v7 = 0xD000000000000013;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v6 = 0xEE00657669746361;
    v7 = 0x6F725072656E776FLL;
  }

  else
  {
    if (!v5)
    {
      v6 = 0xE900000000000065;
      v7 = 0x76697463616F7270;
      goto LABEL_15;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 0xE400000000000000;
        v7 = 1702259052;
        goto LABEL_15;
      }

LABEL_12:
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    }

    v6 = 0xE700000000000000;
    v7 = 0x776F6C6C616873;
  }

LABEL_15:
  v8 = v6;
  String.append(_:)(*&v7);

  v9._countAndFlagsBits = 0x20657461747320;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  if (*(v0 + *(v2 + 28)) > 1u)
  {
    if (*(v0 + *(v2 + 28)) == 2)
    {
      v1 = 0xE600000000000000;
      v10 = 0x64656C696166;
    }

    else
    {
      v1 = 0xE800000000000000;
      v10 = 0x676E69766F6D6572;
    }
  }

  else if (*(v0 + *(v2 + 28)))
  {
    v10 = 0x6574656C706D6F63;
  }

  else
  {
    v1 = 0xE800000000000000;
    v10 = 0x746867696C666E69;
  }

  v11 = v1;
  String.append(_:)(*&v10);

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0x617453656D69745BLL;
}

uint64_t sub_10011FED8()
{
  v1 = 0xE900000000000064;
  _StringGuts.grow(_:)(43);

  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x617453656D697420;
  v2._object = 0xEB0000000020706DLL;
  String.append(_:)(v2);
  v3 = type metadata accessor for SecureLocationsSubscription(0);
  type metadata accessor for Date();
  sub_1001233CC(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x2065646F6D20;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  v6 = *(&v0->_countAndFlagsBits + *(v3 + 24));
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = 0xE500000000000000;
      v8 = 0x72656E776FLL;
      goto LABEL_15;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        v7 = 0x80000001004DDB80;
        v8 = 0xD000000000000013;
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v7 = 0xEE00657669746361;
    v8 = 0x6F725072656E776FLL;
  }

  else
  {
    if (!v6)
    {
      v7 = 0xE900000000000065;
      v8 = 0x76697463616F7270;
      goto LABEL_15;
    }

    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = 0xE400000000000000;
        v8 = 1702259052;
        goto LABEL_15;
      }

LABEL_12:
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      goto LABEL_15;
    }

    v7 = 0xE700000000000000;
    v8 = 0x776F6C6C616873;
  }

LABEL_15:
  v9 = v7;
  String.append(_:)(*&v8);

  v10._countAndFlagsBits = 0x20657461747320;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  if (*(&v0->_countAndFlagsBits + *(v3 + 28)) > 1u)
  {
    if (*(&v0->_countAndFlagsBits + *(v3 + 28)) == 2)
    {
      v1 = 0xE600000000000000;
      v11 = 0x64656C696166;
    }

    else
    {
      v1 = 0xE800000000000000;
      v11 = 0x676E69766F6D6572;
    }
  }

  else if (*(&v0->_countAndFlagsBits + *(v3 + 28)))
  {
    v11 = 0x6574656C706D6F63;
  }

  else
  {
    v1 = 0xE800000000000000;
    v11 = 0x746867696C666E69;
  }

  v12 = v1;
  String.append(_:)(*&v11);

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0x49794D646E69665BLL;
}

void sub_1001201C0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v70 = a5;
  v9 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Date();
  v66 = *(v12 - 8);
  v67 = v12;
  __chkstk_darwin(v12);
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocationsSubscription(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v65 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v63 - v19;
  __chkstk_darwin(v18);
  v69 = &v63 - v21;
  v22 = sub_100123034(a2, a3, a4);
  v24 = v23;
  swift_beginAccess();
  v25 = *(a1 + 24);
  if (!*(v25 + 16))
  {
    goto LABEL_11;
  }

  v26 = sub_1000110D8(v22, v24);
  if ((v27 & 1) == 0)
  {

LABEL_11:

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A6F0(v34, qword_1005DFB98);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v71 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_10000D01C(a2, a3, &v71);
      _os_log_impl(&_mh_execute_header, v35, v36, "subscribeAndFetch - no cached subscription for %{private,mask.hash}s", v37, 0x16u);
      sub_100004984(v38);
    }

    goto LABEL_37;
  }

  sub_10012329C(*(v25 + 56) + *(v15 + 72) * v26, v20, type metadata accessor for SecureLocationsSubscription);

  v28 = v69;
  sub_100123238(v20, v69);
  if (*(v28 + *(v14 + 28)) <= 1u)
  {
    if (!*(v28 + *(v14 + 28)))
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_10000A6F0(v29, qword_1005DFB98);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "subscribeAndFetch - should proceed is false because the subscription is already in flight", v32, 2u);
      }

      v33 = v28;
LABEL_46:
      sub_100123304(v33, type metadata accessor for SecureLocationsSubscription);
      v61 = 0;
      goto LABEL_38;
    }

    v44 = v68;
    static Date.trustedNow.getter(v68);
    Date.timeIntervalSince1970.getter();
    v46 = v45;
    Date.timeIntervalSince1970.getter();
    v48 = v46 - v47;
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v49 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v49);
    v50 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_10012329C(v49 + *(v50 + 28), v11, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v49);

    v51 = v11[6];
    sub_100123304(v11, type metadata accessor for SecureLocationsConfig);
    if (v48 < v51)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000A6F0(v52, qword_1005DFB98);
      v53 = v65;
      sub_10012329C(v28, v65, type metadata accessor for SecureLocationsSubscription);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v71 = v64;
        *v56 = 136315650;
        v57 = sub_10000D01C(v22, v24, &v71);

        *(v56 + 4) = v57;
        *(v56 + 12) = 2080;
        if (*(v53 + *(v14 + 28)) > 1u)
        {
          if (*(v53 + *(v14 + 28)) == 2)
          {
            v58 = 0xE600000000000000;
            v59 = 0x64656C696166;
          }

          else
          {
            v58 = 0xE800000000000000;
            v59 = 0x676E69766F6D6572;
          }
        }

        else if (*(v53 + *(v14 + 28)))
        {
          v58 = 0xE900000000000064;
          v59 = 0x6574656C706D6F63;
        }

        else
        {
          v58 = 0xE800000000000000;
          v59 = 0x746867696C666E69;
        }

        sub_100123304(v53, type metadata accessor for SecureLocationsSubscription);
        v62 = sub_10000D01C(v59, v58, &v71);

        *(v56 + 14) = v62;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v48;
        _os_log_impl(&_mh_execute_header, v54, v55, "subscribeAndFetch - should proceed is false for %s %s as time since last subscribe is within threshold %f", v56, 0x20u);
        swift_arrayDestroy();

        (*(v66 + 8))(v68, v67);
        v33 = v69;
      }

      else
      {

        sub_100123304(v53, type metadata accessor for SecureLocationsSubscription);
        (*(v66 + 8))(v44, v67);
        v33 = v28;
      }

      goto LABEL_46;
    }

    (*(v66 + 8))(v44, v67);
    goto LABEL_36;
  }

  if (*(v28 + *(v14 + 28)) == 2)
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_35;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "subscribeAndFetch - should proceed is true because the subscription previously failed";
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000A6F0(v60, qword_1005DFB98);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_35;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "subscribeAndFetch - should proceed is true because we are currently removing the subscription";
  }

  _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_35:

LABEL_36:
  sub_100123304(v28, type metadata accessor for SecureLocationsSubscription);
LABEL_37:
  v61 = 1;
LABEL_38:
  *v70 = v61;
}

uint64_t sub_100120B64(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v41 = a1;
  v9 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v9 - 8);
  v11 = &v39[-v10];
  v12 = type metadata accessor for SecureLocationsSubscription(0);
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = sub_100123034(a2, a3, a4);
  v17 = v16;
  v18 = v12[5];

  static Date.trustedNow.getter(v15 + v18);
  v19 = [a4 subscriptionMode];
  *v15 = a2;
  v15[1] = a3;
  *(v15 + v12[6]) = v19;
  v20 = v12[7];
  v40 = a5;
  *(v15 + v20) = a5;
  v21 = (v15 + v12[8]);
  *v21 = 0;
  v21[1] = 0;
  v22 = [a4 pushIdentifiers];
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v23 + 16) && (v24 = sub_1000110D8(a2, a3), (v25 & 1) != 0) && (v26 = *(*(v23 + 56) + 8 * v24), , , v26[2]))
  {
    v28 = v26[4];
    v27 = v26[5];

    *v21 = v28;
    v21[1] = v27;
  }

  else
  {
  }

  sub_10012329C(v15, v11, type metadata accessor for SecureLocationsSubscription);
  (*(v13 + 56))(v11, 0, 1, v12);
  swift_beginAccess();

  v29 = v42;
  sub_100145C20(v11, v42, v17);
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000A6F0(v30, qword_1005DFB98);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v33 = 136315394;
    v34 = sub_10000D01C(v29, v17, v43);

    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        v35 = 0xE600000000000000;
        v36 = 0x64656C696166;
      }

      else
      {
        v35 = 0xE800000000000000;
        v36 = 0x676E69766F6D6572;
      }
    }

    else if (v40)
    {
      v35 = 0xE900000000000064;
      v36 = 0x6574656C706D6F63;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x746867696C666E69;
    }

    v37 = sub_10000D01C(v36, v35, v43);

    *(v33 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "SubscribeAndFetch - set subscription state %s to %s", v33, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100123304(v15, type metadata accessor for SecureLocationsSubscription);
}

void sub_100121008(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-1] - v8;
  v10 = sub_100123034(a2, a3, a4);
  v12 = v11;
  swift_beginAccess();
  sub_1001FF0F8(v10, v12, v9);
  sub_100123364(v9);
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    v18 = sub_10000D01C(v10, v12, v20);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "SubscribeAndFetch - removed subscription %s", v16, 0xCu);
    sub_100004984(v17);
  }

  else
  {
  }
}

uint64_t sub_10012120C@<X0>(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_100123034(a3, a4, a1);
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 24);
  if (*(v10 + 16) && (, v11 = sub_1000110D8(v7, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = *(v10 + 56);
    v15 = type metadata accessor for SecureLocationsSubscription(0);
    v16 = *(v15 - 8);
    sub_10012329C(v14 + *(v16 + 72) * v11, a5, type metadata accessor for SecureLocationsSubscription);

    return (*(v16 + 56))(a5, 0, 1, v15);
  }

  else
  {

    v18 = type metadata accessor for SecureLocationsSubscription(0);
    return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
  }
}

void sub_1001213A8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v67 = a2;
  v73 = type metadata accessor for SecureLocationsSubscription(0);
  v71 = *(v73 - 8);
  v3 = __chkstk_darwin(v73);
  v66 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v65 = (&v64 - v6);
  v7 = __chkstk_darwin(v5);
  v75 = &v64 - v8;
  __chkstk_darwin(v7);
  v70 = &v64 - v9;
  v10 = sub_10004B564(&qword_1005AB7C8, &qword_1004C5688);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v64 - v14);
  swift_beginAccess();
  v16 = *(a1 + 24);
  v19 = *(v16 + 64);
  v18 = v16 + 64;
  v17 = v19;
  v20 = 1 << *(*(a1 + 24) + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v72 = *(a1 + 24);

  v24 = 0;
  v68 = v15;
  v69 = v13;
  if (!v22)
  {
LABEL_5:
    if (v23 <= (v24 + 1))
    {
      v26 = (v24 + 1);
    }

    else
    {
      v26 = v23;
    }

    v27 = (v26 - 1);
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
        v43 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
        (*(*(v43 - 8) + 56))(v13, 1, 1, v43);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v18 + 8 * v25);
      ++v24;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_26;
  }

  while (1)
  {
    v25 = v24;
LABEL_12:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v72 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    v33 = v70;
    sub_10012329C(*(v72 + 56) + *(v71 + 72) * v29, v70, type metadata accessor for SecureLocationsSubscription);
    v34 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
    v35 = *(v34 + 48);
    v36 = v69;
    *v69 = v32;
    *(v36 + 1) = v31;
    v37 = v33;
    v13 = v36;
    sub_100123238(v37, &v36[v35]);
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);

    v27 = v25;
    v15 = v68;
LABEL_13:
    sub_1000176A8(v13, v15, &qword_1005AB7C8, &qword_1004C5688);
    v38 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
    v74 = (*(*(v38 - 8) + 48))(v15, 1, v38);
    if (v74 == 1)
    {

      goto LABEL_25;
    }

    v39 = *v15;
    v40 = v15[1];
    v41 = v15 + *(v38 + 48);
    v42 = v75;
    sub_100123238(v41, v75);
    if (*(v42 + *(v73 + 24)) == 1)
    {
      break;
    }

    sub_100123304(v42, type metadata accessor for SecureLocationsSubscription);

    v24 = v27;
    if (!v22)
    {
      goto LABEL_5;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_10000A6F0(v44, qword_1005DFB98);
  v45 = v75;
  v46 = v65;
  sub_10012329C(v75, v65, type metadata accessor for SecureLocationsSubscription);
  v47 = v66;
  sub_10012329C(v45, v66, type metadata accessor for SecureLocationsSubscription);

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v76 = v73;
    *v50 = 141559043;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v51 = sub_10000D01C(v39, v40, &v76);

    *(v50 + 14) = v51;
    *(v50 + 22) = 2160;
    *(v50 + 24) = 1752392040;
    *(v50 + 32) = 2081;
    v52 = *v46;
    v53 = v46[1];

    sub_100123304(v46, type metadata accessor for SecureLocationsSubscription);
    v54 = sub_10000D01C(v52, v53, &v76);

    *(v50 + 34) = v54;
    *(v50 + 42) = 2082;
    v55 = v66;
    v56 = sub_10011FC24();
    v58 = v57;
    sub_100123304(v55, type metadata accessor for SecureLocationsSubscription);
    v59 = sub_10000D01C(v56, v58, &v76);

    *(v50 + 44) = v59;
    _os_log_impl(&_mh_execute_header, v48, v49, "SubscribeAndFetch - Found an active shallow subscription with key %{private,mask.hash}s -> %{private,mask.hash}s  %{public}s", v50, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100123304(v47, type metadata accessor for SecureLocationsSubscription);
    sub_100123304(v46, type metadata accessor for SecureLocationsSubscription);
  }

  sub_100123304(v45, type metadata accessor for SecureLocationsSubscription);
LABEL_25:
  v25 = v67;
  LODWORD(v13) = v74;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_30;
  }

LABEL_26:
  v60 = type metadata accessor for Logger();
  sub_10000A6F0(v60, qword_1005DFB98);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 67109120;
    *(v63 + 4) = v13 != 1;
    _os_log_impl(&_mh_execute_header, v61, v62, "SubscribeAndFetch - hasActiveShallowSubscriptions %{BOOL}d", v63, 8u);
  }

  *v25 = v13 != 1;
}

uint64_t sub_100121B58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v8 - 8);
  v37 = &v33 - v9;
  v10 = type metadata accessor for SecureLocationsSubscription(0);
  v36 = *(v10 - 1);
  __chkstk_darwin(v10);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A6F0(v13, qword_1005DFB98);

  v15 = a3;
  v35 = v14;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_20;
  }

  v33 = a4;
  v18 = swift_slowAlloc();
  v38[0] = swift_slowAlloc();
  *v18 = 141558531;
  *(v18 + 4) = 1752392040;
  *(v18 + 12) = 2081;
  *(v18 + 14) = sub_10000D01C(a1, a2, v38);
  *(v18 + 22) = 2082;
  v19 = [v15 subscriptionMode];
  v34 = a1;
  if (v19 > 2)
  {
    switch(v19)
    {
      case 3:
        v20 = 0xE500000000000000;
        v21 = 0x72656E776FLL;
        goto LABEL_19;
      case 4:
        v20 = 0xEE00657669746361;
        v21 = 0x6F725072656E776FLL;
        goto LABEL_19;
      case 5:
        v20 = 0x80000001004DDB80;
        v21 = 0xD000000000000013;
        goto LABEL_19;
    }

LABEL_16:
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

  if (!v19)
  {
    v20 = 0xE900000000000065;
    v21 = 0x76697463616F7270;
    goto LABEL_19;
  }

  if (v19 == 1)
  {
    v20 = 0xE700000000000000;
    v21 = 0x776F6C6C616873;
    goto LABEL_19;
  }

  if (v19 != 2)
  {
    goto LABEL_16;
  }

  v20 = 0xE400000000000000;
  v21 = 1702259052;
LABEL_19:
  v22 = sub_10000D01C(v21, v20, v38);

  *(v18 + 24) = v22;
  _os_log_impl(&_mh_execute_header, v16, v17, "SubscribeAndFetch - adding pending key subscription %{private,mask.hash}s in mode %{public}s", v18, 0x20u);
  swift_arrayDestroy();

  a1 = v34;
LABEL_20:
  v23 = v10[5];

  static Date.trustedNow.getter(v12 + v23);
  v24 = [v15 subscriptionMode];
  *v12 = a1;
  v12[1] = a2;
  *(v12 + v10[6]) = v24;
  *(v12 + v10[7]) = 0;
  v25 = (v12 + v10[8]);
  *v25 = 0;
  v25[1] = 0;
  v26 = [v15 subscriptionMode];
  if (v26 <= 1)
  {
    if (v26 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v26 == 2)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "SubscribeAndFetch - key request in live - we don't currently do this. This is an anomaly";
      goto LABEL_30;
    }

LABEL_31:

    return sub_100123304(v12, type metadata accessor for SecureLocationsSubscription);
  }

  if (v26 != 5)
  {
LABEL_26:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "SubscribeAndFetch unknown mode specified";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v28, v29, v31, v30, 2u);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_25:
  v27 = v37;
  sub_10012329C(v12, v37, type metadata accessor for SecureLocationsSubscription);
  (*(v36 + 56))(v27, 0, 1, v10);
  swift_beginAccess();

  sub_100145C20(v27, a1, a2);
  swift_endAccess();
  return sub_100123304(v12, type metadata accessor for SecureLocationsSubscription);
}

uint64_t sub_100122118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v78 = a4;
  v75 = a2;
  v76 = a3;
  v77 = a5;
  v6 = type metadata accessor for Date();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureLocationsSubscription(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v73 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v13 = __chkstk_darwin(v12 - 8);
  v70 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v69 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v69 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v69 - v22;
  __chkstk_darwin(v21);
  v24 = *(v10 + 56);
  v79 = &v69 - v25;
  v24();
  v74 = a1;
  if (a1 != 5)
  {
    if (a1 == 1)
    {
      v23 = v20;
      v28 = v75;
      swift_beginAccess();
      v27 = *(v28 + 40);
      if (!*(v27 + 16))
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    if (a1)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v33, v34))
      {
        goto LABEL_68;
      }

      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v81[0] = v36;
      *v35 = 136446210;
      if (v74 <= 2)
      {
        if (!v74)
        {
          v37 = 0x76697463616F7270;
          v38 = 0xE900000000000065;
          goto LABEL_66;
        }

        if (v74 == 2)
        {
          v38 = 0xE400000000000000;
          v37 = 1702259052;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v74)
        {
          case 3:
            v38 = 0xE500000000000000;
            v37 = 0x72656E776FLL;
            goto LABEL_66;
          case 4:
            v37 = 0x6F725072656E776FLL;
            v38 = 0xEE00657669746361;
            goto LABEL_66;
          case 5:
            v37 = 0xD000000000000013;
            v38 = 0x80000001004DDB80;
LABEL_66:
            v66 = sub_10000D01C(v37, v38, v81);

            *(v35 + 4) = v66;
            _os_log_impl(&_mh_execute_header, v33, v34, "SubscribeAndFetch hasPendingSubscription - unexpected subscription mode %{public}s", v35, 0xCu);
            sub_100004984(v36);
            goto LABEL_67;
        }
      }

      v38 = 0xE700000000000000;
      v37 = 0x6E776F6E6B6E75;
      goto LABEL_66;
    }
  }

  v26 = v75;
  swift_beginAccess();
  v27 = *(v26 + 32);
  if (!*(v27 + 16))
  {
    goto LABEL_18;
  }

LABEL_7:

  v29 = sub_1000110D8(v76, v78);
  if (v30)
  {
    sub_10012329C(*(v27 + 56) + *(v10 + 72) * v29, v23, type metadata accessor for SecureLocationsSubscription);
    sub_100123364(v79);

    v31 = 0;
    goto LABEL_19;
  }

LABEL_18:
  sub_100123364(v79);
  v31 = 1;
LABEL_19:
  (v24)(v23, v31, 1, v9);
  v39 = v79;
  sub_1000176A8(v23, v79, &qword_1005A9EC8, &unk_1004C3420);
  sub_100123414(v39, v17);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_100123364(v17);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFB98);

    v33 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v33, v41))
    {
      goto LABEL_68;
    }

    v42 = swift_slowAlloc();
    v80[0] = swift_slowAlloc();
    *v42 = 136446723;
    if (v74 > 2)
    {
      if (v74 == 3)
      {
        v58 = 0xE500000000000000;
        v57 = 0x72656E776FLL;
LABEL_45:
        v59 = sub_10000D01C(v57, v58, v80);

        *(v42 + 4) = v59;
        *(v42 + 12) = 2160;
        *(v42 + 14) = 1752392040;
        *(v42 + 22) = 2081;
        *(v42 + 24) = sub_10000D01C(v76, v78, v80);
        _os_log_impl(&_mh_execute_header, v33, v41, "SubscribeAndFetch - no pendingKeyRequest in %{public}s for %{private,mask.hash}s", v42, 0x20u);
        swift_arrayDestroy();
LABEL_67:

LABEL_68:

LABEL_77:
        result = sub_100123364(v79);
        v56 = 0;
        goto LABEL_78;
      }

      v43 = 0x6F725072656E776FLL;
      v44 = 0xEE00657669746361;
      v46 = 0xD000000000000013;
      v45 = 0x80000001004DDB80;
      v47 = v74 == 4;
    }

    else
    {
      v43 = 0x76697463616F7270;
      v44 = 0xE900000000000065;
      v45 = 0xE700000000000000;
      v46 = 0x776F6C6C616873;
      if (v74 != 1)
      {
        v46 = 1702259052;
        v45 = 0xE400000000000000;
      }

      v47 = v74 == 0;
    }

    if (v47)
    {
      v57 = v43;
    }

    else
    {
      v57 = v46;
    }

    if (v47)
    {
      v58 = v44;
    }

    else
    {
      v58 = v45;
    }

    goto LABEL_45;
  }

  v48 = v73;
  sub_100123238(v17, v73);
  static Date.trustedNow.getter(v8);
  Date.timeIntervalSince1970.getter();
  v50 = v49;
  (*(v71 + 8))(v8, v72);
  Date.timeIntervalSince1970.getter();
  v52 = v50 - v51;
  v53 = *(v48 + *(v9 + 24));
  if (v53 <= 1)
  {
    if (v53)
    {
      if (v53 != 1)
      {
        goto LABEL_35;
      }

      v54 = 240.0;
    }

    else
    {
      v54 = 86400.0;
    }

LABEL_47:
    if (v52 <= v54)
    {
      goto LABEL_36;
    }

LABEL_48:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_10000A6F0(v60, qword_1005DFB98);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v80[0] = swift_slowAlloc();
      *v63 = 136446723;
      if (v74 > 2)
      {
        if (v74 == 3)
        {
          v64 = 0xE500000000000000;
          v65 = 0x72656E776FLL;
        }

        else if (v74 == 4)
        {
          v65 = 0x6F725072656E776FLL;
          v64 = 0xEE00657669746361;
        }

        else
        {
          v65 = 0xD000000000000013;
          v64 = 0x80000001004DDB80;
        }
      }

      else if (v74)
      {
        if (v74 == 1)
        {
          v64 = 0xE700000000000000;
          v65 = 0x776F6C6C616873;
        }

        else
        {
          v64 = 0xE400000000000000;
          v65 = 1702259052;
        }
      }

      else
      {
        v65 = 0x76697463616F7270;
        v64 = 0xE900000000000065;
      }

      v67 = sub_10000D01C(v65, v64, v80);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2160;
      *(v63 + 14) = 1752392040;
      *(v63 + 22) = 2081;
      *(v63 + 24) = sub_10000D01C(v76, v78, v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "SubscribeAndFetch - pendingKeyRequest in %{public}s for %{private,mask.hash}s is outside of expirationWindow - removing it", v63, 0x20u);
      swift_arrayDestroy();
    }

    if (v74 <= 1)
    {
      swift_beginAccess();
      v68 = v70;
      sub_1001FF0F8(v76, v78, v70);
      sub_100123364(v68);
      swift_endAccess();
    }

    sub_100123304(v48, type metadata accessor for SecureLocationsSubscription);
    goto LABEL_77;
  }

  if (v53 == 2 || v53 == 3)
  {
    v54 = 120.0;
    goto LABEL_47;
  }

LABEL_35:
  if (v52 > 0.0)
  {
    goto LABEL_48;
  }

LABEL_36:
  sub_100123304(v48, type metadata accessor for SecureLocationsSubscription);
  result = sub_100123364(v79);
  v56 = 1;
LABEL_78:
  *v77 = v56;
  return result;
}

uint64_t sub_100122BE8()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsSubscription(uint64_t a1)
{
  result = qword_1005AB778;
  if (!qword_1005AB778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122CD0(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SPSecureLocationSubscriptionMode(319);
    if (v2 <= 0x3F)
    {
      sub_1000F8F5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100122D98()
{
  result = qword_1005AB7C0;
  if (!qword_1005AB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB7C0);
  }

  return result;
}

void *sub_100122DEC()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_1001233CC(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = _swiftEmptyDictionarySingleton;
  v0[4] = _swiftEmptyDictionarySingleton;
  v0[5] = _swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t sub_100123034(uint64_t a1, void *a2, id a3)
{
  v6 = [a3 clientApp];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8._countAndFlagsBits = 12079;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);

  v9 = [a3 subscriptionMode];
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x72656E776FLL;
        goto LABEL_15;
      case 4:
        v10 = 0xEE00657669746361;
        v11 = 0x6F725072656E776FLL;
        goto LABEL_15;
      case 5:
        v10 = 0x80000001004DDB80;
        v11 = 0xD000000000000013;
        goto LABEL_15;
    }

LABEL_12:
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    goto LABEL_15;
  }

  if (!v9)
  {
    v10 = 0xE900000000000065;
    v11 = 0x76697463616F7270;
    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v10 = 0xE700000000000000;
    v11 = 0x776F6C6C616873;
    goto LABEL_15;
  }

  if (v9 != 2)
  {
    goto LABEL_12;
  }

  v10 = 0xE400000000000000;
  v11 = 1702259052;
LABEL_15:

  v12._countAndFlagsBits = v11;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 12079;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);

  return v7;
}

uint64_t sub_100123238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsSubscription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012329C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100123364(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001233CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100123414(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100123484()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0DE0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Session ended for outgoing live session, removing existing from cache", v8, 2u);
  }

  os_unfair_lock_lock((v1 + 32));
  v9 = *(v1 + 40);
  if (v9)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_10020D620(0, 0, v4, &unk_1004C5780, v11);

    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));
  return v9 != 0;
}

uint64_t sub_100123668(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005E0DE0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Session ended for outgoing live session, removing specific from cache", v10, 2u);
  }

  os_unfair_lock_lock((v2 + 32));
  v11 = *(v2 + 40);
  if (v11 && v11 == a1)
  {
    v13 = type metadata accessor for TaskPriority();
    v12 = 1;
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    sub_10020D620(0, 0, v6, &unk_1004C5748, v14);

    *(v2 + 40) = 0;
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock((v2 + 32));
  return v12;
}

uint64_t sub_10012385C(unint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = __chkstk_darwin(v3 - 8);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = v63 - v6;
  v7 = type metadata accessor for Destination();
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005AB940, &qword_1004C5830);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v63 - v14;
  os_unfair_lock_lock((v1 + 48));
  v16 = *(v1 + 56);

  v79 = v1;
  os_unfair_lock_unlock((v1 + 48));
  if (qword_1005A7EE8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFB98);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v70 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = *(v16 + 16);

    _os_log_impl(&_mh_execute_header, v18, v19, "Sending live location to %ld subscribers", v21, 0xCu);
  }

  else
  {
  }

  v22 = 0;
  v64 = v16;
  v24 = *(v16 + 64);
  v16 += 64;
  v23 = v24;
  v25 = 1 << *(v16 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  a1 = v26 & v23;
  v27 = (v25 + 63) >> 6;
  v63[1] = v75 + 16;
  v71 = v75 + 32;
  v65 = v9 + 7;
  v72 = v15;
  v67 = v16;
  v66 = v27;
  v68 = v13;
  while (1)
  {
    if (!a1)
    {
      if (v27 <= v22 + 1)
      {
        v29 = v22 + 1;
      }

      else
      {
        v29 = v27;
      }

      v9 = v29 - 1;
      while (1)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v28 >= v27)
        {
          v61 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
          (*(*(v61 - 8) + 56))(v13, 1, 1, v61);
          a1 = 0;
          v22 = v9;
          goto LABEL_21;
        }

        a1 = *(v16 + 8 * v28);
        ++v22;
        if (a1)
        {
          v22 = v28;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v28 = v22;
LABEL_20:
    v30 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v31 = v30 | (v28 << 6);
    v32 = v64;
    v33 = v74;
    v34 = v75;
    v35 = v73;
    (*(v75 + 16))(v73, *(v64 + 48) + *(v75 + 72) * v31, v74);
    v36 = *(*(v32 + 56) + 8 * v31);
    v37 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
    v38 = *(v37 + 48);
    (*(v34 + 32))(v13, v35, v33);
    *&v13[v38] = v36;
    (*(*(v37 - 8) + 56))(v13, 0, 1, v37);

    v15 = v72;
LABEL_21:
    sub_10012BFD8(v13, v15);
    v39 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
    if ((*(*(v39 - 8) + 48))(v15, 1, v39) == 1)
    {
    }

    v80 = *&v15[*(v39 + 48)];
    v40 = type metadata accessor for TaskPriority();
    v41 = *(v40 - 8);
    v77 = v40;
    v78 = v41;
    (*(v41 + 56))(v81, 1, 1, v40);
    v43 = v74;
    v42 = v75;
    v76 = *(v75 + 32);
    v44 = v73;
    v76(v73, v15, v74);
    v45 = (*(v42 + 80) + 96) & ~*(v42 + 80);
    v46 = (v65 + v45) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    v48 = v70;
    v49 = v70[1];
    *(v47 + 32) = *v70;
    *(v47 + 48) = v49;
    *(v47 + 64) = *(v48 + 32);
    v50 = v80;
    *(v47 + 80) = *(v48 + 48);
    *(v47 + 88) = v50;
    v51 = v47 + v45;
    v52 = v43;
    v53 = v77;
    v54 = v78;
    v76(v51, v44, v52);
    *(v47 + v46) = v79;
    v55 = v69;
    sub_10007CE68(v81, v69);
    if ((*(v54 + 48))(v55, 1, v53) == 1)
    {
      sub_1000C980C(v48, v86);

      sub_100002CE0(v55, &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      sub_1000C980C(v48, v86);

      TaskPriority.rawValue.getter();
      (*(v54 + 8))(v55, v53);
    }

    v56 = *(v47 + 16);
    swift_unknownObjectRetain();

    v13 = v68;
    if (v56)
    {
      swift_getObjectType();
      v57 = dispatch thunk of Actor.unownedExecutor.getter();
      v59 = v58;
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    sub_100002CE0(v81, &qword_1005A9690, &qword_1004C2A00);
    v60 = swift_allocObject();
    *(v60 + 16) = &unk_1004C5848;
    *(v60 + 24) = v47;
    if (v59 | v57)
    {
      v82 = 0;
      v83 = 0;
      v84 = v57;
      v85 = v59;
    }

    v15 = v72;
    swift_task_create();

    v16 = v67;
    v27 = v66;
  }
}

uint64_t sub_10012408C()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFBD0);
  sub_10000A6F0(v0, qword_1005DFBD0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100124110(uint64_t a1)
{
  v11 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v2);
  v3 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = sub_10004B518();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_100009008(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v8 = sub_100208FA0(_swiftEmptyArrayStorage);
  *(v1 + 48) = 0;
  *(v1 + 56) = v8;
  sub_10004B564(&qword_1005AB8F8, &qword_1004C5770);
  swift_allocObject();
  *(v1 + 64) = PassthroughSubject.init()();
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  HeartbeatConfiguration.init(durationBeforeFirstHeartbeat:durationBetweenHeartbeats:numberOfHeartbeatsBeforeFailing:)();
  *(v1 + 16) = v11;
  v12 = *(v1 + 64);
  sub_10001DF0C(&qword_1005AB900, &qword_1005AB8F8, &qword_1004C5770, &protocol conformance descriptor for PassthroughSubject<A, B>);
  *(v1 + 72) = Publisher.eraseToAnyPublisher()();
  return v1;
}

uint64_t sub_100124454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v8 = type metadata accessor for Destination();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  v7[27] = v9;
  v7[28] = *(v9 - 8);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_100124598, 0, 0);
}

uint64_t sub_100124598()
{
  v1 = *(v0 + 144);
  v3 = *(v1 + 16);
  v2 = *(v1 + 32);
  v4 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 16) = v4;
  sub_1000C980C(v1, v0 + 72);
  sub_10012B620();
  sub_1000F7CFC();
  sub_1000F7D50();
  SessionMessage.init<A>(type:version:payload:)();
  v8 = (&async function pointer to dispatch thunk of SessionMessaging.send(message:) + async function pointer to dispatch thunk of SessionMessaging.send(message:));
  v5 = swift_task_alloc();
  *(v0 + 240) = v5;
  *v5 = v0;
  v5[1] = sub_100124AA8;
  v6 = *(v0 + 232);

  return v8(v6);
}

uint64_t sub_100124AA8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100124F7C;
  }

  else
  {
    v2 = sub_100124BBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100124BBC()
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0DE0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "sendLocation complete", v8, 2u);
  }

  (*(v6 + 8))(v5, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100124D20()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1001253A0;
  }

  else
  {
    v2 = sub_100124E34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100124E34()
{
  v1 = v0[34];
  v2 = v0[25];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  os_unfair_lock_lock(v4 + 12);
  v1(v2, v5, v3);
  sub_100145DF4(0, v2);
  os_unfair_lock_unlock(v4 + 12);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CC27C(1, 2, 0xD000000000000011, 0x80000001004E1BD0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100124F7C()
{
  v31 = v0;
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[31];
  v0[32] = v1;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = type metadata accessor for Logger();
  v0[33] = sub_10000A6F0(v6, qword_1005E0DE0);
  v7 = *(v3 + 16);
  v0[34] = v7;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v4);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[26];
  v13 = v0[22];
  v12 = v0[23];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v14 = 136446979;
    *(v14 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004E1BD0, &v30);
    *(v14 + 12) = 2082;
    v0[17] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v15 = String.init<A>(describing:)();
    v28 = v6;
    v17 = sub_10000D01C(v15, v16, &v30);

    *(v14 + 14) = v17;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2081;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v12 + 8);
    v21(v11, v13);
    v22 = sub_10000D01C(v18, v20, &v30);
    v6 = v28;

    *(v14 + 34) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: %{public}s to %{private,mask.hash}s", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v21 = *(v12 + 8);
    v21(v11, v13);
  }

  v0[36] = v21;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005DFB98);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "ending messagingsession due to error", v25, 2u);
  }

  v29 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_100124D20;

  return v29();
}

uint64_t sub_1001253A0()
{
  v26 = v0;
  (*(v0 + 272))(*(v0 + 192), *(v0 + 160), *(v0 + 176));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 192);
    v24 = *(v0 + 288);
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136446723;
    *(v0 + 128) = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v24(v4, v5);
    v13 = sub_10000D01C(v10, v12, &v25);

    *(v6 + 24) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "sendMessage failed to close session, error: %{public}s to %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v14 = *(v0 + 288);
    v15 = *(v0 + 192);
    v16 = *(v0 + 176);

    v14(v15, v16);
  }

  v17 = *(v0 + 272);
  v18 = *(v0 + 200);
  v20 = *(v0 + 168);
  v19 = *(v0 + 176);
  v21 = *(v0 + 160);
  os_unfair_lock_lock(v20 + 12);
  v17(v18, v21, v19);
  sub_100145DF4(0, v18);
  os_unfair_lock_unlock(v20 + 12);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CC27C(1, 2, 0xD000000000000011, 0x80000001004E1BD0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_100125710()
{
  v1 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v41[-v2];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v41[-v9];
  v11 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  os_unfair_lock_lock((v0 + 48));
  v43 = *(*(v0 + 56) + 16);
  os_unfair_lock_unlock((v0 + 48));
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v14 = sub_100021BB4();

  v15 = [objc_opt_self() standardUserDefaults];
  v16 = String._bridgeToObjectiveC()();
  v42 = [v15 BOOLForKey:v16];

  v17 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v17);
  v18 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_10012BB3C(v17 + *(v18 + 28), v13);
  os_unfair_lock_unlock(v17);

  v19 = *(v13 + 4);
  sub_10012BBA0(v13);

  sub_1000D735C(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100002CE0(v3, &unk_1005AE5B0, &qword_1004C32F0);
    if (v14)
    {
LABEL_5:
      v20 = (v43 < v19) & (v42 ^ 1);
LABEL_18:
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A6F0(v34, qword_1005E0DE0);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v43;
        v38 = v43 < v19;
        v39 = swift_slowAlloc();
        *v39 = 67110144;
        *(v39 + 4) = v14 & 1;
        *(v39 + 8) = 1024;
        *(v39 + 10) = v42;
        *(v39 + 14) = 1024;
        *(v39 + 16) = v38;
        *(v39 + 20) = 2048;
        *(v39 + 22) = v37;
        *(v39 + 30) = 2048;
        *(v39 + 32) = v19;
        _os_log_impl(&_mh_execute_header, v35, v36, "canAcceptRequestForLiveSession isLocationPublishingDevice %{BOOL}d isAutoMeActive %{BOOL}d isWithinMaxSessionLimit %{BOOL}d sessCount %ld maxAllowed %ld  ", v39, 0x28u);
      }

      return v20;
    }

LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  (*(v5 + 32))(v10, v3, v4);
  static Date.trustedNow.getter(v8);
  v21 = static Date.> infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  if ((v21 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005DFB98);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E1B20, &v44);
      _os_log_impl(&_mh_execute_header, v30, v31, "%s: Proceeding with LiveLocations check", v32, 0xCu);
      sub_100004984(v33);
    }

    v22(v10, v4);
    if (v14)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFB98);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v22;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v44 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_10000D01C(0xD000000000000020, 0x80000001004E1B20, &v44);
    _os_log_impl(&_mh_execute_header, v24, v25, "    %s: AutoMe threshold is active, don't publish live locations. \n    Proceed to communicate location & connected devices to server.", v27, 0xCu);
    sub_100004984(v28);

    v26(v10, v4);
  }

  else
  {

    v22(v10, v4);
  }

  return 0;
}

uint64_t sub_100125DE8()
{

  sub_100002CE0(v0 + 40, &qword_1005AB908, &qword_1004C57E0);
  sub_100002CE0(v0 + 56, &qword_1005AB910, &qword_1004C57E8);

  sub_1000CA9C0(*(v0 + 80), *(v0 + 88));
  v1 = OBJC_IVAR____TtC13findmylocated20BeaconSharingManager_heartbeatConfiguration;
  v2 = type metadata accessor for HeartbeatConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100125EA0()
{
  sub_100125DE8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BeaconSharingManager(uint64_t a1)
{
  result = qword_1005AB808;
  if (!qword_1005AB808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100125F4C(uint64_t a1)
{
  result = type metadata accessor for HeartbeatConfiguration();
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

BOOL sub_100126014()
{
  v0 = type metadata accessor for Destination.DestinationType();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  Destination.type.getter();
  v7 = *(v1 + 104);
  v7(v4, enum case for Destination.DestinationType.apsToken(_:), v0);
  sub_100009008(&qword_1005AB938, &type metadata accessor for Destination.DestinationType, &protocol conformance descriptor for Destination.DestinationType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v11 == v10)
  {
    return 1;
  }

  Destination.type.getter();
  v7(v4, enum case for Destination.DestinationType.selfToken(_:), v0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8(v4, v0);
  v8(v6, v0);
  if (v11 == v10)
  {
    return 1;
  }

  Destination.type.getter();
  v7(v4, enum case for Destination.DestinationType.device(_:), v0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8(v4, v0);
  v8(v6, v0);
  return v11 == v10;
}

uint64_t sub_1001262D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100126368;

  return daemon.getter();
}

uint64_t sub_100126368(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100126554;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100126554(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1001268B0;
    v6 = 0;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100126690;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100126690()
{
  v4 = (&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + async function pointer to dispatch thunk of QueryController.isRegistered(destination:));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100126740;
  v2 = *(v0 + 24);

  return v4(v2);
}

uint64_t sub_100126740(char a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100126840, 0, 0);
}

uint64_t sub_100126840()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001268B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100126914(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v3[17] = *(v5 + 64);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for SessionMessagingInvite();
  v3[20] = v6;
  v7 = *(v6 - 8);
  v3[21] = v7;
  v3[22] = *(v7 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_100126AA0, 0, 0);
}

uint64_t sub_100126AA0()
{
  v77 = v0;
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  if (*(v0 + 73) == 1)
  {
    if (sub_100125710())
    {
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 200);
      v2 = *(v0 + 160);
      v3 = *(v0 + 168);
      v4 = *(v0 + 88);
      v5 = type metadata accessor for Logger();
      *(v0 + 208) = sub_10000A6F0(v5, qword_1005E0DE0);
      (*(v3 + 16))(v1, v4, v2);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v9 = *(v0 + 200);
      v11 = *(v0 + 160);
      v10 = *(v0 + 168);
      if (v8)
      {
        v12 = *(v0 + 152);
        v13 = *(v0 + 128);
        v70 = *(v0 + 120);
        v14 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = v75;
        *v14 = 136315138;
        v73 = v7;
        SessionMessagingInvite.accountScopedFromID.getter();
        v15 = Destination.destination.getter();
        v17 = v16;
        (*(v13 + 8))(v12, v70);
        (*(v10 + 8))(v9, v11);
        v18 = sub_10000D01C(v15, v17, &v76);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v6, v73, "Accepting incoming invitation because this device is enabled for location publishing and from follower %s", v14, 0xCu);
        sub_100004984(v75);
      }

      else
      {

        (*(v10 + 8))(v9, v11);
      }

      v42 = *(v0 + 120);
      v43 = *(v0 + 128);
      v44 = *(v0 + 96);
      v45 = *(v0 + 104);
      SessionMessagingInvite.accountScopedFromID.getter();
      *(v0 + 216) = Destination.destination.getter();
      *(v0 + 224) = v46;
      *(v0 + 40) = type metadata accessor for BeaconSharingSessionContext(0);
      *(v0 + 48) = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext, &unk_1004C5964);
      v47 = sub_10000331C((v0 + 16));
      v48 = *(v43 + 16);
      *(v0 + 232) = v48;
      *(v0 + 240) = (v43 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48(v47, v44, v42);
      v49 = OBJC_IVAR____TtC13findmylocated20BeaconSharingManager_heartbeatConfiguration;
      v50 = swift_task_alloc();
      *(v0 + 248) = v50;
      v51 = sub_10012B620();
      *v50 = v0;
      v50[1] = sub_1001272B8;

      return SessionMessagingInvite.accept<A>(context:heartbeatConfiguration:)(v0 + 16, v45 + v49, &type metadata for BeaconSharingSessionMessageType, v51);
    }

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 192);
    v24 = *(v0 + 160);
    v25 = *(v0 + 168);
    v26 = *(v0 + 88);
    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005E0DE0);
    v74 = *(v25 + 16);
    v74(v23, v26, v24);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 192);
    v33 = *(v0 + 160);
    v32 = *(v0 + 168);
    if (v30)
    {
      v34 = *(v0 + 152);
      v35 = *(v0 + 120);
      v36 = *(v0 + 128);
      v67 = *(v0 + 160);
      v37 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76 = v71;
      *v37 = 136315138;
      v69 = v29;
      SessionMessagingInvite.fromID.getter();
      sub_100009008(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v36 + 8))(v34, v35);
      (*(v32 + 8))(v31, v67);
      v41 = sub_10000D01C(v38, v40, &v76);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v28, v69, "Declining incoming invitation from %s because this Me device cannot accept incoming requests", v37, 0xCu);
      sub_100004984(v71);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    v52 = *(v0 + 184);
    v53 = *(v0 + 160);
    v54 = *(v0 + 168);
    v55 = *(v0 + 152);
    v56 = *(v0 + 128);
    v68 = *(v0 + 176);
    v57 = *(v0 + 112);
    v58 = *(v0 + 120);
    v72 = v57;
    v60 = *(v0 + 88);
    v59 = *(v0 + 96);
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v57, 1, 1, v61);
    v74(v52, v60, v53);
    (*(v56 + 16))(v55, v59, v58);
    v62 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v63 = (v68 + *(v56 + 80) + v62) & ~*(v56 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    (*(v54 + 32))(v64 + v62, v52, v53);
    (*(v56 + 32))(v64 + v63, v55, v58);
    sub_10020D620(0, 0, v72, &unk_1004C5798, v64);
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005E0DE0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Ignoring invite since this is not a Me device", v22, 2u);
    }
  }

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1001272B8(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {

    v4 = sub_100127928;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_100004984(v3 + 2);

    sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
    sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650, &protocol conformance descriptor for SessionMessaging<A>);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v4 = sub_10012745C;
    v5 = v7;
    v6 = v9;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10012745C()
{
  dispatch thunk of SessionMessaging.startup()();

  return _swift_task_switch(sub_1001274C4, 0, 0);
}

uint64_t sub_1001274C4()
{
  v42 = v0;
  v1 = *(v0 + 104);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 56);
  if (*(v2 + 16))
  {
    v3 = sub_1001FDA80(*(v0 + 144));
    if (v4)
    {
      v5 = *(v0 + 232);
      v7 = *(v0 + 144);
      v6 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v11 = *(*(v2 + 56) + 8 * v3);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v5(v6, v7, v10);
      v13 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v14 = swift_allocObject();
      *(v14 + 2) = 0;
      *(v14 + 3) = 0;
      *(v14 + 4) = v11;
      (*(v8 + 32))(&v14[v13], v6, v10);

      sub_1001D7F30(0, 0, v9, &unk_1004C57C0, v14);
    }
  }

  v15 = *(v0 + 256);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 144);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v1 + 56);
  *(v1 + 56) = 0x8000000000000000;
  sub_100453644(v15, v18, isUniquelyReferenced_nonNull_native);
  *(v1 + 56) = v41;
  os_unfair_lock_unlock((v1 + 48));
  *(v0 + 56) = v17;
  *(v0 + 64) = v16;
  *(v0 + 72) = 0;

  PassthroughSubject.send(_:)();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000D01C(v23, v22, &v41);
    _os_log_impl(&_mh_execute_header, v20, v21, "Configured incoming live session for handle %s and called startLocate on listener", v24, 0xCu);
    sub_100004984(v25);
  }

  v26 = *(v0 + 232);
  v39 = *(v0 + 224);
  v40 = *(v0 + 256);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v29 = *(v0 + 128);
  v38 = *(v0 + 216);
  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  v33 = swift_allocObject();
  swift_weakInit();
  v26(v28, v27, v30);
  v34 = (*(v29 + 80) + 64) & ~*(v29 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v40;
  *(v35 + 5) = v38;
  *(v35 + 6) = v39;
  *(v35 + 7) = v33;
  (*(v29 + 32))(&v35[v34], v28, v30);
  sub_1001D7F30(0, 0, v31, &unk_1004C57B0, v35);

  (*(v29 + 8))(v27, v30);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100127928()
{
  v18 = v0;
  sub_100004984(v0 + 2);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[33];
    v16 = v0[18];
    v5 = v0[15];
    v4 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[10] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error getting session available %s", v6, 0xCu);
    sub_100004984(v7);

    (*(v4 + 8))(v16, v5);
  }

  else
  {
    v11 = v0[18];
    v12 = v0[15];
    v13 = v0[16];

    (*(v13 + 8))(v11, v12);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100127B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return _swift_task_switch(sub_100127B68, 0, 0);
}

uint64_t sub_100127B68()
{
  v1 = v0[8];
  v0[5] = type metadata accessor for BeaconSharingSessionContext(0);
  v0[6] = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext, &unk_1004C5964);
  v2 = sub_10000331C(v0 + 2);
  v3 = type metadata accessor for Destination();
  (*(*(v3 - 8) + 16))(v2, v1, v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100127C94;

  return SessionMessagingInvite.decline(context:)(v0 + 2);
}

uint64_t sub_100127C94()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100127DD0, 0, 0);
  }

  else
  {
    sub_100004984(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_100127DD0()
{
  sub_100004984((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100127E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = type metadata accessor for Destination();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v9 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_100127F38;

  return v9();
}

uint64_t sub_100127F38()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100128074, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100128074()
{
  v23 = v0;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0DE0);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v12 = 136315394;
    sub_100009008(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v17;
    *v20 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to close duplicate session for %s, error: %@", v12, 0x16u);
    sub_100002CE0(v20, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v21);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100128330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  sub_10004B564(&qword_1005AAC18, &unk_1004C57D0);
  v8[20] = swift_task_alloc();
  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650, &protocol conformance descriptor for SessionMessaging<A>);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012843C, v10, v9);
}

uint64_t sub_10012843C()
{
  dispatch thunk of SessionMessaging.messagesReceived.getter();

  return _swift_task_switch(sub_1001284A8, 0, 0);
}

uint64_t sub_1001284A8()
{
  v1 = v0[5];
  v2 = sub_100011AEC(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  sub_10000331C(v0 + 7);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  sub_1000BAF2C((v0 + 7), v0[10]);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_100128660;
  v6 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0);
}

uint64_t sub_100128660()
{

  if (!v0)
  {

    return _swift_task_switch(sub_100128770, 0, 0);
  }

  return result;
}

uint64_t sub_100128770()
{
  v28 = v0;
  v1 = v0[20];
  v2 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100004984(v0 + 7);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005E0DE0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[16];
      v6 = v0[17];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v27 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_10000D01C(v7, v6, &v27);
      _os_log_impl(&_mh_execute_header, v4, v5, "Messages received task ended for %s", v8, 0xCu);
      sub_100004984(v9);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = v0[18];
      v12 = v0[19];
      v14 = v0[16];
      v13 = v0[17];
      v15 = Strong;
      os_unfair_lock_lock(Strong + 12);
      sub_100128B90(&v15[14], v12, v14, v13, v11);
      os_unfair_lock_unlock(v15 + 12);
    }

    sub_100004984(v0 + 2);

    v16 = v0[1];

    return v16();
  }

  else
  {
    sub_100002CE0(v1, &qword_1005AAC18, &unk_1004C57D0);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005E0DE0);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = v0[16];
      v21 = v0[17];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10000D01C(v22, v21, &v27);
      _os_log_impl(&_mh_execute_header, v19, v20, "Received payload on incoming connection from %s, ignoring", v23, 0xCu);
      sub_100004984(v24);
    }

    sub_1000BAF2C((v0 + 7), v0[10]);
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = sub_100128660;
    v26 = v0[20];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, 0, 0);
  }
}

void sub_100128B90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (sub_1001D9164(a2))
  {

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0DE0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10000D01C(a3, a4, v16);
      _os_log_impl(&_mh_execute_header, v8, v9, "Session invalidated for %s", v10, 0xCu);
      sub_100004984(v11);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005E0DE0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, "Failed to invalidate Session", v14, 2u);
    }
  }
}

uint64_t sub_100128E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v5[26] = swift_task_alloc();
  v6 = type metadata accessor for MessagingOptions();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = sub_10004B564(&qword_1005AB918, &unk_1004C5800);
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[37] = v9;
  *v9 = v5;
  v9[1] = sub_100129038;

  return daemon.getter();
}

uint64_t sub_100129038(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 304) = a1;

  v3 = swift_task_alloc();
  *(v2 + 312) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_100129224;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100129224(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v4 = sub_10012A5A4;
  }

  else
  {

    v4 = sub_100129340;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100129340()
{
  v49 = v0;
  v1 = v0[41];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  sub_10001DF0C(&qword_1005AB920, &qword_1005AAC70, &qword_1004D96D0, &protocol conformance descriptor for Message<A>);
  v2 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10001DF0C(&qword_1005AB928, &qword_1005AB918, &unk_1004C5800, &protocol conformance descriptor for Message<A>);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v6 = v0[40];
    v36 = v0[33];
    v35 = v0[34];
    v37 = v0[26];
    v38 = v0[23];

    sub_1000049D0(v4, v5);

    sub_10004B564(&qword_1005A9270, &qword_1004C5810);
    v39 = type metadata accessor for Destination();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1004C1900;
    (*(v40 + 16))(v42 + v41, v38, v39);
    (*(v35 + 56))(v37, 1, 1, v36);
    sub_10004B564(&qword_1005AB930, &qword_1004C5818);
    v43 = type metadata accessor for MessagingCapability();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1004C1900;
    (*(v44 + 104))(v46 + v45, enum case for MessagingCapability.supportsSecureLocations(_:), v43);
    sub_10025EC18(v46);
    swift_setDeallocating();
    (*(v44 + 8))(v46 + v45, v43);
    swift_deallocClassInstance();
    sub_100293190(_swiftEmptyArrayStorage);
    MessagingOptions.init(destinations:expectsPeerResponse:responseIdentifier:timeToLive:fireAndForget:requiredCapabilities:lackingCapabilities:queueOneIdentifier:)();
    v30 = sub_100129BC4;
    v31 = v6;
    v32 = 0;

    return _swift_task_switch(v30, v31, v32);
  }

  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFBD0);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_10000D01C(v12, v13, &v47);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to send secureLocationsKeyUpdate: %s", v10, 0xCu);
    sub_100004984(v11);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = swift_allocObject();
    *(v16 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v16;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v17 = _Block_copy(v0 + 2);

    AnalyticsSendEventLazy();
    _Block_release(v17);
  }

  v19 = v0[24];
  v18 = v0[25];
  v20 = qword_1005DFB60;
  v47 = 0;
  v48 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v47 = 0xD000000000000012;
  v48 = 0x80000001004E1B90;
  v21._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 32;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  swift_getErrorValue();
  v23._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v23);

  v25 = v47;
  v24 = v48;
  v26 = *(v20 + 16);
  v27 = swift_allocObject();
  v27[2] = v20;
  v27[3] = v19;
  v27[4] = v18;
  v27[5] = v25;
  v27[6] = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000F8968;
  *(v28 + 24) = v27;
  v0[12] = sub_1000C7A78;
  v0[13] = v28;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v29 = _Block_copy(v0 + 8);

  dispatch_sync(v26, v29);
  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return _swift_task_switch(v30, v31, v32);
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100129BC4()
{
  v1 = swift_task_alloc();
  v0[42] = v1;
  *v1 = v0;
  v1[1] = sub_100129C6C;
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[29];

  return InternetMessaging.send(message:messageOptions:)(v2, v3, v4);
}

uint64_t sub_100129C6C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = v2[40];
    v4 = sub_10012A030;
  }

  else
  {
    v6 = v2[31];
    v5 = v2[32];
    v7 = v2[30];
    (*(v2[28] + 8))(v2[29], v2[27]);
    (*(v6 + 8))(v5, v7);
    v4 = sub_100129DC4;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100129DC4()
{
  v25 = v0;
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[34];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFBD0);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[35];
  v10 = v0[36];
  v11 = v0[33];
  v12 = v0[34];
  if (v8)
  {
    v23 = v0[36];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136446210;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v9, v11);
    v19 = sub_10000D01C(v15, v17, &v24);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Successfully sent secureLocationsKeyUpdate: %{public}s", v13, 0xCu);
    sub_100004984(v14);

    v18(v23, v11);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v9, v11);
    v20(v10, v11);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10012A030()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10012A0CC, 0, 0);
}

uint64_t sub_10012A0CC()
{
  v28 = v0;

  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFBD0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10000D01C(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to send secureLocationsKeyUpdate: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = swift_allocObject();
    *(v10 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v11 = _Block_copy(v0 + 2);

    AnalyticsSendEventLazy();
    _Block_release(v11);
  }

  v13 = v0[24];
  v12 = v0[25];
  v14 = qword_1005DFB60;
  v26 = 0;
  v27 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v26 = 0xD000000000000012;
  v27 = 0x80000001004E1B90;
  v15._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  swift_getErrorValue();
  v17._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v17);

  v19 = v26;
  v18 = v27;
  v20 = *(v14 + 16);
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v13;
  v21[4] = v12;
  v21[5] = v19;
  v21[6] = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000F8968;
  *(v22 + 24) = v21;
  v0[12] = sub_1000C7A78;
  v0[13] = v22;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v23 = _Block_copy(v0 + 8);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }

  return result;
}

uint64_t sub_10012A5A4()
{
  v28 = v0;

  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFBD0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v26 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10000D01C(v6, v7, &v26);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to send secureLocationsKeyUpdate: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = swift_allocObject();
    *(v10 + 16) = 772;
    v0[6] = sub_10012BBFC;
    v0[7] = v10;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_1000119E4;
    v0[5] = &unk_100591158;
    v11 = _Block_copy(v0 + 2);

    AnalyticsSendEventLazy();
    _Block_release(v11);
  }

  v13 = v0[24];
  v12 = v0[25];
  v14 = qword_1005DFB60;
  v26 = 0;
  v27 = 0xE000000000000000;

  _StringGuts.grow(_:)(23);

  v26 = 0xD000000000000012;
  v27 = 0x80000001004E1B90;
  v15._countAndFlagsBits = Destination.destination.getter();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  swift_getErrorValue();
  v17._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v17);

  v19 = v26;
  v18 = v27;
  v20 = *(v14 + 16);
  v21 = swift_allocObject();
  v21[2] = v14;
  v21[3] = v13;
  v21[4] = v12;
  v21[5] = v19;
  v21[6] = v18;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000F8968;
  *(v22 + 24) = v21;
  v0[12] = sub_1000C7A78;
  v0[13] = v22;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10013EC94;
  v0[11] = &unk_1005911D0;
  v23 = _Block_copy(v0 + 8);

  dispatch_sync(v20, v23);
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }

  return result;
}

uint64_t sub_10012AA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[11] = v4;
  *v4 = v3;
  v4[1] = sub_10012AB4C;

  return daemon.getter();
}

uint64_t sub_10012AB4C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = sub_10004B564(&qword_1005AB8D8, &qword_1004D9660);
  v6 = sub_100009008(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DF0C(&qword_1005AB8E0, &qword_1005AB8D8, &qword_1004D9660, &unk_1004D4FC0);
  *v3 = v9;
  v3[1] = sub_10012AD38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10012AD38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_10012B3B8;
  }

  else
  {

    v4 = sub_10012AE54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10012AE54()
{
  v1 = v0[14];
  v2 = v0[8];
  v0[5] = type metadata accessor for BeaconSharingSessionContext(0);
  v0[6] = sub_100009008(&qword_1005AB8E8, type metadata accessor for BeaconSharingSessionContext, &unk_1004C5964);
  v3 = sub_10000331C(v0 + 2);
  v4 = type metadata accessor for Destination();
  (*(*(v4 - 8) + 16))(v3, v2, v4);

  return _swift_task_switch(sub_10012AF50, v1, 0);
}

uint64_t sub_10012AF50()
{
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = sub_10012B620();
  *v1 = v0;
  v1[1] = sub_10012B004;
  v3 = *(v0 + 64);

  return InternetMessaging.makeSession<A>(destination:invitationContext:)(v3, v0 + 16, &type metadata for BeaconSharingSessionMessageType, v2);
}

uint64_t sub_10012B004(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_10012B344;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    sub_100004984(v3 + 2);
    sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
    sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650, &protocol conformance descriptor for SessionMessaging<A>);
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v4 = sub_10012B198;
    v5 = v7;
    v6 = v9;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10012B198()
{
  dispatch thunk of SessionMessaging.startup()();

  return _swift_task_switch(sub_10012B200, 0, 0);
}

uint64_t sub_10012B200()
{
  v1 = v0[9];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = v0[10];
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = 0;
    v5[4] = v2;
    sub_10020D620(0, 0, v3, &unk_1004C5760, v5);
  }

  v6 = v0[17];
  v7 = v0[7];
  *(v1 + 40) = v6;

  os_unfair_lock_unlock((v1 + 32));

  *v7 = v6;

  v8 = v0[1];

  return v8();
}

uint64_t sub_10012B344()
{

  sub_100004984((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B3B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012B424()
{
  v3 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return v3();
}

uint64_t sub_10012B4C8()
{
  v3 = (&async function pointer to dispatch thunk of SessionMessaging.close() + async function pointer to dispatch thunk of SessionMessaging.close());
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return v3();
}

uint64_t sub_10012B56C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10012B4C8();
}

unint64_t sub_10012B620()
{
  result = qword_1005AB8F0;
  if (!qword_1005AB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB8F0);
  }

  return result;
}

uint64_t sub_10012B674()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10012B424();
}

uint64_t sub_10012B728()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10012B424();
}

uint64_t sub_10012B7DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SessionMessagingInvite() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10000368C;

  return sub_100127B48(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10012B92C(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000368C;

  return sub_100128330(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_10012BA44(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100127E34(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10012BB3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012BBA0(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012BC08(uint64_t a1)
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (sub_100126014())
  {
    return 1;
  }

  (*(v3 + 16))(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  unsafeFromAsyncTask<A>(_:)();

  return v8[0];
}

uint64_t sub_10012BEFC(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_1001262D4(a1, v1 + v5);
}

uint64_t sub_10012BFD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AB940, &qword_1004C5830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012C048(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[11];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100003690;

  return sub_100124454(a1, v6, v7, (v1 + 4), v8, v1 + v5, v9);
}

uint64_t sub_10012C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a8;
  v41 = a7;
  v39 = a6;
  v43 = a3;
  v44 = a5;
  v54 = a4;
  v55 = a2;
  v46 = a1;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MessageContext();
  v52 = *(v10 - 8);
  v53 = v10;
  v38 = *(v52 + 64);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v12;
  v13 = type metadata accessor for HashedAdvertisement();
  v35 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PrivateKey();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v55 + 24);
  (*(v17 + 16))(v19, v39, v16);
  (*(v14 + 16))(&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v13);
  v20 = v52;
  (*(v52 + 16))(v12, v40, v53);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = (v18 + *(v14 + 80) + v21) & ~*(v14 + 80);
  v23 = (v15 + *(v20 + 80) + v22) & ~*(v20 + 80);
  v24 = (v38 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v54;
  v27 = v55;
  *(v25 + 2) = v43;
  *(v25 + 3) = v26;
  v28 = v44;
  *(v25 + 4) = v27;
  *(v25 + 5) = v28;
  (*(v17 + 32))(&v25[v21], v19, v16);
  (*(v14 + 32))(&v25[v22], v36, v35);
  (*(v52 + 32))(&v25[v23], v37, v53);
  *&v25[v24] = v46;
  aBlock[4] = sub_10012D658;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591298;
  v29 = _Block_copy(aBlock);

  v30 = v45;
  static DispatchQoS.unspecified.getter();
  aBlock[8] = _swiftEmptyArrayStorage;
  sub_10001E038(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  v31 = v47;
  v32 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);
  (*(v51 + 8))(v31, v32);
  (*(v48 + 8))(v30, v50);
}

uint64_t sub_10012C734(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v152 = a8;
  v144 = a7;
  v141 = a6;
  v151 = a5;
  v143 = a4;
  v163 = a2;
  v158 = a1;
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v149 = &v129 - v10;
  v11 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v11 - 8);
  v135 = &v129 - v12;
  v160 = type metadata accessor for MessageContext();
  v157 = *(v160 - 8);
  v13 = __chkstk_darwin(v160);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v14;
  __chkstk_darwin(v13);
  v156 = &v129 - v16;
  v17 = type metadata accessor for HashedAdvertisement();
  v162 = *(v17 - 8);
  v18 = *(v162 + 64);
  v19 = __chkstk_darwin(v17);
  v137 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v155 = &v129 - v20;
  v21 = type metadata accessor for PrivateKey();
  v161 = *(v21 - 8);
  v22 = *(v161 + 64);
  v23 = __chkstk_darwin(v21);
  v136 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v154 = &v129 - v24;
  v25 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  __chkstk_darwin(v25 - 8);
  v27 = &v129 - v26;
  v28 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v147 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v153 = &v129 - v33;
  v146 = v34;
  __chkstk_darwin(v32);
  v36 = &v129 - v35;
  v148 = a3;
  sub_1004AD358(v158, v163);
  v37 = *(v29 + 48);
  v138 = v28;
  v38 = v37(v27, 1, v28);
  v159 = v21;
  v145 = v29;
  v150 = v17;
  v140 = v18;
  v139 = v22;
  if (v38 == 1)
  {
    v39 = v138;
    v40 = v158;
    sub_100002CE0(v27, &qword_1005AB018, &unk_1004DD720);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Received secureLocations keys but no existing record waiting for keys. Saving keys", v44, 2u);
    }

    v45 = String.utf8Data.getter();
    v47 = v46;
    v164 = v45;
    v165 = v46;
    sub_1000CA210();
    v48 = v153;
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v45, v47);
    v135 = v39[6];
    v49 = *(v161 + 56);
    v136 = (v161 + 56);
    v137 = v49;
    (v49)(v48 + v135, 1, 1, v159);
    v50 = v39[7];
    v51 = v162;
    v52 = *(v162 + 56);
    v53 = v150;
    v52(v48 + v50, 1, 1, v150);
    v54 = v40;
    v55 = v39[8];
    v56 = type metadata accessor for Destination();
    (*(*(v56 - 8) + 56))(v48 + v55, 1, 1, v56);
    v57 = v39[11];
    v58 = type metadata accessor for Date();
    (*(*(v58 - 8) + 56))(v48 + v57, 1, 1, v58);
    v59 = (v48 + v39[5]);
    v60 = v163;
    *v59 = v54;
    v59[1] = v60;
    v61 = (v48 + v39[9]);
    *v61 = 0;
    v61[1] = 0;
    *(v48 + v39[10]) = v143;

    sub_100002CE0(v48 + v50, &qword_1005AAB18, &qword_1004C4580);
    v143 = *(v51 + 16);
    v62 = v141;
    v143((v48 + v50), v141, v53);
    v52(v48 + v50, 0, 1, v53);
    v63 = v135;
    sub_100002CE0(v48 + v135, &unk_1005AE620, &qword_1004C4588);
    v64 = v161;
    v65 = *(v161 + 16);
    v66 = v151;
    v67 = v159;
    v65(v48 + v63, v151, v159);
    (v137)(v48 + v63, 0, 1, v67);
    v143(v155, v62, v53);
    v65(v154, v66, v67);
    v68 = v157;
    (*(v157 + 16))(v156, v144, v160);
    v69 = v162;
    v70 = (*(v162 + 80) + 32) & ~*(v162 + 80);
    v71 = (v140 + *(v64 + 80) + v70) & ~*(v64 + 80);
    v72 = (v139 + *(v68 + 80) + v71) & ~*(v68 + 80);
    v73 = (v142 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    v75 = v163;
    *(v74 + 16) = v158;
    *(v74 + 24) = v75;
    (*(v69 + 32))(v74 + v70, v155, v53);
    (*(v161 + 32))(v74 + v71, v154, v159);
    (*(v68 + 32))(v74 + v72, v156, v160);
    *(v74 + v73) = v148;
    *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v152;
    v76 = type metadata accessor for TaskPriority();
    v77 = v149;
    (*(*(v76 - 8) + 56))(v149, 1, 1, v76);
    v78 = v147;
    sub_10012FB10(v48, v147);
    v79 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v80 = (v146 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
    v81 = swift_allocObject();
    *(v81 + 16) = 0;
    *(v81 + 24) = 0;
    sub_10012FB74(v78, v81 + v79);
    v82 = (v81 + v80);
    *v82 = sub_10012F99C;
    v82[1] = v74;

    sub_1001D7F30(0, 0, v77, &unk_1004C4C18, v81);
  }

  else
  {
    v134 = v36;
    sub_10012FB74(v27, v36);
    v83 = *(v161 + 16);
    v133 = v161 + 16;
    v83(v154, v151, v21);
    v130 = v83;
    v85 = v162 + 16;
    v84 = *(v162 + 16);
    v86 = v15;
    v129 = v15;
    v87 = v141;
    v84(v155, v141, v17);
    v131 = v84;
    v132 = v85;
    v88 = *(v157 + 16);
    v89 = v144;
    v90 = v160;
    v88(v156, v144, v160);
    v84(v137, v87, v17);
    v91 = v159;
    v83(v136, v151, v159);
    v88(v86, v89, v90);
    v93 = v161;
    v92 = v162;
    v94 = (*(v162 + 80) + 24) & ~*(v162 + 80);
    v95 = (v140 + *(v161 + 80) + v94) & ~*(v161 + 80);
    v96 = v157;
    v151 = (v139 + *(v157 + 80) + v95) & ~*(v157 + 80);
    v97 = (v142 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    v99 = v153;
    *(v98 + 16) = v152;
    v100 = *(v92 + 32);
    v101 = v150;
    v100(v98 + v94, v137, v150);
    v102 = v93;
    v103 = *(v93 + 32);
    v104 = v91;
    v103(v98 + v95, v136, v91);
    (*(v96 + 32))(v98 + v151, v129, v160);
    *(v98 + v97) = v148;
    v105 = (v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8));
    v106 = v98;
    v107 = v163;
    *v105 = v158;
    v105[1] = v107;
    sub_10012FB10(v134, v99);
    v108 = v138;
    *(v99 + v138[10]) = v143;
    v109 = v108[6];

    sub_100002CE0(v99 + v109, &unk_1005AE620, &qword_1004C4588);
    v110 = v154;
    v130(v99 + v109, v154, v104);
    (*(v102 + 56))(v99 + v109, 0, 1, v104);
    v111 = v108[7];
    sub_100002CE0(v99 + v111, &qword_1005AAB18, &qword_1004C4580);
    v112 = v155;
    v131(v99 + v111, v155, v101);
    (*(v162 + 56))(v99 + v111, 0, 1, v101);
    v113 = v135;
    v114 = v156;
    MessageContext.fromID.getter();
    v115 = type metadata accessor for Destination();
    (*(*(v115 - 8) + 56))(v113, 0, 1, v115);
    sub_10012FDAC(v113, v99 + v108[8]);
    v116 = v114;
    v117 = MessageContext.senderCorrelationIdentifier.getter();
    v119 = v118;
    v120 = (v99 + v108[9]);

    *v120 = v117;
    v120[1] = v119;
    v121 = type metadata accessor for TaskPriority();
    v122 = v149;
    (*(*(v121 - 8) + 56))(v149, 1, 1, v121);
    v123 = v147;
    sub_10012FB10(v99, v147);
    v124 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v125 = (v146 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
    v126 = swift_allocObject();
    *(v126 + 16) = 0;
    *(v126 + 24) = 0;
    sub_10012FB74(v123, v126 + v124);
    v127 = (v126 + v125);
    *v127 = sub_10012FC34;
    v127[1] = v106;

    sub_1001D7F30(0, 0, v122, &unk_1004C5858, v126);

    (*(v157 + 8))(v116, v160);
    (*(v162 + 8))(v112, v150);
    (*(v161 + 8))(v110, v159);
    sub_10012FBD8(v134);
  }

  return sub_10012FBD8(v153);
}

uint64_t sub_10012D658()
{
  v1 = *(type metadata accessor for PrivateKey() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for HashedAdvertisement() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MessageContext() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0[2];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[5];
  v13 = *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10012C734(v9, v10, v11, v12, v0 + v2, v0 + v5, v0 + v8, v13);
}

unint64_t sub_10012D7B4()
{
  result = qword_1005ABAD0;
  if (!qword_1005ABAD0)
  {
    sub_10004B610(&unk_1005A9700, &qword_1004C3820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABAD0);
  }

  return result;
}

void sub_10012D818(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a8;
  v85 = a7;
  v95 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v99 = a2;
  v84 = type metadata accessor for Destination();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for MessageContext();
  v94 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PrivateKey();
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HashedAdvertisement();
  v91 = *(v13 - 8);
  __chkstk_darwin(v13);
  v90 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v81 - v19;
  v21 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  __chkstk_darwin(v21);
  v23 = &v81 - v22;
  sub_100005F04(a1, &v81 - v22, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005DFB98);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v29 = Error.localizedDescription.getter();
      v31 = sub_10000D01C(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to update received keys from %s", v27, 0xCu);
      sub_100004984(v28);
    }

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
LABEL_8:

        goto LABEL_24;
      }
    }

    else
    {
      swift_once();
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_8;
      }
    }

    v78 = String._bridgeToObjectiveC()();
    v79 = swift_allocObject();
    *(v79 + 16) = 522;
    aBlock[4] = sub_10012BBFC;
    aBlock[5] = v79;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_100591388;
    v80 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v80);

    goto LABEL_24;
  }

  sub_10012FB74(v23, v20);
  v93 = v20;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_10000A6F0(v32, qword_1005DFB98);
  sub_10012FB10(v93, v18);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 141558275;
    *(v36 + 4) = 1752392040;
    *(v36 + 12) = 2081;
    v38 = &v18[*(v15 + 20)];
    v39 = *v38;
    v40 = v38[1];
    v81 = v13;

    sub_10012FBD8(v18);
    v41 = sub_10000D01C(v39, v40, aBlock);
    v13 = v81;

    *(v36 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Successfully updated keys for findMyId %{private,mask.hash}s", v36, 0x16u);
    sub_100004984(v37);
  }

  else
  {

    sub_10012FBD8(v18);
  }

  v43 = v97;
  v42 = v98;
  v44 = v94;
  v46 = v90;
  v45 = v91;
  (*(v91 + 16))(v90, v87, v13);
  v47 = v92;
  v48 = v96;
  (*(v92 + 16))(v12, v88, v96);
  (*(v44 + 16))(v43, v89, v42);
  v49 = Logger.logObject.getter();
  LODWORD(v94) = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v94))
  {
    v50 = swift_slowAlloc();
    v89 = v33;
    v51 = v47;
    v52 = v50;
    v88 = swift_slowAlloc();
    aBlock[0] = v88;
    *v52 = 141559299;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    sub_10001E038(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    v87 = v49;
    v53 = RawRepresentable<>.base64EncodedString(options:)();
    v54 = v44;
    v56 = v55;
    (*(v45 + 8))(v46, v13);
    v57 = v12;
    v58 = sub_10000D01C(v53, v56, aBlock);

    *(v52 + 14) = v58;
    *(v52 + 22) = 2160;
    *(v52 + 24) = 1752392040;
    *(v52 + 32) = 2081;
    sub_10001E038(&qword_1005AAC90, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    v59 = v96;
    v60 = RawRepresentable<>.base64EncodedString(options:)();
    v62 = v61;
    (*(v51 + 8))(v57, v59);
    v63 = sub_10000D01C(v60, v62, aBlock);

    *(v52 + 34) = v63;
    *(v52 + 42) = 2160;
    *(v52 + 44) = 1752392040;
    *(v52 + 52) = 2081;
    v64 = v82;
    v65 = v97;
    MessageContext.fromID.getter();
    sub_10001E038(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v66 = v84;
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v83 + 8))(v64, v66);
    (*(v54 + 8))(v65, v98);
    v70 = sub_10000D01C(v67, v69, aBlock);

    *(v52 + 54) = v70;
    v71 = v87;
    _os_log_impl(&_mh_execute_header, v87, v94, "Received Keys for \nlocationId %{private,mask.hash}s \ndecryptionKey %{private,mask.hash}s \nfrom %{private,mask.hash}s", v52, 0x3Eu);
    swift_arrayDestroy();
  }

  else
  {

    (*(v44 + 8))(v43, v98);
    (*(v47 + 8))(v12, v48);
    (*(v45 + 8))(v46, v13);
  }

  v72 = *(v95 + 80);
  if (v72)
  {
    v73 = *(v95 + 88);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Calling keys received handler", v76, 2u);
    }

    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1004C1900;
    *(v77 + 32) = v85;
    *(v77 + 40) = v86;

    v72(v77);
    sub_1000CA9C0(v72, v73);
  }

  sub_10012FBD8(v93);
LABEL_24:
  Transaction.capture()();
  Transaction.capture()();
}

void sub_10012E408(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v89 = a8;
  v90 = a3;
  v82 = a5;
  v83 = a6;
  v81 = a4;
  v88 = a2;
  v77 = type metadata accessor for Destination();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for MessageContext();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PrivateKey();
  v12 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HashedAdvertisement();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10004B564(&qword_1005AB028, &qword_1004C4C20);
  __chkstk_darwin(v18);
  v19 = a1;
  v21 = (&v73 - v20);
  sub_100005F04(v19, &v73 - v20, &qword_1005AB028, &qword_1004C4C20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v74 = v21;
    v78 = a7;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    v32 = sub_10000A6F0(v31, qword_1005DFB98);
    v33 = v90;

    v79 = v32;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      *(v36 + 14) = sub_10000D01C(v88, v33, aBlock);
      _os_log_impl(&_mh_execute_header, v34, v35, "Successfully updated keys for findMyId %{private,mask.hash}s", v36, 0x16u);
      sub_100004984(v37);
    }

    v38 = v87;
    v39 = v85;
    (*(v15 + 16))(v17, v81, v14);
    v40 = v80;
    v41 = v84;
    (*(v12 + 16))(v80, v82, v84);
    v42 = v86;
    (v39[2].isa)(v86, v83, v38);
    v43 = Logger.logObject.getter();
    LODWORD(v83) = static os_log_type_t.default.getter();
    v85 = v43;
    v44 = os_log_type_enabled(v43, v83);
    v45 = v78;
    if (v44)
    {
      v46 = v39;
      v47 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock[0] = v82;
      *v47 = 141559299;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      sub_10001E038(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
      v48 = RawRepresentable<>.base64EncodedString(options:)();
      v50 = v49;
      (*(v15 + 8))(v17, v14);
      v51 = sub_10000D01C(v48, v50, aBlock);

      *(v47 + 14) = v51;
      *(v47 + 22) = 2160;
      *(v47 + 24) = 1752392040;
      *(v47 + 32) = 2081;
      sub_10001E038(&qword_1005AAC90, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
      v52 = RawRepresentable<>.base64EncodedString(options:)();
      v54 = v53;
      (*(v12 + 8))(v40, v41);
      v55 = sub_10000D01C(v52, v54, aBlock);

      *(v47 + 34) = v55;
      *(v47 + 42) = 2160;
      *(v47 + 44) = 1752392040;
      *(v47 + 52) = 2081;
      v56 = v75;
      v57 = v86;
      MessageContext.fromID.getter();
      sub_10001E038(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v58 = v77;
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      (*(v76 + 8))(v56, v58);
      (v46[1].isa)(v57, v87);
      v62 = sub_10000D01C(v59, v61, aBlock);
      v45 = v78;

      *(v47 + 54) = v62;
      v63 = v85;
      _os_log_impl(&_mh_execute_header, v85, v83, "Received Keys for \nlocationId %{private,mask.hash}s \ndecryptionKey %{private,mask.hash}s \nfrom %{private,mask.hash}s", v47, 0x3Eu);
      swift_arrayDestroy();

      v64 = *(v45 + 80);
      if (!v64)
      {
        goto LABEL_20;
      }
    }

    else
    {

      (v39[1].isa)(v42, v38);
      (*(v12 + 8))(v40, v41);
      (*(v15 + 8))(v17, v14);
      v64 = *(v45 + 80);
      if (!v64)
      {
LABEL_20:
        sub_100002CE0(v74, &qword_1005AB028, &qword_1004C4C20);
        goto LABEL_23;
      }
    }

    v65 = *(v45 + 88);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Calling keys received handler", v68, 2u);
    }

    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1004C1900;
    *(v69 + 32) = v88;
    *(v69 + 40) = v90;

    v64(v69);

    sub_1000CA9C0(v64, v65);
    goto LABEL_20;
  }

  v22 = *v21;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFB98);
  v24 = v90;

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315394;
    *(v27 + 4) = sub_10000D01C(v88, v24, aBlock);
    *(v27 + 12) = 2080;
    v91 = v22;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v28 = String.init<A>(describing:)();
    v30 = sub_10000D01C(v28, v29, aBlock);

    *(v27 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v25, v26, "Failed to save new sharedKeyRecord from %s Error %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_8;
    }

LABEL_22:
    v70 = String._bridgeToObjectiveC()();
    v71 = swift_allocObject();
    *(v71 + 16) = 266;
    aBlock[4] = sub_10013023C;
    aBlock[5] = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000119E4;
    aBlock[3] = &unk_1005913D8;
    v72 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v72);

    goto LABEL_23;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:

LABEL_23:
  Transaction.capture()();
}

uint64_t sub_10012EF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v26 = *(v9 - 8);
  v27 = v9;
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + 24);
  (*(v13 + 16))(v15, a4, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v13 + 32))(v18 + v16, v15, v12);
  *(v18 + v17) = v23;
  aBlock[4] = sub_100130180;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591428;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001E038(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10012D7B4();
  v20 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v28 + 8))(v8, v20);
  (*(v26 + 8))(v11, v27);
}

uint64_t sub_10012F300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40[1] = a3;
  v40[2] = a1;
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v40 - v13;
  __chkstk_darwin(v12);
  v16 = v40 - v15;
  v17 = sub_1004B7328();
  v42 = a2;
  sub_100450000(sub_100130210, v17, v16);

  v41 = v16;
  sub_100005F04(v16, v14, &qword_1005AB018, &unk_1004DD720);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    sub_100002CE0(v14, &qword_1005AB018, &unk_1004DD720);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received command to remove keys but no key record found to remove", v22, 2u);
    }

    return sub_100002CE0(v41, &qword_1005AB018, &unk_1004DD720);
  }

  else
  {
    sub_10012FB74(v14, v7);
    v24 = &v7[*(v4 + 20)];
    v26 = *v24;
    v25 = v24[1];
    sub_1004AD358(*v24, v25);
    v27 = v18(v11, 1, v4);
    sub_100002CE0(v11, &qword_1005AB018, &unk_1004DD720);
    if (v27 == 1)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_10000A6F0(v28, qword_1005DFB98);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Received command to remove keys but no key record found to remove", v31, 2u);
      }
    }

    else
    {
      v32 = sub_1004B7528(v26, v25);
      v33 = sub_1004B7FD8(v26, v25);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000A6F0(v34, qword_1005DFB98);

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v43 = v38;
        *v37 = 136315650;

        v39 = sub_10000D01C(v26, v25, &v43);

        *(v37 + 4) = v39;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v32 & 1;
        *(v37 + 18) = 1024;
        *(v37 + 20) = v33 & 1;
        _os_log_impl(&_mh_execute_header, v35, v36, "Removed cached keys for %s keys %{BOOL}d location %{BOOL}d", v37, 0x18u);
        sub_100004984(v38);
      }

      Transaction.capture()();
    }

    sub_100002CE0(v41, &qword_1005AB018, &unk_1004DD720);
    return sub_10012FBD8(v7);
  }
}

uint64_t sub_10012F860(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SecureLocationsCachedSharedKey(0);
  v6 = String.utf8Data.getter();
  v8 = v7;
  v11[0] = v6;
  v11[1] = v7;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v6, v8);
  v9 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v9 & 1;
}

void sub_10012F99C(uint64_t a1)
{
  v3 = *(type metadata accessor for HashedAdvertisement() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PrivateKey() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v11);
  v15 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10012E408(a1, v12, v13, v1 + v4, v1 + v7, v1 + v10, v14, v15);
}

uint64_t sub_10012FB10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FB74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FBD8(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10012FC34(uint64_t a1)
{
  v3 = *(type metadata accessor for HashedAdvertisement() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PrivateKey() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageContext() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v11);
  v13 = *(v1 + 16);
  v14 = (v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  sub_10012D818(a1, v13, (v1 + v4), v1 + v7, v1 + v10, v12, v15, v16);
}

uint64_t sub_10012FDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012FE1C(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B1814(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_10012FF4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7F10 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000A6F0(v7, qword_1005DFBD0);
  (*(v4 + 16))(v6, a2, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_10000D01C(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "STUB: handleSecureLocationsKeyUpdateAck() for %s", v10, 0xCu);
    sub_100004984(v11);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100130180()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10012F300(v3, v0 + v2, v4);
}

uint64_t sub_10013024C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v2)
  {
    sub_1000BAF2C(v11, v12);
    if (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() == 1)
    {
      sub_1000BAF2C(v11, v12);
      sub_100131034(&qword_1005AAB48, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      (*(v6 + 32))(a2, v8, v5);
    }

    else
    {
      sub_100130FE0();
      swift_allocError();
      swift_willThrow();
    }

    sub_100004984(v11);
  }

  return sub_100004984(a1);
}

uint64_t sub_100130444(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Destination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v14[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100130CD0(v3, v11);
  (*(v6 + 32))(v8, v11, v5);
  sub_1000BAF2C(v14, v15);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_1000BAF2C(v14, v15);
    sub_100131034(&qword_1005AAB78, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  (*(v6 + 8))(v8, v5);
  return sub_100004984(v14);
}

Swift::Int sub_10013068C(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_100130CD0(v1, v3);
  Hasher._combine(_:)(0);
  v4 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v4 - 8) + 8))(v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_1001307A4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130CD0(v1, v3);
  Hasher._combine(_:)(0);
  v4 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  return (*(*(v4 - 8) + 8))(v3, v4);
}

Swift::Int sub_1001308A8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_100130CD0(v1, v3);
  Hasher._combine(_:)(0);
  v4 = type metadata accessor for Destination();
  sub_100131034(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v4 - 8) + 8))(v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_1001309BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005ABA18, &qword_1004C59A0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = *(v5 + 56);
  sub_100130CD0(a1, &v12 - v6);
  sub_100130CD0(a2, &v7[v8]);
  LOBYTE(a2) = static Destination.== infix(_:_:)();
  v9 = type metadata accessor for Destination();
  v10 = *(*(v9 - 8) + 8);
  v10(&v7[v8], v9);
  v10(v7, v9);
  return a2 & 1;
}

uint64_t sub_100130AC0()
{
  v1 = type metadata accessor for Destination();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BeaconSharingSessionContext(0);
  __chkstk_darwin(v5 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100130CD0(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  v12[0] = 0x6369766544656D2ELL;
  v12[1] = 0xEA00000000002865;
  sub_100131034(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v12[0];
  (*(v2 + 8))(v4, v1);
  return v10;
}

uint64_t type metadata accessor for BeaconSharingSessionContext(uint64_t a1)
{
  result = qword_1005AB9C0;
  if (!qword_1005AB9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100130CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconSharingSessionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100130D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Destination();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100130DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Destination();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_100130E1C(uint64_t a1)
{
  result = type metadata accessor for Destination();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_100130FE0()
{
  result = qword_1005ABA10;
  if (!qword_1005ABA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA10);
  }

  return result;
}

uint64_t sub_100131034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100131090()
{
  result = qword_1005ABA20;
  if (!qword_1005ABA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA20);
  }

  return result;
}

Swift::Int sub_1001310F4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100131160()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100131280()
{
  result = qword_1005ABA28;
  if (!qword_1005ABA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA28);
  }

  return result;
}

unint64_t sub_1001312D8()
{
  result = qword_1005ABA30;
  if (!qword_1005ABA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA30);
  }

  return result;
}

unint64_t sub_100131330()
{
  result = qword_1005ABA38;
  if (!qword_1005ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA38);
  }

  return result;
}

unint64_t sub_100131388()
{
  result = qword_1005ABA40;
  if (!qword_1005ABA40)
  {
    sub_10004B610(&qword_1005ABA48, qword_1004C5B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA40);
  }

  return result;
}

unint64_t sub_1001313F0()
{
  result = qword_1005ABA50;
  if (!qword_1005ABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABA50);
  }

  return result;
}

Swift::Int CurrentLocationMonitor.Mode.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t CurrentLocationMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*CurrentLocationMonitor.delegate.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10013166C;
}

void sub_100131670(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CurrentLocationMonitor.currentLocation.getter()
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_10013171C@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for CLAuthorizationStatus(0);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a1 = v3;
  return result;
}

uint64_t CurrentLocationMonitor.currentAuthorizationStatus.getter()
{
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_10013180C(int a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  result = v18(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  v17 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus;
  if (*&v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus] == a1)
  {
    return result;
  }

  v11 = static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004C2310;
  v22 = *&v1[v17];
  *(v21 + 56) = &type metadata for Int32;
  *(v21 + 64) = &protocol witness table for Int32;
  *(v21 + 32) = v22;
  *(v21 + 96) = &type metadata for Int32;
  *(v21 + 104) = &protocol witness table for Int32;
  *(v21 + 72) = a1;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v20, "authorization changed from %d to %d", v29, v30);

  *&v1[v17] = a1;
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = a1;
  aBlock[4] = sub_10013405C;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100591868;
  v25 = _Block_copy(aBlock);
  v26 = v1;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v27 = v30;
  v28 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v32 + 8))(v27, v28);
  (*(v29 + 8))(v6, v31);
}

uint64_t sub_100131D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *CurrentLocationMonitor.init(mode:desiredAccuracy:)(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  v37 = a3;
  v36 = a2;
  v45 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor__currentAuthorizationStatus] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] = 0;
  v44 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue;
  v43 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v11);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100134098(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v15 = v10;
  *&v3[v44] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts] = 0;
  v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] = 0;
  v16 = objc_allocWithZone(NSBundle);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithPath:v17];

  if (v18)
  {
    v19 = [objc_opt_self() authorizationStatusForBundle:v18];
  }

  else
  {
    v19 = 0;
  }

  v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode] = v45 & 1;
  LODWORD(aBlock[0]) = v19;
  sub_10004B564(&qword_1005ABAA0, &unk_1004C5BE8);
  swift_allocObject();
  v20 = CurrentValueSubject.init(_:)();
  *&v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_authorizationStatusSubject] = v20;
  aBlock[0] = v20;
  sub_10001DF0C(&qword_1005ABAB0, &qword_1005ABAA0, &unk_1004C5BE8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  *&v4[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_authorizationStatusPublisher] = Publisher.eraseToAnyPublisher()();
  v21 = type metadata accessor for CurrentLocationMonitor();
  v48.receiver = v4;
  v48.super_class = v21;
  v22 = objc_msgSendSuper2(&v48, "init");
  v23 = objc_allocWithZone(NSBundle);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithPath:v24];

  if (v25)
  {
    v26 = *&v22[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v25;
    *(v27 + 32) = v36;
    *(v27 + 40) = v37 & 1;
    aBlock[4] = sub_10013260C;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_100591598;
    v28 = _Block_copy(aBlock);
    v29 = v26;
    v30 = v22;
    v31 = v25;
    v32 = v15;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v33 = v40;
    v34 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v28);

    (*(v41 + 8))(v33, v34);
    (*(v38 + 8))(v32, v39);
  }

  return v22;
}

uint64_t sub_100132550(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(CLLocationManager) initWithEffectiveBundle:a2 delegate:a1 onQueue:*(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue)];
  v9 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager;
  v10 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager);
  *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) = v8;

  if ((a4 & 1) == 0)
  {
    [*(a1 + v9) setDesiredAccuracy:*&a3];
  }

  result = static SystemInfo.underTest.getter();
  if ((result & 1) == 0)
  {
    v12 = [objc_opt_self() authorizationStatusForBundle:a2];
    return sub_10013180C(v12);
  }

  return result;
}

id sub_100132644(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_1005DFBE8, "requesting location", 19, 2, _swiftEmptyArrayStorage);
  v3 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager);

  return [v3 requestLocation];
}

uint64_t sub_100132724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

void sub_1001329E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts;
  v4 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts) = v6;
    v2 = static os_log_type_t.default.getter();
    if (qword_1005A7F18 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v8 = swift_allocObject();
  v9 = *(v1 + v3);
  *(v8 + 16) = xmmword_1004C1900;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "startCounts = %d", v12);

  if (*(v1 + v3) == 1)
  {
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v7, "starting location monitor", 25, 2, _swiftEmptyArrayStorage);
    if (*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode))
    {
      v11 = &selRef_startMonitoringSignificantLocationChanges;
    }

    else
    {
      v11 = &selRef_startUpdatingLocation;
    }

    [*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) *v11];
    *(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted) = 1;
  }
}

void sub_100132B9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts;
  v4 = *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    *(a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_startCounts) = v6;
    v2 = static os_log_type_t.default.getter();
    if (qword_1005A7F18 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v8 = swift_allocObject();
  v9 = *(v1 + v3);
  *(v8 + 16) = xmmword_1004C1900;
  *(v8 + 56) = &type metadata for Int;
  *(v8 + 64) = &protocol witness table for Int;
  *(v8 + 32) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "startCounts = %d", v12);

  if (!*(v1 + v3))
  {
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v7, "stopping location monitor", 25, 2, _swiftEmptyArrayStorage);
    if (*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_mode))
    {
      v11 = &selRef_stopMonitoringSignificantLocationChanges;
    }

    else
    {
      v11 = &selRef_stopUpdatingLocation;
    }

    [*(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager) *v11];
    *(v1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted) = 0;
  }
}

_BYTE *sub_100132D4C(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted;
  if ((result[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] & 1) == 0)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1005A7F18 != -1)
    {
      v4 = v3;
      swift_once();
      v3 = v4;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_1005DFBE8, "startMonitorIfNeeded starting location monitor", 46, 2, _swiftEmptyArrayStorage);
    result = [*&v2[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] startUpdatingLocation];
    v2[v1] = 1;
  }

  return result;
}

_BYTE *sub_100132E40(_BYTE *result)
{
  v1 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted;
  if (result[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationMonitorStarted] == 1)
  {
    v2 = result;
    v3 = static os_log_type_t.default.getter();
    if (qword_1005A7F18 != -1)
    {
      v4 = v3;
      swift_once();
      v3 = v4;
    }

    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_1005DFBE8, "force stopping location monitor", 31, 2, _swiftEmptyArrayStorage);
    result = [*&v2[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_locationManager] stopUpdatingLocation];
    v2[v1] = 0;
  }

  return result;
}

id CurrentLocationMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CurrentLocationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationMonitor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100133060()
{
  type metadata accessor for CLAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t (*sub_1001330D4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100134130;
}

void sub_100133174(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id sub_10013320C()
{
  v1 = type metadata accessor for KoreaFeatureFlag();
  v18[3] = v1;
  v18[4] = sub_100134098(&qword_1005AB4D8, &type metadata accessor for KoreaFeatureFlag, &protocol conformance descriptor for KoreaFeatureFlag);
  v2 = sub_10000331C(v18);
  (*(*(v1 - 8) + 104))(v2, enum case for KoreaFeatureFlag.ArcticPlum(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100004984(v18);
  if (v1)
  {
    return 0;
  }

  if (static SystemInfo.isInternalBuild.getter())
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      v7 = static os_log_type_t.default.getter();
      sub_1000545A4(0, &qword_1005ABEA0, OS_os_log_ptr);
      v8 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "SystemInfo simulating all locations in Korea.", 45, 2, _swiftEmptyArrayStorage);
      v9 = 1;
LABEL_13:

      return v9;
    }
  }

  [v0 coordinate];
  v11 = v10;
  [v0 coordinate];
  v13 = v12;
  if (qword_1005A7F50 != -1)
  {
    swift_once();
  }

  result = [qword_1005ABBC0 containsCoordinate:{v11, v13}];
  if (result)
  {
    v14 = qword_1005ABBC8;
    if (qword_1005ABBC8)
    {
      v8 = qword_1005ABBC8;
    }

    else
    {
      v15 = sub_100135FAC();
      v16 = qword_1005ABBC8;
      qword_1005ABBC8 = v15;
      v8 = v15;

      v14 = 0;
    }

    v17 = v14;
    v9 = [v8 containsCoordinate:{v11, v13}];
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100133480(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(a1, &protocol witness table for CurrentLocationMonitor, a2, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

double CurrentLocationMonitor.locationManager(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  v2 = static os_log_type_t.error.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  v3 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C1900;
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000588B8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "failed with error - %{public}@", 30, 2, v4);

  return result;
}

uint64_t sub_100133874()
{
  sub_1000545A4(0, &qword_1005ABEA0, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  qword_1005DFBE8 = result;
  return result;
}

uint64_t sub_1001338EC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  v11 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C2310;
  v13 = &v1[OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *(v13 + 1);
  aBlock = Strong;
  v51 = v15;
  sub_10004B564(&qword_1005ABB80, &qword_1004C5CF0);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v12 + 56) = &type metadata for String;
  v19 = sub_1000588B8();
  *(v12 + 64) = v19;
  *(v12 + 32) = v16;
  *(v12 + 40) = v18;
  if (a1 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  aBlock = v20;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v19;
  *(v12 + 72) = v21;
  *(v12 + 80) = v22;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "didUpdateLocations(%{pubic}@) - %{public}@", 42, 2, v12);

  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = *(a1 + 32);
  }

  v25 = v24;
  if (sub_10013320C())
  {
    v26 = 0;
  }

  else
  {
    v27 = v25;
    v26 = v25;
  }

  v28 = OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_currentLocation;
  swift_beginAccess();
  v29 = *&v2[v28];
  *&v2[v28] = v26;
  v30 = v26;

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v32 = v41;
  v31 = v42;
  (*(v41 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v42);
  v33 = static OS_dispatch_queue.global(qos:)();
  (*(v32 + 8))(v9, v31);
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  *(v34 + 24) = v26;
  v54 = sub_100134090;
  v55 = v34;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100020828;
  v53 = &unk_1005918B8;
  v35 = _Block_copy(&aBlock);
  v36 = v30;
  v37 = v2;
  v38 = v43;
  static DispatchQoS.unspecified.getter();
  v49 = _swiftEmptyArrayStorage;
  sub_100134098(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v39 = v45;
  v40 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v47 + 8))(v39, v40);
  (*(v44 + 8))(v38, v46);
}

uint64_t sub_100133EBC(uint64_t a1)
{
  v1 = a1;
  v2 = static os_log_type_t.default.getter();
  if (qword_1005A7F18 != -1)
  {
    swift_once();
  }

  v3 = qword_1005DFBE8;
  sub_10004B564(&qword_1005A8C90, &qword_1004C5FC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C1900;
  type metadata accessor for CLAuthorizationStatus(0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000588B8();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "didChangeAuthorization - %{public}@", 35, 2, v4);

  sub_10013180C(v1);
  return CurrentValueSubject.send(_:)();
}

unint64_t sub_100133FF8()
{
  result = qword_1005ABAE0;
  if (!qword_1005ABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABAE0);
  }

  return result;
}

uint64_t sub_100134098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100134134()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1005ABB88 = result;
  return result;
}

void sub_10013419C(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v6 << 6)));
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v18 = v8[3];
        v12 = v8[4];
        v13 = qword_1005A7F28;

        if (v13 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = off_1005ABB90;
        off_1005ABB90 = 0x8000000000000000;
        sub_1004525D4(v10, v9, v18, v12, isUniquelyReferenced_nonNull_native);

        off_1005ABB90 = v20;
        swift_endAccess();
        if (qword_1005A7F30 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1004C1900;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        v19 = v15;
        sub_1002492B0(v11);
        swift_beginAccess();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v21 = off_1005ABB98;
        off_1005ABB98 = 0x8000000000000000;
        sub_100453324(v19, v18, v12, v16);

        off_1005ABB98 = v21;
        swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
}

uint64_t sub_100134434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1005A7F28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1005ABB90;
  if (*(off_1005ABB90 + 2) && (v7 = sub_1000110D8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 16 * v7);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  *a3 = v9;
  a3[1] = v10;
  return swift_endAccess();
}

void sub_10013450C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1005A7F30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_1005ABB98;
  if (*(off_1005ABB98 + 2) && (v7 = sub_1000110D8(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    *a3 = v9;
  }

  else
  {
    swift_endAccess();
    *a3 = _swiftEmptyArrayStorage;
  }
}

uint64_t sub_1001345F0()
{
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1005ABBA0 = result;
  return result;
}

void sub_100134658(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_8:
        v8 = (*(a1 + 48) + 40 * (__clz(__rbit64(v4)) | (v6 << 6)));
        v10 = *v8;
        v9 = v8[1];
        v11 = v8[2];
        v18 = v8[3];
        v12 = v8[4];
        v13 = qword_1005A7F40;

        if (v13 != -1)
        {
          swift_once();
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = qword_1005ABBA8;
        qword_1005ABBA8 = 0x8000000000000000;
        sub_1004525D4(v10, v9, v18, v12, isUniquelyReferenced_nonNull_native);

        qword_1005ABBA8 = v20;
        swift_endAccess();
        if (qword_1005A7F48 != -1)
        {
          swift_once();
        }

        v4 &= v4 - 1;
        sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1004C1900;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        v19 = v15;
        sub_1002492B0(v11);
        swift_beginAccess();
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v21 = qword_1005ABBB0;
        qword_1005ABBB0 = 0x8000000000000000;
        sub_100453324(v19, v18, v12, v16);

        qword_1005ABBB0 = v21;
        swift_endAccess();
      }

      while (v4);
    }
  }

  __break(1u);
}

Swift::Int sub_1001348F0()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001349AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return String.hash(into:)();
}

Swift::Int sub_100134A58()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      String.hash(into:)();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100134B10(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10022BB24(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100134BD4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_100134D38;

  return daemon.getter();
}

uint64_t sub_100134D38(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FriendshipService(0);
  v6 = sub_100009050(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009050(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  *v3 = v9;
  v3[1] = sub_100134F14;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100134F14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_1000DC3DC;
  }

  else
  {

    v4 = sub_100135030;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100135030()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.follower(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_100135190;

  return sub_1002BD010(v4);
}

uint64_t sub_100135190(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1000DC46C;
  }

  else
  {

    v4 = sub_1001352AC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001352AC()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v35 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    v32 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v33 = (v0[4] + 8);
    do
    {
      v41 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v35(v7, v4, v9);
      v35(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v33;
      (*v33)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v39 = v14;
        v40 = v12;
        v36 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v37 = v22;
        v38 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v32;
        (*v32)(v16, v18);
        v24(v36, v18);
        v5 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1001FD1C8(0, *(v41 + 2) + 1, 1, v41);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_1001FD1C8((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v38;
        *(v27 + 5) = v37;
        *(v27 + 6) = v23;
        *(v27 + 7) = v40;
        *(v27 + 8) = v39;
      }

      else
      {
        v6 = *v32;
        (*v32)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v41;
      }

      v4 += v34;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v28 = v0[2];
  v29 = sub_10023F0A4(v5);

  *v28 = v29;

  v30 = v0[1];

  return v30();
}

uint64_t sub_1001355CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Handle();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Friend();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_100135730;

  return daemon.getter();
}

uint64_t sub_100135730(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FriendshipService(0);
  v6 = sub_100009050(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100009050(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  *v3 = v9;
  v3[1] = sub_10013590C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10013590C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_100135DB4;
  }

  else
  {

    v4 = sub_100135A28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100135A28()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 128) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_100135B88;

  return sub_1002BD010(v4);
}

uint64_t sub_100135B88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_100135DB8;
  }

  else
  {

    v4 = sub_100135DB0;
  }

  return _swift_task_switch(v4, 0, 0);
}

__n128 sub_100135CA4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100135CB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100135D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100135D5C()
{
  result = qword_1005ABBB8;
  if (!qword_1005ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005ABBB8);
  }

  return result;
}

void *sub_100135DBC()
{
  result = sub_100135DDC();
  qword_1005ABBC0 = result;
  return result;
}

void *sub_100135DDC()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v2];

    v3 = [objc_allocWithZone(GEOLatLng) initWithLatitude:31.8502665 longitude:125.094901];
    [v1 addVertex:v3];

    v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:36.7747537 longitude:133.334647];
    [v1 addVertex:v4];

    v5 = [objc_allocWithZone(GEOLatLng) initWithLatitude:39.1903306 longitude:130.434257];
    [v1 addVertex:v5];

    v6 = [objc_allocWithZone(GEOLatLng) initWithLatitude:38.3767625 longitude:123.875419];
    [v1 addVertex:v6];

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100135FAC()
{
  v0 = [objc_allocWithZone(GEOMapRegion) init];
  if (v0)
  {
    v1 = v0;
    v2 = 36;
    v3 = &unk_10058AE20;
    do
    {
      v4 = [objc_allocWithZone(GEOLatLng) initWithLatitude:*v3 longitude:*(v3 - 1)];
      [v1 addVertex:v4];

      v3 += 2;
      --v2;
    }

    while (v2);
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1001360B8(void *a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  if (qword_1005A7E90 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v6 = a1[15];
    object = a1[16];
    if (sub_10021B304(v6, object, qword_1005DFA80))
    {
      break;
    }

    v220 = v3;
    v13 = sub_1000D13B0(v4 & 1);
    v14 = v13 + 8;
    v15 = 1 << *(v13 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v13[8];
    swift_beginAccess();
    v18 = 0;
    v19 = (v15 + 63) >> 6;
    *&v20 = 138412290;
    v219 = v20;
    v223 = a1;
    v221 = v13;
    v222 = v19;
    while (v17)
    {
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v18 << 10) | (16 * v22);
      v24 = v13[7];
      v25 = (v13[6] + v23);
      v3 = v25[1];
      v226 = *v25;
      v26 = (v24 + v23);
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = a1[14];
      v30 = *(v29 + 16);

      v225 = v27;
      sub_100139350(v27, v28);
      v224 = v28;
      if (v30)
      {

        v31 = sub_1000110D8(v226, v3);
        if ((v32 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1000534E8(*(v29 + 56) + 48 * v31, &v233);

        if (v28 <= 1)
        {
          if (v28)
          {
            sub_1001393D8();
            v34 = NSNumber.init(BOOLeanLiteral:)(v225 & 1).super.super.isa;
          }

          else
          {
            v33 = v225;
            sub_100139350(v225, 0);
            v34 = v33;
          }

          v92 = v34;
          goto LABEL_103;
        }

        if (v28 != 2)
        {
          sub_1000534E8(&v233, &v228);
          if (v229[24] != 3)
          {
LABEL_146:

            sub_100053550(&v228);
            sub_10005360C();
            swift_allocError();
            swift_willThrow();

            sub_100053550(&v233);
            return;
          }

          v93 = v225;
          sub_100010BD4(&v228._countAndFlagsBits, v230);
          v94 = sub_100011AEC(v230, v231);
          __chkstk_darwin(v94);
          (*(v96 + 16))(v213 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000535B8();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v223;
          v92 = [objc_allocWithZone(NSNumber) initWithDouble:*&v228._countAndFlagsBits + *&v93];
          sub_100004984(v230);
          goto LABEL_103;
        }

        sub_1000534E8(&v233, &v228);
        if (v229[24] != 2)
        {
          goto LABEL_146;
        }

        sub_100010BD4(&v228._countAndFlagsBits, v230);
        v78 = v231;
        v77 = v232;
        v79 = sub_100011AEC(v230, v231);
        v217 = v213;
        __chkstk_darwin(v79);
        v215 = v80;
        v81 = v213 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
        v218 = v82;
        (*(v82 + 16))(v81);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v228._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v83 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v83 < 64)
            {
              goto LABEL_90;
            }

            v216 = v77;
            v214 = v213;
            __chkstk_darwin(v83);
            v85 = v213 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v86 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v218 + 8))(v85, v78);
            v77 = v216;
            if (v86)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v214) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v120 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v214)
            {
              v216 = v77;
              if (v120 <= 64)
              {
                v214 = *(*(v77 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v213[2] = v213;
                __chkstk_darwin(AssociatedTypeWitness);
                v213[0] = v213 - v126;
                swift_getAssociatedConformanceWitness();
                v127 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v213[1] = v213;
                __chkstk_darwin(v127);
                v129 = v213 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v130 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v218 + 8))(v129, v78);
                if (v130)
                {
                  goto LABEL_164;
                }

                v77 = v216;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v214 = v213;
              __chkstk_darwin(v120);
              v122 = v213 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_100053494();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v123 = dispatch thunk of static Comparable.< infix(_:_:)();
              v124 = v122;
              v77 = v216;
              (*(v218 + 8))(v124, v78);
              if (v123)
              {
                goto LABEL_164;
              }
            }

            else if (v120 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v228._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v131 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v132 = v77;
          v133 = v131;
          v216 = v132;
          v134 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v133)
          {
            if (v134 > 64)
            {
              goto LABEL_94;
            }
          }

          else if (v134 >= 64)
          {
LABEL_94:
            v214 = v213;
            __chkstk_darwin(v134);
            v215 = v213 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v136 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v218 + 8))(v215, v78);
            if (v136)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v137 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v218 + 8))(v81, v78);
        v48 = __OFADD__(v137, v225);
        v138 = &v225[v137];
        if (v48)
        {
          goto LABEL_155;
        }

        v92 = [objc_allocWithZone(NSNumber) initWithLongLong:v138];
        sub_100004984(v230);
        a1 = v223;
LABEL_103:
        objc_opt_self();
        v139 = swift_dynamicCastObjCClass();
        if (v139)
        {
          v140 = v139;
          v141 = v92;
          v142 = String.init(_:)(v140);
          v143 = a1;
          v144 = sub_1000246F4();
          swift_beginAccess();
          v228 = v142;
          *&v229[8] = &type metadata for String;
          *&v229[16] = v144;
          v229[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v227 = v143[14];
          v146 = v227;
          v143[14] = 0x8000000000000000;
          v147 = sub_1000110D8(v226, v3);
          v149 = v146[2];
          v150 = (v148 & 1) == 0;
          v48 = __OFADD__(v149, v150);
          v151 = v149 + v150;
          if (v48)
          {
            goto LABEL_152;
          }

          v152 = v148;
          if (v146[3] >= v151)
          {
            v13 = v221;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v208 = v147;
              sub_100202528();
              v147 = v208;
            }
          }

          else
          {
            sub_10022BE4C(v151, isUniquelyReferenced_nonNull_native);
            v147 = sub_1000110D8(v226, v3);
            v13 = v221;
            if ((v152 & 1) != (v153 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v223;
          if (v152)
          {
            v172 = v147;

            v4 = v227;
            sub_100053580(&v228, v227[7] + 48 * v172);
          }

          else
          {
            v4 = v227;
            v227[(v147 >> 6) + 8] |= 1 << v147;
            v173 = (v4[6] + 16 * v147);
            *v173 = v226;
            v173[1] = v3;
            v174 = (v4[7] + 48 * v147);
            v175 = *&v229[9];
            v176 = *v229;
            *v174 = v228;
            v174[1] = v176;
            *(&v174[1]._object + 1) = v175;
            v177 = v4[2];
            v48 = __OFADD__(v177, 1);
            v178 = v177 + 1;
            if (v48)
            {
              goto LABEL_154;
            }

            v4[2] = v178;
          }

          v19 = v222;
          a1[14] = v4;
          swift_endAccess();
          sub_100139360(v225, v224);
        }

        else
        {

          objc_opt_self();
          v154 = swift_dynamicCastObjCClass();
          if (v154)
          {
            v155 = v154;
            [v154 doubleValue];
            v157 = v156;
            v158 = [v155 integerValue];
            if (v157 == v158)
            {
              v159 = v158;
              v160 = sub_100054734();
              swift_beginAccess();
              v228._countAndFlagsBits = v159;
              *&v229[8] = &type metadata for Int;
              *&v229[16] = v160;
              v229[24] = 2;
              v161 = swift_isUniquelyReferenced_nonNull_native();
              v162 = a1;
              v163 = v161;
              v227 = v162[14];
              v164 = v227;
              v162[14] = 0x8000000000000000;
              v165 = sub_1000110D8(v226, v3);
              v167 = v164[2];
              v168 = (v166 & 1) == 0;
              v48 = __OFADD__(v167, v168);
              v169 = v167 + v168;
              if (v48)
              {
                goto LABEL_158;
              }

              v170 = v166;
              if (v164[3] >= v169)
              {
                if ((v163 & 1) == 0)
                {
                  v211 = v165;
                  sub_100202528();
                  v165 = v211;
                }
              }

              else
              {
                sub_10022BE4C(v169, v163);
                v165 = sub_1000110D8(v226, v3);
                if ((v170 & 1) != (v171 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v223;
              if ((v170 & 1) == 0)
              {
                v4 = v227;
                v227[(v165 >> 6) + 8] |= 1 << v165;
                v195 = (v4[6] + 16 * v165);
                *v195 = v226;
                v195[1] = v3;
                v196 = (v4[7] + 48 * v165);
                v197 = *&v229[9];
                v198 = *v229;
                *v196 = v228;
                v196[1] = v198;
                *(&v196[1]._object + 1) = v197;
                v199 = v4[2];
                v48 = __OFADD__(v199, 1);
                v200 = v199 + 1;
                if (v48)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v201 = v165;

              v4 = v227;
              sub_100053580(&v228, v227[7] + 48 * v201);
            }

            else
            {
              v184 = sub_1000535B8();
              swift_beginAccess();
              *&v228._countAndFlagsBits = v157;
              *&v229[8] = &type metadata for Double;
              *&v229[16] = v184;
              v229[24] = 3;
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v186 = a1;
              v187 = v185;
              v227 = v186[14];
              v188 = v227;
              v186[14] = 0x8000000000000000;
              v165 = sub_1000110D8(v226, v3);
              v190 = v188[2];
              v191 = (v189 & 1) == 0;
              v48 = __OFADD__(v190, v191);
              v192 = v190 + v191;
              if (v48)
              {
                goto LABEL_160;
              }

              v193 = v189;
              if (v188[3] >= v192)
              {
                if ((v187 & 1) == 0)
                {
                  v212 = v165;
                  sub_100202528();
                  v165 = v212;
                }
              }

              else
              {
                sub_10022BE4C(v192, v187);
                v165 = sub_1000110D8(v226, v3);
                if ((v193 & 1) != (v194 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v223;
              if (v193)
              {
                goto LABEL_140;
              }

              v4 = v227;
              v227[(v165 >> 6) + 8] |= 1 << v165;
              v202 = (v4[6] + 16 * v165);
              *v202 = v226;
              v202[1] = v3;
              v203 = (v4[7] + 48 * v165);
              v204 = *&v229[9];
              v205 = *v229;
              *v203 = v228;
              v203[1] = v205;
              *(&v203[1]._object + 1) = v204;
              v206 = v4[2];
              v48 = __OFADD__(v206, 1);
              v200 = v206 + 1;
              if (v48)
              {
                goto LABEL_163;
              }

LABEL_142:
              v4[2] = v200;
            }

            v19 = v222;
            a1[14] = v4;
            swift_endAccess();

            sub_100139360(v225, v224);
            goto LABEL_144;
          }

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v179 = type metadata accessor for Logger();
          sub_10000A6F0(v179, qword_1005DFA68);
          v180 = v92;
          v181 = Logger.logObject.getter();
          LOBYTE(v4) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v181, v4))
          {
            v182 = swift_slowAlloc();
            v3 = swift_slowAlloc();
            *v182 = v219;
            *(v182 + 4) = v180;
            *v3 = v180;
            v183 = v180;
            _os_log_impl(&_mh_execute_header, v181, v4, "Unsupported value type: %@!", v182, 0xCu);
            sub_100139370(v3);

            v13 = v221;

            sub_100139360(v225, v224);
          }

          else
          {

            sub_100139360(v225, v224);
          }

          v19 = v222;
        }

LABEL_144:
        sub_100053550(&v233);
      }

      else
      {
LABEL_21:
        if (v28 > 1)
        {
          if (v28 == 2)
          {
            v36 = objc_allocWithZone(NSNumber);
            isa = [v36 initWithLongLong:v225];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v225];
          }
        }

        else if (v28)
        {
          sub_1001393D8();
          isa = NSNumber.init(BOOLeanLiteral:)(v225 & 1).super.super.isa;
        }

        else
        {
          isa = v225;
        }

        v37 = isa;
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          v6 = v37;
          v40 = String.init(_:)(v39);
          object = v40._object;
          v41 = sub_1000246F4();
          swift_beginAccess();
          v233 = v40;
          *&v234[8] = &type metadata for String;
          *&v234[16] = v41;
          v234[24] = 1;
          v42 = swift_isUniquelyReferenced_nonNull_native();
          v230[0] = a1[14];
          v43 = v230[0];
          a1[14] = 0x8000000000000000;
          v44 = sub_1000110D8(v226, v3);
          v46 = *(v43 + 16);
          v47 = (v45 & 1) == 0;
          v48 = __OFADD__(v46, v47);
          v49 = v46 + v47;
          if (v48)
          {
            __break(1u);
            goto LABEL_150;
          }

          v50 = v45;
          if (*(v43 + 24) >= v49)
          {
            if ((v42 & 1) == 0)
            {
              v207 = v44;
              sub_100202528();
              v44 = v207;
            }
          }

          else
          {
            sub_10022BE4C(v49, v42);
            v44 = sub_1000110D8(v226, v3);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v223;
          v13 = v221;
          if (v50)
          {
            v70 = v44;

            v4 = v230[0];
            sub_100053580(&v233, *(v230[0] + 56) + 48 * v70);
          }

          else
          {
            v4 = v230[0];
            *(v230[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v71 = (v4[6] + 16 * v44);
            *v71 = v226;
            v71[1] = v3;
            v72 = (v4[7] + 48 * v44);
            v73 = *&v234[9];
            v74 = *v234;
            *v72 = v233;
            v72[1] = v74;
            *(&v72[1]._object + 1) = v73;
            v75 = v4[2];
            v48 = __OFADD__(v75, 1);
            v76 = v75 + 1;
            if (v48)
            {
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v4[2] = v76;
          }

          a1[14] = v4;
          swift_endAccess();

          goto LABEL_46;
        }

        objc_opt_self();
        v52 = swift_dynamicCastObjCClass();
        if (v52)
        {
          v53 = v52;
          [v52 doubleValue];
          v55 = v54;
          v56 = [v53 integerValue];
          if (v55 == v56)
          {
            v57 = v56;
            v58 = sub_100054734();
            swift_beginAccess();
            v233._countAndFlagsBits = v57;
            *&v234[8] = &type metadata for Int;
            *&v234[16] = v58;
            v234[24] = 2;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            v60 = a1;
            v61 = v59;
            v230[0] = v60[14];
            v62 = v230[0];
            v60[14] = 0x8000000000000000;
            v63 = sub_1000110D8(v226, v3);
            v65 = *(v62 + 16);
            v66 = (v64 & 1) == 0;
            v48 = __OFADD__(v65, v66);
            v67 = v65 + v66;
            if (v48)
            {
              goto LABEL_153;
            }

            v68 = v64;
            if (*(v62 + 24) >= v67)
            {
              if ((v61 & 1) == 0)
              {
                v209 = v63;
                sub_100202528();
                v63 = v209;
              }
            }

            else
            {
              sub_10022BE4C(v67, v61);
              v63 = sub_1000110D8(v226, v3);
              if ((v68 & 1) != (v69 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v223;
            if (v68)
            {
              goto LABEL_78;
            }

            v4 = v230[0];
            *(v230[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            v108 = (v4[6] + 16 * v63);
            *v108 = v226;
            v108[1] = v3;
            v109 = (v4[7] + 48 * v63);
            v110 = *&v234[9];
            v111 = *v234;
            *v109 = v233;
            v109[1] = v111;
            *(&v109[1]._object + 1) = v110;
            v112 = v4[2];
            v48 = __OFADD__(v112, 1);
            v113 = v112 + 1;
            if (v48)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v97 = sub_1000535B8();
            swift_beginAccess();
            *&v233._countAndFlagsBits = v55;
            *&v234[8] = &type metadata for Double;
            *&v234[16] = v97;
            v234[24] = 3;
            v98 = swift_isUniquelyReferenced_nonNull_native();
            v99 = a1;
            v100 = v98;
            v230[0] = v99[14];
            v101 = v230[0];
            v99[14] = 0x8000000000000000;
            v63 = sub_1000110D8(v226, v3);
            v103 = *(v101 + 16);
            v104 = (v102 & 1) == 0;
            v48 = __OFADD__(v103, v104);
            v105 = v103 + v104;
            if (v48)
            {
              goto LABEL_156;
            }

            v106 = v102;
            if (*(v101 + 24) >= v105)
            {
              if ((v100 & 1) == 0)
              {
                v210 = v63;
                sub_100202528();
                v63 = v210;
              }
            }

            else
            {
              sub_10022BE4C(v105, v100);
              v63 = sub_1000110D8(v226, v3);
              if ((v106 & 1) != (v107 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v223;
            if (v106)
            {
LABEL_78:
              v114 = v63;

              v4 = v230[0];
              sub_100053580(&v233, *(v230[0] + 56) + 48 * v114);
              goto LABEL_81;
            }

            v4 = v230[0];
            *(v230[0] + 8 * (v63 >> 6) + 64) |= 1 << v63;
            v115 = (v4[6] + 16 * v63);
            *v115 = v226;
            v115[1] = v3;
            v116 = (v4[7] + 48 * v63);
            v117 = *&v234[9];
            v118 = *v234;
            *v116 = v233;
            v116[1] = v118;
            *(&v116[1]._object + 1) = v117;
            v119 = v4[2];
            v48 = __OFADD__(v119, 1);
            v113 = v119 + 1;
            if (v48)
            {
              goto LABEL_159;
            }
          }

          v4[2] = v113;
LABEL_81:
          v19 = v222;
          a1[14] = v4;
          swift_endAccess();

          sub_100139360(v225, v224);
        }

        else
        {

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v87 = type metadata accessor for Logger();
          sub_10000A6F0(v87, qword_1005DFA68);
          v88 = v37;
          v89 = Logger.logObject.getter();
          LOBYTE(v4) = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v89, v4))
          {
            v90 = swift_slowAlloc();
            v3 = swift_slowAlloc();
            *v90 = v219;
            *(v90 + 4) = v88;
            *v3 = v88;
            v91 = v88;
            _os_log_impl(&_mh_execute_header, v89, v4, "Unsupported value type: %@!", v90, 0xCu);
            sub_100139370(v3);

            v13 = v221;

LABEL_46:
            sub_100139360(v225, v224);
            goto LABEL_47;
          }

          sub_100139360(v225, v224);
LABEL_47:
          v19 = v222;
        }
      }
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = v14[v21];
      ++v18;
      if (v17)
      {
        v18 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_1005A7E88 != -1)
  {
LABEL_150:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFA68);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v233._countAndFlagsBits = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10000D01C(v6, object, &v233._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v9, v10, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v11, 0xCu);
    sub_100004984(v12);
  }
}

void sub_100137A00(void *a1, void *a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  if (qword_1005A7E90 != -1)
  {
    goto LABEL_148;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10021B304(v8, object, qword_1005DFA80))
    {
      break;
    }

    v221 = v4;
    v5 = sub_1000D19A8(a2, v5 & 1);
    v15 = v5 + 8;
    v16 = 1 << *(v5 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v5[8];
    swift_beginAccess();
    v19 = 0;
    v20 = (v16 + 63) >> 6;
    *&v21 = 138412290;
    v220 = v21;
    v224 = a1;
    v222 = v5;
    v223 = v20;
    while (v18)
    {
LABEL_15:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = (v19 << 10) | (16 * v23);
      v25 = v5[7];
      v26 = (v5[6] + v24);
      v4 = v26[1];
      v227 = *v26;
      v27 = (v25 + v24);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);

      v226 = v28;
      sub_100139350(v28, v29);
      v225 = v29;
      if (v31)
      {

        v32 = sub_1000110D8(v227, v4);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1000534E8(*(v30 + 56) + 48 * v32, &v234);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_1001393D8();
            v35 = NSNumber.init(BOOLeanLiteral:)(v226 & 1).super.super.isa;
          }

          else
          {
            v34 = v226;
            sub_100139350(v226, 0);
            v35 = v34;
          }

          v93 = v35;
          goto LABEL_103;
        }

        if (v29 != 2)
        {
          sub_1000534E8(&v234, &v229);
          if (v230[24] != 3)
          {
LABEL_146:

            sub_100053550(&v229);
            sub_10005360C();
            swift_allocError();
            swift_willThrow();

            sub_100053550(&v234);
            return;
          }

          v94 = v226;
          sub_100010BD4(&v229._countAndFlagsBits, v231);
          v95 = sub_100011AEC(v231, v232);
          __chkstk_darwin(v95);
          (*(v97 + 16))(v214 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000535B8();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v224;
          v93 = [objc_allocWithZone(NSNumber) initWithDouble:*&v229._countAndFlagsBits + *&v94];
          sub_100004984(v231);
          goto LABEL_103;
        }

        sub_1000534E8(&v234, &v229);
        if (v230[24] != 2)
        {
          goto LABEL_146;
        }

        sub_100010BD4(&v229._countAndFlagsBits, v231);
        v79 = v232;
        v78 = v233;
        v80 = sub_100011AEC(v231, v232);
        v218 = v214;
        __chkstk_darwin(v80);
        v216 = v81;
        v82 = v214 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
        v219 = v83;
        (*(v83 + 16))(v82);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v229._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v84 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v84 < 64)
            {
              goto LABEL_90;
            }

            v217 = v78;
            v215 = v214;
            __chkstk_darwin(v84);
            v86 = v214 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v87 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v219 + 8))(v86, v79);
            v78 = v217;
            if (v87)
            {
              goto LABEL_164;
            }
          }

          else
          {
            LODWORD(v215) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v121 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v215)
            {
              v217 = v78;
              if (v121 <= 64)
              {
                v215 = *(*(v78 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v214[2] = v214;
                __chkstk_darwin(AssociatedTypeWitness);
                v214[0] = v214 - v127;
                swift_getAssociatedConformanceWitness();
                v128 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v214[1] = v214;
                __chkstk_darwin(v128);
                v130 = v214 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v131 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v219 + 8))(v130, v79);
                if (v131)
                {
                  goto LABEL_164;
                }

                v78 = v217;
LABEL_90:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_91;
              }

              v215 = v214;
              __chkstk_darwin(v121);
              v123 = v214 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_100053494();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v124 = dispatch thunk of static Comparable.< infix(_:_:)();
              v125 = v123;
              v78 = v217;
              (*(v219 + 8))(v125, v79);
              if (v124)
              {
                goto LABEL_164;
              }
            }

            else if (v121 < 64)
            {
              goto LABEL_90;
            }
          }
        }

LABEL_91:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v229._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v132 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v133 = v78;
          v134 = v132;
          v217 = v133;
          v135 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v134)
          {
            if (v135 > 64)
            {
              goto LABEL_94;
            }
          }

          else if (v135 >= 64)
          {
LABEL_94:
            v215 = v214;
            __chkstk_darwin(v135);
            v216 = v214 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_100053494();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v137 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v219 + 8))(v216, v79);
            if (v137)
            {
              goto LABEL_161;
            }

            goto LABEL_101;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_101:
        v138 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v219 + 8))(v82, v79);
        v49 = __OFADD__(v138, v226);
        v139 = &v226[v138];
        if (v49)
        {
          goto LABEL_155;
        }

        v93 = [objc_allocWithZone(NSNumber) initWithLongLong:v139];
        sub_100004984(v231);
        a1 = v224;
LABEL_103:
        objc_opt_self();
        v140 = swift_dynamicCastObjCClass();
        if (v140)
        {
          v141 = v140;
          v142 = v93;
          v143 = String.init(_:)(v141);
          v144 = a1;
          v145 = sub_1000246F4();
          swift_beginAccess();
          v229 = v143;
          *&v230[8] = &type metadata for String;
          *&v230[16] = v145;
          v230[24] = 1;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v228 = v144[14];
          v147 = v228;
          v144[14] = 0x8000000000000000;
          v148 = sub_1000110D8(v227, v4);
          v150 = v147[2];
          v151 = (v149 & 1) == 0;
          v49 = __OFADD__(v150, v151);
          v152 = v150 + v151;
          if (v49)
          {
            goto LABEL_152;
          }

          v153 = v149;
          if (v147[3] >= v152)
          {
            v5 = v222;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v209 = v148;
              sub_100202528();
              v148 = v209;
            }
          }

          else
          {
            sub_10022BE4C(v152, isUniquelyReferenced_nonNull_native);
            v148 = sub_1000110D8(v227, v4);
            v5 = v222;
            if ((v153 & 1) != (v154 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v224;
          if (v153)
          {
            v173 = v148;

            a2 = v228;
            sub_100053580(&v229, v228[7] + 48 * v173);
          }

          else
          {
            a2 = v228;
            v228[(v148 >> 6) + 8] |= 1 << v148;
            v174 = (a2[6] + 16 * v148);
            *v174 = v227;
            v174[1] = v4;
            v175 = (a2[7] + 48 * v148);
            v176 = *&v230[9];
            v177 = *v230;
            *v175 = v229;
            v175[1] = v177;
            *(&v175[1]._object + 1) = v176;
            v178 = a2[2];
            v49 = __OFADD__(v178, 1);
            v179 = v178 + 1;
            if (v49)
            {
              goto LABEL_154;
            }

            a2[2] = v179;
          }

          v20 = v223;
          a1[14] = a2;
          swift_endAccess();
          sub_100139360(v226, v225);
        }

        else
        {

          objc_opt_self();
          v155 = swift_dynamicCastObjCClass();
          if (v155)
          {
            v156 = v155;
            [v155 doubleValue];
            v158 = v157;
            v159 = [v156 integerValue];
            if (v158 == v159)
            {
              v160 = v159;
              v161 = sub_100054734();
              swift_beginAccess();
              v229._countAndFlagsBits = v160;
              *&v230[8] = &type metadata for Int;
              *&v230[16] = v161;
              v230[24] = 2;
              v162 = swift_isUniquelyReferenced_nonNull_native();
              v163 = a1;
              v164 = v162;
              v228 = v163[14];
              v165 = v228;
              v163[14] = 0x8000000000000000;
              v166 = sub_1000110D8(v227, v4);
              v168 = v165[2];
              v169 = (v167 & 1) == 0;
              v49 = __OFADD__(v168, v169);
              v170 = v168 + v169;
              if (v49)
              {
                goto LABEL_158;
              }

              v171 = v167;
              if (v165[3] >= v170)
              {
                if ((v164 & 1) == 0)
                {
                  v212 = v166;
                  sub_100202528();
                  v166 = v212;
                }
              }

              else
              {
                sub_10022BE4C(v170, v164);
                v166 = sub_1000110D8(v227, v4);
                if ((v171 & 1) != (v172 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v224;
              if ((v171 & 1) == 0)
              {
                a2 = v228;
                v228[(v166 >> 6) + 8] |= 1 << v166;
                v196 = (a2[6] + 16 * v166);
                *v196 = v227;
                v196[1] = v4;
                v197 = (a2[7] + 48 * v166);
                v198 = *&v230[9];
                v199 = *v230;
                *v197 = v229;
                v197[1] = v199;
                *(&v197[1]._object + 1) = v198;
                v200 = a2[2];
                v49 = __OFADD__(v200, 1);
                v201 = v200 + 1;
                if (v49)
                {
                  goto LABEL_162;
                }

                goto LABEL_142;
              }

LABEL_140:
              v202 = v166;

              a2 = v228;
              sub_100053580(&v229, v228[7] + 48 * v202);
            }

            else
            {
              v185 = sub_1000535B8();
              swift_beginAccess();
              *&v229._countAndFlagsBits = v158;
              *&v230[8] = &type metadata for Double;
              *&v230[16] = v185;
              v230[24] = 3;
              v186 = swift_isUniquelyReferenced_nonNull_native();
              v187 = a1;
              v188 = v186;
              v228 = v187[14];
              v189 = v228;
              v187[14] = 0x8000000000000000;
              v166 = sub_1000110D8(v227, v4);
              v191 = v189[2];
              v192 = (v190 & 1) == 0;
              v49 = __OFADD__(v191, v192);
              v193 = v191 + v192;
              if (v49)
              {
                goto LABEL_160;
              }

              v194 = v190;
              if (v189[3] >= v193)
              {
                if ((v188 & 1) == 0)
                {
                  v213 = v166;
                  sub_100202528();
                  v166 = v213;
                }
              }

              else
              {
                sub_10022BE4C(v193, v188);
                v166 = sub_1000110D8(v227, v4);
                if ((v194 & 1) != (v195 & 1))
                {
                  goto LABEL_165;
                }
              }

              a1 = v224;
              if (v194)
              {
                goto LABEL_140;
              }

              a2 = v228;
              v228[(v166 >> 6) + 8] |= 1 << v166;
              v203 = (a2[6] + 16 * v166);
              *v203 = v227;
              v203[1] = v4;
              v204 = (a2[7] + 48 * v166);
              v205 = *&v230[9];
              v206 = *v230;
              *v204 = v229;
              v204[1] = v206;
              *(&v204[1]._object + 1) = v205;
              v207 = a2[2];
              v49 = __OFADD__(v207, 1);
              v201 = v207 + 1;
              if (v49)
              {
                goto LABEL_163;
              }

LABEL_142:
              a2[2] = v201;
            }

            v20 = v223;
            a1[14] = a2;
            swift_endAccess();

            sub_100139360(v226, v225);
            goto LABEL_144;
          }

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v180 = type metadata accessor for Logger();
          sub_10000A6F0(v180, qword_1005DFA68);
          v181 = v93;
          v182 = Logger.logObject.getter();
          a2 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v182, a2))
          {
            v183 = swift_slowAlloc();
            v4 = swift_slowAlloc();
            *v183 = v220;
            *(v183 + 4) = v181;
            *v4 = v181;
            v184 = v181;
            _os_log_impl(&_mh_execute_header, v182, a2, "Unsupported value type: %@!", v183, 0xCu);
            sub_100139370(v4);

            v5 = v222;

            sub_100139360(v226, v225);
          }

          else
          {

            sub_100139360(v226, v225);
          }

          v20 = v223;
        }

LABEL_144:
        sub_100053550(&v234);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v226];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v226];
          }
        }

        else if (v29)
        {
          sub_1001393D8();
          isa = NSNumber.init(BOOLeanLiteral:)(v226 & 1).super.super.isa;
        }

        else
        {
          isa = v226;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000246F4();
          swift_beginAccess();
          v234 = v41;
          *&v235[8] = &type metadata for String;
          *&v235[16] = v42;
          v235[24] = 1;
          v43 = swift_isUniquelyReferenced_nonNull_native();
          v231[0] = a1[14];
          v44 = v231[0];
          a1[14] = 0x8000000000000000;
          v45 = sub_1000110D8(v227, v4);
          v47 = *(v44 + 16);
          v48 = (v46 & 1) == 0;
          v49 = __OFADD__(v47, v48);
          v50 = v47 + v48;
          if (v49)
          {
            __break(1u);
            goto LABEL_150;
          }

          v51 = v46;
          if (*(v44 + 24) >= v50)
          {
            if ((v43 & 1) == 0)
            {
              v208 = v45;
              sub_100202528();
              v45 = v208;
            }
          }

          else
          {
            sub_10022BE4C(v50, v43);
            v45 = sub_1000110D8(v227, v4);
            if ((v51 & 1) != (v52 & 1))
            {
              goto LABEL_165;
            }
          }

          a1 = v224;
          v5 = v222;
          if (v51)
          {
            v71 = v45;

            a2 = v231[0];
            sub_100053580(&v234, *(v231[0] + 56) + 48 * v71);
          }

          else
          {
            a2 = v231[0];
            *(v231[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
            v72 = (a2[6] + 16 * v45);
            *v72 = v227;
            v72[1] = v4;
            v73 = (a2[7] + 48 * v45);
            v74 = *&v235[9];
            v75 = *v235;
            *v73 = v234;
            v73[1] = v75;
            *(&v73[1]._object + 1) = v74;
            v76 = a2[2];
            v49 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v49)
            {
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a2[2] = v77;
          }

          a1[14] = a2;
          swift_endAccess();

          goto LABEL_46;
        }

        objc_opt_self();
        v53 = swift_dynamicCastObjCClass();
        if (v53)
        {
          v54 = v53;
          [v53 doubleValue];
          v56 = v55;
          v57 = [v54 integerValue];
          if (v56 == v57)
          {
            v58 = v57;
            v59 = sub_100054734();
            swift_beginAccess();
            v234._countAndFlagsBits = v58;
            *&v235[8] = &type metadata for Int;
            *&v235[16] = v59;
            v235[24] = 2;
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v61 = a1;
            v62 = v60;
            v231[0] = v61[14];
            v63 = v231[0];
            v61[14] = 0x8000000000000000;
            v64 = sub_1000110D8(v227, v4);
            v66 = *(v63 + 16);
            v67 = (v65 & 1) == 0;
            v49 = __OFADD__(v66, v67);
            v68 = v66 + v67;
            if (v49)
            {
              goto LABEL_153;
            }

            v69 = v65;
            if (*(v63 + 24) >= v68)
            {
              if ((v62 & 1) == 0)
              {
                v210 = v64;
                sub_100202528();
                v64 = v210;
              }
            }

            else
            {
              sub_10022BE4C(v68, v62);
              v64 = sub_1000110D8(v227, v4);
              if ((v69 & 1) != (v70 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v224;
            if (v69)
            {
              goto LABEL_78;
            }

            a2 = v231[0];
            *(v231[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v109 = (a2[6] + 16 * v64);
            *v109 = v227;
            v109[1] = v4;
            v110 = (a2[7] + 48 * v64);
            v111 = *&v235[9];
            v112 = *v235;
            *v110 = v234;
            v110[1] = v112;
            *(&v110[1]._object + 1) = v111;
            v113 = a2[2];
            v49 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v49)
            {
              goto LABEL_157;
            }
          }

          else
          {
            v98 = sub_1000535B8();
            swift_beginAccess();
            *&v234._countAndFlagsBits = v56;
            *&v235[8] = &type metadata for Double;
            *&v235[16] = v98;
            v235[24] = 3;
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v100 = a1;
            v101 = v99;
            v231[0] = v100[14];
            v102 = v231[0];
            v100[14] = 0x8000000000000000;
            v64 = sub_1000110D8(v227, v4);
            v104 = *(v102 + 16);
            v105 = (v103 & 1) == 0;
            v49 = __OFADD__(v104, v105);
            v106 = v104 + v105;
            if (v49)
            {
              goto LABEL_156;
            }

            v107 = v103;
            if (*(v102 + 24) >= v106)
            {
              if ((v101 & 1) == 0)
              {
                v211 = v64;
                sub_100202528();
                v64 = v211;
              }
            }

            else
            {
              sub_10022BE4C(v106, v101);
              v64 = sub_1000110D8(v227, v4);
              if ((v107 & 1) != (v108 & 1))
              {
                goto LABEL_165;
              }
            }

            a1 = v224;
            if (v107)
            {
LABEL_78:
              v115 = v64;

              a2 = v231[0];
              sub_100053580(&v234, *(v231[0] + 56) + 48 * v115);
              goto LABEL_81;
            }

            a2 = v231[0];
            *(v231[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
            v116 = (a2[6] + 16 * v64);
            *v116 = v227;
            v116[1] = v4;
            v117 = (a2[7] + 48 * v64);
            v118 = *&v235[9];
            v119 = *v235;
            *v117 = v234;
            v117[1] = v119;
            *(&v117[1]._object + 1) = v118;
            v120 = a2[2];
            v49 = __OFADD__(v120, 1);
            v114 = v120 + 1;
            if (v49)
            {
              goto LABEL_159;
            }
          }

          a2[2] = v114;
LABEL_81:
          v20 = v223;
          a1[14] = a2;
          swift_endAccess();

          sub_100139360(v226, v225);
        }

        else
        {

          if (qword_1005A7E88 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_10000A6F0(v88, qword_1005DFA68);
          v89 = v38;
          v90 = Logger.logObject.getter();
          a2 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v90, a2))
          {
            v91 = swift_slowAlloc();
            v4 = swift_slowAlloc();
            *v91 = v220;
            *(v91 + 4) = v89;
            *v4 = v89;
            v92 = v89;
            _os_log_impl(&_mh_execute_header, v90, a2, "Unsupported value type: %@!", v91, 0xCu);
            sub_100139370(v4);

            v5 = v222;

LABEL_46:
            sub_100139360(v226, v225);
            goto LABEL_47;
          }

          sub_100139360(v226, v225);
LABEL_47:
          v20 = v223;
        }
      }
    }

    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        return;
      }

      v18 = v15[v22];
      ++v19;
      if (v18)
      {
        v19 = v22;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_148:
    swift_once();
  }

  if (qword_1005A7E88 != -1)
  {
LABEL_150:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFA68);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v234._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_10000D01C(v8, object, &v234._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100004984(v14);
  }
}