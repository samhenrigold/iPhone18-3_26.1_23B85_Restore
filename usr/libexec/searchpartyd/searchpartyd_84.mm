void sub_10094953C()
{
  v1 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "All sessions went away.", v5, 2u);
  }

  v6 = *(v1 + 40);
  if (v6)
  {
    v7 = *(v1 + 48);

    v6(v8);

    sub_1000BB27C(v6, v7);
  }
}

uint64_t sub_10094965C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_100988D7C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10163FC30;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_100949938(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  XPCSession.identifier.getter();
  swift_beginAccess();

  swift_getTupleTypeMetadata2();
  sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  Dictionary.subscript.getter();

  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v11 = v13;
  v42 = v4;
  result = v13(v10, v4);
  v45 = v44[0];
  v46 = v44[1];
  v47 = v44[2];
  v48 = v44[3];
  v49 = v44[4];
  if (*&v44[0])
  {
    v38 = v11;
    v41 = v12;
    v35 = *(&v46 + 1);
    v36 = v46;
    XPCSession.identifier.getter();
    memset(v43, 0, 80);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v40 = a1;
    Dictionary.subscript.setter();
    swift_endAccess();
    v15 = a2;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000076D4(v16, qword_10177B740);

    v17 = type metadata accessor for Optional();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v43, &v45, v17);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = *(v18 + 8);
    v21(&v45, v17);
    v22 = os_log_type_enabled(v19, v20);
    v39 = v15;
    v37 = v8;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v34 = v21;
      v24 = v23;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v43[0] = v26;
      *v24 = 138543618;
      v27 = XPCSession.connection.getter();
      *(v24 + 4) = v27;
      *v25 = v27;
      *(v24 + 12) = 2082;
      if (v35)
      {
        v28 = v36;
      }

      else
      {
        v28 = 0x6E776F6E6B6E75;
      }

      if (v35)
      {
        v29 = v35;
      }

      else
      {
        v29 = 0xE700000000000000;
      }

      v30 = sub_1000136BC(v28, v29, v43);

      *(v24 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Session went away %{public}@- bundle: %{public}s", v24, 0x16u);
      sub_10000B3A8(v25, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v26);

      v21 = v34;
    }

    v31 = *(v40 + 56);
    if (v31)
    {
      v32 = *(v40 + 64);

      v33 = v37;
      XPCSession.identifier.getter();
      v31(v33);
      sub_1000BB27C(v31, v32);
      v21(&v45, v17);
      return v38(v33, v42);
    }

    else
    {
      return (v21)(&v45, v17);
    }
  }

  return result;
}

uint64_t sub_100949E4C()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v1);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 56) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 72) = _swiftEmptyDictionarySingleton;
  v8[0] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  static DispatchQoS.unspecified.getter();
  v8[1] = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 80) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return sub_100F04FA4();
}

void sub_10094A0E0()
{
  sub_1000BB27C(v0[5], v0[6]);
  sub_1000BB27C(v0[7], v0[8]);

  v1 = v0[10];
}

uint64_t sub_10094A120()
{
  v0 = sub_1010D71A8();
  sub_1000BB27C(*(v0 + 40), *(v0 + 48));
  sub_1000BB27C(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_10094A16C()
{
  sub_10094A120();

  return swift_deallocClassInstance();
}

uint64_t sub_10094A1B4()
{
  if (*v0)
  {
    return 0x6E61685465726F6DLL;
  }

  else
  {
    return 6647407;
  }
}

uint64_t sub_10094A1F0()
{
  v1 = v0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v48 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = __chkstk_darwin(v4);
  v46 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = v40 - v7;
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v45);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v43 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v42 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v14 - 8);
  v16 = v40 - v15;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0xD000000000000019;
  *(v0 + 120) = 0x80000001013CA9B0;
  sub_1000BC4D4(&qword_1016AFA50, &qword_1013CB0E0);
  swift_allocObject();
  *(v0 + 128) = sub_100949E4C();
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010749F0(v53);

  v40[1] = sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  *(v0 + 160) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  type metadata accessor for WorkItemQueue();
  WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)();
  v17 = type metadata accessor for WorkItemQueue.WarningOptions();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  UUID.init()();
  *(v0 + 168) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  WorkItemQueue.WarningOptions.init(verbose:queueDepthWarningLevel:queueTimeWarningLevel:runTimeWarningLevel:)();
  v18(v16, 0, 1, v17);
  UUID.init()();
  v19 = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  *(v0 + 176) = v19;
  *(v0 + 200) = 2;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
  *(v0 + 208) = _swiftEmptyDictionarySingleton;
  sub_1000BC4D4(&qword_1016AFA58, &unk_1013CB0E8);
  swift_allocObject();
  *(v0 + 232) = AsyncStreamProvider.init()();
  v40[0] = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  (*(v11 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v41);
  static DispatchQoS.unspecified.getter();
  v53 = _swiftEmptyArrayStorage;
  sub_100985CA0(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v0 + 312) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  *(v1 + v20) = sub_10090A7A8(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 1;
  v21 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
  *(v1 + v21) = sub_10090A998(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_connectedStateClients) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions) = _swiftEmptyDictionarySingleton;
  v22 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle;
  *(v1 + v22) = AsyncKeyedThrottle.__allocating_init(throttleInterval:)();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v23 = v50;
  v24 = sub_1000076D4(v50, qword_10177BA58);
  v25 = v49;
  v26 = v46;
  (*(v49 + 16))(v46, v24, v23);
  v53 = 0xD000000000000019;
  v54 = 0x80000001013668C0;
  v28 = v51;
  v27 = v52;
  v29 = v48;
  (*(v51 + 104))(v48, enum case for URL.DirectoryHint.inferFromPath(_:), v52);
  sub_1000DF96C();
  v30 = v47;
  URL.appending<A>(path:directoryHint:)();
  (*(v28 + 8))(v29, v27);
  (*(v25 + 8))(v26, v23);
  (*(v25 + 32))(v1 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL, v30, v23);
  v31 = *(v1 + 128);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = *(v31 + 40);
  v34 = *(v31 + 48);
  *(v31 + 40) = sub_100988D84;
  *(v31 + 48) = v32;

  sub_1000BB27C(v33, v34);

  v35 = *(v1 + 128);
  v36 = swift_allocObject();
  swift_weakInit();

  v37 = *(v35 + 56);
  v38 = *(v35 + 64);
  *(v35 + 56) = sub_100988D8C;
  *(v35 + 64) = v36;

  sub_1000BB27C(v37, v38);

  return v1;
}

uint64_t sub_10094AB3C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_10094ABF0()
{
  sub_100956B24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10094AC54(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v12 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 4) = v10;
    (*(v4 + 32))(&v13[v12], &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_10025EDD4(0, 0, v8, &unk_1013CB100, v13);
  }

  return result;
}

uint64_t sub_10094AE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10094AE74, a4, 0);
}

uint64_t sub_10094AE74()
{
  sub_10095C694(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10094AED4()
{
  v1[2] = v0;
  v2 = type metadata accessor for ThrottledDarwinPoster();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_10094AFC4;

  return daemon.getter();
}

uint64_t sub_10094AFC4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 56) = a1;

  v3 = swift_task_alloc();
  *(v2 + 64) = v3;
  v4 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_10169BD10, &type metadata accessor for FirstUnlockService, &protocol conformance descriptor for FirstUnlockService);
  *v3 = v9;
  v3[1] = sub_10094B1A0;

  return ActorServiceDaemon.getService<A>()(v4, UnlockService, v6, v7);
}

uint64_t sub_10094B1A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v6 = v4[2];

    return _swift_task_switch(sub_10094B574, v6, 0);
  }

  else
  {
    v4[10] = a1;

    v9 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v7 = swift_task_alloc();
    v4[11] = v7;
    *v7 = v5;
    v7[1] = sub_10094B348;

    return v9();
  }
}

uint64_t sub_10094B348()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_10094B458, v1, 0);
}

uint64_t sub_10094B458()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = SPSimpleBeaconUpdateInterfaceReconnectNotification;
  ThrottledDarwinPoster.init(name:rateLimit:)();
  ThrottledDarwinPoster.post(bypassRateLimit:)(0);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10094B574()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10094B5E0@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for Keychain.DataProtectionClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SymmetricKeySize();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v1)
  {
    v17 = v2;
    v18 = v3;
    v13 = v21;
    if (v12 >> 60 == 15)
    {
      static SymmetricKeySize.bits256.getter();
      SymmetricKey.init(size:)();
      v14 = v8;
      (*(v8 + 16))(v13, v10, v7);
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v15 = v17;
      v16 = v18;
      (*(v18 + 104))(v5, enum case for Keychain.DataProtectionClass.c(_:), v17);
      sub_1000E0A3C();
      static Keychain.set<A>(data:account:service:dataProtectionClass:)();
      (*(v16 + 8))(v5, v15);
      sub_100016590(v19, v20);
      return (*(v14 + 8))(v10, v7);
    }

    else
    {
      v19 = result;
      v20 = v12;
      return SymmetricKey.init<A>(data:)();
    }
  }

  return result;
}

uint64_t sub_10094B978()
{
  v1 = *(v0 + 24);
  v2 = objc_autoreleasePoolPush();
  sub_10094BA24(v1, (v0 + 16));
  objc_autoreleasePoolPop(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10094BA24(uint64_t a1, char **a2)
{
  v57 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AES.GCM.SealedBox();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v56 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContinuousClock.Instant();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  v9 = __chkstk_darwin(v7);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for ContinuousClock();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v18 = v58;
  v19 = Data.init(contentsOf:options:)();
  if (v18)
  {
    (*(v59 + 8))(v11, v60);
    result = (*(v13 + 8))(v17, v12);
    *v57 = v18;
  }

  else
  {
    v44 = v14;
    v45 = v8;
    v46 = a1;
    v47 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v58 = v11;
    v48 = v17;
    v49 = v12;
    v22 = v19;
    v23 = v20;
    sub_100017D5C(v19, v20);
    sub_10094C128(v22, v23);
    v42 = v22;
    v43 = v23;
    v24 = v53;
    sub_10094B5E0(v53);
    v25 = v13;
    v26 = static AES.GCM.open(_:using:)();
    v28 = v27;
    v29 = v26;
    (*(v51 + 8))(v24, v52);
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    sub_1000BC4D4(&qword_1016AF960, &qword_1013CAE00);
    sub_100988A90(&qword_1016AFA30, sub_100988B08, &protocol conformance descriptor for <A> [A]);
    v53 = v29;
    v30 = v28;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v31 = v59;
    v32 = v46;
    v33 = *(v46 + 168);
    v51 = v61;
    v52 = v33;
    v34 = v49;
    (*(v25 + 16))(v47, v48, v49);
    v35 = *(v31 + 16);
    v57 = 0;
    v35(v50, v58, v60);
    v36 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v37 = (v44 + *(v31 + 80) + v36) & ~*(v31 + 80);
    v38 = swift_allocObject();
    v39 = v51;
    *(v38 + 16) = v32;
    *(v38 + 24) = v39;
    (*(v25 + 32))(v38 + v36, v47, v34);
    v40 = v60;
    (*(v31 + 32))(v38 + v37, v50, v60);

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100016590(v53, v30);
    sub_100016590(v42, v43);
    (*(v54 + 8))(v56, v55);
    (*(v31 + 8))(v58, v40);
    return (*(v25 + 8))(v48, v49);
  }

  return result;
}

uint64_t sub_10094C128(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_100016590(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_100985CA0(&unk_1016AFA40, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_1000035D0(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_100267F80(v15, v14, &v28);
  sub_100007BAC(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

uint64_t sub_10094C438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock.Instant();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_10094C574, a1, 0);
}

uint64_t sub_10094C574()
{
  sub_10094C944(*(v0 + 24));

  return _swift_task_switch(sub_10094C5DC, 0, 0);
}

uint64_t sub_10094C5DC(uint64_t a1)
{
  v34 = v1;
  ContinuousClock.now.getter();
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = v1[12];
  v3 = v1[13];
  v5 = v1[10];
  v4 = v1[11];
  v6 = v1[9];
  v7 = v1[5];
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177B740);
  v9 = *(v5 + 16);
  v9(v2, v7, v6);
  v9(v4, v3, v6);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v1[12];
  v13 = v1[13];
  v15 = v1[10];
  v16 = v1[11];
  v17 = v1[9];
  if (v12)
  {
    v32 = v1[13];
    v18 = v1[7];
    v19 = v1[8];
    v30 = v1[6];
    v31 = v11;
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000136BC(0xD00000000000001ALL, 0x8000000101366850, &v33);
    *(v20 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    log = v10;
    v21 = static Duration.description<A>(_:_:units:)();
    v23 = v22;
    (*(v18 + 8))(v19, v30);
    v24 = *(v15 + 8);
    v24(v16, v17);
    v24(v14, v17);
    v25 = sub_1000136BC(v21, v23, &v33);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, log, v31, "%s duration: %{public}s", v20, 0x16u);
    swift_arrayDestroy();

    v24(v32, v17);
  }

  else
  {

    v26 = *(v15 + 8);
    v26(v16, v17);
    v26(v14, v17);
    v26(v13, v17);
  }

  v27 = v1[1];

  return v27();
}

uint64_t sub_10094C944(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - v6;
  sub_10097C58C(0xD000000000000028, 0x8000000101366820);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v22 = v1;
    v23 = _swiftEmptyArrayStorage;
    sub_101125428(0, v8, 0);
    v9 = v23;
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      v12 = &v7[*(v4 + 48)];
      v13 = *(v10 - 1);
      v14 = [v13 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      *v12 = v13;
      *(v12 + 1) = v11;
      v23 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_101125428((v15 > 1), v16 + 1, 1);
        v9 = v23;
      }

      v10 += 2;
      v9[2] = v16 + 1;
      sub_1000D2AD8(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, &qword_1016ADE80, &unk_1013C55E0);
      --v8;
    }

    while (v8);
    v2 = v22;
  }

  if (v9[2])
  {
    sub_1000BC4D4(&unk_1016AFA20, &qword_1013CB0B0);
    v17 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v17 = _swiftEmptyDictionarySingleton;
  }

  v23 = v17;
  sub_100988558(v9, 1, &v23);

  v18 = v23;
  v19 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  *(v2 + v19) = v18;
}

uint64_t sub_10094CBB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10094CBD4, 0, 0);
}

uint64_t sub_10094CBD4()
{
  isa = v0[3].isa;
  v1 = v0[4].isa;
  v3 = objc_autoreleasePoolPush();
  sub_10094CDB0(isa, v1, v0 + 2);
  objc_autoreleasePoolPop(v3);
  v4 = v0[1].isa;

  return v4(1);
}

uint64_t sub_10094CDB0(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v81 = a3;
  v82 = a1;
  v73 = a2;
  v3 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016AF958, &qword_1013CADF8);
  __chkstk_darwin(v5 - 8);
  v76 = &v62 - v6;
  v7 = type metadata accessor for SymmetricKey();
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin(v7);
  v80 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AES.GCM.SealedBox();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v79 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContinuousClock.Instant();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v71 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v72 = &v62 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v62 - v18;
  __chkstk_darwin(v17);
  v21 = &v62 - v20;
  v22 = type metadata accessor for ContinuousClock();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v26 = PropertyListEncoder.init()();
  v83[0] = v82;
  sub_1000BC4D4(&qword_1016AF960, &qword_1013CAE00);
  sub_100988A90(&qword_1016AF968, sub_100986A60, &protocol conformance descriptor for <A> [A]);
  v27 = v84;
  v28 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v27)
  {

    (*(v12 + 8))(v21, v11);
    result = (*(v23 + 8))(v25, v22);
    v81->isa = v27;
  }

  else
  {
    v82 = v26;
    v83[0] = v28;
    v65 = v19;
    v66 = v21;
    v67 = v23;
    v84 = v22;
    v83[1] = v29;
    v31 = v80;
    v32 = v29;
    v33 = v28;
    sub_10094B5E0(v80);
    v64 = v33;
    v63 = v32;
    v34 = type metadata accessor for AES.GCM.Nonce();
    v35 = v76;
    (*(*(v34 - 8) + 56))(v76, 1, 1, v34);
    sub_1000E0A3C();
    v36 = v79;
    static AES.GCM.seal<A>(_:using:nonce:)();
    v37 = v67;
    v62 = v25;
    sub_10000B3A8(v35, &qword_1016AF958, &qword_1013CADF8);
    (*(v77 + 8))(v31, v78);
    v38 = AES.GCM.SealedBox.combined.getter();
    if (v39 >> 60 == 15)
    {
      sub_100016590(v64, v63);

      (*(v74 + 8))(v36, v75);
      (*(v12 + 8))(v66, v11);
      return (*(v37 + 8))(v62, v84);
    }

    else
    {
      v40 = v38;
      v41 = v39;
      Data.write(to:excludeFromBackup:options:)();
      v80 = 0;
      v77 = v40;
      v78 = v41;
      v42 = v65;
      ContinuousClock.now.getter();
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000076D4(v43, qword_10177B740);
      v44 = v12;
      v45 = *(v12 + 16);
      v46 = v72;
      v45(v72, v66, v11);
      v47 = v71;
      v76 = v11;
      v45(v71, v42, v11);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      v81 = v48;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v83[0] = v73;
        *v50 = 136315394;
        *(v50 + 4) = sub_1000136BC(0xD000000000000020, 0x8000000101366680, v83);
        *(v50 + 12) = 2082;
        v51 = v68;
        static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
        sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
        v52 = v76;
        v53 = static Duration.description<A>(_:_:units:)();
        v55 = v54;
        (*(v69 + 8))(v51, v70);
        v56 = *(v44 + 8);
        v56(v47, v52);
        v56(v46, v52);
        v57 = sub_1000136BC(v53, v55, v83);

        *(v50 + 14) = v57;
        v58 = v81;
        _os_log_impl(&_mh_execute_header, v81, v49, "%s duration: %{public}s", v50, 0x16u);
        swift_arrayDestroy();

        sub_100016590(v64, v63);

        sub_100006654(v77, v78);

        v56(v65, v52);
        (*(v74 + 8))(v79, v75);
        v56(v66, v52);
      }

      else
      {
        sub_100016590(v64, v63);

        sub_100006654(v77, v78);

        v59 = *(v12 + 8);
        v60 = v47;
        v61 = v76;
        v59(v60, v76);
        v59(v46, v61);
        v59(v42, v61);
        (*(v74 + 8))(v79, v75);
        v59(v66, v61);
      }

      return (*(v67 + 8))(v62, v84);
    }
  }

  return result;
}

uint64_t sub_10094D8A0()
{
  sub_10094C944(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10094D910, 0, 0);
}

uint64_t sub_10094D910()
{

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10094D9AC(uint64_t a1)
{
  *(v1 + 24) = a1;

  return _swift_task_switch(sub_10094DA3C, 0, 0);
}

uint64_t sub_10094DA3C()
{
  v1 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsURL);
  v3 = v2;
  *(v0 + 16) = 0;
  v4 = [v1 removeItemAtURL:v2 error:v0 + 16];

  v5 = *(v0 + 16);
  if (v4)
  {
    v10 = *(v0 + 8);
    v6 = v5;
    v7 = v10;
  }

  else
  {
    v8 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t sub_10094DB94(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for UUID();
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10094DC24, v1, 0);
}

uint64_t sub_10094DC24()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_10094DCF8;

    return daemon.getter();
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10094DCF8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10094DED4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10094DED4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10094E03C, v8, 0);
  }
}

uint64_t sub_10094E03C()
{
  v1 = v0[8];
  v2 = v0[3];
  v3 = v0[2];
  type metadata accessor for WorkItemQueue.WorkItem();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10094E168(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10094E188, v1, 0);
}

uint64_t sub_10094E188()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_10094E254;

    return daemon.getter();
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_10094E254(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 40) = a1;

  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10094E430;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10094E430(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 24);

    *(v4 + 56) = a1;

    return _swift_task_switch(sub_10094E598, v8, 0);
  }
}

uint64_t sub_10094E598()
{
  v1 = v0[7];
  v3 = v0[2];
  v2 = v0[3];
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  static Transaction.asyncTask(name:block:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10094E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100014744;

  return sub_10095C98C(a5, a6);
}

uint64_t sub_10094E738()
{
  v1[6] = v0;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[7] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  v1[8] = swift_task_alloc();
  v2 = sub_1000BC4D4(&unk_1016AF9B0, &unk_1013CAF20);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_10094E874, v0, 0);
}

uint64_t sub_10094E874()
{
  sub_100956B24();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10094E90C;

  return daemon.getter();
}

uint64_t sub_10094E90C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[13] = a1;

  v3 = swift_task_alloc();
  v2[14] = v3;
  v4 = type metadata accessor for Daemon();
  v2[15] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v2[16] = v5;
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[17] = v6;
  v7 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  v2[18] = v7;
  *v3 = v9;
  v3[1] = sub_10094EB00;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10094EB00(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[19] = a1;
  v4[20] = v1;

  if (v1)
  {

    v6 = swift_task_alloc();
    v4[22] = v6;
    *v6 = v5;
    v6[1] = sub_10094F118;

    return daemon.getter();
  }

  else
  {

    return _swift_task_switch(sub_10094EC94, a1, 0);
  }
}

uint64_t sub_10094EC94()
{
  v1 = *(v0 + 160);
  sub_10001B108();
  *(v0 + 168) = v2;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10094F074;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_10094EDBC;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_10094EDBC()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10094EE34, v1, 0);
}

uint64_t sub_10094EE34()
{
  v0[5] = *(v0[21] + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
  v1 = v0[6];
  swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_1016AF9D8, &unk_1013D37E0);
  sub_1000041A4(&unk_1016AF9E0, &qword_1016AF9D8, &unk_1013D37E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v2 = Publisher<>.sink(receiveValue:)();

  *(v1 + 136) = v2;

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Subscribed to connectableDeviceCount changes.", v6, 2u);
  }

  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_10094F118;

  return daemon.getter();
}

uint64_t sub_10094F074()
{

  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_10094F118;

  return daemon.getter();
}

uint64_t sub_10094F118(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 192) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10094F2CC;
  v8 = *(v2 + 136);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10094F2CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_10094F468, a1, 0);
  }
}

uint64_t sub_10094F468(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 208) = sub_100A96C40();

  return _swift_task_switch(sub_10094F4DC, v2, 0);
}

uint64_t sub_10094F4DC()
{
  v10 = v0[11];
  v14 = v0[10];
  v1 = v0[8];
  v12 = v0[25];
  v13 = v0[9];
  v11 = v0[6];
  v0[2] = v0[26];
  v2 = *(v11 + 312);
  v0[3] = v2;
  v3 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v9 = v2;
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v1, &unk_1016B0FE0, &unk_101391980);

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v12;
  sub_1000041A4(&unk_1016AF9C8, &unk_1016AF9B0, &unk_1013CAF20, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v6 = Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v10, v13);
  *(v11 + 144) = v6;

  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  v7[1] = sub_10094F7D0;

  return daemon.getter();
}

uint64_t sub_10094F7D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 224) = a1;

  v5 = swift_task_alloc();
  *(v3 + 232) = v5;
  v6 = type metadata accessor for CloudStorageService();
  v7 = sub_100985CA0(&unk_1016AA520, type metadata accessor for CloudStorageService, &unk_1013BF308);
  *v5 = v4;
  v5[1] = sub_10094F984;
  v8 = *(v2 + 136);
  v9 = *(v2 + 120);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10094F984(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  v4 = *(v3 + 48);
  if (v1)
  {

    v5 = sub_10095088C;
  }

  else
  {

    v5 = sub_10094FAE8;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10094FAE8()
{
  v1 = v0[6];
  if (!*(v1 + 184))
  {
    v2 = v0[25];
    v3 = v0[7];
    v4 = v0[30];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    v6[5] = v1;
    v6[6] = v2;

    v7 = sub_100BB9ADC(0, 0, v3, &unk_1013CAF50, v6);

    sub_10000B3A8(v3, &qword_101698C00, &qword_10138B570);
    *(v1 + 184) = v7;
  }

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v0[31] = sub_1000076D4(v8, qword_10177B740);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Subscribed to record changes.", v11, 2u);
  }

  v12 = v0[25];

  return _swift_task_switch(sub_10094FD04, v12, 0);
}

uint64_t sub_10094FD04()
{
  v1 = v0[6];
  v0[32] = *(*(v0[25] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_10094FD8C, v1, 0);
}

uint64_t sub_10094FD8C()
{
  v0[4] = v0[32];
  v1 = v0[25];
  v2 = v0[6];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, &protocol conformance descriptor for AnyPublisher<A, B>);
  v5 = Publisher<>.sink(receiveValue:)();

  *(v2 + 152) = v5;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Subscribed to record deletions.", v8, 2u);
  }

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_10094FF90;

  return daemon.getter();
}

uint64_t sub_10094FF90(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[34] = a1;

  v4 = swift_task_alloc();
  v2[35] = v4;
  *v4 = v3;
  v4[1] = sub_10095011C;
  v5 = v2[18];
  v6 = v2[17];
  v7 = v2[16];
  v8 = v2[15];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10095011C(uint64_t a1)
{
  v4 = *v2;
  v4[36] = a1;
  v4[37] = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = sub_100950730;
  }

  else
  {
    v6 = sub_100950260;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100950260()
{
  v1 = *(v0 + 296);
  sub_10001B108();
  *(v0 + 304) = v2;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_1009506BC;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_100950388;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_100950388()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100950400, v1, 0);
}

uint64_t sub_100950400(uint64_t a1)
{
  v18 = v1;
  v2 = v1[6];
  if (*(v2 + 192))
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000136BC(0x6269726373627573, 0xEB00000000292865, &v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s productInfoUpdateTask already exists!", v5, 0xCu);
    sub_100007BAC(v6);
  }

  else
  {
    v7 = v1[38];
    v8 = v1[25];
    v9 = v1[7];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = v2;
    v11[6] = v8;

    v12 = sub_100BB9ADC(0, 0, v9, &unk_1013CAF40, v11);
    sub_10000B3A8(v9, &qword_101698C00, &qword_10138B570);
    *(v2 + 192) = v12;

    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, v13, "Subscribed to product info updates.", v14, 2u);
  }

LABEL_7:

  v15 = v1[1];

  return v15();
}

uint64_t sub_1009506BC()
{

  v1 = *(v0 + 48);

  return _swift_task_switch(sub_100950730, v1, 0);
}

uint64_t sub_100950730(uint64_t a1)
{
  v9 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x6269726373627573, 0xEB00000000292865, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Unable to retrieve BeaconManagerService!", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_10095088C()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Subscribed to record changes.", v4, 2u);
  }

  v5 = *(v0 + 200);

  return _swift_task_switch(sub_10094FD04, v5, 0);
}

uint64_t sub_1009509B0(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    type metadata accessor for WorkItemQueue.WorkItem();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v6;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();
  }

  return result;
}

uint64_t sub_100950AF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100950B18, 0, 0);
}

uint64_t sub_100950B18()
{
  v2 = v0[2];
  v1 = v0[3];
  type metadata accessor for Transaction();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100950C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_100950C28, a3, 0);
}

uint64_t sub_100950C50()
{
  v1 = *(v0 + 40);
  if (v1 == 2 || (((*(v0 + 16) > 1) ^ v1) & 1) != 0)
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177B740);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Updating sessions for connectableDeviceCount changes.", v7, 2u);
    }

    v8 = *(v0 + 24);

    return _swift_task_switch(sub_100950DC8, v8, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100950DC8()
{
  sub_10095699C(*(v0 + 16) > 1);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100950E68;

  return sub_10095D31C();
}

uint64_t sub_100950E68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100950F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v200 = a3;
  v4 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v4 - 8);
  v193 = &v175 - v5;
  v201 = type metadata accessor for MemberSharingCircle(0);
  v192 = *(v201 - 8);
  __chkstk_darwin(v201);
  v195 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v7 - 8);
  v197 = &v175 - v8;
  v198 = type metadata accessor for OwnerSharingCircle(0);
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v194 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v10 - 8);
  v178 = &v175 - v11;
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v177 = *(found - 8);
  __chkstk_darwin(found);
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v14 - 8);
  v182 = &v175 - v15;
  v184 = type metadata accessor for SafeLocation(0);
  v181 = *(v184 - 8);
  __chkstk_darwin(v184);
  v183 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v175 - v18;
  v186 = type metadata accessor for LostModeRecord(0);
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v187 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v175 - v22;
  v189 = type metadata accessor for BeaconNamingRecord(0);
  v188 = *(v189 - 8);
  v24 = __chkstk_darwin(v189);
  v26 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v190 = &v175 - v27;
  v204 = type metadata accessor for UUID();
  v202 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  __chkstk_darwin(v29 - 8);
  v31 = &v175 - v30;
  v32 = type metadata accessor for KeyAlignmentRecord(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v199 = result;
  if (!result)
  {
    return result;
  }

  v176 = v13;
  sub_10001F280(a1, &v207);
  v37 = sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v38 = swift_dynamicCast();
  v39 = a1;
  v191 = v37;
  if (v38)
  {
    sub_10000A748(v205, &v210);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000076D4(v40, qword_10177B740);
    sub_10001F280(&v210, &v207);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v203;
    v45 = v204;
    v46 = v199;
    v180 = a1;
    if (v43)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v205[0] = v48;
      *v47 = 141558275;
      *(v47 + 4) = 1752392040;
      *(v47 + 12) = 2081;
      v50 = v208;
      v49 = v209;
      sub_1000035D0(&v207, v208);
      (*(*(*(v49 + 8) + 8) + 32))(v50);
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      v54 = v202;
      (*(v202 + 8))(v44, v45);
      sub_100007BAC(&v207);
      v55 = sub_1000136BC(v51, v53, v205);

      *(v47 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v41, v42, "Updating sessions for BeaconRecord changes. Beacon: %{private,mask.hash}s.", v47, 0x16u);
      sub_100007BAC(v48);

      v56 = v201;
    }

    else
    {

      sub_100007BAC(&v207);
      v56 = v201;
      v54 = v202;
    }

    v73 = sub_10088D968(&v210);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v74 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_101385D80;
    v77 = v211;
    v76 = v212;
    sub_1000035D0(&v210, v211);
    (*(*(*(v76 + 8) + 8) + 32))(v77);
    v78 = (v54 + 8);
    v71 = v198;
    if (v73)
    {
      v79 = sub_100B05044(v75);
      swift_setDeallocating();
      (*v78)(v75 + v74, v204);
      swift_deallocClassInstance();
      type metadata accessor for WorkItemQueue.WorkItem();
      v80 = swift_allocObject();
      v80[2] = v46;
      v80[3] = v79;
      v63 = v200;
      v80[4] = v200;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();
    }

    else
    {
      v97 = sub_10000954C(v75);
      swift_setDeallocating();
      (*v78)(v75 + v74, v204);
      swift_deallocClassInstance();
      type metadata accessor for Transaction();
      v98 = swift_allocObject();
      v63 = v200;
      v98[2] = v97;
      v98[3] = v63;
      v98[4] = v46;

      static Transaction.asyncTask(name:block:)();
    }

    v72 = v197;

    sub_100007BAC(&v210);
    v39 = v180;
    goto LABEL_34;
  }

  v206 = 0;
  memset(v205, 0, sizeof(v205));
  sub_10000B3A8(v205, &qword_101696920, &unk_10138B200);
  sub_10001F280(a1, &v210);
  v57 = swift_dynamicCast();
  v58 = *(v33 + 56);
  if (v57)
  {
    v58(v31, 0, 1, v32);
    sub_100986170(v31, v35, type metadata accessor for KeyAlignmentRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v180 = a1;
    v59 = type metadata accessor for Logger();
    sub_1000076D4(v59, qword_10177B740);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v200;
    v64 = v204;
    v46 = v199;
    if (v62)
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Updating sessions for KeySyncRecord changes.", v65, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v66 = v202;
    v67 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_101385D80;
    (*(v66 + 16))(v68 + v67, &v35[*(v32 + 24)], v64);
    v69 = sub_100B05044(v68);
    swift_setDeallocating();
    (*(v66 + 8))(v68 + v67, v64);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v70 = swift_allocObject();
    v70[2] = v46;
    v70[3] = v69;
    v70[4] = v63;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v35, type metadata accessor for KeyAlignmentRecord);
    v71 = v198;
    v39 = v180;
    v72 = v197;
    goto LABEL_33;
  }

  v58(v31, 1, 1, v32);
  sub_10000B3A8(v31, &qword_10169F328, &unk_1013CB040);
  sub_10001F280(a1, &v210);
  v81 = v189;
  v82 = swift_dynamicCast();
  v83 = *(v188 + 56);
  if (v82)
  {
    v83(v23, 0, 1, v81);
    v84 = v190;
    sub_100986170(v23, v190, type metadata accessor for BeaconNamingRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v85 = a1;
    v86 = type metadata accessor for Logger();
    sub_1000076D4(v86, qword_10177B740);
    sub_1009863FC(v84, v26, type metadata accessor for BeaconNamingRecord);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v204;
    if (v89)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v210 = v92;
      *v91 = 141558275;
      *(v91 + 4) = 1752392040;
      *(v91 + 12) = 2081;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      sub_100988488(v26, type metadata accessor for BeaconNamingRecord);
      v96 = sub_1000136BC(v93, v95, &v210);

      *(v91 + 14) = v96;
      _os_log_impl(&_mh_execute_header, v87, v88, "Updating sessions for Beacon Name changes. Beacon: %{private,mask.hash}s", v91, 0x16u);
      sub_100007BAC(v92);
    }

    else
    {

      sub_100988488(v26, type metadata accessor for BeaconNamingRecord);
    }

    v63 = v200;
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v115 = v202;
    v116 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_101385D80;
    v118 = *(v81 + 24);
    v119 = v190;
    (*(v115 + 16))(v117 + v116, v190 + v118, v90);
    v120 = sub_100B05044(v117);
    swift_setDeallocating();
    (*(v115 + 8))(v117 + v116, v90);
    swift_deallocClassInstance();
    v46 = v199;
    type metadata accessor for WorkItemQueue.WorkItem();
    v121 = swift_allocObject();
    v121[2] = v46;
    v121[3] = v120;
    v121[4] = v63;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v119, type metadata accessor for BeaconNamingRecord);
    v39 = v85;
    v72 = v197;
  }

  else
  {
    v83(v23, 1, 1, v81);
    sub_10000B3A8(v23, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(a1, &v210);
    v99 = v186;
    v100 = swift_dynamicCast();
    v101 = *(v185 + 56);
    v63 = v200;
    v72 = v197;
    if (v100)
    {
      v101(v19, 0, 1, v99);
      sub_100986170(v19, v187, type metadata accessor for LostModeRecord);
      v46 = v199;
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v180 = v39;
      v102 = type metadata accessor for Logger();
      sub_1000076D4(v102, qword_10177B740);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Updating sessions for Lost Mode changes.", v105, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v106 = v202;
      v107 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_101385D80;
      v109 = *(v99 + 24);
      v110 = v187;
      v111 = v204;
      (*(v106 + 16))(v108 + v107, v187 + v109, v204);
      v112 = sub_100B05044(v108);
      swift_setDeallocating();
      (*(v106 + 8))(v108 + v107, v111);
      swift_deallocClassInstance();
      type metadata accessor for WorkItemQueue.WorkItem();
      v113 = swift_allocObject();
      v113[2] = v46;
      v113[3] = v112;
      v113[4] = v63;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      v114 = type metadata accessor for LostModeRecord;
    }

    else
    {
      v101(v19, 1, 1, v99);
      sub_10000B3A8(v19, &unk_1016A99E0, &qword_1013A07B0);
      sub_10001F280(v39, &v210);
      v149 = v182;
      v150 = v184;
      v151 = swift_dynamicCast();
      v152 = *(v181 + 56);
      v56 = v201;
      v46 = v199;
      if (v151)
      {
        v152(v149, 0, 1, v150);
        sub_100986170(v149, v183, type metadata accessor for SafeLocation);
        if (qword_101694AD8 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_1000076D4(v153, qword_10177B740);
        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&_mh_execute_header, v154, v155, "Updating sessions for Safe Location changes.", v156, 2u);
        }

        v157 = v183;

        v159 = sub_10000954C(v158);

        type metadata accessor for WorkItemQueue.WorkItem();
        v160 = swift_allocObject();
        v160[2] = v46;
        v160[3] = v159;
        v160[4] = v63;

        UUID.init()();
        WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
        dispatch thunk of WorkItemQueue.enqueue(_:)();

        sub_100988488(v157, type metadata accessor for SafeLocation);
        goto LABEL_32;
      }

      v152(v149, 1, 1, v150);
      sub_10000B3A8(v149, &unk_1016AFA10, &qword_1013CB000);
      sub_10001F280(v39, &v210);
      v161 = v178;
      v162 = found;
      v163 = swift_dynamicCast();
      v164 = *(v177 + 56);
      if ((v163 & 1) == 0)
      {
        v164(v161, 1, 1, v162);
        sub_10000B3A8(v161, &qword_10169E328, &unk_10139D740);
        v71 = v198;
        goto LABEL_34;
      }

      v164(v161, 0, 1, v162);
      sub_100986170(v161, v176, type metadata accessor for NotifyWhenFoundRecord);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v180 = v39;
      v165 = type metadata accessor for Logger();
      sub_1000076D4(v165, qword_10177B740);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&_mh_execute_header, v166, v167, "Updating sessions for NotifyWhenFound changes.", v168, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v169 = v202;
      v170 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_101385D80;
      v110 = v176;
      v172 = v204;
      (*(v169 + 16))(v171 + v170, &v176[*(found + 24)], v204);
      v173 = sub_100B05044(v171);
      swift_setDeallocating();
      (*(v169 + 8))(v171 + v170, v172);
      swift_deallocClassInstance();
      type metadata accessor for WorkItemQueue.WorkItem();
      v174 = swift_allocObject();
      v174[2] = v46;
      v174[3] = v173;
      v174[4] = v63;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      v114 = type metadata accessor for NotifyWhenFoundRecord;
    }

    sub_100988488(v110, v114);
    v39 = v180;
  }

LABEL_32:
  v71 = v198;
LABEL_33:
  v56 = v201;
LABEL_34:
  sub_10001F280(v39, &v210);
  v122 = swift_dynamicCast();
  v123 = *(v196 + 56);
  if (v122)
  {
    v123(v72, 0, 1, v71);
    v124 = v194;
    sub_100986170(v72, v194, type metadata accessor for OwnerSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_1000076D4(v125, qword_10177B740);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "Updating sessions for sharing changes [OwnerSharingCircle].", v128, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v129 = v202;
    v130 = (*(v202 + 80) + 32) & ~*(v202 + 80);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_101385D80;
    v132 = v204;
    (*(v129 + 16))(v131 + v130, v124 + *(v71 + 24), v204);
    v133 = sub_100B05044(v131);
    swift_setDeallocating();
    (*(v129 + 8))(v131 + v130, v132);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v134 = swift_allocObject();
    v134[2] = v46;
    v134[3] = v133;
    v134[4] = v63;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v135 = type metadata accessor for OwnerSharingCircle;
LABEL_46:
    sub_100988488(v124, v135);
  }

  v123(v72, 1, 1, v71);
  sub_10000B3A8(v72, &unk_1016AFA00, &qword_10138C4D0);
  sub_10001F280(v39, &v210);
  v136 = v193;
  if (swift_dynamicCast())
  {
    (*(v192 + 56))(v136, 0, 1, v56);
    sub_100986170(v136, v195, type metadata accessor for MemberSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v137 = type metadata accessor for Logger();
    sub_1000076D4(v137, qword_10177B740);
    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();
    v140 = os_log_type_enabled(v138, v139);
    v141 = v202;
    if (v140)
    {
      v142 = swift_slowAlloc();
      *v142 = 0;
      _os_log_impl(&_mh_execute_header, v138, v139, "Updating sessions for sharing changes [MemberSharingCircle].", v142, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v143 = (*(v141 + 80) + 32) & ~*(v141 + 80);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101385D80;
    v145 = *(v56 + 24);
    v124 = v195;
    v146 = v204;
    (*(v141 + 16))(v144 + v143, v195 + v145, v204);
    v147 = sub_100B05044(v144);
    swift_setDeallocating();
    (*(v141 + 8))(v144 + v143, v146);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v148 = swift_allocObject();
    v148[2] = v46;
    v148[3] = v147;
    v148[4] = v63;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v135 = type metadata accessor for MemberSharingCircle;
    goto LABEL_46;
  }

  (*(v192 + 56))(v136, 1, 1, v56);
  return sub_10000B3A8(v136, &unk_101698BC0, &qword_10138C440);
}

uint64_t sub_100953080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = type metadata accessor for UUID();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v6[21] = swift_task_alloc();
  v9 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v6[22] = v9;
  v6[23] = *(v9 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v10 = type metadata accessor for CloudStorageStore.State(0);
  v6[26] = v10;
  v6[27] = *(v10 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016AA530, &unk_1013CAF90);
  v6[30] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016AA538, &unk_1013BD130);
  v6[31] = v11;
  v6[32] = *(v11 - 8);
  v6[33] = swift_task_alloc();
  v12 = sub_1000BC4D4(&unk_1016AA540, &unk_1013CAFA0);
  v6[34] = v12;
  v6[35] = *(v12 - 8);
  v6[36] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016B2F50, &unk_1013BD140);
  v6[37] = v13;
  v6[38] = *(v13 - 8);
  v6[39] = swift_task_alloc();

  return _swift_task_switch(sub_1009533E4, a4, 0);
}

uint64_t sub_1009533E4()
{
  v1 = *(*(v0 + 96) + 128);
  *(v0 + 320) = v1;
  return _swift_task_switch(sub_100953408, v1, 0);
}

uint64_t sub_100953408()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100953510, 0, 0);
}

uint64_t sub_100953510()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[41] = 0;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = sub_1009535F0;
  v5 = v0[37];
  v6 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v5);
}

uint64_t sub_1009535F0()
{

  return _swift_task_switch(sub_1009536EC, 0, 0);
}

uint64_t sub_1009536EC()
{
  v75 = v0;
  v1 = v0[30];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);

    v2 = v0[1];
LABEL_5:

    return v2();
  }

  v3 = v0[41];
  sub_100986170(v1, v0[29], type metadata accessor for CloudStorageStore.State);
  static Task<>.checkCancellation()();
  if (v3)
  {
    v4 = v0[38];
    v5 = v0[39];
    v6 = v0[37];
    sub_100988488(v0[29], type metadata accessor for CloudStorageStore.State);
    (*(v4 + 8))(v5, v6);

    v2 = v0[1];
    goto LABEL_5;
  }

  sub_1009863FC(v0[29], v0[28], type metadata accessor for CloudStorageStore.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[16] + 32))(v0[19], v0[28], v0[15]);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v9 = v0[18];
      v10 = v0[19];
      v11 = v0[15];
      v12 = v0[16];
      v13 = type metadata accessor for Logger();
      sub_1000076D4(v13, qword_10177B740);
      v72 = *(v12 + 16);
      v72(v9, v10, v11);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      v16 = os_log_type_enabled(v14, v15);
      v17 = v0[18];
      v19 = v0[15];
      v18 = v0[16];
      if (v16)
      {
        v20 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v74[0] = v69;
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        v71 = *(v18 + 8);
        v71(v17, v19);
        v24 = sub_1000136BC(v21, v23, v74);

        *(v20 + 14) = v24;
        _os_log_impl(&_mh_execute_header, v14, v15, "Updating sessions for local findable record deleted %{private,mask.hash}s.", v20, 0x16u);
        sub_100007BAC(v69);
      }

      else
      {

        v71 = *(v18 + 8);
        v71(v17, v19);
      }

      v42 = v0[19];
      v43 = v0[20];
      v70 = v0[29];
      v44 = v0[16];
      v45 = v0[17];
      v46 = v0[15];
      v68 = v0[14];
      v47 = v0[13];
      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v49 = swift_allocObject();
      v72(v49 + v48, v42, v46);
      sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v74[0] = Set.init(minimumCapacity:)();
      v72(v43, v49 + v48, v46);
      swift_setDeallocating();
      v71(v49 + v48, v46);
      swift_deallocClassInstance();
      sub_100DE8BCC(v45, v43);
      v71(v45, v46);
      v50 = v74[0];
      type metadata accessor for Transaction();
      v51 = swift_allocObject();
      v51[2] = v50;
      v51[3] = v68;
      v51[4] = v47;

      static Transaction.asyncTask(name:block:)();

      v71(v42, v46);
      v41 = v70;
    }

    else
    {
      v40 = v0[28];
      sub_100988488(v0[29], type metadata accessor for CloudStorageStore.State);
      v41 = v40;
    }

LABEL_25:
    sub_100988488(v41, type metadata accessor for CloudStorageStore.State);
    goto LABEL_26;
  }

  sub_10000A748(v0[28], (v0 + 2));
  sub_10001F280((v0 + 2), (v0 + 7));
  sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
  if (swift_dynamicCast())
  {
    v25 = v0[25];
    v26 = v0[21];
    (*(v0[23] + 56))(v26, 0, 1, v0[22]);
    sub_100986170(v26, v25, type metadata accessor for LocalFindableAccessoryRecord);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v27 = v0[24];
    v28 = v0[25];
    v29 = type metadata accessor for Logger();
    sub_1000076D4(v29, qword_10177B740);
    sub_1009863FC(v28, v27, type metadata accessor for LocalFindableAccessoryRecord);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[24];
    if (v32)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v74[0] = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      sub_100988488(v33, type metadata accessor for LocalFindableAccessoryRecord);
      v39 = sub_1000136BC(v36, v38, v74);

      *(v34 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v31, "Updating sessions for local findable record modified %{private,mask.hash}s.", v34, 0x16u);
      sub_100007BAC(v35);
    }

    else
    {

      sub_100988488(v33, type metadata accessor for LocalFindableAccessoryRecord);
    }

    v73 = v0[29];
    v56 = v0[25];
    v57 = v0[15];
    v58 = v0[16];
    v60 = v0[13];
    v59 = v0[14];
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v61 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_101385D80;
    (*(v58 + 16))(v62 + v61, v56, v57);
    v63 = sub_100B05044(v62);
    swift_setDeallocating();
    (*(v58 + 8))(v62 + v61, v57);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v64 = swift_allocObject();
    v64[2] = v60;
    v64[3] = v63;
    v64[4] = v59;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v56, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100007BAC(v0 + 2);
    v41 = v73;
    goto LABEL_25;
  }

  v52 = v0[29];
  v53 = v0[22];
  v54 = v0[23];
  v55 = v0[21];
  sub_100007BAC(v0 + 2);
  sub_100988488(v52, type metadata accessor for CloudStorageStore.State);
  (*(v54 + 56))(v55, 1, 1, v53);
  sub_10000B3A8(v55, &qword_1016A9A30, &unk_1013BD120);
LABEL_26:
  v0[41] = 0;
  v65 = swift_task_alloc();
  v0[42] = v65;
  *v65 = v0;
  v65[1] = sub_1009535F0;
  v66 = v0[37];
  v67 = v0[30];

  return AsyncStream.Iterator.next(isolation:)(v67, 0, 0, v66);
}

uint64_t sub_100954264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v173 = a3;
  v177 = a1;
  v3 = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  __chkstk_darwin(v3 - 8);
  v165 = &v146 - v4;
  v172 = type metadata accessor for MemberSharingCircle(0);
  v164 = *(v172 - 8);
  __chkstk_darwin(v172);
  v167 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v6 - 8);
  v171 = &v146 - v7;
  v169 = type metadata accessor for OwnerSharingCircle(0);
  v168 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  __chkstk_darwin(v9 - 8);
  v151 = &v146 - v10;
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v150 = *(found - 8);
  __chkstk_darwin(found);
  v12 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_1016AFA10, &qword_1013CB000);
  __chkstk_darwin(v13 - 8);
  v154 = &v146 - v14;
  v155 = type metadata accessor for SafeLocation(0);
  v153 = *(v155 - 8);
  __chkstk_darwin(v155);
  v156 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  __chkstk_darwin(v16 - 8);
  v158 = &v146 - v17;
  v161 = type metadata accessor for LostModeRecord(0);
  v157 = *(v161 - 8);
  __chkstk_darwin(v161);
  v162 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  __chkstk_darwin(v19 - 8);
  v159 = &v146 - v20;
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v21 - 8);
  v160 = &v146 - v22;
  v175 = type metadata accessor for UUID();
  v176 = *(v175 - 8);
  v23 = __chkstk_darwin(v175);
  v149 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v174 = &v146 - v26;
  __chkstk_darwin(v25);
  v148 = &v146 - v27;
  v28 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v28 - 8);
  v30 = &v146 - v29;
  v31 = type metadata accessor for SharedBeaconRecord(0);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  __chkstk_darwin(v35 - 8);
  v37 = &v146 - v36;
  v38 = type metadata accessor for BeaconNamingRecord(0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v170 = result;
  if (!result)
  {
    return result;
  }

  v147 = v12;
  sub_10001F280(v177, v180);
  v43 = sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v44 = swift_dynamicCast();
  v163 = v43;
  if (v44)
  {
    sub_10000A748(v178, &v181);
    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v45 = v176;
    v46 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_101385D80;
    v49 = v182;
    v48 = v183;
    sub_1000035D0(&v181, v182);
    (*(*(*(v48 + 8) + 8) + 32))(v49);
    v50 = sub_10000954C(v47);
    swift_setDeallocating();
    v51 = *(v45 + 8);
    v51(v47 + v46, v175);
    swift_deallocClassInstance();
    *&v178[0] = v50;
    sub_10001F280(&v181, v180);
    v52 = swift_dynamicCast();
    v53 = *(v32 + 56);
    if ((v52 & 1) == 0)
    {
      v53(v30, 1, 1, v31);
      sub_10000B3A8(v30, &unk_101698C30, &unk_101392630);
      v61 = v173;
      v62 = v172;
      v63 = v170;
      v60 = v175;
      v66 = v169;
      v58 = v176;
LABEL_31:
      v109 = *&v178[0];
      type metadata accessor for Transaction();
      v110 = swift_allocObject();
      v110[2] = v109;
      v110[3] = v61;
      v110[4] = v63;

      static Transaction.asyncTask(name:block:)();

      sub_100007BAC(&v181);
LABEL_32:
      v77 = v177;
      v92 = v171;
      goto LABEL_33;
    }

    v53(v30, 0, 1, v31);
    sub_100986170(v30, v34, type metadata accessor for SharedBeaconRecord);
    v54 = v159;
    sub_1000D2A70(&v34[*(v31 + 80)], v159, &unk_1016AF890, &qword_1013926D0);
    v55 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v56 = (*(*(v55 - 8) + 48))(v54, 1, v55);
    v57 = v174;
    if (v56 == 1)
    {
      sub_100988488(v34, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v54, &unk_1016AF890, &qword_1013926D0);
      v58 = v176;
      v59 = v160;
      v60 = v175;
      (*(v176 + 56))(v160, 1, 1, v175);
      v61 = v173;
      v62 = v172;
      v63 = v170;
    }

    else
    {
      v93 = v54 + *(v55 + 20);
      v59 = v160;
      sub_1000D2A70(v93, v160, &qword_1016980D0, &unk_10138F3B0);
      sub_100988488(v54, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v58 = v176;
      v60 = v175;
      v94 = (*(v176 + 48))(v59, 1, v175);
      v61 = v173;
      v63 = v170;
      if (v94 != 1)
      {
        v106 = v57;
        v107 = v148;
        (*(v58 + 32))(v148, v59, v60);
        v108 = v149;
        (*(v58 + 16))(v149, v107, v60);
        sub_100DE8BCC(v106, v108);
        v51(v106, v60);
        v61 = v173;
        v51(v107, v60);
        sub_100988488(v34, type metadata accessor for SharedBeaconRecord);
        v62 = v172;
        goto LABEL_30;
      }

      sub_100988488(v34, type metadata accessor for SharedBeaconRecord);
      v62 = v172;
    }

    sub_10000B3A8(v59, &qword_1016980D0, &unk_10138F3B0);
LABEL_30:
    v66 = v169;
    goto LABEL_31;
  }

  v179 = 0;
  memset(v178, 0, sizeof(v178));
  sub_10000B3A8(v178, &qword_101696920, &unk_10138B200);
  sub_10001F280(v177, &v181);
  v64 = swift_dynamicCast();
  v65 = *(v39 + 56);
  if (v64)
  {
    v65(v37, 0, 1, v38);
    sub_100986170(v37, v41, type metadata accessor for BeaconNamingRecord);
    v63 = v170;
    v60 = v175;
    v66 = v169;
    v67 = v176;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177B740);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    v71 = os_log_type_enabled(v69, v70);
    v61 = v173;
    if (v71)
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Updating sessions for name record changes.", v72, 2u);
      v67 = v176;
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v73 = (*(v67 + 80) + 32) & ~*(v67 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_101385D80;
    (*(v67 + 16))(v74 + v73, &v41[*(v38 + 24)], v60);
    v75 = sub_100B05044(v74);
    swift_setDeallocating();
    (*(v67 + 8))(v74 + v73, v60);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v76 = swift_allocObject();
    v76[2] = v63;
    v76[3] = v75;
    v76[4] = v61;

    UUID.init()();
    v58 = v176;
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v41, type metadata accessor for BeaconNamingRecord);
    v62 = v172;
    goto LABEL_32;
  }

  v65(v37, 1, 1, v38);
  sub_10000B3A8(v37, &unk_1016B29E0, &unk_1013B70E0);
  v77 = v177;
  sub_10001F280(v177, &v181);
  v78 = v158;
  v79 = v161;
  v80 = swift_dynamicCast();
  v81 = *(v157 + 56);
  v63 = v170;
  v60 = v175;
  v66 = v169;
  v58 = v176;
  if (v80)
  {
    v81(v78, 0, 1, v79);
    sub_100986170(v78, v162, type metadata accessor for LostModeRecord);
    v61 = v173;
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_1000076D4(v82, qword_10177B740);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "Updating sessions for Lost Mode changes.", v85, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v86 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_101385D80;
    v88 = *(v79 + 24);
    v89 = v162;
    (*(v58 + 16))(v87 + v86, v162 + v88, v60);
    v90 = sub_100B05044(v87);
    swift_setDeallocating();
    (*(v58 + 8))(v87 + v86, v60);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v91 = swift_allocObject();
    v91[2] = v63;
    v91[3] = v90;
    v91[4] = v61;

    UUID.init()();
    v58 = v176;
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    sub_100988488(v89, type metadata accessor for LostModeRecord);
    v77 = v177;
    v92 = v171;
  }

  else
  {
    v81(v78, 1, 1, v79);
    sub_10000B3A8(v78, &unk_1016A99E0, &qword_1013A07B0);
    sub_10001F280(v77, &v181);
    v95 = v154;
    v96 = v155;
    v97 = swift_dynamicCast();
    v98 = *(v153 + 56);
    v61 = v173;
    v62 = v172;
    if (v97)
    {
      v98(v95, 0, 1, v96);
      sub_100986170(v95, v156, type metadata accessor for SafeLocation);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v99 = type metadata accessor for Logger();
      sub_1000076D4(v99, qword_10177B740);
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&_mh_execute_header, v100, v101, "Updating sessions for Safe Location changes.", v102, 2u);
      }

      v104 = sub_10000954C(v103);

      type metadata accessor for WorkItemQueue.WorkItem();
      v105 = swift_allocObject();
      v105[2] = v63;
      v105[3] = v104;
      v105[4] = v61;

      UUID.init()();
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100988488(v156, type metadata accessor for SafeLocation);
      v58 = v176;
      goto LABEL_32;
    }

    v98(v95, 1, 1, v96);
    sub_10000B3A8(v95, &unk_1016AFA10, &qword_1013CB000);
    sub_10001F280(v77, &v181);
    v133 = v151;
    v134 = found;
    v135 = swift_dynamicCast();
    v136 = *(v150 + 56);
    v92 = v171;
    if (v135)
    {
      v136(v133, 0, 1, v134);
      sub_100986170(v133, v147, type metadata accessor for NotifyWhenFoundRecord);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v137 = type metadata accessor for Logger();
      sub_1000076D4(v137, qword_10177B740);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      v140 = os_log_type_enabled(v138, v139);
      v62 = v172;
      if (v140)
      {
        v141 = swift_slowAlloc();
        *v141 = 0;
        _os_log_impl(&_mh_execute_header, v138, v139, "Updating sessions for NotifyWhenFound deleted.", v141, 2u);
      }

      sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
      v142 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_101385D80;
      (*(v58 + 16))(v143 + v142, &v147[*(found + 24)], v60);
      v144 = sub_100B05044(v143);
      swift_setDeallocating();
      (*(v58 + 8))(v143 + v142, v60);
      swift_deallocClassInstance();
      type metadata accessor for WorkItemQueue.WorkItem();
      v145 = swift_allocObject();
      v145[2] = v63;
      v145[3] = v144;
      v145[4] = v61;

      UUID.init()();
      v58 = v176;
      WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
      dispatch thunk of WorkItemQueue.enqueue(_:)();

      sub_100988488(v147, type metadata accessor for NotifyWhenFoundRecord);
      goto LABEL_32;
    }

    v136(v133, 1, 1, v134);
    sub_10000B3A8(v133, &qword_10169E328, &unk_10139D740);
  }

  v62 = v172;
LABEL_33:
  sub_10001F280(v77, &v181);
  v111 = swift_dynamicCast();
  v112 = *(v168 + 56);
  if (v111)
  {
    v112(v92, 0, 1, v66);
    v113 = v166;
    sub_100986170(v92, v166, type metadata accessor for OwnerSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v114 = type metadata accessor for Logger();
    sub_1000076D4(v114, qword_10177B740);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "Updating sessions for sharing changes [OwnerSharingCircle].", v117, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v118 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_101385D80;
    (*(v58 + 16))(v119 + v118, v113 + *(v66 + 24), v60);
    v120 = sub_100B05044(v119);
    swift_setDeallocating();
    (*(v58 + 8))(v119 + v118, v60);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v121 = swift_allocObject();
    v121[2] = v63;
    v121[3] = v120;
    v121[4] = v61;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v122 = type metadata accessor for OwnerSharingCircle;
LABEL_45:
    sub_100988488(v113, v122);
  }

  v112(v92, 1, 1, v66);
  sub_10000B3A8(v92, &unk_1016AFA00, &qword_10138C4D0);
  sub_10001F280(v77, &v181);
  v123 = v165;
  if (swift_dynamicCast())
  {
    (*(v164 + 56))(v123, 0, 1, v62);
    sub_100986170(v123, v167, type metadata accessor for MemberSharingCircle);
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v124 = type metadata accessor for Logger();
    sub_1000076D4(v124, qword_10177B740);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Updating sessions for sharing changes [MemberSharingCircle].", v127, 2u);
    }

    sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
    v128 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_101385D80;
    v130 = *(v62 + 24);
    v113 = v167;
    (*(v58 + 16))(v129 + v128, v167 + v130, v60);
    v131 = sub_100B05044(v129);
    swift_setDeallocating();
    (*(v58 + 8))(v129 + v128, v60);
    swift_deallocClassInstance();
    type metadata accessor for WorkItemQueue.WorkItem();
    v132 = swift_allocObject();
    v132[2] = v63;
    v132[3] = v131;
    v132[4] = v61;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v122 = type metadata accessor for MemberSharingCircle;
    goto LABEL_45;
  }

  (*(v164 + 56))(v123, 1, 1, v62);
  return sub_10000B3A8(v123, &unk_101698BC0, &qword_10138C440);
}

uint64_t sub_10095607C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for UUID();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_1016AF9F0, &qword_1013CAFE8);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = sub_1000BC4D4(&qword_1016AF9F8, &qword_1013CAFF0);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100956228, 0, 0);
}

uint64_t sub_100956228()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  OS_dispatch_queue.sync<A>(execute:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_100956358;
  v5 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_100956358()
{

  return _swift_task_switch(sub_100956454, 0, 0);
}

uint64_t sub_100956454()
{
  v38 = v0;
  if (!v0[2])
  {
LABEL_7:
    (*(v0[16] + 8))(v0[17], v0[15]);

    v6 = v0[1];

    return v6();
  }

  v1 = v0[3];

  if (static Task<>.isCancelled.getter())
  {

    if (qword_101694AD8 == -1)
    {
LABEL_4:
      v2 = type metadata accessor for Logger();
      sub_1000076D4(v2, qword_10177B740);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "Cancelling productInfoUpdateTask", v5, 2u);
      }

      goto LABEL_7;
    }

LABEL_23:
    swift_once();
    goto LABEL_4;
  }

  v36 = *(v1 + 16);
  if (v36)
  {
    v8 = 0;
    v35 = v1;
    while (v8 < *(v1 + 16))
    {
      v10 = v0[8];
      v11 = *(v10 + 16);
      v11(v0[11], v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8, v0[7]);
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v12 = v0[11];
      v13 = v0[9];
      v14 = v0[7];
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177B740);
      v11(v13, v12, v14);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      v18 = os_log_type_enabled(v16, v17);
      v20 = v0[8];
      v19 = v0[9];
      v21 = v0[7];
      if (v18)
      {
        v22 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v37 = v34;
        *v22 = 141558275;
        *(v22 + 4) = 1752392040;
        *(v22 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v33 = v17;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        v25 = v24;
        v9 = *(v20 + 8);
        v9(v19, v21);
        v26 = sub_1000136BC(v23, v25, &v37);

        *(v22 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v16, v33, "Updating sessions for beacon with updated product info %{private,mask.hash}s.", v22, 0x16u);
        sub_100007BAC(v34);
      }

      else
      {

        v9 = *(v20 + 8);
        v9(v19, v21);
      }

      ++v8;
      v9(v0[11], v0[7]);
      v1 = v35;
      if (v36 == v8)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  v28 = v0[5];
  v27 = v0[6];
  v29 = sub_10000954C(v1);

  type metadata accessor for WorkItemQueue.WorkItem();
  v30 = swift_allocObject();
  v30[2] = v28;
  v30[3] = v29;
  v30[4] = v27;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_100956358;
  v32 = v0[15];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v32);
}

void sub_10095699C(char a1)
{
  *(v1 + 200) = a1 & 1;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B740);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    if (a1)
    {
      v7 = 0x6E61685465726F6DLL;
    }

    else
    {
      v7 = 6647407;
    }

    if (a1)
    {
      v8 = 0xEB00000000656E4FLL;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_1000136BC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Stored last connectable device count %{public}s.", v5, 0xCu);
    sub_100007BAC(v6);
  }
}

void sub_100956B24()
{
  if (*(v0 + 272))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_10177B740);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Keeping subscriptions for intent context.", v3, 2u);
    }

    return;
  }

  OS_dispatch_queue.sync<A>(execute:)();
  if (v26 != 1)
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177B740);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_38;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Keeping subscriptions for connection pool.";
    goto LABEL_37;
  }

  *(v0 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 1;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177B740);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unified beacons cached marked as stale.", v7, 2u);
  }

  if (*(v0 + 136))
  {
    *(v0 + 136) = 0;

    *(v0 + 200) = 2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unsubscribed from connectable devices change publisher.", v10, 2u);
    }
  }

  if (*(v0 + 144))
  {
    *(v0 + 144) = 0;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unsubscribed from recordPublisherSubject publisher.", v13, 2u);
    }
  }

  if (*(v0 + 152))
  {
    *(v0 + 152) = 0;

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unsubscribed from beaconRecordDeletedSubject publisher.", v16, 2u);
    }
  }

  if (*(v0 + 184))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    *(v0 + 184) = 0;

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unsubscribed from localFindableRecordUpdateTask.", v19, 2u);
    }
  }

  if (*(v0 + 192))
  {

    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    Task.cancel()();

    *(v0 + 192) = 0;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_38:

      return;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Unsubscribed from productInfoUpdateTask.";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

    goto LABEL_38;
  }
}

id sub_1009570CC(uint64_t *a1, uint64_t a2)
{
  v103 = type metadata accessor for String.Encoding();
  v5 = *(v103 - 1);
  __chkstk_darwin(v103);
  v7 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for UUID();
  v8 = *(v100 - 8);
  v9 = __chkstk_darwin(v100);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v95 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v95 - v16;
  v18 = __chkstk_darwin(v15);
  v99 = &v95 - v19;
  __chkstk_darwin(v18);
  v102 = &v95 - v20;
  v21 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (!*(v22 + 16))
  {
    return 0;
  }

  v23 = sub_1000210EC(a2);
  if ((v24 & 1) == 0)
  {

    return 0;
  }

  v97 = v17;
  v25 = *(v22 + 56) + 16 * v23;
  v26 = *(v25 + 8);
  v27 = a1;
  v28 = *v25;

  v29 = v27[6];
  if (*(v29 + 16))
  {
    v30 = [v28 serialNumber];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v104 = v32;
      v105 = v34;
      __chkstk_darwin(v35);
      *(&v95 - 2) = &v104;
      LOBYTE(v31) = sub_1002EB538(sub_100987EE4, (&v95 - 4), v29);

      if (v31)
      {
        return v28;
      }
    }

    goto LABEL_19;
  }

  v98 = v8;
  v96 = v28;
  v36 = v27[7];
  v37 = *(v36 + 16);
  if (!v37)
  {
    v52 = *v27;
    v53 = v27;
    v54 = v27[4];
    if ((v52 & 0x2000) != 0)
    {
      if (sub_1005C8A30(a2, v54))
      {
        return v96;
      }

      return 0;
    }

    v55 = *(v54 + 16);
    v56 = v96;
    if (v55)
    {
      v57 = sub_1005C8A30(a2, v54);
      v58 = [v56 groupIdentifier];
      if (v58)
      {
        v59 = v56;
        v60 = v58;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = v59;
        v61 = sub_1005C8A30(v14, v54);
        (*(v98 + 8))(v14, v100);
        if (v61 || v57)
        {
          goto LABEL_26;
        }

LABEL_51:

        return 0;
      }

      if (!v57)
      {
        goto LABEL_51;
      }
    }

LABEL_26:
    v62 = v53[5];
    if (*(v62 + 16))
    {

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      sub_1000076D4(v63, qword_10177B740);
      v28 = v56;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      v66 = os_log_type_enabled(v64, v65);
      v67 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
      v68 = v100;
      if (v66)
      {
        v69 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v104 = v103;
        *v69 = 134218242;
        *(v69 + 4) = [v28 productId];

        *(v69 + 12) = 2080;
        v70 = [v28 productUUID];
        v71 = v97;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v74 = v73;
        v75 = v98;
        (*(v98 + 8))(v71, v68);
        v76 = sub_1000136BC(v72, v74, &v104);

        *(v69 + 14) = v76;
        v67 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
        _os_log_impl(&_mh_execute_header, v64, v65, "Checking product UUID: %ld - %s.", v69, 0x16u);
        sub_100007BAC(v103);
      }

      else
      {

        v71 = v97;
        v75 = v98;
      }

      v79 = [v28 v67[372]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v79) = sub_1005C8A30(v71, v62);
      (*(v75 + 8))(v71, v68);
      if ((v79 & 1) == 0)
      {
        goto LABEL_19;
      }

      return v28;
    }

    [v56 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
    if (!swift_dynamicCast())
    {

      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v80 = type metadata accessor for Logger();
      sub_1000076D4(v80, qword_10177B740);
      v81 = v98;
      v82 = v100;
      (*(v98 + 16))(v11, a2, v100);
      sub_1009871D4(v53, &v104);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      sub_1007206EC(v53);
      if (os_log_type_enabled(v83, v84))
      {
        v103 = v56;
        v85 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v85 = 141558531;
        *(v85 + 4) = 1752392040;
        *(v85 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        (*(v81 + 8))(v11, v82);
        v89 = sub_1000136BC(v86, v88, &v104);

        *(v85 + 14) = v89;
        *(v85 + 22) = 2082;
        if (v53[2])
        {
          v90 = v53[1];
          v91 = v53[2];
        }

        else
        {
          v91 = 0xE700000000000000;
          v90 = 0x6E776F6E6B6E75;
        }

        v94 = sub_1000136BC(v90, v91, &v104);

        *(v85 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v83, v84, "Failed to filter beacon %{private,mask.hash}s for %{public}s.", v85, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v81 + 8))(v11, v82);
      }

      return 0;
    }

    v77 = v106;
    if ((v52 & 0x200) != 0)
    {
      if ((v26 & 0x200) != 0)
      {
        v92 = [v56 taskInformation];
        type metadata accessor for SPBeaconTaskName(0);
        sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
        sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v28 = v77;
        [v77 setTaskInformation:isa];

        [v77 setRawMetadata:0];
        return v28;
      }
    }

    else
    {

      if ((v26 & 0xFFFFFFFFFFFFFDFFLL) != 0)
      {
        if ((v52 & 0x80) != 0)
        {
          if (v52)
          {
            goto LABEL_39;
          }
        }

        else
        {
          [v77 setName:0];
          if (v52)
          {
LABEL_39:
            if ((v52 & 2) != 0)
            {
              goto LABEL_40;
            }

            goto LABEL_69;
          }
        }

        [v77 setManufacturerName:0];
        if ((v52 & 2) != 0)
        {
LABEL_40:
          if ((v52 & 4) != 0)
          {
            goto LABEL_41;
          }

          goto LABEL_70;
        }

LABEL_69:
        [v77 setModelName:0];
        if ((v52 & 4) != 0)
        {
LABEL_41:
          if ((v52 & 8) != 0)
          {
            goto LABEL_42;
          }

          goto LABEL_71;
        }

LABEL_70:
        [v77 setVendorId:0];
        if ((v52 & 8) != 0)
        {
LABEL_42:
          if ((v52 & 0x10) != 0)
          {
            goto LABEL_43;
          }

          goto LABEL_72;
        }

LABEL_71:
        [v77 setProductId:0];
        if ((v52 & 0x10) != 0)
        {
LABEL_43:
          if ((v52 & 0x20) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_73;
        }

LABEL_72:
        [v77 setSerialNumber:0];
        if ((v52 & 0x20) != 0)
        {
LABEL_44:
          if ((v52 & 0x40) != 0)
          {
            goto LABEL_45;
          }

          goto LABEL_74;
        }

LABEL_73:
        [v77 setConnectableDeviceCount:0];
        if ((v52 & 0x40) != 0)
        {
LABEL_45:
          if ((v52 & 0x100) != 0)
          {
            goto LABEL_46;
          }

          goto LABEL_75;
        }

LABEL_74:
        [v77 setBatteryLevel:0];
        if ((v52 & 0x100) != 0)
        {
LABEL_46:
          if ((v52 & 0x800) != 0)
          {
            goto LABEL_47;
          }

          goto LABEL_76;
        }

LABEL_75:
        [v77 setKeySyncRecord:0];
        if ((v52 & 0x800) != 0)
        {
LABEL_47:
          if ((v52 & 0x1000) != 0)
          {
LABEL_49:

            return v77;
          }

LABEL_48:
          sub_1009097B0(_swiftEmptyArrayStorage);
          type metadata accessor for SPBeaconTaskName(0);
          sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
          sub_100985CA0(&qword_1016964D0, type metadata accessor for SPBeaconTaskName, &unk_10138A8F4);
          v78 = Dictionary._bridgeToObjectiveC()().super.isa;

          [v77 setTaskInformation:v78];

          goto LABEL_49;
        }

LABEL_76:
        [v77 setRawMetadata:0];
        if ((v52 & 0x1000) != 0)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    return 0;
  }

  v38 = (v5 + 8);
  v39 = v99;
  v101 = (v98 + 32);
  v40 = v36 + 40;
  v41 = _swiftEmptyArrayStorage;
  do
  {

    static String.Encoding.utf8.getter();
    v42 = String.data(using:allowLossyConversion:)();
    v44 = v43;
    (*v38)(v7, v103);
    if (v44 >> 60 == 15)
    {
    }

    else
    {
      v104 = v42;
      v105 = v44;
      sub_1000E0A3C();
      DataProtocol.stableUUID.getter();

      sub_100006654(v42, v44);
      v45 = *v101;
      v46 = v100;
      (*v101)(v102, v39, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_100A5BFE0(0, *(v41 + 2) + 1, 1, v41);
      }

      v48 = *(v41 + 2);
      v47 = *(v41 + 3);
      if (v48 >= v47 >> 1)
      {
        v41 = sub_100A5BFE0((v47 > 1), v48 + 1, 1, v41);
      }

      *(v41 + 2) = v48 + 1;
      v45(&v41[((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v48], v102, v46);
    }

    v40 += 16;
    --v37;
  }

  while (v37);
  v28 = v96;
  v49 = [v96 identifier];
  v50 = v97;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v49) = sub_1005C8A30(v50, v41);

  (*(v98 + 8))(v50, v100);
  if ((v49 & 1) == 0)
  {
LABEL_19:

    return 0;
  }

  return v28;
}

uint64_t sub_100957E68(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for UUID();
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100957F2C, v2, 0);
}

uint64_t sub_100957F2C()
{
  v24 = v0;
  v1 = v0[35];
  v2 = v0[34];
  v0[40] = *(v0[36] + 128);
  v3 = sub_100011328(v2, v1);
  v0[41] = v3;
  if (v3)
  {
    sub_100959EB0(v3, v0[35]);

    return _swift_task_switch(sub_1009581DC, 0, 0);
  }

  else
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v4 = v0[34];
    v5 = v0[35];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177B740);
    sub_1009871D4(v5, (v0 + 2));
    v7 = v4;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    sub_1007206EC(v5);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[34];
      v11 = v0[35];
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = [v10 debugDescription];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_1000136BC(v14, v16, &v23);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      if (*(v11 + 16))
      {
        v18 = *(v0[35] + 8);
        v19 = *(v11 + 16);
      }

      else
      {
        v19 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
      }

      v20 = sub_1000136BC(v18, v19, &v23);

      *(v12 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to add connection %s, bundle: %{public}s.", v12, 0x16u);
      swift_arrayDestroy();
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1009581DC()
{
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  v2 = sub_1000BC4D4(&qword_1016AF9A8, &qword_1013CAED8);
  *v1 = v0;
  v1[1] = sub_1009582CC;
  v3 = *(v0 + 320);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 256, 0, 0, 0x736553636E797361, 0xED0000736E6F6973, sub_10098720C, v3, v2);
}

uint64_t sub_1009582CC()
{

  return _swift_task_switch(sub_1009583C8, 0, 0);
}

uint64_t sub_1009583C8()
{
  v1 = v0[36];
  v0[43] = v0[32];
  return _swift_task_switch(sub_1009583EC, v1, 0);
}

uint64_t sub_1009583EC()
{
  v1 = v0[43];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(v1 + 16);
  }

  if (v2 == 1)
  {
    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_10095851C;

    return daemon.getter();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[51] = v4;
    *v4 = v0;
    v4[1] = sub_100958BA8;

    return sub_10094E738();
  }
}

uint64_t sub_10095851C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[45] = a1;

  v3 = swift_task_alloc();
  v2[46] = v3;
  v4 = type metadata accessor for Daemon();
  v2[47] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_1009586FC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1009586FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  if (v1)
  {

    v6 = swift_task_alloc();
    v4[51] = v6;
    *v6 = v5;
    v6[1] = sub_100958BA8;

    return sub_10094E738();
  }

  else
  {

    return _swift_task_switch(sub_100958890, a1, 0);
  }
}

uint64_t sub_100958890()
{
  v1 = *(v0 + 392);
  sub_10001B108();
  *(v0 + 400) = v2;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_100958B04;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1009589B8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1009589B8()
{
  v1 = *(v0 + 288);

  return _swift_task_switch(sub_100958A30, v1, 0);
}

uint64_t sub_100958A30()
{
  CurrentValueSubject.value.getter();
  sub_10095699C(*(v0 + 264) > 1);

  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100958BA8;

  return sub_10094E738();
}

uint64_t sub_100958B04()
{

  v1 = swift_task_alloc();
  *(v0 + 408) = v1;
  *v1 = v0;
  v1[1] = sub_100958BA8;

  return sub_10094E738();
}

uint64_t sub_100958BA8()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_100958CB8, v1, 0);
}

uint64_t sub_100958CB8(uint64_t a1)
{
  v2 = v1[35];
  if (*(*(v2 + 48) + 16) || *(*(v2 + 56) + 16))
  {
    v4 = v1[38];
    v3 = v1[39];
    v6 = v1[36];
    v5 = v1[37];
    XPCSession.identifier.getter();
    v7 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
    swift_beginAccess();
    sub_1009871D4(v2, (v1 + 11));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v6 + v7);
    *(v6 + v7) = 0x8000000000000000;
    sub_100FFF904(v2, v3, isUniquelyReferenced_nonNull_native);
    (*(v4 + 8))(v3, v5);
    *(v6 + v7) = v14;
    swift_endAccess();
    v9 = swift_task_alloc();
    v1[52] = v9;
    *v9 = v1;
    v9[1] = sub_100958E8C;
    v10 = v1[35];

    return sub_100987214(v10);
  }

  else
  {
    v12 = v1[41];
    v13 = swift_task_alloc();
    v1[54] = v13;
    *v13 = v1;
    v13[1] = sub_100959124;

    return sub_10095B808(v12);
  }
}

uint64_t sub_100958E8C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 424) = v3;
  *v3 = v2;
  v3[1] = sub_100958FCC;

  return sub_10097D024();
}

uint64_t sub_100958FCC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 328);
  v4 = swift_task_alloc();
  *(v1 + 432) = v4;
  *v4 = v2;
  v4[1] = sub_100959124;

  return sub_10095B808(v3);
}

uint64_t sub_100959124()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_100959234, v1, 0);
}

uint64_t sub_100959234()
{
  v1 = v0[41];
  v3 = v0[35];
  v2 = v0[36];
  type metadata accessor for WorkItemQueue.WorkItem();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  *(v4 + 72) = *(v3 + 48);
  *(v4 + 56) = v6;
  *(v4 + 40) = v5;
  *(v4 + 88) = v7;
  *(v4 + 96) = v1;
  sub_1009871D4(v3, (v0 + 20));

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v8 = v0[1];

  return v8();
}

uint64_t sub_100959384()
{
  if (*(v0 + 88) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 40) = v1;
    *v1 = v0;
    v1[1] = sub_100959454;

    return daemon.getter();
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100959454(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  *v3 = v9;
  v3[1] = sub_100959630;

  return ActorServiceDaemon.getService<A>()(v4, MyServiceDeviceStoreService, v6, v7);
}

uint64_t sub_100959630(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100959A10;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_100959784;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100959784()
{

  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[4];
    v3 = v0[2];
    type metadata accessor for Transaction();
    v4 = swift_task_alloc();
    v0[9] = v4;
    v4[2] = v1;
    v4[3] = v2;
    v4[4] = v3;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1009598D4;

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1009598D4()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(j___s12searchpartyd8DatabasePAAE5await5stateyAA0B5StateO_tYaKF, 0, 0);
  }
}

uint64_t sub_100959A10()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v2 = v0[4];
    v3 = v0[2];
    type metadata accessor for Transaction();
    v4 = swift_task_alloc();
    v0[9] = v4;
    v4[2] = v1;
    v4[3] = v2;
    v4[4] = v3;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1009598D4;

    return static Transaction.named<A>(_:with:)();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100959B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[11] = a2;
  return _swift_task_switch(sub_100959B7C, 0, 0);
}

uint64_t sub_100959B7C()
{
  v16 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  sub_1009871D4(v1, v0 + 16);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  sub_1007206EC(v1);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v6 = 136315394;
    if (*(v5 + 16))
    {
      v7 = *(*(v0 + 88) + 8);
      v8 = *(v5 + 16);
    }

    else
    {
      v7 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = sub_1000136BC(v7, v8, &v15);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v10 = XPCSession.debugDescription.getter();
    v12 = sub_1000136BC(v10, v11, &v15);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Refreshing all beacons for connected client %s, %{public}s.", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_100959DB8;

  return sub_10095D31C();
}

uint64_t sub_100959DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100959EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v99 = a1;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v103 = &v83 - v6;
  v7 = sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = __chkstk_darwin(v7);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v9;
  __chkstk_darwin(v8);
  v11 = &v83 - v10;
  v102 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v12 = *(v102 - 8);
  __chkstk_darwin(v102);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v95 = &v83 - v21;
  __chkstk_darwin(v20);
  v23 = &v83 - v22;
  v24 = sub_1000BC4D4(&qword_1016AF978, &qword_1013CAE60);
  v25 = __chkstk_darwin(v24);
  v26 = __chkstk_darwin(v25);
  v29 = &v83 - v28;
  v98 = a2;
  v30 = *(a2 + 64);
  v101 = v11;
  v97 = v15;
  v96 = v16;
  v84 = v19;
  if (v30)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_18:
    sub_1000BC4D4(&qword_1016AF998, &qword_1013CAEB8);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_101385D80;
    *(v62 + 32) = v31;
    AsyncStreamProvider.stream(initialEvents:)();

    v63 = v99;
    XPCSession.proxy.getter();
    v108 = v110[0];
    v64 = type metadata accessor for TaskPriority();
    (*(*(v64 - 8) + 56))(v103, 1, 1, v64);
    v66 = v104;
    v65 = v105;
    v67 = v94;
    (*(v104 + 16))(v94, v11, v105);
    v107 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CACF0);
    v68 = (*(v66 + 80) + 112) & ~*(v66 + 80);
    v69 = v3;
    v70 = (v93 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    v72 = v98;
    v73 = *v98;
    *(v71 + 56) = v98[1];
    v74 = *(v72 + 48);
    *(v71 + 72) = *(v72 + 32);
    *(v71 + 88) = v74;
    v75 = v107;
    *(v71 + 16) = v69;
    *(v71 + 24) = v75;
    *(v71 + 32) = v63;
    *(v71 + 104) = *(v72 + 64);
    *(v71 + 40) = v73;
    (*(v66 + 32))(v71 + v68, v67, v65);
    *(v71 + v70) = v69;
    *(v71 + ((v70 + 15) & 0xFFFFFFFFFFFFFFF8)) = v108;
    swift_retain_n();

    sub_1009871D4(v72, v110);
    swift_unknownObjectRetain();
    v76 = sub_100A838D4(0, 0, v103, &unk_1013CAEC8, v71);
    v77 = v95;
    XPCSession.identifier.getter();
    v78 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v69 + v78);
    *(v69 + v78) = 0x8000000000000000;
    sub_100FFF724(v76, v77, isUniquelyReferenced_nonNull_native);
    v80 = *(v96 + 8);
    v81 = v97;
    v80(v77, v97);
    *(v69 + v78) = v109;
    swift_endAccess();
    if ((*(v72 + 1) & 2) != 0)
    {
      v82 = v84;
      XPCSession.identifier.getter();
      swift_beginAccess();
      sub_100DE8BCC(v77, v82);
      v80(v77, v81);
      swift_endAccess();
      swift_unknownObjectRelease();

      return (*(v104 + 8))(v101, v105);
    }

    else
    {
      (*(v104 + 8))(v101, v105);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v90 = v27;
    v91 = v26;
    v107 = v23;
    v108 = v14;
    v32 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    swift_beginAccess();
    v83 = v3;
    v33 = *(v3 + v32);
    v34 = v33 + 64;
    v35 = 1 << *(v33 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v33 + 64);
    v38 = (v35 + 63) >> 6;
    v88 = v16 + 16;
    v86 = v16 + 32;
    v85 = (v16 + 8);
    v100 = v33;
    result = swift_bridgeObjectRetain_n();
    v40 = 0;
    v41 = v29;
    v31 = _swiftEmptyArrayStorage;
    v87 = v34;
    v92 = v12;
    for (i = v41; v37; result = sub_100986170(v108, v31 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v61, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange))
    {
      v106 = v31;
LABEL_11:
      v43 = __clz(__rbit64(v37)) | (v40 << 6);
      v44 = v100;
      v45 = *(v16 + 16);
      v45(v41, *(v100 + 48) + *(v16 + 72) * v43, v15);
      v46 = *(v44 + 56) + 16 * v43;
      v48 = *v46;
      v47 = *(v46 + 8);
      v49 = v91;
      v50 = (v41 + *(v91 + 48));
      *v50 = v48;
      v50[1] = v47;
      v51 = v41;
      v52 = v90;
      sub_1000D2A70(v51, v90, &qword_1016AF978, &qword_1013CAE60);
      v53 = *(v49 + 48);
      v54 = v16;
      v55 = v15;
      v56 = *(v52 + v53);
      v57 = v48;

      v15 = v55;
      v16 = v54;
      v58 = *(v54 + 32);
      v59 = v107;
      v58(v107, v52, v15);
      v45(v108, v59, v15);
      swift_storeEnumTagMultiPayload();
      v31 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100A5D9E8(0, v31[2] + 1, 1, v31);
      }

      v61 = v31[2];
      v60 = v31[3];
      v41 = i;
      v34 = v87;
      if (v61 >= v60 >> 1)
      {
        v31 = sub_100A5D9E8((v60 > 1), v61 + 1, 1, v31);
      }

      v37 &= v37 - 1;
      (*v85)(v107, v15);
      sub_10000B3A8(v41, &qword_1016AF978, &qword_1013CAE60);
      v31[2] = v61 + 1;
    }

    while (1)
    {
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v42 >= v38)
      {

        v3 = v83;
        v11 = v101;
        goto LABEL_18;
      }

      v37 = *(v34 + 8 * v42);
      ++v40;
      if (v37)
      {
        v106 = v31;
        v40 = v42;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10095A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[35] = a7;
  v8[36] = a8;
  v8[33] = a5;
  v8[34] = a6;
  v8[32] = a4;
  v10 = type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange(0);
  v8[37] = v10;
  v8[38] = *(v10 - 8);
  v8[39] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v8[40] = v11;
  v8[41] = *(v11 - 8);
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v12 = sub_1000BC4D4(&qword_1016AF9A0, &qword_1013CAED0);
  v8[46] = v12;
  v8[47] = *(v12 - 8);
  v8[48] = swift_task_alloc();

  return _swift_task_switch(sub_10095AA08, a7, 0);
}

uint64_t sub_10095AA08()
{
  v19 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = type metadata accessor for Logger();
  *(v0 + 392) = sub_1000076D4(v2, qword_10177B740);

  sub_1009871D4(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  sub_1007206EC(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136446466;
    v7 = XPCSession.debugDescription.getter();
    v9 = sub_1000136BC(v7, v8, &v18);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    if (*(v5 + 16))
    {
      v10 = *(*(v0 + 264) + 8);
      v11 = *(v5 + 16);
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1000136BC(v10, v11, &v18);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Session %{public}s, %{public}s is subscribed.", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000BC4D4(&qword_1016AF990, &qword_1013CAEB0);
  AsyncStream.makeAsyncIterator()();
  v13 = sub_100985CA0(&unk_1016AF830, type metadata accessor for SimpleBeaconUpdateService, &unk_1013CACF0);
  *(v0 + 424) = 257;
  *(v0 + 400) = v13;
  *(v0 + 408) = 0;
  v14 = *(v0 + 280);
  v15 = swift_task_alloc();
  *(v0 + 416) = v15;
  *v15 = v0;
  v15[1] = sub_10095ACC8;
  v16 = *(v0 + 368);

  return AsyncStream.Iterator.next(isolation:)(v0 + 208, v14, v13, v16);
}

uint64_t sub_10095ACC8()
{
  v1 = *(*v0 + 280);

  return _swift_task_switch(sub_10095ADD8, v1, 0);
}

uint64_t sub_10095ADD8(uint64_t a1)
{
  v2 = v1 + 208;
  if (!*(v1 + 208))
  {
    (*(*(v1 + 376) + 8))(*(v1 + 384), *(v1 + 368));

    v5 = *(v1 + 8);
    goto LABEL_5;
  }

  v3 = *(v1 + 216);
  v4 = *(v1 + 408);
  static Task<>.checkCancellation()();
  if (v4)
  {
    (*(*(v1 + 376) + 8))(*(v1 + 384), *(v1 + 368));

    v5 = *(v1 + 8);
LABEL_5:

    return v5();
  }

  v7 = (v1 + 424);
  *(v1 + 224) = _swiftEmptyArrayStorage;
  *(v1 + 232) = _swiftEmptyArrayStorage;
  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = *(v1 + 304);
    v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

    swift_beginAccess();
    v86 = *(v9 + 72);
    v87 = _swiftEmptyArrayStorage;
    v83 = _swiftEmptyArrayStorage;
    do
    {
      v11 = *(v1 + 328);
      sub_1009863FC(v10, *(v1 + 312), type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v13 = *(v11 + 32);
      if (EnumCaseMultiPayload > 1)
      {
        v40 = *(v1 + 336);
        v41 = *(v1 + 344);
        v42 = *(v1 + 320);
        v43 = *(v1 + 328);
        v13(v41, *(v1 + 312), v42);
        (*(v43 + 16))(v40, v41, v42);
        v44 = v87;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_100A5BFE0(0, v87[2] + 1, 1, v87);
        }

        v46 = v44[2];
        v45 = v44[3];
        if (v46 >= v45 >> 1)
        {
          v87 = sub_100A5BFE0((v45 > 1), v46 + 1, 1, v44);
        }

        else
        {
          v87 = v44;
        }

        v47 = *(v1 + 336);
        v48 = *(v1 + 344);
        v49 = *(v1 + 320);
        v50 = *(v1 + 328);
        v87[2] = v46 + 1;
        v13(v87 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v46, v47, v49);
        *(v1 + 232) = v87;
        (*(v50 + 8))(v48, v49);
        v2 = v1 + 208;
      }

      else
      {
        v14 = *(v1 + 360);
        v15 = *(v1 + 264);
        v13(v14, *(v1 + 312), *(v1 + 320));
        v16 = sub_1009570CC(v15, v14);
        if (v16)
        {
          v17 = v16;
          v18 = *(v1 + 360);
          v19 = *(v1 + 320);
          v20 = *(v1 + 328);
          (*(v20 + 16))(*(v1 + 352), v18, v19);
          v21 = v17;
          v22 = Logger.logObject.getter();
          LOBYTE(v17) = static os_log_type_t.debug.getter();
          v23 = v18;
          v24 = v22;
          v84 = *(v20 + 8);
          v84(v23, v19);
          v85 = v21;

          v82 = v17;
          v25 = os_log_type_enabled(v22, v17);
          v26 = *(v1 + 352);
          v27 = *(v1 + 320);
          if (v25)
          {
            log = v24;
            v28 = swift_slowAlloc();
            *(v2 + 40) = swift_slowAlloc();
            *v28 = 136315394;
            sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v29 = dispatch thunk of CustomStringConvertible.description.getter();
            v30 = v2;
            v32 = v31;
            v84(v26, v27);
            v33 = sub_1000136BC(v29, v32, (v30 + 40));

            *(v28 + 4) = v33;
            *(v28 + 12) = 2080;
            v34 = v85;
            v35 = [v85 name];
            if (v35)
            {
              v36 = v35;
              v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v39 = v38;
            }

            else
            {
              v39 = 0xE90000000000003ELL;
              v37 = 0x64656D616E6E753CLL;
            }

            v2 = v1 + 208;
            v51 = sub_1000136BC(v37, v39, (v1 + 248));

            *(v28 + 14) = v51;
            _os_log_impl(&_mh_execute_header, log, v82, "Session got beacon %s, name: %s", v28, 0x16u);
            swift_arrayDestroy();
          }

          else
          {

            v84(v26, v27);
            v34 = v21;
          }

          swift_beginAccess();
          v52 = v34;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v83 = *(v2 + 16);
          swift_endAccess();
        }

        else
        {
          (*(*(v1 + 328) + 8))(*(v1 + 360), *(v1 + 320));
        }
      }

      v10 += v86;
      --v8;
    }

    while (v8);

    v7 = (v1 + 424);
    v53 = v83;
  }

  else
  {
    v87 = _swiftEmptyArrayStorage;
    v53 = _swiftEmptyArrayStorage;
  }

  v54 = *(v1 + 264);

  sub_1009871D4(v54, v1 + 88);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();

  sub_1007206EC(v54);
  v57 = v53 >> 62;
  if (os_log_type_enabled(v55, v56))
  {
    v58 = *(v1 + 264);
    v59 = swift_slowAlloc();
    *(v1 + 240) = swift_slowAlloc();
    *v59 = 136447234;
    v60 = XPCSession.debugDescription.getter();
    v62 = sub_1000136BC(v60, v61, (v1 + 240));

    *(v59 + 4) = v62;
    *(v59 + 12) = 2082;
    if (*(v58 + 16))
    {
      v63 = *(*(v1 + 264) + 8);
      v64 = *(v58 + 16);
    }

    else
    {
      v63 = 0;
      v64 = 0xE000000000000000;
    }

    v67 = sub_1000136BC(v63, v64, (v1 + 240));

    *(v59 + 14) = v67;
    *(v59 + 22) = 2048;
    v7 = (v1 + 424);
    if (v57)
    {
      v68 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v68 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v87;
    v65 = (v1 + 425);
    v69 = *(v1 + 425);
    *(v59 + 24) = v68;
    *(v59 + 32) = 2048;
    *(v59 + 34) = v87[2];
    *(v59 + 42) = 1024;
    *(v59 + 44) = v69;
    _os_log_impl(&_mh_execute_header, v55, v56, "Session %{public}s, %{public}s update: %ld, remove: %ld, initial: %{BOOL}d.", v59, 0x30u);
    swift_arrayDestroy();
  }

  else
  {

    v65 = v7;
    v66 = v87;
  }

  v70 = *v65;
  if (v57)
  {
    v71 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v71 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = (v71 != 0) | v70;
  v73 = *(v1 + 288);
  if ((v72 & 1) == 0)
  {
    v75 = v7[1];
    if (v66[2] && v73)
    {
      goto LABEL_47;
    }

LABEL_49:

    goto LABEL_50;
  }

  if (!v73 || (sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr), , isa = Array._bridgeToObjectiveC()().super.isa, , [v73 receivedSimpleBeaconUpdates:isa], isa, !v87[2]))
  {
    v75 = 0;
    goto LABEL_49;
  }

  v75 = 0;
  v73 = *(v1 + 288);
LABEL_47:

  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v73 receivedSimpleBeaconRemovals:v76];

LABEL_50:

  v7[1] = v75;
  *v7 = 0;
  *(v1 + 408) = 0;
  v77 = *(v1 + 400);
  v78 = *(v1 + 280);
  v79 = swift_task_alloc();
  *(v1 + 416) = v79;
  *v79 = v1;
  v79[1] = sub_10095ACC8;
  v80 = *(v1 + 368);

  return AsyncStream.Iterator.next(isolation:)(v1 + 208, v78, v77, v80);
}

uint64_t sub_10095B808(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_10095B828, v1, 0);
}

uint64_t sub_10095B828()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    if (qword_101694AD8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177B740);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Cache is not empty.", v6, 2u);
    }

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_10095B9D4;

    return daemon.getter();
  }
}

uint64_t sub_10095B9D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[9] = a1;

  v3 = swift_task_alloc();
  v2[10] = v3;
  v4 = type metadata accessor for Daemon();
  v2[11] = v4;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[12] = v6;
  v7 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  *v3 = v9;
  v3[1] = sub_10095BBB4;

  return ActorServiceDaemon.getService<A>()(v4, MyServiceDeviceStoreService, v6, v7);
}

uint64_t sub_10095BBB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 104) = a1;

  if (v1)
  {
    v5 = *(v3 + 56);

    return _swift_task_switch(sub_10095C464, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    *(v3 + 112) = v6;
    *v6 = v4;
    v6[1] = sub_10095BD64;

    return daemon.getter();
  }
}

uint64_t sub_10095BD64(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 120) = a1;

  v5 = swift_task_alloc();
  *(v3 + 128) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10095BF18;
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10095BF18(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v3 = *(v4 + 56);

    v5 = sub_10095C578;
  }

  else
  {

    v5 = sub_10095C070;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10095C070()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10095C14C;
  v2 = *(v0 + 136);

  return unsafeBlocking<A>(context:_:)(v0 + 152, 0xD000000000000010, 0x800000010134A8C0, sub_100987078, v2, &type metadata for Bool);
}

uint64_t sub_10095C14C()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_10095C264, v1, 0);
}

uint64_t sub_10095C264()
{
  v1 = *(v0 + 104);
  *(v0 + 153) = *(v0 + 152);
  return _swift_task_switch(sub_10095C288, v1, 0);
}

uint64_t sub_10095C288()
{
  v1 = *(v0 + 56);
  *(v0 + 154) = *(*(v0 + 104) + OBJC_IVAR____TtC12searchpartyd31FindMyServiceDeviceStoreService_isDevicesFetched);
  return _swift_task_switch(sub_10095C2BC, v1, 0);
}

uint64_t sub_10095C2BC()
{
  v1 = *(v0 + 153) & *(v0 + 154);
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177B740);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Cache is empty, services are loaded: %{BOOL}d.", v5, 8u);
  }

  if (v1)
  {
    XPCSession.proxy.getter();
    v6 = *(v0 + 40);
    if (v6)
    {
      sub_100008BB8(0, &qword_1016AF988, SPInternalSimpleBeacon_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v6 receivedSimpleBeaconUpdates:isa];
      swift_unknownObjectRelease();
    }
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10095C464()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service, FindMyServiceDeviceStoreService / BeaconStoreActor.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10095C578()
{

  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service, FindMyServiceDeviceStoreService / BeaconStoreActor.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10095C694(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = v15 - v4 + 16;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v10 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_sessionUpdateTasks;
  swift_beginAccess();
  if (*(*(v1 + v10) + 16))
  {

    sub_1000210EC(a1);
    if (v11)
    {

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      Task.cancel()();
    }

    else
    {
    }
  }

  (*(v7 + 16))(v9, a1, v6);
  swift_beginAccess();
  sub_1001DFE38(0, v9);
  swift_endAccess();
  swift_beginAccess();
  sub_1010F6584(a1, v5);
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_ephemeralBeaconSessions;
  swift_beginAccess();
  sub_1001E5408(a1, v15);
  sub_10000B3A8(v15, &qword_1016AF878, &qword_1013CAD68);
  result = swift_endAccess();
  if (!*(*(v1 + v12) + 16))
  {
    if (*(v1 + 224))
    {

      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      Task.cancel()();
    }

    *(v1 + 224) = 0;
  }

  return result;
}

uint64_t sub_10095C98C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return _swift_task_switch(sub_10095C9B0, v2, 0);
}

uint64_t sub_10095C9B0()
{
  v16 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v15);
    _os_log_impl(&_mh_execute_header, v2, v3, "Pre-throttle updateAllBeacons reason %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  v0[2] = 0xD000000000000010;
  v0[3] = 0x8000000101366760;
  v11 = swift_allocObject();
  v0[7] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;
  v14 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.debounce(key:block:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.debounce(key:block:);

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_10095CC00;

  return (v14)(v0 + 2, &unk_1013CAE80, v11);
}

uint64_t sub_10095CC00()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return _swift_task_switch(sub_10095CD5C, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10095CD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for UUID();
  v3[5] = swift_task_alloc();

  return _swift_task_switch(sub_10095CE08, 0, 0);
}

uint64_t sub_10095CE08()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for WorkItemQueue.WorkItem();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v2;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v5 = v0[1];

  return v5(1);
}

uint64_t sub_10095CF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10095CF4C, 0, 0);
}

uint64_t sub_10095CF4C()
{
  v1 = *(v0 + 16);
  type metadata accessor for Transaction();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1008D5CB8;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_10095D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_10095D068, 0, 0);
}

uint64_t sub_10095D068()
{
  v11 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Post-throttle updateAllBeacons reason %s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_10095D224;

  return sub_10095D31C();
}

uint64_t sub_10095D224()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10095D31C()
{
  v1[8] = v0;
  v2 = type metadata accessor for UUID();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = sub_1000BC4D4(&qword_1016AF978, &qword_1013CAE60);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_10095D424, v0, 0);
}

uint64_t sub_10095D424()
{
  sub_10097C58C(0xD000000000000013, 0x8000000101366740);
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10095D4D4;

  return daemon.getter();
}

uint64_t sub_10095D4D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 128) = a1;

  v3 = swift_task_alloc();
  *(v2 + 136) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10095D6B0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10095D6B0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 144) = a1;

  v4 = *(v3 + 64);
  if (v1)
  {

    v5 = sub_10095E464;
  }

  else
  {

    v5 = sub_10095D814;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10095D814()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_1000076D4(v1, qword_10177B740);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = *(v5 + 272) != 0;

    _os_log_impl(&_mh_execute_header, v2, v3, "Updating all beacons for session(s), intent context: %{BOOL}d.", v6, 8u);
  }

  else
  {
  }

  v7 = v0[18];

  return _swift_task_switch(sub_10095D974, v7, 0);
}

uint64_t sub_10095D974()
{

  v1 = swift_task_alloc();
  v0[20] = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  v0[21] = v2;
  *v1 = v0;
  v1[1] = sub_10095DA64;
  v3 = v0[18];

  return unsafeBlocking<A>(context:_:)(v0 + 5, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_10095DA64()
{
  v1 = *(*v0 + 144);

  return _swift_task_switch(sub_10095DB7C, v1, 0);
}

uint64_t sub_10095DB7C()
{
  v1 = v0[8];
  v0[22] = v0[5];
  return _swift_task_switch(sub_10095DBA0, v1, 0);
}

uint64_t sub_10095DBA0()
{
  v0[6] = v0[22];
  v1 = swift_task_alloc();
  v0[23] = v1;
  v2 = sub_1000041A4(&qword_1016AF980, &unk_1016AA410, &unk_101395200, &protocol conformance descriptor for [A]);
  *v1 = v0;
  v1[1] = sub_10095DC94;
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[9];

  return Sequence.asyncMap<A>(_:)(&unk_1013CAE70, v4, v3, v5, v2);
}

uint64_t sub_10095DC94(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[8];

    return _swift_task_switch(sub_10095DDD8, v5, 0);
  }
}

uint64_t sub_10095DDD8()
{
  v46 = v0[12];
  v1 = v0[10];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  v0[26] = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = v0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v44 = v1;
  v45 = v4;
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = &_swiftEmptySetSingleton;
  v42 = v6;
  v43 = v5;
  v41 = v10;
  v5[27] = &_swiftEmptySetSingleton;
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = v46;
  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v17 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v17);
    ++v12;
    if (v9)
    {
      v47 = v13;
      while (1)
      {
        v20 = v5[13];
        v19 = v5[14];
        v21 = v5[9];
        v22 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v23 = v22 | (v17 << 6);
        (*(v44 + 16))(v19, *(v45 + 48) + *(v44 + 72) * v23, v21);
        v24 = *(v45 + 56) + 16 * v23;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = (v19 + *(v18 + 48));
        *v27 = v26;
        v27[1] = v25;
        sub_1000D2A70(v19, v20, &qword_1016AF978, &qword_1013CAE60);
        v28 = v20 + *(v18 + 48);
        v29 = *v28;
        v30 = v26;

        v31 = *(v28 + 8);
        v32 = *(v44 + 8);
        v5 = v43;
        v32(v20, v21);
        v33 = v43[14];
        if ((v31 & 0x2000) != 0)
        {
          result = sub_10000B3A8(v33, &qword_1016AF978, &qword_1013CAE60);
          v12 = v17;
          v6 = v42;
          v10 = v41;
          v13 = v47;
          v43[27] = v47;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v14 = v43[13];
          v15 = v43[11];
          v39 = v43[9];
          v40 = v43[14];
          sub_1000D2A70(v33, v14, &qword_1016AF978, &qword_1013CAE60);
          v16 = *&v14[*(v46 + 48)];

          sub_100DE8BCC(v15, v14);

          v32(v15, v39);
          result = sub_10000B3A8(v40, &qword_1016AF978, &qword_1013CAE60);
          v13 = v47;
          v12 = v17;
          v6 = v42;
          v10 = v41;
          v43[27] = v47;
          if (!v9)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v47 = v13;
        v17 = v12;
        v18 = v46;
      }
    }
  }

  v34 = v5[24];

  sub_100398278(_swiftEmptyArrayStorage);
  v35 = v5;
  v36 = sub_10000954C(v34);
  v35[28] = v36;

  v37 = swift_task_alloc();
  v35[29] = v37;
  *v37 = v35;
  v37[1] = sub_10095E140;
  v38 = v35[18];

  return sub_1009614D8(v36, v38);
}

uint64_t sub_10095E140(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 240) = a1;

  return _swift_task_switch(sub_10095E274, v2, 0);
}

uint64_t sub_10095E274()
{
  v1 = v0[30];
  v2 = v0[27];
  if (*(v1 + 16) <= v2[2] >> 3)
  {
    v13 = v0[27];
    sub_10087D5B4(v1);

    v3 = v13;
  }

  else
  {
    v3 = sub_100610BC8(v0[30], v2);
  }

  v4 = v0[8];
  sub_100960CC0(v3);
  if (*(v4 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) == 1)
  {
    *(v4 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeaconsStale) = 0;

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[26];
      v8 = v0[8];
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *(*(v8 + v7) + 16);

      _os_log_impl(&_mh_execute_header, v5, v6, "Unified beacons cached marked up to date, count %ld.", v9, 0xCu);
    }

    else
    {
    }
  }

  v10 = sub_100948F40(v3, 2u);

  v0[7] = v10;
  AsyncStreamProvider.yield(value:transaction:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10095E464()
{
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get BeaconStore.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10095E594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10095E6A8, 0, 0);
}

uint64_t sub_10095E6A8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v1[3];
  v0[12] = v3;
  v4 = v1[4];
  v0[13] = sub_1000035D0(v1, v3);
  v5 = *(*(v4 + 8) + 8);
  v0[14] = v5;
  v6 = *(v5 + 32);
  v0[15] = v6;
  v0[16] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0xA71B000000000000;
  v6(v3);

  return _swift_task_switch(sub_10095E768, v2, 0);
}

uint64_t sub_10095E768()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  (*(v2 + 16))(v1, v0[9], v3);
  v5 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[17] = v6;
  *(v6 + 16) = v4;
  v7 = *(v2 + 32);
  v0[18] = v7;
  v0[19] = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v6 + v5, v1, v3);

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_10095E8D0;
  v10 = v0[10];
  v9 = v0[11];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100986E5C, v6, v10);
}

uint64_t sub_10095E8D0()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10095EA44, 0, 0);
}

uint64_t sub_10095EA44()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 48) + 48);
  if (v3(v1, 1, v2) == 1)
  {
    (*(v0 + 120))(*(v0 + 96), *(v0 + 112));
    if (v3(v1, 1, v2) != 1)
    {
      sub_10000B3A8(*(v0 + 88), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v0 + 144))(*(v0 + 16), v1, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10095EB5C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_10095EC28, v1, 0);
}

uint64_t sub_10095EC28()
{
  v23 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v5, qword_10177B740);
  v6 = *(v3 + 16);
  v0[9] = v6;
  v0[10] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[7];
  v11 = v0[4];
  v12 = v0[5];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_1000136BC(v14, v16, &v22);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "updateBeaconConnectedState. Beacon: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v21);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[11] = v17;
  v19 = swift_task_alloc();
  v0[12] = v19;
  *v19 = v0;
  v19[1] = sub_10095EEBC;

  return daemon.getter();
}

uint64_t sub_10095EEBC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 104) = a1;

  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10095F098;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10095F098(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 24);
  if (v1)
  {

    v7 = sub_10095F3D8;
  }

  else
  {

    *(v5 + 120) = a1;
    v7 = sub_10095F200;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10095F200()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[5];
  v13 = v0[11];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v2(v8 + v7, v6, v5);
  v9 = sub_100B05044(v8);
  swift_setDeallocating();
  v13(v8 + v7, v5);
  swift_deallocClassInstance();
  type metadata accessor for WorkItemQueue.WorkItem();
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v9;
  v10[4] = v1;

  UUID.init()();
  WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v11 = v0[1];

  return v11();
}

uint64_t sub_10095F3D8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get BeaconStoreActor", v4, 2u);
  }

  v5 = *(v1 + 8);

  return v5();
}

void sub_10095F4B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  v6 = __chkstk_darwin(v4);
  v7 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v42 = &v40 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 272) || (v41 = v5, v16 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_connectedStateClients, swift_beginAccess(), v17 = *(v1 + v16), v7 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *(v17 + 16)))
  {
    static Date.trustedNow.getter(v15);
    Date.timeIntervalSince(_:)();
    v19 = v18;
    (*(v13 + 8))(v15, v12);
    if (v19 > 0.0)
    {
      v41 = v7;
      swift_beginAccess();
      if (*(*(v1 + 208) + 16))
      {

        sub_1000210EC(a1);
        if (v20)
        {

          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          Task.cancel()();
        }

        else
        {
        }
      }

      v21 = type metadata accessor for TaskPriority();
      v22 = v42;
      (*(*(v21 - 8) + 56))(v42, 1, 1, v21);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = v43;
      v40 = *(v43 + 16);
      v40(v9, a1, v4);
      v25 = (*(v24 + 80) + 48) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      *(v26 + 32) = v19;
      *(v26 + 40) = v23;
      (*(v24 + 32))(v26 + v25, v9, v4);
      v27 = a1;
      v28 = sub_100A838D4(0, 0, v22, &unk_1013CAE38, v26);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v2 + 208);
      *(v2 + 208) = 0x8000000000000000;
      sub_100FFF724(v28, v27, isUniquelyReferenced_nonNull_native);
      *(v2 + 208) = v44;
      swift_endAccess();
      if (qword_101694AD8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000076D4(v30, qword_10177B740);
      v31 = v41;
      v40(v41, v27, v4);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v45[0] = v35;
        *v34 = 141558275;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        v38 = v37;
        (*(v43 + 8))(v31, v4);
        v39 = sub_1000136BC(v36, v38, v45);

        *(v34 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Scheduled connection expiry for beacon %{private,mask.hash}s.", v34, 0x16u);
        sub_100007BAC(v35);
      }

      else
      {

        (*(v43 + 8))(v31, v4);
      }
    }
  }
}

uint64_t sub_10095FAC0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 40) = a1;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();

  return _swift_task_switch(sub_10095FB84, 0, 0);
}

uint64_t sub_10095FB84()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_10095FC60;

  return sub_100D24214(v1, v3, 0, 0, 1);
}

uint64_t sub_10095FC60()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10095FEC0;
  }

  else
  {
    v3 = sub_10095FDC8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10095FDC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    v2[1] = sub_10095FF24;
    v3 = v0[7];

    return sub_10095EB5C(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10095FEC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10095FF24()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10096005C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v3[10] = *(v5 + 64);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100960194, 0, 0);
}

uint64_t sub_100960194()
{
  v1 = *(v0 + 24);
  *(v0 + 16) = v1;
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v4 = *(v1 + 32);
  *(v0 + 192) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -(-1 << v4));
  }

  v7 = v5 & *(v1 + 56);
  swift_bridgeObjectRetain_n();
  if (v7)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 128) = v7;
    *(v0 + 136) = v8;
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 64);
    v13 = *(v1 + 48) + v2[9] * (__clz(__rbit64(v7)) | (v8 << 6));
    v14 = v2[2];
    *(v0 + 144) = v14;
    *(v0 + 152) = (v2 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v10, v13, v12);
    v15 = v2[4];
    *(v0 + 160) = v15;
    *(v0 + 168) = (v2 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v15(v11, v10, v12);

    return _swift_task_switch(sub_100960440, v3, 0);
  }

  else
  {
    v9 = 0;
    while (((63 - v6) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v7 = *(v1 + 8 * v9++ + 64);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 40);

    v17 = *(v0 + 16);
    type metadata accessor for WorkItemQueue.WorkItem();
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v17;
    v18[4] = v1;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100960440()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 72);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  (*(v0 + 144))(v2, *(v0 + 104), v4);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v0 + 176) = v7;
  *(v7 + 16) = v5;
  v1(v7 + v6, v2, v4);

  v8 = swift_task_alloc();
  *(v0 + 184) = v8;
  *v8 = v0;
  v8[1] = sub_10096058C;
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100988F3C, v7, v10);
}

uint64_t sub_10096058C()
{

  return _swift_task_switch(sub_1009606A4, 0, 0);
}

uint64_t sub_1009606A4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    (*(v2 + 8))(*(v0 + 104), v1);
    v4 = sub_10000B3A8(v3, &qword_1016980D0, &unk_10138F3B0);
  }

  else
  {
    v7 = *(v0 + 144);
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    (*(v0 + 160))(v10, v3, v1);
    v7(v11, v10, v1);
    sub_100DE8BCC(v8, v11);
    v12 = *(v2 + 8);
    v12(v8, v1);
    v12(v10, v1);
    v4 = (v12)(v9, v1);
  }

  v13 = *(v0 + 136);
  v14 = (*(v0 + 128) - 1) & *(v0 + 128);
  if (v14)
  {
    v15 = *(v0 + 24);
LABEL_10:
    *(v0 + 128) = v14;
    *(v0 + 136) = v13;
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v21 = *(v0 + 32);
    v22 = *(v15 + 48) + v20[9] * (__clz(__rbit64(v14)) | (v13 << 6));
    v23 = v20[2];
    *(v0 + 144) = v23;
    *(v0 + 152) = (v20 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v17, v22, v19);
    v24 = v20[4];
    *(v0 + 160) = v24;
    *(v0 + 168) = (v20 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v24(v18, v17, v19);
    v4 = sub_100960440;
    v5 = v21;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  else
  {
    while (1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return _swift_task_switch(v4, v5, v6);
      }

      if (v16 >= (((1 << *(v0 + 192)) + 63) >> 6))
      {
        break;
      }

      v15 = *(v0 + 24);
      v14 = *(v15 + 8 * v16 + 56);
      ++v13;
      if (v14)
      {
        v13 = v16;
        goto LABEL_10;
      }
    }

    v25 = *(v0 + 40);
    v26 = *(v0 + 24);

    v27 = *(v0 + 16);
    type metadata accessor for WorkItemQueue.WorkItem();
    v28 = swift_allocObject();
    v28[2] = v25;
    v28[3] = v27;
    v28[4] = v26;

    UUID.init()();
    WorkItemQueue.WorkItem.__allocating_init(identifier:block:completion:)();
    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_100960A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return _swift_task_switch(sub_100960A34, a1, 0);
}

uint64_t sub_100960A34()
{
  sub_100960CC0(*(v0 + 32));

  return _swift_task_switch(sub_100960A9C, 0, 0);
}

uint64_t sub_100960A9C()
{
  v12 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B740);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 141558275;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for UUID();
    sub_100985CA0(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = Set.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Updating sessions for BeaconRecord removed. Beacons: %{private,mask.hash}s", v4, 0x16u);
    sub_100007BAC(v5);
  }

  v0[2] = sub_100948F40(v0[4], 2u);
  AsyncStreamProvider.yield(value:transaction:)();

  v9 = v0[1];

  return v9();
}

void sub_100960CC0(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for UUID();
  v4 = *(v39 - 8);
  __chkstk_darwin(v39);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10097C58C(0xD00000000000002BLL, 0x80000001013666E0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  v11 = (v7 + 63) >> 6;
  v31[1] = v4 + 16;
  v33 = v4;
  v37 = v4 + 8;
  v35 = a1;

  v12 = 0;
  v34 = v2;
  v38 = v10;
  v13 = v39;
  while (v9)
  {
LABEL_11:
    v15 = *(v35 + 48);
    v17 = v32;
    v16 = v33;
    v36 = *(v33 + 72);
    (*(v33 + 16))(v32, v15 + v36 * (__clz(__rbit64(v9)) | (v12 << 6)), v13);
    v2 = v34;
    swift_beginAccess();
    v18 = sub_1000210EC(v17);
    v20 = v19;
    v21 = *(v16 + 8);
    v21(v17, v13);
    if (v20)
    {
      v22 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v2 + v22);
      v41[0] = v24;
      *(v2 + v22) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_10100B804();
        v24 = v41[0];
      }

      v21(*(v24 + 48) + v18 * v36, v39);

      sub_100AF97C0(v18, v24);
      *(v2 + v22) = v24;
    }

    v9 &= v9 - 1;
    swift_endAccess();
    v10 = v38;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      swift_beginAccess();
      v25 = *(v2 + v10);
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_17;
      }

      v27 = sub_1003A88D8(*(v25 + 16), 0);
      v28 = sub_1003AA6E8(&v40, v27 + 4, v26, v25);
      v29 = v40;

      sub_1000128F8(v29);
      if (v28 != v26)
      {
        __break(1u);
LABEL_17:
        v27 = _swiftEmptyArrayStorage;
      }

      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = v27;

      dispatch thunk of WorkItemQueue.enqueue(_:)();

      return;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_100961028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100961048, 0, 0);
}

uint64_t sub_100961048()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1008D5658;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_100961130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_10096114C, a2, 0);
}

uint64_t sub_10096114C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10097CAD8(0xD000000000000020, 0x8000000101366680);
  v0[6] = *(v2 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle);
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001013666B0;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100961298, v5, v4);
}

uint64_t sub_100961298()
{
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100961328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1009613D4;

  return sub_1009614D8(a2, a3);
}

uint64_t sub_1009613D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1009614D8(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  v4 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3[55] = v4;
  v3[56] = *(v4 - 8);
  v3[57] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = type metadata accessor for BeaconIdentifier(0);
  v3[61] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF930, &unk_1013C35B0);
  v3[62] = swift_task_alloc();
  v3[63] = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v3[66] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v3[67] = swift_task_alloc();
  v5 = type metadata accessor for SharedBeaconRecord(0);
  v3[68] = v5;
  v3[69] = *(v5 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[73] = v6;
  v7 = *(v6 - 8);
  v3[74] = v7;
  v3[75] = *(v7 + 64);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v8 = type metadata accessor for OwnedBeaconRecord(0);
  v3[86] = v8;
  v3[87] = *(v8 - 8);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v9 = type metadata accessor for ContinuousClock.Instant();
  v3[91] = v9;
  v3[92] = *(v9 - 8);
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v3[99] = swift_task_alloc();
  v3[100] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v3[101] = v10;
  v3[102] = *(v10 - 8);
  v3[103] = swift_task_alloc();

  return _swift_task_switch(sub_100961A10, v2, 0);
}

uint64_t sub_100961A10()
{
  sub_10097C58C(0xD000000000000030, 0x8000000101366600);
  ContinuousClock.init()();
  ContinuousClock.now.getter();
  v1 = qword_101698690;
  *(v0 + 832) = qword_101698690;
  v2 = __CFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v3 >= 0x3E8)
    {
      v3 = 1;
    }

    qword_101698690 = v3;
    v4 = swift_task_alloc();
    *(v0 + 840) = v4;
    *v4 = v0;
    v4[1] = sub_100961B08;
  }

  return daemon.getter();
}

uint64_t sub_100961B08(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[106] = a1;

  v3 = swift_task_alloc();
  v2[107] = v3;
  v4 = type metadata accessor for Daemon();
  v2[108] = v4;
  MyServiceDeviceStoreService = type metadata accessor for FindMyServiceDeviceStoreService(0);
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[109] = v6;
  v7 = sub_100985CA0(&unk_1016B1140, type metadata accessor for FindMyServiceDeviceStoreService, &unk_1013C3520);
  *v3 = v9;
  v3[1] = sub_100961CE8;

  return ActorServiceDaemon.getService<A>()(v4, MyServiceDeviceStoreService, v6, v7);
}

uint64_t sub_100961CE8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  else
  {
  }

  *(v4 + 880) = a1;
  v5 = *(v4 + 424);

  return _swift_task_switch(sub_100961E34, v5, 0);
}

uint64_t sub_100961E34()
{

  v1 = swift_task_alloc();
  v0[111] = v1;
  v2 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
  v0[112] = v2;
  *v1 = v0;
  v1[1] = sub_100961F24;
  v3 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 43, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v3, v2);
}

uint64_t sub_100961F24()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_10096203C, v1, 0);
}

uint64_t sub_10096203C()
{
  v1 = v0[54];
  v0[113] = v0[43];
  return _swift_task_switch(sub_100962060, v1, 0);
}

uint64_t sub_100962060()
{
  v1 = v0[113];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[87];
    v20 = v0[82];
    v21 = v0[86];
    v4 = v0[74];
    v5 = sub_1011254AC(0, v2, 0);
    v8 = 0;
    v22 = v3;
    v19 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = (v4 + 16);
    v10 = (v4 + 56);
    while (v8 < *(v1 + 16))
    {
      v11 = v0[89];
      v12 = v0[85];
      v13 = v0[73];
      sub_1009863FC(v19 + *(v22 + 72) * v8, v11, type metadata accessor for OwnedBeaconRecord);
      (*v9)(v12, v11 + *(v21 + 20), v13);
      (*v10)(v12, 0, 1, v13);
      sub_100988488(v11, type metadata accessor for OwnedBeaconRecord);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1011254AC((v14 > 1), v15 + 1, 1);
      }

      v16 = v0[85];
      ++v8;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v5 = sub_1000D2AD8(v16, _swiftEmptyArrayStorage + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v15, &qword_1016980D0, &unk_10138F3B0);
      if (v2 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v17 = v0[53];
    v0[114] = sub_10112B3C0(_swiftEmptyArrayStorage);

    v5 = sub_1009622A0;
    v6 = v17;
    v7 = 0;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1009622A0()
{

  v1 = swift_task_alloc();
  v0[115] = v1;
  *v1 = v0;
  v1[1] = sub_100962378;
  v2 = v0[112];
  v3 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 44, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4C0, v3, v2);
}

uint64_t sub_100962378()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100962490, v1, 0);
}

uint64_t sub_100962490()
{
  v1 = v0[54];
  v0[116] = v0[44];
  return _swift_task_switch(sub_1009624B4, v1, 0);
}

uint64_t sub_1009624B4()
{
  v1 = v0[116];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[87];
    v4 = v0[74];
    v25 = *(v0[86] + 28);
    v26 = v0[90];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = (v4 + 48);
    v22 = v4;
    v23 = (v4 + 32);
    v24 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[90];
      v9 = v0[84];
      v10 = v0[73];
      sub_1009863FC(v5, v8, type metadata accessor for OwnedBeaconRecord);
      sub_1000D2A70(v26 + v25, v9, &qword_1016980D0, &unk_10138F3B0);
      sub_100988488(v8, type metadata accessor for OwnedBeaconRecord);
      if ((*v6)(v9, 1, v10) == 1)
      {
        sub_10000B3A8(v0[84], &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        v11 = *v23;
        (*v23)(v0[81], v0[84], v0[73]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100A5BFE0(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_100A5BFE0((v12 > 1), v13 + 1, 1, v7);
        }

        v14 = v0[81];
        v15 = v0[73];
        *(v7 + 2) = v13 + 1;
        v11(&v7[((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v13], v14, v15);
      }

      v5 += v24;
      --v2;
    }

    while (v2);
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  v16 = v0[114];
  v17 = v0[53];
  v18 = sub_10000954C(v7);

  sub_100D1B4BC(v18);
  v20 = v19;

  v0[117] = sub_10039DE90(v20, v16);

  return _swift_task_switch(sub_10096274C, v17, 0);
}

uint64_t sub_10096274C()
{

  v1 = swift_task_alloc();
  *(v0 + 944) = v1;
  v2 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v1 = v0;
  v1[1] = sub_100962838;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 360, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v3, v2);
}

uint64_t sub_100962838()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100962950, v1, 0);
}

uint64_t sub_100962950()
{
  v1 = v0[54];
  v0[119] = v0[45];
  return _swift_task_switch(sub_100962974, v1, 0);
}

uint64_t sub_100962974()
{
  v1 = v0[119];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[82];
    v4 = v0[74];
    v5 = v0[69];
    v28 = v0[68];
    sub_1011254AC(0, v2, 0);
    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v26 = (v4 + 56);
    v27 = *(v5 + 72);
    do
    {
      v7 = v0[72];
      v8 = v0[67];
      sub_1009863FC(v6, v7, type metadata accessor for SharedBeaconRecord);
      sub_1000D2A70(v7 + *(v28 + 80), v8, &unk_1016AF890, &qword_1013926D0);
      sub_100988488(v7, type metadata accessor for SharedBeaconRecord);
      v9 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
      v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
      v11 = v0[83];
      if (v10 == 1)
      {
        v12 = v0[73];
        sub_10000B3A8(v0[67], &unk_1016AF890, &qword_1013926D0);
        (*v26)(v11, 1, 1, v12);
      }

      else
      {
        v13 = v0[67];
        sub_1000D2A70(v13 + *(v9 + 20), v0[83], &qword_1016980D0, &unk_10138F3B0);
        sub_100988488(v13, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1011254AC((v14 > 1), v15 + 1, 1);
      }

      v16 = v0[83];
      _swiftEmptyArrayStorage[2] = v15 + 1;
      sub_1000D2AD8(v16, _swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, &qword_1016980D0, &unk_10138F3B0);
      v6 += v27;
      --v2;
    }

    while (v2);
  }

  v17 = v0[117];
  v18 = v0[52];
  v19 = sub_10112B3C0(_swiftEmptyArrayStorage);

  v0[120] = sub_10039DE90(v19, v17);
  v0[46] = v18;
  v20 = swift_task_alloc();
  v0[121] = v20;
  v21 = sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  v22 = sub_1000041A4(&qword_1016AF940, &qword_1016AF8E0, &qword_101393130, &protocol conformance descriptor for Set<A>);
  *v20 = v0;
  v20[1] = sub_100962D00;
  v23 = v0[73];
  v24 = v0[53];

  return Sequence.asyncMap<A>(_:)(&unk_1013CADA8, v24, v21, v23, v22);
}

uint64_t sub_100962D00(uint64_t a1)
{
  v3 = *v2;
  v3[122] = a1;
  v3[123] = v1;

  if (v1)
  {
  }

  else
  {
    v5 = v3[54];

    return _swift_task_switch(sub_100962E48, v5, 0);
  }
}

uint64_t sub_100962E48()
{
  v12 = v0;
  if (qword_101694AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 992) = sub_1000076D4(v1, qword_10177B740);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "receivedSimpleBeaconUpdates - updating beacon identifiers: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 424);

  return _swift_task_switch(sub_100962FF0, v9, 0);
}

uint64_t sub_100962FF0()
{
  v1 = v0[122];
  v2 = v0[53];
  v3 = swift_allocObject();
  v0[125] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[126] = v4;
  v5 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v4 = v0;
  v4[1] = sub_10096310C;

  return unsafeBlocking<A>(context:_:)(v0 + 47, 0xD000000000000010, 0x800000010134A8C0, sub_1009867E0, v3, v5);
}

uint64_t sub_10096310C()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100963238, v1, 0);
}

uint64_t sub_100963238()
{
  v1 = v0[53];
  v0[127] = v0[47];
  return _swift_task_switch(sub_10096325C, v1, 0);
}

uint64_t sub_10096325C()
{

  v1 = swift_task_alloc();
  *(v0 + 1024) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100963348;
  v3 = *(v0 + 424);

  return unsafeBlocking<A>(context:_:)(v0 + 384, 0xD000000000000010, 0x800000010134A8C0, sub_10010EE68, v3, v2);
}

uint64_t sub_100963348()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100963460, v1, 0);
}

uint64_t sub_100963460()
{
  v0[129] = v0[48];

  v1 = swift_task_alloc();
  v0[130] = v1;
  v2 = sub_1000BC4D4(&qword_1016AF948, &unk_1013CADB0);
  *v1 = v0;
  v1[1] = sub_100963554;
  v3 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 49, 0xD000000000000010, 0x800000010134A8C0, sub_1009867E8, v3, v2);
}

uint64_t sub_100963554()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_10096366C, v1, 0);
}

uint64_t sub_10096366C()
{
  v0[131] = v0[49];

  v1 = swift_task_alloc();
  v0[132] = v1;
  v2 = sub_1000BC4D4(&unk_101698BD0, &unk_10138C210);
  *v1 = v0;
  v1[1] = sub_100963760;
  v3 = v0[53];

  return unsafeBlocking<A>(context:_:)(v0 + 50, 0xD000000000000010, 0x800000010134A8C0, sub_100111B10, v3, v2);
}

uint64_t sub_100963760()
{
  v1 = *(*v0 + 424);

  return _swift_task_switch(sub_100963878, v1, 0);
}

uint64_t sub_100963878()
{
  v1 = v0[54];
  v0[133] = v0[50];
  return _swift_task_switch(sub_10096389C, v1, 0);
}

uint64_t sub_10096389C()
{
  v98 = v0;
  v1 = *(v0 + 1016);
  v2 = *(v1 + 16);
  *(v0 + 1072) = v2;
  if (!v2)
  {

LABEL_17:
    v26 = *(v0 + 800);
    v27 = *(v0 + 760);
    v28 = *(v0 + 752);
    v90 = *(v0 + 744);
    v29 = *(v0 + 736);
    v30 = *(v0 + 728);
    swift_bridgeObjectRelease_n();

    ContinuousClock.now.getter();
    v31 = *(v29 + 16);
    v31(v28, v26, v30);
    v31(v90, v27, v30);
    swift_bridgeObjectRetain_n();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 752);
    v36 = *(v0 + 744);
    v37 = *(v0 + 736);
    v38 = *(v0 + 728);
    v85 = v0;
    if (v34)
    {
      v95 = v32;
      v39 = *(v0 + 448);
      v40 = *(v0 + 456);
      v91 = *(v0 + 440);
      v41 = *(v0 + 416);
      v42 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v97[0] = v93;
      *v42 = 136446466;
      static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
      sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
      v43 = static Duration.description<A>(_:_:units:)();
      v88 = v33;
      v45 = v44;
      (*(v39 + 8))(v40, v91);
      v46 = *(v37 + 8);
      v46(v36, v38);
      v84 = v46;
      v46(v35, v38);
      v47 = sub_1000136BC(v43, v45, v97);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2048;
      v48 = *(v41 + 16);

      *(v42 + 14) = v48;

      _os_log_impl(&_mh_execute_header, v95, v88, "session processing time: %{public}s, count: %ld.", v42, 0x16u);
      sub_100007BAC(v93);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v49 = *(v37 + 8);
      v49(v36, v38);
      v84 = v49;
      v49(v35, v38);
    }

    v50 = _swiftEmptyArrayStorage[2];
    if (v50)
    {
      v51 = v85[74];
      v92 = (v51 + 16);
      v52 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
      v53 = &_swiftEmptyArrayStorage[5];
      v87 = v85[54];
      v89 = (v51 + 8);
      do
      {
        v54 = v85[80];
        v55 = v85[76];
        v56 = v85[73];
        v94 = *v53;
        v96 = v85[79];
        v57 = *(v53 - 1);
        v58 = [v57 identifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        swift_beginAccess();
        v59 = v57;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97[0] = *(v87 + v52);
        *(v87 + v52) = 0x8000000000000000;
        sub_1010004D4(v59, v94, v54, isUniquelyReferenced_nonNull_native);
        *(v87 + v52) = v97[0];
        swift_endAccess();
        (*v92)(v55, v54, v56);
        sub_100DE8BCC(v96, v55);

        v61 = *v89;
        (*v89)(v96, v56);
        v61(v54, v56);
        v53 += 2;
        --v50;
      }

      while (v50);
    }

    v62 = v85[54];
    v63 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    swift_beginAccess();
    v64 = *(v62 + v63);
    v65 = *(v64 + 16);
    if (v65)
    {
      v66 = sub_1003A88D8(*(v64 + 16), 0);
      v67 = sub_1003AA6E8(v97, v66 + 4, v65, v64);
      v68 = v97[0];

      v5 = sub_1000128F8(v68);
      if (v67 != v65)
      {
LABEL_34:
        __break(1u);
        return _swift_task_switch(v5, v6, v7);
      }

      v69 = v66;
    }

    else
    {
      v69 = _swiftEmptyArrayStorage;
    }

    v73 = v85[103];
    v74 = v85[102];
    v83 = v85[101];
    v75 = v85[100];
    v76 = v85[95];
    v77 = v85[91];
    v78 = v85[54];
    v79 = swift_allocObject();
    *(v79 + 16) = v78;
    *(v79 + 24) = v69;

    dispatch thunk of WorkItemQueue.enqueue(_:)();

    v80 = sub_100948F40(&_swiftEmptySetSingleton, 1u);
    swift_bridgeObjectRelease_n();
    v85[51] = v80;
    AsyncStreamProvider.yield(value:transaction:)();

    v84(v76, v77);
    v84(v75, v77);
    (*(v74 + 8))(v73, v83);

    v81 = v85[1];

    return v81(&_swiftEmptySetSingleton);
  }

  *(v0 + 1296) = enum case for Feature.FindMy.itemSharing(_:);
  v3 = *(v0 + 984);
  *(v0 + 1104) = _swiftEmptyArrayStorage;
  *(v0 + 1096) = _swiftEmptyArrayStorage;
  *(v0 + 1088) = 0;
  v86 = v3;
  *(v0 + 1080) = v3;
  v4 = *(v1 + 16);

  if (!v4)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = 0;
  while (1)
  {
    sub_10001F280(v1 + 40 * v8 + 32, v0 + 16);
    ContinuousClock.now.getter();
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v9);
    if ((*(v10 + 112))(v9, v10))
    {
      v11 = *(v0 + 552);
      sub_10001F280(v0 + 16, v0 + 216);
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v12 = swift_dynamicCast();
      v13 = *(v11 + 56);
      if (v12)
      {
        v14 = *(v0 + 1296);
        v15 = *(v0 + 568);
        v16 = *(v0 + 528);
        v13(v16, 0, 1, *(v0 + 544));
        sub_100986170(v16, v15, type metadata accessor for SharedBeaconRecord);
        My = type metadata accessor for Feature.FindMy();
        *(v0 + 280) = My;
        *(v0 + 288) = sub_100985CA0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
        v18 = sub_1000280DC((v0 + 256));
        (*(*(My - 8) + 104))(v18, v14, My);
        LOBYTE(v14) = isFeatureEnabled(_:)();
        sub_100007BAC((v0 + 256));
        v19 = *(v0 + 568);
        if ((v14 & 1) == 0)
        {
          sub_100988488(v19, type metadata accessor for SharedBeaconRecord);
          goto LABEL_12;
        }

        v20 = *(v19 + *(*(v0 + 544) + 64));
        sub_100988488(v19, type metadata accessor for SharedBeaconRecord);
        if (v20 == 1 || v20 == 4)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v21 = *(v0 + 528);
        v13(v21, 1, 1, *(v0 + 544));
        sub_10000B3A8(v21, &unk_101698C30, &unk_101392630);
      }
    }

    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v22);
    if (((*(v23 + 168))(v22, v23) & 1) == 0)
    {
      break;
    }

LABEL_12:
    (*(*(v0 + 736) + 8))(*(v0 + 792), *(v0 + 728));
    v24 = *(v0 + 1072);
    v25 = *(v0 + 1088) + 1;
    v5 = sub_100007BAC((v0 + 16));
    if (v25 == v24)
    {
      goto LABEL_17;
    }

    v8 = *(v0 + 1088) + 1;
    *(v0 + 1104) = _swiftEmptyArrayStorage;
    *(v0 + 1096) = _swiftEmptyArrayStorage;
    *(v0 + 1088) = v8;
    *(v0 + 1080) = v86;
    v1 = *(v0 + 1016);
    if (v8 >= *(v1 + 16))
    {
      goto LABEL_33;
    }
  }

  v70 = *(v0 + 424);
  v71 = *(v0 + 40);
  v72 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v71);
  (*(*(*(v72 + 8) + 8) + 32))(v71);
  v5 = sub_100964448;
  v6 = v70;
  v7 = 0;

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100964448()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 424);
  v6 = *(v3 + 16);
  *(v0 + 1112) = v6;
  *(v0 + 1120) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v1, v4);
  v7 = *(v3 + 80);
  *(v0 + 1300) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 1128) = v9;
  *(v9 + 16) = v5;
  v10 = *(v3 + 32);
  *(v0 + 1136) = v10;
  *(v0 + 1144) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 1152) = v11;
  *v11 = v0;
  v11[1] = sub_1009645D4;
  v12 = *(v0 + 520);
  v13 = *(v0 + 504);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100988F38, v9, v13);
}

uint64_t sub_1009645D4()
{
  v1 = *v0;
  v2 = *(*v0 + 640);
  v3 = *(*v0 + 592);
  v4 = *(*v0 + 584);
  v5 = *(*v0 + 432);

  v6 = *(v3 + 8);
  *(v1 + 1160) = v6;
  *(v1 + 1168) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return _swift_task_switch(sub_100964774, v5, 0);
}

uint64_t sub_100964774()
{
  v1 = *(v0 + 512);
  sub_1000D2A70(*(v0 + 520), v1, &unk_1016AF8C0, &unk_1013A07A0);
  v2 = type metadata accessor for BeaconProductInfoRecord(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 512);
  if (v4 == 1)
  {
    sub_10000B3A8(v5, &unk_1016AF8C0, &unk_1013A07A0);
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + *(v2 + 36));
    sub_100988488(v5, type metadata accessor for BeaconProductInfoRecord);
  }

  *(v0 + 1304) = v6;
  if (v3(*(v0 + 520), 1, v2) == 1)
  {
    v7 = swift_task_alloc();
    *(v0 + 1176) = v7;
    *v7 = v0;
    v7[1] = sub_100964D8C;

    return daemon.getter();
  }

  v8 = v0 + 16;
  v9 = *(v0 + 1080);
  *(v0 + 1248) = v9;
  if (*(v0 + 880))
  {
    v10 = *(v0 + 624);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v11);

    sub_10083138C(v11, v12, v10);
    v13 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v13, 0);
  }

  v14 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 56))(v14, 1, 1, MyServiceDevice);
  v16 = *(v0 + 1032);
  v17 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v8;
  sub_1012BBB68(sub_1009867F0, v16, v17);
  *(v0 + 1264) = v9;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v19 = *(v0 + 464);
  v18 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v18, v19, &unk_101698BC0, &qword_10138C440);
  v20 = type metadata accessor for MemberSharingCircle(0);
  v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
  v22 = *(v0 + 464);
  if (v21 == 1)
  {
    sub_10000B3A8(v22, &unk_101698BC0, &qword_10138C440);
LABEL_15:
    v23 = 0;
    goto LABEL_17;
  }

  v24 = *(v22 + *(v20 + 40));
  sub_100988488(v22, type metadata accessor for MemberSharingCircle);
  v23 = v24 == 1;
LABEL_17:
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v25);
  v27 = (*(v26 + 144))(v25, v26);
  sub_10001F280(v0 + 16, v0 + 96);
  v28 = swift_dynamicCast();
  v29 = v28;
  if (v28)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v30);
  v32 = (*(v31 + 112))(v30, v31);
  v33 = *(v0 + 1304);
  if (v32)
  {
    if (*(v0 + 1304))
    {
      v34 = 0;
    }

    else
    {
      v34 = 512;
    }

    if ((v33 | v27))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v35 = *(v0 + 40);
    v36 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v35);
    v37 = (*(v36 + 96))(v35, v36);
    if ((v37 ^ 1 | v33))
    {
      v34 = 0;
    }

    else
    {
      v34 = 512;
    }

    if ((v37 ^ 1 | v33 | v27))
    {
      goto LABEL_32;
    }
  }

  if ((v29 | v23))
  {
    v34 = 7167;
  }

  else
  {
    v34 = 512;
  }

LABEL_32:
  v38 = *(v0 + 40);
  v39 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v38);
  if ((*(v39 + 88))(v38, v39) & 1) != 0 || (v40 = *(v0 + 40), v41 = *(v0 + 48), sub_1000035D0((v0 + 16), v40), ((*(v41 + 128))(v40, v41)) || (v42 = *(v0 + 40), v43 = *(v0 + 48), sub_1000035D0((v0 + 16), v42), (((*(v43 + 120))(v42, v43) | v27)))
  {
    v34 |= 0x200uLL;
  }

  *(v0 + 1272) = v34;
  v44 = swift_task_alloc();
  *(v0 + 1280) = v44;
  *v44 = v0;
  v44[1] = sub_1009668E4;
  v45 = *(v0 + 1064);
  v46 = *(v0 + 1048);
  v47 = *(v0 + 1032);
  v48 = *(v0 + 424);

  return sub_100968F34(v8, v48, v46, v45, v47);
}

uint64_t sub_100964D8C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 1184) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1192) = v5;
  v6 = type metadata accessor for LegacyServiceContainer();
  v7 = sub_100985CA0(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v5 = v4;
  v5[1] = sub_100964F40;
  v8 = *(v2 + 872);
  v9 = *(v2 + 864);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_100964F40(uint64_t a1)
{
  v4 = *v2;
  v4[150] = a1;
  v4[151] = v1;

  if (v1)
  {

    v5 = v4[54];
    v6 = sub_1009659D0;
  }

  else
  {
    v6 = sub_100965088;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100965088()
{
  v1 = v0[151];
  sub_10001B108();
  v0[152] = v2;
  v0[153] = v1;
  if (v1)
  {

    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
    v6 = sub_10096595C;
  }

  else
  {
    sub_100985CA0(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v7;
    v6 = sub_1009651B8;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1009651B8()
{
  v1 = *(v0 + 432);

  return _swift_task_switch(sub_100965230, v1, 0);
}

uint64_t sub_100965230()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 832);
  sub_10001F280(v0 + 16, v0 + 176);
  v3 = swift_allocObject();
  *(v0 + 1232) = v3;
  *(v3 + 16) = v1;
  sub_10000A748((v0 + 176), v3 + 24);
  *(v3 + 64) = v2;
  *(v3 + 72) = 0;

  v4 = swift_task_alloc();
  *(v0 + 1240) = v4;
  *v4 = v0;
  v4[1] = sub_100965358;

  return unsafeBlocking<A>(context:_:)(v4, 0xD000000000000019, 0x80000001013CA9B0, sub_1009868A8, v3, &type metadata for () + 1);
}

uint64_t sub_100965358()
{
  v1 = *(*v0 + 432);

  return _swift_task_switch(sub_100965484, v1, 0);
}

uint64_t sub_100965484()
{
  v1 = v0 + 16;

  v2 = *(v0 + 1224);
  *(v0 + 1248) = v2;
  if (*(v0 + 880))
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v4);

    sub_10083138C(v4, v5, v3);
    v6 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v6, 0);
  }

  v7 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 56))(v7, 1, 1, MyServiceDevice);
  v9 = *(v0 + 1032);
  v10 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v1;
  sub_1012BBB68(sub_1009867F0, v9, v10);
  *(v0 + 1264) = v2;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v12 = *(v0 + 464);
  v11 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v11, v12, &unk_101698BC0, &qword_10138C440);
  v13 = type metadata accessor for MemberSharingCircle(0);
  v14 = (*(*(v13 - 8) + 48))(v12, 1, v13);
  v15 = *(v0 + 464);
  if (v14 == 1)
  {
    sub_10000B3A8(v15, &unk_101698BC0, &qword_10138C440);
LABEL_8:
    v16 = 0;
    goto LABEL_10;
  }

  v17 = *(v15 + *(v13 + 40));
  sub_100988488(v15, type metadata accessor for MemberSharingCircle);
  v16 = v17 == 1;
LABEL_10:
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v18);
  v20 = (*(v19 + 144))(v18, v19);
  sub_10001F280(v0 + 16, v0 + 96);
  v21 = swift_dynamicCast();
  v22 = v21;
  if (v21)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v23 = *(v0 + 40);
  v24 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v23);
  v25 = (*(v24 + 112))(v23, v24);
  v26 = *(v0 + 1304);
  if (v25)
  {
    if (*(v0 + 1304))
    {
      v27 = 0;
    }

    else
    {
      v27 = 512;
    }

    if ((v26 | v20))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v28 = *(v0 + 40);
    v29 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v28);
    v30 = (*(v29 + 96))(v28, v29);
    if ((v30 ^ 1 | v26))
    {
      v27 = 0;
    }

    else
    {
      v27 = 512;
    }

    if ((v30 ^ 1 | v26 | v20))
    {
      goto LABEL_25;
    }
  }

  if ((v22 | v16))
  {
    v27 = 7167;
  }

  else
  {
    v27 = 512;
  }

LABEL_25:
  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v31);
  if ((*(v32 + 88))(v31, v32) & 1) != 0 || (v33 = *(v0 + 40), v34 = *(v0 + 48), sub_1000035D0((v0 + 16), v33), ((*(v34 + 128))(v33, v34)) || (v35 = *(v0 + 40), v36 = *(v0 + 48), sub_1000035D0((v0 + 16), v35), (((*(v36 + 120))(v35, v36) | v20)))
  {
    v27 |= 0x200uLL;
  }

  *(v0 + 1272) = v27;
  v37 = swift_task_alloc();
  *(v0 + 1280) = v37;
  *v37 = v0;
  v37[1] = sub_1009668E4;
  v38 = *(v0 + 1064);
  v39 = *(v0 + 1048);
  v40 = *(v0 + 1032);
  v41 = *(v0 + 424);

  return sub_100968F34(v1, v41, v39, v38, v40);
}

uint64_t sub_10096595C()
{

  v1 = *(v0 + 432);

  return _swift_task_switch(sub_1009659D0, v1, 0);
}

uint64_t sub_1009659D0()
{
  v1 = v0 + 16;
  *(v0 + 1248) = 0;
  if (*(v0 + 880))
  {
    v2 = *(v0 + 624);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v3);

    sub_10083138C(v3, v4, v2);
    v5 = *(v0 + 880);

    return _swift_task_switch(sub_100965EA0, v5, 0);
  }

  v6 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 56))(v6, 1, 1, MyServiceDevice);
  v8 = *(v0 + 1032);
  v9 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v1;
  sub_1012BBB68(sub_1009867F0, v8, v9);
  *(v0 + 1264) = 0;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v11 = *(v0 + 464);
  v10 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v10, v11, &unk_101698BC0, &qword_10138C440);
  v12 = type metadata accessor for MemberSharingCircle(0);
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  v14 = *(v0 + 464);
  if (v13 == 1)
  {
    sub_10000B3A8(v14, &unk_101698BC0, &qword_10138C440);
LABEL_8:
    v15 = 0;
    goto LABEL_10;
  }

  v16 = *(v14 + *(v12 + 40));
  sub_100988488(v14, type metadata accessor for MemberSharingCircle);
  v15 = v16 == 1;
LABEL_10:
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v17);
  v19 = (*(v18 + 144))(v17, v18);
  sub_10001F280(v0 + 16, v0 + 96);
  v20 = swift_dynamicCast();
  v21 = v20;
  if (v20)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v22);
  v24 = (*(v23 + 112))(v22, v23);
  v25 = *(v0 + 1304);
  if (v24)
  {
    if (*(v0 + 1304))
    {
      v26 = 0;
    }

    else
    {
      v26 = 512;
    }

    if ((v25 | v19))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v27 = *(v0 + 40);
    v28 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v27);
    v29 = (*(v28 + 96))(v27, v28);
    if ((v29 ^ 1 | v25))
    {
      v26 = 0;
    }

    else
    {
      v26 = 512;
    }

    if ((v29 ^ 1 | v25 | v19))
    {
      goto LABEL_25;
    }
  }

  if ((v21 | v15))
  {
    v26 = 7167;
  }

  else
  {
    v26 = 512;
  }

LABEL_25:
  v30 = *(v0 + 40);
  v31 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v30);
  if ((*(v31 + 88))(v30, v31) & 1) != 0 || (v32 = *(v0 + 40), v33 = *(v0 + 48), sub_1000035D0((v0 + 16), v32), ((*(v33 + 128))(v32, v33)) || (v34 = *(v0 + 40), v35 = *(v0 + 48), sub_1000035D0((v0 + 16), v34), (((*(v35 + 120))(v34, v35) | v19)))
  {
    v26 |= 0x200uLL;
  }

  *(v0 + 1272) = v26;
  v36 = swift_task_alloc();
  *(v0 + 1280) = v36;
  *v36 = v0;
  v36[1] = sub_1009668E4;
  v37 = *(v0 + 1064);
  v38 = *(v0 + 1048);
  v39 = *(v0 + 1032);
  v40 = *(v0 + 424);

  return sub_100968F34(v1, v40, v38, v37, v39);
}

uint64_t sub_100965EA0()
{
  if (*(v0[110] + 128))
  {
    v19 = v0[156];
    v1 = v0[139];
    v2 = v0[78];
    v3 = v0[73];
    v5 = v0[61];
    v4 = v0[62];
    v6 = v0[60];
    v7 = getuid();
    sub_1000294F0(v7);
    v1(v5 + *(v6 + 20), v2, v3);
    sub_100730604(v5, v4);
    v8 = v0[145];
    v9 = v0[78];
    v10 = v0[73];
    v11 = v0[61];
    if (v19)
    {
      v12 = v0[54];

      sub_100988488(v11, type metadata accessor for BeaconIdentifier);
      v8(v9, v10);

      v13 = sub_100966098;
      v14 = v12;
      goto LABEL_7;
    }

    sub_100988488(v0[61], type metadata accessor for BeaconIdentifier);
    v8(v9, v10);

    v17 = 0;
  }

  else
  {
    v15 = v0[62];
    (v0[145])(v0[78], v0[73]);

    MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
    (*(*(MyServiceDevice - 8) + 56))(v15, 1, 1, MyServiceDevice);
    v17 = v0[156];
  }

  v0[157] = v17;
  v14 = v0[54];
  v13 = sub_1009664E0;
LABEL_7:

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_100966098()
{
  v1 = *(v0 + 496);
  MyServiceDevice = type metadata accessor for FindMyServiceDevice(0);
  (*(*(MyServiceDevice - 8) + 56))(v1, 1, 1, MyServiceDevice);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_1012BBB68(sub_1009867F0, v3, v4);
  *(v0 + 1264) = 0;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v6 = *(v0 + 464);
  v5 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v5, v6, &unk_101698BC0, &qword_10138C440);
  v7 = type metadata accessor for MemberSharingCircle(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  v9 = *(v0 + 464);
  if (v8 == 1)
  {
    sub_10000B3A8(v9, &unk_101698BC0, &qword_10138C440);
LABEL_4:
    v10 = 0;
    goto LABEL_6;
  }

  v11 = *(v9 + *(v7 + 40));
  sub_100988488(v9, type metadata accessor for MemberSharingCircle);
  v10 = v11 == 1;
LABEL_6:
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v12);
  v14 = (*(v13 + 144))(v12, v13);
  sub_10001F280(v0 + 16, v0 + 96);
  v15 = swift_dynamicCast();
  v16 = v15;
  if (v15)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v17 = *(v0 + 40);
  v18 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v17);
  v19 = (*(v18 + 112))(v17, v18);
  v20 = *(v0 + 1304);
  if (v19)
  {
    if (*(v0 + 1304))
    {
      v21 = 0;
    }

    else
    {
      v21 = 512;
    }

    if ((v20 | v14))
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v16 | v10))
    {
      v21 = 7167;
    }

    else
    {
      v21 = 512;
    }

    goto LABEL_21;
  }

  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v22);
  v24 = (*(v23 + 96))(v22, v23);
  if ((v24 ^ 1 | v20))
  {
    v21 = 0;
  }

  else
  {
    v21 = 512;
  }

  if (((v24 ^ 1 | v20 | v14) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v25 = *(v0 + 40);
  v26 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v25);
  if ((*(v26 + 88))(v25, v26) & 1) != 0 || (v27 = *(v0 + 40), v28 = *(v0 + 48), sub_1000035D0((v0 + 16), v27), ((*(v28 + 128))(v27, v28)) || (v29 = *(v0 + 40), v30 = *(v0 + 48), sub_1000035D0((v0 + 16), v29), (((*(v30 + 120))(v29, v30) | v14)))
  {
    v21 |= 0x200uLL;
  }

  *(v0 + 1272) = v21;
  v31 = swift_task_alloc();
  *(v0 + 1280) = v31;
  *v31 = v0;
  v31[1] = sub_1009668E4;
  v32 = *(v0 + 1064);
  v33 = *(v0 + 1048);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 424);

  return sub_100968F34(v0 + 16, v35, v33, v32, v34);
}

uint64_t sub_1009664E0()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 472);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_1012BBB68(sub_1009867F0, v2, v3);
  *(v0 + 1264) = v1;

  sub_10001F280(v0 + 16, v0 + 56);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (!swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  sub_100988488(*(v0 + 560), type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v4, v5, &unk_101698BC0, &qword_10138C440);
  v6 = type metadata accessor for MemberSharingCircle(0);
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  v8 = *(v0 + 464);
  if (v7 == 1)
  {
    sub_10000B3A8(v8, &unk_101698BC0, &qword_10138C440);
LABEL_4:
    v9 = 0;
    goto LABEL_6;
  }

  v10 = *(v8 + *(v6 + 40));
  sub_100988488(v8, type metadata accessor for MemberSharingCircle);
  v9 = v10 == 1;
LABEL_6:
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v11);
  v13 = (*(v12 + 144))(v11, v12);
  sub_10001F280(v0 + 16, v0 + 96);
  v14 = swift_dynamicCast();
  v15 = v14;
  if (v14)
  {
    sub_100988488(*(v0 + 704), type metadata accessor for OwnedBeaconRecord);
  }

  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v16);
  v18 = (*(v17 + 112))(v16, v17);
  v19 = *(v0 + 1304);
  if (v18)
  {
    if (*(v0 + 1304))
    {
      v20 = 0;
    }

    else
    {
      v20 = 512;
    }

    if ((v19 | v13))
    {
      goto LABEL_21;
    }

LABEL_18:
    if ((v15 | v9))
    {
      v20 = 7167;
    }

    else
    {
      v20 = 512;
    }

    goto LABEL_21;
  }

  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v21);
  v23 = (*(v22 + 96))(v21, v22);
  if ((v23 ^ 1 | v19))
  {
    v20 = 0;
  }

  else
  {
    v20 = 512;
  }

  if (((v23 ^ 1 | v19 | v13) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v24 = *(v0 + 40);
  v25 = *(v0 + 48);
  sub_1000035D0((v0 + 16), v24);
  if ((*(v25 + 88))(v24, v25) & 1) != 0 || (v26 = *(v0 + 40), v27 = *(v0 + 48), sub_1000035D0((v0 + 16), v26), ((*(v27 + 128))(v26, v27)) || (v28 = *(v0 + 40), v29 = *(v0 + 48), sub_1000035D0((v0 + 16), v28), (((*(v29 + 120))(v28, v29) | v13)))
  {
    v20 |= 0x200uLL;
  }

  *(v0 + 1272) = v20;
  v30 = swift_task_alloc();
  *(v0 + 1280) = v30;
  *v30 = v0;
  v30[1] = sub_1009668E4;
  v31 = *(v0 + 1064);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1032);
  v34 = *(v0 + 424);

  return sub_100968F34(v0 + 16, v34, v32, v31, v33);
}

uint64_t sub_1009668E4(uint64_t a1)
{
  v2 = *(*v1 + 432);
  *(*v1 + 1288) = a1;

  return _swift_task_switch(sub_1009669FC, v2, 0);
}

uint64_t sub_1009669FC()
{
  v179 = v0;
  v1 = *(v0 + 1160);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 640);
  v4 = *(v0 + 584);
  p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
  v6 = [*(v0 + 1288) identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v2) = sub_1005C8A30(v3, v2);
  v1(v3, v4);
  v162 = v0;
  if (v2)
  {
    v160 = *(v0 + 1096);
    v161 = *(v0 + 1104);
  }

  else
  {
    v7 = *(v0 + 1288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v161 = *(v0 + 1104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_47:
      v161 = sub_100A5E50C(0, *(v161 + 2) + 1, 1, v161);
    }

    v10 = *(v161 + 2);
    v9 = *(v161 + 3);
    if (v10 >= v9 >> 1)
    {
      v161 = sub_100A5E50C((v9 > 1), v10 + 1, 1, v161);
    }

    v11 = *(v162 + 1288);
    v12 = *(v162 + 1272);
    *(v161 + 2) = v10 + 1;
    v13 = &v161[16 * v10];
    *(v13 + 4) = v11;
    *(v13 + 5) = v12;
    v14 = [v11 p_weak_ivar_lyt[388]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = swift_isUniquelyReferenced_nonNull_native();
    v160 = *(v162 + 1096);
    if ((v15 & 1) == 0)
    {
      v160 = sub_100A5BFE0(0, v160[2] + 1, 1, v160);
    }

    v17 = v160[2];
    v16 = v160[3];
    if (v17 >= v16 >> 1)
    {
      v160 = sub_100A5BFE0((v16 > 1), v17 + 1, 1, v160);
    }

    v18 = *(v162 + 1136);
    v19 = *(v162 + 1300);
    v20 = *(v162 + 616);
    v21 = *(v162 + 592);
    v22 = *(v162 + 584);

    v160[2] = v17 + 1;
    v23 = v160 + ((v19 + 32) & ~v19) + *(v21 + 72) * v17;
    v0 = v162;
    v18(v23, v20, v22);
  }

  ContinuousClock.now.getter();
  ContinuousClock.Instant.duration(to:)();
  if (Duration.milliseconds.getter() < 101)
  {
    v53 = *(v0 + 1288);
    v54 = *(v0 + 792);
    v55 = *(v0 + 784);
    v56 = *(v162 + 736);
    v57 = *(v162 + 728);
    v58 = *(v162 + 496);
    v59 = *(v162 + 472);

    v60 = *(v56 + 8);
    v60(v55, v57);
    sub_10000B3A8(v59, &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v58, &unk_1016AF930, &unk_1013C35B0);
    v60(v54, v57);
    goto LABEL_15;
  }

  v24 = *(v0 + 792);
  v25 = *(v0 + 784);
  v26 = *(v0 + 776);
  v27 = *(v0 + 768);
  v28 = *(v162 + 736);
  v29 = *(v162 + 728);
  sub_10001F280(v162 + 16, v162 + 136);
  v30 = *(v28 + 16);
  v30(v26, v24, v29);
  v30(v27, v25, v29);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v162 + 1288);
  if (v33)
  {
    v35 = *(v162 + 1160);
    v175 = *(v162 + 792);
    v168 = *(v162 + 784);
    v154 = *(v162 + 776);
    v153 = *(v162 + 768);
    v36 = *(v162 + 736);
    v155 = *(v162 + 728);
    v37 = *(v162 + 640);
    v38 = *(v162 + 584);
    v172 = *(v162 + 496);
    v163 = *(v162 + 1288);
    v165 = *(v162 + 472);
    v39 = *(v162 + 456);
    v40 = *(v162 + 448);
    v156 = *(v162 + 440);
    v41 = swift_slowAlloc();
    v178[0] = swift_slowAlloc();
    *v41 = 141558531;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2081;
    v42 = *(v162 + 160);
    v157 = v32;
    v43 = *(v162 + 168);
    sub_1000035D0((v162 + 136), v42);
    (*(*(*(v43 + 8) + 8) + 32))(v42);
    sub_100985CA0(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v44 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v45;
    v35(v37, v38);
    sub_100007BAC((v162 + 136));
    v47 = sub_1000136BC(v44, v46, v178);

    *(v41 + 14) = v47;
    *(v41 + 22) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v48 = static Duration.description<A>(_:_:units:)();
    v50 = v49;
    (*(v40 + 8))(v39, v156);
    v51 = *(v36 + 8);
    v51(v153, v155);
    v51(v154, v155);
    v52 = sub_1000136BC(v48, v50, v178);

    *(v41 + 24) = v52;
    _os_log_impl(&_mh_execute_header, v31, v157, "Slow beacon processing time for %{private,mask.hash}s: %{public}s", v41, 0x20u);
    swift_arrayDestroy();

    v51(v168, v155);
    sub_10000B3A8(v165, &unk_101698BC0, &qword_10138C440);
    sub_10000B3A8(v172, &unk_1016AF930, &unk_1013C35B0);
    v51(v175, v155);
LABEL_15:
    v61 = v162;
    goto LABEL_17;
  }

  v62 = *(v162 + 792);
  v63 = *(v162 + 784);
  v64 = *(v162 + 776);
  v65 = *(v162 + 768);
  v66 = *(v162 + 736);
  v67 = *(v162 + 728);
  v68 = *(v162 + 496);
  v69 = *(v162 + 472);

  v70 = *(v66 + 8);
  v70(v65, v67);
  v70(v64, v67);
  v70(v63, v67);
  sub_10000B3A8(v69, &unk_101698BC0, &qword_10138C440);
  sub_10000B3A8(v68, &unk_1016AF930, &unk_1013C35B0);
  v70(v62, v67);
  v61 = v162;
  sub_100007BAC((v162 + 136));
LABEL_17:
  sub_10000B3A8(*(v61 + 520), &unk_1016AF8C0, &unk_1013A07A0);
  v159 = *(v61 + 1264);
  v71 = *(v61 + 1072);
  v72 = *(v61 + 1088) + 1;
  sub_100007BAC((v61 + 16));
  if (v72 != v71)
  {
    p_weak_ivar_lyt = &unk_1016AA470;
    do
    {
      v100 = *(v61 + 1088) + 1;
      *(v61 + 1104) = v161;
      *(v61 + 1096) = v160;
      *(v61 + 1088) = v100;
      *(v61 + 1080) = v159;
      v101 = *(v61 + 1016);
      if (v100 >= *(v101 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      sub_10001F280(v101 + 40 * v100 + 32, v61 + 16);
      ContinuousClock.now.getter();
      v102 = *(v61 + 40);
      v103 = *(v61 + 48);
      sub_1000035D0((v61 + 16), v102);
      if ((*(v103 + 112))(v102, v103))
      {
        v104 = *(v61 + 552);
        sub_10001F280(v61 + 16, v61 + 216);
        sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
        v105 = swift_dynamicCast();
        v106 = *(v104 + 56);
        if (v105)
        {
          v107 = *(v61 + 1296);
          v108 = *(v61 + 568);
          v109 = *(v61 + 528);
          v106(v109, 0, 1, *(v61 + 544));
          sub_100986170(v109, v108, type metadata accessor for SharedBeaconRecord);
          My = type metadata accessor for Feature.FindMy();
          *(v61 + 280) = My;
          *(v61 + 288) = sub_100985CA0(&qword_1016AF950, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
          v111 = sub_1000280DC((v61 + 256));
          (*(*(My - 8) + 104))(v111, v107, My);
          LOBYTE(v107) = isFeatureEnabled(_:)();
          sub_100007BAC((v61 + 256));
          v112 = *(v61 + 568);
          if ((v107 & 1) == 0)
          {
            sub_100988488(v112, type metadata accessor for SharedBeaconRecord);
            goto LABEL_23;
          }

          v113 = *(v112 + *(*(v61 + 544) + 64));
          sub_100988488(v112, type metadata accessor for SharedBeaconRecord);
          if (v113 == 1 || v113 == 4)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v95 = *(v61 + 528);
          v106(v95, 1, 1, *(v61 + 544));
          sub_10000B3A8(v95, &unk_101698C30, &unk_101392630);
        }
      }

      v96 = *(v61 + 40);
      v97 = *(v61 + 48);
      sub_1000035D0((v61 + 16), v96);
      if (((*(v97 + 168))(v96, v97) & 1) == 0)
      {
        v149 = *(v61 + 424);
        v150 = *(v61 + 40);
        v151 = *(v61 + 48);
        sub_1000035D0((v61 + 16), v150);
        (*(*(*(v151 + 8) + 8) + 32))(v150);
        v135 = sub_100964448;
        v136 = v149;
        v137 = 0;

        return _swift_task_switch(v135, v136, v137);
      }

LABEL_23:
      (*(*(v61 + 736) + 8))(*(v61 + 792), *(v61 + 728));
      v98 = *(v61 + 1072);
      v99 = *(v61 + 1088) + 1;
      sub_100007BAC((v61 + 16));
    }

    while (v99 != v98);
  }

  v73 = *(v61 + 800);
  v74 = *(v61 + 760);
  v75 = *(v61 + 752);
  v169 = *(v61 + 744);
  v76 = *(v61 + 736);
  v77 = *(v61 + 728);
  swift_bridgeObjectRelease_n();

  ContinuousClock.now.getter();
  v78 = *(v76 + 16);
  v78(v75, v73, v77);
  v78(v169, v74, v77);
  swift_bridgeObjectRetain_n();
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.default.getter();
  v81 = os_log_type_enabled(v79, v80);
  v82 = *(v61 + 752);
  v83 = *(v61 + 744);
  v84 = *(v61 + 736);
  v85 = *(v61 + 728);
  if (v81)
  {
    v176 = v80;
    v87 = *(v61 + 448);
    v86 = *(v61 + 456);
    v166 = *(v61 + 440);
    v170 = *(v61 + 416);
    v88 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v178[0] = v173;
    *v88 = 136446466;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100985CA0(&qword_1016C11E0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    v89 = static Duration.description<A>(_:_:units:)();
    v91 = v90;
    (*(v87 + 8))(v86, v166);
    v92 = *(v84 + 8);
    v92(v83, v85);
    v158 = v92;
    v92(v82, v85);
    v93 = sub_1000136BC(v89, v91, v178);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2048;
    v94 = *(v170 + 16);

    *(v88 + 14) = v94;

    _os_log_impl(&_mh_execute_header, v79, v176, "session processing time: %{public}s, count: %ld.", v88, 0x16u);
    sub_100007BAC(v173);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    v114 = *(v84 + 8);
    v114(v83, v85);
    v158 = v114;
    v114(v82, v85);
  }

  v115 = *(v161 + 2);
  v116 = &ShareStopUseCase.weak_ivar_lyt;
  if (v115)
  {
    v117 = *(v162 + 592);
    v118 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
    v171 = (v117 + 16);
    v164 = *(v162 + 432);
    v167 = (v117 + 8);
    v119 = (v161 + 40);
    do
    {
      v120 = *(v162 + 640);
      v121 = *(v162 + 608);
      v122 = *(v162 + 584);
      v174 = *v119;
      v177 = *(v162 + 632);
      v123 = *(v119 - 1);
      v124 = [v123 v116[388]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      swift_beginAccess();
      v125 = v123;
      v126 = swift_isUniquelyReferenced_nonNull_native();
      v178[0] = *(v164 + v118);
      *(v164 + v118) = 0x8000000000000000;
      sub_1010004D4(v125, v174, v120, v126);
      *(v164 + v118) = v178[0];
      swift_endAccess();
      (*v171)(v121, v120, v122);
      sub_100DE8BCC(v177, v121);

      v116 = (&ShareStopUseCase + 56);
      v127 = *v167;
      (*v167)(v177, v122);
      v127(v120, v122);
      v119 += 2;
      --v115;
    }

    while (v115);
  }

  v128 = *(v162 + 432);
  v129 = OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cachedUnifiedBeacons;
  swift_beginAccess();
  v130 = *(v128 + v129);
  v131 = *(v130 + 16);
  if (v131)
  {
    v132 = sub_1003A88D8(*(v130 + 16), 0);
    v133 = sub_1003AA6E8(v178, v132 + 4, v131, v130);
    v134 = v178[0];

    v135 = sub_1000128F8(v134);
    if (v133 != v131)
    {
      __break(1u);
      return _swift_task_switch(v135, v136, v137);
    }

    v138 = v132;
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v139 = *(v162 + 824);
  v140 = *(v162 + 816);
  v152 = *(v162 + 808);
  v141 = *(v162 + 800);
  v142 = *(v162 + 760);
  v143 = *(v162 + 728);
  v144 = *(v162 + 432);
  v145 = swift_allocObject();
  *(v145 + 16) = v144;
  *(v145 + 24) = v138;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v146 = sub_100948F40(&_swiftEmptySetSingleton, 1u);

  *(v162 + 408) = v146;
  AsyncStreamProvider.yield(value:transaction:)();

  v158(v142, v143);
  v158(v141, v143);
  (*(v140 + 8))(v139, v152);

  v147 = *(v162 + 8);

  return v147(&_swiftEmptySetSingleton);
}

uint64_t sub_100967CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = type metadata accessor for UUID();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v3[7] = *(v6 + 64);
  v3[8] = swift_task_alloc();
  v3[9] = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100967DD4, a3, 0);
}

uint64_t sub_100967DD4()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v3 + 16);
  v0[11] = v6;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[13] = v8;
  *(v8 + 16) = v5;
  v9 = *(v3 + 32);
  v0[14] = v9;
  v0[15] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v2);

  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_100967F48;
  v12 = v0[9];
  v11 = v0[10];

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_100986AB4, v8, v12);
}

uint64_t sub_100967F48()
{

  return _swift_task_switch(sub_100968060, 0, 0);
}

uint64_t sub_100968060()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v3 = *(*(v0 + 48) + 48);
  if (v3(v1, 1, v2) == 1)
  {
    (*(v0 + 88))(*(v0 + 16), *(v0 + 24), v2);
    if (v3(v1, 1, v2) != 1)
    {
      sub_10000B3A8(*(v0 + 80), &qword_1016980D0, &unk_10138F3B0);
    }
  }

  else
  {
    (*(v0 + 112))(*(v0 + 16), v1, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100968164(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MemberSharingCircle(0);
  v7 = a2[3];
  v8 = a2[4];
  sub_1000035D0(a2, v7);
  (*(*(*(v8 + 8) + 8) + 32))(v7);
  LOBYTE(a2) = static UUID.== infix(_:_:)();
  (*(v4 + 8))(v6, v3);
  return a2 & 1;
}

uint64_t sub_10096829C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1009682BC, 0, 0);
}

uint64_t sub_1009682BC()
{
  type metadata accessor for Transaction();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1009683A4;

  return static Transaction.named<A>(_:with:)();
}

uint64_t sub_1009683A4()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(Database.await(state:), 0, 0);
  }
}

uint64_t sub_1009684E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = a3;
  return _swift_task_switch(sub_1009684FC, a2, 0);
}

uint64_t sub_1009684FC()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_10097CAD8(0xD000000000000020, 0x8000000101366680);
  v0[6] = *(v2 + OBJC_IVAR____TtC12searchpartyd25SimpleBeaconUpdateService_cacheWriteThrottle);
  v0[2] = 0xD00000000000002CLL;
  v0[3] = 0x80000001013666B0;
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100968648, v5, v4);
}

uint64_t sub_100968648()
{
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009686D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Date();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_100968828;

  return daemon.getter();
}

uint64_t sub_100968828(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_100985CA0(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100985CA0(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_100968A04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100968A04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = *(v4 + 32);
    v6 = sub_100968EB8;
  }

  else
  {
    v7 = *(v4 + 32);

    *(v4 + 120) = a1;
    v6 = sub_100968B44;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}