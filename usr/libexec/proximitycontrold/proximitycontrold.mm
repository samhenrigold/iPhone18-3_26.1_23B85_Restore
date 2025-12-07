uint64_t sub_1000028F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100002958(void *a1)
{
  if (xpc_dictionary_get_string(a1, _xpc_event_key_name))
  {
    v1 = String.init(cString:)();
    v3 = v2;
    if (qword_100338FE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_1003445E0);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      v8 = sub_100017494(v1, v3, &v10);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Received xpc stream event: %s", v6, 0xCu);
      sub_10000903C(v7);
    }

    else
    {
    }
  }
}

char *sub_100002B28()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100035D04(&qword_10033C1B8, qword_100272910);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

char *sub_100002B58()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_100035D04(&qword_100343640, &qword_1002795B8);
  }

  else
  {
    return &type metadata for () + 8;
  }
}

void sub_100002B88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100002BF0(void *a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = qword_100339048;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_100345B60);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = a1;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "FOUND %@", v12, 0xCu);
      sub_1000030B0(v13);
    }

    sub_100004C88(v9);
  }

  if (a2)
  {
    v15 = qword_100339048;
    v16 = a2;
    if (v15 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003078(v17, qword_100345B60);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = a2;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v19, v20, "LOST %@", v21, 0xCu);
      sub_1000030B0(v22);
    }

    v24 = sub_100005688(v18);
  }

  if (qword_100339048 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003078(v25, qword_100345B60);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    v29 = *(*(v3 + 24) + 16) + qword_100346AF8;

    os_unfair_lock_lock(v29);
    v30 = *(*(v29 + 8) + 16);
    os_unfair_lock_unlock(v29);

    *(v28 + 4) = v30;

    _os_log_impl(&_mh_execute_header, v26, v27, "CBDevices changed, count=%ld", v28, 0xCu);
  }

  else
  {
  }

  v31 = *(v3 + 24);
  v32 = *(v31 + 16) + qword_100346AF8;

  os_unfair_lock_lock(v32);
  v33 = sub_10013BC04((v32 + 8));
  os_unfair_lock_unlock(v32);

  sub_100005000(v33 & 1);

  v34 = *(v31 + 16) + qword_100346AF8;

  os_unfair_lock_lock(v34);
  v35 = sub_10013BCF8((v34 + 8));
  os_unfair_lock_unlock(v34);

  sub_100005000(v35 & 1);
}

uint64_t sub_100003078(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000030B0(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100339940, &unk_100272C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003118(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003160(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100002BF0(a1, 0);
  }

  return result;
}

uint64_t sub_1000031CC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return v9 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v36, v35);
  if (swift_dynamicCast())
  {
    sub_10000903C(v36);

    v9 = v34;
    return v9 & 1;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_1001650E4(v13, v15);
    if (v16 != 2)
    {
      v9 = v16;
      sub_10000903C(v36);

      return v9 & 1;
    }

    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100017494(v5, v4, v35);
      v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v18, v19, v22, v20, 0xCu);
      sub_10000903C(v21);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v6 dataForKey:v23];

  if (!v24)
  {
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100017494(v5, v4, v35);
      v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_18;
    }

LABEL_19:

    sub_10000903C(v36);
    v9 = *(v17 + *((swift_isaMask & *v17) + 0x60));
    return v9 & 1;
  }

  v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = v0;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v33 = v27;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_100017494(v5, v4, v35);
    _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v31, 0xCu);
    sub_10000903C(v32);

    sub_100010708(v25, v33);
  }

  else
  {

    sub_100010708(v25, v27);
  }

  sub_10000903C(v36);
  v9 = *(v28 + *((swift_isaMask & *v28) + 0x60));
  return v9 & 1;
}

BOOL sub_1000036FC()
{
  if (qword_100338F18 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v1 = *(qword_10038B0B8 + 272);
    v2 = sub_1000031CC();

    if (v2)
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_10034A190);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "forceShouldStartRanging=true", v6, 2u);
      }

      return 1;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = *(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_bluetoothProxy), v10 = Strong, , v10, !v9))
    {
      if (qword_100339128 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100003078(v17, qword_10034A190);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "### No BT Proxy, cannot determine if we should start ranging", v20, 2u);
      }

      return 0;
    }

    DeviceClass = GestaltGetDeviceClass();
    if (DeviceClass == 7 || DeviceClass == 4)
    {
      break;
    }

    CurrentValueSubject.value.getter();
    LOBYTE(v0) = v60;
    if (v60 == 2)
    {
      CurrentValueSubject.value.getter();

      LOBYTE(v0) = v58;
    }

    else
    {
    }

    v31 = *(*(v9 + 24) + 16);
    __chkstk_darwin(v21);
    sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    swift_getKeyPath();
    v32 = v31 + qword_100346AF8;

    os_unfair_lock_lock(v32);
    v58 = *(v32 + 8);

    swift_getAtKeyPath();

    os_unfair_lock_unlock(v32);

    v33 = *(v60 + 16);
    if (v33)
    {
      v15 = sub_100009194(*(v60 + 16), 0);
      v34 = sub_1001295D4();
      sub_100004F98(v58);
      if (v34 != v33)
      {
        __break(1u);
        goto LABEL_80;
      }
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    v58 = _swiftEmptyArrayStorage;
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_61;
    }

    v35 = *(v15 + 16);
    if (!v35)
    {
      goto LABEL_62;
    }

LABEL_44:
    v57 = v0;
    v36 = 0;
    v0 = v15 & 0xC000000000000001;
    while (1)
    {
      if (v0)
      {
        v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *(v15 + 16))
        {
          goto LABEL_57;
        }

        v37 = *(v15 + 8 * v36 + 32);
      }

      v38 = v37;
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (([v37 nearbyActionFlags] & 8) != 0 || (objc_msgSend(v38, "nearbyActionFlags") & 0x10) != 0)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v36;
      if (v39 == v35)
      {
        v33 = v58;
        LOBYTE(v0) = v57;
        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  v12 = *(*(v9 + 24) + 16);
  __chkstk_darwin(DeviceClass);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  swift_getKeyPath();
  v13 = v12 + qword_100346AF8;

  os_unfair_lock_lock(v13);
  v58 = *(v13 + 8);

  swift_getAtKeyPath();

  os_unfair_lock_unlock(v13);

  v14 = *(v60 + 16);
  if (!v14)
  {

    v15 = _swiftEmptyArrayStorage;
    goto LABEL_23;
  }

  v15 = sub_100009194(*(v60 + 16), 0);
  v16 = sub_1001295D4();
  sub_100004F98(v58);
  if (v16 == v14)
  {

LABEL_23:
    v22 = v15 < 0 || (v15 & 0x4000000000000000) != 0;
    if (v22)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *(v15 + 16);
    }

    v24 = v23 != 0;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003078(v25, qword_10034A190);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v23 != 0;
      v29 = swift_slowAlloc();
      *v29 = 67109632;
      *(v29 + 4) = v28;
      *(v29 + 8) = 2048;
      if (v22)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *(v15 + 16);
      }

      *(v29 + 10) = v30;

      *(v29 + 18) = 1024;
      *(v29 + 20) = 1;
      _os_log_impl(&_mh_execute_header, v26, v27, "Should start ranging = %{BOOL}d (Communal, candidates=%ld), allowGuests=%{BOOL}d", v29, 0x18u);

      return v24;
    }

    else
    {

      return v23 != 0;
    }
  }

  __break(1u);
LABEL_61:
  v35 = _CocoaArrayWrapper.endIndex.getter();
  if (v35)
  {
    goto LABEL_44;
  }

LABEL_62:
  v33 = _swiftEmptyArrayStorage;
LABEL_63:

  if ((v0 & 1) == 0)
  {
    if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
    {
      v43 = *(v33 + 16);
LABEL_68:
      v40 = v43 != 0;
      v42 = 0x65736C6166;
      v41 = 0xE500000000000000;
      goto LABEL_69;
    }

LABEL_80:
    v43 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_68;
  }

  v40 = 1;
  v41 = 0xE400000000000000;
  v42 = 1702195828;
LABEL_69:
  _StringGuts.grow(_:)(49);

  v58 = 0xD00000000000001FLL;
  v59 = 0x80000001002A3C10;
  v44._countAndFlagsBits = v42;
  v44._object = v41;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0x6469646E6163202CLL;
  v45._object = 0xED00003D73657461;
  String.append(_:)(v45);
  if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
  {
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v46 = *(v33 + 16);
  }

  v60 = v46;
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 41;
  v48._object = 0xE100000000000000;
  String.append(_:)(v48);
  v50 = v58;
  v49 = v59;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_100003078(v51, qword_10034A190);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v58 = v55;
    *v54 = 67109378;
    *(v54 + 4) = v40;
    *(v54 + 8) = 2080;
    v56 = sub_100017494(v50, v49, &v58);

    *(v54 + 10) = v56;
    _os_log_impl(&_mh_execute_header, v52, v53, "Should start ranging = %{BOOL}d %s", v54, 0x12u);
    sub_10000903C(v55);
  }

  else
  {
  }

  return v40;
}

uint64_t type metadata accessor for RangingProxy(uint64_t a1)
{
  result = qword_10034A268;
  if (!qword_10034A268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000411C()
{
  if (sub_1000036FC())
  {
    sub_1001A6AEC();
    sub_100014750();
  }

  else
  {

    sub_100004394();
  }
}

void sub_100004264(uint64_t a1, uint64_t a2)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100346758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BT devices changed (throttled)", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent__rangingProxy) + 24);
    v8 = Strong;
    v9 = v7;

    if (v7)
    {
      sub_10000411C();
    }
  }
}

uint64_t sub_100004394()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState;
  if ((*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_scheduledStopState) & 1) == 0 && *(*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) == 2)
  {
    v30 = v14;
    v32 = v5;
    v33 = v2;
    v18 = v0;
    v34 = result;
    if (qword_100339128 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100003078(v19, qword_10034A190);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v31 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Scheduling stop of NearbyInteraction", v23, 2u);
    }

    *(v18 + v17) = 1;
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v28 = qword_10038B5B8;
    v29 = v1;
    static DispatchTime.now()();
    if (qword_100339140 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for DispatchTimeInterval();
    sub_100003078(v24, qword_10034A1B0);
    + infix(_:_:)();
    v30 = *(v30 + 8);
    (v30)(v12, v34);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1001AC0A4;
    aBlock[5] = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_10030F718;
    v26 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v35 = _swiftEmptyArrayStorage;
    sub_1001AC18C(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    v27 = v29;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v26);
    (*(v33 + 8))(v4, v27);
    (*(v31 + 8))(v8, v32);
    (v30)(v16, v34);
  }

  return result;
}

uint64_t sub_1000048D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004914(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_100004B58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_100004B58(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return _objc_release_x1();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_100004AA8()
{
  v1 = [v0 identifier];
  if (v1 || (v1 = [v0 idsDeviceID]) != 0)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    [v0 hash];
    sub_1001292AC();
    return BinaryInteger.description.getter();
  }
}

unint64_t sub_100004B58(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100004BD0(a1, a2, v4);
}

unint64_t sub_100004BD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100004C88(void *a1)
{
  v2 = v1;
  v26 = a1;

  swift_getAtKeyPath();

  v5 = v24;
  v4 = v25;
  swift_bridgeObjectRetain_n();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0x5F28747265736E69, 0xEA0000000000293ALL, &v21);
    *(v8 + 12) = 2080;
    v22 = v5;
    v23 = v4;
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, &v21);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: key=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));

  v13 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v12 + 8);
  *(v12 + 8) = 0x8000000000000000;
  sub_100004914(v13, v5, v4, isUniquelyReferenced_nonNull_native, sub_10008A950, sub_100087CC4);

  v15 = v22;
  *(v12 + 8) = v22;

  os_unfair_lock_unlock(v12);

  PassthroughSubject.send(_:)();

  v16 = v15[2];
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = sub_100009194(v15[2], 0);
  v18 = sub_1001295D4();
  v19 = v22;

  sub_100004F98(v19);
  if (v18 != v16)
  {
    __break(1u);
LABEL_7:

    v17 = _swiftEmptyArrayStorage;
  }

  v22 = v17;
  PassthroughSubject.send(_:)();
}

uint64_t sub_100004FA0@<X0>(void **a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for Identity(0);
  swift_allocObject();
  v6 = v5;
  result = a2(v5);
  *a3 = result;
  return result;
}

void sub_100005000(char a1)
{
  v2 = v1;
  v32 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    v4 = a1 & 1;
    LOBYTE(v29) = a1 & 1;

    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v6 = *v1;
    if (v5)
    {
      v7 = *(v1 + *(v6 + 112));
      if (v7)
      {
        v8 = v7;
        v9 = String._bridgeToObjectiveC()();

        [v8 removeObjectForKey:v9];

        return;
      }

LABEL_11:

      return;
    }

    v10 = *(v1 + *(v6 + 120));
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v13 = *(v1 + *(v6 + 112));
      if (v13)
      {
        LOBYTE(v29) = v4;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v28 = v4;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v27, &v29);
      v11 = v30;
      v12 = v31;
      sub_10000EBC0(&v29, v30);
      v20 = sub_10013FF24(v11, v12);
      v22 = v21;
      v23 = *(v2 + *(*v2 + 112));
      if (v23)
      {
        v24 = v23;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v26 = String._bridgeToObjectiveC()();

        [v24 setValue:isa forKey:v26];
        sub_100010708(v20, v22);
      }

      else
      {

        sub_100010708(v20, v22);
      }

      sub_10000903C(&v29);
    }

    else
    {

      memset(v27, 0, sizeof(v27));
      sub_1000097E8(v27, &unk_10034B470, &qword_100289670);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to cast as Codable", v19, 2u);
      }
    }
  }
}

uint64_t sub_100005454(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100002BF0(0, a1);
  }

  return result;
}

uint64_t sub_1000054C0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v13[3] = a1;

  swift_getAtKeyPath();

  v4 = v13[1];
  v3 = v13[2];

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v13[0] = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0x5F2865766F6D6572, 0xEA0000000000293ALL, v13);
    *(v7 + 12) = 2080;
    v8 = String.init<A>(describing:)();
    v10 = sub_100017494(v8, v9, v13);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: key=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v11 = a2(v4, v3);

  return v11;
}

void *sub_1000056A0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + qword_100346AF8;
  os_unfair_lock_lock((v2 + qword_100346AF8));
  v6 = sub_10004B2C8((v5 + 8), a1, a2, sub_10008A950);
  v8 = v7;
  os_unfair_lock_unlock(v5);
  if (!v6)
  {

    return v6;
  }

  v14 = v6;
  v9 = v6;
  sub_1000059F0(&v14, &unk_10034A340, CBDevice_ptr);

  PassthroughSubject.send(_:)();

  v10 = *(v8 + 16);
  if (!v10)
  {

LABEL_7:
    PassthroughSubject.send(_:)();

    return v6;
  }

  sub_100009194(v10, 0);
  v11 = sub_1001295D4();

  result = sub_100004F98(v13);
  if (v11 == v10)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100005840(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

id *sub_1000059F0(id *result, unint64_t *a2, void *a3)
{
  if (*(v3 + 24) == 1)
  {
    v27[0] = *result;
    sub_100003118(0, a2, a3);
    v4 = v27[0];
    sub_100035D04(&qword_10033B5D8, &qword_100272068);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v31, v28);
      v5 = v29;
      v6 = v30;
      sub_10000EBC0(v28, v29);
      v7 = (*(v6 + 8))(v5, v6);
      v8 = v7;
      if ((v7 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        type metadata accessor for AnyCancellable();
        sub_1000515C0(&qword_10033B5E8, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
        result = Set.Iterator.init(_cocoa:)();
        v9 = *(&v31 + 1);
        v10 = v31;
        v12 = *(&v32 + 1);
        v11 = v32;
        v13 = v33;
      }

      else
      {
        v14 = -1 << *(v7 + 32);
        v9 = v7 + 56;
        v11 = ~v14;
        v15 = -v14;
        if (v15 < 64)
        {
          v16 = ~(-1 << v15);
        }

        else
        {
          v16 = -1;
        }

        v13 = v16 & *(v7 + 56);

        v12 = 0;
        v10 = v8;
      }

      if (v10 < 0)
      {
        goto LABEL_17;
      }

      while (1)
      {
        v17 = v12;
        v18 = v13;
        v19 = v12;
        if (!v13)
        {
          break;
        }

LABEL_15:
        v20 = (v18 - 1) & v18;
        v21 = *(*(v10 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

        if (!v21)
        {
LABEL_21:
          sub_100004F98(v10);

          v22 = v29;
          v23 = v30;
          sub_100051608(v28, v29);
          v24 = (*(v23 + 24))(v27, v22, v23);
          v26 = v25;

          *v26 = &_swiftEmptySetSingleton;
          v24(v27, 0);
          return sub_10000903C(v28);
        }

        while (1)
        {
          AnyCancellable.cancel()();

          v12 = v19;
          v13 = v20;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_17:
          if (__CocoaSet.Iterator.next()())
          {
            type metadata accessor for AnyCancellable();
            swift_dynamicCast();
            v19 = v12;
            v20 = v13;
            if (v27[0])
            {
              continue;
            }
          }

          goto LABEL_21;
        }
      }

      while (1)
      {
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v19 >= ((v11 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v18 = *(v9 + 8 * v19);
        ++v17;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      return sub_1000097E8(&v31, &qword_10033B5E0, &qword_100272070);
    }
  }

  return result;
}

void sub_100005D14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100005D90@<X0>(_BYTE *a2@<X8>)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10038B0B8 + 1512);
  v4 = sub_1000031CC();

  if ((v4 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = sub_10000E120();

    if ((v10 & 6) != 0)
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003078(v13, qword_10038AE78);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v104._countAndFlagsBits = v17;
        *v16 = 136315138;
        v19 = sub_1000092A0(v17, v18);
        v21 = sub_100017494(v19, v20, &v104._countAndFlagsBits);

        *(v16 + 4) = v21;
        _os_log_impl(&_mh_execute_header, v14, v15, "Expecting system token for %s", v16, 0xCu);
        sub_10000903C(v17);
      }

      type metadata accessor for DiscoveryTokenStateMachine.Input(0);
      return swift_storeEnumTagMultiPayload();
    }

    if ((sub_100010FF4(v11, v12) & 0xA) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v37 = sub_10000E120();

      if (v37)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100003078(v38, qword_10038AE78);

        countAndFlagsBits = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(countAndFlagsBits, v40))
        {
          goto LABEL_74;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v104._countAndFlagsBits = v42;
        *v41 = 136315138;
        v44 = sub_1000092A0(v42, v43);
        v46 = sub_100017494(v44, v45, &v104._countAndFlagsBits);

        *(v41 + 4) = v46;
        v47 = "%s doesn't support UWB, skipping token sync";
        goto LABEL_61;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000A0B4(v22, v23);
    v25 = v24;

    if (v25)
    {
      v26 = String.lowercased()();

      sub_10001369C();
      v104 = v26;
      if (StringProtocol.contains<A>(_:)() & 1) != 0 || (v104 = v26, (StringProtocol.contains<A>(_:)()) || (v104 = v26, (StringProtocol.contains<A>(_:)()) || (v104 = v26, (StringProtocol.contains<A>(_:)()) || (v104 = v26, (StringProtocol.contains<A>(_:)()))
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100003078(v27, qword_10038AE78);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v104._countAndFlagsBits = v31;
          *v30 = 136315394;
          v33 = sub_1000092A0(v31, v32);
          v35 = sub_100017494(v33, v34, &v104._countAndFlagsBits);

          *(v30 + 4) = v35;
          *(v30 + 12) = 2080;
          v36 = sub_100017494(v26._countAndFlagsBits, v26._object, &v104._countAndFlagsBits);

          *(v30 + 14) = v36;
          _os_log_impl(&_mh_execute_header, v28, v29, "%s Should not initiate token sync for peer model %s", v30, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        goto LABEL_75;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v48 = sub_10000E120();

    if (!v48)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      countAndFlagsBits = v104._countAndFlagsBits;
      if (!v104._countAndFlagsBits)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_100003078(v99, qword_10038AE78);

        countAndFlagsBits = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(countAndFlagsBits, v40))
        {
          goto LABEL_74;
        }

        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v104._countAndFlagsBits = v42;
        *v41 = 136315138;
        v101 = sub_1000092A0(v42, v100);
        v103 = sub_100017494(v101, v102, &v104._countAndFlagsBits);

        *(v41 + 4) = v103;
        v47 = "%s No relationship, no BT device nor wifi device?";
        goto LABEL_61;
      }

      v59 = [v104._countAndFlagsBits mediaAccessControlSetting];
      if (v59 - 1 >= 2)
      {
        v87 = v59;
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v88 = type metadata accessor for Logger();
        sub_100003078(v88, qword_10038AE78);

        v50 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v50, v89))
        {
          goto LABEL_73;
        }

        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v104._countAndFlagsBits = v91;
        *v90 = 136315394;
        v93 = sub_1000092A0(v91, v92);
        v95 = sub_100017494(v93, v94, &v104._countAndFlagsBits);

        *(v90 + 4) = v95;
        *(v90 + 12) = 2080;
        sub_10003E19C(v87);
        v96 = String.init(cString:)();
        v98 = sub_100017494(v96, v97, &v104._countAndFlagsBits);

        *(v90 + 14) = v98;
        _os_log_impl(&_mh_execute_header, v50, v89, "%s Should not initiate token sync: no relationship, ACL=%s", v90, 0x16u);
        swift_arrayDestroy();
        goto LABEL_72;
      }

      if (([v104._countAndFlagsBits statusFlags] & 0x40000000000) != 0)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100003078(v60, qword_10038AE78);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v50, v51))
        {
          goto LABEL_73;
        }

        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v104._countAndFlagsBits = v53;
        *v52 = 136315138;
        v62 = sub_1000092A0(v53, v61);
        v64 = sub_100017494(v62, v63, &v104._countAndFlagsBits);

        *(v52 + 4) = v64;
        v58 = "%s Should not initiate token sync: peer advertises 'no guest handoff'";
LABEL_49:
        _os_log_impl(&_mh_execute_header, v50, v51, v58, v52, 0xCu);
        sub_10000903C(v53);
LABEL_72:

LABEL_73:

        goto LABEL_74;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    countAndFlagsBits = v104._countAndFlagsBits;
    if (v104._countAndFlagsBits)
    {
      if (([v104._countAndFlagsBits nearbyActionFlags] & 0x10) == 0)
      {
        if (qword_100338E30 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for Logger();
        sub_100003078(v49, qword_10038AE78);

        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v50, v51))
        {
          goto LABEL_73;
        }

        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v104._countAndFlagsBits = v53;
        *v52 = 136315138;
        v55 = sub_1000092A0(v53, v54);
        v57 = sub_100017494(v55, v56, &v104._countAndFlagsBits);

        *(v52 + 4) = v57;
        v58 = "%s Should not initiate token sync: BTDevice not advertising DeviceClose";
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      sub_100003078(v65, qword_10038AE78);

      countAndFlagsBits = Logger.logObject.getter();
      v66 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(countAndFlagsBits, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v104._countAndFlagsBits = v68;
        *v67 = 136315138;
        v70 = sub_1000092A0(v68, v69);
        v72 = sub_100017494(v70, v71, &v104._countAndFlagsBits);

        *(v67 + 4) = v72;
        _os_log_impl(&_mh_execute_header, countAndFlagsBits, v66, "%s No bt device?", v67, 0xCu);
        sub_10000903C(v68);
      }
    }

    if (qword_1003391D8 != -1)
    {
      swift_once();
    }

    if ((byte_10038B5A8 & 1) == 0)
    {
      if (qword_100338E30 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      sub_100003078(v78, qword_10038AE78);

      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v104._countAndFlagsBits = v82;
        *v81 = 136315138;
        v84 = sub_1000092A0(v82, v83);
        v86 = sub_100017494(v84, v85, &v104._countAndFlagsBits);

        *(v81 + 4) = v86;
        _os_log_impl(&_mh_execute_header, v79, v80, "Should initiate token sync with %s", v81, 0xCu);
        sub_10000903C(v82);
      }

      *a2 = 1;
      goto LABEL_76;
    }

    if (qword_100338E30 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100003078(v73, qword_10038AE78);

    countAndFlagsBits = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(countAndFlagsBits, v40))
    {
      goto LABEL_74;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v104._countAndFlagsBits = v42;
    *v41 = 136315138;
    v75 = sub_1000092A0(v42, v74);
    v77 = sub_100017494(v75, v76, &v104._countAndFlagsBits);

    *(v41 + 4) = v77;
    v47 = "Should not initiate token sync with %s";
LABEL_61:
    _os_log_impl(&_mh_execute_header, countAndFlagsBits, v40, v47, v41, 0xCu);
    sub_10000903C(v42);

LABEL_74:

LABEL_75:
    *a2 = 0;
LABEL_76:
    type metadata accessor for DiscoveryTokenStateMachine.Input(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_100338E30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10038AE78);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Forcing token sync initiation via default", v8, 2u);
  }

  *a2 = 1;
  type metadata accessor for DiscoveryTokenStateMachine.Input(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000071B4(uint64_t a1)
{
  v1 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v17 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for DiscoveryTokenStateMachine(0);
    sub_100005D90(v6);
    if (qword_100338E88 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_10033CBC8);
    sub_1000120BC(v6, v4);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17[0] = v12;
      *v11 = 136315138;
      v13 = sub_100010BC8();
      v15 = v14;
      sub_100010B48(v4);
      v16 = sub_100017494(v13, v15, v17);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Sending discovery event '%s'", v11, 0xCu);
      sub_10000903C(v12);
    }

    else
    {

      sub_100010B48(v4);
    }

    swift_beginAccess();
    sub_1001677A8(v6);
    swift_endAccess();

    return sub_100010B48(v6);
  }

  return result;
}

uint64_t sub_1000074B8(void *a1)
{
  if (([a1 statusFlags] & 4) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v2 = a1;
    static Published.subscript.setter();
  }

  result = [a1 statusFlags];
  if ((result & 2) != 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = a1;
    return static Published.subscript.setter();
  }

  return result;
}

void sub_100007598(void *a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v47 - v6;
  if (qword_100339118 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003078(v7, qword_100349658);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100017494(0xD00000000000001DLL, 0x80000001002A3790, v49);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: device=%@", v11, 0x16u);
    sub_1000097E8(v12, &qword_100339940, &unk_100272C50);

    sub_10000903C(v13);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = __chkstk_darwin(Strong), *(&v47 - 2) = v8, v17 = (*(*(v16 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8), v18 = v16, , os_unfair_lock_lock(v17), v19 = , sub_1001A9BF0(v19, sub_100192EE8), v21 = v20, , os_unfair_lock_unlock(v17), v18, , v21))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_1000074B8(v8);

    type metadata accessor for DiscoveryTokenStateMachine(0);
    v22 = v48;
    sub_100005D90(v48);
    sub_1000120BC(v22, v5);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v25 = 136315394;
      v26 = sub_100010BC8();
      v28 = v27;
      sub_100010B48(v5);
      v29 = sub_100017494(v26, v28, v49);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v32 = sub_1000092A0(v30, v31);
      v34 = sub_100017494(v32, v33, v49);

      *(v25 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Sending discovery event '%s' to: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100010B48(v5);
    }

    swift_beginAccess();
    v45 = v48;
    sub_1001677A8(v48);
    swift_endAccess();

    sub_100010B48(v45);
  }

  else
  {
    v35 = v8;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49[0] = v39;
      *v38 = 136315138;
      v40 = [v35 identifier];
      if (v40)
      {
        v41 = v40;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
      }

      else
      {
        v44 = 0xE100000000000000;
        v42 = 63;
      }

      v46 = sub_100017494(v42, v44, v49);

      *(v38 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "Attributes changed: No matching HandoffDevice found for %s", v38, 0xCu);
      sub_10000903C(v39);
    }
  }
}

uint64_t sub_100007B90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v58)
  {
    v5 = v58;
    v6 = v2;
    sub_100008574();
    v8 = v7;
    v9 = sub_10000F0CC();
    v10 = sub_1000089FC(v9, v8);

    v11 = *(v10 + 16);

    if (v11)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v55[0])
  {
    v12 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v13 = &off_100302540;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v59 = 0;
    v60 = 0;
  }

  v58 = v55[0];
  v61 = v12;
  v62 = v13;
  sub_100009848(&v58, v55, &unk_10034B540, qword_100270E60);
  v14 = v56;
  if (v56)
  {
    v15 = v57;
    sub_10000EBC0(v55, v56);
    sub_100008574();
    v17 = sub_10015A19C(v16, v14, *(v15 + 8));

    sub_10000903C(v55);
    sub_1000097E8(&v58, &unk_10034B540, qword_100270E60);
    if (v17)
    {
      return 1;
    }
  }

  else
  {
    sub_1000097E8(v55, &unk_10034B540, qword_100270E60);
    sub_1000097E8(&v58, &unk_10034B540, qword_100270E60);
  }

  v18 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v18)
  {
    v19 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v20 = &off_100303480;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v59 = 0;
    v60 = 0;
  }

  v58 = v21;
  v61 = v19;
  v62 = v20;
  sub_100009848(&v58, &v53, &qword_10033A240, &unk_100272E70);
  if (v54)
  {
    sub_10000E754(&v53, v55);
    v22 = v56;
    v23 = v57;
    sub_10000EBC0(v55, v56);
    v24 = *(v23 + 8);
    v25 = *(v24 + 40);
    v26 = v18;
    v27 = v25(v3, v22, v24);
    sub_10000903C(v55);
    sub_1000097E8(&v58, &qword_10033A240, &unk_100272E70);
    if (v27)
    {
      return 1;
    }
  }

  else
  {
    v28 = v18;
    sub_1000097E8(&v53, &qword_10033A240, &unk_100272E70);
    sub_1000097E8(&v58, &qword_10033A240, &unk_100272E70);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v29 = v58;
  if (v58)
  {
    sub_100003118(0, &qword_100344730, NSObject_ptr);
    v30 = v29;
    if (static NSObject.== infix(_:_:)())
    {
LABEL_22:

      return 1;
    }

    sub_100008574();
    v32 = v31;
    sub_100008574();
    v34 = sub_1000089FC(v33, v32);

    v35 = *(v34 + 16);

    if (v35)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v36 = v58;
  if (v58)
  {
    sub_100003118(0, &qword_100344730, NSObject_ptr);
    v30 = v36;
    if (static NSObject.== infix(_:_:)())
    {
      goto LABEL_22;
    }

    sub_100008574();
    v38 = v37;
    sub_100008574();
    v40 = sub_1000089FC(v39, v38);

    v41 = *(v40 + 16);

    if (v41)
    {
      return 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v42 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  if (v42 >> 62)
  {
LABEL_43:
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v43 != i; ++i)
  {
    if ((v42 & 0xC000000000000001) != 0)
    {
      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v45 = *(v42 + 8 * i + 32);
    }

    v46 = v45;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_1000104F8();
    v48 = v47;
    sub_100008574();
    v50 = sub_1000089FC(v49, v48);

    v51 = *(v50 + 16);

    if (v51)
    {

      return 1;
    }
  }

  return 0;
}

Swift::Int sub_100008198(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100008BC0(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100008574()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v55[-v6];
  v8 = [v1 effectiveIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v56 = v9;
  v57 = v11;
  v12 = [v1 identifier];
  if (v12)
  {
    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v58 = v14;
  v59 = v16;
  v17 = [v1 homeKitIdentifier];
  if (v17)
  {
    v18 = v17;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  }

  else
  {
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  }

  sub_100008FCC(v5, v7);
  type metadata accessor for UUID();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {
    sub_1000097E8(v7, &unk_100348F30, &unk_100272540);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = UUID.uuidString.getter();
    v22 = v23;
    (*(v20 + 8))(v7, v19);
  }

  v60 = v21;
  v61 = v22;
  v24 = [v1 idsDeviceIdentifier];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v62 = v26;
  v63 = v28;
  v29 = [v1 mediaRemoteIdentifier];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v64 = v31;
  v65 = v33;
  v34 = [v1 mediaRouteIdentifier];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v66 = v36;
  v67 = v38;
  v39 = [v1 publicIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = 0;
  v68 = v41;
  v69 = v43;
  v45 = _swiftEmptyArrayStorage;
LABEL_23:
  if (v44 <= 7)
  {
    v46 = 7;
  }

  else
  {
    v46 = v44;
  }

  v47 = v46 + 1;
  v48 = 16 * v44 + 40;
  while (1)
  {
    if (v44 == 7)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      sub_100008F34(v45);

      return;
    }

    if (v47 == ++v44)
    {
      break;
    }

    v49 = v48 + 16;
    v50 = *&v55[v48];
    v48 += 16;
    if (v50)
    {
      v51 = *&v55[v49 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_100009088(0, *(v45 + 2) + 1, 1, v45);
      }

      v53 = *(v45 + 2);
      v52 = *(v45 + 3);
      if (v53 >= v52 >> 1)
      {
        v45 = sub_100009088((v52 > 1), v53 + 1, 1, v45);
      }

      *(v45 + 2) = v53 + 1;
      v54 = &v45[16 * v53];
      *(v54 + 4) = v51;
      *(v54 + 5) = v50;
      goto LABEL_23;
    }
  }

  __break(1u);
}

Swift::Int sub_1000089FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_100008198(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1001CA11C(v11, v6, a2, a1);
  }

  return v9;
}

Swift::Int sub_100008BC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100035D04(&qword_10033C2D0, &qword_100272AC8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100008DE4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    sub_10000DD38(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100008F34(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100008DE4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100008FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000903C(void *a1)
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

char *sub_100009088(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
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

void *sub_10000919C(uint64_t a1, uint64_t a2)
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

  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100009224(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000092A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v43)
  {
    v2 = [v43 effectiveIdentifier];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_10000B584(8, v3, v5);

    v43 = 2117714;
    v6 = static String._fromSubstring(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_100009088((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = 2117714;
    *(v13 + 5) = 0xE300000000000000;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v43)
  {
    v14 = [v43 effectiveIdentifier];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    sub_10000B584(8, v15, v17);

    v18 = static String._fromSubstring(_:)();
    v20 = v19;

    v21._countAndFlagsBits = v18;
    v21._object = v20;
    String.append(_:)(v21);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_100009088(0, *(v10 + 2) + 1, 1, v10);
    }

    v23 = *(v10 + 2);
    v22 = *(v10 + 3);
    if (v23 >= v22 >> 1)
    {
      v10 = sub_100009088((v22 > 1), v23 + 1, 1, v10);
    }

    *(v10 + 2) = v23 + 1;
    v24 = &v10[16 * v23];
    *(v24 + 4) = 0x2054427072;
    *(v24 + 5) = 0xE500000000000000;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = sub_10000C868();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._countAndFlagsBits = 32;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = UUID.uuidString.getter();
  sub_10000B584(8, v30, v31);

  v32 = static String._fromSubstring(_:)();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 8250;
  v36._object = 0xE200000000000000;
  String.append(_:)(v36);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v37 = BidirectionalCollection<>.joined(separator:)();
  v39 = v38;

  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 62;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  return 60;
}

uint64_t sub_1000097E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100035D04(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100035D04(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_1000098B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for Identity(uint64_t a1)
{
  result = qword_10033F688;
  if (!qword_10033F688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a4;
  v34 = a2;
  v35 = a3;
  v5 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - v6;
  v8 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  *(v4 + 16) = 0;
  *(v4 + 20) = 256;
  v16 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v38 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v13 + 32))(v4 + v16, v15, v12);
  v17 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v38 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v9 + 32))(v4 + v17, v11, v8);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v18 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v19 = 0;
  v19[1] = 0;
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v38 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v21 = v33;
  v22 = *(v32 + 32);
  v22(v4 + v20, v7, v33);
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v38 = 0;
  Published.init(initialValue:)();
  v22(v4 + v23, v7, v21);
  v24 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v27 = 0;
  v27[1] = 0;
  *(v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v28 = v4 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v28 = 0;
  *(v28 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v36;

  static Published.subscript.setter();
  v29 = v37;
  *(v4 + 20) = BYTE4(v37);
  *(v4 + 16) = v29;
  *(v4 + 21) = 0;
  return v4;
}

uint64_t sub_100009E64()
{
  v1 = v0;
  if (!v0[4].opaque[0])
  {
    v16[0] = StaticString.description.getter();
    v16[1] = v2;
    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = StaticString.description.getter();
    String.append(_:)(v4);

    String.utf8CString.getter();

    v5 = os_transaction_create();

    v1[4].opaque[0] = v5;
    swift_unknownObjectRelease();
  }

  if (qword_100339030 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100345910);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136315138;
    v11 = StaticString.description.getter();
    v13 = sub_100017494(v11, v12, v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Starting %s", v9, 0xCu);
    sub_10000903C(v10);
  }

  swift_beginAccess();
  v14 = swift_unknownObjectRetain();
  os_activity_scope_enter(v14, v1 + 3);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_10000A0B4(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel + 8))
  {
    v4 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v4)
    {
      v5 = [v4 modelIdentifier];
      if (v5)
      {
        v6 = v5;
LABEL_6:
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v17 || (v7 = [v17 model], v17, !v7))
    {
      v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
      if (v8)
      {
        if (v8 >> 62)
        {
LABEL_35:
          v9 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v9)
        {
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_34;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            v14 = [v11 model];
            if (v14)
            {
              break;
            }

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_22;
            }
          }

          v15 = v14;

          v7 = [v12 model];
          if (!v7)
          {
            goto LABEL_23;
          }

          goto LABEL_30;
        }

LABEL_22:
      }

LABEL_23:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!v17 || (v7 = [v17 model], v17, !v7))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v3 = v17;
        if (!v17)
        {
          return v3;
        }

        v6 = [v17 model];

        if (!v6)
        {
          return 0;
        }

        goto LABEL_6;
      }
    }

LABEL_30:
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);

  return v3;
}

void sub_10000A3D4(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(v4);
  }
}

uint64_t sub_10000A474()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = __chkstk_darwin(v2 - 8);
  v149 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v150 = &v149 - v5;
  v6 = type metadata accessor for UUID();
  v151 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A0B4(v7, v10);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v154 = 2122829;
    v155 = 0xE300000000000000;
    String.append(_:)(*&v11);

    v14 = v154;
    v15 = v155;
    v16 = sub_100009088(0, 1, 1, _swiftEmptyArrayStorage);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_100009088((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v15;
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v154;
  if (v154)
  {
    v21 = [v154 identifier];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      sub_10000B584(8, v22, v24);

      v154 = 2118722;
      v155 = 0xE300000000000000;
      v25 = static String._fromSubstring(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      String.append(_:)(v28);

      v29 = v154;
      v30 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
      }

      v32 = *(v16 + 2);
      v31 = *(v16 + 3);
      if (v32 >= v31 >> 1)
      {
        v16 = sub_100009088((v31 > 1), v32 + 1, 1, v16);
      }

      *(v16 + 2) = v32 + 1;
      v33 = &v16[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v34 = v154;
  if (v154)
  {
    v35 = [v154 uniqueIdentifier];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = UUID.uuidString.getter();
    sub_10000B584(8, v36, v37);

    v38 = static String._fromSubstring(_:)();
    v40 = v39;

    (*(v151 + 8))(v9, v6);
    v154 = 2116424;
    v155 = 0xE300000000000000;
    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42 = v154;
    v43 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v45 = *(v16 + 2);
    v44 = *(v16 + 3);
    if (v45 >= v44 >> 1)
    {
      v16 = sub_100009088((v44 > 1), v45 + 1, 1, v16);
    }

    *(v16 + 2) = v45 + 1;
    v46 = &v16[16 * v45];
    *(v46 + 4) = v42;
    *(v46 + 5) = v43;
  }

  v47 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v47)
  {
    v48 = [v47 uniqueID];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      sub_10000B584(8, v50, v52);

      v154 = 542327881;
      v155 = 0xE400000000000000;
      v53 = static String._fromSubstring(_:)();
      v55 = v54;

      v56._countAndFlagsBits = v53;
      v56._object = v55;
      String.append(_:)(v56);

      v57 = v154;
      v58 = v155;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
      }

      v60 = *(v16 + 2);
      v59 = *(v16 + 3);
      if (v60 >= v59 >> 1)
      {
        v16 = sub_100009088((v59 > 1), v60 + 1, 1, v16);
      }

      *(v16 + 2) = v60 + 1;
      v61 = &v16[16 * v60];
      *(v61 + 4) = v57;
      *(v61 + 5) = v58;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v62 = v154;
  if (v154)
  {
    v63 = [v154 effectiveIdentifier];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    sub_10000B584(8, v64, v66);

    v154 = 2117714;
    v155 = 0xE300000000000000;
    v67 = static String._fromSubstring(_:)();
    v69 = v68;

    v70._countAndFlagsBits = v67;
    v70._object = v69;
    String.append(_:)(v70);

    v71 = v154;
    v72 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v74 = *(v16 + 2);
    v73 = *(v16 + 3);
    if (v74 >= v73 >> 1)
    {
      v16 = sub_100009088((v73 > 1), v74 + 1, 1, v16);
    }

    *(v16 + 2) = v74 + 1;
    v75 = &v16[16 * v74];
    *(v75 + 4) = v71;
    *(v75 + 5) = v72;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v76 = v154;
  if (v154)
  {
    v77 = [v154 effectiveIdentifier];

    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    sub_10000B584(8, v78, v80);

    v154 = 0x2054427072;
    v155 = 0xE500000000000000;
    v81 = static String._fromSubstring(_:)();
    v83 = v82;

    v84._countAndFlagsBits = v81;
    v84._object = v83;
    String.append(_:)(v84);

    v85 = v154;
    v86 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v88 = *(v16 + 2);
    v87 = *(v16 + 3);
    if (v88 >= v87 >> 1)
    {
      v16 = sub_100009088((v87 > 1), v88 + 1, 1, v16);
    }

    *(v16 + 2) = v88 + 1;
    v89 = &v16[16 * v88];
    *(v89 + 4) = v85;
    *(v89 + 5) = v86;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v92 = v154;
  if (v154)
  {
    v93 = [v154 mediaSystemIdentifier];

    if (v93)
    {
      v94 = v149;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v95 = 0;
    }

    else
    {
      v95 = 1;
      v94 = v149;
    }

    v96 = v150;
    v97 = v151;
    (*(v151 + 56))(v94, v95, 1, v6);
    sub_100008FCC(v94, v96);
    if ((*(v97 + 48))(v96, 1, v6) == 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1000097E8(v96, &unk_100348F30, &unk_100272540);
    }

    else
    {
      v98 = UUID.uuidString.getter();
      sub_10000B584(8, v98, v99);

      v100 = static String._fromSubstring(_:)();
      v102 = v101;

      (*(v97 + 8))(v96, v6);
      v154 = 0x20534D7072;
      v155 = 0xE500000000000000;
      v103._countAndFlagsBits = v100;
      v103._object = v102;
      String.append(_:)(v103);

      v104 = v154;
      v105 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
        v16 = isUniquelyReferenced_nonNull_native;
      }

      v107 = *(v16 + 2);
      v106 = *(v16 + 3);
      v13 = _swiftEmptyArrayStorage;
      if (v107 >= v106 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_100009088((v106 > 1), v107 + 1, 1, v16);
        v16 = isUniquelyReferenced_nonNull_native;
      }

      *(v16 + 2) = v107 + 1;
      v108 = &v16[16 * v107];
      *(v108 + 4) = v104;
      *(v108 + 5) = v105;
    }
  }

  v109 = sub_10000DF0C(isUniquelyReferenced_nonNull_native, v91);
  if (v110)
  {
    sub_10000B584(8, v109, v110);

    v154 = 2118221;
    v155 = 0xE300000000000000;
    v111 = static String._fromSubstring(_:)();
    v113 = v112;

    v114._countAndFlagsBits = v111;
    v114._object = v113;
    String.append(_:)(v114);

    v115 = v154;
    v116 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v118 = *(v16 + 2);
    v117 = *(v16 + 3);
    if (v118 >= v117 >> 1)
    {
      v16 = sub_100009088((v117 > 1), v118 + 1, 1, v16);
    }

    *(v16 + 2) = v118 + 1;
    v119 = &v16[16 * v118];
    *(v119 + 4) = v115;
    *(v119 + 5) = v116;
  }

  v153 = _swiftEmptyArrayStorage;
  if (*(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {

    sub_10001693C(v120, &v153);

    v13 = v153;
  }

  if (*(v13 + 2))
  {
    v154 = 0x3C2044495052;
    v155 = 0xE600000000000000;
    v152 = v13;

    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v121 = BidirectionalCollection<>.joined(separator:)();
    v123 = v122;

    v124._countAndFlagsBits = v121;
    v124._object = v123;
    String.append(_:)(v124);

    v125._countAndFlagsBits = 62;
    v125._object = 0xE100000000000000;
    String.append(_:)(v125);
    v126 = v154;
    v127 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v129 = *(v16 + 2);
    v128 = *(v16 + 3);
    if (v129 >= v128 >> 1)
    {
      v16 = sub_100009088((v128 > 1), v129 + 1, 1, v16);
    }

    *(v16 + 2) = v129 + 1;
    v130 = &v16[16 * v129];
    *(v130 + 4) = v126;
    *(v130 + 5) = v127;
  }

  v131 = sub_10000E120();
  if (v131)
  {
    v154 = 0x203A6C65523CLL;
    v155 = 0xE600000000000000;
    v152 = sub_100016BD4(v131);
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v132 = BidirectionalCollection<>.joined(separator:)();
    v134 = v133;

    v135._countAndFlagsBits = v132;
    v135._object = v134;
    String.append(_:)(v135);

    v136._countAndFlagsBits = 62;
    v136._object = 0xE100000000000000;
    String.append(_:)(v136);
    v137 = v154;
    v138 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
    }

    v140 = *(v16 + 2);
    v139 = *(v16 + 3);
    if (v140 >= v139 >> 1)
    {
      v16 = sub_100009088((v139 > 1), v140 + 1, 1, v16);
    }

    *(v16 + 2) = v140 + 1;
    v141 = &v16[16 * v140];
    *(v141 + 4) = v137;
    *(v141 + 5) = v138;
  }

  v154 = 0;
  v155 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v154 = 0x797469746E656449;
  v155 = 0xEA00000000002720;
  v142._countAndFlagsBits = sub_10000C868();
  String.append(_:)(v142);

  v143._countAndFlagsBits = 8231;
  v143._object = 0xE200000000000000;
  String.append(_:)(v143);
  v152 = v16;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v144 = BidirectionalCollection<>.joined(separator:)();
  v146 = v145;

  v147._countAndFlagsBits = v144;
  v147._object = v146;
  String.append(_:)(v147);

  return v154;
}

uint64_t sub_10000B330(uint64_t a1)
{
  if (qword_100339078 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100346758);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0xD00000000000001ELL, 0x80000001002A1680, v15);
    *(v6 + 12) = 2080;
    v7 = sub_10000A474();
    v9 = sub_100017494(v7, v8, v15);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: identity=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = (*(*(v1 + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16) + qword_100346AF8);

  os_unfair_lock_lock(v10);

  sub_1001A9BF0(v11, sub_10013BA78);
  v13 = v12;

  os_unfair_lock_unlock(v10);

  if (v13)
  {
    sub_100137D78(v13, a1);
  }

  return result;
}

uint64_t sub_10000B584(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t sub_10000B620()
{
  v2 = v1;
  v3 = v0;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100003078(v4, qword_10034A190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Starting", v8, 2u);
  }

  if (![objc_opt_self() isSupported])
  {
    sub_100123630();
    swift_allocError();
    v11 = 8;
    goto LABEL_9;
  }

  v66 = v5;
  v9 = OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState;
  if (*(*(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) == 2)
  {
    sub_100123630();
    swift_allocError();
    v11 = 9;
LABEL_9:
    *v10 = v11;
    return swift_willThrow();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = &qword_10034A000;
  v67 = v3;
  if (!v69[0])
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "No session, creating one now", v16, 2u);
    }

    v17 = [objc_allocWithZone(NISession) init];
    if (qword_1003391E8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v68 = v69[0];
    if (!v69[0])
    {
      sub_100123630();
      swift_allocError();
      v11 = 5;
      goto LABEL_9;
    }

    v63 = v2;
    v65 = v13[65];
    *(v65 + v3) = 0;
    v17 = sub_1001A9D08();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v17;
      *v24 = v17;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v21, v22, "Running with %@", v23, 0xCu);
      sub_1000030B0(v24);

      v3 = v67;
    }

    [v68 runWithConfiguration:v17];
    v26 = *(v9 + v3);
    *(v26 + 24) = 2;

    sub_10000C49C();
    LOBYTE(v69[0]) = *(v26 + 24);
    CurrentValueSubject.send(_:)();

    sub_1000143FC();
    v9 = v61;
    v27 = *(v3 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_trackedTokens);
    __chkstk_darwin(v28);
    type metadata accessor for TrackedToken(0);
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v29 = v27 + qword_100346AF8;

    os_unfair_lock_lock(v29);
    v69[0] = *(v29 + 8);

    swift_getAtKeyPath();

    v30 = v69[6];
    os_unfair_lock_unlock(v29);

    v31 = v30[2];
    if (v31)
    {
      v3 = sub_100009194(v30[2], 0);
      v2 = sub_100009A04(v69, (v3 + 32), v31, v30);
      sub_100004F98(v69[0]);
      if (v2 != v31)
      {
        goto LABEL_67;
      }

      if (v3 < 0)
      {
        goto LABEL_36;
      }
    }

    else
    {

      v3 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }
    }

    if ((v3 & 0x4000000000000000) == 0)
    {
      v2 = *(v3 + 16);
      if (!v2)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

LABEL_36:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
LABEL_37:

      v35 = _swiftEmptyArrayStorage;
      goto LABEL_38;
    }

LABEL_29:
    v69[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_15:
    [v17 setDelegateQueue:qword_10038B5B8];
    [v17 setDelegate:v3];
    swift_getKeyPath();
    swift_getKeyPath();
    v69[0] = v17;
    v18 = v3;
    v19 = v17;
    static Published.subscript.setter();
    if (qword_100339160 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = v69[0];
    swift_unknownObjectWeakAssign();

    *&v18[v13[65]] = 0;
    v3 = v67;
  }

  v32 = 0;
  v13 = &OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v33 = *(v3 + 8 * v32 + 32);
    }

    ++v32;
    v34 = *(v33 + OBJC_IVAR____TtC17proximitycontrold12TrackedToken_token);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v2 != v32);

  v35 = v69[0];
LABEL_38:
  v9 = (v35 >> 62);
  if (v35 >> 62)
  {
    while (1)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        break;
      }

      if (v3 >= 0x1E)
      {
        v60 = 30;
      }

      else
      {
        v60 = v3;
      }

      if (v3 >= 0)
      {
        v36 = v60;
      }

      else
      {
        v36 = 30;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v36)
      {
        goto LABEL_77;
      }

LABEL_43:
      if ((v35 & 0xC000000000000001) != 0 && v36)
      {
        sub_100003118(0, &qword_10034A350, NIDiscoveryToken_ptr);

        v37 = 0;
        do
        {
          v38 = v37 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v37);
          v37 = v38;
        }

        while (v36 != v38);
      }

      else
      {
      }

      v62 = v17;

      if (v9)
      {
        v42 = _CocoaArrayWrapper.subscript.getter();
        v41 = v43;
        v39 = v44;
        v46 = v45;

        v40 = v42;
        v36 = v46 >> 1;
      }

      else
      {
        v39 = 0;
        v40 = v35 & 0xFFFFFFFFFFFFFF8;
        v41 = (v35 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      v9 = v65;
      v35 = v66;
      v61[1] = v40;
      swift_unknownObjectRetain();
      v48 = v36 - v39;
      if (v36 == v39)
      {
LABEL_62:

        return swift_unknownObjectRelease_n();
      }

      if (v36 <= v39)
      {
        v49 = v39;
      }

      else
      {
        v49 = v36;
      }

      v17 = (v49 - v39);
      v50 = (v41 + 8 * v39);
      *&v47 = 138412290;
      v64 = v47;
      v2 = &selRef_requestIdentifier;
      while (v17)
      {
        v51 = *v50;
        v13 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v13, v52))
        {
          v53 = swift_slowAlloc();
          v54 = v2;
          v55 = swift_slowAlloc();
          *v53 = v64;
          *(v53 + 4) = v51;
          *v55 = v51;
          v56 = v51;
          _os_log_impl(&_mh_execute_header, v13, v52, "  Adding %@", v53, 0xCu);
          sub_1000030B0(v55);
          v2 = v54;

          v9 = v65;
          v35 = v66;
        }

        [v68 *(v2 + 1456)];
        v57 = *(v9 + v67);
        v58 = __OFADD__(v57, 1);
        v59 = v57 + 1;
        if (v58)
        {
          goto LABEL_64;
        }

        *(v9 + v67) = v59;

        --v17;
        ++v50;
        if (!--v48)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  result = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0x1E)
  {
    v36 = 30;
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result >= v36)
  {
    goto LABEL_43;
  }

LABEL_77:
  __break(1u);
  return result;
}

__n128 sub_10000C074(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void sub_10000C088(uint64_t a1)
{
  v2 = v1;
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10034A190);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    type metadata accessor for NISessionSuspensionReason(0);
    v9 = String.init<A>(describing:)();
    v11 = sub_100017494(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Session SUSPENDED with reason: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v12 = *(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState);
  *(v12 + 24) = 3;

  sub_10000C49C();
  LOBYTE(v17) = *(v12 + 24);
  CurrentValueSubject.send(_:)();

  sub_1000143FC();
  if (a1 == 2)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Geographical region prohibits UWB", v15, 2u);
    }

    if (qword_100339130 != -1)
    {
      swift_once();
    }

    v16 = off_10034A1A8;
    *(off_10034A1A8 + 24) = 0;

    sub_10005E50C();
    LOBYTE(v17) = v16[24];
    CurrentValueSubject.send(_:)();
  }

  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy_reactivationRetrier))
  {

    sub_10001462C();
  }

  sub_10000CF60();
}

void sub_10000C450(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_10000C49C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_10034A3B0, &qword_100287660);
    swift_allocObject();
    v1 = CurrentValueSubject.init(_:)();
    *(v0 + 16) = v1;
  }

  return v1;
}

void sub_10000C538(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8)
    {
      v5 = *(*&v4[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24);
      v6 = v5 != 2;
      if (v5 == 2)
      {
        v7 = [v8 motionState];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
      v6 = 1;
    }
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
}

void sub_10000C648(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1001A2A18(v1, v3);
}

uint64_t sub_10000C684@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_10000C698@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = sub_1001A1F10();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_10000C6D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t initializeBufferWithCopyOfBuffer for SystemEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000C748@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_100035D04(&qword_10033B310, &qword_100271EF8);
  *a2 = v3;
  *(a2 + 8) = v4;
  return Date.init()();
}

uint64_t sub_10000C7A0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = a1[8];
  v6 = sub_100035D04(&qword_10033B310, &qword_100271EF8);
  return v3(v4, v5, &a1[*(v6 + 48)]);
}

uint64_t type metadata accessor for SessionEvent(uint64_t a1)
{
  result = qword_100347788;
  if (!qword_100347788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000C868()
{
  v1 = sub_100035D04(&qword_10033FA60, &qword_100276838);
  __chkstk_darwin(v1 - 8);
  v3 = &v37 - v2;
  v4 = sub_100035D04(&qword_10033FA68, &unk_100276840);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName + 8);
  if (v11)
  {
    v12 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      return v12;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v38;
  if (v38)
  {
    v15 = [v38 name];
  }

  else
  {
    v26 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
    if (v26 && (v27 = [v26 name]) != 0)
    {
      v15 = v27;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v28 = v38;
      if (!v38 || (v15 = [v38 name], v28, !v15))
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v29 = v38;
        if (!v38 || (v15 = [v38 name], v29, !v15))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v30 = v38;
          if (!v38)
          {
            goto LABEL_12;
          }

          v15 = [v38 name];

          if (!v15)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    return v12;
  }

LABEL_12:
  v21 = sub_10000A0B4(v19, v20);
  if (v22)
  {
    v23 = String._bridgeToObjectiveC()();

    v24 = v23;
    if ([v24 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v24, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v24, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(v24, "hasPrefix:", @"HomePod"))
    {

      v25 = [objc_opt_self() localizedStringForKey:14];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v12;
    }
  }

  sub_10000A0B4(v21, v22);
  if (!v31)
  {
    return 0;
  }

  v32 = type metadata accessor for UTHardwareColor();
  (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
  UTType.init(_deviceModelCode:enclosureColor:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000097E8(v6, &qword_10033FA68, &unk_100276840);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = UTType.localizedDescription.getter();
  v34 = v33;
  (*(v8 + 8))(v10, v7);
  if (!v34)
  {
    return 0;
  }

  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    return 0;
  }

  return v12;
}

void sub_10000CF60()
{
  if (qword_100339128 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v0 = type metadata accessor for Logger();
    sub_100003078(v0, qword_10034A190);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Removing all ranging info", v3, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      break;
    }

    v25 = Strong;
    v5 = *(*(Strong + OBJC_IVAR____TtC17proximitycontrold11NearbyAgent_state) + 16);
    __chkstk_darwin(Strong);
    type metadata accessor for HandoffDevice(0);
    type metadata accessor for UUID();
    sub_1001AC18C(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v6 = v5 + qword_100346AF8;

    os_unfair_lock_lock(v6);
    v29[0] = *(v6 + 8);

    swift_getAtKeyPath();

    v7 = v29[6];
    os_unfair_lock_unlock(v6);

    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = sub_100009194(*(v7 + 16), 0);
      v10 = sub_100009A04(v29, (v9 + 32), v8, v7);
      sub_100004F98(v29[0]);
      if (v10 != v8)
      {
        __break(1u);
        return;
      }

      if (v9 < 0)
      {
LABEL_29:
        v15 = _CocoaArrayWrapper.endIndex.getter();
        if (!v15)
        {
LABEL_30:

          return;
        }

        goto LABEL_15;
      }
    }

    else
    {

      v9 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }
    }

    if ((v9 & 0x4000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v15 = *(v9 + 16);
    if (!v15)
    {
      goto LABEL_30;
    }

LABEL_15:
    v16 = 0;
    v17 = v9 & 0xC000000000000001;
    v26 = v0;
    v27 = v15;
    while (v17)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

LABEL_20:
      v28 = objc_autoreleasePoolPush();

      sub_10000D4C4(5);

      if (qword_100338E88 != -1)
      {
        swift_once();
      }

      sub_100003078(v0, qword_10033CBC8);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = v17;
        v23 = v9;
        v24 = swift_slowAlloc();
        v29[0] = v24;
        *v21 = 136315138;
        *(v21 + 4) = sub_100017494(0xD000000000000016, 0x80000001002993B0, v29);
        _os_log_impl(&_mh_execute_header, v19, v20, "%s", v21, 0xCu);
        sub_10000903C(v24);
        v9 = v23;
        v17 = v22;

        v0 = v26;
        v15 = v27;
      }

      LOBYTE(v29[0]) = 1;
      sub_10000D8F4(0x100000000uLL);

      objc_autoreleasePoolPop(v28);

      ++v16;
      if (v18 == v15)
      {
        goto LABEL_30;
      }
    }

    if (v16 >= *(v9 + 16))
    {
      goto LABEL_27;
    }

    v18 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "### No NearbyAgent?", v13, 2u);
  }

  sub_100123630();
  swift_allocError();
  *v14 = 2;
  swift_willThrow();
}

void sub_10000D4C4(char a1)
{
  v2 = v1;
  v31 = a1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    LOBYTE(v28[0]) = a1;

    sub_100035D04(&qword_100339988, &qword_100272B60);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v5 = *v1;
    if (v4)
    {
      v6 = *(v1 + *(v5 + 112));
      if (v6)
      {
        v7 = v6;
        v8 = String._bridgeToObjectiveC()();

        [v7 removeObjectForKey:v8];

        return;
      }

LABEL_11:

      return;
    }

    v9 = *(v1 + *(v5 + 120));
    if (v9 == 2 || (v9 & 1) == 0)
    {
      v12 = *(v1 + *(v5 + 112));
      if (v12)
      {
        LOBYTE(v28[0]) = a1;
        v13 = v12;
        v14 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v15 = String._bridgeToObjectiveC()();

        [v13 setValue:v14 forKey:v15];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v27 = a1;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v26, v28);
      v10 = v29;
      v11 = v30;
      sub_10000EBC0(v28, v29);
      v19 = sub_10013FF24(v10, v11);
      v21 = v20;
      v22 = *(v2 + *(*v2 + 112));
      if (v22)
      {
        v23 = v22;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v25 = String._bridgeToObjectiveC()();

        [v23 setValue:isa forKey:v25];
        sub_100010708(v19, v21);
      }

      else
      {

        sub_100010708(v19, v21);
      }

      sub_10000903C(v28);
    }

    else
    {

      memset(v26, 0, sizeof(v26));
      sub_1000097E8(v26, &unk_10034B470, &qword_100289670);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to cast as Codable", v18, 2u);
      }
    }
  }
}

void sub_10000D8F4(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v33 = a1;
  v4 = HIDWORD(a1) & 1;
  v34 = BYTE4(a1) & 1;
  CurrentValueSubject.send(_:)();
  if (*(v2 + *(*v2 + 128) + 8))
  {
    LODWORD(v30) = v3;
    BYTE4(v30) = v4;

    sub_100035D04(&unk_10034B5D0, &unk_100289850);
    _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    swift_unknownObjectRelease();
    v6 = *v1;
    if (v5)
    {
      v7 = *(v1 + *(v6 + 112));
      if (v7)
      {
        v8 = v7;
        v9 = String._bridgeToObjectiveC()();

        [v8 removeObjectForKey:v9];

        return;
      }

LABEL_11:

      return;
    }

    v10 = *(v1 + *(v6 + 120));
    if (v10 == 2 || (v10 & 1) == 0)
    {
      v13 = *(v1 + *(v6 + 112));
      if (v13)
      {
        LODWORD(v30) = v3;
        BYTE4(v30) = v4;
        v14 = v13;
        v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v16 = String._bridgeToObjectiveC()();

        [v14 setValue:v15 forKey:v16];

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_11;
    }

    v28 = v3;
    v29 = v4;
    sub_100035D04(&qword_10034B468, &qword_100289668);
    if (swift_dynamicCast())
    {
      sub_1001CB418(v27, &v30);
      v11 = v31;
      v12 = v32;
      sub_10000EBC0(&v30, v31);
      v20 = sub_10013FF24(v11, v12);
      v22 = v21;
      v23 = *(v2 + *(*v2 + 112));
      if (v23)
      {
        v24 = v23;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v26 = String._bridgeToObjectiveC()();

        [v24 setValue:isa forKey:v26];
        sub_100010708(v20, v22);
      }

      else
      {

        sub_100010708(v20, v22);
      }

      sub_10000903C(&v30);
    }

    else
    {

      memset(v27, 0, sizeof(v27));
      sub_1000097E8(v27, &unk_10034B470, &qword_100289670);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "### Failed to cast as Codable", v19, 2u);
      }
    }
  }
}

void sub_10000DD38(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100064ED0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100066500();
      goto LABEL_16;
    }

    sub_100066BF4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t type metadata accessor for HandoffDevice(uint64_t a1)
{
  result = qword_10033CC98;
  if (!qword_10033CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DF0C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
LABEL_3:

    return v3;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14)
  {
    v5 = [v14 mediaRouteIdentifier];

    if (v5)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  while (v7)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 mediaRouteID];
      if (v12)
      {
        v13 = v12;

        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      ++v8;
      if (v11 == v7)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_26:

  v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID + 8))
  {
    goto LABEL_3;
  }

  return v3;
}

uint64_t sub_10000E120()
{
  result = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (result)
  {
    result = [result relationship];
    v2 = 4 * (result & 1);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (!v3)
  {
    return v2;
  }

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_7;
    }

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return v2;
  }

LABEL_7:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 type];

      v9 = v2 | 2;
      if (v8 != 9)
      {
        v9 = v2;
      }

      if (v8 - 3 >= 2)
      {
        v2 = v9;
      }

      else
      {
        v2 |= 1uLL;
      }
    }

    while (v4 != v5);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E244(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000E2B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v34)
  {
    v4 = sub_100003118(0, &unk_10034A340, CBDevice_ptr);
    v5 = &off_10030F7E0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v39 = 0;
    v40 = 0;
  }

  v38 = v34;
  v41 = v4;
  v42 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v34)
  {
    v6 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v7 = &off_100302560;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v44 = 0;
    v45 = 0;
  }

  v43 = v34;
  v46 = v6;
  v47 = v7;
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v8)
  {
    v9 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v10 = &off_1003034A8;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v49 = 0;
    v50 = 0;
  }

  v48 = v8;
  v51 = v9;
  v52 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v8;
  static Published.subscript.getter();

  if (v34)
  {
    v12 = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v13 = &off_100316108;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v54 = 0;
    v55 = 0;
  }

  v53 = v34;
  v56 = v12;
  v57 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v34)
  {
    v14 = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    v15 = &off_100316108;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v59 = 0;
    v60 = 0;
  }

  v58 = v34;
  v61 = v14;
  v62 = v15;
  v16 = 32;
  v17 = _swiftEmptyArrayStorage;
  do
  {
    sub_100009848(&v37[v16], &v34, &qword_10033FA28, &unk_1002767F0);
    v31[0] = v34;
    v31[1] = v35;
    v32 = v36;
    if (*(&v35 + 1))
    {
      sub_10000E754(v31, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_10000E8B4(0, v17[2] + 1, 1, v17);
      }

      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_10000E8B4((v18 > 1), v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      sub_10000E754(v33, &v17[5 * v19 + 4]);
    }

    else
    {
      sub_1000097E8(v31, &qword_10033FA28, &unk_1002767F0);
    }

    v16 += 40;
  }

  while (v16 != 232);
  sub_100035D04(&qword_10033FA28, &unk_1002767F0);
  swift_arrayDestroy();
  *&v33[0] = v17;
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v20 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = sub_10000E9E0(v20);

  sub_10000E8D8(v21);
  v22 = *&v33[0];
  result = *&v33[0] + 32;
  v24 = -*(*&v33[0] + 16);
  v25 = -1;
  while (1)
  {
    v26 = v24 + v25;
    if (v24 + v25 == -1)
    {
LABEL_32:

      return v26 != -1;
    }

    if (++v25 >= *(v22 + 16))
    {
      break;
    }

    v27 = result + 40;
    sub_10007E790(result, &v34);
    v28 = *(&v35 + 1);
    v29 = v36;
    sub_10000EBC0(&v34, *(&v35 + 1));
    v30 = (*(v29 + 64))(a1, v28, v29);
    sub_10000903C(&v34);
    result = v27;
    if (v30)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E754(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000E76C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100035D04(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_10000E8D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10000E8B4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100035D04(&qword_10033F040, qword_100275EC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000E9E0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_10000F604(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_10000F604((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
        v16 = &off_1003082C8;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10000E754(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_10000F604((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
        v16 = &off_1003082C8;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10000E754(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10000EBC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_10000EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = (*(a3 + 16))(v30, a2, a3);

  if (v6)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v30)
  {
    v7 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
    v8 = &off_100302540;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v31 = 0;
    v32 = 0;
  }

  v33 = v7;
  v34 = v8;
  v9 = (*(a3 + 24))(&v30, a2, a3);
  sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
  if (v9)
  {
    return 1;
  }

  v10 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v10)
  {
    v11 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v12 = &off_100303480;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v31 = 0;
    v32 = 0;
  }

  v30 = v10;
  v33 = v11;
  v34 = v12;
  v13 = *(a3 + 32);
  v14 = v10;
  v15 = v13(&v30, a2, a3);
  sub_1000097E8(&v30, &qword_10033A240, &unk_100272E70);
  if (v15)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v30;
  v17 = *(a3 + 40);
  v18 = v17(v30, a2, a3);

  if (v18)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v30;
  v20 = v17(v30, a2, a3);

  if (v20)
  {
    return 1;
  }

  if (*(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities))
  {
    v23 = *(a1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  if (v23 >> 62)
  {
LABEL_31:
    v28 = v23 & 0xFFFFFFFFFFFFFF8;
    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = v23 & 0xFFFFFFFFFFFFFF8;
    v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  do
  {
    v21 = v29 != v24;
    if (v29 == v24)
    {
      break;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v24 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v25 = *(v23 + 8 * v24 + 32);
    }

    v26 = v25;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v27 = (*(a3 + 48))(v25, a2, a3);

    ++v24;
  }

  while ((v27 & 1) == 0);

  return v21;
}

uint64_t sub_10000F024(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void *sub_10000F044(void *result)
{
  if (result)
  {
    v2 = *v1;
    v3 = result;
    v4 = v2;
    sub_100008574();
    v6 = v5;
    v7 = sub_10000F0CC();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    return (v9 != 0);
  }

  return result;
}

uint64_t sub_10000F0CC()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [v0 idsDeviceID];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100009088(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_100009088((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v19 = sub_100008F34(v11);

  return v19;
}

uint64_t sub_10000F274(uint64_t a1)
{
  sub_100009848(a1, v5, &unk_10034B540, qword_100270E60);
  v1 = v6;
  if (v6)
  {
    v2 = v7;
    sub_10000EBC0(v5, v6);
    sub_100008574();
    LOBYTE(v1) = sub_10015A19C(v3, v1, *(v2 + 8));

    sub_10000903C(v5);
  }

  else
  {
    sub_1000097E8(v5, &unk_10034B540, qword_100270E60);
  }

  return v1 & 1;
}

uint64_t sub_10000F32C(uint64_t a1)
{
  v2 = *v1;
  sub_100009848(a1, &v7, &qword_10033A240, &unk_100272E70);
  if (v8)
  {
    sub_100038394(&v7, v9);
    v3 = v10;
    v4 = v11;
    sub_10000EBC0(v9, v10);
    v5 = (*(*(v4 + 8) + 40))(v2, v3);
    sub_10000903C(v9);
  }

  else
  {
    sub_1000097E8(&v7, &qword_10033A240, &unk_100272E70);
    v5 = 0;
  }

  return v5 & 1;
}

BOOL sub_10000F414(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    sub_100103CBC();
    v2 = v1;
    if (static NSObject.== infix(_:_:)())
    {

      return 1;
    }

    else
    {
      sub_100008574();
      v4 = v3;
      sub_100008574();
      v6 = sub_1000089FC(v5, v4);

      v7 = *(v6 + 16);

      return v7 != 0;
    }
  }

  return result;
}

void *sub_10000F4BC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033F038, &unk_100278400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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
    sub_100035D04(&qword_10033F040, qword_100275EC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F604(void *a1, int64_t a2, char a3)
{
  result = sub_10000F4BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

BOOL sub_10000F624(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (a1)
  {
    v22[3] = a2;
    v22[4] = a3;
    v6 = sub_10000F798(v22);
    (*(*(a2 - 8) + 16))(v6, v3, a2);
    sub_100009848(v22, &v17, &qword_10033A240, &unk_100272E70);
    if (v18)
    {
      sub_10000E754(&v17, v19);
      v7 = v20;
      v8 = v21;
      sub_10000EBC0(v19, v20);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v4;
      v12 = v10(v7, v9);
      v13 = sub_10000F0CC();
      v14 = sub_1000089FC(v13, v12);

      v15 = *(v14 + 16);

      v4 = v15 != 0;
      sub_10000903C(v19);
    }

    else
    {
      sub_1000097E8(&v17, &qword_10033A240, &unk_100272E70);
      v4 = 0;
    }

    sub_1000097E8(v22, &qword_10033A240, &unk_100272E70);
  }

  return v4;
}

uint64_t *sub_10000F798(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10000F7FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_100348F30, &unk_100272540);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v28 = (*(a2 + 16))(a1, a2);
  v29 = v7;
  v30 = (*(a2 + 24))(a1, a2);
  v31 = v8;
  (*(a2 + 32))(a1, a2);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    result = sub_1000097E8(v6, &unk_100348F30, &unk_100272540);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = UUID.uuidString.getter();
    v13 = v14;
    result = (*(v10 + 8))(v6, v9);
  }

  v15 = 0;
  v32 = v12;
  v33 = v13;
  v16 = _swiftEmptyArrayStorage;
LABEL_5:
  if (v15 <= 3)
  {
    v17 = 3;
  }

  else
  {
    v17 = v15;
  }

  v18 = v17 + 1;
  v19 = 16 * v15 + 40;
  while (1)
  {
    if (v15 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      v26 = sub_100008F34(v16);

      return v26;
    }

    if (v18 == ++v15)
    {
      break;
    }

    v20 = v19 + 16;
    v21 = *&v27[v19];
    v19 += 16;
    if (v21)
    {
      v22 = *&v27[v20 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009088(0, *(v16 + 2) + 1, 1, v16);
        v16 = result;
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        result = sub_100009088((v23 > 1), v24 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 2) = v24 + 1;
      v25 = &v16[16 * v24];
      *(v25 + 4) = v22;
      *(v25 + 5) = v21;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

id sub_10000FAB8()
{
  v1 = *v0;
  if ([*v0 isLocallyPaired])
  {
    return 0;
  }

  result = [v1 uniqueID];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  return result;
}

uint64_t sub_10000FB3C()
{
  v1 = [*v0 uniqueIDOverride];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10000FBA4@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 nsuuid];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

BOOL sub_10000FC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100009848(a1, &v13, &unk_10034B540, qword_100270E60);
  if (v14)
  {
    sub_10000E754(&v13, v15);
    v6 = v16;
    v5 = v17;
    sub_10000EBC0(v15, v16);
    v7 = (*(*(v5 + 8) + 8))(v6);
    v8 = (*(*(a3 + 8) + 8))(a2);
    v9 = sub_1000089FC(v8, v7);

    v10 = *(v9 + 16);

    v11 = v10 != 0;
    sub_10000903C(v15);
  }

  else
  {
    sub_1000097E8(&v13, &unk_10034B540, qword_100270E60);
    return 0;
  }

  return v11;
}

uint64_t sub_10000FD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  sub_100009848(a1, &v52, &qword_10033A240, &unk_100272E70);
  if (v53)
  {
    v48 = v16;
    v49 = v18;
    v50 = v9;
    v51 = v13;
    sub_10000E754(&v52, v54);
    v19 = (*(a3 + 16))(a2, a3);
    if (v20)
    {
      v21 = v19;
      v22 = v20;
      v24 = v55;
      v23 = v56;
      sub_10000EBC0(v54, v55);
      v25 = (*(v23 + 16))(v24, v23);
      if (v26)
      {
        if (v21 == v25 && v22 == v26)
        {
          goto LABEL_14;
        }

        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v28 = (*(a3 + 24))(a2, a3);
    if (v29)
    {
      v30 = v28;
      v31 = v29;
      v32 = v55;
      v33 = v56;
      sub_10000EBC0(v54, v55);
      v34 = (*(v33 + 24))(v32, v33);
      if (v35)
      {
        if (v30 == v34 && v31 == v35)
        {
LABEL_14:

LABEL_15:
          sub_10000903C(v54);
          return 1;
        }

        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v37)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    (*(a3 + 32))(a2, a3);
    v38 = v51;
    v39 = *(v51 + 48);
    if (v39(v11, 1, v12) != 1)
    {
      v40 = v49;
      v47 = *(v38 + 32);
      v47(v49, v11, v12);
      v41 = v55;
      v42 = v56;
      sub_10000EBC0(v54, v55);
      v11 = v50;
      (*(v42 + 32))(v41, v42);
      if (v39(v11, 1, v12) != 1)
      {
        v43 = v48;
        v47(v48, v11, v12);
        v44 = static UUID.== infix(_:_:)();
        v45 = *(v38 + 8);
        v45(v43, v12);
        v45(v40, v12);
        if (v44)
        {
          goto LABEL_15;
        }

        goto LABEL_22;
      }

      (*(v38 + 8))(v40, v12);
    }

    sub_1000097E8(v11, &unk_100348F30, &unk_100272540);
LABEL_22:
    sub_10000903C(v54);
    return 0;
  }

  sub_1000097E8(&v52, &qword_10033A240, &unk_100272E70);
  return 0;
}

BOOL sub_100010220(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_100008574();
    v6 = v5;
    v7 = (*(*(a3 + 8) + 8))(a2);
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    return v9 != 0;
  }

  return result;
}

void *sub_1000102B4(void *result)
{
  if (result)
  {
    v2 = *v1;
    v3 = result;
    LOBYTE(v2) = sub_1000102F8(v2);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_1000102F8(void *a1)
{
  v2 = v1;
  result = [v2 identifier];
  if (result)
  {

    v5 = [v2 nearbyAuthTag];
    if (v5)
    {
      v6 = v5;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = [v2 btAddressData];
      if (v10)
      {
        v11 = v10;
        v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        isa = Data._bridgeToObjectiveC()().super.isa;
        v16 = Data._bridgeToObjectiveC()().super.isa;
        v25 = 0;
        v17 = [a1 verifyAuthTag:isa data:v16 type:2 error:&v25];

        if (v17)
        {
          v18 = v25;
          sub_100010708(v12, v14);
          sub_100010708(v7, v9);
          return 1;
        }

        v19 = v25;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        sub_100010708(v7, v9);
        sub_100010708(v12, v14);
      }

      else
      {
        sub_100010708(v7, v9);
      }
    }

    sub_1000104F8();
    v21 = v20;
    v22 = sub_10000F0CC();
    v23 = sub_1000089FC(v22, v21);

    v24 = *(v23 + 16);

    return v24 != 0;
  }

  return result;
}

void sub_1000104F8()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v28 = v3;
  v29 = v5;
  v6 = [v0 idsDeviceID];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v30 = v8;
  v31 = v10;
  v11 = [v0 mediaRemoteID];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = 0;
  v32 = v13;
  v33 = v15;
  v17 = _swiftEmptyArrayStorage;
LABEL_11:
  if (v16 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v16;
  }

  v19 = v18 + 1;
  v20 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      sub_100008F34(v17);

      return;
    }

    if (v19 == ++v16)
    {
      break;
    }

    v21 = v20 + 16;
    v22 = *&v27[v20];
    v20 += 16;
    if (v22)
    {
      v23 = *&v27[v21 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_100009088(0, *(v17 + 2) + 1, 1, v17);
      }

      v25 = *(v17 + 2);
      v24 = *(v17 + 3);
      if (v25 >= v24 >> 1)
      {
        v17 = sub_100009088((v24 > 1), v25 + 1, 1, v17);
      }

      *(v17 + 2) = v25 + 1;
      v26 = &v17[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100010708(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

BOOL sub_10001075C(uint64_t a1)
{
  sub_100009848(a1, &v9, &unk_10034B540, qword_100270E60);
  if (v10)
  {
    sub_10000E754(&v9, v11);
    v2 = v12;
    v1 = v13;
    sub_10000EBC0(v11, v12);
    v3 = (*(*(v1 + 8) + 8))(v2);
    sub_1000104F8();
    v5 = sub_1000089FC(v4, v3);

    v6 = *(v5 + 16);

    v7 = v6 != 0;
    sub_10000903C(v11);
  }

  else
  {
    sub_1000097E8(&v9, &unk_10034B540, qword_100270E60);
    return 0;
  }

  return v7;
}

uint64_t sub_100010874(uint64_t a1)
{
  v2 = *v1;
  sub_100009848(a1, &v7, &qword_10033A240, &unk_100272E70);
  if (v8)
  {
    sub_10000E754(&v7, v9);
    v3 = v10;
    v4 = v11;
    sub_10000EBC0(v9, v10);
    v5 = (*(*(v4 + 8) + 48))(v2, v3);
    sub_10000903C(v9);
  }

  else
  {
    sub_1000097E8(&v7, &qword_10033A240, &unk_100272E70);
    v5 = 0;
  }

  return v5 & 1;
}

void *sub_100010934(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1000104F8();
    v3 = v2;
    sub_100008574();
    v5 = sub_1000089FC(v4, v3);

    v6 = *(v5 + 16);

    return (v6 != 0);
  }

  return result;
}

void sub_1000109AC(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_100349658);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "CHANGED %@", v11, 0xCu);
      sub_1000097E8(v12, &qword_100339940, &unk_100272C50);
    }

    if ((sub_10019278C(v8) & 1) == 0 && (a2 & 2) != 0)
    {
      sub_100007598(v8);
    }
  }
}

uint64_t sub_100010B48(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100010BC8()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v29 - v6;
  v8 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000120BC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        return 0x65446C65636E6163;
      }

      else
      {
        return 0x6574736575716572;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      return 0x4E66497972746572;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      return 0x6F546D6574737973;
    }

    else
    {
      return 0x74756F656D6974;
    }
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100010B48(v10);
      return 0x5465766965636572;
    }

    v13 = 0x7265766F63736964;
    v14 = *v10;
    v15 = 0xEB000000002D6465;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = 0x6F5465766F6D6572;
    v14 = *v10;
    v15 = 0xEC0000002D6E656BLL;
LABEL_11:
    v30 = v13;
    v31 = v15;
    if (v14)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v14)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

    return v30;
  }

  sub_10003693C(v10, v7, &qword_10033AAA0, &qword_1002716E0);
  sub_100009848(v7, v5, &qword_10033AAA0, &qword_1002716E0);
  v19 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v5, 1, v19);
  if (v21 == 1)
  {
    sub_1000097E8(v5, &qword_10033AAA0, &qword_1002716E0);
    v22 = 0;
  }

  else
  {
    v22 = sub_1001F7854();
    (*(v20 + 8))(v5, v19);
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);

  v30 = 0xD00000000000001BLL;
  v31 = 0x8000000100297D40;
  if (v21 == 1)
  {
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    v29[1] = v22;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v25;
  }

  v26 = v23;
  String.append(_:)(*&v24);

  v27._countAndFlagsBits = 10528;
  v27._object = 0xE200000000000000;
  String.append(_:)(v27);
  v28 = v30;
  sub_1000097E8(v7, &qword_10033AAA0, &qword_1002716E0);
  return v28;
}

unint64_t sub_100010FF4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v18[OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities];

  if (v2 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = sub_10000A0B4(v3, v4);
    v7 = v6;

    if (v7)
    {
      v8 = sub_100011F00(v5, v7);

      if (v8 - 1 < 2)
      {
        return 3;
      }

      if (!v8)
      {
        return 1;
      }

      if (v8 != 7)
      {
        return 0;
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18)
  {
    v9 = [v18 supportsR1];

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *&v18[OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID];
  v12 = v11;

  if (v11)
  {

    if (qword_100338E80 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_10038AEE8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Adding BLE AND UWB because nearbyID exists", v16, 2u);
    }

    if (v10 >= 2)
    {
      v10 |= 1uLL;
    }

    else
    {
      return 3;
    }
  }

  return v10;
}

char *sub_100011348(void *a1)
{
  if (!&swift_runtimeSupportsNoncopyableTypes)
  {
    return &type metadata for () + 8;
  }

  type metadata accessor for Dictionary();
  return type metadata accessor for Mutex();
}

const char *sub_100011398()
{
  v1 = *v0;
  v2 = "Handoff_Animation";
  v3 = "NowPlaying_AutoLaunch_Guest_Tinker_Support";
  if (v1 != 6)
  {
    v3 = "NowPlaying_AutoLaunch_Inner_Region";
  }

  v4 = "Lockscreen_Media_Controls";
  if (v1 != 4)
  {
    v4 = "NowPlaying_AutoLaunch";
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = "Handoff_v3";
  if (v1 != 2)
  {
    v5 = "Handoff_Trigger_Feedback";
  }

  if (*v0)
  {
    v2 = "Handoff_v2";
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100011458@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_1000114E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  __chkstk_darwin(v9 - 8);
  v11 = v35 - v10;
  v37 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v12 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = v35 - v13;
  v45 = v2;
  result = sub_1000118E8(a1, v11);
  if (!v3)
  {
    v16 = v36;
    v17 = v6;
    v35[1] = 0;
    if ((*(v12 + 48))(v11, 1, v37) == 1)
    {
      sub_1000097E8(v11, &qword_10033AAF8, &qword_100271808);
      return (*(v12 + 56))(v16, 1, 1, v37);
    }

    else
    {
      result = sub_10016B564(v11, v14);
      v19 = *&v14[*(v37 + 76)];
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = 0;
        v43 = (v17 + 8);
        v44 = (v17 + 16);
        *&v18 = 136315138;
        v38 = v18;
        v41 = v14;
        v42 = v8;
        v39 = v20;
        v40 = v19;
        while (v21 < *(v19 + 16))
        {
          v22 = *v44;
          v46 = *v45;
          v22(v8, v46 + OBJC_IVAR____TtC17proximitycontrold26DiscoveryTokenStateMachine_log, v5);
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v47 = v26;
            *v25 = v38;
            v27 = String.init<A>(describing:)();
            v29 = sub_100017494(v27, v28, &v47);
            v30 = v5;
            v31 = v42;

            *(v25 + 4) = v29;
            _os_log_impl(&_mh_execute_header, v23, v24, "Output: %s", v25, 0xCu);
            sub_10000903C(v26);
            v19 = v40;

            v20 = v39;

            v8 = v31;
            v32 = v31;
            v5 = v30;
            v33 = v30;
            v14 = v41;
            (*v43)(v32, v33);
          }

          else
          {

            (*v43)(v8, v5);
          }

          ++v21;

          PassthroughSubject.send(_:)();

          if (v20 == v21)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_11:
        v34 = v36;
        sub_10016B564(v14, v36);
        return (*(v12 + 56))(v34, 0, 1, v37);
      }
    }
  }

  return result;
}

uint64_t sub_1000118E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10033AAF8, &qword_100271808);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  result = sub_100011B6C(a1, v7);
  if (!v2)
  {
    v22 = 0;
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000097E8(v7, &qword_10033AAF8, &qword_100271808);
      v13 = 1;
    }

    else
    {
      sub_10016B564(v7, v11);
      v23 = v11[8];
      v14 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine, &unk_10027165C);
      v21 = a2;
      v15 = v14;
      v16 = *(v14 + 88);
      v17 = type metadata accessor for DiscoveryTokenStateMachine(0);
      v18 = v16(&v23, v17, v15);
      __chkstk_darwin(v18);
      *(&v21 - 2) = a1;
      v19 = v22;
      sub_10007EEB8(sub_10008CAA4, (&v21 - 4), v20);
      v22 = v19;
      a2 = v21;
      sub_10016B564(v11, v21);
      v13 = 0;
    }

    return (*(v9 + 56))(a2, v13, 1, v8);
  }

  return result;
}

uint64_t sub_100011B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v31 = v2;
  v9 = *(v2 + 32);
  v30 = &v31;

  v10 = sub_10001232C(sub_1000130B4, v29, v9);
  v28 = a1;
  v11 = sub_10001232C(sub_1000130D4, v27, v10);
  v26 = a1;
  v12 = sub_10001232C(sub_1000122C8, v25, v11);
  v13 = v12;
  v14 = v12[2];
  if (v14 <= 1)
  {
    if (v14)
    {
      sub_100009848(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v8, &qword_10033AAD0, &qword_100271708);

      sub_10016B564(v8, a2);
      v23 = 0;
    }

    else
    {

      v23 = 1;
    }

    return (*(v6 + 56))(a2, v23, 1, v5);
  }

  else
  {
    v24[1] = sub_100035D04(&qword_100348660, &qword_100281CB0);
    sub_10000E244(&qword_100348668, &qword_100348660, &qword_100281CB0, &unk_10027C780);
    swift_allocError();
    v16 = v15;
    v17 = sub_100035D04(&qword_100348670, &qword_100281CB8);
    v18 = *(v17 + 48);
    v24[0] = *(v17 + 64);
    v19 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine, &unk_10027165C);
    v20 = *(v19 + 80);
    v21 = type metadata accessor for DiscoveryTokenStateMachine(0);
    v20(v21, v19);
    sub_1000120BC(a1, v16 + v18);
    *(v16 + v24[0]) = v13;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

BOOL sub_100011E5C(uint64_t a1)
{
  v2 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000120BC(a1, v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  sub_100010B48(v4);
  return v5;
}

uint64_t sub_100011F00(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  while (1)
  {
    v5 = *(&off_1003001B8 + v4 + 32);
    if (*(&off_1003001B8 + v4 + 32) > 2u)
    {
      break;
    }

    v6 = 0xD000000000000011;
    if (!*(&off_1003001B8 + v4 + 32))
    {
      v7 = 0x80000001002A2C10;
      if (a1 != 0xD000000000000011)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v5 == 1)
    {
      v7 = 0x80000001002A2BF0;
      if (a1 != 0xD000000000000011)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v7 = 0x80000001002A2BD0;
LABEL_17:
    if (v6 == a1)
    {
      goto LABEL_18;
    }

LABEL_19:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return v5;
    }

    if (++v4 == 7)
    {
      return 7;
    }
  }

  if (*(&off_1003001B8 + v4 + 32) > 4u)
  {
    if (v5 == 5)
    {
      v7 = 0xEA0000000000322CLL;
      if (a1 != 0x3531656E6F685069)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = 0xEA0000000000332CLL;
      if (a1 != 0x3531656E6F685069)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  v6 = 0x3231656E6F685069;
  v7 = 0xEA0000000000332CLL;
  if (v5 == 3)
  {
    goto LABEL_17;
  }

  v7 = 0xEA0000000000352CLL;
  if (a1 != 0x3231656E6F685069)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v7 != a2)
  {
    goto LABEL_19;
  }

  return v5;
}

uint64_t sub_1000120BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012120(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033AAC0, &qword_1002716F8);
  v5 = a2 + *(v4 + 40);
  v6 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  if ((*(v5 + *(v6 + 84)))(a1))
  {
    return (*(a2 + *(v4 + 44)))(a1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000121C0(uint64_t a1)
{
  v3 = *(sub_100035D04(&qword_10033AAC0, &qword_1002716F8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100012120(a1, v4);
}

uint64_t sub_1000122C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  return (*(a1 + *(v4 + 84)))(v3) & 1;
}

void *sub_10001232C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  v25 = *(v7 - 8);
  v8 = __chkstk_darwin(v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_100009848(a3 + v15 + v16 * v13, v12, &qword_10033AAD0, &qword_100271708);
      v17 = a1(v12);
      if (v3)
      {
        sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_10003693C(v12, v24, &qword_10033AAD0, &qword_100271708);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100012FA0(0, v14[2] + 1, 1);
          v14 = v26;
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          sub_100012FA0((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        v14[2] = v20 + 1;
        result = sub_10003693C(v24, v14 + v15 + v20 * v16, &qword_10033AAD0, &qword_100271708);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_1000097E8(v12, &qword_10033AAD0, &qword_100271708);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_1000125B0(uint64_t a1, char *a2)
{
  v49 = a1;
  v50 = a2;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin(v2);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_10033AAA0, &qword_1002716E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v45 - v6;
  v8 = sub_100035D04(&qword_10033AAA8, &qword_1002716E8);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v45 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = (&v45 - v19);
  __chkstk_darwin(v18);
  v22 = &v45 - v21;
  v23 = sub_100035D04(&qword_10033AAB0, &qword_1002716F0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = &v45 - v25;
  v27 = *(v24 + 56);
  sub_1000120BC(v49, &v45 - v25);
  sub_1000120BC(v50, &v26[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_32;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() != 7)
        {
          goto LABEL_32;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (swift_getEnumCaseMultiPayload() == 5)
    {
LABEL_29:
      sub_100010B48(v26);
      v32 = 1;
      return v32 & 1;
    }

LABEL_32:
    sub_1000097E8(v26, &qword_10033AAB0, &qword_1002716F0);
LABEL_33:
    v32 = 0;
    return v32 & 1;
  }

  v50 = v7;
  v29 = v48;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1000120BC(v26, v17);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_32;
      }

      v30 = *v17;
LABEL_14:
      v31 = v30 ^ v26[v27];
      sub_100010B48(v26);
      v32 = v31 ^ 1;
      return v32 & 1;
    }

    sub_1000120BC(v26, v14);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1000097E8(v14, &qword_10033AAA0, &qword_1002716E0);
      goto LABEL_32;
    }

    v35 = *(v8 + 48);
    sub_10003693C(v14, v10, &qword_10033AAA0, &qword_1002716E0);
    sub_10003693C(&v26[v27], &v10[v35], &qword_10033AAA0, &qword_1002716E0);
    v36 = v29;
    v37 = *(v29 + 48);
    v38 = v47;
    if (v37(v10, 1, v47) == 1)
    {
      if (v37(&v10[v35], 1, v38) == 1)
      {
        sub_1000097E8(v10, &qword_10033AAA0, &qword_1002716E0);
        goto LABEL_29;
      }
    }

    else
    {
      v40 = v50;
      sub_100009848(v10, v50, &qword_10033AAA0, &qword_1002716E0);
      if (v37(&v10[v35], 1, v38) != 1)
      {
        v41 = &v10[v35];
        v42 = v46;
        (*(v36 + 32))(v46, v41, v38);
        sub_10003E8E0(&qword_10033AAB8, &type metadata accessor for DispatchTimeInterval, &protocol conformance descriptor for DispatchTimeInterval);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v36 + 8);
        v44(v42, v38);
        v44(v40, v38);
        sub_1000097E8(v10, &qword_10033AAA0, &qword_1002716E0);
        if (v43)
        {
          goto LABEL_29;
        }

LABEL_38:
        sub_100010B48(v26);
        goto LABEL_33;
      }

      (*(v36 + 8))(v40, v38);
    }

    sub_1000097E8(v10, &qword_10033AAA8, &qword_1002716E8);
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1000120BC(v26, v22);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_32;
    }

    v30 = *v22;
    goto LABEL_14;
  }

  sub_1000120BC(v26, v20);
  v33 = *v20;
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_32;
  }

  v34 = *&v26[v27];
  sub_100003118(0, &qword_100344730, NSObject_ptr);
  v32 = static NSObject.== infix(_:_:)();

  sub_100010B48(v26);
  return v32 & 1;
}

uint64_t sub_100012C04(uint64_t a1, char *a2)
{
  v4 = sub_100035D04(&qword_10033AAC8, &qword_100271700);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for DiscoveryTokenStateMachine.Input(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100035D04(&qword_10033AAD0, &qword_100271708);
  sub_100009848(a1 + *(v11 + 72), v6, &qword_10033AAC8, &qword_100271700);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000097E8(v6, &qword_10033AAC8, &qword_100271700);
    v12 = 1;
  }

  else
  {
    sub_10007714C(v6, v10);
    v12 = sub_1000125B0(v10, a2);
    sub_100010B48(v10);
  }

  return v12 & 1;
}

void *sub_100012DB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
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

  sub_100035D04(a5, a6);
  v16 = *(sub_100035D04(a7, a8) - 8);
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
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_100035D04(a7, a8) - 8);
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

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_100012FA0(void *a1, int64_t a2, char a3)
{
  result = sub_100012DB8(a1, a2, a3, *v3, &qword_10033AAE8, &qword_100271720, &qword_10033AAD0, &qword_100271708);
  *v3 = result;
  return result;
}

BOOL sub_100012FE0(uint64_t a1, void *a2)
{
  *&v8[9] = *a2;
  v3 = *(sub_100035D04(&qword_10033AAD0, &qword_100271708) + 80);
  v4 = sub_100013158(&qword_10033AA98, type metadata accessor for DiscoveryTokenStateMachine, &unk_10027165C);
  v5 = *(v4 + 80);
  v6 = type metadata accessor for DiscoveryTokenStateMachine(0);
  v5(v8, v6, v4);
  return *(a1 + v3) == v8[0];
}

unint64_t sub_100013104()
{
  result = qword_10033C1E8;
  if (!qword_10033C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033C1E8);
  }

  return result;
}

uint64_t sub_100013158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000131A0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v6 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(v5 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(*(*(a3 + 16) - 8) + 64);
  v16 = *(v8 + 80);
  v17 = 7;
  if (!v10)
  {
    v17 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 < a2)
  {
    v18 = ((v15 + ((v14 + 8 + ((v17 + *(*(v7 - 8) + 64) + ((v15 + v16 + ((v14 + 8) & ~v14)) & ~v16)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v19 = a2 - v13;
    v20 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v21 = 2;
    }

    else
    {
      v21 = v19 + 1;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = *(a1 + v18);
        if (v24)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v23)
    {
      v24 = *(a1 + v18);
      if (v24)
      {
LABEL_27:
        v25 = v24 - 1;
        if (v20)
        {
          v25 = 0;
          v26 = *a1;
        }

        else
        {
          v26 = 0;
        }

        return v13 + (v26 | v25) + 1;
      }
    }
  }

  if ((v12 & 0x80000000) == 0)
  {
    v27 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  v29 = (a1 + v14 + 8) & ~v14;
  if (v6 != v13)
  {
    if (v10 >= 2)
    {
      v31 = (*(v9 + 48))((v29 + v15 + v16) & ~v16, v10, v7);
      if (v31 >= 2)
      {
        return v31 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v30 = *(v5 + 48);

  return v30(v29);
}

void *sub_1000133E8(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = v10 - 1;
  if (!v10)
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!v10)
  {
    ++v14;
  }

  v18 = ((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 < a3)
  {
    v19 = a3 - v17;
    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = v19 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v5 = v21;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v17)
  {
    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v22 = a2 - v17;
    }

    else
    {
      v22 = 1;
    }

    if (((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v23 = ~v17 + a2;
      v24 = result;
      bzero(result, ((v12 + ((v11 + 8 + ((v14 + ((v12 + v13 + ((v11 + 8) & ~v11)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v24;
      *v24 = v23;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v18) = v22;
      }

      else
      {
        *(result + v18) = v22;
      }
    }

    else if (v5)
    {
      *(result + v18) = v22;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v18) = 0;
LABEL_40:
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!v5)
  {
    goto LABEL_40;
  }

  *(result + v18) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_41:
  if ((v16 & 0x80000000) != 0)
  {
    result = ((result + v11 + 8) & ~v11);
    if (v8 == v17)
    {
      v26 = *(v6 + 56);

      return v26(result);
    }

    else if (v10 >= 2)
    {
      v27 = *(v9 + 56);
      v28 = (result + v12 + v13) & ~v13;
      v29 = a2 + 1;

      return v27(v28, v29, v10, v7);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = a2 - 1;
    }

    *result = v25;
  }

  return result;
}

unint64_t sub_10001369C()
{
  result = qword_10033AAF0;
  if (!qword_10033AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033AAF0);
  }

  return result;
}

uint64_t sub_1000136F0()
{
  v1 = *v0;
  v2 = 0x64657269736564;
  v3 = 0x64656C696166;
  v4 = 1953391987;
  if (v1 != 4)
  {
    v4 = 0x746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701602409;
  if (v1 != 1)
  {
    v5 = 0x6465727265666564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100013798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1000137F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t type metadata accessor for HandoffEvent(uint64_t a1)
{
  result = qword_10033B670;
  if (!qword_10033B670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000138AC(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      _StringGuts.grow(_:)(41);

      v8 = 0xD000000000000025;
    }

    else
    {
      _StringGuts.grow(_:)(35);

      v8 = 0xD00000000000001FLL;
    }
  }

  else if (a2 > 4u)
  {
    _StringGuts.grow(_:)(30);

    v8 = 0xD00000000000001ALL;
  }

  else
  {
    if (a2 == 3)
    {
      _StringGuts.grow(_:)(36);

      v14 = 0xD000000000000020;
      v3 = BSInterfaceOrientationDescription();
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      v7._countAndFlagsBits = v4;
      v7._object = v6;
      String.append(_:)(v7);
      goto LABEL_17;
    }

    _StringGuts.grow(_:)(39);

    v8 = 0xD000000000000023;
  }

  v14 = v8;
  if (v2)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v2)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);
LABEL_17:

  v12._countAndFlagsBits = 10528;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  return v14;
}

uint64_t sub_100013B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100013B7C(char a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = sub_100035D04(&qword_100351B88, &qword_100297008);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v30 - v12;
  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      v21 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v22 = *(v21 + 28);
      v23 = type metadata accessor for Date();
      (*(*(v23 - 8) + 16))(&v13[v22], a3, v23);
      *v13 = a1 & 1;
      (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
      sub_100009848(v13, v10, &qword_100351B88, &qword_100297008);
      v17 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_orientationIsValid;
    }

    else if (a2 == 5)
    {
      v18 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v19 = *(v18 + 28);
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 16))(&v13[v19], a3, v20);
      *v13 = a1 & 1;
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
      sub_100009848(v13, v10, &qword_100351B88, &qword_100297008);
      v17 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_ranging;
    }

    else
    {
      v24 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v25 = *(v24 + 28);
      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 16))(&v13[v25], a3, v26);
      *v13 = a1 & 1;
      (*(*(v24 - 8) + 56))(v13, 0, 1, v24);
      sub_100009848(v13, v10, &qword_100351B88, &qword_100297008);
      v17 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_screenOn;
    }
  }

  else
  {
    if (a2 - 2 < 2)
    {
      return result;
    }

    if (a2)
    {
      v27 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v28 = *(v27 + 28);
      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 16))(&v13[v28], a3, v29);
      *v13 = a1 & 1;
      (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
      sub_100009848(v13, v10, &qword_100351B88, &qword_100297008);
      v17 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_deviceMotionStationary;
    }

    else
    {
      v14 = sub_100035D04(&qword_10033B300, &qword_100271EE8);
      v15 = *(v14 + 28);
      v16 = type metadata accessor for Date();
      (*(*(v16 - 8) + 16))(&v13[v15], a3, v16);
      *v13 = a1 & 1;
      (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
      sub_100009848(v13, v10, &qword_100351B88, &qword_100297008);
      v17 = OBJC_IVAR____TtC17proximitycontrold13SystemHistory_charging;
    }
  }

  swift_beginAccess();

  sub_10001432C(v10, v3 + v17);
  swift_endAccess();
  sub_1000097E8(v13, &qword_100351B88, &qword_100297008);
}

void sub_10001403C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_10001432C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100351B88, &qword_100297008);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001439C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000143FC()
{
  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A190);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) > 1u)
    {
      if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24) == 2)
      {
        v6 = 0xE700000000000000;
        v7 = 0x676E696E6E7572;
      }

      else
      {
        v6 = 0xE900000000000064;
        v7 = 0x65646E6570737573;
      }
    }

    else if (*(*&v2[OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState] + 24))
    {
      v6 = 0xE600000000000000;
      v7 = 0x646573756170;
    }

    else
    {
      v6 = 0xE800000000000000;
      v7 = 0x6576697463616E69;
    }

    v8 = sub_100017494(v7, v6, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Session state: %s", v4, 0xCu);
    sub_10000903C(v5);
  }
}

uint64_t sub_1000145F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001462C()
{
  v1 = v0;
  if (qword_100339120 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100349758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidate", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptState) = 0;
  sub_1001933FC();
  *(v1 + OBJC_IVAR____TtC17proximitycontrold7Retrier_attemptCount) = 0;
}

void sub_100014750()
{
  if (!sub_1000036FC())
  {
    return;
  }

  if (*(*(v0 + OBJC_IVAR____TtC17proximitycontrold12RangingProxy__sessionState) + 24) != 2)
  {
    sub_10000B620();
    return;
  }

  if (qword_100339128 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_10034A190);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating ranging sessions configuration", v4, 2u);
  }

  if (![objc_opt_self() isSupported])
  {
    sub_100123630();
    swift_allocError();
    v10 = 8;
LABEL_16:
    *v9 = v10;
    swift_willThrow();
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v17)
  {
    sub_100123630();
    swift_allocError();
    v10 = 5;
    goto LABEL_16;
  }

  v5 = sub_1001A9D08();
  v6 = [v17 configuration];
  if (!v6)
  {
LABEL_12:

    return;
  }

  v7 = v6;
  v8 = [v6 enabledGestures];
  if (v8 == [v5 enabledGestures])
  {

    goto LABEL_12;
  }

  v11 = v5;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "Running with %@", v14, 0xCu);
    sub_1000030B0(v15);
  }

  [v17 runWithConfiguration:v11];
}

uint64_t sub_100014A74(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100014BBC(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_100014BD4(v10, a2, a3);
  return specialized ContiguousArray._endMutation()();
}

char *sub_100014B20(unint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_10000919C(v5, 0);
  a2(v7 + 32, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

Swift::Int sub_100014BD4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003118(0, &qword_10033E980, NIRegionPredicate_ptr);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_100014CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 regionSizeCategory];
      v13 = [v11 regionSizeCategory];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100014DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 radius];
      v15 = v14;
      [v13 radius];
      v17 = v16;

      if (v15 >= v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100014F18(uint64_t a1)
{
  v64 = a1;
  v60 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v1 = *(v60 - 8);
  __chkstk_darwin(v60);
  v3 = v58 - v2;
  v61 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v4 = *(v61 - 8);
  __chkstk_darwin(v61);
  v6 = v58 - v5;
  v7 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v58 - v9;
  type metadata accessor for Identity(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 20) = 256;
  v12 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v65 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v8 + 32))(v11 + v12, v10, v7);
  v13 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v65 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v4 + 32))(v11 + v13, v6, v61);
  v14 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v15 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v16 = 0;
  v16[1] = 0;
  v61 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
  *(v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v17 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v65 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v18 = *(v1 + 32);
  v19 = v60;
  v18(v11 + v17, v3, v60);
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v21 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v65 = 0;
  Published.init(initialValue:)();
  v22 = v19;
  v23 = v14;
  v18(v11 + v21, v3, v22);
  v24 = v63;
  v25 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v28 = 0;
  v28[1] = 0;
  *(v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v29 = v11 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v29 = 0;
  *(v29 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;

  static Published.subscript.setter();
  v30 = *(v11 + v14);
  *(v11 + v14) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;

  static Published.subscript.setter();
  v59 = v20;
  *(v11 + v20) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;

  static Published.subscript.setter();
  v31 = *(v11 + v61);
  *(v11 + v61) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v33 = v65;
  v34 = v62;
  v35 = sub_100016014(v32, v65, &unk_10034A340, CBDevice_ptr);
  if (v34)
  {
    if (v32)
    {
      if (v33)
      {
        v36 = v32;
        if ((sub_1000161E0(v36, v33) & 1) == 0)
        {
          swift_willThrow();

          return v11;
        }
      }

      else
      {

        v33 = v32;
        v32 = 0;
      }
    }

    else
    {

      v33 = 0;
    }
  }

  else
  {
    v37 = v35;

    v33 = v32;
    v32 = v37;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v32;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v65;
  v40 = sub_100016014(v38, v65, &qword_1003452B0, HMAccessory_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v40;

  static Published.subscript.setter();
  v41 = *(v24 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v42 = *(v64 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v43 = v42;
  v44 = v41;
  v45 = sub_100016014(v41, v42, &qword_10033B5F0, IDSDevice_ptr);

  v46 = *(v11 + v23);
  *(v11 + v23) = v45;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v47 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v48 = v65;
  v49 = sub_100016014(v47, v65, &qword_10033D618, RPCompanionLinkDevice_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v49;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v50 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v51 = v65;
  v52 = sub_100016014(v50, v65, &qword_10033D618, RPCompanionLinkDevice_ptr);

  swift_getKeyPath();
  swift_getKeyPath();
  v65 = v52;

  static Published.subscript.setter();
  v53 = *(v64 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);

  v55 = sub_100016594(v54, v53);
  v58[2] = 0;
  v56 = v55;

  *(v11 + v59) = v56;

  return v11;
}