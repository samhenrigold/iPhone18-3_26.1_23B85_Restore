uint64_t sub_1000EBF40()
{
  v1 = sub_100095274(&qword_1002A7E48, &unk_10023CE50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000EBFD4(uint64_t a1, uint64_t a2)
{
  sub_100095274(&qword_1002A7E48, &unk_10023CE50);

  return sub_1000E8498(a1, a2);
}

uint64_t sub_1000EC060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EC07C()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v15 = *(v1 - 8);
  v16 = v1;
  __chkstk_darwin(v1);
  v14 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for SecureTrackingInfo(0, v5);
  swift_allocObject();
  *(v0 + 16) = sub_1000EF0C8();
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for TrackingActivityController(0)) init];
  Logger.init(subsystem:category:)();
  v13 = OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue;
  sub_1000B3420(0, v6);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v15 + 104))(v14, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v7 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + v13) = v7;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState) = 2;
  if (qword_1002A6798 != -1)
  {
    v7 = swift_once();
  }

  v8 = *(static DeviceLockMonitor.shared + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
  v9 = __chkstk_darwin(v7);
  *(&v13 - 2) = v0;
  *(&v13 - 1) = &off_100277130;
  __chkstk_darwin(v9);
  *(&v13 - 2) = sub_1000F0020;
  *(&v13 - 1) = v10;
  swift_retain_n();
  os_unfair_lock_lock(v8 + 4);
  sub_1000F003C(v11);
  os_unfair_lock_unlock(v8 + 4);

  DeviceLockMonitor.beginMonitoring()();
  return v0;
}

uint64_t sub_1000EC468(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v7 = *(v14 - 8);
  __chkstk_darwin(v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_queue);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1000EFFCC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277348;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

void sub_1000EC730(uint64_t a1, char a2)
{
  type metadata accessor for DockKitCoreUtils();
  if (static DockKitCoreUtils.allowedForBackgroundSecureTracking()())
  {
    sub_1000ED750();
    switch(a2)
    {
      case 1:
        sub_1000ECA74();
        return;
      case 2:

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        sub_1000EED04(v10);

        goto LABEL_14;
      case 3:
        if ((sub_1000ED3F8() & 1) == 0)
        {
          return;
        }

        v7 = 1.0;
        goto LABEL_18;
      case 4:
        sub_1000ECDE4();
        return;
      case 5:
        sub_1000ECFC4();
        return;
      case 6:
        goto LABEL_26;
      case 7:

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        v8 = v11;
        goto LABEL_24;
      case 8:

        sub_100095274(&qword_1002A8198, &qword_10023D008);
        OS_dispatch_queue.sync<A>(execute:)();

        v8 = v12;
LABEL_24:

        sub_1000EED04(v8);
        goto LABEL_25;
      case 9:
        v6 = 1.0;
        goto LABEL_27;
      case 10:
        sub_1000ECE0C();
        return;
      case 11:

        sub_1000EED04(0);
LABEL_25:

LABEL_26:
        v6 = 0.0;
LABEL_27:
        sub_1000EDFAC(0, v6);
        break;
      case 12:
        sub_1000ED1D0();
        break;
      case 13:
        sub_1000ED348(v3);
        break;
      default:
LABEL_14:
        if (sub_1000ED3F8())
        {
          v7 = 0.0;
LABEL_18:
          sub_1000EDAF8(0, v7);
        }

        break;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Ignoring secure tracking request, not allowed.", v5, 2u);
    }
  }
}

uint64_t sub_1000ECA74()
{
  v1 = v0;

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  if (v21 == 2)
  {
    if (v4)
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Asking for permission to enable secure tracking", v5, 2u);
    }

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v6 = qword_1002B1CF0;
    v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v8 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v8 + 4);

    v9 = *(v6 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v10 = *(v6 + v7);
    v11 = v9;

    os_unfair_lock_unlock(v10 + 4);

    if (v9)
    {
      v12 = dispatch thunk of DockCoreAccessory.info.getter();

      v14 = objc_allocWithZone(type metadata accessor for DKProxManager(0, v13));

      v15 = sub_1000EFAD4(0, v12, 1, v1, v14, type metadata accessor for SecureTrackingSessionManager, &off_100277118);

      v16 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard);
      *(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = v15;
    }
  }

  else
  {
    if (v4)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Secure tracking preference is already set", v17, 2u);
    }

    OS_dispatch_queue.sync<A>(execute:)();

    sub_1000EED04(v19);

    if (sub_1000ED3F8())
    {
      sub_1000EDAF8(0, 0.0);
    }
  }

  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000EED04(v20);

  result = sub_1000ED3F8();
  if (result)
  {
    return sub_1000EDAF8(0, 0.0);
  }

  return result;
}

uint64_t sub_1000ECE34(uint64_t a1, char a2, uint64_t (*a3)(void, __n128), const char *a4, ...)
{
  sub_1000EE81C(a1);

  sub_1000EED04(a1);

  v6.n128_u64[0] = 0;

  return a3(a2 & 1, v6);
}

uint64_t sub_1000ECFC4()
{
  sub_1000EE81C(1);

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  sub_1000EED04(v1);

  result = sub_1000ED3F8();
  if (result)
  {
    return sub_1000EDAF8(0, 0.0);
  }

  return result;
}

void sub_1000ED348(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "clearing secure trackng", v3, 2u);
  }

  sub_1000EE9F4();
}

uint64_t sub_1000ED3F8()
{
  v1 = v0;

  OS_dispatch_queue.sync<A>(execute:)();

  if (v28 == 1)
  {
    if (qword_1002A6780 != -1)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v2 = qword_1002B1CF0;
      v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v4 + 4);

      if (!*(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected))
      {
        goto LABEL_15;
      }

      v5 = TrackingButtonState.rawValue.getter();
      v6 = TrackingButtonState.rawValue.getter();
      v7 = *(v2 + v3);

      os_unfair_lock_unlock(v7 + 4);

      if (v5 != v6)
      {
        goto LABEL_16;
      }

      v8 = *(v2 + v3);

      os_unfair_lock_lock(v8 + 4);

      v9 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
      v10 = *(v9 + 16);
      if (!v10)
      {
        break;
      }

      v27 = v1;
      v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

      swift_beginAccess();
      v12 = 0;
      v13 = (v9 + 40);
      while (v12 < *(v9 + 16))
      {
        if (*(*(v2 + v11) + 16))
        {
          v15 = *(v13 - 1);
          v14 = *v13;

          sub_10016D4D0(v15, v14);
          v1 = v16;

          if (v1)
          {

            goto LABEL_15;
          }
        }

        ++v12;
        v13 += 2;
        if (v10 == v12)
        {

          v1 = v27;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_23:
      swift_once();
    }

LABEL_13:
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
    swift_beginAccess();
    v18 = *(v2 + v17);

    v19 = cameracaptureIdentifier.getter();
    if (*(v18 + 16))
    {
      sub_10016D4D0(v19, v20);
      v22 = v21;

      if (v22)
      {
LABEL_15:
        v23 = *(v2 + v3);

        os_unfair_lock_unlock(v23 + 4);

        goto LABEL_16;
      }
    }

    else
    {
    }

    v26 = *(v2 + v3);

    os_unfair_lock_unlock(v26 + 4);

    if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState))
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {

      v24 = 1;
    }
  }

  else
  {
LABEL_16:
    v24 = 0;
  }

  return v24 & 1;
}

void sub_1000ED750()
{
  v1 = v0;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v2 = qword_1002B1CF0;
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    if (!*(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected))
    {
      goto LABEL_14;
    }

    v5 = TrackingButtonState.rawValue.getter();
    v6 = TrackingButtonState.rawValue.getter();
    v7 = *(v2 + v3);

    os_unfair_lock_unlock(v7 + 4);

    if (v5 != v6)
    {
      goto LABEL_15;
    }

    v8 = *(v2 + v3);

    os_unfair_lock_lock(v8 + 4);

    v9 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
    v10 = *(v9 + 16);
    if (!v10)
    {
      break;
    }

    v29 = v1;
    v11 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

    swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 40);
    while (v12 < *(v9 + 16))
    {
      if (*(*(v2 + v11) + 16))
      {
        v15 = *(v13 - 1);
        v14 = *v13;

        sub_10016D4D0(v15, v14);
        v1 = v16;

        if (v1)
        {

          goto LABEL_14;
        }
      }

      ++v12;
      v13 += 2;
      if (v10 == v12)
      {

        v1 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    swift_once();
  }

LABEL_12:
  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v18 = *(v2 + v17);

  v19 = cameracaptureIdentifier.getter();
  if (*(v18 + 16))
  {
    sub_10016D4D0(v19, v20);
    v22 = v21;

    if (v22)
    {
LABEL_14:
      v23 = *(v2 + v3);

      os_unfair_lock_unlock(v23 + 4);

      goto LABEL_15;
    }
  }

  else
  {
  }

  v28 = *(v2 + v3);

  os_unfair_lock_unlock(v28 + 4);

  if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState))
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_15:
  v24 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlEnabledNotification);
  DeviceNotification.state.setter();

  v25 = [objc_opt_self() sharedInstance];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  [v25 reloadControlsForExtension:v26 kind:0 reason:v27];
}

void sub_1000EDB24(uint64_t a1, char a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v6 = &v13[-v5];

  OS_dispatch_queue.sync<A>(execute:)();

  if (v13[15] == 1)
  {

    sub_1000EEFDC(2);

    if (sub_1000ED3F8())
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      type metadata accessor for MainActor();

      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = &protocol witness table for MainActor;
      *(v9 + 32) = a1;
      *(v9 + 40) = a2 & 1;
      sub_1001B6410(0, 0, v6, &unk_10023D028, v9);
    }

    else
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Secure tracking not allowed by user", v12, 2u);
      }
    }
  }
}

uint64_t sub_1000EDD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return (_swift_task_switch)(sub_1000EDDF0, v7, v6);
}

uint64_t sub_1000EDDF0()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000EDE8C;
  v2 = *(v0 + 56);

  return sub_100106890(v2);
}

uint64_t sub_1000EDE8C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return (_swift_task_switch)(sub_1000F00B0, v3, v2);
}

uint64_t sub_1000EDFD8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v30 = a4;
  v31 = a5;
  v7 = a2;
  v29 = a1;
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v33 = *(v10 - 8);
  v34 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v28 = v13;
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;

  sub_1000EEFDC(v7);

  sub_1000B3420(0, v20);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v14 + 8);
  v27(v17, v13);
  v22 = swift_allocObject();
  *(v22 + 16) = v6;
  *(v22 + 24) = v29;
  aBlock[4] = v30;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = v31;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  v24 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v9, v24);
  (*(v33 + 8))(v12, v34);
  return (v27)(v19, v28);
}

uint64_t sub_1000EE3BC(uint64_t a1, char a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v6 = &v11[-v5];

  OS_dispatch_queue.sync<A>(execute:)();

  if (v11[15] == 1)
  {

    sub_1000EEFDC(2);

    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = &protocol witness table for MainActor;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2 & 1;
    sub_1001B6410(0, 0, v6, &unk_10023D018, v10);
  }

  return result;
}

uint64_t sub_1000EE564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 56) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;

  return (_swift_task_switch)(sub_1000EE600, v7, v6);
}

uint64_t sub_1000EE600()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE69C;
  v2 = *(v0 + 56);

  return sub_100107254(v2);
}

uint64_t sub_1000EE69C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return (_swift_task_switch)(sub_1000EE7BC, v3, v2);
}

uint64_t sub_1000EE7BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000EE81C(char a1)
{

  sub_100095274(&qword_1002A8198, &qword_10023D008);
  OS_dispatch_queue.sync<A>(execute:)();

  if (v13 == 2 || (((a1 != 0) ^ v13) & 1) != 0)
  {
    type metadata accessor for DockCoreManager();
    static DockCoreManager.secureTrackingAllowed.setter();

    sub_1000EECDC(a1 != 0);

    v2 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v10))
    {
      v11 = a1 != 0;
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 1) = v11;
      v5 = "saving tracking allowed to %{BOOL}d";
      v6 = v10;
      v7 = v2;
      v8 = v12;
      v9 = 8;
      goto LABEL_7;
    }
  }

  else
  {
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Secure tracking allowed is already up to date, nothing to save";
      v6 = v3;
      v7 = v2;
      v8 = v4;
      v9 = 2;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, v6, v5, v8, v9);
    }
  }
}

void sub_1000EE9F4()
{
  type metadata accessor for DockCoreManager();
  static DockCoreManager.secureTrackingAllowed.setter();

  sub_1000EECDC(2);

  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "clearing tracking preference  in database", v2, 2u);
  }
}

uint64_t sub_1000EEACC()
{

  v1 = OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureTrackingSessionManager(uint64_t a1)
{
  result = qword_1002A7EA8;
  if (!qword_1002A7EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EEBEC(uint64_t a1, uint64_t a2)
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

void sub_1000EECAC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard);
  *(*v0 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_proxCard) = 0;
}

unsigned __int8 *sub_1000EECC4@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1000EED2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  *(v15 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = a4;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_1000EF004()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000EF074()
{
  result = qword_1002A8190;
  if (!qword_1002A8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8190);
  }

  return result;
}

uint64_t sub_1000EF0C8()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 514;
  *(v0 + 18) = 2;
  v7 = sub_1000B3420(0, v6);
  v9[0] = "Secure Tracking Queue";
  v9[1] = v7;
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

uint64_t sub_1000EF338()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000EF380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EF3DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_1000EE564(a1, v4, v5, v6, v7);
}

uint64_t sub_1000EF4C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000EF500(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000A139C;

  return sub_1000EDD54(a1, v4, v5, v6, v7);
}

void sub_1000EF5C4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 17);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3 & 1;
}

void *sub_1000EF5EC(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v39 = a3;
  v40 = a4;
  v42 = a2;
  v7 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  a5[5] = 0;
  v10 = (a5 + 5);
  v11 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithServiceName:v12 viewControllerClassName:v13];

  a5[2] = v14;
  v15 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  a5[3] = v15;
  sub_100095274(&qword_1002A81A0, &qword_10023D038);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023CE80;
  v43 = 0x6E656B6F74;
  v44 = 0xE500000000000000;
  v38 = v15;
  AnyHashable.init<A>(_:)();
  v41 = a1;
  sub_1000EFF5C(a1, v9);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_100095C84(v9, &qword_1002A7AF0, &qword_10023C9D0);
    v19 = (inited + 72);
    *(inited + 96) = &type metadata for String;
  }

  else
  {
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v18 + 8))(v9, v17);
    v19 = (inited + 72);
    *(inited + 96) = &type metadata for String;
    if (v22)
    {
      *v19 = v20;
      goto LABEL_6;
    }
  }

  *v19 = 0;
  v22 = 0xE000000000000000;
LABEL_6:
  *(inited + 80) = v22;
  v43 = 1701667182;
  v44 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v23 = v42;
  v24 = DockCoreInfo.name.getter();
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v24;
  *(inited + 152) = v25;
  v43 = 1701869940;
  v44 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  DockCoreInfo.type.getter();
  v26 = DockCoreAccessoryType.description.getter();
  *(inited + 240) = &type metadata for String;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  v43 = 0x7079547472656C61;
  v44 = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  v28 = v39 & 1;
  *(inited + 312) = &type metadata for Int;
  *(inited + 288) = v28;
  sub_1001F2ABC(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002ACA30, qword_10023D040);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = v38;
  [v38 setUserInfo:isa];

  v31 = [objc_opt_self() newHandleWithDefinition:a5[2] configurationContext:a5[3]];
  swift_beginAccess();
  v32 = a5[5];
  a5[5] = v31;

  a5[4] = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  v33 = a5[5];
  v34 = v40;
  if (v33)
  {
    v35 = v33;
    [v35 registerObserver:v34];
  }

  swift_beginAccess();
  v36 = *v10;
  if (*v10)
  {
    swift_endAccess();
    [v36 activateWithContext:a5[4]];

    sub_100095C84(v41, &qword_1002A7AF0, &qword_10023C9D0);
  }

  else
  {
    sub_100095C84(v41, &qword_1002A7AF0, &qword_10023C9D0);
    swift_endAccess();
  }

  return a5;
}

char *sub_1000EFAD4(uint64_t a1, void *a2, char a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v14 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v33 - v15;
  v17 = a6(0);
  v36[4] = a7;
  v36[3] = v17;
  v36[0] = a4;
  *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard] = 0;
  a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_requiresSWAuth] = 1;
  v18 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken;
  *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_primaryToken] = 0;
  v19 = &a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate];
  v20 = a3 & 1;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 4) = 0;
  if (a1 || (a3 & 1) != 0)
  {
    *&a5[v18] = a1;
    sub_1000A097C(v36, v35);
    swift_beginAccess();

    sub_1000EFEEC(v35, v19);
    swift_endAccess();
    type metadata accessor for Transaction(0);
    v21 = swift_allocObject();
    *(v21 + 48) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = 0;
    swift_unknownObjectWeakInit();
    *(v21 + 80) = 0;
    *(v21 + 88) = 1;
    Logger.init(subsystem:category:)();
    *(v21 + 64) = 0xD000000000000022;
    *(v21 + 72) = 0x8000000100230E20;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0x402E000000000000;
    swift_unknownObjectWeakAssign();
    *&a5[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn] = v21;
    v23 = type metadata accessor for DKProxManager(0, v22);
    v34.receiver = a5;
    v34.super_class = v23;
    v24 = objc_msgSendSuper2(&v34, "init");
    if (a1)
    {
      v25 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
      v26 = type metadata accessor for UUID();
      v27 = *(v26 - 8);
      (*(v27 + 16))(v16, a1 + v25, v26);
      (*(v27 + 56))(v16, 0, 1, v26);
    }

    else
    {
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
    }

    type metadata accessor for PairingUIServiceAlert(0, v28);
    v30 = swift_allocObject();
    v31 = v24;
    *&v31[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard] = sub_1000EF5EC(v16, a2, v20, v31, v30);

    *(*&v31[OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn] + 48) = &off_100277E58;
    swift_unknownObjectWeakAssign();

    sub_100105518();

    sub_100095808(v36);
    return v31;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EFEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A9100, &qword_10023D030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EFF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EFFD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F00B4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0110(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F01A0()
{
  type metadata accessor for AppLayoutMonitor(0);
  swift_allocObject();
  result = sub_1000F028C();
  static AppLayoutMonitor.shared = result;
  return result;
}

uint64_t *AppLayoutMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1002A66C0 != -1)
  {
    swift_once();
  }

  return &static AppLayoutMonitor.shared;
}

uint64_t static AppLayoutMonitor.shared.getter()
{
  if (qword_1002A66C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000F028C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor) = 0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue;
  v6 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v8[1] = "AppLayoutMonitor";
  v8[2] = v6;
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  *(v0 + v9) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates) = _swiftEmptyArrayStorage;
  return v0;
}

void sub_1000F0574(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "begin layout monitoring", v5, 2u);
  }

  v6 = [objc_opt_self() configurationForDefaultMainDisplayMonitor];
  v10[4] = sub_1000F1D94;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000F0718;
  v10[3] = &unk_100277438;
  v7 = _Block_copy(v10);

  [v6 setTransitionHandler:v7];
  _Block_release(v7);
  v8 = [objc_opt_self() monitorWithConfiguration:v6];
  v9 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor);
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor) = v8;

  sub_1000F07B8();
}

void sub_1000F0718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_1000F07B8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v5 = *(v11 - 8);
  __chkstk_darwin(v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_delegateQueue);
  aBlock[4] = sub_1000F1D3C;
  v14 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277370;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v12 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

void sub_1000F0A60(uint64_t *a1)
{
  v76 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v4 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_layoutMonitor);
  if (v6)
  {
    v7 = [v6 currentLayout];
    if (v7)
    {
      v66 = v4;
      v64 = v7;
      v8 = [v7 elements];
      sub_100095B94(0, &qword_1002A8318, FBSDisplayLayoutElement_ptr);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
LABEL_51:
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = a1;
      if (v11)
      {
        v12 = 0;
        a1 = (v9 & 0xC000000000000001);
        v77 = _swiftEmptyArrayStorage;
        while (2)
        {
          v13 = v12;
          while (1)
          {
            if (a1)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v13 >= *(v10 + 16))
              {
                goto LABEL_49;
              }

              v14 = *(v9 + 8 * v13 + 32);
            }

            v15 = v14;
            v12 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v16 = [v14 bundleIdentifier];
            if (v16)
            {
              break;
            }

            ++v13;
            if (v12 == v11)
            {
              goto LABEL_23;
            }
          }

          v17 = v16;
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v19;

          v20 = v2;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_100102844(0, v77[2] + 1, 1, v77);
          }

          v22 = v77[2];
          v21 = v77[3];
          if (v22 >= v21 >> 1)
          {
            v77 = sub_100102844((v21 > 1), v22 + 1, 1, v77);
          }

          v23 = v77;
          v77[2] = (v22 + 1);
          v24 = &v23[2 * v22];
          v25 = v72;
          v24[4] = v18;
          v24[5] = v25;
          v2 = v20;
          if (v12 != v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v77 = _swiftEmptyArrayStorage;
      }

LABEL_23:

      v84 = v77;
      sub_1000F1440();
      v26 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs;
      a1 = v65;
      v27 = v84;
      if (sub_1000F0110(*(v65 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs), v84))
      {
LABEL_24:

LABEL_25:

        return;
      }

      *(a1 + v26) = v27;

      v9 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock = v30;
        *v29 = 136315138;

        v31 = Array.description.getter();
        v33 = v32;

        v34 = sub_1000952D4(v31, v33, &aBlock);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v9, v28, "Found these apps in foreground: %s", v29, 0xCu);
        sub_100095808(v30);
      }

      v10 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates;
      swift_beginAccess();
      v35 = *(a1 + v10);
      v72 = *(v35 + 16);
      if (!v72)
      {
        goto LABEL_25;
      }

      v71 = v35 + 32;
      v68 = v81;
      v67 = (v2 + 8);
      ++v66;

      v37 = 0;
      v70 = v26;
      v69 = v36;
      while (1)
      {
        if (v37 >= *(v36 + 16))
        {
          goto LABEL_50;
        }

        v77 = v37;
        v44 = *(v71 + 16 * v37);
        v45 = *(a1 + v26);
        v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v47 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v47 + 4);

        v48 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs;
        *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs) = v45;

        v49 = *(v44 + v46);

        os_unfair_lock_unlock(v49 + 4);

        v9 = *(v44 + v46);

        os_unfair_lock_lock((v9 + 16));

        v50 = *(v44 + v48);
        v2 = *(v50 + 16);
        if (v2)
        {
          v10 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

          swift_beginAccess();
          v51 = 0;
          a1 = (v50 + 40);
          while (v51 < *(v50 + 16))
          {
            v9 = *(v44 + v10);
            if (*(v9 + 16))
            {
              v52 = *(a1 - 1);
              v53 = *a1;

              sub_10016D4D0(v52, v53);
              LOBYTE(v52) = v54;

              if (v52)
              {

                a1 = v65;
                goto LABEL_31;
              }
            }

            ++v51;
            a1 += 2;
            if (v2 == v51)
            {

              a1 = v65;
              goto LABEL_42;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

LABEL_42:
        v55 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
        swift_beginAccess();
        v56 = *(v44 + v55);

        v57 = cameracaptureIdentifier.getter();
        if (!*(v56 + 16))
        {
          break;
        }

        sub_10016D4D0(v57, v58);
        v60 = v59;

        if ((v60 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_31:
        v38 = *(v44 + v46);

        os_unfair_lock_unlock(v38 + 4);

        v39 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
        v40 = swift_allocObject();
        *(v40 + 16) = v39;
        *(v40 + 24) = 9;
        v82 = sub_1000F1DA8;
        v83 = v40;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81[0] = sub_100147FC8;
        v41 = &unk_100277410;
LABEL_32:
        v81[1] = v41;
        v42 = _Block_copy(&aBlock);

        v2 = v73;
        static DispatchQoS.unspecified.getter();
        v78 = _swiftEmptyArrayStorage;
        sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v43 = v75;
        v10 = v76;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v42);
        (*v67)(v43, v10);
        (*v66)(v2, v74);
        v9 = v83;
        swift_unknownObjectRelease();

        v37 = (v77 + 1);
        v26 = v70;
        v36 = v69;
        if ((v77 + 1) == v72)
        {
          goto LABEL_24;
        }
      }

LABEL_46:
      v61 = *(v44 + v46);

      os_unfair_lock_unlock(v61 + 4);

      v62 = *(v44 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingSessionManager);
      v63 = swift_allocObject();
      *(v63 + 16) = v62;
      *(v63 + 24) = 3;
      v82 = sub_1000EFFCC;
      v83 = v63;
      aBlock = _NSConcreteStackBlock;
      v80 = 1107296256;
      v81[0] = sub_100147FC8;
      v41 = &unk_1002773C0;
      goto LABEL_32;
    }
  }
}

void sub_1000F1440()
{
  v1 = *v0;
  v2 = (*v0)[2];
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_10019F780(v1);
  }

  v2 = &v1[2 * v2 + 3];
  v4 = (v1 + 5);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = v1[2];
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = v1[2];

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_1000F1534(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_appStateDelegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_100102C9C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_100102C9C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = (v10 + 1);
  v11 = &v7[2 * v10];
  v11[4] = a2;
  v11[5] = a3;
  *(a1 + v6) = v7;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1000F1620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_foregroundAppsBundleIDs);
  v9[0] = a2;
  v9[1] = a3;
  v8[2] = v9;

  v6 = sub_10019EE0C(sub_1000BAB94, v8, v5);

  *a4 = v6 & 1;
  return result;
}

uint64_t sub_1000F16AC()
{
  sub_100095B94(0, &qword_1002A8310, RBSProcessHandle_ptr);
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() predicateMatchingBundleIdentifier:v0];

  v2 = sub_1000F1C10(v1);
  v3 = [v2 currentState];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 endowmentNamespaces];
    if (v5)
    {
      v6 = v5;
      v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v6) = sub_1000F1FD0(0xD00000000000001FLL, 0x8000000100230FD0, v7);

      v8 = v6 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    if ([v4 taskState] == 4)
    {

      return v8 & 1;
    }

    v10 = [v4 taskState];

    if (v10 == 3)
    {
      return v8 & 1;
    }
  }

  else
  {
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t AppLayoutMonitor.deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return v2;
}

uint64_t AppLayoutMonitor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd16AppLayoutMonitor_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppLayoutMonitor(uint64_t a1)
{
  result = qword_1002A81F0;
  if (!qword_1002A81F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F1B58(uint64_t a1, uint64_t a2)
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

id sub_1000F1C10(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForPredicate:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1000F1CD4(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A6F60, &unk_10023C4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F1D5C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000F1DB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1000F7750(&qword_1002A9810, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1000F7750(&qword_1002A8728, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000F1FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000F20C8(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002A8320);
  sub_100093DE8(v2, qword_1002A8320);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F2140(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v47 = &v42 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v42 - v12;
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  swift_beginAccess();
  v16 = *(v1 + 16);

  v17 = sub_1000F1DB8(a1, v16);

  if (v17)
  {
    (*(v5 + 16))(v8, a1, v4);
  }

  else
  {
    v18 = *(v2 + 24);
    v46 = v8;
    if (v18)
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100093DE8(v19, qword_1002A8320);
      v20 = *(v5 + 16);
      v20(v13, a1, v4);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v45 = v20;
        v24 = v23;
        v43 = swift_slowAlloc();
        v48[0] = v43;
        *v24 = 136315138;
        v25 = UUID.uuidString.getter();
        v44 = a1;
        v27 = v26;
        (*(v5 + 8))(v13, v4);
        v28 = sub_1000952D4(v25, v27, v48);
        a1 = v44;

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "Restarting RSSI scan, targeting accessory %s", v24, 0xCu);
        sub_100095808(v43);

        v20 = v45;
      }

      else
      {

        (*(v5 + 8))(v13, v4);
      }

      v8 = v46;
      if (*(v2 + 24))
      {

        sub_100105E6C();
      }
    }

    else
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100093DE8(v29, qword_1002A8320);
      v30 = *(v5 + 16);
      v30(v15, a1, v4);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      v33 = os_log_type_enabled(v31, v32);
      v45 = v30;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v48[0] = v44;
        *v34 = 136315138;
        v43 = UUID.uuidString.getter();
        v36 = v35;
        (*(v5 + 8))(v15, v4);
        v37 = sub_1000952D4(v43, v36, v48);

        *(v34 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Starting RSSI scan, targeting accessory %s", v34, 0xCu);
        sub_100095808(v44);
      }

      else
      {

        (*(v5 + 8))(v15, v4);
      }

      if (qword_1002A67A0 != -1)
      {
        swift_once();
      }

      if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
      {

        sub_1000F2E4C(7);
      }

      v38 = *(v2 + 40);
      type metadata accessor for Transaction(0);
      v39 = swift_allocObject();
      *(v39 + 48) = 0;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      *(v39 + 16) = 0;
      swift_unknownObjectWeakInit();
      *(v39 + 80) = 0;
      *(v39 + 88) = 1;
      swift_unknownObjectRetain();
      Logger.init(subsystem:category:)();
      *(v39 + 64) = 0xD000000000000025;
      *(v39 + 72) = 0x8000000100230960;
      *(v39 + 48) = v38;
      *(v39 + 56) = 0x403E000000000000;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      *(v2 + 24) = v39;

      sub_100105518();

      v20 = v45;
      v8 = v46;
    }

    v20(v8, a1, v4);
  }

  swift_beginAccess();
  v40 = v47;
  sub_10019D5B8(v47, v8);
  (*(v5 + 8))(v40, v4);
  return swift_endAccess();
}

void sub_1000F27AC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-1] - v9;
  swift_beginAccess();
  sub_10019EEB8(a1, v10);
  sub_100095C84(v10, &qword_1002A7AF0, &qword_10023C9D0);
  swift_endAccess();
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100093DE8(v11, qword_1002A8320);
  (*(v5 + 16))(v7, a1, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23[0] = v15;
    *v14 = 136315138;
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1000952D4(v16, v18, v23);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Invalidating RSSI target %s", v14, 0xCu);
    sub_100095808(v15);
  }

  else
  {

    v20 = (*(v5 + 8))(v7, v4);
  }

  if (!*(*(v2 + 16) + 16))
  {
    sub_1000F2B90(v20, v21);
  }
}

uint64_t sub_1000F2A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002A8320);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Purging all RSSI scan targets.", v7, 2u);
  }

  swift_beginAccess();
  *(v3 + 16) = &_swiftEmptySetSingleton;
}

void sub_1000F2B90(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 24))
  {
    v3 = v2;
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100093DE8(v4, qword_1002A8320);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Stopping RSSI scan", v7, 2u);
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    if (*(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan))
    {

      sub_1000F2E4C(4);
    }

    if (*(v3 + 24))
    {

      sub_1001059EC();
    }

    *(v3 + 24) = 0;
  }
}

uint64_t sub_1000F2D24()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id *sub_1000F2D90(uint64_t a1, uint64_t a2)
{
  sub_1000F4660(a1, a2);

  sub_100095C84((v2 + 10), &unk_1002A6810, &unk_10023AB10);
  return v2;
}

uint64_t sub_1000F2DF4(uint64_t a1, uint64_t a2)
{
  sub_1000F2D90(a1, a2);

  return swift_deallocClassInstance();
}

void sub_1000F2E4C(int a1)
{
  v74 = a1;
  v1 = type metadata accessor for Data.Iterator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v97 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v72 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v95 = &v72 - v13;
  __chkstk_darwin(v12);
  v87 = &v72 - v14;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v15 = qword_1002B1CF0;
    v16 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v17 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v17 + 4);

    v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_accessories;
    swift_beginAccess();
    v19 = *(v15 + v18);
    v20 = *(v15 + v16);

    os_unfair_lock_unlock(v20 + 4);

    v102 = _swiftEmptyArrayStorage;
    v75 = v19;
    if (v19 >> 62)
    {
      break;
    }

    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_26;
    }

LABEL_4:
    v22 = 0;
    v86 = v75 & 0xC000000000000001;
    v85 = v75 & 0xFFFFFFFFFFFFFF8;
    v77 = v75 + 32;
    v94 = (v8 + 8);
    v88 = 0x8000000100231150;
    v80 = v2 + 1;
    v79 = (v8 + 48);
    v76 = (v8 + 32);
    v78 = xmmword_10023C8B0;
    v96 = xmmword_10023C170;
    v83 = v7;
    v82 = v11;
    v84 = v6;
    v81 = v21;
    while (1)
    {
      if (v86)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v22 >= *(v85 + 16))
        {
          goto LABEL_23;
        }

        v23 = *(v77 + 8 * v22);
      }

      v2 = v23;
      v24 = __OFADD__(v22, 1);
      v25 = v22 + 1;
      if (v24)
      {
        break;
      }

      v93 = v25;
      v26 = dispatch thunk of DockCoreAccessory.info.getter();
      v27 = v87;
      DockCoreInfo.identifier.getter();

      sub_100095274(&unk_1002AC9B0, &qword_10023C3D0);
      v28 = swift_allocObject();
      *(v28 + 16) = v78;
      UUID.uuid.getter();
      *(v28 + 32) = v29;
      UUID.uuid.getter();
      *(v28 + 33) = v30;
      UUID.uuid.getter();
      *(v28 + 34) = v31;
      UUID.uuid.getter();
      *(v28 + 35) = v32;
      UUID.uuid.getter();
      *(v28 + 36) = v33;
      UUID.uuid.getter();
      *(v28 + 37) = v34;
      v35 = sub_100104264(v28);
      v37 = v36;

      v91 = *v94;
      v91(v27, v7);
      sub_1000A0CD8(v35, v37);
      v38 = dispatch thunk of DockCoreAccessory.info.getter();
      DockCoreInfo.identifier.getter();

      v92 = v2;
      v39 = v97;
      sub_1000A0CD8(v35, v37);
      v89 = v37;
      v90 = v35;
      Data.Iterator.init(_:at:)();
      v40 = sub_1000F7750(&qword_1002A7140, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
      dispatch thunk of IteratorProtocol.next()();
      v41 = 0xD000000000000018;
      v11 = v88;
      if ((v101 & 1) == 0)
      {
        v11 = v88;
        do
        {
          v42 = v100;
          sub_100095274(&unk_1002A73A0, &qword_10023C670);
          v43 = swift_allocObject();
          *(v43 + 16) = v96;
          *(v43 + 56) = &type metadata for UInt8;
          *(v43 + 64) = &protocol witness table for UInt8;
          *(v43 + 32) = v42;
          v44 = v40;
          v45 = String.init(format:_:)();
          v47 = v46;
          v98 = v41;
          v99 = v11;

          v48._countAndFlagsBits = v45;
          v40 = v44;
          v48._object = v47;
          String.append(_:)(v48);

          v39 = v97;

          v41 = v98;
          v11 = v99;
          dispatch thunk of IteratorProtocol.next()();
        }

        while (v101 != 1);
      }

      v50 = v89;
      v49 = v90;
      sub_1000A0D2C(v90, v89);
      (*v80)(v39, v1);
      v6 = v84;
      UUID.init(uuidString:)();

      v51 = *v79;
      v7 = v83;
      if ((*v79)(v6, 1, v83) == 1)
      {
        v52 = v82;
        UUID.init()();
        v53 = v51(v6, 1, v7);
        v2 = v92;
        if (v53 != 1)
        {
          sub_100095C84(v6, &qword_1002A7AF0, &qword_10023C9D0);
        }
      }

      else
      {
        v52 = v82;
        (*v76)(v82, v6, v7);
        v2 = v92;
      }

      v8 = v95;
      v54 = static UUID.== infix(_:_:)();
      sub_1000A0D2C(v49, v50);
      v55 = v91;
      v91(v52, v7);
      v55(v8, v7);
      if (v54)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v22 = v93;
      if (v93 == v81)
      {
        v56 = v102;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
    goto LABEL_4;
  }

LABEL_26:
  v56 = _swiftEmptyArrayStorage;
LABEL_27:

  if ((v56 & 0x8000000000000000) != 0 || (v56 & 0x4000000000000000) != 0)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v57 = v56[2];
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  sub_100093DE8(v58, qword_1002A8320);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v61 = 136315394;
    if (v74 > 3u)
    {
      if (v74 > 5u)
      {
        if (v74 == 6)
        {
          v62 = 0xE600000000000000;
          v63 = 0x7461626D6F77;
        }

        else
        {
          v62 = 0xE900000000000064;
          v63 = 0x6C6F687365726874;
        }
      }

      else if (v74 == 4)
      {
        v62 = 0xE700000000000000;
        v63 = 0x74754F656D6974;
      }

      else
      {
        v62 = 0xE300000000000000;
        v63 = 6514286;
      }
    }

    else if (v74 > 1u)
    {
      if (v74 == 2)
      {
        v62 = 0xE700000000000000;
        v63 = 0x7463656E6E6F63;
      }

      else
      {
        v62 = 0xEA00000000007463;
        v63 = 0x656E6E6F63736964;
      }
    }

    else if (v74)
    {
      v62 = 0xE600000000000000;
      v63 = 0x68636E75616CLL;
    }

    else
    {
      v62 = 0xE400000000000000;
      v63 = 1701736302;
    }

    v64 = sub_1000952D4(v63, v62, &v98);

    *(v61 + 4) = v64;
    *(v61 + 12) = 2080;
    if (v57)
    {
      v65 = 0x646572696170;
    }

    else
    {
      v65 = 0x6465726961706E75;
    }

    if (v57)
    {
      v66 = 0xE600000000000000;
    }

    else
    {
      v66 = 0xE800000000000000;
    }

    v67 = sub_1000952D4(v65, v66, &v98);

    *(v61 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v59, v60, "BT Scan event: %s (%s)", v61, 0x16u);
    swift_arrayDestroy();
  }

  v70 = v73;
  if (v74 <= 2u)
  {
    if (v74)
    {
      if (v74 == 1)
      {
        goto LABEL_61;
      }

      goto LABEL_68;
    }
  }

  else
  {
    if (v74 > 5u)
    {
      if (v74 == 6)
      {
        if (([*(v73 + 40) isScanning] & 1) == 0 && *(v70 + 72) != 1)
        {
          return;
        }

        sub_1000F657C(1, 1);
        v71 = 4;
      }

      else
      {
        v71 = 3;
      }

LABEL_71:
      sub_1000F3974(v71, v69);
      return;
    }

    if (v74 - 3 >= 2)
    {
      v71 = 1;
      goto LABEL_71;
    }

LABEL_61:
    if (v57)
    {
      sub_1000F657C(1, 0);
      v71 = 2;
      goto LABEL_71;
    }

    v68 = sub_1000F657C(0, 0);
LABEL_68:
    if (*(v70 + 64))
    {
      sub_1000F4660(v68, v69);
    }
  }
}

void sub_1000F3974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (*(v2 + 64))
  {
    sub_1000F4660(a1, a2);
  }

  if (v4)
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100093DE8(v5, qword_1002A8320);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Starting Bluetooth discovery...", v8, 2u);
    }

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    v9 = qword_1002B1EB8;
    v10 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v11 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v11 + 4);

    v12 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
    swift_beginAccess();
    *(v9 + v12) = &_swiftEmptyDictionarySingleton;

    v13 = *(v9 + v10);

    os_unfair_lock_unlock(v13 + 4);

    v14 = [objc_allocWithZone(CBDiscovery) init];
    v15 = *(v3 + 64);
    *(v3 + 64) = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setBleRSSIThresholdHint:4294967226];

      v17 = *(v3 + 64);
      if (v17)
      {
        v18 = 1074790400;
        if (v4 == 4)
        {
          v18 = 1107296256;
        }

        if (v4 == 3)
        {
          v19 = 0x240000000;
        }

        else
        {
          v19 = v18;
        }

        [v17 setDiscoveryFlags:v19];
        v20 = *(v3 + 64);
        if (v20)
        {
          [v20 setDispatchQueue:*(v3 + 32)];
          v21 = *(v3 + 64);
          if (v21)
          {
            [v21 addDiscoveryType:12];
            v22 = *(v3 + 64);
            if (v22)
            {
              v35 = sub_1000F7740;
              v36 = v3;
              aBlock = _NSConcreteStackBlock;
              v32 = 1107296256;
              v33 = sub_1000F3FF4;
              v34 = &unk_1002775F8;
              v23 = _Block_copy(&aBlock);

              v24 = v22;

              [v24 setDeviceFoundHandler:v23];
              _Block_release(v23);

              v25 = *(v3 + 64);
              if (v25)
              {
                v35 = sub_1000F405C;
                v36 = 0;
                aBlock = _NSConcreteStackBlock;
                v32 = 1107296256;
                v33 = sub_1000F3FF4;
                v34 = &unk_100277620;
                v26 = _Block_copy(&aBlock);
                v27 = v25;
                [v27 setDeviceLostHandler:v26];
                _Block_release(v26);

                v28 = *(v3 + 64);
                if (v28)
                {
                  v35 = sub_1000F7748;
                  v36 = v3;
                  aBlock = _NSConcreteStackBlock;
                  v32 = 1107296256;
                  v33 = sub_10015C1F8;
                  v34 = &unk_100277648;
                  v29 = _Block_copy(&aBlock);

                  v30 = v28;

                  [v30 activateWithCompletion:v29];
                  _Block_release(v29);
                }

                *(v3 + 73) = v4;
                return;
              }

LABEL_30:
              __break(1u);
              return;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_1000F3DC8(void *a1, uint64_t a2)
{
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100093DE8(v3, qword_1002A8320);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v4 name];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E55;
    }

    v13 = sub_1000952D4(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    v14 = [v4 identifier];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE100000000000000;
      v16 = 45;
    }

    v19 = sub_1000952D4(v16, v18, &v20);

    *(v7 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "Found device %s [%s]", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000F4830(v4);
}

void sub_1000F3FF4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000F405C(void *a1)
{
  v2 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  __chkstk_darwin(v2 - 8);
  v4 = &v32[-1] - v3;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100093DE8(v5, qword_1002A8320);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v6 name];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v14 = 0xE700000000000000;
      v12 = 0x6E776F6E6B6E55;
    }

    v15 = sub_1000952D4(v12, v14, v32);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    v16 = [v6 identifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE100000000000000;
      v18 = 45;
    }

    v21 = sub_1000952D4(v18, v20, v32);

    *(v9 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Lost device %s [%s]", v9, 0x16u);
    swift_arrayDestroy();
  }

  result = [v6 identifier];
  if (result)
  {
    v23 = result;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    v27 = qword_1002B1EB8;
    v28 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
    v29 = *(qword_1002B1EB8 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

    os_unfair_lock_lock(v29 + 4);

    swift_beginAccess();
    sub_1001E4E78(v24, v26, v4);
    sub_100095C84(v4, &unk_1002A9C20, &qword_10023D210);
    swift_endAccess();

    v30 = *(v27 + v28);

    os_unfair_lock_unlock(v30 + 4);
  }

  return result;
}

void sub_1000F43C0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002A8320);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15[0] = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_1000952D4(v6, v7, v15);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Unable to activate CBDiscovery: %s", v4, 0xCu);
      sub_100095808(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100093DE8(v10, qword_1002A8320);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Bluetooth discovery activated!", v13, 2u);
    }

    *(a2 + 72) = 1;
    swift_beginAccess();
    sub_1000B5150(a2 + 80, v15, &unk_1002A6810, &unk_10023AB10);
    sub_100095C84(v15, &unk_1002A6810, &unk_10023AB10);
  }
}

uint64_t sub_1000F4660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002A8320);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Stopping Bluetooth discovery...", v7, 2u);
  }

  [*(v3 + 64) invalidate];
  v8 = *(v3 + 64);
  *(v3 + 64) = 0;

  *(v3 + 72) = 0;
  swift_beginAccess();
  sub_1000B5150(v3 + 80, v15, &unk_1002A6810, &unk_10023AB10);
  if (v16)
  {
    sub_1000A097C(v15, v14);
    sub_100095C84(v15, &unk_1002A6810, &unk_10023AB10);
    sub_1000A09E0(v14, v14[3]);

    sub_1000F2B90(v9, v10);

    sub_1000F2A84(v11, v12);

    result = sub_100095808(v14);
  }

  else
  {
    result = sub_100095C84(v15, &unk_1002A6810, &unk_10023AB10);
  }

  *(v3 + 73) = 0;
  return result;
}

void sub_1000F4830(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bleAdvertisementTimestamp];
  if (v8 > 0.0)
  {
    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v10 = v9;
    (*(v5 + 8))(v7, v4);
    [a1 bleAdvertisementTimestamp];
    if (qword_1002A66C8 != -1)
    {
      v35 = *&v11;
      swift_once();
      *&v11 = v35;
    }

    v12 = v10 - *&v11;
    v13 = type metadata accessor for Logger();
    sub_100093DE8(v13, qword_1002A8320);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v14, v15, "New device is %f seconds old...", v16, 0xCu);
    }

    if (v12 >= 1.0)
    {
      v27 = a1;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        *(v30 + 4) = v12;
        *(v30 + 12) = 2048;
        [v27 bleAdvertisementTimestamp];
        *(v30 + 14) = v31;
        _os_log_impl(&_mh_execute_header, v28, v29, "Ignoring found device: lifetime is too old: %f (%f)", v30, 0x16u);
LABEL_22:
      }
    }

    else
    {
      sub_1000F6A3C(a1, &v37);
      v17 = v38;
      if (v38)
      {
        v18 = v37;
        v41 = v39;
        v42 = v40;
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        if (qword_1002A67A0 != -1)
        {
          swift_once();
        }

        v20 = swift_allocObject();
        *(v20 + 16) = a1;
        *(v20 + 24) = v19;
        *(v20 + 32) = v2;
        *(v20 + 40) = v18;
        *(v20 + 48) = v17;
        v21 = v42;
        *(v20 + 56) = v41;
        *(v20 + 72) = v21;
        v22 = a1;

        sub_1000B5150(&v37, v36, &unk_1002A7AA0, &unk_10023C978);
        sub_1001D5444(sub_1000F72E0, v20);

        sub_100095C84(&v37, &unk_1002A7AA0, &unk_10023C978);
        return;
      }

      v28 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v28, v32, "Unable to parse advertisement data!", v33, 2u);
        goto LABEL_22;
      }
    }

    return;
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100093DE8(v23, qword_1002A8320);
  v35 = COERCE_DOUBLE(Logger.logObject.getter());
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(*&v35, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, *&v35, v24, "Ignoring found device: advertisment timestamp is 0.", v25, 2u);
  }

  v26 = *&v35;
}

void sub_1000F4D14(void *a1, uint64_t a2, void *a3, NSObject *a4, uint64_t a5, uint64_t *a6)
{
  v130 = a4;
  v128 = a1;
  v8 = *a6;
  v9 = a6[1];
  v129 = *(a6 + 12);
  v11 = *(a6 + 4);
  v10 = *(a6 + 5);
  v12 = *(a6 + 26);
  v13 = a6[4];
  v14 = a6[5];
  v15 = sub_100095274(&qword_1002A7AF0, &qword_10023C9D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v112 - v16;
  v18 = type metadata accessor for UUID();
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  if (!a2)
  {
    v116 = v17;
    v120 = v9;
    v118 = v14;
    v114 = v25;
    v121 = v8;
    v117 = &v112 - v22;
    v115 = v24;
    v123 = v23;
    v122 = v21;
    v30 = [a3 btAddressData];
    v31 = v11;
    v32 = v12;
    v33 = v13;
    v127 = a3;
    v126 = v13;
    v124 = v11;
    v125 = v12;
    v119 = v10;
    if (v30)
    {
      v34 = v30;
      v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      sub_1000A0CD8(v35, v37);
      v38 = sub_1001D0F80(v35, v37);
      if (v39 >> 60 == 15)
      {
        sub_1000A0D2C(v35, v37);
      }

      else
      {
        v40 = v38;
        v41 = v39;
        if (qword_1002A66C8 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100093DE8(v42, qword_1002A8320);
        sub_1000A0CD8(v40, v41);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        sub_1000A452C(v40, v41);
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v131 = v46;
          *v45 = 136315138;
          v47._countAndFlagsBits = sub_10014025C(v40, v41);
          *&v132 = 0x206D6F646E6152;
          *(&v132 + 1) = 0xE700000000000000;
          String.append(_:)(v47);

          v48 = sub_1000952D4(v132, *(&v132 + 1), &v131);

          *(v45 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v43, v44, "Trying to retrieve peripheral with address: %s", v45, 0xCu);
          sub_100095808(v46);
        }

        v49._countAndFlagsBits = sub_10014025C(v40, v41);
        *&v132 = 0x206D6F646E6152;
        *(&v132 + 1) = 0xE700000000000000;
        String.append(_:)(v49);

        v50 = String._bridgeToObjectiveC()();

        v51 = [v128 retrievePeripheralWithAddress:v50];
        sub_1000A0D2C(v35, v37);
        sub_1000A452C(v40, v41);

        v52 = v130;
        swift_beginAccess();
        isa = v52[2].isa;
        v52[2].isa = v51;
      }

      a3 = v127;
      v33 = v126;
      v31 = v124;
      v32 = v125;
    }

    v54 = v130;
    swift_beginAccess();
    if (!v54[2].isa)
    {
      v55 = [a3 identifier];
      if (v55)
      {
        v56 = v55;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = v125;
      }

      v57 = v116;
      UUID.init(uuidString:)();

      v58 = v123;
      v59 = v122;
      if ((*(v123 + 48))(v57, 1, v122) == 1)
      {
        sub_100095C84(v57, &qword_1002A7AF0, &qword_10023C9D0);
      }

      else
      {
        v60 = v117;
        (*(v58 + 32))(v117, v57, v59);
        if (qword_1002A66C8 != -1)
        {
          swift_once();
        }

        v61 = type metadata accessor for Logger();
        sub_100093DE8(v61, qword_1002A8320);
        v62 = *(v58 + 16);
        v63 = v114;
        v62(v114, v60, v59);
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v116 = (v58 + 16);
          v67 = v66;
          v68 = swift_slowAlloc();
          *&v132 = v68;
          *v67 = 136315138;
          v69 = UUID.uuidString.getter();
          v113 = v62;
          v71 = v70;
          v72 = *(v58 + 8);
          v72(v63, v59);
          v73 = sub_1000952D4(v69, v71, &v132);
          v62 = v113;

          *(v67 + 4) = v73;
          _os_log_impl(&_mh_execute_header, v64, v65, "Trying to retrieve peripheral with uuid: %s", v67, 0xCu);
          sub_100095808(v68);
          v31 = v124;
        }

        else
        {

          v72 = *(v58 + 8);
          v72(v63, v59);
        }

        sub_100095274(&qword_1002A8720, &qword_10023D208);
        v74 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_10023C170;
        v62(v75 + v74, v117, v59);
        v76 = Array._bridgeToObjectiveC()().super.isa;

        v77 = [v128 retrievePeripheralsWithIdentifiers:v76];

        sub_100095B94(0, &unk_1002A98E0, CBPeripheral_ptr);
        v78 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = v126;
        if (v78 >> 62)
        {
          v79 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = v125;
        if (v79)
        {
          if ((v78 & 0xC000000000000001) != 0)
          {
            v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_56;
            }

            v80 = *(v78 + 32);
          }

          v81 = v80;

          v72(v117, v59);
        }

        else
        {
          v72(v117, v59);

          v81 = 0;
        }

        v82 = v130;
        swift_beginAccess();
        v83 = v82[2].isa;
        v82[2].isa = v81;
      }
    }

    v84 = v130;
    swift_beginAccess();
    if (!v84[2].isa)
    {
      if (qword_1002A66C8 != -1)
      {
        swift_once();
      }

      v103 = type metadata accessor for Logger();
      sub_100093DE8(v103, qword_1002A8320);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v104, v105, "Unable to retrieve peripheral", v106, 2u);
      }

      goto LABEL_52;
    }

    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v85 = type metadata accessor for Logger();
    sub_100093DE8(v85, qword_1002A8320);

    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v32;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v132 = v90;
      *v89 = 136315138;
      v91 = v130;
      swift_beginAccess();
      v92 = v91[2].isa;
      if (!v92)
      {
LABEL_57:

        __break(1u);
        return;
      }

      v93 = v92;

      v94 = [(objc_class *)v93 identifier];

      v95 = v115;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000F7750(&unk_1002A6F90, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v96 = v122;
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v98;
      (*(v123 + 8))(v95, v96);
      v100 = sub_1000952D4(v97, v99, &v132);

      *(v89 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v86, v87, "Got peripheral with UUID %s", v89, 0xCu);
      sub_100095808(v90);

      v101 = v121;
      v102 = v120;
      v33 = v126;
      v31 = v124;
      v32 = v88;
    }

    else
    {

      v101 = v121;
      v102 = v120;
    }

    v107 = v130;
    swift_beginAccess();
    v108 = v107[2].isa;
    v109 = v127;
    if (v108)
    {
      v110 = v119 | (v129 << 32);
      v111 = 0x10000;
      *&v132 = v101;
      *(&v132 + 1) = v102;
      if ((v32 & 1) == 0)
      {
        v111 = 0;
      }

      v133 = v31 | (v110 << 32);
      v134 = v111 & 0xFFFFFFFFFFFF0000 | WORD2(v110);
      v135 = v33;
      v136 = v118;
      v104 = v108;
      sub_1000F72F0(v109, v104, &v132);
LABEL_52:

      return;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100093DE8(v26, qword_1002A8320);
  v130 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v130, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v130, v27, "Unable to power on BT central!", v28, 2u);
  }

  v29 = v130;
}

uint64_t sub_1000F5AB8()
{
  v1 = v0;
  if ([*(v0 + 40) isScanning])
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100093DE8(v2, qword_1002A8320);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Stopping scan...", v5, 2u);
    }

    [*(v1 + 40) stopScan];
  }

  if (*(v1 + 73) == 5)
  {
    *(v1 + 73) = 0;
  }

  sub_1001059EC();

  swift_beginAccess();
  sub_1000B5150(v1 + 80, v12, &unk_1002A6810, &unk_10023AB10);
  if (!v13)
  {
    return sub_100095C84(v12, &unk_1002A6810, &unk_10023AB10);
  }

  sub_1000A097C(v12, v11);
  sub_100095C84(v12, &unk_1002A6810, &unk_10023AB10);
  sub_1000A09E0(v11, v11[3]);

  sub_1000F2B90(v6, v7);

  sub_1000F2A84(v8, v9);

  return sub_100095808(v11);
}

uint64_t sub_1000F5CB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = type metadata accessor for DispatchQoS();
  v9 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 32);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v2;
  aBlock[4] = sub_1000F6A18;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277530;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1000F7750(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17[0]);
}

uint64_t sub_1000F5F80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1000F6040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BTDiscoveredDevice(uint64_t a1)
{
  result = qword_1002A86C0;
  if (!qword_1002A86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F6130(uint64_t a1)
{
  sub_100095B94(319, &qword_1002A86D0, CBDevice_ptr);
  if (v1 <= 0x3F)
  {
    sub_1000F61F4(319);
    if (v2 <= 0x3F)
    {
      sub_1000F625C();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F61F4(uint64_t a1)
{
  if (!qword_1002A86D8)
  {
    sub_100095B94(255, &unk_1002A98E0, CBPeripheral_ptr);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002A86D8);
    }
  }
}

void sub_1000F625C()
{
  if (!qword_1002A86E0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002A86E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for BTScanType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BTScanType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F6400()
{
  result = qword_1002A8718;
  if (!qword_1002A8718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8718);
  }

  return result;
}

uint64_t sub_1000F6454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16) == a1 && *(a3 + 24) == a2;
  if (v4 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    if (qword_1002A66C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100093DE8(v6, qword_1002A8320);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Scan transaction timed out.", v9, 2u);
    }

    result = [*(a3 + 40) isScanning];
    if ((result & 1) != 0 || *(a3 + 72) == 1)
    {
      return sub_1000F5AB8();
    }
  }

  return result;
}

uint64_t sub_1000F657C(char a1, uint64_t a2)
{
  v2 = a2;
  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002A8320);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Setting XPC launch events for Bluetooth (enabled = %{BOOL}d; screenOff = %{BOOL}d)", v7, 0xEu);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  empty = xpc_array_create_empty();
  v10 = xpc_array_create_empty();
  if (a1)
  {
    v11 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(empty, v11, "DockKitAccessory");
    v12 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v10, v12, "BLEAdvertisementData");
    v13 = XPC_ARRAY_APPEND.getter();
    xpc_array_set_string(v10, v13, "PassiveRSSI");
    if (v2)
    {
      v14 = XPC_ARRAY_APPEND.getter();
      xpc_array_set_string(v10, v14, "ScreenOff");
    }

    xpc_dictionary_set_value(v8, "discoveryFlags", v10);
    xpc_dictionary_set_value(v8, "discoveryTypes", empty);
    xpc_dictionary_set_int64(v8, "bleRSSIThresholdHint", -70);
  }

  xpc_set_event();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000F6788(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 80) = 0u;
  v8 = v3 + 80;
  *(v8 - 64) = 1851876211;
  *(v8 - 56) = 0xE400000000000000;
  *(v8 - 24) = 0;
  *(v8 - 16) = 0;
  *(v8 - 8) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v8 - 48) = a2;
  *(v8 - 40) = a1;
  swift_beginAccess();
  v9 = a1;
  v10 = a2;
  sub_1000F6968(a3, v8);
  swift_endAccess();
  v12 = *(v8 - 64);
  v11 = *(v8 - 56);
  type metadata accessor for Transaction(0);
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 80) = 0;
  *(v13 + 88) = 1;

  Logger.init(subsystem:category:)();
  *(v13 + 64) = v12;
  *(v13 + 72) = v11;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0x403E000000000000;
  swift_unknownObjectWeakAssign();
  *(v8 - 32) = v13;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  sub_1001859D4(v14, v15);

  sub_100095C84(a3, &unk_1002A6810, &unk_10023AB10);
  *(*(v4 + 48) + 48) = &off_1002774F0;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1000F6968(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6810, &unk_10023AB10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F69D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F6A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000F6A3C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = [a1 dockKitAccessoryPayloadData];
  if (!v7)
  {
    v24 = [a1 bleAdvertisementData];
    if (!v24)
    {
LABEL_36:
      v22 = 0;
      v23 = 0;
      v20 = 0uLL;
      v21 = 0uLL;
      goto LABEL_37;
    }

    v25 = v24;
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = v28 >> 62;
    if ((v28 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_25;
      }

      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      v32 = __OFSUB__(v30, v31);
      v33 = v30 - v31;
      if (!v32)
      {
        if (v33 > 25)
        {
          goto LABEL_15;
        }

        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      if (!v29)
      {
        if (BYTE6(v28) <= 0x19uLL)
        {
          goto LABEL_25;
        }

LABEL_15:
        v34 = sub_100104264(&off_100274D18);
        v3 = v35;
        v36 = Data._Representation.subscript.getter();
        v37 = Data._Representation.subscript.getter();
        sub_1000A0CD8(v26, v28);
        sub_10013B31C(2uLL, v26, v28, &v71);
        sub_10015319C(16, v71, v72, &v73);
        v2 = *(&v73 + 1);
        v4 = v73;
        v70 = v34;
        if (sub_1001ACC84(v73, *(&v73 + 1), v34, v3))
        {
          if (v37 == 33)
          {
            if (v36 == 29)
            {
              if (qword_1002A66C8 != -1)
              {
                swift_once();
              }

              v60 = type metadata accessor for Logger();
              sub_100093DE8(v60, qword_1002A8320);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.default.getter();
              v67 = v4;
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 0;
                v42 = "Found device with docking advertisement";
                goto LABEL_43;
              }
            }

            else
            {
              if (v36 != 25)
              {
                if (qword_1002A66C8 != -1)
                {
                  swift_once();
                }

                v62 = type metadata accessor for Logger();
                sub_100093DE8(v62, qword_1002A8320);
                v63 = Logger.logObject.getter();
                v64 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v63, v64))
                {
                  v65 = swift_slowAlloc();
                  *v65 = 16777472;
                  v65[4] = v36;
                  _os_log_impl(&_mh_execute_header, v63, v64, "Invalid device advertisement length: %hhu", v65, 5u);
                }

                sub_1000A0D2C(v26, v28);
                sub_1000A0D2C(v4, v2);
                sub_1000A0D2C(v34, v3);

                goto LABEL_36;
              }

              if (qword_1002A66C8 != -1)
              {
                swift_once();
              }

              v38 = type metadata accessor for Logger();
              sub_100093DE8(v38, qword_1002A8320);
              v39 = Logger.logObject.getter();
              v40 = static os_log_type_t.default.getter();
              v67 = v4;
              if (os_log_type_enabled(v39, v40))
              {
                v41 = swift_slowAlloc();
                *v41 = 0;
                v42 = "Found device with pairing advertisement";
LABEL_43:
                _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);
                v61 = v2;

LABEL_45:

                sub_1000A0CD8(v26, v28);
                sub_10013B31C(0x12uLL, v26, v28, &v71);
                sub_1001B1B24(v71, v72, &v73);
                v69 = v74;
                v66 = v73;
                v22 = v75;
                v23 = v76;
                sub_1000A0D2C(v26, v28);
                sub_1000A0D2C(v67, v61);
                sub_1000A0D2C(v70, v3);
                v21 = v69;
                v20 = v66;
                goto LABEL_37;
              }
            }

            v61 = v2;
            goto LABEL_45;
          }

          if (qword_1002A66C8 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_100093DE8(v57, qword_1002A8320);
          v46 = Logger.logObject.getter();
          v58 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v46, v58))
          {
            v59 = swift_slowAlloc();
            *v59 = 16777472;
            v59[4] = v37;
            _os_log_impl(&_mh_execute_header, v46, v58, "Inavlid device advertisement type: %hhu", v59, 5u);
          }

          sub_1000A0D2C(v26, v28);
          sub_1000A0D2C(v4, v2);
          v55 = v70;
          v56 = v3;
LABEL_35:
          sub_1000A0D2C(v55, v56);

          goto LABEL_36;
        }

        if (qword_1002A66C8 == -1)
        {
LABEL_28:
          v45 = type metadata accessor for Logger();
          sub_100093DE8(v45, qword_1002A8320);
          sub_1000A0CD8(v4, v2);
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          sub_1000A0D2C(v4, v2);
          if (!os_log_type_enabled(v46, v47))
          {
            sub_1000A0D2C(v26, v28);
            sub_1000A0D2C(v70, v3);

            v43 = v4;
            v44 = v2;
            goto LABEL_26;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v2;
          v68 = v2;
          v51 = v49;
          *&v73 = v49;
          *v48 = 136315138;
          v52 = sub_10013B46C(v4, v50);
          v54 = sub_1000952D4(v52, v53, &v73);

          *(v48 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v46, v47, "Invalid UUID: %s", v48, 0xCu);
          sub_100095808(v51);

          sub_1000A0D2C(v26, v28);
          sub_1000A0D2C(v4, v68);
          v55 = v70;
          v56 = v3;
          goto LABEL_35;
        }

LABEL_53:
        swift_once();
        goto LABEL_28;
      }

      if (!__OFSUB__(HIDWORD(v26), v26))
      {
        if (HIDWORD(v26) - v26 > 25)
        {
          goto LABEL_15;
        }

LABEL_25:
        v43 = v26;
        v44 = v28;
LABEL_26:
        sub_1000A0D2C(v43, v44);
        goto LABEL_36;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1002A66C8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100093DE8(v12, qword_1002A8320);
  sub_1000A0CD8(v9, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  sub_1000A0D2C(v9, v11);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v73 = v16;
    *v15 = 136315138;
    v17 = sub_10013B46C(v9, v11);
    v19 = sub_1000952D4(v17, v18, &v73);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, "New device with AdvData: 0x%s", v15, 0xCu);
    sub_100095808(v16);
  }

  sub_1001B1B24(v9, v11, &v73);
  v20 = v73;
  v21 = v74;
  v22 = v75;
  v23 = v76;
LABEL_37:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 40) = v23;
}

uint64_t sub_1000F7250()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F7288()
{

  sub_1000A0D2C(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 88, 7);
}

id sub_1000F72F0(void *a1, void *a2, _OWORD *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BTDiscoveredDevice(0);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (result)
  {

    *v14 = a1;
    *(v14 + 1) = a2;
    v16 = a3[1];
    *(v14 + 1) = *a3;
    *(v14 + 2) = v16;
    *(v14 + 3) = a3[2];
    v17 = a2;
    v18 = a1;
    sub_1000B5150(a3, aBlock, &unk_1002A7AA0, &unk_10023C978);
    static Date.now.getter();
    if (qword_1002A67A0 != -1)
    {
      swift_once();
    }

    result = [v18 identifier];
    if (result)
    {
      v19 = result;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      sub_1001D5C78(v20, v22, v14);

      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
      v24 = *&v23[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_workQueue];
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      aBlock[4] = sub_1000E3CF8;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_1002775D0;
      v26 = _Block_copy(aBlock);
      v27 = v23;
      v28 = v24;
      static DispatchQoS.unspecified.getter();
      v32 = _swiftEmptyArrayStorage;
      sub_1000F7750(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_1000BAB30();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v31 + 8))(v8, v6);
      (*(v9 + 8))(v11, v30);
      sub_1000E4128(v14);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000F7750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F77BC(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v4 = type metadata accessor for Logger();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000F7888, 0, 0);
}

uint64_t sub_1000F7888()
{
  v1 = *(v0[2] + 32);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = [v1 primaryAccessory];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v0[2];

  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
  {
    v4 = v0[2];
    v5 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
    if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager))
    {
      (*(v0[4] + 16))(v0[5], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Diagnostics manager is already present", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
      v13 = 0;
      goto LABEL_13;
    }

    v16 = *(v4 + 40);
    type metadata accessor for AccessoryDiagnosticsManager(0);
    swift_allocObject();
    v17 = v16;

    v19 = sub_1000CAC5C(v18, v17);

    *(v4 + v5) = v19;

LABEL_12:
    v13 = 1;
LABEL_13:

    v20 = v0[1];

    return v20(v13);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1000F7ADC;

  return sub_1000F7D10();
}

uint64_t sub_1000F7ADC()
{

  return (_swift_task_switch)(sub_1000F7BD8, 0, 0);
}

uint64_t sub_1000F7BD8()
{
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not creating Diagnostics manager for accessory without a data stream controlle", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1000F7D30()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
  v0[3] = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v3 + 32);
    v0[5] = v4;

    if (v4)
    {

      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_1000F7E4C;

      return sub_100169B04(v6, v7);
    }

    *(v5 + 32) = 0;

    v1 = v0[2];
    v2 = v0[3];
  }

  *(v1 + v2) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000F7E4C()
{

  return (_swift_task_switch)(sub_1000F7F64, 0, 0);
}

uint64_t sub_1000F7F64()
{
  *(v0[4] + 32) = 0;

  *(v0[2] + v0[3]) = 0;

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000F7FF0(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = &v26 - v7;
  v8 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_connectOnActions;
  swift_beginAccess();
  v9 = *&v1[v8];
  v10 = *(v9 + 16);
  if (v10)
  {
    v27 = v8;

    v11 = 32;
    v28 = v9;
    do
    {
      v12 = swift_allocObject();
      v30 = *(v9 + v11);
      *(v12 + 16) = v30;
      v13 = type metadata accessor for TaskPriority();
      v14 = *(v13 - 8);
      v15 = v31;
      (*(v14 + 56))(v31, 1, 1, v13);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = &unk_10023D238;
      v16[5] = v12;
      v17 = v29;
      v16[6] = v2;
      v16[7] = v17;
      sub_1000F9370(v15, v6);
      LODWORD(v15) = (*(v14 + 48))(v6, 1, v13);

      v18 = v2;
      swift_errorRetain();

      if (v15 == 1)
      {
        sub_100095C84(v6, &unk_1002A73C0, &unk_10023BE80);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v14 + 8))(v6, v13);
      }

      v19 = v2;
      v20 = v16[2];
      swift_unknownObjectRetain();

      if (v20)
      {
        swift_getObjectType();
        v21 = dispatch thunk of Actor.unownedExecutor.getter();
        v23 = v22;
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      sub_100095C84(v31, &unk_1002A73C0, &unk_10023BE80);
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_10023D240;
      *(v24 + 24) = v16;
      if (v23 | v21)
      {
        v32 = 0;
        v33 = 0;
        v34 = v21;
        v35 = v23;
      }

      v2 = v19;
      swift_task_create();

      v11 += 16;
      --v10;
      v9 = v28;
    }

    while (v10);

    v8 = v27;
  }

  *&v2[v8] = _swiftEmptyArrayStorage;
}

id sub_1000F8374(id result, uint64_t a2)
{
  if (!a2)
  {
    v3 = result;
    result = [result services];
    if (result)
    {
      v4 = result;
      sub_100095B94(0, &qword_1002A9840, CBService_ptr);
      v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6 = (v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext);
      swift_beginAccess();
      if (!*(v6 + 1))
      {
      }

      *(v6 + 1) = v5;

      if (!*(v6 + 1))
      {
        goto LABEL_22;
      }

      if (v6[80])
      {
        if (*v6 - 1 <= 1)
        {
          if (v5 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
            v7 = result;
            if (result)
            {
              goto LABEL_9;
            }
          }

          else
          {
            v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v7)
            {
LABEL_9:
              if (v7 >= 1)
              {
                for (i = 0; i != v7; ++i)
                {
                  if ((v5 & 0xC000000000000001) != 0)
                  {
                    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v9 = *(v5 + 8 * i + 32);
                  }

                  v10 = v9;
                  [v3 discoverCharacteristics:0 forService:v9];
                }
              }

              __break(1u);
LABEL_22:
              __break(1u);
              return result;
            }
          }
        }
      }

      v11 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
      if (v11)
      {
        [v11 didFinishDiscovery:0];
      }

      v12 = *(v6 + 3);
      v14[2] = *(v6 + 2);
      v14[3] = v12;
      v14[4] = *(v6 + 4);
      v15 = v6[80];
      v13 = *(v6 + 1);
      v14[0] = *v6;
      v14[1] = v13;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
      v6[80] = 0;
      return sub_100095C84(v14, &qword_1002A8798, &qword_10023E350);
    }
  }

  return result;
}

void sub_1000F85EC(void *a1, id a2, uint64_t a3)
{
  if (a3)
  {
    return;
  }

  v4 = v3;
  if (qword_1002A6700 != -1)
  {
    swift_once();
  }

  v7 = qword_1002B1BA8;
  v8 = [a2 UUID];
  v9 = v8;
  if (*(v7 + 16) && (v10 = sub_10016D848(v8), (v11 & 1) != 0))
  {
    v12 = (*(v7 + 56) + 16 * v10);
    v14 = *v12;
    v13 = v12[1];
  }

  else
  {
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  v15 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_logger;
  v16 = a2;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v66 = v16;
  v71 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a1;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v16;
    v24 = v22;
    *&v77[0] = v22;
    *v20 = 138412546;
    v25 = [v23 UUID];
    *(v20 + 4) = v25;
    *v21 = v25;
    *(v20 + 12) = 2080;
    v26 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v26 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      *&v79[0] = v14;
      *(&v79[0] + 1) = v13;

      v27._countAndFlagsBits = 0x6369767265735B20;
      v27._object = 0xEA00000000005D65;
      String.append(_:)(v27);

      v29 = v13;
      v28 = v14;
    }

    else
    {

      v29 = 0x80000001002311E0;
      v28 = 0xD000000000000012;
    }

    v30 = sub_1000952D4(v28, v29, v77);

    *(v20 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@ %s", v20, 0x16u);
    sub_100095C84(v21, &unk_1002A6F60, &unk_10023C4E0);

    sub_100095808(v24);

    a1 = v19;
    v16 = v66;
    v15 = v71;
  }

  else
  {
  }

  v31 = [v16 characteristics];
  if (v31)
  {
    v32 = v31;
    sub_100095B94(0, &unk_1002A9830, CBCharacteristic_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v33 >> 62))
    {
      goto LABEL_19;
    }

LABEL_38:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  v33 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_38;
  }

LABEL_19:
  v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_39;
  }

LABEL_20:
  if (v34 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v35 = 0;
  v72 = v33 & 0xC000000000000001;
  v69 = a1;
  v70 = v4;
  v67 = v34;
  v68 = v33;
  do
  {
    if (v72)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v36 = *(v33 + 8 * v35 + 32);
    }

    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v79[0] = v42;
      *v40 = 138412546;
      v43 = [v37 UUID];
      *(v40 + 4) = v43;
      *v41 = v43;
      *(v40 + 12) = 2080;
      if (qword_1002A6708 != -1)
      {
        swift_once();
      }

      v44 = qword_1002B1BB0;
      v45 = [v37 UUID];
      v46 = v45;
      if (*(v44 + 16) && (v47 = sub_10016D848(v45), (v48 & 1) != 0))
      {
        v49 = (*(v44 + 56) + 16 * v47);
        v51 = *v49;
        v50 = v49[1];
      }

      else
      {
        v51 = 0x6E776F6E6B6E755BLL;
        v50 = 0xE90000000000005DLL;
      }

      v52 = sub_1000952D4(v51, v50, v79);

      *(v40 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v38, v39, "  %@ %s", v40, 0x16u);
      sub_100095C84(v41, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v42);

      a1 = v69;
      v4 = v70;
      v34 = v67;
      v33 = v68;
    }

    else
    {
    }

    if (([v37 properties] & 0x10) != 0)
    {
      [a1 setNotifyValue:1 forCharacteristic:v37];
    }

    ++v35;
  }

  while (v34 != v35);
LABEL_39:

  v34 = sub_10013C474(v79);
  v54 = (v53 + 8);
  if (!*(v53 + 8))
  {
    (v34)(v79, 0);
    goto LABEL_44;
  }

  v55 = v66;
  v15 = sub_1000F9954(v54, v55);

  if (*v54 >> 62)
  {
LABEL_50:
    v56 = _CocoaArrayWrapper.endIndex.getter();
    if (v56 >= v15)
    {
      goto LABEL_42;
    }

LABEL_51:
    __break(1u);
    return;
  }

  v56 = *((*v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < v15)
  {
    goto LABEL_51;
  }

LABEL_42:
  sub_1001A1EDC(v15, v56);
  (v34)(v79, 0);
LABEL_44:
  v57 = v4 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_discoveryContext;
  swift_beginAccess();
  v58 = *(v57 + 48);
  v77[2] = *(v57 + 32);
  v77[3] = v58;
  v77[4] = *(v57 + 64);
  v78 = *(v57 + 80);
  v59 = *(v57 + 16);
  v77[0] = *v57;
  v77[1] = v59;
  if (*(&v77[0] + 1))
  {
    v60 = *(v57 + 48);
    v80 = *(v57 + 32);
    v81 = v60;
    v82 = *(v57 + 64);
    v83 = *(v57 + 80);
    v61 = *(v57 + 16);
    v79[0] = *v57;
    v79[1] = v61;
    v76 = v83;
    v75[2] = v80;
    v75[3] = v60;
    v75[4] = v82;
    v75[0] = v79[0];
    v75[1] = v61;
    sub_1000F9DD8(v75, v73);
    v62 = sub_10013C0D8();
    sub_100095C84(v77, &qword_1002A8798, &qword_10023E350);
    if (v62)
    {
      v63 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
      if (v63)
      {
        [v63 didFinishDiscovery:0];
      }

      v64 = *(v57 + 48);
      v73[2] = *(v57 + 32);
      v73[3] = v64;
      v73[4] = *(v57 + 64);
      v74 = *(v57 + 80);
      v65 = *(v57 + 16);
      v73[0] = *v57;
      v73[1] = v65;
      *v57 = 0u;
      *(v57 + 16) = 0u;
      *(v57 + 32) = 0u;
      *(v57 + 48) = 0u;
      *(v57 + 64) = 0u;
      *(v57 + 80) = 0;
      sub_100095C84(v73, &qword_1002A8798, &qword_10023E350);
    }
  }
}

void sub_1000F8E48(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

uint64_t sub_1000F8F44(uint64_t a1, uint64_t a2, int *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_1000D8148;

  return v6();
}

uint64_t sub_1000F904C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_10009862C;

  return v12(a6, a7);
}

uint64_t sub_1000F9150()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F9188(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000A139C;

  return sub_1000F8F44(a1, a2, v6);
}

uint64_t sub_1000F924C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000F929C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009862C;

  return sub_1000F904C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000F9370(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F93E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009862C;

  return sub_1001C9810(a1, v4);
}

void *sub_1000F9498(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral;
  result = *&v2[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_hapPeripheral];
  if (!result)
  {
    v34 = a1;
    v11 = v2;

    v33 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v32 = v13;
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v14 = 136315394;
      v15 = *&v11[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v15;

      v17 = [v16 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v6 + 8))(v8, v5);
      v21 = sub_1000952D4(v18, v20, &v35);

      *(v14 + 4) = v21;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_1000952D4(v34, a2, &v35);
      _os_log_impl(&_mh_execute_header, v12, v32, "Creating HAP BLE Peripheral for %s with identifier %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10013EE04();
    v22 = *&v11[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
    if (v22)
    {
      v23 = [v22 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v24 = objc_allocWithZone(HAPBLEPeripheral);
      v25 = String._bridgeToObjectiveC()();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      v27 = String._bridgeToObjectiveC()();
      v28 = [v24 initWithName:v25 peripheralUUID:isa identifier:v27];

      (*(v6 + 8))(v8, v5);
      v2 = v33;
      v29 = *&v33[v9];
      *&v33[v9] = v28;

      result = *&v2[v9];
      if (!result)
      {
        return result;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_11:

    __break(1u);
    return result;
  }

LABEL_8:
  [result setCbPeripheral:*&v2[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral]];
  return *&v2[v9];
}

unint64_t sub_1000F9840(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1000F9954(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1000F9840(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = &qword_1002A7270;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v12 = v11;
    sub_100095B94(0, v9, NSObject_ptr);
    v13 = static NSObject.== infix(_:_:)();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_45;
          }

          if (v8 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        v19 = v9;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1001A347C();
          v20 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v20)
        {
          v4 = sub_1001A347C();
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v9 = v19;
        v23 = v21 + 8 * v8;
        v24 = *(v23 + 32);
        *(v23 + 32) = v14;

        *v25 = v4;
      }

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
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
  return _CocoaArrayWrapper.endIndex.getter();
}

void *sub_1000F9BE4(void *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
  if (!v3)
  {
    return result;
  }

  v5 = result;
  swift_unknownObjectRetain();
  v6 = [v5 UUID];
  v7 = [v5 value];
  if (!v7)
  {
    v12.super.isa = 0;
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = v7;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v9, v11);
  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = _convertErrorToNSError(_:)();
LABEL_8:
  [v3 didRead:v6 value:v12.super.isa error:v13];

  return swift_unknownObjectRelease();
}

void *sub_1000F9D18(void *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_delegate);
  if (v3)
  {
    v5 = result;
    swift_unknownObjectRetain();
    v6 = [v5 UUID];
    if (a2)
    {
      v7 = _convertErrorToNSError(_:)();
    }

    else
    {
      v7 = 0;
    }

    [v3 didWrite:v6 error:v7];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000F9E44(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = [v9 accessories];
    if (v10)
    {
      v12 = v10;
      sub_1000FA528(0, v11);
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v13 & 0xC000000000000001) == 0)
      {
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_10;
        }

        __break(1u);
      }

LABEL_20:
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v14 = *(v2 + 32);
  if (v14)
  {
    v9 = v14;
    v15 = [v9 accessories];
    if (!v15)
    {
LABEL_23:
      __break(1u);
      return;
    }

    v17 = v15;
    sub_1000FA528(0, v16);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_20;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v18 = *(v13 + 32);
LABEL_11:
      v19 = v18;

      v20 = [v19 productData];

      if (v20)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        String.index(_:offsetBy:)();
        String.subscript.getter();

        static String._fromSubstring(_:)();
      }

      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v6;
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Nil HAP Server", v24, 2u);
  }

  (*(v5 + 8))(v8, v21);
}

void sub_1000FA184(void *a1)
{
  if (!a1)
  {
    v7 = *(v1 + 32);
    if (!v7)
    {
      return;
    }

    v2 = v7;
    v8 = [v2 accessories];
    if (!v8)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v10 = v8;
    sub_1000FA528(0, v9);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_17;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v11 = *(v6 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = a1;
  v3 = [v2 accessories];
  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = v3;
  sub_1000FA528(0, v4);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) == 0)
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_17:
  v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v12 = v11;

  v13 = [v12 productData];

  if (v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = String.index(_:offsetBy:)();
    sub_1000FA574(v17, v14, v16);

    static String._fromSubstring(_:)();
  }

  else
  {
  }
}

void sub_1000FA390(void *a1, SEL *a2)
{
  if (!a1)
  {
    v9 = *(v2 + 32);
    if (!v9)
    {
      return;
    }

    v4 = v9;
    v10 = [v4 accessories];
    if (!v10)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v12 = v10;
    sub_1000FA528(0, v11);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_17;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v13 = *(v8 + 32);
      goto LABEL_11;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = a1;
  v5 = [v4 accessories];
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = v5;
  sub_1000FA528(0, v6);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_17:
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_11:
  v14 = v13;

  v15 = [v14 *a2];

  if (v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }
}

unint64_t sub_1000FA528(uint64_t a1, uint64_t a2)
{
  result = qword_1002A9C40;
  if (!qword_1002A9C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A9C40);
  }

  return result;
}

unint64_t sub_1000FA574(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_1000FA5C0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 accessories];
    if (v3)
    {
      v5 = v3;
      sub_1000FA528(0, v4);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
        v8 = v7;

        v9 = [v8 firmwareVersion];

        if (v9)
        {
          [objc_allocWithZone(HMFSoftwareVersion) initWithVersionString:v9];
        }

        else
        {
        }

        return;
      }

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 32);
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1000FA6C8(uint64_t a1, uint64_t a2)
{
  v3[2] = v2;
  v4 = type metadata accessor for Logger();
  v3[3] = v4;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000FA794, 0, 0);
}

uint64_t sub_1000FA794()
{
  v1 = *(v0[2] + 32);
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = [v1 primaryAccessory];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v0[2];

  if (*(v3 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController))
  {
    v4 = v0[2];
    v5 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
    if (*(v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager))
    {
      (*(v0[4] + 16))(v0[5], v4 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      v8 = os_log_type_enabled(v6, v7);
      v10 = v0[4];
      v9 = v0[5];
      v11 = v0[3];
      if (v8)
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Accessory Description manager is already present", v12, 2u);
      }

      (*(v10 + 8))(v9, v11);
      v13 = 0;
      goto LABEL_13;
    }

    v16 = *(v4 + 40);
    type metadata accessor for AccessoryDescriptionManager(0);
    v17 = swift_allocObject();
    swift_weakInit();
    *(v17 + 32) = 0;
    v18 = v16;
    Logger.init(subsystem:category:)();
    swift_weakAssign();
    *(v17 + 24) = v18;
    *(v4 + v5) = v17;

LABEL_12:
    v13 = 1;
LABEL_13:

    v19 = v0[1];

    return v19(v13);
  }

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1000FAA44;

  return sub_1000FAC78();
}

uint64_t sub_1000FAA44()
{

  return (_swift_task_switch)(sub_1000FAB40, 0, 0);
}

uint64_t sub_1000FAB40()
{
  (*(v0[4] + 16))(v0[6], v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_logger, v0[3]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Not creating Accessory Description manager for accessory without a data stream controller", v7, 2u);
  }

  (*(v6 + 8))(v4, v5);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_1000FAC98()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
  v0[3] = OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_accessoryDescriptionManager;
  v3 = *(v1 + v2);
  v0[4] = v3;
  if (v3)
  {
    v4 = *(v3 + 32);
    v0[5] = v4;

    if (v4)
    {

      v6 = swift_task_alloc();
      v0[6] = v6;
      *v6 = v0;
      v6[1] = sub_1000F7E4C;

      return sub_1001D1410(v6, v7);
    }

    *(v5 + 32) = 0;

    v1 = v0[2];
    v2 = v0[3];
  }

  *(v1 + v2) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000FADD4()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1000FB040;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_100095274(&qword_1002A88C0, &qword_10023D3B0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000FB414;
    *(v0 + 104) = &unk_100277800;
    *(v0 + 112) = v4;
    v5 = swift_unknownObjectRetain();
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = 5;
    }

    [v5 cancelWithReason:v6 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
    {
      v7 = type metadata accessor for Errors();
      sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v8 = swift_allocError();
      *v9 = 0;
      v9[1] = 0xE000000000000000;
      (*(*(v7 - 8) + 104))(v9, enum case for Errors.OperationCancelled(_:), v7);
      sub_1000FD3CC(v8, v10);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_1000FEC34(*(v0 + 144), Strong);
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000FB040()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1000FB2A8;
  }

  else
  {
    v2 = sub_1000FB150;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000FB150()
{
  swift_unknownObjectRelease();
  if (*(*(v0 + 144) + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v1 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v2 = swift_allocError();
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    (*(*(v1 - 8) + 104))(v3, enum case for Errors.OperationCancelled(_:), v1);
    sub_1000FD3CC(v2, v4);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000FEC34(*(v0 + 144), Strong);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000FB2A8(uint64_t a1)
{
  swift_willThrow();

  swift_unknownObjectRelease();
  if (*(*(v1 + 144) + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v2 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    v3 = swift_allocError();
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    (*(*(v2 - 8) + 104))(v4, enum case for Errors.OperationCancelled(_:), v2);
    sub_1000FD3CC(v3, v5);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1000FEC34(*(v1 + 144), Strong);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_1000FB414(uint64_t a1, void *a2)
{
  v3 = sub_1000A09E0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1000FB4C0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  if (*(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback))
  {
    v4 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v5 = 0xD00000000000001ELL;
    v5[1] = 0x8000000100231400;
    (*(*(v4 - 8) + 104))(v5, enum case for Errors.OperationInProgress(_:), v4);
    return swift_willThrow();
  }

  else
  {
    sub_1000FC3B8(a1, a2);
    v10 = *v3;
    v9 = v3[1];
    *v3 = a1;
    v3[1] = a2;

    return sub_1000BAA84(v10, v9);
  }
}

uint64_t sub_1000FB5F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v2[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession];
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v7;
    v25 = sub_1000FF248;
    v26 = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000FC30C;
    v24 = &unk_1002777D8;
    v9 = _Block_copy(aBlock);
    swift_unknownObjectRetain_n();
    v10 = v2;

    [v7 read:v9];
    _Block_release(v9);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(v4 + 16))(v6, &v2[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v3);
    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v18 = *(Strong + 24);

        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Read data failed with no bulkSend session present for accessory: %@", v15, 0xCu);
      sub_100095C84(v16, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v4 + 8))(v6, v3);
    v20 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
    swift_beginAccess();
    sub_1000FEB58(&v12[v20], aBlock);
    if (v24)
    {
      sub_1000A097C(aBlock, v27);
      sub_100095C84(aBlock, &unk_1002A8890, &unk_10023FAF0);
      v21 = v28;
      v22 = v29;
      sub_1000A09E0(v27, v28);
      (*(v22 + 24))(v12, v21, v22);
      return sub_100095808(v27);
    }

    else
    {
      return sub_100095C84(aBlock, &unk_1002A8890, &unk_10023FAF0);
    }
  }
}

uint64_t sub_1000FB968(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v54 - v14;
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  if (a2)
  {
    (*(v9 + 16))(&v54 - v16, &a3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v8);
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "DataStream transfer read data channel has error: %@", v20, 0xCu);
      sub_100095C84(v21, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v9 + 8))(v17, v8);
    v23 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
    swift_beginAccess();
    sub_1000FEB58(&a3[v23], v60);
    if (v61)
    {
      sub_1000A097C(v60, v57);
      sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
      v24 = v58;
      v25 = v59;
      sub_1000A09E0(v57, v58);
      (*(v25 + 24))(a3, v24, v25);
      return sub_100095808(v57);
    }

    return sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
  }

  if (a1)
  {
    v27 = sub_1000FC030(a1);
    if (v27)
    {
      v28 = v27;
      v29 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
      swift_beginAccess();
      v56 = v29;
      sub_1000FEB58(&a3[v29], v60);
      if (v61)
      {
        sub_1000A097C(v60, v57);
        sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
        v30 = v58;
        v31 = v59;
        sub_1000A09E0(v57, v58);
        v32 = (*(v31 + 8))(a3, v28, v30, v31);

        sub_100095808(v57);
        if (v32)
        {
          goto LABEL_11;
        }
      }

      else
      {

        sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
      }

      (*(v9 + 16))(v15, &a3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v8);
      v43 = a3;
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v49 = *(Strong + 24);
          v55 = v43;
          v50 = v49;
          v43 = v55;

          v51 = v50;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        *(v46 + 4) = v50;
        *v47 = v51;
        _os_log_impl(&_mh_execute_header, v44, v45, "Received data frame is not accepted for accessory: %@", v46, 0xCu);
        sub_100095C84(v47, &unk_1002A6F60, &unk_10023C4E0);
      }

      (*(v9 + 8))(v15, v8);
      sub_1000FEB58(&a3[v56], v60);
      if (v61)
      {
        sub_1000A097C(v60, v57);
        sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
        v52 = v58;
        v53 = v59;
        sub_1000A09E0(v57, v58);
        (*(v53 + 24))(v43, v52, v53);
        return sub_100095808(v57);
      }

      return sub_100095C84(v60, &unk_1002A8890, &unk_10023FAF0);
    }
  }

LABEL_11:
  v33 = [a4 isActive];
  if (v33)
  {
    return sub_1000FB5F0(v33, v34);
  }

  (*(v9 + 16))(v12, &a3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v8);
  v35 = a3;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    v40 = swift_weakLoadStrong();
    if (v40)
    {
      v41 = *(v40 + 24);

      v42 = v41;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    *(v38 + 4) = v41;
    *v39 = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "DataStream data transfer is completed for accessory: %@", v38, 0xCu);
    sub_100095C84(v39, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v9 + 8))(v12, v8);
  return sub_1000FD5DC();
}

unint64_t sub_1000FC030(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002A88B0, &qword_10023D3A0);
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1000FF250(*(a1 + 48) + 40 * v12, v27);
        sub_100095B34(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1000FF250(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100095B34(v25 + 8, v20);
        sub_100095C84(v24, &qword_1002A88B8, &qword_10023D3A8);
        v21 = v18;
        sub_1000FEA30(v20, v22);
        v13 = v21;
        sub_1000FEA30(v22, v23);
        sub_1000FEA30(v23, &v21);
        result = sub_10016D4D0(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100095808(v10);
          result = sub_1000FEA30(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1000FEA30(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_100095C84(v24, &qword_1002A88B8, &qword_10023D3A8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000FC30C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000FC3B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, &v3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Setting up data stream transport", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *&v3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
    v14 = *&v3[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType + 8];

    sub_1000FEEE8(v3, v13, v14, v12);
  }

  return result;
}

uint64_t sub_1000FC58C()
{
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v2 = v0[3];
    v4 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType);
    v3 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType + 8);
    v0[5] = v3;
    v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason);
    v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason + 8);
    v0[6] = v5;
    v7 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata);
    v0[7] = v7;
    v8 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue);
    v0[8] = v8;
    v9 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
    v0[9] = v9;

    v10 = v8;
    if (v9)
    {
      v11 = swift_task_alloc();
      v0[10] = v11;
      v11[2] = v9;
      v11[3] = v4;
      v11[4] = v3;
      v11[5] = v6;
      v11[6] = v5;
      v11[7] = v7;
      v11[8] = v10;
      v12 = v9;
      v13 = swift_task_alloc();
      v0[11] = v13;
      v14 = sub_100095B94(0, &qword_1002A88A8, off_100271C48);
      *v13 = v0;
      v13[1] = sub_1000FC91C;

      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000037, 0x8000000100231390, sub_1000FEC20, v11, v14);
    }

    else
    {

      v17 = type metadata accessor for Errors();
      sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      v18 = swift_allocError();
      *v19 = 0xD00000000000003FLL;
      v19[1] = 0x8000000100231350;
      (*(*(v17 - 8) + 104))(v19, enum case for Errors.NotFound(_:), v17);
      swift_willThrow();

      sub_1000FD3CC(v18, v20);
      swift_willThrow();
      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    v0[13] = 0;
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1000FCBD8;

    return sub_1000FCDD4(0, v16);
  }
}

uint64_t sub_1000FC91C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000FCB10;
  }

  else
  {

    v2 = sub_1000FCA60;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000FCA60()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[2];
  v0[13] = v3;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1000FCBD8;

  return sub_1000FCDD4(v3, v5);
}

uint64_t sub_1000FCB10()
{
  v1 = v0[9];
  v2 = v0[8];

  sub_1000FD3CC(v0[12], v3);
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000FCBD8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000FCD50;
  }

  else
  {
    v2 = sub_1000FCCEC;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000FCCEC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000FCD50()
{
  sub_1000FD3CC(*(v0 + 120), v1);
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FCDD4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = type metadata accessor for Logger();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return (_swift_task_switch)(sub_1000FCE94, 0, 0);
}

uint64_t sub_1000FCE94()
{
  v1 = v0[3];
  v2 = (v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v0[7] = v3;
  v4 = v2[1];
  v0[8] = v4;
  if (v3)
  {
    v5 = v0[2];

    if (v5)
    {
      v6 = [v5 session];
      v1 = v0[3];
    }

    else
    {
      v6 = 0;
    }

    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    *(v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession) = v6;
    swift_unknownObjectRelease();
    v14 = *v2;
    v15 = v2[1];
    *v2 = 0;
    v2[1] = 0;
    sub_1000BAA84(v14, v15);
    (*(v12 + 16))(v11, v1 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v13);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[2];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v16;
      *v21 = v19;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Calling pending callback with result: %@", v20, 0xCu);
      sub_100095C84(v21, &unk_1002A6F60, &unk_10023C4E0);
    }

    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];
    v26 = v0[2];

    (*(v24 + 8))(v23, v25);
    v27 = swift_task_alloc();
    v0[9] = v27;
    v27[2] = v3;
    v27[3] = v4;
    v27[4] = v26;
    v28 = swift_task_alloc();
    v0[10] = v28;
    *v28 = v0;
    v28[1] = sub_1000FD244;

    return withCheckedContinuation<A>(isolation:function:_:)(v28, 0, 0, 0xD000000000000027, 0x8000000100231320, sub_1000FEBC8, v27, &type metadata for () + 8);
  }

  else
  {
    v7 = type metadata accessor for Errors();
    sub_1000C42FC(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    *v8 = 0xD000000000000032;
    v8[1] = 0x80000001002312E0;
    (*(*(v7 - 8) + 104))(v8, enum case for Errors.NotFound(_:), v7);
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1000FD244()
{

  return (_swift_task_switch)(sub_1000FD35C, 0, 0);
}

uint64_t sub_1000FD35C()
{
  sub_1000BAA84(v0[7], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000FD3CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  v10 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback);
  if (v10)
  {
    v11 = v9[1];
    *v9 = 0;
    v9[1] = 0;
    (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v4);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "Calling pending callback with error: %@", v14, 0xCu);
      sub_100095C84(v15, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v5 + 8))(v8, v4);
    v10(0, a1);
    return sub_1000BAA84(v10, v11);
  }

  return result;
}

uint64_t sub_1000FD5DC()
{
  if (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession) && (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail) & 1) == 0 && (*(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete) = 1;
  }

  v1 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();
  sub_1000FEB58(v0 + v1, v8);
  if (!v9)
  {
    return sub_100095C84(v8, &unk_1002A8890, &unk_10023FAF0);
  }

  sub_1000A097C(v8, v5);
  sub_100095C84(v8, &unk_1002A8890, &unk_10023FAF0);
  v2 = v6;
  v3 = v7;
  sub_1000A09E0(v5, v6);
  (*(v3 + 16))(v0, v2, v3);
  return sub_100095808(v5);
}

id sub_1000FD720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDataStreamAdapter(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryDataStreamAdapter(uint64_t a1)
{
  result = qword_1002A8820;
  if (!qword_1002A8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD8B4(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000FDA14(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue];
  sub_100095B34(a1, v19);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  sub_1000FEA30(v19, (v12 + 24));
  aBlock[4] = sub_1000FEA40;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277710;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;
  static DispatchQoS.unspecified.getter();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

void sub_1000FDCE0(char *a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  __chkstk_darwin(v4 - 8);
  v77 = &v72 - v5;
  v6 = type metadata accessor for Logger();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = __chkstk_darwin(v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v72 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v72 - v14;
  __chkstk_darwin(v13);
  v17 = &v72 - v16;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(Strong + 32);
    v20 = v19;

    if (v19)
    {
      sub_100095B34(a2, v83);
      sub_100095B94(0, &qword_1002A9C40, off_100271C50);
      v21 = swift_dynamicCast();
      v22 = v81;
      v76 = v20;
      v23 = [v20 primaryAccessory];
      if (v21 && v22)
      {
        if (v23)
        {
          v24 = v23;
          v25 = static NSObject.== infix(_:_:)();

          v26 = v79;
          if ((v25 & 1) == 0)
          {
LABEL_22:
            v45 = v78;
            (*(v78 + 16))(v12, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v26);
            sub_100095B34(a2, v83);
            v46 = a1;
            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v82 = v51;
              *v49 = 138412546;
              v52 = swift_weakLoadStrong();
              if (v52)
              {
                v53 = *(v52 + 24);

                v54 = v53;
              }

              else
              {
                v53 = 0;
                v54 = 0;
              }

              v55 = v76;
              *(v49 + 4) = v53;
              *v50 = v54;
              *(v49 + 12) = 2080;
              sub_100095B34(v83, &v81);
              type metadata accessor for DaemonAccessory(0);
              swift_dynamicCast();
              v56 = *(v80 + 24);

              v57 = DockCoreInfo.description.getter();
              v59 = v58;

              sub_100095808(v83);
              v60 = sub_1000952D4(v57, v59, &v82);

              *(v49 + 14) = v60;
              _os_log_impl(&_mh_execute_header, v47, v48, "Accessory start listening failed, expected accessory: %@ actual accessory: %s", v49, 0x16u);
              sub_100095C84(v50, &unk_1002A6F60, &unk_10023C4E0);

              sub_100095808(v51);

              (*(v78 + 8))(v12, v79);
            }

            else
            {

              sub_100095808(v83);
              (*(v45 + 8))(v12, v26);
            }

            return;
          }

          goto LABEL_13;
        }

        v23 = v22;
      }

      else if (!v23)
      {
        v26 = v79;
LABEL_13:
        v37 = *(v78 + 16);
        v75 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger;
        v37(v17, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v26);
        v38 = a1;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v74 = v37;
          v41 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v73 = v41;
          *v41 = 138412290;
          v42 = swift_weakLoadStrong();
          if (v42)
          {
            v43 = *(v42 + 24);

            v44 = v43;
          }

          else
          {
            v43 = 0;
            v44 = 0;
          }

          v62 = v72;
          v61 = v73;
          *(v73 + 1) = v43;
          *v62 = v44;
          _os_log_impl(&_mh_execute_header, v39, v40, "Accessory: %@ started listening", v61, 0xCu);
          sub_100095C84(v62, &unk_1002A6F60, &unk_10023C4E0);

          v37 = v74;
        }

        v63 = v79;
        v64 = *(v78 + 8);
        v64(v17, v79);
        v38[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 1;
        if (*&v38[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback])
        {
          v37(v15, &a1[v75], v63);
          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *v67 = 0;
            _os_log_impl(&_mh_execute_header, v65, v66, "Handling pending start bulk send session request", v67, 2u);
          }

          v64(v15, v63);
          v68 = type metadata accessor for TaskPriority();
          v69 = v77;
          (*(*(v68 - 8) + 56))(v77, 1, 1, v68);
          v70 = swift_allocObject();
          v70[2] = 0;
          v70[3] = 0;
          v70[4] = v38;
          v71 = v38;
          sub_1001B6410(0, 0, v69, &unk_10023D380, v70);
        }

        else
        {
        }

        return;
      }

      v26 = v79;
      goto LABEL_22;
    }
  }

  v28 = v78;
  v27 = v79;
  (*(v78 + 16))(v9, &a1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger], v79);
  v29 = a1;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = *(v34 + 24);

      v36 = v35;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    *(v32 + 4) = v35;
    *v33 = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "Accessory: %@ has no hap server", v32, 0xCu);
    sub_100095C84(v33, &unk_1002A6F60, &unk_10023C4E0);
  }

  (*(v28 + 8))(v9, v27);
}

uint64_t sub_1000FE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_1000FE660;

  return sub_1000FC56C();
}

uint64_t sub_1000FE660()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1000FE79C, 0, 0);
}

uint64_t sub_1000FE79C()
{
  (*(v0[4] + 16))(v0[5], v0[2] + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_logger, v0[3]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Start bulk send session request failed with error %@", v3, 0xCu);
    sub_100095C84(v4, &unk_1002A6F60, &unk_10023C4E0);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000FE9F0()
{
  sub_100095808((v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

_OWORD *sub_1000FEA30(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000FEA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FEA64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FEAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_1000FE570(a1, v4, v5, v6);
}

uint64_t sub_1000FEB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A8890, &unk_10023FAF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FEBC8()
{
  (*(v0 + 16))(*(v0 + 32), 0);
  sub_100095274(&qword_1002A88A0, &unk_10023D390);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000FEC34(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 40);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1000FF318;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277850;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000FEEE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 40);
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_1000FF1FC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_100277788;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  v18 = a1;

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_1000C42FC(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_1000BAB30();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_1000FF1B4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FF208()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000FF2D8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

unsigned __int8 *sub_1000FF338(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v127 = v2;
  v128 = v3;
  v4 = __chkstk_darwin(v2);
  v5 = __chkstk_darwin(v4);
  v7 = &v115 - v6;
  v8 = __chkstk_darwin(v5);
  v118 = &v115 - v9;
  v10 = __chkstk_darwin(v8);
  v119 = &v115 - v11;
  v12 = __chkstk_darwin(v10);
  v122 = &v115 - v13;
  v14 = __chkstk_darwin(v12);
  v121 = &v115 - v15;
  __chkstk_darwin(v14);
  v123 = &v115 - v16;
  v17 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for URL.DirectoryHint();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100095274(&qword_1002A6B70, &unk_10023C9C0);
  __chkstk_darwin(v22 - 8);
  v24 = &v115 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v124 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v125 = &v115 - v29;
  if (qword_1002A6710 != -1)
  {
    swift_once();
  }

  sub_100152034(v24);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100095C84(v24, &qword_1002A6B70, &unk_10023C9C0);
    v30 = v127;
    v31 = v128;
    (*(v128 + 16))(v7, v126 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v127);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed getting library path", v34, 2u);
    }

    (*(v31 + 8))(v7, v30);
    sub_100100634();
    swift_allocError();
    *v35 = 0;
    v35[1] = 0;
    v36 = _convertErrorToNSError(_:)();

    return v36;
  }

  v116 = v26;
  v117 = v25;
  (*(v26 + 32))(v125, v24, v25);
  v130 = 0x6E6F6973726576;
  v131 = 0xE700000000000000;
  (*(v19 + 104))(v21, enum case for URL.DirectoryHint.inferFromPath(_:), v18);
  sub_1000E3C10();
  URL.appending<A>(path:directoryHint:)();
  (*(v19 + 8))(v21, v18);
  static String.Encoding.utf8.getter();
  v38 = String.init(contentsOf:encoding:)();
  v39 = v126;
  v120 = v128 + 16;
  v40 = v38;
  v42 = v41;
  v43 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
  v44 = *(v128 + 16);
  v45 = v123;
  v46 = v127;
  v44(v123, v126 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v127);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = v43;
    v50 = v44;
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v129 = v52;
    *v51 = 136315138;
    v130 = v40;
    v131 = v42;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v53 = String.init<A>(describing:)();
    v55 = sub_1000952D4(v53, v54, &v129);

    *(v51 + 4) = v55;
    v46 = v127;
    v56 = v128;
    _os_log_impl(&_mh_execute_header, v47, v48, "Current data version string %s", v51, 0xCu);
    sub_100095808(v52);

    v44 = v50;
    v43 = v49;
    v39 = v126;

    v57 = *(v56 + 8);
    result = v57(v123, v46);
  }

  else
  {

    v57 = *(v128 + 8);
    result = v57(v45, v46);
  }

  v58 = v121;
  v59 = HIBYTE(v42) & 0xF;
  v60 = v40 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v61 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v61 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {

    v82 = -1;
    goto LABEL_75;
  }

  if ((v42 & 0x1000000000000000) == 0)
  {
    if ((v42 & 0x2000000000000000) != 0)
    {
      v130 = v40;
      v131 = v42 & 0xFFFFFFFFFFFFFFLL;
      if (v40 == 43)
      {
        if (v59)
        {
          if (--v59)
          {
            v63 = 0;
            v73 = &v130 + 1;
            while (1)
            {
              v74 = *v73 - 48;
              if (v74 > 9)
              {
                break;
              }

              v75 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                break;
              }

              v63 = v75 + v74;
              if (__OFADD__(v75, v74))
              {
                break;
              }

              ++v73;
              if (!--v59)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_101:
        __break(1u);
        return result;
      }

      if (v40 != 45)
      {
        if (v59)
        {
          v63 = 0;
          v78 = &v130;
          while (1)
          {
            v79 = *v78 - 48;
            if (v79 > 9)
            {
              break;
            }

            v80 = 10 * v63;
            if ((v63 * 10) >> 64 != (10 * v63) >> 63)
            {
              break;
            }

            v63 = v80 + v79;
            if (__OFADD__(v80, v79))
            {
              break;
            }

            v78 = (v78 + 1);
            if (!--v59)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v59)
      {
        if (--v59)
        {
          v63 = 0;
          v67 = &v130 + 1;
          while (1)
          {
            v68 = *v67 - 48;
            if (v68 > 9)
            {
              break;
            }

            v69 = 10 * v63;
            if ((v63 * 10) >> 64 != (10 * v63) >> 63)
            {
              break;
            }

            v63 = v69 - v68;
            if (__OFSUB__(v69, v68))
            {
              break;
            }

            ++v67;
            if (!--v59)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v40 & 0x1000000000000000) != 0)
      {
        result = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v62 = *result;
      if (v62 == 43)
      {
        if (v60 >= 1)
        {
          v59 = v60 - 1;
          if (v60 != 1)
          {
            v63 = 0;
            if (result)
            {
              v70 = result + 1;
              while (1)
              {
                v71 = *v70 - 48;
                if (v71 > 9)
                {
                  goto LABEL_70;
                }

                v72 = 10 * v63;
                if ((v63 * 10) >> 64 != (10 * v63) >> 63)
                {
                  goto LABEL_70;
                }

                v63 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  goto LABEL_70;
                }

                ++v70;
                if (!--v59)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_100;
      }

      if (v62 != 45)
      {
        if (v60)
        {
          v63 = 0;
          if (result)
          {
            while (1)
            {
              v76 = *result - 48;
              if (v76 > 9)
              {
                goto LABEL_70;
              }

              v77 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                goto LABEL_70;
              }

              v63 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                goto LABEL_70;
              }

              ++result;
              if (!--v60)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v63 = 0;
        LOBYTE(v59) = 1;
        goto LABEL_71;
      }

      if (v60 >= 1)
      {
        v59 = v60 - 1;
        if (v60 != 1)
        {
          v63 = 0;
          if (result)
          {
            v64 = result + 1;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                goto LABEL_70;
              }

              v66 = 10 * v63;
              if ((v63 * 10) >> 64 != (10 * v63) >> 63)
              {
                goto LABEL_70;
              }

              v63 = v66 - v65;
              if (__OFSUB__(v66, v65))
              {
                goto LABEL_70;
              }

              ++v64;
              if (!--v59)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v59) = 0;
LABEL_71:
          LOBYTE(v129) = v59;
          v81 = v59;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  LOBYTE(v129) = 0;
  v63 = sub_1001E3EB4(v40, v42, 10);
  v81 = v114;
LABEL_72:

  if (v81)
  {
    v82 = -1;
  }

  else
  {
    v82 = v63;
  }

LABEL_75:
  v44(v58, v39 + v43, v46);
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v83, v84, "Current version int %ld", v85, 0xCu);
  }

  v57(v58, v46);
  if (v82 >= currentSupportedAccessoryVersion.getter())
  {
    v96 = v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
    v97 = v122;
    v44(v122, v96, v46);
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      *(v100 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v98, v99, "Version %ld doesn't need migration", v100, 0xCu);
    }

    v57(v97, v46);
    v101 = v117;
    v102 = *(v116 + 8);
    v102(v124, v117);
    v102(v125, v101);
    return 0;
  }

  else
  {
    currentSupportedAccessoryVersion.getter();
    currentSupportedAccessoryVersion.getter();
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v87 = sub_100182CCC(1, v86);
    if (v87)
    {
      v88 = v87;
      v89 = v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger;
      v90 = v119;
      v44(v119, v89, v46);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 134218240;
        *(v93 + 4) = v82;
        *(v93 + 12) = 2048;
        *(v93 + 14) = currentSupportedAccessoryVersion.getter();
        _os_log_impl(&_mh_execute_header, v91, v92, "Failed converting accessories from %ld to %ld", v93, 0x16u);
      }

      v57(v90, v46);
      v94 = v117;
      v95 = *(v116 + 8);
      v95(v124, v117);
      v95(v125, v94);
      v130 = v88;
    }

    else
    {
      v103 = v118;
      v44(v118, v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v46);
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 134217984;
        *(v106 + 4) = currentSupportedAccessoryVersion.getter();
        _os_log_impl(&_mh_execute_header, v104, v105, "Updating version to %ld", v106, 0xCu);
      }

      v57(v103, v46);
      v107 = currentSupportedAccessoryVersion.getter();
      v108 = v124;
      v109 = sub_1001002D0(v124, v107);
      sub_100181B7C();
      v110 = *(v116 + 8);
      v111 = v108;
      v112 = v117;
      v110(v111, v117);
      v110(v125, v112);
      if (!v109)
      {
        return 0;
      }

      v130 = v109;
    }

    sub_100095274(&qword_1002A7268, &unk_10023C680);
    sub_100100688(0, v113);
    if (swift_dynamicCast())
    {
      return v129;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001002D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[3] = a2;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v11 = String.data(using:allowLossyConversion:)();
  v13 = v12;

  (*(v8 + 8))(v10, v7);
  if (v13 >> 60 == 15)
  {
    sub_100100634();
    v14 = swift_allocError();
    *v15 = 0xD00000000000001DLL;
    v15[1] = 0x8000000100231450;
    swift_willThrow();
    (*(v4 + 16))(v6, v22[1] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_logger, v3);
    swift_errorRetain();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      swift_errorRetain();
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed updating version string: %@", v18, 0xCu);
      sub_100095C84(v19, &unk_1002A6F60, &unk_10023C4E0);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    Data.write(to:options:)();
    sub_1000A452C(v11, v13);
    return 0;
  }

  return v14;
}

unint64_t sub_100100634()
{
  result = qword_1002A88C8;
  if (!qword_1002A88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88C8);
  }

  return result;
}

unint64_t sub_100100688(uint64_t a1, uint64_t a2)
{
  result = qword_1002A92B0;
  if (!qword_1002A92B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A92B0);
  }

  return result;
}

uint64_t sub_1001006D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100100724(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100100778(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100100790(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001007C0(uint64_t a1, unint64_t a2)
{
  v50 = a1;
  v51 = a2;
  *&v46 = a1;
  *(&v46 + 1) = a2;
  sub_1000A0CD8(a1, a2);
  sub_100095274(&qword_1002A8A08, &qword_10023D960);
  sub_100095274(&qword_1002A89D8, &qword_10023D930);
  if (swift_dynamicCast())
  {
    sub_1000A0D80(v44, &v47);
    sub_1000A09E0(&v47, v49);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v44[0] = v46;
    sub_100095808(&v47);
    goto LABEL_61;
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
  sub_100105208(v44);
  v2 = v51 >> 62;
  if ((v51 >> 62) > 1)
  {
    v3 = 0;
    v4 = 0;
    if (v2 == 2)
    {
      v3 = *(v50 + 16);
      v4 = *(v50 + 24);
    }
  }

  else
  {
    if (v2)
    {
      v3 = v50;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v50 >> 32;
    }

    else
    {
      v4 = BYTE6(v51);
    }
  }

  v5 = sub_1001AC908(v3, v4, v50, v51);
  *&v44[0] = sub_1000B2E80(v5);
  *(&v44[0] + 1) = v6;
  __chkstk_darwin(*&v44[0]);
  v29[2] = &v50;
  sub_100103970(sub_1001052F8, v29);
  v7 = v47;
  v8 = v48;
  v9 = *(&v44[0] + 1) >> 62;
  if ((*(&v44[0] + 1) >> 62) > 1)
  {
    if (v9 == 2)
    {
      v11 = *(*&v44[0] + 16);
      v10 = *(*&v44[0] + 24);
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (v12)
      {
        goto LABEL_73;
      }

      if (v49 != v13)
      {
        goto LABEL_22;
      }
    }

    else if (v49)
    {
      v14 = 0;
      goto LABEL_58;
    }

    goto LABEL_27;
  }

  if (v9)
  {
    if (__OFSUB__(DWORD1(v44[0]), v44[0]))
    {
      goto LABEL_74;
    }

    if (v49 != DWORD1(v44[0]) - LODWORD(v44[0]))
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  if (v49 == BYTE14(v44[0]))
  {
LABEL_27:
    LOBYTE(v15) = 0;
    v16 = *(&v47 + 1) >> 62;
    v42 = v47 >> 32;
    v43 = BYTE14(v47);
    *(&v47 + 7) = 0;
    *&v47 = 0;
    v41 = v7 >> 8;
    v40 = v7 >> 16;
    v39 = v7 >> 24;
    v38 = DWORD1(v7);
    v37 = v7 >> 40;
    v36 = WORD3(v7);
    v35 = BYTE7(v7);
    v34 = *(&v7 + 1) >> 8;
    v33 = *(&v7 + 1) >> 16;
    v32 = *(&v7 + 1) >> 24;
    v31 = HIDWORD(*(&v7 + 1));
    v30 = *(&v7 + 1) >> 40;
    while (1)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v17 = *(v7 + 16);
LABEL_33:
          if (v8 == v17)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }
      }

      else
      {
        v17 = v7;
        if (v16)
        {
          goto LABEL_33;
        }
      }

      if (!v8)
      {
LABEL_62:
        if (v15)
        {
          *&v46 = v47;
          *(&v46 + 6) = *(&v47 + 6);
          Data._Representation.append(contentsOf:)();
        }

        goto LABEL_60;
      }

LABEL_36:
      v12 = __OFSUB__(v8--, 1);
      if (v12)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      if (v16 > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_75;
        }

        if (v8 < *(v7 + 16))
        {
          goto LABEL_66;
        }

        if (v8 >= *(v7 + 24))
        {
          goto LABEL_69;
        }

        v19 = __DataStorage._bytes.getter();
        if (!v19)
        {
          goto LABEL_77;
        }

        v20 = v19;
        v21 = __DataStorage._offset.getter();
        v22 = v8 - v21;
        if (__OFSUB__(v8, v21))
        {
          goto LABEL_71;
        }

        goto LABEL_52;
      }

      if (v16)
      {
        if (v8 < v7 || v8 >= v42)
        {
          goto LABEL_68;
        }

        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          goto LABEL_76;
        }

        v20 = v23;
        v24 = __DataStorage._offset.getter();
        v22 = v8 - v24;
        if (__OFSUB__(v8, v24))
        {
          goto LABEL_70;
        }

LABEL_52:
        v18 = *(v20 + v22);
        goto LABEL_53;
      }

      if (v8 >= v43)
      {
        goto LABEL_67;
      }

      LOBYTE(v46) = v7;
      BYTE1(v46) = v41;
      BYTE2(v46) = v40;
      BYTE3(v46) = v39;
      BYTE4(v46) = v38;
      BYTE5(v46) = v37;
      BYTE6(v46) = v36;
      BYTE7(v46) = v35;
      BYTE8(v46) = BYTE8(v7);
      BYTE9(v46) = v34;
      BYTE10(v46) = v33;
      BYTE11(v46) = v32;
      BYTE12(v46) = v31;
      BYTE13(v46) = v30;
      v18 = *(&v46 + v8);
LABEL_53:
      *(&v47 + v15) = v18;
      v15 = v15 + 1;
      if ((v15 >> 8))
      {
        goto LABEL_65;
      }

      if (v15 == 14)
      {
        *&v46 = v47;
        *(&v46 + 6) = *(&v47 + 6);
        Data._Representation.append(contentsOf:)();
        LOBYTE(v15) = 0;
      }
    }
  }

LABEL_22:
  if (v9 == 2)
  {
    v14 = *(*&v44[0] + 24);
  }

  else if (v9 == 1)
  {
    v14 = *&v44[0] >> 32;
  }

  else
  {
    v14 = BYTE14(v44[0]);
  }

LABEL_58:
  if (v14 < v49)
  {
    goto LABEL_72;
  }

  Data._Representation.replaceSubrange(_:with:count:)();
LABEL_60:
  sub_1000A0D2C(v7, *(&v7 + 1));
LABEL_61:
  v25 = v44[0];
  v26 = v50;
  v27 = v51;
  sub_1000A0CD8(*&v44[0], *(&v44[0] + 1));
  sub_1000A0D2C(v26, v27);
  sub_1000A0D2C(v25, *(&v25 + 1));
  return v25;
}

uint64_t sub_100100D58(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100095274(&qword_1002A89D8, &qword_10023D930);
  if (swift_dynamicCast())
  {
    sub_1000A0D80(__src, &v43);
    sub_1000A09E0(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    sub_100095808(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_100105208(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  sub_1001038A8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1000B2E80(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin(*&__src[0]);
  v34[2] = v39;
  v10 = sub_100103C20(sub_100105270, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1001E4838(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1001E4838(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    sub_1000A452C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000A452C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000A0CD8(*&__src[0], *(&__src[0] + 1));

  sub_1000A0D2C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1001012C4()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100101300(uint64_t a1)
{
  v2 = sub_1001013BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010133C(uint64_t a1)
{
  v2 = sub_1001013BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001013BC()
{
  result = qword_1002A88D8;
  if (!qword_1002A88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88D8);
  }

  return result;
}

uint64_t _s14dockaccessoryd14MotionFeedbackV8PositionV11descriptionSSvg_0(double a1)
{
  v1._countAndFlagsBits = 4023369;
  v1._object = 0xE300000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D65756C615620;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  return 0;
}

uint64_t sub_100101574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100101644(uint64_t a1)
{
  v2 = sub_100104314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100101680(uint64_t a1)
{
  v2 = sub_100104314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100101700(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t a6, double a7)
{
  v9 = sub_100095274(a3, a4);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000A09E0(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v13 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

void sub_100101920(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  v9 = sub_100104368(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8;
    *(a6 + 1) = v9;
  }
}

uint64_t MotionFeedback.positions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t MotionFeedback.velocities.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MotionFeedback.description.getter(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3D6C655620;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v4);

  return 1030975312;
}

dockaccessoryd::MotionFeedback_optional __swiftcall MotionFeedback.init(data:)(NSData data)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v2 = data.super.isa;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_100104984();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_1000A0D2C(v3, v5);

  v7 = v9;
  v8 = v10;
  result.value.velocities._rawValue = v8;
  result.value.positions._rawValue = v7;
  result.is_nil = v6;
  return result;
}

NSData_optional __swiftcall MotionFeedback.encode()()
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_1001049D8();
  v0 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v2 = v1;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1000A0D2C(v0, v2);
  v5 = isa;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t MotionFeedback.encode()@<X0>(id *a1@<X0>, unint64_t a2@<X1>, double a3@<X8>)
{
  v8 = a1[2];
  if (v8 > 0xFF)
  {
    goto LABEL_50;
  }

  v3 = a2;
  v4 = a1;
  a1 = sub_100095714(0, 1, 1, _swiftEmptyArrayStorage);
  v7 = a1[2];
  a3 = *(a1 + 3);
  v5 = v7 + 1;
  if (v7 >= *&a3 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    a1[2] = v5;
    v9 = a1 + v7;
    *(a1 + v7 + 32) = v8;
    v10 = *(v3 + 16);
    if (v10 > 0xFF)
    {
      __break(1u);
    }

    else
    {
      v9 = a1[3];
      v6 = v7 + 2;
      if ((v7 + 2) <= (v9 >> 1))
      {
        goto LABEL_5;
      }
    }

    a1 = sub_100095714((v9 > 1), v6, 1, a1);
LABEL_5:
    a1[2] = v6;
    *&a3 = a1 + v5;
    *(a1 + v5 + 32) = v10;
    if (v8)
    {
      v6 = v4 + 32;
      v7 += 34;
      v11 = v8;
      while (1)
      {
        v13 = *v6;
        v6 += 16;
        v12 = *&v13;
        if ((*&v13 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v12 > 0xFF)
        {
          goto LABEL_41;
        }

        a3 = *(a1 + 3);
        v5 = v7 - 31;
        if (v7 - 32 >= *&a3 >> 1)
        {
          a1 = sub_100095714((*&a3 > 1uLL), v7 - 31, 1, a1);
        }

        a1[2] = v5;
        *(a1 + v7++) = v12;
        if (!--v11)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_12:
    if (v10)
    {
      v6 = v3 + 32;
      v7 = v10;
      while (1)
      {
        v15 = *v6;
        v6 += 16;
        v14 = *&v15;
        if ((*&v15 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v14 > 0xFF)
        {
          goto LABEL_43;
        }

        v17 = a1[2];
        v16 = a1[3];
        v5 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          a1 = sub_100095714((v16 > 1), (v17 + 1), 1, a1);
        }

        a1[2] = v5;
        *&a3 = &v17[a1];
        v17[a1 + 32] = v14;
        if (!--v7)
        {
          goto LABEL_19;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

LABEL_19:
    if (v8)
    {
      v6 = v4 + 40;
      v7 = 0x7FEFFFFFFFFFFFFFLL;
      while (1)
      {
        v18 = *v6 * 1000.0;
        a3 = fabs(v18);
        if (*&a3 > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v18 <= -32769.0)
        {
          goto LABEL_45;
        }

        if (v18 >= 32768.0)
        {
          goto LABEL_46;
        }

        v20 = a1[2];
        v19 = a1[3];
        v21 = v19 >> 1;
        v4 = (v20 + 1);
        if (v19 >> 1 <= v20)
        {
          a1 = sub_100095714((v19 > 1), (v20 + 1), 1, a1);
          v19 = a1[3];
          v21 = v19 >> 1;
        }

        a1[2] = v4;
        v20[a1 + 32] = v18 >> 8;
        v5 = (v20 + 2);
        if (v21 < v5)
        {
          a1 = sub_100095714((v19 > 1), v5, 1, a1);
        }

        a1[2] = v5;
        *(a1 + v4 + 32) = v18;
        v6 += 16;
        if (!--v8)
        {
          goto LABEL_29;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_29:
    if (!v10)
    {
      break;
    }

    v5 = v3 + 40;
    v6 = 0x7FEFFFFFFFFFFFFFLL;
    v8 = 0xC0E0002000000000;
    v7 = 0x40E0000000000000;
    while (1)
    {
      v22 = *v5 * 1000.0;
      a3 = fabs(v22);
      if (*&a3 > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -32769.0)
      {
        goto LABEL_48;
      }

      if (v22 >= 32768.0)
      {
        goto LABEL_49;
      }

      v24 = a1[2];
      v23 = a1[3];
      v25 = v23 >> 1;
      v3 = (v24 + 1);
      if (v23 >> 1 <= v24)
      {
        a1 = sub_100095714((v23 > 1), (v24 + 1), 1, a1);
        v23 = a1[3];
        v25 = v23 >> 1;
      }

      a1[2] = v3;
      v24[a1 + 32] = v22 >> 8;
      v4 = (v24 + 2);
      if (v25 < v4)
      {
        a1 = sub_100095714((v23 > 1), v4, 1, a1);
      }

      a1[2] = v4;
      *(a1 + v3 + 32) = v22;
      v5 += 16;
      if (!--v10)
      {
        goto LABEL_39;
      }
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
    a1 = sub_100095714((*&a3 > 1uLL), v5, 1, a1);
  }

LABEL_39:
  v26 = sub_100104264(a1);

  return v26;
}

uint64_t sub_1001021C8()
{
  if (*v0)
  {
    return 0x697469636F6C6576;
  }

  else
  {
    return 0x6E6F697469736F70;
  }
}

uint64_t sub_10010220C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697469636F6C6576 && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001022F8(uint64_t a1)
{
  v2 = sub_100104A2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100102334(uint64_t a1)
{
  v2 = sub_100104A2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MotionFeedback.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100095274(&qword_1002A8900, &qword_10023D448);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000A09E0(a1, a1[3]);
  sub_100104A2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  sub_100095274(&qword_1002A8910, &qword_10023D450);
  sub_1001053C0(&qword_1002A8918, sub_100104A80, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100095274(&qword_1002A8928, &qword_10023D458);
    sub_100104AD4(&qword_1002A8930, sub_100104B4C, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1001025A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100104BA0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

id *sub_1001025F0(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&qword_1002A89E8, &qword_10023D940);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}