void sub_100AE6074(char a1)
{
  Transaction.capture()();
  if ((a1 & 1) == 0)
  {
    v2 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_101385D80;
    v4 = UUID.uuidString.getter();
    v6 = v5;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_100008C00();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v7, "BeaconStore failed to remove locations for beacon %@", 52, 2, v3);
  }
}

uint64_t sub_100AE6190(char a1, uint64_t a2, const char *a3, const char *a4)
{
  Transaction.capture()();
  if (a1)
  {
    v7 = static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      v12 = v7;
      swift_once();
      v7 = v12;
    }

    v8 = qword_10177C380;
    v9 = a3;
    v10 = 35;
  }

  else
  {
    v7 = static os_log_type_t.default.getter();
    if (qword_101695038 != -1)
    {
      v13 = v7;
      swift_once();
      v7 = v13;
    }

    v8 = qword_10177C380;
    v9 = a4;
    v10 = 27;
  }

  return os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, v9, v10, 2, _swiftEmptyArrayStorage);
}

void sub_100AE62A4(void *a1, char a2, uint64_t a3, const char *a4, uint64_t a5)
{
  Transaction.capture()();
  if (a2)
  {
    v9 = a1;
    v10 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_101385D80;
    type metadata accessor for SPSeparationMonitoringError(0);
    v12 = v9;
    v13 = String.init<A>(describing:)();
    v15 = v14;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v16 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v16, a4, a5, 2, v11);

    sub_100408170(a1, 1);
  }
}

void sub_100AE63DC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000076D4(v15, qword_10177C418);
  (*(v12 + 16))(v14, a3, v11);
  v32 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a1;
    v20 = v19;
    v30 = swift_slowAlloc();
    v31 = a6;
    v33[0] = v30;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = a5;
    v23 = a4;
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    v26 = sub_1000136BC(v21, v25, v33);
    a4 = v23;
    a5 = v22;

    *(v20 + 14) = v26;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v29 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "Remove OwnedBeaconGroup %{private,mask.hash}s? %{BOOL}d", v20, 0x1Cu);
    sub_100007BAC(v30);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  sub_1005160CC(v32);
  if (a5)
  {
    v33[3] = type metadata accessor for OwnedBeaconGroup(0);
    v33[4] = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF54);
    v27 = sub_1000280DC(v33);
    sub_100022A54(a4, v27, type metadata accessor for OwnedBeaconGroup);
    PassthroughSubject.send(_:)();
    sub_100007BAC(v33);
  }
}

void sub_100AE6740(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v9);
  v14 = &v50[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v50[-v16];
  __chkstk_darwin(v15);
  v19 = &v50[-v18];
  Transaction.capture()();
  if (a1)
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_10177CE28);
    v21 = *(v8 + 16);
    v21(v19, a3, v7);
    v21(v17, a4, v7);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v24 = 141558787;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = v23;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v28 = *(v8 + 8);
      v28(v19, v7);
      v29 = sub_1000136BC(v25, v27, &v53);

      *(v24 + 14) = v29;
      *(v24 + 22) = 2160;
      *(v24 + 24) = 1752392040;
      *(v24 + 32) = 2081;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v28(v17, v7);
      v33 = sub_1000136BC(v30, v32, &v53);

      *(v24 + 34) = v33;
      _os_log_impl(&_mh_execute_header, v22, v51, "OwnedDeviceKeyRecord removed deviceIdentifier:%{private,mask.hash}s, uuid:%{private,mask.hash}s.", v24, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v48 = *(v8 + 8);
      v48(v17, v7);
      v48(v19, v7);
    }
  }

  else
  {
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000076D4(v34, qword_10177CE28);
    v35 = *(v8 + 16);
    v35(v14, a3, v7);
    v35(v11, a4, v7);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = v52;
      *v38 = 141558787;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = v37;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v40;
      v42 = *(v8 + 8);
      v42(v14, v7);
      v43 = sub_1000136BC(v39, v41, &v53);

      *(v38 + 14) = v43;
      *(v38 + 22) = 2160;
      *(v38 + 24) = 1752392040;
      *(v38 + 32) = 2081;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v42(v11, v7);
      v47 = sub_1000136BC(v44, v46, &v53);

      *(v38 + 34) = v47;
      _os_log_impl(&_mh_execute_header, v36, v51, "Could not remove OwnedDeviceKeyRecord deviceIdentifier:%{private,mask.hash}s, uuid:%{private,mask.hash}s.", v38, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {

      v49 = *(v8 + 8);
      v49(v11, v7);
      v49(v14, v7);
    }
  }
}

uint64_t sub_100AE6D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_100AE6E0C, 0, 0);
}

uint64_t sub_100AE6E0C()
{
  v1 = v0[5];
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v0[10] = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = getuid();
  sub_1000294F0(v4);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_100AE6F68;
  v6 = v0[8];
  v7 = v0[9];

  return sub_100689160(v7, v6);
}

uint64_t sub_100AE6F68()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = sub_100AE714C;
  }

  else
  {
    v4 = v2[9];
    v6 = v2[7];
    v5 = v2[8];
    v7 = v2[6];
    v8 = *(v6 + 8);
    v8(v5, v7);
    v8(v4, v7);

    v3 = sub_100AE70D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AE70D0()
{
  **(v0 + 24) = *(v0 + 96) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AE714C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(*(v0 + 56) + 8);
  v3(*(v0 + 64), v2);
  v3(v1, v2);

  **(v0 + 24) = *(v0 + 96) != 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AE7214(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for UUID();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_100AE7304;

  return daemon.getter();
}

uint64_t sub_100AE7304(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100AE74E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AE74E0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100AE7660, 0, 0);
  }
}

uint64_t sub_100AE7660()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035D0(v1, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100AE773C;
  v5 = v0[5];

  return sub_1010D0080(v5);
}

uint64_t sub_100AE773C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100AE78AC;
  }

  else
  {
    v5 = sub_1006FEB78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100AE78AC()
{

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not delete key sync metadata %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100AE7A60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v80 = a6;
  v81 = a1;
  v82 = a5;
  v83 = a2;
  v85 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v77 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for DispatchQoS();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CloudKitChangeSet(0);
  v78 = *(v72 - 8);
  v11 = *(v78 + 64);
  v12 = __chkstk_darwin(v72);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v79 = &v69 - v14;
  __chkstk_darwin(v13);
  v16 = &v69 - v15;
  v17 = type metadata accessor for Notification();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v88 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  LODWORD(v84) = v86;
  if (v86 == 1)
  {
    String._bridgeToObjectiveC()();
    v21 = type metadata accessor for UUID();
    v90 = v21;
    v22 = sub_1000280DC(&aBlock);
    (*(*(v21 - 8) + 16))(v22, a3, v21);
    Notification.init(name:object:userInfo:)();
    v23 = [objc_opt_self() defaultCenter];
    isa = Notification._bridgeToObjectiveC()().super.isa;
    [v23 postNotification:isa];

    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v25 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = String._bridgeToObjectiveC()();
    [v25 setObject:v26 forKey:v27];
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_10177BA08);
  sub_100022A54(a3, v16, type metadata accessor for CloudKitChangeSet);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v69 = v11;
    v32 = v8;
    v33 = v31;
    v34 = swift_slowAlloc();
    aBlock = v34;
    *v33 = 136446210;
    v35 = sub_100EC17B8();
    v37 = v36;
    sub_100022C40(v16, type metadata accessor for CloudKitChangeSet);
    v38 = sub_1000136BC(v35, v37, &aBlock);

    *(v33 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Begin applying %{public}s", v33, 0xCu);
    sub_100007BAC(v34);

    v8 = v32;
    v11 = v69;
  }

  else
  {

    sub_100022C40(v16, type metadata accessor for CloudKitChangeSet);
  }

  v39 = v85;
  v40 = mach_continuous_time();
  if (v84)
  {
    sub_10090B10C(_swiftEmptyArrayStorage);

    v41 = v79;
    sub_100022A54(a3, v79, type metadata accessor for CloudKitChangeSet);
    v42 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v43 = (v11 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_10002911C(v41, v45 + v42, type metadata accessor for CloudKitChangeSet);
    v46 = (v45 + v43);
    v47 = v82;
    v48 = v83;
    *v46 = v81;
    v46[1] = v48;
    v49 = (v45 + v44);
    v50 = v80;
    *v49 = v47;
    v49[1] = v50;
    v91 = sub_100B03CB0;
    v92 = v45;
    aBlock = _NSConcreteStackBlock;
    v88 = 1107296256;
    v89 = sub_100006684;
    v90 = &unk_1016462E0;
    v51 = _Block_copy(&aBlock);

    v52 = v73;
    static DispatchQoS.unspecified.getter();
    v86 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v53 = v75;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);
    (*(v77 + 8))(v53, v8);
    (*(v74 + 8))(v52, v76);
  }

  else
  {
    v54 = v40;
    v55 = v39;
    v85 = sub_100AE86B8(*(a3 + *(v72 + 24)));
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v56 = v79;
    sub_100022A54(a3, v79, type metadata accessor for CloudKitChangeSet);
    v57 = *(v78 + 80);
    v84 = a3;
    v58 = (v57 + 32) & ~v57;
    v59 = (v11 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = v55;
    *(v62 + 24) = v54;
    sub_10002911C(v56, v62 + v58, type metadata accessor for CloudKitChangeSet);
    v63 = (v62 + v59);
    v64 = v82;
    v65 = v83;
    *v63 = v81;
    v63[1] = v65;
    *(v62 + v60) = v85;
    v66 = (v62 + v61);
    v67 = v80;
    *v66 = v64;
    v66[1] = v67;
    *(v62 + ((v61 + 23) & 0xFFFFFFFFFFFFFFF8)) = v70;

    sub_100FCF8D4(v84, sub_100AF6418, v62);
  }
}

void *sub_100AE86B8(uint64_t a1)
{
  v84 = type metadata accessor for URL();
  v2 = *(v84 - 8);
  __chkstk_darwin(v84);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v74 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for BeaconStoreFileRecord(0);
  v73 = *(v78 - 8);
  v8 = __chkstk_darwin(v78);
  v87 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v66 - v10;
  v77 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v71 = *(v77 - 8);
  __chkstk_darwin(v77);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016B5450, &qword_1013D65F8);
  v14 = __chkstk_darwin(v13 - 8);
  v83 = (&v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v82 = (&v66 - v16);
  v17 = *(a1 + 64);
  v68 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v67 = (v18 + 63) >> 6;
  v75 = (v2 + 16);
  v76 = (v6 + 16);
  v80 = (v2 + 8);
  v81 = (v6 + 8);
  v72 = a1;

  v21 = 0;
  v22 = _swiftEmptyDictionarySingleton;
  v85 = v5;
  v88 = v4;
  v69 = v11;
  while (1)
  {
    v89 = v22;
    if (!v20)
    {
      break;
    }

    v23 = v21;
    v24 = v84;
LABEL_16:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v27 | (v23 << 6);
    v29 = *(*(v72 + 48) + 8 * v28);
    v30 = v70;
    sub_100022A54(*(v72 + 56) + *(v71 + 72) * v28, v70, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    v31 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
    v32 = *(v31 + 48);
    v33 = v83;
    *v83 = v29;
    sub_10002911C(v30, v33 + v32, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
    v34 = v29;
    v86 = v23;
    v35 = v33;
    v5 = v85;
    v11 = v69;
    v26 = v24;
LABEL_17:
    v36 = v82;
    sub_1000D2AD8(v35, v82, &qword_1016B5450, &qword_1013D65F8);
    v37 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {

      return v89;
    }

    v38 = *v36;
    v39 = v36 + *(v37 + 48);
    v40 = v11;
    v41 = *(v79 + 168);
    v42 = v77;
    v43 = v74;
    (*v76)(v74, v39 + *(v77 + 20), v5);
    (*v75)(v88, v39 + *(v42 + 24), v26);
    v44 = sub_100022C40(v39, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
    __chkstk_darwin(v44);
    *(&v66 - 4) = v41;
    *(&v66 - 3) = v43;
    v45 = v88;
    *(&v66 - 2) = v88;
    v46 = v90;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v46)
    {

      (*v80)(v45, v26);
      (*v81)(v43, v5);
      v64 = v89;
      sub_100B2145C(v89);

      swift_willThrow();
      v90 = v46;
      return v64;
    }

    v90 = 0;
    (*v80)(v45, v26);
    (*v81)(v43, v5);
    v47 = v40;
    sub_100022A54(v40, v87, type metadata accessor for BeaconStoreFileRecord);
    v48 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v91 = v48;
    v51 = sub_100771FF8(v38);
    v52 = *(v48 + 16);
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_33;
    }

    v55 = v50;
    v56 = v38;
    if (*(v48 + 24) >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10100CBA4();
      }
    }

    else
    {
      sub_100FF5864(v54, isUniquelyReferenced_nonNull_native);
      v57 = sub_100771FF8(v38);
      if ((v55 & 1) != (v58 & 1))
      {
        goto LABEL_35;
      }

      v51 = v57;
    }

    v22 = v91;
    if (v55)
    {
      sub_100B25C50(v87, v91[7] + *(v73 + 72) * v51, type metadata accessor for BeaconStoreFileRecord);

      v11 = v47;
      sub_100022C40(v47, type metadata accessor for BeaconStoreFileRecord);
    }

    else
    {
      v91[(v51 >> 6) + 8] |= 1 << v51;
      *(v22[6] + 8 * v51) = v56;
      sub_10002911C(v87, v22[7] + *(v73 + 72) * v51, type metadata accessor for BeaconStoreFileRecord);
      v11 = v47;
      sub_100022C40(v47, type metadata accessor for BeaconStoreFileRecord);
      v59 = v22[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_34;
      }

      v22[2] = v61;
    }

    v5 = v85;
    v21 = v86;
  }

  if (v67 <= v21 + 1)
  {
    v25 = v21 + 1;
  }

  else
  {
    v25 = v67;
  }

  v26 = v84;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v67)
    {
      v86 = v25 - 1;
      v62 = sub_1000BC4D4(&qword_1016B5458, &unk_1013D6600);
      v63 = v83;
      (*(*(v62 - 8) + 56))(v83, 1, 1, v62);
      v35 = v63;
      v20 = 0;
      goto LABEL_17;
    }

    v20 = *(v68 + 8 * v23);
    ++v21;
    if (v20)
    {
      v24 = v84;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100AE8F9C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v4 = type metadata accessor for CloudKitChangeSet(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String._bridgeToObjectiveC()();
  v11 = type metadata accessor for UUID();
  v32[3] = v11;
  v12 = sub_1000280DC(v32);
  (*(*(v11 - 8) + 16))(v12, a1, v11);
  Notification.init(name:object:userInfo:)();
  v13 = [objc_opt_self() defaultCenter];
  isa = Notification._bridgeToObjectiveC()().super.isa;
  [v13 postNotification:isa];

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_10177BA08);
  sub_100022A54(a1, v6, type metadata accessor for CloudKitChangeSet);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = v6;
    v20 = swift_slowAlloc();
    v32[0] = v20;
    *v18 = 136446210;
    v21 = sub_100EC17B8();
    v29 = v10;
    v22 = v8;
    v24 = v23;
    sub_100022C40(v19, type metadata accessor for CloudKitChangeSet);
    v25 = sub_1000136BC(v21, v24, v32);
    v8 = v22;
    v10 = v29;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Calling wakeChangeSetQueue() after completing %{public}s", v18, 0xCu);
    sub_100007BAC(v20);
  }

  else
  {

    v26 = sub_100022C40(v6, type metadata accessor for CloudKitChangeSet);
  }

  v31(v26);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100AE9318(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a7;
  v40 = a5;
  v39 = a4;
  v46 = a3;
  v42 = a1;
  v43 = a2;
  v49 = a12;
  v47 = a11;
  v45 = a10;
  v41 = a9;
  v53 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v48 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CloudKitChangeSet(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a4 + 72);
  sub_100022A54(a6, v20, type metadata accessor for CloudKitChangeSet);
  v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v22 = (v19 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v40;
  sub_10002911C(v20, v26 + v21, type metadata accessor for CloudKitChangeSet);
  v27 = (v26 + v22);
  *v27 = v44;
  v27[1] = a8;
  v28 = v26 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v29 = v42;
  v30 = v43;
  *v28 = v42;
  *(v28 + 8) = v30;
  LOBYTE(v21) = v46 & 1;
  *(v28 + 16) = v46 & 1;
  *(v26 + v23) = v41;
  *(v26 + v24) = v39;
  v31 = (v26 + v25);
  v32 = v47;
  *v31 = v45;
  v31[1] = v32;
  *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;
  aBlock[4] = sub_100B03DD0;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101646330;
  v33 = _Block_copy(aBlock);

  sub_100B03EB0(v29, v30, v21);

  v34 = v48;
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v35 = v51;
  v36 = v53;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);
  (*(v55 + 8))(v35, v36);
  (*(v52 + 8))(v34, v54);
}

uint64_t sub_100AE97C0(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6, char a7, char *a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t), uint64_t a11)
{
  v162 = a8;
  v163 = a6;
  v148 = type metadata accessor for CloudKitChangeSet(0);
  v18 = __chkstk_darwin(v148);
  v20 = &v138 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v149 = &v138 - v21;
  v22 = type metadata accessor for CloudKitChangeSet.TombstoneInfo(0);
  v144 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v143 = (&v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  __chkstk_darwin(v24 - 8);
  v26 = &v138 - v25;
  v147 = type metadata accessor for BeaconStoreFileRecord(0);
  v151 = *(v147 - 8);
  v27 = __chkstk_darwin(v147);
  v146 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v145 = &v138 - v29;
  v30 = mach_continuous_time();
  v31 = v30 >= a1;
  v32 = v30 - a1;
  if (!v31)
  {
    goto LABEL_89;
  }

  v154 = a11;
  v155 = a10;
  v11 = convertToNanoseconds(_:)(v32) / 1000000.0;
  v156 = a3;
  if (a7)
  {
    v167 = a5;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
LABEL_5:
    sub_100B2145C(v162);
    v33 = [objc_opt_self() standardUserDefaults];
    v34 = String._bridgeToObjectiveC()();
    [v33 removeObjectForKey:v34];

    if (qword_101694BE8 != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_6;
  }

  v141 = a4;
  v47 = v163 + 64;
  v46 = *(v163 + 64);
  v153 = a9;
  v48 = 1 << *(v163 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v46;
  v51 = (v48 + 63) >> 6;
  v139 = (v151 + 56);

  a4 = 0;
  v52 = 0;
  v142 = _swiftEmptyArrayStorage;
  v152 = _swiftEmptyDictionarySingleton;
  *&v53 = 138412546;
  v150 = v53;
  v158 = a5;
  v140 = v20;
  v20 = v162;
  v159 = v26;
  v160 = v47;
  v161 = v51;
  while (v50)
  {
LABEL_18:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = v55 | (a4 << 6);
    v57 = *(*(v163 + 48) + 8 * v56);
    v58 = *(v163 + 56) + 16 * v56;
    if (*(v58 + 8) == 1)
    {
      v59 = *v58;
      v60 = v57;
      sub_100B21C10(v59, 1);
      v61 = v60;
      sub_100B21C10(v59, 1);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_1000076D4(v62, qword_10177BA08);
      v63 = v61;
      sub_100B21C10(v59, 1);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();

      sub_1000BB584(v59, 1);
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v157 = v52;
        v67 = a2;
        v68 = v66;
        v69 = swift_slowAlloc();
        *v68 = v150;
        *(v68 + 4) = v63;
        *v69 = v63;
        *(v68 + 12) = 2114;
        v70 = v63;
        v71 = _convertErrorToNSError(_:)();
        *(v68 + 14) = v71;
        v69[1] = v71;
        _os_log_impl(&_mh_execute_header, v64, v65, "Unexpected error deleting recordID [%@]: %{public}@", v68, 0x16u);
        sub_1000BC4D4(&qword_10169BB30, &unk_10138B3C0);
        swift_arrayDestroy();
        v20 = v162;

        a2 = v67;
        v52 = v157;

        a5 = v158;
        sub_1000BB584(v59, 1);
      }

      else
      {

        sub_1000BB584(v59, 1);
      }

      v51 = v161;

      sub_1000BB584(v59, 1);
      v26 = v159;
      v47 = v160;
    }

    else
    {
      v72 = *(v20 + 2);
      v73 = v57;
      v74 = v73;
      v157 = v73;
      if (v72 && (v75 = sub_100771FF8(v73), (v76 & 1) != 0))
      {
        v77 = *(v20 + 7);
        v78 = *(v151 + 72);
        v79 = v145;
        sub_100022A54(v77 + v78 * v75, v145, type metadata accessor for BeaconStoreFileRecord);
        sub_10002911C(v79, v146, type metadata accessor for BeaconStoreFileRecord);
        v80 = v74;
        v81 = v152;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v167 = v81;
        v83 = sub_100771FF8(v80);
        v85 = v81[2];
        v86 = (v84 & 1) == 0;
        v87 = __OFADD__(v85, v86);
        v88 = v85 + v86;
        if (v87)
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v89 = v84;
        if (v81[3] >= v88)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v113 = v83;
            sub_10100CBA4();
            v83 = v113;
            a5 = v158;
          }
        }

        else
        {
          sub_100FF5864(v88, isUniquelyReferenced_nonNull_native);
          v83 = sub_100771FF8(v80);
          if ((v89 & 1) != (v90 & 1))
          {
            goto LABEL_93;
          }
        }

        v51 = v161;
        v98 = v167;
        v152 = v167;
        if (v89)
        {
          sub_100B25C50(v146, v167[7] + v83 * v78, type metadata accessor for BeaconStoreFileRecord);
        }

        else
        {
          v167[(v83 >> 6) + 8] |= 1 << v83;
          *(v98[6] + 8 * v83) = v80;
          sub_10002911C(v146, v98[7] + v83 * v78, type metadata accessor for BeaconStoreFileRecord);
          v99 = v98[2];
          v87 = __OFADD__(v99, 1);
          v100 = v99 + 1;
          if (v87)
          {
            goto LABEL_92;
          }

          v98[2] = v100;
        }

        v20 = v162;
        v26 = v159;
      }

      else
      {
        v91 = v74;
        v92 = v152;
        v93 = sub_100771FF8(v91);
        if (v94)
        {
          v95 = v93;
          v96 = swift_isUniquelyReferenced_nonNull_native();
          v167 = v92;
          if (!v96)
          {
            sub_10100CBA4();
            v92 = v167;
          }

          sub_10002911C(v92[7] + *(v151 + 72) * v95, v26, type metadata accessor for BeaconStoreFileRecord);
          v152 = v92;
          sub_100AF9CCC(v95, v92, type metadata accessor for BeaconStoreFileRecord);

          v97 = 0;
        }

        else
        {

          v97 = 1;
        }

        (*v139)(v26, v97, 1, v147);
        sub_10000B3A8(v26, &qword_1016B53E0, &unk_1013D65D0);
        v51 = v161;
      }

      v101 = v157;
      v102 = *(a2 + *(v148 + 24));
      if (*(v102 + 16) && (v103 = sub_100771FF8(v157), (v104 & 1) != 0))
      {
        v105 = v143;
        sub_100022A54(*(v102 + 56) + *(v144 + 72) * v103, v143, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
        v106 = *v105;
        sub_100022C40(v105, type metadata accessor for CloudKitChangeSet.TombstoneInfo);
        type metadata accessor for BeaconStore(0);
        sub_100AEA9F4(v106, &v164);
        if (v52)
        {

          v107 = v157;
          v52 = 0;
          v166 = 0;
          v164 = 0u;
          v165 = 0u;
          goto LABEL_49;
        }

        v108 = v157;
        if (*(&v165 + 1))
        {
          sub_10000A748(&v164, &v167);
          sub_10001F280(&v167, &v164);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_100A5C340(0, v142[2] + 1, 1, v142);
          }

          v110 = v142[2];
          v109 = v142[3];
          v138 = v110 + 1;
          if (v110 >= v109 >> 1)
          {
            v142 = sub_100A5C340((v109 > 1), v110 + 1, 1, v142);
          }

          v111 = v157;

          sub_100007BAC(&v167);
          v112 = v142;
          v142[2] = v138;
          sub_10000A748(&v164, &v112[5 * v110 + 4]);
          v20 = v162;
          v47 = v160;
        }

        else
        {

LABEL_49:
          sub_10000B3A8(&v164, &qword_101697930, &qword_10138C9C8);
          v47 = v160;
        }
      }

      else
      {

        v47 = v160;
      }
    }
  }

  while (1)
  {
    v54 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
      goto LABEL_88;
    }

    if (v54 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v54);
    ++a4;
    if (v50)
    {
      a4 = v54;
      goto LABEL_18;
    }
  }

  v20 = a2;

  sub_100B21C1C(v152);
  a4 = (a5 + 8);
  v114 = 1 << *(a5 + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  a2 = v115 & a5[8];
  v116 = (v114 + 63) >> 6;

  v117 = 0;
  if (a2)
  {
    goto LABEL_64;
  }

LABEL_60:
  while (1)
  {
    v118 = v117 + 1;
    if (__OFADD__(v117, 1))
    {
      break;
    }

    if (v118 >= v116)
    {

      v122 = v155(0, 0);
      sub_100A8375C(v122);
      v123 = v142[2];
      if (v123)
      {
        v124 = v142 + 4;
        a2 = v20;
        v125 = v149;
        do
        {
          sub_10001F280(v124, &v167);
          PassthroughSubject.send(_:)();
          sub_100007BAC(&v167);
          v124 += 5;
          --v123;
        }

        while (v123);
      }

      else
      {

        a2 = v20;
        v125 = v149;
      }

      v126 = [objc_opt_self() standardUserDefaults];
      v127 = String._bridgeToObjectiveC()();
      [v126 removeObjectForKey:v127];

      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v128 = type metadata accessor for Logger();
      sub_1000076D4(v128, qword_10177BA08);
      sub_100022A54(a2, v125, type metadata accessor for CloudKitChangeSet);
      variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
      variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v167 = v132;
        *v131 = 136446722;
        v133 = sub_100EC17B8();
        v135 = v134;
        sub_100022C40(v125, type metadata accessor for CloudKitChangeSet);
        v136 = sub_1000136BC(v133, v135, &v167);

        *(v131 + 4) = v136;
        *(v131 + 12) = 1040;
        *(v131 + 14) = 0;
        *(v131 + 18) = 2048;
        *(v131 + 20) = v11;
        _os_log_impl(&_mh_execute_header, v129, v130, "Done applying %{public}s duration: %.*fms [Success]", v131, 0x1Cu);
        sub_100007BAC(v132);
      }

      else
      {

        sub_100022C40(v125, type metadata accessor for CloudKitChangeSet);
      }

      a4 = v141;
      return sub_100AEB29C(a2, v156, a4, "Calling wakeChangeSetQueue() after completing %{public}s", v138);
    }

    a2 = *(a4 + 8 * v118);
    ++v117;
    if (a2)
    {
      while (1)
      {
        v119 = a5[7] + ((v118 << 10) | (16 * __clz(__rbit64(a2))));
        v120 = *v119;
        if (*(v119 + 8))
        {
          v167 = *v119;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          swift_willThrowTypedImpl();

          a5 = v120;
          goto LABEL_86;
        }

        type metadata accessor for BeaconStore(0);
        sub_100B223D0(v120, 0);
        sub_100AEA9F4(v120, &v164);
        if (v52)
        {
          break;
        }

        a2 &= a2 - 1;
        if (*(&v165 + 1))
        {
          sub_10000A748(&v164, &v167);
          v121 = v168;
          sub_1000035D0(&v167, v168);
          sub_100137DEC(*(v153 + 168), v121);
          sub_1000BB578(v120, 0);
          sub_1000BB578(v120, 0);
          sub_100007BAC(&v167);
          v117 = v118;
          a5 = v158;
          if (!a2)
          {
            goto LABEL_60;
          }
        }

        else
        {
          sub_1000BB578(v120, 0);
          sub_1000BB578(v120, 0);
          sub_10000B3A8(&v164, &qword_101697930, &qword_10138C9C8);
          v117 = v118;
          if (!a2)
          {
            goto LABEL_60;
          }
        }

LABEL_64:
        v118 = v117;
      }

      sub_1000BB578(v120, 0);
      sub_1000BB578(v120, 0);

      a5 = v52;
LABEL_86:
      a4 = v141;
      a2 = v20;
      v20 = v140;
      goto LABEL_5;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  swift_once();
LABEL_6:
  v35 = type metadata accessor for Logger();
  sub_1000076D4(v35, qword_10177BA08);
  sub_100022A54(a2, v20, type metadata accessor for CloudKitChangeSet);
  variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
  variable initialization expression of CurrentLocationMonitor._currentAuthorizationStatus();
  v36 = Logger.logObject.getter();
  v37 = v20;
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v167 = v40;
    *v39 = 136446722;
    v41 = sub_100EC17B8();
    v42 = a5;
    v44 = v43;
    sub_100022C40(v37, type metadata accessor for CloudKitChangeSet);
    v45 = sub_1000136BC(v41, v44, &v167);
    a5 = v42;

    *(v39 + 4) = v45;
    *(v39 + 12) = 1040;
    *(v39 + 14) = 0;
    *(v39 + 18) = 2048;
    *(v39 + 20) = v11;
    _os_log_impl(&_mh_execute_header, v36, v38, "Done applying %{public}s duration: %.*fms [Failure]", v39, 0x1Cu);
    sub_100007BAC(v40);
  }

  else
  {

    sub_100022C40(v37, type metadata accessor for CloudKitChangeSet);
  }

  swift_errorRetain();
  v155(a5, 1);

  return sub_100AEB29C(a2, v156, a4, "Calling wakeChangeSetQueue() after completing %{public}s", v138);
}

void sub_100AEA9F4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = CKRecord.recordType.getter();
  v7 = sub_1008DA998(v5, v6);

  switch(v7)
  {
    case 1:
      *(a2 + 24) = type metadata accessor for SharedBeaconRecord(0);
      *(a2 + 32) = sub_10000768C(&unk_1016CAC90, type metadata accessor for SharedBeaconRecord, &unk_10140BAE0);
      v19 = sub_1000280DC(a2);
      sub_1011D5D0C(a1, v19);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 2:
      *(a2 + 24) = type metadata accessor for OwnedBeaconGroup(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5448, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF54);
      v15 = sub_1000280DC(a2);
      sub_100518A90(a1, v15);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 3:
      *(a2 + 24) = type metadata accessor for ShareRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5440, type metadata accessor for ShareRecord, &unk_10138F570);
      v17 = sub_1000280DC(a2);
      sub_1001547CC(a1, v17);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 4:
      *(a2 + 24) = type metadata accessor for BeaconNamingRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_10169EEE0, type metadata accessor for BeaconNamingRecord, &unk_1013E8F18);
      v12 = sub_1000280DC(a2);
      sub_100DE08D0(a1, v12);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 5:
      *(a2 + 24) = type metadata accessor for NotifyWhenFoundRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5438, type metadata accessor for NotifyWhenFoundRecord, &unk_1013AB5DC);
      v29 = sub_1000280DC(a2);
      sub_1004EBE10(a1, v29);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 6:
      *(a2 + 24) = type metadata accessor for BeaconEstimatedLocation(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5430, type metadata accessor for BeaconEstimatedLocation, &unk_1013E418C);
      v31 = sub_1000280DC(a2);
      sub_100D16BD0(a1, v31);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 7:
      *(a2 + 24) = type metadata accessor for LeashRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5428, type metadata accessor for LeashRecord, &unk_10140E01C);
      v18 = sub_1000280DC(a2);
      sub_101251FDC(a1, v18);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 8:
      *(a2 + 24) = type metadata accessor for SafeLocation(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5420, type metadata accessor for SafeLocation, &unk_1013F005C);
      v33 = sub_1000280DC(a2);
      sub_100EE51B8(a1, v33);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 9:
      *(a2 + 24) = type metadata accessor for LostModeRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5418, type metadata accessor for LostModeRecord, &unk_1013EB5FC);
      v14 = sub_1000280DC(a2);
      sub_100E7815C(a1, v14);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 10:
      *(a2 + 24) = type metadata accessor for KeyAlignmentRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5410, type metadata accessor for KeyAlignmentRecord, &unk_10138ED2C);
      v32 = sub_1000280DC(a2);
      sub_100150FC8(a1, v32);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 11:
      *(a2 + 24) = type metadata accessor for OwnedDeviceKeyRecord(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5408, type metadata accessor for OwnedDeviceKeyRecord, &unk_1014072AC);
      v11 = sub_1000280DC(a2);
      sub_101103E74(a1, v11);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 12:
      *(a2 + 24) = type metadata accessor for OwnerPeerTrust(0);
      *(a2 + 32) = sub_10000768C(&qword_10169EEF8, type metadata accessor for OwnerPeerTrust, &unk_10139C574);
      v13 = sub_1000280DC(a2);
      sub_100310ECC(a1, v13);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 13:
      *(a2 + 24) = type metadata accessor for MemberPeerTrust(0);
      *(a2 + 32) = sub_10000768C(&qword_10169EEF0, type metadata accessor for MemberPeerTrust, &unk_1013EC1A4);
      v30 = sub_1000280DC(a2);
      sub_100E939A4(a1, v30);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 14:
      *(a2 + 24) = type metadata accessor for OwnerSharingCircle(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B5400, type metadata accessor for OwnerSharingCircle, &unk_1013EA34C);
      v10 = sub_1000280DC(a2);
      sub_100E0F270(a1, v10);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 15:
      *(a2 + 24) = type metadata accessor for MemberSharingCircle(0);
      *(a2 + 32) = sub_10000768C(&qword_1016B53F8, type metadata accessor for MemberSharingCircle, &unk_10139D2F8);
      v16 = sub_1000280DC(a2);
      sub_1003268EC(a1, v16);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 16:
      *(a2 + 24) = type metadata accessor for SharingCircleSecret(0);
      *(a2 + 32) = sub_10000768C(&qword_10169EEE8, type metadata accessor for SharingCircleSecret, &unk_1013E816C);
      v9 = sub_1000280DC(a2);
      sub_100D69EDC(a1, v9);
      if (v2)
      {
        goto LABEL_32;
      }

      break;
    case 17:
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000076D4(v20, qword_10177BA08);
      v21 = a1;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34 = v25;
        *v24 = 136446210;
        v26 = CKRecord.recordType.getter();
        v28 = sub_1000136BC(v26, v27, &v34);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v22, v23, "Unexpected recordType: %{public}s", v24, 0xCu);
        sub_100007BAC(v25);
      }

      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      break;
    default:
      *(a2 + 24) = type metadata accessor for OwnedBeaconRecord(0);
      *(a2 + 32) = sub_10000768C(&unk_1016BB080, type metadata accessor for OwnedBeaconRecord, &unk_1013E7D18);
      v8 = sub_1000280DC(a2);
      sub_100D5E184(a1, v8);
      if (v2)
      {
LABEL_32:
        sub_100101758(a2);
      }

      break;
  }
}

uint64_t sub_100AEB29C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4, ...)
{
  v7 = type metadata accessor for CloudKitChangeSet(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177BA08);
  sub_100022A54(a1, v9, type metadata accessor for CloudKitChangeSet);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = sub_100EC17B8();
    v17 = v16;
    sub_100022C40(v9, type metadata accessor for CloudKitChangeSet);
    v18 = sub_1000136BC(v15, v17, &v22);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, a4, v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    v19 = sub_100022C40(v9, type metadata accessor for CloudKitChangeSet);
  }

  return a2(v19);
}

uint64_t sub_100AEB4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v15 = a2;
  v4 = sub_1000BC4D4(&qword_1016B55B0, &qword_1013D6B38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = sub_10112B714(&off_10160CFC8);
  if (qword_101695510 != -1)
  {
    swift_once();
  }

  v9 = AnyCurrentValuePublisher.publisher.getter();

  v17 = v9;
  *(swift_allocObject() + 16) = v8;
  sub_1000BC4D4(&unk_1016B2A90, &unk_10138CBC0);
  sub_1000041A4(&qword_101697B80, &unk_1016B2A90, &unk_10138CBC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.first(where:)();

  v10 = swift_allocObject();
  v11 = v15;
  v12 = v16;
  v10[2] = a1;
  v10[3] = v11;
  v10[4] = v12;
  sub_1000041A4(&qword_1016B55B8, &qword_1016B55B0, &qword_1013D6B38, &protocol conformance descriptor for Publishers.FirstWhere<A>);

  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  AnyCancellable.store(in:)();
}

uint64_t sub_100AEB758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = a3;
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100AEB838(char a1, void (*a2)(char *, uint64_t), void *a3, uint64_t a4)
{
  v53 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v25 = &v49 - v24;
  if (a1)
  {
    v50 = a4;
    v51 = a3;
    v26 = [objc_opt_self() standardUserDefaults];
    v27 = String._bridgeToObjectiveC()();
    v28 = [v26 stringForKey:v27];

    if (v28)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();
    }

    else
    {
      (*(v8 + 56))(v25, 1, 1, v7);
    }

    sub_100EF8F2C(v18);
    v29 = *(v8 + 16);
    v29(v16, v18, v7);
    sub_1000D2A70(v25, v22, &qword_1016980D0, &unk_10138F3B0);
    v30 = (*(v8 + 48))(v22, 1, v7);
    v31 = v51;
    if (v30 == 1)
    {
      sub_10000B3A8(v22, &qword_1016980D0, &unk_10138F3B0);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000076D4(v32, qword_10177BA08);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v50;
      if (v35)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No lastDuplicateRecoveryBootSessionUUID on record", v37, 2u);
      }

      sub_100AEBE80(v53, v16, v31, v36);
      v38 = *(v8 + 8);
      v38(v16, v7);
    }

    else
    {
      (*(v8 + 32))(v13, v22, v7);
      sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        v53 = *(v8 + 8);
        v53(v16, v7);
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        sub_1000076D4(v39, qword_10177BA08);
        v40 = v52;
        v29(v52, v18, v7);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v54 = v51;
          *v43 = 136315138;
          v44 = UUID.uuidString.getter();
          v45 = v40;
          v47 = v46;
          v53(v45, v7);
          v48 = sub_1000136BC(v44, v47, &v54);

          *(v43 + 4) = v48;
          _os_log_impl(&_mh_execute_header, v41, v42, "removeDuplicateBeaconsCheck already ran for boot session: %s", v43, 0xCu);
          sub_100007BAC(v51);

          v38 = v53;
          v53(v13, v7);
        }

        else
        {

          v38 = v53;
          v53(v40, v7);
          v38(v13, v7);
        }
      }

      else
      {
        sub_100AEBE80(v53, v16, v31, v50);
        v38 = *(v8 + 8);
        v38(v13, v7);
        v38(v16, v7);
      }
    }

    v38(v18, v7);
    return sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);
  }

  return result;
}

uint64_t sub_100AEBE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v11, v10, v7);
  *(v14 + v12) = a1;
  *(v14 + v13) = a3;
  *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = sub_100B26AC8;
  v15[4] = v14;
  swift_retain_n();

  sub_100ACBF00(sub_100B26B7C, v15);
}

void sub_100AEC050(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  if (a1)
  {
    (*(v11 + 16))(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 2) = a4;
    (*(v11 + 32))(&v14[v13], v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    *&v14[(v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    v22[-4] = a3;
    LOBYTE(v22[-3]) = 0;
    v22[-2] = sub_100B26BB8;
    v22[-1] = v14;

    static Transaction.named<A>(_:with:)();
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177BA08);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "No duplicate beacons detected.", v19, 2u);
    }

    v20 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v21 = String._bridgeToObjectiveC()();

    v22[0] = String._bridgeToObjectiveC()();
    [v20 setObject:v21 forKey:v22[0]];
  }
}

void sub_100AEC3A0(uint64_t a1, char a2)
{
  Transaction.capture()();
  if (a2)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177BA08);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1001DB7B8(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      v8 = _convertErrorToNSError(_:)();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Error removing duplicates: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }
  }

  else
  {
    v9 = [objc_opt_self() standardUserDefaults];
    UUID.uuidString.getter();
    v10 = String._bridgeToObjectiveC()();

    oslog = String._bridgeToObjectiveC()();
    [v9 setObject:v10 forKey:?];
  }
}

uint64_t sub_100AEC590(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v15;
  v44 = v16;
  if (a2)
  {
    aBlock = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_willThrowTypedImpl();
    v42 = *(a3 + 72);
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v50 = sub_100B26B8C;
    v51 = v19;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_101647FA0;
    v20 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    sub_1001DB7B8(a1, 1);
    (*(v11 + 8))(v13, v10);
    (*(v43 + 8))(v18, v44);
  }

  else
  {
    v41 = a4;
    v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = 0;
    v22 = 0;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(a1 + 64);
    v26 = *(a1 + 16);
    v27 = (v23 + 63) >> 6;
    do
    {
      if (!v25)
      {
        while (1)
        {
          v28 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v28 >= v27)
          {
            goto LABEL_15;
          }

          v25 = *(a1 + 64 + 8 * v28);
          ++v21;
          if (v25)
          {
            v21 = v28;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_23;
      }

      v28 = v21;
LABEL_12:
      v29 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v30 = *(*(a1 + 56) + ((v28 << 9) | (8 * v29)));
      v31 = __OFADD__(v22, v30);
      v22 += v30;
    }

    while (!v31);
    __break(1u);
LABEL_15:
    v40 = v11;
    sub_1001DB9A4(a1, 0);

    v15 = v10;
    v10 = v13;
    if (v26 != v22)
    {
      if (qword_101694BE8 == -1)
      {
LABEL_17:
        v32 = type metadata accessor for Logger();
        sub_1000076D4(v32, qword_10177BA08);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134218240;
          *(v35 + 4) = v22;
          *(v35 + 12) = 2048;
          *(v35 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v33, v34, "DUPLICATE BEACONS DETECTED -- beaconCount: %ld stableIdentifierCount: %ld", v35, 0x16u);
        }

        goto LABEL_20;
      }

LABEL_23:
      swift_once();
      goto LABEL_17;
    }

LABEL_20:
    v36 = swift_allocObject();
    *(v36 + 16) = v41;
    *(v36 + 24) = a5;
    *(v36 + 32) = v26 != v22;
    v50 = sub_1002FB50C;
    v51 = v36;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_101647FF0;
    v37 = _Block_copy(&aBlock);

    v38 = v42;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);
    (*(v40 + 8))(v10, v15);
    (*(v43 + 8))(v38, v44);
  }
}

uint64_t sub_100AECBE8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a5;
  aBlock[4] = sub_100B226D0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_1016464C0;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v21 + 8))(v12, v10);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_100AECEEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v385 = a5;
  v382 = a4;
  LODWORD(v424) = a3;
  v383 = a1;
  v402 = type metadata accessor for SystemInfo.DeviceLockState();
  v381 = *(v402 - 8);
  v6 = __chkstk_darwin(v402);
  v401 = &v379 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v400 = &v379 - v8;
  v390 = type metadata accessor for DispatchWorkItemFlags();
  v389 = *(v390 - 8);
  __chkstk_darwin(v390);
  v387 = &v379 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = type metadata accessor for DispatchQoS();
  v386 = *(v388 - 8);
  __chkstk_darwin(v388);
  v384 = &v379 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  __chkstk_darwin(v430);
  v429 = &v379 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v406 = &v379 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v437 = &v379 - v16;
  v407 = type metadata accessor for StableIdentifier(0);
  v420 = *(v407 - 8);
  v17 = __chkstk_darwin(v407);
  v396 = &v379 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v397 = &v379 - v20;
  v21 = __chkstk_darwin(v19);
  v414 = &v379 - v22;
  v23 = __chkstk_darwin(v21);
  v410 = (&v379 - v24);
  v25 = __chkstk_darwin(v23);
  v431 = &v379 - v26;
  __chkstk_darwin(v25);
  v426 = &v379 - v27;
  v28 = sub_1000BC4D4(&qword_1016B5460, &qword_1013D66B0);
  v29 = __chkstk_darwin(v28 - 8);
  v412 = &v379 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v411 = &v379 - v32;
  v33 = __chkstk_darwin(v31);
  v428 = &v379 - v34;
  __chkstk_darwin(v33);
  v435 = (&v379 - v35);
  v36 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v37 = __chkstk_darwin(v36 - 8);
  v415 = &v379 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v436 = &v379 - v40;
  v41 = __chkstk_darwin(v39);
  *&v442 = &v379 - v42;
  __chkstk_darwin(v41);
  v425 = &v379 - v43;
  v453 = type metadata accessor for OwnedBeaconRecord(0);
  v418 = *(v453 - 8);
  v44 = __chkstk_darwin(v453);
  v416 = &v379 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v399 = &v379 - v47;
  v48 = __chkstk_darwin(v46);
  v398 = &v379 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v379 - v51;
  v53 = __chkstk_darwin(v50);
  v447 = &v379 - v54;
  v55 = __chkstk_darwin(v53);
  v441 = &v379 - v56;
  v57 = __chkstk_darwin(v55);
  v440 = &v379 - v58;
  v59 = __chkstk_darwin(v57);
  v423 = &v379 - v60;
  v61 = __chkstk_darwin(v59);
  v422 = &v379 - v62;
  v63 = __chkstk_darwin(v61);
  v433 = &v379 - v64;
  v65 = __chkstk_darwin(v63);
  v444 = &v379 - v66;
  v67 = __chkstk_darwin(v65);
  v439 = &v379 - v68;
  v69 = __chkstk_darwin(v67);
  v449 = &v379 - v70;
  v71 = __chkstk_darwin(v69);
  v452 = &v379 - v72;
  v73 = __chkstk_darwin(v71);
  *&v451 = &v379 - v74;
  v75 = __chkstk_darwin(v73);
  *&v434 = &v379 - v76;
  v77 = __chkstk_darwin(v75);
  v79 = &v379 - v78;
  v80 = __chkstk_darwin(v77);
  v438 = (&v379 - v81);
  v380 = v82;
  __chkstk_darwin(v80);
  v84 = &v379 - v83;
  v85 = sub_100025044();
  v86 = sub_100008CA0();
  v87 = sub_100009324(v86);

  v404 = a2;
  v88 = sub_1000066C8();
  v89 = sub_100009924(v88);

  aBlock = v87;
  sub_100009AF4(v89);
  v90 = aBlock;
  v443 = v85;
  v91 = v85[2];
  v450 = v12;
  v432 = v13;
  v419 = v52;
  v448 = v91;
  if (v91)
  {
    v427 = v79;
    v421 = aBlock;
    v92 = 0;
    v446 = v13 + 48;
    v93 = _swiftEmptyArrayStorage;
    v94 = v442;
    v95 = v443;
    v96 = v425;
    do
    {
      if (v92 >= *(v95 + 16))
      {
        goto LABEL_179;
      }

      v97 = *(v418 + 72);
      v98 = (*(v418 + 80) + 32) & ~*(v418 + 80);
      sub_100022A54(v95 + v98 + v97 * v92, v84, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(&v84[*(v453 + 28)], v96, &qword_1016980D0, &unk_10138F3B0);
      v445 = *v446;
      if (v445(v96, 1, v450) == 1)
      {
        sub_10000B3A8(v96, &qword_1016980D0, &unk_10138F3B0);
        sub_10002911C(v84, v438, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v93;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v93[2] + 1, 1);
          v96 = v425;
          v93 = aBlock;
        }

        v101 = v93[2];
        v100 = v93[3];
        if (v101 >= v100 >> 1)
        {
          sub_10112434C((v100 > 1), v101 + 1, 1);
          v96 = v425;
          v93 = aBlock;
        }

        v93[2] = v101 + 1;
        sub_10002911C(v438, v93 + v98 + v101 * v97, type metadata accessor for OwnedBeaconRecord);
        v94 = v442;
      }

      else
      {
        sub_100022C40(v84, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v96, &qword_1016980D0, &unk_10138F3B0);
      }

      v92 = (v92 + 1);
    }

    while (v448 != v92);
    v102 = 0;
    v425 = v98;
    v103 = v95 + v98;
    v104 = _swiftEmptyArrayStorage;
    v105 = v431;
    do
    {
      if (v102 >= *(v95 + 16))
      {
        goto LABEL_180;
      }

      v106 = v105;
      v107 = v427;
      sub_100022A54(v103, v427, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(v107 + *(v453 + 28), v94, &qword_1016980D0, &unk_10138F3B0);
      if (v445(v94, 1, v450) == 1)
      {
        sub_100022C40(v107, type metadata accessor for OwnedBeaconRecord);
        sub_10000B3A8(v94, &qword_1016980D0, &unk_10138F3B0);
        v105 = v106;
        v95 = v443;
      }

      else
      {
        v438 = v93;
        sub_10000B3A8(v94, &qword_1016980D0, &unk_10138F3B0);
        sub_10002911C(v107, v434, type metadata accessor for OwnedBeaconRecord);
        v108 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v104;
        if ((v108 & 1) == 0)
        {
          sub_10112434C(0, *(v104 + 16) + 1, 1);
          v104 = aBlock;
        }

        v95 = v443;
        v110 = *(v104 + 16);
        v109 = *(v104 + 24);
        if (v110 >= v109 >> 1)
        {
          sub_10112434C((v109 > 1), v110 + 1, 1);
          v104 = aBlock;
        }

        *(v104 + 16) = v110 + 1;
        sub_10002911C(v434, &v425[v104 + v110 * v97], type metadata accessor for OwnedBeaconRecord);
        v105 = v431;
        v94 = v442;
        v93 = v438;
      }

      v102 = (v102 + 1);
      v103 += v97;
    }

    while (v448 != v102);
    v12 = v450;
    v52 = v419;
    v111 = v424;
    v90 = v421;
  }

  else
  {
    v93 = _swiftEmptyArrayStorage;
    v104 = _swiftEmptyArrayStorage;
    v105 = v431;
    v111 = v424;
  }

  v424 = sub_100B20CDC(v93);

  v408 = sub_100B20CDC(v104);

  if (v111)
  {
    v112 = _swiftEmptyArrayStorage;
  }

  else
  {
    v112 = 0;
  }

  v113 = swift_allocObject();
  v417 = v113;
  *(v113 + 16) = v112;
  v114 = (v113 + 16);
  v463 = _swiftEmptyArrayStorage;
  v403 = dispatch_group_create();
  v460 = _swiftEmptyDictionarySingleton;
  v115 = *(v90 + 16);
  if (v115)
  {
    v116 = 0;
    v117 = v90 + 32;
    v445 = _swiftEmptyDictionarySingleton;
    while (v116 < *(v90 + 16))
    {
      sub_10001F280(v117, &aBlock);
      sub_100AF0848(&v460, &aBlock, &v462);
      ++v116;
      sub_100007BAC(&aBlock);

      v445 = v462;
      v460 = v462;
      v117 += 40;
      if (v115 == v116)
      {
        goto LABEL_33;
      }
    }

LABEL_181:
    __break(1u);

    sub_100007BAC(&aBlock);

    __break(1u);
    return result;
  }

  v445 = _swiftEmptyDictionarySingleton;
LABEL_33:
  v379 = 0;

  v119 = 0;
  v120 = v424 + 64;
  v121 = 1 << *(v424 + 32);
  v122 = -1;
  if (v121 < 64)
  {
    v122 = ~(-1 << v121);
  }

  v123 = v122 & *(v424 + 64);
  v124 = (v121 + 63) >> 6;
  v405 = 0x800000010136BE90;
  *&v118 = 141558275;
  v413 = v118;
  *&v118 = 136446210;
  v442 = v118;
  v448 = v114;
  v125 = v435;
  v427 = (v424 + 64);
  v425 = v124;
  while (2)
  {
    if (v123)
    {
      v126 = v119;
      goto LABEL_48;
    }

    if (v124 <= v119 + 1)
    {
      v127 = v119 + 1;
    }

    else
    {
      v127 = v124;
    }

    v128 = v127 - 1;
    do
    {
      v126 = v119 + 1;
      if (__OFADD__(v119, 1))
      {
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      if (v126 >= v124)
      {
        v162 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
        v136 = v428;
        (*(*(v162 - 8) + 56))(v428, 1, 1, v162);
        v438 = 0;
        v119 = v128;
        goto LABEL_49;
      }

      v123 = *(v120 + 8 * v126);
      ++v119;
    }

    while (!v123);
    v119 = v126;
LABEL_48:
    v438 = ((v123 - 1) & v123);
    v129 = __clz(__rbit64(v123)) | (v126 << 6);
    v130 = v424;
    v131 = v426;
    sub_100022A54(*(v424 + 48) + *(v420 + 72) * v129, v426, type metadata accessor for StableIdentifier);
    v132 = *(*(v130 + 56) + 8 * v129);
    v133 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
    v134 = *(v133 + 48);
    v135 = v131;
    v136 = v428;
    sub_10002911C(v135, v428, type metadata accessor for StableIdentifier);
    *(v136 + v134) = v132;
    (*(*(v133 - 8) + 56))(v136, 0, 1, v133);

    v125 = v435;
LABEL_49:
    sub_1000D2AD8(v136, v125, &qword_1016B5460, &qword_1013D66B0);
    v137 = sub_1000BC4D4(&qword_1016B5468, &qword_1013D66B8);
    v138 = *(v137 - 8);
    v139 = *(v138 + 48);
    if (v139(v125, 1, v137) != 1)
    {
      v140 = *(v125 + *(v137 + 48));
      sub_10002911C(v125, v105, type metadata accessor for StableIdentifier);
      if (*(v140 + 16) < 2uLL)
      {
        sub_100022C40(v105, type metadata accessor for StableIdentifier);
      }

      else
      {
        *&v434 = v140;
        v141 = sub_100AF0CBC();
        v143 = v142;
        v144 = v410;
        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v443 = type metadata accessor for Logger();
        v145 = sub_1000076D4(v443, qword_10177BA08);
        sub_100022A54(v105, v144, type metadata accessor for StableIdentifier);
        v446 = v145;
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v409 = swift_slowAlloc();
          aBlock = v409;
          *v148 = v413;
          *(v148 + 4) = 1752392040;
          *(v148 + 12) = 2081;
          v421 = v141;
          sub_100022A54(v144, v426, type metadata accessor for StableIdentifier);
          v149 = String.init<A>(describing:)();
          v151 = v150;
          sub_100022C40(v144, type metadata accessor for StableIdentifier);
          v152 = sub_1000136BC(v149, v151, &aBlock);
          v105 = v431;

          *(v148 + 14) = v152;
          v141 = v421;
          _os_log_impl(&_mh_execute_header, v146, v147, "Duplicates for %{private,mask.hash}s", v148, 0x16u);
          sub_100007BAC(v409);
        }

        else
        {

          sub_100022C40(v144, type metadata accessor for StableIdentifier);
        }

        v153 = v414;
        if (*v114)
        {
          aBlock = 0;
          v455 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);

          aBlock = 0xD00000000000001CLL;
          v455 = v405;
          v154._countAndFlagsBits = v141;
          v154._object = v143;
          String.append(_:)(v154);

          v155 = aBlock;
          v156 = v455;
          v157 = *v114;
          v158 = swift_isUniquelyReferenced_nonNull_native();
          *v114 = v157;
          if ((v158 & 1) == 0)
          {
            v157 = sub_100A5B2CC(0, *(v157 + 2) + 1, 1, v157);
            *v114 = v157;
          }

          v160 = *(v157 + 2);
          v159 = *(v157 + 3);
          if (v160 >= v159 >> 1)
          {
            v157 = sub_100A5B2CC((v159 > 1), v160 + 1, 1, v157);
          }

          *(v157 + 2) = v160 + 1;
          v161 = &v157[16 * v160];
          *(v161 + 4) = v155;
          *(v161 + 5) = v156;
          *v114 = v157;
        }

        else
        {
        }

        if (qword_101694B80 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v443, qword_10177B7F8);
        sub_100022A54(v105, v153, type metadata accessor for StableIdentifier);
        v163 = Logger.logObject.getter();
        v164 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v163, v164))
        {
          v165 = swift_slowAlloc();
          v443 = swift_slowAlloc();
          aBlock = v443;
          *v165 = v413;
          *(v165 + 4) = 1752392040;
          *(v165 + 12) = 2081;
          sub_100022A54(v153, v426, type metadata accessor for StableIdentifier);
          v166 = String.init<A>(describing:)();
          v168 = v167;
          sub_100022C40(v153, type metadata accessor for StableIdentifier);
          v169 = sub_1000136BC(v166, v168, &aBlock);

          *(v165 + 14) = v169;
          _os_log_impl(&_mh_execute_header, v163, v164, "Duplicates for %{private,mask.hash}s", v165, 0x16u);
          sub_100007BAC(v443);
        }

        else
        {

          sub_100022C40(v153, type metadata accessor for StableIdentifier);
        }

        v170 = v452;
        v171 = v451;
        v172 = v434;
        v173 = *(v434 + 16);
        v174 = (*(v418 + 80) + 32) & ~*(v418 + 80);
        if (v173)
        {
          v421 = (*(v418 + 80) + 32) & ~*(v418 + 80);
          v175 = v434 + v174;
          v443 = *(v418 + 72);
          do
          {
            sub_100022A54(v175, v171, type metadata accessor for OwnedBeaconRecord);
            if (*v114)
            {
              aBlock = 8224;
              v455 = 0xE200000000000000;
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v177._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v177);

              v178 = aBlock;
              v179 = v455;
              v180 = *v114;
              v181 = swift_isUniquelyReferenced_nonNull_native();
              *v114 = v180;
              if ((v181 & 1) == 0)
              {
                v180 = sub_100A5B2CC(0, *(v180 + 2) + 1, 1, v180);
                *v114 = v180;
              }

              v183 = *(v180 + 2);
              v182 = *(v180 + 3);
              if (v183 >= v182 >> 1)
              {
                v180 = sub_100A5B2CC((v182 > 1), v183 + 1, 1, v180);
              }

              *(v180 + 2) = v183 + 1;
              v184 = &v180[16 * v183];
              *(v184 + 4) = v178;
              *(v184 + 5) = v179;
              *v114 = v180;
              v170 = v452;
              v171 = v451;
            }

            sub_100022A54(v171, v170, type metadata accessor for OwnedBeaconRecord);
            v185 = Logger.logObject.getter();
            v186 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              aBlock = v188;
              *v187 = v442;
              sub_100022A54(v170, v449, type metadata accessor for OwnedBeaconRecord);
              v189 = String.init<A>(describing:)();
              v191 = v190;
              sub_100022C40(v452, type metadata accessor for OwnedBeaconRecord);
              v192 = sub_1000136BC(v189, v191, &aBlock);
              v170 = v452;

              *(v187 + 4) = v192;
              v114 = v448;
              _os_log_impl(&_mh_execute_header, v185, v186, "DUPE: %{public}s", v187, 0xCu);
              sub_100007BAC(v188);
              v171 = v451;

              v176 = v171;
              v12 = v450;
            }

            else
            {

              sub_100022C40(v170, type metadata accessor for OwnedBeaconRecord);
              v176 = v171;
            }

            sub_100022C40(v176, type metadata accessor for OwnedBeaconRecord);
            v175 += v443;
            --v173;
          }

          while (v173);
          v172 = v434;
          v193 = *(v434 + 16);
          if (v193 <= 1)
          {
            v194 = 1;
          }

          else
          {
            v194 = 2 * v193 - 1;
          }

          v174 = v421;
        }

        else
        {
          v194 = 1;
        }

        sub_10039AF9C(v172, v172 + v174, 0, v194);
        v105 = v431;
        sub_100022C40(v431, type metadata accessor for StableIdentifier);
        v52 = v419;
        v125 = v435;
      }

      v120 = v427;
      v124 = v425;
      v123 = v438;
      continue;
    }

    break;
  }

  v410 = v139;

  v196 = 0;
  v197 = v408 + 64;
  v198 = 1 << v408[32];
  v199 = -1;
  if (v198 < 64)
  {
    v199 = ~(-1 << v198);
  }

  v200 = v199 & *(v408 + 8);
  v392 = (v198 + 63) >> 6;
  v409 = (v138 + 56);
  v391 = 0x800000010136BE60;
  v431 = v432 + 16;
  v428 = v432 + 56;
  v427 = (v432 + 48);
  v405 = (v432 + 32);
  v435 = (v432 + 8);
  *&v195 = 141558531;
  v434 = v195;
  v201 = v397;
  v395 = v137;
  v394 = v138 + 48;
  v393 = v408 + 64;
  while (2)
  {
    if (v200)
    {
      v425 = v196;
      v202 = v196;
LABEL_102:
      v424 = (v200 - 1) & v200;
      v205 = __clz(__rbit64(v200)) | (v202 << 6);
      v206 = v408;
      v207 = v426;
      sub_100022A54(*(v408 + 6) + *(v420 + 72) * v205, v426, type metadata accessor for StableIdentifier);
      v208 = *(*(v206 + 7) + 8 * v205);
      v209 = *(v137 + 48);
      v210 = v207;
      v211 = v412;
      sub_10002911C(v210, v412, type metadata accessor for StableIdentifier);
      *(v211 + v209) = v208;
      (*v409)(v211, 0, 1, v137);
    }

    else
    {
      if (v392 <= (v196 + 1))
      {
        v203 = (v196 + 1);
      }

      else
      {
        v203 = v392;
      }

      v204 = (v203 - 1);
      while (1)
      {
        v202 = (v196 + 1);
        if (__OFADD__(v196, 1))
        {
          goto LABEL_178;
        }

        if (v202 >= v392)
        {
          break;
        }

        v200 = *&v197[8 * v202];
        ++v196;
        if (v200)
        {
          v425 = v202;
          goto LABEL_102;
        }
      }

      v211 = v412;
      (*v409)(v412, 1, 1, v137);
      v424 = 0;
      v425 = v204;
    }

    v212 = v411;
    sub_1000D2AD8(v211, v411, &qword_1016B5460, &qword_1013D66B0);
    if (v410(v212, 1, v137) != 1)
    {
      v213 = *(v212 + *(v137 + 48));
      sub_10002911C(v212, v201, type metadata accessor for StableIdentifier);
      if (*(v213 + 2) < 2uLL)
      {
        sub_100022C40(v201, type metadata accessor for StableIdentifier);
      }

      else
      {
        v414 = v213;
        v214 = sub_100AF0CBC();
        v216 = v215;
        if (*v114)
        {
          v217 = v214;
          aBlock = 0;
          v455 = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          aBlock = 0xD000000000000026;
          v455 = v391;
          v218._countAndFlagsBits = v217;
          v218._object = v216;
          String.append(_:)(v218);

          v219 = aBlock;
          v220 = v455;
          v221 = *v114;
          v222 = swift_isUniquelyReferenced_nonNull_native();
          *v114 = v221;
          v223 = v396;
          if ((v222 & 1) == 0)
          {
            v221 = sub_100A5B2CC(0, *(v221 + 2) + 1, 1, v221);
            *v114 = v221;
          }

          v225 = *(v221 + 2);
          v224 = *(v221 + 3);
          if (v225 >= v224 >> 1)
          {
            v221 = sub_100A5B2CC((v224 > 1), v225 + 1, 1, v221);
          }

          *(v221 + 2) = v225 + 1;
          v226 = &v221[16 * v225];
          *(v226 + 4) = v219;
          *(v226 + 5) = v220;
          *v114 = v221;
        }

        else
        {

          v223 = v396;
        }

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v227 = type metadata accessor for Logger();
        v228 = sub_1000076D4(v227, qword_10177BA08);
        sub_100022A54(v201, v223, type metadata accessor for StableIdentifier);
        v229 = Logger.logObject.getter();
        v230 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          aBlock = v232;
          *v231 = v413;
          *(v231 + 4) = 1752392040;
          *(v231 + 12) = 2081;
          sub_100022A54(v223, v426, type metadata accessor for StableIdentifier);
          v233 = String.init<A>(describing:)();
          v235 = v234;
          sub_100022C40(v223, type metadata accessor for StableIdentifier);
          v236 = sub_1000136BC(v233, v235, &aBlock);
          v12 = v450;

          *(v231 + 14) = v236;
          _os_log_impl(&_mh_execute_header, v229, v230, "Duplicates (grouped) for %{private,mask.hash}s", v231, 0x16u);
          sub_100007BAC(v232);
        }

        else
        {

          sub_100022C40(v223, type metadata accessor for StableIdentifier);
        }

        v237 = v444;
        v238 = *(v414 + 2);
        v239 = v439;
        if (v238)
        {
          v443 = (*(v418 + 80) + 32) & ~*(v418 + 80);
          v240 = &v414[v443];
          v241 = *(v418 + 72);
          v438 = v228;
          v446 = v241;
          do
          {
            v452 = v238;
            *&v451 = v240;
            sub_100022A54(v240, v239, type metadata accessor for OwnedBeaconRecord);
            if (*v114)
            {
              aBlock = 8224;
              v455 = 0xE200000000000000;
              sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v245._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v245);

              v246 = aBlock;
              v247 = v455;
              v248 = *v114;
              v249 = swift_isUniquelyReferenced_nonNull_native();
              *v114 = v248;
              if ((v249 & 1) == 0)
              {
                v248 = sub_100A5B2CC(0, *(v248 + 2) + 1, 1, v248);
                *v114 = v248;
              }

              v251 = *(v248 + 2);
              v250 = *(v248 + 3);
              if (v251 >= v250 >> 1)
              {
                v248 = sub_100A5B2CC((v250 > 1), v251 + 1, 1, v248);
              }

              *(v248 + 2) = v251 + 1;
              v252 = &v248[16 * v251];
              *(v252 + 4) = v246;
              *(v252 + 5) = v247;
              *v114 = v248;
            }

            sub_100022A54(v239, v237, type metadata accessor for OwnedBeaconRecord);
            v253 = Logger.logObject.getter();
            v254 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v253, v254))
            {
              v255 = swift_slowAlloc();
              v256 = swift_slowAlloc();
              aBlock = v256;
              *v255 = v442;
              sub_100022A54(v237, v449, type metadata accessor for OwnedBeaconRecord);
              v257 = String.init<A>(describing:)();
              v259 = v258;
              sub_100022C40(v237, type metadata accessor for OwnedBeaconRecord);
              v260 = sub_1000136BC(v257, v259, &aBlock);
              v12 = v450;

              *(v255 + 4) = v260;
              _os_log_impl(&_mh_execute_header, v253, v254, "DUPE: %{public}s", v255, 0xCu);
              sub_100007BAC(v256);
            }

            else
            {

              sub_100022C40(v237, type metadata accessor for OwnedBeaconRecord);
            }

            v261 = v441;
            v262 = v440;
            v263 = v445;
            if (!*(v445 + 2) || (v264 = sub_1000210EC(v239 + *(v453 + 20)), (v265 & 1) == 0))
            {
              sub_100022A54(v239, v262, type metadata accessor for OwnedBeaconRecord);
              sub_100022A54(v239, v261, type metadata accessor for OwnedBeaconRecord);
              v276 = Logger.logObject.getter();
              v277 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v276, v277))
              {
                v278 = v262;
                v279 = swift_slowAlloc();
                aBlock = swift_slowAlloc();
                *v279 = v434;
                *(v279 + 4) = 1752392040;
                *(v279 + 12) = 2081;
                sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                v280 = dispatch thunk of CustomStringConvertible.description.getter();
                v282 = v281;
                sub_100022C40(v278, type metadata accessor for OwnedBeaconRecord);
                v283 = sub_1000136BC(v280, v282, &aBlock);

                *(v279 + 14) = v283;
                *(v279 + 22) = 2082;
                sub_100022A54(v261, v449, type metadata accessor for OwnedBeaconRecord);
                v114 = v448;
                v284 = String.init<A>(describing:)();
                v286 = v285;
                v12 = v450;
                sub_100022C40(v261, type metadata accessor for OwnedBeaconRecord);
                v287 = sub_1000136BC(v284, v286, &aBlock);

                *(v279 + 24) = v287;
                _os_log_impl(&_mh_execute_header, v276, v277, "Beacon %{private,mask.hash}s is not known by group: %{public}s)", v279, 0x20u);
                swift_arrayDestroy();
              }

              else
              {

                sub_100022C40(v261, type metadata accessor for OwnedBeaconRecord);
                sub_100022C40(v262, type metadata accessor for OwnedBeaconRecord);
              }

              v239 = v439;
              sub_100022A54(v439, v447, type metadata accessor for OwnedBeaconRecord);
              v288 = v463;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v288 = sub_100A5C050(0, v288[2] + 1, 1, v288);
              }

              v237 = v444;
              v290 = v288[2];
              v289 = v288[3];
              if (v290 >= v289 >> 1)
              {
                v288 = sub_100A5C050((v289 > 1), v290 + 1, 1, v288);
              }

              sub_100022C40(v239, type metadata accessor for OwnedBeaconRecord);
              v288[2] = v290 + 1;
              v244 = v446;
              sub_10002911C(v447, v288 + v443 + v290 * v446, type metadata accessor for OwnedBeaconRecord);
              v463 = v288;
              v242 = v452;
              v243 = v451;
              goto LABEL_122;
            }

            v266 = v432;
            v267 = *(v263 + 7) + *(v432 + 72) * v264;
            v268 = *(v432 + 16);
            v269 = v437;
            v268(v437, v267, v12);
            v270 = v436;
            v268(v436, v269, v12);
            (*(v266 + 56))(v270, 0, 1, v12);
            v271 = *(v453 + 28);
            v272 = *(v430 + 48);
            v273 = v429;
            sub_1000D2A70(v270, v429, &qword_1016980D0, &unk_10138F3B0);
            sub_1000D2A70(v239 + v271, v273 + v272, &qword_1016980D0, &unk_10138F3B0);
            v274 = *(v266 + 48);
            if (v274(v273, 1, v12) == 1)
            {
              sub_10000B3A8(v270, &qword_1016980D0, &unk_10138F3B0);
              v275 = v274(v273 + v272, 1, v12);
              v237 = v444;
              if (v275 != 1)
              {
                goto LABEL_147;
              }

              sub_10000B3A8(v273, &qword_1016980D0, &unk_10138F3B0);
              v114 = v448;
              (*v435)(v437, v12);
            }

            else
            {
              v291 = v415;
              sub_1000D2A70(v273, v415, &qword_1016980D0, &unk_10138F3B0);
              if (v274(v273 + v272, 1, v12) == 1)
              {
                sub_10000B3A8(v436, &qword_1016980D0, &unk_10138F3B0);
                (*v435)(v291, v12);
                v237 = v444;
LABEL_147:
                sub_10000B3A8(v273, &qword_1016AF880, &unk_10138CE20);
                v114 = v448;
LABEL_148:
                sub_100022A54(v239, v433, type metadata accessor for OwnedBeaconRecord);
                v292 = v463;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v292 = sub_100A5C050(0, v292[2] + 1, 1, v292);
                }

                v294 = v292[2];
                v293 = v292[3];
                v295 = v237;
                if (v294 >= v293 >> 1)
                {
                  v292 = sub_100A5C050((v293 > 1), v294 + 1, 1, v292);
                }

                v292[2] = v294 + 1;
                sub_10002911C(v433, v292 + v443 + v294 * v446, type metadata accessor for OwnedBeaconRecord);
                v463 = v292;
                v296 = v422;
                sub_100022A54(v239, v422, type metadata accessor for OwnedBeaconRecord);
                v297 = v423;
                sub_100022A54(v239, v423, type metadata accessor for OwnedBeaconRecord);
                v298 = v239;
                v299 = Logger.logObject.getter();
                v300 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v299, v300))
                {
                  v301 = v297;
                  v302 = v296;
                  v303 = swift_slowAlloc();
                  v421 = swift_slowAlloc();
                  aBlock = v421;
                  *v303 = v434;
                  *(v303 + 4) = 1752392040;
                  *(v303 + 12) = 2081;
                  sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                  v304 = dispatch thunk of CustomStringConvertible.description.getter();
                  v306 = v305;
                  v237 = v444;
                  sub_100022C40(v302, type metadata accessor for OwnedBeaconRecord);
                  v307 = sub_1000136BC(v304, v306, &aBlock);

                  *(v303 + 14) = v307;
                  *(v303 + 22) = 2082;
                  sub_100022A54(v301, v449, type metadata accessor for OwnedBeaconRecord);
                  v114 = v448;
                  v308 = String.init<A>(describing:)();
                  v310 = v309;
                  sub_100022C40(v301, type metadata accessor for OwnedBeaconRecord);
                  v311 = sub_1000136BC(v308, v310, &aBlock);
                  v12 = v450;

                  *(v303 + 24) = v311;
                  _os_log_impl(&_mh_execute_header, v299, v300, "Beacon %{private,mask.hash}s groupId mismatch with group: %{public}s)", v303, 0x20u);
                  swift_arrayDestroy();

                  (*v435)(v437, v12);
                  v239 = v439;
                  sub_100022C40(v439, type metadata accessor for OwnedBeaconRecord);
                }

                else
                {

                  sub_100022C40(v297, type metadata accessor for OwnedBeaconRecord);
                  sub_100022C40(v296, type metadata accessor for OwnedBeaconRecord);
                  (*v435)(v437, v12);
                  sub_100022C40(v298, type metadata accessor for OwnedBeaconRecord);
                  v239 = v298;
                  v237 = v295;
                }

                goto LABEL_121;
              }

              v312 = v406;
              (*v405)(v406, v273 + v272, v12);
              sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v313 = dispatch thunk of static Equatable.== infix(_:_:)();
              v314 = *v435;
              (*v435)(v312, v12);
              sub_10000B3A8(v436, &qword_1016980D0, &unk_10138F3B0);
              v314(v291, v12);
              sub_10000B3A8(v273, &qword_1016980D0, &unk_10138F3B0);
              v114 = v448;
              v237 = v444;
              if ((v313 & 1) == 0)
              {
                goto LABEL_148;
              }

              v314(v437, v12);
            }

            sub_100022C40(v239, type metadata accessor for OwnedBeaconRecord);
LABEL_121:
            v242 = v452;
            v243 = v451;
            v244 = v446;
LABEL_122:
            v240 = (v243 + v244);
            v238 = v242 - 1;
          }

          while (v238);
        }

        v201 = v397;
        sub_100022C40(v397, type metadata accessor for StableIdentifier);
        v52 = v419;
        v137 = v395;
        v197 = v393;
      }

      v196 = v425;
      v200 = v424;
      continue;
    }

    break;
  }

  v315 = v463[2];
  if (v315)
  {
    v316 = *(v418 + 80);
    v437 = v463;
    v317 = v463 + ((v316 + 32) & ~v316);
    v446 = *(v418 + 72);
    v445 = ((v316 + 24) & ~v316);
    v444 = ((v445 + v380 + 7) & 0xFFFFFFFFFFFFFFF8);
    LODWORD(v443) = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    *&v442 = v381 + 104;
    v441 = (v381 + 8);
    v452 = v316;
    v440 = ((v316 + 16) & ~v316);
    v439 = &v440[v380 + 7] & 0xFFFFFFFFFFFFFFF8;
    v438 = ((v439 + 23) & 0xFFFFFFFFFFFFFFF8);
    v451 = xmmword_101385D80;
    do
    {
      v447 = v315;
      sub_100022A54(v317, v52, type metadata accessor for OwnedBeaconRecord);
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v331 = type metadata accessor for Logger();
      sub_1000076D4(v331, qword_10177BA08);
      v332 = v398;
      sub_100022A54(v52, v398, type metadata accessor for OwnedBeaconRecord);
      v333 = Logger.logObject.getter();
      v334 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v333, v334))
      {
        v335 = swift_slowAlloc();
        v336 = swift_slowAlloc();
        aBlock = v336;
        *v335 = v413;
        *(v335 + 4) = 1752392040;
        *(v335 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v337 = dispatch thunk of CustomStringConvertible.description.getter();
        v339 = v338;
        sub_100022C40(v332, type metadata accessor for OwnedBeaconRecord);
        v340 = sub_1000136BC(v337, v339, &aBlock);

        *(v335 + 14) = v340;
        _os_log_impl(&_mh_execute_header, v333, v334, "Unpairing %{private,mask.hash}s", v335, 0x16u);
        sub_100007BAC(v336);
      }

      else
      {

        sub_100022C40(v332, type metadata accessor for OwnedBeaconRecord);
      }

      v341 = v448;
      swift_beginAccess();
      if (*v341)
      {
        v460 = 0x6E69726961706E55;
        v461 = 0xEA00000000002067;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v342._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v342);

        v343 = v341;
        v344 = v460;
        v345 = v461;
        v346 = *v343;
        v347 = swift_isUniquelyReferenced_nonNull_native();
        *v343 = v346;
        if ((v347 & 1) == 0)
        {
          v346 = sub_100A5B2CC(0, *(v346 + 2) + 1, 1, v346);
          *v448 = v346;
        }

        v349 = *(v346 + 2);
        v348 = *(v346 + 3);
        if (v349 >= v348 >> 1)
        {
          v346 = sub_100A5B2CC((v348 > 1), v349 + 1, 1, v346);
        }

        *(v346 + 2) = v349 + 1;
        v350 = &v346[16 * v349];
        *(v350 + 4) = v344;
        *(v350 + 5) = v345;
        *v448 = v346;
      }

      swift_endAccess();
      v351 = v403;
      dispatch_group_enter(v403);
      v352 = v399;
      sub_100022A54(v52, v399, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v352, v416, type metadata accessor for OwnedBeaconRecord);
      v353 = v444;
      v354 = swift_allocObject();
      *(v354 + 16) = v351;
      sub_10002911C(v352, v445 + v354, type metadata accessor for OwnedBeaconRecord);
      *&v353[v354] = v417;
      swift_retain_n();
      v355 = v351;
      v356 = static os_log_type_t.default.getter();
      if (qword_101695038 != -1)
      {
        swift_once();
      }

      v357 = qword_10177C380;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v358 = swift_allocObject();
      *(v358 + 16) = v451;
      v359 = *(v453 + 20);
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v360 = dispatch thunk of CustomStringConvertible.description.getter();
      v362 = v361;
      *(v358 + 56) = &type metadata for String;
      *(v358 + 64) = sub_100008C00();
      *(v358 + 32) = v360;
      *(v358 + 40) = v362;
      os_log(_:dso:log:_:_:)(v356, &_mh_execute_header, v357, "Unpair owned beacon: %@", 23, 2, v358);

      v363 = v400;
      static SystemInfo.lockState.getter();
      v364 = v401;
      v365 = v402;
      (*v442)(v401, v443, v402);
      sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v366 = *v441;
      (*v441)(v364, v365);
      v366(v363, v365);
      if (aBlock == v460)
      {
        v367 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v367, &_mh_execute_header, v357, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
        sub_100139CA0();
        v368 = swift_allocError();
        *v369 = 0;
        sub_100AF110C(v368, v355, v416, v417);
      }

      sub_100022C40(v416, type metadata accessor for OwnedBeaconRecord);
      v318 = dispatch_group_create();
      dispatch_group_enter(v318);
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v319 = v432;
      v320 = (*(v432 + 80) + 32) & ~*(v432 + 80);
      v321 = swift_allocObject();
      *(v321 + 16) = v451;
      v322 = &v419[v359];
      v52 = v419;
      (*(v319 + 16))(v321 + v320, v322, v450);
      v323 = swift_allocObject();
      *(v323 + 16) = v318;
      v324 = v318;
      v325 = v404;
      sub_1009C99C0(v321, sub_10040616C, v323);

      OS_dispatch_group.wait()();
      v326 = v449;
      sub_100022A54(v52, v449, type metadata accessor for OwnedBeaconRecord);
      v327 = v438;
      v328 = swift_allocObject();
      sub_10002911C(v326, &v440[v328], type metadata accessor for OwnedBeaconRecord);
      v329 = (v328 + v439);
      *v329 = sub_100B226E0;
      v329[1] = v354;
      v330 = v328 + v327;
      *v330 = v325;
      *(v330 + 8) = 0;

      sub_100AAA40C(v52, sub_100406178, v328);

      sub_100022C40(v52, type metadata accessor for OwnedBeaconRecord);

      v317 += v446;
      v315 = v447 - 1;
    }

    while (v447 != 1);
  }

  v370 = swift_allocObject();
  v371 = v417;
  v370[2] = v383;
  v370[3] = v371;
  v372 = v385;
  v370[4] = v382;
  v370[5] = v372;
  v458 = sub_100B22780;
  v459 = v370;
  aBlock = _NSConcreteStackBlock;
  v455 = 1107296256;
  v456 = sub_100006684;
  v457 = &unk_1016465B0;
  v373 = _Block_copy(&aBlock);

  v374 = v384;
  static DispatchQoS.unspecified.getter();
  v460 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v375 = v387;
  v376 = v390;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v377 = v403;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v373);

  (*(v389 + 8))(v375, v376);
  (*(v386 + 8))(v374, v388);
}

uint64_t sub_100AF0848@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v55 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v72 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v62 = &v54 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v61 = &v54 - v14;
  v15 = *a1;
  v16 = a2[3];
  v17 = a2[4];
  v64 = a2;
  sub_1000035D0(a2, v16);
  v18 = *(v17 + 16);

  v19 = v18(v16, v17);
  v20 = 0;
  v22 = v19 + 56;
  v21 = *(v19 + 56);
  v65 = v19;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v21;
  v26 = (v23 + 63) >> 6;
  v67 = v6 + 32;
  v68 = v6 + 16;
  v58 = v19 + 56;
  v59 = (v6 + 8);
  v63 = v6;
  v56 = (v6 + 40);
  v57 = v26;
  v60 = v5;
  while (v25)
  {
    v71 = v15;
    v28 = v20;
LABEL_12:
    v29 = *(v65 + 48);
    v30 = v63;
    v69 = *(v63 + 72);
    v31 = v61;
    v66 = *(v63 + 16);
    v66(v61, v29 + v69 * (__clz(__rbit64(v25)) | (v28 << 6)), v5);
    v70 = *(v30 + 32);
    v70(v13, v31, v5);
    v32 = v64[3];
    v33 = v64[4];
    sub_1000035D0(v64, v32);
    v34 = v13;
    v35 = v62;
    (*(v33 + 8))(v32, v33);
    v36 = v35;
    v13 = v34;
    v37 = v70;
    v70(v72, v36, v5);
    v38 = v71;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v38;
    v41 = sub_1000210EC(v13);
    v42 = v38[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_23;
    }

    v45 = v40;
    if (v38[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_101005D44();
      }
    }

    else
    {
      sub_100FE80C8(v44, isUniquelyReferenced_nonNull_native);
      v46 = sub_1000210EC(v13);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_25;
      }

      v41 = v46;
    }

    v25 &= v25 - 1;
    v15 = v73;
    if (v45)
    {
      v27 = v73[7] + v41 * v69;
      v5 = v60;
      (*v56)(v27, v72, v60);
      (*v59)(v13, v5);
    }

    else
    {
      v73[(v41 >> 6) + 8] |= 1 << v41;
      v48 = v41 * v69;
      v49 = v15[6] + v41 * v69;
      v5 = v60;
      v66(v49, v13, v60);
      v37(v15[7] + v48, v72, v5);
      (*v59)(v13, v5);
      v50 = v15[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_24;
      }

      v15[2] = v52;
    }

    v20 = v28;
    v26 = v57;
    v22 = v58;
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      *v55 = v15;
      return result;
    }

    v25 = *(v22 + 8 * v28);
    ++v20;
    if (v25)
    {
      v71 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100AF0CBC()
{
  v1 = type metadata accessor for StableIdentifier(0);
  __chkstk_darwin(v1);
  v3 = (v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100022A54(v0, v3, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = v3[4];
      v13 = v3[5];

      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v15 = 0x800000010136BF10;
      v16 = 0xD000000000000015;
    }

    else
    {
      v14 = *v3;
      v13 = v3[1];
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v15 = 0x800000010136BF30;
      v16 = 0xD00000000000001CLL;
    }

    v38 = v16;
    v39 = v15;
    v29._countAndFlagsBits = v14;
    v29._object = v13;
    String.append(_:)(v29);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);

      v18 = (v3 + *(v17 + 80));
      v20 = *v18;
      v19 = v18[1];
      v21 = v3 + *(v17 + 96);
      v22 = *v21;
      v23 = v21[1];

      v38 = 0;
      v39 = 0xE000000000000000;
      if (v23)
      {
        _StringGuts.grow(_:)(25);

        v38 = 0xD000000000000016;
        v39 = 0x800000010136BEF0;
        v24 = v20;
        v25 = v19;
      }

      else
      {
        _StringGuts.grow(_:)(35);

        v38 = 0xD000000000000016;
        v39 = 0x800000010136BEF0;
        v32._countAndFlagsBits = v20;
        v32._object = v19;
        String.append(_:)(v32);

        v33._countAndFlagsBits = 0x203A74726170202CLL;
        v33._object = 0xE800000000000000;
        String.append(_:)(v33);
        LOBYTE(v37[0]) = v22;
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
      }

      String.append(_:)(*&v24);

      v34._countAndFlagsBits = 41;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v5 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);

      v6 = (v3 + *(v5 + 80));
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v3 + *(v5 + 96));
      v38 = 0;
      v39 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v38 = 0xD000000000000016;
      v39 = 0x800000010136BEB0;
      v10._countAndFlagsBits = v7;
      v10._object = v8;
      String.append(_:)(v10);

      v11._countAndFlagsBits = 0x203A74726170202CLL;
      v11._object = 0xE800000000000000;
      String.append(_:)(v11);
      LOBYTE(v37[0]) = v9;
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

LABEL_15:
      v31 = v38;
      v35 = type metadata accessor for UUID();
      (*(*(v35 - 8) + 8))(v3, v35);
      return v31;
    }

    v27 = *v3;
    v26 = v3[1];
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v28._countAndFlagsBits = 0xD000000000000019;
    v28._object = 0x800000010136BED0;
    String.append(_:)(v28);
    v37[0] = v27;
    v37[1] = v26;
    _print_unlocked<A, B>(_:_:)();
  }

  v30._countAndFlagsBits = 41;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  return v38;
}

void sub_100AF110C(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v59 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = __chkstk_darwin(v59);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_10177BA08);
    sub_100022A54(a3, v12, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v58 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v62[0] = v19;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      type metadata accessor for UUID();
      v57 = a4;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
      v23 = sub_1000136BC(v20, v22, v62);
      a4 = v57;

      *(v17 + 14) = v23;
      *(v17 + 22) = 2112;
      v24 = _convertErrorToNSError(_:)();
      *(v17 + 24) = v24;
      *v18 = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error unpairing %{private,mask.hash}s: %@", v17, 0x20u);
      sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v19);

      a2 = v58;
    }

    else
    {

      sub_100022C40(v12, type metadata accessor for OwnedBeaconRecord);
    }

    swift_beginAccess();
    if (*(a4 + 16))
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v60 = 0xD000000000000012;
      v61 = 0x800000010136C330;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      v35._countAndFlagsBits = 8250;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      v36 = _convertErrorToNSError(_:)();
      v37 = [v36 description];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41._countAndFlagsBits = v38;
      v41._object = v40;
      String.append(_:)(v41);

      v42 = v60;
      v43 = v61;
      v44 = *(a4 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v44;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v44 = sub_100A5B2CC(0, *(v44 + 2) + 1, 1, v44);
        *(a4 + 16) = v44;
      }

      v47 = *(v44 + 2);
      v46 = *(v44 + 3);
      if (v47 >= v46 >> 1)
      {
        v44 = sub_100A5B2CC((v46 > 1), v47 + 1, 1, v44);
      }

      *(v44 + 2) = v47 + 1;
      v48 = &v44[16 * v47];
      *(v48 + 4) = v42;
      *(v48 + 5) = v43;
      *(a4 + 16) = v44;
    }

    swift_endAccess();
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177BA08);
    sub_100022A54(a3, v10, type metadata accessor for OwnedBeaconRecord);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v62[0] = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100022C40(v10, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, v62);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully unpaired %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100022C40(v10, type metadata accessor for OwnedBeaconRecord);
    }

    swift_beginAccess();
    if (*(a4 + 16))
    {
      v60 = 0;
      v61 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v60 = 0xD000000000000016;
      v61 = 0x800000010136C310;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v49);

      v50 = v60;
      v51 = v61;
      v52 = *(a4 + 16);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v52;
      if ((v53 & 1) == 0)
      {
        v52 = sub_100A5B2CC(0, *(v52 + 2) + 1, 1, v52);
        *(a4 + 16) = v52;
      }

      v55 = *(v52 + 2);
      v54 = *(v52 + 3);
      if (v55 >= v54 >> 1)
      {
        v52 = sub_100A5B2CC((v54 > 1), v55 + 1, 1, v52);
      }

      *(v52 + 2) = v55 + 1;
      v56 = &v52[16 * v55];
      *(v56 + 4) = v50;
      *(v56 + 5) = v51;
      *(a4 + 16) = v52;
    }

    swift_endAccess();
  }

  dispatch_group_leave(a2);
}

uint64_t sub_100AF1914(uint64_t a1, uint64_t a2, void (*a3)(void *, void, __n128))
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (v5 && !*(v5 + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = &off_10160CFF0;
  }

  swift_beginAccess();
  if (*(a2 + 16))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  (a3)(v6, 0);
}

uint64_t sub_100AF19DC()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_100044B3C(v0, qword_1016B48F8);
  sub_1000076D4(v0, qword_1016B48F8);
  return PrefixedDefaults.init(prefix:)();
}

uint64_t sub_100AF1A48()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();

  sub_101074FF0(v2);

  result = static Duration.seconds(_:)();
  qword_1016B4910 = result;
  *algn_1016B4918 = v1;
  return result;
}

uint64_t sub_100AF1B20()
{
  v0 = type metadata accessor for PrefixedDefaults();
  sub_100044B3C(v0, qword_1016B4920);
  v1 = sub_1000076D4(v0, qword_1016B4920);
  if (qword_101694C18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016B48F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100AF1BE8()
{
  v0 = type metadata accessor for PrefixedDefaults();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000BC4D4(&qword_1016B55E0, &qword_1013D6BB8);
  sub_100044B3C(v4, qword_1016B4938);
  sub_1000076D4(v4, qword_1016B4938);
  if (qword_101694C28 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_1016B4920);
  (*(v1 + 16))(v3, v5, v0);
  type metadata accessor for Date();
  return ManagedDefault.init(prefixedDefaults:key:)();
}

uint64_t sub_100AF1D5C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v11 = aBlock[0];

  QueueSynchronizer.conditionalSync<A>(_:)();
  v12 = LOBYTE(aBlock[0]);
  v13 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_101385D80;
  *(v15 + 56) = &type metadata for Bool;
  *(v15 + 64) = &protocol witness table for Bool;
  *(v15 + 32) = v12;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "localAvailable: %d", v24);

  v16 = static os_log_type_t.default.getter();
  if (v12)
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v1;

    sub_10025EDD4(0, 0, v10, &unk_1013D68D8, v18);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v14, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v14, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v20 = swift_allocObject();
    v20[2] = v11;
    v20[3] = sub_100B24E48;
    v20[4] = v1;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_1016474D8;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v28 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v22 = v27;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v26 + 8))(v4, v22);
    (*(v24 + 8))(v7, v25);
  }
}

uint64_t sub_100AF2304(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_10025EDD4(0, 0, v5, &unk_1013D68F0, v7);
}

uint64_t sub_100AF2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[8] = v6;
  *v6 = v4;
  v6[1] = sub_100AF2518;

  return daemon.getter();
}

uint64_t sub_100AF2518(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 72) = a1;

  v3 = swift_task_alloc();
  *(v2 + 80) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for FMIPService();
  v6 = sub_10000768C(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10000768C(&unk_1016B1100, type metadata accessor for FMIPService, &unk_10138C708);
  *v3 = v9;
  v3[1] = sub_100AF26F4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100AF26F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    v7 = swift_task_alloc();
    *(v3 + 96) = v7;
    *v7 = v4;
    v7[1] = sub_100AF28BC;

    return sub_10012C34C();
  }
}

uint64_t sub_100AF28BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100AF3324;
  }

  else
  {
    v4 = sub_100AF29D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100AF29D0()
{
  v29 = v0;
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  *(v0 + 120) = v2;
  if (v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v3 + 80);
    *(v0 + 176) = v4;
    *(v0 + 128) = *(v3 + 72);
    *(v0 + 136) = 0;
    sub_100022A54(v1 + ((v4 + 32) & ~v4), *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v7, qword_10177BA08);
    sub_100022A54(v6, v5, type metadata accessor for OwnedBeaconRecord);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 48);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v28 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
      v17 = sub_1000136BC(v14, v16, &v28);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Removing ghost beacon: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      sub_100022C40(v11, type metadata accessor for OwnedBeaconRecord);
    }

    v24 = *(v0 + 56);
    v25 = *(v0 + 16);
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *(v26 + 16) = v25;
    *(v26 + 24) = v24;
    v27 = swift_task_alloc();
    *(v0 + 160) = v27;
    *v27 = v0;
    v27[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v26, &type metadata for () + 1);
  }

  else
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177BA08);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No ghost beacons.", v21, 2u);
    }

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_100AF2E38()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100AF34EC;
  }

  else
  {

    v2 = sub_100AF2F54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AF2F54()
{
  v25 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 136) + 1;
  sub_100022C40(*(v0 + 56), type metadata accessor for OwnedBeaconRecord);
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 136) + 1;
    *(v0 + 136) = v6;
    sub_100022A54(*(v0 + 104) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + v5 * v6, *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v9, qword_10177BA08);
    sub_100022A54(v8, v7, type metadata accessor for OwnedBeaconRecord);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 48);
    if (v12)
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
      v19 = sub_1000136BC(v16, v18, &v24);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Removing ghost beacon: %{private,mask.hash}s", v14, 0x16u);
      sub_100007BAC(v15);
    }

    else
    {

      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
    }

    v20 = *(v0 + 56);
    v21 = *(v0 + 16);
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    v23 = swift_task_alloc();
    *(v0 + 160) = v23;
    *v23 = v0;
    v23[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v23, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v22, &type metadata for () + 1);
  }
}

uint64_t sub_100AF3324()
{

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BA08);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Error during removeGhostBeacons: %@", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100AF34EC()
{
  v39 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_100022A54(v1, v2, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v38 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    type metadata accessor for UUID();
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000136BC(v10, v12, &v38);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v14;
    *v8 = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error unpairing %{private,mask.hash}s: %@", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  else
  {

    sub_100022C40(v6, type metadata accessor for OwnedBeaconRecord);
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 136) + 1;
  sub_100022C40(*(v0 + 56), type metadata accessor for OwnedBeaconRecord);
  if (v16 == v15)
  {

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 128);
    v20 = *(v0 + 136) + 1;
    *(v0 + 136) = v20;
    sub_100022A54(*(v0 + 104) + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + v19 * v20, *(v0 + 56), type metadata accessor for OwnedBeaconRecord);
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v23 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000076D4(v23, qword_10177BA08);
    sub_100022A54(v22, v21, type metadata accessor for OwnedBeaconRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 48);
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v29;
      *v28 = 141558275;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      type metadata accessor for UUID();
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100022C40(v27, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, &v38);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "Removing ghost beacon: %{private,mask.hash}s", v28, 0x16u);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100022C40(v27, type metadata accessor for OwnedBeaconRecord);
    }

    v34 = *(v0 + 56);
    v35 = *(v0 + 16);
    v36 = swift_task_alloc();
    *(v0 + 152) = v36;
    *(v36 + 16) = v35;
    *(v36 + 24) = v34;
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_100AF2E38;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v37, 0, 0, 0xD000000000000014, 0x800000010136C7D0, sub_100B24F04, v36, &type metadata for () + 1);
  }
}

uint64_t sub_100AF3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = type metadata accessor for OwnedBeaconRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_100022A54(a3, v12, type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 16))(v8, v22, v5);
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = (v11 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  sub_10002911C(v12, &v19[v17], type metadata accessor for OwnedBeaconRecord);
  (*(v6 + 32))(&v19[v18], v8, v5);

  sub_10025EDD4(0, 0, v15, &unk_1013D68E8, v19);
}

uint64_t sub_100AF3DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v6[8] = *(v8 + 64);
  v6[9] = swift_task_alloc();
  v9 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100AF3EE8, 0, 0);
}

uint64_t sub_100AF3EE8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[7];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  sub_100022A54(v0[4], v1, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 16))(v3, v6, v7);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = (v2 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v0[13] = v11;
  *(v11 + 16) = v8;
  sub_10002911C(v1, v11 + v9, type metadata accessor for OwnedBeaconRecord);
  (*(v5 + 32))(v11 + v10, v3, v7);

  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = sub_1009D4068;
  v13 = v0[2];

  return unsafeBlocking<A>(_:)(v13, sub_100B25078, v11, &type metadata for () + 1);
}

uint64_t sub_100AF409C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v62 = a1;
  v63 = a2;
  v61 = type metadata accessor for OwnedBeaconRecord(0);
  v55 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = v3;
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v52 - v8;
  v10 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  v16 = *(v11 + 16);
  v16(&v52 - v14, v60, v10);
  v56 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v56, v15, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v58 = v11;
  v19 = *(v11 + 32);
  v54 = v18;
  v60 = v10;
  v19(v18 + v17, v15, v10);
  v20 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v21 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  v52 = xmmword_101385D80;
  *(v22 + 16) = xmmword_101385D80;
  v23 = *(v61 + 20);
  v24 = type metadata accessor for UUID();
  sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v61 = v23;
  v25 = dispatch thunk of CustomStringConvertible.description.getter();
  v27 = v26;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v25;
  *(v22 + 40) = v27;
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v21, "Unpair owned beacon: %@", 23, 2, v22);

  static SystemInfo.lockState.getter();
  v28 = v53;
  (*(v5 + 104))(v53, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v4);
  sub_10000768C(&qword_10169F330, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v29 = *(v5 + 8);
  v29(v28, v4);
  v29(v9, v4);
  v30 = v60;
  v31 = v56;
  if (v65 == v64)
  {
    v32 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v21, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    v33 = swift_allocError();
    *v34 = 0;
    v65 = v33;
    CheckedContinuation.resume(throwing:)();
  }

  v35 = dispatch_group_create();
  dispatch_group_enter(v35);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v36 = *(v24 - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v52;
  v39 = v63;
  (*(v36 + 16))(v38 + v37, v63 + v61, v24);
  v40 = swift_allocObject();
  *(v40 + 16) = v35;
  v41 = v35;
  v42 = v62;
  sub_1009C99C0(v38, sub_10040B9F4, v40);

  OS_dispatch_group.wait()();
  v43 = v59;
  sub_100022A54(v39, v59, type metadata accessor for OwnedBeaconRecord);
  v44 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  sub_10002911C(v43, v47 + v44, type metadata accessor for OwnedBeaconRecord);
  v48 = (v47 + v45);
  v49 = v54;
  *v48 = sub_100B2515C;
  v48[1] = v49;
  v50 = v47 + v46;
  *v50 = v42;
  *(v50 + 8) = 257;

  sub_100AAA40C(v39, sub_100B27F84, v47);

  return (*(v58 + 8))(v31, v30);
}

void sub_100AF47A8(uint64_t a1, NSObject *a2, char *a3, uint64_t a4)
{
  v62 = a3;
  v65 = a2;
  v5 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v5 - 8);
  v61 = &v56 - v6;
  v7 = type metadata accessor for UUID();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v13 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_1000BC4D4(&qword_1016A7810, &qword_1013B66C0);
  __chkstk_darwin(v19);
  v21 = (&v56 - v20);
  v22 = swift_projectBox();
  sub_1000D2A70(a1, v21, &qword_1016A7810, &qword_1013B66C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v21;
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177CE28);
    v25 = v63;
    v26 = v64;
    (*(v63 + 16))(v10, v62, v64);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v29 = 141558531;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v25 + 8))(v10, v26);
      v33 = sub_1000136BC(v30, v32, v66);

      *(v29 + 14) = v33;
      *(v29 + 22) = 2080;
      v66[3] = v23;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v34 = String.init<A>(describing:)();
      v36 = sub_1000136BC(v34, v35, v66);

      *(v29 + 24) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to save new OwnedDeviceKeyRecord for %{private,mask.hash}s, error %s.", v29, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v25 + 8))(v10, v26);
    }
  }

  else
  {
    v58 = v22;
    sub_10002911C(v21, v18, type metadata accessor for OwnedDeviceKeyRecord);
    if (qword_1016954F0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000076D4(v37, qword_10177CE28);
    v38 = v63;
    v39 = v64;
    (*(v63 + 16))(v12, v62, v64);
    sub_100022A54(v18, v16, type metadata accessor for OwnedDeviceKeyRecord);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v62 = v18;
      v43 = v42;
      v57 = swift_slowAlloc();
      v66[0] = v57;
      *v43 = 141558787;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v38 + 8))(v12, v39);
      v47 = sub_1000136BC(v44, v46, v66);

      *(v43 + 14) = v47;
      *(v43 + 22) = 2160;
      *(v43 + 24) = 1752392040;
      *(v43 + 32) = 2081;
      v48 = v60;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      sub_100022C40(v16, type metadata accessor for OwnedDeviceKeyRecord);
      v52 = sub_1000136BC(v49, v51, v66);

      *(v43 + 34) = v52;
      _os_log_impl(&_mh_execute_header, v40, v41, "Successfully saved new OwnedDeviceKeyRecord for: %{private,mask.hash}s uuid: %{private,mask.hash}s.", v43, 0x2Au);
      swift_arrayDestroy();

      v18 = v62;
    }

    else
    {

      sub_100022C40(v16, type metadata accessor for OwnedDeviceKeyRecord);
      (*(v38 + 8))(v12, v39);
      v48 = v60;
    }

    v53 = v18;
    v54 = v61;
    sub_10002911C(v53, v61, type metadata accessor for OwnedDeviceKeyRecord);
    (*(v59 + 56))(v54, 0, 1, v48);
    v55 = v58;
    swift_beginAccess();
    sub_10002311C(v54, v55, &qword_10169EF98, &unk_1013D66D0);
  }

  dispatch_group_leave(v65);
}

void *sub_100AF4FC0(uint64_t a1, void (*a2)(char *, uint64_t, void **, void **, char *), void (*a3)(void *, char *, uint64_t))
{
  v76 = a3;
  v66 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v77 = &v65 - v4;
  v78 = type metadata accessor for UUID();
  v84 = *(v78 - 8);
  __chkstk_darwin(v78);
  v88 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v65 - v10;
  v12 = type metadata accessor for URL();
  v81 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v89 = &v65 - v16;
  v80 = type metadata accessor for DirectorySequence();
  v17 = *(v80 - 8);
  v18 = __chkstk_darwin(v80);
  v74 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v65 - v20;
  v87 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  v73 = sub_10000768C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v23 = dispatch thunk of CustomStringConvertible.description.getter();
  v25 = v24;
  *(v22 + 56) = &type metadata for String;
  v86 = sub_100008C00();
  *(v22 + 64) = v86;
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v85 = sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v26 = static OS_os_log.default.getter();
  v27 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("BeaconStoreFileManager enumerating records at %@", 48, 2, &_mh_execute_header, v26, v27, v22);
  v28 = v11;

  v72 = objc_opt_self();
  v29 = [v72 defaultManager];
  v30 = v81;
  NSFileManager.flatSequence(at:includingPropertiesForKeys:)();

  v79 = v21;
  DirectorySequence.next()();
  v31 = v30 + 48;
  v32 = *(v30 + 48);
  if (v32(v11, 1, v12) == 1)
  {
    v33 = _swiftEmptyDictionarySingleton;
    (*(v17 + 8))(v79, v80);
  }

  else
  {
    v91 = v32;
    v34 = *(v30 + 32);
    v71 = (v84 + 6);
    v69 = (v84 + 4);
    v81 = v30 + 32;
    v35 = (v30 + 8);
    v75 = (v17 + 8);
    v68 = (v84 + 1);
    v84 = _swiftEmptyDictionarySingleton;
    v83 = xmmword_10138BBE0;
    v36 = v78;
    v70 = v28;
    v37 = v89;
    v92 = v31;
    v90 = v34;
    do
    {
      v34(v37, v28, v12);
      URL.lastPathComponent.getter();
      v58 = v77;
      UUID.init(uuidString:)();

      if ((*v71)(v58, 1, v36) == 1)
      {
        (*v35)(v37, v12);
        (*v75)(v79, v80);
        sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
        return v84;
      }

      (*v69)(v88, v58, v36);
      v94 = _swiftEmptyArrayStorage;
      v95 = _swiftEmptyArrayStorage;
      v59 = [v72 defaultManager];
      v60 = v74;
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      if (v91(v9, 1, v12) != 1)
      {
        v61 = v66;
        v62 = v65;
        do
        {
          v90(v15, v9, v12);
          v63 = objc_autoreleasePoolPush();
          v61(v15, v62, &v95, &v94, v93);
          objc_autoreleasePoolPop(v63);
          (*v35)(v15, v12);
          DirectorySequence.next()();
        }

        while (v91(v9, 1, v12) != 1);
      }

      v67 = *v75;
      v67(v60, v80);
      v82 = static os_log_type_t.debug.getter();
      v38 = static OS_os_log.default.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = v83;
      v40 = v95;
      v41 = v95[2];
      *(v39 + 56) = &type metadata for Int;
      *(v39 + 64) = &protocol witness table for Int;
      *(v39 + 32) = v41;

      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v86;
      *(v39 + 96) = &type metadata for String;
      *(v39 + 104) = v43;
      *(v39 + 72) = v42;
      *(v39 + 80) = v44;
      os_log(_:dso:log:_:_:)(v82, &_mh_execute_header, v38, "Found %i records at %@", 22, 2, v39);

      v45 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v45;
      v47 = v88;
      v76(v40, v88, isUniquelyReferenced_nonNull_native);
      v84 = v95;
      v48 = swift_allocObject();
      *(v48 + 16) = v83;
      v49 = v40[2];

      *(v48 + 56) = &type metadata for Int;
      *(v48 + 64) = &protocol witness table for Int;
      *(v48 + 32) = v49;
      v50 = v89;
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v86;
      *(v48 + 96) = &type metadata for String;
      *(v48 + 104) = v52;
      *(v48 + 72) = v51;
      *(v48 + 80) = v53;
      v54 = static OS_os_log.default.getter();
      v55 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("BeaconStoreFileManager fetched %i records at %@", 47, 2, &_mh_execute_header, v54, v55, v48);
      v37 = v50;

      v56 = v47;
      v36 = v78;
      (*v68)(v56, v78);
      (*v35)(v50, v12);
      v28 = v70;
      DirectorySequence.next()();
      v57 = v91(v28, 1, v12);
      v34 = v90;
    }

    while (v57 != 1);
    v33 = v84;
    v67(v79, v80);
  }

  sub_10000B3A8(v28, &unk_101696AC0, &qword_101390A60);
  return v33;
}

uint64_t sub_100AF5948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100AF59BC(uint64_t a1, char a2)
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);

  return sub_100AA2444(a1, a2 & 1);
}

uint64_t sub_100AF5A48(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);
  v12 = *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_100AE7A60(a1, a2, v2 + v6, v9, v10, v11, v12);
}

uint64_t sub_100AF5B10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v77 = &v53 - v4;
  v5 = type metadata accessor for URL();
  v64 = *(v5 - 8);
  __chkstk_darwin(v5);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for DirectorySequence();
  v70 = *(v10 - 8);
  __chkstk_darwin(v10);
  v74 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B5470, &unk_1013D7380);
  v13 = __chkstk_darwin(v12 - 8);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v53 - v15;
  v16 = sub_1000BC4D4(&qword_1016B5478, &qword_1013D6730);
  v55 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v72 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v71 = &v53 - v19;
  v20 = sub_1000BC4D4(&qword_1016A78B8, &unk_1013D6710);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v23 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v53 - v25;
  sub_1000D2A70(v2, v22, &qword_1016A78B8, &unk_1013D6710);
  v54 = v24;
  v27 = *(v24 + 48);
  v60 = v23;
  if (v27(v22, 1, v23) == 1)
  {
    sub_10000B3A8(v22, &qword_1016A78B8, &unk_1013D6710);
    v28 = 1;
  }

  else
  {
    v53 = v2;
    sub_1000D2AD8(v22, v26, &qword_1016A78A8, &unk_1013D66E0);
    v75 = *(v60 + 40);
    v76 = v26;
    sub_1000D2A70(&v26[v75], v9, &qword_1016A5970, &unk_1013B3470);
    v29 = *(v70 + 48);
    v68 = v70 + 48;
    v69 = v29;
    v30 = v29(v9, 1, v10);
    v31 = v9;
    v32 = v74;
    if (v30 == 1)
    {
LABEL_11:
      sub_10000B3A8(v31, &qword_1016A5970, &unk_1013B3470);
      v37 = v73;
      (*(v55 + 56))(v73, 1, 1, v16);
    }

    else
    {
      v33 = *(v70 + 32);
      v66 = v64 + 6;
      v67 = v33;
      v59 = (v64 + 4);
      v65 = (v70 + 8);
      v58 = (v64 + 1);
      v57 = (v70 + 56);
      v56 = (v55 + 56);
      v64 = (v55 + 48);
      v70 += 32;
      while (1)
      {
        v67(v32, v31, v10);
        v34 = v77;
        DirectorySequence.next()();
        if ((*v66)(v34, 1, v5) == 1)
        {
          (*v65)(v32, v10);
          sub_10000B3A8(v77, &unk_101696AC0, &qword_101390A60);
          v35 = v75;
          v36 = v76;
          sub_10000B3A8(&v76[v75], &qword_1016A5970, &unk_1013B3470);
          (*v57)(v36 + v35, 1, 1, v10);
          v37 = v73;
          (*v56)(v73, 1, 1, v16);
        }

        else
        {
          v38 = v31;
          v39 = v63;
          (*v59)(v63, v77, v5);
          v40 = objc_autoreleasePoolPush();
          v41 = v16;
          v42 = v62;
          sub_1012C46D0(v39, v76, v62);
          objc_autoreleasePoolPop(v40);
          (*v65)(v74, v10);
          v43 = v42;
          v16 = v41;
          v37 = v73;
          sub_1000D2AD8(v43, v73, &qword_1016B5470, &unk_1013D7380);
          v44 = v39;
          v31 = v38;
          v32 = v74;
          (*v58)(v44, v5);
        }

        if ((*v64)(v37, 1, v16) == 1)
        {
          break;
        }

        v45 = v37;
        v46 = v71;
        sub_1000D2AD8(v45, v71, &qword_1016B5478, &qword_1013D6730);
        v47 = v46;
        v48 = v72;
        sub_1000D2AD8(v47, v72, &qword_1016B5478, &qword_1013D6730);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_10000B3A8(v76, &qword_1016A78A8, &unk_1013D66E0);
          v50 = v61;
          sub_10002911C(v48, v61, type metadata accessor for OwnedDeviceKeyRecord);
          v28 = 0;
          goto LABEL_14;
        }

        sub_10000B3A8(v48, &qword_1016B5478, &qword_1013D6730);
        sub_1000D2A70(&v76[v75], v31, &qword_1016A5970, &unk_1013B3470);
        if (v69(v31, 1, v10) == 1)
        {
          goto LABEL_11;
        }
      }
    }

    sub_10000B3A8(v76, &qword_1016A78A8, &unk_1013D66E0);
    sub_10000B3A8(v37, &qword_1016B5470, &unk_1013D7380);
    v49 = v53;
    sub_10000B3A8(v53, &qword_1016A78B8, &unk_1013D6710);
    v28 = 1;
    (*(v54 + 56))(v49, 1, 1, v60);
  }

  v50 = v61;
LABEL_14:
  v51 = type metadata accessor for OwnedDeviceKeyRecord(0);
  return (*(*(v51 - 8) + 56))(v50, v28, 1, v51);
}

uint64_t sub_100AF6418(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_100AE9318(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v9 + 8), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_100AF6518(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      Hasher.init(_seed:)();
      sub_100017D5C(v10, v11);
      Data.hash(into:)();
      v12 = Hasher._finalize()();
      result = sub_100016590(v10, v11);
      v13 = v12 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v13 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v3);
      v16 = (v14 + 16 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 72);
      v19 = v18 * v3;
      result = v17 + v18 * v3;
      v20 = v18 * v6;
      v21 = v17 + v18 * v6 + v18;
      if (v19 < v20 || result >= v21)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v20)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF6720(uint64_t result, uint64_t a2)
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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

unint64_t sub_100AF68E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = (*(a2 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      Hasher.init(_seed:)();
      sub_100017D5C(v12, v13);
      Data.hash(into:)();
      v14 = Hasher._finalize()();
      result = sub_100016590(v12, v13);
      v15 = v14 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v15 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v16 = *(a2 + 48);
      v17 = (v16 + 16 * v4);
      v18 = (v16 + 16 * v7);
      if (v4 != v7 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      result = v19 + v20 * v4;
      v22 = v20 * v7;
      v23 = v19 + v20 * v7 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v15 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v15)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF6AE8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for BookmarkMetaData(0) - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF6F44(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF7244(uint64_t result, uint64_t a2)
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
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF73F4(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF76A8(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_100AF79E0(int64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for BeaconIdentifier(0);
  v4 = *(v30 - 8);
  result = __chkstk_darwin(v30);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (_HashTable.previousHole(before:)() + 1) & ~v8;
    v12 = *(v4 + 72);
    v27 = v12;
    v28 = a2 + 64;
    v13 = v29;
    do
    {
      v14 = v12 * v9;
      sub_100022A54(*(a2 + 48) + v12 * v9, v13, type metadata accessor for BeaconIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_100022C40(v13, type metadata accessor for BeaconIdentifier);
      v16 = v15 & v10;
      if (a1 >= v11)
      {
        if (v16 < v11)
        {
          v7 = v28;
          goto LABEL_4;
        }

        if (a1 < v16)
        {
          goto LABEL_3;
        }
      }

      else if (v16 < v11 && a1 < v16)
      {
LABEL_3:
        v7 = v28;
LABEL_4:
        v12 = v27;
        goto LABEL_5;
      }

      v12 = v27;
      if (v27 * a1 < v14 || *(a2 + 48) + v27 * a1 >= (*(a2 + 48) + v14 + v27))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v27 * a1 != v14)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ObservedAdvertisement(0) - 8) + 72);
      v19 = v18 * a1;
      result = v17 + v18 * a1;
      v20 = v18 * v9;
      v21 = v17 + v18 * v9 + v18;
      v22 = v19 < v20 || result >= v21;
      v7 = v28;
      if (v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
LABEL_25:
        a1 = v9;
        goto LABEL_5;
      }

      a1 = v9;
      if (v19 != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
        goto LABEL_25;
      }

LABEL_5:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF7D4C(uint64_t result, uint64_t a2)
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
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 48 * v3);
        v18 = (v16 + 48 * v6);
        if (48 * v3 < (48 * v6) || v17 >= v18 + 3 || v3 != v6)
        {
          v9 = *v18;
          v10 = v18[2];
          v17[1] = v18[1];
          v17[2] = v10;
          *v17 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF7F1C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + v3);
      v12 = (v10 + v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(type metadata accessor for Date() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF824C(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MACAddress();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_10000768C(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for Date() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF8604(int64_t a1, uint64_t a2)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  result = __chkstk_darwin(v41);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v42 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v41;
    v6 = v42;
    v14 = v11;
    v39 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v37 = a2 + 64;
    v38 = v16;
    v17 = *(v15 + 56);
    v36 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v40;
      v21 = v14;
      v22 = v15;
      v38(v40, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v42;
          v27 = *(v42 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v42;
            v17 = v18;
            v14 = v21;
            v8 = v37;
          }

          else
          {
            v8 = v37;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v42;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 24 * a1;
          v30 = (v28 + 24 * v10);
          if (24 * a1 < (24 * v10) || v29 >= v30 + 24 || a1 != v10)
          {
            v31 = *v30;
            *(v29 + 16) = *(v30 + 2);
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v37;
      v17 = v18;
      v6 = v42;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v6 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v34;
    ++*(v6 + 36);
  }

  return result;
}

void sub_100AF8944(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 16 * v3);
          v20 = (v18 + 16 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF8AD0(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

void sub_100AF8E04(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v10 = v9;
      String.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF9014(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_10000768C(v41, v42, v43);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_100AF92C8(int64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for UUID();
  v4 = *(v38 - 8);
  result = __chkstk_darwin(v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = _HashTable.previousHole(before:)();
    v12 = v10;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v35 = (v11 + 1) & v10;
    v36 = v14;
    v15 = *(v13 + 56);
    v33 = (v13 - 8);
    v34 = a2 + 64;
    v39 = v12;
    v16 = v38;
    do
    {
      v17 = v15;
      v18 = v15 * v9;
      v19 = *(a2 + 48) + v15 * v9;
      v20 = v37;
      v21 = v13;
      v36(v37, v19, v16);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v33)(v20, v16);
      v23 = v39;
      v24 = v22 & v39;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v13 = v21;
          v15 = v17;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
            v23 = v39;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v23 = v39;
            }
          }

          v27 = *(a2 + 56);
          result = (v27 + 72 * a1);
          v28 = (v27 + 72 * v9);
          if (a1 != v9 || result >= v28 + 72)
          {
            result = memmove(result, v28, 0x48uLL);
            v23 = v39;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v13 = v21;
      v7 = v34;
      v15 = v17;
LABEL_4:
      v9 = (v9 + 1) & v23;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF95EC(uint64_t result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + 24 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);

      String.hash(into:)();
      v10 = Hasher._finalize()();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = v12 + 24 * v3;
        v14 = (v12 + 24 * v6);
        if (v3 != v6 || v13 >= v14 + 24)
        {
          v15 = *v14;
          *(v13 + 16) = *(v14 + 2);
          *v13 = v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF97C0(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

Swift::Int sub_100AF9AE0(Swift::Int result, uint64_t a2)
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
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      v10 = result & v7;
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
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
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

void sub_100AF9CCC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF9EDC(int64_t a1, uint64_t a2)
{
  v42 = type metadata accessor for UUID();
  v4 = *(v42 - 8);
  result = __chkstk_darwin(v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_100AFA200(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for MACAddress();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10000768C(&unk_1016BC080, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_100AFA520(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AFA690(uint64_t result, uint64_t a2)
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

unint64_t sub_100AFA840(int64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - v7;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1000041A4(&unk_1016C3020, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for BeaconScanner.AISLookupState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFAB9C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(sub_1000BC4D4(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFAF10(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB260(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v4 = *(v28 - 8);
  result = __chkstk_darwin(v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v26 = v11;
    v27 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_100022A54(*(a2 + 48) + v13 * v10, v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(dword_1013D6F30[*v7]);
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v15 = Hasher._finalize()();
      result = sub_100022C40(v7, type metadata accessor for ShareAttemptTracker.AttemptKey);
      v16 = v15 & v11;
      if (a1 >= v27)
      {
        if (v16 >= v27 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          v18 = *(*(type metadata accessor for Date() - 8) + 72);
          v19 = v18 * a1;
          result = v17 + v18 * a1;
          v20 = v18 * v10;
          v21 = v17 + v18 * v10 + v18;
          if (v19 < v20 || result >= v21)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v11 = v26;
          }

          else
          {
            a1 = v10;
            v11 = v26;
            if (v19 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }
        }
      }

      else if (v16 >= v27 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB5AC(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for BeaconKeyManager.FileKey(0);
  v4 = *(v28 - 8);
  result = __chkstk_darwin(v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v13 = *(v4 + 72);
    v27 = a2 + 64;
    do
    {
      v14 = v13;
      v15 = v13 * v10;
      sub_100022A54(*(a2 + 48) + v13 * v10, v7, type metadata accessor for BeaconKeyManager.FileKey);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();

      v16 = Hasher._finalize()();
      result = sub_100022C40(v7, type metadata accessor for BeaconKeyManager.FileKey);
      v17 = v16 & v11;
      if (a1 >= v12)
      {
        if (v17 < v12)
        {
          v8 = v27;
          v13 = v14;
          goto LABEL_4;
        }

        v13 = v14;
        if (a1 >= v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v14;
        if (v17 >= v12 || a1 >= v17)
        {
LABEL_11:
          v18 = *(a2 + 48);
          result = v18 + v13 * a1;
          if (v13 * a1 < v15 || result >= v18 + v15 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v27;
          }

          else
          {
            v19 = v13 * a1 == v15;
            v8 = v27;
            if (!v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 8 * a1);
          v22 = (v20 + 8 * v10);
          if (a1 != v10 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v27;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB914(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_10000768C(v41, v42, v43);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100AFBBC8(uint64_t *a1)
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
        type metadata accessor for BeaconEstimatedLocation(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconEstimatedLocation(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100AFC884(v8, v9, a1, v4);
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
    return sub_100AFBF5C(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100AFBCF4(uint64_t *a1)
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
        type metadata accessor for OwnedBeaconRecord(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnedBeaconRecord(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100AFD8FC(v8, v9, a1, v4);
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
    return sub_100AFC3A8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100AFBE20(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconStatus(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for BeaconStatus(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_100AFE260(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100AFC60C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100AFBF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v8 = __chkstk_darwin(v57);
  v56 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v59 = type metadata accessor for BeaconEstimatedLocation(0);
  v12 = __chkstk_darwin(v59);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v65 = &v45 - v15;
  result = __chkstk_darwin(v14);
  v64 = &v45 - v18;
  v47 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v52 = -v20;
    v53 = v19;
    v22 = a1 - a3;
    v46 = v20;
    v23 = v19 + v20 * a3;
    v55 = v11;
LABEL_5:
    v50 = v21;
    v51 = a3;
    v48 = v23;
    v49 = v22;
    v24 = v22;
    while (1)
    {
      v62 = v24;
      v63 = v23;
      v25 = v23;
      v26 = v64;
      sub_100022A54(v25, v64, type metadata accessor for BeaconEstimatedLocation);
      v61 = v21;
      v27 = v21;
      v28 = v65;
      sub_100022A54(v27, v65, type metadata accessor for BeaconEstimatedLocation);
      v29 = *(v59 + 44);
      v60 = *(v59 + 40);
      v30 = *(v26 + v29);
      v31 = *(v28 + v29);
      *v11 = v30;
      v32 = v57;
      v33 = *(v57 + 48);
      v34 = type metadata accessor for Date();
      v35 = *(*(v34 - 8) + 16);
      v58 = v33;
      v36 = &v11[v33];
      v37 = v60;
      v35(v36, v26 + v60, v34);
      v38 = v56;
      *v56 = v31;
      v35((v38 + *(v32 + 48)), v28 + v37, v34);
      if (v30 == v31)
      {
        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v11 = v55;
        v39 = dispatch thunk of static Comparable.> infix(_:_:)();
        sub_10000B3A8(v38, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v11, &qword_1016B5598, &unk_1013D6AA0);
      }

      else
      {
        v11 = v55;
        sub_10000B3A8(v55, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v38, &qword_1016B5598, &unk_1013D6AA0);
        v39 = v31 < v30;
      }

      sub_100022C40(v65, type metadata accessor for BeaconEstimatedLocation);
      result = sub_100022C40(v64, type metadata accessor for BeaconEstimatedLocation);
      v41 = v62;
      v40 = v63;
      v42 = v61;
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v51 + 1;
        v21 = v50 + v46;
        v22 = v49 - 1;
        v23 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v53)
      {
        break;
      }

      v43 = v54;
      sub_10002911C(v63, v54, type metadata accessor for BeaconEstimatedLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002911C(v43, v42, type metadata accessor for BeaconEstimatedLocation);
      v21 = v42 + v52;
      v23 = v40 + v52;
      v44 = __CFADD__(v41, 1);
      v24 = v41 + 1;
      if (v44)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100AFC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v9 = __chkstk_darwin(v8);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      sub_100022A54(v23, v17, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v20, v13, type metadata accessor for OwnedBeaconRecord);
      v24 = static Date.< infix(_:_:)();
      sub_100022C40(v13, type metadata accessor for OwnedBeaconRecord);
      result = sub_100022C40(v17, type metadata accessor for OwnedBeaconRecord);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = v35;
      sub_10002911C(v23, v35, type metadata accessor for OwnedBeaconRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002911C(v25, v20, type metadata accessor for OwnedBeaconRecord);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100AFC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v37 = a4;
  v36 = type metadata accessor for BeaconStatus(0);
  v9 = __chkstk_darwin(v36);
  v35 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *v4;
    v19 = *(v15 + 72);
    v20 = *v4 + v19 * (a3 - 1);
    v33 = -v19;
    v34 = v18;
    v21 = a1 - a3;
    v27 = v19;
    v22 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    v23 = v20;
    while (1)
    {
      sub_100022A54(v22, v17, type metadata accessor for BeaconStatus);
      sub_100022A54(v23, v13, type metadata accessor for BeaconStatus);
      v24 = v37(v17, v13);
      sub_100022C40(v13, type metadata accessor for BeaconStatus);
      result = sub_100022C40(v17, type metadata accessor for BeaconStatus);
      if (v5)
      {
        break;
      }

      if (v24)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v25 = v35;
        sub_10002911C(v22, v35, type metadata accessor for BeaconStatus);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10002911C(v25, v23, type metadata accessor for BeaconStatus);
        v23 += v33;
        v22 += v33;
        if (!__CFADD__(v21++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100AFC884(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v177 = a4;
  v176 = a1;
  v198 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v7 = __chkstk_darwin(v198);
  v196 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v170 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v170 - v13;
  v15 = __chkstk_darwin(v12);
  v186 = &v170 - v16;
  v17 = __chkstk_darwin(v15);
  v171 = &v170 - v18;
  __chkstk_darwin(v17);
  v175 = &v170 - v19;
  v199 = type metadata accessor for BeaconEstimatedLocation(0);
  v20 = *(v199 - 8);
  v21 = __chkstk_darwin(v199);
  v179 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v195 = &v170 - v24;
  v25 = __chkstk_darwin(v23);
  v206 = &v170 - v26;
  v27 = __chkstk_darwin(v25);
  v205 = &v170 - v28;
  v29 = __chkstk_darwin(v27);
  v192 = &v170 - v30;
  v31 = __chkstk_darwin(v29);
  v191 = &v170 - v32;
  v33 = __chkstk_darwin(v31);
  v174 = &v170 - v34;
  result = __chkstk_darwin(v33);
  v173 = &v170 - v36;
  v37 = a3[1];
  v180 = a3;
  if (v37 < 1)
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_109:
    v40 = *v176;
    if (!*v176)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_100B31E68(v39);
      v39 = result;
    }

    v207 = v39;
    v166 = *(v39 + 2);
    if (v166 >= 2)
    {
      while (*v180)
      {
        v167 = *&v39[16 * v166];
        v168 = *&v39[16 * v166 + 24];
        sub_100AFED58((*v180 + *(v20 + 72) * v167), (*v180 + *(v20 + 72) * *&v39[16 * v166 + 16]), (*v180 + *(v20 + 72) * v168), v40);
        if (v5)
        {
        }

        if (v168 < v167)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100B31E68(v39);
        }

        if (v166 - 2 >= *(v39 + 2))
        {
          goto LABEL_135;
        }

        v169 = &v39[16 * v166];
        *v169 = v167;
        *(v169 + 1) = v168;
        v207 = v39;
        result = sub_100B31DDC(v166 - 1);
        v39 = v207;
        v166 = *(v207 + 2);
        if (v166 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v181 = v14;
  v38 = 0;
  v39 = _swiftEmptyArrayStorage;
  v189 = v20;
  v197 = v11;
  while (1)
  {
    v41 = v38 + 1;
    v188 = v39;
    v178 = v38;
    if (v38 + 1 >= v37)
    {
      v63 = v177;
      v40 = v180;
    }

    else
    {
      v42 = v38;
      v185 = v37;
      v172 = v5;
      v43 = *v180;
      v44 = *(v20 + 72);
      v190 = v38 + 1;
      v45 = v173;
      sub_100022A54(v43 + v44 * v41, v173, type metadata accessor for BeaconEstimatedLocation);
      v193 = v44;
      v204 = v43;
      v46 = v174;
      sub_100022A54(v43 + v44 * v42, v174, type metadata accessor for BeaconEstimatedLocation);
      v47 = v198;
      v48 = *(v199 + 44);
      v201 = *(v199 + 40);
      LODWORD(v203) = *(v45 + v48);
      LODWORD(v202) = *(v46 + v48);
      v49 = v175;
      *v175 = v203;
      v50 = *(v47 + 48);
      v200 = v50;
      v51 = type metadata accessor for Date();
      v52 = *(v51 - 8);
      v53 = *(v52 + 16);
      v54 = v52 + 16;
      v55 = &v49[v50];
      v56 = v201;
      v53(v55, v45 + v201, v51);
      v57 = v171;
      v58 = v202;
      *v171 = v202;
      v59 = v57 + *(v47 + 48);
      v60 = v58;
      v183 = v53;
      v182 = v54;
      v53(v59, v46 + v56, v51);
      v61 = v203;
      v184 = v51;
      if (v203 == v60)
      {
        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v62 = v175;
        LODWORD(v187) = dispatch thunk of static Comparable.> infix(_:_:)();
        sub_10000B3A8(v57, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v62, &qword_1016B5598, &unk_1013D6AA0);
      }

      else
      {
        sub_10000B3A8(v175, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v57, &qword_1016B5598, &unk_1013D6AA0);
        LODWORD(v187) = v60 < v61;
      }

      v20 = v186;
      sub_100022C40(v174, type metadata accessor for BeaconEstimatedLocation);
      sub_100022C40(v173, type metadata accessor for BeaconEstimatedLocation);
      v64 = v178 + 2;
      v65 = v193 * (v178 + 2);
      result = v204 + v65;
      v66 = v190;
      v67 = v193 * v190;
      v40 = v204 + v193 * v190;
      do
      {
        v70 = v64;
        v71 = v66;
        v204 = v67;
        v72 = v65;
        if (v64 >= v185)
        {
          break;
        }

        v201 = v66;
        v202 = v65;
        v203 = v64;
        v200 = result;
        v73 = v191;
        sub_100022A54(result, v191, type metadata accessor for BeaconEstimatedLocation);
        v194 = v40;
        v74 = v192;
        sub_100022A54(v40, v192, type metadata accessor for BeaconEstimatedLocation);
        v75 = v198;
        v77 = *(v199 + 40);
        v76 = *(v199 + 44);
        v78 = *(v73 + v76);
        v79 = *(v74 + v76);
        *v20 = v78;
        v190 = *(v75 + 48);
        v80 = v73 + v77;
        v81 = v184;
        v82 = v183;
        v183(v20 + v190, v80, v184);
        v83 = v181;
        *v181 = v79;
        v82(v83 + *(v75 + 48), v74 + v77, v81);
        if (v78 == v79)
        {
          sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
          v68 = v186;
          v69 = dispatch thunk of static Comparable.> infix(_:_:)();
          sub_10000B3A8(v83, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v68, &qword_1016B5598, &unk_1013D6AA0);
        }

        else
        {
          v68 = v186;
          sub_10000B3A8(v186, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v83, &qword_1016B5598, &unk_1013D6AA0);
          v69 = v79 < v78;
        }

        v39 = v188;
        v20 = v68;
        sub_100022C40(v192, type metadata accessor for BeaconEstimatedLocation);
        sub_100022C40(v191, type metadata accessor for BeaconEstimatedLocation);
        v70 = v203;
        v64 = v203 + 1;
        v71 = v201;
        result = v200 + v193;
        v40 = v194 + v193;
        v66 = v201 + 1;
        v67 = v204 + v193;
        v72 = v202;
        v65 = v202 + v193;
      }

      while ((v187 & 1) == (v69 & 1));
      if (v187)
      {
        v5 = v172;
        v63 = v177;
        if (v70 < v178)
        {
          goto LABEL_138;
        }

        if (v178 >= v70)
        {
          v41 = v70;
        }

        else
        {
          v84 = v178 * v193;
          v85 = v178;
          v86 = v204;
          do
          {
            if (v85 != v71)
            {
              v88 = *v180;
              if (!*v180)
              {
                goto LABEL_144;
              }

              v89 = v72;
              sub_10002911C(v88 + v84, v179, type metadata accessor for BeaconEstimatedLocation);
              if (v84 < v86 || v88 + v84 >= (v88 + v89))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v84 != v86)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002911C(v179, v88 + v86, type metadata accessor for BeaconEstimatedLocation);
              v63 = v177;
              v72 = v89;
            }

            ++v85;
            v86 -= v193;
            v72 -= v193;
            v84 += v193;
          }

          while (v85 < v71--);
          v41 = v70;
          v5 = v172;
        }

        v40 = v180;
        v20 = v189;
      }

      else
      {
        v41 = v70;
        v5 = v172;
        v40 = v180;
        v20 = v189;
        v63 = v177;
      }

      v11 = v197;
    }

    v90 = *(v40 + 8);
    if (v41 >= v90)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v41, v178))
    {
      goto LABEL_137;
    }

    if (v41 - v178 >= v63)
    {
LABEL_55:
      v92 = v178;
      goto LABEL_56;
    }

    if (__OFADD__(v178, v63))
    {
      goto LABEL_139;
    }

    if (v178 + v63 >= v90)
    {
      v91 = *(v40 + 8);
    }

    else
    {
      v91 = (v178 + v63);
    }

    if (v91 < v178)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v92 = v178;
    if (v41 != v91)
    {
      break;
    }

LABEL_56:
    if (v41 < v92)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v190 = v41;
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v39 + 2) + 1, 1, v39);
      v39 = result;
    }

    v120 = *(v39 + 2);
    v119 = *(v39 + 3);
    v121 = v120 + 1;
    if (v120 >= v119 >> 1)
    {
      result = sub_100A5B430((v119 > 1), v120 + 1, 1, v39);
      v39 = result;
    }

    *(v39 + 2) = v121;
    v122 = &v39[16 * v120];
    v123 = v190;
    *(v122 + 4) = v178;
    *(v122 + 5) = v123;
    if (!*v176)
    {
      goto LABEL_146;
    }

    v20 = v5;
    if (v120)
    {
      v124 = *v176;
      v40 = v180;
      while (1)
      {
        v5 = v121 - 1;
        if (v121 >= 4)
        {
          break;
        }

        if (v121 == 3)
        {
          v125 = *(v39 + 4);
          v126 = *(v39 + 5);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_77:
          if (v128)
          {
            goto LABEL_125;
          }

          v141 = &v39[16 * v121];
          v143 = *v141;
          v142 = *(v141 + 1);
          v144 = __OFSUB__(v142, v143);
          v145 = v142 - v143;
          v146 = v144;
          if (v144)
          {
            goto LABEL_128;
          }

          v147 = &v39[16 * v5 + 32];
          v149 = *v147;
          v148 = *(v147 + 1);
          v135 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v135)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v145, v150))
          {
            goto LABEL_132;
          }

          if (v145 + v150 >= v127)
          {
            if (v127 < v150)
            {
              v5 = v121 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v151 = &v39[16 * v121];
        v153 = *v151;
        v152 = *(v151 + 1);
        v135 = __OFSUB__(v152, v153);
        v145 = v152 - v153;
        v146 = v135;
LABEL_91:
        if (v146)
        {
          goto LABEL_127;
        }

        v154 = &v39[16 * v5];
        v156 = *(v154 + 4);
        v155 = *(v154 + 5);
        v135 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v135)
        {
          goto LABEL_130;
        }

        if (v157 < v145)
        {
          goto LABEL_4;
        }

LABEL_98:
        v162 = v5 - 1;
        if (v5 - 1 >= v121)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
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
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v40)
        {
          goto LABEL_143;
        }

        v163 = *&v39[16 * v162 + 32];
        v164 = *&v39[16 * v5 + 40];
        sub_100AFED58((*v40 + *(v189 + 72) * v163), (*v40 + *(v189 + 72) * *&v39[16 * v5 + 32]), (*v40 + *(v189 + 72) * v164), v124);
        if (v20)
        {
        }

        if (v164 < v163)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_100B31E68(v39);
        }

        if (v162 >= *(v39 + 2))
        {
          goto LABEL_122;
        }

        v165 = &v39[16 * v162];
        *(v165 + 4) = v163;
        *(v165 + 5) = v164;
        v207 = v39;
        result = sub_100B31DDC(v5);
        v39 = v207;
        v121 = *(v207 + 2);
        v11 = v197;
        if (v121 <= 1)
        {
          goto LABEL_4;
        }
      }

      v129 = &v39[16 * v121 + 32];
      v130 = *(v129 - 64);
      v131 = *(v129 - 56);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_123;
      }

      v134 = *(v129 - 48);
      v133 = *(v129 - 40);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_124;
      }

      v136 = &v39[16 * v121];
      v138 = *v136;
      v137 = *(v136 + 1);
      v135 = __OFSUB__(v137, v138);
      v139 = v137 - v138;
      if (v135)
      {
        goto LABEL_126;
      }

      v135 = __OFADD__(v127, v139);
      v140 = v127 + v139;
      if (v135)
      {
        goto LABEL_129;
      }

      if (v140 >= v132)
      {
        v158 = &v39[16 * v5 + 32];
        v160 = *v158;
        v159 = *(v158 + 1);
        v135 = __OFSUB__(v159, v160);
        v161 = v159 - v160;
        if (v135)
        {
          goto LABEL_133;
        }

        if (v127 < v161)
        {
          v5 = v121 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    v40 = v180;
LABEL_4:
    v37 = *(v40 + 8);
    v38 = v190;
    v5 = v20;
    v20 = v189;
    if (v190 >= v37)
    {
      goto LABEL_109;
    }
  }

  v172 = v5;
  v93 = *v40;
  v94 = *(v20 + 72);
  v95 = *v40 + v94 * (v41 - 1);
  v193 = -v94;
  v194 = v93;
  v96 = v178 - v41;
  v182 = v94;
  v97 = v93 + v41 * v94;
  v40 = v199;
  v183 = v91;
LABEL_45:
  v190 = v41;
  v184 = v97;
  v185 = v96;
  v98 = v96;
  v187 = v95;
  while (1)
  {
    v202 = v97;
    v203 = v98;
    v99 = v205;
    sub_100022A54(v97, v205, type metadata accessor for BeaconEstimatedLocation);
    v201 = v95;
    v100 = v95;
    v101 = v206;
    sub_100022A54(v100, v206, type metadata accessor for BeaconEstimatedLocation);
    v103 = *(v40 + 40);
    v102 = *(v40 + 44);
    v104 = *(v99 + v102);
    LODWORD(v204) = *(v101 + v102);
    *v11 = v104;
    v105 = v198;
    v106 = *(v198 + 48);
    v107 = type metadata accessor for Date();
    v108 = *(*(v107 - 8) + 16);
    v200 = v106;
    v109 = &v11[v106];
    v110 = v104;
    v111 = v204;
    v108(v109, v99 + v103, v107);
    v112 = v196;
    *v196 = v111;
    v20 = *(v105 + 48);
    v108((v112 + v20), v101 + v103, v107);
    if (v110 == v111)
    {
      sub_10000768C(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v11 = v197;
      v113 = dispatch thunk of static Comparable.> infix(_:_:)();
      sub_10000B3A8(v112, &qword_1016B5598, &unk_1013D6AA0);
      sub_10000B3A8(v11, &qword_1016B5598, &unk_1013D6AA0);
    }

    else
    {
      v11 = v197;
      sub_10000B3A8(v197, &qword_1016B5598, &unk_1013D6AA0);
      sub_10000B3A8(v112, &qword_1016B5598, &unk_1013D6AA0);
      v113 = v111 < v110;
    }

    sub_100022C40(v206, type metadata accessor for BeaconEstimatedLocation);
    result = sub_100022C40(v205, type metadata accessor for BeaconEstimatedLocation);
    v40 = v199;
    if ((v113 & 1) == 0)
    {
LABEL_44:
      v41 = v190 + 1;
      v95 = v187 + v182;
      v96 = v185 - 1;
      v97 = v184 + v182;
      if ((v190 + 1) != v183)
      {
        goto LABEL_45;
      }

      v41 = v183;
      v5 = v172;
      v39 = v188;
      goto LABEL_55;
    }

    v114 = v203;
    if (!v194)
    {
      break;
    }

    v115 = v202;
    v116 = v195;
    sub_10002911C(v202, v195, type metadata accessor for BeaconEstimatedLocation);
    v117 = v201;
    swift_arrayInitWithTakeFrontToBack();
    sub_10002911C(v116, v117, type metadata accessor for BeaconEstimatedLocation);
    v95 = v117 + v193;
    v97 = v115 + v193;
    v118 = __CFADD__(v114, 1);
    v98 = v114 + 1;
    if (v118)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}