uint64_t sub_1000203B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000203F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v20 = a1;
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v21 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  v18[0] = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = type metadata accessor for LocationRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[2] = *(a2 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue);
  v18[1] = type metadata accessor for WorkItemQueue.WorkItem();
  (*(v11 + 16))(v13, v19, v10);
  (*(v7 + 16))(v9, v20, v6);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  (*(v11 + 32))(v16 + v14, v13, v10);
  (*(v7 + 32))(v16 + v15, v9, v18[0]);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_1000206C4()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_10004B564(&qword_1005B2510, &qword_1004D70C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100020828(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10002086C()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_100020988, v1, 0);
}

uint64_t sub_100020988()
{
  v1 = v0[2];
  v2 = v0[35];
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v2;
    v68 = v1 + 64;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v67 = (63 - v5) >> 6;
    v7 = v0[35];
    v69 = v1;

    for (i = 0; ; i = v75)
    {
      v77 = v7;
      v76 = isUniquelyReferenced_nonNull_native;
      if (!v6)
      {
        if (v67 <= i + 1)
        {
          v14 = i + 1;
        }

        else
        {
          v14 = v67;
        }

        while (1)
        {
          v13 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v13 >= v67)
          {
            v75 = v14 - 1;
            v59 = v0[20];
            v60 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v60 - 8) + 56))(v59, 1, 1, v60);
            v6 = 0;
            goto LABEL_16;
          }

          v6 = *(v68 + 8 * v13);
          ++i;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(v8, v9, v10, v11);
      }

      v13 = i;
LABEL_15:
      v15 = v0[20];
      v16 = v0[15];
      v17 = v0[16];
      v18 = v0[14];
      v19 = v0[12];
      v71 = v0[11];
      v74 = v0[18];
      v20 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v21 = v20 | (v13 << 6);
      (*(v17 + 16))();
      (*(v19 + 16))(v18, *(v69 + 56) + *(v19 + 72) * v21, v71);
      v22 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v23 = *(v22 + 48);
      (*(v17 + 32))(v15, v74, v16);
      (*(v19 + 32))(v15 + v23, v18, v71);
      (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
      v75 = v13;
LABEL_16:
      v24 = v0[19];
      sub_1000176A8(v0[20], v24, &qword_1005B2438, &qword_1004D68B0);
      v25 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v26 = (*(*(v25 - 8) + 48))(v24, 1, v25);
      v27 = v0[21];
      if (v26 == 1)
      {
        v28 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
      }

      else
      {
        v29 = v0[19];
        v31 = v0[15];
        v30 = v0[16];
        v32 = v0[12];
        v72 = v0[11];
        v33 = *(v25 + 48);
        v34 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v35 = *(v34 + 48);
        (*(v30 + 16))(v27, v29, v31);
        (*(v32 + 16))(v27 + v35, v29 + v33, v72);
        sub_100002CE0(v29, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v34 - 8) + 56))(v27, 0, 1, v34);
      }

      v36 = v0[21];
      v37 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
      {

        v0[35] = v77;
        v61 = v0[34];
        v62 = v0[7];
        v63 = swift_task_alloc();
        v0[36] = v63;
        *v63 = v0;
        v63[1] = sub_10002086C;
        v11 = v0[22];
        v8 = (v0 + 2);
        v9 = v62;
        v10 = v61;

        return TaskGroup.Iterator.next(isolation:)(v8, v9, v10, v11);
      }

      v38 = v0[17];
      v40 = v0[12];
      v39 = v0[13];
      v41 = v0[11];
      v42 = *(v37 + 48);
      v70 = *(v0[16] + 32);
      v70(v38, v36, v0[15]);
      v73 = *(v40 + 32);
      v73(v39, v36 + v42, v41);
      v43 = sub_1001FD93C(v38);
      v44 = v77[2];
      v45 = (v9 & 1) == 0;
      v8 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        goto LABEL_40;
      }

      v46 = v9;
      if (v77[3] >= v8)
      {
        if ((v76 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v47 = v0[17];
        sub_10022D91C(v8, v76 & 1);
        v48 = sub_1001FD93C(v47);
        if ((v46 & 1) != (v49 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v43 = v48;
      }

      v7 = v0[3];
      v51 = v0[16];
      v50 = v0[17];
      v52 = v0[15];
      v54 = v0[12];
      v53 = v0[13];
      v55 = v0[11];
      if (v46)
      {
        (*(v51 + 8))(v0[17], v0[15]);
        v8 = (*(v54 + 40))(v7[7] + *(v54 + 72) * v43, v53, v55);
      }

      else
      {
        v7[(v43 >> 6) + 8] |= 1 << v43;
        v70(v7[6] + *(v51 + 72) * v43, v50, v52);
        v8 = (v73)(v7[7] + *(v54 + 72) * v43, v53, v55);
        v56 = v7[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_41;
        }

        v7[2] = v58;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }
  }

  v64 = v0[4];
  (*(v0[23] + 8))(v0[24], v0[22]);
  *v64 = v2;

  v65 = v0[1];

  return v65();
}

uint64_t sub_100021148()
{
  v1 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static SystemInfo.isInternalBuild.getter())
  {
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      return 1;
    }
  }

  v8 = (v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
  os_unfair_lock_lock(v8);
  v9 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000214CC(v8 + *(v9 + 28), v3, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v8);
  v7 = v3[80];
  sub_10002172C(v3, type metadata accessor for SecureLocationsConfig);
  return v7;
}

uint64_t type metadata accessor for SecureLocationsConfig(uint64_t a1)
{
  result = qword_1005ADC08;
  if (!qword_1005ADC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000212EC()
{
  v2 = *(type metadata accessor for LocationRequest() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_10004B564(&qword_1005B2510, &qword_1004D70C0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100003690;

  return sub_10002142C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_10002142C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a3;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_10038B77C;

  return sub_100021604(a2);
}

uint64_t sub_1000214CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021534(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002159C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021604(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for LocationRequest();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002184C, v1, 0);
}

uint64_t sub_10002172C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002178C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000217EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002184C()
{
  v12 = v0;
  v1 = *(LocationRequest.toHandles.getter() + 16);

  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_100028AD8;

    return sub_100021A68();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005E0B28);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v11);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s with empty handles", v7, 0xCu);
      sub_100004984(v8);
    }

    v9 = sub_1002087C4(_swiftEmptyArrayStorage);

    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_100021A68()
{
  v1[3] = v0;
  v2 = type metadata accessor for Friend();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for Handle();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_100021D74;

  return daemon.getter();
}

uint64_t sub_100021BB4()
{
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

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
    *v3 = 67109376;
    *(v3 + 4) = v6;
    *(v3 + 8) = 1024;
    *(v3 + 10) = v5 == 1;
    _os_log_impl(&_mh_execute_header, v1, v2, "LocationSharing: isMyLocationEnabled %{BOOL}d isThisMeDevice %{BOOL}d", v3, 0xEu);
  }

  if (v5 == 1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021D74(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 88) = a1;

  v3 = swift_task_alloc();
  *(v2 + 96) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095A8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100021F5C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100021F5C(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_10037F550;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_1000222C0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100022084(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v13 = type metadata accessor for SecureLocationsStewie.ServiceState();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v5, a1, v13);
    (*(v14 + 56))(v5, 0, 1, v13);
    v15 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
    swift_beginAccess();
    sub_100022364(v5, v1 + v15, &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    return sub_1000223CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000222C0()
{
  *(v0 + 120) = *(*(v0 + 24) + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10002B544();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002B5A8, v2, v1);
}

uint64_t sub_100022364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000223CC()
{
  v1 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v1 - 8);
  v35 = &v33 - v2;
  v3 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v33 - v11;
  __chkstk_darwin(v10);
  v33 = &v33 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
    swift_beginAccess();
    sub_100005F04(v0 + v21, v5, &qword_1005AB4B0, &unk_1004C5410);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100002CE0(v5, &qword_1005AB4B0, &unk_1004C5410);
      (*(v7 + 104))(v12, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v6);
      v22 = type metadata accessor for TaskPriority();
      v23 = v35;
      (*(*(v22 - 8) + 56))(v35, 1, 1, v22);
      v24 = v34;
      (*(v7 + 16))(v34, v12, v6);
      v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      (*(v7 + 32))(v26 + v25, v24, v6);
      sub_10020D620(0, 0, v23, &unk_1004C5420, v26);
    }

    else
    {
      v27 = *(v7 + 32);
      v28 = v33;
      v27(v33, v5, v6);
      v29 = type metadata accessor for TaskPriority();
      v30 = v35;
      (*(*(v29 - 8) + 56))(v35, 1, 1, v29);
      (*(v7 + 16))(v12, v28, v6);
      v31 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      v27((v32 + v31), v12, v6);
      sub_10020D620(0, 0, v30, &unk_1004C5428, v32);
      v12 = v28;
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000228E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022950()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_100023890;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590858;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);
}

uint64_t sub_100022C20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022C58(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100022CCC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {

    v5 = sub_10030B86C;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_100022E78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100022DFC(uint64_t a1)
{
  sub_10004B564(&qword_1005B1C20, &qword_1004D5AF0);

  return sub_100022C58(a1);
}

uint64_t sub_100022E78()
{
  v20 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 104) + 1;
  v7 = swift_task_alloc();
  *(v7 + 16) = v2;
  v8 = sub_10002310C(sub_1000236EC, v7);

  v9 = sub_10000E19C(v8, v1);

  (*(v5 + 8))(v2, v4);
  if (v6 != v3)
  {
LABEL_5:
    v13 = *(v0 + 96);
    v14 = *(v0 + 104) + 1;
    *(v0 + 104) = v14;
    *(v0 + 112) = v9;
    v13(*(v0 + 72), *(v0 + 32) + ((*(v0 + 144) + 32) & ~*(v0 + 144)) + *(v0 + 88) * v14, *(v0 + 56));
    v15 = swift_task_alloc();
    *(v0 + 120) = v15;
    *v15 = v0;
    v15[1] = sub_100022CCC;
    v16 = *(v0 + 72);

    return sub_10001BBDC(v16);
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_10022BCF4(*(v9 + 16), 0);
    v12 = *(type metadata accessor for Friend() - 8);
    v9 = sub_10023EAA8(&v19, &v11[(*(v12 + 80) + 32) & ~*(v12 + 80)], v10, v9);
    sub_10000E3F8(v19);
    if (v9 != v10)
    {
      __break(1u);
      goto LABEL_5;
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  *(v0 + 24) = v11;
  sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  CheckedContinuation.resume(returning:)();

  v18 = *(v0 + 8);

  return v18();
}

char *sub_10002310C(void (*a1)(char *), uint64_t a2)
{
  v5 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  __chkstk_darwin(v5 - 8);
  v7 = v27 - v6;
  v36 = type metadata accessor for Friend();
  v29 = *(v36 - 8);
  v8 = __chkstk_darwin(v36);
  v34 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v28 = v27 - v10;
  v11 = type metadata accessor for FriendRecord(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004B564(&qword_1005B0B88, &qword_1004D5CC0);
  __chkstk_darwin(v15 - 8);
  v17 = v27 - v16;
  v35 = dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v18 = *(v12 + 48);
  v32 = v12 + 48;
  v33 = v11;
  v31 = v18;
  if (v18(v17, 1, v11) == 1)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    v30 = (v29 + 48);
    v20 = (v29 + 32);
    v19 = _swiftEmptyArrayStorage;
    v27[0] = a1;
    v27[1] = a2;
    while (1)
    {
      sub_100274934(v17, v14, type metadata accessor for FriendRecord);
      a1(v14);
      if (v2)
      {
        break;
      }

      sub_100274A04(v14, type metadata accessor for FriendRecord);
      v21 = v36;
      if ((*v30)(v7, 1, v36) == 1)
      {
        sub_100002CE0(v7, &qword_1005A9188, &unk_1004D80D0);
      }

      else
      {
        v22 = *v20;
        v23 = v28;
        (*v20)(v28, v7, v21);
        v22(v34, v23, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1001FCB80(0, *(v19 + 2) + 1, 1, v19);
        }

        v25 = *(v19 + 2);
        v24 = *(v19 + 3);
        if (v25 >= v24 >> 1)
        {
          v19 = sub_1001FCB80((v24 > 1), v25 + 1, 1, v19);
        }

        *(v19 + 2) = v25 + 1;
        v22(&v19[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25], v34, v36);
        a1 = v27[0];
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
      if (v31(v17, 1, v33) == 1)
      {
        goto LABEL_14;
      }
    }

    sub_100274A04(v14, type metadata accessor for FriendRecord);
  }

LABEL_14:

  return v19;
}

uint64_t sub_100023564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 144);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000236A0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void sub_100023720(_BYTE *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient] = 0;

  a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB98);
  v4 = a1;
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "%{public}s - stopped monitor", v6, 0xCu);
    sub_100004984(v7);
  }
}

uint64_t sub_100023898@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for FriendInfoOption(0);
  v25 = *(v22 - 8);
  v5 = __chkstk_darwin(v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a2 + 56;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 56);
  v14 = (v11 + 63) >> 6;
  v26 = a2;

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_100018254(*(v26 + 48) + *(v25 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v9, type metadata accessor for FriendInfoOption);
      sub_100455738(v9, v7, type metadata accessor for FriendInfoOption);
      v18 = v24(v7);
      if (v3)
      {
        sub_100006E68(v7, type metadata accessor for FriendInfoOption);
      }

      if (v18)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_100006E68(v7, type metadata accessor for FriendInfoOption);
      v16 = v17;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v21 = v23;
    sub_100455738(v7, v23, type metadata accessor for FriendInfoOption);
    v20 = v21;
    v19 = 0;
    return (*(v25 + 56))(v20, v19, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {

        v19 = 1;
        v20 = v23;
        return (*(v25 + 56))(v20, v19, 1, v22);
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100023B64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for HandleType();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ClientOrigin();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[7];
      goto LABEL_5;
    }

    v17 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[12];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100023D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_100024320;

  return daemon.getter();
}

uint64_t sub_100023DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInfoOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_10004B564(&qword_1005AE998, &unk_1004D6030);
  __chkstk_darwin(v5 - 8);
  v44 = &v34 - v6;
  v7 = type metadata accessor for HandleType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005AE988, &qword_1004CF4E8);
  __chkstk_darwin(v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for FriendInfoOption(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FriendRecord(0);
  v19 = *(v3 + v18[34]);
  v43 = a1;
  v46 = a1;
  sub_100023898(sub_100024548, v19, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100002CE0(v13, &qword_1005AE988, &qword_1004CF4E8);
    v20 = 1;
    v21 = v45;
  }

  else
  {
    sub_100023DCC(v13, v17);
    v22 = (v3 + v18[15]);
    v24 = *v22;
    v23 = v22[1];
    v49 = v24;
    v50 = v23;
    v47 = 44;
    v48 = 0xE100000000000000;
    sub_1000246F4();
    v42 = StringProtocol.components<A>(separatedBy:)();
    (*(v8 + 104))(v10, enum case for HandleType.pendingOffer(_:), v7);
    v25 = static HandleType.== infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    v26 = &v17[*(v14 + 36)];
    v27 = *(v26 + 1);
    if (v27)
    {
      v28 = *v26;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v43 = *(v26 + 1);
    }

    else
    {
      v43 = 0;
      if ((v25 & 1) == 0)
      {
        v29 = (v3 + v18[16]);
        v28 = *v29;
        v43 = v29[1];
      }
    }

    v38 = v28;
    v30 = *v3;
    v36 = v3[1];
    v31 = v3[2];
    v40 = v30;
    v41 = v31;
    sub_100005F04(v3 + v18[6], v44, &qword_1005AE998, &unk_1004D6030);
    v39 = *(v3 + v18[7]);
    v37 = *&v17[*(v14 + 40)];
    v35 = *(v3 + v18[11]);
    v34 = *(v3 + v18[13]);

    swift_bridgeObjectRetain_n();

    v21 = v45;
    Handle.init(withID:qualifiedIdentifier:serverID:idsStatus:dsid:expiresByGroupId:trackingTimestamp:hashedDSID:favoriteOrder:reachable:pushIdentifiers:prettyName:contactIdentifier:siblingIdentifiers:)();
    sub_100006E08(v17, type metadata accessor for FriendInfoOption);
    v20 = 0;
  }

  v32 = type metadata accessor for Handle();
  return (*(*(v32 - 8) + 56))(v21, v20, 1, v32);
}

uint64_t sub_100024320(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 32) = a1;

  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1000097A0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000097A0(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_100024564;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t type metadata accessor for LocationService(uint64_t a1)
{
  result = qword_1005B20A0;
  if (!qword_1005B20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100024564(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1004B8854, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[8] = v5;
    *v5 = v4;
    v5[1] = sub_1004B5788;
    v6 = v3[2];

    return sub_100024748(v6);
  }
}

unint64_t sub_1000246F4()
{
  result = qword_1005A8C98;
  if (!qword_1005A8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A8C98);
  }

  return result;
}

uint64_t sub_100024748(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100378770;

  return sub_100024AB8();
}

uint64_t sub_1000247D8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Friend();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000046BC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100024AD8()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs;
  swift_beginAccess();
  v0[6] = *(v1 + v2);
  v0[7] = *(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);

  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100025250, v4, v3);
}

uint64_t sub_100024BD8(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Friend();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B0568, &qword_1004D1EB8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100024EF4(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Friend();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B0568, &qword_1004D1EB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend, &protocol conformance descriptor for Friend);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_100025250()
{
  v1 = *(v0 + 40);
  *(v0 + 64) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_1000252C0, v1, 0);
}

uint64_t sub_1000252C0()
{
  if (*(v0[6] + 16))
  {

    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1003467A4;
    v2 = v0[8];
    v3 = v0[6];

    return sub_100025688(v2, v3);
  }

  else
  {

    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0B28);
    swift_bridgeObjectRetain_n();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[8];
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      if ((v9 & 0xC000000000000001) != 0)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *(v0[8] + 16);
      }

      *(v10 + 4) = v11;

      *(v10 + 12) = 2048;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v12 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 14) = v12;

      _os_log_impl(&_mh_execute_header, v6, v7, "All XPC sessions: %ld. Active stewie sessions: %ld", v10, 0x16u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v13 = v0[1];

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10002556C()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_10021C688;
  }

  else
  {

    v2 = sub_100025754;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100025688(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for UUID();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100025778, 0, 0);
}

uint64_t sub_100025754()
{
  v1 = v0[106];
  v0[123] = v0[103];
  return _swift_task_switch(sub_100025A3C, v1, 0);
}

uint64_t sub_100025778(uint64_t a1, uint64_t a2)
{
  v2[7] = _swiftEmptyArrayStorage;
  v3 = v2[10];
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for LocationServiceClient();
    sub_10002676C(&qword_1005B23F0, type metadata accessor for LocationServiceClient, &unk_1004D66B0);
    Set.Iterator.init(_cocoa:)();
    result = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v2[16] = result;
    v2[17] = v5;
    v2[18] = v6;
    v2[19] = _swiftEmptyArrayStorage;
    if (result < 0)
    {
      v19 = __CocoaSet.Iterator.next()();
      if (!v19)
      {
LABEL_19:
        sub_10000E3F8(v2[16]);

        v20 = v2[1];
        v21 = v2[19];

        return v20(v21);
      }

      v2[9] = v19;
      swift_dynamicCast();
      v16 = v2[8];
      v13 = v7;
      v15 = v8;
LABEL_13:
      v2[21] = v13;
      v2[22] = v15;
      v2[20] = v16;
      if (v16)
      {
        v22 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
        v17 = swift_task_alloc();
        v2[23] = v17;
        *v17 = v2;
        v17[1] = sub_100025FA4;
        v18 = v2[15];

        return v22(v18);
      }

      goto LABEL_19;
    }

    v9 = v6 + 64;
  }

  else
  {
    v10 = -1;
    v11 = -1 << *(v3 + 32);
    v5 = v3 + 56;
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v8 = v10 & *(v3 + 56);
    v2[16] = v3;
    v2[17] = v5;
    v9 = 63 - v11;
    v2[18] = ~v11;
    v2[19] = _swiftEmptyArrayStorage;

    v7 = 0;
  }

  v12 = v8;
  v13 = v7;
  if (v8)
  {
LABEL_12:
    v15 = (v12 - 1) & v12;

    goto LABEL_13;
  }

  v14 = v7;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= (v9 >> 6))
    {
      goto LABEL_19;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100025A3C()
{
  v41 = v0;
  if (*(v0 + 1032) == 1)
  {
    v1 = *(v0 + 904);
    v2 = *(v0 + 896);
    v3 = *(v0 + 888);
    v4 = *(v0 + 840);
    v5 = *(v2 + 104);
    v5(v1, enum case for HandleType.follower(_:), v3);
    LOBYTE(v4) = sub_10026040C(v1, v4);
    v6 = *(v2 + 8);
    v6(v1, v3);
    if (v4 & 1) != 0 || (v7 = *(v0 + 904), v8 = *(v0 + 888), v9 = *(v0 + 840), v5(v7, enum case for HandleType.pendingOffer(_:), v8), LOBYTE(v9) = sub_10026040C(v7, v9), v6(v7, v8), (v9) || (v10 = *(v0 + 904), v11 = *(v0 + 888), v12 = *(v0 + 840), v5(v10, enum case for HandleType.following(_:), v11), LOBYTE(v12) = sub_10026040C(v10, v12), v6(v10, v11), (v12))
    {
      v13 = *(v0 + 984);
      v14 = *(v0 + 880);
      v15 = *(v0 + 856);
      static Date.trustedNow.getter(v14);
      v16 = swift_task_alloc();
      *(v16 + 16) = v14;
      *(v16 + 24) = v15;

      v17 = sub_100026ABC(sub_100027214, v16, v13);

      v18 = v17[2];

      if (v18)
      {
        v19 = swift_task_alloc();
        *(v0 + 992) = v19;
        *v19 = v0;
        v19[1] = sub_10021C8D8;

        return sub_1001E17C0(v0 + 16);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }

    v29 = *(v0 + 984);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005DFF18);
    swift_bridgeObjectRetain_n();

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136446466;
      v35 = Array.description.getter();
      v37 = sub_10000D01C(v35, v36, v40);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v38 = *(v29 + 16);

      *(v33 + 14) = v38;

      _os_log_impl(&_mh_execute_header, v31, v32, "DataManager load LocalStorage friends with types %{public}s count:%ld", v33, 0x16u);
      sub_100004984(v34);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFF18);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40[0] = v25;
      *v24 = 136446210;
      v26 = Array.description.getter();
      v28 = sub_10000D01C(v26, v27, v40);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "DataManager load friends not checking expiry with types %{public}s", v24, 0xCu);
      sub_100004984(v25);
    }

    v29 = *(v0 + 984);
  }

  v39 = *(v0 + 8);

  return v39(v29);
}

uint64_t sub_100025FA4()
{

  return _swift_task_switch(sub_1000260A0, 0, 0);
}

uint64_t sub_1000260A0()
{
  v1 = v0[11];
  if (!*(v1 + 16) || (sub_10002676C(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v2 = dispatch thunk of Hashable._rawHashValue(seed:)(), v3 = -1 << *(v1 + 32), v4 = v2 & ~v3, ((*(v1 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0))
  {
LABEL_6:
    (*(v0[13] + 8))(v0[15], v0[12]);

    v16 = v0[21];
    v17 = v0[22];
    if ((v0[16] & 0x8000000000000000) != 0)
    {
      v23 = __CocoaSet.Iterator.next()();
      if (!v23)
      {
LABEL_22:
        sub_10000E3F8(v0[16]);

        v27 = v0[1];
        v28 = v0[19];

        return v27(v28);
      }

      v0[9] = v23;
      type metadata accessor for LocationServiceClient();
      swift_dynamicCast();
      v22 = v0[8];
      v19 = v16;
      v21 = v17;
    }

    else
    {
      v18 = v0[22];
      v19 = v0[21];
      if (!v17)
      {
        v20 = v0[21];
        while (1)
        {
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v19 >= ((v0[18] + 64) >> 6))
          {
            goto LABEL_22;
          }

          v18 = *(v0[17] + 8 * v19);
          ++v20;
          if (v18)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

LABEL_12:
      v21 = (v18 - 1) & v18;
    }

    v0[21] = v19;
    v0[22] = v21;
    v0[20] = v22;
    if (v22)
    {
      v29 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
      v24 = swift_task_alloc();
      v0[23] = v24;
      *v24 = v0;
      v24[1] = sub_100025FA4;
      v25 = v0[15];

      return v29(v25);
    }

    goto LABEL_22;
  }

  v5 = ~v3;
  v6 = v0[13];
  v7 = *(v6 + 72);
  v8 = *(v6 + 16);
  v9 = v0[11];
  while (1)
  {
    v10 = v0[14];
    v11 = v0[12];
    v12 = v0[13];
    v8(v10, *(v9 + 48) + v4 * v7, v11);
    sub_10002676C(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = *(v12 + 8);
    v0[24] = v14;
    v14(v10, v11);
    if (v13)
    {
      break;
    }

    v9 = v0[11];
    v4 = (v4 + 1) & v5;
    if (((*(v9 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_task_alloc();
  v0[25] = v26;
  *v26 = v0;
  v26[1] = sub_1004AA928;

  return sub_1000267B4();
}

uint64_t static Date.trustedNow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v2);
  v4 = &v13[-v3];
  if (static SystemInfo.underTest.getter())
  {
    if (qword_1005A85E8 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A6F0(v2, qword_1005B5968);
    swift_beginAccess();
    sub_1000CF974(v5, v4);
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) != 1)
    {
      return (*(v7 + 32))(a1, v4, v6);
    }

    sub_100002CE0(v4, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    valueOf(entitlement:)();
    if (v15)
    {
      if ((swift_dynamicCast() & 1) != 0 && v13[15] == 1)
      {
        return static ReferenceClock.now.getter();
      }
    }

    else
    {
      sub_100002CE0(v14, &qword_1005A9680, &qword_1004C32A0);
    }

    if (qword_1005A85F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0D98);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Queried trustedNow but falling back to normal Date()", v12, 2u);
    }
  }

  return Date.init()();
}

uint64_t sub_10002676C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000267D4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_100026AFC()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10002A5A4;
  v2 = *(v0 + 32);

  return withTimeout<A>(_:block:)(v0 + 16, 0x8AC7230489E80000, 0, &unk_1004DD408, v2, &type metadata for String);
}

uint64_t sub_100026BD0()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_100027234;
  }

  else
  {
    v4 = sub_100393868;
  }

  return _swift_task_switch(v4, v3, 0);
}

BOOL sub_100026CFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Friend();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Handle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  Friend.handle.getter();
  v15 = Handle.expiresByGroupId.getter();
  v18 = *(v12 + 8);
  v16 = v12 + 8;
  v17 = v18;
  v18(v14, v11);
  v57 = a2;
  v19 = sub_1000272A4(sub_100027ABC, v56, v15);

  v20 = v19[2];

  if (!v20)
  {
    v47 = v16;
    v49 = v17;
    v50 = v11;
    v51 = 0;
    v52 = v2;
    v21 = v53;
    v22 = v54;
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFF18);
    v24 = *(v21 + 16);
    v48 = v10;
    v25 = v10;
    v26 = v55;
    v24(v25, v55, v22);
    v24(v8, v26, v22);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v29 = 136447235;
      *(v29 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E5950, &v58);
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      v46 = v28;
      v30 = v48;
      Friend.handle.getter();
      v31 = Handle.identifier.getter();
      v44 = v8;
      v45 = v27;
      v33 = v32;
      v49(v14, v50);
      v34 = *(v21 + 8);
      v34(v30, v22);
      v35 = sub_10000D01C(v31, v33, &v58);

      *(v29 + 24) = v35;
      *(v29 + 32) = 2160;
      *(v29 + 34) = 1752392040;
      *(v29 + 42) = 2081;
      v36 = v44;
      Friend.handle.getter();
      Handle.expiresByGroupId.getter();
      v49(v14, v50);
      type metadata accessor for GroupID();
      type metadata accessor for Date();
      sub_1000093F8(&qword_1005AE908, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
      v37 = Dictionary.description.getter();
      v39 = v38;

      v34(v36, v22);
      v40 = sub_10000D01C(v37, v39, &v58);

      *(v29 + 44) = v40;
      v41 = v45;
      _os_log_impl(&_mh_execute_header, v45, v46, "%{public}s expired Friend:%{private,mask.hash}s\nexpiresByGroupId:%{private,mask.hash}s", v29, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v42 = *(v21 + 8);
      v42(v8, v22);
      v42(v48, v22);
    }

    v20 = v51;
  }

  return v20 == 0;
}

uint64_t sub_100027234()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1000272A4(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v9 = &v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_100027540(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_10023C938(v11, v7, a3, v5);

  if (!v3)
  {
    return v12;
  }

  return result;
}

uint64_t sub_100027424()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10002789C;
  }

  else
  {

    v2 = sub_1003A8090;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100027540(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v43 = a4;
  v32 = a2;
  v33 = a1;
  v42 = type metadata accessor for Date();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v45 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroupID();
  result = __chkstk_darwin(v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v44 = a3;
  v13 = *(a3 + 64);
  v34 = 0;
  v35 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v38 = v5 + 16;
  v39 = v9 + 16;
  v40 = v9;
  v41 = v5;
  v36 = (v5 + 8);
  v37 = (v9 + 8);
  while (v16)
  {
    v46 = (v16 - 1) & v16;
    v18 = __clz(__rbit64(v16)) | (v12 << 6);
    v19 = v45;
LABEL_11:
    v22 = v44;
    (*(v40 + 16))(v11, v44[6] + *(v40 + 72) * v18, v7);
    v23 = v18;
    v24 = v22[7] + *(v41 + 72) * v18;
    v25 = v7;
    v26 = v42;
    (*(v41 + 16))(v19, v24, v42);
    v27 = v47;
    v28 = v43(v11, v19);
    v47 = v27;
    if (v27)
    {
      (*v36)(v19, v26);
      return (*v37)(v11, v25);
    }

    v29 = v28;
    (*v36)(v19, v26);
    result = (*v37)(v11, v25);
    v7 = v25;
    v16 = v46;
    if (v29)
    {
      *(v33 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
        return sub_100027BC4(v33, v32, v34, v44);
      }
    }
  }

  v20 = v12;
  v19 = v45;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_100027BC4(v33, v32, v34, v44);
    }

    v21 = *(v35 + 8 * v12);
    ++v20;
    if (v21)
    {
      v46 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v12 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002789C()
{
  v13 = v0;

  v1 = v0[8];
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005E0B28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10000D01C(0xD000000000000027, 0x80000001004E89F0, &v12);
    *(v5 + 12) = 2082;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s trampoline error: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = v0[4];
  sub_100027AC8(v1);
  v9();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100027AC8(uint64_t a1)
{
  swift_errorRetain();
  sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
  type metadata accessor for SecureLocationsError(0);
  if (swift_dynamicCast())
  {
  }

  else
  {

    swift_errorRetain();
    if (!swift_dynamicCast())
    {

      sub_1000284BC();
      a1 = swift_allocError();
      *v2 = 5;
      return a1;
    }
  }

  swift_errorRetain();

  return a1;
}

uint64_t sub_100027BC4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = type metadata accessor for Date();
  v54 = *(v58 - 8);
  v8 = __chkstk_darwin(v58);
  v57 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = v44 - v10;
  v11 = type metadata accessor for GroupID();
  v53 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v56 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v47 = v44 - v14;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0580, &qword_1004D1ED0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_1000093F8(&qword_1005AE908, &type metadata accessor for GroupID, &protocol conformance descriptor for GroupID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10002807C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_1000281B0, v2, 0);
}

uint64_t sub_1000281B0()
{
  v26 = v0;
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[5];
    v25 = _swiftEmptyArrayStorage;
    sub_10000E8E0(0, v2, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v23 = *(v4 + 56);
    v24 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[6];
      v10 = v0[4];
      v24(v9, v7, v10);
      Friend.handle.getter();
      (*v8)(v9, v10);
      v25 = v5;
      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        sub_10000E8E0((v11 > 1), v12 + 1, 1);
        v5 = v25;
      }

      v13 = v0[9];
      v14 = v0[7];
      v5[2] = v12 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v7 += v23;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v15 = v5[2];

  if (!v15)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005E0B28);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v25);
      _os_log_impl(&_mh_execute_header, v17, v18, "Not %{public}s to server since no followings", v19, 0xCu);
      sub_100004984(v20);
    }
  }

  v21 = v0[1];

  return v21(v15 != 0);
}

unint64_t sub_1000284BC()
{
  result = qword_1005A92E0;
  if (!qword_1005A92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A92E0);
  }

  return result;
}

void sub_100028510(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100028574()
{
  v31 = v0;
  if (*(v0 + 236) == 1)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 96) = sub_10000A6F0(v1, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v30 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v30);
      _os_log_impl(&_mh_execute_header, v2, v3, "Sending %{public}s to server", v4, 0xCu);
      sub_100004984(v5);
    }

    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v9 = *(v0 + 48);
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = type metadata accessor for TaskPriority();
    *(v0 + 104) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 112) = v14;
    *(v0 + 120) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v6, 1, 1, v12);
    v15 = *(v8 + 16);
    *(v0 + 128) = v15;
    *(v0 + 136) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v7, v11, v9);
    v16 = sub_1000095A8(&qword_1005B23E0, type metadata accessor for LocationService, &unk_1004D6610);
    *(v0 + 144) = v16;
    v17 = *(v8 + 80);
    *(v0 + 232) = v17;
    v18 = (v17 + 40) & ~v17;
    v19 = swift_allocObject();
    *(v19 + 2) = v10;
    *(v19 + 3) = v16;
    *(v19 + 4) = v10;
    v20 = *(v8 + 32);
    *(v0 + 152) = v20;
    *(v0 + 160) = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(&v19[v18], v7, v9);
    swift_retain_n();
    sub_10020D620(0, 0, v6, &unk_1004D6DF8, v19);

    v21 = swift_task_alloc();
    *(v0 + 168) = v21;
    *v21 = v0;
    v21[1] = sub_100028BF0;

    return daemon.getter();
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005E0B28);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E86E0, &v30);
      _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s should not schedule legacyRefresh", v25, 0xCu);
      sub_100004984(v26);
    }

    v27 = sub_1002087C4(_swiftEmptyArrayStorage);

    v28 = *(v0 + 8);

    return v28(v27);
  }
}

uint64_t sub_100028A04()
{
  v1 = type metadata accessor for LocationRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100028AD8(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 236) = a1;

  return _swift_task_switch(sub_100028574, v2, 0);
}

uint64_t sub_100028BF0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 176) = a1;

  v3 = swift_task_alloc();
  *(v2 + 184) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for CommandManager(0);
  v6 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095A8(&qword_1005A90C8, type metadata accessor for CommandManager, &unk_1004C23F8);
  *v3 = v9;
  v3[1] = sub_100028EA8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t type metadata accessor for CommandManager(uint64_t a1)
{
  result = qword_1005A8F68;
  if (!qword_1005A8F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100028E18(uint64_t a1)
{
  v2 = sub_100028E54();

  return Error<>._domain.getter(a1, v2);
}

unint64_t sub_100028E54()
{
  result = qword_1005B24B0;
  if (!qword_1005B24B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24B0);
  }

  return result;
}

uint64_t sub_100028EA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = v3[4];

    return _swift_task_switch(sub_100382340, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[26] = v6;
    *v6 = v4;
    v6[1] = sub_10038202C;
    v7 = v3[3];

    return sub_100029038(v7);
  }
}

uint64_t sub_100029038(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for LocationRequest();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v2[16] = Priority;
  v2[17] = *(Priority - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_100029298, v1, 0);
}

uint64_t sub_100029164(uint64_t a1)
{
  v4 = *(type metadata accessor for LocationRequest() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_10002952C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10002925C(uint64_t a1)
{
  v2 = sub_100028E54();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100029298()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[12];
  LocationRequest.priority.getter();
  v23 = LocatePriority.rawValue.getter();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v7 = OBJC_IVAR____TtC13findmylocated14CommandManager_coleasedRefreshPriority;
  swift_beginAccess();
  (*(v4 + 16))(v2, v5 + v7, v3);
  v8 = LocatePriority.rawValue.getter();
  v6(v2, v3);
  if (v8 < v23)
  {
    v9 = v0[19];
    v10 = v0[16];
    v11 = v0[17];
    LocationRequest.priority.getter();
    swift_beginAccess();
    (*(v11 + 40))(v5 + v7, v9, v10);
    swift_endAccess();
  }

  v12 = v0[12];
  (*(v0[14] + 16))(v0[15], v0[11], v0[13]);
  v13 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  v14 = *(v12 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v12 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1000295F4(0, v14[2] + 1, 1, v14);
    *(v12 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1000295F4((v16 > 1), v17 + 1, 1, v14);
  }

  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[13];
  v14[2] = v17 + 1;
  (*(v19 + 32))(v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);
  *(v12 + v13) = v14;
  swift_endAccess();
  v21 = swift_task_alloc();
  v0[20] = v21;
  *v21 = v0;
  v21[1] = sub_10007CFD4;

  return sub_1000298AC();
}

uint64_t sub_10002952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10002954C, a4, 0);
}

uint64_t sub_10002954C()
{
  v1 = LocationRequest.toHandles.getter();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1003826B8;

  return sub_100029620(v1);
}

uint64_t sub_100029620(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  v3 = type metadata accessor for Handle();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_100029AE4;

  return daemon.getter();
}

uint64_t sub_100029738(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10004B564(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_1000297BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000297FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100003690;

  return sub_100029CC0(a1, v1);
}

uint64_t sub_1000298AC()
{
  v1[202] = v0;
  v1[203] = *v0;
  type metadata accessor for UUID();
  v1[204] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[205] = v2;
  v1[206] = *(v2 - 8);
  v1[207] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v1[208] = Priority;
  v1[209] = *(Priority - 8);
  v1[210] = swift_task_alloc();
  v1[211] = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  v1[212] = refreshed;
  v1[213] = *(refreshed - 8);
  v1[214] = swift_task_alloc();
  v1[215] = swift_task_alloc();
  v1[216] = swift_task_alloc();
  v1[217] = swift_task_alloc();
  v1[218] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[219] = v5;
  *v5 = v1;
  v5[1] = sub_10002A3C4;

  return daemon.getter();
}

uint64_t sub_100029AE4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_1000095A8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000095A8(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100029D88;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100029CC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100029CE0, 0, 0);
}

uint64_t sub_100029CE0()
{
  v3 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100029EB8;

  return v3();
}

uint64_t sub_100029D88(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[17] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = sub_100381FBC;
  }

  else
  {
    v6 = v3[9];

    v5 = sub_100029FB8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100029EB8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10002A324, 0, 0);
}

uint64_t sub_100029FB8()
{
  v1 = v0[8];
  v2 = sub_10002A170();
  if (*(v1 + 16))
  {

    v2 = v0[8];
  }

  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = v0[12];
    v5 = v2;
    sub_10002B3C0(0, v3, 0);
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = &v5[(*(v4 + 64) + 32) & ~*(v4 + 64)];
    v19 = *(v4 + 56);
    v20 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[13];
      v10 = v0[11];
      v20(v9, v7, v10);
      v11 = Handle.identifier.getter();
      v13 = v12;
      (*v8)(v9, v10);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_10002B3C0((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v7 += v19;
      --v3;
    }

    while (v3);
  }

  v17 = v0[6];
  v0[18] = _swiftEmptyArrayStorage;
  v0[19] = v17;

  return _swift_task_switch(sub_10002B3E0, v17, 0);
}

char *sub_10002A170()
{
  v16 = &_swiftEmptySetSingleton;
  v1 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v11 = v16[2];
      if (!v11)
      {
        goto LABEL_14;
      }

      v12 = sub_10002C714(v16[2], 0);
      v13 = *(type metadata accessor for Handle() - 8);
      v14 = sub_10002C73C(&v15, &v12[(*(v13 + 80) + 32) & ~*(v13 + 80)], v11, v16);
      sub_10000E3F8(v15);
      if (v14 != v11)
      {
        __break(1u);
LABEL_14:

        return _swiftEmptyArrayStorage;
      }

      return v12;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        result = sub_10002B8E4(v10);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002A324()
{
  v1 = v0[5];
  v2 = NSXPCConnection.codeSigningIdentity.getter();
  v4 = v3;

  v5 = v0[2];
  *v5 = v2;
  v5[1] = v4;
  v6 = v0[1];

  return v6();
}

uint64_t sub_10002A3C4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[220] = a1;

  v3 = swift_task_alloc();
  v2[221] = v3;
  v4 = type metadata accessor for Daemon();
  v2[222] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100008FC0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[223] = v6;
  v7 = sub_100008FC0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_10002A6C0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002A5A4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1004AA3B0;
  }

  else
  {

    v2 = sub_10002A838;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10002A6C0(uint64_t a1)
{
  v3 = *v2;
  v3[224] = a1;
  v3[225] = v1;

  if (v1)
  {
    v4 = v3[202];

    return _swift_task_switch(sub_10007E4F8, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[226] = v5;
    *v5 = v3;
    v5[1] = sub_10002AB70;

    return daemon.getter();
  }
}

uint64_t sub_10002A838()
{
  v21 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2 == 0xD000000000000018 && 0x80000001004EB620 == v1;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v4 = static SystemInfo.isInternalBuild.getter();
  }

  else
  {
    if (qword_1005A84C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A6F0(v8, qword_1005E0B10);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10000D01C(v2, v1, &v20);
      _os_log_impl(&_mh_execute_header, v9, v10, "Checking if %s is running", v11, 0xCu);
      sub_100004984(v12);
    }

    v13 = v0[6];
    v14 = sub_10002AD84(v2, v1);

    if (v13)
    {
      if (qword_1005A84C0 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v8, qword_1005E0B10);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v19;
        *v18 = v19;
        _os_log_impl(&_mh_execute_header, v15, v16, "RunningBoardProcess threw an error: %{public}@", v17, 0xCu);
        sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);
      }

      else
      {
      }

      v4 = 0;
    }

    else
    {
      v4 = v14;
    }
  }

  v5 = v0[1];
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_10002AB70(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1816) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1824) = v5;
  v6 = type metadata accessor for LocationService(0);
  v7 = sub_100008FC0(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v5 = v4;
  v5[1] = sub_10002B128;
  v8 = *(v2 + 1784);
  v9 = *(v2 + 1776);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

char *sub_10002AD24()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005AB8C8, &qword_1004C5728);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

char *sub_10002AD54()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005AB8D0, &unk_1004C5730);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

BOOL sub_10002AD84(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() predicateMatchingBundleIdentifier:v5];

  v25 = 0;
  v7 = [v4 statesForPredicate:v6 withDescriptor:0 error:&v25];

  v8 = v25;
  if (!v7)
  {
    v13 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v14;
  }

  sub_1004AACAC();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v8;

  if (v9 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v11 = *(v9 + 32);
    }

    v12 = v11;

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:
  if (qword_1005A84C0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005E0B10);
  v16 = v12;

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_10000D01C(a1, a2, &v25);
    *(v19 + 12) = 2080;
    if (v12)
    {
      [v16 taskState];
    }

    sub_10004B564(&qword_1005B5AC0, &qword_1004DD410);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, &v25);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "RunningBoardProcess: %s %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  if (v12)
  {
    if ([v16 taskState] == 2)
    {

      return 1;
    }

    else
    {
      v23 = [v16 taskState];

      return v23 == 4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B128(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[229] = a1;
  v3[230] = v1;

  if (v1)
  {
    v5 = v3[202];

    return _swift_task_switch(sub_10007E5E4, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[231] = v6;
    *v6 = v4;
    v6[1] = sub_10007D140;

    return sub_100021A68();
  }
}

char *sub_10002B2B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
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

char *sub_10002B3C0(char *a1, int64_t a2, char a3)
{
  result = sub_10002B2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10002B3E0()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 160) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_100381D04;

  return sub_10001C61C(v4, 1);
}

unint64_t sub_10002B544()
{
  result = qword_1005B24A0;
  if (!qword_1005B24A0)
  {
    sub_10004B610(&qword_1005B2498, &qword_1004D6A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B24A0);
  }

  return result;
}

uint64_t sub_10002B5A8()
{
  v1 = *(v0 + 24);
  *(v0 + 152) = dispatch thunk of XPCClientConnectionPool.isEmpty.getter() & 1;

  return _swift_task_switch(sub_10002B61C, v1, 0);
}

uint64_t sub_10002B61C()
{
  v13 = v0;
  if (*(v0 + 152))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v12);
    v6 = "Not %{public}s to server since no clients connected";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v2, v3, v6, v4, 0xCu);
    sub_100004984(v5);

LABEL_15:

    v10 = *(v0 + 8);

    return v10(0);
  }

  v7 = *(sub_10002A170() + 2);

  if (!v7)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005E0B28);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD00000000000001DLL, 0x80000001004E86C0, &v12);
    v6 = "Not %{public}s to server since no client is interested legacy refresh";
    goto LABEL_14;
  }

  v8 = *(v0 + 104);

  return _swift_task_switch(sub_10002C754, v8, 0);
}

uint64_t sub_10002B8E4(uint64_t a1)
{
  v2 = type metadata accessor for Handle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  result = __chkstk_darwin(v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_10002BAF4(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002BAF4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10002BDD4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10002BDD4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Handle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10002C3B8(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for Handle, &qword_1005B05E0, &qword_1004D1F28);
      goto LABEL_12;
    }

    sub_10002C09C(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005A91B8, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002C09C(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for Handle();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B05E0, &qword_1004D1F28);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_10002C3B8(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for Handle();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_10004B564(&qword_1005B05E0, &qword_1004D1F28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_10002C754()
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
  v5[1] = sub_10002807C;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_10002C8B8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 920) = a1;

  v3 = swift_task_alloc();
  *(v2 + 928) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocalStorageService();
  v6 = sub_1000093F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000093F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v3 = v9;
  v3[1] = sub_10002CA94;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10002CA94(uint64_t a1)
{
  v3 = *v2;
  v3[117] = a1;
  v3[118] = v1;

  if (v1)
  {
    v4 = v3[106];
    v5 = sub_10021D11C;
  }

  else
  {

    v5 = sub_10002CBBC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10002CBBC()
{
  v1 = v0[117];
  v2 = v0[105];
  v3 = swift_task_alloc();
  v0[119] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[120] = v4;
  v5 = sub_10004B564(&qword_1005B0578, &qword_1004D5CA0);
  v0[121] = v5;
  *v4 = v0;
  v4[1] = sub_10002556C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 103, 0, 0, 0x2873646E65697266, 0xEC000000293A666FLL, sub_10002CEF8, v3, v5);
}

uint64_t sub_10002CCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004B564(&qword_1005B1C48, &qword_1004D5C78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  type metadata accessor for WorkItemQueue.WorkItem();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  (*(v8 + 32))(v12 + v11, v10, v7);

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();
}

uint64_t sub_10002CF00(uint64_t a1)
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

uint64_t sub_10002CF28(uint64_t a1)
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

uint64_t sub_10002CF44(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005F6C(result, a2);
  }

  return result;
}

uint64_t sub_10002CF58()
{
  v1 = *(v0 + 8);
  sub_10002CF44(v1, *(v0 + 16));
  return v1;
}

uint64_t sub_10002CF8C(uint64_t a1)
{
  v77 = type metadata accessor for ClientID();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100030004(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_10002FFEC(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_10000E3F8(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_10024B0F0(v14, v75);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_100002CE0(v37, &qword_1005B0690, &qword_1004D2018);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_100030004((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_10024B0F0(v14, v76);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_100002CE0(v43, &qword_1005B0690, &qword_1004D2018);
LABEL_33:
        v74 = v4;
        *(v16 + 2) = v4;
        v37 = v75;
        sub_10024B0F0(v14, v75);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          goto LABEL_33;
        }

        sub_100002CE0(v14, &qword_1005B0690, &qword_1004D2018);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_10024B0F0(v14, v76);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_100002CE0(v14, &qword_1005B0690, &qword_1004D2018);
    sub_10000E3F8(v65);
    result = sub_100002CE0(v37, &qword_1005B0690, &qword_1004D2018);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D650(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002D668()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 88);
  (*(v1 + 16))(v2, *(v0 + 192), v3);
  (*(v1 + 56))(v2, 0, 1, v3);
  LOBYTE(v3) = sub_10002E2C8(v2, v4);
  sub_100002CE0(v2, &qword_1005A96E0, &qword_1004C2A80);
  if ((v3 & 1) == 0)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    v11 = *(v0 + 232);

    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    goto LABEL_5;
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 192);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = *(v0 + 96);
  *(swift_task_alloc() + 16) = v6;
  sub_10003002C(sub_10002E2A8, v10, v9);
  *(v0 + 272) = v5;

  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(*(v0 + 136), &qword_1005B0690, &qword_1004D2018);
LABEL_15:
    v28 = swift_task_alloc();
    *(v0 + 280) = v28;
    *v28 = v0;
    v28[1] = sub_1004AA55C;

    return sub_1000267B4();
  }

  v19 = *(v0 + 288);
  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  (*(v21 + 32))(v20, *(v0 + 136), v22);
  ClientID.connectionType.getter();
  (*(v26 + 104))(v24, v19, v25);
  LOBYTE(v19) = static ClientID.ConnectionType.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v24, v25);
  v27(v23, v25);
  (*(v21 + 8))(v20, v22);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v11 = *(v0 + 272);
    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    *(v0 + 224) = *(v0 + 56);
LABEL_5:
    *(v0 + 232) = v11;
    if ((*(v0 + 200) & 0x8000000000000000) != 0)
    {
      break;
    }

    v14 = v12;
    v15 = v13;
    if (v12)
    {
LABEL_11:
      v17 = (v14 - 1) & v14;

      goto LABEL_20;
    }

    v16 = v13;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v15 >= ((*(v0 + 216) + 64) >> 6))
      {
        goto LABEL_24;
      }

      v14 = *(*(v0 + 208) + 8 * v15);
      ++v16;
      if (v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_28:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v30 = __CocoaSet.Iterator.next()();
  if (!v30)
  {
    goto LABEL_24;
  }

  *(v0 + 72) = v30;
  type metadata accessor for LocationServiceClient();
  swift_dynamicCast();
  v18 = *(v0 + 64);
  v15 = v13;
  v17 = v12;
LABEL_20:
  *(v0 + 248) = v15;
  *(v0 + 256) = v17;
  *(v0 + 240) = v18;
  if (v18)
  {
    v35 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v31 = swift_task_alloc();
    *(v0 + 264) = v31;
    *v31 = v0;
    v31[1] = sub_10002E68C;
    v32 = *(v0 + 192);

    return v35(v32);
  }

LABEL_24:
  sub_10000E3F8(*(v0 + 200));

  v33 = *(v0 + 8);
  v34 = *(v0 + 224);

  return v33(v34);
}

uint64_t sub_10002DB88@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v33 = a1;
  v29 = a4;
  v39 = a3(0);
  v7 = __chkstk_darwin(v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v5;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v5 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002DE4C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v11 = __chkstk_darwin(v10 - 8);
  v26 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - v14;
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  ClientID.xpcConnectionID.getter();
  (*(v4 + 16))(v15, a2, v3);
  (*(v4 + 56))(v15, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_100005F04(v17, v9, &qword_1005A96E0, &qword_1004C2A80);
  sub_100005F04(v15, &v9[v18], &qword_1005A96E0, &qword_1004C2A80);
  v19 = *(v4 + 48);
  if (v19(v9, 1, v3) != 1)
  {
    sub_100005F04(v9, v26, &qword_1005A96E0, &qword_1004C2A80);
    if (v19(&v9[v18], 1, v3) != 1)
    {
      v21 = &v9[v18];
      v22 = v25;
      (*(v4 + 32))(v25, v21, v3);
      sub_10001AEBC(&qword_1005A9FC8, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v4 + 8);
      v23(v22, v3);
      sub_100002CE0(v15, &qword_1005A96E0, &qword_1004C2A80);
      sub_100002CE0(v17, &qword_1005A96E0, &qword_1004C2A80);
      v23(v26, v3);
      sub_100002CE0(v9, &qword_1005A96E0, &qword_1004C2A80);
      return v20 & 1;
    }

    sub_100002CE0(v15, &qword_1005A96E0, &qword_1004C2A80);
    sub_100002CE0(v17, &qword_1005A96E0, &qword_1004C2A80);
    (*(v4 + 8))(v26, v3);
    goto LABEL_6;
  }

  sub_100002CE0(v15, &qword_1005A96E0, &qword_1004C2A80);
  sub_100002CE0(v17, &qword_1005A96E0, &qword_1004C2A80);
  if (v19(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_100002CE0(v9, &qword_1005B0B70, &qword_1004D6B30);
    v20 = 0;
    return v20 & 1;
  }

  sub_100002CE0(v9, &qword_1005A96E0, &qword_1004C2A80);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_10002E2C8(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v30 = &v23 - v8;
  v25 = sub_10004B564(&qword_1005B0B70, &qword_1004D6B30);
  __chkstk_darwin(v25);
  v10 = &v23 - v9;
  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = (v4 + 48);
  v23 = (v4 + 32);
  v13 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = *(v7 + 72);
  v27 = (v4 + 8);
  v28 = v14;
  v15 = v25;
  while (1)
  {
    v16 = *(v15 + 48);
    sub_100005F04(v13, v10, &qword_1005A96E0, &qword_1004C2A80);
    sub_100005F04(v29, &v10[v16], &qword_1005A96E0, &qword_1004C2A80);
    v17 = *v12;
    if ((*v12)(v10, 1, v3) == 1)
    {
      break;
    }

    sub_100005F04(v10, v30, &qword_1005A96E0, &qword_1004C2A80);
    if (v17(&v10[v16], 1, v3) == 1)
    {
      (*v27)(v30, v3);
      goto LABEL_4;
    }

    v18 = v24;
    (*v23)(v24, &v10[v16], v3);
    sub_1000094D0(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = v12;
    v20 = *v27;
    v21 = v18;
    v15 = v25;
    (*v27)(v21, v3);
    v20(v30, v3);
    v12 = v19;
    sub_100002CE0(v10, &qword_1005A96E0, &qword_1004C2A80);
    if (v26)
    {
      return 1;
    }

LABEL_5:
    v13 += v28;
    if (!--v11)
    {
      return 0;
    }
  }

  if (v17(&v10[v16], 1, v3) != 1)
  {
LABEL_4:
    sub_100002CE0(v10, &qword_1005B0B70, &qword_1004D6B30);
    goto LABEL_5;
  }

  sub_100002CE0(v10, &qword_1005A96E0, &qword_1004C2A80);
  return 1;
}

uint64_t sub_10002E68C()
{

  return _swift_task_switch(sub_10002D668, 0, 0);
}

uint64_t sub_10002E788(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = _swiftEmptyArrayStorage;
  v3 = *(v2 + 80);
  if ((v3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for LocationServiceClient();
    sub_10002676C(&qword_1005B23F0, type metadata accessor for LocationServiceClient, &unk_1004D66B0);
    Set.Iterator.init(_cocoa:)();
    result = *(v2 + 16);
    v5 = *(v2 + 24);
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v5 = v3 + 56;
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

    v8 = v11 & *(v3 + 56);

    v6 = 0;
  }

  *(v2 + 200) = result;
  *(v2 + 208) = v5;
  *(v2 + 288) = enum case for ClientID.ConnectionType.background(_:);
  *(v2 + 216) = v7;
  *(v2 + 224) = _swiftEmptyArrayStorage;
  *(v2 + 232) = 0;
  if (result < 0)
  {
    v17 = __CocoaSet.Iterator.next()();
    if (!v17)
    {
LABEL_20:
      sub_10000E3F8(*(v2 + 200));

      v20 = *(v2 + 8);
      v21 = *(v2 + 224);

      return v20(v21);
    }

    *(v2 + 72) = v17;
    type metadata accessor for LocationServiceClient();
    swift_dynamicCast();
    v16 = *(v2 + 64);
    v13 = v6;
    v15 = v8;
LABEL_16:
    *(v2 + 248) = v13;
    *(v2 + 256) = v15;
    *(v2 + 240) = v16;
    if (v16)
    {
      v22 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
      v18 = swift_task_alloc();
      *(v2 + 264) = v18;
      *v18 = v2;
      v18[1] = sub_10002E68C;
      v19 = *(v2 + 192);

      return v22(v19);
    }

    goto LABEL_20;
  }

  v12 = v8;
  v13 = v6;
  if (v8)
  {
LABEL_13:
    v15 = (v12 - 1) & v12;

    goto LABEL_16;
  }

  v14 = v6;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v7 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002EA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = type metadata accessor for ClientID.ConnectionType();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for ClientID();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10002E788, 0, 0);
}

uint64_t sub_10002EC84()
{
  v1 = sub_10002F198();
  v0[12] = v1;
  v2 = sub_10002ED98(v1);
  v0[13] = v2;

  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100345ECC;
  v4 = v0[11];

  return sub_10002EA8C(v4, v2, v1);
}

void *sub_10002ED98(uint64_t a1)
{
  v42 = type metadata accessor for ClientID();
  v3 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - v6;
  v8 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v8)
  {
    v39 = v7;
    v32[1] = v1;
    v45 = _swiftEmptyArrayStorage;
    sub_10002F158(0, v8, 0);
    v44 = v45;
    v10 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v33 = a1 + 64;
    v34 = v8;
    v35 = v3;
    v36 = a1 + 56;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v43 = *(a1 + 36);
      v16 = *(a1 + 48) + *(v3 + 72) * v11;
      v17 = v41;
      v18 = a1;
      v19 = v42;
      (*(v3 + 16))(v41, v16, v42);
      v20 = v39;
      ClientID.xpcConnectionID.getter();
      (*(v3 + 8))(v17, v19);
      v21 = v44;
      v45 = v44;
      v23 = v44[2];
      v22 = v44[3];
      if (v23 >= v22 >> 1)
      {
        sub_10002F158((v22 > 1), v23 + 1, 1);
        v21 = v45;
      }

      v21[2] = v23 + 1;
      v24 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v44 = v21;
      result = sub_1000176A8(v20, v21 + v24 + *(v40 + 72) * v23, &qword_1005A96E0, &qword_1004C2A80);
      v13 = 1 << *(v18 + 32);
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      a1 = v18;
      v10 = v36;
      v25 = *(v36 + 8 * v15);
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (v43 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v26 = v25 & (-2 << (v11 & 0x3F));
      if (v26)
      {
        v13 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v34;
        v3 = v35;
      }

      else
      {
        v27 = v15 << 6;
        v28 = v15 + 1;
        v14 = v34;
        v29 = (v33 + 8 * v15);
        v3 = v35;
        while (v28 < (v13 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            result = sub_10002F14C(v11, v43, 0);
            v13 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        result = sub_10002F14C(v11, v43, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      if (v12 == v14)
      {
        return v44;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002F14C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_10002F158(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10023A074(a1, a2, a3, *v3, &qword_1005B0610, &qword_1004D1F40, &qword_1005A96E0, &qword_1004C2A80);
  *v3 = result;
  return result;
}

void *sub_10002F198()
{
  v35 = &_swiftEmptySetSingleton;
  swift_beginAccess();

  sub_100341140(v1);
  v3 = v2;

  sub_10034137C(v3, &v35);

  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v34[0] = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v33 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
LABEL_6:
  if (v9)
  {
    v12 = v11;
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v33 + 56) + 24 * (v13 | (v12 << 6));
    v15 = *v14;
    v16 = 1 << *(*v14 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v20 = 0;
    if (v18)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        swift_bridgeObjectRelease_n();

        sub_10002FFC0(_swiftEmptyArrayStorage);
        v11 = v12;
        goto LABEL_6;
      }

      v18 = *(v15 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        do
        {
LABEL_20:
          v18 &= v18 - 1;

          sub_10002CF8C(v22);
        }

        while (v18);
        continue;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        sub_10002F894(v34[0]);

        if (qword_1005A84C8 != -1)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_23:
  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005E0B28);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34[0] = v27;
    *v26 = 136446210;
    swift_beginAccess();
    type metadata accessor for ClientID();
    sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);

    v28 = Set.description.getter();
    v30 = v29;

    v31 = sub_10000D01C(v28, v30, v34);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Active clients: %{public}s", v26, 0xCu);
    sub_100004984(v27);
  }

  swift_beginAccess();
  return v35;
}

uint64_t sub_10002F5B4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000093F8(&qword_1005AE9D8, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_10002F9DC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10002F894(uint64_t a1)
{
  v2 = type metadata accessor for ClientID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10002F5B4(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_10002F9DC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100236530(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100237D20(&type metadata accessor for ClientID, &qword_1005B05E8, &qword_1004D6100);
      goto LABEL_12;
    }

    sub_10002FCA4(v10 + 1);
  }

  v12 = *v3;
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000093F8(&qword_1005AE9D8, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10002FCA4(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for ClientID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_10004B564(&qword_1005B05E8, &qword_1004D6100);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_100030060@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD980, &qword_1004CAE98);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100031AD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v47 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v47 = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 2;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v47 = 4;
  v45 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = v15;
  v47 = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v47 = 7;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 8;
  KeyedDecodingContainer.decode(_:forKey:)();
  v20 = v19;
  v47 = 9;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  v47 = 10;
  KeyedDecodingContainer.decode(_:forKey:)();
  v24 = v23;
  v47 = 11;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v25;
  v47 = 12;
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 13;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 14;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 15;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = 16;
  KeyedDecodingContainer.decode(_:forKey:)();
  v40 = v27;
  v47 = 17;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 18;
  KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v28;
  v47 = 19;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = 20;
  KeyedDecodingContainer.decode(_:forKey:)();
  v36 = v29;
  v35 = v12 & 1;
  v46 &= 1u;
  v43 &= 1u;
  v44 &= 1u;
  v30 = v42 & 1;
  v31 = v37 & 1;
  (*(v6 + 8))(v8, v5);
  result = sub_100004984(a1);
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v35;
  *(a2 + 24) = v14;
  *(a2 + 32) = v45;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v46;
  *(a2 + 64) = v20;
  *(a2 + 72) = v22;
  *(a2 + 80) = v24;
  *(a2 + 88) = v26;
  v33 = v43;
  *(a2 + 96) = v44;
  *(a2 + 97) = v33;
  *(a2 + 98) = v30;
  *(a2 + 99) = v41;
  *(a2 + 104) = v40;
  *(a2 + 112) = v39;
  *(a2 + 120) = v38;
  *(a2 + 128) = v31;
  *(a2 + 136) = v36;
  return result;
}

void *sub_100030588(uint64_t a1)
{
  v1 = sub_10004B564(&qword_1005AF468, &qword_1004D06C0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v33 - v5;
  v7 = type metadata accessor for Row();
  v34 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v33 - v12;
  __chkstk_darwin(v11);
  v15 = v33 - v14;
  v16 = v42;
  result = Connection.prepare(_:)();
  if (!v16)
  {
    v41 = v10;
    v35 = v13;
    v36 = v15;
    v37 = v6;
    v18 = result;

    v19 = dispatch thunk of _AnySequenceBox._underestimatedCount.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100032AE8(0, v19 & ~(v19 >> 63), 0);
    v20 = v45;
    v33[1] = v18;
    result = dispatch thunk of _AnySequenceBox._makeIterator()();
    v42 = result;
    if (v19 < 0)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (v19)
    {
      v38 = (v34 + 16);
      v39 = (v34 + 8);
      v40 = (v34 + 48);
      do
      {
        dispatch thunk of _AnyIteratorBoxBase.next()();
        result = (*v40)(v4, 1, v7);
        if (result == 1)
        {
          goto LABEL_17;
        }

        v21 = v41;
        (*v38)(v41, v4, v7);
        sub_100030AA8(v21, v44);
        (*v39)(v4, v7);
        v45 = v20;
        v23 = v20[2];
        v22 = v20[3];
        if (v23 >= v22 >> 1)
        {
          sub_100032AE8((v22 > 1), v23 + 1, 1);
          v20 = v45;
        }

        v20[2] = v23 + 1;
        memcpy(&v20[60 * v23 + 4], v44, 0x1E0uLL);
      }

      while (--v19);
    }

    v24 = v37;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v25 = v34;
    v40 = *(v34 + 48);
    v41 = (v34 + 48);
    if ((v40)(v24, 1, v7) != 1)
    {
      v27 = *(v25 + 32);
      v26 = v25 + 32;
      v38 = (v26 - 24);
      v39 = v27;
      do
      {
        v28 = v36;
        (v39)(v36, v24, v7);
        v29 = v35;
        (*(v26 - 16))(v35, v28, v7);
        sub_100030AA8(v29, v43);
        (*v38)(v28, v7);
        v45 = v20;
        v30 = v7;
        v32 = v20[2];
        v31 = v20[3];
        if (v32 >= v31 >> 1)
        {
          sub_100032AE8((v31 > 1), v32 + 1, 1);
          v20 = v45;
        }

        v20[2] = v32 + 1;
        memcpy(&v20[60 * v32 + 4], v43, 0x1E0uLL);
        v24 = v37;
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v7 = v30;
      }

      while ((v40)(v24, 1, v30) != 1);
    }

    sub_100002CE0(v24, &qword_1005AF468, &qword_1004D06C0);
    sub_10004B564(&qword_1005B1DA0, &qword_1004D6018);
    result = swift_allocObject();
    result[2] = v20;
  }

  return result;
}

void *sub_100030AA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  sub_10003170C(v54);
  if (qword_1005A82F0 != -1)
  {
    swift_once();
  }

  v6 = sub_10004B564(&qword_1005AF038, &unk_1004D0240);
  sub_10000A6F0(v6, qword_1005E05B8);
  Row.subscript.getter();
  if (*(&__src[0] + 1) >> 60 == 15)
  {
    v50 = v54[6];
    v51 = v54[7];
    v52 = v54[8];
    v53 = v54[9];
    v46 = v54[2];
    v47 = v54[3];
    v48 = v54[4];
    v49 = v54[5];
    v7 = v54[0];
    v8 = v54[1];
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    sub_10033C018();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {
      v9 = type metadata accessor for Row();
      (*(*(v9 - 8) + 8))(a1, v9);

      return sub_10001A794(*&__src[0], *(&__src[0] + 1));
    }

    sub_10001A794(*&__src[0], *(&__src[0] + 1));

    v50 = __src[6];
    v51 = __src[7];
    v52 = __src[8];
    v53 = __src[9];
    v46 = __src[2];
    v47 = __src[3];
    v48 = __src[4];
    v49 = __src[5];
    v7 = __src[0];
    v8 = __src[1];
  }

  v44 = v7;
  v45 = v8;
  if (qword_1005A82F8 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005E05D0);
  Row.subscript.getter();
  if (*(&v30 + 1) >> 60 == 15)
  {
    sub_10017E0C8(&v35);
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    sub_10033BF94();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_10001A794(v30, *(&v30 + 1));

      sub_10017E0C8(__src);
      v3 = 0;
    }

    else
    {
      sub_10001A794(v30, *(&v30 + 1));

      __src[6] = v24;
      __src[7] = v25;
      __src[8] = v26;
      __src[2] = v20;
      __src[3] = v21;
      __src[4] = v22;
      __src[5] = v23;
      __src[0] = v18;
      __src[1] = v19;
    }

    v41 = __src[6];
    v42 = __src[7];
    v43 = __src[8];
    v37 = __src[2];
    v38 = __src[3];
    v39 = __src[4];
    v40 = __src[5];
    v35 = __src[0];
    v36 = __src[1];
  }

  if (qword_1005A8300 != -1)
  {
    swift_once();
  }

  sub_10000A6F0(v6, qword_1005E05E8);
  Row.subscript.getter();
  v11 = *(&__src[0] + 1);
  if (*(&__src[0] + 1) >> 60 == 15)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v30 = 0u;
  }

  else
  {
    v12 = *&__src[0];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    sub_10033BF10();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v3)
    {
      v13 = type metadata accessor for Row();
      (*(*(v13 - 8) + 8))(a1, v13);
      sub_100002CE0(&v44, &qword_1005A9328, &unk_1004C7F20);

      return sub_10001A794(v12, v11);
    }

    sub_10001A794(v12, v11);

    v32 = __src[2];
    v33 = __src[3];
    v34 = __src[4];
    v30 = __src[0];
    v31 = __src[1];
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1005A82E8 != -1)
  {
    swift_once();
  }

  v14 = sub_10004B564(&qword_1005AF028, &qword_1004D0238);
  sub_10000A6F0(v14, qword_1005E05A0);
  Row.subscript.getter();
  v15 = v28;
  v16 = v29;
  sub_1000325D0();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v17 = type metadata accessor for Row();
  (*(*(v17 - 8) + 8))(a1, v17);
  if (v3)
  {
    sub_100002CE0(&v30, &qword_1005AD7A8, &qword_1004CA280);
    sub_100002CE0(&v44, &qword_1005A9328, &unk_1004C7F20);
    sub_1000049D0(v15, v16);
  }

  else
  {

    sub_1000049D0(v15, v16);
    __src[2] = v20;
    __src[3] = v21;
    __src[4] = v22;
    __src[5] = v23;
    __src[0] = v18;
    __src[1] = v19;
    __src[14] = v52;
    __src[15] = v53;
    __src[12] = v50;
    __src[13] = v51;
    __src[10] = v48;
    __src[11] = v49;
    __src[8] = v46;
    __src[9] = v47;
    __src[6] = v44;
    __src[7] = v45;
    __src[22] = v41;
    __src[23] = v42;
    __src[18] = v37;
    __src[19] = v38;
    __src[20] = v39;
    __src[21] = v40;
    __src[16] = v35;
    __src[17] = v36;
    __src[26] = v31;
    __src[27] = v32;
    __src[28] = v33;
    __src[29] = v34;
    __src[24] = v43;
    __src[25] = v30;
    return memcpy(a2, __src, 0x1E0uLL);
  }
}

uint64_t sub_1000311A8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD960, &qword_1004CAE90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_100031B24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v37) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v31 = v9;
  LOBYTE(v32) = 1;
  sub_100032528();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v37;
  LOBYTE(v37) = 2;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  v30 = v13;
  LOBYTE(v37) = 3;
  *&v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v27 + 1) = v14;
  LOBYTE(v37) = 4;
  *&v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v26 + 1) = v15;
  sub_10004B564(&qword_1005AD940, &qword_1004CAE80);
  v46[0] = 5;
  sub_10017E3D0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v25 = v47;
  v32 = v26;
  v16 = v29;
  LOBYTE(v33) = v29;
  v17 = v28;
  *(&v33 + 1) = v47;
  *&v34 = v28;
  v18 = v30;
  v19 = v31;
  *(&v34 + 1) = v30;
  *&v35 = v31;
  *(&v35 + 1) = v11;
  v20 = *(&v27 + 1);
  v36 = v27;
  sub_100032100(&v32, &v37);
  sub_100004984(a1);
  v37 = v26;
  v38 = v16;
  v39 = v25;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v11;
  v44 = v27;
  v45 = v20;
  result = sub_1000320D0(&v37);
  v22 = v35;
  a2[2] = v34;
  a2[3] = v22;
  a2[4] = v36;
  v23 = v33;
  *a2 = v32;
  a2[1] = v23;
  return result;
}

__n128 sub_1000315FC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000311A8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_100031648@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100030060(a1, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v8[8];
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000316A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

double sub_10003170C(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t storeEnumTagSinglePayload for ServerStatusCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000317D8(char a1)
{
  result = 0x6F6C6C6F4678616DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      v3 = 5;
      goto LABEL_11;
    case 4:
      result = 0x6E6569724678616DLL;
      break;
    case 5:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 18:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 17:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0x464D466B636F6C62;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      v3 = 13;
LABEL_11:
      result = v3 | 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000022;
      break;
    case 16:
      result = 0x6E6F697461636F6CLL;
      break;
    case 20:
      result = 0x5465636172474C65;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

__n128 sub_100031AA4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

unint64_t sub_100031AD0()
{
  result = qword_1005AD920;
  if (!qword_1005AD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD920);
  }

  return result;
}

unint64_t sub_100031B24()
{
  result = qword_1005AD930;
  if (!qword_1005AD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD930);
  }

  return result;
}

uint64_t sub_100031B78@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AD958, &qword_1004CAE88);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_1000328C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  LOBYTE(v44[0]) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v11 = v10;
  v37 = v9;
  LOBYTE(v44[0]) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(&v36 + 1) = v13;
  *&v36 = v12;
  LOBYTE(v44[0]) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v14;
  LOBYTE(v44[0]) = 3;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  LOBYTE(v38) = 4;
  sub_10001CCC4(&qword_1005A9E80, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v44[0];
  LOBYTE(v44[0]) = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v33 = v17;
  LOBYTE(v44[0]) = 6;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v16;
  v30 = v18;
  v54 = 7;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v19;
  v35 &= 1u;
  v21 = v35;
  v30 &= 1u;
  (*(v6 + 8))(v8, v5);
  v22 = v37;
  *&v38 = v37;
  *(&v38 + 1) = v11;
  v23 = v36;
  v39 = v36;
  *&v40 = v15;
  BYTE8(v40) = v21;
  *&v41 = v34;
  *(&v41 + 1) = v32;
  *&v42 = v33;
  LOBYTE(v21) = v30;
  BYTE8(v42) = v30;
  v24 = v31;
  *&v43 = v31;
  *(&v43 + 1) = v20;
  sub_100032B38(&v38, v44);
  sub_100004984(a1);
  v44[0] = v22;
  v44[1] = v11;
  v45 = __PAIR128__(*(&v36 + 1), v23);
  v46 = v15;
  v47 = v35;
  v48 = v34;
  v49 = v32;
  v50 = v33;
  v51 = v21;
  v52 = v24;
  v53 = v20;
  result = sub_100032B08(v44);
  v26 = v41;
  a2[2] = v40;
  a2[3] = v26;
  v27 = v43;
  a2[4] = v42;
  a2[5] = v27;
  v28 = v39;
  *a2 = v38;
  a2[1] = v28;
  return result;
}

uint64_t sub_100032138@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10058B320, *a1);

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

double sub_1000321FC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100031B78(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

unint64_t sub_10003224C()
{
  v1 = *v0;
  v2 = 0x61636F4C65646968;
  v3 = 0xD000000000000013;
  v4 = 0x457972616D697270;
  if (v1 != 4)
  {
    v4 = 0x657469726F766166;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

unint64_t sub_100032324()
{
  v1 = *v0;
  v2 = 0x6449656369766564;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x656369766544656DLL;
  }

  v4 = 0x736C69616D65;
  if (v1 != 4)
  {
    v4 = 0x6D614E7473726966;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6954656369766564;
  if (v1 != 2)
  {
    v5 = 0x656C626967696C65;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t getEnumTagSinglePayload for IDSMessageValidityMetric.Field(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1000324D4()
{
  result = qword_1005AD9B0;
  if (!qword_1005AD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD9B0);
  }

  return result;
}

unint64_t sub_100032528()
{
  result = qword_1005AD968;
  if (!qword_1005AD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD968);
  }

  return result;
}

uint64_t sub_10003257C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000325D0()
{
  result = qword_1005AD828;
  if (!qword_1005AD828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD828);
  }

  return result;
}

__n128 sub_100032624(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsPushCommands(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for SecureLocationsCachedSharedKey.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsPushCommands(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t storeEnumTagSinglePayload for SecureLocationsCachedSharedKey.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000328C0()
{
  result = qword_1005AD910;
  if (!qword_1005AD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AD910);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IDSMessageValidityMetric.Field(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_1000329C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004B564(&qword_1005B0530, &qword_1004D1E68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 480);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[480 * v8])
    {
      memmove(v12, v13, 480 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100032AE8(char *a1, int64_t a2, char a3)
{
  result = sub_1000329C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100032B70()
{
  *&v25 = 0;
  *(&v25 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(129);
  v22 = v25;
  v1._object = 0x80000001004E3010;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  v24 = *v0;
  v25 = v24;
  sub_100005F04(&v25, &v23, &qword_1005A96A8, &qword_1004C3320);
  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x496563697665640ALL;
  v3._object = 0xEA00000000003A64;
  String.append(_:)(v3);
  v23 = v0[1];
  v24 = v23;
  sub_100005F04(&v24, &v21, &qword_1005A96A8, &qword_1004C3320);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x80000001004E3030;
  String.append(_:)(v5);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x80000001004E3050;
  String.append(_:)(v6);
  if (*(v0 + 40))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 40))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0x3A736C69616D650ALL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  v11._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x614E74737269660ALL;
  v12._object = 0xEB000000003A656DLL;
  String.append(_:)(v12);
  String.append(_:)(*(v0 + 56));
  v13._object = 0x80000001004E3070;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  if (*(v0 + 72))
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 0x6369766544656D0ALL;
  v17._object = 0xEC0000003A644965;
  String.append(_:)(v17);
  v23 = v0[5];
  v21 = v0[5];
  sub_100005F04(&v23, &v20, &qword_1005A96A8, &qword_1004C3320);
  v18._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v18);

  return v22;
}

uint64_t sub_100032E74(uint64_t a1)
{
  v115 = v1;
  if (static SystemInfo.isInternalBuild.getter())
  {
    sub_100005F04(v1 + 4816, v1 + 16, &qword_1005A90D8, &unk_1004C6AB0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    sub_100002CE0(v1 + 4816, &qword_1005A90D8, &unk_1004C6AB0);
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_29;
    }

    v112 = v3;
    v4 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v4 = 141559811;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    memcpy((v1 + 2896), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 2896) == 1)
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    else
    {
      v11 = *(v1 + 2944);
      *(v1 + 7664) = *(v1 + 2928);
      *(v1 + 7680) = v11;
      v12 = *(v1 + 2976);
      *(v1 + 7696) = *(v1 + 2960);
      *(v1 + 7712) = v12;
      v13 = *(v1 + 2912);
      *(v1 + 7632) = *(v1 + 2896);
      *(v1 + 7648) = v13;
      v5 = sub_100032B70();
      v6 = v14;
    }

    v15 = (v1 + 5776);
    v16 = sub_10000D01C(v5, v6, &v114);

    *(v4 + 14) = v16;
    *(v4 + 22) = 2160;
    *(v4 + 24) = 1752392040;
    *(v4 + 32) = 2081;
    memcpy((v1 + 3376), (v1 + 4816), 0x1E0uLL);
    v17 = sub_100033B90(v1 + 3376);
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    if (v17 != 1)
    {
      v23 = *(v1 + 3792);
      v24 = *(v1 + 3824);
      *(v1 + 8176) = *(v1 + 3808);
      *(v1 + 0x2000) = v24;
      *(v1 + 8208) = *(v1 + 3840);
      *(v1 + 8144) = *(v1 + 3776);
      *(v1 + 8160) = v23;
      sub_100005F04(v1 + 8144, v1 + 8224, &qword_1005AD7A8, &qword_1004CA280);
      v18 = *(v1 + 8144);
      v19 = *(v1 + 8160);
      v20 = *(v1 + 8176);
      v21 = *(v1 + 0x2000);
      v22 = *(v1 + 8208);
    }

    v25 = (v1 + 7344);
    *(v1 + 7904) = v18;
    *(v1 + 7920) = v19;
    *(v1 + 7936) = v20;
    *(v1 + 7952) = v21;
    *(v1 + 7968) = v22;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    v26 = String.init<A>(describing:)();
    v28 = sub_10000D01C(v26, v27, &v114);

    *(v4 + 34) = v28;
    *(v4 + 42) = 2160;
    *(v4 + 44) = 1752392040;
    *(v4 + 52) = 2081;
    memcpy((v1 + 3856), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 3856) == 1)
    {
      sub_10003170C(v15);
    }

    else
    {
      v47 = *(v1 + 4064);
      *(v1 + 6032) = *(v1 + 4048);
      *(v1 + 6048) = v47;
      v48 = *(v1 + 4096);
      *(v1 + 6064) = *(v1 + 4080);
      *(v1 + 6080) = v48;
      v49 = *(v1 + 4000);
      *(v1 + 5968) = *(v1 + 3984);
      *(v1 + 5984) = v49;
      v50 = *(v1 + 4032);
      *(v1 + 6000) = *(v1 + 4016);
      *(v1 + 6016) = v50;
      v51 = *(v1 + 3968);
      *(v1 + 5936) = *(v1 + 3952);
      *(v1 + 5952) = v51;
      sub_100005F04(v1 + 5936, v1 + 6096, &qword_1005A9328, &unk_1004C7F20);
      v52 = *(v1 + 6048);
      *(v1 + 5872) = *(v1 + 6032);
      *(v1 + 5888) = v52;
      v53 = *(v1 + 6080);
      *(v1 + 5904) = *(v1 + 6064);
      *(v1 + 5920) = v53;
      v54 = *(v1 + 5984);
      *(v1 + 5808) = *(v1 + 5968);
      *(v1 + 5824) = v54;
      v55 = *(v1 + 6016);
      *(v1 + 5840) = *(v1 + 6000);
      *(v1 + 5856) = v55;
      v56 = *(v1 + 5952);
      *v15 = *(v1 + 5936);
      *(v1 + 5792) = v56;
    }

    v57 = *(v1 + 5888);
    *(v1 + 6512) = *(v1 + 5872);
    *(v1 + 6528) = v57;
    v58 = *(v1 + 5920);
    *(v1 + 6544) = *(v1 + 5904);
    *(v1 + 6560) = v58;
    v59 = *(v1 + 5824);
    *(v1 + 6448) = *(v1 + 5808);
    *(v1 + 6464) = v59;
    v60 = *(v1 + 5856);
    *(v1 + 6480) = *(v1 + 5840);
    *(v1 + 6496) = v60;
    v61 = *(v1 + 5792);
    *(v1 + 6416) = *v15;
    *(v1 + 6432) = v61;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    v62 = String.init<A>(describing:)();
    v64 = sub_10000D01C(v62, v63, &v114);

    *(v4 + 54) = v64;
    *(v4 + 62) = 2160;
    *(v4 + 64) = 1752392040;
    *(v4 + 72) = 2081;
    memcpy((v1 + 4336), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 4336) == 1)
    {
      sub_10017E0C8(v1 + 7344);
    }

    else
    {
      v83 = *(v1 + 4672);
      v84 = *(v1 + 4704);
      *(v1 + 7440) = *(v1 + 4688);
      *(v1 + 7456) = v84;
      *(v1 + 7472) = *(v1 + 4720);
      v85 = *(v1 + 4608);
      v86 = *(v1 + 4640);
      *(v1 + 7376) = *(v1 + 4624);
      *(v1 + 7392) = v86;
      *(v1 + 7408) = *(v1 + 4656);
      *(v1 + 7424) = v83;
      *v25 = *(v1 + 4592);
      *(v1 + 7360) = v85;
    }

    v87 = *(v1 + 7456);
    *(v1 + 7584) = *(v1 + 7440);
    *(v1 + 7600) = v87;
    *(v1 + 7616) = *(v1 + 7472);
    v88 = *(v1 + 7392);
    *(v1 + 7520) = *(v1 + 7376);
    *(v1 + 7536) = v88;
    v89 = *(v1 + 7424);
    *(v1 + 7552) = *(v1 + 7408);
    *(v1 + 7568) = v89;
    v90 = *(v1 + 7360);
    *(v1 + 7488) = *v25;
    *(v1 + 7504) = v90;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    v91 = String.init<A>(describing:)();
    v93 = sub_10000D01C(v91, v92, &v114);

    *(v4 + 74) = v93;
    v94 = "Read LocalStorage serverSettings:\nmyInfo: %{private,mask.hash}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s";
    v95 = v112;
    v96 = v2;
    v97 = v4;
    v98 = 82;
  }

  else
  {
    sub_100005F04(v1 + 4816, v1 + 5296, &qword_1005A90D8, &unk_1004C6AB0);
    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    sub_100002CE0(v1 + 4816, &qword_1005A90D8, &unk_1004C6AB0);
    if (!os_log_type_enabled(v2, v7))
    {
      goto LABEL_29;
    }

    v113 = v7;
    v8 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v8 = 136447747;
    memcpy((v1 + 976), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 976) == 1)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v29 = *(v1 + 1024);
      *(v1 + 7760) = *(v1 + 1008);
      *(v1 + 7776) = v29;
      v30 = *(v1 + 1056);
      *(v1 + 7792) = *(v1 + 1040);
      *(v1 + 7808) = v30;
      v31 = *(v1 + 992);
      *(v1 + 7728) = *(v1 + 976);
      *(v1 + 7744) = v31;
      v9 = sub_100171264();
      v10 = v32;
    }

    v33 = (v1 + 6256);
    v34 = sub_10000D01C(v9, v10, &v114);

    *(v8 + 4) = v34;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    memcpy((v1 + 1456), (v1 + 4816), 0x1E0uLL);
    v35 = sub_100033B90(v1 + 1456);
    v36 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    if (v35 != 1)
    {
      v41 = *(v1 + 1872);
      v42 = *(v1 + 1904);
      *(v1 + 8016) = *(v1 + 1888);
      *(v1 + 8032) = v42;
      *(v1 + 8048) = *(v1 + 1920);
      *(v1 + 7984) = *(v1 + 1856);
      *(v1 + 8000) = v41;
      sub_100005F04(v1 + 7984, v1 + 7824, &qword_1005AD7A8, &qword_1004CA280);
      v36 = *(v1 + 7984);
      v37 = *(v1 + 8000);
      v38 = *(v1 + 8016);
      v39 = *(v1 + 8032);
      v40 = *(v1 + 8048);
    }

    v43 = (v1 + 7056);
    *(v1 + 8064) = v36;
    *(v1 + 8080) = v37;
    *(v1 + 8096) = v38;
    *(v1 + 8112) = v39;
    *(v1 + 8128) = v40;
    sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
    v44 = String.init<A>(describing:)();
    v46 = sub_10000D01C(v44, v45, &v114);

    *(v8 + 24) = v46;
    *(v8 + 32) = 2160;
    *(v8 + 34) = 1752392040;
    *(v8 + 42) = 2081;
    memcpy((v1 + 1936), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 1936) == 1)
    {
      sub_10003170C(v33);
    }

    else
    {
      v65 = *(v1 + 2144);
      *(v1 + 6832) = *(v1 + 2128);
      *(v1 + 6848) = v65;
      v66 = *(v1 + 2176);
      *(v1 + 6864) = *(v1 + 2160);
      *(v1 + 6880) = v66;
      v67 = *(v1 + 2080);
      *(v1 + 6768) = *(v1 + 2064);
      *(v1 + 6784) = v67;
      v68 = *(v1 + 2112);
      *(v1 + 6800) = *(v1 + 2096);
      *(v1 + 6816) = v68;
      v69 = *(v1 + 2048);
      *(v1 + 6736) = *(v1 + 2032);
      *(v1 + 6752) = v69;
      sub_100005F04(v1 + 6736, v1 + 6896, &qword_1005A9328, &unk_1004C7F20);
      v70 = *(v1 + 6848);
      *(v1 + 6352) = *(v1 + 6832);
      *(v1 + 6368) = v70;
      v71 = *(v1 + 6880);
      *(v1 + 6384) = *(v1 + 6864);
      *(v1 + 6400) = v71;
      v72 = *(v1 + 6784);
      *(v1 + 6288) = *(v1 + 6768);
      *(v1 + 6304) = v72;
      v73 = *(v1 + 6816);
      *(v1 + 6320) = *(v1 + 6800);
      *(v1 + 6336) = v73;
      v74 = *(v1 + 6752);
      *v33 = *(v1 + 6736);
      *(v1 + 6272) = v74;
    }

    v75 = *(v1 + 6368);
    *(v1 + 6672) = *(v1 + 6352);
    *(v1 + 6688) = v75;
    v76 = *(v1 + 6400);
    *(v1 + 6704) = *(v1 + 6384);
    *(v1 + 6720) = v76;
    v77 = *(v1 + 6304);
    *(v1 + 6608) = *(v1 + 6288);
    *(v1 + 6624) = v77;
    v78 = *(v1 + 6336);
    *(v1 + 6640) = *(v1 + 6320);
    *(v1 + 6656) = v78;
    v79 = *(v1 + 6272);
    *(v1 + 6576) = *v33;
    *(v1 + 6592) = v79;
    sub_10004B564(&qword_1005A9328, &unk_1004C7F20);
    v80 = String.init<A>(describing:)();
    v82 = sub_10000D01C(v80, v81, &v114);

    *(v8 + 44) = v82;
    *(v8 + 52) = 2160;
    *(v8 + 54) = 1752392040;
    *(v8 + 62) = 2081;
    memcpy((v1 + 2416), (v1 + 4816), 0x1E0uLL);
    if (sub_100033B90(v1 + 2416) == 1)
    {
      sub_10017E0C8(v43);
    }

    else
    {
      v99 = *(v1 + 2752);
      v100 = *(v1 + 2784);
      *(v1 + 7152) = *(v1 + 2768);
      *(v1 + 7168) = v100;
      *(v1 + 7184) = *(v1 + 2800);
      v101 = *(v1 + 2688);
      v102 = *(v1 + 2720);
      *(v1 + 7088) = *(v1 + 2704);
      *(v1 + 7104) = v102;
      *(v1 + 7120) = *(v1 + 2736);
      *(v1 + 7136) = v99;
      *v43 = *(v1 + 2672);
      *(v1 + 7072) = v101;
    }

    v103 = *(v1 + 7168);
    *(v1 + 7296) = *(v1 + 7152);
    *(v1 + 7312) = v103;
    *(v1 + 7328) = *(v1 + 7184);
    v104 = *(v1 + 7104);
    *(v1 + 7232) = *(v1 + 7088);
    *(v1 + 7248) = v104;
    v105 = *(v1 + 7136);
    *(v1 + 7264) = *(v1 + 7120);
    *(v1 + 7280) = v105;
    v106 = *(v1 + 7072);
    *(v1 + 7200) = *v43;
    *(v1 + 7216) = v106;
    sub_10004B564(&qword_1005AD7E0, &qword_1004CA2C0);
    v107 = String.init<A>(describing:)();
    v109 = sub_10000D01C(v107, v108, &v114);

    *(v8 + 64) = v109;
    v94 = "Read LocalStorage serverSettings:\nmyInfo: %{public}s\nprefs: %{private,mask.hash}s\ncontext: %{private,mask.hash}s\nconfig: %{private,mask.hash}s";
    v95 = v113;
    v96 = v2;
    v97 = v8;
    v98 = 72;
  }

  _os_log_impl(&_mh_execute_header, v96, v95, v94, v97, v98);
  swift_arrayDestroy();

LABEL_29:

  memcpy((v1 + 496), (v1 + 4816), 0x1E0uLL);
  sub_10004B564(&qword_1005B1C40, &qword_1004D5BF0);
  CheckedContinuation.resume(returning:)();
  v110 = *(v1 + 8);

  return v110();
}

uint64_t sub_10003384C()
{
  if (!v0[71])
  {
    v5 = type metadata accessor for DatabaseError();
    sub_10000A49C(&qword_1005AF460, &type metadata accessor for DatabaseError, &protocol conformance descriptor for DatabaseError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for DatabaseError.notConnected(_:), v5);
    swift_willThrow();
    goto LABEL_7;
  }

  if (qword_1005A8148 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = type metadata accessor for Table();
  v3 = sub_10000A6F0(v2, qword_1005E00A8);
  v0[65] = v2;
  v0[66] = &protocol witness table for Table;
  v4 = sub_10000331C(v0 + 62);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_100030588((v0 + 62));
  if (v1)
  {

    sub_100004984(v0 + 62);
LABEL_7:
    v7 = v0[1];
    goto LABEL_9;
  }

  v8 = v0[67];
  sub_100004984(v0 + 62);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  memcpy(v8, v0 + 2, 0x1E0uLL);
  v7 = v0[1];
LABEL_9:

  return v7();
}

uint64_t sub_100033A74()
{
  *(*v1 + 8352) = v0;

  if (v0)
  {
    v2 = sub_10030EA20;
  }

  else
  {
    v2 = sub_100032E74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100033B90(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100033BA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 480))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100033BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 480) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 480) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100033CAC()
{
  v1 = 1702195828;
  _StringGuts.grow(_:)(564);
  v2._object = 0x80000001004E3090;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v2);
  Double.write<A>(to:)();
  v3._countAndFlagsBits = 0x6C6C6F4678616D20;
  v3._object = 0xEF203A737265776FLL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._object = 0x80000001004E30B0;
  v5._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v5);
  if (v0[16])
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v0[16])
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0xD00000000000001ALL;
  v9._object = 0x80000001004E30D0;
  String.append(_:)(v9);
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 0x6569724678616D20;
  v10._object = 0xED0000203A73646ELL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x80000001004E30F0;
  String.append(_:)(v12);
  Double.write<A>(to:)();
  v13._countAndFlagsBits = 0xD000000000000017;
  v13._object = 0x80000001004E3120;
  String.append(_:)(v13);
  Double.write<A>(to:)();
  v14._countAndFlagsBits = 0xD000000000000020;
  v14._object = 0x80000001004E3140;
  String.append(_:)(v14);
  if (v0[56])
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v0[56])
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._object = 0x80000001004E3170;
  v18._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v18);
  Double.write<A>(to:)();
  v19._countAndFlagsBits = 0xD00000000000001FLL;
  v19._object = 0x80000001004E3190;
  String.append(_:)(v19);
  Double.write<A>(to:)();
  v20._object = 0x80000001004E31B0;
  v20._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v20);
  Double.write<A>(to:)();
  v21._object = 0x80000001004E31D0;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v21);
  Double.write<A>(to:)();
  v22._countAndFlagsBits = 0xD000000000000012;
  v22._object = 0x80000001004E31F0;
  String.append(_:)(v22);
  if (v0[96])
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v0[96])
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  v25 = v24;
  String.append(_:)(*&v23);

  v26._countAndFlagsBits = 0xD000000000000019;
  v26._object = 0x80000001004E3210;
  String.append(_:)(v26);
  if (v0[97])
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v0[97])
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  v29 = v28;
  String.append(_:)(*&v27);

  v30._countAndFlagsBits = 0xD000000000000022;
  v30._object = 0x80000001004E3230;
  String.append(_:)(v30);
  if (v0[98])
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v0[98])
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 0x6F697461636F6C20;
  v34._object = 0xEE00203A4C54546ELL;
  String.append(_:)(v34);
  Double.write<A>(to:)();
  v35._object = 0x80000001004E3260;
  v35._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v35);
  v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v36);

  v37._object = 0x80000001004E3280;
  v37._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v37);
  Double.write<A>(to:)();
  v38._countAndFlagsBits = 0xD000000000000021;
  v38._object = 0x80000001004E32A0;
  String.append(_:)(v38);
  if (v0[128])
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v0[128])
  {
    v40 = 0xE400000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  v41 = v40;
  String.append(_:)(*&v39);

  v42._countAndFlagsBits = 0xD000000000000011;
  v42._object = 0x80000001004E32D0;
  String.append(_:)(v42);
  Double.write<A>(to:)();
  v43._countAndFlagsBits = 0xD000000000000025;
  v43._object = 0x80000001004E32F0;
  String.append(_:)(v43);
  v44 = v0[99];
  if (v44 == 2 || (v44 & 1) == 0)
  {
    v45 = 0xE500000000000000;
    v1 = 0x65736C6166;
  }

  else
  {
    v45 = 0xE400000000000000;
  }

  v46._countAndFlagsBits = v1;
  v46._object = v45;
  String.append(_:)(v46);

  return 0;
}

uint64_t sub_10003429C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000342E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003434C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 144))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000343A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[404] = a1;

  v3 = swift_task_alloc();
  v2[405] = v3;
  v4 = type metadata accessor for Daemon();
  v2[406] = v4;
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_100008FC0(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[407] = v6;
  v7 = sub_100008FC0(&qword_1005A90D0, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100035CC8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100034580(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 2696) = v3;
  *(v4 + 2688) = a3;
  *(v4 + 2680) = a2;
  *(v4 + 3620) = a1;
  v5 = type metadata accessor for Date();
  *(v4 + 2704) = v5;
  *(v4 + 2712) = *(v5 - 8);
  *(v4 + 2720) = swift_task_alloc();
  type metadata accessor for Location();
  *(v4 + 2728) = swift_task_alloc();
  sub_10004B564(&qword_1005A92D0, &qword_1004C2890);
  *(v4 + 2736) = swift_task_alloc();
  v6 = type metadata accessor for LegacyLocation(0);
  *(v4 + 2744) = v6;
  *(v4 + 2752) = *(v6 - 8);
  *(v4 + 2760) = swift_task_alloc();
  sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  *(v4 + 2768) = swift_task_alloc();
  v7 = type metadata accessor for ServerLocation(0);
  *(v4 + 2776) = v7;
  *(v4 + 2784) = *(v7 - 8);
  *(v4 + 2792) = swift_task_alloc();
  *(v4 + 2800) = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v4 + 2808) = swift_task_alloc();
  refreshed = type metadata accessor for LegacyRefreshSchedule();
  *(v4 + 2816) = refreshed;
  *(v4 + 2824) = *(refreshed - 8);
  *(v4 + 2832) = swift_task_alloc();
  v9 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  *(v4 + 2840) = v9;
  *(v4 + 2848) = *(v9 - 8);
  *(v4 + 2856) = swift_task_alloc();
  *(v4 + 2864) = type metadata accessor for LegacyLocationServerRequestContext(0);
  *(v4 + 2872) = swift_task_alloc();
  *(v4 + 2880) = swift_task_alloc();
  *(v4 + 2888) = swift_task_alloc();
  *(v4 + 2896) = type metadata accessor for LocationEndpoint(0);
  *(v4 + 2904) = swift_task_alloc();
  v10 = type metadata accessor for ClientOrigin();
  *(v4 + 2912) = v10;
  *(v4 + 2920) = *(v10 - 8);
  *(v4 + 2928) = swift_task_alloc();
  sub_10004B564(&qword_1005A92D8, &qword_1004C2898);
  *(v4 + 2936) = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  *(v4 + 2944) = Priority;
  *(v4 + 2952) = *(Priority - 8);
  *(v4 + 2960) = swift_task_alloc();
  *(v4 + 2968) = swift_task_alloc();
  sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  *(v4 + 2976) = swift_task_alloc();
  v12 = type metadata accessor for Account();
  *(v4 + 2984) = v12;
  *(v4 + 2992) = *(v12 - 8);
  *(v4 + 3000) = swift_task_alloc();
  *(v4 + 3008) = swift_task_alloc();
  *(v4 + 3016) = swift_task_alloc();
  *(v4 + 3024) = swift_task_alloc();
  v13 = type metadata accessor for RequestOrigin();
  *(v4 + 3032) = v13;
  *(v4 + 3040) = *(v13 - 8);
  *(v4 + 3048) = swift_task_alloc();
  v14 = type metadata accessor for LegacyRefreshCommandReason();
  *(v4 + 3056) = v14;
  *(v4 + 3064) = *(v14 - 8);
  *(v4 + 3072) = swift_task_alloc();
  v15 = type metadata accessor for LocationRequest();
  *(v4 + 3080) = v15;
  *(v4 + 3088) = *(v15 - 8);
  *(v4 + 3096) = swift_task_alloc();
  *(v4 + 3104) = swift_task_alloc();
  *(v4 + 3112) = swift_task_alloc();
  *(v4 + 3120) = swift_task_alloc();
  *(v4 + 3128) = swift_task_alloc();
  v16 = type metadata accessor for Handle();
  *(v4 + 3136) = v16;
  *(v4 + 3144) = *(v16 - 8);
  *(v4 + 3152) = swift_task_alloc();
  *(v4 + 3160) = swift_task_alloc();
  *(v4 + 3168) = swift_task_alloc();
  v17 = type metadata accessor for Friend();
  *(v4 + 3176) = v17;
  *(v4 + 3184) = *(v17 - 8);
  *(v4 + 3192) = swift_task_alloc();
  *(v4 + 3200) = swift_task_alloc();
  *(v4 + 3208) = swift_task_alloc();
  *(v4 + 3216) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v4 + 3224) = v18;
  *v18 = v4;
  v18[1] = sub_1000343A0;

  return daemon.getter();
}

uint64_t sub_100034D30()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 504);
  if (v0)
  {
    v4 = sub_10030698C;
  }

  else
  {
    v4 = sub_10003608C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100034E5C()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager load LocalStorage serverSettings", v4, 2u);
  }

  memcpy((v0 + 16), (v0 + 976), 0x1E0uLL);
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100034F9C()
{
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) != 1)
  {
    v1 = *(v0 + 224);
    *(v0 + 1232) = *(v0 + 208);
    *(v0 + 1248) = v1;
    v2 = *(v0 + 256);
    *(v0 + 1264) = *(v0 + 240);
    *(v0 + 1280) = v2;
    v3 = *(v0 + 160);
    *(v0 + 1168) = *(v0 + 144);
    *(v0 + 1184) = v3;
    v4 = *(v0 + 192);
    *(v0 + 1200) = *(v0 + 176);
    *(v0 + 1216) = v4;
    v5 = *(v0 + 128);
    *(v0 + 1136) = *(v0 + 112);
    *(v0 + 1152) = v5;
    sub_100005F04(v0 + 1136, v0 + 1296, &qword_1005A9328, &unk_1004C7F20);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    v6 = *(v0 + 1248);
    *(v0 + 1072) = *(v0 + 1232);
    *(v0 + 1088) = v6;
    v7 = *(v0 + 1280);
    *(v0 + 1104) = *(v0 + 1264);
    *(v0 + 1120) = v7;
    v8 = *(v0 + 1184);
    *(v0 + 1008) = *(v0 + 1168);
    *(v0 + 1024) = v8;
    v9 = *(v0 + 1216);
    *(v0 + 1040) = *(v0 + 1200);
    *(v0 + 1056) = v9;
    v10 = *(v0 + 1152);
    *(v0 + 976) = *(v0 + 1136);
    *(v0 + 992) = v10;
    if (sub_10002D650(v0 + 976) != 1)
    {
      sub_100002CE0(v0 + 1136, &qword_1005A9328, &unk_1004C7F20);
    }
  }

  v11 = *(v0 + 1656);
  v12 = *(v0 + 1648);
  v13 = *(v0 + 1640);
  v14 = *(v0 + 1616);
  static Duration.seconds(_:)();
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  (*(v12 + 8))(v11, v13);
  static Duration.seconds(_:)();
  *(v0 + 1944) = static Duration.- infix(_:_:)();
  *(v0 + 1952) = v15;

  return _swift_task_switch(sub_100035188, v14, 0);
}

uint64_t sub_100035188()
{
  v36 = v0;
  v1 = *(v0 + 1952);
  v2 = *(v0 + 1944);
  if (qword_1005A7EC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFB18);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v34 = *(v0 + 1896) == *(v0 + 1904);
    v6 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v6 = 136446722;
    *(v6 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v35);
    *(v6 + 12) = 2082;
    v7 = Duration.description.getter();
    v9 = v2;
    v10 = sub_10000D01C(v7, v8, &v35);

    *(v6 + 14) = v10;
    v2 = v9;
    *(v6 + 22) = 1024;
    *(v6 + 24) = v34;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s scheduleInterval: %{public}s isHighPriority: %{BOOL}d", v6, 0x1Cu);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 1856);
  v12 = *(v0 + 1712);
  v13 = *(v0 + 1704);
  v14 = *(v0 + 1696);
  v15 = *(v0 + 1616);
  if (*(v0 + 1896) == *(v0 + 1904))
  {
    v16 = (v0 + 1984);
  }

  else
  {
    v16 = &enum case for LegacyRefreshSchedule.lowPriorityScheduled(_:);
  }

  (*(v0 + 1864))(*(v0 + 1712), *v16, *(v0 + 1696));
  swift_beginAccess();
  (*(v13 + 40))(v15 + v11, v12, v14);
  swift_endAccess();
  if (Duration.milliseconds.getter() < 1)
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_10000D01C(0xD000000000000011, 0x80000001004DED70, &v35);
      _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s Refreshing legacy location now.", v28, 0xCu);
      sub_100004984(v29);
    }

    v30 = swift_task_alloc();
    *(v0 + 1960) = v30;
    *v30 = v0;
    v30[1] = sub_10007E2A0;

    return sub_100034580(0, v2, v1);
  }

  else
  {
    v33 = *(v0 + 1880);
    v17 = *(v0 + 1792);
    v32 = *(v0 + 1688);
    v31 = *(v0 + 1664);
    v18 = *(v0 + 1624);
    v19 = v2;
    v20 = *(v0 + 1616);
    v21 = *(v0 + 1896) == *(v0 + 1904);
    type metadata accessor for WorkItemQueue.WorkItem();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v1;
    *(v22 + 32) = v21;
    *(v22 + 40) = v17;
    *(v22 + 48) = v20;
    *(v22 + 56) = v18;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v23 = sub_1002087C4(_swiftEmptyArrayStorage);

    v33(v32, v31);

    v24 = *(v0 + 8);

    return v24(v23);
  }
}

uint64_t sub_100035700()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100035740()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 3288) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 3296) = v5;
  *v5 = v0;
  v5[1] = sub_10007E7F0;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_1000358A4()
{
  v13 = v0;
  v1 = v0[337];
  v2 = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  v0[410] = OBJC_IVAR____TtC13findmylocated14CommandManager_coalescedCommands;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v3 = v0[408];
    v0[332] = &_swiftEmptySetSingleton;
    v0[333] = &_swiftEmptySetSingleton;

    return _swift_task_switch(sub_100035740, v3, 0);
  }

  else
  {
    if (qword_1005A7EC8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v12 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DED40, &v12);
      _os_log_impl(&_mh_execute_header, v5, v6, "CommandManager %{public}s no refresh request left in the coalescedCommands", v7, 0xCu);
      sub_100004984(v8);
    }

    v11 = sub_1002087C4(_swiftEmptyArrayStorage);

    v9 = v0[1];

    return v9(v11);
  }
}

uint64_t sub_100035CC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2696);
  *(v3 + 3264) = a1;
  *(v3 + 3272) = v1;

  if (v1)
  {
    v5 = sub_100081FB4;
  }

  else
  {

    v5 = sub_1000358A4;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100035E4C()
{
  v1 = *(*v0 + 1792);

  return _swift_task_switch(sub_100034F9C, v1, 0);
}

uint64_t sub_100035F5C()
{
  v2 = *v1;
  *(*v1 + 1528) = v0;

  if (v0)
  {
    v3 = v2[184];
    v4 = sub_1002461AC;
  }

  else
  {
    v5 = v2[184];
    memcpy(v2 + 122, v2 + 62, 0x1E0uLL);
    v4 = sub_100034E5C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003608C()
{
  memcpy(*(v0 + 496), (v0 + 16), 0x1E0uLL);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for LocationEndpoint(uint64_t a1)
{
  result = qword_1005AD1D8;
  if (!qword_1005AD1D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LegacyLocationServerRequestContext(uint64_t a1)
{
  result = qword_1005AD268;
  if (!qword_1005AD268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000361AC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100036388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DisplayRepresentation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036434(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayRepresentation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100036540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DisplayRepresentation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000365EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DisplayRepresentation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003669C()
{

  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 24), v1);
  }

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000366EC()
{
  v1 = type metadata accessor for FriendshipRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v6 = (v0 + v5);

  if (*(v0 + v5 + 144))
  {
  }

  if (v6[28] != 1)
  {
  }

  if (v6[41])
  {
  }

  if (v6[79] != 1)
  {
  }

  return _swift_deallocObject(v0, v5 + 800, v3 | 7);
}

uint64_t sub_100036920()
{
  v1 = type metadata accessor for Handle();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036A18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036A50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100036A90()
{
  if (&swift_runtimeSupportsNoncopyableTypes)
  {
    return sub_10004B564(&qword_1005A94D8, &qword_1004C2988);
  }

  else
  {
    return (&type metadata for () + 1);
  }
}

uint64_t sub_100036AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100036B38(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004B564(&qword_1005A94E0, &qword_1004C2990);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100036BCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100036C0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036C44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100036C7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100036E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MotionActivityState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 56);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100036F74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MotionActivityState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 56);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1000370D0()
{
  v1 = (type metadata accessor for SecureLocationsConfig(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v1[21];
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1000371E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003721C()
{
  sub_1000049D0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003727C()
{

  sub_1000049D0(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000372FC()
{

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100037394()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000373E4()
{
  v1 = (type metadata accessor for Credentials(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 144) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for URL();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v8 = v0 + v3 + v1[10];

  v9 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v7(v8 + *(v9 + 20), v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037580()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);
  if (v4 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 48), v4);
  }

  v5 = (v2 + 64) & ~v2;

  v6 = *(v1 + 28);
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v5 + v6, v7);
  v9 = v0 + v5 + *(v1 + 32);

  v10 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v8(v9 + *(v10 + 20), v7);

  return _swift_deallocObject(v0, v5 + v3, v2 | 7);
}

uint64_t sub_100037704()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003774C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037784()
{

  return _swift_deallocObject(v0, 168, 7);
}

uint64_t sub_100037864()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000378B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000378F4()
{
  v1 = type metadata accessor for Credentials(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v4 = *(v0 + 56);
  if (v4 >> 60 != 15)
  {
    sub_1000049D0(*(v0 + 48), v4);
  }

  v5 = (v2 + 64) & ~v2;
  v6 = (((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;

  v8 = *(v1 + 28);
  v9 = type metadata accessor for URL();
  v14 = v2;
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v11 = v7 + *(v1 + 32);

  v12 = type metadata accessor for Credentials.SecureLocationsProperties(0);
  v10(v11 + *(v12 + 20), v9);

  return _swift_deallocObject(v0, ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v14 | 7);
}

uint64_t sub_100037AD0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100037B18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100037B70()
{
  v1 = type metadata accessor for Response();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}