uint64_t sub_1000DB9F8(uint64_t a1)
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
  v4[1] = sub_1000DBB5C;

  return daemon.getter();
}

uint64_t sub_1000DBB5C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FriendshipService(0);
  v6 = sub_1000DD460(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000DD460(&qword_1005AA6E0, type metadata accessor for FriendshipService, &unk_1004D2BF8);
  *v3 = v9;
  v3[1] = sub_1000DBD38;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000DBD38(uint64_t a1)
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

    v4 = sub_1000DBE54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DBE54()
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
  v5[1] = sub_1000DBFB4;

  return sub_1002BD010(v4);
}

uint64_t sub_1000DBFB4(uint64_t a1)
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

    v4 = sub_1000DC0D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000DC0D0()
{
  v1 = v0[18];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v34 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v33 = *(v3 + 72);
    v31 = (v3 + 8);
    v5 = _swiftEmptyArrayStorage;
    v32 = (v0[4] + 8);
    do
    {
      v39 = v5;
      v8 = v0[9];
      v7 = v0[10];
      v10 = v0[6];
      v9 = v0[7];
      v11 = v0[3];
      v34(v7, v4, v9);
      v34(v8, v7, v9);
      Friend.handle.getter();
      v12 = Handle.serverID.getter();
      v14 = v13;
      v15 = *v32;
      (*v32)(v10, v11);
      v16 = v0[9];
      v17 = v0[10];
      v18 = v0[7];
      if (v14)
      {
        v38 = v12;
        v35 = v0[10];
        v19 = v0[5];
        v20 = v0[3];
        Friend.handle.getter();
        v21 = Handle.identifier.getter();
        v36 = v22;
        v37 = v21;
        v15(v19, v20);
        Friend.handle.getter();
        v23 = Handle.siblingIdentifiers.getter();
        v15(v19, v20);
        v24 = *v31;
        (*v31)(v16, v18);
        v24(v35, v18);
        v5 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1001FD1C8(0, *(v39 + 2) + 1, 1, v39);
        }

        v26 = *(v5 + 2);
        v25 = *(v5 + 3);
        if (v26 >= v25 >> 1)
        {
          v5 = sub_1001FD1C8((v25 > 1), v26 + 1, 1, v5);
        }

        *(v5 + 2) = v26 + 1;
        v27 = &v5[40 * v26];
        *(v27 + 4) = v37;
        *(v27 + 5) = v36;
        *(v27 + 6) = v23;
        *(v27 + 7) = v38;
        *(v27 + 8) = v14;
      }

      else
      {
        v6 = *v31;
        (*v31)(v0[9], v0[7]);
        v6(v17, v18);
        v5 = v39;
      }

      v4 += v33;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v28 = v0[2];

  *v28 = v5;

  v29 = v0[1];

  return v29();
}

uint64_t sub_1000DC3DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DC46C()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1000DC508@<X0>(char **a1@<X8>)
{
  result = sub_1000DB36C();
  *a1 = result;
  return result;
}

void sub_1000DC544(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 136);
  if (*(v8 + 16) || (sub_1000DB36C(), , v8 = *(a1 + 136), *(v8 + 16)))
  {

    v9 = sub_1000110D8(a2, a3);
    if (v10)
    {
      v11 = (*(v8 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  *a4 = v13;
  a4[1] = v12;
}

uint64_t sub_1000DC618(uint64_t a1)
{
  v3 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v3 + 60)) != 100)
  {
    v18 = (v1 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock(v18);
    v19 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_1000214CC(v18 + *(v19 + 28), v17, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v18);
    sub_10002172C(v17, type metadata accessor for SecureLocationsConfig);
  }

  static Date.trustedNow.getter(v12);
  Date.addingTimeInterval(_:)();
  v20 = *(v7 + 8);
  v20(v12, v6);
  v21 = static Date.> infix(_:_:)();
  if ((v21 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    sub_1000214CC(a1, v5, type metadata accessor for SecureLocation);
    v23 = v42;
    (*(v7 + 16))(v42, v14, v6);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = v41;
      *v26 = 136315394;
      v40 = v24;
      sub_1000DD460(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v5;
      v30 = v29;
      sub_10002172C(v28, type metadata accessor for SecureLocation);
      v31 = sub_10000D01C(v27, v30, &v43);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = v42;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v25;
      v36 = v35;
      v20(v32, v6);
      v37 = sub_10000D01C(v33, v36, &v43);

      *(v26 + 14) = v37;
      v38 = v40;
      _os_log_impl(&_mh_execute_header, v40, v34, "Location timestamp %s not within threshold %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v20(v23, v6);
      sub_10002172C(v5, type metadata accessor for SecureLocation);
    }
  }

  v20(v14, v6);
  return v21 & 1;
}

uint64_t sub_1000DCB14(uint64_t a1)
{
  v3 = type metadata accessor for SecureLocation(0);
  __chkstk_darwin(v3);
  v43 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v40 - v10;
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (v1 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
  os_unfair_lock_lock(v17);
  v18 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000214CC(v17 + *(v18 + 28), v16, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v17);
  sub_10002172C(v16, type metadata accessor for SecureLocationsConfig);
  static Date.trustedNow.getter(v11);
  Date.addingTimeInterval(_:)();
  v19 = *(v6 + 8);
  v19(v11, v5);
  v20 = static Date.< infix(_:_:)();
  if (v20)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A6F0(v21, qword_1005DFB98);
    v22 = v43;
    sub_1000214CC(a1, v43, type metadata accessor for SecureLocation);
    v23 = v44;
    (*(v6 + 16))(v44, v13, v5);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v45 = v42;
      *v26 = 136315394;
      v41 = v24;
      sub_1000DD460(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v22;
      v30 = v29;
      sub_10002172C(v28, type metadata accessor for SecureLocation);
      v31 = sub_10000D01C(v27, v30, &v45);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2080;
      v32 = v44;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v25;
      v36 = v35;
      v19(v32, v5);
      v37 = sub_10000D01C(v33, v36, &v45);

      *(v26 + 14) = v37;
      v38 = v41;
      _os_log_impl(&_mh_execute_header, v41, v34, "Location timestamp %s close to expiring %s", v26, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v19(v23, v5);
      sub_10002172C(v22, type metadata accessor for SecureLocation);
    }
  }

  v19(v13, v5);
  return v20 & 1;
}

uint64_t sub_1000DCFEC()
{

  v1 = v0 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex;
  v2 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_10002172C(v1 + *(v2 + 28), type metadata accessor for SecureLocationsConfig);

  return v0;
}

uint64_t sub_1000DD0D4()
{
  sub_1000DCFEC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsInfo(uint64_t a1)
{
  result = qword_1005AA418;
  if (!qword_1005AA418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000DD180(uint64_t a1)
{
  sub_1000DD260(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000DD260(uint64_t a1)
{
  if (!qword_1005AA428)
  {
    type metadata accessor for SecureLocationsConfig(255);
    v1 = type metadata accessor for Mutex();
    if (!v2)
    {
      atomic_store(v1, &qword_1005AA428);
    }
  }
}

uint64_t sub_1000DD2B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1000D40C4();
}

uint64_t sub_1000DD348()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000368C;

  return sub_1000DA5D0(v0);
}

uint64_t sub_1000DD3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DD460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000DD4B8()
{
  swift_beginAccess();
  *(v0 + 136) = _swiftEmptyDictionarySingleton;

  return result;
}

uint64_t sub_1000DD560(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100003690;

  return sub_1000D5468(a1, v4, v5, v6);
}

uint64_t sub_1000DD620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000D57AC();
}

uint64_t sub_1000DD6BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1000D583C();
}

void sub_1000DD758()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Received notification of FMF data update complete", v2, 2u);
  }
}

void *sub_1000DD878(uint64_t a1)
{
  v32 = type metadata accessor for UUID();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v25[1] = v1;
  v40 = _swiftEmptyArrayStorage;
  sub_1002394E8(0, v6, 0);
  v7 = v40;
  v37 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v30 = v3 + 32;
  v31 = v3;
  v26 = a1 + 64;
  v27 = v6;
  v28 = a1;
  v29 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v37 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v33 = v10;
    v34 = *(a1 + 36);
    v35 = 1 << v9;
    v36 = v7;

    v13 = String.utf8Data.getter();
    v15 = v14;
    v38 = v13;
    v39 = v14;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v13, v15);
    v7 = v36;

    v40 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_1002394E8((v16 > 1), v17 + 1, 1);
      v7 = v40;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v29, v32);
    a1 = v28;
    v11 = 1 << *(v28 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v18 = *(v37 + 8 * v12);
    if ((v18 & v35) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v28 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v9 & 0x3F));
    if (v19)
    {
      v11 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (v26 + 8 * v12);
      while (v21 < (v11 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_10002F14C(v9, v34, 0);
          v11 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_10002F14C(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000DDBD8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = String.utf8Data.getter();
  v10 = v9;
  v18[0] = v8;
  v18[1] = v9;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_1000049D0(v8, v10);

  v11 = sub_1004B7528(a1, a2);

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_10000D01C(a1, a2, v18);
    *(v15 + 12) = 1024;
    *(v15 + 14) = v11 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Removed sharedkeys for %s with result %{BOOL}d", v15, 0x12u);
    sub_100004984(v16);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1000DDE38(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v5 - 8);
  v45 = &v36 - v6;
  v7 = type metadata accessor for Destination();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v9 - 8);
  v42 = &v36 - v10;
  v11 = type metadata accessor for HashedAdvertisement();
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for PrivateKey();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v20 - 8);
  v22 = &v36 - v21;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v23 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  String.hash(into:)();
  sub_100005F04(v1 + v23[6], v22, &unk_1005AE620, &qword_1004C4588);
  if ((*(v17 + 48))(v22, 1, v16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v17 + 32))(v19, v22, v16);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADE8, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    dispatch thunk of Hashable.hash(into:)();
    (*(v17 + 8))(v19, v16);
  }

  sub_100005F04(v1 + v23[7], v15, &qword_1005AAB18, &qword_1004C4580);
  v25 = v40;
  v24 = v41;
  v26 = (*(v40 + 48))(v15, 1, v41);
  v28 = v43;
  v27 = v44;
  if (v26 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = v37;
    (*(v25 + 32))(v37, v15, v24);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADF0, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    dispatch thunk of Hashable.hash(into:)();
    (*(v25 + 8))(v29, v24);
  }

  v30 = v42;
  sub_100005F04(v2 + v23[8], v42, &qword_1005A9280, &qword_1004C27F8);
  if ((*(v28 + 48))(v30, 1, v27) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = v38;
    (*(v28 + 32))(v38, v30, v27);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005AADF8, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    dispatch thunk of Hashable.hash(into:)();
    (*(v28 + 8))(v31, v27);
  }

  if (*(v2 + v23[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v23[10]));
  v32 = v45;
  sub_100005F04(v2 + v23[11], v45, &unk_1005AE5B0, &qword_1004C32F0);
  v34 = v46;
  v33 = v47;
  if ((*(v46 + 48))(v32, 1, v47) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v35 = v39;
    (*(v34 + 32))(v39, v32, v33);
    Hasher._combine(_:)(1u);
    sub_1000F11F8(&qword_1005A9868, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v34 + 8))(v35, v33);
  }
}

uint64_t sub_1000DE60C(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AAB58, &qword_1004C4598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000F11A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AAB60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SecureLocationsCachedSharedKey(0);
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    type metadata accessor for PrivateKey();
    sub_1000F11F8(&qword_1005AAB68, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    type metadata accessor for HashedAdvertisement();
    sub_1000F11F8(&qword_1005AAB70, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    type metadata accessor for Destination();
    sub_1000F11F8(&qword_1005AAB78, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v9 + 40));
    v11[7] = 6;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 7;
    type metadata accessor for Date();
    sub_1000F11F8(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000DEA10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v3 - 8);
  v57 = &v54 - v4;
  v5 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v5 - 8);
  v58 = &v54 - v6;
  v7 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v7 - 8);
  v61 = &v54 - v8;
  v9 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v9 - 8);
  v60 = &v54 - v10;
  v11 = type metadata accessor for UUID();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AAB20, &qword_1004C4590);
  v62 = *(v13 - 8);
  v63 = v13;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 24);
  v21 = type metadata accessor for PrivateKey();
  v22 = *(*(v21 - 8) + 56);
  v71 = v20;
  v59 = v21;
  v22(&v19[v20], 1, 1);
  v23 = v16[7];
  v24 = type metadata accessor for HashedAdvertisement();
  v25 = *(*(v24 - 8) + 56);
  v70 = v23;
  v25(&v19[v23], 1, 1, v24);
  v26 = v16[8];
  v27 = type metadata accessor for Destination();
  v28 = *(*(v27 - 8) + 56);
  v72 = v26;
  v28(&v19[v26], 1, 1, v27);
  v29 = v16[11];
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v69 = v29;
  v73 = v19;
  v31(&v19[v29], 1, 1, v30);
  sub_100011AEC(a1, a1[3]);
  sub_1000F11A4();
  v67 = v15;
  v32 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    sub_100004984(a1);
    v37 = v70;
    v39 = v72;
    v38 = v73;
    sub_100002CE0(&v73[v71], &unk_1005AE620, &qword_1004C4588);
    sub_100002CE0(&v38[v37], &qword_1005AAB18, &qword_1004C4580);
    sub_100002CE0(&v38[v39], &qword_1005A9280, &qword_1004C27F8);

    return sub_100002CE0(&v38[v69], &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    v54 = v30;
    v55 = v16;
    v33 = v60;
    v34 = v61;
    v35 = v64;
    v68 = a1;
    LOBYTE(v75) = 0;
    sub_1000F11F8(&qword_1005AAB30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v36 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = *(v35 + 32);
    v41 = v73;
    v40(v73, v66, v36);
    LOBYTE(v75) = 1;
    v42 = KeyedDecodingContainer.decode(_:forKey:)();
    v43 = &v41[v55[5]];
    *v43 = v42;
    v43[1] = v44;
    LOBYTE(v75) = 2;
    sub_1000F11F8(&qword_1005AAB38, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
    v66 = 0;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v70;
    sub_100022364(v33, &v73[v71], &unk_1005AE620, &qword_1004C4588);
    LOBYTE(v75) = 3;
    sub_1000F11F8(&qword_1005AAB40, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46 = v73;
    sub_100022364(v34, &v73[v45], &qword_1005AAB18, &qword_1004C4580);
    LOBYTE(v75) = 4;
    sub_1000F11F8(&qword_1005AAB48, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v47 = v58;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100022364(v47, v46 + v72, &qword_1005A9280, &qword_1004C27F8);
    LOBYTE(v75) = 5;
    v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v49 = v55;
    v50 = (v46 + v55[9]);
    *v50 = v48;
    v50[1] = v51;
    v74[0] = 6;
    sub_1000F1240();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v46 + v49[10]) = v75;
    LOBYTE(v75) = 7;
    sub_1000F11F8(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v52 = v57;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v62 + 8))(v67, v63);
    sub_100022364(v52, v46 + v69, &unk_1005AE5B0, &qword_1004C32F0);
    sub_10000CF54(v46, v56, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100004984(v68);
    return sub_10000CFBC(v46, type metadata accessor for SecureLocationsCachedSharedKey);
  }
}

uint64_t sub_1000DF424(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AABE8, &qword_1004C4620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100011AEC(a1, a1[3]);
  sub_1000F79D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_1000F11F8(&qword_1005AAB60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    v13 = 1;
    type metadata accessor for DiversifiedRootKeys();
    sub_1000F11F8(&qword_1005AABF0, &type metadata accessor for DiversifiedRootKeys, &protocol conformance descriptor for DiversifiedRootKeys);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_1000F1294();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000DF66C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for DiversifiedRootKeys();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for UUID();
  v23 = *(v29 - 8);
  __chkstk_darwin(v29);
  v27 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004B564(&qword_1005AABD0, &qword_1004C4618);
  v24 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100011AEC(a1, a1[3]);
  sub_1000F79D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v20 = v10;
  v21 = a1;
  v13 = v12;
  v15 = v24;
  v14 = v25;
  v16 = v26;
  v33 = 0;
  sub_1000F11F8(&qword_1005AAB30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 32))(v13, v27, v29);
  v32 = 1;
  sub_1000F11F8(&qword_1005AABE0, &type metadata accessor for DiversifiedRootKeys, &protocol conformance descriptor for DiversifiedRootKeys);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v13 + *(v20 + 20), v6, v16);
  v31 = 2;
  sub_1000F1240();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v21;
  (*(v15 + 8))(v9, v28);
  *(v13 + *(v20 + 24)) = v30;
  sub_10000CF54(v13, v22, type metadata accessor for SecureLocationsCachedSharingKey);
  sub_100004984(v17);
  return sub_10000CFBC(v13, type metadata accessor for SecureLocationsCachedSharingKey);
}

uint64_t sub_1000DFB50()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001ALL;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x6E614872656E776FLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x696669746E656469;
    v3 = 0xD000000000000015;
    if (v1 != 2)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0)
    {
      v2 = 0x6449794D646E6966;
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
}

uint64_t sub_1000DFC68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F6038(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DFC9C(uint64_t a1)
{
  v2 = sub_1000F11A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFCD8(uint64_t a1)
{
  v2 = sub_1000F11A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000DFD14()
{
  Hasher.init(_seed:)();
  sub_1000DDE38(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000DFD58()
{
  Hasher.init(_seed:)();
  sub_1000DDE38(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000DFDC8()
{
  v1 = 0x4B676E6972616873;
  if (*v0 != 1)
  {
    v1 = 0x6E49646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000DFE38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F62DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000DFE60(uint64_t a1)
{
  v2 = sub_1000F79D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DFE9C(uint64_t a1)
{
  v2 = sub_1000F79D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DFF08(uint64_t a1)
{
  v2 = type metadata accessor for DiversifiedRootKeys();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10004B564(&qword_1005AACA8, &qword_1004C4720);
  __chkstk_darwin(v48);
  v51 = &v44 - v5;
  v6 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v7 = __chkstk_darwin(v6 - 8);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v44 - v16;
  __chkstk_darwin(v15);
  v19 = &v44 - v18;
  sub_100005F04(a1, v10, &qword_1005AB4D0, &unk_1004C45D0);
  v20 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v10, 1, v20);
  v46 = v14;
  v49 = v17;
  if (v22 == 1)
  {
    sub_100002CE0(v10, &qword_1005AB4D0, &unk_1004C45D0);
    v23 = 1;
  }

  else
  {
    (*(v3 + 16))(v19, &v10[*(v20 + 20)], v2);
    sub_10000CFBC(v10, type metadata accessor for SecureLocationsCachedSharingKey);
    v23 = 0;
  }

  v24 = *(v3 + 56);
  v25 = 1;
  v24(v19, v23, 1, v2);
  v26 = v2;
  v27 = v52 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  swift_beginAccess();
  v50 = v27;
  v28 = v21(v27, 1, v20);
  v29 = v49;
  if (!v28)
  {
    (*(v3 + 16))(v49, v50 + *(v20 + 20), v26);
    v25 = 0;
  }

  v24(v29, v25, 1, v26);
  v30 = *(v48 + 12);
  v31 = v51;
  sub_100005F04(v19, v51, &qword_1005AABB0, &unk_1004C45F0);
  sub_100005F04(v29, v31 + v30, &qword_1005AABB0, &unk_1004C45F0);
  v32 = *(v3 + 48);
  if (v32(v31, 1, v26) == 1)
  {
    sub_100002CE0(v29, &qword_1005AABB0, &unk_1004C45F0);
    sub_100002CE0(v19, &qword_1005AABB0, &unk_1004C45F0);
    if (v32(v31 + v30, 1, v26) == 1)
    {
      v33 = &qword_1005AABB0;
      v34 = &unk_1004C45F0;
      v35 = v31;
      return sub_100002CE0(v35, v33, v34);
    }

    goto LABEL_11;
  }

  v48 = v19;
  v36 = v31;
  v37 = v31;
  v38 = v46;
  sub_100005F04(v36, v46, &qword_1005AABB0, &unk_1004C45F0);
  if (v32(v37 + v30, 1, v26) == 1)
  {
    sub_100002CE0(v29, &qword_1005AABB0, &unk_1004C45F0);
    sub_100002CE0(v48, &qword_1005AABB0, &unk_1004C45F0);
    (*(v3 + 8))(v38, v26);
    v31 = v37;
LABEL_11:
    sub_100002CE0(v31, &qword_1005AACA8, &qword_1004C4720);
LABEL_12:
    v39 = v47;
    sub_100005F04(v50, v47, &qword_1005AB4D0, &unk_1004C45D0);
    AsyncStreamProvider.yield(value:transaction:)();
    v35 = v39;
    v33 = &qword_1005AB4D0;
    v34 = &unk_1004C45D0;
    return sub_100002CE0(v35, v33, v34);
  }

  v41 = v45;
  (*(v3 + 32))(v45, v37 + v30, v26);
  sub_1000F11F8(&qword_1005AACB0, &type metadata accessor for DiversifiedRootKeys, &protocol conformance descriptor for DiversifiedRootKeys);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v3 + 8);
  v43(v41, v26);
  sub_100002CE0(v29, &qword_1005AABB0, &unk_1004C45F0);
  sub_100002CE0(v48, &qword_1005AABB0, &unk_1004C45F0);
  v43(v38, v26);
  result = sub_100002CE0(v37, &qword_1005AABB0, &unk_1004C45F0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1000E0548()
{
  _StringGuts.grow(_:)(33);

  if (kSecAttrViewHintFindMy)
  {
    v0._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.append(_:)(v0);

    qword_1005AA740 = 0xD00000000000001FLL;
    *algn_1005AA748 = 0x80000001004E0D60;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E0658(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (!*a1)
  {
    goto LABEL_4;
  }

  if (v13 == 1)
  {
    return;
  }

  if (v13 != 4)
  {
    v24 = v5;
    v25 = v10;
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
      _os_log_impl(&_mh_execute_header, v19, v20, "MeDevice: state is not thisDevice. Invalidating key cache", v21, 2u);
    }

    aBlock[4] = sub_1000F7F74;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F4F0;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v26 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v24 + 8))(v7, v4);
    (*(v9 + 8))(v12, v25);
  }

  else
  {
LABEL_4:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v25 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v25, v15, "MeDevice: state unknown or none. Not invalidating cache", v16, 2u);
    }

    v17 = v25;
  }
}

uint64_t sub_1000E0AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_1000E126C();
}

void sub_1000E0B80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47 = a2;
  v4 = type metadata accessor for UUID();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v8 = __chkstk_darwin(v7 - 8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v44 = &v43 - v11;
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v50 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v3 + 48);
  *v20 = v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v22 = v21;
  v23 = _dispatchPreconditionTest(_:)();
  (*(v18 + 8))(v20, v17);
  if (v23)
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
  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005DFB98);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v51[0] = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_10000D01C(0xD000000000000031, 0x80000001004E0D80, v51);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s", v27, 0xCu);
    sub_100004984(v28);
  }

  sub_1004AE5D8(v13);

  if ((*(v50 + 48))(v13, 1, v14) == 1)
  {
    sub_100002CE0(v13, &qword_1005AB4D0, &unk_1004C45D0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "SharingKey: tried to set initial sharing key in memory, but no key found.", v31, 2u);
    }
  }

  else
  {
    sub_10000CEEC(v13, v16, type metadata accessor for SecureLocationsCachedSharingKey);
    v32 = String.utf8Data.getter();
    v34 = v33;
    v51[0] = v32;
    v51[1] = v33;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v32, v34);
    LOBYTE(v32) = static UUID.== infix(_:_:)();
    (*(v48 + 8))(v6, v49);
    v35 = Logger.logObject.getter();
    if (v32)
    {
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "SharingKey: Setting sharing key into cache for current user.", v37, 2u);
      }

      v38 = v44;
      sub_10000CF54(v16, v44, type metadata accessor for SecureLocationsCachedSharingKey);
      (*(v50 + 56))(v38, 0, 1, v14);
      v39 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
      swift_beginAccess();
      v40 = v45;
      sub_100005F04(v3 + v39, v45, &qword_1005AB4D0, &unk_1004C45D0);
      swift_beginAccess();
      sub_1000F8980(v38, v3 + v39, &qword_1005AB4D0, &unk_1004C45D0);
      swift_endAccess();
      sub_1000DFF08(v40);
      sub_100002CE0(v40, &qword_1005AB4D0, &unk_1004C45D0);
      sub_100002CE0(v38, &qword_1005AB4D0, &unk_1004C45D0);
    }

    else
    {
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v35, v41, "SharingKey: Tried to set initial sharing key, but key in keychain does not belong to current user.", v42, 2u);
      }
    }

    sub_10000CFBC(v16, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

uint64_t sub_1000E126C()
{
  v1[16] = v0;
  sub_10004B564(&qword_1005AACD0, &unk_1004C4750);
  v1[17] = swift_task_alloc();
  v2 = sub_10004B564(&qword_1005AACD8, &qword_1004D8900);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_10004B564(&qword_1005AACE0, &qword_1004C4760);
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for DispatchQoS();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1490, 0, 0);
}

uint64_t sub_1000E1490()
{
  v1 = v0[28];
  v10 = v0[29];
  v11 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[16];
  v12 = v0[27];
  v0[30] = *(v4 + 48);
  v0[6] = sub_1000F8D4C;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058FB30;
  v5 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  v0[31] = sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v0[32] = sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  v0[33] = sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v5);
  v6 = *(v2 + 8);
  v0[34] = v6;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v11, v3);
  v7 = *(v1 + 8);
  v0[36] = v7;
  v0[37] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v10, v12);

  v8 = swift_task_alloc();
  v0[38] = v8;
  *v8 = v0;
  v8[1] = sub_1000E1704;

  return daemon.getter();
}

uint64_t sub_1000E1704(uint64_t a1)
{
  *(*v1 + 312) = a1;

  type metadata accessor for Daemon();
  sub_1000F11F8(&qword_1005AB4E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E185C, v3, v2);
}

uint64_t sub_1000E185C()
{
  *(v0 + 320) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_1000E18D0, 0, 0);
}

uint64_t sub_1000E18D0()
{
  if (qword_1005A7F08 != -1)
  {
    swift_once();
  }

  v1 = *algn_1005AA748;
  *(v0 + 328) = qword_1005AA740;
  *(v0 + 336) = v1;
  type metadata accessor for DarwinNotificationHandler();
  sub_1000F11F8(&qword_1005AACE8, &type metadata accessor for DarwinNotificationHandler, &protocol conformance descriptor for DarwinNotificationHandler);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000E19C8, v3, v2);
}

uint64_t sub_1000E19C8()
{
  dispatch thunk of DarwinNotificationHandler.asyncStream(name:)();

  return _swift_task_switch(sub_1000E1A40, 0, 0);
}

uint64_t sub_1000E1A40()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_1000E1B1C;
  v5 = v0[21];
  v6 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1000E1B1C()
{

  return _swift_task_switch(sub_1000E1C18, 0, 0);
}

uint64_t sub_1000E1C18()
{
  v1 = v0[17];
  v2 = type metadata accessor for DarwinNotification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v15 = v0[36];
    v14 = v0[34];
    v5 = v0[29];
    v6 = v0[26];
    v13 = v0[27];
    v7 = v0[24];
    v8 = v0[16];
    v0[12] = sub_1000F8D54;
    v0[13] = v8;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100020828;
    v0[11] = &unk_10058FB58;
    v9 = _Block_copy(v0 + 8);

    static DispatchQoS.unspecified.getter();
    v0[15] = _swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v9);
    v14(v6, v7);
    v15(v5, v13);

    sub_100002CE0(v1, &qword_1005AACD0, &unk_1004C4750);
    v10 = swift_task_alloc();
    v0[43] = v10;
    *v10 = v0;
    v10[1] = sub_1000E1B1C;
    v11 = v0[21];
    v12 = v0[17];

    return AsyncStream.Iterator.next(isolation:)(v12, 0, 0, v11);
  }
}

uint64_t sub_1000E1EDC()
{
  v0 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - v1;
  sub_1000E8704(&v4 - v1);
  return sub_100002CE0(v2, &qword_1005AB4D0, &unk_1004C45D0);
}

uint64_t sub_1000E1F74()
{
  v0 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
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
    _os_log_impl(&_mh_execute_header, v4, v5, "Received keychain sync notification. Invalidating cached keys.", v6, 2u);
  }

  sub_1000EA050();
  sub_1000E8704(v2);
  return sub_100002CE0(v2, &qword_1005AB4D0, &unk_1004C45D0);
}

uint64_t sub_1000E20D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v26 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v26 - 8);
  __chkstk_darwin(v26);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v23 - v13;
  sub_1000E2544();

  sub_1004AE5D8(v14);

  v15 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15) != 1;
  sub_100002CE0(v14, &qword_1005AB4D0, &unk_1004C45D0);
  sub_10004B518();
  (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v11, v8);
  v18 = swift_allocObject();
  v19 = v25;
  *(v18 + 16) = v24;
  *(v18 + 24) = v19;
  *(v18 + 32) = v16;
  aBlock[4] = sub_1000F7804;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F158;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v21 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v29 + 8))(v4, v21);
  (*(v27 + 8))(v7, v28);
}

void sub_1000E2544()
{
  v1 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v1 - 8);
  v50 = v46 - v2;
  v3 = type metadata accessor for PublicKey();
  __chkstk_darwin(v3 - 8);
  v49 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&qword_1005AABA8, &unk_1004C45E0);
  __chkstk_darwin(v5 - 8);
  v48 = v46 - v6;
  v7 = type metadata accessor for DiversifiedRootKeys();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = __chkstk_darwin(v7);
  v46[1] = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = v46 - v10;
  v11 = sub_10004B564(&qword_1005AACC8, &qword_1004C4740);
  __chkstk_darwin(v11);
  v13 = (v46 - v12);
  v14 = type metadata accessor for PrivateKey();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = __chkstk_darwin(v14);
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  v18 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v18 - 8);
  v20 = v46 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = v0;
  v25 = *(v0 + 48);
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
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

  v27 = sub_100021BB4();

  if ((v27 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A6F0(v30, qword_1005DFB98);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_15;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "SetupVirtualMeDevice: Not a LocationPublishing device. Not setting up OBR";
    goto LABEL_14;
  }

  sub_1004AE5D8(v20);

  v28 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v29 = (*(*(v28 - 8) + 48))(v20, 1, v28);
  sub_100002CE0(v20, &qword_1005AB4D0, &unk_1004C45D0);
  if (v29 != 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000A6F0(v35, qword_1005DFB98);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_15;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "SetupVirtualMeDevice: Key already exists";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_15:

    return;
  }

  unsafeFromAsyncTask<A>(_:)();
  v36 = *v13;
  v38 = v51;
  v37 = v52;
  (*(v51 + 32))(v17, v13 + *(v11 + 48), v52);
  v39 = type metadata accessor for IntermediateKey();
  (*(*(v39 - 8) + 56))(v48, 1, 1, v39);
  PrivateKey.publicKey.getter();
  v40 = v50;
  (*(v38 + 16))(v50, v17, v37);
  (*(v38 + 56))(v40, 0, 1, v37);
  v41 = v47;
  DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)();
  sub_1000E8D04(v41, v36);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000A6F0(v42, qword_1005DFB98);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "SetupVirtualMeDevice: New sharing key imported", v45, 2u);
  }

  (*(v53 + 8))(v47, v54);
  (*(v38 + 8))(v17, v37);
}

uint64_t sub_1000E2EFC(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PrivateKey();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1000E2FEC;

  return daemon.getter();
}

uint64_t sub_1000E2FEC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1000E31C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000E31C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100077308, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[11] = v5;
    *v5 = v4;
    v5[1] = sub_1000E3350;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E3350(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[12] = a1;

  v4 = swift_task_alloc();
  v2[13] = v4;
  *v4 = v3;
  v4[1] = sub_1000E349C;
  v5 = v2[5];

  return sub_100470A18(v5);
}

uint64_t sub_1000E349C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1000E368C;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_1000E35CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E35CC()
{
  v1 = v0[15];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v6 = *(sub_10004B564(&qword_1005AACC8, &qword_1004C4740) + 48);
  *v5 = v1;
  (*(v3 + 32))(&v5[v6], v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000E368C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E3704(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[12] = v4;
  *v4 = v1;
  v4[1] = sub_1000E3820;

  return daemon.getter();
}

uint64_t sub_1000E3820(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[16] = v6;
  v7 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1000E3A00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000E3A00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E5704, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[19] = v5;
    *v5 = v4;
    v5[1] = sub_1000E3B88;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E3B88(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  *v3 = v5;
  v3[1] = sub_1000E3CB8;

  return daemon.getter();
}

uint64_t sub_1000E3CB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 176) = a1;

  v5 = swift_task_alloc();
  *(v3 + 184) = v5;
  v6 = type metadata accessor for LocalStorageService();
  v7 = sub_1000F11F8(&qword_1005AAB88, type metadata accessor for LocalStorageService, &unk_1004D5A30);
  *v5 = v4;
  v5[1] = sub_1000E3E6C;
  v8 = *(v2 + 128);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_1000E3E6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E5794, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[26] = v5;
    *v5 = v4;
    v5[1] = sub_1000E4018;

    return sub_1000E5AF4((v3 + 2), 2);
  }
}

uint64_t sub_1000E4018()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1000E583C;
  }

  else
  {
    v2 = sub_1000E412C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E412C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  *(v0 + 224) = v2;
  *(v0 + 232) = v1;
  if (v1 >> 60 == 15)
  {
    v3 = swift_task_alloc();
    *(v0 + 240) = v3;
    *v3 = v0;
    v3[1] = sub_1000E4268;

    return sub_1003051F4();
  }

  else
  {

    sub_10001A794(v2, v1);
    **(v0 + 32) = 0;

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1000E4268(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_1000E58E4;
  }

  else
  {
    v4 = sub_1000E437C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E437C()
{
  v1 = v0[31];
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(v1 + 16);

      *(v6 + 4) = v7;

      _os_log_impl(&_mh_execute_header, v4, v5, "SecureLocationSetup: already have %ld keys, skipping import…", v6, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v14 = swift_task_alloc();
    v0[46] = v14;
    *v14 = v0;
    v14[1] = sub_1000E5528;

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[34] = sub_10000A6F0(v8, qword_1005DFB98);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "SecureLocationSetup: Starting import of shared keys…", v11, 2u);
    }

    v12 = swift_task_alloc();
    v0[35] = v12;
    *v12 = v0;
    v12[1] = sub_1000E4678;

    return sub_100470DBC();
  }
}

uint64_t sub_1000E4678(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {
    v4 = sub_1000E598C;
  }

  else
  {
    v4 = sub_1000E478C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000E478C(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "SecureLocationSetup: Received shared keys for importing, storing…", v4, 2u);
  }

  v5 = *(v1 + 288);

  v6 = *(v5 + 16);
  *(v1 + 304) = v6;
  v7 = *(v1 + 288);
  if (v6)
  {
    v8 = *(v1 + 192);
    v9 = *(v1 + 48);
    *(v1 + 312) = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);
    v10 = *(v9 + 80);
    *(v1 + 384) = v10;
    *(v1 + 320) = *(v9 + 72);
    *(v1 + 328) = 0;
    sub_10000CF54(v7 + ((v10 + 32) & ~v10), *(v1 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v8, 0);
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v1 + 288);
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      v16 = *(v14 + 16);

      *(v15 + 4) = v16;

      _os_log_impl(&_mh_execute_header, v11, v12, "SecureLocationSetup: %ld shared keys imported", v15, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v17 = swift_task_alloc();
    *(v1 + 368) = v17;
    *v17 = v1;
    v17[1] = sub_1000E5528;

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }
}

uint64_t sub_1000E4A38()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 192);
  v3 = *(v0 + 80);
  v4 = (*(v0 + 384) + 24) & ~*(v0 + 384);
  v5 = *(v2 + 208);
  sub_10000CF54(*(v0 + 88), v3, type metadata accessor for SecureLocationsCachedSharedKey);
  v6 = swift_allocObject();
  *(v0 + 336) = v6;
  *(v6 + 16) = v2;
  sub_10000CEEC(v3, v6 + v4, type metadata accessor for SecureLocationsCachedSharedKey);

  v7 = swift_task_alloc();
  *(v0 + 344) = v7;
  v7[2] = &unk_1004C45B8;
  v7[3] = v6;
  v7[4] = v5;
  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_1000E4BD0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v2, v1, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F4C9C, v7, &type metadata for () + 1);
}

uint64_t sub_1000E4BD0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_1000E50A8;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1000E4D00;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E4D1C()
{
  v24 = v0;
  sub_10000CF54(*(v0 + 88), *(v0 + 72), type metadata accessor for SecureLocationsCachedSharedKey);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  if (v3)
  {
    v6 = *(v0 + 40);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v9 = (v5 + *(v6 + 20));
    v10 = *v9;
    v11 = v9[1];

    sub_10000CFBC(v5, type metadata accessor for SecureLocationsCachedSharedKey);
    v12 = sub_10000D01C(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "SecureLocationSetup: imported shared key for %{private,mask.hash}s", v7, 0x16u);
    sub_100004984(v8);
  }

  else
  {

    sub_10000CFBC(v5, type metadata accessor for SecureLocationsCachedSharedKey);
  }

  sub_10000CFBC(v4, type metadata accessor for SecureLocationsCachedSharedKey);
  v13 = *(v0 + 328) + 1;
  if (v13 == *(v0 + 304))
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 288);
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = *(v17 + 16);

      *(v18 + 4) = v19;

      _os_log_impl(&_mh_execute_header, v14, v15, "SecureLocationSetup: %ld shared keys imported", v18, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v21 = swift_task_alloc();
    *(v0 + 368) = v21;
    *v21 = v0;
    v21[1] = sub_1000E5528;

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {
    *(v0 + 328) = v13;
    v20 = *(v0 + 192);
    sub_10000CF54(*(v0 + 288) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 320) * v13, *(v0 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v20, 0);
  }
}

uint64_t sub_1000E50A8()
{

  return _swift_task_switch(sub_1000E5118, 0, 0);
}

uint64_t sub_1000E5118()
{
  v28 = v0;
  sub_10000CF54(*(v0 + 88), *(v0 + 64), type metadata accessor for SecureLocationsCachedSharedKey);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  if (v3)
  {
    v6 = *(v0 + 40);
    v26 = *(v0 + 88);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = (v5 + *(v6 + 20));
    v11 = *v10;
    v12 = v10[1];

    sub_10000CFBC(v5, type metadata accessor for SecureLocationsCachedSharedKey);
    v13 = sub_10000D01C(v11, v12, &v27);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v1, v2, "SecureLocationSetup: importing shared key for %{private,mask.hash}s failed with %@", v7, 0x20u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);

    v15 = v26;
  }

  else
  {

    sub_10000CFBC(v5, type metadata accessor for SecureLocationsCachedSharedKey);
    v15 = v4;
  }

  sub_10000CFBC(v15, type metadata accessor for SecureLocationsCachedSharedKey);
  v16 = *(v0 + 328) + 1;
  if (v16 == *(v0 + 304))
  {

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 288);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      v22 = *(v20 + 16);

      *(v21 + 4) = v22;

      _os_log_impl(&_mh_execute_header, v17, v18, "SecureLocationSetup: %ld shared keys imported", v21, 0xCu);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v24 = swift_task_alloc();
    *(v0 + 368) = v24;
    *v24 = v0;
    v24[1] = sub_1000E5528;

    return sub_1004AACF8(0, 0xC000000000000000, 2);
  }

  else
  {
    *(v0 + 328) = v16;
    v23 = *(v0 + 192);
    sub_10000CF54(*(v0 + 288) + ((*(v0 + 384) + 32) & ~*(v0 + 384)) + *(v0 + 320) * v16, *(v0 + 88), type metadata accessor for SecureLocationsCachedSharedKey);

    return _swift_task_switch(sub_1000E4A38, v23, 0);
  }
}

uint64_t sub_1000E5528()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1000E5A40;
  }

  else
  {
    v2 = sub_1000E563C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E563C()
{
  v1 = *(v0 + 264) == 0;
  sub_10001A794(*(v0 + 224), *(v0 + 232));

  **(v0 + 32) = v1;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000E5704()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E583C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E58E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E598C()
{
  sub_10001A794(v0[28], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E5A40()
{
  sub_10001A794(v0[28], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E5AF4(uint64_t a1, char a2)
{
  *(v3 + 112) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  return _swift_task_switch(sub_1000E5B18, v2, 0);
}

uint64_t sub_1000E5B18()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 112);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 80) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v6[2] = &unk_1004C45C0;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  v8 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v7 = v0;
  v7[1] = sub_1000E5CA8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F4D58, v6, v8);
}

uint64_t sub_1000E5CA8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_1000E5F10;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_1000E5DD8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E5DD8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 104);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000F4D64();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v6 = *(v0 + 8);
      goto LABEL_7;
    }

    v7 = *(v0 + 64);
    sub_1000F4DB8(v2, v1, v3, v4);

    *v7 = *(v0 + 48);
  }

  else
  {
    **(v0 + 64) = xmmword_1004C43F0;
  }

  v6 = *(v0 + 8);
LABEL_7:

  return v6();
}

uint64_t sub_1000E5F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5F7C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 96) = a1;
  return _swift_task_switch(sub_1000E5FA0, v1, 0);
}

uint64_t sub_1000E5FA0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 96);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  v6[2] = &unk_1004C4608;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v7 = v0;
  v7[1] = sub_1000E6130;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F927C, v6, v8);
}

uint64_t sub_1000E6130()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1000E63AC;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1000E6260;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E6260()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[11];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_10004B564(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F78FC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    sub_1000F4DB8(v2, v1, v3, v4);

    if (v5)
    {
      v6 = v0[1];

      return v6();
    }

    v8 = v0[6];
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1000E63AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E6418(uint64_t a1, char a2)
{
  *(v3 + 120) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v4 = type metadata accessor for SecureLocationsConfig(0);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 - 8);
  *(v3 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_1000E64DC, v2, 0);
}

uint64_t sub_1000E64DC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 120);
  v3 = *(v1 + 192);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = sub_1000F11F8(&qword_1005AAB90, type metadata accessor for LocalStorageService, &unk_1004D5A90);

  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v6[2] = &unk_1004C4630;
  v6[3] = v4;
  v6[4] = v3;
  v7 = swift_task_alloc();
  *(v0 + 104) = v7;
  v8 = sub_10004B564(&qword_1005AAB98, &qword_1004C45C8);
  *v7 = v0;
  v7[1] = sub_1000E666C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, v1, v5, 0xD00000000000001DLL, 0x80000001004E0910, sub_1000F927C, v6, v8);
}

uint64_t sub_1000E666C()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1000E6954;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1000E679C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000E679C()
{
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[14];
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000F11F8(&qword_1005AABF8, type metadata accessor for SecureLocationsConfig, &unk_1004CC1A0);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    if (v5)
    {
      sub_1000F4DB8(v2, v1, v3, v4);

      v6 = v0[1];
      goto LABEL_7;
    }

    v8 = v0[10];
    v9 = v0[6];
    sub_1000F4DB8(v2, v1, v3, v4);

    sub_10000CEEC(v8, v9, type metadata accessor for SecureLocationsConfig);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(v0[9] + 56))(v0[6], v7, 1, v0[8]);

  v6 = v0[1];
LABEL_7:

  return v6();
}

uint64_t sub_1000E6954()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E69C8()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "shareKey: keyForSharingLocationToFriends", v3, 2u);
  }

  v4 = type metadata accessor for Transaction();
  __chkstk_darwin(v4);
  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000E6B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 48);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a1;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1000F8BD8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F978;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

uint64_t sub_1000E6E24(char *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v106 = a4;
  v107 = a3;
  v108 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v5 - 8);
  v105 = v5;
  __chkstk_darwin(v5);
  v102 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v98 = *(v8 - 8);
  v99 = v8;
  __chkstk_darwin(v8);
  v97 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for HashedAdvertisement();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Advertisement();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PublicKey();
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DiversifiedRootKeys();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v95 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v94 = &v75 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v75 - v20;
  __chkstk_darwin(v19);
  v23 = &v75 - v22;
  v24 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v75 - v25;
  v27 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E8704(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100002CE0(v26, &qword_1005AB4D0, &unk_1004C45D0);
    v31 = v106;

    v32 = v108;

    sub_1000F6DC0(v33, v107, v31, v32, a1);
  }

  else
  {
    sub_10000CEEC(v26, v30, type metadata accessor for SecureLocationsCachedSharingKey);
    v35 = *(v27 + 20);
    v36 = v14[2];
    v36(v23, &v30[v35], v13);
    v37 = v13;
    v38 = v14;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v84 = v30;
    v39 = type metadata accessor for Logger();
    sub_10000A6F0(v39, qword_1005DFB98);
    v36(v21, v23, v37);
    v40 = v94;
    v96 = v23;
    v83 = v14 + 2;
    v82 = v36;
    v36(v94, v23, v37);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v77 = v43;
      v80 = swift_slowAlloc();
      aBlock[0] = v80;
      *v43 = 136315394;
      v79 = v41;
      v44 = v85;
      v78 = v42;
      DiversifiedRootKeys.publicKey.getter();
      sub_1000F11F8(&qword_1005AACC0, &type metadata accessor for PublicKey, &protocol conformance descriptor for PublicKey);
      v45 = v86;
      v46 = RawRepresentable<>.base64EncodedString(options:)();
      v48 = v47;
      v76 = *(v87 + 1);
      v76(v44, v45);
      v75 = v37;
      v87 = v38[1];
      v81 = (v38 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v87(v21, v37);
      v49 = sub_10000D01C(v46, v48, aBlock);

      v50 = v77;
      *(v77 + 1) = v49;
      *(v50 + 6) = 2080;
      DiversifiedRootKeys.publicKey.getter();
      v51 = v88;
      PublicKey.advertisement.getter();
      v52 = v45;
      v53 = v75;
      v76(v44, v52);
      v54 = v91;
      Advertisement.hashed.getter();
      (*(v89 + 8))(v51, v90);
      sub_1000F11F8(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
      v55 = v93;
      v56 = RawRepresentable<>.base64EncodedString(options:)();
      v58 = v57;
      (*(v92 + 8))(v54, v55);
      v87(v40, v53);
      v59 = sub_10000D01C(v56, v58, aBlock);

      *(v50 + 14) = v59;
      v60 = v79;
      _os_log_impl(&_mh_execute_header, v79, v78, "keysForFriends: Memory cached %s locationId: %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v61 = v14[1];
      v81 = (v14 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v40, v37);
      v87 = v61;
      v61(v21, v37);
      v53 = v37;
    }

    v62 = v106;
    v63 = v107;
    sub_10004B518();
    v65 = v97;
    v64 = v98;
    v66 = v99;
    (*(v98 + 104))(v97, enum case for DispatchQoS.QoSClass.default(_:), v99);
    v67 = static OS_dispatch_queue.global(qos:)();
    (*(v64 + 8))(v65, v66);
    v68 = v95;
    v82(v95, v96, v53);
    v69 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v70 = swift_allocObject();
    *(v70 + 16) = v63;
    *(v70 + 24) = v62;
    (v38[4])(v70 + v69, v68, v53);
    *(v70 + ((v15 + v69 + 7) & 0xFFFFFFFFFFFFFFF8)) = v108;
    aBlock[4] = sub_1000F8BE4;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F9C8;
    v71 = _Block_copy(aBlock);

    v72 = v100;
    static DispatchQoS.unspecified.getter();
    v109 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v73 = v102;
    v74 = v105;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v71);

    (*(v104 + 8))(v73, v74);
    (*(v101 + 8))(v72, v103);
    v87(v96, v53);

    Transaction.capture()();
    return sub_10000CFBC(v84, type metadata accessor for SecureLocationsCachedSharingKey);
  }
}

void sub_1000E7AC4(void (*a1)(char *, void), uint64_t a2, uint64_t a3)
{
  v5 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  v8 = type metadata accessor for DiversifiedRootKeys();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7, 0);
  sub_100002CE0(v7, &qword_1005AABB0, &unk_1004C45F0);
  Transaction.capture()();
}

void sub_1000E7C08(char a1, void (*a2)(char *, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  if (a1)
  {
    v12 = type metadata accessor for Transaction();
    __chkstk_darwin(v12);
    v24[-4] = a5;
    v24[-3] = a2;
    v24[-2] = a3;
    static Transaction.named<A>(_:with:)();
LABEL_11:
    Transaction.capture()();
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "keysForFriends: SecureLocations not setup. Cannot share keys", v16, 2u);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v17 = qword_1005DFB60;
  v18 = *(qword_1005DFB60 + 16);
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = 0xD000000000000019;
  v19[4] = 0x80000001004E0D40;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1000CAB60;
  *(v20 + 24) = v19;
  aBlock[4] = sub_1000CAA0C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058FB08;
  v21 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v18, v21);
  _Block_release(v21);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if ((v18 & 1) == 0)
  {
    v22 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
    type metadata accessor for SecureLocationsError(0);
    v24[1] = 3;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = aBlock[0];
    a2(v11, aBlock[0]);

    sub_100002CE0(v11, &qword_1005AABB0, &unk_1004C45F0);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_1000E8048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v11 = *(v18 - 8);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 48);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1000F8CE8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058FA90;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v10, v8);
  (*(v11 + 8))(v13, v18);
}

void sub_1000E8344(uint64_t a1, uint64_t a2, void (*a3)(char *, void *))
{
  v4 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1004AE5D8(v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100002CE0(v9, &qword_1005AB4D0, &unk_1004C45D0);
    v14 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    type metadata accessor for SecureLocationsError(0);
    v21 = 3;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    v15 = v22;
    a3(v6, v22);

    sub_100002CE0(v6, &qword_1005AABB0, &unk_1004C45F0);
  }

  else
  {
    sub_10000CEEC(v9, v13, type metadata accessor for SecureLocationsCachedSharingKey);
    v16 = sub_1000F4690();
    if (v17)
    {
      sub_1000E0B80(v16, v17);
    }

    v18 = *(v10 + 20);
    v19 = type metadata accessor for DiversifiedRootKeys();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v6, &v13[v18], v19);
    (*(v20 + 56))(v6, 0, 1, v19);
    a3(v6, 0);
    sub_100002CE0(v6, &qword_1005AABB0, &unk_1004C45F0);
    sub_10000CFBC(v13, type metadata accessor for SecureLocationsCachedSharingKey);
  }

  Transaction.capture()();
}

uint64_t sub_1000E8704@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v38 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v3 = __chkstk_darwin(v38);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v41 = &v38 - v6;
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v42 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000A6F0(v15, qword_1005DFB98);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "shareKey: getCachedSharingKeys", v18, 2u);
  }

  v19 = *(v2 + 48);
  *v14 = v19;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v19)
  {
    v22 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v2 + v22, v8, &qword_1005AB4D0, &unk_1004C45D0);
    v23 = v42;
    if ((*(v9 + 48))(v8, 1, v42) == 1)
    {
      sub_100002CE0(v8, &qword_1005AB4D0, &unk_1004C45D0);

      v24 = v41;
      sub_1004AE5D8(v41);

      v25 = v40;
      sub_100005F04(v2 + v22, v40, &qword_1005AB4D0, &unk_1004C45D0);
      swift_beginAccess();
      sub_1000F8980(v24, v2 + v22, &qword_1005AB4D0, &unk_1004C45D0);
      swift_endAccess();
      sub_1000DFF08(v25);
      sub_100002CE0(v25, &qword_1005AB4D0, &unk_1004C45D0);
      sub_100002CE0(v24, &qword_1005AB4D0, &unk_1004C45D0);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v44[0] = v29;
        *v28 = 136315138;
        sub_100005F04(v2 + v22, v24, &qword_1005AB4D0, &unk_1004C45D0);
        v30 = String.init<A>(describing:)();
        v32 = sub_10000D01C(v30, v31, v44);

        *(v28 + 4) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "shareKey: Returning localstorage cached sharing keys %s", v28, 0xCu);
        sub_100004984(v29);
      }

      return sub_100005F04(v2 + v22, v43, &qword_1005AB4D0, &unk_1004C45D0);
    }

    else
    {
      v33 = v39;
      sub_10000CEEC(v8, v39, type metadata accessor for SecureLocationsCachedSharingKey);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "shareKey: returning memory cached sharing keys", v36, 2u);
      }

      v37 = v43;
      sub_10000CEEC(v33, v43, type metadata accessor for SecureLocationsCachedSharingKey);
      return (*(v9 + 56))(v37, 0, 1, v23);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E8D04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v61 = a2;
  v62 = a1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v57 = &v54 - v5;
  v6 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v6 - 8);
  v58 = &v54 - v7;
  v8 = type metadata accessor for PrivateKey();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = __chkstk_darwin(v8);
  v54 = v10;
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v54 - v11;
  v12 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v54 - v16;
  v18 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v3 + 48);
  *v25 = v26;
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_6;
  }

  sub_1000F4690();
  if (v28)
  {
    v29 = String.utf8Data.getter();
    v31 = v30;

    v63 = v29;
    v64 = v31;
    sub_1000CA210();
    DataProtocol.stableUUID.getter();
    sub_1000049D0(v29, v31);
    v32 = *(v18 + 20);
    v33 = type metadata accessor for DiversifiedRootKeys();
    (*(*(v33 - 8) + 16))(&v21[v32], v62, v33);
    *&v21[*(v18 + 24)] = v61;
    sub_10000CF54(v21, v17, type metadata accessor for SecureLocationsCachedSharingKey);
    (*(v19 + 56))(v17, 0, 1, v18);
    v34 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v3 + v34, v15, &qword_1005AB4D0, &unk_1004C45D0);
    swift_beginAccess();
    sub_1000F8980(v17, v3 + v34, &qword_1005AB4D0, &unk_1004C45D0);
    swift_endAccess();
    sub_1000DFF08(v15);
    sub_100002CE0(v15, &qword_1005AB4D0, &unk_1004C45D0);
    sub_100002CE0(v17, &qword_1005AB4D0, &unk_1004C45D0);
    v35 = type metadata accessor for Transaction();
    __chkstk_darwin(v35);
    *(&v54 - 2) = v3;
    *(&v54 - 1) = v21;
    static Transaction.named<A>(_:with:)();
    v36 = v58;
    DiversifiedRootKeys.privateKey.getter();
    v38 = v59;
    v37 = v60;
    if ((*(v59 + 48))(v36, 1, v60) == 1)
    {
      sub_100002CE0(v36, &unk_1005AE620, &qword_1004C4588);
    }

    else
    {
      v43 = *(v38 + 32);
      v44 = v56;
      v43(v56, v36, v37);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000A6F0(v45, qword_1005DFB98);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Dual-writing sharing key back to BA", v48, 2u);
      }

      v49 = type metadata accessor for TaskPriority();
      v50 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v51 = v55;
      (*(v38 + 16))(v55, v44, v37);
      v52 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v53 = swift_allocObject();
      *(v53 + 2) = 0;
      *(v53 + 3) = 0;
      *(v53 + 4) = v61;
      v43(&v53[v52], v51, v37);
      sub_10020D620(0, 0, v50, &unk_1004C4730, v53);

      (*(v38 + 8))(v44, v37);
    }

    sub_10000CFBC(v21, type metadata accessor for SecureLocationsCachedSharingKey);
    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_16;
  }

LABEL_6:
  v39 = type metadata accessor for Logger();
  sub_10000A6F0(v39, qword_1005DFB98);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "shareKey: Unable to get myPersonID to update cachedSharingKeys", v42, 2u);
  }
}

uint64_t sub_1000E9538(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1004B28FC(a3, sub_1000F8BB0, a1);
}

void sub_1000E95B0(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AACB8, &qword_1004DD6F0);
  __chkstk_darwin(v2);
  v4 = (&v18 - v3);
  sub_100005F04(a1, &v18 - v3, &qword_1005AACB8, &qword_1004DD6F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v5;
      v19 = v10;
      *v9 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10000D01C(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "shareKey: Error saving sharing keys locally %s", v9, 0xCu);
      sub_100004984(v10);
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

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "shareKey: Successfully saved sharing keys locally", v17, 2u);
    }

    sub_100002CE0(v4, &qword_1005AACB8, &qword_1004DD6F0);
  }

  Transaction.capture()();
}

uint64_t sub_1000E98A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = swift_task_alloc();
  v5[4] = v6;
  *v6 = v5;
  v6[1] = sub_1000E993C;

  return daemon.getter();
}

uint64_t sub_1000E993C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for LocationService(0);
  v6 = sub_1000F11F8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1000F11F8(&qword_1005A9308, type metadata accessor for LocationService, &unk_1004D65B0);
  *v3 = v9;
  v3[1] = sub_1000E9B18;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1000E9B18(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000E9F80, 0, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[9] = v5;
    *v5 = v4;
    v5[1] = sub_1000E9CA0;

    return sub_10001CC28();
  }
}

uint64_t sub_1000E9CA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[10] = a1;

  v4 = swift_task_alloc();
  v2[11] = v4;
  *v4 = v3;
  v4[1] = sub_1000E9E00;
  v5 = v2[3];
  v6 = v2[2];

  return sub_100471104(v6, v5);
}

uint64_t sub_1000E9E00()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000E9FE4;
  }

  else
  {

    v2 = sub_1000E9F1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E9F1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E9F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E9FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000EA050()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v29[-v3];
  v5 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v1 + 48);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v17 = type metadata accessor for SecureLocationsCachedSharingKey(0);
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
    swift_beginAccess();
    sub_100005F04(v1 + v18, v8, &qword_1005AB4D0, &unk_1004C45D0);
    swift_beginAccess();
    sub_1000F8980(v10, v1 + v18, &qword_1005AB4D0, &unk_1004C45D0);
    swift_endAccess();
    sub_1000DFF08(v8);
    sub_100002CE0(v8, &qword_1005AB4D0, &unk_1004C45D0);
    sub_100002CE0(v10, &qword_1005AB4D0, &unk_1004C45D0);
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
  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005DFB98);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "shareKey: Invalidated memory cached key", v22, 2u);
  }

  sub_1000F4690();
  if (v23)
  {

    v24 = type metadata accessor for TaskPriority();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v1;

    sub_1001D7F30(0, 0, v4, &unk_1004C4710, v25);
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "shareKey: unable to get myPersonID to invalidate localstorage cached keys", v28, 2u);
    }
  }
}

uint64_t sub_1000EA4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  v6 = sub_10004B564(&qword_1005AACA0, &qword_1004C4718);
  *v5 = v4;
  v5[1] = sub_1000EA594;

  return unsafeBlocking<A>(_:)(v4 + 16, sub_1000EA8AC, 0, v6);
}

uint64_t sub_1000EA594()
{

  return _swift_task_switch(sub_1000EA690, 0, 0);
}

uint64_t sub_1000EA690()
{
  v15 = v0;
  v1 = *(v0 + 16);
  if (*(v0 + 24))
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136315138;
      *(v0 + 32) = v1;
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000D01C(v7, v8, &v14);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unable to get follower handles %s", v5, 0xCu);
      sub_100004984(v6);
    }

    else
    {

      sub_1000C8450(v1, 1);
    }

    v11.n128_f64[0] = sub_1000C8450(v1, 1);
  }

  else
  {
    v10 = sub_1000DD878(*(v0 + 16));

    KeyedThrottle.clearThrottleForKeysExcept(keys:)(v10);
    sub_1000C8450(v1, 0);
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

void sub_1000EA8AC(uint64_t a1@<X8>)
{
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v2 = qword_1005A7F20;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  __chkstk_darwin(v3);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v4, 0);
  *a1 = v4;
  *(a1 + 8) = 0;
}

uint64_t sub_1000EA9E8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v10 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for DiversifiedRootKeys();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v9;

  v15 = v9;
  sub_1000E69C8();

  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v3 + 8);
  v16(v6, v2);
  OS_dispatch_group.wait(timeout:)();
  v16(v8, v2);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005DFB98);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "keysForFriends: sync - timed out waiting for keys", v20, 2u);
    }
  }

  swift_beginAccess();
  sub_100005F04(v12, a1, &qword_1005AABB0, &unk_1004C45F0);
}

void sub_1000EACDC(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = swift_projectBox();
  swift_beginAccess();
  sub_1000F8980(a1, v6, &qword_1005AABB0, &unk_1004C45F0);
  dispatch_group_leave(a4);
}

uint64_t sub_1000EAD50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v71 = a2;
  v72 = a4;
  v70 = a3;
  v73 = a9;
  v74 = a8;
  v10 = type metadata accessor for HashedAdvertisement();
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Advertisement();
  v66 = *(v13 - 8);
  v67 = v13;
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PublicKey();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v63 - v21;
  v23 = type metadata accessor for DiversifiedRootKeys();
  __chkstk_darwin(v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  v28 = v27;
  v30 = v29;
  sub_100005F04(v26, v22, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v28 + 48))(v22, 1, v30) == 1)
  {
    sub_100002CE0(v22, &qword_1005AABB0, &unk_1004C45F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    v32 = v71;
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_10000D01C(0xD000000000000042, 0x80000001004E0960, aBlock);
      *(v35 + 12) = 2080;
      aBlock[6] = v32;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v36 = String.init<A>(describing:)();
      v38 = sub_10000D01C(v36, v37, aBlock);

      *(v35 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "shareKey: Error getting key for %s, %s", v35, 0x16u);
      swift_arrayDestroy();
    }

    return v74(v32);
  }

  else
  {
    v71 = v28;
    (*(v28 + 32))(v25, v22, v30);
    DiversifiedRootKeys.publicKey.getter();
    PublicKey.advertisement.getter();
    (*(v17 + 8))(v19, v16);
    Advertisement.hashed.getter();
    (*(v66 + 8))(v15, v67);
    v40 = HashedAdvertisement.data.getter();
    v42 = v41;
    (*(v68 + 8))(v12, v69);
    v43 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v40, v42);
    v44 = v70;
    v45 = v72;
    if (v43._countAndFlagsBits == v70 && v43._object == v72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000A6F0(v46, qword_1005DFB98);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "shareKey: all good - subscribedId is same as currentLocationId.", v49, 2u);
      }

      v74(0);
    }

    else
    {
      v69 = v25;
      v50 = v30;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_10000A6F0(v51, qword_1005DFB98);

      v52 = v64;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v55 = 136315650;
        *(v55 + 4) = sub_10000D01C(v44, v45, aBlock);
        *(v55 + 12) = 2080;
        v56 = sub_10000D01C(v43._countAndFlagsBits, v43._object, aBlock);

        *(v55 + 14) = v56;
        *(v55 + 22) = 2080;
        v57 = v63;
        *(v55 + 24) = sub_10000D01C(v63, v52, aBlock);
        _os_log_impl(&_mh_execute_header, v53, v54, "shareKey: locationId mismatch. subscribedId %s current %s Sending current keys to %s", v55, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v57 = v63;
      }

      sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1004C1900;
      *(v58 + 32) = v57;
      *(v58 + 40) = v52;

      sub_1000EB6B4(v58, _swiftEmptyDictionarySingleton, 0, v74, v73);

      v30 = v50;
      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v59 = static SystemInfo.underTest.getter();
      v25 = v69;
      if ((v59 & 1) == 0)
      {
        v60 = String._bridgeToObjectiveC()();
        v61 = swift_allocObject();
        *(v61 + 16) = 2;
        aBlock[4] = sub_1000F92A8;
        aBlock[5] = v61;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000119E4;
        aBlock[3] = &unk_10058F298;
        v62 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v62);
      }
    }

    return (*(v71 + 8))(v25, v30);
  }
}

void sub_1000EB6B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v26 = v6;
    v15 = a5;
    v16 = a1;
    v17 = a2;
    v18 = a4;
    v19 = a3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10000D01C(0xD000000000000051, 0x80000001004E0BC0, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v20, 0xCu);
    sub_100004984(v21);

    a3 = v19;
    a4 = v18;
    a2 = v17;
    a1 = v16;
    a5 = v15;
    v6 = v26;
  }

  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  swift_unownedRetainStrong();

  CurrentValueSubject.value.getter();

  if (v28 == 1)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v6;
    *(v22 + 24) = a4;
    *(v22 + 32) = a5;
    *(v22 + 40) = a1;
    *(v22 + 48) = a2;
    *(v22 + 56) = a3 & 1;

    sub_1000E69C8();
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "shareKey: Not sending keys since its not meDevice.", v25, 2u);
    }
  }
}

uint64_t sub_1000EB9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v34 = a8;
  v32 = a2;
  v33 = a7;
  v31 = a6;
  v29 = a4;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for DispatchQoS();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v30 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v17 = &v29 - v16;
  v35 = *(a3 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue);
  sub_100005F04(a1, &v29 - v16, &qword_1005AABB0, &unk_1004C45F0);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v29;
  v20[2] = a3;
  v20[3] = v21;
  v20[4] = a5;
  sub_1000176A8(v17, v20 + v18, &qword_1005AABB0, &unk_1004C45F0);
  v22 = v32;
  *(v20 + v19) = v31;
  v23 = v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = v33;
  v23[8] = v34;
  *(v20 + ((v19 + 31) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1000F879C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_10058F680;
  v24 = _Block_copy(aBlock);

  swift_errorRetain();
  v25 = v30;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v26 = v36;
  v27 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v40 + 8))(v26, v27);
  (*(v37 + 8))(v25, v39);
}

void sub_1000EBDD8(uint64_t a1, void ***p_aBlock, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v104 = a7;
  v122 = a6;
  v102 = a5;
  v118 = a4;
  v121 = a3;
  v123 = a1;
  v10 = type metadata accessor for UUID();
  v103 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v114 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchQoS();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS.QoSClass();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v97 - v17;
  v19 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v19 - 8);
  v21 = &v97 - v20;
  v109 = type metadata accessor for PrivateKey();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v24 - 8);
  v26 = &v97 - v25;
  v27 = type metadata accessor for DiversifiedRootKeys();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v125 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000F4690();
  if (!v31)
  {
    if (qword_1005A7EE8 == -1)
    {
LABEL_5:
      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "shareKey: Unable to get my own person ID. Not sending keys", v35, 2u);
      }

      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v36 = qword_1005DFB60;
      v37 = *(qword_1005DFB60 + 16);
      v38 = swift_allocObject();
      *(v38 + 16) = v36;
      strcpy((v38 + 24), "No MyPersonID");
      *(v38 + 38) = -4864;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_1000C7A6C;
      *(v39 + 24) = v38;
      v132 = sub_1000CAA0C;
      v133 = v39;
      aBlock = _NSConcreteStackBlock;
      v129 = 1107296256;
      v130 = sub_10013EC94;
      v131 = &unk_10058F6F8;
      v40 = _Block_copy(&aBlock);
      swift_retain_n();

      dispatch_sync(v37, v40);
      _Block_release(v40);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        __break(1u);
      }

      else
      {
        type metadata accessor for SecureLocationsError(0);
        v126 = 3;
        sub_1000BC07C(_swiftEmptyArrayStorage);
        sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
        _BridgedStoredNSError.init(_:userInfo:)();
        v41 = aBlock;
        (p_aBlock)(aBlock);
      }

      return;
    }

LABEL_29:
    swift_once();
    goto LABEL_5;
  }

  v120 = v30;
  v124 = v31;
  sub_100005F04(v118, v26, &qword_1005AABB0, &unk_1004C45F0);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {

    sub_100002CE0(v26, &qword_1005AABB0, &unk_1004C45F0);
LABEL_16:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000A6F0(v50, qword_1005DFB98);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "shareKey: Unable to get keys to send to followers", v53, 2u);
    }

    v54 = v119;
    v55 = p_aBlock;

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v56 = qword_1005DFB60;
    v57 = *(qword_1005DFB60 + 16);
    v58 = swift_allocObject();
    v58[2] = v56;
    v58[3] = 0xD000000000000010;
    v58[4] = 0x80000001004E0C20;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_1000CAB60;
    *(v59 + 24) = v58;
    v132 = sub_1000CAA0C;
    v133 = v59;
    p_aBlock = &aBlock;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_10013EC94;
    v131 = &unk_10058F770;
    v60 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v57, v60);
    _Block_release(v60);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      sub_10004B518();
      v61 = v111;
      v62 = v110;
      v63 = v112;
      (*(v111 + 104))(v110, enum case for DispatchQoS.QoSClass.default(_:), v112);
      v64 = static OS_dispatch_queue.global(qos:)();
      (*(v61 + 8))(v62, v63);
      v65 = swift_allocObject();
      v66 = v121;
      *(v65 + 16) = v55;
      *(v65 + 24) = v66;
      v132 = sub_1000F885C;
      v133 = v65;
      aBlock = _NSConcreteStackBlock;
      v129 = 1107296256;
      v130 = sub_100020828;
      v131 = &unk_10058F7C0;
      v67 = _Block_copy(&aBlock);

      v68 = v113;
      static DispatchQoS.unspecified.getter();
      v127 = _swiftEmptyArrayStorage;
      sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
      v69 = v114;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v67);

      (*(v117 + 8))(v69, v54);
      (*(v115 + 8))(v68, v116);

      return;
    }

    __break(1u);
    goto LABEL_29;
  }

  v118 = a8;
  v101 = p_aBlock;
  v42 = v125;
  (*(v28 + 32))(v125, v26, v27);
  DiversifiedRootKeys.privateKey.getter();
  v43 = v108;
  v44 = v109;
  if ((*(v108 + 48))(v21, 1, v109) == 1)
  {

    sub_100002CE0(v21, &unk_1005AE620, &qword_1004C4588);
    (*(v28 + 8))(v42, v27);
LABEL_15:
    p_aBlock = v101;
    goto LABEL_16;
  }

  v107 = v10;
  v99 = v28;
  v100 = v27;
  v45 = v23;
  (*(v43 + 32))(v23, v21, v44);
  v46 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  v47 = v123;
  swift_beginAccess();
  sub_100005F04(v47 + v46, v18, &qword_1005AB4D0, &unk_1004C45D0);
  v48 = v44;
  v49 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  if ((*(*(v49 - 8) + 48))(v18, 1, v49))
  {

    sub_100002CE0(v18, &qword_1005AB4D0, &unk_1004C45D0);
    (*(v43 + 8))(v45, v48);
    (*(v99 + 8))(v125, v100);
    goto LABEL_15;
  }

  v70 = *&v18[*(v49 + 24)];
  sub_100002CE0(v18, &qword_1005AB4D0, &unk_1004C45D0);
  v71 = swift_allocObject();
  v98 = v71;
  *(v71 + 16) = 0;
  v72 = v71 + 16;
  v73 = *(v102 + 16);
  v106 = v45;
  if (v73)
  {
    v105 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle;
    v104 &= 1u;
    ++v103;
    v74 = (v102 + 40);
    do
    {
      v75 = v72;
      v76 = v70;
      v77 = *(v74 - 1);
      v78 = *v74;

      v79 = String.utf8Data.getter();
      v81 = v80;
      aBlock = v79;
      v129 = v80;
      sub_1000CA210();
      DataProtocol.stableUUID.getter();
      v82 = sub_1000049D0(v79, v81);
      __chkstk_darwin(v82);
      *(&v97 - 14) = v122;
      *(&v97 - 13) = v77;
      v70 = v76;
      v72 = v75;
      v83 = v124;
      *(&v97 - 12) = v78;
      *(&v97 - 11) = v84;
      *(&v97 - 10) = v72;
      *(&v97 - 9) = v12;
      *(&v97 - 8) = v120;
      *(&v97 - 7) = v83;
      v85 = v106;
      *(&v97 - 6) = v70;
      *(&v97 - 5) = v85;
      *(&v97 - 4) = v125;
      *(&v97 - 24) = v104;
      *(&v97 - 2) = v118;

      v86 = v107;
      KeyedThrottle.throttle(key:block:)();

      (*v103)(v12, v86);
      v74 += 2;
      --v73;
    }

    while (v73);
  }

  sub_10004B518();
  v87 = v111;
  v88 = v110;
  v89 = v112;
  (*(v111 + 104))(v110, enum case for DispatchQoS.QoSClass.default(_:), v112);
  v90 = static OS_dispatch_queue.global(qos:)();
  (*(v87 + 8))(v88, v89);
  v91 = swift_allocObject();
  v92 = v121;
  v91[2] = v101;
  v91[3] = v92;
  v91[4] = v98;
  v132 = sub_1000F88F8;
  v133 = v91;
  aBlock = _NSConcreteStackBlock;
  v129 = 1107296256;
  v130 = sub_100020828;
  v131 = &unk_10058F838;
  v93 = _Block_copy(&aBlock);

  v94 = v113;
  static DispatchQoS.unspecified.getter();
  v127 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v95 = v114;
  v96 = v119;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v93);

  (*(v117 + 8))(v95, v96);
  (*(v115 + 8))(v94, v116);

  (*(v108 + 8))(v106, v109);
  (*(v99 + 8))(v125, v100);
}

void sub_1000ED024(void (*a1)())
{
  type metadata accessor for SecureLocationsError(0);
  sub_1000BC07C(_swiftEmptyArrayStorage);
  sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
  _BridgedStoredNSError.init(_:userInfo:)();
  a1();
}

BOOL sub_1000ED0E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void ***a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  v179 = a8;
  v177 = a7;
  v176 = a6;
  v182 = a5;
  v180 = a4;
  v189 = a2;
  v178 = type metadata accessor for HashedAdvertisement();
  v175 = *(v178 - 8);
  __chkstk_darwin(v178);
  v174 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for Advertisement();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for PublicKey();
  v17 = *(v170 - 8);
  __chkstk_darwin(v170);
  v168 = &v165 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Destination();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v183 = &v165 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v192 = &v165 - v24;
  __chkstk_darwin(v23);
  v191 = &v165 - v25;
  v26 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v26 - 8);
  v190 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  v29 = __chkstk_darwin(v28 - 8);
  v181 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v185 = (&v165 - v32);
  v33 = __chkstk_darwin(v31);
  v35 = &v165 - v34;
  v36 = __chkstk_darwin(v33);
  v165 = &v165 - v37;
  v38 = __chkstk_darwin(v36);
  v40 = &v165 - v39;
  __chkstk_darwin(v38);
  v42 = (&v165 - v41);
  v43 = *(v20 + 56);
  v193 = v19;
  v167 = v20 + 56;
  v166 = v43;
  v43(&v165 - v41, 1, 1, v19);
  v44 = *(a1 + 16);
  v45 = &off_1005A7000;
  v46 = v42;
  v186 = v42;
  v187 = a3;
  v188 = v20;
  v169 = v17;
  if (v44)
  {
    v47 = sub_1000110D8(v189, a3);
    if (v48)
    {
      v49 = *(*(a1 + 56) + 8 * v47);
      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = qword_1005A7EE8;

        if (v51 != -1)
        {
          swift_once();
        }

        v52 = type metadata accessor for Logger();
        v53 = sub_10000A6F0(v52, qword_1005DFB98);

        v192 = v53;
        v54 = Logger.logObject.getter();
        v55 = v49;
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v56))
        {
          v57 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock = v45;
          *v57 = 136380675;
          v58 = Array.description.getter();
          v17 = v59;
          v60 = sub_10000D01C(v58, v59, &aBlock);

          *(v57 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v54, v56, "shareKey: Valid handles: %{private}s", v57, 0xCu);
          sub_100004984(v45);
        }

        if (*(v55 + 16))
        {
          v45 = v55;
          v55 = 0;
          v184 = (v188 + 8);
          v185 = (v188 + 32);
          v46 = v45 + 5;
          v194 = (v188 + 48);
          v195 = v50 - 1;
          do
          {
            v17 = *(v46 - 1);
            v56 = *v46;
            v61 = qword_1005A7EF8;

            if (v61 != -1)
            {
              swift_once();
            }

            v62 = Data.init(base64Encoded:options:)();
            if (v63 >> 60 == 15)
            {
              v64 = Logger.logObject.getter();
              v65 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                *v66 = 0;
                _os_log_impl(&_mh_execute_header, v64, v65, "failed to decode server provided push identifier", v66, 2u);
              }
            }

            else
            {
              v67 = v62;
              v68 = v63;
              static String.Encoding.utf8.getter();
              v69 = String.init(data:encoding:)();
              v71 = v70;
              sub_10001A794(v67, v68);
              if (v71)
              {

                v17 = v69;
                v56 = v71;
              }
            }

            Destination.init(string:)();
            v72 = v193;
            v50 = *v194;
            if ((*v194)(v40, 1, v193) == 1)
            {
              sub_100002CE0(v40, &qword_1005A9280, &qword_1004C27F8);
            }

            else
            {
              v73 = *v185;
              v74 = v191;
              (*v185)(v191, v40, v72);
              if (sub_10012BC08(v74))
              {
                v195 = v17;

                v113 = v187;

                v114 = Logger.logObject.getter();
                v115 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v114, v115))
                {
                  v116 = swift_slowAlloc();
                  aBlock = swift_slowAlloc();
                  *v116 = 141558787;
                  *(v116 + 4) = 1752392040;
                  *(v116 + 12) = 2081;
                  *(v116 + 14) = sub_10000D01C(v189, v113, &aBlock);
                  *(v116 + 22) = 2160;
                  *(v116 + 24) = 1752392040;
                  *(v116 + 32) = 2081;
                  *(v116 + 34) = sub_10000D01C(v195, v56, &aBlock);
                  _os_log_impl(&_mh_execute_header, v114, v115, "shareKey: Received handle from server with valid messaging destination %{private,mask.hash}s %{private,mask.hash}s", v116, 0x2Au);
                  swift_arrayDestroy();
                }

                v105 = v186;
                sub_100002CE0(v186, &qword_1005A9280, &qword_1004C27F8);
                v40 = v193;
                v117 = v166;
                v106 = v165;
                v73(v105, v191, v193);
                v117(v105, 0, 1, v40);
                v55 = v187;
                v17 = v195;
LABEL_59:
                sub_100005F04(v105, v106, &qword_1005A9280, &qword_1004C27F8);
                v118 = v50(v106, 1, v40);
                sub_100002CE0(v106, &qword_1005A9280, &qword_1004C27F8);
                if (v118 == 1)
                {
                  v93 = Logger.logObject.getter();
                  v119 = static os_log_type_t.default.getter();
                  v120 = os_log_type_enabled(v93, v119);
                  v45 = &off_1005A7000;
                  v50 = v188;
                  if (v120)
                  {
                    v121 = swift_slowAlloc();
                    *v121 = 0;
                    _os_log_impl(&_mh_execute_header, v93, v119, "shareKey: No valid handles found from server. Cannot send keys", v121, 2u);
                    v46 = v186;
LABEL_62:
                  }

                  else
                  {
                    v46 = v186;
                  }

LABEL_63:
                }

                else
                {
                  v46 = v186;
                  v45 = &off_1005A7000;
                  v50 = v188;
                }

                goto LABEL_64;
              }

              (*v184)(v74, v72);
            }

            if (v195 == v55)
            {

              v105 = v186;
              v55 = v187;
              v40 = v193;
              v106 = v165;
              goto LABEL_59;
            }

            ++v55;

            v46 += 2;
          }

          while (v55 < v45[2]);
        }

        __break(1u);
LABEL_90:
        swift_once();
        goto LABEL_65;
      }
    }
  }

  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v75 = &off_1005A7000;
  v76 = aBlock;
  v77 = qword_1005A7F20;

  if (v77 != -1)
  {
LABEL_92:
    v78 = swift_once();
  }

  __chkstk_darwin(v78);
  *(&v165 - 2) = v76;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v76, 0);
  sub_1000C8450(v76, 0);
  v55 = v187;
  if (v75[484] != -1)
  {
    v79 = swift_once();
  }

  __chkstk_darwin(v79);
  *(&v165 - 2) = v189;
  *(&v165 - 1) = v55;
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v80 = aBlock;
  v81 = aBlock[2];
  if (!v81)
  {

    v40 = v193;
    v50 = v188;
    if (v45[477] != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005DFB98);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v93, v94, "shareKey: No handle found in fmf. Cannot send keys", v95, 2u);
      v17 = 0;
      v56 = 0;
      goto LABEL_62;
    }

    v17 = 0;
    v56 = 0;
    goto LABEL_63;
  }

  v82 = 0;
  v83 = (v188 + 48);
  v190 = (v188 + 32);
  v191 = (v188 + 48);
  v84 = (v188 + 8);
  v85 = aBlock + 5;
  v86 = v81 - 1;
  v40 = v193;
  while (1)
  {
    v87 = *(v85 - 1);
    v56 = *v85;
    swift_bridgeObjectRetain_n();
    v195 = v87;
    Destination.init(string:)();
    v194 = *v83;
    if ((v194)(v35, 1, v40) != 1)
    {
      break;
    }

    sub_100002CE0(v35, &qword_1005A9280, &qword_1004C27F8);
    if (v86 == v82)
    {
      goto LABEL_37;
    }

LABEL_35:
    ++v82;

    v85 += 2;
    if (v82 >= *(v80 + 16))
    {
      __break(1u);
LABEL_37:

      v91 = v186;
      v50 = v188;
      v45 = &off_1005A7000;
      v17 = v195;
      goto LABEL_50;
    }
  }

  v88 = v56;
  v89 = *v190;
  v90 = v192;
  (*v190)(v192, v35, v40);
  if ((sub_10012BC08(v90) & 1) == 0)
  {
    (*v84)(v90, v40);
    v56 = v88;
    v83 = v191;
    if (v86 == v82)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v45 = &off_1005A7000;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for Logger();
  sub_10000A6F0(v96, qword_1005DFB98);
  v97 = v187;

  v56 = v88;

  v98 = Logger.logObject.getter();
  v99 = static os_log_type_t.default.getter();

  v100 = os_log_type_enabled(v98, v99);
  v101 = v166;
  v102 = v192;
  if (v100)
  {
    v103 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v103 = 141558787;
    *(v103 + 4) = 1752392040;
    *(v103 + 12) = 2081;
    *(v103 + 14) = sub_10000D01C(v189, v97, &aBlock);
    *(v103 + 22) = 2160;
    *(v103 + 24) = 1752392040;
    *(v103 + 32) = 2081;
    v17 = v195;
    *(v103 + 34) = sub_10000D01C(v195, v88, &aBlock);
    _os_log_impl(&_mh_execute_header, v98, v99, "shareKey: Got valid messaging destination from fmf with %{private,mask.hash}s %{private,mask.hash}s", v103, 0x2Au);
    swift_arrayDestroy();

    v45 = &off_1005A7000;

    v91 = v186;
    sub_100002CE0(v186, &qword_1005A9280, &qword_1004C27F8);
    v104 = v188;
  }

  else
  {

    v91 = v186;
    sub_100002CE0(v186, &qword_1005A9280, &qword_1004C27F8);
    v104 = v188;
    v17 = v195;
  }

  v107 = v102;
  v40 = v193;
  v89(v91, v107, v193);
  v101(v91, 0, 1, v40);
  v50 = v104;
LABEL_50:
  v46 = v91;
  v108 = v185;
  sub_100005F04(v91, v185, &qword_1005A9280, &qword_1004C27F8);
  v109 = (v194)(v108, 1, v40);
  sub_100002CE0(v108, &qword_1005A9280, &qword_1004C27F8);
  if (v109 == 1)
  {
    v55 = v187;
    if (v45[477] != -1)
    {
      swift_once();
    }

    v110 = type metadata accessor for Logger();
    sub_10000A6F0(v110, qword_1005DFB98);
    v93 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v93, v111, "shareKey: No valid handles found in fmf. Cannot send keys", v112, 2u);
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  v55 = v187;
LABEL_64:
  if (v45[477] != -1)
  {
    goto LABEL_90;
  }

LABEL_65:
  v122 = type metadata accessor for Logger();
  sub_10000A6F0(v122, qword_1005DFB98);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v202 = v45;
    *v125 = 141558787;
    *(v125 + 4) = 1752392040;
    *(v125 + 12) = 2081;
    *(v125 + 14) = sub_10000D01C(v189, v187, &v202);
    *(v125 + 22) = 2160;
    *(v125 + 24) = 1752392040;
    *(v125 + 32) = 2081;
    v55 = v187;
    aBlock = v17;
    v197 = v56;
    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v126 = String.init<A>(describing:)();
    v128 = sub_10000D01C(v126, v127, &v202);

    *(v125 + 34) = v128;
    v50 = v188;
    _os_log_impl(&_mh_execute_header, v123, v124, "shareKey: Sending to %{private,mask.hash}s handle %{private,mask.hash}s", v125, 0x2Au);
    swift_arrayDestroy();
    v46 = v186;

    v40 = v193;
  }

  else
  {
  }

  v129 = v181;
  sub_100005F04(v46, v181, &qword_1005A9280, &qword_1004C27F8);
  if ((*(v50 + 6))(v129, 1, v40) == 1)
  {
    sub_100002CE0(v129, &qword_1005A9280, &qword_1004C27F8);

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      aBlock = v133;
      *v132 = 141558275;
      *(v132 + 4) = 1752392040;
      *(v132 + 12) = 2081;
      *(v132 + 14) = sub_10000D01C(v189, v55, &aBlock);
      _os_log_impl(&_mh_execute_header, v130, v131, "shareKey: Cannot send keys to %{private,mask.hash}s. No handleIdentifier or destination to send key", v132, 0x16u);
      sub_100004984(v133);
    }

    v134 = v182;
    type metadata accessor for SecureLocationsError(0);
    v202 = 9;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_1000F11F8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    *v134 = aBlock;

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v75 = qword_1005DFB60;
    v135 = *(qword_1005DFB60 + 16);
    v76 = swift_allocObject();
    v136 = v189;
    *(v76 + 2) = v75;
    *(v76 + 3) = v136;
    *(v76 + 4) = v55;
    *(v76 + 5) = 0xD000000000000019;
    *(v76 + 6) = 0x80000001004E0C40;
    v35 = swift_allocObject();
    *(v35 + 2) = sub_1000F9260;
    *(v35 + 3) = v76;
    v200 = sub_1000CAA0C;
    v201 = v35;
    aBlock = _NSConcreteStackBlock;
    v197 = 1107296256;
    v198 = sub_10013EC94;
    v199 = &unk_10058F8B0;
    v137 = _Block_copy(&aBlock);
    swift_retain_n();

    dispatch_sync(v135, v137);
    _Block_release(v137);
    LOBYTE(v135) = swift_isEscapingClosureAtFileLocation();

    if (v135)
    {
      __break(1u);
      goto LABEL_92;
    }

    sub_100002CE0(v46, &qword_1005A9280, &qword_1004C27F8);
    return 0;
  }

  else
  {
    v139 = *(v50 + 4);
    v140 = v183;
    v139(v183, v129, v40);
    v141 = v168;
    DiversifiedRootKeys.publicKey.getter();
    v142 = v171;
    PublicKey.advertisement.getter();
    (*(v169 + 8))(v141, v170);
    v143 = v174;
    Advertisement.hashed.getter();
    (*(v172 + 8))(v142, v173);
    v144 = v140;
    v145 = v180;
    v146 = sub_1000EF194(v176, v177, v179, v144, a9, a10, v143);
    v147 = v143;
    v148 = v182;
    (*(v175 + 8))(v147, v178);
    *v148 = v146;

    if (*v148)
    {
      swift_errorRetain();
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        aBlock = v152;
        *v151 = 136446210;
        v202 = a13;
        swift_errorRetain();
        sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
        v153 = String.init<A>(describing:)();
        v155 = sub_10000D01C(v153, v154, &aBlock);
        v156 = v188;
        v157 = v155;

        *(v151 + 4) = v157;
        _os_log_impl(&_mh_execute_header, v149, v150, "shareKey: sent failed, error: %{public}s", v151, 0xCu);
        sub_100004984(v152);

        (*(v156 + 8))(v183, v193);
      }

      else
      {

        (*(v188 + 8))(v183, v193);
      }

      v164 = v186;
    }

    else
    {
      v158 = Logger.logObject.getter();
      v159 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        *v160 = 67109120;
        *(v160 + 4) = a12 & 1;
        _os_log_impl(&_mh_execute_header, v158, v159, "shareKey: sent successfully, should force publish proactive location with new key: %{BOOL}d", v160, 8u);
      }

      v161 = v186;
      if (a12)
      {
        v162 = *(v145 + 16);
        if (v162)
        {
          v163 = *(v145 + 24);

          v162(v189, v55);
          sub_1000CA9C0(v162, v163);
        }
      }

      (*(v188 + 8))(v183, v40);
      v164 = v161;
    }

    sub_100002CE0(v164, &qword_1005A9280, &qword_1004C27F8);
    return *v148 == 0;
  }
}

uint64_t sub_1000EEAF0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  swift_errorRetain();
  a1(v5);
}

void sub_1000EEB5C(uint64_t isUniquelyReferenced_nonNull_native)
{
  if (qword_1005A7EE8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v42 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10000D01C(0xD000000000000025, 0x80000001004E0930, &v42);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100004984(v5);
  }

  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  unsafeFromAsyncTask<A>(_:)();
  v6 = v42;
  v7 = qword_1005A7F20;

  if (v7 != -1)
  {
LABEL_33:
    v8 = swift_once();
  }

  __chkstk_darwin(v8);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v6, 0);
  v9 = v6 + 56;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 56);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = _swiftEmptyDictionarySingleton;
  v16 = _swiftEmptyArrayStorage;
  v38 = v6 + 56;
  v39 = v6;
  while (1)
  {
    if (!v12)
    {
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v17 >= v13)
        {

          sub_1000EB6B4(v16, v15, 0, DarwinNotification.init(name:value:), 0);
          sub_1000C8450(v6, 0);

          return;
        }

        v12 = *(v9 + 8 * v17);
        ++v14;
        if (v12)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v17 = v14;
LABEL_15:
    v18 = (*(v6 + 48) + 40 * (__clz(__rbit64(v12)) | (v17 << 6)));
    v20 = *v18;
    v19 = v18[1];
    v21 = v18[4];
    v41 = v18[3];
    swift_bridgeObjectRetain_n();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1001FC900(0, *(v16 + 2) + 1, 1, v16);
    }

    v23 = *(v16 + 2);
    v22 = *(v16 + 3);
    if (v23 >= v22 >> 1)
    {
      v16 = sub_1001FC900((v22 > 1), v23 + 1, 1, v16);
    }

    *(v16 + 2) = v23 + 1;
    v40 = v16;
    v24 = &v16[16 * v23];
    *(v24 + 4) = v41;
    *(v24 + 5) = v21;
    sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004C1900;
    *(v25 + 32) = v20;
    *(v25 + 40) = v19;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v15;
    v28 = sub_1000110D8(v41, v21);
    v29 = v15[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_30;
    }

    v6 = v27;
    if (v15[3] < v31)
    {
      break;
    }

    if ((v26 & 1) == 0)
    {
      sub_100203F3C();
    }

LABEL_25:
    v12 &= v12 - 1;
    if (v6)
    {

      v15 = v42;
      *(v42[7] + 8 * v28) = v25;
    }

    else
    {
      v15 = v42;
      v42[(v28 >> 6) + 8] |= 1 << v28;
      v34 = (v15[6] + 16 * v28);
      *v34 = v41;
      v34[1] = v21;
      *(v15[7] + 8 * v28) = v25;
      v35 = v15[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        __break(1u);
        goto LABEL_33;
      }

      v15[2] = v37;
    }

    v14 = v17;
    v9 = v38;
    v6 = v39;
    v16 = v40;
  }

  sub_10022EC88(v31, v26);
  v32 = sub_1000110D8(v41, v21);
  if ((v6 & 1) == (v33 & 1))
  {
    v28 = v32;
    goto LABEL_25;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

int *sub_1000EF194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v112 = a6;
  v113 = a7;
  v110 = a1;
  v111 = a5;
  v108 = a4;
  v118 = a3;
  v116 = type metadata accessor for HashedAdvertisement();
  v9 = *(v116 - 8);
  __chkstk_darwin(v116);
  v104 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PrivateKey();
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin(v11);
  v103 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Destination();
  v109 = *(v105 - 8);
  v13 = __chkstk_darwin(v105);
  v106 = v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v14;
  __chkstk_darwin(v13);
  v101 = v93 - v15;
  v107 = sub_10004B564(&qword_1005AAC70, &qword_1004D96D0);
  v102 = *(v107 - 8);
  v16 = *(v102 + 64);
  v17 = __chkstk_darwin(v107);
  v99 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = v93 - v18;
  updated = type metadata accessor for SecureLocationsKeyUpdateEnvelope(0);
  v20 = __chkstk_darwin(updated);
  v22 = v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v93 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *(v7 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue);
  *v28 = v29;
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v30 = v29;
  LOBYTE(v29) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v28, v25);
  if (v29)
  {
    v97 = v16;
    v31 = type metadata accessor for UUID();
    (*(*(v31 - 8) + 16))(v24, v110, v31);
    isEscapingClosureAtFileLocation = v114 + 16;
    v33 = &v24[updated[7]];
    v96 = *(v114 + 16);
    v96(v33, v112, v115);
    v34 = updated[8];
    v98 = v9;
    v37 = *(v9 + 16);
    v36 = (v9 + 16);
    v35 = v37;
    v37(&v24[v34], v113, v116);
    v38 = &v24[updated[5]];
    v110 = a2;
    *v38 = a2;
    *(v38 + 1) = v118;
    *&v24[updated[6]] = v111;
    LOBYTE(aBlock[0]) = 0;
    sub_10000CF54(v24, v22, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    sub_1000F85A8();
    sub_1000F11F8(&qword_1005AAC80, type metadata accessor for SecureLocationsKeyUpdateEnvelope, &unk_1004D9C38);
    sub_1000F11F8(&qword_1005AAC88, type metadata accessor for SecureLocationsKeyUpdateEnvelope, &unk_1004D9C10);

    Message.init<A>(type:version:payload:)();
LABEL_9:
    v94 = v35;
    v95 = v36;
    v111 = isEscapingClosureAtFileLocation;
    v50 = v102;
    v51 = v99;
    (*(v102 + 16))(v99, v117, v107);
    v52 = v109;
    v53 = *(v109 + 16);
    v54 = v101;
    v55 = v105;
    v93[1] = v109 + 16;
    v93[0] = v53;
    v53(v101, v108, v105);
    v56 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v57 = (v97 + *(v52 + 80) + v56) & ~*(v52 + 80);
    v58 = (v100 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    v60 = v59 + v56;
    v61 = v51;
    v62 = v55;
    v63 = v107;
    (*(v50 + 32))(v60, v61, v107);
    (*(v52 + 32))(v59 + v57, v54, v55);
    v64 = (v59 + v58);
    v65 = v118;
    *v64 = v110;
    v64[1] = v65;

    unsafeFromAsyncTask<A>(_:)();

    (*(v50 + 8))(v117, v63);
    sub_10000CFBC(v24, type metadata accessor for SecureLocationsKeyUpdateEnvelope);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_10000A6F0(v66, qword_1005DFB98);
    v67 = v103;
    v68 = v115;
    v96(v103, v112, v115);
    v69 = v104;
    v70 = v116;
    v94(v104, v113, v116);
    v71 = v106;
    (v93[0])(v106, v108, v62);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    v74 = v62;
    if (os_log_type_enabled(v72, v73))
    {
      v75 = v69;
      v76 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      aBlock[0] = v118;
      *v76 = 141559299;
      *(v76 + 4) = 1752392040;
      *(v76 + 12) = 2081;
      sub_1000F11F8(&qword_1005AAC90, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
      v77 = RawRepresentable<>.base64EncodedString(options:)();
      v78 = v68;
      v79 = v74;
      v81 = v80;
      (*(v114 + 8))(v67, v78);
      v82 = sub_10000D01C(v77, v81, aBlock);

      *(v76 + 14) = v82;
      *(v76 + 22) = 2160;
      *(v76 + 24) = 1752392040;
      *(v76 + 32) = 2081;
      sub_1000F11F8(&qword_1005AAC98, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
      v83 = RawRepresentable<>.base64EncodedString(options:)();
      v85 = v84;
      (*(v98 + 8))(v75, v70);
      v86 = sub_10000D01C(v83, v85, aBlock);

      *(v76 + 34) = v86;
      *(v76 + 42) = 2160;
      *(v76 + 44) = 1752392040;
      *(v76 + 52) = 2081;
      sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v87 = v106;
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v109 + 8))(v87, v79);
      v91 = sub_10000D01C(v88, v90, aBlock);

      *(v76 + 54) = v91;
      _os_log_impl(&_mh_execute_header, v72, v73, "shareKey: Sent key %{private,mask.hash}s with locationId %{private,mask.hash}s to follower %{private,mask.hash}s", v76, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {

      (*(v109 + 8))(v71, v62);
      (*(v98 + 8))(v69, v70);
      (*(v114 + 8))(v67, v68);
    }

    return 0;
  }

  __break(1u);
  swift_once();
  v39 = type metadata accessor for Logger();
  sub_10000A6F0(v39, qword_1005DFB98);
  swift_errorRetain();
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v119 = updated;
    aBlock[0] = v43;
    *v42 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v44 = String.init<A>(describing:)();
    v46 = sub_10000D01C(v44, v45, aBlock);

    *(v42 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v40, v41, "shareKey: Error sending IDS message: %s", v42, 0xCu);
    sub_100004984(v43);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v47 = qword_1005DFB60;
  v48 = *(qword_1005DFB60 + 16);
  v49 = swift_allocObject();
  v49[2] = v47;
  v49[3] = v28;
  v49[4] = v25;
  v49[5] = 0xD000000000000015;
  v49[6] = 0x80000001004E0BA0;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1000F85FC;
  *(v35 + 24) = v49;
  aBlock[4] = sub_1000C7A78;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_10058F5E0;
  v36 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v48, v36);
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_9;
  }

  return updated;
}

uint64_t sub_1000EFF84(uint64_t a1)
{
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_1000F0038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{

  sub_1000F7314(v7, a3, a4, a2);
}

uint64_t sub_1000F00A0(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_15;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "performKeyRoll: secureLocations not setup. Not proceeding with KeyRoll";
    goto LABEL_14;
  }

  v27 = v9;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v16 = sub_100021BB4();

  if (v16)
  {
    v26[1] = *(a4 + 48);
    v17 = swift_allocObject();
    v17[2] = a4;
    v17[3] = a2;
    v17[4] = a3;
    aBlock[4] = sub_1000F7834;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F1A8;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);
    (*(v27 + 8))(v11, v8);
    (*(v13 + 8))(v15, v12);
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000A6F0(v25, qword_1005DFB98);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "performKeyRoll: Not a me device. Not initiating keyRoll";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v21, v22, v24, v23, 2u);
  }

LABEL_15:

  return a2(0);
}

uint64_t sub_1000F0540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v46 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS.QoSClass();
  v7 = *(v45 - 8);
  __chkstk_darwin(v45);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for PublicKey();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10004B564(&qword_1005AABA8, &unk_1004C45E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v51 = type metadata accessor for DiversifiedRootKeys();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v58 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for PrivateKey();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    _os_log_impl(&_mh_execute_header, v20, v21, "performKeyRoll: Starting ", v22, 2u);
  }

  v23 = v56;
  static PrivateKey.random()();
  v24 = type metadata accessor for IntermediateKey();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  PrivateKey.publicKey.getter();
  v25 = v57;
  v26 = v23;
  v27 = v59;
  (*(v57 + 16))(v12, v26, v59);
  (*(v25 + 56))(v12, 0, 1, v27);
  v28 = v58;
  DiversifiedRootKeys.init(intermediateKey:publicKey:privateKey:)();
  sub_1000E8D04(v28, 1);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "performKeyRoll: Modified keyIndex.", v31, 2u);
  }

  sub_1000EA050();
  sub_1000EEB5C(a1);
  LOBYTE(aBlock) = 1;
  CurrentValueSubject.send(_:)();
  sub_10004B518();
  v32 = v45;
  (*(v7 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v45);
  v33 = static OS_dispatch_queue.global(qos:)();
  (*(v7 + 8))(v9, v32);
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 16) = v46;
  *(v34 + 24) = v35;
  v65 = sub_1000C795C;
  v66 = v34;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100020828;
  v64 = &unk_10058F1F8;
  v36 = _Block_copy(&aBlock);

  v37 = v48;
  static DispatchQoS.unspecified.getter();
  v60 = _swiftEmptyArrayStorage;
  sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v38 = v52;
  v39 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v54 + 8))(v38, v39);
  (*(v50 + 8))(v37, v53);

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
LABEL_9:
    v40 = String._bridgeToObjectiveC()();
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    v65 = sub_1000C7E4C;
    v66 = v41;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_1000119E4;
    v64 = &unk_10058F248;
    v42 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v42);
  }

LABEL_10:
  (*(v49 + 8))(v58, v51);
  return (*(v57 + 8))(v56, v59);
}

uint64_t sub_1000F0E38()
{
  sub_1000CA9C0(*(v0 + 16), *(v0 + 24));

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey, &qword_1005AB4D0, &unk_1004C45D0);

  return v0;
}

uint64_t sub_1000F0F28()
{
  sub_1000F0E38();

  return swift_deallocClassInstance();
}

void sub_1000F0FA8(uint64_t a1)
{
  sub_1000F8F08(319, &unk_1005AA7C0, type metadata accessor for SecureLocationsCachedSharingKey);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000F10F8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DiversifiedRootKeys();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000F11A4()
{
  result = qword_1005AAB28;
  if (!qword_1005AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB28);
  }

  return result;
}

uint64_t sub_1000F11F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F1240()
{
  result = qword_1005AAB50;
  if (!qword_1005AAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB50);
  }

  return result;
}

unint64_t sub_1000F1294()
{
  result = qword_1005AAB80;
  if (!qword_1005AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAB80);
  }

  return result;
}

uint64_t sub_1000F12E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v104 = a4;
  v7 = sub_10004B564(&qword_1005AAC58, &qword_1004C46E0);
  v8 = __chkstk_darwin(v7 - 8);
  v100 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v97 = &v89 - v11;
  __chkstk_darwin(v10);
  v98 = &v89 - v12;
  v13 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v13 - 8);
  v15 = &v89 - v14;
  v16 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v17 = *(v16 - 8);
  v110 = v16;
  v111 = v17;
  __chkstk_darwin(v16);
  v112 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v102 = *(v19 - 8);
  v103 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v89 - v24;
  __chkstk_darwin(v23);
  v27 = &v89 - v26;
  v28 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedDecryptionKeys;
  swift_beginAccess();
  v99 = a1;
  v96 = v28;
  v29 = *(a1 + v28);
  if (*(v29 + 16))
  {

    v30 = sub_1001FDA54(a2, a3);
    if (v31)
    {
      sub_100005F04(*(v29 + 56) + *(v102 + 72) * v30, v25, &qword_1005AAC60, &qword_1004C46E8);

      sub_1000176A8(v25, v27, &qword_1005AAC60, &qword_1004C46E8);
      sub_1000176A8(v27, v22, &qword_1005AAC60, &qword_1004C46E8);
      v32 = *v22;
      v33 = *(v22 + 1);
      v34 = *(v103 + 48);
      v35 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
      v36 = *(v35 + 48);
      v37 = v104;
      *v104 = v32;
      *(v37 + 1) = v33;
      v38 = type metadata accessor for PrivateKey();
      (*(*(v38 - 8) + 32))(&v37[v36], &v22[v34], v38);
      return (*(*(v35 - 8) + 56))(v37, 0, 1, v35);
    }
  }

  v40 = sub_1004B7328();
  if (!*(v40 + 16) && (sub_1000F4A14() & 1) != 0)
  {

    v40 = sub_1004B7328();
  }

  v109 = *(v40 + 16);
  if (!v109)
  {
LABEL_81:

    v74 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    return (*(*(v74 - 8) + 56))(v104, 1, 1, v74);
  }

  v41 = 0;
  v108 = v40 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
  if (a2)
  {
    v42 = 0;
  }

  else
  {
    v42 = a3 == 0xC000000000000000;
  }

  v43 = !v42;
  v95 = v43;
  v44 = __OFSUB__(HIDWORD(a2), a2);
  v93 = v44;
  v92 = HIDWORD(a2) - a2;
  v94 = BYTE6(a3);
  v106 = v40;
  v107 = a3 >> 60;
  v101 = a3 >> 62;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
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
    }

    v45 = a2;
    v46 = a3;
    v47 = v112;
    sub_10000CF54(v108 + *(v111 + 72) * v41, v112, type metadata accessor for SecureLocationsCachedSharedKey);
    sub_100005F04(v47 + *(v110 + 28), v15, &qword_1005AAB18, &qword_1004C4580);
    v48 = type metadata accessor for HashedAdvertisement();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v15, 1, v48) == 1)
    {
      sub_100002CE0(v15, &qword_1005AAB18, &qword_1004C4580);
      v50 = 0;
      v51 = 0xF000000000000000;
LABEL_23:
      a3 = v46;
      a2 = v45;
      v40 = v106;
      if (v107 > 0xE)
      {
        sub_100005F6C(a2, v46);

        v75 = sub_10001A794(v50, v51);
        goto LABEL_83;
      }

LABEL_24:
      sub_100005F6C(a2, a3);
      sub_10001A794(v50, v51);
      sub_10001A794(a2, a3);
      goto LABEL_25;
    }

    v50 = HashedAdvertisement.data.getter();
    v51 = v52;
    (*(v49 + 8))(v15, v48);
    if (v51 >> 60 == 15)
    {
      goto LABEL_23;
    }

    a3 = v46;
    a2 = v45;
    if (v107 > 0xE)
    {
      v40 = v106;
      goto LABEL_24;
    }

    v53 = v51 >> 62;
    if (v51 >> 62 == 3)
    {
      if (v50)
      {
        v54 = 0;
      }

      else
      {
        v54 = v51 == 0xC000000000000000;
      }

      v56 = !v54 || v101 < 3;
      if (((v56 | v95) & 1) == 0)
      {
        sub_100005F6C(0, 0xC000000000000000);
        sub_10001A794(0, 0xC000000000000000);
        v50 = 0;
        goto LABEL_88;
      }

LABEL_51:
      v57 = 0;
      if (v101 > 1)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    if (v53 <= 1)
    {
      break;
    }

    if (v53 != 2)
    {
      goto LABEL_51;
    }

    v59 = *(v50 + 16);
    v58 = *(v50 + 24);
    v60 = __OFSUB__(v58, v59);
    v57 = v58 - v59;
    if (v60)
    {
      goto LABEL_94;
    }

    if (v101 > 1)
    {
      goto LABEL_52;
    }

LABEL_48:
    v61 = v94;
    if (v101)
    {
      v61 = v92;
      if (v93)
      {
        goto LABEL_91;
      }
    }

LABEL_54:
    if (v57 != v61)
    {
      goto LABEL_60;
    }

    if (v57 < 1)
    {
      goto LABEL_87;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        memset(v114, 0, 14);
        sub_100005F6C(v45, v46);
        sub_10002CF44(v50, v51);
        goto LABEL_74;
      }

      v64 = *(v50 + 24);
      v91 = *(v50 + 16);
      v90 = v64;
      sub_100005F6C(v45, v46);
      sub_10002CF44(v50, v51);
      v65 = __DataStorage._bytes.getter();
      if (v65)
      {
        v66 = __DataStorage._offset.getter();
        v67 = v91;
        if (__OFSUB__(v91, v66))
        {
          goto LABEL_97;
        }

        v65 += v91 - v66;
      }

      else
      {
        v67 = v91;
      }

      if (__OFSUB__(v90, v67))
      {
        goto LABEL_96;
      }

      __DataStorage._length.getter();
      v70 = v65;
      a2 = v45;
    }

    else
    {
      if (!v53)
      {
        v114[0] = v50;
        LOWORD(v114[1]) = v51;
        BYTE2(v114[1]) = BYTE2(v51);
        BYTE3(v114[1]) = BYTE3(v51);
        BYTE4(v114[1]) = BYTE4(v51);
        BYTE5(v114[1]) = BYTE5(v51);
        sub_100005F6C(v45, v46);
        sub_10002CF44(v50, v51);
LABEL_74:
        v71 = v105;
        sub_1001FC6D0(v114, v45, v46, &v113);
        v105 = v71;
        sub_10001A794(v50, v51);
        sub_10001A794(v45, v46);
        v72 = v113;
        goto LABEL_79;
      }

      v91 = (v50 >> 32) - v50;
      if (v50 >> 32 < v50)
      {
        goto LABEL_95;
      }

      sub_100005F6C(v45, v46);
      sub_10002CF44(v50, v51);
      v68 = __DataStorage._bytes.getter();
      if (v68)
      {
        v69 = __DataStorage._offset.getter();
        if (__OFSUB__(v50, v69))
        {
          goto LABEL_98;
        }

        v68 += v50 - v69;
      }

      a2 = v45;
      __DataStorage._length.getter();
      v70 = v68;
    }

    a3 = v46;
    v73 = v105;
    sub_1001FC6D0(v70, v45, v46, v114);
    v105 = v73;
    sub_10001A794(v50, v51);
    sub_10001A794(v45, v46);
    v72 = v114[0];
LABEL_79:
    sub_10001A794(v50, v51);
    v40 = v106;
    if (v72)
    {
      goto LABEL_89;
    }

LABEL_25:
    ++v41;
    sub_10000CFBC(v112, type metadata accessor for SecureLocationsCachedSharedKey);
    if (v109 == v41)
    {
      goto LABEL_81;
    }
  }

  if (!v53)
  {
    v57 = BYTE6(v51);
    if (v101 > 1)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  LODWORD(v57) = HIDWORD(v50) - v50;
  if (__OFSUB__(HIDWORD(v50), v50))
  {
    goto LABEL_93;
  }

  v57 = v57;
  if (v101 <= 1)
  {
    goto LABEL_48;
  }

LABEL_52:
  if (v101 == 2)
  {
    v63 = *(v45 + 16);
    v62 = *(v45 + 24);
    v60 = __OFSUB__(v62, v63);
    v61 = v62 - v63;
    if (v60)
    {
      goto LABEL_92;
    }

    goto LABEL_54;
  }

  if (v57)
  {
LABEL_60:
    sub_100005F6C(v45, v46);
    sub_10001A794(v45, v46);
    sub_10001A794(v50, v51);
    v40 = v106;
    goto LABEL_25;
  }

LABEL_87:
  sub_100005F6C(v45, v46);
  sub_10001A794(v45, v46);
LABEL_88:
  sub_10001A794(v50, v51);
LABEL_89:

LABEL_83:
  v76 = v100;
  __chkstk_darwin(v75);
  *(&v89 - 2) = v112;
  v77 = v98;
  v78 = v105;
  sub_10019F09C(sub_1000F8588, (&v89 - 4), v98);
  v105 = v78;
  v79 = v97;
  sub_100005F04(v77, v97, &qword_1005AAC58, &qword_1004C46E0);
  swift_beginAccess();
  sub_100005F6C(a2, a3);
  sub_100145A50(v79, a2, a3);
  swift_endAccess();
  sub_1000176A8(v77, v76, &qword_1005AAC58, &qword_1004C46E0);
  v80 = v103;
  if ((*(v102 + 48))(v76, 1, v103) == 1)
  {
    sub_100002CE0(v76, &qword_1005AAC58, &qword_1004C46E0);
    v81 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    (*(*(v81 - 8) + 56))(v104, 1, 1, v81);
  }

  else
  {
    v82 = *v76;
    v83 = *(v76 + 1);
    v84 = *(v80 + 48);
    v85 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
    v86 = *(v85 + 48);
    v87 = v104;
    *v104 = v82;
    *(v87 + 1) = v83;
    v88 = type metadata accessor for PrivateKey();
    (*(*(v88 - 8) + 32))(&v87[v86], &v76[v84], v88);
    (*(*(v85 - 8) + 56))(v87, 0, 1, v85);
  }

  return sub_10000CFBC(v112, type metadata accessor for SecureLocationsCachedSharedKey);
}

double sub_1000F2008@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(sub_10004B564(&qword_1005AAC60, &qword_1004C46E8) + 48);
  v7 = (a2 + *(type metadata accessor for SecureLocationsCachedSharedKey(0) + 20));
  v8 = v7[1];
  *a3 = *v7;
  *(a3 + 1) = v8;
  v9 = type metadata accessor for PrivateKey();
  (*(*(v9 - 8) + 16))(&a3[v6], a1, v9);

  return result;
}

uint64_t sub_1000F20BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Destination();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2188, 0, 0);
}

uint64_t sub_1000F2188()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = *(v0[4] + 40);
  v0[10] = v6;

  (*(v4 + 16))(v1, v5, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v0[11] = v8;
  (*(v4 + 32))(v8 + v7, v1, v3);
  *(v8 + ((v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v9 = swift_task_alloc();
  v0[12] = v9;
  v10 = sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  *v9 = v0;
  v9[1] = sub_1000F2314;

  return withTimeout<A>(_:block:)(v0 + 2, 0xE5B8FA8FE2AC0000, 1, &unk_1004C4680, v8, v10);
}

uint64_t sub_1000F2314()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000F24A8;
  }

  else
  {

    v2 = sub_1000F2430;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000F2430()
{
  v1 = v0[3];

  *v1 = v0[2];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1000F24A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F2520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v6 - 8);
  v38 = &v32 - v7;
  v8 = type metadata accessor for Destination();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v36 = v11;
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v32 - v12;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005E0DE0);
  v35 = *(v9 + 16);
  v35(v13, a2, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = a2;
    v18 = v17;
    v32 = swift_slowAlloc();
    v39 = v32;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = a1;
    v20 = v3;
    v22 = v21;
    (*(v9 + 8))(v13, v8);
    v23 = sub_10000D01C(v19, v22, &v39);
    v3 = v20;
    a1 = v33;

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Setting up messaging session to %{private,mask.hash}s", v18, 0x16u);
    sub_100004984(v32);

    a2 = v34;

    if (!*(v3 + 80))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(v9 + 8))(v13, v8);
  if (*(v2 + 80))
  {
LABEL_7:

    Task.cancel()();
  }

LABEL_8:
  v24 = type metadata accessor for TaskPriority();
  v25 = v38;
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = v37;
  v35(v37, a2, v8);
  v28 = v8;
  v29 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = a1;
  *(v30 + 5) = v26;
  (*(v9 + 32))(&v30[v29], v27, v28);

  *(v3 + 80) = sub_1001D7F30(0, 0, v25, &unk_1004C4668, v30);
}

uint64_t sub_1000F299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[48] = a5;
  v6[49] = a6;
  v6[47] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[50] = v7;
  v6[51] = *(v7 - 8);
  v6[52] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[53] = v8;
  v6[54] = *(v8 - 8);
  v6[55] = swift_task_alloc();
  v9 = type metadata accessor for Destination();
  v6[56] = v9;
  v6[57] = *(v9 - 8);
  v6[58] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005AAC10, &unk_1004C4670);
  v6[59] = v10;
  v6[60] = *(v10 - 8);
  v6[61] = swift_task_alloc();
  sub_10004B564(&qword_1005AAC18, &unk_1004C57D0);
  v6[62] = swift_task_alloc();
  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  sub_10001DF0C(&qword_1005AAC20, &qword_1005AAC08, &unk_1004C4650, &protocol conformance descriptor for SessionMessaging<A>);
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F2C20, v12, v11);
}

uint64_t sub_1000F2C20()
{
  dispatch thunk of SessionMessaging.messagesReceived.getter();

  return _swift_task_switch(sub_1000F2C8C, 0, 0);
}

uint64_t sub_1000F2C8C()
{
  v1 = v0[31];
  v2 = sub_100011AEC(v0 + 28, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[36] = swift_getAssociatedTypeWitness();
  v0[37] = swift_getAssociatedConformanceWitness();
  sub_10000331C(v0 + 33);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  swift_beginAccess();
  sub_1000BAF2C((v0 + 33), v0[36]);
  v5 = swift_task_alloc();
  v0[63] = v5;
  *v5 = v0;
  v5[1] = sub_1000F2E5C;
  v6 = v0[62];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v6, 0, 0);
}

uint64_t sub_1000F2E5C()
{
  *(*v1 + 512) = v0;

  if (!v0)
  {

    return _swift_task_switch(sub_1000F2F70, 0, 0);
  }

  return result;
}

uint64_t sub_1000F2F70()
{
  v64 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100004984((v0 + 264));
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v4 = *(v0 + 376);

      sub_100123668(v4);
    }

    goto LABEL_16;
  }

  (*(v3 + 32))(*(v0 + 488), v1, v2);
  if (!swift_weakLoadStrong())
  {
    (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
    sub_100004984((v0 + 264));
LABEL_16:
    sub_100004984((v0 + 224));

    v22 = *(v0 + 8);

    return v22();
  }

  v5 = *(v0 + 512);
  sub_1000F7CFC();
  sub_1000F7D50();
  SessionMessage.extract<A>()();
  if (v5)
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005E0DE0);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v63[0] = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_10000D01C(0xD000000000000015, 0x80000001004E0A30, v63);
      *(v9 + 12) = 2082;
      *(v0 + 360) = v5;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10000D01C(v10, v11, v63);

      *(v9 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v13 = qword_1005DFB60;

    if ((static SystemInfo.underTest.getter() & 1) == 0)
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = swift_allocObject();
      *(v15 + 16) = 768;
      *(v0 + 160) = sub_1000CFB48;
      *(v0 + 168) = v15;
      *(v0 + 128) = _NSConcreteStackBlock;
      *(v0 + 136) = 1107296256;
      *(v0 + 144) = sub_1000119E4;
      *(v0 + 152) = &unk_10058F428;
      v16 = _Block_copy((v0 + 128));

      AnalyticsSendEventLazy();
      _Block_release(v16);
    }

    v58 = *(v0 + 472);
    v60 = *(v0 + 488);
    v53 = *(v0 + 432);
    v17 = *(v0 + 416);
    v55 = *(v0 + 424);
    v56 = *(v0 + 480);
    v18 = *(v0 + 400);
    v19 = *(v0 + 408);
    v51 = *(v0 + 440);
    v20 = swift_allocObject();
    v20[2] = v13;
    v20[3] = 0xD000000000000015;
    v20[4] = 0x80000001004E0A30;
    *(v0 + 208) = sub_1000CFB2C;
    *(v0 + 216) = v20;
    *(v0 + 176) = _NSConcreteStackBlock;
    *(v0 + 184) = 1107296256;
    *(v0 + 192) = sub_100020828;
    *(v0 + 200) = &unk_10058F478;
    v21 = _Block_copy((v0 + 176));

    static DispatchQoS.unspecified.getter();
    *(v0 + 352) = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v19 + 8))(v17, v18);
    (*(v53 + 8))(v51, v55);
    (*(v56 + 8))(v60, v58);
  }

  else
  {
    v24 = *(v0 + 16);
    v62 = *(v0 + 24);
    v59 = *(v0 + 40);
    v25 = *(v0 + 56);
    v57 = *(v0 + 48);
    v26 = *(v0 + 64);
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 456);
    v27 = *(v0 + 464);
    v29 = *(v0 + 448);
    v30 = *(v0 + 392);
    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005E0DE0);
    (*(v28 + 16))(v27, v30, v29);
    sub_100005F6C(v24, v62);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    sub_1000049D0(v24, v62);

    v61 = v24;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *(v0 + 368) = v52;
      *v34 = 134218499;
      v54 = v25;
      if (*(v26 + 16))
      {
        v35 = *(v26 + 48);
      }

      else
      {
        v35 = -1.0;
      }

      v40 = *(v0 + 456);
      v39 = *(v0 + 464);
      v41 = *(v0 + 448);
      *(v34 + 4) = v35;
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2081;
      sub_1000F11F8(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      (*(v40 + 8))(v39, v41);
      v45 = sub_10000D01C(v42, v44, (v0 + 368));

      *(v34 + 24) = v45;
      _os_log_impl(&_mh_execute_header, v32, v33, "Received Payload with timestamp: %f from %{private,mask.hash}s", v34, 0x20u);
      sub_100004984(v52);

      v25 = v54;
    }

    else
    {
      v37 = *(v0 + 456);
      v36 = *(v0 + 464);
      v38 = *(v0 + 448);

      (*(v37 + 8))(v36, v38);
    }

    v47 = *(v0 + 480);
    v46 = *(v0 + 488);
    v48 = *(v0 + 472);
    *(v0 + 72) = v61;
    *(v0 + 80) = v62;
    *(v0 + 96) = v59;
    *(v0 + 104) = v57;
    *(v0 + 112) = v25;
    *(v0 + 120) = v26;

    PassthroughSubject.send(_:)();

    (*(v47 + 8))(v46, v48);
    sub_1000049D0(v61, v62);
  }

  sub_1000BAF2C(v0 + 264, *(v0 + 288));
  v49 = swift_task_alloc();
  *(v0 + 504) = v49;
  *v49 = v0;
  v49[1] = sub_1000F2E5C;
  v50 = *(v0 + 496);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v50, 0, 0);
}

BOOL sub_1000F3970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v99 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v7 - 8);
  v96 = &v92 - v8;
  v97 = sub_10004B564(&qword_1005AAE00, &qword_1004C4A18);
  __chkstk_darwin(v97);
  v98 = &v92 - v9;
  v103 = type metadata accessor for Destination();
  v105 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v11 - 8);
  v111 = &v92 - v12;
  v102 = sub_10004B564(&qword_1005AAE08, &qword_1004C4A20);
  __chkstk_darwin(v102);
  v112 = &v92 - v13;
  v14 = type metadata accessor for HashedAdvertisement();
  v109 = *(v14 - 8);
  v110 = v14;
  __chkstk_darwin(v14);
  v101 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v16 - 8);
  v104 = &v92 - v17;
  v107 = sub_10004B564(&qword_1005AAE10, &qword_1004C4A28);
  __chkstk_darwin(v107);
  v108 = &v92 - v18;
  v19 = type metadata accessor for PrivateKey();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10004B564(&unk_1005AE620, &qword_1004C4588);
  __chkstk_darwin(v23 - 8);
  v25 = &v92 - v24;
  v26 = sub_10004B564(&qword_1005AAE18, &qword_1004C4A30);
  __chkstk_darwin(v26);
  v28 = &v92 - v27;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v30 = *(v29 + 20);
  v106 = a1;
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = a2;
  v34 = (a2 + v30);
  if (v31 != *v34 || v32 != v34[1])
  {
    v35 = v29;
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29 = v35;
    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v93 = v6;
  v94 = v4;
  v95 = v29;
  v37 = *(v29 + 24);
  v38 = *(v26 + 48);
  sub_100005F04(v106 + v37, v28, &unk_1005AE620, &qword_1004C4588);
  v39 = v33 + v37;
  v40 = v33;
  sub_100005F04(v39, &v28[v38], &unk_1005AE620, &qword_1004C4588);
  v41 = *(v20 + 48);
  if (v41(v28, 1, v19) == 1)
  {
    if (v41(&v28[v38], 1, v19) == 1)
    {
      sub_100002CE0(v28, &unk_1005AE620, &qword_1004C4588);
      goto LABEL_12;
    }

LABEL_10:
    v42 = &qword_1005AAE18;
    v43 = &qword_1004C4A30;
    v44 = v28;
LABEL_25:
    sub_100002CE0(v44, v42, v43);
    return 0;
  }

  sub_100005F04(v28, v25, &unk_1005AE620, &qword_1004C4588);
  if (v41(&v28[v38], 1, v19) == 1)
  {
    (*(v20 + 8))(v25, v19);
    goto LABEL_10;
  }

  (*(v20 + 32))(v22, &v28[v38], v19);
  sub_1000F11F8(&qword_1005AAE30, &type metadata accessor for PrivateKey, &protocol conformance descriptor for PrivateKey);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v20 + 8);
  v46(v22, v19);
  v46(v25, v19);
  sub_100002CE0(v28, &unk_1005AE620, &qword_1004C4588);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v47 = v95[7];
  v48 = *(v107 + 48);
  v49 = v108;
  sub_100005F04(v106 + v47, v108, &qword_1005AAB18, &qword_1004C4580);
  sub_100005F04(v40 + v47, v49 + v48, &qword_1005AAB18, &qword_1004C4580);
  v51 = v109;
  v50 = v110;
  v52 = *(v109 + 48);
  if (v52(v49, 1, v110) == 1)
  {
    v53 = v52(v49 + v48, 1, v50);
    v54 = v111;
    v55 = v112;
    if (v53 == 1)
    {
      sub_100002CE0(v49, &qword_1005AAB18, &qword_1004C4580);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v56 = v104;
  sub_100005F04(v49, v104, &qword_1005AAB18, &qword_1004C4580);
  v57 = v52(v49 + v48, 1, v50);
  v54 = v111;
  v55 = v112;
  if (v57 == 1)
  {
    (*(v51 + 8))(v56, v50);
LABEL_17:
    v42 = &qword_1005AAE10;
    v43 = &qword_1004C4A28;
    v44 = v49;
    goto LABEL_25;
  }

  v58 = v49 + v48;
  v59 = v101;
  (*(v51 + 32))(v101, v58, v50);
  sub_1000F11F8(&qword_1005AAE28, &type metadata accessor for HashedAdvertisement, &protocol conformance descriptor for HashedAdvertisement);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v51 + 8);
  v61(v59, v50);
  v61(v56, v50);
  sub_100002CE0(v49, &qword_1005AAB18, &qword_1004C4580);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  v62 = v95[8];
  v63 = *(v102 + 48);
  sub_100005F04(v106 + v62, v55, &qword_1005A9280, &qword_1004C27F8);
  sub_100005F04(v40 + v62, v55 + v63, &qword_1005A9280, &qword_1004C27F8);
  v64 = *(v105 + 48);
  v65 = v103;
  if (v64(v55, 1, v103) != 1)
  {
    sub_100005F04(v55, v54, &qword_1005A9280, &qword_1004C27F8);
    if (v64(v55 + v63, 1, v65) != 1)
    {
      v67 = v54;
      v68 = v105;
      v69 = v55 + v63;
      v70 = v100;
      (*(v105 + 32))(v100, v69, v65);
      sub_1000F11F8(&qword_1005AAE20, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v71 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = *(v68 + 8);
      v72(v70, v65);
      v72(v67, v65);
      sub_100002CE0(v55, &qword_1005A9280, &qword_1004C27F8);
      if ((v71 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v105 + 8))(v54, v65);
    goto LABEL_24;
  }

  if (v64(v55 + v63, 1, v65) != 1)
  {
LABEL_24:
    v42 = &qword_1005AAE08;
    v43 = &qword_1004C4A20;
    v44 = v55;
    goto LABEL_25;
  }

  sub_100002CE0(v55, &qword_1005A9280, &qword_1004C27F8);
LABEL_29:
  v73 = v95;
  v74 = v95[9];
  v75 = v106;
  v76 = (v106 + v74);
  v77 = *(v106 + v74 + 8);
  v78 = (v40 + v74);
  v79 = v78[1];
  if (v77)
  {
    if (!v79)
    {
      return 0;
    }

    if (*v76 != *v78 || v77 != v79)
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v73 = v95;
      if ((v80 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v79)
  {
    return 0;
  }

  if (*(v75 + v73[10]) != *(v40 + v73[10]))
  {
    return 0;
  }

  v81 = v73[11];
  v82 = v98;
  v83 = *(v97 + 48);
  sub_100005F04(v75 + v81, v98, &unk_1005AE5B0, &qword_1004C32F0);
  sub_100005F04(v40 + v81, v82 + v83, &unk_1005AE5B0, &qword_1004C32F0);
  v84 = *(v99 + 48);
  v85 = v94;
  if (v84(v82, 1, v94) == 1)
  {
    if (v84(v82 + v83, 1, v85) == 1)
    {
      sub_100002CE0(v82, &unk_1005AE5B0, &qword_1004C32F0);
      return 1;
    }

    goto LABEL_42;
  }

  v86 = v96;
  sub_100005F04(v82, v96, &unk_1005AE5B0, &qword_1004C32F0);
  if (v84(v82 + v83, 1, v85) == 1)
  {
    (*(v99 + 8))(v86, v85);
LABEL_42:
    v42 = &qword_1005AAE00;
    v43 = &qword_1004C4A18;
    v44 = v82;
    goto LABEL_25;
  }

  v87 = v99;
  v88 = v82 + v83;
  v89 = v93;
  (*(v99 + 32))(v93, v88, v85);
  sub_1000F11F8(&qword_1005AE5D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v90 = dispatch thunk of static Equatable.== infix(_:_:)();
  v91 = *(v87 + 8);
  v91(v89, v85);
  v91(v86, v85);
  sub_100002CE0(v82, &unk_1005AE5B0, &qword_1004C32F0);
  return (v90 & 1) != 0;
}

uint64_t sub_1000F4690()
{
  v0 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v3 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v4 = sub_10000A6F0(v3, qword_1005AF7C0);
  os_unfair_lock_lock(v4);
  sub_100005F04(v4 + *(v3 + 28), v2, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v4);
  v5 = type metadata accessor for Credentials(0);
  if ((*(*(v5 - 8) + 48))(v2, 1, v5) == 1)
  {
    sub_100002CE0(v2, &qword_1005A9DA8, &unk_1004D1130);
    v6 = 0;
    v7 = 0;
  }

  else
  {

    sub_10000CFBC(v2, type metadata accessor for Credentials);
    v8 = String.utf8Data.getter();
    v10 = v9;
    v11 = Data.base64EncodedString(options:)(0);
    sub_1000049D0(v8, v10);
    v23 = v11;
    v22[2] = 61;
    v22[3] = 0xE100000000000000;
    v22[0] = 126;
    v22[1] = 0xE100000000000000;
    sub_1000246F4();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v7 = v12;
  }

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
    v23._countAndFlagsBits = v17;
    *v16 = 136315138;
    if (v7)
    {
      v18 = v6;
    }

    else
    {
      v18 = 7104878;
    }

    if (v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = 0xE300000000000000;
    }

    v20 = sub_10000D01C(v18, v19, &v23._countAndFlagsBits);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "MyPersonID %s", v16, 0xCu);
    sub_100004984(v17);
  }

  return v6;
}

uint64_t sub_1000F4BB8(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_100315D34(a1, v6, v1 + v5);
}

uint64_t sub_1000F4CA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100312AF0(a1, v4, v5);
}

unint64_t sub_1000F4D64()
{
  result = qword_1005AABA0;
  if (!qword_1005AABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABA0);
  }

  return result;
}

void sub_1000F4DB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_1000049D0(a3, a4);
  }
}

double sub_1000F4E04(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, char *a10, uint64_t a11)
{
  v140 = a5;
  v141 = a8;
  v138 = a7;
  v145 = a6;
  v135 = a4;
  v14 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v15 - 8);
  v139 = v131 - v16;
  v143 = type metadata accessor for Destination();
  v17 = *(v143 - 8);
  v18 = __chkstk_darwin(v143 - 8);
  v133 = v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = v19;
  __chkstk_darwin(v18);
  v21 = v131 - v20;
  v22 = [a3 pushIdentifiers];
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = *(v23 + 16);
  v147._countAndFlagsBits = a1;
  v147._object = a2;
  v144 = v17;
  v136 = v21;
  if (!v24 || (v25 = sub_1000110D8(a1, a2), (v26 & 1) == 0) || (v27 = *(*(v23 + 56) + 8 * v25), , , !*(v27 + 16)))
  {

LABEL_10:
    if (qword_1005A7EF8 != -1)
    {
      v31 = swift_once();
    }

    v43 = qword_1005DFBC8;
    __chkstk_darwin(v31);
    countAndFlagsBits = v147._countAndFlagsBits;
    object = v147._object;
    v131[-4] = v43;
    v131[-3] = countAndFlagsBits;
    v131[-2] = object;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    OS_dispatch_queue.sync<A>(execute:)();
    v142 = 0;

    v33 = v150;
    v146 = v149;
    v34 = &qword_1005A8000;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000A6F0(v46, qword_1005E0DE0);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v148 = v50;
      *v49 = 136315138;
      v149 = v146;
      v150 = v33;

      v51 = String.init<A>(describing:)();
      v53 = sub_10000D01C(v51, v52, &v148);

      *(v49 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v47, v48, "liveLocations: no handle provided by server. Looking at fmf data %s", v49, 0xCu);
      sub_100004984(v50);
      countAndFlagsBits = v147._countAndFlagsBits;
    }

    v54 = v147._object;
    if (v33)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

  v28 = Data.init(base64Encoded:options:)();
  v30 = v29;

  if (v30 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v142 = 0;
  static String.Encoding.utf8.getter();
  v146 = String.init(data:encoding:)();
  v33 = v32;
  v34 = &qword_1005A8000;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A6F0(v35, qword_1005E0DE0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v148 = v137;
    *v38 = 136315138;
    v149 = v146;
    v150 = v33;

    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    v39 = String.init<A>(describing:)();
    v132 = v28;
    v41 = sub_10000D01C(v39, v40, &v148);

    *(v38 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "liveLocations: handle provided from server %s", v38, 0xCu);
    sub_100004984(v137);

    v42 = v132;
  }

  else
  {
    v42 = v28;
  }

  sub_10001A794(v42, v30);

  countAndFlagsBits = v147._countAndFlagsBits;
  v54 = v147._object;
  if (v33)
  {
    goto LABEL_34;
  }

LABEL_17:
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000A6F0(v55, qword_1005E0DE0);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v59 = v142;
  if (v58)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "liveLocations: no handle found in cache. Checking fmf directly", v60, 2u);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
  OS_dispatch_queue.sync<A>(execute:)();
  v142 = v59;

  v61 = v149 + 8;
  v62 = v149[2] + 1;
  v34 = &qword_1005A8000;
  while (--v62)
  {
    v63 = *(v61 - 4);
    v33 = *(v61 - 3);
    if (*(v61 - 1) != countAndFlagsBits || *v61 != v54)
    {
      v61 += 5;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v146 = v63;
    goto LABEL_34;
  }

  v33 = 0;
LABEL_34:
  if (v34[193] != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Logger();
  v66 = sub_10000A6F0(v65, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v69 = 141558787;
    *(v69 + 4) = 1752392040;
    *(v69 + 12) = 2081;
    if (v33)
    {
      v70 = v146;
    }

    else
    {
      v70 = 7104878;
    }

    if (v33)
    {
      v71 = v33;
    }

    else
    {
      v71 = 0xE300000000000000;
    }

    v72 = sub_10000D01C(v70, v71, &v149);

    *(v69 + 14) = v72;
    *(v69 + 22) = 2160;
    *(v69 + 24) = 1752392040;
    *(v69 + 32) = 2081;
    v73 = v145;
    *(v69 + 34) = sub_10000D01C(v147._countAndFlagsBits, v54, &v149);
    _os_log_impl(&_mh_execute_header, v67, v68, "liveLocations: Handle identifier %{private,mask.hash}s for findMyId %{private,mask.hash}s", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v73 = v145;
  }

  v75 = v143;
  v74 = v144;
  v76 = v139;
  v139 = a10;
  v137 = v33;
  if (!v33)
  {
    goto LABEL_48;
  }

  swift_bridgeObjectRetain_n();
  Destination.init(string:)();
  if ((*(v74 + 48))(v76, 1, v75) == 1)
  {

    sub_100002CE0(v76, &qword_1005A9280, &qword_1004C27F8);
LABEL_48:
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v149 = 0;
    v150 = 0xE000000000000000;

    _StringGuts.grow(_:)(46);

    v149 = 0xD00000000000002CLL;
    v150 = 0x80000001004E09B0;
    v78 = v147._countAndFlagsBits;
    v77 = v147._object;
    String.append(_:)(v147);
    sub_1000CC7D4(v149, v150);

    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v149 = v82;
      *v81 = 141558275;
      *(v81 + 4) = 1752392040;
      *(v81 + 12) = 2081;
      *(v81 + 14) = sub_10000D01C(v78, v77, &v149);
      _os_log_impl(&_mh_execute_header, v79, v80, "liveLocations: Unable to create a MessagingDestination for findMyId %{private,mask.hash}s", v81, 0x16u);
      sub_100004984(v82);
    }

    sub_1000F7A28();
    v83 = swift_allocError();
    *v84 = 14;
    v85 = v140;
    v86 = swift_allocObject();
    v87 = v138;
    v86[2] = v73;
    v86[3] = v87;
    v86[4] = v83;
    v86[5] = v85;
    v88 = v141;
    v86[6] = v141;
    v86[7] = a9;
    v86[8] = v139;
    v86[9] = a11;

    v89 = v88;

    swift_errorRetain();
    sub_10010029C(v73, v87, sub_1000F7A7C, v86);

    goto LABEL_64;
  }

  v131[1] = v66;
  v132 = a9;
  v131[0] = a11;
  v90 = *(v74 + 32);
  v91 = v136;
  v90(v136, v76, v75);
  v92 = v133;
  (*(v74 + 16))(v133, v91, v75);
  v93 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v135;
  v90((v94 + v93), v92, v75);

  sub_10004B564(&qword_1005AAC08, &unk_1004C4650);
  v95 = v142;
  unsafeFromAsyncTask<A>(_:)();
  if (v95)
  {

    swift_errorRetain();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *v98 = 136446466;
      *(v98 + 4) = sub_10000D01C(0xD000000000000041, 0x80000001004E09E0, &v149);
      *(v98 + 12) = 2082;
      swift_getErrorValue();
      v99 = Error.localizedDescription.getter();
      v101 = sub_10000D01C(v99, v100, &v149);

      *(v98 + 14) = v101;
      v75 = v143;
      _os_log_impl(&_mh_execute_header, v96, v97, "%{public}s: %{public}s", v98, 0x16u);
      swift_arrayDestroy();
    }

    v111 = v145;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 0, 0xD000000000000041, 0x80000001004E09E0);

    v112 = v140;
    v113 = swift_allocObject();
    v115 = v138;
    v114 = v139;
    v113[2] = v111;
    v113[3] = v115;
    v113[4] = v95;
    v113[5] = v112;
    v116 = v141;
    v117 = v132;
    v113[6] = v141;
    v113[7] = v117;
    v118 = v131[0];
    v113[8] = v114;
    v113[9] = v118;
    swift_errorRetain();
    swift_errorRetain();

    v119 = v116;

    sub_10010029C(v111, v115, sub_1000F92F8, v113);

    v120 = v136;
  }

  else
  {

    v102 = v149;

    v103 = v147._object;

    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v149 = v142;
      *v106 = 136316163;
      v148 = v102;

      v107 = String.init<A>(describing:)();
      v109 = sub_10000D01C(v107, v108, &v149);

      *(v106 + 4) = v109;
      *(v106 + 12) = 2160;
      *(v106 + 14) = 1752392040;
      *(v106 + 22) = 2081;
      v110 = sub_10000D01C(v146, v33, &v149);

      *(v106 + 24) = v110;
      *(v106 + 32) = 2160;
      *(v106 + 34) = 1752392040;
      *(v106 + 42) = 2081;
      v75 = v143;
      *(v106 + 44) = sub_10000D01C(v147._countAndFlagsBits, v103, &v149);
      _os_log_impl(&_mh_execute_header, v104, v105, "liveLocations: Received session %s for identifier %{private,mask.hash}s for findMyId %{private,mask.hash}s ", v106, 0x34u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v121 = v145;
    v120 = v136;
    sub_1000F2520(v102, v136);
    v122 = v140;
    v123 = swift_allocObject();
    v147._object = v102;
    v125 = v138;
    v124 = v139;
    v123[2] = v121;
    v123[3] = v125;
    v123[4] = 0;
    v123[5] = v122;
    v126 = v141;
    v127 = v132;
    v123[6] = v141;
    v123[7] = v127;
    v128 = v131[0];
    v123[8] = v124;
    v123[9] = v128;

    v129 = v126;

    sub_10010029C(v121, v125, sub_1000F92F8, v123);
  }

  (*(v144 + 8))(v120, v75);
LABEL_64:

  return result;
}

uint64_t sub_1000F6038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449794D646E6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004E0DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E614872656E776FLL && a2 == 0xEB00000000656C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001004E0E00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004E0E20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004E0E40 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1000F62DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B676E6972616873 && a2 == 0xEB00000000737965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49646572616873 && a2 == 0xEB00000000786564)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_1000F6404(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v43 = a1;
  v44 = a2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v45 = &v33 - v5;
  v6 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v6 - 8);
  v42 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v47);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  v37 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10004B518();
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v36 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v38 = *(v9 + 104);
  v39 = v9 + 104;
  v38(v11);
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  v49 = sub_1000F11F8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v48 = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v50 = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v2 + 6) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v2 + 7) = 0;
  LOBYTE(v51) = 0;
  v41 = sub_10004B564(&qword_1005AA6A8, &qword_1004C4690);
  swift_allocObject();
  *(v2 + 8) = CurrentValueSubject.init(_:)();
  *(v2 + 10) = 0;
  v40 = sub_10004B564(&qword_1005AAC38, &qword_1004C4698);
  swift_allocObject();
  *(v2 + 11) = PassthroughSubject.init()();
  sub_10004B564(&qword_1005AAC40, &unk_1004C46A0);
  swift_allocObject();
  *(v2 + 13) = AsyncStreamProvider.init()();
  v12 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedSharingKey;
  v13 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationAutoMeChangedSubscription] = 0;
  v34 = ".keyManager.queue";
  v35 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_decryptionKeyAccessQueue;
  v14 = v11;
  v15 = v11;
  v16 = v36;
  v18 = v37;
  v17 = v38;
  (v38)(v15, v36, v37);
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cachedDecryptionKeys] = _swiftEmptyDictionarySingleton;
  v34 = ".decryptionKey.queue";
  v35 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingQueue;
  v17(v14, v16, v18);
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v35] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19 = OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_keySharingThrottle;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v20 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v20);
  v21 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v22 = v42;
  sub_10000CF54(v20 + *(v21 + 28), v42, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v20);

  sub_10000CFBC(v22, type metadata accessor for SecureLocationsConfig);
  sub_10004B564(&qword_1005AAC48, &unk_1004C46B0);
  swift_allocObject();
  *&v3[v19] = KeyedThrottle.init(throttleInterval:)();
  v51 = *(v3 + 11);
  sub_10001DF0C(&qword_1005AAC50, &qword_1005AAC38, &qword_1004C4698, &protocol conformance descriptor for PassthroughSubject<A, B>);
  *(v3 + 12) = Publisher.eraseToAnyPublisher()();
  v23 = v44;
  *(v3 + 4) = v43;
  *(v3 + 5) = v23;
  v24 = *(v3 + 8);
  swift_unownedRetainStrong();
  sub_10004B564(&qword_1005AA6C8, &qword_1004C4308);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  swift_unownedRetainStrong();
  v51 = v24;

  swift_unownedRetain();
  swift_unownedRetain();
  sub_10001DF0C(&qword_1005AA6D0, &qword_1005AA6A8, &qword_1004C4690, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v26 = Publisher.eraseToAnyPublisher()();
  swift_unownedRelease();

  *(v25 + 24) = v26;

  *(v3 + 9) = v25;
  v51 = *(qword_1005DFBC8 + 56);

  sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  sub_10001DF0C(&qword_1005A9F70, &qword_1005A9F68, &unk_1004C46C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v27 = Publisher<>.sink(receiveValue:)();

  *(v3 + 7) = v27;

  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  v51 = *(*(qword_1005DFBF8 + 24) + 24);

  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v28 = Publisher<>.sink(receiveValue:)();

  *&v3[OBJC_IVAR____TtC13findmylocated25SecureLocationsKeyManager_cacheInvalidationMeDeviceSubscription] = v28;

  v29 = type metadata accessor for TaskPriority();
  v30 = v45;
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v3;

  sub_1001D7F30(0, 0, v30, &unk_1004C46D8, v31);

  return v3;
}

uint64_t sub_1000F6DC0(uint64_t a1, char *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;

  sub_1004AE5D8(v15);

  v17 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v18 = (*(*(v17 - 8) + 48))(v15, 1, v17);
  sub_100002CE0(v15, &qword_1005AB4D0, &unk_1004C45D0);
  if (v18 == 1)
  {
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
      _os_log_impl(&_mh_execute_header, v20, v21, "Running setupSecureLocations", v22, 2u);
    }

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = sub_1000F8C74;
    v23[4] = v16;
    aBlock[4] = sub_1000F92FC;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058FA40;
    v24 = _Block_copy(aBlock);

    v25 = v30;
    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v26 = v32;
    v27 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
    (*(v34 + 8))(v26, v27);
    (*(v31 + 8))(v25, v33);
  }

  else
  {
    v28 = type metadata accessor for Transaction();
    __chkstk_darwin(v28);
    *(&v30 - 4) = a5;
    *(&v30 - 3) = a2;
    *(&v30 - 2) = a3;
    static Transaction.named<A>(_:with:)();
    Transaction.capture()();
  }
}

uint64_t sub_1000F7314(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;

  sub_1004AE5D8(v14);

  v16 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v17 = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_100002CE0(v14, &qword_1005AB4D0, &unk_1004C45D0);
  if (v17 == 1)
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
      _os_log_impl(&_mh_execute_header, v19, v20, "Running setupSecureLocations", v21, 2u);
    }

    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = sub_1000F77EC;
    v22[4] = v15;
    aBlock[4] = sub_1000F77F8;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F108;
    v23 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v24 = v28;
    v25 = v31;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
    (*(v30 + 8))(v24, v25);
    (*(v27 + 8))(v11, v29);
  }

  else
  {
    sub_1000F00A0(1, a2, a3, a4);
  }
}

double sub_1000F7840(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000F784C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003690;

  return sub_100312AF0(a1, v4, v5);
}

unint64_t sub_1000F78FC()
{
  result = qword_1005AABC0;
  if (!qword_1005AABC0)
  {
    sub_10004B610(&qword_1005AABB8, &qword_1004C4610);
    sub_1000F7980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABC0);
  }

  return result;
}

unint64_t sub_1000F7980()
{
  result = qword_1005AABC8;
  if (!qword_1005AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABC8);
  }

  return result;
}

unint64_t sub_1000F79D4()
{
  result = qword_1005AABD8;
  if (!qword_1005AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AABD8);
  }

  return result;
}

unint64_t sub_1000F7A28()
{
  result = qword_1005AAC00;
  if (!qword_1005AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC00);
  }

  return result;
}

uint64_t sub_1000F7A80(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000F20BC(a1, v6, v1 + v5);
}

uint64_t sub_1000F7B64()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000F7BF8(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000368C;

  return sub_1000F299C(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_1000F7CFC()
{
  result = qword_1005AAC28;
  if (!qword_1005AAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC28);
  }

  return result;
}

unint64_t sub_1000F7D50()
{
  result = qword_1005AAC30;
  if (!qword_1005AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC30);
  }

  return result;
}

uint64_t sub_1000F7DA4(uint64_t a1)
{
  v4 = *(type metadata accessor for Destination() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_10012AA7C(a1, v1 + v5, v6);
}

uint64_t sub_1000F7EC0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1000E0AC4();
}

uint64_t sub_1000F7FB4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005AB4D0, &unk_1004C45D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = a2;

  sub_1004AE5D8(v12);

  v15 = type metadata accessor for SecureLocationsCachedSharingKey(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_100002CE0(v12, &qword_1005AB4D0, &unk_1004C45D0);
  if (v16 == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000A6F0(v17, qword_1005DFB98);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Running setupSecureLocations", v20, 2u);
    }

    v21 = swift_allocObject();
    v21[2] = a1;
    v21[3] = sub_1000F8580;
    v21[4] = v13;
    aBlock[4] = sub_1000F92FC;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058F568;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v33 = _swiftEmptyArrayStorage;
    sub_1000F11F8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v32 + 8))(v6, v4);
    (*(v30 + 8))(v9, v31);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);
    v24 = v14;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_10000D01C(*&v24[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v24[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s - secure locations is setup - requesting startMonitor", v27, 0xCu);
      sub_100004984(v28);
    }

    sub_10001D6F0();
  }
}

unint64_t sub_1000F85A8()
{
  result = qword_1005AAC78;
  if (!qword_1005AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAC78);
  }

  return result;
}

uint64_t sub_1000F8600(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AAC70, &qword_1004D96D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Destination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_100128E3C(a1, v1 + v6, v1 + v9, v11, v12);
}

void sub_1000F879C()
{
  v1 = *(sub_10004B564(&qword_1005AABB0, &unk_1004C45F0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + v3);
  v9 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = v9[8];
  v12 = *(v0 + v4);

  sub_1000EBDD8(v5, v6, v7, v0 + v2, v8, v10, v11, v12);
}

uint64_t sub_1000F88B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000F8920()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000F8980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10004B564(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000F89E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1000EA4C8(a1, v4, v5, v6);
}

uint64_t sub_1000F8AB8(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateKey() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_1000E98A8(a1, v6, v7, v8, v1 + v5);
}

void sub_1000F8BE4()
{
  v1 = *(type metadata accessor for DiversifiedRootKeys() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1000E7AC4(v2, v3, v4);
}

uint64_t sub_1000F8CA0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000F8CF4(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

void sub_1000F8DA4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000F8F08(319, &qword_1005AAD58, &type metadata accessor for PrivateKey);
    if (v2 <= 0x3F)
    {
      sub_1000F8F08(319, &qword_1005AAD60, &type metadata accessor for HashedAdvertisement);
      if (v3 <= 0x3F)
      {
        sub_1000F8F08(319, &unk_1005AAD68, &type metadata accessor for Destination);
        if (v4 <= 0x3F)
        {
          sub_1000F8F5C();
          if (v5 <= 0x3F)
          {
            sub_1000F8F08(319, &qword_1005AE6B0, &type metadata accessor for Date);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000F8F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1000F8F5C()
{
  if (!qword_1005A9790)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9790);
    }
  }
}

unint64_t sub_1000F8FF8()
{
  result = qword_1005AADB8;
  if (!qword_1005AADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADB8);
  }

  return result;
}

unint64_t sub_1000F9050()
{
  result = qword_1005AADC0;
  if (!qword_1005AADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADC0);
  }

  return result;
}

unint64_t sub_1000F90A8()
{
  result = qword_1005AADC8;
  if (!qword_1005AADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADC8);
  }

  return result;
}

unint64_t sub_1000F9100()
{
  result = qword_1005AADD0;
  if (!qword_1005AADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADD0);
  }

  return result;
}

unint64_t sub_1000F9158()
{
  result = qword_1005AADD8;
  if (!qword_1005AADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADD8);
  }

  return result;
}

unint64_t sub_1000F91B0()
{
  result = qword_1005AADE0;
  if (!qword_1005AADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AADE0);
  }

  return result;
}

void *sub_1000F9300@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_1000F93D0(void *a1, uint64_t a2, unint64_t a3, int a4, double a5)
{
  v16 = a4;
  v9 = sub_10004B564(&qword_1005AB118, &qword_1004C4F98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100011AEC(a1, a1[3]);
  sub_10010781C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  v17 = 0;
  sub_100005F6C(a2, a3);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v18, v19);
  if (!v5)
  {
    v13 = v16;
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = v13;
    v17 = 2;
    sub_1001078C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000F95B8()
{
  v1 = 7630182;
  if (*v0 == 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461636F6CLL;
  }
}

uint64_t sub_1000F9600@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100105E1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F9628(uint64_t a1)
{
  v2 = sub_10010781C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9664(uint64_t a1)
{
  v2 = sub_10010781C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000F96A0(uint64_t a1@<X8>, void *a2@<X0>)
{
  v7 = sub_100105F3C(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6;
  }
}

uint64_t sub_1000F96F8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005AAFC8, &unk_1004C4BD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100011AEC(a1, a1[3]);
  sub_100106608();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v12;
  v11[23] = 0;
  sub_1001066B0(&v13, v11);
  sub_10010670C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000049D0(v12, *(&v12 + 1));
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v12 = *(v3 + 6);
    v11[0] = 3;
    sub_10004B564(&qword_1005AAFB0, &qword_1004C4BD0);
    sub_100106760(&qword_1005AAFD8, sub_1001067D8, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000F993C()
{
  v1 = 25705;
  v2 = 1701080941;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    v1 = 0x6570795479656BLL;
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

uint64_t sub_1000F99AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100106194(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000F99D4(uint64_t a1)
{
  v2 = sub_100106608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9A10(uint64_t a1)
{
  v2 = sub_100106608();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000F9A4C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1001062F4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000F9AB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = sub_10004B564(&qword_1005AB128, &unk_1004C4FA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_100011AEC(a1, a1[3]);
  sub_100107750();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    sub_1001077A4(&qword_1005AB130, sub_1000F7D50, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1000F9C88()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x54646E6553706174;
  }
}

void sub_1000F9CD4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x54646E6553706174 && a2 == 0xE900000000000053;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF64616F6C796150)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1000F9DC0(uint64_t a1)
{
  v2 = sub_100107750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F9DFC(uint64_t a1)
{
  v2 = sub_100107750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F9E38@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100106968(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

Swift::Int sub_1000F9E88()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_10008C154(v1);
  return Hasher._finalize()();
}

void sub_1000F9F2C(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_10008C154(a1);
}

Swift::Int sub_1000F9FB8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100107918(&qword_1005AECC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_10008C154(v1);
  return Hasher._finalize()();
}

BOOL sub_1000FA058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return sub_10008D92C((a1 + v6), a2 + v6);
}

void *sub_1000FA0C0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v14 = a2;
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B518();
  (*(v6 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_100107918(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v2[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_10004B564(&qword_1005AAFE8, &qword_1004C4BE8);
  swift_allocObject();
  v9 = PassthroughSubject.init()();
  v2[5] = v9;
  v15 = v9;
  sub_10001DF0C(&qword_1005AAFF0, &qword_1005AAFE8, &qword_1004C4BE8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v2[6] = Publisher.eraseToAnyPublisher()();
  v10 = v14;
  v2[3] = v13;
  v2[4] = v10;
  return v2;
}

void sub_1000FA3AC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  v167 = a4;
  v189 = a3;
  v192 = a5;
  v7 = type metadata accessor for HashedAdvertisement();
  v187 = *(v7 - 8);
  v188 = v7;
  __chkstk_darwin(v7);
  v179 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Advertisement();
  v176 = *(v9 - 8);
  v177 = v9;
  __chkstk_darwin(v9);
  v175 = &v161 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for PublicKey();
  v173 = *(v174 - 8);
  __chkstk_darwin(v174);
  v172 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&qword_1005AABB0, &unk_1004C45F0);
  __chkstk_darwin(v12 - 8);
  v183 = &v161 - v13;
  v14 = type metadata accessor for DiversifiedRootKeys();
  v184 = *(v14 - 8);
  v185 = v14;
  __chkstk_darwin(v14);
  v170 = &v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v16 - 8);
  v178 = &v161 - v17;
  v18 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  __chkstk_darwin(v18 - 8);
  v166 = &v161 - v19;
  v20 = type metadata accessor for SecureLocation(0);
  v21 = __chkstk_darwin(v20 - 8);
  v164 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v163 = &v161 - v24;
  __chkstk_darwin(v23);
  v165 = &v161 - v25;
  v26 = sub_10004B564(&qword_1005AAB18, &qword_1004C4580);
  __chkstk_darwin(v26 - 8);
  v168 = &v161 - v27;
  v28 = sub_10004B564(&qword_1005AB018, &unk_1004DD720);
  __chkstk_darwin(v28 - 8);
  v180 = &v161 - v29;
  v30 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v31 = *(v30 - 8);
  v181 = v30;
  v182 = v31;
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v169 = &v161 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v171 = &v161 - v35;
  __chkstk_darwin(v34);
  v186 = &v161 - v36;
  v37 = type metadata accessor for String.Encoding();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v161 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v45 = &v161 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v47 = &v161 - v46;
  static String.Encoding.utf8.getter();
  v191 = a1;
  v193 = a2;
  v48 = String.data(using:allowLossyConversion:)();
  v50 = v49;
  (*(v38 + 8))(v40, v37);
  if (v50 >> 60 == 15)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000A6F0(v51, qword_1005DFB98);
    v52 = v193;

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v194[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_10000D01C(v191, v52, v194);
      _os_log_impl(&_mh_execute_header, v53, v54, "Unable to create stableUUID from findMyId %s", v55, 0xCu);
      sub_100004984(v56);
    }

    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_25;
  }

  v194[0] = v48;
  v194[1] = v50;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  sub_10001A794(v48, v50);
  (*(v42 + 32))(v47, v45, v41);
  v61 = v189;
  v62 = v41;
  if ([v189 subscriptionMode] == 4)
  {
    v63 = v183;
    sub_1000EA9E8(v183);
    v65 = v184;
    v64 = v185;
    if ((*(v184 + 48))(v63, 1, v185) == 1)
    {
      sub_100002CE0(v63, &qword_1005AABB0, &unk_1004C45F0);
      (*(v42 + 8))(v47, v62);
      v58 = v193;

      v60 = 4;
      v59 = _swiftEmptyArrayStorage;
    }

    else
    {
      v88 = v170;
      (*(v65 + 32))(v170, v63, v64);
      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v89 = v62;
      v59 = swift_allocObject();
      *(v59 + 1) = xmmword_1004C1900;
      v90 = v172;
      DiversifiedRootKeys.publicKey.getter();
      v91 = v175;
      PublicKey.advertisement.getter();
      (*(v173 + 8))(v90, v174);
      v92 = v179;
      Advertisement.hashed.getter();
      (*(v176 + 8))(v91, v177);
      v93 = HashedAdvertisement.data.getter();
      v95 = v94;
      (*(v187 + 8))(v92, v188);
      v59[4] = v93;
      v59[5] = v95;
      (*(v65 + 8))(v88, v64);
      (*(v42 + 8))(v47, v89);
      v58 = v193;

      v60 = 4;
    }

    v57 = v191;
    goto LABEL_25;
  }

  v66 = v61;
  v184 = v42;
  v185 = v47;
  v57 = v191;
  v67 = v180;
  v58 = v193;
  sub_1004AD358(v191, v193);
  v69 = v181;
  v68 = v182;
  if ((*(v182 + 48))(v67, 1, v181) == 1)
  {
    sub_100002CE0(v67, &qword_1005AB018, &unk_1004DD720);
    v70 = v184;
    v71 = v171;
    (*(v184 + 16))(v171, v185, v62);
    v162 = v62;
    v72 = v69[6];
    v73 = type metadata accessor for PrivateKey();
    (*(*(v73 - 8) + 56))(v71 + v72, 1, 1, v73);
    (*(v187 + 56))(v71 + v69[7], 1, 1, v188);
    v74 = v69[8];
    v75 = type metadata accessor for Destination();
    (*(*(v75 - 8) + 56))(v71 + v74, 1, 1, v75);
    v76 = v69[11];
    v77 = type metadata accessor for Date();
    (*(*(v77 - 8) + 56))(v71 + v76, 1, 1, v77);
    v78 = (v71 + v69[5]);
    *v78 = v57;
    v78[1] = v58;
    v79 = (v71 + v69[9]);
    *v79 = 0;
    v79[1] = 0;
    *(v71 + v69[10]) = 0;
    v80 = v68;
    v81 = swift_allocObject();
    *(v81 + 16) = v57;
    *(v81 + 24) = v58;
    v82 = type metadata accessor for TaskPriority();
    v83 = v178;
    (*(*(v82 - 8) + 56))(v178, 1, 1, v82);
    v84 = v169;
    sub_100106F1C(v71, v169, type metadata accessor for SecureLocationsCachedSharedKey);
    v85 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = 0;
    *(v86 + 24) = 0;
    sub_100106DDC(v84, v86 + v85, type metadata accessor for SecureLocationsCachedSharedKey);
    v87 = (v86 + ((v32 + v85 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v87 = sub_1001070B4;
    v87[1] = v81;
    swift_bridgeObjectRetain_n();
    sub_1001D7F30(0, 0, v83, &unk_1004C4C28, v86);

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v57, v58, 0);

    sub_100106E44(v71, type metadata accessor for SecureLocationsCachedSharedKey);
    (*(v70 + 8))(v185, v162);
LABEL_24:

    v60 = 0;
    v59 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v96 = v186;
  sub_100106DDC(v67, v186, type metadata accessor for SecureLocationsCachedSharedKey);
  v97 = v96 + v69[7];
  v98 = v168;
  sub_100005F04(v97, v168, &qword_1005AAB18, &qword_1004C4580);
  v100 = v187;
  v99 = v188;
  if ((*(v187 + 48))(v98, 1, v188) == 1)
  {
    v101 = v62;
    sub_100002CE0(v98, &qword_1005AAB18, &qword_1004C4580);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v102 = type metadata accessor for Logger();
    sub_10000A6F0(v102, qword_1005DFB98);
    v58 = v193;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.default.getter();

    v105 = os_log_type_enabled(v103, v104);
    v57 = v191;
    v106 = v184;
    if (v105)
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v194[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_10000D01C(v57, v58, v194);
      _os_log_impl(&_mh_execute_header, v103, v104, "Found shared key record but no locationId for %s. Looks like we didn't receive keys", v107, 0xCu);
      sub_100004984(v108);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD178(v57, v58, 0);

    sub_100106E44(v186, type metadata accessor for SecureLocationsCachedSharedKey);
    (*(v106 + 8))(v185, v101);
    goto LABEL_24;
  }

  v183 = HashedAdvertisement.data.getter();
  v190 = v110;
  (*(v100 + 8))(v98, v99);
  v111 = v167;
  v162 = v62;
  if (v167)
  {
    v112 = 0;
    v58 = v193;
    v113 = v191;
LABEL_49:
    v116 = v184;
    goto LABEL_50;
  }

  v114 = v166;
  v113 = v191;
  sub_1004AC950(v191, v193, v166);
  v115 = type metadata accessor for SecureLocationsCachedPayload(0);
  if ((*(*(v115 - 8) + 48))(v114, 1, v115) != 1)
  {
    v122 = v114 + *(v115 + 20);
    v123 = v163;
    sub_100106F1C(v122, v163, type metadata accessor for SecureLocation);
    sub_100106E44(v114, type metadata accessor for SecureLocationsCachedPayload);
    v124 = v165;
    sub_100106DDC(v123, v165, type metadata accessor for SecureLocation);
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v125 = sub_1000DCB14(v124);

    v112 = (v125 & 1) != 0 && [v66 subscriptionMode] == 0;
    v58 = v193;
    v126 = v164;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CD500(v113, v58, 2);

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    sub_10000A6F0(v127, qword_1005DFB98);
    sub_100106F1C(v124, v126, type metadata accessor for SecureLocation);

    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = v126;
      v131 = swift_slowAlloc();
      v194[0] = swift_slowAlloc();
      *v131 = 136315650;
      *(v131 + 4) = sub_10000D01C(v191, v58, v194);
      *(v131 + 12) = 2080;
      v132 = sub_10008BC88();
      v134 = v133;
      sub_100106E44(v130, type metadata accessor for SecureLocation);
      v135 = sub_10000D01C(v132, v134, v194);

      *(v131 + 14) = v135;
      v111 = v167;
      *(v131 + 22) = 1024;
      *(v131 + 24) = v112;
      _os_log_impl(&_mh_execute_header, v128, v129, "subscribeAndFetch data %s got cached location %s isAging %{BOOL}d", v131, 0x1Cu);
      swift_arrayDestroy();
      v113 = v191;

      v136 = v165;
    }

    else
    {

      sub_100106E44(v126, type metadata accessor for SecureLocation);
      v136 = v124;
    }

    sub_100106E44(v136, type metadata accessor for SecureLocation);
    goto LABEL_49;
  }

  sub_100002CE0(v114, &qword_1005A9E40, &qword_1004C3390);
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  v58 = v193;
  sub_1000CD500(v113, v193, 0);

  v116 = v184;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for Logger();
  sub_10000A6F0(v117, qword_1005DFB98);

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v194[0] = v121;
    *v120 = 136315138;
    *(v120 + 4) = sub_10000D01C(v113, v58, v194);
    _os_log_impl(&_mh_execute_header, v118, v119, "subscribeAndFetch data %s no cached location", v120, 0xCu);
    sub_100004984(v121);
  }

  v112 = 1;
LABEL_50:
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  sub_1000CD178(v113, v58, 1);

  if (((v112 | v111) & 1) == 0)
  {
    goto LABEL_57;
  }

  v137 = [v66 clientApp];
  v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v140 = v139;

  if (v138 == 0xD000000000000017 && 0x80000001004DFCF0 == v140)
  {
    goto LABEL_55;
  }

  v141 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v141 & 1) == 0)
  {
    v149 = [v66 clientApp];
    v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v152 = v151;

    if (v150 == 0xD000000000000015 && 0x80000001004DF810 == v152)
    {
LABEL_55:

      goto LABEL_57;
    }

    v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v153 & 1) == 0)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v154 = type metadata accessor for Logger();
      sub_10000A6F0(v154, qword_1005DFB98);

      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.default.getter();

      v157 = os_log_type_enabled(v155, v156);
      v57 = v191;
      if (v157)
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v194[0] = v159;
        *v158 = 136315138;
        *(v158 + 4) = sub_10000D01C(v57, v58, v194);
        _os_log_impl(&_mh_execute_header, v155, v156, "We may have stale locationId. Requesting new keys for %s", v158, 0xCu);
        sub_100004984(v159);
      }

      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v59 = swift_allocObject();
      *(v59 + 1) = xmmword_1004C1900;
      v160 = v190;
      v59[4] = v183;
      v59[5] = v160;
      sub_100106E44(v186, type metadata accessor for SecureLocationsCachedSharedKey);
      (*(v116 + 8))(v185, v162);

      v60 = 1;
      goto LABEL_25;
    }
  }

LABEL_57:
  v142 = [v66 clientApp];
  v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v145 = v144;

  if (v143 == 0xD000000000000015 && 0x80000001004DF810 == v145)
  {

    v57 = v191;
  }

  else
  {
    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v191;
    if ((v146 & 1) == 0)
    {
      sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
      v59 = swift_allocObject();
      *(v59 + 1) = xmmword_1004C1900;
      v148 = v190;
      v59[4] = v183;
      v59[5] = v148;
      sub_100106E44(v186, type metadata accessor for SecureLocationsCachedSharedKey);
      (*(v116 + 8))(v185, v162);

      v60 = 2;
      goto LABEL_25;
    }
  }

  sub_10004B564(&qword_1005AB020, &qword_1004D7D90);
  v59 = swift_allocObject();
  *(v59 + 1) = xmmword_1004C1900;
  v147 = v190;
  v59[4] = v183;
  v59[5] = v147;
  sub_100106E44(v186, type metadata accessor for SecureLocationsCachedSharedKey);
  (*(v116 + 8))(v185, v162);

  v60 = 3;
LABEL_25:
  v109 = v192;
  *v192 = v57;
  v109[1] = v58;
  v109[2] = v59;
  v109[3] = 0;
  *(v109 + 32) = v60;
}