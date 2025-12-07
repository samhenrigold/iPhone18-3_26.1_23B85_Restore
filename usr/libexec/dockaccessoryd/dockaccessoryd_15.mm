uint64_t sub_1001CE760()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001CE798(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A139C;

  return sub_1001C9810(a1, v4);
}

unint64_t sub_1001CE850()
{
  result = qword_1002ABF28;
  if (!qword_1002ABF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABF28);
  }

  return result;
}

void sub_1001CE8A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (qword_1002A6780 != -1)
  {
    goto LABEL_48;
  }

LABEL_2:
  v7 = qword_1002B1CF0;
  v51 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v8 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v8 + 4);

  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackerConfigClients;
  swift_beginAccess();
  v52 = v7;
  v10 = *(v7 + v9);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v53 = 0;
  v57 = v10;
LABEL_5:
  if (v14)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      swift_once();
      goto LABEL_2;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(v10 + 48) + 16 * v19);
      v21 = *(*(v10 + 56) + 8 * v19);
      v22 = *v20 == a1 && v20[1] == a2;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v21 >> 62)
        {
          v23 = _CocoaArrayWrapper.endIndex.getter();
          if (v23)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v23)
          {
LABEL_19:

            v24 = 0;
            v55 = v23;
            v56 = a1;
            while (1)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v24 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_47;
                }

                v25 = *(v21 + 8 * v24 + 32);
              }

              v26 = v25;
              v27 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                goto LABEL_46;
              }

              v28 = [v25 remoteObjectProxy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_100095274(&qword_1002A9310, &qword_10023DE70);
              if ((swift_dynamicCast() & 1) == 0)
              {
                break;
              }

              v29 = v59;
              if (!v59)
              {
                goto LABEL_34;
              }

              v30 = qword_1002A6790;
              swift_unknownObjectRetain();
              if (v30 != -1)
              {
                swift_once();
              }

              v31 = type metadata accessor for Logger();
              sub_100093DE8(v31, qword_1002ABE48);

              oslog = Logger.logObject.getter();
              v32 = static os_log_type_t.default.getter();

              v46 = v32;
              if (os_log_type_enabled(oslog, v32))
              {
                v33 = swift_slowAlloc();
                v58[0] = swift_slowAlloc();
                *v33 = 136315394;
                *(v33 + 4) = sub_1000952D4(a4, a5, v58);
                *(v33 + 12) = 2080;
                v34 = DockFramingMode.description.getter();
                v45 = sub_1000952D4(v34, v35, v58);

                *(v33 + 14) = v45;
                _os_log_impl(&_mh_execute_header, oslog, v46, "Notifying client that %s just set framing mode to %s", v33, 0x16u);
                swift_arrayDestroy();
              }

              [v29 setFramingModeEventWithMode:a6];
              swift_unknownObjectRelease();

              if (__OFADD__(v53++, 1))
              {
                __break(1u);
                return;
              }

              swift_unknownObjectRelease();
              v24 = v27;
LABEL_35:
              a1 = v56;
              v22 = v27 == v55;
              v10 = v57;
              if (v22)
              {

                goto LABEL_5;
              }
            }

            v59 = 0;
LABEL_34:

            swift_unknownObjectRelease();
            ++v24;
            goto LABEL_35;
          }
        }
      }

      goto LABEL_5;
    }
  }

  v37 = *(v52 + v51);

  os_unfair_lock_unlock(v37 + 4);

  if (!v53)
  {
    if (qword_1002A6790 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100093DE8(v38, qword_1002ABE48);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58[0] = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000952D4(a1, a2, v58);
      _os_log_impl(&_mh_execute_header, v39, v40, "No clients registered for config changes on %s", v41, 0xCu);
      sub_100095808(v42);
    }

    v43 = type metadata accessor for DockKitIDSMessagingError();
    sub_1001CF2C4(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError, &protocol conformance descriptor for DockKitIDSMessagingError);
    swift_allocError();
    (*(*(v43 - 8) + 104))(v44, enum case for DockKitIDSMessagingError.unrecognizedClient(_:), v43);
    swift_willThrow();
  }
}

uint64_t sub_1001CEF04()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CEF3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10009862C;

  return sub_1001C9450(a1, v4, v5, v6);
}

unint64_t sub_1001CEFF0()
{
  result = qword_1002ABF48;
  if (!qword_1002ABF48)
  {
    sub_10009589C(&qword_1002ABF40, &qword_10023F778);
    sub_1001CF2C4(&qword_1002ABF50, &type metadata accessor for DockKitBoundingBox, &protocol conformance descriptor for DockKitBoundingBox);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABF48);
  }

  return result;
}

uint64_t sub_1001CF0A4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CF164(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1001CF20C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A139C;

  return sub_1001CCB0C(a1, v4);
}

uint64_t sub_1001CF2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001CF30C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001CF3B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t *DeviceLockMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }

  return &static DeviceLockMonitor.shared;
}

uint64_t LockState.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x64656B636F6C6E75;
  }

  if (a1 == 1)
  {
    return 0x64656B636F6CLL;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1001CF4B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656B636F6C6E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656B636F6CLL;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656B636F6C6E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001CF5B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001CF650(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001CF6DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001CF778@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14dockaccessoryd9LockStateO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001CF7A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656B636F6CLL;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656B636F6C6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001CF804()
{
  type metadata accessor for DeviceLockMonitor(0);
  swift_allocObject();
  result = sub_1001CF8A0();
  static DeviceLockMonitor.shared = result;
  return result;
}

uint64_t static DeviceLockMonitor.shared.getter()
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1001CF8A0()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v1 - 8);
  v13 = v1;
  __chkstk_darwin(v1);
  v11 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  Logger.init(subsystem:category:)();
  v5 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v6 = swift_allocObject();
  *(v0 + v5) = v6;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_notifyToken) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_springboardToken) = -1;
  *(v6 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_coverSheetNotifyToken) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState) = 2;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates) = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_delegateQueue;
  sub_1000B3420(0, v7);
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v12 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *(v0 + v10) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

Swift::Void __swiftcall DeviceLockMonitor.beginMonitoring()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
  os_unfair_lock_lock(v1 + 4);
  sub_1001D0CD0();
  os_unfair_lock_unlock(v1 + 4);
  os_unfair_lock_lock(v1 + 4);
  sub_1001D0F68();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1001CFC5C(uint64_t a1)
{
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_notifyToken;
  swift_beginAccess();
  if (*(a1 + v7) == -1)
  {
    v33 = v1;
    v9 = sub_1000B3420(0, v8);
    v10 = *(v4 + 104);
    v30 = enum case for DispatchQoS.QoSClass.default(_:);
    v31 = v4 + 104;
    v29 = v10;
    v10(v6);
    v32 = v9;
    v11 = static OS_dispatch_queue.global(qos:)();
    v28 = *(v4 + 8);
    v28(v6, v3);
    v12 = swift_allocObject();
    swift_weakInit();
    v38 = sub_1001D0F38;
    v39 = v12;
    aBlock = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1001CF3B8;
    v37 = &unk_10027AE70;
    v13 = _Block_copy(&aBlock);

    v14 = String.utf8CString.getter();
    swift_beginAccess();
    v15 = notify_register_dispatch((v14 + 32), (a1 + v7), v11, v13);
    swift_endAccess();

    _Block_release(v13);

    if (v15 || *(a1 + v7) == -1)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v16, v17))
      {
LABEL_6:

        return;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
      v20 = "%s - Error registering for keybag notifications";
    }

    else
    {
      v29(v6, v30, v3);
      v21 = static OS_dispatch_queue.global(qos:)();
      v28(v6, v3);
      v22 = swift_allocObject();
      swift_weakInit();
      v38 = sub_1001D0F38;
      v39 = v22;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1001CF3B8;
      v37 = &unk_10027AE98;
      v23 = _Block_copy(&aBlock);

      v24 = String.utf8CString.getter();
      v25 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_springboardToken;
      swift_beginAccess();
      v26 = notify_register_dispatch((v24 + 32), (a1 + v25), v21, v23);
      swift_endAccess();

      _Block_release(v23);

      if (v26 || *(a1 + v25) == -1)
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_6;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
        v20 = "%s - Error registering for springboard notifications";
      }

      else
      {
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_6;
        }

        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_1000952D4(0xD000000000000011, 0x8000000100234F40, &aBlock);
        v20 = "%s - Registered for lock state notifications";
      }
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v20, v18, 0xCu);
    sub_100095808(v19);

    goto LABEL_6;
  }
}

uint64_t sub_1001D0220(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lock);
    __chkstk_darwin(result);
    os_unfair_lock_lock(v3 + 4);
    sub_1001D0F68();
    os_unfair_lock_unlock(v3 + 4);
  }

  return result;
}

uint64_t sub_1001D02E4(void *a1, void *a2)
{
  if (qword_1002A6798 != -1)
  {
    swift_once();
  }

  v4 = static DeviceLockMonitor.shared;
  v5 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates;
  swift_beginAccess();
  v6 = *(v4 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10010350C(0, v6[2] + 1, 1, v6);
    *(v4 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10010350C((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = (v9 + 1);
  v10 = &v6[2 * v9];
  v10[4] = a1;
  v10[5] = a2;
  *(v4 + v5) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

void sub_1001D040C(uint64_t a1)
{
  v3 = 0x64656B636F6C6E75;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  *&v54 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MKBGetDeviceLockState();
  v11 = SBSGetScreenLockStatus();
  v14 = v10 != 3 && v10 != 0 || v11 != 0;
  v15 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState);
  v53 = v7;
  v44 = v9;
  v52 = v6;
  v16 = v4;
  if (v15)
  {
    if (v15 != 1)
    {
      v43 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState;
      v22 = a1;
      v21 = v14;
      goto LABEL_25;
    }

    v17 = 0xE600000000000000;
    v18 = 0x64656B636F6CLL;
  }

  else
  {
    v18 = 0x64656B636F6C6E75;
    v17 = 0xE800000000000000;
  }

  if (v14)
  {
    v19 = 0x64656B636F6CLL;
  }

  else
  {
    v19 = 0x64656B636F6C6E75;
  }

  if (v14)
  {
    v20 = 0xE600000000000000;
  }

  else
  {
    v20 = 0xE800000000000000;
  }

  if (v18 == v19 && v17 == v20)
  {

    return;
  }

  v21 = v14;
  v43 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockState;
  v22 = a1;
LABEL_25:
  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0)
  {
    v42 = v1;
    v24 = v22;
    *(v22 + v43) = v21;
    v25 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_lockStateDelegates;
    swift_beginAccess();
    v51 = *(v22 + v25);
    v26 = *(v51 + 16);
    if (v26)
    {
      v41 = v22;
      v27 = *(v22 + OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_delegateQueue);
      v49 = v57;
      v50 = v27;
      ++v47;
      v48 = (v54 + 8);

      v28 = 32;
      v46 = v16;
      v29 = v44;
      v45 = v21;
      do
      {
        v30 = swift_allocObject();
        v54 = *(v51 + v28);
        *(v30 + 16) = v54;
        *(v30 + 32) = v45;
        v57[2] = sub_1001D0EDC;
        v57[3] = v30;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v57[0] = sub_100147FC8;
        v57[1] = &unk_10027AE20;
        v31 = _Block_copy(aBlock);
        swift_unknownObjectRetain_n();
        static DispatchQoS.unspecified.getter();
        v55 = _swiftEmptyArrayStorage;
        sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100095274(&unk_1002A6B60, qword_10023AE10);
        sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
        v32 = v52;
        v33 = v46;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v31);
        swift_unknownObjectRelease();
        (*v48)(v32, v33);
        (*v47)(v29, v53);

        v28 += 16;
        --v26;
      }

      while (v26);

      v3 = 0x64656B636F6C6E75;
      v24 = v41;
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136315138;
      if (*(v24 + v43))
      {
        if (*(v24 + v43) == 1)
        {
          v3 = 0x64656B636F6CLL;
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
          v3 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v38 = 0xE800000000000000;
      }

      v39 = sub_1000952D4(v3, v38, aBlock);

      *(v36 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v34, v35, "Updated lock state: %s", v36, 0xCu);
      sub_100095808(v37);
    }
  }
}

uint64_t sub_1001D0A2C(uint64_t a1, uint64_t a2, char a3)
{
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd28SecureTrackingSessionManager_lockState) = a3;
  if (a3 == 1)
  {

    v3 = 6;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v4)
    {
      v3 = 6;
    }

    else
    {
      v3 = 0;
    }
  }

  return sub_1000EC468(v3);
}

uint64_t DeviceLockMonitor.deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return v2;
}

uint64_t DeviceLockMonitor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14dockaccessoryd17DeviceLockMonitor_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

unint64_t _s14dockaccessoryd9LockStateO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100275008, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001D0D18()
{
  result = qword_1002ABFB0;
  if (!qword_1002ABFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002ABFB0);
  }

  return result;
}

uint64_t type metadata accessor for DeviceLockMonitor(uint64_t a1)
{
  result = qword_1002AC000;
  if (!qword_1002AC000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D0DD0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001D0EA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1001D0EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D0F00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D0F80(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_25;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 != 6)
      {
        goto LABEL_25;
      }

      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!v9)
  {
    if (BYTE6(a2) != 6)
    {
      goto LABEL_25;
    }

    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  if (HIDWORD(a1) - a1 != 6)
  {
    goto LABEL_25;
  }

LABEL_11:
  v14 = result;
  sub_1000A0CD8(a1, a2);
  if (Data._Representation.subscript.getter() < 0xC0u)
  {
    sub_1000A0D2C(a1, a2);
    goto LABEL_25;
  }

  Data.Iterator.init(_:at:)();
  v15 = Data.Iterator.next()();
  v16 = (*&v15 & 0x100) == 0;
  v17 = 0;
  if ((*&v15 & 0x100) != 0)
  {
    goto LABEL_23;
  }

  v18 = 0;
  while (1)
  {
    if (!v15.value)
    {
      goto LABEL_16;
    }

    if (v15.value == 255)
    {
      break;
    }

LABEL_15:
    v17 = 1;
LABEL_16:
    v15 = Data.Iterator.next()();
    v18 = 1;
    if ((*&v15 & 0x100) != 0)
    {
      goto LABEL_23;
    }
  }

  while (1)
  {
    v19 = Data.Iterator.next()();
    if ((*&v19 & 0x100) != 0)
    {
      break;
    }

    if (v19.value != 255)
    {
      goto LABEL_15;
    }
  }

  v17 = 1;
  v16 = v18;
LABEL_23:
  (*(v5 + 8))(v8, v14);
  if ((v17 & 1) == 0 || !v16)
  {
LABEL_25:
    sub_1000A0D2C(a1, a2);
    return 0;
  }

  return a1;
}

uint64_t sub_1001D1198()
{

  v1 = OBJC_IVAR____TtC14dockaccessoryd19RotationRateStorage_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RotationRateStorage(uint64_t a1)
{
  result = qword_1002AC180;
  if (!qword_1002AC180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D127C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001D133C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D135C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1001D1410(uint64_t a1, uint64_t a2)
{
  v3[5] = v2;
  v4 = type metadata accessor for Logger();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return (_swift_task_switch)(sub_1001D14D0, 0, 0);
}

uint64_t sub_1001D14D0()
{
  (*(v0[7] + 16))(v0[8], v0[5] + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v0[6]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Shutting down", v3, 2u);
  }

  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  v8 = *(v7 + 32);
  v0[9] = v8;
  if (v8)
  {
    v8;
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_1001D1734;

    return sub_1000FADB4();
  }

  else
  {
    v11 = v0[5];
    v11[4] = 0;
    swift_beginAccess();
    v12 = v11[13];
    v13 = v11[14];
    *(v11 + 13) = xmmword_10023C1B0;
    sub_1000A452C(v12, v13);
    if (v11[5])
    {
      v14 = type metadata accessor for Errors();
      sub_1000A5514();
      v15 = swift_allocError();
      *v16 = 0;
      v16[1] = 0xE000000000000000;
      (*(*(v14 - 8) + 104))(v16, enum case for Errors.OperationCancelled(_:), v14);
      sub_1001D29D8(v15, v17);
    }

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1001D1734()
{
  v1 = *(*v0 + 72);

  return (_swift_task_switch)(sub_1001D1848, 0, 0);
}

uint64_t sub_1001D1848()
{
  v1 = *(v0 + 40);
  v2 = v1[4];
  v1[4] = 0;

  swift_beginAccess();
  v3 = v1[13];
  v4 = v1[14];
  *(v1 + 13) = xmmword_10023C1B0;
  sub_1000A452C(v3, v4);
  if (v1[5])
  {
    v5 = type metadata accessor for Errors();
    sub_1000A5514();
    v6 = swift_allocError();
    *v7 = 0;
    v7[1] = 0xE000000000000000;
    (*(*(v5 - 8) + 104))(v7, enum case for Errors.OperationCancelled(_:), v5);
    sub_1001D29D8(v6, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1001D1990()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  if (!Strong)
  {
    v31 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    *v32 = 0xD000000000000010;
    v32[1] = 0x8000000100230B70;
    (*(*(v31 - 8) + 104))(v32, enum case for Errors.AccessoryServerNil(_:), v31);
    swift_willThrow();
    goto LABEL_10;
  }

  v2 = Strong;
  v3 = *(Strong + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_dataStreamController);
  if (!v3 || ([v3 canAcceptBulkSendListeners] & 1) == 0)
  {
    v4 = *(v2 + 40);
    OS_dispatch_queue.sync<A>(execute:)();

    if (*(v0 + 208) == 1)
    {
      v5 = type metadata accessor for Errors();
      sub_1000A5514();
      swift_allocError();
      v7 = v6;
      _StringGuts.grow(_:)(53);
      v8._countAndFlagsBits = 0xD000000000000033;
      v8._object = 0x8000000100233980;
      String.append(_:)(v8);
      v9 = *(v2 + 24);
      v10 = [v9 description];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      *v7 = 0;
      v7[1] = 0xE000000000000000;
      (*(*(v5 - 8) + 104))(v7, enum case for Errors.OperationNotSupported(_:), v5);
      swift_willThrow();

LABEL_10:
      v33 = *(v0 + 8);

      return v33();
    }
  }

  v15 = *(v0 + 176);
  v16 = v15[3];
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023C170;
  *(inited + 32) = 0x79616C6564;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0;

  v37 = v16;
  v36 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095C84(inited + 32, &qword_1002AA4E0, &qword_10023EE00);
  v18 = v15[8];
  v35 = v15[7];
  v19 = type metadata accessor for AccessoryDataStreamAdapter(0);
  v20 = objc_allocWithZone(v19);
  swift_weakInit();
  v21 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_currentBulkSendSession] = 0;
  v22 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_pendingOpenSessionCallback];
  *v22 = 0;
  v22[1] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_transportReady] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendFail] = 0;
  v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_didBulkSendComplete] = 0;

  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_workQueue] = v37;
  *&v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_metadata] = v36;
  v23 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_fileType];
  *v23 = 0xD000000000000015;
  v23[1] = 0x80000001002350A0;
  v24 = &v20[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_reason];
  *v24 = v35;
  v24[1] = v18;
  *(v0 + 160) = v20;
  *(v0 + 168) = v19;
  v25 = objc_msgSendSuper2((v0 + 160), "init");

  v26 = v15[4];
  v15[4] = v25;
  v27 = v25;

  *(v0 + 120) = type metadata accessor for AccessoryDescriptionSession(0);
  *(v0 + 128) = &off_10027AFC8;
  *(v0 + 96) = v15;
  v28 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDataStreamAdapter_delegate;
  swift_beginAccess();

  sub_10016F118(v0 + 96, v27 + v28);
  swift_endAccess();

  v29 = swift_task_alloc();
  *(v0 + 192) = v29;
  *v29 = v0;
  v29[1] = sub_1001D1F44;
  v30 = *(v0 + 176);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v29, 0, 0, 0x292870757465735FLL, 0xE800000000000000, sub_1001D3828, v30, &type metadata for () + 8);
}

uint64_t sub_1001D1F44()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1001D20BC;
  }

  else
  {
    v2 = sub_1001D2058;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1001D2058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D20BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001D2120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = *(a2 + 32);
  if (v9)
  {
    (*(v5 + 16))(v8, a1, v4);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = (v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v10, v8, v4);
    *(v12 + v11) = a2;
    v13 = v9;

    sub_1000FB4C0(sub_1001D38D8, v12);
  }
}

uint64_t sub_1001D22C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14[1] = a2;
    swift_errorRetain();
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v7 + 16))(v9, a4 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v6);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Accessory Description data stream was setup successfully", v13, 2u);
    }

    (*(v7 + 8))(v9, v6);
    *(a4 + 96) = 1;
    *(a4 + 88) = 1;
    sub_100095274(&qword_1002A9F70, &qword_10023EB70);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_1001D2490(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 32))
  {
    v9 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v11 = v10;
    v12 = 0x80000001002338B0;
    v13 = 0xD000000000000017;
LABEL_7:
    *v10 = v13;
    v10[1] = v12;
    (*(*(v9 - 8) + 104))(v11, enum case for Errors.NotFound(_:), v9);
    goto LABEL_8;
  }

  if ((*(v2 + 96) & 1) == 0)
  {
    v9 = type metadata accessor for Errors();
    sub_1000A5514();
    swift_allocError();
    v11 = v10;
    v12 = 0x80000001002338D0;
    v13 = 0xD00000000000001FLL;
    goto LABEL_7;
  }

  if (*(v2 + 40))
  {
    v3 = type metadata accessor for Errors();
    sub_1000A5514();
    v4 = swift_allocError();
    *v5 = 0xD000000000000031;
    v5[1] = 0x8000000100235060;
    v6 = *(*(v3 - 8) + 104);
    v6(v5, enum case for Errors.OperationInProgress(_:), v3);
    sub_1001D29D8(v4, v7);

    swift_allocError();
    *v8 = 0xD000000000000031;
    v8[1] = 0x8000000100235060;
    v6(v8, enum case for Errors.NotFound(_:), v3);
LABEL_8:
    swift_willThrow();
    return;
  }

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  v14 = *(v2 + 24);

  v15 = v14;
  sub_100095274(&qword_1002A7168, &qword_10023C3C0);
  OS_dispatch_queue.sync<A>(execute:)();
}

unint64_t sub_1001D26FC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = v2[10];
  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = v8 + result;
  if (__CFADD__(v8, result))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = v2[9];
  if (v11 < v10)
  {
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
    v22 = v2;

    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v28 = v10;
      v27 = v26;
      *v26 = 134218496;
      *(v26 + 4) = v22[10];
      *(v26 + 12) = 2048;
      *(v26 + 14) = [v23 length];

      *(v27 + 22) = 2048;
      *(v27 + 24) = v22[9];

      _os_log_impl(&_mh_execute_header, v24, v25, "Accessory Description exceeded max size (written: %llu, new data: %ld, max: %llu", v27, 0x20u);
      v10 = v28;
    }

    else
    {

      v24 = v23;
    }

    (*(v5 + 8))(v7, v4);
    return v11 >= v10;
  }

  result = [a1 length];
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v12 = v2[10];
  v13 = __CFADD__(v12, result);
  v14 = v12 + result;
  if (!v13)
  {
    v2[10] = v14;
    swift_beginAccess();
    v15 = v2[14];
    if (v15 >> 60 == 15)
    {
      v16 = v2[13];
      *(v2 + 13) = xmmword_10023BF90;
      sub_1000A452C(v16, v15);
    }

    v17 = sub_1001D13C0(v29);
    if (*(v18 + 8) >> 60 != 15)
    {
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      Data.append(_:)();
      sub_1000A0D2C(v19, v21);
    }

    (v17)(v29, 0);
    return v11 >= v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1001D29D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "Calling completion handler with error: %@", v11, 0xCu);
    sub_100095C84(v12, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v6 + 8))(v8, v5);
  v16 = *(v3 + 40);
  if (v16)
  {
    v17 = *(v3 + 48);
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v16(a1, 0, 0xF000000000000000);
    return sub_1000BAA84(v16, v17);
  }

  return result;
}

uint64_t sub_1001D2BF4()
{
  swift_weakDestroy();

  sub_1000BAA84(*(v0 + 40), *(v0 + 48));

  sub_1000A452C(*(v0 + 104), *(v0 + 112));
  v1 = OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryDescriptionSession(uint64_t a1)
{
  result = qword_1002AC348;
  if (!qword_1002AC348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D2D14(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1001D2E70(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0xD000000000000018;
  *(v2 + 64) = 0x80000001002350C0;
  *(v2 + 72) = 5242880;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(v2 + 104) = xmmword_10023C1B0;
  Logger.init(subsystem:category:)();
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1001D2F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = *(Strong + 24);

      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v10 + 4) = v13;
    *v11 = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to read data for accessory: %@", v10, 0xCu);
    sub_100095C84(v11, &unk_1002A6F60, &unk_10023C4E0);
  }

  result = (*(v5 + 8))(v7, v4);
  if (*(v3 + 40))
  {
    v16 = type metadata accessor for Errors();
    sub_1000A5514();
    v17 = swift_allocError();
    *v18 = 0x722064656C696166;
    v18[1] = 0xEB00000000646165;
    (*(*(v16 - 8) + 104))(v18, enum case for Errors.CommunicationFailure(_:), v16);
    sub_1001D29D8(v17, v19);
  }

  return result;
}

uint64_t sub_1001D31C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v25 - v10;
  if (*(a1 + 16) && (v12 = sub_10016D4D0(1635017060, 0xE400000000000000), (v13 & 1) != 0) && (sub_100095B34(*(a1 + 56) + 32 * v12, v26), sub_1001D37DC(0, v14), (swift_dynamicCast() & 1) != 0))
  {
    v15 = v25[1];
    (*(v6 + 16))(v11, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v5);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Data frame received", v18, 2u);
    }

    (*(v6 + 8))(v11, v5);
    v20 = sub_1001D26FC(v15, v19);
  }

  else
  {
    (*(v6 + 16))(v9, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v5);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "No data present in frame", v23, 2u);
    }

    (*(v6 + 8))(v9, v5);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1001D3480(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = (v3 + 5);
  if (v3[5])
  {
    (*(v5 + 16))(v8, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
  }

  else
  {
    v31 = v8;
    v12 = *(v5 + 16);
    v12(&v29 - v9, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v30 = v4;
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Data read completed but no completion handler", v15, 2u);
      v4 = v30;
    }

    (*(v5 + 8))(v10, v4);
    v8 = v31;
    v12(v31, v3 + OBJC_IVAR____TtC14dockaccessoryd27AccessoryDescriptionSession_logger, v4);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v31 = v8;
    v18 = v4;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v22 = *(Strong + 24);

      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v19 + 4) = v22;
    *v20 = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Data read completed for accessory: %@", v19, 0xCu);
    sub_100095C84(v20, &unk_1002A6F60, &unk_10023C4E0);

    v4 = v18;
    v8 = v31;
  }

  result = (*(v5 + 8))(v8, v4);
  v25 = *v11;
  if (*v11)
  {
    v26 = v3[6];
    *v11 = 0;
    v3[6] = 0;
    swift_beginAccess();
    v28 = v3[13];
    v27 = v3[14];
    sub_1000B4F20(v28, v27);
    v25(0, v28, v27);
    sub_1000A452C(v28, v27);
    return sub_1000BAA84(v25, v26);
  }

  return result;
}

unint64_t sub_1001D37DC(uint64_t a1, uint64_t a2)
{
  result = qword_1002A9270;
  if (!qword_1002A9270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002A9270);
  }

  return result;
}

uint64_t sub_1001D3830()
{
  v1 = sub_100095274(&qword_1002A9F70, &qword_10023EB70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1001D38D8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100095274(&qword_1002A9F70, &qword_10023EB70) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001D22C0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1001D3994(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1001D3A4C()
{
  v1 = *v0;
  if ((*(v0 + 20) & 1) == 0)
  {
    notify_cancel(*(v0 + 4));
  }

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_1001D3B30()
{
  sub_1001D3A4C();

  return swift_deallocClassInstance();
}

dockaccessoryd::AlertType_optional __swiftcall AlertType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = dockaccessoryd_AlertType_SecureTracking;
  }

  else
  {
    v1.value = dockaccessoryd_AlertType_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1001D3BC4()
{
  result = qword_1002AC5D0;
  if (!qword_1002AC5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC5D0);
  }

  return result;
}

void *sub_1001D3C18@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_1001D3C48()
{
  v0 = type metadata accessor for UUID();
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v34 - 8);
  __chkstk_darwin(v34);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  Logger.init(subsystem:category:)();
  v32 = OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_workQueue;
  v31 = sub_1000B3420(0, v7);
  static DispatchQoS.unspecified.getter();
  v38[0] = _swiftEmptyArrayStorage;
  sub_1000C6F40();
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_1000C6F98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v33;
  *&v33[v32] = v8;
  *&v9[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = 0;
  sub_100095274(&qword_1002AA4D8, &unk_10023FAE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023FB80;
  *(inited + 32) = 0x726F70736E617254;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = 0x6C617574726956;
  *(inited + 56) = 0xE700000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001002351D0;
  *(inited + 96) = 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001002351F0;
  v11 = v35;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v36 + 8))(v11, v37);
  *(inited + 144) = v12;
  *(inited + 152) = v14;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x800000010022E680;
  *(inited + 192) = 65280;
  *(inited + 216) = &type metadata for Int;
  strcpy((inited + 224), "PrimaryUsage");
  *(inited + 237) = 0;
  *(inited + 238) = -5120;
  *(inited + 240) = 1;
  *(inited + 264) = &type metadata for Int;
  *(inited + 272) = 0x6E492D746C697542;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = 1;
  *(inited + 312) = &type metadata for Int;
  *(inited + 320) = 0x4449726F646E6556;
  *(inited + 328) = 0xE800000000000000;
  *(inited + 336) = 65280;
  *(inited + 360) = &type metadata for Int;
  *(inited + 368) = 0x49746375646F7250;
  *(inited + 376) = 0xE900000000000044;
  *(inited + 384) = 65280;
  *(inited + 408) = &type metadata for Int;
  strcpy((inited + 416), "ReportInterval");
  *(inited + 431) = -18;
  *(inited + 432) = 0;
  *(inited + 456) = &type metadata for Int;
  *(inited + 464) = 0xD000000000000010;
  *(inited + 472) = 0x8000000100235210;
  v15 = sub_1001F3BCC(&off_100275070);
  sub_100095274(&qword_1002AC670, &qword_10023EC08);
  swift_arrayDestroy();
  *(inited + 504) = sub_100095274(&qword_1002AC678, &unk_10023FC80);
  *(inited + 480) = v15;
  v16 = sub_1001F2468(inited);
  swift_setDeallocating();
  sub_100095274(&qword_1002AA4E0, &qword_10023EE00);
  swift_arrayDestroy();
  *&v9[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_properties] = v16;
  v17 = type metadata accessor for VirtualEventService(0);
  v39.receiver = v9;
  v39.super_class = v17;
  v18 = objc_msgSendSuper2(&v39, "init");
  v19 = [objc_allocWithZone(HIDVirtualEventService) init];
  v20 = OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService;
  v21 = *&v18[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService];
  *&v18[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = v19;

  v22 = *&v18[v20];
  if (v22)
  {
    [v22 setDelegate:v18];
    v23 = *&v18[v20];
    if (v23)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v18;
      v38[4] = sub_1001D4D60;
      v38[5] = v24;
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 1107296256;
      v38[2] = sub_100147FC8;
      v38[3] = &unk_10027B180;
      v25 = _Block_copy(v38);
      v26 = v23;
      v27 = v18;

      [v26 setCancelHandler:v25];
      _Block_release(v25);

      v28 = *&v18[v20];
      if (v28)
      {
        [v28 setDispatchQueue:*&v27[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_workQueue]];
        v29 = *&v18[v20];
        if (v29)
        {
          [v29 activate];
        }
      }
    }
  }

  return v18;
}

uint64_t sub_1001D4304(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_logger, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "event service cancelled", v9, 2u);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_1001D4480()
{
  v1 = *&v0[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService];
  *&v0[OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_eventService] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VirtualEventService(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for VirtualEventService(uint64_t a1)
{
  result = qword_1002AC660;
  if (!qword_1002AC660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001D46A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_properties);
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_10016D4D0(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_7:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_100095B34(*(v5 + 56) + 32 * v8, a3);

  return result;
}

uint64_t sub_1001D4A24(uint64_t a1, uint64_t a2)
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

uint64_t sub_1001D4AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC14dockaccessoryd19VirtualEventService_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    if (a1 == 10)
    {
      v12 = 0x746172656D756E65;
    }

    else
    {
      v12 = 0x74616E696D726574;
    }

    v13 = sub_1000952D4(v12, 0xEA00000000006465, &v16);

    *(v10 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, "notification:, %s", v10, 0xCu);
    sub_100095808(v11);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1001D4CC0(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A9210, &unk_10023BE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001D4D28()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001D4D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001D4D84()
{
  result = qword_1002AC680;
  if (!qword_1002AC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC680);
  }

  return result;
}

uint64_t sub_1001D4DE8()
{
  swift_beginAccess();
  v1 = v0[5];
  if (v1)
  {
    [v1 invalidate];
  }

  return swift_deallocClassInstance();
}

id sub_1001D4E80()
{
  result = [objc_allocWithZone(type metadata accessor for BTLink(0)) init];
  qword_1002B1EB8 = result;
  return result;
}

char *sub_1001D4EB4()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  Logger.init(subsystem:category:)();
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_powerOnActions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_device] = 0;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode] = 0;
  *&v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan] = 0;
  v7 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_filter];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_match];
  *v8 = 0;
  *(v8 + 1) = 0;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_shouldScan] = 0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_connectionTxn;
  type metadata accessor for Transaction(0);
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 80) = 0;
  *(v10 + 88) = 1;
  Logger.init(subsystem:category:)();
  *(v10 + 64) = 0xD000000000000026;
  *(v10 + 72) = 0x80000001002353B0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0x402E000000000000;
  swift_unknownObjectWeakAssign();
  *&v0[v9] = v10;
  v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_enableOnPowerOn] = 0;
  v11 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue;
  sub_1000B3420(0, v12);
  static DispatchQoS.unspecified.getter();
  *&v36[0] = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *&v0[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = &v0[OBJC_IVAR____TtC14dockaccessoryd6BTLink_delegate];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  sub_100095274(&unk_1002A7370, &qword_10023AB30);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v1[v14] = v15;
  v16 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
  *&v1[v16] = sub_1001F3DD8(_swiftEmptyArrayStorage);
  v17 = type metadata accessor for BTLink(0);
  v38.receiver = v1;
  v38.super_class = v17;
  v18 = objc_msgSendSuper2(&v38, "init");
  v19 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue;
  v20 = *&v18[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v21 = objc_allocWithZone(CBCentralManager);
  v22 = v18;
  v23 = [v21 initWithDelegate:v22 queue:v20];
  v24 = *&v18[v19];
  type metadata accessor for BTScanEngine(0, v25);
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  swift_allocObject();
  v26 = v23;
  v27 = v24;
  v28 = sub_1000F6788(v26, v27, v36);

  *&v22[OBJC_IVAR____TtC14dockaccessoryd6BTLink_btScan] = v28;

  v29 = *&v22[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager];
  *&v22[OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager] = v26;

  v30 = *&v22[OBJC_IVAR____TtC14dockaccessoryd6BTLink_connectionTxn];

  *(v30 + 48) = &off_10027B2C8;
  swift_unknownObjectWeakAssign();

  return v22;
}

uint64_t sub_1001D5444(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1001DA414;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027B358;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v7, v5);
  (*(v8 + 8))(v10, v18);
}

void sub_1001D5720(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager;
  v7 = *(a1 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager);
  if (v7 && [v7 state] == 5)
  {
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Central already powered on, performing action immediately.", v10, 2u);
    }

    v11 = *(a1 + v6);
    if (v11)
    {
      v22 = v11;
      a2();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Queueing power on action...", v14, 2u);
    }

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
    v16 = OBJC_IVAR____TtC14dockaccessoryd6BTLink_powerOnActions;
    swift_beginAccess();
    v17 = *(a1 + v16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1001030F0(0, v17[2] + 1, 1, v17);
      *(a1 + v16) = v17;
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1001030F0((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = (v20 + 1);
    v21 = &v17[2 * v20];
    v21[4] = sub_1001DA458;
    v21[5] = v15;
    *(a1 + v16) = v17;
    swift_endAccess();
  }
}

uint64_t sub_1001D59A0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC14dockaccessoryd6BTLink_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1001DA39C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100147FC8;
  aBlock[3] = &unk_10027B308;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100095274(&unk_1002A6B60, qword_10023AE10);
  sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v20 + 8))(v7, v5);
  (*(v8 + 8))(v10, v19);
}

uint64_t sub_1001D5C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v12 = *(v4 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v12 + 4);

  sub_1000E40C4(a3, v10);
  v13 = type metadata accessor for BTDiscoveredDevice(0);
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  swift_beginAccess();

  sub_1001DA8BC(v10, a1, a2);
  swift_endAccess();
  v14 = *(v4 + v11);

  os_unfair_lock_unlock(v14 + 4);
}

id *sub_1001D5DDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock;
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd6BTLink__discoveredDevices;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v17 = v2;
    v7 = sub_1001E3CAC(v6, 0);
    v8 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
    v9 = sub_1001F128C(&v18, (v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80))), v6, v5);
    v10 = v18;
    swift_bridgeObjectRetain_n();
    sub_1000C7084(v10);
    if (v9 != v6)
    {
      __break(1u);

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v2 = v17;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v18 = v7;
  sub_1001D7CB0(&v18);

  v11 = sub_1001D628C(v18);

  if (v11[2])
  {
    sub_100095274(&unk_1002AC9E0, &qword_10023F7B8);
    v12 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v18 = v12;

  sub_1001D9BA4(v13, 1, &v18);

  v14 = v18;
  v15 = *(v1 + v2);

  os_unfair_lock_unlock(v15 + 4);

  return v14;
}

BOOL sub_1001D601C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  v9 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  sub_1000B5150(a1, &v27 - v14, &qword_1002A98D0, &unk_10023FFF0);

  v16 = &v15[*(v10 + 56)];
  v17 = type metadata accessor for BTDiscoveredDevice(0);
  v18 = *(v17 + 28);
  v28 = *(v4 + 16);
  v28(v8, v16 + v18, v3);
  sub_1000E4128(v16);
  Date.timeIntervalSince1970.getter();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v8, v3);
  sub_1000B5150(v30, v13, &qword_1002A98D0, &unk_10023FFF0);

  v22 = &v13[*(v10 + 56)];
  v23 = v29;
  v28(v29, v22 + *(v17 + 28), v3);
  sub_1000E4128(v22);
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  v21(v23, v3);
  return v25 < v20;
}

id *sub_1001D628C(uint64_t a1)
{
  v16 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v16 - v3;
  v5 = sub_100095274(&qword_1002AC7F0, &qword_100240000);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1001D71C8(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1000B5150(v11, v4, &qword_1002A98D0, &unk_10023FFF0);
      swift_dynamicCast();
      v17 = v10;
      v14 = v10[2];
      v13 = v10[3];
      if (v14 >= v13 >> 1)
      {
        sub_1001D71C8((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      v10[2] = (v14 + 1);
      sub_1001DA2F4(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, &qword_1002AC7F0, &qword_100240000);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_1001D64C4(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v22 = OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral;
    if (!*&a4[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral])
    {
      v35 = a4;
      v46 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v47 = v38;
        *v37 = 136315138;
        v39 = sub_10013EE04();
        v41 = sub_1000952D4(v39, v40, &v47);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v46, v36, "Unable to connect to %s: Peripheral is nil", v37, 0xCu);
        sub_100095808(v38);
        goto LABEL_4;
      }

      goto LABEL_11;
    }

    v46 = v10;
    v23 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device) = a4;
    v24 = a4;

    *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 2;

    sub_100105518();

    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = v45;
      *v28 = 136315138;
      v29 = *&a4[v22];
      if (!v29)
      {
        goto LABEL_19;
      }

      v30 = v29;

      v31 = [v30 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = UUID.uuidString.getter();
      v25 = v33;
      (*(v9 + 8))(v12, v46);
      v34 = sub_1000952D4(v32, v25, &v47);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Connecting peripheral %s", v28, 0xCu);
      sub_100095808(v45);
    }

    else
    {
    }

    v43 = *&a4[v22];
    if (v43)
    {
      [a1 connectPeripheral:v43 options:0];
      return;
    }

    __break(1u);
LABEL_19:

    __break(1u);
    return;
  }

  v13 = a4;
  swift_errorRetain();
  v46 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v46, v14))
  {
    v15 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = sub_10013EE04();
    v18 = sub_1000952D4(v16, v17, &v47);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = sub_1000952D4(v19, v20, &v47);

    *(v15 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v46, v14, "Unable to connect to %s: %s", v15, 0x16u);
    swift_arrayDestroy();
LABEL_4:

    return;
  }

LABEL_11:
  v42 = v46;
}

void sub_1001D699C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a4;
    swift_errorRetain();
    v46 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v14))
    {
      v15 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v15 = 136315394;
      if (a4)
      {
        v16 = sub_10013EE04();
        v18 = v17;
      }

      else
      {
        v18 = 0xE600000000000000;
        v16 = 0x656369766564;
      }

      v35 = sub_1000952D4(v16, v18, &v47);

      *(v15 + 4) = v35;
      *(v15 + 12) = 2080;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_1000952D4(v36, v37, &v47);

      *(v15 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v46, v14, "Unable to disconnect %s: %s", v15, 0x16u);
      swift_arrayDestroy();

      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v19 = a4;
  if (!a4)
  {
    v20 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    if (!v20)
    {
      v46 = 0;
      goto LABEL_18;
    }

    v21 = v10;
    v46 = *(a3 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
    v22 = v20;
    v19 = v46;
    v10 = v21;
  }

  v23 = *(&v19->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
  v46 = v19;
  if (v23)
  {
    v45 = v10;
    v24 = a4;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = v28;
      *v27 = 136315138;
      v29 = *(&v46->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral);
      if (!v29)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v30 = [v29 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = UUID.uuidString.getter();
      v33 = v32;
      (*(v9 + 8))(v12, v45);
      v34 = sub_1000952D4(v31, v33, &v47);

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "Disconnecting peripheral %s", v27, 0xCu);
      sub_100095808(v28);
    }

    if (*(&v46->isa + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral))
    {
      [a1 cancelPeripheralConnection:?];
LABEL_16:

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  v39 = a4;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Unable to disconnect: Invalid BT peripheral", v42, 2u);
  }

LABEL_21:
  v43 = v46;
}

id sub_1001D6E1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BTLink(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BTLink(uint64_t a1)
{
  result = qword_1002AC7D8;
  if (!qword_1002AC7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001D6FE8(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1001D70F0()
{
  result = qword_1002AC7E8;
  if (!qword_1002AC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AC7E8);
  }

  return result;
}

id *sub_1001D7148(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D728C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D7168(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D7390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D7188(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D74B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D71A8(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D75BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D71C8(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D76C8(a1, a2, a3, *v3, &qword_1002AC7F8, &qword_10023FE98, &qword_1002AC7F0, &qword_100240000);
  *v3 = result;
  return result;
}

id *sub_1001D7208(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D78B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D7228(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D79D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1001D7248(id *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1001D7AD4(a1, a2, a3, *v3, &qword_1002A89C8, &qword_10023D920, &type metadata accessor for DockKitBoundingBox);
  *v3 = result;
  return result;
}

id *sub_1001D728C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&qword_1002A89B8, &qword_10023D910);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_1001D7390(id *result, int64_t a2, char a3, id *a4)
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
    sub_100095274(&unk_1002AC800, &qword_10023FEA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ObjectType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1001D74B8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&qword_1002A8998, &qword_10023D8F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_1001D75BC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1001D76C8(id *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095274(a5, a6);
  v16 = *(sub_100095274(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = (2 * ((result - v18) / v17));
LABEL_19:
  v21 = *(sub_100095274(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

id *sub_1001D78B0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&qword_1002A89D0, &qword_10023D928);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1001D79D0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100095274(&qword_1002A89C0, &qword_10023D918);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id *sub_1001D7AD4(id *result, int64_t a2, char a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 24);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 16);
  if (v11 <= v12)
  {
    v13 = *(a4 + 16);
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100095274(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = (2 * ((result - v16) / v15));
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::Int sub_1001D7CB0(id **a1)
{
  v2 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001DA108(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1001D7D64(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1001D7D64(uint64_t *a1)
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
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1001D8348(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1001D7EA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1001D7EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v67 = type metadata accessor for Date();
  v8 = *(v67 - 8);
  v9 = __chkstk_darwin(v67);
  v66 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v50 - v11;
  v12 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v13 = __chkstk_darwin(v12);
  v59 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v64 = &v50 - v16;
  v17 = __chkstk_darwin(v15);
  v63 = &v50 - v18;
  v19 = __chkstk_darwin(v17);
  v62 = &v50 - v20;
  result = __chkstk_darwin(v19);
  v71 = &v50 - v23;
  v52 = a2;
  if (a3 != a2)
  {
    v24 = *a4;
    v25 = *(v22 + 72);
    v60 = (v8 + 8);
    v61 = (v8 + 16);
    v26 = v24 + v25 * (a3 - 1);
    v57 = -v25;
    v58 = v24;
    v27 = a1 - a3;
    v51 = v25;
    v28 = v24 + v25 * a3;
    v70 = v12;
LABEL_5:
    v55 = v26;
    v56 = a3;
    v53 = v28;
    v54 = v27;
    v68 = v27;
    v29 = v26;
    while (1)
    {
      v30 = v71;
      sub_1000B5150(v28, v71, &qword_1002A98D0, &unk_10023FFF0);
      v31 = v62;
      sub_1000B5150(v29, v62, &qword_1002A98D0, &unk_10023FFF0);
      v32 = v30;
      v33 = v63;
      sub_1000B5150(v32, v63, &qword_1002A98D0, &unk_10023FFF0);

      v34 = v33 + *(v12 + 48);
      v35 = type metadata accessor for BTDiscoveredDevice(0);
      v36 = *(v35 + 28);
      v69 = *v61;
      v37 = v65;
      v38 = v67;
      v69(v65, v34 + v36, v67);
      sub_1000E4128(v34);
      Date.timeIntervalSince1970.getter();
      v40 = v39;
      v41 = *v60;
      (*v60)(v37, v38);
      v42 = v64;
      sub_1000B5150(v31, v64, &qword_1002A98D0, &unk_10023FFF0);

      v43 = v42 + *(v70 + 48);
      v44 = v43 + *(v35 + 28);
      v45 = v66;
      v69(v66, v44, v38);
      sub_1000E4128(v43);
      Date.timeIntervalSince1970.getter();
      v47 = v46;
      v41(v45, v38);
      v12 = v70;
      sub_100095C84(v31, &qword_1002A98D0, &unk_10023FFF0);
      result = sub_100095C84(v71, &qword_1002A98D0, &unk_10023FFF0);
      if (v47 >= v40)
      {
LABEL_4:
        a3 = v56 + 1;
        v26 = v55 + v51;
        v27 = v54 - 1;
        v28 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v48 = v59;
      sub_1001DA2F4(v28, v59, &qword_1002A98D0, &unk_10023FFF0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1001DA2F4(v48, v29, &qword_1002A98D0, &unk_10023FFF0);
      v29 += v57;
      v28 += v57;
      if (__CFADD__(v68++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001D8348(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v152 = a1;
  v173 = type metadata accessor for Date();
  v6 = *(v173 - 8);
  v7 = __chkstk_darwin(v173);
  v172 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v148 - v9;
  v177 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v161 = *(v177 - 8);
  v10 = __chkstk_darwin(v177);
  v155 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v166 = &v148 - v13;
  v14 = __chkstk_darwin(v12);
  v170 = &v148 - v15;
  v16 = __chkstk_darwin(v14);
  v169 = &v148 - v17;
  v18 = __chkstk_darwin(v16);
  v178 = &v148 - v19;
  v20 = __chkstk_darwin(v18);
  v176 = &v148 - v21;
  v22 = __chkstk_darwin(v20);
  v149 = &v148 - v23;
  result = __chkstk_darwin(v22);
  v148 = &v148 - v25;
  v26 = a3[1];
  v156 = a3;
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_98:
    a4 = *v152;
    if (!*v152)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_100;
  }

  v151 = a4;
  v27 = 0;
  v167 = (v6 + 8);
  v168 = (v6 + 16);
  v28 = _swiftEmptyArrayStorage;
  v29 = &unk_10023FFF0;
LABEL_4:
  v30 = v27;
  v153 = v27;
  if (v27 + 1 >= v26)
  {
    v41 = v27 + 1;
    v60 = v151;
  }

  else
  {
    v162 = v26;
    v31 = v27;
    a4 = *a3;
    v32 = *(v161 + 72);
    v33 = *a3 + v32 * (v27 + 1);
    v34 = v29;
    v35 = v148;
    sub_1000B5150(v33, v148, &qword_1002A98D0, v34);
    v36 = v149;
    sub_1000B5150(a4 + v32 * v31, v149, &qword_1002A98D0, v34);
    v37 = v163;
    LODWORD(v164) = sub_1001D601C(v35, v36);
    v163 = v37;
    if (v37)
    {
      sub_100095C84(v36, &qword_1002A98D0, &unk_10023FFF0);
      sub_100095C84(v35, &qword_1002A98D0, &unk_10023FFF0);
    }

    v150 = v28;
    sub_100095C84(v36, &qword_1002A98D0, v34);
    result = sub_100095C84(v35, &qword_1002A98D0, v34);
    v38 = v31 + 2;
    v39 = a4 + v32 * v38;
    v29 = v34;
    v40 = v32;
    v165 = v32;
    while (1)
    {
      v41 = v162;
      if (v162 == v38)
      {
        break;
      }

      v42 = v176;
      sub_1000B5150(v39, v176, &qword_1002A98D0, v29);
      v175 = v33;
      v43 = v33;
      v44 = v178;
      sub_1000B5150(v43, v178, &qword_1002A98D0, v29);
      v45 = v42;
      v46 = v169;
      sub_1000B5150(v45, v169, &qword_1002A98D0, v29);

      v47 = v46 + *(v177 + 48);
      v48 = type metadata accessor for BTDiscoveredDevice(0);
      v49 = *(v48 + 28);
      v174 = *v168;
      v50 = v171;
      v51 = v173;
      (v174)(v171, v47 + v49, v173);
      sub_1000E4128(v47);
      Date.timeIntervalSince1970.getter();
      v53 = v52;
      v28 = *v167;
      (*v167)(v50, v51);
      v54 = v170;
      sub_1000B5150(v44, v170, &qword_1002A98D0, &unk_10023FFF0);

      v55 = v54 + *(v177 + 48);
      v56 = v55 + *(v48 + 28);
      a4 = v172;
      (v174)(v172, v56, v51);
      sub_1000E4128(v55);
      Date.timeIntervalSince1970.getter();
      v58 = v57;
      v59 = v51;
      v29 = &unk_10023FFF0;
      (v28)(a4, v59);
      sub_100095C84(v44, &qword_1002A98D0, &unk_10023FFF0);
      result = sub_100095C84(v176, &qword_1002A98D0, &unk_10023FFF0);
      v40 = v165;
      ++v38;
      v39 += v165;
      v33 = &v175[v165];
      if (((v164 ^ (v58 >= v53)) & 1) == 0)
      {
        v41 = v38 - 1;
        break;
      }
    }

    v60 = v151;
    a3 = v156;
    v30 = v153;
    if ((v164 & 1) == 0)
    {
      goto LABEL_24;
    }

    if (v41 < v153)
    {
      goto LABEL_131;
    }

    if (v153 < v41)
    {
      v61 = v41;
      a4 = v40 * (v41 - 1);
      v62 = v41 * v40;
      v162 = v41;
      v63 = v153;
      v64 = v153 * v40;
      do
      {
        if (v63 != --v61)
        {
          v65 = *v156;
          if (!*v156)
          {
            goto LABEL_135;
          }

          sub_1001DA2F4(v65 + v64, v155, &qword_1002A98D0, v29);
          if (v64 < a4 || v65 + v64 >= (v65 + v62))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v64 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1001DA2F4(v155, v65 + a4, &qword_1002A98D0, v29);
          v40 = v165;
        }

        ++v63;
        a4 -= v40;
        v62 -= v40;
        v64 += v40;
      }

      while (v63 < v61);
      v60 = v151;
      v28 = v150;
      a3 = v156;
      v30 = v153;
      v41 = v162;
    }

    else
    {
LABEL_24:
      v28 = v150;
    }
  }

  v66 = a3[1];
  if (v41 >= v66)
  {
    goto LABEL_35;
  }

  if (__OFSUB__(v41, v30))
  {
    goto LABEL_128;
  }

  if (v41 - v30 >= v60)
  {
LABEL_35:
    a4 = v41;
    if (v41 < v30)
    {
      goto LABEL_127;
    }

    goto LABEL_36;
  }

  if (__OFADD__(v30, v60))
  {
    goto LABEL_129;
  }

  if (v30 + v60 >= v66)
  {
    a4 = a3[1];
  }

  else
  {
    a4 = v30 + v60;
  }

  if (a4 < v30)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    result = sub_1001D99BC(v28);
    v28 = result;
LABEL_100:
    v179 = v28;
    v142 = v28[2];
    if (v142 >= 2)
    {
      while (1)
      {
        v143 = *a3;
        if (!*a3)
        {
          goto LABEL_136;
        }

        a3 = (v142 - 1);
        v144 = v28[2 * v142];
        v145 = v28[2 * v142 + 3];
        v146 = v163;
        sub_1001D90C0((v143 + *(v161 + 72) * v144), (v143 + *(v161 + 72) * v28[2 * v142 + 2]), (v143 + *(v161 + 72) * v145), a4);
        v163 = v146;
        if (v146)
        {
        }

        if (v145 < v144)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1001D99BC(v28);
        }

        if (v142 - 2 >= v28[2])
        {
          goto LABEL_126;
        }

        v147 = &v28[2 * v142];
        *v147 = v144;
        v147[1] = v145;
        v179 = v28;
        result = sub_1001D9930(a3);
        v28 = v179;
        v142 = v179[2];
        a3 = v156;
        if (v142 <= 1)
        {
        }
      }
    }
  }

  if (v41 == a4)
  {
    goto LABEL_35;
  }

  v150 = v28;
  v116 = *a3;
  v117 = *(v161 + 72);
  v118 = *a3 + v117 * (v41 - 1);
  v164 = -v117;
  v165 = v116;
  v119 = v30 - v41;
  v154 = v117;
  v120 = v116 + v41 * v117;
  v121 = v177;
  v157 = a4;
LABEL_89:
  v162 = v41;
  v158 = v120;
  v159 = v119;
  v122 = v119;
  v160 = v118;
  while (1)
  {
    v174 = v122;
    v123 = v176;
    sub_1000B5150(v120, v176, &qword_1002A98D0, v29);
    sub_1000B5150(v118, v178, &qword_1002A98D0, v29);
    v124 = v123;
    v125 = v169;
    sub_1000B5150(v124, v169, &qword_1002A98D0, v29);

    v126 = v125 + *(v121 + 48);
    v127 = type metadata accessor for BTDiscoveredDevice(0);
    v128 = *(v127 + 28);
    v175 = *v168;
    v129 = v171;
    v130 = v173;
    (v175)(v171, v126 + v128, v173);
    sub_1000E4128(v126);
    Date.timeIntervalSince1970.getter();
    v132 = v131;
    v133 = *v167;
    (*v167)(v129, v130);
    v134 = v170;
    sub_1000B5150(v178, v170, &qword_1002A98D0, &unk_10023FFF0);

    v135 = v134 + *(v177 + 48);
    v136 = v172;
    (v175)(v172, v135 + *(v127 + 28), v130);
    sub_1000E4128(v135);
    Date.timeIntervalSince1970.getter();
    v138 = v137;
    (v133)(v136, v130);
    v29 = &unk_10023FFF0;
    sub_100095C84(v178, &qword_1002A98D0, &unk_10023FFF0);
    result = sub_100095C84(v176, &qword_1002A98D0, &unk_10023FFF0);
    if (v138 >= v132)
    {
      v121 = v177;
LABEL_88:
      v41 = v162 + 1;
      v118 = v160 + v154;
      v119 = v159 - 1;
      v120 = v158 + v154;
      a4 = v157;
      if (v162 + 1 != v157)
      {
        goto LABEL_89;
      }

      a3 = v156;
      v28 = v150;
      if (v157 < v153)
      {
        goto LABEL_127;
      }

LABEL_36:
      result = swift_isUniquelyReferenced_nonNull_native();
      v157 = a4;
      if ((result & 1) == 0)
      {
        result = sub_100102974(0, v28[2] + 1, 1, v28);
        v28 = result;
      }

      a4 = v28[2];
      v67 = v28[3];
      v68 = a4 + 1;
      if (a4 >= v67 >> 1)
      {
        result = sub_100102974((v67 > 1), a4 + 1, 1, v28);
        v28 = result;
      }

      v28[2] = v68;
      v69 = &v28[2 * a4];
      v70 = v157;
      v69[4] = v153;
      v69[5] = v70;
      if (!*v152)
      {
        goto LABEL_137;
      }

      if (a4)
      {
        v71 = *v152;
        while (1)
        {
          v72 = v68 - 1;
          if (v68 >= 4)
          {
            break;
          }

          if (v68 == 3)
          {
            v73 = v28[4];
            v74 = v28[5];
            v83 = __OFSUB__(v74, v73);
            v75 = v74 - v73;
            v76 = v83;
LABEL_56:
            if (v76)
            {
              goto LABEL_116;
            }

            v89 = &v28[2 * v68];
            v91 = *v89;
            v90 = v89[1];
            v92 = __OFSUB__(v90, v91);
            v93 = v90 - v91;
            v94 = v92;
            if (v92)
            {
              goto LABEL_119;
            }

            v95 = &v28[2 * v72 + 4];
            v97 = *v95;
            v96 = v95[1];
            v83 = __OFSUB__(v96, v97);
            v98 = v96 - v97;
            if (v83)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v93, v98))
            {
              goto LABEL_123;
            }

            if (v93 + v98 >= v75)
            {
              if (v75 < v98)
              {
                v72 = v68 - 2;
              }

              goto LABEL_77;
            }

            goto LABEL_70;
          }

          v99 = &v28[2 * v68];
          v101 = *v99;
          v100 = v99[1];
          v83 = __OFSUB__(v100, v101);
          v93 = v100 - v101;
          v94 = v83;
LABEL_70:
          if (v94)
          {
            goto LABEL_118;
          }

          v102 = &v28[2 * v72];
          v104 = v102[4];
          v103 = v102[5];
          v83 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v83)
          {
            goto LABEL_121;
          }

          if (v105 < v93)
          {
            goto LABEL_3;
          }

LABEL_77:
          a4 = v72 - 1;
          if (v72 - 1 >= v68)
          {
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
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          v110 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v111 = a3;
          v112 = v28[2 * a4 + 4];
          v113 = v72;
          a3 = v28[2 * v72 + 5];
          v114 = v163;
          sub_1001D90C0((v110 + *(v161 + 72) * v112), (v110 + *(v161 + 72) * v28[2 * v72 + 4]), (v110 + *(v161 + 72) * a3), v71);
          v163 = v114;
          if (v114)
          {
          }

          if (a3 < v112)
          {
            goto LABEL_112;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_1001D99BC(v28);
          }

          if (a4 >= v28[2])
          {
            goto LABEL_113;
          }

          v115 = &v28[2 * a4];
          v115[4] = v112;
          v115[5] = a3;
          v179 = v28;
          result = sub_1001D9930(v113);
          v28 = v179;
          v68 = v179[2];
          a3 = v111;
          if (v68 <= 1)
          {
            goto LABEL_3;
          }
        }

        v77 = &v28[2 * v68 + 4];
        v78 = *(v77 - 64);
        v79 = *(v77 - 56);
        v83 = __OFSUB__(v79, v78);
        v80 = v79 - v78;
        if (v83)
        {
          goto LABEL_114;
        }

        v82 = *(v77 - 48);
        v81 = *(v77 - 40);
        v83 = __OFSUB__(v81, v82);
        v75 = v81 - v82;
        v76 = v83;
        if (v83)
        {
          goto LABEL_115;
        }

        v84 = &v28[2 * v68];
        v86 = *v84;
        v85 = v84[1];
        v83 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v83)
        {
          goto LABEL_117;
        }

        v83 = __OFADD__(v75, v87);
        v88 = v75 + v87;
        if (v83)
        {
          goto LABEL_120;
        }

        if (v88 >= v80)
        {
          v106 = &v28[2 * v72 + 4];
          v108 = *v106;
          v107 = v106[1];
          v83 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v83)
          {
            goto LABEL_124;
          }

          if (v75 < v109)
          {
            v72 = v68 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_56;
      }

LABEL_3:
      v26 = a3[1];
      v27 = v157;
      if (v157 >= v26)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }

    v139 = v174;
    if (!v165)
    {
      break;
    }

    v140 = v166;
    sub_1001DA2F4(v120, v166, &qword_1002A98D0, &unk_10023FFF0);
    v121 = v177;
    swift_arrayInitWithTakeFrontToBack();
    sub_1001DA2F4(v140, v118, &qword_1002A98D0, &unk_10023FFF0);
    v118 += v164;
    v120 += v164;
    v141 = __CFADD__(v139, 1);
    v122 = v139 + 1;
    if (v141)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1001D90C0(char *a1, char *a2, char *a3, char *a4)
{
  v89 = type metadata accessor for Date();
  v8 = *(v89 - 8);
  v9 = __chkstk_darwin(v89);
  v88 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v87 = &v74 - v11;
  v94 = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v12 = __chkstk_darwin(v94);
  v86 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v85 = &v74 - v15;
  v16 = __chkstk_darwin(v14);
  v84 = &v74 - v17;
  result = __chkstk_darwin(v16);
  v95 = &v74 - v19;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_59;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_60;
  }

  v23 = (a2 - a1) / v21;
  v98 = a1;
  v97 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || &a2[v25] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = &a4[v25];
    if (v25 >= 1)
    {
      v50 = -v21;
      v78 = (v8 + 16);
      v77 = (v8 + 8);
      v51 = &a4[v25];
      v91 = a4;
      v92 = a1;
      v79 = -v21;
      do
      {
        v75 = v49;
        v52 = &a2[v50];
        v93 = &a2[v50];
        v80 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v98 = a2;
            v96 = v75;
            goto LABEL_57;
          }

          v76 = v49;
          v90 = &a3[v50];
          v54 = &v51[v50];
          v81 = &v51[v50];
          v55 = v95;
          v83 = a3;
          sub_1000B5150(v54, v95, &qword_1002A98D0, &unk_10023FFF0);
          v56 = v84;
          sub_1000B5150(v52, v84, &qword_1002A98D0, &unk_10023FFF0);
          v57 = v85;
          sub_1000B5150(v55, v85, &qword_1002A98D0, &unk_10023FFF0);

          v58 = v94;
          v59 = v57 + *(v94 + 48);
          v60 = type metadata accessor for BTDiscoveredDevice(0);
          v61 = *(v60 + 28);
          v82 = *v78;
          v62 = v87;
          v63 = v89;
          v82(v87, v59 + v61, v89);
          sub_1000E4128(v59);
          Date.timeIntervalSince1970.getter();
          v65 = v64;
          v66 = *v77;
          (*v77)(v62, v63);
          v67 = v86;
          sub_1000B5150(v56, v86, &qword_1002A98D0, &unk_10023FFF0);

          v68 = v67 + *(v58 + 48);
          v69 = v68 + *(v60 + 28);
          v70 = v88;
          v82(v88, v69, v63);
          sub_1000E4128(v68);
          Date.timeIntervalSince1970.getter();
          v72 = v71;
          v66(v70, v63);
          sub_100095C84(v56, &qword_1002A98D0, &unk_10023FFF0);
          sub_100095C84(v95, &qword_1002A98D0, &unk_10023FFF0);
          if (v72 < v65)
          {
            break;
          }

          v73 = v81;
          v49 = v81;
          a3 = v90;
          if (v83 < v51 || v90 >= v51)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v92;
            v52 = v93;
          }

          else
          {
            a1 = v92;
            v52 = v93;
            if (v83 != v51)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = v49;
          v53 = v73 > v91;
          v50 = v79;
          a2 = v80;
          if (!v53)
          {
            goto LABEL_55;
          }
        }

        a3 = v90;
        if (v83 < v80 || v90 >= v80)
        {
          a2 = v93;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v92;
          v49 = v76;
          v50 = v79;
        }

        else
        {
          a1 = v92;
          a2 = v93;
          v49 = v76;
          v50 = v79;
          if (v83 != v80)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v51 > v91);
    }

LABEL_55:
    v98 = a2;
    v96 = v49;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || &a1[v24] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v83 = &a4[v24];
    v96 = &a4[v24];
    if (v24 >= 1 && a2 < a3)
    {
      v80 = (v8 + 8);
      v81 = (v8 + 16);
      v90 = a3;
      v82 = v21;
      do
      {
        v91 = a4;
        v92 = a1;
        v93 = a2;
        v27 = v95;
        sub_1000B5150(a2, v95, &qword_1002A98D0, &unk_10023FFF0);
        v28 = v84;
        sub_1000B5150(a4, v84, &qword_1002A98D0, &unk_10023FFF0);
        v29 = v27;
        v30 = v85;
        sub_1000B5150(v29, v85, &qword_1002A98D0, &unk_10023FFF0);

        v31 = v94;
        v32 = v30 + *(v94 + 48);
        v33 = type metadata accessor for BTDiscoveredDevice(0);
        v34 = *v81;
        v35 = v87;
        v36 = v89;
        (*v81)(v87, v32 + *(v33 + 28), v89);
        sub_1000E4128(v32);
        Date.timeIntervalSince1970.getter();
        v38 = v37;
        v39 = *v80;
        (*v80)(v35, v36);
        v40 = v86;
        sub_1000B5150(v28, v86, &qword_1002A98D0, &unk_10023FFF0);

        v41 = v40 + *(v31 + 48);
        v42 = v41 + *(v33 + 28);
        v43 = v88;
        v34(v88, v42, v36);
        sub_1000E4128(v41);
        Date.timeIntervalSince1970.getter();
        v45 = v44;
        v39(v43, v36);
        sub_100095C84(v28, &qword_1002A98D0, &unk_10023FFF0);
        sub_100095C84(v95, &qword_1002A98D0, &unk_10023FFF0);
        if (v45 >= v38)
        {
          v47 = v92;
          a2 = v93;
          v46 = v82;
          a4 = v82 + v91;
          if (v92 < v91 || v92 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v90;
          }

          else
          {
            v48 = v90;
            if (v92 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v97 = a4;
        }

        else
        {
          v46 = v82;
          v47 = v92;
          a2 = v82 + v93;
          a4 = v91;
          if (v92 < v93 || v92 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v90;
          }

          else
          {
            v48 = v90;
            if (v92 != v93)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 = v46 + v47;
        v98 = a1;
      }

      while (a4 < v83 && a2 < v48);
    }
  }

LABEL_57:
  sub_1001D9AB4(&v98, &v97, &v96);
  return 1;
}

uint64_t sub_1001D9930(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001D99BC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001D99D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for BTDiscoveredDevice(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001D9AB4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100095274(&qword_1002A98D0, &unk_10023FFF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1001D9BA4(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for BTDiscoveredDevice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100095274(&qword_1002AC7F0, &qword_100240000);
  v12 = __chkstk_darwin(v11);
  v15 = (&v57 - v14);
  v63 = *(a1 + 16);
  if (!v63)
  {
  }

  v59 = v3;
  v60 = v8;
  v16 = a2;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v62 = *(v13 + 72);
  v64 = a1;
  v58 = v18;
  sub_1000B5150(a1 + v18, &v57 - v14, &qword_1002AC7F0, &qword_100240000);
  v19 = v15[1];
  v67 = *v15;
  v20 = v67;
  v68 = v19;
  v61 = v17;
  sub_1000E45C8(v15 + v17, v10);
  v21 = *a3;
  v23 = sub_10016D4D0(v20, v19);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v16)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1001EF078();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1001E7A44(v26, v16 & 1);
  v28 = sub_10016D4D0(v20, v19);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v20;
      v33[1] = v19;
      v34 = v32[7];
      v60 = *(v60 + 72);
      sub_1000E45C8(v10, v34 + v60 * v23);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v32[2] = v37;
        v38 = v64;
        if (v63 != 1)
        {
          v39 = v64 + v62 + v58;
          v40 = 1;
          while (v40 < *(v38 + 16))
          {
            sub_1000B5150(v39, v15, &qword_1002AC7F0, &qword_100240000);
            v41 = v15[1];
            v67 = *v15;
            v42 = v67;
            v68 = v41;
            sub_1000E45C8(v15 + v61, v10);
            v43 = *a3;
            v44 = sub_10016D4D0(v42, v41);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v36 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v36)
            {
              goto LABEL_24;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_1001E7A44(v48, 1);
              v44 = sub_10016D4D0(v42, v41);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v49)
            {
              goto LABEL_10;
            }

            v51 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v52 = (v51[6] + 16 * v44);
            *v52 = v42;
            v52[1] = v41;
            sub_1000E45C8(v10, v51[7] + v60 * v44);
            v53 = v51[2];
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_25;
            }

            ++v40;
            v51[2] = v54;
            v39 += v62;
            v38 = v64;
            if (v63 == v40)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v30 = swift_allocError();
    swift_willThrow();
    v69 = v30;
    swift_errorRetain();
    sub_100095274(&qword_1002A7268, &unk_10023C680);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1000E4128(v10);
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v55._object = 0x8000000100235390;
  v55._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v55);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 39;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1001DA164(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Connection timeout occured!", v5, 2u);
  }

  v6 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_device);
  if (v6 && *(v6 + OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral))
  {
    [*(v2 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_manager) cancelPeripheralConnection:?];
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd6BTLink_mode) = 0;
  }

  else
  {
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "No peripheral to disconnect.", v8, 2u);
    }
  }
}

uint64_t sub_1001DA2F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100095274(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001DA35C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DA3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001DA3D4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001DA420()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001DA494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000FEA30(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1001EB278(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100095C84(a1, &qword_1002A9210, &unk_10023BE70);
    sub_1001E48B4(a2, a3, v9);

    return sub_100095C84(v9, &qword_1002A9210, &unk_10023BE70);
  }

  return result;
}

uint64_t sub_1001DA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1001EB3C8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_10016D4D0(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1001EDD74();
        v16 = v18;
      }

      result = sub_1001E9EE0(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1001DA66C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100095274(&unk_1002AC8D0, &qword_10023F088);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DKAPIUsageMetric();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100095C84(a1, &unk_1002AC8D0, &qword_10023F088);
    v13 = sub_10016D898(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001EE604();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_1001EA6B8(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100095C84(v8, &unk_1002AC8D0, &qword_10023F088);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1001EBCC4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1001DA8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100095274(&unk_1002A9C20, &qword_10023D210);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for BTDiscoveredDevice(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100095C84(a1, &unk_1002A9C20, &qword_10023D210);
    sub_1001E4E78(a2, a3, v9);

    return sub_100095C84(v9, &unk_1002A9C20, &qword_10023D210);
  }

  else
  {
    sub_1000E45C8(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1001EC1D4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1001DAA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001EC338(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10016D4D0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1001EF2A8();
        v14 = v16;
      }

      result = sub_1001F7A34(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_1001DAB74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001EC648(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    v7 = sub_10016D548(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1001EE1AC();
        v11 = v13;
      }

      sub_1001EA3D0(v9, v11);
      *v3 = v11;
    }
  }
}

uint64_t sub_1001DAC34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1001ECFE0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10016D4D0(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1001EFDD0();
        v14 = v16;
      }

      result = sub_1001F7A34(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1001DAD2C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100095274(&qword_1002ABF98, &unk_10023FF20);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for DockKitIDSInfo();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100095C84(a1, &qword_1002ABF98, &unk_10023FF20);
    sub_1001E552C(a2, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100095C84(v7, &qword_1002ABF98, &unk_10023FF20);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1001ED48C(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void sub_1001DAF74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC8E8, &qword_10023FF48);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_dynamicCast();
    sub_1000FEA30((v24 + 8), v22);
    sub_1000FEA30(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v6[8 * v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v12;
    sub_1000FEA30(v24, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1001DB210(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC8C0, &unk_100240060);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;

    sub_100095274(&qword_1002AC8C8, &qword_10023FF30);
    swift_dynamicCast();
    sub_1000FEA30((v24 + 8), v22);
    sub_1000FEA30(v22, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v6[8 * v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v12;
    sub_1000FEA30(v24, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1001DB4C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100095274(&qword_1002AC898, &qword_10023FEF8);
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
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + 16 * (v11 | (v10 << 6)));
        v14 = *v12;
        v13 = v12[1];

        sub_100095274(&qword_1002AC8A0, &qword_10023FF00);
        sub_100095274(&qword_1002AC8A8, &unk_10023FF08);
        swift_dynamicCast();
        v15 = sub_10016D4D0(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;

          v7 = v10;
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

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1001DB748(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_100093D84(v2, qword_1002AC810);
  sub_100093DE8(v2, qword_1002AC810);
  return Logger.init(subsystem:category:)();
}

id sub_1001DB7C8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  __chkstk_darwin(v3);
  v27 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v25 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger;
  Logger.init(subsystem:category:)();
  v24 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue;
  v11 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v23[1] = "oryd20DebugServiceDelegate";
  v23[2] = v11;
  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_1001E2DC4(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  v12 = v2;
  sub_1000E4D54(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  v14 = v27;
  v13 = v28;
  v15 = v29;
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = v25;
  *&v2[v24] = v16;
  (*(v15 + 16))(v14, &v2[v17], v13);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "debug interface open", v20, 2u);
  }

  (*(v15 + 8))(v14, v13);
  v21 = type metadata accessor for dockDebug(0);
  v30.receiver = v12;
  v30.super_class = v21;
  return objc_msgSendSuper2(&v30, "init");
}

void sub_1001DBD78(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1001DBE0C(id **a1, uint64_t a2, SEL *a3)
{
  v24 = a2;
  v25 = a3;
  if (qword_1002A6780 != -1)
  {
LABEL_20:
    swift_once();
  }

  v3 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v3 + v4);

  os_unfair_lock_unlock(v8 + 4);

  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
LABEL_5:
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_10:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = v15 | (v13 << 6);
        v27 = *(*(v7 + 48) + 4 * v16);
        v17 = *(*(v7 + 56) + 8 * v16);
        v18 = [v17 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&unk_1002AC8B0, &qword_10023FF18);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100102DE4(0, v19[2] + 1, 1, v19);
        *a1 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100102DE4((v21 > 1), (v22 + 1), 1, v19);
        *a1 = v19;
      }

      v19[2] = v22 + 1;
      *(v19 + v22 + 8) = v27;
      [v28 *v25];
      swift_unknownObjectRelease();

      goto LABEL_5;
    }
  }
}

void sub_1001DC0E8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1001DC194(id **a1, char a2, SEL *a3)
{
  if (qword_1002A6780 != -1)
  {
LABEL_20:
    swift_once();
  }

  v3 = qword_1002B1CF0;
  sub_1001F1BBC(_swiftEmptyArrayStorage);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
  v5 = *(v3 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

  os_unfair_lock_lock(v5 + 4);

  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
  swift_beginAccess();
  v7 = *(v3 + v6);
  v8 = *(v3 + v4);

  os_unfair_lock_unlock(v8 + 4);

  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
LABEL_5:
  if (v11)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v14 >= v12)
    {
      break;
    }

    v11 = *(v7 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
LABEL_10:
      while (1)
      {
        v15 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v16 = v15 | (v13 << 6);
        v27 = *(*(v7 + 48) + 4 * v16);
        v17 = *(*(v7 + 56) + 8 * v16);
        v18 = [v17 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&unk_1002AC8B0, &qword_10023FF18);
        if (swift_dynamicCast())
        {
          break;
        }

        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100102DE4(0, v19[2] + 1, 1, v19);
        *a1 = v19;
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_100102DE4((v21 > 1), (v22 + 1), 1, v19);
        *a1 = v19;
      }

      v19[2] = v22 + 1;
      *(v19 + v22 + 8) = v27;
      [v28 *a3];
      swift_unknownObjectRelease();

      goto LABEL_5;
    }
  }
}

void sub_1001DC478(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_1001DC5E8(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

uint64_t sub_1001DC6D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100095274(&qword_1002AC8E0, &qword_10023FF38);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = swift_projectBox();
  if (!a2 && a1)
  {
    v10 = v9;
    v11 = [a1 metadata];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 format];

      if (v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        if (v14 == 0x38746E6975 && v16 == 0xE500000000000000)
        {
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v18 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if ([a1 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v41 = 0u;
          v42 = 0u;
        }

        v43[0] = v41;
        v43[1] = v42;
        if (*(&v42 + 1))
        {
          result = swift_dynamicCast();
          if (result)
          {
            switch(v40)
            {
              case 3:
                v36 = enum case for ComponentType.Battery(_:);
                v37 = type metadata accessor for ComponentType();
                v38 = *(v37 - 8);
                (*(v38 + 104))(v8, v36, v37);
                (*(v38 + 56))(v8, 0, 1, v37);
                swift_beginAccess();
                sub_1001E2E44(v8, v10);
                swift_beginAccess();
                v25 = 0x2079726574746142;
                v26 = 0xEF0A726F736E6573;
                break;
              case 2:
                v33 = enum case for ComponentType.Button(_:);
                v34 = type metadata accessor for ComponentType();
                v35 = *(v34 - 8);
                (*(v35 + 104))(v8, v33, v34);
                (*(v35 + 56))(v8, 0, 1, v34);
                swift_beginAccess();
                sub_1001E2E44(v8, v10);
                swift_beginAccess();
                v25 = 0x73206E6F74747542;
                v26 = 0xEE000A726F736E65;
                break;
              case 1:
                v22 = enum case for ComponentType.LED(_:);
                v23 = type metadata accessor for ComponentType();
                v24 = *(v23 - 8);
                (*(v24 + 104))(v8, v22, v23);
                (*(v24 + 56))(v8, 0, 1, v23);
                swift_beginAccess();
                sub_1001E2E44(v8, v10);
                swift_beginAccess();
                v25 = 0x736E65732044454CLL;
                v26 = 0xEB000000000A726FLL;
                break;
              default:
                return result;
            }

            String.append(_:)(*&v25);
            return swift_endAccess();
          }
        }

        else
        {
          sub_100095C84(v43, &qword_1002A9210, &unk_10023BE70);
        }
      }
    }

LABEL_23:
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    *&v43[0] = 0xD000000000000029;
    *(&v43[0] + 1) = 0x8000000100235500;
    v27 = [a1 type];
    if (v27)
    {
      v28 = v27;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    *&v41 = v29;
    *(&v41 + 1) = v31;
    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v19 = String.init<A>(describing:)();
    goto LABEL_27;
  }

  *&v43[0] = 0;
  *(&v43[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  *&v43[0] = 0xD00000000000001FLL;
  *(&v43[0] + 1) = 0x80000001002354C0;
  *&v41 = a2;
  swift_errorRetain();
  sub_100095274(&qword_1002A9308, &qword_10023FF40);
  v19 = String.init<A>(describing:)();
LABEL_27:
  String.append(_:)(*&v19);

  v32 = v43[0];
  swift_beginAccess();
  String.append(_:)(v32);
  swift_endAccess();
}

void sub_1001DCCF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100095274(&qword_1002AC8E0, &qword_10023FF38);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v47 - v10;
  v12 = swift_projectBox();
  if (a2 || !a1)
  {
    *&v50[0] = 0;
    *(&v50[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    *&v50[0] = 0xD00000000000001FLL;
    *(&v50[0] + 1) = 0x80000001002354C0;
    v48._countAndFlagsBits = a2;
    swift_errorRetain();
    sub_100095274(&qword_1002A9308, &qword_10023FF40);
    v22._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v22);

    v23 = v50[0];
    swift_beginAccess();
    String.append(_:)(v23);
    swift_endAccess();
  }

  else
  {
    v13 = v12;
    v14 = [a1 metadata];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 format];

      if (v16)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        if (v17 == 1635017060 && v19 == 0xE400000000000000)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            return;
          }
        }

        if ([a1 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v48 = 0;
          v49 = 0u;
        }

        v50[0] = v48;
        v50[1] = v49;
        if (!*(&v49 + 1))
        {
          v31 = &qword_1002A9210;
          v32 = &unk_10023BE70;
          v33 = v50;
LABEL_33:
          sub_100095C84(v33, v31, v32);
          return;
        }

        if (swift_dynamicCast())
        {
          v25 = v47[0];
          v24 = v47[1];
          *&v50[0] = 0;
          *(&v50[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(17);

          strcpy(v50, "\nSensor Data: ");
          HIBYTE(v50[0]) = -18;
          v26._countAndFlagsBits = sub_10013B46C(v25, v24);
          String.append(_:)(v26);

          v27._countAndFlagsBits = 10;
          v27._object = 0xE100000000000000;
          String.append(_:)(v27);
          v28 = v50[0];
          swift_beginAccess();
          String.append(_:)(v28);
          swift_endAccess();

          swift_beginAccess();
          sub_1000B5150(v13, v11, &qword_1002AC8E0, &qword_10023FF38);
          v29 = type metadata accessor for ComponentType();
          v30 = *(v29 - 8);
          if ((*(v30 + 48))(v11, 1, v29) != 1)
          {
            sub_1000B5150(v11, v9, &qword_1002AC8E0, &qword_10023FF38);
            if ((*(v30 + 88))(v9, v29) != enum case for ComponentType.Battery(_:))
            {
              sub_1000A0D2C(v25, v24);
              (*(v30 + 8))(v9, v29);
              goto LABEL_32;
            }

            v34 = objc_allocWithZone(type metadata accessor for AccessoryBatteryState());
            sub_1000A0CD8(v25, v24);
            v35 = AccessoryBatteryState.init(data:name:)();
            if (v35)
            {
              v36 = v35;
              v48._countAndFlagsBits = 0;
              v48._object = 0xE000000000000000;
              _StringGuts.grow(_:)(45);
              v37._countAndFlagsBits = 0x2079726574746142;
              v37._object = 0xEE00203A61746164;
              String.append(_:)(v37);
              AccessoryBatteryState.batteryPercent.getter();
              Double.write<A>(to:)();
              v38._countAndFlagsBits = 0x6142776F6C202C25;
              v38._object = 0xEB000000003D7474;
              String.append(_:)(v38);
              v39 = AccessoryBatteryState.lowBattery.getter();
              v40 = (v39 & 1) == 0;
              if (v39)
              {
                v41 = 1702195828;
              }

              else
              {
                v41 = 0x65736C6166;
              }

              if (v40)
              {
                v42 = 0xE500000000000000;
              }

              else
              {
                v42 = 0xE400000000000000;
              }

              v43 = v42;
              String.append(_:)(*&v41);

              v44._countAndFlagsBits = 0x656772616863202CLL;
              v44._object = 0xEE003D6574617453;
              String.append(_:)(v44);
              v47[0] = AccessoryBatteryState.chargeState.getter();
              _print_unlocked<A, B>(_:_:)();
              v45 = v48;
              swift_beginAccess();
              String.append(_:)(v45);
              swift_endAccess();
              sub_1000A0D2C(v25, v24);

              goto LABEL_32;
            }

            swift_beginAccess();
            v46._object = 0x80000001002354E0;
            v46._countAndFlagsBits = 0xD00000000000001CLL;
            String.append(_:)(v46);
            swift_endAccess();
          }

          sub_1000A0D2C(v25, v24);
LABEL_32:
          v31 = &qword_1002AC8E0;
          v32 = &qword_10023FF38;
          v33 = v11;
          goto LABEL_33;
        }
      }
    }
  }
}

uint64_t type metadata accessor for dockDebug(uint64_t a1)
{
  result = qword_1002AC850;
  if (!qword_1002AC850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001DD454(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A67A8 != -1)
  {
    swift_once();
  }

  v12 = sub_100093DE8(v8, qword_1002AC810);
  (*(v9 + 16))(v11, v12, v8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28[0] = v16;
    v28[1] = a2;
    *v15 = 67109378;
    *(v15 + 4) = v27;
    *(v15 + 8) = 2080;
    v28[2] = a3;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000952D4(v17, v18, v28);

    *(v15 + 10) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v15, 0x12u);
    sub_100095808(v16);
  }

  (*(v9 + 8))(v11, v8);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v20 = qword_1002B1CF0;
  v21 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v22 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v22 + 4);

  swift_beginAccess();
  v23 = sub_1001E4BFC(v27);
  swift_endAccess();

  v24 = *(v20 + v21);

  os_unfair_lock_unlock(v24 + 4);
}

id sub_1001DD808(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1001DD864(void *a1)
{
  v128 = a1;
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 1);
  v3 = __chkstk_darwin(v1);
  v5 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v118 - v6;
  v139 = 0;
  v140 = 0xE000000000000000;
  if (qword_1002A6780 != -1)
  {
LABEL_84:
    swift_once();
  }

  v8 = qword_1002B1CF0;
  v9 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v10 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v10 + 4);

  v11 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v12 = *(v8 + v9);
  v13 = v11;

  os_unfair_lock_unlock(v12 + 4);

  if (!v11)
  {
    return v139;
  }

  v14 = *(v8 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v123 = v13;
  v131 = dispatch thunk of DockCoreAccessory.info.getter();
  v129 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v15 = *&v14[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  OS_dispatch_semaphore.wait()();

  v16 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  v130 = v14;
  v17 = *&v14[v16];
  v18 = *(v17 + 16);

  if (!v18)
  {
LABEL_8:

    v24 = v130;
    v25 = *&v130[v129];
    OS_dispatch_semaphore.signal()();

    v138 = 0;
    v136 = 0u;
    v137 = 0u;
    goto LABEL_10;
  }

  v19 = 0;
  v20 = v2;
  v2 = (v17 + 32);
  v21 = (v20 + 8);
  while (1)
  {
    if (v19 >= *(v17 + 16))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    sub_1000A097C(v2, &v134);
    v22 = *(*sub_1000A09E0(&v134, v135) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v22) = static UUID.== infix(_:_:)();
    v23 = *v21;
    (*v21)(v5, v1);
    v23(v7, v1);
    if (v22)
    {
      break;
    }

    ++v19;
    sub_100095808(&v134);
    v2 += 40;
    if (v18 == v19)
    {
      goto LABEL_8;
    }
  }

  v24 = v130;
  v26 = *&v130[v129];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(&v134, &v136);
  sub_100095808(&v134);
LABEL_10:

  v1 = v123;
  if (!*(&v137 + 1))
  {

    sub_100095C84(&v136, &unk_1002A6F40, &unk_10023BE90);
    return v139;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return v139;
  }

  countAndFlagsBits = v134._countAndFlagsBits;
  result = [v128 services];
  if (!result)
  {
    goto LABEL_100;
  }

  v28 = result;
  sub_100095B94(0, &qword_1002A7010, off_100271C78);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_15;
    }

LABEL_86:

    return v139;
  }

  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_86;
  }

LABEL_15:
  v30 = 0;
  v122 = v7 & 0xC000000000000001;
  v121 = v7 & 0xFFFFFFFFFFFFFF8;
  v120 = v7 + 32;
  v5 = 0x8000000100235530;
  v119 = v7;
  v118 = v29;
  v125 = 0x8000000100235530;
  while (1)
  {
    if (v122)
    {
      v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(v121 + 16))
      {
        goto LABEL_83;
      }

      v32 = *(v120 + 8 * v30);
    }

    v127 = v32;
    v33 = __OFADD__(v30, 1);
    v34 = v30 + 1;
    if (v33)
    {
      goto LABEL_82;
    }

    v124 = v34;
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    v134._countAndFlagsBits = 0x6976726553504148;
    v134._object = 0xEB00000000206563;
    result = [v127 instanceID];
    if (!result)
    {
      goto LABEL_99;
    }

    v35 = result;
    v132 = 0;
    v133 = 1;
    result = static Int._forceBridgeFromObjectiveC(_:result:)();
    if (v133)
    {
      goto LABEL_98;
    }

    v36 = v132;

    v132 = v36;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    result = [v127 type];
    if (!result)
    {
      goto LABEL_97;
    }

    v39 = result;
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43._countAndFlagsBits = v40;
    v43._object = v42;
    String.append(_:)(v43);

    String.append(_:)(v134);

    if (qword_1002A6700 != -1)
    {
      swift_once();
    }

    v44 = qword_1002B1BA8;
    result = [v127 type];
    if (!result)
    {
      goto LABEL_96;
    }

    v45 = result;
    v130 = objc_opt_self();
    v46 = [v130 UUIDWithString:v45];

    if (*(v44 + 16) && (v47 = sub_10016D848(v46), (v48 & 1) != 0))
    {
      v49 = (*(v44 + 56) + 16 * v47);
      v50 = *v49;
      v51 = v49[1];

      v134._countAndFlagsBits = 10272;
      v134._object = 0xE200000000000000;
      v52._countAndFlagsBits = v50;
      v52._object = v51;
      String.append(_:)(v52);

      v53._countAndFlagsBits = 41;
      v53._object = 0xE100000000000000;
      String.append(_:)(v53);
      String.append(_:)(v134);
    }

    else
    {
    }

    v54 = [v127 propertiesDescription];
    if (v54)
    {
      v56 = v54;
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v134._countAndFlagsBits = 32;
      v134._object = 0xE100000000000000;
      v60._countAndFlagsBits = v57;
      v60._object = v59;
      String.append(_:)(v60);

      String.append(_:)(v134);
    }

    v134._countAndFlagsBits = 0x3D20656D614E2820;
    v134._object = 0xE900000000000020;
    v61 = v127;
    v62 = sub_1001A95A4(v127, v55);
    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v62 = 4271950;
      v64 = 0xE300000000000000;
    }

    v65 = v64;
    String.append(_:)(*&v62);

    v66._countAndFlagsBits = 41;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    String.append(_:)(v134);

    v67._countAndFlagsBits = 686858;
    v67._object = 0xE300000000000000;
    String.append(_:)(v67);
    result = [v61 characteristics];
    if (!result)
    {
      goto LABEL_95;
    }

    v68 = result;
    sub_100095B94(0, &qword_1002A92F0, off_100271C60);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v125;
    if (v7 >> 62)
    {
      break;
    }

    v69 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_39;
    }

LABEL_16:

    v31._countAndFlagsBits = 2685;
    v31._object = 0xE200000000000000;
    String.append(_:)(v31);

    v30 = v124;
    v1 = v123;
    v7 = v119;
    if (v124 == v118)
    {
      goto LABEL_86;
    }
  }

  v69 = _CocoaArrayWrapper.endIndex.getter();
  if (!v69)
  {
    goto LABEL_16;
  }

LABEL_39:
  v70 = 0;
  v128 = (v7 & 0xFFFFFFFFFFFFFF8);
  v129 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v129)
    {
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v1 = &selRef_setField_;
      v71 = (v70 + 1);
      if (__OFADD__(v70, 1))
      {
        goto LABEL_79;
      }
    }

    else
    {
      v1 = &selRef_setField_;
      if (v70 >= *(v128 + 2))
      {
        goto LABEL_80;
      }

      v2 = *(v7 + 8 * v70 + 32);
      v71 = (v70 + 1);
      if (__OFADD__(v70, 1))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    v131 = v71;
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    _StringGuts.grow(_:)(26);

    v134._countAndFlagsBits = 0xD000000000000014;
    v134._object = v5;
    result = [v2 instanceID];
    if (!result)
    {
      break;
    }

    v72 = result;
    v132 = 0;
    v133 = 1;
    result = static Int._forceBridgeFromObjectiveC(_:result:)();
    if (v133)
    {
      goto LABEL_89;
    }

    v73 = v132;

    v132 = v73;
    v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v74);

    v75._countAndFlagsBits = 32;
    v75._object = 0xE100000000000000;
    String.append(_:)(v75);
    result = [v2 v1[274]];
    if (!result)
    {
      goto LABEL_91;
    }

    v76 = result;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    v80._countAndFlagsBits = v77;
    v80._object = v79;
    String.append(_:)(v80);

    v81._countAndFlagsBits = 32;
    v81._object = 0xE100000000000000;
    String.append(_:)(v81);
    String.append(_:)(v134);

    if (qword_1002A6708 != -1)
    {
      swift_once();
    }

    v82 = qword_1002B1BB0;
    result = [v2 v1[274]];
    if (!result)
    {
      goto LABEL_90;
    }

    v83 = result;
    v84 = [v130 UUIDWithString:result];

    if (*(v82 + 16) && (v85 = sub_10016D848(v84), (v86 & 1) != 0))
    {
      v87 = (*(v82 + 56) + 16 * v85);
      v89 = *v87;
      v88 = v87[1];

      v134._countAndFlagsBits = 40;
      v134._object = 0xE100000000000000;
      v90._countAndFlagsBits = v89;
      v90._object = v88;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 8233;
      v91._object = 0xE200000000000000;
      String.append(_:)(v91);
      String.append(_:)(v134);
    }

    else
    {
    }

    v92 = [v2 metadata];
    if (v92)
    {
      v93 = v92;
      v94 = [v92 format];
      if (v94)
      {
        v95 = v94;
        v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v97;

        if (v96 == 0x676E69727473 && v98 == 0xE600000000000000)
        {

          goto LABEL_59;
        }

        v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v99)
        {
LABEL_59:
          v134._countAndFlagsBits = 0x203A65756C6156;
          v134._object = 0xE700000000000000;
          result = [v2 v1[274]];
          if (!result)
          {
            goto LABEL_94;
          }

          v100 = result;
          v101 = v130;
          v102 = [v130 UUIDWithString:result];

          result = [v127 v1[274]];
          if (!result)
          {
            goto LABEL_93;
          }

          v103 = result;
          v104 = [v101 UUIDWithString:result];

          v105 = swift_allocObject();
          *(v105 + 24) = 0;
          *(v105 + 16) = 0;
          v106 = countAndFlagsBits;

          sub_1001ACE00(v102, v104, v106, v106, v105);

          swift_beginAccess();
          v107 = *(v105 + 16);
          v108 = *(v105 + 24);

          if (v108)
          {
            v109 = v107;
          }

          else
          {
            v109 = 4271950;
          }

          if (!v108)
          {
            v108 = 0xE300000000000000;
          }

          v110 = v108;
          String.append(_:)(*&v109);

          v111._countAndFlagsBits = 2592;
          v111._object = 0xE200000000000000;
          String.append(_:)(v111);
          String.append(_:)(v134);

          v5 = v125;
        }
      }
    }

    result = [v2 shortDescription];
    if (!result)
    {
      goto LABEL_92;
    }

    v112 = result;
    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v134._countAndFlagsBits = 0x202020200A7BLL;
    v134._object = 0xE600000000000000;
    v116._countAndFlagsBits = v113;
    v116._object = v115;
    String.append(_:)(v116);

    v117._countAndFlagsBits = 0xA7D20200ALL;
    v117._object = 0xE500000000000000;
    String.append(_:)(v117);

    String.append(_:)(v134);

    ++v70;
    if (v131 == v69)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1001DE700(void *a1)
{
  v87 = type metadata accessor for UUID();
  v2 = *(v87 - 8);
  v3 = __chkstk_darwin(v87);
  v86 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v85 = &v74 - v5;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  v7 = [a1 services];
  if (!v7)
  {
LABEL_86:
    __break(1u);
  }

  v8 = v7;
  sub_100095B94(0, &qword_1002A7010, off_100271C78);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = v6;
  v79 = v9;
  v74 = v6 + 16;
  if (v9 >> 62)
  {
LABEL_83:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      v11 = 0;
      v81 = 0;
      v91 = v79 & 0xFFFFFFFFFFFFFF8;
      v92 = v79 & 0xC000000000000001;
      v90 = v79 + 32;
      v83 = (v2 + 8);
      v80 = v10;
      do
      {
        if (v92)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v91 + 16))
          {
            goto LABEL_77;
          }

          v12 = *(v90 + 8 * v11);
        }

        v13 = v12;
        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v15 = [v12 type];
        if (!v15)
        {
          __break(1u);
          goto LABEL_86;
        }

        v16 = v15;
        v17 = [objc_opt_self() UUIDWithString:v15];

        v18 = [v17 data];
        v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        sub_1001A36A0(12, v19, v21, v95);
        v23 = v95[0];
        v22 = v95[1];
        v24 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
        *(&v97 + 1) = v24;
        v98 = sub_1000E4D54(&qword_1002A9C30, &unk_1002A7B10, &unk_10023F3A0, &protocol conformance descriptor for <A> [A]);
        *&v96 = &off_100274C58;
        v25 = sub_1000A09E0(&v96, v24);
        v26 = *v25;
        v27 = *(*v25 + 16);
        if (v27)
        {
          if (v27 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v94 = v27;
            memcpy(__dst, (v26 + 32), v27);
            v30 = *__dst;
            v2 = v82 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v94 << 16)) << 32);
            v82 = v2;
          }

          else
          {
            type metadata accessor for __DataStorage();
            swift_allocObject();
            v28 = __DataStorage.init(bytes:length:)();
            v29 = v28;
            if (v27 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v30 = swift_allocObject();
              *(v30 + 16) = 0;
              *(v30 + 24) = v27;
              v2 = v29 | 0x8000000000000000;
            }

            else
            {
              v30 = v27 << 32;
              v2 = v28 | 0x4000000000000000;
            }
          }
        }

        else
        {
          v30 = 0;
          v2 = 0xC000000000000000;
        }

        sub_100095808(&v96);
        v31 = v22 >> 62;
        v32 = v2 >> 62;
        if (v22 >> 62 == 3)
        {
          v33 = 0;
          if (!v23 && v22 == 0xC000000000000000 && v2 >> 62 == 3)
          {
            v33 = 0;
            if (!v30 && v2 == 0xC000000000000000)
            {
              v34 = 0;
              v35 = 0xC000000000000000;
              goto LABEL_49;
            }
          }
        }

        else if (v31)
        {
          if (v31 == 1)
          {
            LODWORD(v33) = HIDWORD(v23) - v23;
            if (__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_82;
            }

            v33 = v33;
          }

          else
          {
            v37 = *(v23 + 16);
            v36 = *(v23 + 24);
            v14 = __OFSUB__(v36, v37);
            v33 = v36 - v37;
            if (v14)
            {
              goto LABEL_81;
            }
          }
        }

        else
        {
          v33 = BYTE6(v22);
        }

        if (v32 > 1)
        {
          if (v32 != 2)
          {
            if (v33)
            {
              sub_1000A0D2C(v23, v22);

              continue;
            }

LABEL_48:
            sub_1000A0D2C(v30, v2);
            v34 = v23;
            v35 = v22;
LABEL_49:
            sub_1000A0D2C(v34, v35);
            goto LABEL_50;
          }

          v39 = *(v30 + 16);
          v38 = *(v30 + 24);
          v14 = __OFSUB__(v38, v39);
          v40 = v38 - v39;
          if (v14)
          {
            goto LABEL_79;
          }

          if (v33 != v40)
          {
            goto LABEL_5;
          }
        }

        else if (v32)
        {
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_80;
          }

          if (v33 != HIDWORD(v30) - v30)
          {
LABEL_5:
            sub_1000A0D2C(v30, v2);
            sub_1000A0D2C(v23, v22);
LABEL_6:

            continue;
          }
        }

        else if (v33 != BYTE6(v2))
        {
          goto LABEL_5;
        }

        if (v33 < 1)
        {
          goto LABEL_48;
        }

        sub_1000A0CD8(v30, v2);
        v41 = v81;
        v42 = sub_1001AC714(v23, v22, v30, v2);
        v81 = v41;
        sub_1000A0D2C(v30, v2);
        sub_1000A0D2C(v23, v22);
        if ((v42 & 1) == 0)
        {

          v10 = v80;
          continue;
        }

        v10 = v80;
LABEL_50:
        if (sub_10013C30C() < 0x300 || sub_10013C30C() > 0x320)
        {
          goto LABEL_6;
        }

        v89 = v17;
        if (qword_1002A6780 != -1)
        {
          swift_once();
        }

        v43 = qword_1002B1CF0;
        v44 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
        v45 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

        os_unfair_lock_lock(v45 + 4);

        v46 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
        v2 = *(v43 + v44);
        v47 = v46;

        os_unfair_lock_unlock((v2 + 16));

        if (v46)
        {
          v48 = *(v43 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
          v78 = v47;
          v88 = dispatch thunk of DockCoreAccessory.info.getter();
          v76 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v49 = *&v48[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          OS_dispatch_semaphore.wait()();

          v50 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v77 = v48;
          v51 = *&v48[v50];
          v2 = *(v51 + 16);

          v84 = v2;
          if (v2)
          {
            v52 = 0;
            v53 = v51 + 32;
            while (1)
            {
              if (v52 >= *(v51 + 16))
              {
                goto LABEL_78;
              }

              v54 = v13;
              sub_1000A097C(v53, v95);
              v55 = *(*sub_1000A09E0(v95, v95[3]) + 24);
              v56 = v85;
              DockCoreInfo.identifier.getter();

              v57 = v86;
              DockCoreInfo.identifier.getter();
              LOBYTE(v55) = static UUID.== infix(_:_:)();
              v58 = *v83;
              v59 = v57;
              v60 = v87;
              (*v83)(v59, v87);
              v58(v56, v60);
              if (v55)
              {
                break;
              }

              ++v52;
              sub_100095808(v95);
              v53 += 40;
              v13 = v54;
              v2 = v89;
              if (v84 == v52)
              {
                goto LABEL_64;
              }
            }

            v2 = v77;
            v63 = *&v77[v76];
            OS_dispatch_semaphore.signal()();

            sub_1000A097C(v95, &v96);
            sub_100095808(v95);
            v10 = v80;
            if (*(&v97 + 1))
            {
              v2 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
              type metadata accessor for DaemonAccessory(0);
              if (swift_dynamicCast())
              {
                v2 = v95[0];
                sub_100095274(&qword_1002AC8E0, &qword_10023FF38);
                v64 = swift_allocBox();
                v66 = v65;
                v67 = type metadata accessor for ComponentType();
                (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
                if (qword_1002A6758 != -1)
                {
                  swift_once();
                }

                v68 = qword_1002B1C70;
                v69 = v75;

                v70 = v89;
                sub_1001AD874(v68, v89, v2, v69, v64);

                if (qword_1002A6760 != -1)
                {
                  swift_once();
                }

                v71 = qword_1002B1C78;

                sub_1001AD8E8(v71, v70, v2, v69, v64);
              }

              else
              {
              }

              continue;
            }
          }

          else
          {
            v2 = v89;
LABEL_64:

            v61 = v77;
            v62 = *&v77[v76];
            OS_dispatch_semaphore.signal()();

            v98 = 0;
            v96 = 0u;
            v97 = 0u;
            v10 = v80;
          }

          sub_100095C84(&v96, &unk_1002A6F40, &unk_10023BE90);
        }

        else
        {

          v10 = v80;
        }
      }

      while (v11 != v10);
    }
  }

  swift_beginAccess();
  v72 = *(v75 + 16);

  return v72;
}

void sub_1001DF270()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v57 - v5;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v7 = qword_1002B1CF0;
    v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v9 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v9 + 4);

    v10 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v11 = *(v7 + v8);
    v12 = v10;

    os_unfair_lock_unlock(v11 + 4);

    if (!v10)
    {
      return;
    }

    v13 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v57 = v12;
    v60 = dispatch thunk of DockCoreAccessory.info.getter();
    v58 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v14 = *&v13[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    OS_dispatch_semaphore.wait()();

    v15 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v59 = v13;
    v16 = *&v13[v15];
    v17 = *(v16 + 16);

    if (!v17)
    {
      break;
    }

    v18 = 0;
    v19 = v1;
    v1 = v16 + 32;
    v20 = (v19 + 8);
    while (v18 < *(v16 + 16))
    {
      sub_1000A097C(v1, &v61);
      v21 = *(*sub_1000A09E0(&v61, v62) + 24);
      DockCoreInfo.identifier.getter();

      DockCoreInfo.identifier.getter();
      LOBYTE(v21) = static UUID.== infix(_:_:)();
      v22 = *v20;
      (*v20)(v4, v0);
      v22(v6, v0);
      if (v21)
      {

        v23 = v59;
        v25 = *&v59[v58];
        OS_dispatch_semaphore.signal()();

        sub_1000A097C(&v61, &v63);
        sub_100095808(&v61);
        goto LABEL_10;
      }

      ++v18;
      sub_100095808(&v61);
      v1 += 40;
      if (v17 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_8:

  v23 = v59;
  v24 = *&v59[v58];
  OS_dispatch_semaphore.signal()();

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
LABEL_10:

  v26 = v57;
  if (!*(&v64 + 1))
  {

    sub_100095C84(&v63, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    return;
  }

  countAndFlagsBits = v61._countAndFlagsBits;
  v28 = *(v61._countAndFlagsBits + 32);
  if (!v28 || (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) == 0))
  {

    goto LABEL_20;
  }

  v30 = v29;
  v31 = *(countAndFlagsBits + 24);
  v32 = v28;
  v33 = [v31 description];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *&v63 = v34;
  *(&v63 + 1) = v36;
  v37._countAndFlagsBits = 10;
  v37._object = 0xE100000000000000;
  String.append(_:)(v37);
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  v38 = v32;
  v39 = [v30 primaryAccessory];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 description];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);

    String.append(_:)(v61);

    v46 = [v30 primaryAccessory];
    if (v46)
    {
      v47 = v46;
      v48 = sub_1001DD864(v46);
      v50 = v49;

      v51._countAndFlagsBits = v48;
      v51._object = v50;
      String.append(_:)(v51);

      v52 = [v30 primaryAccessory];

      if (v52)
      {
        v53 = sub_1001DE700(v52);
        v55 = v54;

        v56._countAndFlagsBits = v53;
        v56._object = v55;
        String.append(_:)(v56);

        return;
      }

      goto LABEL_26;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

_OWORD *sub_1001DF7DC(int a1, id **a2)
{
  if (!(*a2)[2] || (sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL), (v5 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v21 = *a2;
    *a2 = 0x8000000000000000;
    sub_1001ED6A4(_swiftEmptyArrayStorage, 0x6F69746175746361, 0xE90000000000006ELL, isUniquelyReferenced_nonNull_native);
    *a2 = v21;
  }

  v22 = &type metadata for Int32;
  LODWORD(v21) = a1;
  v7 = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a2;
  v20 = *a2;
  *a2 = 0x8000000000000000;
  v10 = sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
LABEL_16:
    v8 = sub_100103664(0, v8[2] + 1, 1, v8);
    goto LABEL_12;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (v7)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_1001F02A0();
      if ((v14 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    sub_1001E97E0(v13, v7);
    v15 = sub_10016D4D0(0x6F69746175746361, 0xE90000000000006ELL);
    if ((v14 & 1) != (v16 & 1))
    {
LABEL_19:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v10 = v15;
    if ((v14 & 1) == 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  v2 = v20;
  v8 = *(v20[7] + v10);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  v18 = v8[2];
  v17 = v8[3];
  if (v18 >= v17 >> 1)
  {
    v8 = sub_100103664((v17 > 1), v18 + 1, 1, v8);
  }

  v8[2] = (v18 + 1);
  result = sub_1000FEA30(&v21, &v8[4 * v18 + 4]);
  *(v2[7] + v10) = v8;
  *a2 = v2;
  return result;
}

void sub_1001DF9E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a2;
  v121 = a4;
  v123 = a3;
  v5 = type metadata accessor for Logger();
  v119 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v109 = &v102 - v9;
  __chkstk_darwin(v8);
  v122 = &v102 - v10;
  v11 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v12 = __chkstk_darwin(v11 - 8);
  v118 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v113 = &v102 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v102 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v102 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v102 - v23;
  __chkstk_darwin(v22);
  v26 = &v102 - v25;
  v27 = type metadata accessor for Errors();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v29(v26, 1, 1, v27);
  if (!a1)
  {
    sub_100095C84(v26, &unk_1002A6F30, &unk_10023C4D0);
    *v24 = 0xD000000000000012;
    *(v24 + 1) = 0x800000010022F110;
    (*(v28 + 104))(v24, enum case for Errors.NotFound(_:), v27);
    v29(v24, 0, 1, v27);
    sub_1000A089C(v24, v26);
    sub_1000B5150(v26, v21, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v28 + 48))(v21, 1, v27) == 1)
    {
      sub_100095C84(v21, &unk_1002A6F30, &unk_10023C4D0);
      v48 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v48 = v124[0];
    }

    (*(v121 + 16))(v121, 0, v48);
    goto LABEL_27;
  }

  v111 = v29;
  v112 = v28 + 56;
  v114 = v28;
  v115 = v27;
  v30 = v119;
  v31 = *(v119 + 16);
  v105 = OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger;
  v106 = v31;
  v32 = a1;
  v107 = v119 + 16;
  v108 = v18;
  v31(v122, v123 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v5);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v5;
  v116 = v26;
  v117 = v33;
  v104 = v32;
  if (v36)
  {
    v38 = swift_slowAlloc();
    v39 = v30;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v103 = v37;
    v42 = v41;
    v124[0] = v41;
    *v38 = 138412546;
    *(v38 + 4) = v33;
    *v40 = v32;
    *(v38 + 12) = 2080;
    v43 = v33;
    v44 = DockState.description.getter();
    v46 = sub_1000952D4(v44, v45, v124);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v34, v35, "Setting %@ state to d=%s", v38, 0x16u);
    sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);

    sub_100095808(v42);
    v37 = v103;

    v47 = v39;
  }

  else
  {

    v47 = v30;
  }

  v49 = *(v47 + 8);
  v49(v122, v37);
  v50 = v123;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v51 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_docked);
  v52 = v117;
  if (v51)
  {
    sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
    v53 = v37;
    v54 = v51;
    v55 = dispatch thunk of DockCoreAccessory.info.getter();
    static NSObject.== infix(_:_:)();

    v37 = v53;
  }

  v56 = sub_1001884E4(v52);
  if (!v56)
  {
LABEL_21:
    v26 = v116;
    sub_100095C84(v116, &unk_1002A6F30, &unk_10023C4D0);
    *v24 = 0xD000000000000013;
    *(v24 + 1) = 0x8000000100231F30;
    v70 = v114;
    v69 = v115;
    (*(v114 + 104))(v24, enum case for Errors.NotFound(_:), v115);
    v111(v24, 0, 1, v69);
    sub_1000A089C(v24, v26);
    v71 = v118;
    sub_1000B5150(v26, v118, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v70 + 48))(v71, 1, v69) == 1)
    {
      sub_100095C84(v71, &unk_1002A6F30, &unk_10023C4D0);
      v48 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v48 = v124[0];
    }

    (*(v121 + 16))(v121, 0, v48);

LABEL_27:
    v72 = v26;
LABEL_28:
    sub_100095C84(v72, &unk_1002A6F30, &unk_10023C4D0);
    return;
  }

  v57 = v56;
  if ((sub_100198D24(v56, v120) & 1) == 0)
  {

    goto LABEL_21;
  }

  type metadata accessor for DockCoreManager();
  if ((static DockCoreManager.debugAllowed.getter() & 1) == 0 || (DockCoreInfo.type.getter(), v58 = DockCoreAccessoryType.rawValue.getter(), v58 != DockCoreAccessoryType.rawValue.getter()))
  {
    v73 = v116;
    v74 = v113;
    sub_1000B5150(v116, v113, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v114 + 48))(v74, 1, v115) == 1)
    {
      sub_100095C84(v74, &unk_1002A6F30, &unk_10023C4D0);
      v75 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v75 = v124[0];
    }

    (*(v121 + 16))(v121, 1, v75);

    v76 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100118354(v76);

    v72 = v73;
    goto LABEL_28;
  }

  v59 = DockState.rawValue.getter();
  v60 = DockState.rawValue.getter();
  v122 = v57;
  if (v59 == v60 && (v61 = DockState.rawValue.getter(), v61 != DockState.rawValue.getter()))
  {
    v77 = v109;
    v78 = v37;
    v106(v109, v50 + v105, v37);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Mock device - not scanning, immediately marking as connected", v81, 2u);
    }

    v49(v77, v78);
    v82 = v52;
    sub_100189054(v104);
    v64 = 0;
  }

  else
  {
    v62 = DockState.rawValue.getter();
    if (v62 != DockState.rawValue.getter() || (v63 = DockState.rawValue.getter(), v63 == DockState.rawValue.getter()))
    {
      v64 = 0;
      v65 = v115;
      v66 = v116;
      v67 = v121;
      v68 = v114;
      goto LABEL_41;
    }

    v83 = v110;
    v106(v110, v50 + v105, v37);
    v84 = v37;
    v85 = v57;
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v103 = v84;
      v90 = v89;
      v124[0] = v89;
      *v88 = 136315138;
      v91 = dispatch thunk of DockCoreAccessory.info.getter();
      v92 = DockCoreInfo.name.getter();
      v94 = v93;

      v95 = sub_1000952D4(v92, v94, v124);

      *(v88 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v86, v87, "Tearing down debug accessory for %s", v88, 0xCu);
      sub_100095808(v90);

      v52 = v117;

      v96 = v110;
      v97 = v103;
    }

    else
    {

      v96 = v83;
      v97 = v84;
    }

    v49(v96, v97);
    sub_100189054(0);
    v82 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100197D90(v82);
    v64 = 1;
  }

  v65 = v115;
  v66 = v116;
  v67 = v121;
  v68 = v114;

LABEL_41:
  v98 = v108;
  sub_1000B5150(v66, v108, &unk_1002A6F30, &unk_10023C4D0);
  if ((*(v68 + 48))(v98, 1, v65) == 1)
  {
    sub_100095C84(v98, &unk_1002A6F30, &unk_10023C4D0);
    v99 = 0;
  }

  else
  {
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    swift_dynamicCast();
    v99 = v124[0];
  }

  (*(v67 + 16))(v67, 1, v99);

  if (v64)
  {
    v100 = v122;
    v101 = dispatch thunk of DockCoreAccessory.info.getter();
    sub_100118354(v101);

    v72 = v66;
    goto LABEL_28;
  }

  sub_100095C84(v66, &unk_1002A6F30, &unk_10023C4D0);
}

void sub_1001E0674(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Errors();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    *v9 = 0xD000000000000012;
    v9[1] = 0x800000010022F110;
    (*(v7 + 104))(v9, enum case for Errors.NotFound(_:), v6);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v7 + 16))(v22, v9, v6);
    v23 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v23);

    (*(v7 + 8))(v9, v6);

    return;
  }

  v10 = a1;
  v11 = AccessorySystemEvent.header.getter();
  type metadata accessor for AccessorySystemEvent();
  v12 = &unk_1002B1000;
  if (v11 == static AccessorySystemEvent.kHeaderCameraShutter.getter())
  {
    v13 = AccessorySystemEvent.payload.getter();
    if (v13 == static AccessorySystemEvent.kHeaderEventRelease.getter())
    {
      if (qword_1002A6780 != -1)
      {
        swift_once();
      }

      v14 = qword_1002B1CF0;
      v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
      v15 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

      os_unfair_lock_lock(v15 + 4);

      v16 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
      v17 = *(v16 + 16);
      if (v17)
      {
        v34 = v10;
        v35 = a3;
        v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;

        swift_beginAccess();
        v10 = 0;
        v18 = (v16 + 40);
        while (v10 < *(v16 + 16))
        {
          if (*(*(v12 + v14) + 16))
          {
            v20 = *(v18 - 1);
            v19 = *v18;

            sub_10016D4D0(v20, v19);
            a3 = v21;

            if (a3)
            {

              v10 = v34;
              a3 = v35;
              v12 = &unk_1002B1000;
              goto LABEL_17;
            }
          }

          ++v10;
          v18 += 2;
          if (v17 == v10)
          {

            v10 = v34;
            a3 = v35;
            v12 = &unk_1002B1000;
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_15:
      v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
      swift_beginAccess();
      v25 = *(v14 + v24);

      v26 = cameracaptureIdentifier.getter();
      if (*(v25 + 16))
      {
        sub_10016D4D0(v26, v27);
        v29 = v28;

        if (v29)
        {
LABEL_17:
          v30 = *(v14 + v36);

          os_unfair_lock_unlock(v30 + 4);

          goto LABEL_18;
        }
      }

      else
      {
      }

      v32 = *(v14 + v36);

      os_unfair_lock_unlock(v32 + 4);

      sub_100187818();
      goto LABEL_20;
    }
  }

LABEL_18:
  if (qword_1002A6780 != -1)
  {
LABEL_24:
    swift_once();
  }

  v31 = *(*(v12[414] + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager) + OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_server);
  sub_1001688C0(v10, a2);

LABEL_20:
  (*(a3 + 16))(a3, 1, 0);
}

void sub_1001E0AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 processIdentifier];
    (*(v9 + 16))(v14, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Client %d registering for debug notifications", v20, 8u);
    }

    (*(v9 + 8))(v14, v8);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v21 = qword_1002B1CF0;
    v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);
    v24 = v16;

    os_unfair_lock_lock(v23 + 4);

    v25 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
    swift_beginAccess();
    v26 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v21 + v25);
    *(v21 + v25) = 0x8000000000000000;
    sub_1001EC648(v26, v17, isUniquelyReferenced_nonNull_native);
    *(v21 + v25) = v34;
    swift_endAccess();
    v28 = *(v21 + v22);

    os_unfair_lock_unlock(v28 + 4);

    (*(a2 + 16))(a2, 1, 0);
  }

  else
  {
    (*(v9 + 16))(v12, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v8);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed fetching current NSXPCConnection, cannot construct client", v31, 2u);
    }

    (*(v9 + 8))(v12, v8);
    *v7 = 0xD000000000000029;
    v7[1] = 0x800000010022F170;
    (*(v5 + 104))(v7, enum case for Errors.XPCNil(_:), v4);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v5 + 16))(v32, v7, v4);
    v33 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v33);

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1001E0FFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = [objc_opt_self() currentConnection];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 processIdentifier];
    (*(v9 + 16))(v14, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Client %d de-registering for debug notifications", v20, 8u);
    }

    (*(v9 + 8))(v14, v8);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v21 = qword_1002B1CF0;
    v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v23 + 4);

    swift_beginAccess();
    v24 = sub_1001E4BFC(v17);
    swift_endAccess();

    v25 = *(v21 + v22);

    os_unfair_lock_unlock(v25 + 4);

    (*(a2 + 16))(a2, 1, 0);
  }

  else
  {
    (*(v9 + 16))(v12, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed fetching current NSXPCConnection, cannot construct client", v28, 2u);
    }

    (*(v9 + 8))(v12, v8);
    *v7 = 0xD000000000000029;
    v7[1] = 0x800000010022F170;
    (*(v5 + 104))(v7, enum case for Errors.XPCNil(_:), v4);
    sub_1001E2DC4(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
    swift_allocError();
    (*(v5 + 16))(v29, v7, v4);
    v30 = _convertErrorToNSError(_:)();
    (*(a2 + 16))(a2, 0, v30);

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1001E14C8(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v14;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2DA0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B628;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1694(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v14;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2D7C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B5B0;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1860(char a1, uint64_t a2, uint64_t a3)
{
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2D1C;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2EE4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B538;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

uint64_t sub_1001E1A24(char a1, uint64_t a2, uint64_t a3)
{
  v13 = _swiftEmptyArrayStorage;
  v5 = *(a2 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_clientQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = &v13;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001E2CBC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1001E2CF4;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001DB720;
  aBlock[3] = &unk_10027B4C0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {

    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(a3 + 16))(a3, isa, 0);
  }

  return result;
}

void sub_1001E1BE8(void (**a1)(void, void, void))
{
  v78 = sub_1001F3FAC(_swiftEmptyArrayStorage);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v1 = qword_1002B1CF0;
    sub_1001946C0(qword_1002B1CF0, &v78);
    sub_1001F1BBC(_swiftEmptyArrayStorage);

    v2 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v3 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v3 + 4);

    v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyDebugClients;
    swift_beginAccess();
    v5 = *(v1 + v4);
    v70 = v2;
    v71 = v1;
    v6 = *(v1 + v2);

    os_unfair_lock_unlock(v6 + 4);

    v7 = 0;
    v9 = v5 + 64;
    v8 = *(v5 + 64);
    v72 = v5;
    v10 = 1 << *(v5 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & v8;
    v13 = (v10 + 63) >> 6;
    if ((v11 & v8) != 0)
    {
      break;
    }

LABEL_5:
    while (1)
    {
      v14 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        goto LABEL_27;
      }

      v12 = *(v9 + 8 * v14);
      ++v7;
      if (v12)
      {
        v7 = v14;
        goto LABEL_9;
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
    swift_once();
  }

  while (1)
  {
LABEL_9:
    v15 = __clz(__rbit64(v12)) | (v7 << 6);
    v16 = *(*(v72 + 48) + 4 * v15);
    v17 = v78;
    v18 = v78[2];
    v19 = *(*(v72 + 56) + 8 * v15);
    if (!v18 || (sub_10016D4D0(0x6775626564, 0xE500000000000000), (v20 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v76 = v17;
      sub_1001ED6A4(_swiftEmptyArrayStorage, 0x6775626564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v17 = v76;
      v78 = v76;
    }

    v77 = &type metadata for Int32;
    LODWORD(v76) = v16;
    v22 = v19;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v75 = v17;
    v25 = sub_10016D4D0(0x6775626564, 0xE500000000000000);
    v26 = v17[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_55;
    }

    v29 = v24;
    if (v17[3] < v28)
    {
      break;
    }

    if (v23)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1001F02A0();
      if ((v29 & 1) == 0)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        sub_1001F1BBC(_swiftEmptyArrayStorage);

        v35 = *(v71 + v70);

        os_unfair_lock_lock(v35 + 4);

        v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifySensorClients;
        swift_beginAccess();
        v37 = *(v71 + v36);
        v38 = *(v71 + v70);

        os_unfair_lock_unlock(v38 + 4);

        v39 = 0;
        v41 = v37 + 64;
        v40 = *(v37 + 64);
        v73 = v37;
        v42 = 1 << *(v37 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & v40;
        v45 = (v42 + 63) >> 6;
        if ((v43 & v40) == 0)
        {
LABEL_30:
          while (1)
          {
            v46 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_54;
            }

            if (v46 >= v45)
            {
              goto LABEL_52;
            }

            v44 = *(v41 + 8 * v46);
            ++v39;
            if (v44)
            {
              v39 = v46;
              goto LABEL_34;
            }
          }
        }

        while (1)
        {
LABEL_34:
          v47 = __clz(__rbit64(v44)) | (v39 << 6);
          v48 = *(*(v73 + 48) + 4 * v47);
          v49 = v78;
          v50 = v78[2];
          v51 = *(*(v73 + 56) + 8 * v47);
          if (!v50 || (sub_10016D4D0(0x73726F736E6573, 0xE700000000000000), (v52 & 1) == 0))
          {
            v53 = swift_isUniquelyReferenced_nonNull_native();
            *&v76 = v49;
            sub_1001ED6A4(_swiftEmptyArrayStorage, 0x73726F736E6573, 0xE700000000000000, v53);
            v49 = v76;
            v78 = v76;
          }

          v77 = &type metadata for Int32;
          LODWORD(v76) = v48;
          v54 = v51;
          v55 = swift_isUniquelyReferenced_nonNull_native();
          v74 = v49;
          v57 = sub_10016D4D0(0x73726F736E6573, 0xE700000000000000);
          v58 = v49[2];
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_56;
          }

          v61 = v56;
          if (v49[3] >= v60)
          {
            if (v55)
            {
              if ((v56 & 1) == 0)
              {
                goto LABEL_51;
              }
            }

            else
            {
              sub_1001F02A0();
              if ((v61 & 1) == 0)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
            sub_1001E97E0(v60, v55);
            v62 = sub_10016D4D0(0x73726F736E6573, 0xE700000000000000);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_58;
            }

            v57 = v62;
            if ((v61 & 1) == 0)
            {
LABEL_51:
              __break(1u);
LABEL_52:

              sub_1001DB4C4(v78);
              v67 = objc_allocWithZone(type metadata accessor for ClientDictionary());
              v68 = ClientDictionary.init(dictionary:)();
              (a1)[2](a1, v68, 0);

              return;
            }
          }

          v64 = *(v49[7] + v57);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_100103664(0, v64[2] + 1, 1, v64);
          }

          v66 = v64[2];
          v65 = v64[3];
          if (v66 >= v65 >> 1)
          {
            v64 = sub_100103664((v65 > 1), v66 + 1, 1, v64);
          }

          v44 &= v44 - 1;
          v64[2] = (v66 + 1);
          sub_1000FEA30(&v76, &v64[4 * v66 + 4]);
          *(v74[7] + v57) = v64;

          v78 = v74;
          if (!v44)
          {
            goto LABEL_30;
          }
        }
      }
    }

LABEL_19:
    v32 = *(v17[7] + v25);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_100103664(0, v32[2] + 1, 1, v32);
    }

    v34 = v32[2];
    v33 = v32[3];
    if (v34 >= v33 >> 1)
    {
      v32 = sub_100103664((v33 > 1), v34 + 1, 1, v32);
    }

    v12 &= v12 - 1;
    v32[2] = (v34 + 1);
    sub_1000FEA30(&v76, &v32[4 * v34 + 4]);
    *(v75[7] + v25) = v32;

    v78 = v75;
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  sub_1001E97E0(v28, v23);
  v30 = sub_10016D4D0(0x6775626564, 0xE500000000000000);
  if ((v29 & 1) == (v31 & 1))
  {
    v25 = v30;
    if ((v29 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

LABEL_58:
  _Block_release(a1);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1001E227C(uint64_t a1)
{
  sub_100095274(&unk_1002AC888, &qword_10023FEE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10023AAC0;
  strcpy((inited + 32), "dockaccessoryd");
  v4 = qword_1002B1970;
  v3 = *algn_1002B1978;
  *(inited + 47) = -18;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 64), "dockkit-core");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = 0x302E303233;
  *(inited + 88) = 0xE500000000000000;

  sub_1001F29A8(inited);
  swift_setDeallocating();
  sub_100095274(&unk_1002A9C60, &qword_10023FEF0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a1 + 16))(a1, isa, 0);
}

void sub_1001E23C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1 + OBJC_IVAR____TtC14dockaccessoryd9dockDebug_logger, v4);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Got here! Do the migration", v10, 2u);
  }

  v11 = (*(v5 + 8))(v7, v4);
  if (qword_1002A6780 != -1)
  {
    v11 = swift_once();
  }

  v13 = sub_1000FF338(v11, v12);
  (*(a2 + 16))(a2, v13 == 0, v13);
}

uint64_t sub_1001E258C(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 processIdentifier];
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 valueForEntitlement:v8];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  aBlock = v53;
  v50 = v54;
  if (*(&v54 + 1))
  {
    v10 = swift_dynamicCast();
    if (v10)
    {
      v12 = v47;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v48;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100095C84(&aBlock, &qword_1002A9210, &unk_10023BE70);
    v12 = 0;
    v13 = 0;
  }

  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v43 = sub_10019B91C(a1, v11);
  v15 = v14;
  if (qword_1002A67A8 != -1)
  {
    swift_once();
  }

  v16 = sub_100093DE8(v3, qword_1002AC810);
  (*(v4 + 16))(v6, v16, v3);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v44 = v6;
  v19 = v18;

  v20 = os_log_type_enabled(v17, v19);
  v46 = v7;
  v45 = v12;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v42 = v4;
    v22 = v21;
    *&v53 = swift_slowAlloc();
    *v22 = 67109634;
    *(v22 + 4) = v7;
    *(v22 + 8) = 2080;
    *&aBlock = v12;
    *(&aBlock + 1) = v13;

    sub_100095274(&unk_1002A6F20, &unk_10023C660);
    v41 = v3;
    v23 = String.init<A>(describing:)();
    v25 = sub_1000952D4(v23, v24, &v53);

    *(v22 + 10) = v25;
    *(v22 + 18) = 2080;
    *&aBlock = v43;
    *(&aBlock + 1) = v15;
    v26 = String.init<A>(describing:)();
    v28 = sub_1000952D4(v26, v27, &v53);

    *(v22 + 20) = v28;
    _os_log_impl(&_mh_execute_header, v17, v19, "new connection from pid %d, appID entitlement %s, appID %s", v22, 0x1Cu);
    swift_arrayDestroy();

    (*(v42 + 8))(v44, v41);
  }

  else
  {

    (*(v4 + 8))(v44, v3);
  }

  v29 = objc_opt_self();
  v44 = [v29 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore23DockDaemonDebugProtocol_];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v46;
  v33 = v45;
  *(v31 + 24) = v45;
  *(v31 + 32) = v13;
  *(v31 + 40) = v30;
  v51 = sub_1001E2C3C;
  v52 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v50 = sub_100147FC8;
  *(&v50 + 1) = &unk_10027B3F8;
  v34 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler:v34];
  _Block_release(v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v33;
  *(v35 + 32) = v13;
  *(v35 + 40) = v30;
  v51 = sub_1001E2C80;
  v52 = v35;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v50 = sub_100147FC8;
  *(&v50 + 1) = &unk_10027B448;
  v36 = _Block_copy(&aBlock);

  [a1 setInterruptionHandler:v36];
  _Block_release(v36);
  v37 = v44;
  [a1 setExportedInterface:v44];
  v38 = [v29 interfaceWithProtocol:&OBJC_PROTOCOL____TtP11DockKitCore23DockClientDebugProtocol_];
  [a1 setRemoteObjectInterface:v38];
  v39 = [objc_allocWithZone(type metadata accessor for dockDebug(0)) init];
  [a1 setExportedObject:v39];
  [a1 resume];

  return 1;
}

uint64_t sub_1001E2C00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001E2C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001E2D44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E2DC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001E2E0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001E2E44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&qword_1002AC8E0, &qword_10023FF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id *sub_1001E2EFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1001E3DB8(*(a1 + 16), 0);
  v4 = sub_1001F1754(&v6, v3 + 4, v2, a1);
  sub_1000C7084(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

id sub_1001E2F8C(uint64_t a1)
{
  Logger.init(subsystem:category:)();
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_accessories] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSystems;
  *&v1[v3] = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC9A0, &unk_10023FFA0);
  v4 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSensors;
  *&v1[v4] = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC998, &qword_10023FF98);
  v5 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentActuators;
  *&v1[v5] = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC990, &qword_10023FF90);
  v6 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentAttributes;
  *&v1[v6] = sub_1001F3FC0(_swiftEmptyArrayStorage, &qword_1002AC988, &qword_10023FF88);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentActuatorId] = -1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSensorId] = -1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSystemId] = -1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentActuatorType] = 1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSensor] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_error] = 0;
  v7 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_parser;
  *&v1[v7] = [objc_allocWithZone(NSXMLParser) init];
  v8 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_identifier;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v1[v8], a1, v9);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for AccessoryDescriptionParser(0);
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

void sub_1001E31B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    v10 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_error;
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_error) = 0;

    v11 = objc_allocWithZone(NSXMLParser);
    sub_1000A0CD8(v7, v9);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = [v11 initWithData:isa];

    sub_1000A452C(v7, v9);
    v14 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_parser;
    v15 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_parser);
    *(v2 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_parser) = v13;
    v16 = v13;

    [v16 setDelegate:v2];
    sub_1001E349C();
    v17 = [*(v2 + v14) parse];
    v18 = *(v2 + v10);
    if (v17)
    {
      if (!v18)
      {
        sub_1000A452C(v7, v9);
        swift_beginAccess();

        return;
      }
    }

    else if (!v18)
    {
      v19 = type metadata accessor for Errors();
      sub_1001F797C(&qword_1002A6F50, &type metadata accessor for Errors, &protocol conformance descriptor for Errors);
      swift_allocError();
      strcpy(v20, "Unknown error");
      *(v20 + 7) = -4864;
      (*(*(v19 - 8) + 104))(v20, enum case for Errors.ParseFailure(_:), v19);
      goto LABEL_8;
    }

    swift_errorRetain();
LABEL_8:
    swift_willThrow();
    sub_1000A452C(v7, v9);
  }
}

uint64_t sub_1001E349C()
{
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentActuatorId) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSensorId) = -1;
  *(v0 + OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSystemId) = -1;
  v1 = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC9A0, &unk_10023FFA0);
  v2 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSystems;
  swift_beginAccess();
  *(v0 + v2) = v1;

  v3 = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC998, &qword_10023FF98);
  v4 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentSensors;
  swift_beginAccess();
  *(v0 + v4) = v3;

  v5 = sub_1001F3CDC(_swiftEmptyArrayStorage, &qword_1002AC990, &qword_10023FF90);
  v6 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentActuators;
  swift_beginAccess();
  *(v0 + v6) = v5;

  v7 = sub_1001F3FC0(_swiftEmptyArrayStorage, &qword_1002AC988, &qword_10023FF88);
  v8 = OBJC_IVAR____TtC14dockaccessoryd26AccessoryDescriptionParser_currentAttributes;
  swift_beginAccess();
  *(v0 + v8) = v7;
}

id sub_1001E37E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDescriptionParser(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AccessoryDescriptionParser(uint64_t a1)
{
  result = qword_1002AC978;
  if (!qword_1002AC978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001E3998(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v4 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

id *sub_1001E3AA4(uint64_t a1, uint64_t a2)
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

  sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
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

id *sub_1001E3B28(uint64_t a1, uint64_t a2)
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

  sub_100095274(&qword_1002A89B8, &qword_10023D910);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

id *sub_1001E3BAC(uint64_t a1, uint64_t a2)
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

  sub_100095274(&qword_1002ACB40, &qword_10023FEB0);
  v4 = *(type metadata accessor for BTDiscoveredDevice(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_1001E3CAC(uint64_t a1, uint64_t a2)
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

  sub_100095274(&unk_1002AC9F0, &qword_10023FEA0);
  v4 = *(sub_100095274(&qword_1002A98D0, &unk_10023FFF0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}