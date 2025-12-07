uint64_t sub_1000F2450(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F24C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F24F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_10008C010(a1, v4);
}

uint64_t sub_1000F25B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F25F8(uint64_t a1)
{
  v2 = type metadata accessor for TetsuoAppMainView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F2654(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1000F2748;

  return v5(v2 + 32);
}

uint64_t sub_1000F2748()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1000F285C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_1000F2654(a1, v4);
}

uint64_t sub_1000F2914(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA04;

  return sub_1000F2654(a1, v4);
}

uint64_t sub_1000F29CC()
{
  sub_10000459C(&qword_100171260, &qword_10011A1B8);
  sub_10000459C(&qword_100171280, &qword_10011A1D0);
  sub_100012C48(&qword_100171288, &qword_100171260, &qword_10011A1B8, &protocol conformance descriptor for WindowGroup<A>);
  sub_100012C48(&qword_100171290, &qword_100171280, &qword_10011A1D0, &protocol conformance descriptor for TupleCommandContent<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F2B54(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v18[-v7 - 8];
  v9 = sub_100002BE4(&qword_100171360, &unk_10011A3B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18[-v11 - 8];
  v13 = type metadata accessor for ButtonRole();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1000E9E30(a1 + *(v3 + 68), v18);
  sub_10001FEB8(a1, &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1000F3178(&v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v15 + v14);
  sub_100002BE4(&qword_100171368, &qword_10011A3C8);
  sub_1000F324C();
  ActionButton.init(role:action:label:)();
  sub_1000F33DC();
  sub_1000EA3A4();
  View.buttonStyle<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000F2DFC(uint64_t a1)
{
  sub_10002BF18();

  return _ComponentBody.init(_:)();
}

unint64_t sub_1000F2E44()
{
  result = qword_100171358;
  if (!qword_100171358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171358);
  }

  return result;
}

uint64_t sub_1000F2F44()
{
  v1 = type metadata accessor for EpicShowcaseComponentModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v5 + v1[11]);
  v10 = v9[4];
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_13;
    }
  }

  if (v9[12])
  {
  }

  if (v9[20])
  {
  }

  if (v9[28])
  {
  }

LABEL_13:

  v11 = (v5 + v1[15]);
  if (v11[3])
  {
    sub_1000052E4(v11);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F3178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F31DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EpicShowcaseComponentModel(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001FEB8(v4, a1);
}

unint64_t sub_1000F324C()
{
  result = qword_100171370;
  if (!qword_100171370)
  {
    sub_10000459C(&qword_100171368, &qword_10011A3C8);
    sub_1000F32D8();
    sub_1000EA350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171370);
  }

  return result;
}

unint64_t sub_1000F32D8()
{
  result = qword_100171378;
  if (!qword_100171378)
  {
    sub_10000459C(&qword_100171380, qword_10011A3D0);
    sub_1000F3394(&qword_100171388, type metadata accessor for EpicShowcaseView, &unk_100115744);
    sub_1000EA2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171378);
  }

  return result;
}

uint64_t sub_1000F3394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F33DC()
{
  result = qword_100171390;
  if (!qword_100171390)
  {
    sub_10000459C(&qword_100171360, &unk_10011A3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171390);
  }

  return result;
}

uint64_t sub_1000F3440()
{
  sub_10000459C(&qword_100171360, &unk_10011A3B8);
  sub_1000F33DC();
  sub_1000EA3A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000F34B8(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000FBCE4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000FBCE4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000F92DC(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1000FBCE4(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1000F35D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

id sub_1000F36AC()
{
  v1 = v0;
  v2 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for MobileGestaltCoordinator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_startupCoordinator;
  started = type metadata accessor for JetStartUpCoordinator();
  (*(*(started - 8) + 56))(&v1[v9], 1, 1, started);
  type metadata accessor for NetworkStatusCoordinator();
  swift_allocObject();
  v11 = NetworkStatusCoordinator.init()();
  v12 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_networkStatusCoordinator;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_networkStatusCoordinator] = v11;
  type metadata accessor for PageViewScrollAnalyticsCoordinator();
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator] = v13;
  type metadata accessor for PushNotificationDispatch();
  v14 = PushNotificationDispatch.__allocating_init()();
  v15 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pushNotificationDispatch;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pushNotificationDispatch] = v14;
  type metadata accessor for SoftwareUpdateProvider(0);
  swift_allocObject();

  v17 = sub_1000E2FD8(v16);

  v40 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_softwareUpdateProvider] = v17;
  v18 = *&v1[v12];
  v19 = *&v1[v15];
  type metadata accessor for DeviceProvider(0);
  swift_allocObject();

  v20 = sub_10008CAB4(v18, v19);

  v21 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider] = v20;
  MobileGestaltCoordinator.init()();
  v22 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator;
  (*(v6 + 32))(&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_mobileGestaltCoordinator], v8, v5);
  v23 = [objc_allocWithZone(HKHealthStore) init];
  type metadata accessor for PrescriptionProvider(0);
  v24 = swift_allocObject();
  *(v24 + 16) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(v24 + 24) = v23;
  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v4, 1, 1, v25);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v27 = v23;

  sub_1000EE5F8(0, 0, v4, &unk_10011A588, v26);

  v28 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_prescriptionProvider] = v24;
  type metadata accessor for TipProvider(0);
  swift_allocObject();
  v29 = sub_1000E5068();
  v30 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_tipProvider] = v29;
  (*(v6 + 16))(v8, &v1[v22], v5);
  LOBYTE(v24) = MobileGestaltCoordinator.isPadDevice.getter();
  (*(v6 + 8))(v8, v5);
  v31 = 2;
  if (v24)
  {
    v31 = 30;
  }

  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = v31;
  v32 = *&v1[v21];
  v33 = *&v1[v28];
  v34 = *&v1[v40];
  v35 = *&v1[v30];
  type metadata accessor for TetsuoObjectGraph();
  v36 = swift_allocObject();
  v36[2] = v32;
  v36[3] = v33;
  v36[4] = v34;
  v36[5] = v35;
  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_jetObjectGraph] = v36;
  v37 = type metadata accessor for AppDelegate(0);
  v41.receiver = v1;
  v41.super_class = v37;

  return objc_msgSendSuper2(&v41, "init");
}

uint64_t sub_1000F3B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_1000F3C24;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_1000F3C24()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000FC038;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000F3DA8;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000F3DA8()
{
  v1 = v0[8];

  v2 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
  swift_getKeyPath();
  v0[7] = v2;
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  byte_10016BF08 = *(*(v2 + 16) + 16) != 0;
  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 2;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F4250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F42EC, v6, v5);
}

uint64_t sub_1000F42EC()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v2);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v0[8] = v4;
  v5 = v3;
  v6 = v1;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1000F43F8;

  return sub_1000F9E68(v4);
}

uint64_t sub_1000F43F8(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

void sub_1000F4664(uint64_t a1)
{
  v2 = MobileGestaltCoordinator.isPadDevice.getter();
  v3 = 2;
  if (v2)
  {
    v3 = 30;
  }

  *&v1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = v3;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181FA0);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 136446210;
    v13 = v9;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100006B44(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Reset to standard orientations: %{public}s", v8, 0xCu);
    sub_1000052E4(v9);
  }

  sub_1000F4980();
}

void sub_1000F4800()
{
  *&v0[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations] = 30;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v10 = v6;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100006B44(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Enabled AirPlay receiver orientations: %{public}s", v5, 0xCu);
    sub_1000052E4(v6);
  }

  sub_1000F4980();
}

void sub_1000F4980()
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181FA0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Refreshing orientation", v3, 2u);
  }

  v4 = [objc_opt_self() currentDevice];
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v4 setValue:isa forKey:v6];

  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 connectedScenes];

  sub_100015140();
  sub_1000FBE40(&qword_100171520, sub_100015140, &protocol conformance descriptor for NSObject);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1000F34B8(v9);

  if (v10)
  {
    v11 = sub_100036844();

    [v11 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

uint64_t sub_1000F4BD8@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_startupCoordinator;
  swift_beginAccess();
  sub_10000C178(v2 + v11, v10, &unk_100171510, &unk_100118EC0);
  started = type metadata accessor for JetStartUpCoordinator();
  v13 = *(started - 8);
  if ((*(v13 + 48))(v10, 1, started) != 1)
  {
    return (*(v13 + 32))(a2, v10, started);
  }

  sub_100009908(v10, &unk_100171510, &unk_100118EC0);
  sub_1000D2BF8(a1, a2);
  (*(v13 + 16))(v8, a2, started);
  (*(v13 + 56))(v8, 0, 1, started);
  swift_beginAccess();
  sub_1000FBC74(v8, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_1000F4DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1000F4E90;

  return sub_1000F5034();
}

uint64_t sub_1000F4E90()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F4FCC, v1, v0);
}

uint64_t sub_1000F4FCC()
{

  sub_1000F6DD0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F5034()
{
  v1[37] = v0;
  v1[38] = swift_getObjectType();
  sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v1[39] = swift_task_alloc();
  v1[40] = type metadata accessor for MainActor();
  v1[41] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[42] = v3;
  v1[43] = v2;

  return _swift_task_switch(sub_1000F5114, v3, v2);
}

uint64_t sub_1000F5114()
{
  v1 = objc_opt_self();
  v0[44] = v1;
  v2 = [v1 currentNotificationCenter];
  v0[45] = v2;
  v0[2] = v0;
  v0[7] = v0 + 50;
  v0[3] = sub_1000F525C;
  v3 = swift_continuation_init();
  v0[25] = sub_100002BE4(&qword_1001714F0, &qword_10011A510);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1000F5C8C;
  v0[21] = &unk_10015FF98;
  v0[22] = v3;
  [v2 requestAuthorizationWithOptions:7 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000F525C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_1000F5A5C;
  }

  else
  {
    v5 = sub_1000F538C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000F538C()
{
  v1 = *(v0 + 352);

  v2 = [v1 currentNotificationCenter];
  *(v0 + 376) = v2;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 288;
  *(v0 + 88) = sub_1000F54CC;
  v3 = swift_continuation_init();
  *(v0 + 264) = sub_100002BE4(&qword_1001714F8, &qword_10011A518);
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1000F5D58;
  *(v0 + 232) = &unk_10015FFC0;
  *(v0 + 240) = v3;
  [v2 getNotificationSettingsWithCompletionHandler:v0 + 208];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1000F54CC()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);

  return _swift_task_switch(sub_1000F55D4, v2, v1);
}

uint64_t sub_1000F55D4()
{
  v15 = v0;
  v1 = v0[47];
  v2 = v0[36];
  v3 = [v2 authorizationStatus];
  v0[48] = v3;

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182108);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s requested notification authorization; authorizationStatus: %ld", v7, 0x16u);
    sub_1000052E4(v8);
  }

  v12 = swift_task_alloc();
  v0[49] = v12;
  *v12 = v0;
  v12[1] = sub_1000F57C4;

  return sub_10007DD5C();
}

uint64_t sub_1000F57C4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 280) = a1;
  *(v3 + 272) = v1;

  v4 = *(v2 + 344);
  v5 = *(v2 + 336);

  return _swift_task_switch(sub_1000F58EC, v5, v4);
}

uint64_t sub_1000F58EC()
{

  v1 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 280);
    static UserDefaultUtilities.SharedConstants.isRestrictedGeoKey.getter();
    v4 = String._bridgeToObjectiveC()();

    [v2 setBool:v3 forKey:v4];
  }

  v5 = *(v0 + 312);
  v6 = *(v0 + 304);
  v7 = *(v0 + 384) == 2;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = v7;
  *(v10 + 40) = v6;
  sub_1000EE5F8(0, 0, v5, &unk_10011A528, v10);

  sub_10004C92C(v7);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000F5A5C()
{
  v15 = v0;
  v1 = *(v0 + 360);

  swift_willThrow();

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182108);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s failed to request notification authorization with error: %@", v5, 0x16u);
    sub_100009908(v6, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v7);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000F5C8C(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000524C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000F5D58(uint64_t a1, void *a2)
{
  v3 = sub_10000524C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_1000F5DBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 160) = a4;
  sub_100002BE4(&unk_100171500, &qword_10011A530);
  *(v5 + 24) = swift_task_alloc();
  *(v5 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Storefront();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return _swift_task_switch(sub_1000F5F04, v8, v7);
}

uint64_t sub_1000F5F04()
{
  v23 = v0;
  if (static UserDefaultUtilities.isGetLatestNewsSet()())
  {
    v1 = static UserDefaultUtilities.getLatestNews()() ^ 1;
  }

  else
  {
    v1 = static UserDefaultUtilities.isRestrictedGeo()();
  }

  if (*(v0 + 160) != 1 || (v1 & 1) != 0)
  {
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100006B0C(v12, qword_100182108);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100006B44(v17, v18, &v22);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s unregistering for Cloud Channels", v15, 0xCu);
      sub_1000052E4(v16);
    }

    v20 = swift_task_alloc();
    *(v0 + 152) = v20;
    *v20 = v0;
    v20[1] = sub_1000F6CB0;

    return sub_10002E5B0(_swiftEmptyArrayStorage);
  }

  else
  {
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182108);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_100006B44(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s registering for Cloud Channels", v5, 0xCu);
      sub_1000052E4(v6);
    }

    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_1000F628C;
    v11 = *(v0 + 32);

    return static Storefront.current.getter(v11);
  }
}

uint64_t sub_1000F628C()
{

  return _swift_task_switch(sub_1000F6388, 0, 0);
}

uint64_t sub_1000F6388()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v2 + 48);
  v0[13] = v4;
  v0[14] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_100009908(v3, &unk_100171500, &qword_10011A530);
LABEL_3:
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1000F66E4;
    v6 = v0[3];

    return static Storefront.current.getter(v6);
  }

  (*(v2 + 32))(v0[8], v3, v1);
  v7 = Storefront.countryCode.getter();
  v9 = v0[8];
  v10 = v0[5];
  v11 = v0[6];
  if (v7 == 5130307 && v8 == 0xE300000000000000)
  {

    (*(v11 + 8))(v9, v10);
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v11 + 8))(v9, v10);
    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_1000F65C4;

  return sub_10002E5B0(&off_10015A1F0);
}

uint64_t sub_1000F65C4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v3, v2);
}

uint64_t sub_1000F66E4()
{

  return _swift_task_switch(sub_1000F67E0, 0, 0);
}

uint64_t sub_1000F67E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  if ((*(v0 + 104))(v2, 1, v1) == 1)
  {
    sub_100009908(v2, &unk_100171500, &qword_10011A530);
LABEL_3:
    v3 = swift_task_alloc();
    *(v0 + 144) = v3;
    *v3 = v0;
    v3[1] = sub_1000F6B00;
    v4 = &off_10015A240;
    goto LABEL_12;
  }

  (*(*(v0 + 48) + 32))(*(v0 + 56), v2, v1);
  v5 = Storefront.countryCode.getter();
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  if (v5 == 4281173 && v6 == 0xE300000000000000)
  {

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*(v8 + 8))(v7, v9);
    if ((v11 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_1000F69E0;
  v4 = &off_10015A218;
LABEL_12:

  return sub_10002E5B0(v4);
}

uint64_t sub_1000F69E0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v3, v2);
}

uint64_t sub_1000F6B00()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000F6C20, v3, v2);
}

uint64_t sub_1000F6C20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F6CB0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000FC044, v3, v2);
}

void sub_1000F6DD0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedApplication];
  [v0 registerForRemoteNotifications];

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182108);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_100006B44(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s registered for remote notifications", v3, 0xCu);
    sub_1000052E4(v4);
  }
}

uint64_t sub_1000F6F64(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = swift_getObjectType();
  v3 = type metadata accessor for PushNotificationDispatchItem();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[29] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v5;
  v2[31] = v4;

  return _swift_task_switch(sub_1000F7064, v5, v4);
}

uint64_t sub_1000F7064()
{
  v22 = v0;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = type metadata accessor for Logger();
  *(v0 + 256) = sub_100006B0C(v2, qword_100182108);
  v4 = *(v1 + 16);
  v3 = *(v1 + 32);
  v5 = *v1;
  *(v0 + 64) = *(v1 + 48);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  *(v0 + 264) = *(v1 + 16);
  sub_1000FBA94(v0 + 16, v0 + 72);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  sub_1000FB898(v1);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v21);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = sub_10001605C();
    v14 = sub_100006B44(v12, v13, v21);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s received remote notification %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *(v0 + 32);
  *(v0 + 272) = *(v0 + 24);
  *(v0 + 280) = v15;
  if (*(v0 + 64) && *(v0 + 64) != 1)
  {

    PushNotificationDispatchItem.init(rawValue:)();
    v20 = (&async function pointer to dispatch thunk of PushNotificationDispatch.dispatch(_:) + async function pointer to dispatch thunk of PushNotificationDispatch.dispatch(_:));
    v18 = swift_task_alloc();
    *(v0 + 288) = v18;
    *v18 = v0;
    v18[1] = sub_1000F7504;
    v19 = *(v0 + 224);

    return v20(v19);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1000F7504()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1000F7820;
  }

  else
  {
    v5 = sub_1000F7640;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000F7640()
{
  v19 = v0;
  v1 = v0[23];

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  sub_1000FB898(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[34];
    v4 = v0[35];
    v6 = v0[27];
    v16 = v0[26];
    v17 = v0[28];
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100006B44(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s successfully dispatched push notification for zoneName: %s", v7, 0x16u);
    swift_arrayDestroy();

    (*(v6 + 8))(v17, v16);
  }

  else
  {
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[26];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000F7820()
{
  v19 = v0;
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);
  v4 = v0[23];
  sub_1000FBAF0(v4, (v0 + 16));
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  sub_1000FB898(v4);

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_10001605C();
    v14 = sub_100006B44(v12, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s failed to dispatch push notification %s; error: %@", v7, 0x20u);
    sub_100009908(v8, &unk_100169C20, &unk_10010D6B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

id sub_1000F7A6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppDelegate(uint64_t a1)
{
  result = qword_100171440;
  if (!qword_100171440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F7BF8(uint64_t a1)
{
  type metadata accessor for MobileGestaltCoordinator();
  if (v1 <= 0x3F)
  {
    sub_1000F7CEC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000F7CEC(uint64_t a1)
{
  if (!qword_100171450)
  {
    type metadata accessor for JetStartUpCoordinator();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100171450);
    }
  }
}

uint64_t sub_1000F7D44@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AppDelegate(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1000F7D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[9] = type metadata accessor for MainActor();
  v4[10] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[11] = v5;
  *v5 = v4;
  v5[1] = sub_1000F7E38;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_1000F7E38()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1000FC03C;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1000F7FBC;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1000F7FBC()
{
  v1 = v0[8];

  v2 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider);
  swift_getKeyPath();
  v0[7] = v2;
  sub_1000FBE40(&qword_10016AFE0, type metadata accessor for DeviceProvider, &unk_100115148);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  byte_10016BF08 = *(*(v2 + 16) + 16) != 0;
  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 10;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000F8294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F8330, v6, v5);
}

uint64_t sub_1000F8330()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000F8414;
  v9 = v0[3];

  return sub_1000FA94C(v9);
}

uint64_t sub_1000F8414()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000F8714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000F87B0, v6, v5);
}

uint64_t sub_1000F87B0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1000F8894;
  v9 = v0[3];

  return sub_1000FB05C(v9);
}

uint64_t sub_1000F8894(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_1000F8A18()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100024388;

  return sub_1000F8714(v2, v3, v5, v4);
}

uint64_t sub_1000F8AD8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100024388;

  return v6();
}

uint64_t sub_1000F8BC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100024388;

  return sub_1000F8AD8(v2, v3, v4);
}

uint64_t sub_1000F8C84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000FA04;

  return v7();
}

uint64_t sub_1000F8D6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F8C84(a1, v4, v5, v6);
}

uint64_t sub_1000F8E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000C178(a3, v23 - v10, &unk_10016F2B0, &qword_10010F6F0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100009908(v11, &unk_10016F2B0, &qword_10010F6F0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

    return v21;
  }

LABEL_8:
  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1000F9134()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F916C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100024388;

  return sub_10008C010(a1, v4);
}

uint64_t sub_1000F9224(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000FA04;

  return sub_10008C010(a1, v4);
}

void sub_1000F92DC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100015140();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100015140();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1000F94DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100006B0C(v7, qword_100181FA0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136446210;
    if (a1)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      v28 = a1;
      sub_100002BE4(&unk_100171540, &qword_10011A580);
      _print_unlocked<A, B>(_:_:)();
      v12 = v29;
      v13 = v30;
    }

    else
    {
      v13 = 0xE300000000000000;
      v12 = 7104878;
    }

    v14 = sub_100006B44(v12, v13, &v31);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Tetsuo did finish launching with options: %{public}s", v10, 0xCu);
    sub_1000052E4(v11);
  }

  v15 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 integerForKey:v16];

  if (v17 >= static BundleIdentifierConstants.currentPrivacyVersion.getter())
  {
    v18 = [objc_opt_self() currentNotificationCenter];
    [v18 setDelegate:v2];

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    type metadata accessor for MainActor();
    v20 = v2;
    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v20;
    sub_1000EE5F8(0, 0, v6, &unk_10011A290, v22);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  type metadata accessor for MainActor();
  v24 = v2;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = &protocol witness table for MainActor;
  v26[4] = v24;
  sub_1000EE5F8(0, 0, v6, &unk_10011A578, v26);

  return 1;
}

void sub_1000F98CC(uint64_t a1, unint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Data.Iterator();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003DC0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000FBE40(&qword_100171528, &type metadata accessor for Data.Iterator, &protocol conformance descriptor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v29)
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
    v25 = xmmword_10010D3B0;
    do
    {
      v9 = v28;
      sub_100002BE4(&unk_100171530, &unk_10011A560);
      v10 = swift_allocObject();
      *(v10 + 16) = v25;
      *(v10 + 56) = &type metadata for UInt8;
      *(v10 + 64) = &protocol witness table for UInt8;
      *(v10 + 32) = v9;
      v11 = String.init(format:_:)();
      v13 = v12;
      v26 = v7;
      v27 = v8;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v7 = v26;
      v8 = v27;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v29 != 1);
  }

  (*(v24 + 8))(v6, v4);
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100006B0C(v15, qword_100182108);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136315394;
    v19 = _typeName(_:qualified:)();
    v21 = sub_100006B44(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = sub_100006B44(v7, v8, &v26);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s did register for remote notifications with deviceToken: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_1000F9C94(uint64_t a1)
{
  swift_getObjectType();
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100182108);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v3 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100006B44(v6, v7, &v11);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, oslog, v2, "%s did fail to register for remote notifications with error: %@", v3, 0x16u);
    sub_100009908(v4, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v5);
  }
}

uint64_t sub_1000F9E68(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = swift_getObjectType();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v3;
  v2[22] = v4;

  return _swift_task_switch(sub_1000F9F40, v3, v4);
}

uint64_t sub_1000F9F40()
{
  v24 = v0;
  v1 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 128) = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:v0 + 128];

  v4 = *(v0 + 128);
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000FB844();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10003DBB8(v5, v7);

    v21 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v21;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v22 = swift_task_alloc();
    *(v0 + 184) = v22;
    *v22 = v0;
    v22[1] = sub_1000FA354;

    return sub_1000F6F64(v0 + 16);
  }

  else
  {
    v8 = v4;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006B0C(v9, qword_100182108);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v12 = 136315394;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v23);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v16 = Dictionary.description.getter();
      v18 = sub_100006B44(v16, v17, &v23);

      *(v12 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s failed to parse remote notification %s", v12, 0x16u);
      swift_arrayDestroy();
    }

    v19 = *(v0 + 8);

    return v19(2);
  }
}

uint64_t sub_1000FA354()
{
  v1 = *v0;

  sub_1000FB898(v1 + 16);
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1000FA4AC, v3, v2);
}

uint64_t sub_1000FA4AC()
{

  v1 = *(v0 + 8);

  return v1(0);
}

id sub_1000FA53C(void *a1, void *a2)
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181FA0);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136446210;
    v10 = v5;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100006B44(v12, v14, &v25);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Tetsuo scene will connect with options %{public}s", v8, 0xCu);
    sub_1000052E4(v9);
  }

  v16 = [a1 role];
  v17 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v16];

  v18 = [a1 role];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

LABEL_9:
    type metadata accessor for SceneDelegate();
    [v17 setDelegateClass:swift_getObjCClassFromMetadata()];
    return v17;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_9;
  }

  return v17;
}

uint64_t sub_1000FA7D4()
{
  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181FA0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v11 = v6;
    type metadata accessor for UIInterfaceOrientationMask(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tetsuo supports orientations: %{public}s", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return *&v2[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_supportedOrientations];
}

uint64_t sub_1000FA94C(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v2[43] = swift_getObjectType();
  sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v2[44] = swift_task_alloc();
  v2[45] = type metadata accessor for MainActor();
  v2[46] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FAA2C, v4, v3);
}

uint64_t sub_1000FAA2C()
{
  v46 = v0;
  v1 = *(v0 + 328);

  v2 = [v1 notification];
  v3 = [v2 request];

  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (v5 == 0xD000000000000029 && 0x800000010011C840 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      v10 = *(v0 + 352);
      v11 = *(v0 + 336);
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
      v13 = v11;
      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = &protocol witness table for MainActor;
      v15[4] = v13;
      sub_1000EE5F8(0, 0, v10, &unk_10011A4D8, v15);

      v16 = [objc_opt_self() defaultCenter];
      v17 = static NSNotificationName.applicationRecievedPushNotification.getter();
      [v16 postNotificationName:v17 object:0];

      goto LABEL_19;
    }
  }

  v18 = [*(v0 + 328) notification];
  v19 = [v18 request];

  v20 = [v19 content];
  v21 = [v20 userInfo];

  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 264) = 0xD000000000000016;
  *(v0 + 272) = 0x800000010011E3E0;
  AnyHashable.init<A>(_:)();
  if (*(v22 + 16) && (v23 = sub_100068958(v0 + 192), (v24 & 1) != 0))
  {
    sub_1000076F0(*(v22 + 56) + 32 * v23, v0 + 232);
    sub_100064580(v0 + 192);

    if (swift_dynamicCast())
    {
      v41 = *(v0 + 288);
      v42 = *(v0 + 280);
      v44 = [objc_opt_self() defaultCenter];
      if (qword_100168F58 != -1)
      {
        swift_once();
      }

      v25 = *(v0 + 328);
      v43 = qword_1001821B0;
      sub_100002BE4(&qword_10016D0B8, &unk_100113360);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10010FEE0;
      *(v0 + 296) = 0xD000000000000012;
      *(v0 + 304) = 0x800000010011E440;
      AnyHashable.init<A>(_:)();
      v27 = [v25 actionIdentifier];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v28;
      *(inited + 80) = v30;
      *(v0 + 312) = 0xD000000000000016;
      *(v0 + 320) = 0x800000010011E3E0;
      AnyHashable.init<A>(_:)();
      *(inited + 168) = &type metadata for String;
      *(inited + 144) = v42;
      *(inited + 152) = v41;
      sub_10000BA38(inited);
      swift_setDeallocating();
      sub_100002BE4(&unk_1001714D0, &qword_10010D1E8);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v16 = v44;
      [v44 postNotificationName:v43 object:0 userInfo:isa];

      goto LABEL_19;
    }
  }

  else
  {

    sub_100064580(v0 + 192);
  }

  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006B0C(v32, qword_100182108);
  v16 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136315138;
    v36 = _typeName(_:qualified:)();
    v38 = sub_100006B44(v36, v37, &v45);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v16, v33, "%s Received AcceptDialogNotification doesn't include an identifier user info key.", v34, 0xCu);
    sub_1000052E4(v35);
  }

LABEL_19:

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000FB05C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = swift_getObjectType();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v3;
  v2[22] = v4;

  return _swift_task_switch(sub_1000FB134, v3, v4);
}

uint64_t sub_1000FB134()
{
  v34 = v0;
  v1 = [*(v0 + 136) request];
  v2 = [v1 content];

  v3 = [v2 userInfo];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 128) = 0;
  v6 = [v4 dataWithJSONObject:isa options:0 error:v0 + 128];

  v7 = *(v0 + 128);
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_1000FB844();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_10003DBB8(v8, v10);

    v31 = *(v0 + 88);
    *(v0 + 16) = *(v0 + 72);
    *(v0 + 32) = v31;
    *(v0 + 48) = *(v0 + 104);
    *(v0 + 64) = *(v0 + 120);
    v32 = swift_task_alloc();
    *(v0 + 184) = v32;
    *v32 = v0;
    v32[1] = sub_1000FB65C;

    return sub_1000F6F64(v0 + 16);
  }

  else
  {
    v11 = v7;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 136);
    v13 = type metadata accessor for Logger();
    sub_100006B0C(v13, qword_100182108);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 136);
      v18 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v18 = 136315394;
      v19 = _typeName(_:qualified:)();
      v21 = sub_100006B44(v19, v20, &v33);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      v22 = [v17 request];
      v23 = [v22 content];

      v24 = [v23 userInfo];
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = Dictionary.description.getter();
      v27 = v26;

      v28 = sub_100006B44(v25, v27, &v33);

      *(v18 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v15, v16, "%s failed to parse remote notification %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v29 = *(v0 + 8);

    return v29(27);
  }
}

uint64_t sub_1000FB65C()
{
  v1 = *v0;

  sub_1000FB898(v1 + 16);
  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1000FB7B4, v3, v2);
}

uint64_t sub_1000FB7B4()
{

  v1 = *(v0 + 8);

  return v1(27);
}

unint64_t sub_1000FB844()
{
  result = qword_1001714C0;
  if (!qword_1001714C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001714C0);
  }

  return result;
}

uint64_t sub_1000FB8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100024388;

  return sub_1000F8294(v2, v3, v5, v4);
}

uint64_t sub_1000FB9B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F7D84(a1, v4, v5, v6);
}

uint64_t sub_1000FBB78()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBBB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100024388;

  return sub_1000F5DBC(a1, v4, v5, v6, v7);
}

uint64_t sub_1000FBC74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_100171510, &unk_100118EC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1000FBCE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000FBCF0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBD40()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000FA04;

  return sub_1000F4250(v2, v3, v5, v4);
}

uint64_t sub_1000FBE00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000FBE40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000FBE88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000F3B70(a1, v4, v5, v6);
}

uint64_t sub_1000FBF3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000FBF7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100024388;

  return sub_10006957C();
}

Swift::Int sub_1000FC09C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000FC168(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000FC220(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000FC2E8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FC738(*a1);
  *a2 = result;
  return result;
}

void sub_1000FC318(uint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0xEC00000037333966;
  v4 = 0x3763353738766564;
  if (*v1 != 2)
  {
    v4 = 0x6333663735766564;
    v3 = 0xEC00000065373636;
  }

  v5 = 0x3030386431766564;
  if (*v1)
  {
    v2 = 0xEC00000034383065;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v6;
  a1[1] = v2;
}

void sub_1000FC3A0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() helpViewControllerWithIdentifier:v0 version:v1];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    [v2 setSelectedHelpTopicID:v3];

    [v2 setPlatformIndependent:1];
    [v2 setShowTopicViewOnLoad:1];
    [v2 setPrefersLandingViewOnLoad:1];
    [objc_allocWithZone(UINavigationController) initWithRootViewController:v2];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FC4D4(void *a1)
{
  v1 = [a1 topViewController];
  if (v1)
  {
    v6 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = String._bridgeToObjectiveC()();
      [v3 loadHelpTopicID:v4];

      v5 = v4;
    }

    else
    {
      v5 = v6;
    }
  }
}

unint64_t sub_1000FC5A0()
{
  result = qword_100171550;
  if (!qword_100171550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171550);
  }

  return result;
}

uint64_t sub_1000FC5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC6E4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FC658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FC6E4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000FC6BC(uint64_t a1)
{
  sub_1000FC6E4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000FC6E4()
{
  result = qword_100171558;
  if (!qword_100171558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171558);
  }

  return result;
}

unint64_t sub_1000FC738(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A268, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FC784()
{
  swift_getKeyPath();
  sub_1000FCACC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

double sub_1000FC7F4(unsigned __int8 a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000FCACC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FC8CC()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp8AppState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppState(uint64_t a1)
{
  result = qword_100171590;
  if (!qword_100171590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FC9BC(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_1000FCA6C()
{
  result = qword_100171680;
  if (!qword_100171680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171680);
  }

  return result;
}

unint64_t sub_1000FCACC()
{
  result = qword_10016E910;
  if (!qword_10016E910)
  {
    type metadata accessor for AppState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016E910);
  }

  return result;
}

Swift::Int sub_1000FCB34(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FCC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = a1;
  v51 = type metadata accessor for AutomationAttribute();
  v6 = *(v51 - 8);
  v7 = __chkstk_darwin(v51);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = v37 - v9;
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v48 = v37 - v16;
  __chkstk_darwin(v15);
  v18 = v37 - v17;
  sub_1000FD024(v4);
  if (!a2)
  {
    return (*(v11 + 32))(a3, v18, v10);
  }

  v19 = *(a2 + 16);
  if (v19)
  {
    v38 = a3;
    v20 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType(0) - 8);
    v21 = a2 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v44 = *(v20 + 72);
    v45 = v18;
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v42 = (v6 + 8);
    v43 = v23;
    v39 = (v22 + 16);
    v40 = (v22 - 8);
    v37[1] = (v22 + 16) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46 = v22;
    v47 = v10;
    v41 = v14;
    v23(v14, v18, v10);
    while (1)
    {
      v28 = v49;
      sub_1000FD17C();
      AutomationAttribute.key.getter();
      v29 = *v42;
      v30 = v28;
      v31 = v51;
      (*v42)(v30, v51);
      v32 = v50;
      sub_1000FD17C();
      v33 = AutomationAttribute.value.getter();
      v35 = v34;
      v29(v32, v31);
      if (v35)
      {
        *(&v53 + 1) = &type metadata for String;
        *&v52 = v33;
        *(&v52 + 1) = v35;
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      v24 = v48;
      v25 = v41;
      AutomationSemantics.attribute(key:value:)();

      v26 = *v40;
      v10 = v47;
      (*v40)(v25, v47);
      v18 = v45;
      v26(v45, v10);
      sub_100015CE4(&v52);
      v27 = *v39;
      (*v39)(v18, v24, v10);
      v21 += v44;
      if (!--v19)
      {
        break;
      }

      v43(v25, v18, v10);
    }

    a3 = v38;
  }

  else
  {
    v27 = *(v11 + 32);
  }

  return v27(a3, v18, v10);
}

uint64_t sub_1000FD024(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      v4 = 0u;
      v5 = 0u;
      static AutomationSemantics.page(name:id:)();

      return sub_100015CE4(&v4);
    }

    sub_1000FD8E4(a1);
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    goto LABEL_6;
  }

  if (a1 >> 6 == 2)
  {
    sub_1000FDA28(a1 & 0x3F);
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
LABEL_6:

LABEL_7:
    sub_100015CE4(&v2);
    return sub_100015CE4(&v4);
  }

  if (a1 == 192)
  {
    v4 = 0u;
    v5 = 0u;
    v2 = 0u;
    v3 = 0u;
    static AutomationSemantics.actionButton(id:parentId:)();
    goto LABEL_7;
  }

  return static AutomationSemantics.dismissButton()();
}

uint64_t sub_1000FD17C()
{
  v1 = v0;
  v2 = type metadata accessor for AppHeroModel(0);
  __chkstk_darwin(v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  __chkstk_darwin(v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000B1328(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v16 = *v7;
        v17 = *(v7 + 1);
        *(&v35 + 1) = &type metadata for String;
        if (!v17)
        {
          v16 = 0x6E776F6E6B6E75;
          v17 = 0xE700000000000000;
        }

        *&v34 = v16;
        *(&v34 + 1) = v17;
      }

      else
      {
        v27 = *v7 == 0;
        v28 = 1702195796;
        if (!*v7)
        {
          v28 = 0x65736C6146;
        }

        v29 = 0xE500000000000000;
        *(&v35 + 1) = &type metadata for String;
        if (!v27)
        {
          v29 = 0xE400000000000000;
        }

        *&v34 = v28;
        *(&v34 + 1) = v29;
      }

      return AutomationAttribute.init(key:value:)();
    }

    if (EnumCaseMultiPayload == 7)
    {
      v20 = *v7;
      v21 = *(v7 + 1);
      *(&v35 + 1) = &type metadata for String;
      if (!v21)
      {
        v20 = 0x6E776F6E6B6E75;
        v21 = 0xE700000000000000;
      }

      *&v34 = v20;
      *(&v34 + 1) = v21;
      return AutomationAttribute.init(key:value:)();
    }

    if (EnumCaseMultiPayload == 8)
    {
      v13 = *(v7 + 24);
      v34 = *(v7 + 8);
      v35 = v13;
      sub_1000FDC88(&v34, v33);
      AutomationAttribute.init(key:value:)();
      return sub_100015CE4(&v34);
    }

    v24 = v7[1];
    if (v24 == 5)
    {
      *(&v35 + 1) = &type metadata for String;
      *&v34 = 0x6E776F6E6B6E75;
      *(&v34 + 1) = 0xE700000000000000;
      return AutomationAttribute.init(key:value:)();
    }

    if (v7[1] <= 1u)
    {
      if (v7[1])
      {
        v30 = 0xEF6567616D496E6FLL;
      }

      else
      {
        v30 = 0xEA00000000006E6FLL;
      }

      v32 = 0x754273706954;
    }

    else
    {
      if (v24 == 2)
      {
        v30 = 0xEB00000000736563;
        v31 = 0x69766544206C6C41;
        goto LABEL_52;
      }

      if (v24 == 3)
      {
        v30 = 0xE400000000000000;
        v31 = 1701736260;
LABEL_52:
        *(&v35 + 1) = &type metadata for String;
        *&v34 = v31;
        *(&v34 + 1) = v30;
        return AutomationAttribute.init(key:value:)();
      }

      v30 = 0xEC00000073676E69;
      v32 = 0x65536E65704FLL;
    }

    v31 = v32 & 0xFFFFFFFFFFFFLL | 0x7474000000000000;
    goto LABEL_52;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v25 = *v7;
      v26 = *(v7 + 1);
      *(&v35 + 1) = &type metadata for String;
      if (!v26)
      {
        v25 = 0x6E776F6E6B6E75;
        v26 = 0xE700000000000000;
      }

      *&v34 = v25;
      *(&v34 + 1) = v26;
    }

    else
    {
      v14 = *v7;
      v15 = *(v7 + 1);
      *(&v35 + 1) = &type metadata for String;
      if (!v15)
      {
        v14 = 0x6E776F6E6B6E75;
        v15 = 0xE700000000000000;
      }

      *&v34 = v14;
      *(&v34 + 1) = v15;
    }

    return AutomationAttribute.init(key:value:)();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v18 = *v7;
    v19 = *(v7 + 1);
    *(&v35 + 1) = &type metadata for String;
    if (!v19)
    {
      v18 = 0x6E776F6E6B6E75;
      v19 = 0xE700000000000000;
    }

    *&v34 = v18;
    *(&v34 + 1) = v19;
    return AutomationAttribute.init(key:value:)();
  }

  if (EnumCaseMultiPayload != 3)
  {
    v22 = *v7;
    v23 = *(v7 + 1);
    *(&v35 + 1) = &type metadata for String;
    if (!v23)
    {
      v22 = 0x6E776F6E6B6E75;
      v23 = 0xE700000000000000;
    }

    *&v34 = v22;
    *(&v34 + 1) = v23;
    return AutomationAttribute.init(key:value:)();
  }

  sub_1000EA0EC(v7, v4);
  v9 = *&v4[*(v2 + 28) + 8] == 0;
  v10 = 0x476C616974617053;
  if (!*&v4[*(v2 + 28) + 8])
  {
    v10 = 0x41636972656E6547;
  }

  v11 = 0xEE007972656C6C61;
  *(&v35 + 1) = &type metadata for String;
  if (v9)
  {
    v11 = 0xEF65726F74537070;
  }

  *&v34 = v10;
  *(&v34 + 1) = v11;
  AutomationAttribute.init(key:value:)();
  return sub_100075D6C(v4);
}

uint64_t sub_1000FD8E4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x656C746954;
    v6 = 0x616D49656C746954;
    if (a1 != 8)
    {
      v6 = 0x657469726F766146;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746F4E74726F6853;
    if (a1 != 5)
    {
      v7 = 0x656E696C676154;
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
    v1 = 0x6E6F6349707041;
    v2 = 0x6567646142;
    v3 = 0x7365726E6547;
    if (a1 != 3)
    {
      v3 = 0x65746F4E676E6F4CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B726F77747241;
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

unint64_t sub_1000FDA28(char a1)
{
  result = 0x6C74695473706954;
  switch(a1)
  {
    case 1:
      result = 0x7462755373706954;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 8:
      result = 0x6E49656369766544;
      break;
    case 5:
      result = 0x6C65646F4DLL;
      break;
    case 6:
      result = 0x6E6F6973726556;
      break;
    case 7:
      result = 0x4E206C6169726553;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x486E6F6974636553;
      break;
    case 11:
      result = 0x726F4D6E7261654CLL;
      break;
    case 12:
      result = 0x7265746F6F46;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t type metadata accessor for AutomationUtilities.AutomationAttributeType(uint64_t a1)
{
  result = qword_1001716F8;
  if (!qword_1001716F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FDC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100169A38, &qword_10010D460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000FDCF8(uint64_t a1)
{
  sub_1000FDDE4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppHeroModel(319);
    if (v2 <= 0x3F)
    {
      sub_1000FDE2C();
      if (v3 <= 0x3F)
      {
        sub_1000FDE5C(319, &qword_100171718, &qword_100169A38, &qword_10010D460);
        if (v4 <= 0x3F)
        {
          sub_1000FDE5C(319, &qword_100171720, &unk_100171728, &qword_10011A8A8);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000FDDE4()
{
  if (!qword_100171708)
  {
    sub_1000B03A8();
    if (!v1)
    {
      atomic_store(v0, &qword_100171708);
    }
  }
}

void *sub_1000FDE2C()
{
  result = qword_100171710;
  if (!qword_100171710)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100171710);
  }

  return result;
}

void sub_1000FDE5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AutomationUtilities.AutomationAttributeTypeConstants(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomationUtilities.AutomationAttributeTypeConstants(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000FE030()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000FE118(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000FE1EC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000FE2D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FE688(*a1);
  *a2 = result;
  return result;
}

void sub_1000FE300(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E6FLL;
  v4 = 0xEB00000000736563;
  v5 = 0x69766544206C6C41;
  v6 = 0xE400000000000000;
  v7 = 1701736260;
  if (v2 != 3)
  {
    v7 = 0x747465536E65704FLL;
    v6 = 0xEC00000073676E69;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEF6567616D496E6FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x7474754273706954;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

double sub_1000FE3D0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1000FE4D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000FE6D4(*a1);
  *a2 = result;
  return result;
}

void sub_1000FE508(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEA00000000006465;
  v6 = 0x7463656C65537369;
  if (v2 != 5)
  {
    v6 = 0x6E6F69746361;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6C6562616CLL;
  if (v2 != 3)
  {
    v8 = 0x54746E65746E6F63;
    v7 = 0xEB00000000657079;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1701869940;
  if (v2 != 1)
  {
    v10 = 0x656C746974;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1000FE5DC()
{
  result = qword_100171758;
  if (!qword_100171758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171758);
  }

  return result;
}

unint64_t sub_1000FE634()
{
  result = qword_100171760;
  if (!qword_100171760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171760);
  }

  return result;
}

unint64_t sub_1000FE688(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A2E8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000FE6D4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10015A380, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000FE720(uint64_t a1, int a2)
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

uint64_t sub_1000FE768(uint64_t result, int a2, int a3)
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

void sub_1000FE7DC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171768 = v4;
}

void sub_1000FE894()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206F0;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171778 = v4;
}

void sub_1000FE99C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120690;
  v2._countAndFlagsBits = 0xD000000000000012;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717A8 = v4;
}

void sub_1000FEA54()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001206B0;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717B8 = v4;
}

void sub_1000FEB0C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120670;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717C8 = v4;
}

void sub_1000FEBC4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120610;
  v2._countAndFlagsBits = 0xD000000000000026;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717D8 = v4;
}

void sub_1000FEC7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x8000000100120640;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717E8 = v4;
}

void sub_1000FED34()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205D0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_1001717F8 = v4;
}

void sub_1000FEDEC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205F0;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171808 = v4;
}

void sub_1000FEED4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x80000001001205B0;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100171828 = v4;
}

uint64_t sub_1000FEFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_100171880, &qword_10011AB20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v11 = sub_100002BE4(&qword_100171878, &qword_10011AB18);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = sub_100002BE4(&qword_1001718A0, &qword_10011AB28);
  v41 = *(v15 - 8);
  v42 = v15;
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v46 = sub_100002BE4(&qword_100171860, &qword_10011AB08);
  __chkstk_darwin(v46);
  v47 = &v38 - v18;
  v48 = a1;
  sub_100002BE4(&qword_1001718A8, &unk_10011AB30);
  sub_100012C48(&qword_1001718B0, &qword_1001718A8, &unk_10011AB30, &protocol conformance descriptor for TupleView<A>);
  List<>.init(content:)();
  v19 = sub_100012C48(&qword_100171888, &qword_100171880, &qword_10011AB20, &protocol conformance descriptor for List<A, B>);
  View.listHasStackBehavior()();
  (*(v8 + 8))(v10, v7);
  InsetGroupedListStyle.init()();
  *&v52 = v7;
  *(&v52 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v39;
  v21 = v43;
  View.listStyle<A>(_:)();
  (*(v44 + 8))(v6, v21);
  (*(v40 + 8))(v14, v20);
  if (*(a1 + 24))
  {
    v22 = MobileGestaltCoordinator.isPadDevice.getter();
    v23 = v47;
    (*(v41 + 32))(v47, v17, v42);
    v24 = &v23[*(v46 + 36)];
    *v24 = v22 & 1;
    v24[1] = 1;
    if (qword_100169038 != -1)
    {
      swift_once();
    }

    v52 = xmmword_100171828;
    sub_100012928();

    v25 = Text.init<A>(_:)();
    v43 = v26;
    v44 = v25;
    LODWORD(v41) = v27;
    v42 = v28;
    v52 = *a1;
    v53 = *(a1 + 16);
    sub_100002BE4(&qword_10016F3F0, &qword_100116570);
    Binding.projectedValue.getter();
    v30 = v49;
    v29 = v50;
    v31 = v51;
    swift_getKeyPath();
    *&v52 = v30;
    *(&v52 + 1) = v29;
    v53 = v31;
    Binding.subscript.getter();

    __chkstk_darwin(v32);
    sub_100002BE4(&qword_100171868, &qword_10011AB10);
    sub_100102B64();
    sub_100012C48(&qword_100171898, &qword_100171868, &qword_10011AB10, &protocol conformance descriptor for TupleView<A>);
    v33 = v41;
    v34 = v44;
    v35 = v43;
    v36 = v47;
    View.alert<A>(_:isPresented:actions:)();

    sub_10001297C(v34, v35, v33 & 1);

    return sub_100009908(v36, &qword_100171860, &qword_10011AB08);
  }

  else
  {
    type metadata accessor for AppDelegate(0);
    sub_10010343C(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FF680@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = sub_100002BE4(&qword_1001718D0, &qword_10011AC08);
  v4 = __chkstk_darwin(v3 - 8);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v28 - v6;
  v29 = sub_100002BE4(&qword_1001718D8, &qword_10011AC10);
  v8 = *(v29 - 8);
  v9 = __chkstk_darwin(v29);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v32 = a1;
  sub_100100384(v39);
  v36 = v39[2];
  v37 = v39[3];
  v38 = v40;
  v34 = v39[0];
  v35 = v39[1];
  sub_100002BE4(&qword_1001718E0, &qword_10011AC18);
  sub_100002BE4(&qword_1001718E8, &qword_10011AC20);
  sub_100012C48(&qword_1001718F0, &qword_1001718E0, &qword_10011AC18, &protocol conformance descriptor for TupleView<A>);
  sub_100102E04();
  v14 = v13;
  Section<>.init(footer:content:)();
  v34 = *a1;
  *&v35 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  v15 = v33;
  swift_getKeyPath();
  *&v34 = v15;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (v16)
  {
    __chkstk_darwin(v17);
    *(&v28 - 2) = a1;
    sub_100002BE4(&qword_100171940, &qword_10011AC78);
    sub_100012C48(&qword_100171948, &qword_100171940, &qword_10011AC78, &protocol conformance descriptor for TupleView<A>);
    Section<>.init(content:)();
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_100002BE4(&qword_100171930, &qword_10011AC68);
  (*(*(v19 - 8) + 56))(v7, v18, 1, v19);
  v20 = v8;
  v21 = *(v8 + 16);
  v22 = v29;
  v21(v11, v13, v29);
  v23 = v30;
  sub_10000C178(v7, v30, &qword_1001718D0, &qword_10011AC08);
  v24 = v31;
  v21(v31, v11, v22);
  v25 = sub_100002BE4(&qword_100171938, &qword_10011AC70);
  sub_10000C178(v23, &v24[*(v25 + 48)], &qword_1001718D0, &qword_10011AC08);
  sub_100009908(v7, &qword_1001718D0, &qword_10011AC08);
  v26 = *(v20 + 8);
  v26(v14, v22);
  sub_100009908(v23, &qword_1001718D0, &qword_10011AC08);
  return (v26)(v11, v22);
}

uint64_t sub_1000FFB7C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v49 = sub_100002BE4(&qword_100171968, &qword_10011AD18);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44 - v3;
  v50 = sub_100002BE4(&qword_100171970, &qword_10011AD20);
  v4 = __chkstk_darwin(v50);
  v44 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = &v44 - v6;
  v54 = sub_100002BE4(&qword_100171978, &qword_10011AD28);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v45 = &v44 - v7;
  v8 = sub_100002BE4(&qword_100171980, &qword_10011AD30);
  v9 = __chkstk_darwin(v8 - 8);
  v55 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v44 - v11;
  v12 = sub_100002BE4(&qword_100171958, &qword_10011AC88);
  v13 = v12 - 8;
  v14 = __chkstk_darwin(v12);
  v51 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v68 = *a1;
  v69 = *(a1 + 2);
  v66 = *a1;
  v67 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v19 = v63;
  v18 = v64;
  v20 = v65;
  swift_getKeyPath();
  *&v66 = v19;
  *(&v66 + 1) = v18;
  v67 = v20;
  Binding.subscript.getter();

  v22 = v60;
  v21 = v61;
  v23 = v62;

  v57 = v22;
  v58 = v21;
  v59 = v23;
  static Animation.default.getter();
  sub_100002BE4(&qword_100171988, &qword_10011AD38);
  Binding.animation(_:)();

  Toggle.init(isOn:label:)();
  v24 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v26 = &v17[*(v13 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  v66 = v68;
  v67 = v69;
  Binding.wrappedValue.getter();
  v27 = v63;
  swift_getKeyPath();
  *&v66 = v27;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v24) = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (!v24)
  {
    v38 = 1;
    v36 = v53;
    v37 = v54;
    v35 = v52;
    goto LABEL_5;
  }

  v29 = __chkstk_darwin(v28);
  *(&v44 - 2) = a1;
  __chkstk_darwin(v29);
  *(&v44 - 2) = a1;
  sub_100002BE4(&qword_100171998, &qword_10011AD48);
  sub_10010311C();
  v30 = v46;
  List<>.init(content:)();
  if (*(a1 + 3))
  {
    v31 = MobileGestaltCoordinator.isPadDevice.getter();
    v32 = v44;
    (*(v48 + 32))(v44, v30, v49);
    v33 = (v32 + *(v50 + 36));
    *v33 = v31 & 1;
    v33[1] = 1;
    sub_100103280(v32, v47);
    sub_100002BE4(&qword_1001719C0, &qword_10011AD60);
    sub_1001032F0();
    sub_10010337C();
    v34 = v45;
    NavigationLink.init(destination:label:)();
    v35 = v52;
    v36 = v53;
    v37 = v54;
    (*(v52 + 32))(v53, v34, v54);
    v38 = 0;
LABEL_5:
    (*(v35 + 56))(v36, v38, 1, v37);
    v39 = v51;
    sub_10000C178(v17, v51, &qword_100171958, &qword_10011AC88);
    v40 = v55;
    sub_10010309C(v36, v55);
    v41 = v56;
    sub_10000C178(v39, v56, &qword_100171958, &qword_10011AC88);
    v42 = sub_100002BE4(&qword_100171990, &qword_10011AD40);
    sub_10010309C(v40, v41 + *(v42 + 48));
    sub_100009908(v36, &qword_100171980, &qword_10011AD30);
    sub_100009908(v17, &qword_100171958, &qword_10011AC88);
    sub_100009908(v40, &qword_100171980, &qword_10011AD30);
    return sub_100009908(v39, &qword_100171958, &qword_10011AC88);
  }

  type metadata accessor for AppDelegate(0);
  sub_10010343C(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

__n128 sub_100100384@<Q0>(uint64_t a1@<X8>)
{
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = objc_opt_self();
  v3 = [v2 listeningForAlternateBonjourBrowsing];

  if ((v3 & 1) == 0)
  {
    if (qword_100169008 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v11 = Text.init<A>(_:)();
    v13 = v11;
    v14 = v12;
    *&v26 = v11;
    *(&v26 + 1) = v12;
    v16 = v15 & 1;
    v27.n128_u64[0] = v15 & 1;
    v27.n128_u64[1] = v17;
    LOBYTE(v28) = 0;
    goto LABEL_13;
  }

  Binding.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = [v2 getAdvertisingAccessMode];

  if (!v4)
  {
    if (qword_100169010 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v11 = Text.init<A>(_:)();
    v13 = v11;
    v14 = v12;
    v16 = v18 & 1;
    *&v26 = v11;
    *(&v26 + 1) = v12;
    v27.n128_u64[0] = v18 & 1;
    v27.n128_u64[1] = v19;
    LOBYTE(v28) = 1;
LABEL_13:
    sub_100003AE4(v11, v12, v16);

    _ConditionalContent<>.init(storage:)();
    sub_100002BE4(&qword_100171908, &qword_10011AC28);
    sub_100002BE4(&qword_100171918, &qword_10011AC30);
    sub_100102E90();
    sub_100102F0C();
    _ConditionalContent<>.init(storage:)();
    v20 = v13;
    v21 = v14;
    v22 = v16;
    goto LABEL_16;
  }

  Binding.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = [v2 getAdvertisingAccessMode];

  if (v5 == 3)
  {
    if (qword_100169018 != -1)
    {
      swift_once();
    }

    sub_100012928();

    v6 = Text.init<A>(_:)();
    v8 = v7;
    v10 = v9 & 1;
    sub_100003AE4(v6, v7, v9 & 1);

    sub_100002BE4(&qword_100171928, &qword_10011AC38);
    sub_100102F98();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v6 = Text.init(_:tableName:bundle:comment:)();
    v8 = v23;
    v10 = v24 & 1;
    sub_100003AE4(v6, v23, v24 & 1);

    sub_100002BE4(&qword_100171928, &qword_10011AC38);
    sub_100102F98();
    _ConditionalContent<>.init(storage:)();
  }

  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_100002BE4(&qword_100171918, &qword_10011AC30);
  sub_100102E90();
  sub_100102F0C();
  _ConditionalContent<>.init(storage:)();
  v20 = v6;
  v21 = v8;
  v22 = v10;
LABEL_16:
  sub_10001297C(v20, v21, v22);

  result = v27;
  *(a1 + 32) = v28;
  *(a1 + 48) = v29;
  *(a1 + 64) = v30;
  *a1 = v26;
  *(a1 + 16) = v27;
  return result;
}

uint64_t sub_100100A10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0) - 8;
  v3 = __chkstk_darwin(v64);
  v65 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v63 = &v56 - v6;
  __chkstk_darwin(v5);
  v71 = &v56 - v7;
  v8 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  __chkstk_darwin(v8 - 8);
  v57 = &v56 - v9;
  v61 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v69 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v59 = &v56 - v13;
  __chkstk_darwin(v12);
  v67 = &v56 - v14;
  v60 = sub_100002BE4(&qword_1001718B8, &qword_10011AB70);
  v70 = *(v60 - 8);
  v15 = __chkstk_darwin(v60);
  v68 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v72 = &v56 - v17;
  v18 = a1[1];
  v56 = *a1;
  v19 = a1[2];
  v74 = v56;
  v75 = v18;
  v76 = v19;
  v58 = sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v20 = v77;
  v21 = v78;
  swift_getKeyPath();
  v77 = v20;
  v78 = v21;
  Binding.subscript.getter();

  SecureField.init(text:prompt:label:)();
  v22 = v57;
  static ButtonRole.cancel.getter();
  v23 = type metadata accessor for ButtonRole();
  (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  v24 = v56;
  v79[0] = v56;
  v77 = *(a1 + 3);
  v25 = swift_allocObject();
  v26 = *(a1 + 1);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  *(v25 + 48) = a1[4];
  sub_1000AFC98(v79, &v74);

  sub_10000C178(&v77, &v74, &qword_1001718C0, &qword_10011ABA0);
  v27 = v67;
  Button.init(role:action:label:)();
  v28 = swift_allocObject();
  v29 = *(a1 + 1);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v29;
  *(v28 + 48) = a1[4];
  sub_1000AFC98(v79, &v74);

  sub_10000C178(&v77, &v74, &qword_1001718C0, &qword_10011ABA0);
  v30 = v59;
  Button.init(action:label:)();
  v74 = v24;
  v75 = v18;
  v76 = v19;
  Binding.wrappedValue.getter();
  v31 = v73;
  swift_getKeyPath();
  v74 = v31;
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v31 + 40);
  v33 = *(v31 + 48);

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v32 & 0xFFFFFFFFFFFFLL;
  }

  v35 = v34 == 0;
  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  v38 = v69;
  v39 = v63;
  v40 = v61;
  (*(v69 + 32))(v63, v30, v61);
  v41 = (v39 + *(v64 + 44));
  *v41 = KeyPath;
  v41[1] = sub_100102D5C;
  v41[2] = v37;
  v42 = v71;
  sub_100102D64(v39, v71);
  v64 = *(v70 + 16);
  v43 = v68;
  v44 = v60;
  (v64)(v68, v72, v60);
  v45 = *(v38 + 16);
  v46 = v62;
  v45(v62, v27, v40);
  v47 = v42;
  v48 = v65;
  sub_10000C178(v47, v65, &qword_10016C1A0, &unk_1001122D0);
  v49 = v66;
  v50 = v43;
  v51 = v44;
  (v64)(v66, v50, v44);
  v52 = sub_100002BE4(&qword_1001718C8, &qword_10011ABD8);
  v45((v49 + *(v52 + 48)), v46, v40);
  sub_10000C178(v48, v49 + *(v52 + 64), &qword_10016C1A0, &unk_1001122D0);
  sub_100009908(v71, &qword_10016C1A0, &unk_1001122D0);
  v53 = *(v69 + 8);
  v53(v67, v40);
  v54 = *(v70 + 8);
  v54(v72, v51);
  sub_100009908(v48, &qword_10016C1A0, &unk_1001122D0);
  v53(v46, v40);
  return (v54)(v68, v51);
}

double sub_10010126C(__int128 *a1)
{
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  if (!sub_100099420())
  {
    sub_100098F08(0, 0xE000000000000000);
  }

  if (*(v3 + 57) == 1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v3 + 57) = 0;
  }

  return result;
}

double sub_100101400(__int128 *a1)
{
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  sub_100099BB0();

  return result;
}

void sub_10010148C()
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181F88);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_100006B44(0xD00000000000001BLL, 0x800000010011AA70, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s Invalid airplay settings state.", v2, 0xCu);
    sub_1000052E4(v3);
  }
}

uint64_t sub_1001015D4(uint64_t a1)
{
  sub_100101E38(a1, v2);
  sub_100002BE4(&qword_1001719E0, &qword_10011AD68);
  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_10000459C(&qword_1001719A8, &qword_10011AD50);
  sub_10000459C(&qword_1001719B0, &qword_10011AD58);
  type metadata accessor for InlinePickerStyle();
  sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58, &protocol conformance descriptor for Picker<A, B, C>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100102E90();
  return Section<>.init(footer:content:)();
}

uint64_t sub_10010174C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_1001719B0, &qword_10011AD58);
  v30 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_100002BE4(&qword_1001719A8, &qword_10011AD50);
  v11 = *(v10 - 8);
  v31 = v10;
  v32 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v28 = v15;
  v29 = v14;
  v26 = v16;
  v27 = v17;
  v36 = *a1;
  v37 = *(a1 + 2);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v18 = v41;
  v19 = v42;
  swift_getKeyPath();
  v36 = v18;
  v37 = v19;
  Binding.subscript.getter();

  v25 = v41;
  v20 = v42;

  v39 = v25;
  v40 = v20;
  type metadata accessor for APRKAdvertisingAccessMode(0);
  sub_100002BE4(&qword_1001719E8, &qword_10011AD70);
  sub_10010343C(&qword_1001719F0, type metadata accessor for APRKAdvertisingAccessMode, &unk_10010C4A4);
  sub_100012C48(&qword_1001719F8, &qword_1001719E8, &qword_10011AD70, &protocol conformance descriptor for _TuplePickerContent<A, B>);
  Picker<>.init<A>(_:selection:content:)();
  InlinePickerStyle.init()();
  v21 = sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58, &protocol conformance descriptor for Picker<A, B, C>);
  v22 = v33;
  View.pickerStyle<A>(_:)();
  (*(v34 + 8))(v6, v22);
  (*(v30 + 8))(v9, v7);
  *&v36 = v7;
  *(&v36 + 1) = v22;
  v37 = v21;
  v38 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v23 = v31;
  View.labelsHidden()();
  return (*(v32 + 8))(v13, v23);
}

uint64_t sub_100101B90()
{
  v0 = sub_100002BE4(&qword_100171A00, &qword_10011AD78);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v10 = 3;
  type metadata accessor for APRKAdvertisingAccessMode(0);
  sub_10010343C(&qword_1001719F0, type metadata accessor for APRKAdvertisingAccessMode, &unk_10010C4A4);
  PickerOption.init(value:content:)();
  v10 = 0;
  PickerOption.init(value:content:)();
  sub_100012C48(&qword_100171A08, &qword_100171A00, &qword_10011AD78, &protocol conformance descriptor for PickerOption<A, B>);
  dispatch thunk of PickerContent._identifiedView.getter();
  sub_100002BE4(&qword_100171A10, &qword_10011AD80);
  dispatch thunk of PickerContent._identifiedView.getter();
  v7 = *(v1 + 8);
  v7(v4, v0);
  return (v7)(v6, v0);
}

double sub_100101E38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = *(a1 + 16);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = [objc_opt_self() getAdvertisingAccessMode];

  if (v3)
  {
    if (qword_100169000 != -1)
    {
      swift_once();
    }

    v5 = xmmword_1001717B8;
    sub_100012928();

    Text.init<A>(_:)();
  }

  else
  {
    if (qword_100168FF8 != -1)
    {
      swift_once();
    }

    v5 = xmmword_1001717A8;
    sub_100012928();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100102054(uint64_t a1)
{
  sub_100002BE4(&qword_100171908, &qword_10011AC28);
  sub_100102E90();
  return LabeledContent<>.init(content:label:)();
}

double sub_1001020EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v6 = *(a1 + 16);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = [objc_opt_self() getAdvertisingAccessMode];

  if (v3)
  {
    if (qword_100168FE8 != -1)
    {
      swift_once();
    }

    v5 = xmmword_100171788;
    sub_100012928();

    Text.init<A>(_:)();
  }

  else
  {
    if (qword_100168FF0 != -1)
    {
      swift_once();
    }

    v5 = xmmword_100171798;
    sub_100012928();

    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_100102330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v41 = &v39 - v4;
  v5 = sub_100002BE4(&qword_100171950, &qword_10011AC80);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v39 - v8;
  v9 = sub_100002BE4(&qword_100171958, &qword_10011AC88);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v16 = *a1;
  v15 = a1[1];
  v40 = a1;
  v42 = a1[2];
  *&v51 = v16;
  *(&v51 + 1) = v15;
  v52 = v42;
  v43 = sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  v17 = v50[0];
  v18 = v50[1];
  v19 = v50[2];
  swift_getKeyPath();
  *&v51 = v17;
  *(&v51 + 1) = v18;
  v52 = v19;
  Binding.subscript.getter();

  v20 = v42;

  Toggle.init(isOn:label:)();
  v21 = static Color.green.getter();
  KeyPath = swift_getKeyPath();
  v23 = &v14[*(v10 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  *&v51 = v16;
  *(&v51 + 1) = v15;
  v52 = v20;
  Binding.wrappedValue.getter();
  LOBYTE(v21) = sub_100099420();

  if (v21)
  {
    v53 = v16;
    v24 = v40;
    v51 = *(v40 + 3);
    v25 = swift_allocObject();
    v26 = *(v24 + 1);
    *(v25 + 16) = *v24;
    *(v25 + 32) = v26;
    *(v25 + 48) = v24[4];
    sub_1000AFC98(&v53, v50);

    sub_10000C178(&v51, v50, &qword_1001718C0, &qword_10011ABA0);
    v27 = v41;
    Button.init(action:label:)();
    v29 = v44;
    v28 = v45;
    v30 = v46;
    (*(v45 + 32))(v44, v27, v46);
    v31 = 0;
    v32 = v30;
    v33 = v28;
  }

  else
  {
    v31 = 1;
    v33 = v45;
    v32 = v46;
    v29 = v44;
  }

  (*(v33 + 56))(v29, v31, 1, v32);
  v34 = v47;
  sub_10000C178(v14, v47, &qword_100171958, &qword_10011AC88);
  v35 = v48;
  sub_10000C178(v29, v48, &qword_100171950, &qword_10011AC80);
  v36 = v49;
  sub_10000C178(v34, v49, &qword_100171958, &qword_10011AC88);
  v37 = sub_100002BE4(&qword_100171960, &qword_10011ACE8);
  sub_10000C178(v35, v36 + *(v37 + 48), &qword_100171950, &qword_10011AC80);
  sub_100009908(v29, &qword_100171950, &qword_10011AC80);
  sub_100009908(v14, &qword_100171958, &qword_10011AC88);
  sub_100009908(v35, &qword_100171950, &qword_10011AC80);
  return sub_100009908(v34, &qword_100171958, &qword_10011AC88);
}

double sub_100102828(__int128 *a1)
{
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10010343C(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v2 + 56) = (*(v2 + 56) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return result;
}

uint64_t sub_10010299C@<X0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_100012928();

  result = Text.init<A>(_:)();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v9;
  return result;
}

uint64_t sub_100102A34()
{
  sub_100002BE4(&qword_100171858, &qword_10011AB00);
  sub_10000459C(&qword_100171860, &qword_10011AB08);
  sub_10000459C(&qword_100171868, &qword_10011AB10);
  sub_100102B64();
  sub_100012C48(&qword_100171898, &qword_100171868, &qword_10011AB10, &protocol conformance descriptor for TupleView<A>);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_100102B64()
{
  result = qword_100171870;
  if (!qword_100171870)
  {
    sub_10000459C(&qword_100171860, &qword_10011AB08);
    sub_10000459C(&qword_100171878, &qword_10011AB18);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_100171880, &qword_10011AB20);
    sub_100012C48(&qword_100171888, &qword_100171880, &qword_10011AB20, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100102CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171870);
  }

  return result;
}

unint64_t sub_100102CBC()
{
  result = qword_100171890;
  if (!qword_100171890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171890);
  }

  return result;
}

uint64_t sub_100102D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100102E04()
{
  result = qword_1001718F8;
  if (!qword_1001718F8)
  {
    sub_10000459C(&qword_1001718E8, &qword_10011AC20);
    sub_100102E90();
    sub_100102F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001718F8);
  }

  return result;
}

unint64_t sub_100102E90()
{
  result = qword_100171900;
  if (!qword_100171900)
  {
    sub_10000459C(&qword_100171908, &qword_10011AC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171900);
  }

  return result;
}

unint64_t sub_100102F0C()
{
  result = qword_100171910;
  if (!qword_100171910)
  {
    sub_10000459C(&qword_100171918, &qword_10011AC30);
    sub_100102F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171910);
  }

  return result;
}

unint64_t sub_100102F98()
{
  result = qword_100171920;
  if (!qword_100171920)
  {
    sub_10000459C(&qword_100171928, &qword_10011AC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171920);
  }

  return result;
}

uint64_t sub_10010303C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10010309C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171980, &qword_10011AD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010311C()
{
  result = qword_1001719A0;
  if (!qword_1001719A0)
  {
    sub_10000459C(&qword_100171998, &qword_10011AD48);
    sub_10000459C(&qword_1001719A8, &qword_10011AD50);
    sub_10000459C(&qword_1001719B0, &qword_10011AD58);
    type metadata accessor for InlinePickerStyle();
    sub_100012C48(&qword_1001719B8, &qword_1001719B0, &qword_10011AD58, &protocol conformance descriptor for Picker<A, B, C>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100102E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719A0);
  }

  return result;
}

uint64_t sub_100103280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171970, &qword_10011AD20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001032F0()
{
  result = qword_1001719C8;
  if (!qword_1001719C8)
  {
    sub_10000459C(&qword_1001719C0, &qword_10011AD60);
    sub_100102E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719C8);
  }

  return result;
}

unint64_t sub_10010337C()
{
  result = qword_1001719D0;
  if (!qword_1001719D0)
  {
    sub_10000459C(&qword_100171970, &qword_10011AD20);
    sub_100012C48(&qword_1001719D8, &qword_100171968, &qword_10011AD18, &protocol conformance descriptor for List<A, B>);
    sub_100102CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001719D0);
  }

  return result;
}

uint64_t sub_10010343C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100103504()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v1._object = 0xEA00000000004552;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_100171A28 = v4;
}

uint64_t sub_1001035BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a1;
  v32 = a5;
  v33 = type metadata accessor for AutomationSemantics();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002BE4(&qword_100171A38, &qword_10011AE28);
  v11 = *(v10 - 8);
  v26 = v10;
  v27 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v28 = sub_100002BE4(&qword_100171A40, &qword_10011AE30);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v24 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;

  sub_100002BE4(&qword_100171A48, &qword_10011AE38);
  sub_100012C48(&qword_100171A50, &qword_100171A48, &qword_10011AE38, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  LOBYTE(v34[0]) = a3;
  *(&v34[0] + 1) = a4;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v25;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  v18 = sub_100012C48(&qword_100171A58, &qword_100171A38, &qword_10011AE28, &protocol conformance descriptor for Button<A>);
  v19 = sub_1000C8F4C();

  v20 = v26;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v27 + 8))(v13, v20);
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  v21 = v29;
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_100015CE4(v34);
  sub_100015CE4(&v35);
  *&v35 = v20;
  *(&v35 + 1) = &type metadata for LearnMoreLinkWebView;
  *&v36 = v18;
  *(&v36 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v22 = v28;
  View.automationSemantics(_:)();
  (*(v31 + 8))(v21, v33);
  return (*(v30 + 8))(v15, v22);
}

void sub_100103A4C(uint64_t a2@<X8>)
{
  v15 = static VerticalAlignment.center.getter();
  if (qword_100169050 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.callout.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10001297C(v3, v5, v7 & 1);

  *a2 = v15;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12 & 1;
  *(a2 + 48) = v14;
}

uint64_t sub_100103B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_100103C74;
  a5[3] = v10;

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_100103C34()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_100103C7C(char a1)
{
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_100103CD8()
{
  sub_10000459C(&qword_100171A40, &qword_10011AE30);
  sub_10000459C(&qword_100171A38, &qword_10011AE28);
  sub_100012C48(&qword_100171A58, &qword_100171A38, &qword_10011AE28, &protocol conformance descriptor for Button<A>);
  sub_1000C8F4C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100103DC8(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100103E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_100103EA0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171AB8, &qword_10011AF68);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (sub_100092298(v9) & 1) != 0)
  {
    v10 = static Alignment.bottomTrailing.getter();
    v12 = v11;
    v13 = &v7[*(v5 + 36)];
    v14 = type metadata accessor for FlowAction(0);
    static ActionMetrics.notInstrumented.getter();
    v15 = &v13[*(v14 + 24)];
    *(v15 + 4) = 0;
    *v15 = 0u;
    *(v15 + 1) = 0u;
    v15[40] = 2;
    v16 = static FlowActionPresentation.sheetPresent.getter();
    *v13 = 0x6775626564;
    *(v13 + 1) = 0xE500000000000000;
    v17 = &v13[*(v14 + 28)];
    *v17 = v16;
    v17[1] = v18;
    *&v13[*(sub_100002BE4(&qword_100171AF0, &qword_10011AF88) + 36)] = vdupq_n_s64(0xC040000000000000);
    v19 = &v13[*(sub_100002BE4(&qword_100171AE8, &qword_10011AF80) + 36)];
    *v19 = v10;
    v19[1] = v12;
    v20 = sub_100002BE4(&qword_100171AC8, &qword_10011AF78);
    (*(*(v20 - 8) + 16))(v7, a1, v20);
    sub_100105AAC(v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_100105B1C(v7);
  }

  else
  {
    v22 = sub_100002BE4(&qword_100171AC8, &qword_10011AF78);
    (*(*(v22 - 8) + 16))(v4, a1, v22);
    swift_storeEnumTagMultiPayload();
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1001041F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002BE4(&qword_100171A60, &qword_10011AEC8);
  __chkstk_darwin(v8);
  v10 = v25 - v9;
  v11 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  __chkstk_darwin(v11);
  v13 = v25 - v12;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v25[1] = v8;
    v25[3] = a4;
    v15 = swift_allocObject();
    v16 = a2 & 1;
    *(v15 + 16) = a2 & 1;
    *(v15 + 24) = a3;

    v17 = sub_100002BE4(&qword_100171A70, &qword_10011AED8);
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v25[2] = v17;
    View.onTapGesture(count:perform:)();

    v18 = static Alignment.center.getter();
    v20 = v19;
    LOBYTE(v28) = v16;
    v29 = a3;
    sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
    State.wrappedValue.getter();
    if (v26 == 1)
    {
      v26 = static Color.green.getter();
      v27 = 0;
    }

    else
    {
      v26 = static Color.clear.getter();
      v27 = 1;
    }

    _ConditionalContent<>.init(storage:)();
    v23 = v29;
    v24 = &v13[*(v11 + 36)];
    *v24 = v28;
    v24[8] = v23;
    *(v24 + 2) = v18;
    *(v24 + 3) = v20;
    sub_100104DF8(v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_100104C8C();
    _ConditionalContent<>.init(storage:)();
    return sub_100104E68(v13);
  }

  else
  {
    v21 = sub_100002BE4(&qword_100171A70, &qword_10011AED8);
    (*(*(v21 - 8) + 16))(v10, a1, v21);
    swift_storeEnumTagMultiPayload();
    sub_100104C8C();
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

double sub_100104570(char a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5];
  v7 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v7)
  {
    v8 = v7;
    static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
    v9 = String._bridgeToObjectiveC()();

    [v8 setBool:0 forKey:v9];
  }

  v10 = a1 & 1;
  v15[16] = a1 & 1;
  v16 = a2;
  v15[15] = 1;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v10;
  *(v13 + 40) = a2;
  sub_1000B8C00(0, 0, v6, &unk_10011AEF0, v13);

  return result;
}

uint64_t sub_100104724(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 32) = a5;
  *(v5 + 121) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 80) = v8;
  *(v5 + 88) = v7;

  return _swift_task_switch(sub_100104820, v8, v7);
}

uint64_t sub_100104820()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1001048EC;

  return sub_100105428(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001048EC()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 104) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 88);
    v8 = sub_100104C10;
  }

  else
  {
    v8 = sub_100104A6C;
    v6 = 0;
    v7 = 0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100104A6C(uint64_t a1)
{
  *(v1 + 112) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100104AF8, v3, v2);
}

uint64_t sub_100104AF8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 121);

  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 120) = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_100104BA0, v3, v4);
}

uint64_t sub_100104BA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100104C10()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100104C8C()
{
  result = qword_100171A78;
  if (!qword_100171A78)
  {
    sub_10000459C(&qword_100171A68, &qword_10011AED0);
    sub_10000459C(&qword_100171A70, &qword_10011AED8);
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100171A88, &qword_100171A90, &qword_10011AEE0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171A78);
  }

  return result;
}

uint64_t sub_100104DB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100104DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100104E68(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171A68, &qword_10011AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100104ED0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100104F10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000FA04;

  return sub_100104724(a1, v4, v5, v6, v7);
}

uint64_t sub_100104FD4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(systemName:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v25 = v6;
  LOWORD(v26) = 1;
  static Font.Weight.light.getter();
  sub_100002BE4(&qword_10016B8B0, &qword_1001157F0);
  sub_100043F28();
  View.fontWeight(_:)();

  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_100002BE4(&qword_100171BD0, &qword_10011B018) + 36);
  *v15 = v2;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v16 = (a1 + *(sub_100002BE4(&qword_100171BC0, &qword_10011B010) + 36));
  v17 = v26;
  *v16 = v25;
  v16[1] = v17;
  v16[2] = v27;
  v18 = static Color.white.getter();
  *(a1 + *(sub_100002BE4(&qword_100171BB0, &qword_10011B008) + 36)) = v18;
  v19 = a1 + *(sub_100002BE4(&qword_100171B98, &qword_10011B000) + 36);
  static Material.thick.getter();
  v20 = sub_100002BE4(&qword_100171BE0, &qword_10011B020);
  v21 = *(v20 + 52);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v23 - 8) + 104))(v19 + v21, v22, v23);
  *(v19 + *(v20 + 56)) = 256;
  return result;
}

uint64_t sub_1001052C4()
{
  v1 = v0;
  v2 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-1] - v3;
  v5 = type metadata accessor for ButtonRole();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v9[3] = type metadata accessor for FlowAction(0);
  v9[4] = sub_100105E18(&qword_10016A290, type metadata accessor for FlowAction, &unk_1001183E4);
  v6 = sub_100020014(v9);
  sub_1000CFA2C(v1, v6);
  sub_100002BE4(&qword_100171B98, &qword_10011B000);
  sub_100105E60();
  return ActionButton.init(role:action:label:)();
}

uint64_t sub_100105428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100105528, 0, 0);
}

uint64_t sub_100105528()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_100105E18(&qword_100171A98, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100105E18(&qword_100171AA0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1001056B8;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1001056B8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_100105874, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100105874()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1001058F4()
{
  result = qword_100171AA8;
  if (!qword_100171AA8)
  {
    sub_10000459C(&qword_100171AB0, &qword_10011AF10);
    sub_100104C8C();
    sub_100012C48(&qword_100171A80, &qword_100171A70, &qword_10011AED8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171AA8);
  }

  return result;
}

unint64_t sub_1001059C8()
{
  result = qword_100171AD0;
  if (!qword_100171AD0)
  {
    sub_10000459C(&qword_100171AC0, &qword_10011AF70);
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100012C48(&qword_100171AE0, &qword_100171AE8, &qword_10011AF80, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171AD0);
  }

  return result;
}

uint64_t sub_100105AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100105B1C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100171AC0, &qword_10011AF70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100105B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100105C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DebugButton(uint64_t a1)
{
  result = qword_100171B50;
  if (!qword_100171B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100105CD4(uint64_t a1)
{
  result = type metadata accessor for FlowAction(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100105D44()
{
  result = qword_100171B88;
  if (!qword_100171B88)
  {
    sub_10000459C(&qword_100171B90, qword_10011AFA0);
    sub_1001059C8();
    sub_100012C48(&qword_100171AD8, &qword_100171AC8, &qword_10011AF78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171B88);
  }

  return result;
}

uint64_t sub_100105E18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100105E60()
{
  result = qword_100171BA0;
  if (!qword_100171BA0)
  {
    sub_10000459C(&qword_100171B98, &qword_10011B000);
    sub_100105F18();
    sub_100012C48(&qword_100171BD8, &qword_100171BE0, &qword_10011B020, &protocol conformance descriptor for _InsettableBackgroundShapeModifier<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BA0);
  }

  return result;
}

unint64_t sub_100105F18()
{
  result = qword_100171BA8;
  if (!qword_100171BA8)
  {
    sub_10000459C(&qword_100171BB0, &qword_10011B008);
    sub_100105FD0();
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BA8);
  }

  return result;
}

unint64_t sub_100105FD0()
{
  result = qword_100171BB8;
  if (!qword_100171BB8)
  {
    sub_10000459C(&qword_100171BC0, &qword_10011B010);
    sub_10010605C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BB8);
  }

  return result;
}

unint64_t sub_10010605C()
{
  result = qword_100171BC8;
  if (!qword_100171BC8)
  {
    sub_10000459C(&qword_100171BD0, &qword_10011B018);
    sub_10000459C(&qword_10016B8B0, &qword_1001157F0);
    sub_100043F28();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171BC8);
  }

  return result;
}

uint64_t sub_1001061A4(int a1, int a2, int a3, int a4)
{
  if (qword_100181F78 == -1)
  {
    if (qword_100181F80)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10010666C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100181F80)
    {
      return _availability_version_check();
    }
  }

  if (qword_100181F70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100106684();
    a3 = v10;
    a4 = v9;
    v8 = dword_100181F60 < v11;
    if (dword_100181F60 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100181F64 > a3)
      {
        return 1;
      }

      if (dword_100181F64 >= a3)
      {
        return dword_100181F68 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100181F60 < a2;
  if (dword_100181F60 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100106338(uint64_t result)
{
  v1 = qword_100181F80;
  if (qword_100181F80)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100181F80 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100181F60, &dword_100181F64, &dword_100181F68);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t Picker<>.init<A>(_:selection:content:)()
{
  return Picker<>.init<A>(_:selection:content:)();
}

{
  return Picker<>.init<A>(_:selection:content:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}