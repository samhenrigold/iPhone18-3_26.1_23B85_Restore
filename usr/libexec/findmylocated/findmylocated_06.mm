void sub_1000A82D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v27 = a5;
  v26 = a1;
  v8 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A6F0(v11, qword_1005A98B8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v14 = 141558787;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    *(v14 + 14) = sub_10000D01C(v26, a2, v28);
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_10000D01C(a3, a4, v28);
    *(v14 + 32) = 1026;
    *(v14 + 34) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v12, v13, "startLocationMonitoring findmyId: %{private,mask.hash}s. Policy: %{public}s. forcePublish: %{BOOL,public}d", v14, 0x26u);
    swift_arrayDestroy();
  }

  if (sub_1000BB328())
  {
    goto LABEL_15;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v15 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v15);
  v16 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v15 + *(v16 + 28), v10, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v15);

  v17 = v10[8];
  sub_1000CA2CC(v10, type metadata accessor for SecureLocationsConfig);
  if (v17 != 1)
  {
LABEL_15:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    sub_10000A6F0(v11, qword_1005DFB98);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v22, v23))
    {
      goto LABEL_20;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "LocationMonitor: secureLocations feature is disabled. Not proceeding with starting monitor";
    goto LABEL_19;
  }

  sub_1000A9700();

  v18 = sub_100021BB4();

  if ((v18 & 1) == 0)
  {
    return;
  }

  if (a3 != 0x6F725072656E776FLL || a4 != 0xEE00657669746361) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v28[3] = My, v28[4] = sub_10001DFA8(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy), v20 = sub_10000331C(v28), (*(*(My - 8) + 104))(v20, enum case for Feature.FindMy.fmOwnerProactive(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100004984(v28), (My))
  {
    v21 = type metadata accessor for Transaction();
    __chkstk_darwin(v21);
    *(&v26 - 6) = v26;
    *(&v26 - 5) = a2;
    *(&v26 - 4) = a3;
    *(&v26 - 3) = a4;
    *(&v26 - 16) = v27 & 1;
    static Transaction.named<A>(_:with:)();
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v11, qword_1005DFB98);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = "ownerProactive feature is disabled";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v22, v23, v25, v24, 2u);
  }

LABEL_20:
}

void sub_1000A8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a1;
  v24 = sub_1000C932C;
  v25 = v12;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058DCB0;
  v13 = _Block_copy(&aBlock);

  v14 = [objc_allocWithZone(FMDSecureLocationContext) init];
  v15 = String._bridgeToObjectiveC()();
  [v14 setMode:v15];

  v16 = String._bridgeToObjectiveC()();
  [v14 setFindMyId:v16];

  v17 = [objc_opt_self() sharedInstance];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v24 = sub_1000CAB5C;
  v25 = v18;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058DD00;
  v19 = _Block_copy(&aBlock);
  _Block_copy(v13);

  [v17 startLocationMonitoringWithContext:v14 forcePublish:a6 & 1 completion:v19];
  _Block_release(v19);

  _Block_release(v13);
}

void sub_1000A8AE0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB98);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10000D01C(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error starting location monitoring %s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005DFB98);

    v6 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_10000D01C(a2, a3, &v20);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_10000D01C(a4, a5, &v20);
      _os_log_impl(&_mh_execute_header, v6, v18, "Requested starting location monitoring for %s with %s", v19, 0x16u);
      swift_arrayDestroy();
    }
  }

LABEL_12:
  Transaction.capture()();
}

void sub_1000A8DE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1000A8E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  v24 = sub_1000C7E24;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058CFE0;
  v13 = _Block_copy(&v20);

  v14 = [objc_opt_self() sharedInstance];
  v15 = [objc_allocWithZone(FMDSecureLocationContext) init];
  if (a3)
  {
    v16 = String._bridgeToObjectiveC()();
    [v15 setFindMyId:v16];
  }

  if (a5)
  {
    v17 = String._bridgeToObjectiveC()();
    [v15 setMode:v17];
  }

  [v15 setStopMonitoringActivePolicy:a6 & 1];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v24 = sub_100028AD0;
  v25 = v18;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1000A8DE8;
  v23 = &unk_10058D030;
  v19 = _Block_copy(&v20);
  _Block_copy(v13);

  [v14 stopLocationMonitoringWithContext:v15 completion:v19];
  _Block_release(v19);

  _Block_release(v13);
}

void sub_1000A90D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_21;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Error stopping location monitoring %{public}@", v9, 0xCu);
    sub_100002CE0(v10, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);

    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v17 = 136446722;
      if (a3)
      {
        v18 = a3;
      }

      else
      {
        a2 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = sub_10000D01C(a2, v18, &v25);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      if (a5)
      {
        v20 = a4;
      }

      else
      {
        v20 = 0;
      }

      if (a5)
      {
        v21 = a5;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      v22 = sub_10000D01C(v20, v21, &v25);

      *(v17 + 14) = v22;
      *(v17 + 22) = 1024;
      *(v17 + 24) = a6 & 1;
      _os_log_impl(&_mh_execute_header, v7, v16, "Requested stopping location monitoring for %{public}s with %{public}s stopMonitoringActivePolicy: %{BOOL}d.", v17, 0x1Cu);
      swift_arrayDestroy();
    }
  }

LABEL_21:
  Transaction.capture()();
}

void sub_1000A9448(uint64_t a1, uint64_t (*a2)(void), const char *a3, const char *a4, int8x8_t a5, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = vuzp1_s8(a5, v12).u32[0];
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000D01C(v13, v14, &v22);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0xCu);
      sub_100004984(v11);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v19 = a2();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v19, a4, v20, 2u);
    }
  }
}

uint64_t sub_1000A9700()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AE630, &qword_1004C3430);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-v3];
  v5 = type metadata accessor for ContinuousClock.Instant();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static ContinuousClock.Instant.now.getter();
  v9 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh;
  swift_beginAccess();
  sub_100005F04(v0 + v9, v4, &qword_1005AE630, &qword_1004C3430);
  v24 = v8;
  v10 = sub_10019ECD8(sub_1000C9270);
  sub_100002CE0(v4, &qword_1005AE630, &qword_1004C3430);
  if (v10 == 2 || (v10 & 1) != 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFB98);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "LocationMonitor: force start refreshing me device started", v14, 2u);
    }

    if (qword_1005A7F60 != -1)
    {
      swift_once();
    }

    sub_100139B2C();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "LocationMonitor: force start refreshing me device completed", v17, 2u);
    }

    (*(v6 + 16))(v4, v8, v5);
    (*(v6 + 56))(v4, 0, 1, v5);
    swift_beginAccess();
    sub_100022364(v4, v1 + v9, &qword_1005AE630, &qword_1004C3430);
    swift_endAccess();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "LocationMonitor: skipping force start refreshing me device", v21, 2u);
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000A9B48(char a1)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFB98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "LocationSharing: publishingDeviceStatus changed %{BOOL}d", v5, 8u);
  }

  sub_10001D6F0();
}

void sub_1000A9C84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    swift_errorRetain();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v6 = 136315394;
      v7 = (*(a2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager) + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix);
      v8 = *v7;
      v9 = v7[1];

      v10 = sub_10000D01C(v8, v9, &v14);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s - error starting monitor after device became a location publishing device %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1000A9EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 184);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a2;
  v12[4] = a1;
  aBlock[4] = sub_1000C83C4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058D238;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v17 + 8))(v8, v6);
  (*(v9 + 8))(v11, v16);
}

void sub_1000AA1B4(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = a3;
  v6 = type metadata accessor for SecureLocation(0) - 8;
  v7 = __chkstk_darwin(v6);
  v68 = (&v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v74 = (&v67 - v10);
  v11 = __chkstk_darwin(v9);
  v13 = &v67 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v67 - v15);
  __chkstk_darwin(v14);
  v19 = (&v67 - v18);
  v20 = *(a1 + 16);
  v72 = v17;
  if (v20)
  {
    v21 = *(v17 + 72);
    v73 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v3 = (a1 + v73);
    v22 = _swiftEmptyArrayStorage;
    v75 = v13;
    do
    {
      sub_1000CA264(v3, v19, type metadata accessor for SecureLocation);
      if (sub_1000AAADC(v19, a2, 1080.0, 540.0, 500.0))
      {
        sub_1000C9DE8(v19, v13, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v22[2] + 1, 1);
          v22 = v77[0];
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_100239440((v24 > 1), v25 + 1, 1);
          v22 = v77[0];
        }

        v22[2] = v25 + 1;
        v13 = v75;
        sub_1000C9DE8(v75, v22 + v73 + v25 * v21, type metadata accessor for SecureLocation);
      }

      else
      {
        sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
      }

      v3 += v21;
      --v20;
    }

    while (v20);
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v26 = v22[2];
  if (!v26)
  {

    goto LABEL_44;
  }

  v27 = 0;
  v28 = v72;
  v29 = *(v72 + 80);
  v70 = v22[2];
  v71 = v22 + ((v29 + 32) & ~v29);
  v73 = v22;
  do
  {
    if (v27 >= v22[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v75 = *(v28 + 72);
    sub_1000CA264(&v71[v75 * v27], v16, type metadata accessor for SecureLocation);
    v3 = *v16;
    v19 = v16[1];
    swift_beginAccess();
    sub_1000CA264(v16, v74, type metadata accessor for SecureLocation);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v76 = a2[41];
    v31 = v76;
    a2[41] = 0x8000000000000000;
    v26 = sub_1000110D8(v3, v19);
    v33 = v31[2];
    v34 = (v32 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_46;
    }

    v36 = v32;
    if (v31[3] >= v35)
    {
      if (v30)
      {
        v39 = v76;
        if (v32)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100203688();
        v39 = v76;
        if (v36)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_10022E088(v35, v30);
      v37 = sub_1000110D8(v3, v19);
      if ((v36 & 1) != (v38 & 1))
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }

      v26 = v37;
      v39 = v76;
      if (v36)
      {
LABEL_14:
        sub_1000C83D0(v74, v39[7] + v26 * v75);
        goto LABEL_15;
      }
    }

    v39[(v26 >> 6) + 8] |= 1 << v26;
    v40 = (v39[6] + 16 * v26);
    *v40 = v3;
    v40[1] = v19;
    sub_1000C9DE8(v74, v39[7] + v26 * v75, type metadata accessor for SecureLocation);
    v41 = v39[2];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      goto LABEL_48;
    }

    v39[2] = v43;

LABEL_15:
    ++v27;
    a2[41] = v39;

    swift_endAccess();
    sub_1000CA2CC(v16, type metadata accessor for SecureLocation);
    v26 = v70;
    v28 = v72;
    v22 = v73;
  }

  while (v70 != v27);
  v44 = objc_allocWithZone(CHSTimelineController);
  v45 = String._bridgeToObjectiveC()();
  v46 = String._bridgeToObjectiveC()();
  a2 = [v44 initWithExtensionBundleIdentifier:v45 kind:v46];

  v47 = String._bridgeToObjectiveC()();
  v3 = [a2 reloadTimelineWithReason:v47];

  v48 = qword_1005A7EE8;
  if (v3)
  {
    v19 = v3;
    v27 = v71;
    if (v48 == -1)
    {
LABEL_30:
      v49 = type metadata accessor for Logger();
      sub_10000A6F0(v49, qword_1005DFB98);
      v50 = v19;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v76 = v50;
        v77[0] = v54;
        *v53 = 136315138;
        v74 = v50;
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        v55 = String.init<A>(describing:)();
        v57 = a2;
        v58 = sub_10000D01C(v55, v56, v77);

        *(v53 + 4) = v58;
        a2 = v57;
        _os_log_impl(&_mh_execute_header, v51, v52, "Error reloading FindMyPeopleWidget timelines %s", v53, 0xCu);
        sub_100004984(v54);

        v26 = v70;
      }

      else
      {
      }

      v59 = v68;
      goto LABEL_40;
    }

LABEL_49:
    swift_once();
    goto LABEL_30;
  }

  v59 = v68;
  v27 = v71;
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
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Completed reloading FindMyPeopleWidget timelines", v63, 2u);
  }

LABEL_40:
  v64 = [BiomeLibrary() FindMy];
  swift_unknownObjectRelease();
  v19 = [v64 LocationChange];
  swift_unknownObjectRelease();
  v65 = [v19 source];
  v66 = 0;
  do
  {
    if (v66 >= *(v73 + 16))
    {
      goto LABEL_47;
    }

    sub_1000CA264(v27, v59, type metadata accessor for SecureLocation);
    sub_1000C41FC(v59, v65);
    ++v66;
    sub_1000CA2CC(v59, type metadata accessor for SecureLocation);
    v27 += v75;
  }

  while (v26 != v66);

LABEL_44:
  Transaction.capture()();
}

uint64_t sub_1000AAADC(uint64_t *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = type metadata accessor for SecureLocation(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v44[-v15];
  v17 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v44[-v18];
  v49 = v10;
  v20 = *(a1 + *(v10 + 60));
  v21 = *a1;
  v22 = a1[1];
  swift_beginAccess();
  v23 = *(a2 + 328);
  if (*(v23 + 16))
  {

    v24 = sub_1000110D8(v21, v22);
    if (v25)
    {
      sub_1000CA264(*(v23 + 56) + *(v11 + 72) * v24, v19, type metadata accessor for SecureLocation);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = v20 & 0xFFFFFFFFFFFFFFFELL;
  v28 = (*(v11 + 56))(v19, v26, 1, v49);
  __chkstk_darwin(v28);
  *&v44[-32] = a3;
  *&v44[-24] = a4;
  *&v44[-16] = a1;
  *&v44[-8] = a5;
  LODWORD(v48) = sub_10019EEB8(sub_1000C8478);
  v29 = v48;
  sub_100002CE0(v19, &unk_1005AB3F0, &qword_1004C4BF0);
  if (v29 != 2)
  {
    v31 = v14;
    if (v27 != 6)
    {
      v30 = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  LODWORD(v48) = 1;
  v30 = 1;
  v31 = v14;
  if (v27 == 6)
  {
LABEL_12:
    v30 = v48;
  }

LABEL_13:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005DFB98);
  sub_1000CA264(a1, v16, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v31, type metadata accessor for SecureLocation);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v45 = v27 != 6;
    v35 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v35 = 67110146;
    *(v35 + 4) = v30 & 1;
    *(v35 + 8) = 2080;
    v37 = *v16;
    v36 = v16[1];

    v47 = v30;
    sub_1000CA2CC(v16, type metadata accessor for SecureLocation);
    v38 = sub_10000D01C(v37, v36, &v50);

    *(v35 + 10) = v38;
    *(v35 + 18) = 2082;
    v39 = sub_10008AEA8(*(v31 + *(v49 + 60)));
    v41 = v40;
    LOBYTE(v30) = v47;
    sub_1000CA2CC(v31, type metadata accessor for SecureLocation);
    v42 = sub_10000D01C(v39, v41, &v50);

    *(v35 + 20) = v42;
    *(v35 + 28) = 1024;
    *(v35 + 30) = v45;
    *(v35 + 34) = 1024;
    *(v35 + 36) = v48 & 1;
    _os_log_impl(&_mh_execute_header, v33, v34, "SignificantLocation: isSignificantLocation: %{BOOL}d - %s\npublishReason: %{public}s\nisLowFrequencyUpdateLocation: %{BOOL}d\nisSignificantUpdateLocationOrFirstUpdate: %{BOOL}d", v35, 0x28u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000CA2CC(v31, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v16, type metadata accessor for SecureLocation);
  }

  return v30 & 1;
}

void sub_1000AAFE4(double *a1@<X0>, double *a2@<X1>, _BYTE *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v64 = a3;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v8 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v8);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.trustedNow.getter(v14);
  Date.timeIntervalSince(_:)();
  v60 = v15;
  v16 = *(v12 + 8);
  v16(v14, v11);
  static Date.trustedNow.getter(v14);
  Date.timeIntervalSince(_:)();
  v18 = v17;
  v16(v14, v11);
  v20 = a1[2];
  v19 = a1[3];
  v21 = a1[7];
  v22 = a1[8];
  v24 = a1[4];
  v23 = a1[5];
  v25 = a1[6];
  v26 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v28 = [v26 initWithCoordinate:isa altitude:v19 horizontalAccuracy:v20 verticalAccuracy:v22 course:v23 speed:v24 timestamp:{v21, v25}];

  v30 = a2[2];
  v29 = a2[3];
  v32 = a2[7];
  v31 = a2[8];
  v34 = a2[4];
  v33 = a2[5];
  v35 = a2[6];
  v36 = objc_allocWithZone(CLLocation);
  v37 = Date._bridgeToObjectiveC()().super.isa;
  v38 = v29;
  v39 = v30;
  v40 = v61;
  v41 = v62;
  v42 = v31;
  v43 = v63;
  v44 = v33;
  v45 = v18;
  v46 = v60;
  v47 = [v36 initWithCoordinate:v37 altitude:v38 horizontalAccuracy:v39 verticalAccuracy:v42 course:v44 speed:v34 timestamp:{v32, v35}];

  [v28 distanceFromLocation:v47];
  v49 = v48;

  v50 = v45 >= v41;
  if (v49 <= v43)
  {
    v50 = 0;
  }

  v51 = v46 >= v40 || v50;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10000A6F0(v52, qword_1005DFB98);
  sub_1000CA264(a2, v10, type metadata accessor for SecureLocation);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v53, v54))
  {
    LODWORD(v63) = v49 > v43;
    LODWORD(v62) = v45 >= v41;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v65 = v56;
    *v55 = 67110146;
    *(v55 + 4) = v51;
    *(v55 + 8) = 2080;
    v57 = *v10;
    v58 = v10[1];

    sub_1000CA2CC(v10, type metadata accessor for SecureLocation);
    v59 = sub_10000D01C(v57, v58, &v65);

    *(v55 + 10) = v59;
    *(v55 + 18) = 1024;
    *(v55 + 20) = v46 >= v40;
    *(v55 + 24) = 1024;
    *(v55 + 26) = LODWORD(v62);
    *(v55 + 30) = 1024;
    *(v55 + 32) = LODWORD(v63);
    _os_log_impl(&_mh_execute_header, v53, v54, "SignificantLocation: isSignificantUpdateLocation: %{BOOL}d - %s\nisLastDonationGreaterThanHeartbeat: %{BOOL}d\nisLastDonationGreaterThanMinTime: %{BOOL}d,\nisLastDonationDistanceGreaterThanMinDistance: %{BOOL}d", v55, 0x24u);
    sub_100004984(v56);
  }

  else
  {

    sub_1000CA2CC(v10, type metadata accessor for SecureLocation);
  }

  *v64 = v51;
}

void sub_1000AB450()
{
  if (*(*(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewiePublishRequestNotification) + 24))
  {

    sub_10004B564(&qword_1005A9ED8, &qword_1004C6710);
    sub_10001DF0C(&qword_1005A9EE0, &qword_1005A9ED8, &qword_1004C6710, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      v5 = SPSecureLocationsStewiePublishRequest;
      *(v3 + 4) = SPSecureLocationsStewiePublishRequest;
      *v4 = v5;
      v6 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Posted %@ notification", v3, 0xCu);
      sub_100002CE0(v4, &qword_1005A9670, &unk_1004C2480);
    }
  }

  else
  {
    sub_1000C9214();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v11 = 138412546;
      v14 = SPSecureLocationsStewiePublishRequest;
      *(v11 + 4) = SPSecureLocationsStewiePublishRequest;
      *v12 = v14;
      *(v11 + 12) = 2080;
      swift_errorRetain();
      v15 = v14;
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000D01C(v16, v17, &v20);

      *(v11 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error posting %@ notification. Error %s ", v11, 0x16u);
      sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v13);
    }

    else
    {
    }
  }
}

uint64_t sub_1000AB850()
{

  sub_1000CA4E4(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh, &qword_1005AE630, &qword_1004C3430);
  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream, &qword_1005A9F18, &qword_1004C3490);

  return v0;
}

uint64_t sub_1000AB9CC()
{
  sub_1000AB850();

  return swift_deallocClassInstance();
}

uint64_t sub_1000ABA24(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E65644968737570;
    v6 = 0x6544656D6F747561;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 7562345;
    if (a1 != 5)
    {
      v7 = 1701080941;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54646E6553706174;
    v2 = 6581603;
    v3 = 0x6143654D6F747561;
    if (a1 != 3)
    {
      v3 = 0x6449794D646E6966;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6449646D63;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

double sub_1000ABB80(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1000ABC90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4734(*a1);
  *a2 = result;
  return result;
}

void sub_1000ABCC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00455649544341;
  v4 = 0x5F454D5F4F545541;
  if (v2 != 4)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001004DDDD0;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001004DDDA0;
  }

  v5 = 0x80000001004DDD40;
  v6 = 0x80000001004DDD60;
  v7 = 0xD000000000000013;
  if (v2 == 1)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v6 = 0x80000001004DDD80;
  }

  if (*v1)
  {
    v5 = v6;
  }

  else
  {
    v7 = 0xD000000000000014;
  }

  if (*v1 <= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000ABE48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000ABA24(*a1);
  v5 = v4;
  if (v3 == sub_1000ABA24(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000ABED0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000ABA24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000ABF34(uint64_t a1)
{
  sub_1000ABA24(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000ABF88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000ABA24(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000ABFE8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4780(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC018@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000ABA24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000AC060@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4780(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000AC094(uint64_t a1)
{
  v2 = sub_1000C8914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000AC0D0(uint64_t a1)
{
  v2 = sub_1000C8914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000AC10C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005A9E98, &qword_1004C33D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1000C8914();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v10) = *(v3 + 32);
    v11 = 2;
    sub_1000C8A68();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v10) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 72);
    v11 = 4;
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    sub_10001CCC4(&qword_1005A9EA8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 80);
    v11 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 104);
    v11 = 7;
    sub_10004B564(&qword_1005A9E88, &qword_1004C33D0);
    sub_1000C8ABC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 112);
    v11 = 8;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v10) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1000AC49C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000C47CC(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_1000AC51C(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_1000C0460(a3, 0, a2, a2, a1);
}

void sub_1000AC58C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = dispatch_group_create();
  dispatch_group_enter(v12);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  *(v13 + 32) = a2;
  v14 = v12;

  sub_1000FE000(a1, 1, sub_1000C82E8, v13);

  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v9, v5);
  OS_dispatch_group.wait(timeout:)();
  v15(v11, v5);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "saveLocation - timed out waiting to save locations", v19, 2u);
    }
  }
}

void sub_1000AC7F8(uint64_t a1, NSObject *a2, uint64_t a3, char a4)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v18[-v9];
  if (*(a1 + 16))
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = a1;

    sub_10020D620(0, 0, v10, &unk_1004C3368, v12);

    if (a4)
    {
      v13 = type metadata accessor for Transaction();
      __chkstk_darwin(v13);
      *&v18[-16] = a3;
      *&v18[-8] = a1;
      static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "saveLocation - No locations were updated. Not posting notification", v17, 2u);
    }
  }

  dispatch_group_leave(a2);
}

uint64_t sub_1000ACA84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v5[39];
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v5;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = v10;
  aBlock[4] = sub_1000C78C0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058CCC0;
  v18 = _Block_copy(aBlock);
  sub_100005F6C(a1, a2);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v22 + 8))(v13, v11);
  (*(v14 + 8))(v16, v21);
}

uint64_t sub_1000ACDAC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v56 = a5;
  v58 = a4;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v61 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v60 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  static String.Encoding.utf8.getter();
  v14 = a1;
  v15 = String.init(data:encoding:)();
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v65 = a2;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v53 = v11;
      v23 = v22;
      v24 = swift_slowAlloc();
      *&aBlock[0] = v24;
      *v23 = 136315138;
      v25 = sub_10000D01C(v17, v18, aBlock);

      *(v23 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "jsonString %s", v23, 0xCu);
      sub_100004984(v24);

      v11 = v53;
    }

    else
    {
    }

    a2 = v65;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v26 = JSONDecoder.init()();
  sub_1000C78D8();
  v65 = v26;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v78 = v71;
  *v79 = v72;
  *&v79[16] = v73;
  v80 = v74;
  aBlock[0] = v67;
  aBlock[1] = v68;
  v76 = v69;
  v77 = v70;
  if (v69 > 2u)
  {
    if (v69 == 3)
    {
      sub_1000AF5F8();
    }

    else if (v69 == 4)
    {
      sub_1000AF810(aBlock);
    }

    else
    {
      sub_1000AFF08();
    }

LABEL_55:
    sub_1000C792C(aBlock);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v43 = v55;
    v44 = v57;
    (*(v11 + 104))(v55, enum case for DispatchQoS.QoSClass.default(_:), v57);
    v45 = static OS_dispatch_queue.global(qos:)();
    (*(v11 + 8))(v43, v44);
    v46 = swift_allocObject();
    v47 = v56;
    *(v46 + 16) = v58;
    *(v46 + 24) = v47;
    *&v69 = sub_1000C795C;
    *(&v69 + 1) = v46;
    *&v67 = _NSConcreteStackBlock;
    *(&v67 + 1) = 1107296256;
    *&v68 = sub_100020828;
    *(&v68 + 1) = &unk_10058CD60;
    v48 = _Block_copy(&v67);

    v49 = v60;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v50 = v61;
    v51 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v48);

    (*(v64 + 8))(v50, v51);
    (*(v62 + 8))(v49, v63);
  }

  if (v69)
  {
    if (v69 == 1)
    {
      if (*(&v78 + 1) && *(*(&v78 + 1) + 16))
      {
        v27 = v77;
        if (v77)
        {
          v28 = *(&v76 + 1);
          v29 = qword_1005A7EF8;

          if (v29 != -1)
          {
            swift_once();
          }

          if (v28 != 1702195828 || v27 != 0xE400000000000000)
          {
            _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          sub_1000D3620();
        }

        sub_1000AF20C(aBlock);
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_10000A6F0(v39, qword_1005DFB98);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "No findMyIds specified for distributeKeysCommand", v42, 2u);
        }
      }
    }

    else
    {
      v33 = v77;
      if (v77)
      {
        v34 = *(&v76 + 1);
        v35 = qword_1005A7EF8;

        if (v35 != -1)
        {
          swift_once();
        }

        if (v34 != 1702195828 || v33 != 0xE400000000000000)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        sub_1000D3620();
      }

      sub_1000AEEA8(aBlock);
    }

    goto LABEL_55;
  }

  if (!*&v79[16] || *&v79[8] != __PAIR128__(0x80000001004DDB80, 0xD000000000000013) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10004B564(&qword_1005A9DF0, &qword_1004C32D0), unsafeFromAsyncTask<A>(_:)(), (v30 = v67) == 0))
  {
    v36 = v77;
    if (v77)
    {
      v37 = *(&v76 + 1);
      v38 = qword_1005A7EF8;

      if (v38 != -1)
      {
        swift_once();
      }

      if (v37 != 1702195828 || v36 != 0xE400000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      sub_1000D3620();
    }

    sub_1000AE250(aBlock);
    goto LABEL_55;
  }

  type metadata accessor for Transaction();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v14;
  v32 = v54;
  v31[4] = a2;
  v31[5] = v32;
  swift_retain_n();
  sub_100005F6C(v14, a2);
  static Transaction.asyncTask(name:block:)();

  sub_1000C792C(aBlock);
}

uint64_t sub_1000ADBD0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000ADC64;

  return daemon.getter();
}

uint64_t sub_1000ADC64(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  MyService = type metadata accessor for MicroFindMyService(0);
  v6 = sub_10001DFA8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DFA8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService, &unk_1004D7A88);
  *v3 = v9;
  v3[1] = sub_1000ADE40;

  return ActorServiceDaemon.getService<A>()(v4, MyService, v6, v7);
}

uint64_t sub_1000ADE40(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1000ADFB4;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_1000ADF94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000ADFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000ADFF8, a1, 0);
}

uint64_t sub_1000ADFF8()
{
  sub_1003BFFFC(v0[3], v0[4]);
  v0[5] = 0;
  v1 = v0[1];

  return v1();
}

uint64_t sub_1000AE0AC()
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005A98B8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error forwarding push payload: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

double sub_1000AE250(__int128 *a1)
{
  v2 = v1;
  v4 = a1[5];
  v105 = a1[4];
  v106 = v4;
  v107 = a1[6];
  v108 = *(a1 + 14);
  v5 = a1[1];
  v101 = *a1;
  v102 = v5;
  v6 = a1[3];
  v103 = a1[2];
  v104 = v6;
  v7 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v84 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v88 = v10;
  v89 = v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v84 - v15;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + 312);
  *v19 = v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v85 = v14;
    if (qword_1005A7ED8 == -1)
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
  v86 = type metadata accessor for Logger();
  sub_10000A6F0(v86, qword_1005A98B8);
  sub_1000C7A34(a1, &v93);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v90 = v2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v91 = v26;
    *v25 = 136315138;
    v27 = a1[5];
    v97 = a1[4];
    v98 = v27;
    v99 = a1[6];
    v100 = *(a1 + 14);
    v28 = a1[1];
    v93 = *a1;
    v94 = v28;
    v29 = a1[3];
    v95 = a1[2];
    v96 = v29;
    sub_1000C7A34(a1, v92);
    v30 = String.init<A>(describing:)();
    v32 = sub_10000D01C(v30, v31, &v91);

    *(v25 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Received startLocate command %s", v25, 0xCu);
    sub_100004984(v26);

    v2 = v90;
  }

  v33 = v89;
  v34 = *(a1 + 10);
  if (v34 && v34[2])
  {
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    sub_1000D735C(v9);

    v35 = v88;
    v36 = (*(v33 + 48))(v9, 1, v88);
    v90 = v2;
    if (v36 == 1)
    {
      sub_100002CE0(v9, &unk_1005AE5B0, &qword_1004C32F0);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v93 = v40;
        *v39 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v39 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v93);
        _os_log_impl(&_mh_execute_header, v37, v38, "%s: Cannot find any date object", v39, 0xCu);
        sub_100004984(v40);
      }

      goto LABEL_33;
    }

    (*(v33 + 32))(v87, v9, v35);
    v45 = v85;
    static Date.trustedNow.getter(v85);
    v46 = static Date.> infix(_:_:)();
    v47 = *(v33 + 8);
    v47(v45, v35);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    if (v46)
    {
      if (v50)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *&v93 = v52;
        *v51 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v51 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v93);
        _os_log_impl(&_mh_execute_header, v48, v49, "%s: AutoMe threshold is active, don't publish live locations. Proceed to communicate location & connected devices to server.", v51, 0xCu);
        sub_100004984(v52);

        v47(v87, v88);
LABEL_33:
        if (v34[2])
        {
          v57 = *(a1 + 9);
          if (v57)
          {
            if (v57[2])
            {
              v58 = v34[4];
              v59 = v34[5];
              v60 = v57[5];
              v88 = v57[4];
              v89 = v58;
              v61 = v90;
              v62 = *(v90 + 272);
              v97 = *(v90 + 256);
              v98 = v62;
              v99 = *(v90 + 288);
              v100 = *(v90 + 304);
              v63 = *(v90 + 208);
              v93 = *(v90 + 192);
              v94 = v63;
              v64 = *(v90 + 240);
              v95 = *(v90 + 224);
              v96 = v64;
              v65 = v101;
              v66 = v102;
              v67 = v104;
              *(v90 + 224) = v103;
              *(v61 + 240) = v67;
              *(v61 + 192) = v65;
              *(v61 + 208) = v66;
              v68 = v105;
              v69 = v106;
              v70 = v107;
              *(v61 + 304) = v108;
              *(v61 + 272) = v69;
              *(v61 + 288) = v70;
              *(v61 + 256) = v68;
              sub_1000C7A34(a1, v92);

              sub_100002CE0(&v93, &qword_1005A9E00, &qword_1004C32F8);
              if (*(a1 + 12))
              {
                v71 = *(a1 + 11);
                v72 = *(a1 + 12);
              }

              else
              {
                v72 = 0xE900000000000065;
                v71 = 0x76697463616F7270;
              }

              v81 = type metadata accessor for Transaction();
              __chkstk_darwin(v81);
              v82 = v89;
              *(&v84 - 8) = v90;
              *(&v84 - 7) = v82;
              v83 = v88;
              *(&v84 - 6) = v59;
              *(&v84 - 5) = v83;
              *(&v84 - 4) = v60;
              *(&v84 - 3) = a1;
              *(&v84 - 2) = v71;
              *(&v84 - 1) = v72;

              static Transaction.named<A>(_:with:)();

              return result;
            }
          }
        }

        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        v73 = qword_1005DFB60;
        v74 = *(qword_1005DFB60 + 16);
        v75 = swift_allocObject();
        v75[2] = v73;
        v75[3] = 0xD00000000000001BLL;
        v75[4] = 0x80000001004DF450;
        v76 = swift_allocObject();
        *(v76 + 16) = sub_1000C7A6C;
        *(v76 + 24) = v75;
        *&v95 = sub_1000C7A78;
        *(&v95 + 1) = v76;
        *&v93 = _NSConcreteStackBlock;
        *(&v93 + 1) = 1107296256;
        *&v94 = sub_10013EC94;
        *(&v94 + 1) = &unk_10058CE00;
        v77 = _Block_copy(&v93);
        swift_retain_n();

        dispatch_sync(v74, v77);
        _Block_release(v77);
        LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

        if (v77)
        {
          __break(1u);
        }

        else
        {
          sub_1000B01BC(a1);
          if (qword_1005A7EE8 == -1)
          {
LABEL_42:
            sub_10000A6F0(v86, qword_1005DFB98);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              *v80 = 0;
              _os_log_impl(&_mh_execute_header, v78, v79, "startLocate - no locationId or findMyId specified in push. Cannot start locate", v80, 2u);
            }

            return result;
          }
        }

        swift_once();
        goto LABEL_42;
      }
    }

    else
    {
      if (v50)
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v93 = v54;
        *v53 = 136315138;
        if (qword_1005A7ED0 != -1)
        {
          swift_once();
        }

        *(v53 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v93);
        _os_log_impl(&_mh_execute_header, v48, v49, "%s: Valid Location monitoring threshold, removing existing value", v53, 0xCu);
        sub_100004984(v54);
      }

      else
      {
      }

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v55 = *(v93 + 16);

      v56 = *(a1 + 14);
      if (v56 && *(v56 + 16) == v55)
      {
        sub_1000AFF08();
      }
    }

    v47(v87, v88);
    goto LABEL_33;
  }

  sub_1000A7FE4();
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "startLocate - no locationIds received. Possibly me device change or SML was turned ON. Starting location monitor", v43, 2u);
  }

  sub_1000B01BC(a1);
  return result;
}

double sub_1000AEEA8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 312);
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
  sub_1000C7A34(a1, v31);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = *(a1 + 80);
    v31[4] = *(a1 + 64);
    v31[5] = v14;
    v31[6] = *(a1 + 96);
    v32 = *(a1 + 112);
    v15 = *(a1 + 16);
    v31[0] = *a1;
    v31[1] = v15;
    v16 = *(a1 + 48);
    v31[2] = *(a1 + 32);
    v31[3] = v16;
    sub_1000C7A34(a1, v29);
    v17 = String.init<A>(describing:)();
    v19 = sub_10000D01C(v17, v18, &v30);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received stopLocate %s", v12, 0xCu);
    sub_100004984(v13);
  }

  v20 = *(a1 + 72);
  if (v20 && v20[2])
  {
    v22 = v20[4];
    v21 = v20[5];
    if (*(a1 + 96))
    {
      v23 = *(a1 + 88);
      v24 = *(a1 + 96);
    }

    else
    {
      v24 = 0xE900000000000065;
      v23 = 0x76697463616F7270;
    }

    sub_1000C1590(v22, v21, v23, v24, 0);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No findMyId specified for StopLocate", v27, 2u);
    }
  }

  return result;
}

void sub_1000AF20C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + 312);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
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
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received distributeKeys command", v13, 2u);
  }

  v14 = *(a1 + 72);
  v35 = v14;
  if (v14 && v14[2])
  {
    v16 = v14[4];
    v15 = v14[5];
    if (*(a1 + 104))
    {
      v17 = *(a1 + 104);
    }

    else
    {
      v17 = _swiftEmptyDictionarySingleton;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v33 = v16;
      v21 = v20;
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v21 = 136315138;
      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      v22 = Dictionary.description.getter();
      v24 = v2;
      v25 = v15;
      v26 = sub_10000D01C(v22, v23, v34);

      *(v21 + 4) = v26;
      v15 = v25;
      v2 = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "shareKey pushIdentifiers %s", v21, 0xCu);
      sub_100004984(v32);

      v16 = v33;
    }

    v27 = swift_allocObject();
    v28 = *(a1 + 80);
    *(v27 + 104) = *(a1 + 64);
    *(v27 + 120) = v28;
    *(v27 + 136) = *(a1 + 96);
    v29 = *(a1 + 16);
    *(v27 + 40) = *a1;
    *(v27 + 56) = v29;
    v30 = *(a1 + 48);
    *(v27 + 72) = *(a1 + 32);
    *(v27 + 16) = v2;
    *(v27 + 24) = v16;
    *(v27 + 32) = v15;
    v31 = *(a1 + 112);
    *(v27 + 88) = v30;
    *(v27 + 152) = v31;
    *(v27 + 160) = v14;

    sub_1000C7A34(a1, v34);
    sub_100005F04(&v35, v34, &qword_1005A9E20, &qword_1004C3350);
    sub_1000EB6B4(v14, v17, 0, sub_1000C7E38, v27);
  }
}

uint64_t sub_1000AF5F8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 312);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
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
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Handling FetchLabelledLocations command", v11, 2u);
  }

  sub_1004B775C();
  sub_1000C4F64(0);
  type metadata accessor for Transaction();
  return static Transaction.named<A>(_:with:)();
}

void sub_1000AF810(uint64_t a1)
{
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 312);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v15 = *(v9 + 8);
  v14 = (v9 + 8);
  v15(v11, v8);
  if (v12)
  {
    v16 = *(a1 + 64);
    p_type = &stru_1005A4FF0.type;
    v14 = &stru_1005A4FF0.type;
    v2 = &off_1005A7000;
    if (v16)
    {
      v17 = *(a1 + 56);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v40 = 0;
      if (sub_1000B9F08(v17, v16, &v40))
      {
        Date.init(timeIntervalSince1970:)();
        v18 = type metadata accessor for Date();
        (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
        sub_100002CE0(v7, &unk_1005AE5B0, &qword_1004C32F0);
        v19 = [objc_opt_self() standardUserDefaults];
        v20 = String._bridgeToObjectiveC()();
        v21 = String._bridgeToObjectiveC()();
        [v19 setValue:v20 forKey:v21];

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        sub_10000A6F0(v22, qword_1005DFB98);

        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v25 = 136315394;
          if (qword_1005A7ED0 != -1)
          {
            swift_once();
          }

          *(v25 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v40);
          *(v25 + 12) = 2080;
          *(v25 + 14) = sub_10000D01C(v17, v16, &v40);
          _os_log_impl(&_mh_execute_header, v23, v24, "%s: Set %s", v25, 0x16u);
          swift_arrayDestroy();

          v14 = (&stru_1005A4FF0 + 16);
        }

        else
        {
        }

        goto LABEL_20;
      }

      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
      sub_100002CE0(v7, &unk_1005AE5B0, &qword_1004C32F0);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      if (qword_1005A7ED0 != -1)
      {
        swift_once();
      }

      *(v30 + 4) = sub_10000D01C(qword_1005A98A8, unk_1005A98B0, &v40);
      _os_log_impl(&_mh_execute_header, v28, v29, "%s:  Cannot set date", v30, 0xCu);
      sub_100004984(v31);
    }

LABEL_20:
    if (qword_1005A7EF8 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_21:
  v32 = [objc_opt_self() p_type[500]];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v34 = String._bridgeToObjectiveC()();
  [v32 v14[501]];

  if (v2[477] != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005DFB98);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Received autoMeIsActive command. Set autoMeActive to true", v38, 2u);
  }
}

void sub_1000AFF08()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 312);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  v8 = *(v2 + 8);
  p_type = (v2 + 8);
  v8(v4, v1);
  if (v5)
  {
    v1 = objc_opt_self();
    p_type = &stru_1005A4FF0.type;
    v9 = [v1 standardUserDefaults];
    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];

    if (qword_1005A7EF8 == -1)
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
  v11 = [v1 p_type[500]];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v13 = String._bridgeToObjectiveC()();
  [v11 setValue:isa forKey:v13];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Received autoMeIsInactive command. Set autoMeActive to false", v17, 2u);
  }
}

void sub_1000B01BC(__int128 *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v5 - 8);
  v7 = v48 - v6;
  v8 = type metadata accessor for Credentials(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v48[2] = v11;
  v49 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = v48 - v12;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000A6F0(v13, qword_1005DFB98);
  sub_1000C7A34(a1, &v60);
  v48[1] = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_1000C792C(a1);
  v17 = os_log_type_enabled(v15, v16);
  v57 = v9;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v48[0] = v2;
    v20 = v19;
    v59 = v19;
    *v18 = 136315138;
    v21 = a1[5];
    v64 = a1[4];
    v65 = v21;
    v66 = a1[6];
    v67 = *(a1 + 14);
    v22 = a1[1];
    v60 = *a1;
    v61 = v22;
    v23 = a1[3];
    v62 = a1[2];
    v63 = v23;
    sub_1000C7A34(a1, v58);
    v24 = String.init<A>(describing:)();
    v26 = sub_10000D01C(v24, v25, &v59);

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v15, v16, "PushAck: Sending ACK for %s", v18, 0xCu);
    sub_100004984(v20);
    v2 = v48[0];
  }

  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v27 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v28 = sub_10000A6F0(v27, qword_1005AF7C0);
  os_unfair_lock_lock(v28);
  sub_100005F04(v28 + *(v27 + 28), v7, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v28);
  v29 = v57;
  if ((*(v57 + 48))(v7, 1, v8) == 1)
  {
    sub_100002CE0(v7, &qword_1005A9DA8, &unk_1004D1130);
    v60 = 0uLL;
    LOBYTE(v61) = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58[0] = v33;
      *v32 = 136315138;
      v60 = 0uLL;
      LOBYTE(v61) = 2;
      v34 = String.init<A>(describing:)();
      v36 = sub_10000D01C(v34, v35, v58);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "PushAck - failed to get credentials error %s", v32, 0xCu);
      sub_100004984(v33);
    }
  }

  else
  {
    v37 = v50;
    sub_1000C9DE8(v7, v50, type metadata accessor for Credentials);
    v38 = v51;
    v39 = v49;
    sub_1000CA264(v37, v49, type metadata accessor for Credentials);
    v40 = (*(v29 + 80) + 144) & ~*(v29 + 80);
    v41 = swift_allocObject();
    v42 = a1[5];
    *(v41 + 88) = a1[4];
    *(v41 + 104) = v42;
    *(v41 + 120) = a1[6];
    v43 = a1[1];
    *(v41 + 24) = *a1;
    *(v41 + 40) = v43;
    v44 = a1[3];
    *(v41 + 56) = a1[2];
    *(v41 + 16) = v38;
    *(v41 + 136) = *(a1 + 14);
    *(v41 + 72) = v44;
    sub_1000C9DE8(v39, v41 + v40, type metadata accessor for Credentials);
    v58[4] = sub_1000C7B98;
    v58[5] = v41;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 1107296256;
    v58[2] = sub_100020828;
    v58[3] = &unk_10058CF18;
    v45 = _Block_copy(v58);
    sub_1000C7A34(a1, &v60);

    v46 = v52;
    static DispatchQoS.unspecified.getter();
    *&v60 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v47 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v45);
    (*(v56 + 8))(v47, v2);
    (*(v53 + 8))(v46, v55);
    sub_1000CA2CC(v37, type metadata accessor for Credentials);
  }
}

uint64_t sub_1000B09A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = *(a2 + 24);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a7 + 80);
  *(v16 + 96) = *(a7 + 64);
  *(v16 + 112) = v17;
  *(v16 + 128) = *(a7 + 96);
  v18 = *(a7 + 112);
  v19 = *(a7 + 16);
  *(v16 + 32) = *a7;
  *(v16 + 48) = v19;
  v20 = *(a7 + 48);
  *(v16 + 64) = *(a7 + 32);
  *(v16 + 80) = v20;
  *(v16 + 144) = v18;
  *(v16 + 152) = a5;
  *(v16 + 160) = a6;
  *(v16 + 168) = a8;
  *(v16 + 176) = a9;
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = v15;
  v21[7] = sub_1000C7B50;
  v21[8] = v16;
  swift_bridgeObjectRetain_n();

  sub_1000C7A34(a7, v25);

  sub_1000E69C8();
}

void sub_1000B0B10(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (!a1)
  {
    sub_1000A82D8(a5, a6, a7, a8, 0);
    v22 = a4;
    goto LABEL_11;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000A6F0(v9, qword_1005DFB98);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "startLocate - unable to verify locationId. Cannot start monitor %s", v12, 0xCu);
    sub_100004984(v13);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v17 = qword_1005DFB60;
  v18 = *(qword_1005DFB60 + 16);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = 0xD00000000000001ELL;
  v19[4] = 0x80000001004DF4C0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000CAB60;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000CAA0C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058CEC8;
  v21 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if ((v18 & 1) == 0)
  {
    v22 = a4;
LABEL_11:
    sub_1000B01BC(v22);
    Transaction.capture()();
    return;
  }

  __break(1u);
}

void sub_1000B0E58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a1)
  {
    if (*(a5 + 96))
    {
      v9 = *(a5 + 88);
      v10 = *(a5 + 96);
    }

    else
    {
      v10 = 0xE900000000000065;
      v9 = 0x76697463616F7270;
    }

    sub_1000A82D8(a3, a4, v9, v10, 0);

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    swift_once();
    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
LABEL_7:
      v11 = String._bridgeToObjectiveC()();
      v12 = swift_allocObject();
      *(v12 + 16) = 1;
      aBlock[4] = sub_1000C7E4C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000119E4;
      aBlock[3] = &unk_10058D0A8;
      v13 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v13);
    }
  }

LABEL_8:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v17 = 141558531;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v18 = Array.description.getter();
    v20 = sub_10000D01C(v18, v19, aBlock);

    *(v17 + 14) = v20;
    *(v17 + 22) = 2080;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v21 = String.init<A>(describing:)();
    v23 = sub_10000D01C(v21, v22, aBlock);

    *(v17 + 24) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "completed shareKey to %{private,mask.hash}s Error %s", v17, 0x20u);
    swift_arrayDestroy();
  }

  sub_1000B01BC(a5);
}

uint64_t sub_1000B11C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v32 = &v30 - v5;
  v6 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Credentials(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = qword_1005A8098;
  v34 = a2;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v18 = sub_10000A6F0(v17, qword_1005AF7C0);
  os_unfair_lock_lock(v18);
  sub_100005F04(v18 + *(v17 + 28), v8, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002CE0(v8, &qword_1005A9DA8, &unk_1004D1130);
    v35 = 0;
    v36 = 0;
    v37 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    v19 = swift_allocError();
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 2;
    sub_1000C50DC(v19);
  }

  else
  {
    v22 = v10;
    v31 = v14;
    sub_1000C9DE8(v8, v14, type metadata accessor for Credentials);
    v23 = type metadata accessor for TaskPriority();
    v24 = v32;
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    v25 = v14;
    v26 = v33;
    sub_1000CA264(v25, v33, type metadata accessor for Credentials);
    v27 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v34;
    sub_1000C9DE8(v26, v28 + v27, type metadata accessor for Credentials);
    v29 = (v28 + ((v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_1000C7E70;
    v29[1] = v15;

    sub_1001D7F30(0, 0, v24, &unk_1004C3360, v28);

    return sub_1000CA2CC(v31, type metadata accessor for Credentials);
  }
}

void sub_1000B1610(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v112 = a3;
  v5 = type metadata accessor for Credentials(0);
  v111 = *(v5 - 8);
  v6 = *(v111 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v98 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v113 = (&v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v110 = &v98 - v15;
  v16 = [objc_opt_self() currentDevice];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 uniqueDeviceIdentifier];

    if (v18)
    {
      v109 = v12;
      v108 = v11;
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      OS_dispatch_queue.sync<A>(execute:)();
      if (!*(&v115 + 1))
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_10000A6F0(v44, qword_1005DFB98);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_101;
        }

        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "No APS token. Not proceeding with PushAck";
LABEL_100:
        _os_log_impl(&_mh_execute_header, v45, v46, v48, v47, 2u);

LABEL_101:

        return;
      }

      v105 = 0;
      v104 = v20;
      v103 = v115;

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v21 = v115;
      v22 = qword_1005A7EE8;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      v24 = sub_10000A6F0(v23, qword_1005DFB98);

      sub_1000C7A34(a2, &v115);
      v101 = v24;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      sub_1000C792C(a2);

      v27 = os_log_type_enabled(v25, v26);
      v106 = a2;
      v102 = v21;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v100 = a1;
        v29 = v28;
        *&v115 = swift_slowAlloc();
        *v29 = 141558787;
        *(v29 + 4) = 1752392040;
        *(v29 + 12) = 2081;

        v30 = v10;
        v31 = Array.description.getter();
        v99 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = v32;

        v34 = sub_10000D01C(v31, v33, &v115);

        *(v29 + 14) = v34;
        v10 = v30;
        *(v29 + 22) = 2160;
        *(v29 + 24) = 1752392040;
        *(v29 + 32) = 2081;
        v35 = Array.description.getter();
        v37 = v36;

        v38 = sub_10000D01C(v35, v37, &v115);

        *(v29 + 34) = v38;
        v7 = v99;
        _os_log_impl(&_mh_execute_header, v25, v26, "Watch Monitoring: Watches to check connection got through Server are %{private,mask.hash}s. Watches connected now sending to pushAck are %{private,mask.hash}s", v29, 0x2Au);
        swift_arrayDestroy();

        a1 = v100;
      }

      else
      {
      }

      v49 = v108;
      if (qword_1005A7EE0 != -1)
      {
        v39 = swift_once();
      }

      v50 = qword_1005DFB60;
      __chkstk_darwin(v39);
      *(&v98 - 2) = v50;
      *(&v98 - 8) = 1;

      sub_10004B564(&qword_1005A9E18, &qword_1004C3338);
      OS_dispatch_queue.sync<A>(execute:)();

      v51 = v115;
      v52 = v106;
      v54 = *v106;
      v53 = v106[1];
      v55 = HIBYTE(v53) & 0xF;
      v56 = *v106 & 0xFFFFFFFFFFFFLL;
      if ((v53 & 0x2000000000000000) != 0)
      {
        v57 = HIBYTE(v53) & 0xF;
      }

      else
      {
        v57 = *v106 & 0xFFFFFFFFFFFFLL;
      }

      if (!v57)
      {
        goto LABEL_84;
      }

      if ((v53 & 0x1000000000000000) != 0)
      {

        v60 = sub_1004BA5C8();
        v97 = v96;

        if ((v97 & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if ((v53 & 0x2000000000000000) != 0)
      {
        *&v115 = *v106;
        *(&v115 + 1) = v53 & 0xFFFFFFFFFFFFFFLL;
        if (v54 == 43)
        {
          if (v55)
          {
            if (--v55)
            {
              v60 = 0;
              v70 = &v115 + 1;
              while (1)
              {
                v71 = *v70 - 48;
                if (v71 > 9)
                {
                  break;
                }

                v72 = 10 * v60;
                if ((v60 * 10) >> 64 != (10 * v60) >> 63)
                {
                  break;
                }

                v60 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  break;
                }

                ++v70;
                if (!--v55)
                {
                  goto LABEL_83;
                }
              }
            }

            goto LABEL_82;
          }

          goto LABEL_108;
        }

        if (v54 != 45)
        {
          if (v55)
          {
            v60 = 0;
            v75 = &v115;
            while (1)
            {
              v76 = *v75 - 48;
              if (v76 > 9)
              {
                break;
              }

              v77 = 10 * v60;
              if ((v60 * 10) >> 64 != (10 * v60) >> 63)
              {
                break;
              }

              v60 = v77 + v76;
              if (__OFADD__(v77, v76))
              {
                break;
              }

              ++v75;
              if (!--v55)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_82;
        }

        if (v55)
        {
          if (--v55)
          {
            v60 = 0;
            v64 = &v115 + 1;
            while (1)
            {
              v65 = *v64 - 48;
              if (v65 > 9)
              {
                break;
              }

              v66 = 10 * v60;
              if ((v60 * 10) >> 64 != (10 * v60) >> 63)
              {
                break;
              }

              v60 = v66 - v65;
              if (__OFSUB__(v66, v65))
              {
                break;
              }

              ++v64;
              if (!--v55)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_82;
        }
      }

      else
      {
        if ((v54 & 0x1000000000000000) != 0)
        {
          v58 = ((v53 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v58 = _StringObject.sharedUTF8.getter();
        }

        v59 = *v58;
        if (v59 == 43)
        {
          if (v56 >= 1)
          {
            v55 = v56 - 1;
            if (v56 != 1)
            {
              v60 = 0;
              if (v58)
              {
                v67 = v58 + 1;
                while (1)
                {
                  v68 = *v67 - 48;
                  if (v68 > 9)
                  {
                    goto LABEL_82;
                  }

                  v69 = 10 * v60;
                  if ((v60 * 10) >> 64 != (10 * v60) >> 63)
                  {
                    goto LABEL_82;
                  }

                  v60 = v69 + v68;
                  if (__OFADD__(v69, v68))
                  {
                    goto LABEL_82;
                  }

                  ++v67;
                  if (!--v55)
                  {
                    goto LABEL_83;
                  }
                }
              }

              goto LABEL_74;
            }

            goto LABEL_82;
          }

          goto LABEL_107;
        }

        if (v59 != 45)
        {
          if (v56)
          {
            v60 = 0;
            if (v58)
            {
              while (1)
              {
                v73 = *v58 - 48;
                if (v73 > 9)
                {
                  goto LABEL_82;
                }

                v74 = 10 * v60;
                if ((v60 * 10) >> 64 != (10 * v60) >> 63)
                {
                  goto LABEL_82;
                }

                v60 = v74 + v73;
                if (__OFADD__(v74, v73))
                {
                  goto LABEL_82;
                }

                ++v58;
                if (!--v56)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_74;
          }

LABEL_82:
          v60 = 0;
          LOBYTE(v55) = 1;
LABEL_83:
          v114 = v55;
          if ((v55 & 1) == 0)
          {
LABEL_85:
            v79 = v113;
            static Date.trustedNow.getter(v113);
            v80 = Date.epoch.getter();
            (*(v109 + 8))(v79, v49);
            v81 = *(v52 + 32);
            if (v81 > 2)
            {
              v82 = v104;
              if (v81 == 3)
              {
                v83 = 0x80000001004DDDA0;
                v84 = 0xD000000000000018;
              }

              else if (v81 == 4)
              {
                v83 = 0xEE00455649544341;
                v84 = 0x5F454D5F4F545541;
              }

              else
              {
                v84 = 0xD000000000000010;
                v83 = 0x80000001004DDDD0;
              }
            }

            else
            {
              v82 = v104;
              if (*(v52 + 32))
              {
                if (v81 == 1)
                {
                  v83 = 0x80000001004DDD60;
                  v84 = 0xD000000000000017;
                }

                else
                {
                  v83 = 0x80000001004DDD80;
                  v84 = 0xD000000000000013;
                }
              }

              else
              {
                v83 = 0x80000001004DDD40;
                v84 = 0xD000000000000014;
              }
            }

            v86 = v52[2];
            v85 = v52[3];
            *&v115 = v60;
            *(&v115 + 1) = v80;
            v116 = v86;
            v117 = v85;
            v118 = v51;
            v119 = v103;
            v120 = v107;
            v121 = v82;
            strcpy(v122, "searchpartyd");
            HIBYTE(v122[6]) = 0;
            v122[7] = -5120;
            v123 = _swiftEmptyDictionarySingleton;
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0;
            v128 = v102;
            v129 = v84;
            v130 = v83;

            v87 = sub_10018CB04(&v115);
            if (v87)
            {
              v90 = v87;
              v91 = v88;
              v92 = v89;
              v93 = type metadata accessor for TaskPriority();
              (*(*(v93 - 8) + 56))(v10, 1, 1, v93);
              sub_1000CA264(v112, v7, type metadata accessor for Credentials);
              v94 = (*(v111 + 80) + 64) & ~*(v111 + 80);
              v95 = swift_allocObject();
              v95[2] = 0;
              v95[3] = 0;
              v95[4] = a1;
              v95[5] = v90;
              v95[6] = v91;
              v95[7] = v92;
              sub_1000C9DE8(v7, v95 + v94, type metadata accessor for Credentials);

              sub_1001D7F30(0, 0, v10, &unk_1004C3348, v95);

              return;
            }

            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v45, v46))
            {
              goto LABEL_101;
            }

            v47 = swift_slowAlloc();
            *v47 = 0;
            v48 = "PushAck - unable to create request";
            goto LABEL_100;
          }

LABEL_84:
          v78 = v110;
          static Date.trustedNow.getter(v110);
          v60 = Date.epoch.getter();
          (*(v109 + 8))(v78, v49);
          goto LABEL_85;
        }

        if (v56 >= 1)
        {
          v55 = v56 - 1;
          if (v56 != 1)
          {
            v60 = 0;
            if (v58)
            {
              v61 = v58 + 1;
              while (1)
              {
                v62 = *v61 - 48;
                if (v62 > 9)
                {
                  goto LABEL_82;
                }

                v63 = 10 * v60;
                if ((v60 * 10) >> 64 != (10 * v60) >> 63)
                {
                  goto LABEL_82;
                }

                v60 = v63 - v62;
                if (__OFSUB__(v63, v62))
                {
                  goto LABEL_82;
                }

                ++v61;
                if (!--v55)
                {
                  goto LABEL_83;
                }
              }
            }

LABEL_74:
            LOBYTE(v55) = 0;
            goto LABEL_83;
          }

          goto LABEL_82;
        }

        __break(1u);
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      return;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_10000A6F0(v40, qword_1005DFB98);
  v113 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v113, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v113, v41, "Unable to get device identifier for server PushAck", v42, 2u);
  }

  v43 = v113;
}

uint64_t sub_1000B23E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000B2404, 0, 0);
}

uint64_t sub_1000B2404()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000B2498;

  return sub_1000847C8();
}

uint64_t sub_1000B2498(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000B2598, 0, 0);
}

uint64_t sub_1000B25B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for Response();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000B268C, 0, 0);
}

uint64_t sub_1000B268C()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending PushAck server request", v4, 2u);
  }

  v5 = v0[4];

  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1000B2800;
  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  return sub_1001CF6CC(v7, v5, v10, v8, 1, v9, 1, 0);
}

uint64_t sub_1000B2800()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1000B2A98;
  }

  else
  {
    v2 = sub_1000B2914;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B2914()
{
  (*(v0[9] + 16))(v0[10], v0[11], v0[8]);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  if (v3)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = Response.statusCode.getter();
    v9 = *(v5 + 8);
    v9(v4, v6);
    *(v7 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "PushAck received status %ld", v7, 0xCu);
  }

  else
  {
    v9 = *(v5 + 8);
    v9(v0[10], v0[8]);
  }

  v10 = v0[11];
  v11 = v0[8];

  v9(v10, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000B2A98()
{
  v12 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[14];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "PushAck request failed %s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1000B2C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();
  v11 = type metadata accessor for Response();
  v7[30] = v11;
  v12 = *(v11 - 8);
  v7[31] = v12;
  v7[32] = *(v12 + 64);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000B2E34, 0, 0);
}

uint64_t sub_1000B2E34()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1000B2EEC;
  v2 = v0[35];
  v3 = v0[18];

  return sub_1001CF6CC(v2, 1, 0, 0, 4, v3, 1, 0);
}

uint64_t sub_1000B2EEC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1000B34E4;
  }

  else
  {
    v2 = sub_1000B3000;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B3000()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  v35 = *(v4 + 16);
  v35(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = Response.statusCode.getter();
    v39 = *(v11 + 8);
    v39(v9, v10);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "FetchLabelledLocations - response code %ld", v12, 0xCu);
  }

  else
  {
    v39 = *(v11 + 8);
    v39(v9, v10);
  }

  v14 = v0[35];
  v15 = v0[33];
  v29 = v0[32];
  v16 = v0[30];
  v17 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v32 = v0[26];
  v37 = v0[25];
  v38 = v0[24];
  v36 = v0[22];
  v33 = v0[23];
  v34 = v0[21];
  v30 = v0[19];
  v31 = v0[20];
  v28 = v0[17];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v20);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v18, v20);
  v35(v15, v14, v16);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  (*(v17 + 32))(v23 + v22, v15, v16);
  v24 = (v23 + ((v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v30;
  v24[1] = v31;
  v0[12] = sub_1000C80CC;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D198;
  v25 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[16] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v36 + 8))(v33, v34);
  (*(v37 + 8))(v32, v38);
  v39(v14, v16);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000B34E4()
{
  v28 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[15] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "FetchLabelledLocations - error fetching labels %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[37];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];
  v21 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v23 = v0[23];
  v24 = v0[22];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v11, v13);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v10;
  v0[6] = sub_1000C7FB8;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D148;
  v18 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v23, v14);
  (*(v25 + 8))(v21, v26);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000B3930(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = v3;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000C817C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v6 = v20;
  if (v20)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005DFB98);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v10 = 134218242;
      *(v10 + 4) = *(v6 + 16);

      *(v10 + 12) = 2080;
      v11 = Array.description.getter();
      v13 = sub_10000D01C(v11, v12, &v20);

      *(v10 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v8, v9, "FetchLabelledLocations - fetched labels %ld %s", v10, 0x16u);
      sub_100004984(v19);
    }

    else
    {
    }

    sub_100105A50(v6, v4, v6);

    a3(v6, 0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FetchLabelledLocations Error decoding labels", v17, 2u);
    }

    a3(_swiftEmptyArrayStorage, 0);
  }
}

uint64_t sub_1000B3DD8(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_1000C5524(a3, 0, a2, a1, a2, sub_1000C542C);
}

void sub_1000B3E58(void *a1, int a2, void (*a3)(void *, void), uint64_t a4)
{
  v86 = a4;
  v87 = a3;
  v104 = a2;
  v89 = type metadata accessor for SecureLocation(0);
  v6 = *(v89 - 8);
  v7 = __chkstk_darwin(v89);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v88 = (&v85 - v11);
  v12 = __chkstk_darwin(v10);
  v14 = (&v85 - v13);
  v15 = __chkstk_darwin(v12);
  v17 = &v85 - v16;
  __chkstk_darwin(v15);
  v19 = &v85 - v18;
  v20 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v4;
  if (*(*(v4 + 120) + 16))
  {
    v90 = v9;
    if (qword_1005A7EF8 != -1)
    {
LABEL_56:
      swift_once();
    }

    v23 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v23);
    v24 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v23 + *(v24 + 28), v22, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v23);

    v25 = *(v22 + 16);
    sub_1000CA2CC(v22, type metadata accessor for SecureLocationsConfig);
    v94 = a1[2];
    if (!v94)
    {
      v98 = _swiftEmptyArrayStorage;
      goto LABEL_55;
    }

    v27 = 0;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v98 = _swiftEmptyArrayStorage;
    v92 = v28;
    v93 = a1 + v28;
    v29 = v6[9];
    *&v26 = 136315906;
    v99 = v26;
    *&v26 = 136315650;
    v97 = v26;
    *&v26 = 136315394;
    v85 = v26;
    v30 = v90;
    v109 = v14;
    v100 = v17;
    v103 = v19;
    v91 = v29;
    while (1)
    {
      v96 = v27;
      sub_1000CA264(v93 + v29 * v27, v19, type metadata accessor for SecureLocation);
      sub_1000CA264(v19, v17, type metadata accessor for SecureLocation);
      v31 = *(v95 + 120);
      v32 = *(v31 + 16);
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = 0;
      v105 = v32 - 1;
      v22 = 32;
      v101 = v31;
      while (1)
      {
        v34 = *(v31 + v22 + 32);
        v35 = *(v31 + v22 + 48);
        a1 = *(v31 + v22 + 80);
        v114 = *(v31 + v22 + 64);
        v36 = *(v31 + v22 + 16);
        v112[0] = *(v31 + v22);
        v112[1] = v36;
        v115 = a1;
        v112[2] = v34;
        v113 = v35;
        v108 = *(&v114 + 1);
        v107 = v36;
        sub_1000C81D0(v112, v111);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        v38 = sub_10000A6F0(v37, qword_1005DFB98);
        sub_1000CA264(v19, v14, type metadata accessor for SecureLocation);
        sub_1000C81D0(v112, v111);
        v106 = v38;
        v39 = Logger.logObject.getter();
        v6 = static os_log_type_t.info.getter();
        sub_1000C822C(v112);
        if (os_log_type_enabled(v39, v6))
        {
          v40 = v22;
          v41 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v41 = v99;
          v42 = *(&v107 + 1);

          v43 = sub_10000D01C(v107, v42, v111);

          *(v41 + 4) = v43;
          *(v41 + 12) = 2080;
          if (a1)
          {
            v44 = v108;
          }

          else
          {
            v44 = 1818848800;
          }

          if (a1)
          {
            v45 = a1;
          }

          else
          {
            v45 = 0xE400000000000000;
          }

          v46 = v114;

          v47 = sub_10000D01C(v44, v45, v111);

          *(v41 + 14) = v47;
          *(v41 + 22) = 2080;
          v31 = v101;
          v48 = *v109;
          v49 = v109[1];

          sub_1000CA2CC(v109, type metadata accessor for SecureLocation);
          v50 = sub_10000D01C(v48, v49, v111);
          v19 = v103;

          *(v41 + 24) = v50;
          v17 = v100;
          *(v41 + 32) = 2048;
          *(v41 + 34) = v46;
          _os_log_impl(&_mh_execute_header, v39, v6, "LabelledLocations Checking label %s %s %s %f", v41, 0x2Au);
          swift_arrayDestroy();
          v14 = v109;

          v22 = v40;

          if (!a1)
          {
LABEL_17:
            if ((v104 & 1) == 0)
            {
              goto LABEL_21;
            }

            goto LABEL_25;
          }
        }

        else
        {

          sub_1000CA2CC(v14, type metadata accessor for SecureLocation);
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        if ((v104 & 1) != 0 || (v108 != *v19 || a1 != *(v19 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_21:
          sub_1000C822C(v112);
          goto LABEL_35;
        }

LABEL_25:
        v102 = v22;
        v6 = [objc_allocWithZone(CLLocation) initWithLatitude:v113 longitude:?];
        v51 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v19 + 3) longitude:*(v19 + 2)];
        [v6 distanceFromLocation:v51];
        v53 = v52;
        sub_1000C81D0(v112, v111);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.info.getter();
        sub_1000C822C(v112);
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v56 = v97;
          v57 = *(&v107 + 1);

          v58 = sub_10000D01C(v107, v57, v111);

          *(v56 + 4) = v58;
          *(v56 + 12) = 2080;
          if (a1)
          {
            v59 = v108;
          }

          else
          {
            v59 = 0x206C696E20;
          }

          if (a1)
          {
            v60 = a1;
          }

          else
          {
            v60 = 0xE500000000000000;
          }

          v61 = v59;
          v17 = v100;
          a1 = sub_10000D01C(v61, v60, v111);
          v31 = v101;

          *(v56 + 14) = a1;
          *(v56 + 22) = 2048;
          *(v56 + 24) = v53;
          _os_log_impl(&_mh_execute_header, v54, v55, "LabelledLocations %s %s Label Distance %f", v56, 0x20u);
          swift_arrayDestroy();

          v14 = v109;
        }

        v19 = v103;
        v22 = v102;
        if (v53 <= v25)
        {
          break;
        }

        sub_1000C822C(v112);

LABEL_35:
        if (v105 == v33)
        {

          goto LABEL_39;
        }

        ++v33;
        v22 += 88;
        if (v33 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }
      }

      v108 = v6;

      v67 = *(&v107 + 1);

      sub_1000C822C(v112);
      swift_beginAccess();
      v68 = &v17[*(v89 + 64)];
      v69 = v107;
      *v68 = v107;
      *(v68 + 1) = v67;

      v70 = v88;
      sub_1000CA264(v19, v88, type metadata accessor for SecureLocation);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        *v73 = v85;
        v111[0] = v69;
        v111[1] = v67;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v74 = String.init<A>(describing:)();
        v75 = v70;
        v77 = sub_10000D01C(v74, v76, &v110);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = *v70;
        v79 = *(v75 + 8);

        sub_1000CA2CC(v75, type metadata accessor for SecureLocation);
        v80 = sub_10000D01C(v78, v79, &v110);

        *(v73 + 14) = v80;
        _os_log_impl(&_mh_execute_header, v71, v72, "LabelledLocations Adding label %s to location %s", v73, 0x16u);
        swift_arrayDestroy();
        v17 = v100;
      }

      else
      {

        sub_1000CA2CC(v70, type metadata accessor for SecureLocation);
      }

LABEL_39:
      v30 = v90;
LABEL_40:
      swift_beginAccess();
      sub_1000CA264(v17, v30, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_1001FCE44(0, v98[2] + 1, 1, v98);
      }

      v63 = v98[2];
      v62 = v98[3];
      if (v63 >= v62 >> 1)
      {
        v98 = sub_1001FCE44((v62 > 1), v63 + 1, 1, v98);
      }

      v64 = v96 + 1;
      sub_1000CA2CC(v19, type metadata accessor for SecureLocation);
      v65 = v98;
      v98[2] = v63 + 1;
      v27 = v64;
      v66 = v91;
      sub_1000C9DE8(v30, v65 + v92 + v63 * v91, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
      v29 = v66;
      if (v27 == v94)
      {
LABEL_55:
        v87(v98, 0);

        return;
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  sub_10000A6F0(v81, qword_1005DFB98);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&_mh_execute_header, v82, v83, "LabelledLocations - No labels - nothing to resolve", v84, 2u);
  }

  v87(a1, 0);
}

uint64_t sub_1000B4C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();
  v11 = type metadata accessor for Response();
  v7[30] = v11;
  v12 = *(v11 - 8);
  v7[31] = v12;
  v7[32] = *(v12 + 64);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000B4E0C, 0, 0);
}

uint64_t sub_1000B4E0C()
{
  v1 = swift_task_alloc();
  v0[36] = v1;
  *v1 = v0;
  v1[1] = sub_1000B4EC4;
  v2 = v0[35];
  v3 = v0[18];

  return sub_1001CF6CC(v2, 0, 0, 0, 4, v3, 1, 0);
}

uint64_t sub_1000B4EC4()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1000B54BC;
  }

  else
  {
    v2 = sub_1000B4FD8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B4FD8()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);
  v35 = *(v4 + 16);
  v35(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = Response.statusCode.getter();
    v39 = *(v11 + 8);
    v39(v9, v10);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "FetchConfig - response code %ld", v12, 0xCu);
  }

  else
  {
    v39 = *(v11 + 8);
    v39(v9, v10);
  }

  v14 = v0[35];
  v15 = v0[33];
  v29 = v0[32];
  v16 = v0[30];
  v17 = v0[31];
  v19 = v0[28];
  v18 = v0[29];
  v20 = v0[27];
  v32 = v0[26];
  v37 = v0[25];
  v38 = v0[24];
  v36 = v0[22];
  v33 = v0[23];
  v34 = v0[21];
  v30 = v0[19];
  v31 = v0[20];
  v28 = v0[17];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v19 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v20);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v19 + 8))(v18, v20);
  v35(v15, v14, v16);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v28;
  (*(v17 + 32))(v23 + v22, v15, v16);
  v24 = (v23 + ((v29 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v30;
  v24[1] = v31;
  v0[12] = sub_1000C7648;
  v0[13] = v23;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058CBF8;
  v25 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[16] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v36 + 8))(v33, v34);
  (*(v37 + 8))(v32, v38);
  v39(v14, v16);

  v26 = v0[1];

  return v26();
}

uint64_t sub_1000B54BC()
{
  v28 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[15] = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "FetchConfig - error %s", v5, 0xCu);
    sub_100004984(v6);
  }

  v10 = v0[37];
  v12 = v0[28];
  v11 = v0[29];
  v13 = v0[27];
  v21 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v23 = v0[23];
  v24 = v0[22];
  v15 = v0[20];
  v14 = v0[21];
  v16 = v0[19];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v11, v13);
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v15;
  v17[4] = v10;
  v0[6] = sub_1000C7618;
  v0[7] = v17;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058CBA8;
  v18 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v23, v14);
  (*(v25 + 8))(v21, v26);

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000B5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v6 = Response.body.getter();
  v8 = v7;
  a5();

  return sub_1000049D0(v6, v8);
}

void sub_1000B5988(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v245 = a4;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v7 - 8);
  v240 = &v231 - v8;
  v9 = sub_10004B564(&qword_1005A9DB8, &unk_1004CC1D0);
  __chkstk_darwin(v9 - 8);
  v241 = &v231 - v10;
  v11 = type metadata accessor for URL();
  v248 = *(v11 - 8);
  __chkstk_darwin(v11);
  v237 = &v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v231 - v17;
  v246 = type metadata accessor for SecureLocationsConfig(0);
  v242 = *(v246 - 8);
  v19 = __chkstk_darwin(v246);
  v238 = v20;
  v239 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v247 = &v231 - v21;
  v22 = objc_opt_self();
  v243 = a1;
  v244 = a2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v271 = 0;
  v24 = [v22 JSONObjectWithData:isa options:0 error:&v271];

  if (!v24)
  {
    v35 = v271;
    v36 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1005A7EE8 != -1)
    {
LABEL_220:
      swift_once();
    }

    v139 = type metadata accessor for Logger();
    sub_10000A6F0(v139, qword_1005DFB98);
    swift_errorRetain();
    v140 = Logger.logObject.getter();
    v141 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = a3;
      v144 = swift_slowAlloc();
      *&v271 = v144;
      *v142 = 136315138;
      *&v269[0] = v36;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v145 = String.init<A>(describing:)();
      v147 = sub_10000D01C(v145, v146, &v271);

      *(v142 + 4) = v147;
      _os_log_impl(&_mh_execute_header, v140, v141, "FetchConfig - error decoding config information %s", v142, 0xCu);
      sub_100004984(v144);
      a3 = v143;
    }

    swift_errorRetain();
    (a3)(v36);

    return;
  }

  v25 = v271;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10004B564(&qword_1005A9DC8, &unk_1004D0DC0);
  if (!swift_dynamicCast())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005DFB98);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "FetchConfig - unable to parse config data", v40, 2u);
    }

    v41 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:5 userInfo:0];
    a3();

    return;
  }

  v26 = *&v269[0];
  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for UUID();
  sub_10000A6F0(v27, qword_1005DFC58);
  sub_1004AFCB8();
  sub_100005F04(v18, v16, &qword_1005A9DC0, &unk_1004C3290);
  v28 = (*(v242 + 48))(v16, 1, v246);
  v29 = v247;
  if (v28 == 1)
  {
    sub_100002CE0(v16, &qword_1005A9DC0, &unk_1004C3290);
    if (qword_1005A7FA0 != -1)
    {
      swift_once();
    }

    v30 = qword_1005DFC70;
    v31 = qword_1005A7FA8;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_10000A6F0(v11, qword_1005DFC78);
    v33 = v246;
    (*(v248 + 16))(v29 + *(v246 + 76), v32, v11);
    if (qword_1005A7FB0 != -1)
    {
      swift_once();
    }

    v34 = qword_1005DFC90;

    sub_100002CE0(v18, &qword_1005A9DC0, &unk_1004C3290);
    *v29 = 0;
    *(v29 + 8) = 1;
    *(v29 + 16) = xmmword_1004C2E50;
    *(v29 + 32) = 5;
    *(v29 + 40) = xmmword_1004C2E60;
    *(v29 + 56) = 0;
    *(v29 + 64) = v30;
    *(v29 + 72) = 0x405E000000000000;
    *(v29 + 80) = 1;
    *(v29 + 88) = 0x409C200000000000;
    *(v29 + 96) = 5;
    *(v29 + 104) = xmmword_1004C2E70;
    *(v29 + *(v33 + 80)) = v34;
    if (!*(v26 + 16))
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_100002CE0(v18, &qword_1005A9DC0, &unk_1004C3290);
    sub_1000C9DE8(v16, v29, type metadata accessor for SecureLocationsConfig);
    if (!*(v26 + 16))
    {
      goto LABEL_24;
    }
  }

  v42 = sub_1000110D8(0x6556747065636361, 0xED00006E6F697372);
  if (v43)
  {
    sub_10000709C(*(v26 + 56) + 32 * v42, &v271);
    if (swift_dynamicCast())
    {
      v44 = 0;
      *v29 = *&v269[0];
      goto LABEL_29;
    }
  }

LABEL_24:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000A6F0(v45, qword_1005DFB98);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "FetchConfig Unable to parse acceptVersion from config response", v48, 2u);
  }

  v44 = 1;
LABEL_29:
  v49 = *(v26 + 16);
  v236 = a3;
  if (v49 && (v50 = sub_1000110D8(0x4565727574616566, 0xEE0064656C62616ELL), (v51 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v50, &v271), (swift_dynamicCast() & 1) != 0))
  {
    *(v29 + 8) = v269[0];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_10000A6F0(v52, qword_1005DFB98);
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "FetchConfig Unable to parse featureEnabled flag from server config response", v55, 2u);
    }

    v44 = 1;
  }

  if (*(v26 + 16) && (v56 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE160), (v57 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v56, &v271), (swift_dynamicCast() & 1) != 0) && (*&v271 = 0, v58 = sub_1000B9F08(*&v269[0], *(&v269[0] + 1), &v271), , v58))
  {
    *(v29 + 16) = v271;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_10000A6F0(v59, qword_1005DFB98);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "FetchConfig Unable to parse labelDistanceThreshold from server config response", v62, 2u);
    }

    v44 = 1;
  }

  if (*(v26 + 16) && (v63 = sub_1000110D8(0xD00000000000001CLL, 0x80000001004DE1A0), (v64 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v63, &v271), (swift_dynamicCast() & 1) != 0))
  {
    *(v29 + 32) = *&v269[0];
    if (!*(v26 + 16))
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000A6F0(v65, qword_1005DFB98);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "FetchConfig unable to parse maxAllowedSenderSessions from server config response", v68, 2u);
    }

    v44 = 1;
    if (!*(v26 + 16))
    {
      goto LABEL_62;
    }
  }

  v69 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE180);
  if (v70)
  {
    sub_10000709C(*(v26 + 56) + 32 * v69, &v271);
    if (swift_dynamicCast())
    {
      *&v271 = 0;
      v71 = sub_1000B9F08(*&v269[0], *(&v269[0] + 1), &v271);

      if (v71)
      {
        *(v29 + 24) = v271;
        goto LABEL_67;
      }
    }
  }

LABEL_62:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v72 = type metadata accessor for Logger();
  sub_10000A6F0(v72, qword_1005DFB98);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "FetchConfig unable to parse locationCacheValidityThreshold from server config response", v75, 2u);
  }

  v44 = 1;
LABEL_67:
  if (*(v26 + 16) && (v76 = sub_1000110D8(0xD000000000000016, 0x80000001004DE1C0), (v77 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v76, &v271), (swift_dynamicCast() & 1) != 0) && (*&v271 = 0, v78 = sub_1000B9F08(*&v269[0], *(&v269[0] + 1), &v271), , v78))
  {
    *(v29 + 40) = v271;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000A6F0(v79, qword_1005DFB98);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "FetchConfig unable to parse locationAgingThreshold from server config response", v82, 2u);
    }

    v44 = 1;
  }

  if (*(v26 + 16) && (v83 = sub_1000110D8(0xD000000000000019, 0x80000001004DE1E0), (v84 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v83, &v271), (swift_dynamicCast() & 1) != 0) && (*&v271 = 0, v85 = sub_1000B9F08(*&v269[0], *(&v269[0] + 1), &v271), , v85))
  {
    *(v29 + 48) = v271;
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    sub_10000A6F0(v86, qword_1005DFB98);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "FetchConfig unable to parse subscriptionThrottleInSec from server config response ", v89, 2u);
    }
  }

  if (*(v26 + 16) && (v90 = sub_1000110D8(0xD00000000000001ELL, 0x80000001004DE200), (v91 & 1) != 0) && (sub_10000709C(*(v26 + 56) + 32 * v90, &v271), (swift_dynamicCast() & 1) != 0))
  {
    *(v29 + 56) = v269[0];
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005DFB98);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "FetchConfig unable to parse overridePendingKeyRequestCheck from server config response", v95, 2u);
    }

    v44 = 1;
  }

  sub_10008DFD4(0xD00000000000001DLL, 0x80000001004DE220, v26, &v271);
  if (*(&v272 + 1))
  {
    sub_10004B564(&qword_1005A9630, &qword_1004C5680);
    if (swift_dynamicCast())
    {
      v96 = sub_10023F00C(*&v269[0]);

      *(v29 + 64) = v96;
      goto LABEL_105;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for Logger();
  sub_10000A6F0(v97, qword_1005DFB98);
  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    *v100 = 0;
    _os_log_impl(&_mh_execute_header, v98, v99, "FetchConfig unable to parse ownerProactiveSupportedModels from server config response", v100, 2u);
    v29 = v247;
  }

  v44 = 1;
LABEL_105:
  sub_10008DFD4(0xD000000000000017, 0x80000001004DE240, v26, &v271);
  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v271 = 0;
      v101 = sub_1000B9F08(*&v269[0], *(&v269[0] + 1), &v271);

      if (v101)
      {
        *(v29 + 72) = v271;
        goto LABEL_115;
      }
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  sub_10000A6F0(v102, qword_1005DFB98);
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&_mh_execute_header, v103, v104, "FetchConfig unable to parse keyDistributionThrottle from server config response", v105, 2u);
    v29 = v247;
  }

  v44 = 1;
LABEL_115:
  sub_10008DFD4(0xD00000000000001DLL, 0x80000001004DE260, v26, &v271);
  if (*(&v272 + 1))
  {
    v106 = swift_dynamicCast();
    v107 = v248;
    if (v106)
    {
      *(v29 + 80) = v269[0];
      goto LABEL_124;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
    v107 = v248;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_10000A6F0(v108, qword_1005DFB98);
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&_mh_execute_header, v109, v110, "FetchConfig unable to parse offlineLocationsUploadEnabled from server config response", v111, 2u);
    v107 = v248;
  }

  v44 = 1;
LABEL_124:
  sub_10008DFD4(0xD000000000000020, 0x80000001004DE280, v26, &v271);
  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v29 + 88) = *&v269[0];
      goto LABEL_133;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v112 = type metadata accessor for Logger();
  sub_10000A6F0(v112, qword_1005DFB98);
  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&_mh_execute_header, v113, v114, "FetchConfig unable to parse offlineProactiveAlertIntervalSec from server config response", v115, 2u);
    v107 = v248;
  }

  v44 = 1;
LABEL_133:
  sub_10008DFD4(0xD000000000000025, 0x80000001004DE2B0, v26, &v271);
  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v29 + 96) = *&v269[0];
      goto LABEL_142;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  sub_10000A6F0(v116, qword_1005DFB98);
  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 0;
    _os_log_impl(&_mh_execute_header, v117, v118, "FetchConfig unable to parse offlineProactiveAlertNoOfTimesDisplay from server config response", v119, 2u);
    v107 = v248;
  }

  v44 = 1;
LABEL_142:
  sub_10008DFD4(0xD00000000000001FLL, 0x80000001004DE2E0, v26, &v271);
  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v29 + 104) = *&v269[0];
      goto LABEL_151;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v120 = type metadata accessor for Logger();
  sub_10000A6F0(v120, qword_1005DFB98);
  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v121, v122))
  {
    v123 = swift_slowAlloc();
    *v123 = 0;
    _os_log_impl(&_mh_execute_header, v121, v122, "FetchConfig unable to parse offlineLocationsPublishThrottle from server config response", v123, 2u);
    v107 = v248;
  }

  v44 = 1;
LABEL_151:
  sub_10008DFD4(0xD00000000000002ELL, 0x80000001004DE300, v26, &v271);
  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      *(v29 + 112) = *&v269[0];
      goto LABEL_160;
    }
  }

  else
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  sub_10000A6F0(v124, qword_1005DFB98);
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v125, v126))
  {
    v127 = swift_slowAlloc();
    *v127 = 0;
    _os_log_impl(&_mh_execute_header, v125, v126, "FetchConfig unable to parse offlineProactiveAlertDistanceThresholdInMeters from server config response", v127, 2u);
    v107 = v248;
  }

  v44 = 1;
LABEL_160:
  sub_10008DFD4(0xD000000000000019, 0x80000001004DE330, v26, &v271);

  v234 = v44;
  if (!*(&v272 + 1))
  {
    sub_100002CE0(&v271, &qword_1005A9680, &qword_1004C32A0);
    a3 = v236;
    goto LABEL_165;
  }

  v128 = swift_dynamicCast();
  a3 = v236;
  if ((v128 & 1) == 0)
  {
LABEL_165:
    v132 = v246;
    goto LABEL_166;
  }

  v129 = v241;
  URL.init(string:)();
  v130 = v129;

  v131 = (*(v107 + 48))(v129, 1, v11);
  v132 = v246;
  if (v131 != 1)
  {
    v230 = v237;
    (*(v107 + 32))(v237, v130, v11);
    (*(v107 + 40))(v29 + *(v132 + 76), v230, v11);
    goto LABEL_173;
  }

  sub_100002CE0(v129, &qword_1005A9DB8, &unk_1004CC1D0);
LABEL_166:
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  sub_10000A6F0(v133, qword_1005DFB98);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    *v136 = 0;
    _os_log_impl(&_mh_execute_header, v134, v135, "FetchConfig unable to parse submitLocationsViaApnsUrl from server config response", v136, 2u);
    v107 = v248;
  }

  if (qword_1005A7FA8 != -1)
  {
    swift_once();
  }

  v137 = sub_10000A6F0(v11, qword_1005DFC78);
  (*(v107 + 24))(v29 + *(v132 + 76), v137, v11);
LABEL_173:
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v138 = JSONDecoder.init()();
  sub_1000C7660();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v148 = v29;
  v231 = v138;
  v149 = (v271 + 64);
  v150 = 1 << *(v271 + 32);
  v151 = -1;
  if (v150 < 64)
  {
    v151 = ~(-1 << v150);
  }

  v152 = v151 & *(v271 + 64);
  v36 = (v150 + 63) >> 6;
  v241 = v271;

  v153 = 0;
  v232 = _swiftEmptyDictionarySingleton;
  v154 = &qword_1005A9DD8;
  *&v155 = 136446210;
  v233 = v155;
  v237 = v149;
  for (i = v36; ; v36 = i)
  {
    v156 = v153;
    while (1)
    {
      if (!v152)
      {
        v157 = v148;
        v158 = v246;
        while (1)
        {
          v153 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            __break(1u);
            goto LABEL_220;
          }

          if (v153 >= v36)
          {
            break;
          }

          v152 = *&v149[8 * v153];
          ++v156;
          if (v152)
          {
            goto LABEL_189;
          }
        }

        v207 = *(v158 + 80);

        *(v157 + v207) = v232;
        if (v234)
        {
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v208 = type metadata accessor for Logger();
          sub_10000A6F0(v208, qword_1005DFB98);
          v209 = Logger.logObject.getter();
          v210 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v209, v210))
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            _os_log_impl(&_mh_execute_header, v209, v210, "FetchConfig update failed - not saving configs", v211, 2u);
          }

          v212 = SPSecureLocationsErrorDomain;
          v213 = objc_allocWithZone(NSError);
          v214 = [v213 initWithDomain:v212 code:5 userInfo:{0, v231}];
          v215 = v214;
          (a3)(v214);
        }

        else
        {
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v216 = type metadata accessor for Logger();
          sub_10000A6F0(v216, qword_1005DFB98);
          v217 = Logger.logObject.getter();
          v218 = static os_log_type_t.default.getter();
          v219 = os_log_type_enabled(v217, v218);
          v221 = v243;
          v220 = v244;
          if (v219)
          {
            v222 = swift_slowAlloc();
            *v222 = 0;
            _os_log_impl(&_mh_execute_header, v217, v218, "FetchConfig successfully updated config values from server. Now saving config", v222, 2u);
          }

          v223 = type metadata accessor for TaskPriority();
          v224 = v240;
          (*(*(v223 - 8) + 56))(v240, 1, 1, v223);
          v225 = v239;
          sub_1000CA264(v157, v239, type metadata accessor for SecureLocationsConfig);
          v226 = (*(v242 + 80) + 32) & ~*(v242 + 80);
          v227 = (v238 + v226 + 7) & 0xFFFFFFFFFFFFFFF8;
          v228 = swift_allocObject();
          *(v228 + 16) = 0;
          *(v228 + 24) = 0;
          sub_1000C9DE8(v225, v228 + v226, type metadata accessor for SecureLocationsConfig);
          v229 = (v228 + v227);
          *v229 = sub_100104908;
          v229[1] = 0;
          sub_1001D7F30(0, 0, v224, &unk_1004C32B0, v228);

          sub_1000C71AC(v157, v221, v220, a3, v245);
        }

        sub_1000CA2CC(v157, type metadata accessor for SecureLocationsConfig);
        return;
      }

      v153 = v156;
LABEL_189:
      v159 = *(v241 + 6);
      v160 = __clz(__rbit64(v152)) | (v153 << 6);
      v161 = *(v241 + 7) + 152 * v160;
      v162 = *(v161 + 112);
      v163 = *(v161 + 80);
      v265 = *(v161 + 96);
      v266 = v162;
      v164 = *(v161 + 112);
      v267 = *(v161 + 128);
      v165 = *(v161 + 48);
      v166 = *(v161 + 16);
      v261 = *(v161 + 32);
      v262 = v165;
      v167 = *(v161 + 48);
      v168 = *(v161 + 80);
      v263 = *(v161 + 64);
      v264 = v168;
      v169 = *(v161 + 16);
      v260[0] = *v161;
      v260[1] = v169;
      v256 = v265;
      v257 = v164;
      v258 = *(v161 + 128);
      v252 = v261;
      v253 = v167;
      v170 = (v159 + 16 * v160);
      v171 = *v170;
      v172 = v170[1];
      v173 = *(v161 + 144);
      v254 = v263;
      v255 = v163;
      v250 = v260[0];
      v251 = v166;
      v272 = v260[0];
      v273 = v166;
      v276 = v263;
      v277 = v163;
      v152 &= v152 - 1;
      v268 = v173;
      v259 = v173;
      v248 = v171;
      *&v271 = v171;
      *(&v271 + 1) = v172;
      v274 = v261;
      v275 = v167;
      v281 = v173;
      v279 = v164;
      v280 = v258;
      v278 = v265;
      sub_100005F04(&v271, v269, v154, &qword_1004C32A8);
      sub_100005F04(&v271, v269, v154, &qword_1004C32A8);
      sub_1001859CC(v260, v288);
      v284 = v289;
      v285 = v290;
      v286 = v291;
      v287 = v292;
      v282 = v288[0];
      v283 = v288[1];
      if (v289)
      {
        break;
      }

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v174 = type metadata accessor for Logger();
      sub_10000A6F0(v174, qword_1005DFB98);
      sub_100005F04(&v271, v269, v154, &qword_1004C32A8);
      v175 = Logger.logObject.getter();
      v176 = v154;
      v177 = static os_log_type_t.error.getter();
      sub_100002CE0(&v271, v176, &qword_1004C32A8);
      if (os_log_type_enabled(v175, v177))
      {
        v178 = swift_slowAlloc();
        v179 = a3;
        v180 = swift_slowAlloc();
        *&v269[0] = v180;
        *v178 = v233;
        *(v178 + 4) = sub_10000D01C(v248, v172, v269);
        _os_log_impl(&_mh_execute_header, v175, v177, "Unable to parse policy for: [%{public}s]", v178, 0xCu);
        sub_100004984(v180);
        a3 = v179;
      }

      sub_100002CE0(&v271, v176, &qword_1004C32A8);
      v156 = v153;
      v148 = v247;
      v149 = v237;
      v36 = i;
      v154 = v176;
    }

    v181 = v232;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v249 = v181;
    v184 = sub_1000110D8(v248, v172);
    v185 = v181[2];
    v186 = (v183 & 1) == 0;
    v187 = v185 + v186;
    if (__OFADD__(v185, v186))
    {
      __break(1u);
LABEL_222:
      __break(1u);
    }

    if (v181[3] < v187)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v189 = v183;
      sub_1002038E0();
LABEL_198:
      v183 = v189;
    }

    if (v183)
    {
      v232 = v249;
      v192 = v249[7] + 88 * v184;
      v193 = *(v192 + 16);
      v269[0] = *v192;
      v269[1] = v193;
      v195 = *(v192 + 48);
      v194 = *(v192 + 64);
      v196 = *(v192 + 32);
      v270 = *(v192 + 80);
      v269[3] = v195;
      v269[4] = v194;
      v269[2] = v196;
      v197 = v285;
      *(v192 + 32) = v284;
      *(v192 + 48) = v197;
      *(v192 + 64) = v286;
      *(v192 + 80) = v287;
      v198 = v283;
      *v192 = v282;
      *(v192 + 16) = v198;
      sub_1000C76B4(v269);
    }

    else
    {
      v199 = v249;
      v249[(v184 >> 6) + 8] |= 1 << v184;
      v200 = (v199[6] + 16 * v184);
      *v200 = v248;
      v200[1] = v172;
      v201 = v199[7] + 88 * v184;
      v202 = v283;
      *v201 = v282;
      *(v201 + 16) = v202;
      *(v201 + 80) = v287;
      v203 = v286;
      *(v201 + 48) = v285;
      *(v201 + 64) = v203;
      *(v201 + 32) = v284;
      v204 = v199[2];
      v205 = __OFADD__(v204, 1);
      v206 = v204 + 1;
      if (v205)
      {
        goto LABEL_222;
      }

      v232 = v199;
      v199[2] = v206;
    }

    v154 = &qword_1005A9DD8;
    sub_100002CE0(&v271, &qword_1005A9DD8, &qword_1004C32A8);
    v148 = v247;
    v149 = v237;
  }

  v188 = isUniquelyReferenced_nonNull_native;
  v189 = v183;
  sub_10022E0C4(v187, v188);
  v190 = sub_1000110D8(v248, v172);
  if ((v189 & 1) == (v191 & 1))
  {
    v184 = v190;
    goto LABEL_198;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1000B7F50()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "clearCachedConfig - will clear any cached configuration", v3, 2u);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  sub_1000D31F0();

  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UUID();
  sub_10000A6F0(v4, qword_1005DFC58);
  sub_1004B796C();

  return sub_10008FE0C();
}

void sub_1000B80D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 134218242;
      *(v6 + 4) = a2;
      *(v6 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v8 = String.init<A>(describing:)();
      v10 = sub_10000D01C(v8, v9, &v11);

      *(v6 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "FetchConfig - error fetching configs after checking response version %ld  %s", v6, 0x16u);
      sub_100004984(v7);
    }

    else
    {
    }
  }
}

uint64_t sub_1000B82A0(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FetchConfig updated fmd with new config", v6, 2u);
  }

  return a2(0);
}

uint64_t sub_1000B8398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a6;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v24 = *(v16 - 8);
  v25 = v16;
  __chkstk_darwin(v16);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a2 + 160);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = v23[0];
  v19[7] = a7;
  v19[8] = a1;
  aBlock[4] = sub_1000C8B68;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058D710;
  v20 = _Block_copy(aBlock);

  v21 = a5;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v15, v13);
  (*(v24 + 8))(v18, v25);
}

uint64_t sub_1000B86B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CC418();

  v14 = *(a1 + 24);

  v15 = a4;

  sub_1000F4E04(a2, a3, v15, v14, a1, a2, a3, v15, a5, a6, a7);
}

void sub_1000B87E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, double), uint64_t a8, uint64_t *a9)
{
  v48 = a8;
  v49 = a7;
  v44 = a5;
  v45 = a6;
  v46 = *a9;
  v47 = a2;
  v12 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SecureLocation(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v14, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002CE0(v14, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_12:
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  sub_1000C9DE8(v14, v18, type metadata accessor for SecureLocation);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000DC618(v18);

  if ((v19 & 1) == 0)
  {
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
    goto LABEL_12;
  }

  sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 1) = xmmword_1004C1900;
  sub_1000CA264(v18, v21 + v20, type metadata accessor for SecureLocation);
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005E0DE0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v51 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_10000D01C(v47, a3, &v51);
    _os_log_impl(&_mh_execute_header, v23, v24, "SubscribeAndFetch - livelocations returning cached location for %s in completion", v25, 0xCu);
    sub_100004984(v26);
  }

  sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
LABEL_13:
  if (a4)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A6F0(v27, qword_1005DFB98);
    swift_errorRetain();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v51 = v31;
      *v30 = 136315138;
      v50 = a4;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v32 = String.init<A>(describing:)();
      v34 = sub_10000D01C(v32, v33, &v51);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "analytics: Error occurred during startLive %s", v30, 0xCu);
      sub_100004984(v31);
    }

    __chkstk_darwin(v35);
    v36 = v47;
    *(&v43 - 4) = v44;
    *(&v43 - 3) = v36;
    v37 = v45;
    *(&v43 - 2) = a3;
    *(&v43 - 1) = v37;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v51 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_10000D01C(v47, a3, &v51);
      _os_log_impl(&_mh_execute_header, v39, v40, "analytics: startlive success for %{private,mask.hash}s", v41, 0x16u);
      sub_100004984(v42);
    }
  }

  v49(v21, a4, 120.0);

  Transaction.capture()();
}

uint64_t sub_1000B8F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 160);
  v12 = swift_allocObject();
  v13 = *(a3 + 16);
  *(v12 + 24) = *a3;
  *(v12 + 16) = a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = *(a3 + 32);
  *(v12 + 72) = *(a3 + 48);
  *(v12 + 80) = a1;
  aBlock[4] = sub_1000CA19C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058E368;
  v14 = _Block_copy(aBlock);

  sub_1000C980C(a3, &v19);

  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v18 + 8))(v8, v6);
  (*(v9 + 8))(v11, v17);
}

void sub_1000B9258(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received live location in sink", v9, 2u);
  }

  sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C1900;
  v12 = a2[1];
  v11 = a2[2];
  v13 = *a2;
  *(inited + 80) = *(a2 + 6);
  *(inited + 48) = v12;
  *(inited + 64) = v11;
  *(inited + 32) = v13;
  sub_1000C980C(a2, &v18);
  v14 = sub_1001028AC(inited);
  swift_setDeallocating();
  sub_1000C9868(inited + 32);
  if (v14[2])
  {

    sub_1000C6324(v14, 0, a1, a1, a3);
  }

  else
  {

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "LiveLocations: Not able to decode locations", v17, 2u);
    }

    Transaction.capture()();
  }
}

void sub_1000B9494(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  if (*(a1 + 16))
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = a1;

    sub_10020D620(0, 0, v4, &unk_1004C3518, v6);

    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0DE0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Called client session with location updates", v10, 2u);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC3A8();

    Transaction.capture()();
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005E0DE0);
    v16 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v16, v12, "saved locations is empty", v13, 2u);
    }

    v14 = v16;
  }
}

uint64_t sub_1000B9820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  sub_1000C1830(v10, a5, a2, a1);
}

void sub_1000B98D8(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_10000D01C(a1, a2, &v31);
    v10 = 0xEE00455649544341;
    *(v9 + 12) = 2080;
    v11 = 0x80000001004DDDA0;
    v12 = 0xD000000000000018;
    if (a3 == 4)
    {
      v13 = 0x5F454D5F4F545541;
    }

    else
    {
      v13 = 0xD000000000000010;
    }

    if (a3 != 4)
    {
      v10 = 0x80000001004DDDD0;
    }

    if (a3 != 3)
    {
      v12 = v13;
      v11 = v10;
    }

    v14 = 0x80000001004DDD40;
    v15 = 0x80000001004DDD60;
    v16 = 0xD000000000000013;
    if (a3 == 1)
    {
      v16 = 0xD000000000000017;
    }

    else
    {
      v15 = 0x80000001004DDD80;
    }

    if (a3)
    {
      v14 = v15;
    }

    else
    {
      v16 = 0xD000000000000014;
    }

    if (a3 <= 2u)
    {
      v17 = v16;
    }

    else
    {
      v17 = v12;
    }

    if (a3 <= 2u)
    {
      v18 = v14;
    }

    else
    {
      v18 = v11;
    }

    v19 = sub_10000D01C(v17, v18, &v31);

    *(v9 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "LiveLocations: Received incoming request for live from %s with command %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a3 == 2)
  {

    sub_1000C1590(a1, a2, 1702259052, 0xE400000000000000, 0);
  }

  else if (a3)
  {
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      v23 = 0xEE00455649544341;
      *v21 = 136315138;
      v24 = 0x80000001004DDDA0;
      v25 = 0xD000000000000018;
      if (a3 == 4)
      {
        v26 = 0x5F454D5F4F545541;
      }

      else
      {
        v26 = 0xD000000000000010;
      }

      if (a3 != 4)
      {
        v23 = 0x80000001004DDDD0;
      }

      if (a3 != 3)
      {
        v25 = v26;
        v24 = v23;
      }

      if (a3 <= 2u)
      {
        v27 = 0xD000000000000017;
      }

      else
      {
        v27 = v25;
      }

      if (a3 <= 2u)
      {
        v28 = 0x80000001004DDD60;
      }

      else
      {
        v28 = v24;
      }

      v29 = sub_10000D01C(v27, v28, &v31);

      *(v21 + 4) = v29;
      _os_log_impl(&_mh_execute_header, oslog, v20, "LiveLocations: Invalid command specified %s", v21, 0xCu);
      sub_100004984(v22);
    }
  }

  else
  {
    sub_1000A82D8(a1, a2, 1702259052, 0xE400000000000000, 0);
  }
}

void sub_1000B9D60(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v6 = String.init<A>(describing:)();
      v8 = sub_10000D01C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "CheckAndFetchConfig: Error fetching config when feature disabled to check if that has changed %s", v4, 0xCu);
      sub_100004984(v5);
    }

    else
    {
    }
  }

  Transaction.capture()();
}

BOOL sub_1000B9F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

void sub_1000BA000(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10023C9F0(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 96;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12 >= *(v12 + 11))
          {
            break;
          }

          v13 = v12 - 64;
          v14 = *(v12 + 40);
          v27 = *(v12 + 24);
          v28 = v14;
          v15 = *(v12 + 56);
          v16 = *(v12 + 72);
          v17 = *(v12 + 88);
          v32 = *(v12 + 13);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          *(v12 + 13) = *(v12 + 2);
          v18 = *(v12 - 1);
          *(v12 + 88) = *v12;
          v19 = *(v12 - 3);
          v20 = *(v12 - 2);
          *(v12 + 72) = v18;
          *(v12 + 56) = v20;
          *(v12 + 24) = *(v12 - 4);
          *(v12 + 40) = v19;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *(v12 + 2) = v32;
          *(v13 + 3) = v23;
          *v12 = v24;
          *(v13 + 2) = v22;
          v12 -= 88;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 88;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v27 = v7 + 4;
    *(&v27 + 1) = v6;
    sub_1000BA1A8(&v27, v26, v33, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_1000BA1A8(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_10023C584(v7);
    }

    v80 = v7 + 16;
    v81 = *(v7 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[16 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1000BA7D8((*a3 + 88 * *v82), (*a3 + 88 * *v84), (*a3 + 88 * v85), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 88 * v6 + 64);
      v10 = 88 * v8;
      v11 = *a3 + 88 * v8;
      v12 = *(v11 + 64);
      v13 = v8 + 2;
      v14 = (v11 + 240);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 11;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 88 * v6 - 88;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v100 = *(v22 + v10 + 80);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            memmove((v22 + v10), (v22 + v18), 0x58uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *(v21 + 80) = v100;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 88;
          v10 += 88;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1001FCD18(0, *(v7 + 2) + 1, 1, v7);
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v7 = sub_1001FCD18((v32 > 1), v33 + 1, 1, v7);
    }

    *(v7 + 2) = v34;
    v35 = v7 + 32;
    v36 = &v7[16 * v33 + 32];
    *v36 = v8;
    *(v36 + 1) = v6;
    v89 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 4);
          v39 = *(v7 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[16 * v37];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[16 * v37 - 16];
        v76 = *v75;
        v77 = &v35[16 * v37];
        v78 = *(v77 + 1);
        sub_1000BA7D8((*a3 + 88 * *v75), (*a3 + 88 * *v77), (*a3 + 88 * v78), v89);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v7 + 2);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        memmove(&v35[16 * v37], v77 + 16, 16 * (v79 - 1 - v37));
        *(v7 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[16 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[16 * v37];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 88 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 24) >= *(v27 + 64))
    {
LABEL_29:
      ++v6;
      v24 += 88;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 88;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v101 = *(v27 + 80);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 40);
    *(v27 + 32) = *(v27 - 56);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 24);
    *(v27 + 80) = *(v27 - 8);
    v30 = *(v27 - 72);
    *v27 = *(v27 - 88);
    *(v27 + 16) = v30;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    *(v28 + 64) = v99;
    *(v28 + 80) = v101;
    v27 -= 88;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1000BA7D8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[11 * v9] <= a4)
    {
      memmove(a4, __dst, 88 * v9);
    }

    v12 = &v4[11 * v9];
    if (v8 < 88)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[8] < v6[8])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 11;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 11;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 11;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[11 * v11] <= a4)
  {
    memmove(a4, __src, 88 * v11);
  }

  v12 = &v4[11 * v11];
  if (v10 >= 88 && v6 > v7)
  {
LABEL_20:
    v5 -= 11;
    do
    {
      v15 = v5 + 11;
      if (*(v6 - 3) < *(v12 - 3))
      {
        v17 = v6 - 11;
        if (v15 != v6)
        {
          memmove(v5, v6 - 11, 0x58uLL);
        }

        if (v12 <= v4 || (v6 -= 11, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 11);
      if (v15 != v12)
      {
        memmove(v5, v12 - 11, 0x58uLL);
      }

      v5 -= 11;
      v12 -= 11;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[11 * v18])
  {
    memmove(v6, v4, 88 * v18);
  }

  return 1;
}

unint64_t sub_1000BAA50(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000BAADC(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = type metadata accessor for SecureLocation(0) - 8;
  v4 = __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(v7 + 72);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v19;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    sub_1000CA264(v12, v9, type metadata accessor for SecureLocation);
    if (*(v9 + 2) == 0.0 && *(v9 + 3) == 0.0)
    {
      sub_1000CA2CC(v9, type metadata accessor for SecureLocation);
    }

    else
    {
      sub_1001AC480(*v9, *(v9 + 1));

      sub_1000C9DE8(v9, v6, type metadata accessor for SecureLocation);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100239440(0, v13[2] + 1, 1);
        v13 = v21;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        sub_100239440((v15 > 1), v16 + 1, 1);
        v13 = v21;
      }

      v13[2] = v16 + 1;
      sub_1000C9DE8(v6, v13 + v19 + v16 * v11, type metadata accessor for SecureLocation);
    }

    v12 += v11;
    --v10;
  }

  while (v10);
  return v13;
}

uint64_t sub_1000BAD18(void *a1)
{
  v3 = sub_100011AEC(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100011AEC(v10, v10[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v6 = v4;
    v7 = v5 == 0x76697463616F7270 && v4 == 0xE900000000000065;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      if (v5 == 0x776F6C6C616873 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v3 = 1;
        goto LABEL_9;
      }

      if (v5 == 1702259052 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v3 = 2;
        goto LABEL_9;
      }

      if (v5 == 0xD000000000000013 && 0x80000001004DDB80 == v6)
      {

        v3 = 5;
        goto LABEL_9;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        v3 = 5;
        goto LABEL_9;
      }
    }

    v3 = 0;
LABEL_9:
    sub_100004984(v10);
  }

  sub_100004984(a1);
  return v3;
}

uint64_t sub_1000BAF2C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t type metadata accessor for SecureLocationsCoordinator(uint64_t a1)
{
  result = qword_1005A9918;
  if (!qword_1005A9918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BAFD0(uint64_t a1)
{
  sub_1000BB124(319);
  if (v1 <= 0x3F)
  {
    sub_1000BB17C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000BB124(uint64_t a1)
{
  if (!qword_1005A9928)
  {
    type metadata accessor for ContinuousClock.Instant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005A9928);
    }
  }
}

void sub_1000BB17C(uint64_t a1)
{
  if (!qword_1005A9930)
  {
    sub_10004B610(&unk_1005A9938, &unk_1004C3080);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1005A9930);
    }
  }
}

__n128 sub_1000BB1F0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000BB21C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1000BB264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BB2D4()
{
  result = qword_1005A9DA0;
  if (!qword_1005A9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9DA0);
  }

  return result;
}

id sub_1000BB328()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  if (v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FetchConfig: simulateFeatureDisabled is ON. secureLocations will be disabled";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "FetchConfig: simulateFeatureDisabled is false";
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t sub_1000BB4F0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __chkstk_darwin(v2);
  v7 = &v33[-v6];
  v8 = __chkstk_darwin(v5);
  v10 = &v33[-v9];
  __chkstk_darwin(v8);
  v12 = &v33[-v11];
  sub_1000BAA50(0x20000000000001uLL);
  sub_1000BB328();
  static Date.trustedNow.getter(v12);
  Date.addingTimeInterval(_:)();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);
  v14 = *(v1 + 16);
  v14(v7, v10, v0);
  v14(v4, v12, v0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v38 = v10;
    v18 = v17;
    v36 = swift_slowAlloc();
    v39 = v36;
    *v18 = 136315394;
    sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v37 = v12;
    v35 = v15;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v16;
    v21 = v20;
    v22 = *(v1 + 8);
    v22(v7, v0);
    v23 = sub_10000D01C(v19, v21, &v39);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v12 = v37;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v22(v4, v0);
    v27 = sub_10000D01C(v24, v26, &v39);

    *(v18 + 14) = v27;
    v28 = v35;
    _os_log_impl(&_mh_execute_header, v35, v34, "CheckAndFetchConfig: Setting up next check data %s  CurrentTime %s", v18, 0x16u);
    swift_arrayDestroy();

    v10 = v38;
  }

  else
  {

    v22 = *(v1 + 8);
    v22(v4, v0);
    v22(v7, v0);
  }

  v29 = [objc_opt_self() standardUserDefaults];
  Date.timeIntervalSince1970.getter();
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  v31 = String._bridgeToObjectiveC()();
  [v29 setValue:isa forKey:v31];

  v22(v10, v0);
  return (v22)(v12, v0);
}

uint64_t sub_1000BB990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v40 = a5;
  v41 = a6;
  v37[1] = a3;
  v38 = a4;
  v39 = a1;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  v13 = type metadata accessor for Credentials(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v37 - v18;
  v20 = qword_1005A8098;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v22 = sub_10000A6F0(v21, qword_1005AF7C0);
  os_unfair_lock_lock(v22);
  sub_100005F04(v22 + *(v21 + 28), v12, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v22);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CE0(v12, &qword_1005A9DA8, &unk_1004D1130);
    v43 = 0;
    v44 = 0;
    v45 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      v43 = 0;
      *v26 = 136315138;
      v44 = 0;
      v45 = 2;
      v28 = String.init<A>(describing:)();
      v30 = sub_10000D01C(v28, v29, &v42);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v24, v25, "FetchConfig - failed to get credentials error %s", v26, 0xCu);
      sub_100004984(v27);
    }

    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 2;
    v41();
  }

  else
  {
    sub_1000C9DE8(v12, v19, type metadata accessor for Credentials);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    sub_1000CA264(v19, v17, type metadata accessor for Credentials);
    v33 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v34 = swift_allocObject();
    v34[2] = 0;
    v34[3] = 0;
    v34[4] = v39;
    sub_1000C9DE8(v17, v34 + v33, type metadata accessor for Credentials);
    v35 = (v34 + ((v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v38;
    v35[1] = a2;

    sub_1001D7F30(0, 0, v9, v40, v34);

    sub_1000CA2CC(v19, type metadata accessor for Credentials);
  }
}

uint64_t sub_1000BBE94(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for EncryptedLocation(0) + 28));
  v3 = *v2;
  v4 = v2[1];
  sub_100005F6C(*v2, v4);
  Date.timeIntervalSinceReferenceDate.getter();
  v6 = v5;
  if (*(a1 + 16) == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (*(a1 + 16))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  sub_10004B564(&qword_1005A9F38, &unk_1004C34C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004C1900;
  *(v11 + 32) = v3;
  *(v11 + 40) = v4;
  *(v11 + 48) = v6;
  *(v11 + 56) = v8;
  sub_10004B564(&qword_1005A9F40, &unk_1004C4C00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004C1900;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  *(v12 + 56) = 1;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v11;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  sub_100005F6C(v3, v4);
  sub_100005F6C(v9, v10);
  sub_100005F6C(v9, v10);

  JSONEncoder.init()();
  sub_1000C9E50();
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000049D0(v3, v4);
  sub_1000049D0(v9, v10);

  return v13;
}

unint64_t sub_1000BC07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A9E50, &qword_1004C33B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005A9E58, &qword_1004C33C0);
      v5 = v13;
      v6 = v14;
      result = sub_100273E68(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
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

void sub_1000BC1AC(void *a1, uint64_t a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation, void *a5, void *a6)
{
  if (!a1)
  {
    goto LABEL_24;
  }

  v41 = a5;
  swift_errorRetain();
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005DFB98);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v13 = String.init<A>(describing:)();
      v15 = sub_10000D01C(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Error while resubscribing after receiving key update %s", v11, 0xCu);
      sub_100004984(v12);
    }

    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v16, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v18 = 136446466;
    if (a3 > 2)
    {
      switch(a3)
      {
        case 3:
          v19 = 0xE500000000000000;
          v20 = 0x72656E776FLL;
          break;
        case 4:
          v19 = 0xEE00657669746361;
          v20 = 0x6F725072656E776FLL;
          break;
        case 5:
          v19 = 0x80000001004DDB80;
          v20 = 0xD000000000000013;
          break;
        default:
          goto LABEL_17;
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v19 = 0xE700000000000000;
        v20 = 0x776F6C6C616873;
        goto LABEL_20;
      }

      if (a3 != 2)
      {
LABEL_17:
        v19 = 0xE700000000000000;
        v20 = 0x6E776F6E6B6E75;
        goto LABEL_20;
      }

      v19 = 0xE400000000000000;
      v20 = 1702259052;
    }

    else
    {
      v19 = 0xE900000000000065;
      v20 = 0x76697463616F7270;
    }

LABEL_20:
    v21 = sub_10000D01C(v20, v19, aBlock);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v22 = String.init<A>(describing:)();
    v24 = sub_10000D01C(v22, v23, aBlock);

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Error while resubscribing in %{public}s after receiving key update %s", v18, 0x16u);
    swift_arrayDestroy();

LABEL_21:

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = Array.description.getter();
      v31 = sub_10000D01C(v29, v30, aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "submit subscription error for %s", v27, 0xCu);
      sub_100004984(v28);
    }

    a5 = v41;
LABEL_24:
    v32 = *(isEscapingClosureAtFileLocation + 16);
    if (!v32)
    {
      break;
    }

    v33 = a5[6];
    v41 = v44;
    v34 = (isEscapingClosureAtFileLocation + 40);
    while (1)
    {
      v35 = *(v34 - 1);
      v36 = *v34;
      v37 = *(v33 + 16);
      v38 = swift_allocObject();
      v38[2] = v33;
      v38[3] = v35;
      v38[4] = v36;
      v38[5] = a6;
      a3 = swift_allocObject();
      *(a3 + 16) = sub_1000CAB54;
      *(a3 + 24) = v38;
      v44[2] = sub_1000CAA0C;
      v44[3] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v44[0] = sub_10013EC94;
      v44[1] = &unk_10058E5E8;
      v39 = _Block_copy(aBlock);

      v40 = a6;

      dispatch_sync(v37, v39);
      _Block_release(v39);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v34 += 2;
      if (!--v32)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_28:
  Transaction.capture()();
}

void sub_1000BC7AC(uint64_t a1, void *a2, int a3, uint64_t a4, void (*a5)(void, void), uint64_t a6, uint64_t a7)
{
  v67 = a4;
  v75 = a3;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v15 - 8);
  v17 = &v63 - v16;
  v18 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v18 - 8);
  v74 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v21 = qword_1005A7EE8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_10000A6F0(v22, qword_1005DFB98);

  v24 = a2;
  v76 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v66 = v20;
    v28 = v27;
    v29 = swift_slowAlloc();
    v65 = a7;
    v63 = v29;
    aBlock[0] = v29;
    *v28 = 134218754;
    *(v28 + 4) = *(a1 + 16);

    *(v28 + 12) = 2082;
    v30 = [v24 clientApp];
    v31 = a5;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v24;
    v34 = v33;

    v35 = v32;
    a5 = v31;
    v36 = sub_10000D01C(v35, v34, aBlock);

    *(v28 + 14) = v36;
    *(v28 + 22) = 2080;
    v37 = Array.description.getter();
    v39 = sub_10000D01C(v37, v38, aBlock);

    *(v28 + 24) = v39;
    v24 = v64;
    *(v28 + 32) = 1024;
    *(v28 + 34) = v75 & 1;
    _os_log_impl(&_mh_execute_header, v25, v26, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v28, 0x26u);
    swift_arrayDestroy();

    v20 = v66;
  }

  else
  {
  }

  v40 = a1;
  if (sub_1000BB328())
  {
    goto LABEL_12;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v41 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v41);
  v42 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v43 = v74;
  sub_1000CA264(v41 + *(v42 + 28), v74, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v41);

  v44 = *(v43 + 8);
  sub_1000CA2CC(v43, type metadata accessor for SecureLocationsConfig);
  if ((v44 & 1) == 0)
  {
LABEL_12:
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v54, 2u);
    }

    [v24 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v78 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    v55 = aBlock[0];
    v56 = type metadata accessor for SecureLocation(0);
    (*(*(v56 - 8) + 56))(v17, 1, 1, v56);
    a5(v17, v55);
    sub_100002CE0(v17, &unk_1005AB3F0, &qword_1004C4BF0);
    Transaction.capture()();
  }

  else if (*(v40 + 16))
  {
    v45 = v67;
    v46 = swift_allocObject();
    *(v46 + 16) = v40;
    *(v46 + 24) = v45;
    *(v46 + 32) = v24;
    *(v46 + 40) = v75 & 1;
    *(v46 + 48) = sub_1000C9208;
    *(v46 + 56) = v20;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058DC60;
    v47 = _Block_copy(aBlock);

    v48 = v24;

    v49 = v68;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v50 = v70;
    v51 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v47);
    (*(v72 + 8))(v50, v51);
    (*(v69 + 8))(v49, v71);
  }

  else
  {
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No findMyIds specified for SubscribeAndFetch - not proceeding", v59, 2u);
    }

    v60 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v24 subscriptionMode];
    v61 = type metadata accessor for SecureLocation(0);
    (*(*(v61 - 8) + 56))(v17, 1, 1, v61);
    v62 = v60;
    a5(v17, v60);
    sub_100002CE0(v17, &unk_1005AB3F0, &qword_1004C4BF0);
    Transaction.capture()();
  }
}

void sub_1000BD148(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1005A7EE8;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000A6F0(v16, qword_1005DFB98);

  v18 = a2;
  v61 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v54 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v52 = v14;
    aBlock[0] = v23;
    *v22 = 134218754;
    *(v22 + 4) = *(a1 + 16);

    *(v22 + 12) = 2082;
    v24 = [v18 clientApp];
    v53 = a5;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v18;
    v28 = v9;
    v30 = v29;

    v31 = sub_10000D01C(v26, v30, aBlock);
    v9 = v28;
    v18 = v27;

    *(v22 + 14) = v31;
    *(v22 + 22) = 2080;
    v32 = Array.description.getter();
    v34 = sub_10000D01C(v32, v33, aBlock);

    *(v22 + 24) = v34;
    a5 = v53;
    *(v22 + 32) = 1024;
    *(v22 + 34) = v60 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();
    v14 = v52;

    a4 = v54;

    if (sub_1000BB328())
    {
      goto LABEL_12;
    }
  }

  else
  {

    if (sub_1000BB328())
    {
LABEL_12:
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v45, 2u);
      }

      [v18 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v63 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
      _BridgedStoredNSError.init(_:userInfo:)();
      v46 = aBlock[0];
      Transaction.capture()();

      goto LABEL_15;
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v35 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v35);
  v36 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v35 + *(v36 + 28), v14, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v35);

  v37 = v14[8];
  sub_1000CA2CC(v14, type metadata accessor for SecureLocationsConfig);
  if ((v37 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (*(a1 + 16))
  {
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = a4;
    *(v38 + 32) = v18;
    *(v38 + 40) = v60 & 1;
    *(v38 + 48) = j___s10FindMyBase11TransactionC7captureyyF;
    *(v38 + 56) = a5;
    aBlock[4] = sub_1000C8540;
    aBlock[5] = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058D300;
    v39 = _Block_copy(aBlock);

    v40 = v18;

    v41 = v56;
    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v42 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);
    (*(v55 + 8))(v42, v9);
    (*(v57 + 8))(v41, v59);

    return;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&_mh_execute_header, v47, v48, "No findMyIds specified for SubscribeAndFetch - not proceeding", v49, 2u);
  }

  v50 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  [v18 subscriptionMode];
  v46 = v50;
  Transaction.capture()();

LABEL_15:
}

uint64_t sub_1000BD97C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = [a2 clientApp];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0xD000000000000017 && 0x80000001004DFCF0 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v19 = swift_allocObject();
  v20 = v18 & 1;
  *(v19 + 16) = v20;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a2;
  *(v19 + 48) = a5;
  *(v19 + 56) = a6;
  *(v19 + 64) = a7;

  v21 = a2;

  sub_1000FE000(a1, v20, sub_1000CAB10, v19);
}

uint64_t sub_1000BDAE4(char *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v123 = a7;
  v125 = a6;
  v124 = a5;
  v127 = a4;
  v144 = a2;
  v126 = a9;
  v129 = type metadata accessor for SecureLocation(0);
  v12 = *(v129 - 8);
  v13 = __chkstk_darwin(v129);
  v15 = (&v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v150 = (&v120 - v17);
  v18 = __chkstk_darwin(v16);
  v20 = &v120 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v120 - v22;
  __chkstk_darwin(v21);
  v142 = &v120 - v24;
  v25 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v25 - 8);
  v27 = (&v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = a3;
  if (*(*(a3 + 120) + 16))
  {
    v121 = a8;
    if (qword_1005A7EF8 != -1)
    {
LABEL_67:
      swift_once();
    }

    v28 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v28);
    v29 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v28 + *(v29 + 28), v27, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v28);

    v30 = v27[2];
    sub_1000CA2CC(v27, type metadata accessor for SecureLocationsConfig);
    v135 = *(a1 + 2);
    if (!v135)
    {
      v138 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v32 = 0;
    v33 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v138 = _swiftEmptyArrayStorage;
    v133 = v33;
    v134 = &a1[v33];
    v34 = *(v12 + 72);
    *&v31 = 136315906;
    v140 = v31;
    *&v31 = 136315650;
    v139 = v31;
    *&v31 = 136315394;
    v122 = v31;
    v35 = v142;
    v128 = v15;
    v131 = v20;
    v130 = v23;
    v132 = v34;
    while (1)
    {
      v137 = v32;
      sub_1000CA264(&v134[v34 * v32], v35, type metadata accessor for SecureLocation);
      sub_1000CA264(v35, v23, type metadata accessor for SecureLocation);
      v36 = *(*(v136 + 120) + 16);
      if (!v36)
      {
        goto LABEL_44;
      }

      a1 = v35;

      v23 = 0;
      v143 = (v36 - 1);
      v38 = 32;
      v27 = v150;
      v15 = v37;
      v141 = v37;
      while (1)
      {
        v148 = v38;
        v39 = *(v15 + v38 + 32);
        v40 = *(v15 + v38 + 48);
        v41 = *(v15 + v38 + 80);
        v155 = *(v15 + v38 + 64);
        v42 = *(v15 + v38 + 16);
        v153[0] = *(v15 + v38);
        v153[1] = v42;
        v156 = v41;
        v153[2] = v39;
        v154 = v40;
        v149 = *(&v155 + 1);
        v43 = *(&v42 + 1);
        v20 = v42;
        sub_1000C81D0(v153, v152);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        v12 = sub_10000A6F0(v44, qword_1005DFB98);
        sub_1000CA264(a1, v27, type metadata accessor for SecureLocation);
        sub_1000C81D0(v153, v152);
        v147 = v12;
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.info.getter();
        sub_1000C822C(v153);
        v47 = os_log_type_enabled(v45, v46);
        v146 = v43;
        v145 = v20;
        if (v47)
        {
          v48 = v20;
          v20 = swift_slowAlloc();
          v152[0] = swift_slowAlloc();
          *v20 = v140;

          v49 = sub_10000D01C(v48, v43, v152);

          *(v20 + 4) = v49;
          *(v20 + 6) = 2080;
          if (v41)
          {
            v50 = v149;
          }

          else
          {
            v50 = 1818848800;
          }

          if (v41)
          {
            v51 = v41;
          }

          else
          {
            v51 = 0xE400000000000000;
          }

          v52 = v155;

          v53 = sub_10000D01C(v50, v51, v152);

          *(v20 + 14) = v53;
          *(v20 + 11) = 2080;
          v15 = v141;
          v54 = *v150;
          v55 = v150[1];

          sub_1000CA2CC(v150, type metadata accessor for SecureLocation);
          v56 = sub_10000D01C(v54, v55, v152);

          *(v20 + 3) = v56;
          a1 = v142;
          *(v20 + 16) = 2048;
          *(v20 + 34) = v52;
          _os_log_impl(&_mh_execute_header, v45, v46, "LabelledLocations Checking label %s %s %s %f", v20, 0x2Au);
          swift_arrayDestroy();
          v27 = v150;

          if (v41)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v27, type metadata accessor for SecureLocation);
          if (v41)
          {
            goto LABEL_30;
          }
        }

        if (v144)
        {
          break;
        }

LABEL_30:
        if (v144 & 1) == 0 && v41 && (v149 == *a1 && v41 == *(a1 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v153);
LABEL_36:
        if (v143 == v23)
        {

          v20 = v131;
          v23 = v130;
          goto LABEL_44;
        }

        ++v23;
        v38 = v148 + 88;
        if (v23 >= v15[2])
        {
          __break(1u);
          goto LABEL_67;
        }
      }

      v57 = [objc_allocWithZone(CLLocation) initWithLatitude:v154 longitude:?];
      v58 = [objc_allocWithZone(CLLocation) initWithLatitude:*(a1 + 3) longitude:*(a1 + 2)];
      [v57 distanceFromLocation:v58];
      v60 = v59;
      sub_1000C81D0(v153, v152);
      v12 = v147;
      v20 = Logger.logObject.getter();
      v61 = static os_log_type_t.info.getter();
      sub_1000C822C(v153);
      if (os_log_type_enabled(v20, v61))
      {
        v62 = swift_slowAlloc();
        v152[0] = swift_slowAlloc();
        *v62 = v139;
        v63 = v146;

        v12 = v58;
        v64 = v57;
        v65 = sub_10000D01C(v145, v63, v152);

        *(v62 + 4) = v65;
        *(v62 + 12) = 2080;
        if (v41)
        {
          v66 = v149;
        }

        else
        {
          v66 = 0x206C696E20;
        }

        if (v41)
        {
          v67 = v41;
        }

        else
        {
          v67 = 0xE500000000000000;
        }

        v68 = v66;
        v15 = v141;
        v69 = sub_10000D01C(v68, v67, v152);
        v57 = v64;
        v58 = v12;

        *(v62 + 14) = v69;
        *(v62 + 22) = 2048;
        *(v62 + 24) = v60;
        _os_log_impl(&_mh_execute_header, v20, v61, "LabelledLocations %s %s Label Distance %f", v62, 0x20u);
        swift_arrayDestroy();
        a1 = v142;

        v27 = v150;
      }

      if (v60 > v30)
      {
        sub_1000C822C(v153);

        goto LABEL_36;
      }

      v70 = v146;

      sub_1000C822C(v153);
      v23 = v130;
      swift_beginAccess();
      v71 = &v23[*(v129 + 64)];
      v72 = v145;
      *v71 = v145;
      *(v71 + 1) = v70;

      v73 = v128;
      sub_1000CA264(a1, v128, type metadata accessor for SecureLocation);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        *v76 = v122;
        v152[0] = v72;
        v152[1] = v70;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v77 = String.init<A>(describing:)();
        v79 = sub_10000D01C(v77, v78, &v151);

        *(v76 + 4) = v79;
        *(v76 + 12) = 2080;
        v80 = *v73;
        v81 = v73[1];

        sub_1000CA2CC(v73, type metadata accessor for SecureLocation);
        v82 = sub_10000D01C(v80, v81, &v151);

        *(v76 + 14) = v82;
        _os_log_impl(&_mh_execute_header, v74, v75, "LabelledLocations Adding label %s to location %s", v76, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v73, type metadata accessor for SecureLocation);
      }

      v20 = v131;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v23, v20, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1001FCE44(0, v138[2] + 1, 1, v138);
      }

      v84 = v138[2];
      v83 = v138[3];
      if (v84 >= v83 >> 1)
      {
        v138 = sub_1001FCE44((v83 > 1), v84 + 1, 1, v138);
      }

      v85 = v137 + 1;
      v35 = v142;
      sub_1000CA2CC(v142, type metadata accessor for SecureLocation);
      v86 = v138;
      v138[2] = v84 + 1;
      v32 = v85;
      v87 = v86 + v133 + v84 * v132;
      v34 = v132;
      sub_1000C9DE8(v20, v87, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v23, type metadata accessor for SecureLocation);
      if (v85 == v135)
      {
LABEL_58:
        v98 = [v127 clientApp];
        v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v101 = v100;

        if (v99 == 0xD000000000000017 && 0x80000001004DFCF0 == v101)
        {
          v102 = 1;
        }

        else
        {
          v102 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v103 = v121;

        v104 = v124;
        v105 = swift_allocObject();
        v106 = v102 & 1;
        *(v105 + 16) = v106;
        v107 = v125;
        *(v105 + 24) = v104;
        *(v105 + 32) = v107;
        v108 = v127;
        v109 = v123;
        *(v105 + 40) = v127;
        *(v105 + 48) = v109;
        v110 = v126;
        *(v105 + 56) = v103;
        *(v105 + 64) = v110;

        v111 = v108;

        sub_1000FE000(v138, v106, sub_1000C9C4C, v105);
      }
    }
  }

  v88 = a8;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000A6F0(v89, qword_1005DFB98);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "LabelledLocations - No labels - nothing to resolve", v92, 2u);
  }

  v93 = [v127 clientApp];
  v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  if (v94 == 0xD000000000000017 && 0x80000001004DFCF0 == v96)
  {
    v97 = 1;
  }

  else
  {
    v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v113 = v124;
  v114 = swift_allocObject();
  v115 = v97 & 1;
  *(v114 + 16) = v115;
  v116 = v125;
  *(v114 + 24) = v113;
  *(v114 + 32) = v116;
  v117 = v127;
  v118 = v123;
  *(v114 + 40) = v127;
  *(v114 + 48) = v118;
  *(v114 + 56) = v88;
  *(v114 + 64) = v126;

  v119 = v117;

  sub_1000FE000(a1, v115, sub_1000CAB10, v114);
}

void sub_1000BEB1C()
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005A98B8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7[0] = v4;
    *v3 = 136446210;
    *(v3 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004DFC90, v7);
    _os_log_impl(&_mh_execute_header, v1, v2, "%{public}s", v3, 0xCu);
    sub_100004984(v4);
  }

  v5 = [objc_opt_self() sharedInstance];
  v7[4] = sub_1000A9418;
  v7[5] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000A8DE8;
  v7[3] = &unk_10058DEB8;
  v6 = _Block_copy(v7);
  [v5 stopLocationMonitoring:v6];
  _Block_release(v6);
}

void sub_1000BECFC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v99 = a6;
  v98 = a5;
  v97 = a4;
  v116 = a2;
  v101 = type metadata accessor for SecureLocation(0);
  v8 = *(v101 - 8);
  v9 = __chkstk_darwin(v101);
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v96 - v13);
  v15 = __chkstk_darwin(v12);
  v102 = &v96 - v16;
  v17 = __chkstk_darwin(v15);
  v103 = &v96 - v18;
  __chkstk_darwin(v17);
  v20 = &v96 - v19;
  v21 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v21 - 8);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a3;
  if (*(*(a3 + 120) + 16))
  {
    v100 = v11;
    if (qword_1005A7EF8 != -1)
    {
LABEL_59:
      swift_once();
    }

    v24 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v24);
    v25 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000CA264(v24 + *(v25 + 28), v23, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v24);

    v26 = *(v23 + 2);
    sub_1000CA2CC(v23, type metadata accessor for SecureLocationsConfig);
    v107 = *(a1 + 16);
    if (!v107)
    {
      v110 = _swiftEmptyArrayStorage;
      goto LABEL_58;
    }

    v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v110 = _swiftEmptyArrayStorage;
    v105 = v28;
    v106 = a1 + v28;
    v29 = 0;
    v30 = *(v8 + 72);
    *&v27 = 136315906;
    v112 = v27;
    *&v27 = 136315650;
    v111 = v27;
    *&v27 = 136315394;
    v96 = v27;
    v122 = v14;
    v31 = v102;
    v32 = v103;
    v113 = v20;
    v104 = v30;
    while (1)
    {
      v109 = v29;
      sub_1000CA264(v106 + v30 * v29, v20, type metadata accessor for SecureLocation);
      sub_1000CA264(v20, v32, type metadata accessor for SecureLocation);
      v33 = *(v108 + 120);
      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_44;
      }

      v35 = 0;
      v115 = v34 - 1;
      v36 = 32;
      v114 = v33;
      while (1)
      {
        v120 = v36;
        v37 = *(v33 + v36 + 32);
        v38 = *(v33 + v36 + 48);
        v39 = *(v33 + v36 + 80);
        v127 = *(v33 + v36 + 64);
        v40 = *(v33 + v36 + 16);
        v125[0] = *(v33 + v36);
        v125[1] = v40;
        v128 = v39;
        v125[2] = v37;
        v126 = v38;
        v121 = *(&v127 + 1);
        a1 = *(&v40 + 1);
        v23 = v40;
        sub_1000C81D0(v125, v124);
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        v8 = sub_10000A6F0(v41, qword_1005DFB98);
        sub_1000CA264(v20, v14, type metadata accessor for SecureLocation);
        sub_1000C81D0(v125, v124);
        v119 = v8;
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.info.getter();
        sub_1000C822C(v125);
        v44 = os_log_type_enabled(v42, v43);
        v118 = a1;
        v117 = v23;
        if (v44)
        {
          v45 = v23;
          v23 = swift_slowAlloc();
          v124[0] = swift_slowAlloc();
          *v23 = v112;

          v46 = sub_10000D01C(v45, a1, v124);

          *(v23 + 4) = v46;
          *(v23 + 6) = 2080;
          if (v39)
          {
            v47 = v121;
          }

          else
          {
            v47 = 1818848800;
          }

          if (v39)
          {
            v48 = v39;
          }

          else
          {
            v48 = 0xE400000000000000;
          }

          v49 = v127;

          v50 = sub_10000D01C(v47, v48, v124);

          *(v23 + 14) = v50;
          *(v23 + 11) = 2080;
          v33 = v114;
          v51 = *v122;
          v52 = v122[1];

          sub_1000CA2CC(v122, type metadata accessor for SecureLocation);
          a1 = sub_10000D01C(v51, v52, v124);
          v20 = v113;

          *(v23 + 3) = a1;
          *(v23 + 16) = 2048;
          *(v23 + 34) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "LabelledLocations Checking label %s %s %s %f", v23, 0x2Au);
          swift_arrayDestroy();
          v14 = v122;

          if (v39)
          {
            goto LABEL_30;
          }
        }

        else
        {

          sub_1000CA2CC(v14, type metadata accessor for SecureLocation);
          if (v39)
          {
            goto LABEL_30;
          }
        }

        if (v116)
        {
          break;
        }

LABEL_30:
        if (v116 & 1) == 0 && v39 && (v121 == *v20 && v39 == *(v20 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          break;
        }

        sub_1000C822C(v125);
LABEL_36:
        if (v115 == v35)
        {

          goto LABEL_43;
        }

        ++v35;
        v36 = v120 + 88;
        if (v35 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

      v53 = [objc_allocWithZone(CLLocation) initWithLatitude:v126 longitude:?];
      v54 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v20 + 3) longitude:*(v20 + 2)];
      [v53 distanceFromLocation:v54];
      v56 = v55;
      sub_1000C81D0(v125, v124);
      v8 = v119;
      v23 = Logger.logObject.getter();
      a1 = static os_log_type_t.info.getter();
      sub_1000C822C(v125);
      if (os_log_type_enabled(v23, a1))
      {
        v57 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v124[0] = v8;
        *v57 = v111;
        v58 = v118;

        v59 = v54;
        v60 = v53;
        v61 = sub_10000D01C(v117, v58, v124);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2080;
        if (v39)
        {
          v62 = v121;
        }

        else
        {
          v62 = 0x206C696E20;
        }

        if (v39)
        {
          v63 = v39;
        }

        else
        {
          v63 = 0xE500000000000000;
        }

        v64 = v62;
        v53 = v60;
        v54 = v59;
        v65 = sub_10000D01C(v64, v63, v124);
        v33 = v114;

        *(v57 + 14) = v65;
        *(v57 + 22) = 2048;
        *(v57 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v23, a1, "LabelledLocations %s %s Label Distance %f", v57, 0x20u);
        swift_arrayDestroy();
        v20 = v113;

        v14 = v122;
      }

      if (v56 > v26)
      {
        sub_1000C822C(v125);

        goto LABEL_36;
      }

      v66 = v118;

      sub_1000C822C(v125);
      v67 = v103;
      swift_beginAccess();
      v68 = &v67[*(v101 + 64)];
      v69 = v66;
      v70 = v117;
      *v68 = v117;
      *(v68 + 1) = v69;

      v71 = v100;
      sub_1000CA264(v20, v100, type metadata accessor for SecureLocation);
      v72 = Logger.logObject.getter();
      v73 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v121 = v53;
        v75 = v70;
        v76 = v74;
        v123 = swift_slowAlloc();
        *v76 = v96;
        v124[0] = v75;
        v124[1] = v69;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v77 = String.init<A>(describing:)();
        v79 = v71;
        v80 = sub_10000D01C(v77, v78, &v123);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2080;
        v81 = *v79;
        v82 = v79[1];

        sub_1000CA2CC(v79, type metadata accessor for SecureLocation);
        v83 = sub_10000D01C(v81, v82, &v123);

        *(v76 + 14) = v83;
        _os_log_impl(&_mh_execute_header, v72, v73, "LabelledLocations Adding label %s to location %s", v76, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1000CA2CC(v71, type metadata accessor for SecureLocation);
      }

LABEL_43:
      v31 = v102;
      v32 = v103;
LABEL_44:
      swift_beginAccess();
      sub_1000CA264(v32, v31, type metadata accessor for SecureLocation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_1001FCE44(0, v110[2] + 1, 1, v110);
      }

      v85 = v110[2];
      v84 = v110[3];
      if (v85 >= v84 >> 1)
      {
        v110 = sub_1001FCE44((v84 > 1), v85 + 1, 1, v110);
      }

      v86 = v109 + 1;
      sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
      v87 = v110;
      v110[2] = v85 + 1;
      v29 = v86;
      v88 = v104;
      sub_1000C9DE8(v31, v87 + v105 + v85 * v104, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v32, type metadata accessor for SecureLocation);
      v30 = v88;
      if (v29 == v107)
      {
LABEL_58:
        sub_10009F5B4(v110, 0, v97, v98, v99);

        return;
      }
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  sub_10000A6F0(v89, qword_1005DFB98);
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&_mh_execute_header, v90, v91, "LabelledLocations - No labels - nothing to resolve", v92, 2u);
  }

  v93 = v97;
  v94 = v98;
  v95 = v99;

  sub_10009F5B4(a1, 0, v93, v94, v95);
}

uint64_t sub_1000BFAFC(unint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v9 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v9 - 8);
  v49 = &v46 - v10;
  v11 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = type metadata accessor for Credentials(0);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  v16 = __chkstk_darwin(v14);
  v46 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v46 - v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v50 = a5;
  v18[4] = a6;
  v19 = objc_opt_self();
  swift_retain_n();
  swift_retain_n();
  v20 = [v19 standardUserDefaults];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 BOOLForKey:v21];

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
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v24, v25, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v26, 8u);
  }

  if (v22)
  {
    v27 = v51;
    if (!*(*(v51 + 120) + 16))
    {
      v54[0] = sub_1004B7128();

      sub_1000BA000(v54);

      *(v27 + 120) = v54[0];
    }

    sub_1000BECFC(v53, v52 & 1, v27, a4, v50, a6);
    goto LABEL_13;
  }

  v28 = swift_allocObject();
  v29 = v51;
  v30 = v53;
  *(v28 + 16) = v51;
  *(v28 + 24) = v30;
  *(v28 + 32) = v52 & 1;
  *(v28 + 40) = sub_1000C9A6C;
  *(v28 + 48) = v18;
  v31 = qword_1005A8098;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v33 = sub_10000A6F0(v32, qword_1005AF7C0);
  os_unfair_lock_lock(v33);
  sub_100005F04(v33 + *(v32 + 28), v13, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v33);
  v34 = v47;
  if ((*(v47 + 48))(v13, 1, v14) == 1)
  {
    sub_100002CE0(v13, &qword_1005A9DA8, &unk_1004D1130);
    v54[0] = 0;
    v54[1] = 0;
    v55 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    sub_1000BECFC(v53, v52 & 1, v29, a4, v50, a6);

LABEL_13:
  }

  v36 = v13;
  v37 = v48;
  sub_1000C9DE8(v36, v48, type metadata accessor for Credentials);
  v38 = type metadata accessor for TaskPriority();
  (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
  v39 = v37;
  v40 = v34;
  v41 = v46;
  sub_1000CA264(v39, v46, type metadata accessor for Credentials);
  v42 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v43 = (v15 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v29;
  sub_1000C9DE8(v41, v44 + v42, type metadata accessor for Credentials);
  v45 = (v44 + v43);
  *v45 = sub_1000CAB30;
  v45[1] = v28;

  sub_1001D7F30(0, 0, v49, &unk_1004C3470, v44);

  sub_1000CA2CC(v48, type metadata accessor for Credentials);
}

void sub_1000C01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a2;
  v23[2] = a3;
  v4 = type metadata accessor for SecureLocation(0) - 8;
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = &off_1005A7000;
    *&v6 = 136315138;
    v25 = v6;
    do
    {
      if (v12[477] != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000A6F0(v20, qword_1005DFB98);
      sub_1000CA264(v10, v8, type metadata accessor for SecureLocation);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v26 = v14;
        *v13 = v25;
        v15 = sub_10008BC88();
        v16 = v8;
        v18 = v17;
        sub_1000CA2CC(v16, type metadata accessor for SecureLocation);
        v19 = sub_10000D01C(v15, v18, &v26);
        v8 = v16;

        *(v13 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v21, v22, "Received location via push %s", v13, 0xCu);
        sub_100004984(v14);

        v12 = &off_1005A7000;
      }

      else
      {

        sub_1000CA2CC(v8, type metadata accessor for SecureLocation);
      }

      v10 += v11;
      --v9;
    }

    while (v9);
  }

  sub_1000AC58C(v24, 1);
  Transaction.capture()();
}

uint64_t sub_1000C0460(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v49 = a2;
  v50 = a1;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v7 - 8);
  v47 = &v43 - v8;
  v9 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v9 - 8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for Credentials(0);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  v14 = __chkstk_darwin(v12);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v46 = &v43 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = objc_opt_self();
  swift_retain_n();
  swift_retain_n();
  v18 = [v17 standardUserDefaults];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005DFB98);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109120;
    *(v24 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v22, v23, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v24, 8u);
  }

  if (v20)
  {
    v25 = v48;
    if (!*(*(v48 + 120) + 16))
    {
      v51[0] = sub_1004B7128();

      sub_1000BA000(v51);

      *(v25 + 120) = v51[0];
    }

    sub_1000C5524(v50, v49 & 1, v25, a4, a5, sub_1000C01C0);
    goto LABEL_13;
  }

  v26 = swift_allocObject();
  v27 = v48;
  v28 = v50;
  *(v26 + 16) = v48;
  *(v26 + 24) = v28;
  *(v26 + 32) = v49 & 1;
  *(v26 + 40) = sub_1000C8530;
  *(v26 + 48) = v16;
  v29 = qword_1005A8098;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v31 = sub_10000A6F0(v30, qword_1005AF7C0);
  os_unfair_lock_lock(v31);
  sub_100005F04(v31 + *(v30 + 28), v11, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v31);
  v32 = v45;
  if ((*(v45 + 48))(v11, 1, v12) == 1)
  {
    sub_100002CE0(v11, &qword_1005A9DA8, &unk_1004D1130);
    v51[0] = 0;
    v51[1] = 0;
    v52 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();

    sub_1000C5524(v50, v49 & 1, v27, a4, a5, sub_1000C01C0);

LABEL_13:
  }

  v34 = v11;
  v35 = v46;
  sub_1000C9DE8(v34, v46, type metadata accessor for Credentials);
  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
  v37 = v35;
  v38 = v32;
  v39 = v44;
  sub_1000CA264(v37, v44, type metadata accessor for Credentials);
  v40 = (*(v38 + 80) + 40) & ~*(v38 + 80);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v41[4] = v27;
  sub_1000C9DE8(v39, v41 + v40, type metadata accessor for Credentials);
  v42 = (v41 + ((v13 + v40 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v42 = sub_1000C8538;
  v42[1] = v26;

  sub_1001D7F30(0, 0, v47, &unk_1004C3380, v41);

  sub_1000CA2CC(v46, type metadata accessor for Credentials);
}