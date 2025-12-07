unint64_t sub_100346AFC(char a1)
{
  result = 0x6E776F6E6B6E752ELL;
  switch(a1)
  {
    case 1:
      result = 0x74756F656D69742ELL;
      break;
    case 2:
      result = 0x6F707075736E752ELL;
      break;
    case 3:
      result = 0x64696C61766E692ELL;
      break;
    case 4:
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001ELL;
      break;
    case 12:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000023;
      break;
    case 15:
      result = 0x656C706D696E752ELL;
      break;
    case 16:
      result = 0xD00000000000002CLL;
      break;
    case 17:
      result = 0xD000000000000026;
      break;
    case 18:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100346D44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10037BB10(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100346D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10037F2F4();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_100346DD0()
{
  v1[2] = v0;
  sub_10004B564(&qword_1005B0370, &unk_1004D2410);
  v1[3] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100346E98, 0, 0);
}

uint64_t sub_100346E98()
{
  v1 = v0[3];
  v2 = v0[2];
  swift_defaultActor_initialize();
  *(v2 + 14) = 0x6E6F697461636F4CLL;
  *(v2 + 15) = 0xEF65636976726553;
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  v4 = type metadata accessor for XPCServiceDescription();
  (*(*(v4 - 8) + 56))(&v2[v3], 1, 1, v4);
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_trampoline] = 0;
  v5 = OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool;
  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  *&v2[v5] = XPCClientConnectionPool.__allocating_init()();
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_subscriptionFailureRetryInterval] = xmmword_1004C2E40;
  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_workItemQueue;
  type metadata accessor for WorkItemQueue();
  UUID.init()();
  *&v2[v6] = WorkItemQueue.__allocating_init(identifier:)();
  v7 = OBJC_IVAR____TtC13findmylocated15LocationService_locationUpdateQueue;
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  UUID.init()();
  *&v2[v7] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v9 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationWorkItemQueue;
  UUID.init()();
  *&v2[v9] = WorkItemQueue.__allocating_init(identifier:)();
  v10 = OBJC_IVAR____TtC13findmylocated15LocationService_backgroundLocationsTimeoutManager;
  type metadata accessor for BackgroundLocationsTimeoutManager();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = 0;
  *(v11 + 120) = sub_100209708(_swiftEmptyArrayStorage);
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions] = _swiftEmptyDictionarySingleton;
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask] = 0;
  v12 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  v13 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v13 - 8) + 56))(&v2[v12], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks] = _swiftEmptyDictionarySingleton;
  type metadata accessor for XPCSessionManager();
  v14 = swift_task_alloc();
  v0[5] = v14;
  *v14 = v0;
  v14[1] = sub_1003471B4;

  return XPCSessionManager.__allocating_init(name:)(0x6E6F697461636F4CLL, 0xEF65636976726553);
}

uint64_t sub_1003471B4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1003472B4, 0, 0);
}

uint64_t sub_1003472B4()
{
  *(v0[2] + OBJC_IVAR____TtC13findmylocated15LocationService_xpcSessionManager) = v0[6];

  v1 = v0[1];
  v2 = v0[2];

  return v1(v2);
}

uint64_t sub_100347334()
{
  v1[12] = v0;
  v1[13] = *v0;
  sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  v1[14] = swift_task_alloc();
  v2 = type metadata accessor for MachServiceName();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100347460, v0, 0);
}

uint64_t sub_100347460()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: startup", v4, 2u);
  }

  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  v7 = *(v0 + 128);
  v27 = *(v0 + 120);
  v28 = *(v0 + 112);
  v29 = *(v0 + 104);
  v8 = *(v0 + 96);

  MachServiceName.init(_:)();
  v9 = objc_opt_self();
  v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate18LocationXPCService_];
  *(v0 + 152) = v10;
  v11 = _s10TrampolineCMa_0();
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;
  v13 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 160) = v13;
  v14 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate24LocationServiceClientXPC_];
  *(v0 + 168) = v14;
  (*(v7 + 16))(v6, v5, v27);
  v15 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v15;
  *(v0 + 48) = sub_10001AEBC(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements, &protocol conformance descriptor for ServiceEntitlements);
  v16 = sub_10000331C((v0 + 16));
  (*(*(v15 - 8) + 104))(v16, enum case for ServiceEntitlements.locationService(_:), v15);
  swift_allocObject();
  swift_weakInit();
  v17 = v13;
  v18 = v10;
  v19 = v14;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v20 = type metadata accessor for XPCServiceDescription();
  (*(*(v20 - 8) + 56))(v28, 0, 1, v20);
  v21 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  swift_beginAccess();
  sub_100022364(v28, v8 + v21, &qword_1005B09F8, &qword_1004D23A8);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC13findmylocated15LocationService_trampoline) = v17;
  v22 = v17;

  *(v0 + 176) = *(v8 + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
  v23 = swift_allocObject();
  *(v0 + 184) = v23;
  *(v23 + 16) = v8;
  *(v23 + 24) = v29;

  sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
  sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98, &protocol conformance descriptor for XPCClientConnectionPool<A>);
  v25 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 192) = v25;
  *(v0 + 200) = v24;

  return _swift_task_switch(sub_1003478D4, v25, v24);
}

uint64_t sub_1003478D4()
{
  v1 = *(v0 + 96);
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  return _swift_task_switch(sub_100347968, v1, 0);
}

uint64_t sub_100347968()
{
  v1 = v0[13];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[26] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v0[24];
  v5 = v0[25];

  return _swift_task_switch(sub_100347A10, v4, v5);
}

uint64_t sub_100347A10()
{
  v1 = *(v0 + 96);
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  return _swift_task_switch(sub_100347AA8, v1, 0);
}

uint64_t sub_100347AA8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 120);

  (*(v4 + 8))(v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100347B68(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_100347C04, 0, 0);
}

uint64_t sub_100347C04()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopProcessing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D6B18, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100347DB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_100349F80();
}

uint64_t sub_100347E48(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for ClientID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100347FA8, 0, 0);
}

uint64_t sub_100347FA8()
{
  v13 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v11 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_1003481FC;
    v3 = v0[14];

    return v11(v3);
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005E0B28);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v12);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s. Self was deallocated.", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1003481FC()
{

  return _swift_task_switch(sub_1003482F8, 0, 0);
}

uint64_t sub_1003482F8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = *(v4 + 16);
  v0[17] = v5;
  v0[18] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v3);
  ClientID.init(xpcConnectionID:)();
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1003483CC;
  v7 = v0[10];
  v8 = v0[5];

  return sub_10035CB88(v8, v7);
}

uint64_t sub_1003483CC()
{

  return _swift_task_switch(sub_1003484C8, 0, 0);
}

uint64_t sub_1003484C8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 56);
  (*(v0 + 136))(v4, *(v0 + 112), v2);
  (*(v3 + 56))(v4, 0, 1, v2);

  return _swift_task_switch(sub_10034856C, v1, 0);
}

uint64_t sub_10034856C()
{
  v1 = *(v0 + 56);
  sub_10035D620(v1);
  sub_100002CE0(v1, &qword_1005A96E0, &qword_1004C2A80);

  return _swift_task_switch(sub_1003485F4, 0, 0);
}

uint64_t sub_1003485F4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003486C8()
{
  v1[183] = v0;
  v1[189] = *v0;
  v2 = sub_10004B564(&qword_1005AA708, &unk_1004C4360);
  v1[195] = v2;
  v1[201] = *(v2 - 8);
  v1[207] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[213] = swift_task_alloc();
  sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  v1[214] = swift_task_alloc();

  return _swift_task_switch(sub_10034882C, v0, 0);
}

uint64_t sub_10034882C()
{
  v1 = v0[214];
  v2 = v0[183];
  v0[215] = *(v2 + OBJC_IVAR____TtC13findmylocated15LocationService_xpcSessionManager);
  v3 = OBJC_IVAR____TtC13findmylocated15LocationService_serviceDescription;
  swift_beginAccess();
  sub_100005F04(v2 + v3, v1, &qword_1005B09F8, &qword_1004D23A8);
  v4 = type metadata accessor for XPCServiceDescription();
  v0[216] = v4;
  v5 = *(v4 - 8);
  v0[217] = v5;
  v6 = (*(v5 + 48))(v1, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for XPCSessionManager();
    sub_10001AEBC(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager, &protocol conformance descriptor for XPCSessionManager);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v6 = sub_10034899C;
    v7 = v9;
    v8 = v11;
  }

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10034899C()
{
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[218] = 0;
  (*(v0[217] + 8))(v0[214], v0[216]);
  v1 = swift_task_alloc();
  v0[219] = v1;
  *v1 = v0;
  v1[1] = sub_100348AA4;

  return daemon.getter();
}

uint64_t sub_100348AA4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 1760) = a1;

  v3 = swift_task_alloc();
  *(v2 + 1768) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100348C88;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100348C88(uint64_t a1)
{
  v4 = *v2;
  v4[222] = a1;
  v4[223] = v1;

  if (v1)
  {
    v5 = v4[183];
    v6 = sub_100349644;
  }

  else
  {

    v6 = sub_100348DC4;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100348DC4()
{
  v1 = v0[207];
  v2 = v0[201];
  v3 = v0[195];
  v4 = v0[183];
  swift_allocObject();
  swift_weakInit();
  type metadata accessor for DataManager.State(0);
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100348EDC, v4, 0);
}

uint64_t sub_100348EDC()
{
  v1 = v0[213];
  v2 = v0[183];
  v3 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  swift_beginAccess();
  sub_100022364(v1, v2 + v4, &qword_1005B0F00, &qword_1004D2F00);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[224] = v5;
  *v5 = v0;
  v5[1] = sub_100349008;

  return sub_10001CC28();
}

uint64_t sub_100349008(uint64_t a1)
{
  v2 = *(*v1 + 1464);
  *(*v1 + 1800) = a1;

  return _swift_task_switch(sub_100349120, v2, 0);
}

uint64_t sub_100349120()
{
  v1 = v0[225];
  v2 = v0[183];
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  *(v1 + 104) = sub_10037ED40;
  *(v1 + 112) = v2;

  sub_100037FC8(v3, v4);

  v5 = swift_task_alloc();
  v0[226] = v5;
  *v5 = v0;
  v5[1] = sub_1003491F0;

  return sub_10001CC28();
}

uint64_t sub_1003491F0(uint64_t a1)
{
  v2 = *(*v1 + 1464);
  *(*v1 + 1816) = a1;

  return _swift_task_switch(sub_100349308, v2, 0);
}

uint64_t sub_100349308()
{
  v1 = v0[227];
  v2 = v0[189];
  v3 = v0[183];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  *(v1 + 120) = sub_10037ED48;
  *(v1 + 128) = v4;

  sub_100037FC8(v5, v6);

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2);
}

uint64_t sub_100349430(uint64_t a1, uint64_t a2)
{
  *(v3 + 1824) = v2;
  if (v2)
  {
    return _swift_asyncLet_finish(v3 + 656, a2, sub_1003496D0, v3 + 1360);
  }

  else
  {
    return _swift_asyncLet_get_throwing(v3 + 656);
  }
}

uint64_t sub_100349470(uint64_t a1, uint64_t a2)
{
  *(v3 + 1832) = v2;
  if (v2)
  {
    v4 = sub_1003497C0;
    v5 = v3 + 656;
    v6 = v3 + 1520;
  }

  else
  {
    v4 = sub_1003494B0;
    v5 = v3 + 656;
    v6 = v3 + 1616;
  }

  return _swift_asyncLet_finish(v5, a2, v4, v6);
}

uint64_t sub_100349504()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003495A4()
{
  (*(v0[217] + 8))(v0[214], v0[216]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100349644()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100349724()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100349814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003498B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100349958(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000368C;

  return sub_10036F910(a2);
}

uint64_t sub_1003499F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100349AAC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100349ACC, 0, 0);
}

uint64_t sub_100349ACC()
{
  v14 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_10000D01C(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed subscription received from spd, no location for findMyIds: %s", v4, 0xCu);
    sub_100004984(v5);
  }

  v10 = sub_10023F00C(v9);
  *(v0 + 32) = v10;

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_1002F6704;

  return sub_10036EBF0(v10);
}

uint64_t sub_100349CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10034EAA8();
}

uint64_t sub_100349D54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10034D0D8();
}

uint64_t sub_100349DE4()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error adding connection: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100349FA0()
{
  sub_10034548C();
  if (v1)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005E0B28);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "LocationService: Not invalidating subscriptions due to background clients", v5, 2u);
    }

    v6 = v0[1];

    return v6();
  }

  else
  {
    v0[3] = *(v0[2] + OBJC_IVAR____TtC13findmylocated15LocationService_connectionPool);
    sub_10004B564(&qword_1005B2498, &qword_1004D6A98);
    sub_10001DF0C(&qword_1005B24A0, &qword_1005B2498, &qword_1004D6A98, &protocol conformance descriptor for XPCClientConnectionPool<A>);
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10034A16C, v9, v8);
  }
}

uint64_t sub_10034A16C()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = dispatch thunk of XPCClientConnectionPool.sessions.getter();

  return _swift_task_switch(sub_10034A1D8, v1, 0);
}

uint64_t sub_10034A1D8()
{
  v1 = v0[4];
  if ((v1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();

    if (v2)
    {
LABEL_3:
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000A6F0(v3, qword_1005E0B28);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "LocationService: Not invalidating subscriptions due to active XPC clients", v6, 2u);
      }

      v7 = v0[1];

      return v7();
    }
  }

  else
  {
    v9 = *(v1 + 16);

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_10034A390;

  return sub_10034A484();
}

uint64_t sub_10034A390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10034A484()
{
  v1[16] = v0;
  v2 = type metadata accessor for Handle();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v1[24] = Priority;
  v1[25] = *(Priority - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_10034A670, v0, 0);
}

size_t sub_10034A670()
{
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = sub_10000A6F0(v1, qword_1005E0B28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "LocationService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = *(v0 + 128);

  v6 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  *(v0 + 264) = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v7 = *(v5 + v6);
  *(v0 + 272) = v7;
  v8 = *(v7 + 32);
  *(v0 + 448) = v8;
  v9 = -1;
  v10 = -1 << v8;
  if (-(-1 << v8) < 64)
  {
    v9 = ~(-1 << -v10);
  }

  v11 = v9 & *(v7 + 64);

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = 0;
    v14 = ((63 - v10) >> 6) - 1;
    do
    {
      if (v14 == v13)
      {
        goto LABEL_25;
      }

      v12 = v13 + 1;
      v11 = *(v7 + 72 + 8 * v13++);
    }

    while (!v11);
  }

  v15 = *(v0 + 240);
  v16 = *(v0 + 216);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v48 = (v11 - 1) & v11;
  v19 = __clz(__rbit64(v11)) | (v12 << 6);
  (*(v18 + 16))(v16, *(v7 + 48) + *(v18 + 72) * v19, v17);
  v20 = (*(v7 + 56) + 24 * v19);
  v21 = *v20;
  v22 = v20[1];
  v47 = v20[2];
  v23 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
  v24 = (v15 + *(v23 + 48));
  (*(v18 + 32))(v15, v16, v17);
  *v24 = v21;
  v24[1] = v22;
  v24[2] = v47;
  (*(*(v23 - 8) + 56))(v15, 0, 1, v23);

  v25 = v48;
  v14 = v12;
  while (1)
  {
    *(v0 + 280) = v25;
    *(v0 + 288) = v14;
    v26 = *(v0 + 248);
    sub_1000176A8(*(v0 + 240), v26, &qword_1005B2468, &qword_1004D69B0);
    v27 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    *(v0 + 296) = v27;
    v28 = *(v27 - 8);
    *(v0 + 304) = v28;
    v29 = *(v28 + 48);
    *(v0 + 312) = v29;
    *(v0 + 320) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v29(v26, 1, v27) == 1)
    {

      v49 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
      v30 = swift_task_alloc();
      *(v0 + 376) = v30;
      *v30 = v0;
      v30[1] = sub_10034B97C;

      return v49();
    }

    v33 = *(v0 + 200);
    v32 = *(v0 + 208);
    v34 = (*(v0 + 248) + *(v27 + 48));
    v14 = *v34;
    *(v0 + 328) = *v34;
    *(v0 + 336) = v34[1];
    (*(v33 + 32))(v32);
    v35 = *(v14 + 16);
    if (!v35)
    {
      break;
    }

    v36 = *(v0 + 144);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = swift_allocObject();
    result = j__malloc_size(v39);
    if (!v37)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return result;
    }

    if (result - v38 == 0x8000000000000000 && v37 == -1)
    {
      goto LABEL_31;
    }

    v39[2] = v35;
    v39[3] = 2 * ((result - v38) / v37);
    v41 = sub_100241514();
    v42 = *(v0 + 16);

    sub_10000E3F8(v42);
    if (v41 == v35)
    {
      goto LABEL_27;
    }

    __break(1u);
LABEL_25:
    v43 = *(v0 + 240);
    v44 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    v25 = 0;
  }

  v39 = _swiftEmptyArrayStorage;
LABEL_27:
  *(v0 + 344) = v39;
  v45 = swift_task_alloc();
  *(v0 + 352) = v45;
  *v45 = v0;
  v45[1] = sub_10034AC04;
  v46 = *(v0 + 208);

  return sub_100363EB0(v39, v46);
}

uint64_t sub_10034AC04()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_10034C788;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_10034AD2C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

size_t sub_10034AD2C()
{
  v56 = v0;
  if (*(v0 + 336))
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v4 = *(v0 + 176);
      v3 = *(v0 + 184);
      v5 = *(v0 + 168);
      v6 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v6 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
      (*(v4 + 8))(v3, v5);
      v10 = sub_10000D01C(v7, v9, &v55);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v1, v2, "Canceling %{public}s.", v6, 0xCu);
      sub_100004984(v52);
    }

    v53 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v11 = swift_task_alloc();
    *(v0 + 368) = v11;
    *v11 = v0;
    v11[1] = sub_10034B39C;
LABEL_18:

    return v53();
  }

  else
  {

    result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    if (v13)
    {
      v15 = *(v0 + 272);
LABEL_15:
      v20 = *(v0 + 240);
      v21 = *(v0 + 216);
      v22 = *(v0 + 192);
      v23 = *(v0 + 200);
      v54 = (v13 - 1) & v13;
      v24 = __clz(__rbit64(v13)) | (v14 << 6);
      (*(v23 + 16))(v21, *(v15 + 48) + *(v23 + 72) * v24, v22);
      v25 = (*(v15 + 56) + 24 * v24);
      v26 = *v25;
      v27 = v25[1];
      v51 = v25[2];
      v28 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      v29 = (v20 + *(v28 + 48));
      (*(v23 + 32))(v20, v21, v22);
      *v29 = v26;
      v29[1] = v27;
      v29[2] = v51;
      (*(*(v28 - 8) + 56))(v20, 0, 1, v28);

      v30 = v54;
      v18 = v14;
      while (1)
      {
        *(v0 + 280) = v30;
        *(v0 + 288) = v18;
        v31 = *(v0 + 248);
        sub_1000176A8(*(v0 + 240), v31, &qword_1005B2468, &qword_1004D69B0);
        v32 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        *(v0 + 296) = v32;
        v33 = *(v32 - 8);
        *(v0 + 304) = v33;
        v34 = *(v33 + 48);
        *(v0 + 312) = v34;
        *(v0 + 320) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (v34(v31, 1, v32) == 1)
        {

          v53 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
          v35 = swift_task_alloc();
          *(v0 + 376) = v35;
          *v35 = v0;
          v35[1] = sub_10034B97C;
          goto LABEL_18;
        }

        v37 = *(v0 + 200);
        v36 = *(v0 + 208);
        v38 = (*(v0 + 248) + *(v32 + 48));
        v18 = *v38;
        *(v0 + 328) = *v38;
        *(v0 + 336) = v38[1];
        (*(v37 + 32))(v36);
        v39 = *(v18 + 16);
        if (!v39)
        {
          break;
        }

        v40 = *(v0 + 144);
        sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
        v41 = *(v40 + 72);
        v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v43 = swift_allocObject();
        result = j__malloc_size(v43);
        if (!v41)
        {
          goto LABEL_35;
        }

        if (result - v42 == 0x8000000000000000 && v41 == -1)
        {
          goto LABEL_36;
        }

        v43[2] = v39;
        v43[3] = 2 * ((result - v42) / v41);
        v45 = sub_100241514();
        v46 = *(v0 + 16);

        sub_10000E3F8(v46);
        if (v45 == v39)
        {
          goto LABEL_31;
        }

        __break(1u);
LABEL_29:
        v47 = *(v0 + 240);
        v48 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
        v30 = 0;
      }

      v43 = _swiftEmptyArrayStorage;
LABEL_31:
      *(v0 + 344) = v43;
      v49 = swift_task_alloc();
      *(v0 + 352) = v49;
      *v49 = v0;
      v49[1] = sub_10034AC04;
      v50 = *(v0 + 208);

      return sub_100363EB0(v43, v50);
    }

    else
    {
      v16 = ((1 << *(v0 + 448)) + 63) >> 6;
      if (v16 <= (v14 + 1))
      {
        v17 = v14 + 1;
      }

      else
      {
        v17 = ((1 << *(v0 + 448)) + 63) >> 6;
      }

      v18 = v17 - 1;
      while (1)
      {
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v19 >= v16)
        {
          goto LABEL_29;
        }

        v15 = *(v0 + 272);
        v13 = *(v15 + 8 * v19 + 64);
        ++v14;
        if (v13)
        {
          v14 = v19;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10034B39C()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10034B4AC, v1, 0);
}

size_t sub_10034B4AC()
{

  result = (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  if (v2)
  {
    v4 = *(v0 + 272);
LABEL_11:
    v9 = *(v0 + 240);
    v10 = *(v0 + 216);
    v11 = *(v0 + 192);
    v12 = *(v0 + 200);
    v41 = (v2 - 1) & v2;
    v13 = __clz(__rbit64(v2)) | (v3 << 6);
    (*(v12 + 16))(v10, *(v4 + 48) + *(v12 + 72) * v13, v11);
    v14 = (*(v4 + 56) + 24 * v13);
    v15 = *v14;
    v16 = v14[1];
    v40 = v14[2];
    v17 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v18 = (v9 + *(v17 + 48));
    (*(v12 + 32))(v9, v10, v11);
    *v18 = v15;
    v18[1] = v16;
    v18[2] = v40;
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);

    v19 = v41;
    v7 = v3;
    while (1)
    {
      *(v0 + 280) = v19;
      *(v0 + 288) = v7;
      v20 = *(v0 + 248);
      sub_1000176A8(*(v0 + 240), v20, &qword_1005B2468, &qword_1004D69B0);
      v21 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      *(v0 + 296) = v21;
      v22 = *(v21 - 8);
      *(v0 + 304) = v22;
      v23 = *(v22 + 48);
      *(v0 + 312) = v23;
      *(v0 + 320) = (v22 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v23(v20, 1, v21) == 1)
      {

        v42 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v24 = swift_task_alloc();
        *(v0 + 376) = v24;
        *v24 = v0;
        v24[1] = sub_10034B97C;

        return v42();
      }

      v26 = *(v0 + 200);
      v25 = *(v0 + 208);
      v27 = (*(v0 + 248) + *(v21 + 48));
      v7 = *v27;
      *(v0 + 328) = *v27;
      *(v0 + 336) = v27[1];
      (*(v26 + 32))(v25);
      v28 = *(v7 + 16);
      if (!v28)
      {
        break;
      }

      v29 = *(v0 + 144);
      sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
      v30 = *(v29 + 72);
      v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v32 = swift_allocObject();
      result = j__malloc_size(v32);
      if (!v30)
      {
        goto LABEL_30;
      }

      if (result - v31 == 0x8000000000000000 && v30 == -1)
      {
        goto LABEL_31;
      }

      v32[2] = v28;
      v32[3] = 2 * ((result - v31) / v30);
      v34 = sub_100241514();
      v35 = *(v0 + 16);

      sub_10000E3F8(v35);
      if (v34 == v28)
      {
        goto LABEL_26;
      }

      __break(1u);
LABEL_24:
      v36 = *(v0 + 240);
      v37 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
      v19 = 0;
    }

    v32 = _swiftEmptyArrayStorage;
LABEL_26:
    *(v0 + 344) = v32;
    v38 = swift_task_alloc();
    *(v0 + 352) = v38;
    *v38 = v0;
    v38[1] = sub_10034AC04;
    v39 = *(v0 + 208);

    return sub_100363EB0(v32, v39);
  }

  else
  {
    v5 = ((1 << *(v0 + 448)) + 63) >> 6;
    if (v5 <= (v3 + 1))
    {
      v6 = v3 + 1;
    }

    else
    {
      v6 = ((1 << *(v0 + 448)) + 63) >> 6;
    }

    v7 = v6 - 1;
    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v5)
      {
        goto LABEL_24;
      }

      v4 = *(v0 + 272);
      v2 = *(v4 + 8 * v8 + 64);
      ++v3;
      if (v2)
      {
        v3 = v8;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_10034B97C()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10034BA8C, v1, 0);
}

void sub_10034BA8C()
{
  v51 = v0;
  v1 = *(v0 + 128);
  *(v1 + *(v0 + 264)) = _swiftEmptyDictionarySingleton;

  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  *(v0 + 384) = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 392) = v3;
  v4 = *(v3 + 32);
  *(v0 + 449) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v8 = 0;
  if (v7)
  {
    while (1)
    {
      v9 = *(v0 + 392);
LABEL_14:
      v14 = *(v0 + 296);
      v46 = v14;
      v47 = *(v0 + 304);
      v16 = *(v0 + 216);
      v15 = *(v0 + 224);
      v18 = *(v0 + 192);
      v17 = *(v0 + 200);
      v19 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v20 = v19 | (v8 << 6);
      (*(v17 + 16))(v16, *(v9 + 48) + *(v17 + 72) * v20, v18);
      v21 = (*(v9 + 56) + 24 * v20);
      v22 = *v21;
      v23 = v21[1];
      v45 = v21[2];
      v24 = (v15 + *(v14 + 48));
      (*(v17 + 32))(v15, v16, v18);
      *v24 = v22;
      v24[1] = v23;
      v24[2] = v45;
      (*(v47 + 56))(v15, 0, 1, v46);

      v12 = v8;
LABEL_15:
      *(v0 + 400) = v7;
      *(v0 + 408) = v12;
      v25 = *(v0 + 312);
      v26 = *(v0 + 296);
      v27 = *(v0 + 232);
      sub_1000176A8(*(v0 + 224), v27, &qword_1005B2468, &qword_1004D69B0);
      if (v25(v27, 1, v26) == 1)
      {

        v48 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v33 = swift_task_alloc();
        *(v0 + 440) = v33;
        *v33 = v0;
        v33[1] = sub_10034C4F8;
        goto LABEL_24;
      }

      v28 = *(v0 + 232);
      v29 = (v28 + *(*(v0 + 296) + 48));
      *(v0 + 416) = *v29;
      v30 = v29[1];
      *(v0 + 424) = v30;
      if (v30)
      {
        break;
      }

      v32 = *(v0 + 192);
      v31 = *(v0 + 200);

      (*(v31 + 8))(v28, v32);
      v8 = v12;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v37 = *(v0 + 176);
      v36 = *(v0 + 184);
      v38 = *(v0 + 168);
      v39 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v39 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v37 + 8))(v36, v38);
      v43 = sub_10000D01C(v40, v42, &v50);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Canceling %{public}s.", v39, 0xCu);
      sub_100004984(v49);
    }

    v48 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v44 = swift_task_alloc();
    *(v0 + 432) = v44;
    *v44 = v0;
    v44[1] = sub_10034BF58;
LABEL_24:

    v48();
  }

  else
  {
LABEL_6:
    v10 = ((1 << *(v0 + 449)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 449)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        (*(*(v0 + 304) + 56))(*(v0 + 224), 1, 1, *(v0 + 296));
        v7 = 0;
        goto LABEL_15;
      }

      v9 = *(v0 + 392);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10034BF58()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10034C068, v1, 0);
}

uint64_t sub_10034C068()
{
  v49 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);

  result = (*(v3 + 8))(v1, v2);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  if (v6)
  {
    while (1)
    {
      v7 = *(v0 + 392);
LABEL_11:
      v12 = *(v0 + 296);
      v44 = v12;
      v45 = *(v0 + 304);
      v14 = *(v0 + 216);
      v13 = *(v0 + 224);
      v16 = *(v0 + 192);
      v15 = *(v0 + 200);
      v17 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v18 = v17 | (v5 << 6);
      (*(v15 + 16))(v14, *(v7 + 48) + *(v15 + 72) * v18, v16);
      v19 = (*(v7 + 56) + 24 * v18);
      v20 = *v19;
      v21 = v19[1];
      v43 = v19[2];
      v22 = (v13 + *(v12 + 48));
      (*(v15 + 32))(v13, v14, v16);
      *v22 = v20;
      v22[1] = v21;
      v22[2] = v43;
      (*(v45 + 56))(v13, 0, 1, v44);

      v10 = v5;
LABEL_12:
      *(v0 + 400) = v6;
      *(v0 + 408) = v10;
      v23 = *(v0 + 312);
      v24 = *(v0 + 296);
      v25 = *(v0 + 232);
      sub_1000176A8(*(v0 + 224), v25, &qword_1005B2468, &qword_1004D69B0);
      if (v23(v25, 1, v24) == 1)
      {

        v46 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v31 = swift_task_alloc();
        *(v0 + 440) = v31;
        *v31 = v0;
        v31[1] = sub_10034C4F8;
        goto LABEL_21;
      }

      v26 = *(v0 + 232);
      v27 = (v26 + *(*(v0 + 296) + 48));
      *(v0 + 416) = *v27;
      v28 = v27[1];
      *(v0 + 424) = v28;
      if (v28)
      {
        break;
      }

      v30 = *(v0 + 192);
      v29 = *(v0 + 200);

      result = (*(v29 + 8))(v26, v30);
      v5 = v10;
      if (!v6)
      {
        goto LABEL_3;
      }
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v35 = *(v0 + 176);
      v34 = *(v0 + 184);
      v36 = *(v0 + 168);
      v37 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = v47;
      *v37 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (*(v35 + 8))(v34, v36);
      v41 = sub_10000D01C(v38, v40, &v48);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v32, v33, "Canceling %{public}s.", v37, 0xCu);
      sub_100004984(v47);
    }

    v46 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v42 = swift_task_alloc();
    *(v0 + 432) = v42;
    *v42 = v0;
    v42[1] = sub_10034BF58;
LABEL_21:

    return v46();
  }

  else
  {
LABEL_3:
    v8 = ((1 << *(v0 + 449)) + 63) >> 6;
    if (v8 <= (v5 + 1))
    {
      v9 = v5 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 449)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        (*(*(v0 + 304) + 56))(*(v0 + 224), 1, 1, *(v0 + 296));
        v6 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 392);
      v6 = *(v7 + 8 * v11 + 64);
      ++v5;
      if (v6)
      {
        v5 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10034C4F8()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_10034C608, v1, 0);
}

uint64_t sub_10034C608()
{
  v1 = v0[16];
  *(v1 + v0[48]) = _swiftEmptyDictionarySingleton;

  v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
  if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
  {

    Task.cancel()();
  }

  v3 = v0[16];
  *(v1 + v2) = 0;

  v4 = OBJC_IVAR____TtC13findmylocated15LocationService_activeStewieClientXPCConnectionIDs;
  swift_beginAccess();
  *(v3 + v4) = &_swiftEmptySetSingleton;

  v5 = v0[1];

  return v5();
}

void sub_10034C788()
{
  v83 = v0;
  v1 = v0[43];
  v79 = *(v1 + 16);
  if (v79)
  {
    v2 = 0;
    v77 = v0[43];
    while (v2 < *(v1 + 16))
    {
      v8 = v0[19];
      v7 = v0[20];
      v9 = v0[17];
      v10 = v0[18];
      v11 = *(v10 + 16);
      v11(v7, v0[43] + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v2, v9);
      v11(v8, v7, v9);
      swift_errorRetain();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v15 = v0[18];
        v14 = v0[19];
        v16 = v0[17];
        v17 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v17 = 136446979;
        *(v17 + 4) = sub_10000D01C(0x6164696C61766E69, 0xEC00000029286574, &v82);
        *(v17 + 12) = 2160;
        *(v17 + 14) = 1752392040;
        *(v17 + 22) = 2081;
        v18 = Handle.identifier.getter();
        v20 = v19;
        v6 = *(v15 + 8);
        v6(v14, v16);
        v21 = sub_10000D01C(v18, v20, &v82);
        v0 = v75;

        *(v17 + 24) = v21;
        *(v17 + 32) = 2114;
        swift_errorRetain();
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 34) = v22;
        *v76 = v22;
        _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s Failed to unsubscribe %{private,mask.hash}s.Error: %{public}@", v17, 0x2Au);
        sub_100002CE0(v76, &qword_1005A9670, &unk_1004C2480);

        swift_arrayDestroy();
      }

      else
      {
        v4 = v0[18];
        v3 = v0[19];
        v5 = v0[17];

        v6 = *(v4 + 8);
        v6(v3, v5);
      }

      ++v2;
      v6(v0[20], v0[17]);
      v1 = v77;
      if (v79 == v2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_8:

  if (v0[42])
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[22];
      v25 = v0[23];
      v27 = v75[21];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v82 = v29;
      *v28 = 136446210;
      WorkItemQueue.WorkItem.id.getter();
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = v27;
      v0 = v75;
      (*(v26 + 8))(v25, v33);
      v34 = sub_10000D01C(v30, v32, &v82);

      *(v28 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Canceling %{public}s.", v28, 0xCu);
      sub_100004984(v29);
    }

    v80 = (&async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel() + async function pointer to dispatch thunk of WorkItemQueue.WorkItem.cancel());
    v35 = swift_task_alloc();
    v0[46] = v35;
    *v35 = v0;
    v35[1] = sub_10034B39C;
LABEL_25:

    v80();
  }

  else
  {

    (*(v0[25] + 8))(v0[26], v0[24]);
    v36 = v0[35];
    v37 = v0[36];
    if (!v36)
    {
      v39 = ((1 << *(v0 + 448)) + 63) >> 6;
      if (v39 <= (v37 + 1))
      {
        v40 = v37 + 1;
      }

      else
      {
        v40 = ((1 << *(v0 + 448)) + 63) >> 6;
      }

      v41 = v40 - 1;
      while (1)
      {
        v42 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        if (v42 >= v39)
        {
          goto LABEL_36;
        }

        v38 = v0[34];
        v36 = *(v38 + 8 * v42 + 64);
        ++v37;
        if (v36)
        {
          v37 = v42;
          goto LABEL_22;
        }
      }

LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v38 = v0[34];
LABEL_22:
    v43 = v0[30];
    v44 = v0[27];
    v45 = v75[25];
    v46 = v75[24];
    v81 = (v36 - 1) & v36;
    v47 = __clz(__rbit64(v36)) | (v37 << 6);
    (*(v45 + 16))(v44, *(v38 + 48) + *(v45 + 72) * v47, v46);
    v48 = (*(v38 + 56) + 24 * v47);
    v49 = *v48;
    v50 = v48[1];
    v78 = v48[2];
    v51 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v52 = (v43 + *(v51 + 48));
    (*(v45 + 32))(v43, v44, v46);
    v0 = v75;
    *v52 = v49;
    v52[1] = v50;
    v52[2] = v78;
    (*(*(v51 - 8) + 56))(v43, 0, 1, v51);

    v53 = v81;
    v41 = v37;
    while (1)
    {
      v0[35] = v53;
      v0[36] = v41;
      v54 = v0[31];
      sub_1000176A8(v0[30], v54, &qword_1005B2468, &qword_1004D69B0);
      v55 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      v0[37] = v55;
      v56 = *(v55 - 8);
      v0[38] = v56;
      v57 = *(v56 + 48);
      v0[39] = v57;
      v0[40] = (v56 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v57(v54, 1, v55) == 1)
      {

        v80 = (&async function pointer to dispatch thunk of WorkItemQueue.flushQueue() + async function pointer to dispatch thunk of WorkItemQueue.flushQueue());
        v58 = swift_task_alloc();
        v0[47] = v58;
        *v58 = v0;
        v58[1] = sub_10034B97C;
        goto LABEL_25;
      }

      v60 = v0[25];
      v59 = v0[26];
      v61 = (v0[31] + *(v55 + 48));
      v41 = *v61;
      v0[41] = *v61;
      v0[42] = v61[1];
      (*(v60 + 32))(v59);
      v62 = *(v41 + 16);
      if (!v62)
      {
        break;
      }

      v63 = v0[18];
      sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
      v64 = *(v63 + 72);
      v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v66 = swift_allocObject();
      v67 = j__malloc_size(v66);
      if (!v64)
      {
        goto LABEL_43;
      }

      if (v67 - v65 == 0x8000000000000000 && v64 == -1)
      {
        goto LABEL_44;
      }

      v66[2] = v62;
      v66[3] = 2 * ((v67 - v65) / v64);
      v69 = sub_100241514();
      v70 = v0[2];

      v0 = v75;
      sub_10000E3F8(v70);
      if (v69 == v62)
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_36:
      v71 = v0[30];
      v72 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
      (*(*(v72 - 8) + 56))(v71, 1, 1, v72);
      v53 = 0;
    }

    v66 = _swiftEmptyArrayStorage;
LABEL_38:
    v0[43] = v66;
    v73 = swift_task_alloc();
    v0[44] = v73;
    *v73 = v0;
    v73[1] = sub_10034AC04;
    v74 = v0[26];

    sub_100363EB0(v66, v74);
  }
}

uint64_t sub_10034D0D8()
{
  v1[21] = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = type metadata accessor for DispatchQoS();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for Account();
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v5 = type metadata accessor for AccountService.State(0);
  v1[33] = v5;
  v1[34] = *(v5 - 8);
  v1[35] = swift_task_alloc();
  sub_10004B564(&qword_1005B02E8, &unk_1004D7BA0);
  v1[36] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005B0328, &unk_1004D6A60);
  v1[37] = v6;
  v1[38] = *(v6 - 8);
  v1[39] = swift_task_alloc();
  v7 = sub_10004B564(&unk_1005AFB18, &qword_1004D12E8);
  v1[40] = v7;
  v1[41] = *(v7 - 8);
  v1[42] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005B02F0, &unk_1004D6A70);
  v1[43] = v8;
  v1[44] = *(v8 - 8);
  v1[45] = swift_task_alloc();
  v9 = swift_task_alloc();
  v1[46] = v9;
  *v9 = v1;
  v9[1] = sub_10034D490;

  return daemon.getter();
}

uint64_t sub_10034D490(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 376) = a1;

  v3 = swift_task_alloc();
  *(v2 + 384) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for AccountService(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A9118, 255, type metadata accessor for AccountService, &unk_1004DCC10);
  *v3 = v9;
  v3[1] = sub_10034D674;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10034D674(uint64_t a1)
{
  v4 = *v2;
  v4[49] = a1;
  v4[50] = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = sub_10034E9B0;
  }

  else
  {

    v6 = sub_10034D7AC;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10034D7AC()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];
  v4 = v0[21];
  swift_allocObject();
  swift_weakInit();
  (*(v2 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_10034D8B8, v4, 0);
}

uint64_t sub_10034D8B8()
{
  v2 = v0[41];
  v1 = v0[42];
  v3 = v0[40];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v0[51] = v4;
  v5 = v0[21];
  v6 = swift_task_alloc();
  v0[52] = v6;
  *v6 = v0;
  v6[1] = sub_10034D9D8;
  v7 = v0[43];
  v8 = v0[36];

  return AsyncStream.Iterator.next(isolation:)(v8, v5, v4, v7);
}

uint64_t sub_10034D9D8()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10034DAE8, v1, 0);
}

uint64_t sub_10034DAE8()
{
  v1 = v0[36];
  if ((*(v0[34] + 48))(v1, 1, v0[33]) == 1)
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[35];
    sub_10037ECCC(v1, v4, type metadata accessor for AccountService.State);
    v5 = sub_10004B564(&qword_1005AFFD8, &qword_1004D14D8);
    if ((*(*(v5 - 8) + 48))(v4, 3, v5))
    {
      v6 = v0[51];
      v7 = v0[21];
      v8 = swift_task_alloc();
      v0[52] = v8;
      *v8 = v0;
      v8[1] = sub_10034D9D8;
      v9 = v0[43];
      v10 = v0[36];

      return AsyncStream.Iterator.next(isolation:)(v10, v7, v6, v9);
    }

    else
    {
      v11 = v0[21];
      (*(v0[31] + 32))(v0[32], v0[35], v0[30]);
      v0[53] = Account.dsid.getter();
      v0[54] = v12;
      v13 = *(v11 + 128);
      v0[55] = v13;
      if (v13)
      {

        v14 = swift_task_alloc();
        v0[56] = v14;
        v15 = type metadata accessor for SecureLocationsManagerAdapter();
        *v14 = v0;
        v14[1] = sub_10034E078;
        v16 = v0 + 20;
        v17 = v13;
      }

      else
      {
        v19 = v0[28];
        v18 = v0[29];
        v20 = type metadata accessor for TaskPriority();
        v21 = *(v20 - 8);
        (*(v21 + 56))(v18, 1, 1, v20);
        v22 = swift_allocObject();
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        sub_100005F04(v18, v19, &qword_1005A9690, &qword_1004C2A00);
        LODWORD(v19) = (*(v21 + 48))(v19, 1, v20);

        v23 = v0[28];
        if (v19 == 1)
        {
          sub_100002CE0(v0[28], &qword_1005A9690, &qword_1004C2A00);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v21 + 8))(v23, v20);
        }

        v24 = *(v22 + 16);
        swift_unknownObjectRetain();

        if (v24)
        {
          swift_getObjectType();
          v25 = dispatch thunk of Actor.unownedExecutor.getter();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        sub_100002CE0(v0[29], &qword_1005A9690, &qword_1004C2A00);
        v28 = swift_allocObject();
        *(v28 + 16) = &unk_1004D6A80;
        *(v28 + 24) = v22;
        v29 = type metadata accessor for SecureLocationsManagerAdapter();
        if (v27 | v25)
        {
          v0[8] = 0;
          v0[9] = 0;
          v0[10] = v25;
          v0[11] = v27;
        }

        v30 = v0[21];
        v31 = swift_task_create();
        v0[57] = v31;
        *(v30 + 128) = v31;

        v32 = swift_task_alloc();
        v0[58] = v32;
        *v32 = v0;
        v32[1] = sub_10034E514;
        v16 = v0 + 18;
        v17 = v31;
        v15 = v29;
      }

      return Task<>.value.getter(v16, v17, v15);
    }
  }
}

uint64_t sub_10034E078()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10034E188, v1, 0);
}

uint64_t sub_10034E188()
{

  countAndFlagsBits = v0[16]._countAndFlagsBits;
  object = v0[15]._object;
  v24 = v0[15]._countAndFlagsBits;
  v1 = v0[12]._countAndFlagsBits;
  v21 = v0[13]._countAndFlagsBits;
  v22 = v0[12]._object;
  v2 = v0[11]._countAndFlagsBits;
  v19 = v0[13]._object;
  v20 = v0[11]._object;
  v3 = *(v0[10]._countAndFlagsBits + 40);
  v4 = String.utf8Data.getter();
  v6 = v5;

  v7 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v4, v6);
  v0[6] = v7;
  v0[7]._countAndFlagsBits = 61;
  v0[7]._object = 0xE100000000000000;
  v0[8]._countAndFlagsBits = 126;
  v0[8]._object = 0xE100000000000000;
  sub_1000246F4();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v8;
  v11[4] = v10;
  v0[3]._countAndFlagsBits = sub_10037ED34;
  v0[3]._object = v11;
  v0[1]._countAndFlagsBits = _NSConcreteStackBlock;
  v0[1]._object = 1107296256;
  v0[2]._countAndFlagsBits = sub_100020828;
  v0[2]._object = &unk_10059A748;
  v12 = _Block_copy(&v0[1]);

  static DispatchQoS.unspecified.getter();
  v0[9]._object = _swiftEmptyArrayStorage;
  sub_10001AEBC(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  v20[1](v1, v2);
  (*(v21 + 8))(v19, v22);
  object[1](countAndFlagsBits, v24);

  v13 = v0[25]._object;
  v14 = v0[10]._object;
  v15 = swift_task_alloc();
  v0[26]._countAndFlagsBits = v15;
  *v15 = v0;
  v15[1] = sub_10034D9D8;
  v16 = v0[21]._object;
  v17 = v0[18]._countAndFlagsBits;

  return AsyncStream.Iterator.next(isolation:)(v17, v14, v13, v16);
}

uint64_t sub_10034E514()
{
  v1 = *(*v0 + 168);

  return _swift_task_switch(sub_10034E624, v1, 0);
}

uint64_t sub_10034E624()
{

  countAndFlagsBits = v0[16]._countAndFlagsBits;
  object = v0[15]._object;
  v24 = v0[15]._countAndFlagsBits;
  v1 = v0[12]._countAndFlagsBits;
  v21 = v0[13]._countAndFlagsBits;
  v22 = v0[12]._object;
  v2 = v0[11]._countAndFlagsBits;
  v19 = v0[13]._object;
  v20 = v0[11]._object;
  v3 = *(v0[9]._countAndFlagsBits + 40);
  v4 = String.utf8Data.getter();
  v6 = v5;

  v7 = Data.base64EncodedString(options:)(0);
  sub_1000049D0(v4, v6);
  v0[6] = v7;
  v0[7]._countAndFlagsBits = 61;
  v0[7]._object = 0xE100000000000000;
  v0[8]._countAndFlagsBits = 126;
  v0[8]._object = 0xE100000000000000;
  sub_1000246F4();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v10 = v9;

  v11 = swift_allocObject();
  v11[2] = v3;
  v11[3] = v8;
  v11[4] = v10;
  v0[3]._countAndFlagsBits = sub_10037ED34;
  v0[3]._object = v11;
  v0[1]._countAndFlagsBits = _NSConcreteStackBlock;
  v0[1]._object = 1107296256;
  v0[2]._countAndFlagsBits = sub_100020828;
  v0[2]._object = &unk_10059A748;
  v12 = _Block_copy(&v0[1]);

  static DispatchQoS.unspecified.getter();
  v0[9]._object = _swiftEmptyArrayStorage;
  sub_10001AEBC(&unk_1005ABAC0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  v20[1](v1, v2);
  (*(v21 + 8))(v19, v22);
  object[1](countAndFlagsBits, v24);

  v13 = v0[25]._object;
  v14 = v0[10]._object;
  v15 = swift_task_alloc();
  v0[26]._countAndFlagsBits = v15;
  *v15 = v0;
  v15[1] = sub_10034D9D8;
  v16 = v0[21]._object;
  v17 = v0[18]._countAndFlagsBits;

  return AsyncStream.Iterator.next(isolation:)(v17, v14, v13, v16);
}

uint64_t sub_10034E9B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034EAA8()
{
  v1[7] = v0;
  v2 = type metadata accessor for ClientID.ConnectionType();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for ClientID();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v1[14] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for HandleType();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v6 = type metadata accessor for Friend();
  v1[24] = v6;
  v1[25] = *(v6 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v7 = type metadata accessor for DataManager.State(0);
  v1[32] = v7;
  v1[33] = *(v7 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  sub_10004B564(&qword_1005AA6F8, &unk_1004C4350);
  v1[38] = swift_task_alloc();
  v8 = sub_10004B564(&qword_1005AA700, &unk_1004D2F70);
  v1[39] = v8;
  v1[40] = *(v8 - 8);
  v1[41] = swift_task_alloc();
  sub_10004B564(&qword_1005B0F00, &qword_1004D2F00);
  v1[42] = swift_task_alloc();
  v9 = sub_10004B564(&qword_1005AA710, &qword_1004D2BA0);
  v1[43] = v9;
  v1[44] = *(v9 - 8);
  v1[45] = swift_task_alloc();

  return _swift_task_switch(sub_10034EF30, v0, 0);
}

uint64_t sub_10034EF30(uint64_t a1)
{
  if (static SystemInfo.underTest.getter())
  {

    v2 = *(v1 + 8);
LABEL_11:

    return v2();
  }

  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  *(v1 + 368) = sub_10000A6F0(v3, qword_1005E0B28);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Monitoring DataManager stream", v6, 2u);
  }

  v7 = *(v1 + 344);
  v8 = *(v1 + 352);
  v9 = *(v1 + 336);
  v10 = *(v1 + 56);

  v11 = OBJC_IVAR____TtC13findmylocated15LocationService_dataManagerStateStream;
  swift_beginAccess();
  sub_100005F04(v10 + v11, v9, &qword_1005B0F00, &qword_1004D2F00);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    sub_100002CE0(*(v1 + 336), &qword_1005B0F00, &qword_1004D2F00);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "dataManagerStateStream should be available by now!", v14, 2u);
    }

    sub_1000F7A28();
    swift_allocError();
    *v15 = 11;
    swift_willThrow();

    v2 = *(v1 + 8);
    goto LABEL_11;
  }

  (*(*(v1 + 352) + 32))(*(v1 + 360), *(v1 + 336), *(v1 + 344));
  AsyncStream.makeAsyncIterator()();
  v17 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  *(v1 + 576) = enum case for HandleType.follower(_:);
  *(v1 + 580) = enum case for HandleType.following(_:);
  *(v1 + 584) = enum case for HandleType.futureFollower(_:);
  *(v1 + 588) = enum case for HandleType.futureFollowing(_:);
  *(v1 + 592) = enum case for HandleType.pendingOffer(_:);
  *(v1 + 596) = enum case for ClientID.ConnectionType.xpc(_:);
  *(v1 + 376) = v17;
  *(v1 + 384) = 0;
  v18 = *(v1 + 56);
  v19 = swift_task_alloc();
  *(v1 + 392) = v19;
  *v19 = v1;
  v19[1] = sub_10034F4EC;
  v20 = *(v1 + 304);
  v21 = *(v1 + 312);

  return AsyncStream.Iterator.next(isolation:)(v20, v18, v17, v21);
}

uint64_t sub_10034F4EC()
{
  v1 = *(*v0 + 56);

  return _swift_task_switch(sub_10034F5FC, v1, 0);
}

uint64_t sub_10034F5FC()
{
  v122 = v0;
  v1 = *(v0 + 304);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    v3 = *(v0 + 352);
    v2 = *(v0 + 360);
    v4 = *(v0 + 344);
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);
LABEL_5:

    return v5();
  }

  v6 = *(v0 + 384);
  sub_10037ECCC(v1, *(v0 + 296), type metadata accessor for DataManager.State);
  static Task<>.checkCancellation()();
  if (v6)
  {
    v8 = *(v0 + 352);
    v7 = *(v0 + 360);
    v9 = *(v0 + 344);
    v11 = *(v0 + 320);
    v10 = *(v0 + 328);
    v12 = *(v0 + 312);
    sub_10037EBF8(*(v0 + 296), type metadata accessor for DataManager.State);
    (*(v11 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);

    v5 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_10037EC58(*(v0 + 296), *(v0 + 288), type metadata accessor for DataManager.State);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 288);
  if (v16)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v121[0] = v19;
    *v18 = 136315138;
    v20 = sub_1001DA250();
    v22 = v21;
    sub_10037EBF8(v17, type metadata accessor for DataManager.State);
    v23 = sub_10000D01C(v20, v22, v121);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "dataManagerStateStream event: %s", v18, 0xCu);
    sub_100004984(v19);
  }

  else
  {

    sub_10037EBF8(v17, type metadata accessor for DataManager.State);
  }

  sub_10037EC58(*(v0 + 296), *(v0 + 280), type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_100002CE0(*(v0 + 280), &qword_1005AA718, &qword_1004C4370);
LABEL_12:
    sub_10037EC58(*(v0 + 296), *(v0 + 272), type metadata accessor for DataManager.State);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v121[0] = v31;
      *v30 = 136315138;
      v32 = sub_1001DA250();
      v34 = v33;
      sub_10037EBF8(v29, type metadata accessor for DataManager.State);
      v35 = sub_10000D01C(v32, v34, v121);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v25, v26, "Ignoring %s", v30, 0xCu);
      sub_100004984(v31);
    }

    else
    {

      sub_10037EBF8(v29, type metadata accessor for DataManager.State);
    }

    v36 = v28;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 280), *(v0 + 192));
    goto LABEL_12;
  }

  v43 = *(v0 + 240);
  v42 = *(v0 + 248);
  v44 = *(v0 + 192);
  v45 = *(v0 + 200);
  (*(v45 + 32))(v42, *(v0 + 280), v44);
  v46 = *(v45 + 16);
  *(v0 + 400) = v46;
  *(v0 + 408) = (v45 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v118 = v46;
  v46(v43, v42, v44);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 240);
  v51 = *(v0 + 192);
  v52 = *(v0 + 200);
  if (v49)
  {
    v53 = *(v0 + 184);
    v114 = *(v0 + 192);
    v55 = *(v0 + 160);
    v54 = *(v0 + 168);
    buf = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v121[0] = v115;
    *buf = 136315138;
    v111 = v48;
    Friend.type.getter();
    sub_10001AEBC(&qword_1005A9198, 255, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
    v56 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v57;
    (*(v54 + 8))(v53, v55);
    v59 = *(v52 + 8);
    v59(v50, v114);
    v60 = sub_10000D01C(v56, v58, v121);

    *(buf + 4) = v60;
    _os_log_impl(&_mh_execute_header, v47, v111, "dataManagerStateStream added friend of type: %s", buf, 0xCu);
    sub_100004984(v115);
  }

  else
  {

    v59 = *(v52 + 8);
    v59(v50, v51);
  }

  *(v0 + 416) = v59;
  v61 = *(v0 + 576);
  v63 = *(v0 + 168);
  v62 = *(v0 + 176);
  v64 = *(v0 + 160);
  Friend.type.getter();
  v65 = (*(v63 + 88))(v62, v64);
  if (v65 == v61)
  {
    v66 = *(v0 + 152);
    v67 = *(v0 + 120);
    v68 = *(v0 + 128);
    Friend.handle.getter();
    v69 = Handle.serverID.getter();
    v71 = v70;
    *(v0 + 424) = v69;
    *(v0 + 432) = v70;
    v72 = *(v68 + 8);
    *(v0 + 440) = v72;
    *(v0 + 448) = (v68 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v72(v66, v67);
    if (v71)
    {
      v73 = swift_task_alloc();
      *(v0 + 456) = v73;
      *v73 = v0;
      v73[1] = sub_1003505A4;

      return daemon.getter();
    }

LABEL_40:
    v102 = *(v0 + 296);
    v59(*(v0 + 248), *(v0 + 192));
    v36 = v102;
LABEL_16:
    sub_10037EBF8(v36, type metadata accessor for DataManager.State);
LABEL_17:
    *(v0 + 384) = 0;
    v37 = *(v0 + 376);
    v38 = *(v0 + 56);
    v39 = swift_task_alloc();
    *(v0 + 392) = v39;
    *v39 = v0;
    v39[1] = sub_10034F4EC;
    v40 = *(v0 + 304);
    v41 = *(v0 + 312);

    return AsyncStream.Iterator.next(isolation:)(v40, v38, v37, v41);
  }

  if (v65 != *(v0 + 580))
  {
    if (v65 != *(v0 + 584) && v65 != *(v0 + 588) && v65 != *(v0 + 592))
    {
      v118(*(v0 + 208), *(v0 + 248), *(v0 + 192));
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.error.getter();
      v88 = os_log_type_enabled(v86, v87);
      v89 = *(v0 + 296);
      v90 = *(v0 + 248);
      v91 = *(v0 + 208);
      v92 = *(v0 + 192);
      if (v88)
      {
        v117 = v87;
        v93 = *(v0 + 184);
        v113 = *(v0 + 192);
        log = v86;
        v94 = *(v0 + 160);
        v95 = *(v0 + 168);
        v120 = *(v0 + 296);
        v96 = swift_slowAlloc();
        v121[0] = swift_slowAlloc();
        *v96 = 136446466;
        *(v96 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E82B0, v121);
        *(v96 + 12) = 2080;
        Friend.type.getter();
        sub_10001AEBC(&qword_1005A9198, 255, &type metadata accessor for HandleType, &protocol conformance descriptor for HandleType);
        v97 = dispatch thunk of CustomStringConvertible.description.getter();
        v99 = v98;
        v108 = v90;
        v100 = *(v95 + 8);
        v100(v93, v94);
        v59(v91, v113);
        v101 = sub_10000D01C(v97, v99, v121);

        *(v96 + 14) = v101;
        _os_log_impl(&_mh_execute_header, log, v117, "%{public}s Unexpected friend.type %s!", v96, 0x16u);
        swift_arrayDestroy();

        v59(v108, v113);
        sub_10037EBF8(v120, type metadata accessor for DataManager.State);
      }

      else
      {
        v107 = *(v0 + 168);

        v59(v91, v92);
        v59(v90, v92);
        sub_10037EBF8(v89, type metadata accessor for DataManager.State);
        v100 = *(v107 + 8);
      }

      v100(*(v0 + 176), *(v0 + 160));
      goto LABEL_17;
    }

    goto LABEL_40;
  }

  v118(*(v0 + 216), *(v0 + 248), *(v0 + 192));
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = os_log_type_enabled(v74, v75);
  v77 = *(v0 + 216);
  v78 = *(v0 + 192);
  if (v76)
  {
    v119 = v75;
    v79 = *(v0 + 144);
    v80 = *(v0 + 128);
    v112 = *(v0 + 120);
    v81 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v121[0] = v116;
    *v81 = 141558275;
    *(v81 + 4) = 1752392040;
    *(v81 + 12) = 2081;
    Friend.handle.getter();
    v82 = Handle.identifier.getter();
    v84 = v83;
    (*(v80 + 8))(v79, v112);
    v59(v77, v78);
    v85 = sub_10000D01C(v82, v84, v121);

    *(v81 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v74, v119, "Added a following: %{private,mask.hash}s", v81, 0x16u);
    sub_100004984(v116);
  }

  else
  {

    v59(v77, v78);
  }

  v103 = [objc_opt_self() mainBundle];
  v104 = [v103 bundleIdentifier];

  if (v104)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  (*(*(v0 + 72) + 104))(*(v0 + 80), *(v0 + 596), *(v0 + 64));
  ClientID.init(identifier:connectionType:)();
  v105 = swift_task_alloc();
  *(v0 + 552) = v105;
  *v105 = v0;
  v105[1] = sub_100351A3C;
  v106 = *(v0 + 104);

  return sub_1003851F0(v106);
}

uint64_t sub_1003505A4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 464) = a1;

  v3 = swift_task_alloc();
  *(v2 + 472) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_100350788;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100350788(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[60] = a1;
  v3[61] = v1;

  if (v1)
  {
    v5 = v3[7];

    return _swift_task_switch(sub_100351CE8, v5, 0);
  }

  else
  {

    v6 = swift_task_alloc();
    v3[62] = v6;
    *v6 = v4;
    v6[1] = sub_100350940;
    v7 = v3[14];

    return sub_1001DB14C(v7);
  }
}

uint64_t sub_100350940()
{
  v1 = *(*v0 + 480);

  return _swift_task_switch(sub_100350A50, v1, 0);
}

uint64_t sub_100350A50()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 56);

    sub_100002CE0(v1, &qword_1005AA718, &qword_1004C4370);
    v5 = sub_100351084;
    v6 = v4;
  }

  else
  {
    v7 = *(v0 + 56);
    *(v0 + 600) = Device.isThisDevice.getter() & 1;
    (*(v3 + 8))(v1, v2);
    v5 = sub_100350B94;
    v6 = v7;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100350B94()
{
  v49 = v0;
  if (*(v0 + 600))
  {
    v1 = *(v0 + 400);
    v2 = *(v0 + 248);
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);
    v5 = *(v0 + 192);

    v1(v3, v2, v5);
    v1(v4, v2, v5);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      log = v6;
      v8 = *(v0 + 440);
      v43 = *(v0 + 432);
      v44 = *(v0 + 424);
      v9 = *(v0 + 232);
      v45 = *(v0 + 224);
      v10 = *(v0 + 192);
      v11 = *(v0 + 144);
      v12 = *(v0 + 120);
      v42 = *(v0 + 416);
      v13 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v13 = 141559299;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v46 = v7;
      Friend.handle.getter();
      v14 = Handle.identifier.getter();
      v16 = v15;
      v8(v11, v12);
      v42(v9, v10);
      v17 = sub_10000D01C(v14, v16, &v48);

      *(v13 + 14) = v17;
      *(v13 + 22) = 2160;
      *(v13 + 24) = 1752392040;
      *(v13 + 32) = 2081;

      v18 = sub_10000D01C(v44, v43, &v48);

      *(v13 + 34) = v18;
      *(v13 + 42) = 2160;
      *(v13 + 44) = 1752392040;
      *(v13 + 52) = 2081;
      Friend.handle.getter();
      Handle.siblingIdentifiers.getter();
      v8(v11, v12);
      v19 = Array.description.getter();
      v21 = v20;

      v42(v45, v10);
      v22 = sub_10000D01C(v19, v21, &v48);

      *(v13 + 54) = v22;
      _os_log_impl(&_mh_execute_header, log, v46, "dataManagerStateStream: sharing current secure locations key with new follower,\nhandleId: %{private,mask.hash}s\nserverID: %{private,mask.hash}s,\nidsHandles: %{private,mask.hash}s", v13, 0x3Eu);
      swift_arrayDestroy();
    }

    else
    {
      v36 = *(v0 + 416);
      v38 = *(v0 + 224);
      v37 = *(v0 + 232);
      v39 = *(v0 + 192);

      v36(v38, v39);
      v36(v37, v39);
    }

    v40 = swift_task_alloc();
    *(v0 + 504) = v40;
    *v40 = v0;
    v40[1] = sub_100351218;

    return sub_10001CC28();
  }

  else
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 416);
    v27 = *(v0 + 296);
    v28 = *(v0 + 248);
    v29 = *(v0 + 192);
    if (v25)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Non Me device should not share current key", v30, 2u);
    }

    v26(v28, v29);
    sub_10037EBF8(v27, type metadata accessor for DataManager.State);
    *(v0 + 384) = *(v0 + 488);
    v31 = *(v0 + 376);
    v32 = *(v0 + 56);
    v33 = swift_task_alloc();
    *(v0 + 392) = v33;
    *v33 = v0;
    v33[1] = sub_10034F4EC;
    v34 = *(v0 + 304);
    v35 = *(v0 + 312);

    return AsyncStream.Iterator.next(isolation:)(v34, v32, v31, v35);
  }
}

uint64_t sub_100351084(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[52];
  v6 = v1[37];
  v7 = v1[31];
  v8 = v1[24];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Non Me device should not share current key", v9, 2u);
  }

  v5(v7, v8);
  sub_10037EBF8(v6, type metadata accessor for DataManager.State);
  v1[48] = v1[61];
  v10 = v1[47];
  v11 = v1[7];
  v12 = swift_task_alloc();
  v1[49] = v12;
  *v12 = v1;
  v12[1] = sub_10034F4EC;
  v13 = v1[38];
  v14 = v1[39];

  return AsyncStream.Iterator.next(isolation:)(v13, v11, v10, v14);
}

uint64_t sub_100351218(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 512) = a1;

  return _swift_task_switch(sub_100351330, v2, 0);
}

uint64_t sub_100351330(uint64_t a1)
{
  v2 = v1[55];
  v3 = v1[17];
  v4 = v1[15];
  Friend.handle.getter();
  v1[65] = Handle.siblingIdentifiers.getter();
  v2(v3, v4);

  return _swift_task_switch(sub_1003513D0, 0, 0);
}

uint64_t sub_1003513D0()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v6 = *(v0 + 424);
  v3 = swift_task_alloc();
  *(v0 + 528) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v6;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 536) = v4;
  *v4 = v0;
  v4[1] = sub_1003514E0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000023, 0x80000001004E82D0, sub_10037ECC0, v3, &type metadata for () + 1);
}

uint64_t sub_1003514E0()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_100351778;
  }

  else
  {

    v2 = sub_100351614;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100351614()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100351680, v1, 0);
}

uint64_t sub_100351680()
{
  v1 = *(v0 + 296);
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  sub_10037EBF8(v1, type metadata accessor for DataManager.State);
  *(v0 + 384) = *(v0 + 544);
  v2 = *(v0 + 376);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 392) = v4;
  *v4 = v0;
  v4[1] = sub_10034F4EC;
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v5, v3, v2, v6);
}

uint64_t sub_100351778()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100351810, v1, 0);
}

uint64_t sub_100351810()
{
  v17 = v0;
  v1 = *(v0 + 544);
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 296);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "dataManagerStateStream event error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
    v4 = *(v0 + 296);
  }

  sub_10037EBF8(v4, type metadata accessor for DataManager.State);
  *(v0 + 384) = 0;
  v10 = *(v0 + 376);
  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_10034F4EC;
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v13, v11, v10, v14);
}

uint64_t sub_100351A3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[70] = a1;
  v4[71] = v1;

  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[7];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100351F6C;
  }

  else
  {
    v9 = sub_100351BC4;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100351BC4()
{
  v1 = v0[70];
  if (*(v1 + 16))
  {
    sub_1003718C0(v1);
  }

  v2 = v0[52];
  v3 = v0[37];
  v4 = v0[31];
  v5 = v0[24];

  v2(v4, v5);
  sub_10037EBF8(v3, type metadata accessor for DataManager.State);
  v0[48] = v0[71];
  v6 = v0[47];
  v7 = v0[7];
  v8 = swift_task_alloc();
  v0[49] = v8;
  *v8 = v0;
  v8[1] = sub_10034F4EC;
  v9 = v0[38];
  v10 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v9, v7, v6, v10);
}

uint64_t sub_100351CE8()
{
  v25 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[61];
    v22 = v0[52];
    v23 = v0[37];
    v4 = v0[31];
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136446210;
    v0[6] = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v24);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Share Key: unable to get DataManager: %{public}s", v6, 0xCu);
    sub_100004984(v7);

    v22(v4, v5);
    v11 = v23;
  }

  else
  {
    v12 = v0[52];
    v13 = v0[37];
    v14 = v0[31];
    v15 = v0[24];

    v12(v14, v15);
    v11 = v13;
  }

  sub_10037EBF8(v11, type metadata accessor for DataManager.State);
  v0[48] = 0;
  v16 = v0[47];
  v17 = v0[7];
  v18 = swift_task_alloc();
  v0[49] = v18;
  *v18 = v0;
  v18[1] = sub_10034F4EC;
  v19 = v0[38];
  v20 = v0[39];

  return AsyncStream.Iterator.next(isolation:)(v19, v17, v16, v20);
}

uint64_t sub_100351F6C()
{
  v17 = v0;
  v1 = *(v0 + 568);
  (*(v0 + 416))(*(v0 + 248), *(v0 + 192));
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 296);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446210;
    *(v0 + 40) = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10000D01C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "dataManagerStateStream event error: %{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
    v4 = *(v0 + 296);
  }

  sub_10037EBF8(v4, type metadata accessor for DataManager.State);
  *(v0 + 384) = 0;
  v10 = *(v0 + 376);
  v11 = *(v0 + 56);
  v12 = swift_task_alloc();
  *(v0 + 392) = v12;
  *v12 = v0;
  v12[1] = sub_10034F4EC;
  v13 = *(v0 + 304);
  v14 = *(v0 + 312);

  return AsyncStream.Iterator.next(isolation:)(v13, v11, v10, v14);
}

uint64_t sub_100352198(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[11] = Priority;
  v3[12] = *(Priority - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = type metadata accessor for ClientID();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1003522DC, v2, 0);
}

uint64_t sub_1003522DC(uint64_t a1)
{
  v61 = v1;
  v2 = *(LocationRequest.toHandles.getter() + 16);

  if (v2)
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v3 = v1[18];
    v4 = v1[19];
    v5 = v1[17];
    v6 = v1[9];
    v7 = type metadata accessor for Logger();
    sub_10000A6F0(v7, qword_1005E0B28);
    (*(v3 + 16))(v4, v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v1[18];
    v11 = v1[19];
    v13 = v1[17];
    if (v10)
    {
      v14 = swift_slowAlloc();
      v60[0] = swift_slowAlloc();
      *v14 = 136446466;
      sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v11, v13);
      v18 = sub_10000D01C(v15, v17, v60);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      swift_beginAccess();
      sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);

      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = sub_10000D01C(v19, v21, v60);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v8, v9, "startRefreshing for %{public}s: %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    v30 = v1[16];
    v31 = v1[11];
    v32 = v1[12];
    LocationRequest.priority.getter();
    v33 = (*(v32 + 88))(v30, v31);
    if (v33 == enum case for LocatePriority.backgroundAppRefresh(_:))
    {
      goto LABEL_20;
    }

    v34 = enum case for LocatePriority.shallow(_:);
    if (v33 == enum case for LocatePriority.shallow(_:))
    {
      goto LABEL_20;
    }

    if (v33 == enum case for LocatePriority.live(_:))
    {
      v35 = v1[15];
      v59 = v1[14];
      v37 = v1[11];
      v36 = v1[12];
      v38 = v1[9];
      v39 = LocationRequest.toHandles.getter();
      v58 = *(v36 + 104);
      v58(v35, v34, v37);
      sub_100362F78(v38, v39, v35);

      v40 = *(v36 + 8);
      v1[20] = v40;
      v1[21] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v40(v35, v37);
      v41 = LocationRequest.toHandles.getter();
      v1[22] = v41;
      v58(v59, v34, v37);
      v42 = swift_task_alloc();
      v1[23] = v42;
      *v42 = v1;
      v42[1] = sub_100352A50;
      v43 = v1[14];
LABEL_21:

      return sub_100367504(v41, v43, 1);
    }

    if (v33 == enum case for LocatePriority.backgroundProactive(_:))
    {
LABEL_20:
      v44 = v1[15];
      v45 = v1[12];
      v46 = v1[11];
      v47 = v1[9];
      v48 = LocationRequest.toHandles.getter();
      LocationRequest.priority.getter();
      sub_100362F78(v47, v48, v44);

      v49 = *(v45 + 8);
      v1[29] = v49;
      v1[30] = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v49(v44, v46);
      v41 = LocationRequest.toHandles.getter();
      v1[31] = v41;
      LocationRequest.priority.getter();
      v50 = swift_task_alloc();
      v1[32] = v50;
      *v50 = v1;
      v50[1] = sub_100352E8C;
      v43 = v1[13];
      goto LABEL_21;
    }

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
    }

    v54 = v1[16];
    v55 = v1[11];
    v56 = v1[12];

    sub_1000F7A28();
    swift_allocError();
    *v57 = 2;
    swift_willThrow();
    (*(v56 + 8))(v54, v55);
  }

  else
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005E0B28);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "startRefreshing called with empty handles!", v26, 2u);
    }

    sub_1000F7A28();
    swift_allocError();
    *v27 = 3;
    swift_willThrow();
  }

  v28 = v1[1];

  return v28();
}

uint64_t sub_100352A50(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  v5 = v3[20];
  v6 = v3[14];
  v7 = v3[11];
  v8 = v3[10];
  v5(v6, v7);

  if (v1)
  {
    v9 = sub_100353098;
  }

  else
  {
    v9 = sub_100352BF8;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100352BF8()
{
  v1 = v0[24];
  if (*(v1 + 16))
  {
    sub_1003718C0(v1);
  }

  v2 = LocationRequest.toHandles.getter();
  v0[26] = v2;
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_100352CB8;
  v4 = v0[9];

  return sub_10035AD64(v2, v4);
}

uint64_t sub_100352CB8(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[28] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = sub_100353134;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_100352DE8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100352DE8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100352E8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[33] = v1;

  v6 = v4[29];
  v7 = v4[13];
  v8 = v4[11];
  if (v1)
  {
    v9 = v4[10];
    v6(v7, v8);

    return _swift_task_switch(sub_1003531D8, v9, 0);
  }

  else
  {
    v6(v7, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100353098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100353134()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003531D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100353274(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v3[16] = *v2;
  v4 = type metadata accessor for UUID();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v6 = type metadata accessor for Handle();
  v3[24] = v6;
  v3[25] = *(v6 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Location();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
  v3[34] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[35] = v8;
  v3[36] = *(v8 - 8);
  v3[37] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[38] = Priority;
  v3[39] = *(Priority - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_100353568, v2, 0);
}

uint64_t sub_100353568()
{
  v39 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[42] = sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v4 = 136446723;
    *(v4 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8250, v38);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    v5 = Array.description.getter();
    v7 = sub_10000D01C(v5, v6, v38);

    *(v4 + 24) = v7;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s handles: %{private,mask.hash}s", v4, 0x20u);
    swift_arrayDestroy();
  }

  v8 = *(v0[13] + 16);
  v0[43] = v8;
  if (v8)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v38[0] = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8250, v38);
      *(v11 + 12) = 2080;
      swift_beginAccess();
      sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);

      v12 = Dictionary.description.getter();
      v14 = v13;

      v15 = sub_10000D01C(v12, v14, v38);

      *(v11 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v16 = v0[41];
    v17 = v0[39];
    v34 = v0[38];
    v19 = v0[36];
    v18 = v0[37];
    v36 = v0[35];
    v37 = v0[40];
    v20 = v0[14];
    v21 = v0[13];
    v35 = enum case for LocatePriority.shallow(_:);
    v22 = *(v17 + 104);
    v22(v16);
    sub_100362F78(v20, v21, v16);
    v23 = *(v17 + 8);
    v0[44] = v23;
    v0[45] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v16, v34);
    static Date.trustedNow.getter(v18);
    Date.timeIntervalSince1970.getter();
    v0[46] = v24;
    (*(v19 + 8))(v18, v36);
    (v22)(v37, v35, v34);
    v25 = swift_task_alloc();
    v0[47] = v25;
    *v25 = v0;
    v25[1] = sub_100353B90;
    v26 = v0[40];
    v27 = v0[13];

    return sub_100367504(v27, v26, 0);
  }

  else
  {
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "start shallow Refreshing called with empty handles!", v31, 2u);
    }

    sub_1000F7A28();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100353B90(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[48] = a1;
  v4[49] = v1;

  v5 = v3[44];
  v6 = v3[40];
  v7 = v3[38];
  v8 = v3[15];
  v5(v6, v7);
  if (v1)
  {
    v9 = sub_100354C94;
  }

  else
  {
    v9 = sub_100353D1C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100353D1C()
{
  v105 = v0;
  v1 = *(v0 + 384);
  v88 = *(v0 + 264);
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v86 = *(v0 + 200);
  v87 = *(v0 + 248);
  v89 = *(v0 + 384);

  v13 = 0;
  v84 = v6;
  v85 = v2;
  while (v5)
  {
LABEL_11:
    v15 = *(v0 + 272);
    v16 = *(v0 + 240);
    v101 = *(v0 + 104);
    v17 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v18 = v17 | (v13 << 6);
    v19 = *(v86 + 72);
    (*(v86 + 16))(v15, *(v89 + 48) + v19 * v18, *(v0 + 192));
    buf = *(v88 + 48);
    v96 = v15;
    v90 = *(v87 + 16);
    v90(&buf[v15], *(v89 + 56) + *(v87 + 72) * v18, v16);
    v20 = v101 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v21 = -1;
    do
    {
      if (++v21 == *(v0 + 344))
      {
        v6 = v84;
        v2 = v85;
        goto LABEL_5;
      }

      sub_10001AEBC(&qword_1005A91B8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v20 += v19;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v22 = *(v0 + 368);
    Location.timestamp.getter();
    v6 = v84;
    if (v22 - v23 < 60.0)
    {
      v24 = *(v0 + 272);
      v25 = *(v0 + 256);
      v90(v25, &buf[v96], *(v0 + 240));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = _swiftEmptyDictionarySingleton;
      sub_100452B70(v25, v24, isUniquelyReferenced_nonNull_native);
    }

    v2 = v85;
LABEL_5:
    v7 = sub_100002CE0(*(v0 + 272), &qword_1005B2440, &qword_1004D68C0);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v14 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v14);
    ++v13;
    if (v5)
    {
      v13 = v14;
      goto LABEL_11;
    }
  }

  v27 = *(v0 + 384);
  *(v0 + 400) = _swiftEmptyDictionarySingleton;
  *(v0 + 408) = v27;
  v28 = *(v0 + 200);
  v29 = *(v0 + 104);
  v30 = *(v28 + 80);
  *(v0 + 504) = v30;
  v31 = *(v28 + 72);
  *(v0 + 416) = v31;
  v97 = (v30 + 32) & ~v30;
  v32 = v29 + v97;
  v102 = (v28 + 16);
  v91 = (v28 + 8);
  v33 = (v28 + 32);

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  bufa = v31;
  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v37 = *(v0 + 232);
    v38 = *(v0 + 192);
    v39 = *v102;
    *(v0 + 424) = *v102;
    v39(v37, v32, v38);
    if (_swiftEmptyDictionarySingleton[2] && (v40 = *(v0 + 232), , sub_1001FD93C(v40), LOBYTE(v40) = v41, , (v40 & 1) != 0))
    {
      v7 = (*v91)(*(v0 + 232), *(v0 + 192));
    }

    else
    {
      v42 = *v33;
      (*v33)(*(v0 + 224), *(v0 + 232), *(v0 + 192));
      v104 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000E8E0(0, v35[2] + 1, 1);
        v35 = v104;
      }

      v44 = v35[2];
      v43 = v35[3];
      if (v44 >= v43 >> 1)
      {
        sub_10000E8E0((v43 > 1), v44 + 1, 1);
        v35 = v104;
      }

      v45 = *(v0 + 224);
      v46 = *(v0 + 192);
      v35[2] = v44 + 1;
      v47 = v35 + v97 + v44 * bufa;
      v31 = bufa;
      v7 = v42(v47, v45, v46);
    }

    *(v0 + 432) = v35;
    v32 += v31;
    ++v34;
    if (v36 == *(v0 + 344))
    {

      if (v35[2])
      {
        v49 = *(v0 + 176);
        v48 = *(v0 + 184);
        v50 = *(v0 + 144);
        v100 = *(v0 + 136);
        v51 = *(v0 + 120);
        UUID.init()();
        v52 = sub_1002087C4(_swiftEmptyArrayStorage);
        v53 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
        *(v0 + 440) = v52;
        *(v0 + 448) = v53;
        swift_beginAccess();

        v54 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *(v51 + v53);
        *(v51 + v53) = 0x8000000000000000;
        v103 = v52;
        sub_100454828(v35, 0, v52, v48, v54);
        *(v51 + v53) = v104;
        swift_endAccess();
        v55 = *(v50 + 16);
        *(v0 + 456) = v55;
        *(v0 + 464) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v55(v49, v48, v100);
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v0 + 176);
        v61 = *(v0 + 136);
        v60 = *(v0 + 144);
        if (v58)
        {
          bufb = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v104 = v98;
          *bufb = 136446210;
          sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v62 = v55;
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v57;
          v65 = v64;
          v66 = *(v60 + 8);
          v66(v59, v61);
          v67 = v63;
          v55 = v62;
          v68 = sub_10000D01C(v67, v65, &v104);

          *(bufb + 4) = v68;
          _os_log_impl(&_mh_execute_header, v56, v92, "Start latestLocation Task:%{public}s", bufb, 0xCu);
          sub_100004984(v98);
        }

        else
        {

          v66 = *(v60 + 8);
          v66(v59, v61);
        }

        *(v0 + 472) = v66;
        v76 = *(v0 + 168);
        v78 = *(v0 + 144);
        v77 = *(v0 + 152);
        v79 = *(v0 + 136);
        v99 = *(v0 + 128);
        v80 = *(v0 + 120);
        v55(v76, *(v0 + 184), v79);
        v81 = (*(v78 + 80) + 48) & ~*(v78 + 80);
        v82 = (v77 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
        v83 = swift_allocObject();
        *(v0 + 480) = v83;
        *(v83 + 2) = v80;
        *(v83 + 3) = v35;
        *(v83 + 4) = 0;
        *(v83 + 5) = v103;
        (*(v78 + 32))(&v83[v81], v76, v79);
        *&v83[v82] = v99;

        v7 = swift_task_alloc();
        *(v0 + 488) = v7;
        *v7 = v0;
        v7[1] = sub_10035468C;
        v10 = &unk_1004D6A40;
        v8 = 0x40AAD21B3B700000;
        v12 = &type metadata for () + 1;
        v9 = 3;
        v11 = v83;

        return withTimeout<A>(_:block:)(v7, v8, v9, v10, v11, v12);
      }

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 134217984;
        *(v71 + 4) = 0x404E000000000000;
        _os_log_impl(&_mh_execute_header, v69, v70, "All server cached locations are under %fs. Stop shallowRefresh and return", v71, 0xCu);
      }

      v72 = *(v0 + 112);
      v73 = *(v0 + 104);

      sub_10036CA64(v73, v72);

      v74 = *(v0 + 8);

      return v74(_swiftEmptyDictionarySingleton);
    }
  }

LABEL_41:
  __break(1u);
  return withTimeout<A>(_:block:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_10035468C()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = sub_1003554BC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_1003547B4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1003547B4()
{
  v43 = v0;
  v1 = *(*(v0 + 120) + *(v0 + 448));
  if (!*(v1 + 16))
  {
    goto LABEL_5;
  }

  v2 = *(v0 + 184);

  v3 = sub_1001FD868(v2);
  if ((v4 & 1) == 0)
  {

LABEL_5:
    v8 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_6;
  }

  v5 = (*(v1 + 56) + 24 * v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];

  swift_bridgeObjectRetain_n();

  sub_10037DFD4(v6, v7, v8);
LABEL_6:
  v9 = *(v0 + 400);
  v10 = *(v0 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42[0] = v9;
  sub_10037E65C(v8, sub_10039579C, 0, isUniquelyReferenced_nonNull_native, v42);

  v12 = v42[0];
  swift_beginAccess();
  v13 = sub_1001D933C(v10);
  v15 = v14;
  v17 = v16;
  swift_endAccess();
  sub_10037DFD4(v13, v15, v17);

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v20 = v12;
  do
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    (*(v0 + 424))(*(v0 + 216), *(v0 + 104) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 416) * v18, *(v0 + 192));
    if (*(v12 + 16) && (v22 = *(v0 + 216), , sub_1001FD93C(v22), LOBYTE(v22) = v23, , (v22 & 1) != 0))
    {
      (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    }

    else
    {
      v24 = *(*(v0 + 200) + 32);
      v24(*(v0 + 208), *(v0 + 216), *(v0 + 192));
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v42[0] = v19;
      if ((v25 & 1) == 0)
      {
        sub_10000E8E0(0, *(v19 + 2) + 1, 1);
        v19 = v42[0];
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        sub_10000E8E0((v26 > 1), v27 + 1, 1);
        v19 = v42[0];
      }

      v28 = *(v0 + 416);
      v29 = *(v0 + 504);
      v30 = *(v0 + 208);
      v31 = *(v0 + 192);
      *(v19 + 2) = v27 + 1;
      v24(&v19[((v29 + 32) & ~v29) + v28 * v27], v30, v31);
      v12 = v20;
    }

    ++v18;
  }

  while (v21 != *(v0 + 344));

  v32 = *(v0 + 472);
  v33 = *(v0 + 408);
  v34 = *(v0 + 184);
  v41 = *(v0 + 136);
  v35 = *(v0 + 112);
  v36 = *(v0 + 104);
  if (*(v19 + 2))
  {

    v40 = v34;
    v37 = sub_10037E49C(v33, v19);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v12;
    sub_10037E65C(v37, sub_10039579C, 0, v38, v42);

    v12 = v42[0];

    sub_10036CA64(v36, v35);

    v32(v40, v41);
  }

  else
  {

    sub_10036CA64(v36, v35);

    v32(v34, v41);
  }

  v39 = *(v0 + 8);

  v39(v12);
}

uint64_t sub_100354C94()
{
  v83 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 392);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v82 = v5;
    *v4 = 136446210;
    *(v0 + 96) = v3;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v6 = String.init<A>(describing:)();
    v8 = sub_10000D01C(v6, v7, &v82);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Fetch cached server location failed with error: %{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  else
  {
  }

  *(v0 + 400) = _swiftEmptyDictionarySingleton;
  *(v0 + 408) = _swiftEmptyDictionarySingleton;
  v9 = *(v0 + 200);
  v10 = *(v0 + 104);
  v11 = *(v9 + 80);
  *(v0 + 504) = v11;
  v12 = *(v9 + 72);
  *(v0 + 416) = v12;
  v77 = (v11 + 32) & ~v11;
  v13 = v10 + v77;
  v80 = (v9 + 16);
  buf = (v9 + 8);
  v14 = (v9 + 32);

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v74 = v12;
  do
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return withTimeout<A>(_:block:)(v15, v16, v17, v18, v19, v20);
    }

    v24 = *(v0 + 232);
    v25 = *(v0 + 192);
    v26 = *v80;
    *(v0 + 424) = *v80;
    v26(v24, v13, v25);
    if (_swiftEmptyDictionarySingleton[2] && (v27 = *(v0 + 232), , sub_1001FD93C(v27), LOBYTE(v27) = v28, , (v27 & 1) != 0))
    {
      v15 = (*buf)(*(v0 + 232), *(v0 + 192));
    }

    else
    {
      v29 = *v14;
      (*v14)(*(v0 + 224), *(v0 + 232), *(v0 + 192));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10000E8E0(0, v22[2] + 1, 1);
        v22 = v82;
      }

      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_10000E8E0((v31 > 1), v32 + 1, 1);
        v22 = v82;
      }

      v33 = *(v0 + 224);
      v34 = *(v0 + 192);
      v22[2] = v32 + 1;
      v35 = v22 + v77 + v32 * v74;
      v12 = v74;
      v15 = v29(v35, v33, v34);
    }

    *(v0 + 432) = v22;
    v13 += v12;
    ++v21;
  }

  while (v23 != *(v0 + 344));

  if (v22[2])
  {
    v37 = *(v0 + 176);
    v36 = *(v0 + 184);
    v38 = *(v0 + 144);
    v78 = *(v0 + 136);
    v39 = *(v0 + 120);
    UUID.init()();
    v40 = sub_1002087C4(_swiftEmptyArrayStorage);
    v41 = OBJC_IVAR____TtC13findmylocated15LocationService_inFlightLatestLocationTasks;
    *(v0 + 440) = v40;
    *(v0 + 448) = v41;
    swift_beginAccess();

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v40;
    v82 = *(v39 + v41);
    *(v39 + v41) = 0x8000000000000000;
    sub_100454828(v22, 0, v40, v36, v42);
    *(v39 + v41) = v82;
    swift_endAccess();
    v43 = *(v38 + 16);
    *(v0 + 456) = v43;
    *(v0 + 464) = (v38 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v44 = v78;
    v79 = v43;
    v43(v37, v36, v44);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 176);
    v50 = *(v0 + 136);
    v49 = *(v0 + 144);
    if (v47)
    {
      bufa = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v82 = v75;
      *bufa = 136446210;
      sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v46;
      v53 = v52;
      v54 = *(v49 + 8);
      v54(v48, v50);
      v55 = sub_10000D01C(v51, v53, &v82);

      *(bufa + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v71, "Start latestLocation Task:%{public}s", bufa, 0xCu);
      sub_100004984(v75);
    }

    else
    {

      v54 = *(v49 + 8);
      v54(v48, v50);
    }

    *(v0 + 472) = v54;
    v63 = *(v0 + 168);
    v65 = *(v0 + 144);
    v64 = *(v0 + 152);
    v66 = *(v0 + 136);
    v76 = *(v0 + 128);
    v67 = *(v0 + 120);
    v79(v63, *(v0 + 184), v66);
    v68 = (*(v65 + 80) + 48) & ~*(v65 + 80);
    v69 = (v64 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v0 + 480) = v70;
    *(v70 + 2) = v67;
    *(v70 + 3) = v22;
    *(v70 + 4) = 0;
    *(v70 + 5) = v81;
    (*(v65 + 32))(&v70[v68], v63, v66);
    *&v70[v69] = v76;

    v15 = swift_task_alloc();
    *(v0 + 488) = v15;
    *v15 = v0;
    v15[1] = sub_10035468C;
    v18 = &unk_1004D6A40;
    v16 = 0x40AAD21B3B700000;
    v20 = &type metadata for () + 1;
    v17 = 3;
    v19 = v70;

    return withTimeout<A>(_:block:)(v15, v16, v17, v18, v19, v20);
  }

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = 0x404E000000000000;
    _os_log_impl(&_mh_execute_header, v56, v57, "All server cached locations are under %fs. Stop shallowRefresh and return", v58, 0xCu);
  }

  v59 = *(v0 + 112);
  v60 = *(v0 + 104);

  sub_10036CA64(v60, v59);

  v61 = *(v0 + 8);

  return v61(_swiftEmptyDictionarySingleton);
}

void sub_1003554BC()
{
  v64 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 184);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);

  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v60 = *(v0 + 472);
    v61 = *(v0 + 496);
    v7 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v9 = 136446466;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v60(v7, v8);
    v13 = sub_10000D01C(v10, v12, v63);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 88) = v61;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, v63);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "LatestLocation Task:%{public}s failed with error: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 472);
    v18 = *(v0 + 160);
    v19 = *(v0 + 136);

    v17(v18, v19);
  }

  v20 = *(*(v0 + 120) + *(v0 + 448));
  if (!*(v20 + 16))
  {
    goto LABEL_8;
  }

  v21 = *(v0 + 184);

  v22 = sub_1001FD868(v21);
  if ((v23 & 1) == 0)
  {

LABEL_8:
    v27 = sub_1002087C4(_swiftEmptyArrayStorage);
    goto LABEL_9;
  }

  v24 = (*(v20 + 56) + 24 * v22);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];

  swift_bridgeObjectRetain_n();

  sub_10037DFD4(v25, v26, v27);
LABEL_9:
  v28 = *(v0 + 400);
  v29 = *(v0 + 184);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63[0] = v28;
  sub_10037E65C(v27, sub_10039579C, 0, isUniquelyReferenced_nonNull_native, v63);

  v31 = v63[0];
  swift_beginAccess();
  v32 = sub_1001D933C(v29);
  v34 = v33;
  v36 = v35;
  swift_endAccess();
  sub_10037DFD4(v32, v34, v36);

  v37 = 0;
  v38 = _swiftEmptyArrayStorage;
  v39 = v31;
  do
  {
    v40 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      return;
    }

    (*(v0 + 424))(*(v0 + 216), *(v0 + 104) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 416) * v37, *(v0 + 192));
    if (*(v31 + 16) && (v41 = *(v0 + 216), , sub_1001FD93C(v41), LOBYTE(v41) = v42, , (v41 & 1) != 0))
    {
      (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    }

    else
    {
      v43 = *(*(v0 + 200) + 32);
      v43(*(v0 + 208), *(v0 + 216), *(v0 + 192));
      v44 = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v38;
      if ((v44 & 1) == 0)
      {
        sub_10000E8E0(0, *(v38 + 2) + 1, 1);
        v38 = v63[0];
      }

      v46 = *(v38 + 2);
      v45 = *(v38 + 3);
      if (v46 >= v45 >> 1)
      {
        sub_10000E8E0((v45 > 1), v46 + 1, 1);
        v38 = v63[0];
      }

      v47 = *(v0 + 416);
      v48 = *(v0 + 504);
      v49 = *(v0 + 208);
      v50 = *(v0 + 192);
      *(v38 + 2) = v46 + 1;
      v43(&v38[((v48 + 32) & ~v48) + v47 * v46], v49, v50);
      v31 = v39;
    }

    ++v37;
  }

  while (v40 != *(v0 + 344));

  v51 = *(v0 + 472);
  v52 = *(v0 + 408);
  v53 = *(v0 + 184);
  v62 = *(v0 + 136);
  v54 = *(v0 + 112);
  v55 = *(v0 + 104);
  if (*(v38 + 2))
  {

    v59 = v53;
    v56 = sub_10037E49C(v52, v38);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v31;
    sub_10037E65C(v56, sub_10039579C, 0, v57, v63);

    v31 = v63[0];

    sub_10036CA64(v55, v54);

    v51(v59, v62);
  }

  else
  {

    sub_10036CA64(v55, v54);

    v51(v53, v62);
  }

  v58 = *(v0 + 8);

  v58(v31);
}

uint64_t sub_100355BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v8 = type metadata accessor for UUID();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100355C88, a2, 0);
}

uint64_t sub_100355C88()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_100355D84;

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v4, 0xD000000000000020, 0x80000001004E8280, sub_10037EA98, v2, &type metadata for () + 1);
}

uint64_t sub_100355D84()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_100356108;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_100355EAC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100355EC8()
{
  v21 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10000D01C(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "LatestLocation task:%{public}s resumed", v12, 0xCu);
    sub_100004984(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_100356108()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100356174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Handle();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v4[18] = Priority;
  v4[19] = *(Priority - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = type metadata accessor for ClientID();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_100356350, v3, 0);
}

uint64_t sub_100356350()
{
  v165 = v0;
  v1 = v0;
  v2 = v0[7];
  v141 = *(v2 + 16);
  if (v141)
  {
    v3 = v0[19];
    v4 = v0[12];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v159 = (v3 + 16);
    v161 = *(v4 + 72);
    v153 = (v4 + 8);
    v156 = (v4 + 16);
    v149 = (v3 + 8);
    v6 = *(v2 + 16);
    do
    {
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v16 = v1[24];
      v18 = v1[17];
      v17 = v1[18];
      v19 = v1[11];
      v20 = v1[8];
      v21 = type metadata accessor for Logger();
      sub_10000A6F0(v21, qword_1005E0B28);
      (*v159)(v16, v20, v17);
      (*v156)(v18, v5, v19);
      v22 = v1;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v22[24];
      v28 = v22[17];
      v27 = v22[18];
      v29 = v22[11];
      if (v25)
      {
        v7 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v7 = 136446723;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v145 = v29;
        v10 = v9;
        (*v149)(v26, v27);
        v11 = sub_10000D01C(v8, v10, &v164);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2160;
        *(v7 + 14) = 1752392040;
        *(v7 + 22) = 2081;
        v12 = Handle.identifier.getter();
        v14 = v13;
        (*v153)(v28, v145);
        v15 = sub_10000D01C(v12, v14, &v164);

        *(v7 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v23, v24, "stopRefresh priority: %{public}s for %{private,mask.hash}s", v7, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*v153)(v28, v29);
        (*v149)(v26, v27);
      }

      v1 = v162;
      v5 += v161;
      --v6;
    }

    while (v6);
  }

  if (qword_1005A84C8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v31 = v1[26];
  v30 = v1[27];
  v32 = v1[25];
  v33 = v1[9];
  v34 = type metadata accessor for Logger();
  v1[28] = sub_10000A6F0(v34, qword_1005E0B28);
  (*(v31 + 16))(v30, v33, v32);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v39 = v1[26];
  v38 = v1[27];
  v40 = v1[25];
  if (v37)
  {
    v41 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    *v41 = 136446722;
    *(v41 + 4) = sub_10000D01C(0xD000000000000026, 0x80000001004E8220, &v163);
    *(v41 + 12) = 2082;
    sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    (*(v39 + 8))(v38, v40);
    v45 = sub_10000D01C(v42, v44, &v163);

    *(v41 + 14) = v45;
    *(v41 + 22) = 2080;
    v46 = v141;
    if (v141)
    {
      v150 = v36;
      v154 = v35;
      v47 = v1[12];
      v48 = v1[7];
      v164 = _swiftEmptyArrayStorage;
      sub_10002B3C0(0, v141, 0);
      v49 = v164;
      v50 = *(v47 + 16);
      v47 += 16;
      v160 = v50;
      v51 = v48 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
      v157 = *(v47 + 56);
      v52 = (v47 - 8);
      do
      {
        v53 = v46;
        v54 = v162[16];
        v55 = v162[11];
        v160(v54, v51, v55);
        v56 = Handle.identifier.getter();
        v58 = v57;
        (*v52)(v54, v55);
        v164 = v49;
        v60 = v49[2];
        v59 = v49[3];
        if (v60 >= v59 >> 1)
        {
          sub_10002B3C0((v59 > 1), v60 + 1, 1);
          v49 = v164;
        }

        v49[2] = v60 + 1;
        v61 = &v49[2 * v60];
        v61[4] = v56;
        v61[5] = v58;
        v51 += v157;
        v46 = v53 - 1;
      }

      while (v53 != 1);
      v1 = v162;
      v35 = v154;
      v36 = v150;
    }

    v62 = Array.description.getter();
    v64 = v63;

    v65 = sub_10000D01C(v62, v64, &v163);

    *(v41 + 24) = v65;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s for client %{public}s %s", v41, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

  v66 = sub_100362404(v1[9], v1[7], v1[8]);
  v1[29] = v66;
  v147 = v66[2];
  if (v147)
  {
    v67 = 0;
    v68 = v1[19];
    v141 = (v68 + 16);
    v143 = v1[12];
    v140 = (v143 + 8);
    v151 = (v68 + 8);
    v146 = v66;
    do
    {
      if (v67 >= v66[2])
      {
        __break(1u);
        goto LABEL_46;
      }

      v71 = v1[22];
      v72 = v1[18];
      v74 = v1[14];
      v73 = v1[15];
      v75 = v1[11];
      v76 = v1[8];
      v139 = (*(v143 + 80) + 32) & ~*(v143 + 80);
      v158 = *(v143 + 72);
      v77 = *(v143 + 16);
      v77(v73, v66 + v139 + v158 * v67, v75);
      (*v141)(v71, v76, v72);
      v155 = v77;
      v77(v74, v73, v75);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v1[22];
      v82 = v1[18];
      v83 = v1[14];
      v84 = v1[11];
      if (v80)
      {
        v85 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        *v85 = 136315651;
        sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
        v137 = v84;
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v88 = v87;
        v70 = *v151;
        (*v151)(v81, v82);
        v89 = sub_10000D01C(v86, v88, &v164);

        *(v85 + 4) = v89;
        *(v85 + 12) = 2160;
        *(v85 + 14) = 1752392040;
        *(v85 + 22) = 2081;
        v90 = Handle.identifier.getter();
        v92 = v91;
        v93 = *v140;
        (*v140)(v83, v137);
        v94 = sub_10000D01C(v90, v92, &v164);

        *(v85 + 24) = v94;
        _os_log_impl(&_mh_execute_header, v78, v79, "Unsubscribe %s for handle: %{private,mask.hash}s", v85, 0x20u);
        swift_arrayDestroy();

        v1 = v162;

        v69 = v93;
      }

      else
      {

        v69 = *v140;
        (*v140)(v83, v84);
        v70 = *v151;
        (*v151)(v81, v82);
      }

      ++v67;
      v1[31] = v70;
      v69(v1[15], v1[11]);
      v66 = v146;
    }

    while (v147 != v67);
    v95 = v1[23];
    v96 = v1[18];
    v97 = *(v1[19] + 104);
    (v97)(v95, enum case for LocatePriority.live(_:), v96);
    sub_10001AEBC(&qword_1005A9318, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v1[30] = v151 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v70(v95, v96);
    if (v1[5] == v1[6])
    {
      v98 = v1[23];
      v99 = v1[18];
      v100 = v97;
      v101 = v1[9];
      v102 = v1[7];
      v142 = enum case for LocatePriority.shallow(_:);
      v144 = v100;
      v100(v98);
      v103 = sub_100362404(v101, v102, v98);
      v1[32] = v103;
      v70(v98, v99);
      v104 = v103[2];
      if (v104)
      {
        v138 = v103;
        v105 = v103 + v139;
        do
        {
          v155(v1[13], v105, v1[11]);
          v106 = Logger.logObject.getter();
          v107 = static os_log_type_t.default.getter();
          v108 = os_log_type_enabled(v106, v107);
          v109 = v1[13];
          v110 = v1[11];
          if (v108)
          {
            v111 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v164 = v152;
            *v111 = 141558275;
            *(v111 + 4) = 1752392040;
            *(v111 + 12) = 2081;
            v148 = Handle.identifier.getter();
            v113 = v112;
            v69(v109, v110);
            v114 = sub_10000D01C(v148, v113, &v164);

            *(v111 + 14) = v114;
            _os_log_impl(&_mh_execute_header, v106, v107, "Unsubscribe Shallow along with live\nfor handle:%{private,mask.hash}s", v111, 0x16u);
            sub_100004984(v152);

            v1 = v162;
          }

          else
          {

            v69(v109, v110);
          }

          v105 += v158;
          v104 = (v104 - 1);
        }

        while (v104);
        v144(v1[21], v142, v1[18]);
        v131 = swift_task_alloc();
        v1[33] = v131;
        *v131 = v1;
        v131[1] = sub_100357318;
        v132 = v1[21];
        v133 = v138;
        goto LABEL_42;
      }
    }

    v1[35] = 0;
    v136 = swift_task_alloc();
    v1[36] = v136;
    *v136 = v1;
    v136[1] = sub_1003574C4;
    v132 = v1[8];
    v133 = v1[29];
LABEL_42:

    return sub_100363EB0(v133, v132);
  }

  v116 = v1[19];
  v115 = v1[20];
  v117 = v1[18];
  v118 = v1[8];

  (*(v116 + 16))(v115, v118, v117);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.default.getter();
  v121 = os_log_type_enabled(v119, v120);
  v123 = v1[19];
  v122 = v1[20];
  v124 = v1[18];
  if (v121)
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v164 = v126;
    *v125 = 136446210;
    sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    v129 = v128;
    (*(v123 + 8))(v122, v124);
    v130 = sub_10000D01C(v127, v129, &v164);

    *(v125 + 4) = v130;
    _os_log_impl(&_mh_execute_header, v119, v120, "stopRefreshing: no handles to unsubscribe %{public}s", v125, 0xCu);
    sub_100004984(v126);
  }

  else
  {

    (*(v123 + 8))(v122, v124);
  }

  v134 = v1[1];

  return v134();
}

uint64_t sub_100357318()
{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));

    return _swift_task_switch(sub_100357908, v3, 0);
  }

  else
  {
    (*(v2 + 248))(*(v2 + 168), *(v2 + 144));

    *(v2 + 280) = 0;
    v4 = swift_task_alloc();
    *(v2 + 288) = v4;
    *v4 = v2;
    v4[1] = sub_1003574C4;
    v5 = *(v2 + 64);
    v6 = *(v2 + 232);

    return sub_100363EB0(v6, v5);
  }
}

uint64_t sub_1003574C4()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 80);

  if (v0)
  {
    v4 = sub_100357B4C;
  }

  else
  {
    v4 = sub_10035760C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035760C()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 141558275;
    *(v3 + 4) = 1752392040;
    *(v3 + 12) = 2081;
    swift_beginAccess();
    sub_10001AEBC(&qword_1005B0208, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);

    v5 = Dictionary.description.getter();
    v7 = v6;

    v8 = sub_10000D01C(v5, v7, &v11);

    *(v3 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "After StopRefreshing current subscriptions: %{private,mask.hash}s", v3, 0x16u);
    sub_100004984(v4);
  }

  if (*(v0 + 280))
  {
    swift_willThrow();
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100357908()
{
  v17 = v0;
  v1 = v0[34];
  swift_errorRetain();
  swift_errorRetain();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v4 = 138543618;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    *(v4 + 12) = 2080;
    v8 = Array.description.getter();
    v10 = v9;

    v11 = sub_10000D01C(v8, v10, &v16);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unsubscribing from .shallow failed with error: %{public}@, for handles: %s", v4, 0x16u);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v6);
  }

  else
  {
  }

  v0[35] = v1;
  v12 = swift_task_alloc();
  v0[36] = v12;
  *v12 = v0;
  v12[1] = sub_1003574C4;
  v13 = v0[29];
  v14 = v0[8];

  return sub_100363EB0(v13, v14);
}

uint64_t sub_100357B4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100357C48(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = type metadata accessor for Friend();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = type metadata accessor for Handle();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100357DBC, v1, 0);
}

uint64_t sub_100357DBC()
{
  v30 = v0;
  v1 = v0;
  v2 = v0[3];
  v3 = *(v2 + 16);
  v1[16] = v3;
  if (v3)
  {
    v4 = v1[12];
    v5 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    v7 = (v4 + 16);
    v28 = (v4 + 8);
    v26 = v6;
    do
    {
      if (qword_1005A84C8 != -1)
      {
        swift_once();
      }

      v16 = v1[15];
      v17 = v1[11];
      v18 = type metadata accessor for Logger();
      sub_10000A6F0(v18, qword_1005E0B28);
      (*v7)(v16, v5, v17);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      v22 = v1[15];
      v23 = v1[11];
      if (v21)
      {
        v27 = v20;
        v8 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v8 = 136446723;
        *(v8 + 4) = sub_10000D01C(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v29);
        *(v8 + 12) = 2160;
        *(v8 + 14) = 1752392040;
        *(v8 + 22) = 2081;
        sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
        v9 = v7;
        v10 = dispatch thunk of CustomStringConvertible.description.getter();
        v11 = v1;
        v13 = v12;
        (*v28)(v22, v23);
        v14 = v10;
        v7 = v9;
        v15 = sub_10000D01C(v14, v13, &v29);
        v1 = v11;
        v6 = v26;

        *(v8 + 24) = v15;
        _os_log_impl(&_mh_execute_header, v19, v27, "One-shot %{public}s pulled from daemon cache on disk\nfor handle: %{private,mask.hash}s", v8, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*v28)(v22, v23);
      }

      v5 += v6;
      --v3;
    }

    while (v3);
  }

  v24 = swift_task_alloc();
  v1[17] = v24;
  *v24 = v1;
  v24[1] = sub_1003580FC;

  return daemon.getter();
}

uint64_t sub_1003580FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 144) = a1;

  v3 = swift_task_alloc();
  *(v2 + 152) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for DataManager(0);
  v6 = sub_10001AEBC(&unk_1005AFA50, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001AEBC(&qword_1005A90D0, 255, type metadata accessor for DataManager, &unk_1004D1410);
  *v3 = v9;
  v3[1] = sub_1003582E0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003582E0(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[4];
    v5 = sub_100358FC0;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100358408;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100358408()
{
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[3];
    sub_10002B3C0(0, v1, 0);
    v4 = 0;
    v5 = *(v2 + 16);
    v2 += 16;
    v6 = v3 + ((*(v2 + 64) + 32) & ~*(v2 + 64));
    v19 = *(v2 + 56);
    v20 = v5;
    v7 = (v2 - 8);
    do
    {
      v8 = v0[14];
      v9 = v0[11];
      v20(v8, v6, v9);
      v10 = Handle.identifier.getter();
      v12 = v11;
      (*v7)(v8, v9);
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_10002B3C0((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[16];
      ++v4;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v14];
      v16[4] = v10;
      v16[5] = v12;
      v6 += v19;
    }

    while (v4 != v15);
  }

  v17 = v0[20];
  v0[22] = sub_10023F00C(_swiftEmptyArrayStorage);

  return _swift_task_switch(sub_10035859C, v17, 0);
}

uint64_t sub_10035859C()
{
  sub_10004B564(&qword_1005A92A8, &qword_1004C4330);
  v1 = type metadata accessor for HandleType();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 184) = v4;
  *(v4 + 16) = xmmword_1004C1900;
  (*(v2 + 104))(v4 + v3, enum case for HandleType.following(_:), v1);
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_100358700;

  return sub_10001C61C(v4, 1);
}

uint64_t sub_100358700(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 200) = a1;

  return _swift_task_switch(sub_100358834, v2, 0);
}

uint64_t sub_100358834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v9 = v8[25];
  v65 = *(v9 + 16);
  if (v65)
  {
    v10 = 0;
    v11 = v8[22];
    v12 = v8[7];
    v61 = (v8[12] + 8);
    v13 = v11 + 56;
    v58 = (v12 + 32);
    v59 = _swiftEmptyArrayStorage;
    v63 = v8[25];
    while (v10 < *(v9 + 16))
    {
      v16 = v8[13];
      v17 = v8[11];
      v69 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v67 = *(v12 + 72);
      (*(v12 + 16))(v8[10], v8[25] + v69 + v67 * v10, v8[6], a4, a5, a6, a7, a8);
      Friend.handle.getter();
      v18 = Handle.identifier.getter();
      v20 = v19;
      (*v61)(v16, v17);
      if (*(v11 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v21 = Hasher._finalize()(), v22 = -1 << *(v11 + 32), v23 = v21 & ~v22, ((*(v13 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        while (1)
        {
          v25 = (*(v11 + 48) + 16 * v23);
          v26 = *v25 == v18 && v25[1] == v20;
          if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v13 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        v27 = v8[10];
        v28 = v8[8];
        v29 = v8[6];

        v30 = *v58;
        (*v58)(v28, v27, v29);
        v31 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100239354(0, v59[2] + 1, 1);
          v31 = v59;
        }

        v33 = v31[2];
        v32 = v31[3];
        if (v33 >= v32 >> 1)
        {
          sub_100239354((v32 > 1), v33 + 1, 1);
          v31 = v59;
        }

        v34 = v8[8];
        v35 = v8[6];
        v31[2] = v33 + 1;
        v59 = v31;
        a1 = v30(v31 + v69 + v33 * v67, v34, v35);
      }

      else
      {
LABEL_3:
        v14 = v8[10];
        v15 = v8[6];

        a1 = (*(v12 + 8))(v14, v15);
      }

      ++v10;
      v9 = v63;
      if (v10 == v65)
      {
        v36 = v59;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = _swiftEmptyArrayStorage;
LABEL_23:
    v8[26] = v36;

    v37 = v36[2];
    v60 = v36;
    if (v37)
    {
      v38 = v8[7];
      v68 = *(v38 + 16);
      v39 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v64 = (v8[12] + 8);
      v66 = *(v38 + 72);
      v62 = (v38 + 8);
      v40 = _swiftEmptyArrayStorage;
      do
      {
        v42 = v8[14];
        v43 = v8[11];
        v44 = v8[9];
        v45 = v8[6];
        v68(v44, v39, v45);
        Friend.handle.getter();
        v46 = Handle.serverID.getter();
        v48 = v47;
        (*v64)(v42, v43);
        (*v62)(v44, v45);
        if (v48)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_1001FC900(0, *(v40 + 2) + 1, 1, v40);
          }

          v50 = *(v40 + 2);
          v49 = *(v40 + 3);
          if (v50 >= v49 >> 1)
          {
            v40 = sub_1001FC900((v49 > 1), v50 + 1, 1, v40);
          }

          *(v40 + 2) = v50 + 1;
          v41 = &v40[16 * v50];
          *(v41 + 4) = v46;
          *(v41 + 5) = v48;
        }

        v39 += v66;
        --v37;
      }

      while (v37);
    }

    else
    {
      v40 = _swiftEmptyArrayStorage;
    }

    v8[27] = v40;
    v52 = v8[4];
    v51 = v8[5];
    v53 = sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
    v54 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
    v55 = swift_task_alloc();
    v8[28] = v55;
    v55[2] = v40;
    v55[3] = v52;
    v55[4] = v60;
    v55[5] = v51;
    v56 = swift_task_alloc();
    v8[29] = v56;
    *v56 = v8;
    v56[1] = sub_100358D90;
    a6 = &unk_1004D69E8;
    a1 = v8 + 2;
    a2 = v53;
    a3 = v53;
    a4 = v52;
    a5 = v54;
    a7 = v55;
    a8 = v53;
  }

  return withTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100358D90()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100358EFC, v1, 0);
}

uint64_t sub_100358EFC()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100358FC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100359074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v8 = type metadata accessor for Location();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for Handle();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  sub_10004B564(&qword_1005B2438, &qword_1004D68B0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  sub_10004B564(&qword_1005B2480, &qword_1004D69F0);
  v6[27] = swift_task_alloc();
  v10 = sub_10004B564(&qword_1005B2488, &qword_1004D69F8);
  v6[28] = v10;
  v6[29] = *(v10 - 8);
  v6[30] = swift_task_alloc();
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003592DC, a4, 0);
}

uint64_t sub_1003592DC()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  if (v2)
  {
    v29 = **(v0 + 96);
    v3 = type metadata accessor for TaskPriority();
    v4 = *(v3 - 8);
    v28 = *(v4 + 56);
    v27 = (v4 + 48);
    v26 = (v4 + 8);
    v5 = (v1 + 40);
    v6 = &qword_1005A9690;
    do
    {
      v30 = v5;
      v31 = v2;
      v9 = *(v0 + 248);
      v8 = *(v0 + 256);
      v10 = *(v0 + 112);
      v11 = v6;
      v13 = *(v5 - 1);
      v12 = *v5;
      v32 = *(v0 + 120);
      v28(v8, 1, 1, v3);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v13;
      *(v14 + 48) = v12;
      v6 = v11;
      *(v14 + 56) = v32;
      sub_100005F04(v8, v9, v11, &qword_1004C2A00);
      LODWORD(v9) = (*v27)(v9, 1, v3);

      v15 = *(v0 + 248);
      if (v9 == 1)
      {
        sub_100002CE0(*(v0 + 248), v11, &qword_1004C2A00);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v26)(v15, v3);
      }

      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v16 = dispatch thunk of Actor.unownedExecutor.getter();
        v18 = v17;
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = swift_allocObject();
      *(v19 + 16) = &unk_1004D6A08;
      *(v19 + 24) = v14;

      sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
      v20 = v18 | v16;
      if (v18 | v16)
      {
        v20 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      v7 = *(v0 + 256);
      *(v0 + 48) = 1;
      *(v0 + 56) = v20;
      *(v0 + 64) = v29;
      swift_task_create();

      sub_100002CE0(v7, v11, &qword_1004C2A00);
      v5 = v30 + 2;
      v2 = v31 - 1;
    }

    while (v31 != 1);
  }

  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  TaskGroup.makeAsyncIterator()();
  v21 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  *(v0 + 264) = v21;
  *(v0 + 272) = _swiftEmptyDictionarySingleton;
  v22 = *(v0 + 112);
  v23 = swift_task_alloc();
  *(v0 + 280) = v23;
  *v23 = v0;
  v23[1] = sub_1003596C4;
  v24 = *(v0 + 224);

  return TaskGroup.Iterator.next(isolation:)(v0 + 72, v22, v21, v24);
}

uint64_t sub_1003596C4()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1003597D4, v1, 0);
}

uint64_t sub_1003597D4()
{
  v85 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 272);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v2;
    v74 = v1 + 64;
    v4 = -1;
    v5 = -1 << *(v1 + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(v1 + 64);
    v73 = (63 - v5) >> 6;
    v7 = *(v0 + 272);
    v75 = v1;

    for (i = 0; ; i = v81)
    {
      v83 = v7;
      v82 = isUniquelyReferenced_nonNull_native;
      if (!v6)
      {
        if (v73 <= i + 1)
        {
          v10 = i + 1;
        }

        else
        {
          v10 = v73;
        }

        while (1)
        {
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v9 >= v73)
          {
            v81 = v10 - 1;
            v57 = *(v0 + 208);
            v58 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
            (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
            v6 = 0;
            goto LABEL_16;
          }

          v6 = *(v74 + 8 * v9);
          ++i;
          if (v6)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v9 = i;
LABEL_15:
      v11 = *(v0 + 208);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      v14 = *(v0 + 160);
      v15 = *(v0 + 144);
      v77 = *(v0 + 136);
      v80 = *(v0 + 192);
      v16 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v17 = v16 | (v9 << 6);
      (*(v13 + 16))();
      (*(v15 + 16))(v14, *(v75 + 56) + *(v15 + 72) * v17, v77);
      v18 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v19 = *(v18 + 48);
      (*(v13 + 32))(v11, v80, v12);
      (*(v15 + 32))(v11 + v19, v14, v77);
      (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
      v81 = v9;
LABEL_16:
      v20 = *(v0 + 200);
      sub_1000176A8(*(v0 + 208), v20, &qword_1005B2438, &qword_1004D68B0);
      v21 = sub_10004B564(&qword_1005B2440, &qword_1004D68C0);
      v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
      v23 = *(v0 + 216);
      if (v22 == 1)
      {
        v24 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
      }

      else
      {
        v25 = *(v0 + 200);
        v27 = *(v0 + 168);
        v26 = *(v0 + 176);
        v28 = *(v0 + 144);
        v78 = *(v0 + 136);
        v29 = *(v21 + 48);
        v30 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
        v31 = *(v30 + 48);
        (*(v26 + 16))(v23, v25, v27);
        (*(v28 + 16))(v23 + v31, v25 + v29, v78);
        sub_100002CE0(v25, &qword_1005B2440, &qword_1004D68C0);
        (*(*(v30 - 8) + 56))(v23, 0, 1, v30);
      }

      v32 = *(v0 + 216);
      v33 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      v34 = *(v0 + 184);
      v36 = *(v0 + 144);
      v35 = *(v0 + 152);
      v37 = *(v0 + 136);
      v38 = *(v33 + 48);
      v76 = *(*(v0 + 176) + 32);
      v76(v34, v32, *(v0 + 168));
      v79 = *(v36 + 32);
      v79(v35, v32 + v38, v37);
      v40 = sub_1001FD93C(v34);
      v41 = v83[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        goto LABEL_43;
      }

      v44 = v39;
      if (v83[3] >= v43)
      {
        if ((v82 & 1) == 0)
        {
          sub_1002034E4();
        }
      }

      else
      {
        v45 = *(v0 + 184);
        sub_10022D91C(v43, v82 & 1);
        v46 = sub_1001FD93C(v45);
        if ((v44 & 1) != (v47 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v40 = v46;
      }

      v7 = *(v0 + 80);
      v49 = *(v0 + 176);
      v48 = *(v0 + 184);
      v50 = *(v0 + 168);
      v52 = *(v0 + 144);
      v51 = *(v0 + 152);
      v53 = *(v0 + 136);
      if (v44)
      {
        (*(v49 + 8))(*(v0 + 184), *(v0 + 168));
        (*(v52 + 40))(v7[7] + *(v52 + 72) * v40, v51, v53);
      }

      else
      {
        v7[(v40 >> 6) + 8] |= 1 << v40;
        v76(v7[6] + *(v49 + 72) * v40, v48, v50);
        v79(v7[7] + *(v52 + 72) * v40, v51, v53);
        v54 = v7[2];
        v55 = __OFADD__(v54, 1);
        v56 = v54 + 1;
        if (v55)
        {
          goto LABEL_44;
        }

        v7[2] = v56;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

    *(v0 + 272) = v83;
    v59 = *(v0 + 264);
    v60 = *(v0 + 112);
    v61 = swift_task_alloc();
    *(v0 + 280) = v61;
    *v61 = v0;
    v61[1] = sub_1003596C4;
    v62 = *(v0 + 224);

    return TaskGroup.Iterator.next(isolation:)(v0 + 72, v60, v59, v62);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    if (qword_1005A84C8 != -1)
    {
LABEL_45:
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A6F0(v63, qword_1005E0B28);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v66 = 136446466;
      *(v66 + 4) = sub_10000D01C(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v84);
      *(v66 + 12) = 2080;
      sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);

      v67 = Dictionary.description.getter();
      v69 = v68;

      v70 = sub_10000D01C(v67, v69, &v84);

      *(v66 + 14) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "One-shot %{public}s result: %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    **(v0 + 88) = *(v0 + 272);

    v71 = *(v0 + 8);

    return v71();
  }
}

uint64_t sub_10035A140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a1;
  v8 = type metadata accessor for SecureLocation(0);
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[11] = v9;
  *v9 = v7;
  v9[1] = sub_10035A238;

  return sub_10001CC28();
}

uint64_t sub_10035A238(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 96) = a1;

  return _swift_task_switch(sub_10035A350, v2, 0);
}

uint64_t sub_10035A350()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_10001AEBC(&qword_1005B23E0, 255, type metadata accessor for LocationService, &unk_1004D6610);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10035A49C;
  v8 = v0[10];
  v9 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v8, v4, v5, 0xD000000000000024, 0x80000001004E81A0, sub_10037DDE0, v6, v9);
}

uint64_t sub_10035A49C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_10035A5C4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_10035A85C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10035A5C4()
{

  return _swift_task_switch(sub_10035A634, 0, 0);
}

uint64_t sub_10035A634()
{
  v15 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 120);
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_10000D01C(v6, v5, &v14);
    *(v7 + 12) = 2082;
    *(v0 + 16) = v4;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v14);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve cached location for %s. %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = sub_1002087C4(_swiftEmptyArrayStorage);

  **(v0 + 24) = v11;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10035A85C()
{

  return _swift_task_switch(sub_10035A8C4, 0, 0);
}

uint64_t sub_10035A8C4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
  v4 = *(v2 + 80);
  *(v0 + 152) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 128) = v6;
  *(v6 + 16) = xmmword_1004C1900;
  sub_10037EC58(v1, v6 + v5, type metadata accessor for SecureLocation);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_10035A9D8;

  return sub_100370914(v6, v3);
}

uint64_t sub_10035A9D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = (*(v2 + 152) + 32) & ~*(v2 + 152);
  *(v2 + 144) = a1;

  swift_setDeallocating();
  sub_10037EBF8(v3 + v4, type metadata accessor for SecureLocation);
  swift_deallocClassInstance();

  return _swift_task_switch(sub_10035AB30, 0, 0);
}

uint64_t sub_10035AB30()
{
  v13 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005E0B28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for Handle();
    type metadata accessor for Location();
    sub_10001AEBC(&qword_1005A91B0, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v7 = Dictionary.description.getter();
    v9 = sub_10000D01C(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received cached location: %s", v5, 0xCu);
    sub_100004984(v6);
  }

  else
  {
    v4 = *(v0 + 80);
  }

  sub_10037EBF8(v4, type metadata accessor for SecureLocation);
  **(v0 + 24) = *(v0 + 144);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10035AD64(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  Priority = type metadata accessor for LocatePriority();
  v3[28] = Priority;
  v3[29] = *(Priority - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for Handle();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();

  return _swift_task_switch(sub_10035AF1C, v2, 0);
}

uint64_t sub_10035AF1C()
{
  v140 = v0;
  v1 = *(v0 + 200);
  if (!*(v1 + 16))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_10000A6F0(v45, qword_1005E0B28);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "replaceOrKeepExistingLiveSubscription with no handle", v48, 2u);
    }

    v138 = sub_1002087C4(_swiftEmptyArrayStorage);

    v49 = *(v0 + 8);

    return v49(v138);
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 232);
  v7 = *(v0 + 216);
  v8 = *(v4 + 16);
  v4 += 16;
  v9 = *(v4 + 64);
  *(v0 + 528) = v9;
  *(v0 + 344) = v8;
  *(v0 + 352) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v133 = (v9 + 32) & ~v9;
  v134 = v8;
  v8(v2, v1 + v133, v3);
  v10 = enum case for LocatePriority.live(_:);
  *(v0 + 532) = enum case for LocatePriority.live(_:);
  v11 = *(v6 + 104);
  *(v0 + 360) = v11;
  *(v0 + 368) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v131 = v10;
  v130 = v11;
  v11(v5);
  v12 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v13 = *(v7 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_18;
  }

  v14 = *(v0 + 280);

  v15 = sub_1001FDF60(v14);
  if ((v16 & 1) == 0)
  {

LABEL_18:
    v52 = *(v0 + 296);
    v51 = *(v0 + 304);
    v53 = *(v0 + 288);
    v25 = *(*(v0 + 232) + 8);
    v25(*(v0 + 280), *(v0 + 224));
    (*(v51 + 56))(v53, 1, 1, v52);
    goto LABEL_19;
  }

  v17 = *(v0 + 304);
  v18 = *(v0 + 280);
  v19 = *(v0 + 288);
  v20 = *(v0 + 224);
  v21 = *(v0 + 232);
  v22 = (*(v13 + 56) + 24 * v15);
  v23 = *v22;
  v24 = v22[1];
  v126 = *(v0 + 296);
  v25 = *(v21 + 8);
  *(v0 + 376) = v25;
  *(v0 + 384) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;

  v25(v18, v20);

  sub_1000CFAA4(v26, v24);
  sub_1003AE66C(v23, v19);

  if ((*(v17 + 48))(v19, 1, v126) == 1)
  {
LABEL_19:
    *(v0 + 480) = v25;
    sub_100002CE0(*(v0 + 288), &qword_1005B3360, &unk_1004C6AA0);
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v127 = v25;
    v54 = type metadata accessor for Logger();
    sub_10000A6F0(v54, qword_1005E0B28);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v139[0] = v58;
      *v57 = 141558275;
      *(v57 + 4) = 1752392040;
      *(v57 + 12) = 2081;
      swift_beginAccess();
      sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = sub_10000D01C(v59, v60, v139);

      *(v57 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "No current live subscription, new subscription for %{private,mask.hash}s", v57, 0x16u);
      sub_100004984(v58);
    }

    v62 = *(v0 + 336);
    v63 = *(v0 + 296);
    v64 = *(v0 + 256);
    v123 = *(v0 + 232);
    v124 = *(v0 + 240);
    v65 = *(v0 + 224);
    v120 = *(v0 + 208);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    v134(v66 + v133, v62, v63);
    v130(v64, v131, v65);
    sub_100362F78(v120, v66, v64);

    *(v0 + 488) = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v127(v64, v65);
    v67 = swift_allocObject();
    *(v0 + 496) = v67;
    *(v67 + 16) = xmmword_1004C1900;
    v134(v67 + v133, v62, v63);
    v130(v124, v131, v65);
    v68 = swift_task_alloc();
    *(v0 + 504) = v68;
    *v68 = v0;
    v68[1] = sub_10035C564;
    v69 = *(v0 + 240);
    v70 = v67;
    goto LABEL_24;
  }

  v27 = *(v0 + 328);
  v28 = *(v0 + 200);
  (*(*(v0 + 304) + 32))(v27, *(v0 + 288), *(v0 + 296));
  if (sub_1002603C4(v27, v28))
  {
    if (qword_1005A84C8 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 320);
    v30 = *(v0 + 328);
    v31 = *(v0 + 296);
    v32 = type metadata accessor for Logger();
    sub_10000A6F0(v32, qword_1005E0B28);
    v134(v29, v30, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 320);
    v38 = *(v0 + 296);
    v37 = *(v0 + 304);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v139[0] = v136;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = *(v37 + 8);
      v43(v36, v38);
      v44 = sub_10000D01C(v40, v42, v139);

      *(v39 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "Keep subscribing live for handle %{private,mask.hash}s", v39, 0x16u);
      sub_100004984(v136);
    }

    else
    {

      v43 = *(v37 + 8);
      v43(v36, v38);
    }

    (*(*(v0 + 304) + 24))(*(v0 + 336), *(v0 + 328), *(v0 + 296));
    *(v0 + 440) = v43;
    v132 = *(v0 + 376);
    v137 = *(v0 + 532);
    v129 = *(v0 + 360);
    v93 = *(v0 + 336);
    v92 = *(v0 + 344);
    v94 = *(v0 + 296);
    v95 = *(v0 + 256);
    v135 = *(v0 + 248);
    v96 = (*(v0 + 528) + 32) & ~*(v0 + 528);
    v121 = *(v0 + 208);
    log = *(v0 + 224);
    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    v92(v97 + v96, v93, v94);
    v129(v95, v137, log);
    sub_100362F78(v121, v97, v95);

    v132(v95, log);
    v98 = swift_allocObject();
    *(v0 + 448) = v98;
    *(v98 + 16) = xmmword_1004C1900;
    v92(v98 + v96, v93, v94);
    v129(v135, v137, log);
    v99 = swift_task_alloc();
    *(v0 + 456) = v99;
    *v99 = v0;
    v99[1] = sub_10035C280;
    v69 = *(v0 + 248);
    v70 = v98;
LABEL_24:

    return sub_100367504(v70, v69, 1);
  }

  v128 = v25;
  v71 = v0 + 16;
  v72 = (v0 + 48);
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v73 = *(v0 + 328);
  v74 = *(v0 + 312);
  v75 = *(v0 + 296);
  v76 = type metadata accessor for Logger();
  sub_10000A6F0(v76, qword_1005E0B28);
  v134(v74, v73, v75);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v125 = v78;
    v79 = *(v0 + 304);
    v80 = *(v0 + 312);
    v81 = *(v0 + 296);
    v82 = swift_slowAlloc();
    v139[0] = swift_slowAlloc();
    *v82 = 141558787;
    *(v82 + 4) = 1752392040;
    *(v82 + 12) = 2081;
    sub_10001AEBC(&qword_1005B02C8, 255, &type metadata accessor for Handle, &protocol conformance descriptor for Handle);
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v84;
    v86 = *(v79 + 8);
    v86(v80, v81);
    v87 = v83;
    v72 = (v0 + 48);
    v88 = sub_10000D01C(v87, v85, v139);
    v71 = v0 + 16;

    *(v82 + 14) = v88;
    *(v82 + 22) = 2160;
    *(v82 + 24) = 1752392040;
    *(v82 + 32) = 2081;
    swift_beginAccess();
    v89 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = sub_10000D01C(v89, v90, v139);

    *(v82 + 34) = v91;
    _os_log_impl(&_mh_execute_header, v77, v125, "Replacing current live subscription for %{private,mask.hash}s with %{private,mask.hash}s", v82, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v100 = *(v0 + 304);
    v101 = *(v0 + 312);
    v102 = *(v0 + 296);

    v86 = *(v100 + 8);
    v86(v101, v102);
  }

  *(v0 + 392) = v86;
  v130(*(v0 + 272), v131, *(v0 + 224));
  v103 = sub_10034542C(v71);
  v104 = sub_1000CDF10(v72);
  if (*v105)
  {
    v106 = *(v0 + 272);
    v107 = *(v0 + 224);
    sub_1001D9250(*(v0 + 328));

    (v104)(v72, 0);
    v108 = v106;
    v109 = v107;
  }

  else
  {
    v110 = *(v0 + 272);
    v111 = *(v0 + 224);
    (v104)(v72, 0);
    v108 = v110;
    v109 = v111;
  }

  v128(v108, v109);
  (v103)(v71, 0);
  v112 = *(v0 + 328);
  v114 = *(v0 + 296);
  v113 = *(v0 + 304);
  v115 = *(v0 + 264);
  v116 = *(v0 + 224);
  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  *(v0 + 400) = *(v113 + 72);
  v117 = swift_allocObject();
  *(v0 + 408) = v117;
  *(v117 + 16) = xmmword_1004C1900;
  v134(v117 + v133, v112, v114);
  v130(v115, v131, v116);
  v118 = swift_task_alloc();
  *(v0 + 416) = v118;
  *v118 = v0;
  v118[1] = sub_10035BE3C;
  v119 = *(v0 + 264);

  return sub_100363EB0(v117, v119);
}

uint64_t sub_10035BE3C()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 408);
  v14 = *(*v1 + 392);
  v5 = *(*v1 + 376);
  v12 = *(*v1 + 304);
  v13 = *(*v1 + 296);
  v6 = *(*v1 + 264);
  v7 = *(*v1 + 224);
  v8 = (*(v3 + 528) + 32) & ~*(v3 + 528);
  *(v3 + 424) = v0;

  v5(v6, v7);
  swift_setDeallocating();
  *(v3 + 432) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v4 + v8, v13);
  swift_deallocClassInstance();
  v9 = *(v2 + 216);
  if (v0)
  {
    v10 = sub_10035C940;
  }

  else
  {
    v10 = sub_10035C090;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10035C090()
{
  v1 = (*(v0 + 528) + 32) & ~*(v0 + 528);
  *(v0 + 440) = *(v0 + 392);
  v14 = *(v0 + 376);
  v2 = *(v0 + 532);
  v16 = *(v0 + 360);
  v4 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 296);
  v6 = *(v0 + 256);
  v15 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 208);
  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C1900;
  swift_beginAccess();
  v3(v7 + v1, v4, v5);
  v16(v6, v2, v12);
  sub_100362F78(v13, v7, v6);

  v14(v6, v12);
  v8 = swift_allocObject();
  *(v0 + 448) = v8;
  *(v8 + 16) = xmmword_1004C1900;
  v3(v8 + v1, v4, v5);
  v16(v15, v2, v12);
  v9 = swift_task_alloc();
  *(v0 + 456) = v9;
  *v9 = v0;
  v9[1] = sub_10035C280;
  v10 = *(v0 + 248);

  return sub_100367504(v8, v10, 1);
}

uint64_t sub_10035C280(uint64_t a1)
{
  v4 = *v2;
  v4[58] = v1;

  v5 = v4[47];
  v6 = v4[31];
  v7 = v4[28];
  v8 = v4[27];
  if (v1)
  {
    v5(v6, v7);

    v9 = sub_10035CA5C;
  }

  else
  {
    v4[59] = a1;
    v5(v6, v7);

    v9 = sub_10035C43C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10035C43C()
{
  v1 = v0[55];
  v2 = v0[42];
  v3 = v0[37];
  v1(v0[41], v3);
  v1(v2, v3);
  v6 = v0[59];

  v4 = v0[1];

  return v4(v6);
}

uint64_t sub_10035C564(uint64_t a1)
{
  v4 = *v2;
  v4[64] = v1;

  v5 = v4[60];
  v6 = v4[30];
  v7 = v4[28];
  v8 = v4[27];
  if (v1)
  {
    v5(v6, v7);

    v9 = sub_10035C82C;
  }

  else
  {
    v4[65] = a1;
    v5(v6, v7);

    v9 = sub_10035C720;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10035C720()
{
  (*(v0[38] + 8))(v0[42], v0[37]);
  v3 = v0[65];

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_10035C82C()
{
  (*(v0[38] + 8))(v0[42], v0[37]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10035C940()
{
  (*(v0 + 392))(*(v0 + 328), *(v0 + 296));
  (*(v0 + 392))(*(v0 + 336), *(v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035CA5C()
{
  (*(v0 + 440))(*(v0 + 328), *(v0 + 296));
  (*(v0 + 440))(*(v0 + 336), *(v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035CB88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return _swift_task_switch(sub_10035CC58, v2, 0);
}

uint64_t sub_10035CC58()
{
  v4 = (&async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter + async function pointer to dispatch thunk of FM.XPCSession.underlyingConnectionIdentity.getter);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_10035CD08;
  v2 = *(v0 + 72);

  return v4(v2);
}

uint64_t sub_10035CD08()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10035CE18, v1, 0);
}

uint64_t sub_10035CE18()
{
  v30 = v0;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005E0B28);
  (*(v4 + 16))(v1, v2, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136315394;
    v0[2] = v12;
    type metadata accessor for LocationServiceClient();

    v14 = String.init<A>(describing:)();
    v16 = sub_10000D01C(v14, v15, &v29);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2082;
    sub_10001AEBC(&qword_1005A92C0, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v22 = *(v10 + 8);
    v21 = v10 + 8;
    v20 = v22;
    v22(v9, v11);
    v23 = sub_10000D01C(v17, v19, &v29);

    *(v13 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v6, v7, "Location Service: removed connection: %s connectionIdentifier: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v24 = *(v10 + 8);
    v21 = v10 + 8;
    v20 = v24;
    v24(v9, v11);
  }

  v0[11] = v21;
  v0[12] = v20;
  v25 = sub_10035D2B8();
  v0[13] = v25;
  v26 = swift_task_alloc();
  v0[14] = v26;
  *v26 = v0;
  v26[1] = sub_10035D108;
  v27 = v0[4];

  return sub_10035DEBC(v27, v25);
}

uint64_t sub_10035D108()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_10035D234, v1, 0);
}

uint64_t sub_10035D234()
{
  (*(v0 + 96))(*(v0 + 72), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

void *sub_10035D2B8()
{
  Priority = type metadata accessor for LocatePriority();
  v1 = *(Priority - 8);
  v2 = __chkstk_darwin(Priority);
  v38 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = v30 - v5;
  __chkstk_darwin(v4);
  v8 = v30 - v7;
  v9 = static LocatePriority.allCases.getter();
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v1 + 16);
    v12 = v1 + 16;
    v11 = v13;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v30[1] = v9;
    v33 = v14;
    v15 = v9 + v14;
    v16 = *(v12 + 56);
    v41 = (v12 + 72);
    v40 = enum case for LocatePriority.backgroundAppRefresh(_:);
    v36 = enum case for LocatePriority.shallow(_:);
    v35 = enum case for LocatePriority.live(_:);
    v32 = enum case for LocatePriority.backgroundProactive(_:);
    v17 = (v12 - 8);
    v31 = (v12 + 16);
    v39 = _swiftEmptyArrayStorage;
    v37 = v16;
    v34 = v13;
    v13(v8, (v9 + v14), Priority);
    while (1)
    {
      v11(v6, v8, Priority);
      v18 = (*v41)(v6, Priority);
      if (v18 == v40)
      {
        (*v17)(v8, Priority);
      }

      else if (v18 == v36 || v18 == v35)
      {
        v11(v38, v8, Priority);
        v20 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001FD4DC(0, v20[2] + 1, 1, v20);
        }

        v21 = v20;
        v22 = v20[2];
        v39 = v21;
        v23 = v21[3];
        if (v22 >= v23 >> 1)
        {
          v39 = sub_1001FD4DC((v23 > 1), v22 + 1, 1, v39);
        }

        (*v17)(v8, Priority);
        v24 = v38;
        v25 = v39;
        v39[2] = v22 + 1;
        v26 = v25 + v33 + v22 * v37;
        v16 = v37;
        (*v31)(v26, v24, Priority);
      }

      else
      {
        v27 = *v17;
        v28 = v18;
        (*v17)(v8, Priority);
        if (v28 != v32)
        {
          v27(v6, Priority);
        }

        v11 = v34;
        v16 = v37;
      }

      v15 += v16;
      if (!--v10)
      {
        break;
      }

      v11(v8, v15, Priority);
    }

    return v39;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

void sub_10035D620(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v63 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v64 = &v58 - v7;
  __chkstk_darwin(v6);
  v9 = &v58 - v8;
  v10 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v11 = __chkstk_darwin(v10 - 8);
  v65 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v58 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v58 - v20;
  __chkstk_darwin(v19);
  v23 = &v58 - v22;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000A6F0(v24, qword_1005E0B28);
  v67 = a1;
  sub_100005F04(a1, v23, &qword_1005A96E0, &qword_1004C2A80);
  v66 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v60 = v15;
    v61 = v9;
    v28 = v2;
    v29 = v3;
    v30 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v68[0] = v59;
    *v30 = 136446466;
    *(v30 + 4) = sub_10000D01C(0xD000000000000028, 0x80000001004E8140, v68);
    *(v30 + 12) = 2082;
    sub_100005F04(v23, v21, &qword_1005A96E0, &qword_1004C2A80);
    v31 = (*(v29 + 48))(v21, 1, v28);
    v62 = v29;
    if (v31 == 1)
    {
      sub_100002CE0(v21, &qword_1005A96E0, &qword_1004C2A80);
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    else
    {
      v32 = UUID.uuidString.getter();
      v33 = v34;
      (*(v29 + 8))(v21, v28);
    }

    v2 = v28;
    sub_100002CE0(v23, &qword_1005A96E0, &qword_1004C2A80);
    v35 = sub_10000D01C(v32, v33, v68);

    *(v30 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s %{public}s", v30, 0x16u);
    swift_arrayDestroy();

    v9 = v61;
    v3 = v62;
    v15 = v60;
  }

  else
  {

    sub_100002CE0(v23, &qword_1005A96E0, &qword_1004C2A80);
  }

  sub_100005F04(v67, v15, &qword_1005A96E0, &qword_1004C2A80);
  v36 = *(v3 + 48);
  if (v36(v15, 1, v2) == 1)
  {
    type metadata accessor for Transaction();
    v37 = static Transaction.currentNSXPCConnection.getter();
    if (v37)
    {
      v38 = v37;
      NSXPCConnection.id.getter();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    (*(v3 + 56))(v18, v39, 1, v2);
    if (v36(v15, 1, v2) != 1)
    {
      sub_100002CE0(v15, &qword_1005A96E0, &qword_1004C2A80);
    }
  }

  else
  {
    (*(v3 + 32))(v18, v15, v2);
    (*(v3 + 56))(v18, 0, 1, v2);
  }

  if (v36(v18, 1, v2) == 1)
  {
    sub_100002CE0(v18, &qword_1005A96E0, &qword_1004C2A80);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v68[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_10000D01C(0xD000000000000028, 0x80000001004E8140, v68);
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s. Failed to get current client XPC connection ID", v42, 0xCu);
      sub_100004984(v43);
    }
  }

  else
  {
    v44 = *(v3 + 32);
    v44(v9, v18, v2);
    swift_beginAccess();
    v45 = v65;
    sub_1001ACB04(v9, v65);
    swift_endAccess();
    if (v36(v45, 1, v2) == 1)
    {
      (*(v3 + 8))(v9, v2);
      sub_100002CE0(v45, &qword_1005A96E0, &qword_1004C2A80);
    }

    else
    {
      v46 = v64;
      v44(v64, v45, v2);
      v47 = v63;
      (*(v3 + 16))(v63, v46, v2);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v68[0] = v51;
        *v50 = 136446210;
        v52 = UUID.uuidString.getter();
        v54 = v53;
        v55 = *(v3 + 8);
        v55(v47, v2);
        v56 = sub_10000D01C(v52, v54, v68);

        *(v50 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v48, v49, "Unregistered Stewie client: %{public}s", v50, 0xCu);
        sub_100004984(v51);

        v55(v64, v2);
        v55(v9, v2);
      }

      else
      {

        v57 = *(v3 + 8);
        v57(v47, v2);
        v57(v46, v2);
        v57(v9, v2);
      }
    }
  }
}

uint64_t sub_10035DEBC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = type metadata accessor for Handle();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_10004B564(&qword_1005B2478, &unk_1004D69D0);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  Priority = type metadata accessor for LocatePriority();
  v3[21] = Priority;
  v3[22] = *(Priority - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for ClientID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10035E144, v2, 0);
}

uint64_t sub_10035E144()
{
  v221 = v0;
  if (qword_1005A84C8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v1 = *(v0 + 272);
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v4 = *(v0 + 64);
    v5 = type metadata accessor for Logger();
    *(v0 + 280) = sub_10000A6F0(v5, qword_1005E0B28);
    v6 = *(v3 + 16);
    *(v0 + 288) = v6;
    *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v1, v4, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 272);
    v12 = *(v0 + 248);
    v11 = *(v0 + 256);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v220[0] = swift_slowAlloc();
      *v13 = 136446466;
      sub_10001AEBC(&qword_1005B1F10, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v19 = *(v11 + 8);
      v18 = v11 + 8;
      v17 = v19;
      v19(v10, v12);
      v20 = sub_10000D01C(v14, v16, v220);

      *(v13 + 4) = v20;
      *(v13 + 12) = 2082;
      v21 = Array.description.getter();
      v23 = sub_10000D01C(v21, v22, v220);

      *(v13 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v7, v8, "Removing all subscriptions for %{public}s with priorities: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v24 = *(v11 + 8);
      v18 = v11 + 8;
      v17 = v24;
      v24(v10, v12);
    }

    *(v0 + 304) = v18;
    *(v0 + 312) = v17;
    v25 = *(v0 + 80);
    v26 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
    swift_beginAccess();
    v27 = *(v25 + v26);
    *(v0 + 320) = v27;
    v28 = *(v27 + 32);
    *(v0 + 408) = v28;
    v29 = 1 << v28;
    v30 = v29 < 64 ? ~(-1 << v29) : -1;
    v31 = v30 & *(v27 + 64);

    v32 = 0;
    if (v31)
    {
      break;
    }

LABEL_12:
    v34 = ((1 << *(v0 + 408)) + 63) >> 6;
    if (v34 <= (v32 + 1))
    {
      v35 = v32 + 1;
    }

    else
    {
      v35 = ((1 << *(v0 + 408)) + 63) >> 6;
    }

    v36 = v35 - 1;
    while (1)
    {
      v37 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v37 >= v34)
      {
        v94 = *(v0 + 232);
        v95 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
        v31 = 0;
        goto LABEL_21;
      }

      v33 = *(v0 + 320);
      v31 = *(v33 + 8 * v37 + 64);
      ++v32;
      if (v31)
      {
        v32 = v37;
        goto LABEL_20;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
  }

LABEL_11:
  while (1)
  {
    v33 = *(v0 + 320);
LABEL_20:
    v38 = *(v0 + 232);
    v39 = *(v0 + 208);
    v40 = *(v0 + 168);
    v41 = *(v0 + 176);
    v42 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v43 = v42 | (v32 << 6);
    (*(v41 + 16))(v39, *(v33 + 48) + *(v41 + 72) * v43, v40);
    v44 = (*(v33 + 56) + 24 * v43);
    v45 = v44[1];
    v213 = *v44;
    v216 = v44[2];
    v46 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v47 = (v38 + *(v46 + 48));
    (*(v41 + 32))(v38, v39, v40);
    *v47 = v213;
    v47[1] = v45;
    v47[2] = v216;
    (*(*(v46 - 8) + 56))(v38, 0, 1, v46);

    v36 = v32;
LABEL_21:
    *(v0 + 328) = v31;
    *(v0 + 336) = v36;
    v48 = *(v0 + 240);
    sub_1000176A8(*(v0 + 232), v48, &qword_1005B2468, &qword_1004D69B0);
    v49 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v50 = *(v49 - 8);
    v51 = *(v50 + 48);
    if (v51(v48, 1, v49) == 1)
    {
      break;
    }

    v52 = *(v0 + 200);
    v53 = *(v0 + 176);
    v54 = *(v0 + 72);
    v55 = (*(v0 + 240) + *(v49 + 48));
    v56 = *v55;
    *(v0 + 344) = *v55;
    *(v0 + 352) = v55[1];
    (*(v53 + 32))(v52);
    v57 = 0;
    v58 = *(v54 + 16);
    while (v58 != v57)
    {
      v59 = v57 + 1;
      sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v57 = v59;
      if (v60)
      {
        v61 = *(v56 + 32);
        *(v0 + 409) = v61;
        v62 = 1 << v61;
        if (v62 < 64)
        {
          v63 = ~(-1 << v62);
        }

        else
        {
          v63 = -1;
        }

        v64 = v63 & *(v56 + 64);

        for (i = 0; ; i = *(v0 + 368))
        {
          if (!v64)
          {
            v67 = ((1 << *(v0 + 409)) + 63) >> 6;
            if (v67 <= (i + 1))
            {
              v68 = i + 1;
            }

            else
            {
              v68 = ((1 << *(v0 + 409)) + 63) >> 6;
            }

            v69 = v68 - 1;
            while (1)
            {
              v70 = i + 1;
              if (__OFADD__(i, 1))
              {
                break;
              }

              if (v70 >= v67)
              {
                v92 = *(v0 + 152);
                v93 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
                v79 = 0;
                goto LABEL_41;
              }

              v66 = *(v0 + 344);
              v64 = *(v66 + 8 * v70 + 64);
              ++i;
              if (v64)
              {
                i = v70;
                goto LABEL_40;
              }
            }

            __break(1u);
            goto LABEL_111;
          }

          v66 = *(v0 + 344);
LABEL_40:
          v71 = *(v0 + 152);
          v72 = *(v0 + 128);
          v73 = *(v0 + 88);
          v74 = *(v0 + 96);
          v217 = (v64 - 1) & v64;
          v75 = __clz(__rbit64(v64)) | (i << 6);
          (*(v74 + 16))(v72, *(v66 + 48) + *(v74 + 72) * v75, v73);
          v76 = *(*(v66 + 56) + 8 * v75);
          v77 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          v78 = *(v77 + 48);
          (*(v74 + 32))(v71, v72, v73);
          *(v71 + v78) = v76;
          (*(*(v77 - 8) + 56))(v71, 0, 1, v77);

          v79 = v217;
          v69 = i;
LABEL_41:
          *(v0 + 360) = v79;
          *(v0 + 368) = v69;
          v80 = *(v0 + 160);
          sub_1000176A8(*(v0 + 152), v80, &qword_1005B2478, &unk_1004D69D0);
          v81 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          if ((*(*(v81 - 8) + 48))(v80, 1, v81) == 1)
          {
            break;
          }

          v82 = *(*(v0 + 160) + *(v81 + 48));
          (*(*(v0 + 96) + 32))(*(v0 + 120));
          if (*(v82 + 16))
          {
            sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
            v83 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v84 = -1 << *(v82 + 32);
            v85 = v83 & ~v84;
            if ((*(v82 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85))
            {
              v86 = ~v84;
              v87 = *(*(v0 + 256) + 72);
              while (1)
              {
                v88 = *(v0 + 312);
                v89 = *(v0 + 264);
                v90 = *(v0 + 248);
                (*(v0 + 288))(v89, *(v82 + 48) + v85 * v87, v90);
                sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
                v91 = dispatch thunk of static Equatable.== infix(_:_:)();
                v88(v89, v90);
                if (v91)
                {
                  break;
                }

                v85 = (v85 + 1) & v86;
                if (((*(v82 + 56 + ((v85 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v85) & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              v96 = *(v0 + 200);
              v97 = *(v0 + 120);
              v98 = *(v0 + 88);
              v99 = *(v0 + 96);
              v100 = *(v0 + 64);

              sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
              v101 = (*(v99 + 80) + 32) & ~*(v99 + 80);
              v102 = swift_allocObject();
              *(v102 + 16) = xmmword_1004C1900;
              (*(v99 + 16))(v102 + v101, v97, v98);
              v103 = sub_100362404(v100, v102, v96);
              *(v0 + 376) = v103;

              v104 = swift_task_alloc();
              *(v0 + 384) = v104;
              *v104 = v0;
              v104[1] = sub_10035F75C;
              v105 = *(v0 + 200);

              return sub_100363EB0(v103, v105);
            }
          }

LABEL_29:

          (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));
          v64 = *(v0 + 360);
        }

        (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

        v31 = *(v0 + 328);
        v32 = *(v0 + 336);
        if (v31)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }

    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

    v32 = v36;
    if (!v31)
    {
      goto LABEL_12;
    }
  }

  v196 = v51;
  v107 = *(v0 + 80);

  v108 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
  swift_beginAccess();
  v109 = *(v107 + v108);
  v110 = *(v109 + 64);
  v198 = v109 + 64;
  v111 = -1 << *(v109 + 32);
  if (-v111 < 64)
  {
    v112 = ~(-1 << -v111);
  }

  else
  {
    v112 = -1;
  }

  v113 = v112 & v110;
  v194 = (63 - v111) >> 6;
  v195 = *(v107 + v108);
  v197 = (v50 + 56);

  v114 = 0;
  v199 = v49;
LABEL_61:
  if (!v113)
  {
    if (v194 <= v114 + 1)
    {
      v116 = v114 + 1;
    }

    else
    {
      v116 = v194;
    }

    v117 = v116 - 1;
    while (1)
    {
      v115 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        goto LABEL_112;
      }

      if (v115 >= v194)
      {
        (*v197)(*(v0 + 216), 1, 1, v49);
        v200 = 0;
        v201 = v117;
        goto LABEL_72;
      }

      v113 = *(v198 + 8 * v115);
      ++v114;
      if (v113)
      {
        v201 = v115;
        goto LABEL_71;
      }
    }
  }

  v201 = v114;
  v115 = v114;
LABEL_71:
  v118 = *(v0 + 208);
  v119 = *(v0 + 216);
  v121 = *(v0 + 168);
  v120 = *(v0 + 176);
  v200 = (v113 - 1) & v113;
  v122 = __clz(__rbit64(v113)) | (v115 << 6);
  (*(v120 + 16))(v118, *(v195 + 48) + *(v120 + 72) * v122, v121);
  v123 = (*(v195 + 56) + 24 * v122);
  v124 = *v123;
  v125 = v123[1];
  v126 = v123[2];
  v127 = (v119 + *(v49 + 48));
  (*(v120 + 32))(v119, v118, v121);
  *v127 = v124;
  v127[1] = v125;
  v127[2] = v126;
  v49 = v199;
  (*v197)(v119, 0, 1, v199);

LABEL_72:
  v128 = *(v0 + 224);
  sub_1000176A8(*(v0 + 216), v128, &qword_1005B2468, &qword_1004D69B0);
  if (v196(v128, 1, v49) != 1)
  {
    v129 = *(v0 + 72);
    v211 = *(*(v0 + 224) + *(v49 + 48));
    (*(*(v0 + 176) + 32))(*(v0 + 192));
    v130 = 0;
    v131 = *(v129 + 16);
    do
    {
      if (v131 == v130)
      {
        (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

LABEL_60:

        v113 = v200;
        v114 = v201;
        goto LABEL_61;
      }

      v132 = v130 + 1;
      sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v133 = dispatch thunk of static Equatable.== infix(_:_:)();
      v130 = v132;
    }

    while ((v133 & 1) == 0);
    v134 = v211 + 64;
    v135 = -1 << *(v211 + 32);
    if (-v135 < 64)
    {
      v136 = ~(-1 << -v135);
    }

    else
    {
      v136 = -1;
    }

    v137 = v136 & *(v211 + 64);
    v210 = (63 - v135) >> 6;

    v138 = 0;
    while (v137)
    {
      v142 = v138;
LABEL_92:
      v145 = *(v0 + 128);
      v146 = *(v0 + 136);
      v148 = *(v0 + 88);
      v147 = *(v0 + 96);
      v212 = (v137 - 1) & v137;
      v149 = __clz(__rbit64(v137)) | (v142 << 6);
      (*(v147 + 16))(v145, *(v211 + 48) + *(v147 + 72) * v149, v148);
      v150 = *(*(v211 + 56) + 8 * v149);
      v151 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
      v152 = *(v151 + 48);
      (*(v147 + 32))(v146, v145, v148);
      *(v146 + v152) = v150;
      (*(*(v151 - 8) + 56))(v146, 0, 1, v151);

LABEL_93:
      v153 = *(v0 + 144);
      sub_1000176A8(*(v0 + 136), v153, &qword_1005B2478, &unk_1004D69D0);
      v154 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
      if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
      {
        (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

        v49 = v199;
        goto LABEL_60;
      }

      v155 = *(*(v0 + 144) + *(v154 + 48));
      (*(*(v0 + 96) + 32))(*(v0 + 112));
      if (*(v155 + 16) && (sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID), v156 = dispatch thunk of Hashable._rawHashValue(seed:)(), v214 = v155 + 56, v218 = v155, v157 = -1 << *(v155 + 32), v158 = v156 & ~v157, ((*(v155 + 56 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) != 0))
      {
        v159 = ~v157;
        v160 = *(*(v0 + 256) + 72);
        while (1)
        {
          v161 = *(v0 + 312);
          v162 = *(v0 + 264);
          v163 = *(v0 + 248);
          (*(v0 + 288))(v162, *(v218 + 48) + v158 * v160, v163);
          sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
          v164 = dispatch thunk of static Equatable.== infix(_:_:)();
          v161(v162, v163);
          if (v164)
          {
            break;
          }

          v158 = (v158 + 1) & v159;
          if (((*(v214 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        log = *(v0 + 192);
        v208 = *(v0 + 184);
        v205 = *(v0 + 176);
        v207 = *(v0 + 168);
        v165 = *(v0 + 112);
        v206 = *(v0 + 104);
        v167 = *(v0 + 88);
        v166 = *(v0 + 96);
        v202 = *(v0 + 64);

        sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
        v168 = (*(v166 + 80) + 32) & ~*(v166 + 80);
        v169 = swift_allocObject();
        *(v169 + 16) = xmmword_1004C1900;
        v170 = *(v166 + 16);
        v170(v169 + v168, v165, v167);
        sub_100386720(v202, v169, log);

        v170(v206, v165, v167);
        (*(v205 + 16))(v208, log, v207);
        v171 = Logger.logObject.getter();
        v172 = static os_log_type_t.default.getter();
        v173 = os_log_type_enabled(v171, v172);
        v174 = *(v0 + 176);
        v215 = *(v0 + 168);
        v219 = *(v0 + 184);
        v176 = *(v0 + 104);
        v175 = *(v0 + 112);
        v177 = *(v0 + 88);
        v178 = *(v0 + 96);
        if (v173)
        {
          v179 = *(v0 + 96);
          v180 = *(v0 + 88);
          v181 = swift_slowAlloc();
          v220[0] = swift_slowAlloc();
          *v181 = 141558787;
          *(v181 + 4) = 1752392040;
          *(v181 + 12) = 2081;
          v203 = Handle.identifier.getter();
          v209 = v175;
          v183 = v182;
          v184 = *(v179 + 8);
          v184(v176, v180);
          v185 = sub_10000D01C(v203, v183, v220);

          *(v181 + 14) = v185;
          *(v181 + 22) = 2160;
          *(v181 + 24) = 1752392040;
          *(v181 + 32) = 2081;
          sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
          v186 = dispatch thunk of CustomStringConvertible.description.getter();
          v188 = v187;
          (*(v174 + 8))(v219, v215);
          v189 = sub_10000D01C(v186, v188, v220);

          *(v181 + 34) = v189;
          _os_log_impl(&_mh_execute_header, v171, v172, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v181, 0x2Au);
          swift_arrayDestroy();

          v184(v209, v180);
        }

        else
        {

          (*(v174 + 8))(v219, v215);
          v192 = *(v178 + 8);
          v192(v176, v177);
          v192(v175, v177);
        }
      }

      else
      {
LABEL_80:
        v139 = *(v0 + 112);
        v140 = *(v0 + 88);
        v141 = *(v0 + 96);

        (*(v141 + 8))(v139, v140);
      }

      v134 = v211 + 64;
      v137 = v212;
    }

    if (v210 <= v138 + 1)
    {
      v143 = v138 + 1;
    }

    else
    {
      v143 = v210;
    }

    v144 = v143 - 1;
    while (1)
    {
      v142 = v138 + 1;
      if (__OFADD__(v138, 1))
      {
        break;
      }

      if (v142 >= v210)
      {
        v190 = *(v0 + 136);
        v191 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
        (*(*(v191 - 8) + 56))(v190, 1, 1, v191);
        v212 = 0;
        v138 = v144;
        goto LABEL_93;
      }

      v137 = *(v134 + 8 * v142);
      ++v138;
      if (v137)
      {
        v138 = v142;
        goto LABEL_92;
      }
    }

    __break(1u);
  }

  v193 = swift_task_alloc();
  *(v0 + 400) = v193;
  *v193 = v0;
  v193[1] = sub_100360C6C;

  return sub_100021A68();
}

uint64_t sub_10035F75C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_100360F8C;
  }

  else
  {
    v4 = sub_10035F8A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_10035F8A4()
{
  v194 = v0;
  while (1)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 120), *(v0 + 88));
    v1 = *(v0 + 360);
    v2 = *(v0 + 368);
LABEL_7:
    if (!v1)
    {
      v7 = ((1 << *(v0 + 409)) + 63) >> 6;
      if (v7 <= (v2 + 1))
      {
        v8 = v2 + 1;
      }

      else
      {
        v8 = ((1 << *(v0 + 409)) + 63) >> 6;
      }

      v9 = v8 - 1;
      while (1)
      {
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_105;
        }

        if (v10 >= v7)
        {
          v56 = *(v0 + 152);
          v57 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          (*(*(v57 - 8) + 56))(v56, 1, 1, v57);
          v15 = 0;
          goto LABEL_18;
        }

        v6 = *(v0 + 344);
        v1 = *(v6 + 8 * v10 + 64);
        ++v2;
        if (v1)
        {
          v2 = v10;
          goto LABEL_17;
        }
      }
    }

    v6 = *(v0 + 344);
LABEL_17:
    v11 = *(v0 + 152);
    v12 = *(v0 + 128);
    v13 = *(v192 + 96);
    v14 = *(v192 + 88);
    v15 = (v1 - 1) & v1;
    v16 = __clz(__rbit64(v1)) | (v2 << 6);
    (*(v13 + 16))(v12, *(v6 + 48) + *(v13 + 72) * v16, v14);
    v17 = *(*(v6 + 56) + 8 * v16);
    v18 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    v19 = *(v18 + 48);
    (*(v13 + 32))(v11, v12, v14);
    v0 = v192;
    *(v11 + v19) = v17;
    (*(*(v18 - 8) + 56))(v11, 0, 1, v18);

    v9 = v2;
LABEL_18:
    *(v0 + 360) = v15;
    *(v0 + 368) = v9;
    v20 = *(v0 + 160);
    sub_1000176A8(*(v0 + 152), v20, &qword_1005B2478, &unk_1004D69D0);
    v21 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

      v23 = *(v0 + 328);
      v22 = *(v0 + 336);
      if (!v23)
      {
        goto LABEL_21;
      }

      while (2)
      {
        v24 = *(v0 + 320);
LABEL_29:
        v29 = *(v0 + 232);
        v30 = *(v0 + 208);
        v31 = *(v192 + 176);
        v32 = *(v192 + 168);
        v33 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v34 = v33 | (v22 << 6);
        (*(v31 + 16))(v30, *(v24 + 48) + *(v31 + 72) * v34, v32);
        v35 = (*(v24 + 56) + 24 * v34);
        v36 = v35[1];
        v188 = *v35;
        v190 = v35[2];
        v37 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v38 = (v29 + *(v37 + 48));
        (*(v31 + 32))(v29, v30, v32);
        v0 = v192;
        *v38 = v188;
        v38[1] = v36;
        v38[2] = v190;
        (*(*(v37 - 8) + 56))(v29, 0, 1, v37);

        v27 = v22;
LABEL_30:
        *(v0 + 328) = v23;
        *(v0 + 336) = v27;
        v39 = *(v0 + 240);
        sub_1000176A8(*(v0 + 232), v39, &qword_1005B2468, &qword_1004D69B0);
        v40 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v41 = *(v40 - 8);
        v42 = *(v41 + 48);
        v43 = v39;
        v44 = v40;
        if (v42(v43, 1, v40) == 1)
        {
          v175 = v42;
          v177 = v44;
          v68 = *(v0 + 80);

          v69 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
          swift_beginAccess();
          v70 = *(v68 + v69);
          v71 = *(v70 + 64);
          v176 = v70 + 64;
          v72 = -1 << *(v70 + 32);
          if (-v72 < 64)
          {
            v73 = ~(-1 << -v72);
          }

          else
          {
            v73 = -1;
          }

          v179 = v73 & v71;
          v172 = (63 - v72) >> 6;
          v173 = *(v68 + v69);
          v174 = (v41 + 56);

          v74 = 0;
LABEL_51:
          v75 = v179;
          if (v179)
          {
            v178 = v74;
            v76 = v74;
LABEL_61:
            v80 = *(v0 + 208);
            v81 = *(v0 + 216);
            v82 = *(v0 + 168);
            v83 = *(v0 + 176);
            v179 = (v75 - 1) & v75;
            v84 = __clz(__rbit64(v75)) | (v76 << 6);
            (*(v83 + 16))(v80, *(v173 + 48) + *(v83 + 72) * v84, v82);
            v85 = (*(v173 + 56) + 24 * v84);
            v86 = *v85;
            v87 = v85[1];
            v88 = v85[2];
            v89 = (v81 + *(v177 + 48));
            v90 = v80;
            v79 = v177;
            (*(v83 + 32))(v81, v90, v82);
            *v89 = v86;
            v89[1] = v87;
            v89[2] = v88;
            (*v174)(v81, 0, 1, v177);
            v0 = v192;

LABEL_62:
            v91 = *(v0 + 224);
            sub_1000176A8(*(v0 + 216), v91, &qword_1005B2468, &qword_1004D69B0);
            if (v175(v91, 1, v79) != 1)
            {
              v92 = *(v0 + 72);
              v187 = *(*(v0 + 224) + *(v79 + 48));
              (*(*(v0 + 176) + 32))(*(v0 + 192));
              v93 = 0;
              v94 = *(v92 + 16);
              do
              {
                if (v94 == v93)
                {
                  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

LABEL_50:

                  v74 = v178;
                  goto LABEL_51;
                }

                v95 = v93 + 1;
                sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
                v96 = dispatch thunk of static Equatable.== infix(_:_:)();
                v93 = v95;
              }

              while ((v96 & 1) == 0);
              v97 = v187 + 64;
              v98 = -1 << *(v187 + 32);
              if (-v98 < 64)
              {
                v99 = ~(-1 << -v98);
              }

              else
              {
                v99 = -1;
              }

              v100 = v99 & *(v187 + 64);
              v186 = (63 - v98) >> 6;

              v101 = 0;
              while (v100)
              {
                v105 = v101;
LABEL_82:
                v108 = *(v0 + 128);
                v109 = *(v0 + 136);
                v111 = *(v0 + 88);
                v110 = *(v0 + 96);
                v189 = (v100 - 1) & v100;
                v112 = __clz(__rbit64(v100)) | (v105 << 6);
                (*(v110 + 16))(v108, *(v187 + 48) + *(v110 + 72) * v112, v111);
                v113 = *(*(v187 + 56) + 8 * v112);
                v114 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                v115 = *(v114 + 48);
                (*(v110 + 32))(v109, v108, v111);
                *(v109 + v115) = v113;
                v0 = v192;
                (*(*(v114 - 8) + 56))(v109, 0, 1, v114);

LABEL_83:
                v116 = *(v0 + 144);
                sub_1000176A8(*(v0 + 136), v116, &qword_1005B2478, &unk_1004D69D0);
                v117 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                if ((*(*(v117 - 8) + 48))(v116, 1, v117) == 1)
                {
                  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));

                  goto LABEL_50;
                }

                v118 = *(*(v0 + 144) + *(v117 + 48));
                (*(*(v0 + 96) + 32))(*(v0 + 112));
                if (*(v118 + 16))
                {
                  sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
                  v119 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v120 = -1 << *(v118 + 32);
                  v121 = v119 & ~v120;
                  if ((*(v118 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121))
                  {
                    v122 = ~v120;
                    v123 = *(*(v192 + 256) + 72);
                    while (1)
                    {
                      v124 = *(v192 + 312);
                      v125 = *(v192 + 264);
                      v126 = *(v192 + 248);
                      (*(v192 + 288))(v125, *(v118 + 48) + v121 * v123, v126);
                      sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
                      v127 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v124(v125, v126);
                      if (v127)
                      {
                        break;
                      }

                      v121 = (v121 + 1) & v122;
                      if (((*(v118 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
                      {
                        goto LABEL_89;
                      }
                    }

                    v131 = *(v192 + 176);
                    v183 = *(v192 + 168);
                    v184 = *(v192 + 184);
                    v132 = *(v192 + 112);
                    v180 = *(v192 + 192);
                    v182 = *(v192 + 104);
                    v133 = *(v192 + 88);
                    v134 = *(v192 + 96);
                    v135 = *(v192 + 64);

                    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
                    v136 = (*(v134 + 80) + 32) & ~*(v134 + 80);
                    v137 = swift_allocObject();
                    *(v137 + 16) = xmmword_1004C1900;
                    v138 = *(v134 + 16);
                    v138(v137 + v136, v132, v133);
                    sub_100386720(v135, v137, v180);

                    v138(v182, v132, v133);
                    (*(v131 + 16))(v184, v180, v183);
                    v139 = Logger.logObject.getter();
                    v140 = static os_log_type_t.default.getter();
                    v141 = os_log_type_enabled(v139, v140);
                    v143 = *(v192 + 176);
                    v142 = *(v192 + 184);
                    v191 = *(v192 + 168);
                    v145 = *(v192 + 104);
                    v144 = *(v192 + 112);
                    v147 = *(v192 + 88);
                    v146 = *(v192 + 96);
                    if (v141)
                    {
                      v148 = *(v192 + 184);
                      v149 = swift_slowAlloc();
                      v193[0] = swift_slowAlloc();
                      *v149 = 141558787;
                      *(v149 + 4) = 1752392040;
                      *(v149 + 12) = 2081;
                      v181 = Handle.identifier.getter();
                      v185 = v144;
                      v151 = v150;
                      v152 = *(v146 + 8);
                      v152(v145, v147);
                      v153 = sub_10000D01C(v181, v151, v193);

                      *(v149 + 14) = v153;
                      *(v149 + 22) = 2160;
                      *(v149 + 24) = 1752392040;
                      *(v149 + 32) = 2081;
                      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
                      v154 = dispatch thunk of CustomStringConvertible.description.getter();
                      v156 = v155;
                      (*(v143 + 8))(v148, v191);
                      v157 = sub_10000D01C(v154, v156, v193);

                      *(v149 + 34) = v157;
                      _os_log_impl(&_mh_execute_header, v139, v140, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v149, 0x2Au);
                      swift_arrayDestroy();

                      v152(v185, v147);
                    }

                    else
                    {

                      (*(v143 + 8))(v142, v191);
                      v160 = *(v146 + 8);
                      v160(v145, v147);
                      v160(v144, v147);
                    }

                    v0 = v192;
                  }

                  else
                  {
LABEL_89:
                    v0 = v192;
                    v128 = *(v192 + 112);
                    v129 = *(v192 + 88);
                    v130 = *(v192 + 96);

                    (*(v130 + 8))(v128, v129);
                  }
                }

                else
                {
                  v102 = *(v0 + 112);
                  v103 = *(v0 + 88);
                  v104 = *(v0 + 96);

                  (*(v104 + 8))(v102, v103);
                }

                v97 = v187 + 64;
                v100 = v189;
              }

              if (v186 <= v101 + 1)
              {
                v106 = v101 + 1;
              }

              else
              {
                v106 = v186;
              }

              v107 = v106 - 1;
              while (1)
              {
                v105 = v101 + 1;
                if (__OFADD__(v101, 1))
                {
                  break;
                }

                if (v105 >= v186)
                {
                  v158 = *(v0 + 136);
                  v159 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                  (*(*(v159 - 8) + 56))(v158, 1, 1, v159);
                  v189 = 0;
                  v101 = v107;
                  goto LABEL_83;
                }

                v100 = *(v97 + 8 * v105);
                ++v101;
                if (v100)
                {
                  v101 = v105;
                  goto LABEL_82;
                }
              }

              __break(1u);
            }

            v161 = swift_task_alloc();
            *(v0 + 400) = v161;
            *v161 = v0;
            v161[1] = sub_100360C6C;

            sub_100021A68();
            return;
          }

          if (v172 <= v74 + 1)
          {
            v77 = v74 + 1;
          }

          else
          {
            v77 = v172;
          }

          v78 = v77 - 1;
          v79 = v177;
          while (1)
          {
            v76 = v74 + 1;
            if (__OFADD__(v74, 1))
            {
              break;
            }

            if (v76 >= v172)
            {
              (*v174)(*(v0 + 216), 1, 1, v177);
              v178 = v78;
              v179 = 0;
              goto LABEL_62;
            }

            v75 = *(v176 + 8 * v76);
            ++v74;
            if (v75)
            {
              v178 = v76;
              goto LABEL_61;
            }
          }
        }

        else
        {
          v45 = *(v0 + 200);
          v46 = *(v0 + 176);
          v47 = *(v0 + 72);
          v48 = (*(v0 + 240) + *(v44 + 48));
          v49 = *v48;
          *(v0 + 344) = *v48;
          *(v0 + 352) = v48[1];
          (*(v46 + 32))(v45);
          v50 = 0;
          v51 = *(v47 + 16);
          while (v51 != v50)
          {
            v52 = v50 + 1;
            sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
            v53 = dispatch thunk of static Equatable.== infix(_:_:)();
            v50 = v52;
            if (v53)
            {
              v3 = *(v49 + 32);
              *(v0 + 409) = v3;
              v4 = 1 << v3;
              if (v4 < 64)
              {
                v5 = ~(-1 << v4);
              }

              else
              {
                v5 = -1;
              }

              v1 = v5 & *(v49 + 64);

              v2 = 0;
              goto LABEL_7;
            }
          }

          (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));

          v22 = v27;
          if (v23)
          {
            continue;
          }

LABEL_21:
          v25 = ((1 << *(v0 + 408)) + 63) >> 6;
          if (v25 <= (v22 + 1))
          {
            v26 = v22 + 1;
          }

          else
          {
            v26 = ((1 << *(v0 + 408)) + 63) >> 6;
          }

          v27 = v26 - 1;
          while (1)
          {
            v28 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v28 >= v25)
            {
              v54 = *(v0 + 232);
              v55 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
              (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
              v23 = 0;
              goto LABEL_30;
            }

            v24 = *(v0 + 320);
            v23 = *(v24 + 8 * v28 + 64);
            ++v22;
            if (v23)
            {
              v22 = v28;
              goto LABEL_29;
            }
          }

          __break(1u);
LABEL_105:
          __break(1u);
        }

        break;
      }

      __break(1u);
      return;
    }

    v58 = *(*(v0 + 160) + *(v21 + 48));
    (*(*(v0 + 96) + 32))(*(v0 + 120));
    if (*(v58 + 16))
    {
      sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v60 = -1 << *(v58 + 32);
      v61 = v59 & ~v60;
      if ((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
      {
        break;
      }
    }

LABEL_44:
  }

  v62 = ~v60;
  v63 = *(*(v0 + 256) + 72);
  while (1)
  {
    v64 = *(v0 + 312);
    v65 = *(v0 + 264);
    v66 = *(v0 + 248);
    (*(v0 + 288))(v65, *(v58 + 48) + v61 * v63, v66);
    sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v67 = dispatch thunk of static Equatable.== infix(_:_:)();
    v64(v65, v66);
    if (v67)
    {
      break;
    }

    v61 = (v61 + 1) & v62;
    v0 = v192;
    if (((*(v58 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v162 = *(v192 + 200);
  v163 = *(v192 + 120);
  v165 = *(v192 + 88);
  v164 = *(v192 + 96);
  v166 = *(v192 + 64);

  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v167 = (*(v164 + 80) + 32) & ~*(v164 + 80);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_1004C1900;
  (*(v164 + 16))(v168 + v167, v163, v165);
  v169 = sub_100362404(v166, v168, v162);
  *(v192 + 376) = v169;

  v170 = swift_task_alloc();
  *(v192 + 384) = v170;
  *v170 = v192;
  v170[1] = sub_10035F75C;
  v171 = *(v192 + 200);

  sub_100363EB0(v169, v171);
}

uint64_t sub_100360C6C(char a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 410) = a1;

  return _swift_task_switch(sub_100360D84, v2, 0);
}

uint64_t sub_100360D84()
{
  if ((*(v0 + 410) & 1) == 0)
  {
    v1 = *(v0 + 80);
    v2 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask;
    if (*(v1 + OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationTask))
    {

      Task.cancel()();
    }

    *(v1 + v2) = 0;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Cancel next legacy location refresh task", v5, 2u);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_100360F8C()
{
  v198 = v0;
  v1 = v0;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v196 = v0;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error from unsubscribe: %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  while (1)
  {
    (*(*(v1 + 96) + 8))(*(v1 + 120), *(v1 + 88));
    v7 = *(v1 + 360);
    v8 = *(v1 + 368);
LABEL_9:
    if (!v7)
    {
      v13 = ((1 << *(v1 + 409)) + 63) >> 6;
      if (v13 <= (v8 + 1))
      {
        v14 = v8 + 1;
      }

      else
      {
        v14 = ((1 << *(v1 + 409)) + 63) >> 6;
      }

      v15 = v14 - 1;
      while (1)
      {
        v16 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_106;
        }

        if (v16 >= v13)
        {
          v62 = *(v1 + 152);
          v63 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
          (*(*(v63 - 8) + 56))(v62, 1, 1, v63);
          v22 = 0;
          goto LABEL_20;
        }

        v12 = *(v1 + 344);
        v7 = *(v12 + 8 * v16 + 64);
        ++v8;
        if (v7)
        {
          v8 = v16;
          goto LABEL_19;
        }
      }
    }

    v12 = *(v1 + 344);
LABEL_19:
    v17 = *(v1 + 152);
    v18 = *(v1 + 128);
    v19 = *(v1 + 88);
    v20 = *(v1 + 96);
    v21 = __clz(__rbit64(v7));
    v22 = (v7 - 1) & v7;
    v23 = v21 | (v8 << 6);
    (*(v20 + 16))(v18, *(v12 + 48) + *(v20 + 72) * v23, v19);
    v24 = *(*(v12 + 56) + 8 * v23);
    v25 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    v26 = *(v25 + 48);
    (*(v20 + 32))(v17, v18, v19);
    *(v17 + v26) = v24;
    (*(*(v25 - 8) + 56))(v17, 0, 1, v25);

    v15 = v8;
LABEL_20:
    *(v1 + 360) = v22;
    *(v1 + 368) = v15;
    v27 = *(v1 + 160);
    sub_1000176A8(*(v1 + 152), v27, &qword_1005B2478, &unk_1004D69D0);
    v28 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
    {
      (*(*(v1 + 176) + 8))(*(v1 + 200), *(v1 + 168));

      v29 = *(v1 + 328);
      v30 = *(v1 + 336);
      if (!v29)
      {
        goto LABEL_23;
      }

      while (2)
      {
        v31 = *(v1 + 320);
LABEL_31:
        v36 = *(v1 + 232);
        v37 = *(v1 + 208);
        v38 = *(v196 + 176);
        v39 = *(v196 + 168);
        v40 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v41 = v40 | (v30 << 6);
        (*(v38 + 16))(v37, *(v31 + 48) + *(v38 + 72) * v41, v39);
        v42 = (*(v31 + 56) + 24 * v41);
        v43 = *v42;
        v44 = v42[1];
        v194 = v42[2];
        v45 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v46 = (v36 + *(v45 + 48));
        (*(v38 + 32))(v36, v37, v39);
        v1 = v196;
        *v46 = v43;
        v46[1] = v44;
        v46[2] = v194;
        (*(*(v45 - 8) + 56))(v36, 0, 1, v45);

        v34 = v30;
LABEL_32:
        *(v1 + 328) = v29;
        *(v1 + 336) = v34;
        v47 = *(v1 + 240);
        sub_1000176A8(*(v1 + 232), v47, &qword_1005B2468, &qword_1004D69B0);
        v48 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
        v49 = *(v48 - 8);
        v50 = *(v49 + 48);
        if (v50(v47, 1, v48) == 1)
        {
          v179 = v50;
          v74 = *(v1 + 80);

          v75 = OBJC_IVAR____TtC13findmylocated15LocationService_legacyLocationSubscriptions;
          swift_beginAccess();
          v76 = *(v74 + v75);
          v77 = *(v76 + 64);
          v180 = v76 + 64;
          v78 = -1 << *(v76 + 32);
          if (-v78 < 64)
          {
            v79 = ~(-1 << -v78);
          }

          else
          {
            v79 = -1;
          }

          v80 = v79 & v77;
          v175 = (63 - v78) >> 6;
          v177 = *(v74 + v75);
          v178 = (v49 + 56);

          v81 = 0;
          v176 = v48;
LABEL_53:
          if (v80)
          {
            v182 = v81;
            v82 = v81;
LABEL_63:
            v85 = *(v1 + 208);
            v86 = *(v1 + 216);
            v88 = *(v1 + 168);
            v87 = *(v1 + 176);
            v181 = (v80 - 1) & v80;
            v89 = __clz(__rbit64(v80)) | (v82 << 6);
            (*(v87 + 16))(v85, *(v177 + 48) + *(v87 + 72) * v89, v88);
            v90 = (*(v177 + 56) + 24 * v89);
            v91 = *v90;
            v92 = v90[1];
            v93 = v90[2];
            v94 = (v86 + *(v48 + 48));
            (*(v87 + 32))(v86, v85, v88);
            *v94 = v91;
            v94[1] = v92;
            v94[2] = v93;
            (*v178)(v86, 0, 1, v48);

LABEL_64:
            v95 = *(v1 + 224);
            sub_1000176A8(*(v1 + 216), v95, &qword_1005B2468, &qword_1004D69B0);
            if (v179(v95, 1, v48) != 1)
            {
              v96 = *(v1 + 72);
              v192 = *(*(v1 + 224) + *(v48 + 48));
              (*(*(v1 + 176) + 32))(*(v1 + 192));
              v97 = 0;
              v98 = *(v96 + 16);
              do
              {
                if (v98 == v97)
                {
                  (*(*(v1 + 176) + 8))(*(v1 + 192), *(v1 + 168));

LABEL_52:

                  v80 = v181;
                  v81 = v182;
                  goto LABEL_53;
                }

                v99 = v97 + 1;
                sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
                v100 = dispatch thunk of static Equatable.== infix(_:_:)();
                v97 = v99;
              }

              while ((v100 & 1) == 0);
              v101 = v192 + 64;
              v102 = -1 << *(v192 + 32);
              if (-v102 < 64)
              {
                v103 = ~(-1 << -v102);
              }

              else
              {
                v103 = -1;
              }

              v104 = v103 & *(v192 + 64);
              v191 = (63 - v102) >> 6;

              v105 = 0;
              while (v104)
              {
                v109 = v105;
LABEL_84:
                v112 = *(v1 + 128);
                v113 = *(v1 + 136);
                v115 = *(v1 + 88);
                v114 = *(v1 + 96);
                v193 = (v104 - 1) & v104;
                v116 = __clz(__rbit64(v104)) | (v109 << 6);
                (*(v114 + 16))(v112, *(v192 + 48) + *(v114 + 72) * v116, v115);
                v117 = *(*(v192 + 56) + 8 * v116);
                v118 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                v119 = *(v118 + 48);
                (*(v114 + 32))(v113, v112, v115);
                *(v113 + v119) = v117;
                (*(*(v118 - 8) + 56))(v113, 0, 1, v118);

LABEL_85:
                v120 = *(v1 + 144);
                sub_1000176A8(*(v1 + 136), v120, &qword_1005B2478, &unk_1004D69D0);
                v121 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                if ((*(*(v121 - 8) + 48))(v120, 1, v121) == 1)
                {
                  (*(*(v1 + 176) + 8))(*(v1 + 192), *(v1 + 168));

                  v48 = v176;
                  goto LABEL_52;
                }

                v122 = *(*(v1 + 144) + *(v121 + 48));
                (*(*(v1 + 96) + 32))(*(v1 + 112));
                if (*(v122 + 16))
                {
                  sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
                  v123 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v124 = -1 << *(v122 + 32);
                  v125 = v123 & ~v124;
                  if ((*(v122 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125))
                  {
                    v126 = ~v124;
                    v127 = *(*(v196 + 256) + 72);
                    while (1)
                    {
                      v128 = *(v196 + 312);
                      v129 = *(v196 + 264);
                      v130 = *(v196 + 248);
                      (*(v196 + 288))(v129, *(v122 + 48) + v125 * v127, v130);
                      sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
                      v131 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v128(v129, v130);
                      if (v131)
                      {
                        break;
                      }

                      v125 = (v125 + 1) & v126;
                      if (((*(v122 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
                      {
                        goto LABEL_91;
                      }
                    }

                    v1 = v196;
                    v185 = *(v196 + 192);
                    v189 = *(v196 + 184);
                    v135 = *(v196 + 176);
                    v136 = *(v196 + 112);
                    v186 = *(v196 + 104);
                    log = *(v196 + 168);
                    v137 = *(v196 + 88);
                    v138 = *(v196 + 96);
                    v139 = *(v196 + 64);

                    sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
                    v140 = (*(v138 + 80) + 32) & ~*(v138 + 80);
                    v141 = swift_allocObject();
                    *(v141 + 16) = xmmword_1004C1900;
                    v142 = *(v138 + 16);
                    v142(v141 + v140, v136, v137);
                    sub_100386720(v139, v141, v185);

                    v142(v186, v136, v137);
                    (*(v135 + 16))(v189, v185, log);
                    v143 = Logger.logObject.getter();
                    v144 = static os_log_type_t.default.getter();
                    v145 = os_log_type_enabled(v143, v144);
                    v147 = *(v196 + 176);
                    v146 = *(v196 + 184);
                    v195 = *(v196 + 168);
                    v149 = *(v196 + 104);
                    v148 = *(v196 + 112);
                    v150 = *(v196 + 88);
                    v151 = *(v196 + 96);
                    if (v145)
                    {
                      v184 = *(v196 + 184);
                      v152 = swift_slowAlloc();
                      v197[0] = swift_slowAlloc();
                      *v152 = 141558787;
                      v187 = v144;
                      *(v152 + 4) = 1752392040;
                      *(v152 + 12) = 2081;
                      v183 = Handle.identifier.getter();
                      v190 = v148;
                      v154 = v153;
                      v155 = *(v151 + 8);
                      v155(v149, v150);
                      v156 = sub_10000D01C(v183, v154, v197);

                      *(v152 + 14) = v156;
                      *(v152 + 22) = 2160;
                      *(v152 + 24) = 1752392040;
                      *(v152 + 32) = 2081;
                      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
                      v157 = dispatch thunk of CustomStringConvertible.description.getter();
                      v159 = v158;
                      (*(v147 + 8))(v184, v195);
                      v160 = sub_10000D01C(v157, v159, v197);

                      *(v152 + 34) = v160;
                      _os_log_impl(&_mh_execute_header, v143, v187, "remove legacy subscription for handle: %{private,mask.hash}s with priority: %{private,mask.hash}s", v152, 0x2Au);
                      swift_arrayDestroy();

                      v155(v190, v150);
                    }

                    else
                    {

                      (*(v147 + 8))(v146, v195);
                      v163 = *(v151 + 8);
                      v163(v149, v150);
                      v163(v148, v150);
                    }
                  }

                  else
                  {
LABEL_91:
                    v1 = v196;
                    v132 = *(v196 + 112);
                    v133 = *(v196 + 88);
                    v134 = *(v196 + 96);

                    (*(v134 + 8))(v132, v133);
                  }
                }

                else
                {
                  v106 = *(v1 + 112);
                  v107 = *(v1 + 88);
                  v108 = *(v1 + 96);

                  (*(v108 + 8))(v106, v107);
                }

                v101 = v192 + 64;
                v104 = v193;
              }

              if (v191 <= v105 + 1)
              {
                v110 = v105 + 1;
              }

              else
              {
                v110 = v191;
              }

              v111 = v110 - 1;
              while (1)
              {
                v109 = v105 + 1;
                if (__OFADD__(v105, 1))
                {
                  break;
                }

                if (v109 >= v191)
                {
                  v161 = *(v1 + 136);
                  v162 = sub_10004B564(&qword_1005B2420, &qword_1004D67E8);
                  (*(*(v162 - 8) + 56))(v161, 1, 1, v162);
                  v193 = 0;
                  v105 = v111;
                  goto LABEL_85;
                }

                v104 = *(v101 + 8 * v109);
                ++v105;
                if (v104)
                {
                  v105 = v109;
                  goto LABEL_84;
                }
              }

              __break(1u);
            }

            v164 = swift_task_alloc();
            *(v1 + 400) = v164;
            *v164 = v1;
            v164[1] = sub_100360C6C;

            sub_100021A68();
            return;
          }

          if (v175 <= v81 + 1)
          {
            v83 = v81 + 1;
          }

          else
          {
            v83 = v175;
          }

          v84 = v83 - 1;
          while (1)
          {
            v82 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              break;
            }

            if (v82 >= v175)
            {
              (*v178)(*(v1 + 216), 1, 1, v48);
              v181 = 0;
              v182 = v84;
              goto LABEL_64;
            }

            v80 = *(v180 + 8 * v82);
            ++v81;
            if (v80)
            {
              v182 = v82;
              goto LABEL_63;
            }
          }
        }

        else
        {
          v51 = *(v1 + 200);
          v52 = *(v1 + 176);
          v53 = *(v1 + 72);
          v54 = (*(v1 + 240) + *(v48 + 48));
          v55 = *v54;
          *(v1 + 344) = *v54;
          *(v1 + 352) = v54[1];
          (*(v52 + 32))(v51);
          v56 = 0;
          v57 = *(v53 + 16);
          while (v57 != v56)
          {
            v58 = v56 + 1;
            sub_10001AEBC(&qword_1005B0210, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
            v59 = dispatch thunk of static Equatable.== infix(_:_:)();
            v56 = v58;
            if (v59)
            {
              v9 = *(v55 + 32);
              *(v1 + 409) = v9;
              v10 = 1 << v9;
              if (v10 < 64)
              {
                v11 = ~(-1 << v10);
              }

              else
              {
                v11 = -1;
              }

              v7 = v11 & *(v55 + 64);

              v8 = 0;
              goto LABEL_9;
            }
          }

          (*(*(v1 + 176) + 8))(*(v1 + 200), *(v1 + 168));

          v30 = v34;
          if (v29)
          {
            continue;
          }

LABEL_23:
          v32 = ((1 << *(v1 + 408)) + 63) >> 6;
          if (v32 <= (v30 + 1))
          {
            v33 = v30 + 1;
          }

          else
          {
            v33 = ((1 << *(v1 + 408)) + 63) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v35 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v35 >= v32)
            {
              v60 = *(v1 + 232);
              v61 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
              (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
              v29 = 0;
              goto LABEL_32;
            }

            v31 = *(v1 + 320);
            v29 = *(v31 + 8 * v35 + 64);
            ++v30;
            if (v29)
            {
              v30 = v35;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_106:
          __break(1u);
        }

        break;
      }

      __break(1u);
      return;
    }

    v64 = *(*(v1 + 160) + *(v28 + 48));
    (*(*(v1 + 96) + 32))(*(v1 + 120));
    if (*(v64 + 16))
    {
      sub_10001AEBC(&qword_1005AE9D0, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
      v65 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v66 = -1 << *(v64 + 32);
      v67 = v65 & ~v66;
      if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
      {
        break;
      }
    }

LABEL_46:
  }

  v68 = ~v66;
  v69 = *(*(v1 + 256) + 72);
  while (1)
  {
    v70 = *(v1 + 312);
    v71 = *(v1 + 264);
    v72 = *(v1 + 248);
    (*(v1 + 288))(v71, *(v64 + 48) + v67 * v69, v72);
    sub_10001AEBC(&qword_1005AE9D8, 255, &type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70(v71, v72);
    if (v73)
    {
      break;
    }

    v67 = (v67 + 1) & v68;
    v1 = v196;
    if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v165 = *(v196 + 200);
  v166 = *(v196 + 120);
  v168 = *(v196 + 88);
  v167 = *(v196 + 96);
  v169 = *(v196 + 64);

  sub_10004B564(&qword_1005B0048, &qword_1004D15A0);
  v170 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_1004C1900;
  (*(v167 + 16))(v171 + v170, v166, v168);
  v172 = sub_100362404(v169, v171, v165);
  *(v196 + 376) = v172;

  v173 = swift_task_alloc();
  *(v196 + 384) = v173;
  *v173 = v196;
  v173[1] = sub_10035F75C;
  v174 = *(v196 + 200);

  sub_100363EB0(v172, v174);
}

void (**sub_100362404(uint64_t a1, void (**a2)(char *, uint64_t, uint64_t), uint64_t a3))(char *, uint64_t, uint64_t)
{
  v4 = v3;
  v8 = 0;
  Priority = type metadata accessor for LocatePriority();
  v105 = *(Priority - 8);
  v9 = __chkstk_darwin(Priority);
  v116 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v100 - v11;
  v12 = sub_10004B564(&qword_1005B2468, &qword_1004D69B0);
  v13 = __chkstk_darwin(v12 - 8);
  v109 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = v100 - v15;
  v119 = _swiftEmptyArrayStorage;
  v16 = a2[2];
  if (v16)
  {
    v17 = *(type metadata accessor for Handle() - 8);
    v18 = a2;
    v19 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v20 = *(v17 + 72);
    v21 = v16;
    do
    {
      sub_10037CD0C(v19, a1, a3, "TRACE: removeSubscription: client: %s\npriority: %{public}s handle: %{private,mask.hash}s");
      v19 += v20;
      v21 = (v21 - 1);
    }

    while (v21);
  }

  else
  {
    v18 = a2;
  }

  v22 = OBJC_IVAR____TtC13findmylocated15LocationService_subscriptions;
  swift_beginAccess();
  v23 = *(v4 + v22);
  v24 = &qword_1005A8000;
  v25 = v18;
  if (!*(v23 + 16))
  {
    goto LABEL_17;
  }

  v26 = sub_1001FDF60(a3);
  if ((v27 & 1) == 0)
  {

LABEL_17:
    v119 = v18;

    goto LABEL_18;
  }

  v113 = v22;
  v115 = v4;
  v28 = (*(v23 + 56) + 24 * v26);
  v30 = *v28;
  v29 = v28[1];
  v31 = v28[2];

  v118[0] = v30;
  v118[1] = v29;
  v112 = v31;
  v118[2] = v31;
  if (qword_1005A84C8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005E0B28);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v110 = v35;
    v111 = swift_slowAlloc();
    v117 = v111;
    *v35 = 136315138;

    v36 = sub_100344994(v30, v29, v112);
    v112 = v25;
    v37 = v36;
    v39 = v38;

    v40 = v37;
    v25 = v112;
    v41 = sub_10000D01C(v40, v39, &v117);

    v42 = v110;
    *(v110 + 1) = v41;
    _os_log_impl(&_mh_execute_header, v33, v34, "removeSubscription: %s", v42, 0xCu);
    sub_100004984(v111);
  }

  v4 = v115;
  v22 = v113;
  if (v16)
  {
    v43 = *(type metadata accessor for Handle() - 8);
    v44 = v25 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v45 = *(v43 + 72);
    do
    {
      sub_10037AC3C(v44, v118, a1, a3, &v119, v4);
      v44 += v45;
      v16 = (v16 - 1);
    }

    while (v16);
  }

  v24 = &qword_1005A8000;
LABEL_18:
  v46 = Priority;
  if (v24[153] != -1)
  {
LABEL_42:
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  v48 = sub_10000A6F0(v47, qword_1005E0B28);

  v106 = v48;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  v51 = os_log_type_enabled(v49, v50);
  v100[1] = v8;
  if (v51)
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v118[0] = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    type metadata accessor for Handle();
    v54 = Array.description.getter();
    v8 = v4;
    v56 = sub_10000D01C(v54, v55, v118);

    *(v52 + 14) = v56;
    v4 = v8;
    _os_log_impl(&_mh_execute_header, v49, v50, "After removeSubscription for handles: %{private,mask.hash}s", v52, 0x16u);
    sub_100004984(v53);
  }

  v57 = *(v4 + v22);
  v58 = *(v57 + 64);
  v102 = v57 + 64;
  v59 = 1 << *(v57 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v22 = v60 & v58;
  v101 = (v59 + 63) >> 6;
  v112 = (v105 + 32);
  v113 = (v105 + 16);
  v111 = (v105 + 8);
  v104 = v57;

  v61 = 0;
  v4 = &qword_1004D69B8;
  *&v62 = 141558787;
  v103 = v62;
  v63 = v116;
  while (1)
  {
    if (!v22)
    {
      if (v101 <= v61 + 1)
      {
        v65 = v61 + 1;
      }

      else
      {
        v65 = v101;
      }

      v66 = v109;
      while (1)
      {
        v64 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        if (v64 >= v101)
        {
          v115 = (v65 - 1);
          v78 = v46;
          v98 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
          (*(*(v98 - 8) + 56))(v66, 1, 1, v98);
          v22 = 0;
          goto LABEL_36;
        }

        v22 = *(v102 + 8 * v64);
        v61 = (v61 + 1);
        if (v22)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

    v64 = v61;
LABEL_35:
    v67 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v68 = v67 | (v64 << 6);
    v69 = v104;
    v70 = v105;
    (*(v105 + 16))(v114, *(v104 + 48) + *(v105 + 72) * v68, v46);
    v71 = (*(v69 + 56) + 24 * v68);
    v72 = *v71;
    v73 = v71[1];
    v74 = v71[2];
    v75 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    v76 = &v109[*(v75 + 48)];
    v77 = *(v70 + 32);
    v66 = v109;
    v78 = v46;
    v77();
    *v76 = v72;
    *(v76 + 1) = v73;
    *(v76 + 2) = v74;
    (*(*(v75 - 8) + 56))(v66, 0, 1, v75);

    v115 = v64;
    v63 = v116;
LABEL_36:
    v79 = v107;
    sub_1000176A8(v66, v107, &qword_1005B2468, &qword_1004D69B0);
    v80 = sub_10004B564(&qword_1005B2470, &qword_1004D69B8);
    if ((*(*(v80 - 8) + 48))(v79, 1, v80) == 1)
    {
      break;
    }

    v81 = (v79 + *(v80 + 48));
    v83 = *v81;
    v82 = v81[1];
    v84 = v79;
    v110 = v81[2];
    v46 = v78;
    (*v113)(v63, v79, v78);
    v8 = v114;
    (*v112)(v114, v84, v78);

    v85 = Logger.logObject.getter();
    v86 = v63;
    v87 = static os_log_type_t.default.getter();
    v88 = *v111;
    (*v111)(v8, v78);

    if (os_log_type_enabled(v85, v87))
    {
      v89 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v118[0] = v8;
      *v89 = v103;
      *(v89 + 4) = 1752392040;
      *(v89 + 12) = 2081;
      sub_10001AEBC(&qword_1005B2460, 255, &type metadata accessor for LocatePriority, &protocol conformance descriptor for LocatePriority);
      v90 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v91;
      v88(v116, Priority);
      v93 = sub_10000D01C(v90, v92, v118);
      v46 = Priority;

      *(v89 + 14) = v93;
      *(v89 + 22) = 2160;
      *(v89 + 24) = 1752392040;
      *(v89 + 32) = 2081;

      v94 = sub_100344994(v83, v82, v110);
      v96 = v95;

      v97 = sub_10000D01C(v94, v96, v118);

      *(v89 + 34) = v97;
      _os_log_impl(&_mh_execute_header, v85, v87, "priority: %{private,mask.hash}s: :%{private,mask.hash}s", v89, 0x2Au);
      swift_arrayDestroy();

      v63 = v116;

      v61 = v115;
    }

    else
    {

      v88(v86, v78);
      v61 = v115;
      v63 = v86;
    }

    v4 = &qword_1004D69B8;
  }

  return v119;
}