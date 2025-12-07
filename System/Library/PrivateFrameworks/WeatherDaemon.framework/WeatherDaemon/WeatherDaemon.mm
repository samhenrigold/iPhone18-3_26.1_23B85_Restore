int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v77 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v76 = *(v6 - 8);
  __chkstk_darwin(v6);
  v75 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Container.Environment();
  v72 = *(v8 - 8);
  v73 = v8;
  __chkstk_darwin(v8);
  v74 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ContainerLock();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v71 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v67 - v18;
  __chkstk_darwin(v17);
  v21 = &v67 - v20;
  if ((WDWeatherAppIsInstalled() & 1) == 0)
  {
    v68 = v6;
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4(&qword_1000A3258);
    }

    v22 = sub_100002FE8(v12, static Logger.daemon);
    (*(v13 + 16))(v21, v22, v12);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Launched while Weather is uninstalled", v25, 2u);
    }

    (*(v13 + 8))(v21, v12);
    type metadata accessor for Daemon();
    sub_10004F844();
  }

  if ((WDDeviceUnlockedSinceBoot() & 1) == 0)
  {
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4(&qword_1000A3258);
    }

    v26 = sub_100002FE8(v12, static Logger.daemon);
    (*(v13 + 16))(v19, v26, v12);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v68 = v16;
      *v29 = 0;
      sub_1000033F0(&_mh_execute_header, v30, v31, "Launched before first unlock");
    }

    (*(v13 + 8))(v19, v12);
    type metadata accessor for Daemon();
    sub_10004FA50();
  }

  if (_set_user_dir_suffix())
  {
  }

  else
  {
    if (qword_1000A3258 != -1)
    {
      sub_1000033B4(&qword_1000A3258);
    }

    v32 = sub_100002FE8(v12, static Logger.daemon);
    (*(v13 + 16))(v16, v32, v12);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      *swift_slowAlloc() = 0;
      sub_1000033F0(&_mh_execute_header, v35, v36, "Failed to set temporary directory suffix");
    }

    (*(v13 + 8))(v16, v12);
  }

  v37 = CFNotificationCenterGetDarwinNotifyCenter();
  v38 = String._bridgeToObjectiveC()();
  CFNotificationCenterAddObserver(v37, 0, sub_100002E84, v38, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  qword_1000A5E30 = [objc_allocWithZone(NSRecursiveLock) init];
  sub_100003020(&qword_1000A3260, &qword_100080340);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100080310;
  v40 = type metadata accessor for Assembly();
  sub_100003410(v40);
  v41 = Assembly.init()();
  *(v39 + 56) = v40;
  *(v39 + 64) = sub_1000031B0(&qword_1000A3268, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v39 + 32) = v41;
  v42 = type metadata accessor for Assembly();
  sub_100003410(v42);
  v43 = Assembly.init()();
  *(v39 + 96) = v42;
  *(v39 + 104) = sub_1000031B0(&qword_1000A3270, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v39 + 72) = v43;
  sub_100003020(&qword_1000A3278, &qword_100080348);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100080320;
  v45 = type metadata accessor for AnalyticsAssembly();
  v46 = sub_1000033D4(v45);
  *(v44 + 56) = v42;
  *(v44 + 64) = sub_1000031B0(&qword_1000A3280, type metadata accessor for AnalyticsAssembly, &unk_100082494);
  *(v44 + 32) = v46;
  v47 = qword_1000A5E30;
  v48 = type metadata accessor for DaemonAssembly();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v44 + 96) = v48;
  *(v44 + 104) = sub_1000031B0(&qword_1000A3288, type metadata accessor for DaemonAssembly, &unk_100082688);
  *(v44 + 72) = v49;
  v50 = type metadata accessor for NotificationAssembly();
  v51 = sub_1000033D4(v50);
  *(v44 + 136) = v48;
  *(v44 + 144) = sub_1000031B0(&qword_1000A3290, type metadata accessor for NotificationAssembly, &unk_100082138);
  *(v44 + 112) = v51;
  v52 = type metadata accessor for PredictedLocationsAssembly();
  v53 = sub_1000033D4(v52);
  *(v44 + 176) = v48;
  *(v44 + 184) = sub_1000031B0(&qword_1000A3298, type metadata accessor for PredictedLocationsAssembly, &unk_10008094C);
  *(v44 + 152) = v53;
  v54 = type metadata accessor for SingletonPool();
  sub_100003410(v54);
  v55 = v47;
  SingletonPool.init()();
  v56 = qword_1000A5E30;
  v57 = v70;
  v58 = v71;
  *v71 = qword_1000A5E30;
  (*(v69 + 104))(v58, enum case for ContainerLock.lock(_:), v57);
  (*(v72 + 104))(v74, enum case for Container.Environment.normal(_:), v73);
  v59 = type metadata accessor for Container();
  sub_100003410(v59);
  v60 = v56;
  qword_1000A5E38 = Container.init(bundleAssemblies:assemblies:singletonPool:environment:containerLock:)();
  Container.resolver.getter();
  v61 = [objc_opt_self() currentProcess];
  sub_1000030F0(0xD000000000000011, 0x8000000100084790, v61);

  [objc_opt_self() setSuppressEngagement:1];
  sub_100003154();
  v62 = static OS_dispatch_workloop.daemonWorkloop.getter();
  aBlock[4] = sub_100002F20;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002FA4;
  aBlock[3] = &unk_10009AFB0;
  v63 = _Block_copy(aBlock);
  v64 = v75;
  static DispatchQoS.unspecified.getter();
  v78 = _swiftEmptyArrayStorage;
  sub_1000031B0(&qword_1000A4B70, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003020(&unk_1000A32B0, &qword_100080350);
  sub_1000031F8();
  v65 = v77;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v63);

  (*(v4 + 8))(v65, v3);
  (*(v76 + 8))(v64, v6);
  dispatch_main();
}

void sub_100002DB4()
{
  if (qword_1000A3258 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002FE8(v0, static Logger.daemon);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Exiting due to language change", v3, 2u);
  }

  exit(0);
}

void sub_100002E84(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = a3;
  a5;
  sub_100002DB4();
}

void sub_100002EE8()
{
}

void sub_100002F20()
{
  sub_1000032B8(qword_1000A3220, qword_1000A3238);
  type metadata accessor for Daemon();
  v0 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v0)
  {
    v3 = v0;
    sub_10004FD0C(v0, v1, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100002FA4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100002FE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003020(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100003068@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000309C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_1000030F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setProxyAppBundleID:v4];
}

unint64_t sub_100003154()
{
  result = qword_1000A32A0;
  if (!qword_1000A32A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A32A0);
  }

  return result;
}

uint64_t sub_100003198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000031B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000031F8()
{
  result = qword_1000A4B80;
  if (!qword_1000A4B80)
  {
    sub_10000325C(&unk_1000A32B0, &qword_100080350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A4B80);
  }

  return result;
}

uint64_t sub_10000325C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_1000032B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

__n128 sub_1000032FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000330C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000332C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100003368(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1000033B4(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000033D4(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1000033F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100003410(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100003428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v52 = v6;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v44 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v10;
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v49 = v8;
  v50 = a1;
  v17 = *(v8 + 16);
  v51 = v7;
  v46 = v17;
  v47 = v8 + 16;
  v17(v12, a1, v7);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43 = v13;
    v53 = v21;
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = Location.id.getter();
    v24 = v23;
    (*(v49 + 8))(v12, v51);
    v25 = sub_10000D9FC(v22, v24, &v53);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    v26 = Array.description.getter();
    v28 = sub_10000D9FC(v26, v27, &v53);

    *(v20 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "Finding cloud channel for location: %{private,mask.hash}s in assets: %{public}s", v20, 0x20u);
    swift_arrayDestroy();

    (*(v14 + 8))(v16, v43);
  }

  else
  {

    (*(v49 + 8))(v12, v51);
    (*(v14 + 8))(v16, v13);
  }

  v43 = sub_100005360();
  v29 = static OS_dispatch_queue.notifications.getter();
  *(swift_allocObject() + 16) = a2;

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  v30 = v45;
  firstly<A, B>(on:disposeOn:closure:)();

  v31 = static OS_dispatch_queue.notifications.getter();
  v32 = v44;
  v33 = v51;
  v46(v44, v50, v51);
  v34 = v49;
  v35 = *(v49 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  v49 = *(v34 + 32);
  (v49)(v36 + ((v35 + 24) & ~v35), v32, v33);

  sub_100003020(&qword_1000A34C8, &qword_1000804D8);
  sub_100006CD0(&qword_1000A34D0, &qword_1000A34C0, &qword_1000804D0, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v37 = zalgo.getter();
  sub_100003020(&qword_1000A34D8, &qword_1000804E0);
  Promise.then<A>(on:closure:)();

  v38 = static OS_dispatch_queue.notifications.getter();
  v46(v32, v50, v33);
  v39 = swift_allocObject();
  (v49)(v39 + ((v35 + 16) & ~v35), v32, v33);
  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v40 = Promise.then<A, B>(on:disposeOn:closure:)();

  return v40;
}

uint64_t sub_100003A48(uint64_t a1, uint64_t a2)
{
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_100003AB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17[1] = a2;
  v18 = a3;
  v19 = a4;
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = *a1;
  v9 = a1[1];
  sub_100005360();
  v10 = static OS_dispatch_queue.notifications.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;

  sub_100003020(&qword_1000A3528, &qword_100080508);
  type metadata accessor for CloudChannelMapProvider();
  firstly<A, B>(on:disposeOn:closure:)();

  v12 = static OS_dispatch_queue.notifications.getter();
  (*(v6 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  (*(v6 + 32))(v14 + v13, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_100003020(&qword_1000A3530, &unk_100080510);
  v15 = Promise.then<A>(on:closure:)();

  *v19 = v15;
  return result;
}

uint64_t (*sub_100003D2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(__int128 *)@<X8>))(__int128 *)
{
  sub_1000032B8(a1, a1[3]);
  v5 = dispatch thunk of CloudChannelMapType.regions.getter();
  v7[2] = a2;
  result = sub_100018988(sub_100006B60, v7, v5);
  *a3 = result;
  return result;
}

uint64_t sub_100003DB4(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  Location.coordinate.getter();
  return dispatch thunk of CloudChannelRegionType.contains(_:)() & 1;
}

uint64_t sub_100003E14(uint64_t *a1)
{
  sub_100003020(&qword_1000A34C8, &qword_1000804D8);
  v1 = zalgo.getter();
  sub_100003020(&qword_1000A34F0, &qword_1000804F0);
  sub_100006CD0(&qword_1000A34F8, &qword_1000A34F0, &qword_1000804F0, &protocol conformance descriptor for [A]);
  static Promise.all<A>(on:_:)();

  v2 = zalgo.getter();
  sub_100003020(&qword_1000A34D8, &qword_1000804E0);
  sub_100006CD0(&qword_1000A3500, &qword_1000A3508, &qword_1000804F8, &protocol conformance descriptor for [A]);
  Promise<A>.compactMap<A>(on:closure:)();

  v3 = zalgo.getter();
  sub_100006CD0(&qword_1000A3510, &qword_1000A3518, &qword_100080500, &protocol conformance descriptor for [A]);
  sub_100006CD0(&qword_1000A3520, &qword_1000A34D8, &qword_1000804E0, &protocol conformance descriptor for [A]);
  v4 = Promise<A>.flatMap<A>(on:closure:)();

  return v4;
}

uint64_t sub_100004020(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v46 = v3;
  v45 = v6;
  v7 = type metadata accessor for Location();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v17 = *(v8 + 16);
  v50 = a1;
  v51 = v7;
  v48 = v17;
  v49 = v8 + 16;
  v17(v12, a1, v7);
  v52 = a2;
  swift_bridgeObjectRetain_n();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v47 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v43 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2081;
    v24 = Location.id.getter();
    v42 = v13;
    v25 = v9;
    v27 = v26;
    (*(v8 + 8))(v12, v51);
    v28 = sub_10000D9FC(v24, v27, &v53);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2050;
    v29 = *(v52 + 16);

    *(v22 + 24) = v29;
    v9 = v25;

    _os_log_impl(&_mh_execute_header, v18, v19, "Locating cloud channel for location: %{private,mask.hash}s in %{public}ld regions", v22, 0x20u);
    sub_100006994(v23);

    (*(v43 + 8))(v16, v42);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    (*(v8 + 8))(v12, v51);
    (*(v14 + 8))(v16, v13);
  }

  sub_100005360();
  v30 = static OS_dispatch_queue.notifications.getter();
  v31 = v44;
  v32 = v51;
  v48(v44, v50, v51);
  v33 = v47;
  v34 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v35 = swift_allocObject();
  v36 = *(v33 + 32);
  v36(v35 + v34, v31, v32);
  v47 = firstly<A, B>(on:disposeOn:closure:)();

  v37 = static OS_dispatch_queue.notifications.getter();
  v48(v31, v50, v32);
  v38 = (v34 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  v36(v39 + v34, v31, v32);
  *(v39 + v38) = v52;

  sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  v40 = Promise.then<A>(on:closure:)();

  return v40;
}

uint64_t sub_10000455C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Location();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v59 = &v52[-v16];
  __chkstk_darwin(v15);
  v55 = &v52[-v18];
  v56 = a1[1];
  if (v56)
  {
    v19 = *(a3 + 16);
    if (v19)
    {
      v54 = *a1;
      v20 = a3 + 32;
      v21 = (v11 + 8);
      *&v17 = 141558275;
      v53 = v17;
      v57 = v21;
      do
      {
        sub_100006930(v20, v65);
        sub_1000032B8(v65, v66);
        v22 = dispatch thunk of CloudChannelRegionType.channel.getter();
        if (v23)
        {
          v24 = v22;
          v25 = v23;
          sub_1000032B8(v65, v66);
          v26 = dispatch thunk of CloudChannelRegionType.country.getter();
          if (v27)
          {
            v62 = v26;
            v63 = v27;
            v60 = v54;
            v61 = v56;
            sub_1000069E0();
            v28 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (!v28)
            {
              v62 = v24;
              v63 = v25;
              sub_100003020(&qword_1000A34B8, &qword_1000804C8);
              swift_allocObject();
              v50 = Promise.init(value:)();
              sub_100006994(v65);
              return v50;
            }
          }

          v29 = v59;
          static Logger.notifications.getter();
          sub_100006930(v65, &v62);
          v30 = Logger.logObject.getter();
          v31 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v67 = v58;
            *v32 = v53;
            *(v32 + 4) = 1752392040;
            *(v32 + 12) = 2081;
            sub_1000032B8(&v62, v64);
            v60 = dispatch thunk of CloudChannelRegionType.country.getter();
            v61 = v33;
            sub_100003020(&qword_1000A34E0, &qword_1000804E8);
            v34 = String.init<A>(describing:)();
            v36 = v35;
            sub_100006994(&v62);
            v37 = sub_10000D9FC(v34, v36, &v67);
            v21 = v57;

            *(v32 + 14) = v37;
            _os_log_impl(&_mh_execute_header, v30, v31, "Ignoring channel region due to mismatching country: %{private,mask.hash}s", v32, 0x16u);
            sub_100006994(v58);

            (*v21)(v59, v10);
          }

          else
          {

            (*v21)(v29, v10);
            sub_100006994(&v62);
          }
        }

        else
        {
          v38 = v55;
          static Logger.notifications.getter();
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 0;
            _os_log_impl(&_mh_execute_header, v39, v40, "Channel region is missing channel identifier", v41, 2u);
            v21 = v57;
          }

          (*v21)(v38, v10);
        }

        sub_100006994(v65);
        v20 += 40;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    static Logger.notifications.getter();
    (*(v7 + 16))(v9, a2, v6);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v59 = v10;
      v45 = v44;
      v58 = swift_slowAlloc();
      v65[0] = v58;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      LODWORD(v57) = v43;
      v46 = Location.id.getter();
      v48 = v47;
      (*(v7 + 8))(v9, v6);
      v49 = sub_10000D9FC(v46, v48, v65);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v42, v57, "Failed to resolve country code for location: %{private,mask.hash}s", v45, 0x16u);
      sub_100006994(v58);

      (*(v11 + 8))(v14, v59);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v11 + 8))(v14, v10);
    }
  }

  v65[0] = 0;
  v65[1] = 0;
  sub_100003020(&qword_1000A34B8, &qword_1000804C8);
  swift_allocObject();
  return Promise.init(value:)();
}

Swift::Int sub_100004C74(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100004CD8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100004D2C()
{

  sub_100006994((v0 + 24));
  sub_100006994((v0 + 64));
  return v0;
}

uint64_t sub_100004D5C()
{
  sub_100004D2C();

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_100004DB4(uint64_t a1)
{
  v49 = *v1;
  v50 = v1;
  v3 = type metadata accessor for Location();
  sub_100006FBC();
  v5 = v4;
  v7 = __chkstk_darwin(v6);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v8;
  __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = type metadata accessor for Logger();
  sub_100006FBC();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v51 = v5;
  v52 = v3;
  v17 = *(v5 + 16);
  v53 = a1;
  v54 = v17;
  v48 = v5 + 16;
  v17(v10, a1, v3);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v56 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    v22 = Location.id.getter();
    v23 = v11;
    v25 = v24;
    (*(v51 + 8))(v10, v52);
    v26 = sub_10000D9FC(v22, v25, &v56);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Requested cloud channel for location: %{private,mask.hash}s", v20, 0x16u);
    sub_100006994(v21);

    (*(v13 + 8))(v16, v23);
  }

  else
  {

    (*(v51 + 8))(v10, v52);
    (*(v13 + 8))(v16, v11);
  }

  v46 = sub_100005360();
  v27 = static OS_dispatch_queue.notifications.getter();
  type metadata accessor for NotificationConfiguration();
  firstly<A, B>(on:disposeOn:closure:)();

  v28 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A34A0, &qword_1000804B8);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v29 = v47;
  v31 = v52;
  v30 = v53;
  v54(v47, v53, v52);
  v32 = v51;
  v33 = sub_100007034(&unk_10009B098);
  v51 = *(v32 + 32);
  v34 = sub_100007008(v33);
  v35(v34);
  v36 = zalgo.getter();
  sub_100006CD0(&qword_1000A34A8, &qword_1000A34A0, &qword_1000804B8, &protocol conformance descriptor for [A]);
  v45 = Promise<A>.compactMap<A>(on:closure:)();

  v37 = static OS_dispatch_queue.notifications.getter();
  v54(v29, v30, v31);
  v38 = sub_100007034(&unk_10009B0C0);
  v39 = sub_100007008(v38);
  (v51)(v39);
  v46 = sub_100003020(&qword_1000A34B0, &qword_1000804C0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v54(v29, v53, v31);
  v40 = sub_100007034(&unk_10009B0E8);
  v41 = sub_100007008(v40);
  (v51)(v41);
  v42 = zalgo.getter();
  v43 = Promise.then<A>(on:closure:)();

  return v43;
}

unint64_t sub_100005360()
{
  result = qword_1000A5B70;
  if (!qword_1000A5B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A5B70);
  }

  return result;
}

NSObject *sub_1000053D0()
{
  v0 = sub_100003020(&qword_1000A3540, &unk_100080520);
  __chkstk_darwin(v0 - 8);
  v2 = &v44 - v1;
  v49 = sub_100003020(&qword_1000A3548, &qword_100080FC0);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v44 - v3;
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = __chkstk_darwin(v8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  NotificationConfiguration.cloudChannelsConfiguration.getter();
  if (!v19)
  {
    static Logger.notifications.getter();
    v23 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v23, v26, "App configuration is missing cloud channels configuration", v27, 2u);
    }

    (*(v50 + 8))(v18, v51);
    goto LABEL_9;
  }

  static String.Encoding.utf8.getter();
  v20 = String.data(using:allowLossyConversion:)();
  v22 = v21;

  (*(v5 + 8))(v7, v4);
  if (v22 >> 60 == 15)
  {
    static Logger.notifications.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to encode the cloud channels configuration to JSON", v25, 2u);
    }

    (*(v50 + 8))(v16, v51);
LABEL_9:
    sub_100006B80();
    swift_allocError();
    *v28 = 0;
    swift_willThrow();
    return v23;
  }

  v29 = v22;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100006CD0(&qword_1000A3558, &qword_1000A3548, &qword_100080FC0, &protocol conformance descriptor for GeoJSON<A>);
  v30 = v48;
  v31 = v49;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v30)
  {

    sub_100006BD4(v2, 1, 1, v31);
    sub_100006BFC(v2);
    static Logger.notifications.getter();
    v23 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v23, v32, "Failed to decode the cloud channels configuration to GeoJSON", v33, 2u);
    }

    (*(v50 + 8))(v13, v51);
    sub_100006B80();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    sub_100006C64(v20, v29);
  }

  else
  {
    v48 = v20;

    sub_100006BD4(v2, 0, 1, v31);
    v37 = v46;
    v36 = v47;
    (*(v47 + 32))(v46, v2, v31);
    v38 = GeoJSON<>.assets.getter();
    if (v38)
    {
      v39 = sub_100005B0C(v38);

      v52 = v39;
      sub_100003020(&qword_1000A3560, &qword_100080530);
      swift_allocObject();
      v23 = Promise.init(value:)();
      sub_100006C64(v48, v29);
      (*(v36 + 8))(v37, v31);
    }

    else
    {
      v40 = v45;
      static Logger.notifications.getter();
      v23 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v23, v41, "Cloud channels configuration did not provide any assets", v42, 2u);
      }

      (*(v50 + 8))(v40, v51);
      sub_100006B80();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();
      sub_100006C64(v48, v29);
      (*(v36 + 8))(v37, v31);
    }
  }

  return v23;
}

unint64_t *sub_100005B0C(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3568, &qword_100080538);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - v4;
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_100014538(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v17 = *(v9 + 56);
    do
    {
      v8(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_100014538((v12 > 1), v13 + 1, 1);
        v7 = v21;
      }

      v19 = v2;
      v20 = sub_100006CD0(&qword_1000A3570, &qword_1000A3568, &qword_100080538, &protocol conformance descriptor for <> GeoJSON<A>.Feature);
      v14 = sub_100006D18(&v18);
      v8(v14, v5, v2);
      v7[2] = v13 + 1;
      sub_100006D78(&v18, &v7[5 * v13 + 4]);
      (*(v9 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_100005D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v27 = type metadata accessor for Logger();
  v4 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  sub_1000032B8(a1, a1[3]);
  v10 = dispatch thunk of CloudChannelMapAssetType.identifier.getter();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v26 = v2;
    sub_1000032B8(a1, a1[3]);
    if (dispatch thunk of CloudChannelMapAssetType.boundingBox.getter())
    {
      Location.coordinate.getter();
      v14 = Array<A>.contains(_:)();

      if (v14)
      {
        v16 = v28;
        *v28 = v12;
        v16[1] = v13;
      }

      else
      {

        v25 = v28;
        *v28 = 0;
        v25[1] = 0;
      }
    }

    else
    {

      static Logger.notifications.getter();
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "CloudChannelMapAsset is missing bounding box", v23, 2u);
      }

      result = (*(v4 + 8))(v7, v27);
      v24 = v28;
      *v28 = 0;
      v24[1] = 0;
    }
  }

  else
  {
    static Logger.notifications.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Unusable CloudChannelMapAsset due to invalid identifier", v19, 2u);
    }

    result = (*(v4 + 8))(v9, v27);
    v20 = v28;
    *v28 = 0;
    v20[1] = 0;
  }

  return result;
}

uint64_t sub_100005FE0()
{
  v0 = sub_100006FD0();
  sub_100006FF0(v0);
  sub_100006FAC();
  v1 = sub_100006FFC();
  return sub_100005D08(v1, v2);
}

uint64_t sub_100006068(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v37[-v10];
  v12 = type metadata accessor for Logger();
  v41 = *(v12 - 8);
  v42 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v37[-v16];
  v18 = *a1;
  v19 = a1[1];
  v44 = v18;
  if (v19)
  {
    static Logger.notifications.getter();
    (*(v6 + 16))(v11, a2, v5);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38 = v21;
      v23 = v22;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v23 = 136446723;
      *(v23 + 4) = sub_10000D9FC(v44, v19, v43);
      *(v23 + 12) = 2160;
      *(v23 + 14) = 1752392040;
      *(v23 + 22) = 2081;
      v24 = Location.id.getter();
      v40 = v2;
      v26 = v25;
      (*(v6 + 8))(v11, v5);
      v27 = sub_10000D9FC(v24, v26, v43);

      *(v23 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v20, v38, "Found channel %{public}s for location %{private,mask.hash}s", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v6 + 8))(v11, v5);
    }

    (*(v41 + 8))(v17, v42);
  }

  else
  {
    static Logger.notifications.getter();
    (*(v6 + 16))(v9, a2, v5);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v40 = v2;
      v31 = v30;
      v39 = swift_slowAlloc();
      v43[0] = v39;
      *v31 = 141558275;
      *(v31 + 4) = 1752392040;
      *(v31 + 12) = 2081;
      v38 = v29;
      v32 = Location.id.getter();
      v34 = v33;
      (*(v6 + 8))(v9, v5);
      v35 = sub_10000D9FC(v32, v34, v43);

      *(v31 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v28, v38, "Failed to find channel for location: %{private,mask.hash}s", v31, 0x16u);
      sub_100006994(v39);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v41 + 8))(v15, v42);
  }

  v43[0] = v44;
  v43[1] = v19;
  sub_100003020(&qword_1000A34B8, &qword_1000804C8);
  swift_allocObject();

  return Promise.init(value:)();
}

uint64_t sub_100006550()
{
  v0 = sub_100007018();
  sub_100006FF0(v0);
  sub_100006FAC();
  v1 = sub_100006FFC();
  return sub_100006068(v1, v2);
}

uint64_t sub_1000065A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000065F4()
{
  v1 = type metadata accessor for Location();
  sub_100006FBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000066AC()
{
  v0 = sub_100006FD0();
  sub_100006FF0(v0);
  v1 = sub_100006FFC();
  return sub_100003AB4(v1, v2, v3, v4);
}

uint64_t sub_100006740(void *a1, uint64_t a2, uint64_t (*a3)(unint64_t, void))
{
  v6 = type metadata accessor for Location();
  sub_100006FF0(v6);
  return a3(v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), *a1);
}

uint64_t sub_1000067C8()
{
  v0 = sub_100007018();
  sub_100006FF0(v0);
  sub_100006FAC();
  v1 = sub_100006FFC();
  return sub_100004504(v1, v2);
}

uint64_t sub_100006818()
{
  type metadata accessor for Location();
  sub_100007050();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1000068A8()
{
  sub_100007018();
  v0 = sub_100006FFC();
  return sub_10000455C(v0, v1, v2);
}

uint64_t sub_100006930(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100006994(void *a1)
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

unint64_t sub_1000069E0()
{
  result = qword_1000A34E8;
  if (!qword_1000A34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A34E8);
  }

  return result;
}

uint64_t sub_100006A34()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006A88()
{
  type metadata accessor for Location();
  sub_100007050();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t (*sub_100006B04())(__int128 *)
{
  v0 = sub_100006FD0();
  sub_100006FF0(v0);
  sub_100006FAC();
  v1 = sub_100006FFC();
  return sub_100003D2C(v1, v2, v3);
}

unint64_t sub_100006B80()
{
  result = qword_1000A3550;
  if (!qword_1000A3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3550);
  }

  return result;
}

uint64_t sub_100006BFC(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3540, &unk_100080520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006C64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006C78(a1, a2);
  }

  return a1;
}

uint64_t sub_100006C78(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100006CD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000325C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100006D18(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100006D78(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t getEnumTagSinglePayload for CloudChannelMapProvider.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudChannelMapProvider.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100006EF0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100006F44()
{
  result = qword_1000A3578;
  if (!qword_1000A3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3578);
  }

  return result;
}

uint64_t sub_100006FD0()
{

  return type metadata accessor for Location();
}

uint64_t sub_100007018()
{

  return type metadata accessor for Location();
}

uint64_t sub_100007034(uint64_t a1)
{

  return swift_allocObject();
}

void sub_100007064(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v21[1] = [v8 identifier];
  *a2 = dispatch thunk of CustomStringConvertible.description.getter();
  *(a2 + 1) = v9;
  v10 = [v8 timestamp];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = type metadata accessor for APSMessage(0);
  (*(v5 + 32))(&a2[v12[5]], v7, v4);
  v13 = sub_100007260(v8);
  if (!v13)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *&a2[v12[6]] = v13;
  v14 = [v8 channelID];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = &a2[v12[7]];
    *v19 = v16;
    *(v19 + 1) = v18;
  }

  else
  {

    v20 = &a2[v12[7]];
    *v20 = 0;
    *(v20 + 1) = 0;
  }
}

uint64_t type metadata accessor for APSMessage(uint64_t a1)
{
  result = qword_1000A35D8;
  if (!qword_1000A35D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007260(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000072EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 20);

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_1000073B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 20);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100007430(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000074DC();
    if (v2 <= 0x3F)
    {
      sub_100007540();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000074DC()
{
  if (!qword_1000A35E8)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A35E8);
    }
  }
}

void sub_100007540()
{
  if (!qword_1000A35F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A35F0);
    }
  }
}

uint64_t sub_1000075A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_100007374(a1, a2, v4);
}

uint64_t sub_100007600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();

  return sub_100006BD4(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PredictedLocationsRefresh(uint64_t a1)
{
  result = qword_1000A3680;
  if (!qword_1000A3680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100007698(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000770C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1000077EC(char a1)
{
  if (a1)
  {
    return 0x7265506563617267;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_10000782C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000770C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100007874@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000077D8();
  *a1 = result;
  return result;
}

uint64_t sub_10000789C(uint64_t a1)
{
  v2 = sub_100007DD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000078D8(uint64_t a1)
{
  v2 = sub_100007DD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100007914(void *a1)
{
  v3 = sub_100003020(&qword_1000A36D0, &qword_100080678);
  sub_100006FBC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000032B8(a1, a1[3]);
  sub_100007DD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  type metadata accessor for Date();
  sub_100007EE4(&qword_1000A36D8, &protocol conformance descriptor for Date);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PredictedLocationsRefresh(0);
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_100007AAC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v26 = type metadata accessor for Date();
  sub_100006FBC();
  v24 = v4;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100003020(&qword_1000A36B8, &qword_100080670);
  sub_100006FBC();
  v25 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for PredictedLocationsRefresh(0);
  __chkstk_darwin(v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100007DD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006994(a1);
  }

  v22 = v12;
  v13 = v24;
  v29 = 0;
  sub_100007EE4(&qword_1000A36C8, &protocol conformance descriptor for Date);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v22;
  (*(v13 + 32))(v22, v7, v14);
  v28 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  v18 = sub_100008134();
  v19(v18);
  *(v15 + *(v10 + 20)) = v17;
  sub_100007E24(v15, v23);
  sub_100006994(a1);
  return sub_100007E88(v15);
}

unint64_t sub_100007DD0()
{
  result = qword_1000A36C0;
  if (!qword_1000A36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36C0);
  }

  return result;
}

uint64_t sub_100007E24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PredictedLocationsRefresh(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007E88(uint64_t a1)
{
  v2 = type metadata accessor for PredictedLocationsRefresh(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007EE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsRefresh.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100007FF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100008030()
{
  result = qword_1000A36E0;
  if (!qword_1000A36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36E0);
  }

  return result;
}

unint64_t sub_100008088()
{
  result = qword_1000A36E8;
  if (!qword_1000A36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36E8);
  }

  return result;
}

unint64_t sub_1000080E0()
{
  result = qword_1000A36F0;
  if (!qword_1000A36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A36F0);
  }

  return result;
}

uint64_t sub_100008148()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 192))
  {
    v6 = *(v0 + 192);
  }

  else
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    v6 = JSONEncoder.init()();
    (*(v3 + 104))(v5, enum case for JSONEncoder.DateEncodingStrategy.secondsSince1970(_:), v2);
    dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
    *(v1 + 192) = v6;
  }

  return v6;
}

uint64_t sub_100008270()
{
  v1 = v0;
  v2 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 200))
  {
    v6 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v6 = JSONDecoder.init()();
    (*(v3 + 104))(v5, enum case for JSONDecoder.DateDecodingStrategy.secondsSince1970(_:), v2);
    dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
    *(v1 + 200) = v6;
  }

  return v6;
}

void *sub_100008398(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v6[24] = 0;
  v6[25] = 0;
  v6[2] = a1;
  sub_100006D78(a2, (v6 + 3));
  v6[8] = a3;
  sub_100006D78(a4, (v6 + 9));
  sub_100006D78(a5, (v6 + 14));
  sub_100006D78(a6, (v6 + 19));
  return v6;
}

uint64_t sub_100008418(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v50 = a2;
  HourForecast = type metadata accessor for NextHourForecast();
  v52 = *(HourForecast - 8);
  __chkstk_darwin(HourForecast);
  v49 = v6;
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationSubscription();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v47 = v10;
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v42 - v11;
  v13 = type metadata accessor for Logger();
  v45 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v53 = v8;
  v54 = v7;
  v46 = *(v8 + 16);
  v46(v12, a1, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v44 = v3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v42 = v13;
    v43 = HourForecast;
    v21 = a1;
    v22 = v20;
    v55 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v23 = NotificationSubscription.identifier.getter();
    v25 = v24;
    (*(v53 + 8))(v12, v54);
    v26 = sub_10000D9FC(v23, v25, &v55);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Validating accuracy for subscription: %{private,mask.hash}s", v19, 0x16u);
    sub_100006994(v22);
    a1 = v21;
    HourForecast = v43;

    v3 = v44;

    v27 = (*(v45 + 8))(v15, v42);
  }

  else
  {

    (*(v53 + 8))(v12, v54);
    v27 = (*(v45 + 8))(v15, v13);
  }

  __chkstk_darwin(v27);
  v28 = v3;
  *(&v42 - 2) = v3;
  *(&v42 - 1) = a1;
  type metadata accessor for PrecipitationNotificationConfiguration();
  v45 = firstly<A>(closure:)();
  sub_100005360();
  v44 = static OS_dispatch_queue.notifications.getter();
  v29 = v48;
  v30 = a1;
  v31 = v54;
  v46(v48, v30, v54);
  v33 = v51;
  v32 = v52;
  v34 = HourForecast;
  (*(v52 + 16))(v51, v50, HourForecast);
  v35 = v53;
  v36 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v37 = (v47 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v28;
  (*(v35 + 32))(v38 + v36, v29, v31);
  (*(v32 + 32))(v38 + v37, v33, v34);

  v39 = v44;
  v40 = Promise.then<A>(on:closure:)();

  return v40;
}

uint64_t sub_100008978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v168 = a4;
  v181 = a3;
  v169 = a1;
  v156 = type metadata accessor for PrecipitationNotificationType();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for NotificationSubscription();
  v152 = *(v153 - 8);
  v8 = __chkstk_darwin(v153);
  v149 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v148 = &v140 - v10;
  v11 = type metadata accessor for Logger();
  v183 = *(v11 - 8);
  v184 = v11;
  v12 = __chkstk_darwin(v11);
  v185 = &v140 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v151 = &v140 - v15;
  __chkstk_darwin(v14);
  v150 = &v140 - v16;
  v159 = type metadata accessor for PrecipitationType();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v140 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  v19 = __chkstk_darwin(v18 - 8);
  v160 = &v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v166 = &v140 - v21;
  v22 = type metadata accessor for ForecastSummary();
  v170 = *(v22 - 8);
  v171 = v22;
  v23 = __chkstk_darwin(v22);
  v161 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v167 = &v140 - v25;
  v163 = type metadata accessor for Date();
  __chkstk_darwin(v163);
  v164 = &v140 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100003020(&qword_1000A3800, &unk_100080860);
  __chkstk_darwin(v27 - 8);
  v162 = &v140 - v28;
  v165 = type metadata accessor for PrecipitationForecastSummaries(0);
  v29 = __chkstk_darwin(v165);
  v173 = &v140 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v174 = &v140 - v31;
  HourForecast = type metadata accessor for NextHourForecast();
  v172 = *(HourForecast - 8);
  __chkstk_darwin(HourForecast);
  v176 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100003020(&qword_1000A3808, &qword_100080F70);
  __chkstk_darwin(v33 - 8);
  v179 = (&v140 - v34);
  v35 = type metadata accessor for Expression();
  v180 = *(v35 - 8);
  __chkstk_darwin(v35);
  v178 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100003020(&qword_1000A3810, &qword_100080870);
  __chkstk_darwin(v37 - 8);
  v177 = &v140 - v38;
  ResultEntity = type metadata accessor for FetchResultEntity();
  v40 = *(ResultEntity - 8);
  __chkstk_darwin(ResultEntity);
  v42 = &v140 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = *(a2 + 16);
  ReferenceCountedLazy.increase()();
  v45 = v186;
  NotificationStore.fetchResults.getter();
  if (v4)
  {
    v46 = v185;
    v47 = v45;
    goto LABEL_4;
  }

  v147 = v35;
  v145 = v42;
  v143 = v40;
  v144 = ResultEntity;
  v142 = v43;
  v182 = v45;
  v146 = v44;
  dispatch thunk of Table.query.getter();

  v48 = NotificationSubscription.identifier.getter();
  v188 = &type metadata for String;
  v189 = &protocol witness table for String;
  v186 = v48;
  v187 = v49;
  v50 = v178;
  == infix(_:_:)();
  sub_100006994(&v186);
  v51 = v179;
  *v179 = 0x64657461657263;
  *(v51 + 8) = 0xE700000000000000;
  v52 = enum case for OrderBy.descending(_:);
  v53 = type metadata accessor for OrderBy();
  (*(*(v53 - 8) + 104))(v51, v52, v53);
  sub_100006BD4(v51, 0, 1, v53);
  v54 = v177;
  dispatch thunk of Query.first(_:orderBy:)();
  v141 = 0;

  sub_10000E904(v51, &qword_1000A3808, &qword_100080F70);
  (*(v180 + 8))(v50, v147);
  v65 = v144;
  if (sub_100007374(v54, 1, v144) == 1)
  {
    sub_10000E904(v54, &qword_1000A3810, &qword_100080870);
    sub_100003020(&qword_1000A37D0, &qword_100080838);
    swift_allocObject();
    v63 = Promise.init(value:)();
    goto LABEL_8;
  }

  v66 = v143;
  (*(v143 + 32))(v145, v54, v65);
  sub_100008270();
  FetchResultEntity.forecast.getter();
  dispatch thunk of Column.value.getter();

  v67 = v187;
  v68 = v141;
  if (v187 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v69 = v186;
    sub_10000E8BC(&qword_1000A3818, &type metadata accessor for NextHourForecast, &protocol conformance descriptor for NextHourForecast);
    v70 = v68;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v71 = v174;
    if (v70)
    {
      (*(v66 + 8))(v145, v65);
      sub_100006C64(v69, v67);

      v5 = v70;
      v46 = v185;
      v47 = v182;
LABEL_4:
      static Logger.notifications.getter();
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v182 = v47;
        v58 = v57;
        v59 = swift_slowAlloc();
        v186 = v59;
        *v58 = 136446210;
        v190 = v5;
        swift_errorRetain();
        sub_100003020(&qword_1000A37F0, &unk_100080850);
        v60 = String.init<A>(describing:)();
        v62 = sub_10000D9FC(v60, v61, &v186);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v55, v56, "An error occurred while validating accuracy: %{public}s", v58, 0xCu);
        sub_100006994(v59);

        (*(v183 + 8))(v185, v184);
      }

      else
      {

        (*(v183 + 8))(v46, v184);
      }

      goto LABEL_7;
    }

    v72 = v173;

    sub_100006C64(v69, v67);
    FetchResultEntity.created.getter();
    v73 = v162;
    dispatch thunk of Column.value.getter();

    result = sub_100007374(v73, 1, v163);
    if (result != 1)
    {
      Hour = NextHourForecast.summary.getter();
      sub_10006AA5C(v73, Hour, v71);
      v75 = v164;
      PrecipitationNotificationConfiguration.now.getter();
      v76 = NextHourForecast.summary.getter();
      sub_10006AA5C(v75, v76, v72);
      v77 = v165;
      v78 = v71 + *(v165 + 20);
      v79 = v166;
      sub_10000E244(v78, v166);
      v80 = v171;
      v81 = sub_100007374(v79, 1, v171);
      v82 = v172;
      v83 = v170;
      if (v81 == 1)
      {
        v84 = v143;
LABEL_19:
        sub_10000E904(v79, &qword_1000A37F8, &unk_100082A40);
        sub_100003020(&qword_1000A37D0, &qword_100080838);
        swift_allocObject();
        v63 = Promise.init(value:)();
        sub_10000E2B4(v173);
        sub_10000E2B4(v174);
        (*(v84 + 8))(v145, v65);
        (*(v82 + 8))(v176, HourForecast);
        goto LABEL_8;
      }

      v85 = *(v170 + 32);
      v86 = v167;
      v85(v167, v79, v80);
      v79 = v160;
      sub_10000E244(v72 + *(v77 + 20), v160);
      if (sub_100007374(v79, 1, v80) == 1)
      {
        (*(v83 + 8))(v86, v80);
        v65 = v144;
        v84 = v143;
        v82 = v172;
        goto LABEL_19;
      }

      v85(v161, v79, v80);
      FetchResultEntity.notification.getter();
      dispatch thunk of Column.value.getter();

      v87 = v187;
      if (v187 != 1)
      {
        sub_10000E344(v186, v187);
      }

      v88 = v157;
      ForecastSummary.condition.getter();
      LODWORD(v185) = PrecipitationType.isClear.getter();
      v89 = *(v158 + 8);
      v90 = v159;
      v89(v88, v159);
      ForecastSummary.condition.getter();
      LODWORD(v180) = PrecipitationType.isClear.getter();
      v89(v88, v90);
      v91 = ForecastSummary.meetsNotificationThresholds(with:)();
      v92 = ForecastSummary.meetsNotificationThresholds(with:)();
      v93 = v174;
      if (v185)
      {
        v94 = v181;
        v95 = v144;
        v96 = HourForecast;
        if (v87 == 1 && ((v180 | v92 ^ 1) & 1) == 0)
        {
          v97 = v150;
          static Logger.notifications.getter();
          v98 = v152;
          v99 = v148;
          v100 = v153;
          (*(v152 + 16))(v148, v94, v153);
          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = v98;
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v186 = v105;
            *v104 = 141558275;
            *(v104 + 4) = 1752392040;
            *(v104 + 12) = 2081;
            v106 = NotificationSubscription.identifier.getter();
            v107 = v99;
            v109 = v108;
            (*(v103 + 8))(v107, v100);
            v110 = sub_10000D9FC(v106, v109, &v186);

            *(v104 + 14) = v110;
            _os_log_impl(&_mh_execute_header, v101, v102, "Detected missing starting notification for subscription: %{private,mask.hash}s", v104, 0x16u);
            sub_100006994(v105);

            (*(v183 + 8))(v150, v184);
          }

          else
          {

            (*(v98 + 8))(v99, v100);
            (*(v183 + 8))(v97, v184);
          }

          v128 = v156;
          v129 = v155;
          v130 = v154;
          v131 = (*(v155 + 104))(v154, enum case for PrecipitationNotificationType.starting(_:), v156);
          __chkstk_darwin(v131);
          v132 = v181;
          *(&v140 - 6) = v142;
          *(&v140 - 5) = v132;
          v133 = v176;
          v134 = v168;
          *(&v140 - 4) = v176;
          *(&v140 - 3) = v134;
          *(&v140 - 2) = v130;
          sub_100003020(&qword_1000A37D0, &qword_100080838);
          swift_allocObject();
LABEL_36:
          v63 = Promise.init(resolver:)();
          v138 = v171;
          v139 = *(v170 + 8);
          v139(v161, v171);
          v139(v167, v138);
          sub_10000E2B4(v173);
          sub_10000E2B4(v174);
          (*(v143 + 8))(v145, v144);
          (*(v129 + 8))(v130, v128);
          (*(v172 + 8))(v133, HourForecast);
          goto LABEL_8;
        }
      }

      else
      {
        v111 = v181;
        v95 = v144;
        v96 = HourForecast;
        if (v87 == 1 && (v91 & v180 & 1) != 0)
        {
          v112 = v151;
          static Logger.notifications.getter();
          v113 = v152;
          v114 = v149;
          v115 = v153;
          (*(v152 + 16))(v149, v111, v153);
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = v113;
            v119 = swift_slowAlloc();
            v120 = swift_slowAlloc();
            v186 = v120;
            *v119 = 141558275;
            *(v119 + 4) = 1752392040;
            *(v119 + 12) = 2081;
            v121 = NotificationSubscription.identifier.getter();
            v122 = v114;
            v124 = v123;
            (*(v118 + 8))(v122, v115);
            v125 = sub_10000D9FC(v121, v124, &v186);

            *(v119 + 14) = v125;
            _os_log_impl(&_mh_execute_header, v116, v117, "Detected missing stopping notification for subscription: %{private,mask.hash}s ", v119, 0x16u);
            sub_100006994(v120);

            (*(v183 + 8))(v151, v184);
          }

          else
          {

            (*(v113 + 8))(v114, v115);
            (*(v183 + 8))(v112, v184);
          }

          v128 = v156;
          v129 = v155;
          v130 = v154;
          v135 = (*(v155 + 104))(v154, enum case for PrecipitationNotificationType.stopping(_:), v156);
          __chkstk_darwin(v135);
          v136 = v181;
          *(&v140 - 6) = v142;
          *(&v140 - 5) = v136;
          v133 = v176;
          v137 = v168;
          *(&v140 - 4) = v176;
          *(&v140 - 3) = v137;
          *(&v140 - 2) = v130;
          sub_100003020(&qword_1000A37D0, &qword_100080838);
          swift_allocObject();
          goto LABEL_36;
        }
      }

      v126 = v171;
      v127 = *(v170 + 8);
      v127(v161, v171);
      v127(v167, v126);
      sub_10000E2B4(v173);
      sub_10000E2B4(v93);
      (*(v143 + 8))(v145, v95);
      (*(v172 + 8))(v176, v96);
LABEL_7:
      sub_100003020(&qword_1000A37D0, &qword_100080838);
      swift_allocObject();
      v63 = Promise.init(value:)();
LABEL_8:
      ReferenceCountedLazy.decrease()();

      return v63;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100009F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a7;
  v65 = a8;
  v63 = a6;
  v52 = a5;
  v66 = a9;
  v12 = type metadata accessor for PrecipitationNotificationType();
  v69 = *(v12 - 8);
  v70 = v12;
  v67 = *(v69 + 64);
  __chkstk_darwin(v12);
  v74 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  HourForecast = type metadata accessor for NextHourForecast();
  v60 = *(HourForecast - 8);
  v61 = HourForecast;
  v62 = *(v60 + 64);
  v15 = __chkstk_darwin(HourForecast);
  v73 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v71 = &v51 - v17;
  v18 = type metadata accessor for NotificationSubscription();
  v56 = *(v18 - 8);
  v57 = v18;
  v59 = *(v56 + 64);
  __chkstk_darwin(v18);
  v68 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Date();
  v75 = *(v72 - 8);
  __chkstk_darwin(v72);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Session.Kind();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v58 = v30;
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  v31 = *(a5 + 64);
  (*(v27 + 104))(v29, enum case for Session.Kind.telemetry(_:), v26);

  UUID.init()();
  UUID.uuidString.getter();
  (*(v23 + 8))(v25, v22);
  Date.init()();
  v54 = v21;
  v53 = v31;
  SessionManager.start(for:identifier:startDate:)();

  v32 = *(v75 + 8);
  v75 += 8;
  v55 = v32;
  v32(v21, v72);
  (*(v27 + 8))(v29, v26);
  v51 = SessionManager.tracker.getter();
  v33 = v56;
  v34 = v57;
  (*(v56 + 16))(v68, v63, v57);
  v36 = v60;
  v35 = v61;
  v37 = *(v60 + 16);
  v37(v71, v64, v61);
  v37(v73, v65, v35);
  v38 = v69;
  (*(v69 + 16))(v74, v66, v70);
  v39 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v40 = (v59 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = *(v36 + 80);
  v42 = (v41 + v40 + 8) & ~v41;
  v43 = (v62 + v41 + v42) & ~v41;
  v44 = (v62 + *(v38 + 80) + v43) & ~*(v38 + 80);
  v45 = swift_allocObject();
  (*(v33 + 32))(v45 + v39, v68, v34);
  *(v45 + v40) = v52;
  v46 = *(v36 + 32);
  v46(v45 + v42, v71, v35);
  v46(v45 + v43, v73, v35);
  (*(v69 + 32))(v45 + v44, v74, v70);

  Tracker.transaction(block:)();

  v47 = swift_allocObject();
  v48 = v58;
  *(v47 + 16) = sub_10000E358;
  *(v47 + 24) = v48;
  v49 = v54;
  Date.init()();
  SessionManager.end(endDate:completion:)();

  return v55(v49, v72);
}

uint64_t sub_10000A610(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int64_t a5, uint64_t a6)
{
  v184 = a6;
  v201 = a5;
  v210 = a4;
  v208 = a3;
  v190 = a1;
  v170 = type metadata accessor for NotificationSubscription();
  v169 = *(v170 - 8);
  __chkstk_darwin(v170);
  v166 = v7;
  v167 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003020(&qword_1000A3820, &qword_100080878);
  __chkstk_darwin(v8 - 8);
  v156 = v150 - v9;
  v10 = sub_100003020(&qword_1000A3828, &qword_100080880);
  __chkstk_darwin(v10 - 8);
  v187 = v150 - v11;
  v12 = sub_100003020(&qword_1000A3830, &qword_100080888);
  __chkstk_darwin(v12 - 8);
  v186 = v150 - v13;
  v14 = sub_100003020(&qword_1000A3838, &qword_100080890);
  __chkstk_darwin(v14 - 8);
  v161 = v150 - v15;
  v175 = type metadata accessor for Locale.Language();
  v174 = *(v175 - 8);
  v16 = __chkstk_darwin(v175);
  v155 = v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v172 = v150 - v18;
  v189 = type metadata accessor for Locale();
  v173 = *(v189 - 8);
  v19 = __chkstk_darwin(v189);
  v160 = v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = v150 - v21;
  v22 = sub_100003020(&qword_1000A3840, &qword_100080898);
  __chkstk_darwin(v22 - 8);
  v158 = v150 - v23;
  v182 = type metadata accessor for TimeZone();
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = v150 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for SessionData();
  v165 = *(v188 - 8);
  __chkstk_darwin(v188);
  v164 = v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for PrecipitationNotificationType();
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v183 = v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for MissedPrecipitationNotificationData();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v191 = v150 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Date();
  v200 = *(v196 - 8);
  __chkstk_darwin(v196);
  v199 = v150 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for Metadata();
  v185 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for PrecipitationForecastData();
  v193 = *(v194 - 8);
  v30 = __chkstk_darwin(v194);
  v177 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v176 = v150 - v33;
  v34 = __chkstk_darwin(v32);
  v192 = v150 - v35;
  __chkstk_darwin(v34);
  v195 = v150 - v36;
  v37 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v37 - 8);
  v202 = v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for LocationData();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v211 = v150 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for AppConfiguration();
  v212 = *(v207 - 8);
  v40 = __chkstk_darwin(v207);
  v159 = v150 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = v150 - v42;
  v209 = type metadata accessor for Location();
  v205 = *(v209 - 8);
  __chkstk_darwin(v209);
  v45 = v150 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for NotificationSubscription.Location();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = v150 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for LocationCoordinate();
  v51 = *(v50 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = v150 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v56 = (v150 - v55);
  v168 = a2;
  NotificationSubscription.location.getter();
  NotificationSubscription.Location.location.getter();
  (*(v47 + 8))(v49, v46);
  Location.coordinate.getter();
  v205[1](v45, v209);
  LocationCoordinate.init(_:)();
  sub_1000032B8(v208 + 14, v208[17]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.locationDecimalPrecision.getter();
  v57 = *(v212 + 8);
  v154 = v43;
  v212 += 8;
  v171 = v57;
  v57(v43, v207);
  LocationCoordinate.rounded(with:)();
  v58 = *(v51 + 8);
  v209 = v50;
  v203 = v58;
  v58(v54, v50);
  LocationCoordinate.latitude.getter();
  v205 = v56;
  LocationCoordinate.longitude.getter();
  LocationData.init(latitudeDouble:longitudeDouble:)();
  sub_100008148();
  *&v213[0] = NextHourForecast.summary.getter();
  sub_100003020(&qword_1000A3848, &qword_1000808A0);
  sub_10000E71C();
  v59 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v66 = v65;
  v67 = v59;

  static String.Encoding.utf8.getter();
  v68 = String.init(data:encoding:)();
  if (!v69)
  {
    sub_100006C78(v67, v66);
    v75 = v211;
    v76 = v209;
    if (qword_1000A3250 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_100002FE8(v60, static Logger.analytics);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "Failed to encode previous forecast summaries for missed notification event", v63, 2u);
    }

    (*(v204 + 8))(v75, v206);
    return v203(v205, v76);
  }

  v150[1] = v68;
  v153 = v69;
  v151 = v67;
  v152 = v66;

  *&v213[0] = NextHourForecast.summary.getter();
  v77 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v79 = v78;
  v150[0] = v51 + 8;

  static String.Encoding.utf8.getter();
  String.init(data:encoding:)();
  v81 = v209;
  if (!v80)
  {

    sub_100006C78(v77, v79);
    v70 = v211;
    if (qword_1000A3250 != -1)
    {
      swift_once();
    }

    v71 = type metadata accessor for Logger();
    sub_100002FE8(v71, static Logger.analytics);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Failed to encode current forecast summaries for missed notification event", v74, 2u);
    }

    sub_100006C78(v151, v152);

    (*(v204 + 8))(v70, v206);
    return v203(v205, v81);
  }

  v202 = v77;
  v82 = v197;
  NextHourForecast.metadata.getter();
  v83 = v199;
  Metadata.readTime.getter();
  v84 = *(v185 + 8);
  v84(v82, v198);
  Date.timeIntervalSince1970.getter();
  v86 = v85;
  v87 = v85;
  v88 = *(v200 + 8);
  v89 = v83;
  v90 = v196;
  v200 += 8;
  v91 = v88;
  result = v88(v89, v196);
  if ((*&v87 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  v92 = v195;
  if (v86 <= -2147483650.0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v86 >= 2147483650.0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  PrecipitationForecastData.init(date:summaries:)();
  v93 = v197;
  NextHourForecast.metadata.getter();
  v94 = v199;
  Metadata.readTime.getter();
  v84(v93, v198);
  Date.timeIntervalSince1970.getter();
  v96 = v95;
  v97 = v95;
  result = v91(v94, v90);
  if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v98 = v194;
  v99 = v193;
  v100 = v192;
  v101 = v184;
  v102 = v183;
  if (v96 <= -2147483650.0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v96 >= 2147483650.0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v210 = v79;
  PrecipitationForecastData.init(date:summaries:)();
  (*(v178 + 16))(v102, v101, v179);
  v103 = *(v99 + 16);
  v103(v176, v92, v98);
  v103(v177, v100, v98);
  MissedPrecipitationNotificationData.init(notificationType:currentPrecipitationForecastData:previousPrecipitationForecastData:)();
  v104 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  v105 = v180;
  static TimeZone.current.getter();
  v106 = v199;
  Date.init()();
  v107 = TimeZone.secondsFromGMT(for:)();
  v91(v106, v196);
  result = (*(v181 + 8))(v105, v182);
  if (v107 < 0xFFFFFFFF80000000)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v201 = v107;
  v108 = v107 <= 0x7FFFFFFF;
  v109 = v175;
  v110 = v174;
  v111 = v189;
  v112 = v173;
  v113 = v172;
  v114 = v171;
  if (!v108)
  {
    goto LABEL_43;
  }

  v115 = v157;
  static Locale.current.getter();
  Locale.language.getter();
  v116 = *(v112 + 8);
  v116(v115, v111);
  v117 = v158;
  Locale.Language.languageCode.getter();
  v118 = *(v110 + 8);
  v118(v113, v109);
  v119 = type metadata accessor for Locale.LanguageCode();
  if (sub_100007374(v117, 1, v119) == 1)
  {
    sub_10000E904(v117, &qword_1000A3840, &qword_100080898);
    v199 = 45;
    v200 = 0xE100000000000000;
  }

  else
  {
    v199 = Locale.LanguageCode.identifier.getter();
    v200 = v120;
    (*(*(v119 - 8) + 8))(v117, v119);
  }

  v121 = v155;
  v122 = v154;
  v123 = v160;
  static Locale.current.getter();
  Locale.language.getter();
  v116(v123, v189);
  v124 = v161;
  Locale.Language.region.getter();
  v118(v121, v109);
  v125 = type metadata accessor for Locale.Region();
  if (sub_100007374(v124, 1, v125) == 1)
  {
    sub_10000E904(v124, &qword_1000A3838, &qword_100080890);
    v198 = 0xE100000000000000;
    v197 = 45;
  }

  else
  {
    v197 = Locale.Region.identifier.getter();
    v198 = v126;
    (*(*(v125 - 8) + 8))(v124, v125);
  }

  v127 = v208;
  if (v104)
  {
    v128 = enum case for StartMethod.unknown(_:);
    started = type metadata accessor for StartMethod();
    v130 = v186;
    (*(*(started - 8) + 104))(v186, v128, started);
    sub_100006BD4(v130, 0, 1, started);
    sub_1000032B8(v127 + 9, v127[12]);
    v131 = v187;
    dispatch thunk of LocationAccessDataProviderType.locationAccessData.getter();
    v132 = type metadata accessor for LocationAccessData();
    sub_100006BD4(v131, 0, 1, v132);
    sub_1000032B8(v127 + 19, v127[22]);
    v133 = v156;
    dispatch thunk of CellularRadioAccessTechnologyProviderType.cellularRadioAccessTechnology.getter();
    v134 = 0;
  }

  else
  {
    v135 = type metadata accessor for StartMethod();
    v134 = 1;
    sub_100006BD4(v186, 1, 1, v135);
    v136 = type metadata accessor for LocationAccessData();
    sub_100006BD4(v187, 1, 1, v136);
    v133 = v156;
  }

  v137 = type metadata accessor for CellularRadioAccessTechnology();
  sub_100006BD4(v133, v134, 1, v137);
  sub_1000032B8(v127 + 14, v127[17]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.treatmentIDs.getter();
  v138 = v207;
  v114(v122, v207);
  sub_1000032B8(v127 + 14, v127[17]);
  v139 = v159;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.segmentSetIDs.getter();
  v114(v139, v138);
  v140 = v164;
  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  sub_10000E8BC(&qword_1000A3860, &type metadata accessor for SessionData, &protocol conformance descriptor for SessionData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_10000E8BC(&qword_1000A3868, &type metadata accessor for LocationData, &protocol conformance descriptor for LocationData);
  AccessTracker.push<A>(data:traits:file:line:)();
  sub_10000E8BC(&qword_1000A3870, &type metadata accessor for MissedPrecipitationNotificationData, &protocol conformance descriptor for MissedPrecipitationNotificationData);
  v141 = v191;
  v142 = v163;
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for PrecipitationNotificationMissedEvent();
  memset(v213, 0, sizeof(v213));
  v143 = v169;
  v144 = v167;
  v145 = v170;
  (*(v169 + 16))(v167, v168, v170);
  v146 = (*(v143 + 80) + 16) & ~*(v143 + 80);
  v147 = swift_allocObject();
  (*(v143 + 32))(v147 + v146, v144, v145);
  sub_10000E8BC(&qword_1000A3878, &type metadata accessor for PrecipitationNotificationMissedEvent, &protocol conformance descriptor for PrecipitationNotificationMissedEvent);
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  sub_100006C78(v151, v152);
  sub_100006C78(v202, v210);

  sub_10000E904(v213, &unk_1000A3880, &qword_1000808A8);
  (*(v165 + 8))(v140, v188);
  (*(v162 + 8))(v141, v142);
  v148 = *(v193 + 8);
  v149 = v194;
  v148(v192, v194);
  v148(v195, v149);
  (*(v204 + 8))(v211, v206);
  return v203(v205, v209);
}

void sub_10000C0A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NotificationSubscription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000A3250 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002FE8(v7, static Logger.analytics);
  (*(v4 + 16))(v6, a2, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 141558275;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v12 = NotificationSubscription.identifier.getter();
    v14 = v13;
    (*(v4 + 8))(v6, v3);
    v15 = sub_10000D9FC(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finished missed notification event submit for subscription: %{private,mask.hash}s", v10, 0x16u);
    sub_100006994(v11);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

void *sub_10000C2F0()
{

  sub_100006994(v0 + 3);

  sub_100006994(v0 + 9);
  sub_100006994(v0 + 14);
  sub_100006994(v0 + 19);

  return v0;
}

uint64_t sub_10000C348()
{
  sub_10000C2F0();

  return _swift_deallocClassInstance(v0, 208, 7);
}

uint64_t sub_10000C3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v129 = a3;
  v120 = a2;
  type metadata accessor for NextHourForecast();
  sub_100006FBC();
  v122 = v5;
  v123 = v4;
  __chkstk_darwin(v4);
  v121 = v6;
  v130 = v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Logger();
  sub_100006FBC();
  v117 = v8;
  v118 = v7;
  __chkstk_darwin(v7);
  sub_10000E970();
  v124 = v10 - v9;
  type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_100006FBC();
  v133 = v12;
  v134 = v11;
  __chkstk_darwin(v11);
  sub_10000E980();
  v115 = v13;
  v119 = v14;
  __chkstk_darwin(v15);
  v132 = v106 - v16;
  v111 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  sub_100006FBC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_10000E970();
  v22 = v21 - v20;
  v23 = type metadata accessor for PrecipitationNotification();
  sub_100006FBC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_10000E970();
  v29 = v28 - v27;
  v30 = type metadata accessor for PrecipitationNotificationPolicy();
  sub_100006FBC();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_10000E970();
  v36 = v35 - v34;
  type metadata accessor for NotificationSubscription();
  sub_100006FBC();
  v127 = v38;
  v128 = v37;
  __chkstk_darwin(v37);
  sub_10000E980();
  v126 = v39;
  v41 = __chkstk_darwin(v40);
  v114 = v106 - v42;
  v116 = v43;
  __chkstk_darwin(v41);
  v45 = v106 - v44;
  (*(v32 + 16))(v36, a1, v30);
  v46 = sub_10000E994();
  v48 = v47(v46);
  if (v48 == enum case for PrecipitationNotificationPolicy.notify(_:))
  {
    v49 = sub_10000E994();
    v50(v49);
    v51 = sub_100003020(&qword_1000A37D8, &qword_100080840);
    v52 = *(v51 + 48);
    v53 = (v36 + *(v51 + 64));
    (*(v25 + 32))(v29, v36, v23);
    v54 = v111;
    (*(v18 + 32))(v22, v36 + v52, v111);
    PrecipitationNotificationDeliverySchedule.subscription.getter();
    v113 = PrecipitationNotification.identifier.getter();
    v112 = v55;
    (*(v18 + 8))(v22, v54);
    (*(v25 + 8))(v29, v23);
    v56 = v134;
  }

  else
  {
    if (v48 != enum case for PrecipitationNotificationPolicy.reschedule(_:))
    {
      sub_100003020(&qword_1000A37D0, &qword_100080838);
      swift_allocObject();
      v102 = Promise.init(value:)();
      v103 = sub_10000E994();
      v104(v103);
      return v102;
    }

    v57 = sub_10000E994();
    v58(v57);
    v53 = v132;
    v56 = v134;
    (*(v133 + 32))(v132, v36, v134);
    PrecipitationNotificationFetchSchedule.subscription.getter();
    v113 = 0;
    v112 = 0;
  }

  v59 = v133;
  v107 = *(v133 + 8);
  v107(v53, v56);
  v60 = v124;
  static Logger.notifications.getter();
  v62 = v127;
  v61 = v128;
  v63 = *(v127 + 16);
  v64 = v114;
  v125 = v45;
  v110 = v127 + 16;
  v109 = v63;
  v63(v114, v45, v128);
  v66 = *(v59 + 16);
  v65 = v59 + 16;
  v67 = v115;
  v108 = v66;
  v66(v115, v129, v56);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = v62;
    v71 = swift_slowAlloc();
    v106[0] = swift_slowAlloc();
    v135[0] = v106[0];
    *v71 = 141558531;
    *(v71 + 4) = 1752392040;
    *(v71 + 12) = 2081;
    v72 = NotificationSubscription.identifier.getter();
    v106[1] = v65;
    v73 = v67;
    v75 = v74;
    v76 = *(v70 + 8);
    v111 = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114 = v76;
    (v76)(v64, v61);
    v77 = sub_10000D9FC(v72, v75, v135);

    *(v71 + 14) = v77;
    *(v71 + 22) = 2082;
    v78 = PrecipitationNotificationFetchSchedule.identifier.getter();
    v79 = v61;
    v81 = v80;
    v82 = v134;
    v107(v73, v134);
    v83 = sub_10000D9FC(v78, v81, v135);

    *(v71 + 24) = v83;
    _os_log_impl(&_mh_execute_header, v68, v69, "Tracking fetch result for subscription %{private,mask.hash}s on schedule %{public}s", v71, 0x20u);
    swift_arrayDestroy();

    v84 = (*(v117 + 8))(v124, v118);
  }

  else
  {

    v107(v67, v56);
    v85 = *(v62 + 8);
    v111 = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v114 = v85;
    (v85)(v64, v61);
    v84 = (*(v117 + 8))(v60, v118);
    v82 = v56;
    v79 = v61;
  }

  __chkstk_darwin(v84);
  v86 = v125;
  v106[-4] = v131;
  v106[-3] = v86;
  v87 = v120;
  v106[-2] = v120;
  v124 = firstly<A>(closure:)();
  sub_100005360();
  v118 = static OS_dispatch_queue.notifications.getter();
  v89 = v122;
  v88 = v123;
  (*(v122 + 16))(v130, v87, v123);
  v109(v126, v86, v79);
  v108(v132, v129, v82);
  v90 = (*(v89 + 80) + 24) & ~*(v89 + 80);
  v91 = v127;
  v92 = (v121 + *(v127 + 80) + v90) & ~*(v127 + 80);
  v93 = v133;
  v94 = (v116 + *(v133 + 80) + v92) & ~*(v133 + 80);
  v95 = (v119 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = swift_allocObject();
  v97 = v130;
  *(v96 + 16) = v131;
  (*(v89 + 32))(v96 + v90, v97, v88);
  v98 = v128;
  (*(v91 + 32))(v96 + v92, v126, v128);
  (*(v93 + 32))(v96 + v94, v132, v134);
  v99 = (v96 + v95);
  v100 = v112;
  *v99 = v113;
  v99[1] = v100;

  v101 = v118;
  v102 = Promise.then<A>(on:closure:)();

  (v114)(v125, v98);
  return v102;
}

uint64_t sub_10000CE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7)
{
  v66 = a3;
  v60 = a6;
  v61 = a7;
  v59 = a5;
  v72 = a4;
  v8 = type metadata accessor for NotificationSubscription();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v64 = *(v10 - 8);
  v65 = v10;
  __chkstk_darwin(v10);
  v71 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Expression();
  v56 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v57 = *(v15 - 8);
  v58 = v15;
  __chkstk_darwin(v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResultEntity = type metadata accessor for FetchResultEntity();
  v62 = *(ResultEntity - 8);
  __chkstk_darwin(ResultEntity);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  ReferenceCountedLazy.increase()();
  v22 = v73[0];
  sub_100008148();
  type metadata accessor for NextHourForecast();
  sub_10000E8BC(&qword_1000A37E8, &type metadata accessor for NextHourForecast, &protocol conformance descriptor for NextHourForecast);
  v23 = v67;
  v24 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v22;
  if (v23)
  {

    v67 = 0;
    v26 = v71;
    v31 = v69;
    v30 = v70;
    v32 = v68;
    static Logger.notifications.getter();
    (*(v31 + 16))(v32, v72, v30);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v66 = v21;
      v36 = v35;
      v73[0] = swift_slowAlloc();
      *v36 = 141558531;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      v37 = NotificationSubscription.identifier.getter();
      v38 = v31;
      v40 = v39;
      (*(v38 + 8))(v32, v30);
      v41 = sub_10000D9FC(v37, v40, v73);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2082;
      v73[7] = v23;
      swift_errorRetain();
      sub_100003020(&qword_1000A37F0, &unk_100080850);
      v42 = String.init<A>(describing:)();
      v44 = sub_10000D9FC(v42, v43, v73);

      *(v36 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "An error occurred while tracking fetch results for subscription: %{private,mask.hash}s error: %{public}s", v36, 0x20u);
      swift_arrayDestroy();

      (*(v64 + 8))(v71, v65);
    }

    else
    {

      (*(v31 + 8))(v32, v30);
      (*(v64 + 8))(v26, v65);
    }
  }

  else
  {
    v52 = v14;
    v53 = v12;
    v66 = v21;
    v67 = ResultEntity;
    v27 = v24;
    v28 = v25;

    v55 = NotificationSubscription.identifier.getter();
    v54 = v29;
    v59 = PrecipitationNotificationFetchSchedule.identifier.getter();
    sub_10000DFCC(v27, v28);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v57 + 8))(v17, v58);

    FetchResultEntity.init(identifier:subscriptionIdentifier:scheduleIdentifier:notificationIdentifier:forecast:)();
    NotificationStore.fetchResults.getter();
    v59 = v27;
    v60 = v28;
    v61 = v20;
    dispatch thunk of Table.delete.getter();

    v47 = NotificationSubscription.identifier.getter();
    v73[3] = &type metadata for String;
    v73[4] = &protocol witness table for String;
    v73[0] = v47;
    v73[1] = v48;
    v49 = v52;
    == infix(_:_:)();
    sub_100006994(v73);
    dispatch thunk of Delete.where(_:)();
    (*(v56 + 8))(v49, v53);

    NotificationStore.fetchResults.getter();
    v50 = dispatch thunk of Table.save.getter();

    v58 = v50;
    dispatch thunk of Save.entity(_:)();
    (*(v62 + 8))(v61, v67);
    sub_100006C78(v59, v60);
  }

  sub_100003020(&qword_1000A37D0, &qword_100080838);
  swift_allocObject();
  v45 = Promise.init(value:)();
  ReferenceCountedLazy.decrease()();

  return v45;
}

uint64_t sub_10000D6E4()
{
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC();
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);
  v23 = type metadata accessor for NotificationSubscription();
  sub_100006FBC();
  v8 = v7;
  v9 = *(v7 + 80);
  v10 = (v4 + v6 + v9) & ~v9;
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_100006FBC();
  v15 = v14;
  v17 = v16;
  v18 = *(v15 + 80);
  v19 = (v10 + v12 + v18) & ~v18;
  v20 = v3 | v9 | v18;
  v21 = (*(v17 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, HourForecast);
  (*(v8 + 8))(v0 + v10, v23);
  (*(v15 + 8))(v0 + v19, Schedule);

  return _swift_deallocObject(v0, v21 + 16, v20 | 7);
}

uint64_t sub_10000D8AC(uint64_t a1)
{
  HourForecast = type metadata accessor for NextHourForecast();
  sub_10000E960(HourForecast);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  sub_10000E960(Schedule);
  v15 = v14;
  v17 = v16;
  v18 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  v19 = v1 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_10000CE08(a1, *(v1 + 16), v1 + v5, v1 + v10, v1 + v18, *v19, *(v19 + 8));
}

unint64_t sub_10000D9FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000DAC0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000DF6C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100006994(v11);
  return v7;
}

unint64_t sub_10000DAC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000DBC0(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000DBC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000DC0C(a1, a2);
  sub_10000DD24(&off_10009AD48);
  return v3;
}

char *sub_10000DC0C(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000DE08(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10000DD24(uint64_t result)
{
  v2 = *(result + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_10000DE78(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10000DE08(uint64_t a1, uint64_t a2)
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

  sub_100003020(&qword_1000A37E0, &qword_100080848);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_10000DE78(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003020(&qword_1000A37E0, &qword_100080848);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10000DF6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DFCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_10000E040()
{
  v1 = type metadata accessor for NotificationSubscription();
  sub_100006FBC();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, HourForecast);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_10000E178(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(type metadata accessor for NextHourForecast() - 8);
  return sub_100008978(a1, *(v1 + 16), v1 + v5, v1 + ((v5 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t sub_10000E244(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A37F8, &unk_100082A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E2B4(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationForecastSummaries(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E344(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10000E380()
{
  type metadata accessor for NotificationSubscription();
  sub_100006FBC();
  v2 = v1;
  v3 = *(v1 + 80);
  v26 = (v3 + 16) & ~v3;
  v27 = v4;
  v6 = (*(v5 + 64) + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_100006FBC();
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 8) & ~v10;
  v13 = *(v12 + 64);
  v14 = (v13 + v10 + v11) & ~v10;
  v25 = type metadata accessor for PrecipitationNotificationType();
  sub_100006FBC();
  v16 = v15;
  v18 = v17;
  v19 = *(v16 + 80);
  v20 = (v14 + v13 + v19) & ~v19;
  v24 = *(v18 + 64);
  v21 = v3 | v10 | v19;
  (*(v2 + 8))(v0 + v26, v27);

  v22 = *(v9 + 8);
  v22(v0 + v11, HourForecast);
  v22(v0 + v14, HourForecast);
  (*(v16 + 8))(v0 + v20, v25);

  return _swift_deallocObject(v0, v20 + v24, v21 | 7);
}

uint64_t sub_10000E56C(uint64_t a1)
{
  v3 = type metadata accessor for NotificationSubscription();
  sub_10000E960(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  HourForecast = type metadata accessor for NextHourForecast();
  sub_10000E960(HourForecast);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = (v15 + v13 + v14) & ~v13;
  v17 = *(type metadata accessor for PrecipitationNotificationType() - 8);
  v18 = *(v1 + v7);
  v19 = v1 + ((v16 + v15 + *(v17 + 80)) & ~*(v17 + 80));

  return sub_10000A610(a1, v1 + v5, v18, v1 + v14, v1 + v16, v19);
}

uint64_t sub_10000E6BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10000E71C()
{
  result = qword_1000A3850;
  if (!qword_1000A3850)
  {
    sub_10000325C(&qword_1000A3848, &qword_1000808A0);
    sub_10000E8BC(&qword_1000A3858, &type metadata accessor for ForecastSummary, &protocol conformance descriptor for ForecastSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3850);
  }

  return result;
}

uint64_t sub_10000E7D0()
{
  type metadata accessor for NotificationSubscription();
  sub_100007050();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10000E84C(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationSubscription() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10000C0A8(a1, v4);
}

uint64_t sub_10000E8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000E904(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003020(a2, a3);
  sub_100007050();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_10000E9A0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationsManager] = a1;
  sub_100006930(a2, &v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager]);
  *&v4[OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationCenter] = a3;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  swift_unknownObjectRetain();
  v9 = a3;
  v10 = objc_msgSendSuper2(&v12, "init");
  [v9 setPrivateDelegate:{v10, v12.receiver, v12.super_class}];
  [v9 setWantsNotificationResponsesDelivered];
  swift_unknownObjectRelease();

  sub_100006994(a2);
  return v10;
}

id NotificationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000EB84(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100003020(&unk_1000A3930, &qword_100080900);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v12 = a2;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = [v12 authorizationStatus];

    _os_log_impl(&_mh_execute_header, v13, v14, "Notification settings changed with authorization status: %{public}ld", v15, 0xCu);
    sub_10000FA7C(v15);
  }

  else
  {

    v13 = v12;
  }

  (*(v9 + 8))(v11, v8);
  v16 = type metadata accessor for TaskPriority();
  sub_100006BD4(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v3;
  v18 = v3;
  sub_10006C7F8();
}

uint64_t sub_10000EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v5 = type metadata accessor for Logger();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = sub_100003020(&qword_1000A3800, &unk_100080860);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_10000EEE0, 0, 0);
}

uint64_t sub_10000EEE0()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_notificationsManager);
  v2 = v0[26];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_10000F008;
  v3 = swift_continuation_init();
  v0[17] = sub_100003020(&unk_1000A3940, &unk_100080920);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000F544;
  v0[13] = &unk_10009B450;
  v0[14] = v3;
  [v1 scheduleWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000F008()
{
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  return _swift_task_switch(sub_10000F0E0, 0, 0);
}

uint64_t sub_10000F0E0()
{
  v32 = v0;
  v1 = v0[27];
  v2 = v0[25];
  sub_10000F924(v0[26], v1);
  static Logger.notifications.getter();
  sub_10000F994(v1, v2);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[24];
    v30 = v0[22];
    v9 = v0[19];
    v8 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136446210;
    sub_10000F994(v6, v7);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_10000FA04(v6);
    v15 = sub_10000D9FC(v12, v14, &v31);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Rescheduled notification fetching in response to settings change to date: %{public}s", v10, 0xCu);
    sub_100006994(v11);
    sub_10000FA7C(v11);
    sub_10000FA7C(v10);

    v16 = *(v8 + 8);
    v16(v30, v9);
  }

  else
  {
    v17 = v0[22];
    v18 = v0[19];
    v19 = v0[20];

    sub_10000FA04(v6);
    v16 = *(v19 + 8);
    v16(v17, v18);
  }

  static Logger.predictedLocationNotifications.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Will rescheduled predicted location notifications in response to settings change", v22, 2u);
    sub_10000FA7C(v22);
  }

  v23 = v0[21];
  v25 = v0[18];
  v24 = v0[19];

  v16(v23, v24);
  v26 = *(v25 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager + 24);
  v27 = *(v25 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager + 32);
  sub_1000032B8((v25 + OBJC_IVAR____TtC8weatherd32NotificationAuthorizationManager_predictedLocationsNotificationsManager), v26);
  v28 = swift_task_alloc();
  v0[28] = v28;
  *v28 = v0;
  v28[1] = sub_10000F3A4;

  return dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()(v26, v27);
}

uint64_t sub_10000F3A4()
{
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  return _swift_task_switch(sub_10000F498, 0, 0);
}

uint64_t sub_10000F498()
{
  sub_10000FA04(*(v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10000F544(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *sub_1000032B8((a1 + 32), *(a1 + 56));
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    v12 = 0;
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = 1;
  }

  sub_100006BD4(v7, v12, 1, v11);
  sub_10000F924(v7, v9);
  return sub_10000F64C(v10, v9);
}

uint64_t sub_10000F64C(uint64_t a1, uint64_t a2)
{
  sub_10000F924(a2, *(*(a1 + 64) + 40));

  return _swift_continuation_resume(a1);
}

uint64_t sub_10000F718()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F80C;

  return sub_10000EDB4(a1, v4, v5, v6);
}

uint64_t sub_10000F80C()
{
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_10000F924(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F994(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FA04(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3800, &unk_100080860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FA7C(uint64_t a1)
{
}

uint64_t sub_10000FA94()
{
  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A48, &qword_100080980);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A60, &qword_100080998);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A68, &unk_1000809A0);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  sub_100012A9C();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  RegistrationContainer.lazy(block:)();
}

void *sub_10000FC88(void *a1)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A58, &qword_100080990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v5[3])
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3A60, &qword_100080998);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v4[3])
    {
      v3 = objc_allocWithZone(type metadata accessor for PredictedLocationsService(0));
      return sub_100078664(v5, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000FD60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A78, &qword_1000809B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v23)
  {
    sub_1000032B8(a1, a1[3]);
    sub_100003020(&qword_1000A3B50, &qword_100080A58);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v21)
    {
      v5 = sub_1000123F0(v22, v23);
      __chkstk_darwin(v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for PredictedLocationsProvider();
      v19[3] = v10;
      v19[4] = &off_10009BE48;
      v19[0] = v9;
      v11 = type metadata accessor for PredictedLocationsManager();
      v12 = swift_allocObject();
      v13 = sub_1000123F0(v19, v10);
      __chkstk_darwin(v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[5] = v10;
      v12[6] = &off_10009BE48;
      v12[2] = v17;
      sub_100006D78(&v20, (v12 + 7));
      sub_100006994(v19);
      result = sub_100006994(v22);
      a2[3] = v11;
      a2[4] = &off_10009BD10;
      *a2 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10000FFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v104)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v102[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B20, &unk_100082540);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v73 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B28, &qword_100080A40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v101)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B30, &qword_100080A48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v99)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B38, &qword_100080A50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v72 = v96;
  if (!v96)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v71 = v97;
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AE0, &qword_100080A18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v95)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A70, &unk_100082230);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v93)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A88, &qword_1000809C0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v91)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v69 = v9;
  v70 = a2;
  (*(v5 + 104))(v7, enum case for PredictedLocationsScheduleStore.Feature.notifications(_:), v4);
  v10 = type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  v11 = PredictedLocationsScheduleStore.init(feature:)();
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v89[3])
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v12 = sub_1000123F0(v100, v101);
  v68 = &v58;
  __chkstk_darwin(v12);
  v14 = (&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = sub_1000123F0(v98, v99);
  v67 = &v58;
  __chkstk_darwin(v16);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_1000123F0(v92, v93);
  v66 = &v58;
  __chkstk_darwin(v20);
  v22 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  v24 = sub_1000123F0(v90, v91);
  v65 = &v58;
  __chkstk_darwin(v24);
  v26 = (&v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v14;
  v29 = *v18;
  v30 = *v22;
  v31 = *v26;
  v32 = type metadata accessor for SevereNotificationContentFactory();
  v88[3] = v32;
  v88[4] = &off_10009B530;
  v88[0] = v28;
  v59 = type metadata accessor for SevereNotificationScheduler();
  v86 = v59;
  v87 = &off_10009BB58;
  v85[0] = v29;
  v58 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
  v83 = v58;
  v84 = &off_10009C408;
  v82[0] = v30;
  v33 = type metadata accessor for PredictedLocationsNotificationScheduler();
  v80 = v33;
  v81 = &off_10009C2E0;
  v79[0] = v31;
  v78[3] = v10;
  v78[4] = &protocol witness table for PredictedLocationsScheduleStore;
  v78[0] = v11;
  v64 = type metadata accessor for PredictedLocationsNotificationsManager();
  v34 = swift_allocObject();
  v35 = sub_1000123F0(v88, v32);
  v63 = &v58;
  __chkstk_darwin(v35);
  v37 = (&v58 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = sub_1000123F0(v85, v86);
  v62 = &v58;
  __chkstk_darwin(v39);
  v41 = (&v58 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = sub_1000123F0(v82, v83);
  v61 = &v58;
  __chkstk_darwin(v43);
  v45 = (&v58 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45);
  v47 = sub_1000123F0(v79, v80);
  v60 = &v58;
  __chkstk_darwin(v47);
  v49 = (&v58 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v37;
  v52 = *v41;
  v53 = *v45;
  v54 = *v49;
  v77[3] = v32;
  v77[4] = &off_10009B530;
  v77[0] = v51;
  v76[4] = &off_10009BB58;
  v76[3] = v59;
  v76[0] = v52;
  v75[3] = v58;
  v75[4] = &off_10009C408;
  v75[0] = v53;
  v74[3] = v33;
  v74[4] = &off_10009C2E0;
  v74[0] = v54;
  *(v34 + 416) = 0;
  *(v34 + 424) = 0;

  sub_100006930(v103, v34 + 16);
  sub_100006930(v102, v34 + 56);
  v55 = v73;
  *(v34 + 96) = v69;
  *(v34 + 104) = v55;
  sub_100006930(v77, v34 + 112);
  sub_100006930(v76, v34 + 152);
  v56 = v71;
  *(v34 + 192) = v72;
  *(v34 + 200) = v56;
  sub_100006930(v94, v34 + 208);
  sub_100006930(v75, v34 + 248);
  sub_100006930(v74, v34 + 288);
  sub_100006930(v78, v34 + 328);
  sub_100006930(v89, v34 + 368);
  sub_1000032B8(v103, v104);

  swift_unknownObjectRetain();
  *(v34 + 408) = dispatch thunk of LocationManagerType.authorizationState.getter();
  sub_1000032B8(v94, v95);
  if (dispatch thunk of PredictedLocationsAuthorizationManagerType.isFeatureAvailable()())
  {
    sub_1000032B8(v103, v104);
    sub_100012A54(&qword_1000A3B48, type metadata accessor for PredictedLocationsNotificationsManager, &unk_1000818C0);

    dispatch thunk of LocationManagerType.addObserver(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v57 = v70;

  sub_100006994(v89);
  sub_100006994(v102);
  sub_100006994(v78);
  sub_100006994(v74);
  sub_100006994(v75);
  sub_100006994(v76);
  sub_100006994(v77);
  sub_100006994(v94);
  sub_100006994(v103);
  sub_100006994(v79);
  sub_100006994(v82);
  sub_100006994(v85);
  sub_100006994(v88);
  sub_100006994(v90);
  sub_100006994(v92);
  sub_100006994(v98);
  sub_100006994(v100);
  v57[3] = v64;
  result = sub_100012A54(&qword_1000A3B40, type metadata accessor for PredictedLocationsNotificationsManager, &unk_1000819A0);
  v57[4] = result;
  *v57 = v34;
  return result;
}

uint64_t sub_100010CCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  v3 = type metadata accessor for PredictedLocationsIntentDonationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    a2[3] = v3;
    result = sub_100012A54(&qword_1000A3B18, type metadata accessor for PredictedLocationsIntentDonationManager, &unk_100082008);
    a2[4] = result;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010D74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  v3 = type metadata accessor for PredictedLocationsIntentDonationManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_10009BFE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100010DE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v21)
  {
    v5 = sub_1000123F0(v26, v27);
    __chkstk_darwin(v5);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7);
    v9 = *v7;
    v10 = type metadata accessor for PredictedLocationsManager();
    v19[3] = v10;
    v19[4] = &off_10009BD10;
    v19[0] = v9;
    v11 = type metadata accessor for PredictedLocationsNotificationLocationsProvider();
    v12 = swift_allocObject();
    v13 = sub_1000123F0(v19, v10);
    __chkstk_darwin(v13);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v15;
    v12[5] = v10;
    v12[6] = &off_10009BD10;
    v12[2] = v17;
    static Settings.LocationIntelligence.Debug.Notifications.enableLocIntelOverrides.getter();
    sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    swift_allocObject();
    v12[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.Notifications.minProbabilityThreshold.getter();
    sub_100003020(&qword_1000A3AD8, &qword_100080A10);
    swift_allocObject();
    v12[23] = SettingProperty.init(_:)();
    sub_100006D78(&v24, (v12 + 7));
    sub_100006D78(&v22, (v12 + 12));
    sub_100006D78(&v20, (v12 + 17));
    sub_100006994(v19);
    result = sub_100006994(v26);
    a2[3] = v11;
    a2[4] = &off_10009C408;
    *a2 = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100011194()
{
  sub_100003020(&qword_1000A3A78, &qword_1000809B0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A88, &qword_1000809C0);
  RegistrationContainer.register<A>(_:name:factory:)();

  type metadata accessor for PredictedLocationsIntentDonationManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A90, &qword_1000809C8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_100003020(&qword_1000A3A98, &unk_1000809D0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void *sub_100011334@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(RTRoutineManager) init];
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v9)
  {
    v6 = type metadata accessor for PredictedLocationsProvider();
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    result = sub_100006D78(&v8, v7 + 24);
    a2[3] = v6;
    a2[4] = &off_10009BE48;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100011410(uint64_t a1)
{
  v2 = type metadata accessor for LazyOptions();
  __chkstk_darwin(v2);
  sub_100006930(a1, v5);
  v3 = swift_allocObject();
  sub_100006D78(v5, v3 + 16);
  *&v5[0] = _swiftEmptyArrayStorage;
  sub_100012A54(&qword_1000A3AF0, &type metadata accessor for LazyOptions, &protocol conformance descriptor for LazyOptions);
  sub_100003020(&qword_1000A3AF8, &qword_100080A20);
  sub_1000129F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100003020(&qword_1000A3A80, &qword_1000809B8);
  swift_allocObject();
  return ReferenceCountedLazy.init(options:loadBlock:)();
}

void *sub_100011584@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B08, &qword_100080A28);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3B10, &unk_100080A30);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v9)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v7)
  {
    v5 = type metadata accessor for PredictedLocationsWeatherAlertService();
    swift_allocObject();
    result = sub_10003C8C8(&v10, &v8, &v6);
    a2[3] = v5;
    a2[4] = &off_10009BD48;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1000116D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v5 + 104))(v7, enum case for PredictedLocationsScheduleStore.Feature.notifications(_:), v4);
  v9 = type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  v10 = PredictedLocationsScheduleStore.init(feature:)();
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v11 = type metadata accessor for PredictedLocationsNotificationScheduler();
    v12 = swift_allocObject();
    v12[10] = v9;
    v12[11] = &protocol witness table for PredictedLocationsScheduleStore;
    v12[7] = v10;

    static Settings.LocationIntelligence.Debug.Notifications.enableLocIntelOverrides.getter();
    sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    swift_allocObject();
    v12[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.Notifications.refreshInterval.getter();
    sub_100003020(&qword_1000A3AC0, &qword_1000809F8);
    swift_allocObject();
    v13 = SettingProperty.init(_:)();

    v12[23] = v13;
    sub_100006D78(&v19, (v12 + 2));
    sub_100006D78(&v17, (v12 + 12));
    sub_100006D78(&v15, (v12 + 17));

    a2[3] = v11;
    a2[4] = &off_10009C2E0;
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1000119B4(void *a1)
{
  v2 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24[3])
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AE0, &qword_100080A18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A90, &qword_1000809C8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A98, &unk_1000809D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v3 + 104))(v5, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v2);
  type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  v7 = PredictedLocationsScheduleStore.init(feature:)();
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18[3])
  {
    v8 = sub_1000123F0(v21, v22);
    __chkstk_darwin(v8);
    v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v12 = sub_1000123F0(v19, v20);
    __chkstk_darwin(v12);
    v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = sub_100012440(v24, v23, *v10, *v14, v7, v18);

    sub_100006994(v19);
    sub_100006994(v21);
    return v16;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_100011DA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3A50, &qword_100080988);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  (*(v5 + 104))(v7, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v4);
  type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  v9 = PredictedLocationsScheduleStore.init(feature:)();
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AC8, &qword_100080A00);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AD0, &qword_100080A08);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v10 = sub_1000123F0(v21, v22);
    __chkstk_darwin(v10);
    v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = sub_100012798(*v12, v9, &v19, &v17, &v15);

    sub_100006994(v21);
    result = type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
    a2[3] = result;
    a2[4] = &off_10009BEF8;
    *a2 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_1000120C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PredictedLocationsScheduleStore.Feature();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA0, &qword_100082220);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v20)
  {
    __break(1u);
    goto LABEL_6;
  }

  (*(v5 + 104))(v7, enum case for PredictedLocationsScheduleStore.Feature.intentDonations(_:), v4);
  v9 = type metadata accessor for PredictedLocationsScheduleStore();
  swift_allocObject();
  v10 = PredictedLocationsScheduleStore.init(feature:)();
  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AA8, &unk_1000809E0);

  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000032B8(a1, a1[3]);
  sub_100003020(&qword_1000A3AB0, &qword_100082500);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v16)
  {
    v11 = type metadata accessor for PredictedLocationsIntentDonationScheduler();
    v12 = swift_allocObject();
    v12[10] = v9;
    v12[11] = &protocol witness table for PredictedLocationsScheduleStore;
    v12[7] = v10;

    static Settings.LocationIntelligence.Debug.IntentDonations.enableLocIntelOverrides.getter();
    sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
    swift_allocObject();
    v12[22] = SettingProperty.init(_:)();
    static Settings.LocationIntelligence.Debug.IntentDonations.refreshInterval.getter();
    sub_100003020(&qword_1000A3AC0, &qword_1000809F8);
    swift_allocObject();
    v13 = SettingProperty.init(_:)();

    v12[23] = v13;
    sub_100006D78(&v19, (v12 + 2));
    sub_100006D78(&v17, (v12 + 12));
    sub_100006D78(&v15, (v12 + 17));

    a2[3] = v11;
    a2[4] = &off_10009BD20;
    *a2 = v12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000123F0(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100012440(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
  v32[3] = v12;
  v32[4] = &off_10009BEF8;
  v32[0] = a3;
  v13 = type metadata accessor for PredictedLocationsIntentDonationScheduler();
  v30 = v13;
  v31 = &off_10009BD20;
  v29[0] = a4;
  v28[3] = type metadata accessor for PredictedLocationsScheduleStore();
  v28[4] = &protocol witness table for PredictedLocationsScheduleStore;
  v28[0] = a5;
  type metadata accessor for PredictedLocationsIntentDonationManager();
  v14 = swift_allocObject();
  v15 = sub_1000123F0(v32, v12);
  __chkstk_darwin(v15);
  v17 = (v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_1000123F0(v29, v30);
  __chkstk_darwin(v19);
  v21 = (v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v17;
  v24 = *v21;
  v27[3] = v12;
  v27[4] = &off_10009BEF8;
  v26[4] = &off_10009BD20;
  v27[0] = v23;
  v26[3] = v13;
  v26[0] = v24;
  sub_100006930(a1, v14 + 16);
  sub_100006930(a2, v14 + 56);
  sub_100006930(v27, v14 + 96);
  sub_100006930(v26, v14 + 136);
  sub_100006930(v28, v14 + 176);
  sub_100006930(a6, v14 + 216);
  sub_1000032B8(a1, a1[3]);
  *(v14 + 256) = dispatch thunk of LocationManagerType.authorizationState.getter();
  sub_1000032B8(a2, a2[3]);
  if (dispatch thunk of PredictedLocationsAuthorizationManagerType.isFeatureAvailable()())
  {
    sub_1000032B8(a1, a1[3]);
    sub_100012A54(&qword_1000A3AE8, type metadata accessor for PredictedLocationsIntentDonationManager, &unk_100081F58);

    dispatch thunk of LocationManagerType.addObserver(_:)();
  }

  sub_100006994(a6);
  sub_100006994(v28);
  sub_100006994(v26);
  sub_100006994(v27);
  sub_100006994(a2);
  sub_100006994(a1);
  sub_100006994(v29);
  sub_100006994(v32);
  return v14;
}

void *sub_100012798(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v10 = type metadata accessor for PredictedLocationsManager();
  v22[3] = v10;
  v22[4] = &off_10009BD10;
  v22[0] = a1;
  v20 = type metadata accessor for PredictedLocationsScheduleStore();
  v21 = &protocol witness table for PredictedLocationsScheduleStore;
  *&v19 = a2;
  type metadata accessor for PredictedLocationsIntentDonationLocationsProvider();
  v11 = swift_allocObject();
  v12 = sub_1000123F0(v22, v10);
  __chkstk_darwin(v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v11[5] = v10;
  v11[6] = &off_10009BD10;
  v11[2] = v16;
  type metadata accessor for AppGroup();
  static AppGroup.weather.getter();
  v17 = AppGroup.userDefaults.getter();

  v11[27] = v17;
  static Settings.LocationIntelligence.Debug.IntentDonations.enableLocIntelOverrides.getter();
  sub_100003020(&qword_1000A3AB8, &qword_1000809F0);
  swift_allocObject();
  v11[28] = SettingProperty.init(_:)();
  static Settings.LocationIntelligence.Debug.IntentDonations.minProbabilityThreshold.getter();
  sub_100003020(&qword_1000A3AD8, &qword_100080A10);
  swift_allocObject();
  v11[29] = SettingProperty.init(_:)();
  sub_100006D78(&v19, (v11 + 7));
  sub_100006D78(a3, (v11 + 12));
  sub_100006D78(a4, (v11 + 17));
  sub_100006D78(a5, (v11 + 22));
  sub_100006994(v22);
  return v11;
}

uint64_t sub_1000129B0()
{
  sub_100006994((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000129F0()
{
  result = qword_1000A3B00;
  if (!qword_1000A3B00)
  {
    sub_10000325C(&qword_1000A3AF8, &qword_100080A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3B00);
  }

  return result;
}

uint64_t sub_100012A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100012AB4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v131 = a6;
  v127 = a3;
  v126 = a1;
  type metadata accessor for Date();
  sub_100006FBC();
  v132 = v10;
  v133 = v11;
  __chkstk_darwin(v10);
  sub_100015754();
  v125 = v12 - v13;
  __chkstk_darwin(v14);
  v123 = &v118[-v15];
  type metadata accessor for Logger();
  sub_100006FBC();
  v134 = v17;
  *&v135 = v16;
  __chkstk_darwin(v16);
  sub_100015754();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v130 = &v118[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v118[-v25];
  __chkstk_darwin(v24);
  v28 = &v118[-v27];
  v29 = type metadata accessor for SevereMessage(0);
  __chkstk_darwin(v29);
  sub_100015754();
  v124 = (v30 - v31);
  __chkstk_darwin(v32);
  v34 = &v118[-v33];
  if (!a4)
  {

    static Logger.notifications.getter();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = v134;
      v42 = v29;
      v43 = v40;
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Attempted to parse APSMessage without channel identifier", v40, 2u);
      v44 = v43;
      v29 = v42;
      sub_10000FA7C(v44);

      v45 = sub_100015744();
      v46(v45);
      (*(v41 + 8))(v28, v135);
    }

    else
    {

      v87 = sub_100015744();
      v88(v87);
      (*(v134 + 8))(v28, v135);
    }

    v89 = 1;
    v35 = a7;
    goto LABEL_47;
  }

  v129 = a2;
  v136 = 0x6E6F6973726576;
  v137 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_100015764();
  sub_100014EB0(&v138);
  v128 = a7;
  if (!v143)
  {
    sub_100014F04(v142);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v122 = a4;
    v36 = 0;
    LODWORD(v37) = 1;
    goto LABEL_10;
  }

  v35 = a7;
  v36 = v136;
  if ((v136 - 1) > 1)
  {

    static Logger.notifications.getter();
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v142[0] = v95;
      *v94 = 136446210;
      v138 = v36;
      LOBYTE(v139) = 0;
      sub_100003020(&qword_1000A3BB8, &qword_100080AC8);
      v96 = String.init<A>(describing:)();
      v98 = sub_10000D9FC(v96, v97, v142);
      v99 = v134;
      v100 = v35;
      v101 = v98;

      *(v94 + 4) = v101;
      v35 = v100;
      _os_log_impl(&_mh_execute_header, v92, v93, "Attempted to parse APSMessage with unsupported version %{public}s", v94, 0xCu);
      sub_100006994(v95);
      sub_10000FA7C(v95);
      sub_10000FA7C(v94);

      v102 = sub_100015744();
      v103(v102);
      (*(v99 + 8))(v20, v135);
    }

    else
    {

      v116 = sub_100015744();
      v117(v116);
      (*(v134 + 8))(v20, v135);
    }

    goto LABEL_46;
  }

  v122 = a4;
  LODWORD(v37) = 0;
LABEL_10:
  static Logger.notifications.getter();
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v120 = v34;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v121 = v29;
    v52 = v51;
    v142[0] = v51;
    *v50 = 136446210;
    v138 = v36;
    LOBYTE(v139) = v37;
    sub_100003020(&qword_1000A3BB8, &qword_100080AC8);
    v53 = String.init<A>(describing:)();
    v119 = v37;
    v37 = v36;
    v55 = sub_10000D9FC(v53, v54, v142);
    v56 = v134;
    v57 = v135;

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v47, v48, "Parse APSMessage with version %{public}s", v50, 0xCu);
    sub_100006994(v52);
    v58 = v52;
    v29 = v121;
    sub_10000FA7C(v58);
    sub_10000FA7C(v50);

    v59 = *(v56 + 8);
    v60 = v57;
    v36 = v37;
    LOBYTE(v37) = v119;
    v59(v26, v60);
  }

  else
  {

    v59 = *(v134 + 8);
    v59(v26, v135);
  }

  if (v36 == 2)
  {
    v61 = v37;
  }

  else
  {
    v61 = 1;
  }

  if ((v61 & 1) == 0)
  {
    v136 = 0x737472656C61;
    v137 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    sub_100015764();

    sub_100014EB0(&v138);
    v35 = v128;
    if (v143)
    {
      v77 = swift_dynamicCast();
      v78 = v130;
      if (v77)
      {
        v79 = v136;
        v80 = v137;
        v82 = v132;
        v81 = v133;
        v83 = v123;
        v84 = v131;
        (*(v133 + 16))(v123, v131, v132);
        v85 = v79;
        v86 = v120;
        sub_10001373C(v126, v129, v127, v122, v85, v80, v83, v120);
        (*(v81 + 8))(v84, v82);
LABEL_44:
        sub_100014F6C(v86, v35);
        v89 = 0;
        goto LABEL_47;
      }
    }

    else
    {

      sub_100014F04(v142);
      v78 = v130;
    }

    static Logger.notifications.getter();
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = v29;
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v106, v107, "Attempted to parse APSMessage with version 2, without binary alert payload", v109, 2u);
      v110 = v109;
      v29 = v108;
      sub_10000FA7C(v110);
    }

    v111 = sub_100015744();
    v112(v111);
    v59(v78, v135);
    goto LABEL_46;
  }

  v136 = 0x73746E657665;
  v137 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  sub_100015764();

  sub_100014EB0(&v138);
  v35 = v128;
  if (!v143)
  {
    v90 = sub_100015744();
    v91(v90);

    sub_100014F04(v142);
LABEL_46:
    v89 = 1;
LABEL_47:
    sub_100006BD4(v35, v89, 1, v29);
    return;
  }

  sub_100003020(&qword_1000A3BB0, &qword_100080AC0);
  v62 = swift_dynamicCast();
  v63 = v122;
  v64 = v129;
  if ((v62 & 1) == 0)
  {
    v104 = sub_100015744();
    v105(v104);

    goto LABEL_46;
  }

  v121 = v29;
  v65 = v136;
  (*(v133 + 16))(v125, v131, v132);
  v66 = 0;
  v67 = v124;
  *v124 = v126;
  v67[1] = v64;
  v67[2] = v127;
  v67[3] = v63;
  v68 = *(v65 + 16);
  v69 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v68 == v66)
    {

      v114 = v132;
      v113 = v133;
      (*(v133 + 8))(v131, v132);
      v115 = v124;
      v124[4] = v69;
      v29 = v121;
      (*(v113 + 32))(v115 + *(v121 + 28), v125, v114);
      v86 = v120;
      sub_100014F6C(v115, v120);
      v35 = v128;
      goto LABEL_44;
    }

    if (v66 >= *(v65 + 16))
    {
      break;
    }

    v142[0] = *(v65 + 8 * v66 + 32);
    sub_1000140A8(v142, &v138);
    v70 = v139;
    if (v139)
    {
      v71 = v138;
      v72 = v140;
      v135 = v141;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B31C();
        v69 = v75;
      }

      v73 = v69[2];
      if (v73 >= v69[3] >> 1)
      {
        sub_10005B31C();
        v69 = v76;
      }

      v69[2] = v73 + 1;
      v74 = &v69[5 * v73];
      v74[4] = v71;
      v74[5] = v70;
      v74[6] = v72;
      *(v74 + 7) = v135;
    }

    ++v66;
  }

  __break(1u);
}

double sub_1000135D4@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_100074DB0(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_10000DF6C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_100013638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100074DF4(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013688(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100074E6C(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

double sub_1000136D8@<D0>(uint64_t a1@<X2>, _OWORD *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_100074DF4(a3, a4), (v7 & 1) != 0))
  {
    v8 = *(a1 + 56) + 32 * v6;

    sub_10000DF6C(v8, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10001373C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v67 = a7;
  v65 = a4;
  v64 = a3;
  v77 = a1;
  v66 = a8;
  v75 = type metadata accessor for Logger();
  v11 = *(v75 - 8);
  v12 = __chkstk_darwin(v75);
  v61[1] = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v61[0] = v61 - v15;
  __chkstk_darwin(v14);
  v76 = v61 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a5;
  v81 = a6;
  sub_10000DFCC(a5, a6);
  v21 = 0;
  v73 = (v18 + 8);
  v22 = _swiftEmptyArrayStorage;
  v74 = (v11 + 8);
  *(&v23 + 1) = 8;
  v72 = xmmword_100080320;
  v24 = &type metadata for Int16;
  *&v23 = 136315394;
  v68 = v23;
  v63 = a6;
  v25 = a6;
  v62 = a5;
  v26 = a5;
  v70 = v17;
  v71 = v20;
  while (2)
  {
    v27 = v77;
    switch(v25 >> 62)
    {
      case 1uLL:
        v28 = v26;
        v29 = v26 >> 32;
        goto LABEL_7;
      case 2uLL:
        v28 = *(v26 + 16);
        v29 = *(v26 + 24);
LABEL_7:
        if (v28 != v29)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      case 3uLL:
        goto LABEL_17;
      default:
        if ((v25 & 0xFF000000000000) == 0)
        {
LABEL_17:
          v50 = v22;
          sub_100006C78(v62, v63);
          sub_100006C78(v26, v25);
          v52 = v66;
          v51 = v67;
          v53 = v65;
          v54 = v64;
          goto LABEL_22;
        }

LABEL_8:
        if (v21 != 500)
        {
          v78 = v21;
          static FixedSizeTypeBinaryCodable.read(from:)();
          v30 = v24;
          v31 = UUID.uuidString.getter();
          v33 = v32;
          (*v73)(v20, v17);
          sub_100003020(&qword_1000A3BC0, &qword_100080AD0);
          v34 = swift_allocObject();
          *(v34 + 16) = v72;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v34 + 32) = (bswap32(v79[0]) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v34 + 40) = (bswap32(v79[0]) >> 16) / 100.0;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v34 + 48) = (bswap32(v79[0]) >> 16) / 100.0;
          v35 = v30;
          static FixedSizeTypeBinaryCodable.read(from:)();
          *(v34 + 56) = (bswap32(v79[0]) >> 16) / 100.0;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10005B31C();
            v22 = v48;
          }

          v36 = v22[2];
          if (v36 >= v22[3] >> 1)
          {
            sub_10005B31C();
            v22 = v49;
          }

          v22[2] = v36 + 1;
          v37 = &v22[5 * v36];
          v37[4] = v31;
          v37[5] = v33;
          v37[6] = v27;
          v37[7] = a2;
          v37[8] = v34;
          v38 = v76;
          static Logger.notifications.getter();

          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            v69 = v22;
            *v79 = v42;
            *v41 = v68;
            v43 = sub_10000D9FC(v31, v33, v79);

            *(v41 + 4) = v43;
            *(v41 + 12) = 2080;
            v44 = Array.description.getter();
            v46 = v45;

            v47 = sub_10000D9FC(v44, v46, v79);

            *(v41 + 14) = v47;
            _os_log_impl(&_mh_execute_header, v39, v40, "Received weather alert: %s - %s", v41, 0x16u);
            swift_arrayDestroy();
            v22 = v69;

            (*v74)(v76, v75);
          }

          else
          {

            (*v74)(v38, v75);
          }

          v24 = v35;
          v21 = v78 + 1;
          v26 = v80;
          v25 = v81;
          v17 = v70;
          v20 = v71;
          continue;
        }

        v50 = v22;
        static Logger.notifications.getter();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "Breaking out of SevereMessage parsing", v57, 2u);

          sub_100006C78(v62, v63);
        }

        else
        {
          sub_100006C78(v62, v63);
        }

        v52 = v66;
        v51 = v67;
        v53 = v65;
        v54 = v64;
        (*v74)(v61[0], v75);
        sub_100006C78(v80, v81);
LABEL_22:
        *v52 = v77;
        *(v52 + 1) = a2;
        *(v52 + 2) = v54;
        *(v52 + 3) = v53;
        *(v52 + 4) = v50;
        v58 = *(type metadata accessor for SevereMessage(0) + 28);
        v59 = type metadata accessor for Date();
        return (*(*(v59 - 8) + 32))(&v52[v58], v51, v59);
    }
  }
}

double sub_1000140A8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = *a1;
  v12 = sub_100013638(0x696669746E656469, 0xEA00000000007265, v11);
  if (v12 && (v25 = v12, (swift_dynamicCast() & 1) != 0))
  {
    v14 = v24[0];
    v13 = v24[1];
    v15 = sub_100013638(2020565602, 0xE400000000000000, v11);
    if (v15)
    {
      v24[0] = v15;
      sub_100003020(&qword_1000A3BC8, &qword_100080AD8);
      if (swift_dynamicCast())
      {
        v16 = v25;
        *a2 = v14;
        a2[1] = v13;
        a2[2] = v14;
        a2[3] = v13;
        a2[4] = v16;

        return result;
      }
    }

    static Logger.notifications.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Message event payload did not include bounding box", v23, 2u);
    }

    (*(v5 + 8))(v8, v4);
  }

  else
  {
    static Logger.notifications.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Message event payload did not include identifier", v20, 2u);
    }

    (*(v5 + 8))(v10, v4);
  }

  a2[4] = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t sub_100014378()
{
  _StringGuts.grow(_:)(25);

  strcpy(v15, "Identifier: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x3A737472656C410ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  countAndFlagsBits = v0[2]._countAndFlagsBits;
  v3 = *(countAndFlagsBits + 16);
  if (v3)
  {
    sub_100014558(0, v3, 0);
    v4 = (countAndFlagsBits + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];

      if (v8 >= v7 >> 1)
      {
        sub_100014558((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v6;
      v9[5] = v5;
      v4 += 5;
      --v3;
    }

    while (v3);
  }

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100014578();
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  return v15[0];
}

void *sub_100014518(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001491C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014A34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014558(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014B4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_100014578()
{
  result = qword_1000A3B58;
  if (!qword_1000A3B58)
  {
    sub_10000325C(&qword_1000A34C0, &qword_1000804D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3B58);
  }

  return result;
}

void *sub_1000145DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B78, &unk_100082260, &type metadata accessor for URLQueryItem, sub_10005C064);
  *v3 = result;
  return result;
}

char *sub_100014634(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014C4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100014654(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014674(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B68, &qword_100080A98, &type metadata accessor for WeatherAlert, sub_10005C0B4);
  *v3 = result;
  return result;
}

void *sub_1000146CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B70, &qword_100080AA0, &type metadata accessor for SevereNotificationEntity, sub_10005C0CC);
  *v3 = result;
  return result;
}

void *sub_100014724(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3B98, &qword_100080AB8, type metadata accessor for SevereNotificationSubscription, sub_10005C07C);
  *v3 = result;
  return result;
}

void *sub_10001477C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BA8, &unk_100082290, type metadata accessor for PredictedLocation, sub_10005C0E4);
  *v3 = result;
  return result;
}

void *sub_1000147D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BA0, &qword_100082280, type metadata accessor for ResolvedPredictedLocation, sub_10005C0FC);
  *v3 = result;
  return result;
}

void *sub_10001482C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100014FD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001484C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10001519C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10001486C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BF8, &qword_100080B08, &type metadata accessor for UUID, sub_10005C204);
  *v3 = result;
  return result;
}

void *sub_1000148C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015368(a1, a2, a3, *v3, &qword_1000A3BD0, &qword_100080AE0, type metadata accessor for CloudChannelSubscription, sub_10005C21C);
  *v3 = result;
  return result;
}

void *sub_10001491C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3BD8, &qword_100080AE8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C578(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3BE0, &qword_100080AF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_100014A34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3BE8, &qword_100080AF8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C578(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3BF0, &qword_100080B00);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014B4C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B60, &unk_100082250);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10005C044((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014C4C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B90, &qword_100080AB0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10005C01C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100014D54(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_100003020(&qword_1000A3B80, &qword_100080AA8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_10005C094((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100003020(&qword_1000A3B88, &qword_100080FA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SevereMessage(uint64_t a1)
{
  result = qword_1000A3C78;
  if (!qword_1000A3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F04(uint64_t a1)
{
  v2 = sub_100003020(&unk_1000A3880, &qword_1000808A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100014FD0(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003020(&qword_1000A3C10, &qword_100080B20);
  v10 = *(sub_100003020(&qword_1000A3C18, &qword_100081770) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003020(&qword_1000A3C18, &qword_100081770) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005C114(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10001519C(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003020(&qword_1000A3C00, &qword_100080B10);
  v10 = *(sub_100003020(&qword_1000A3C08, &qword_100080B18) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003020(&qword_1000A3C08, &qword_100080B18) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10005C128(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_100015368(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
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
LABEL_25:
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

  sub_100003020(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    a8(a4 + v22, v14, v19 + v22);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100015544(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = a1 + *(a3 + 28);

    return sub_100007374(v9, a2, v8);
  }
}

uint64_t sub_1000155E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 28);

    return sub_100006BD4(v8, a2, a2, v7);
  }

  return result;
}

void sub_100015660(uint64_t a1)
{
  sub_1000156F4();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000156F4()
{
  if (!qword_1000A3C88)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000A3C88);
    }
  }
}

double sub_100015764()
{

  return sub_1000135D4(v0, (v1 - 120), v1 - 160);
}

Swift::Int sub_1000157A8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000157FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10001583C()
{
  sub_100006994((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100015898(uint64_t a1, void *a2)
{
  sub_1000032B8((v2 + 16), *(v2 + 40));
  [a2 coordinate];
  dispatch thunk of WeatherDataServiceType.perform(requests:for:with:)();
  v4 = zalgo.getter();
  type metadata accessor for LocationInfo();
  v5 = Promise.then<A>(on:closure:)();

  return v5;
}

uint64_t sub_100015954(uint64_t *a1)
{
  v2 = type metadata accessor for LocationInfo();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = &v43 - v7;
  v8 = __chkstk_darwin(v6);
  v51 = &v43 - v9;
  v10 = __chkstk_darwin(v8);
  v54 = &v43 - v11;
  __chkstk_darwin(v10);
  v43 = &v43 - v12;
  v13 = type metadata accessor for WeatherDataResponse();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  v20 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  v21 = __chkstk_darwin(v20 - 8);
  v45 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v46 = &v43 - v23;
  v24 = *a1;
  v25 = *(*a1 + 16);
  v53 = v3;
  if (v25)
  {
    v26 = v24 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v27 = *(v14 + 72);
    v28 = (v3 + 32);
    v29 = _swiftEmptyArrayStorage;
    v49 = v13;
    v50 = v2;
    v47 = v27;
    v48 = v19;
    do
    {
      sub_100016344(v26, v19, &type metadata accessor for WeatherDataResponse);
      sub_10001609C(v19, v17);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v30 = *v28;
        v31 = v52;
        (*v28)(v52, v17, v2);
        v32 = v2;
        v33 = v51;
        v30(v51, v31, v32);
        v30(v54, v33, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005B414();
          v29 = v35;
        }

        v34 = *(v29 + 2);
        v19 = v48;
        if (v34 >= *(v29 + 3) >> 1)
        {
          sub_10005B414();
          v29 = v36;
        }

        *(v29 + 2) = v34 + 1;
        v2 = v50;
        v30(&v29[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v34], v54, v50);
        v27 = v47;
      }

      else
      {
        sub_100016100(v17);
      }

      v26 += v27;
      --v25;
    }

    while (v25);
  }

  v37 = v46;
  sub_100015EC0();

  v38 = v45;
  sub_10001615C(v37, v45);
  if (sub_100007374(v38, 1, v2) == 1)
  {
    sub_1000161CC(v38);
    sub_100016234();
    swift_allocError();
    sub_100003020(&qword_1000A3D70, &qword_100080BA0);
    swift_allocObject();
    v39 = Promise.init(error:)();
  }

  else
  {
    v40 = v53;
    v41 = v43;
    (*(v53 + 32))(v43, v38, v2);
    (*(v40 + 16))(v44, v41, v2);
    sub_100003020(&qword_1000A3D70, &qword_100080BA0);
    swift_allocObject();
    v39 = Promise.init(value:)();
    (*(v40 + 8))(v41, v2);
  }

  sub_1000161CC(v37);
  return v39;
}

uint64_t sub_100015EC0()
{
  v3 = sub_100016534();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_100006BD4(v0, v7, 1, v6);
}

uint64_t sub_100015F60(uint64_t a1)
{
  result = sub_100016288(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1000162C8(result, v3, 0, a1);
  }
}

uint64_t sub_100015FC8()
{
  v3 = sub_100016534();
  v4 = type metadata accessor for ResolvedPredictedLocation(v3);
  v5 = v4;
  if (v2)
  {
    sub_100016344(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0, type metadata accessor for ResolvedPredictedLocation);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return sub_100006BD4(v0, v6, 1, v5);
}

uint64_t sub_10001609C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherDataResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016100(uint64_t a1)
{
  v2 = type metadata accessor for WeatherDataResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001615C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000161CC(uint64_t a1)
{
  v2 = sub_100003020(&qword_1000A3D60, &qword_100080B98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100016234()
{
  result = qword_1000A3D68;
  if (!qword_1000A3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3D68);
  }

  return result;
}

uint64_t sub_1000162C8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100016344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for GeocodeWeatherService.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GeocodeWeatherService.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x10001649CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000164E0()
{
  result = qword_1000A3D78;
  if (!qword_1000A3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A3D78);
  }

  return result;
}

uint64_t sub_100016554()
{
  type metadata accessor for Severity();
  sub_1000187BC(&qword_1000A3E40, &type metadata accessor for Severity, &protocol conformance descriptor for Severity);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t sub_100016658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v151 = a3;
  v161 = a4;
  v6 = sub_100003020(&qword_1000A3800, &unk_100080860);
  sub_100006FF0(v6);
  sub_100018920();
  __chkstk_darwin(v7);
  sub_100018914();
  v152 = v8;
  sub_1000188E8();
  v143 = type metadata accessor for Urgency();
  sub_100006FBC();
  v141 = v9;
  __chkstk_darwin(v10);
  sub_1000188C4();
  v137 = v11;
  v156 = sub_100003020(&qword_1000A3E20, &unk_100080CD0);
  sub_100018904();
  sub_100018920();
  __chkstk_darwin(v12);
  sub_100018914();
  v142 = v13;
  v14 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  v15 = sub_100006FF0(v14);
  __chkstk_darwin(v15);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v16);
  sub_1000188D8();
  __chkstk_darwin(v17);
  sub_100018938();
  v145 = v18;
  sub_1000188E8();
  type metadata accessor for Severity();
  sub_100006FBC();
  v149 = v20;
  v150 = v19;
  __chkstk_darwin(v19);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v21);
  sub_100018938();
  v147 = v22;
  v23 = sub_100003020(&qword_1000A3E30, &unk_100080CE0);
  sub_100006FF0(v23);
  sub_100018920();
  __chkstk_darwin(v24);
  sub_100018914();
  v155 = v25;
  sub_1000188E8();
  v167 = type metadata accessor for UUID();
  sub_100006FBC();
  v165 = v26;
  __chkstk_darwin(v27);
  sub_1000188C4();
  v166 = v28;
  sub_1000188E8();
  v29 = type metadata accessor for WeatherAlert();
  sub_100006FBC();
  v162 = v30;
  __chkstk_darwin(v31);
  sub_1000188B0();
  v159 = v32;
  __chkstk_darwin(v33);
  v35 = &v129 - v34;
  v139 = type metadata accessor for SevereNotificationSubscription(0);
  sub_100018904();
  __chkstk_darwin(v36);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v37);
  v39 = &v129 - v38;
  v40 = type metadata accessor for Logger();
  sub_100006FBC();
  v42 = v41;
  __chkstk_darwin(v43);
  v45 = &v129 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Location();
  sub_100006FBC();
  v157 = v47;
  v158 = v46;
  __chkstk_darwin(v46);
  sub_1000188C4();
  v160 = v48;
  sub_100037B5C();
  static Logger.notifications.getter();
  v49 = a2;
  sub_10001868C(a2, v39);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  v146 = v51;
  v52 = os_log_type_enabled(v50, v51);
  v168 = v29;
  v153 = v49;
  if (v52)
  {
    v132 = v39;
    v133 = v45;
    v134 = v42;
    v135 = v40;
    v53 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v169 = v129;
    v130 = v53;
    *v53 = 136446723;
    v54 = *(a1 + 16);
    v136 = a1;
    v131 = v50;
    if (v54)
    {
      v55 = *(v162 + 16);
      v56 = a1 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
      v163 = *(v162 + 72);
      v164 = v55;
      v57 = (v165 + 8);
      v165 = v162 + 16;
      v58 = (v162 + 8);
      v59 = _swiftEmptyArrayStorage;
      do
      {
        v164(v35, v56, v29);
        v60 = v166;
        WeatherAlert.id.getter();
        v61 = UUID.uuidString.getter();
        v63 = v62;
        (*v57)(v60, v167);
        (*v58)(v35, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000188F4();
          sub_10005B5C4();
          v59 = v67;
        }

        v65 = v59[2];
        v64 = v59[3];
        if (v65 >= v64 >> 1)
        {
          sub_10001892C(v64);
          sub_10005B5C4();
          v59 = v68;
        }

        v59[2] = v65 + 1;
        v66 = &v59[2 * v65];
        v66[4] = v61;
        v66[5] = v63;
        v56 += v163;
        --v54;
        v29 = v168;
      }

      while (v54);
    }

    v74 = Array.description.getter();
    v76 = v75;

    v77 = sub_10000D9FC(v74, v76, &v169);

    v78 = v130;
    *(v130 + 1) = v77;
    *(v78 + 12) = 2160;
    *(v78 + 14) = 1752392040;
    *(v78 + 22) = 2081;
    v79 = v132;
    sub_1000383B8();
    v81 = v80;
    v83 = v82;
    sub_1000186F0(v79);
    v84 = sub_10000D9FC(v81, v83, &v169);

    *(v78 + 24) = v84;
    v85 = v131;
    _os_log_impl(&_mh_execute_header, v131, v146, "Creating notification content; alerts=%{public}s, subscription=%{private,mask.hash}s", v78, 0x20u);
    v86 = v129;
    swift_arrayDestroy();
    sub_10000FA7C(v86);
    sub_10000FA7C(v78);

    (*(v134 + 8))(v133, v135);
    v69 = v161;
    v70 = v162;
    v72 = v153;
    v73 = v159;
    v71 = v156;
    a1 = v136;
  }

  else
  {

    sub_1000186F0(v39);
    (*(v42 + 8))(v45, v40);
    v69 = v161;
    v70 = v162;
    v71 = v156;
    v72 = v49;
    v73 = v159;
  }

  v87 = v155;
  sub_100015EA8(a1);
  if (sub_100007374(v87, 1, v29) != 1)
  {
    (*(v70 + 32))(v73, v87, v29);
    v91 = v154;
    v167 = sub_10001739C(v160, v72, v154, a1);
    v92 = v147;
    WeatherAlert.severity.getter();
    v94 = v149;
    v93 = v150;
    v95 = v148;
    (*(v149 + 104))(v148, enum case for Severity.extreme(_:), v150);
    v96 = sub_100016554();
    v97 = *(v94 + 8);
    v97(v95, v93);
    v97(v92, v93);
    if ((v96 & 1) == 0)
    {
      goto LABEL_26;
    }

    v98 = v145;
    WeatherAlert.urgency.getter();
    v99 = v141;
    v100 = v144;
    v101 = v143;
    (*(v141 + 104))(v144, enum case for Urgency.immediate(_:), v143);
    sub_100006BD4(v100, 0, 1, v101);
    v102 = *(v71 + 48);
    v103 = v142;
    sub_10001874C(v98, v142);
    sub_10001874C(v100, v103 + v102);
    sub_100018968(v103);
    if (v106)
    {
      sub_100018950(v100);
      sub_100018950(v98);
      sub_100018968(v103 + v102);
      v104 = v153;
      if (v106)
      {
        sub_100018858(v103, &qword_1000A3E28, &qword_1000817A0);
        v73 = v159;
        v91 = v154;
LABEL_25:
        v111 = v138;
        sub_10001868C(v104, v138);
        LODWORD(v166) = swift_getEnumCaseMultiPayload() != 1;
        sub_1000186F0(v111);
        goto LABEL_27;
      }
    }

    else
    {
      v105 = v140;
      sub_10001874C(v103, v140);
      sub_100018968(v103 + v102);
      v104 = v153;
      if (!v106)
      {
        v107 = v103 + v102;
        v108 = v137;
        (*(v99 + 32))(v137, v107, v101);
        sub_1000187BC(&qword_1000A3E38, &type metadata accessor for Urgency, &protocol conformance descriptor for Urgency);
        sub_100018944();
        v109 = dispatch thunk of static Equatable.== infix(_:_:)();
        v110 = *(v99 + 8);
        v110(v108, v101);
        sub_100018858(v144, &qword_1000A3E28, &qword_1000817A0);
        sub_100018858(v145, &qword_1000A3E28, &qword_1000817A0);
        v110(v105, v101);
        sub_100018858(v103, &qword_1000A3E28, &qword_1000817A0);
        v73 = v159;
        v91 = v154;
        if (v109)
        {
          goto LABEL_25;
        }

LABEL_26:
        LODWORD(v166) = 0;
        goto LABEL_27;
      }

      sub_100018950(v144);
      sub_100018950(v145);
      (*(v99 + 8))(v105, v101);
    }

    sub_100018858(v103, &qword_1000A3E20, &unk_100080CD0);
    LODWORD(v166) = 0;
    v73 = v159;
    v91 = v154;
LABEL_27:
    v112 = v152;
    sub_100018540(v152);
    v113 = v73;
    sub_1000032B8((v91 + 16), *(v91 + 40));
    v165 = dispatch thunk of SevereNotificationStringBuilderType.title(for:)();
    v115 = v114;
    sub_1000032B8((v91 + 16), *(v91 + 40));
    v116 = v160;
    v117 = dispatch thunk of SevereNotificationStringBuilderType.subtitle(for:)();
    v119 = v118;
    sub_1000032B8((v91 + 16), *(v91 + 40));
    v120 = dispatch thunk of SevereNotificationStringBuilderType.body(for:at:timestamp:)();
    v122 = v121;
    v123 = Location.id.getter();
    v125 = v124;
    (*(v162 + 8))(v113, v168);
    (*(v157 + 8))(v116, v158);
    v126 = v161;
    *v161 = v165;
    v126[1] = v115;
    v126[2] = v117;
    v126[3] = v119;
    v126[4] = v120;
    v126[5] = v122;
    v126[6] = v123;
    v126[7] = v125;
    v126[8] = v167;
    *(v126 + 72) = v166;
    v127 = type metadata accessor for SevereNotificationContent(0);
    sub_10000F924(v112, v126 + *(v127 + 40));
    v89 = v126;
    v90 = 0;
    v88 = v127;
    return sub_100006BD4(v89, v90, 1, v88);
  }

  (*(v157 + 8))(v160, v158);
  sub_100018858(v87, &qword_1000A3E30, &unk_100080CE0);
  v88 = type metadata accessor for SevereNotificationContent(0);
  v89 = v69;
  v90 = 1;
  return sub_100006BD4(v89, v90, 1, v88);
}

Swift::Int *sub_10001739C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = type metadata accessor for TimeZone();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SevereNotificationSubscription(0);
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Location.id.getter();
  *(&v46 + 1) = &type metadata for String;
  *&v45 = v12;
  *(&v45 + 1) = v13;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = &_swiftEmptyDictionarySingleton;
  sub_10002C1A4(v44);
  v14 = v43;
  sub_10001868C(a2, v11);
  LOBYTE(a2) = swift_getEnumCaseMultiPayload() == 1;
  sub_1000186F0(v11);
  *(&v46 + 1) = &type metadata for Bool;
  LOBYTE(v45) = a2;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v14;
  sub_10002C1A4(v44);
  v15 = v43;
  v16 = sub_100017924(a4);
  if (v17)
  {
    *(&v46 + 1) = &type metadata for String;
    *&v45 = v16;
    *(&v45 + 1) = v17;
    sub_100018804(&v45, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v43 = v15;
    sub_10002C1A4(v44);
    v15 = v43;
  }

  else
  {
    v18 = sub_100074DF4(0x55736C6961746544, 0xEA00000000004C52);
    if (v19)
    {
      v20 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v44[0] = v15;
      v22 = v15[3];
      sub_100003020(&qword_1000A3E50, &qword_100080CF0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v22);
      v15 = *&v44[0];

      sub_100018804((v15[7] + 32 * v20), &v45);
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v45 = 0u;
      v46 = 0u;
    }

    sub_100018858(&v45, &unk_1000A3880, &qword_1000808A8);
  }

  v23 = Location.name.getter();
  *(&v46 + 1) = &type metadata for String;
  *&v45 = v23;
  *(&v45 + 1) = v24;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v15;
  sub_10002C1A4(v44);
  v25 = v43;
  Location.coordinate.getter();
  *(&v46 + 1) = &type metadata for Double;
  *&v45 = v26;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v25;
  sub_10002C1A4(v44);
  v27 = v43;
  Location.coordinate.getter();
  *(&v46 + 1) = &type metadata for Double;
  *&v45 = v28;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v27;
  sub_10002C1A4(v44);
  v29 = v43;
  Location.timeZone.getter();
  v30 = TimeZone.identifier.getter();
  v32 = v31;
  (*(v6 + 8))(v8, v42);
  *(&v46 + 1) = &type metadata for String;
  *&v45 = v30;
  *(&v45 + 1) = v32;
  sub_100018804(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v29;
  sub_10002C1A4(v44);
  v33 = v43;
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    sub_100018814();
    v34 = static NSUserDefaults.weatherSharedInternal.getter();
    if (v34)
    {
      v35 = v34;
      v36 = String._bridgeToObjectiveC()();
      v37 = [v35 stringForKey:v36];

      if (v37)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        *(&v46 + 1) = &type metadata for String;
        *&v45 = v38;
        *(&v45 + 1) = v40;
        sub_100018804(&v45, v44);
        swift_isUniquelyReferenced_nonNull_native();
        v43 = v33;
        sub_10002C1A4(v44);
        return v43;
      }
    }
  }

  return v33;
}

uint64_t sub_100017924(uint64_t a1)
{
  v130 = type metadata accessor for URLQueryItem();
  sub_100006FBC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000188B0();
  sub_1000188D8();
  v6 = __chkstk_darwin(v5);
  v8 = &v114 - v7;
  __chkstk_darwin(v6);
  sub_1000188D8();
  __chkstk_darwin(v9);
  sub_100018938();
  v131 = v10;
  v11 = sub_100003020(&qword_1000A3E58, &qword_100080CF8);
  sub_100006FF0(v11);
  sub_100018920();
  __chkstk_darwin(v12);
  sub_100018914();
  v124 = v13;
  sub_1000188E8();
  v125 = type metadata accessor for URLComponents();
  sub_100006FBC();
  v123 = v14;
  __chkstk_darwin(v15);
  sub_1000188C4();
  v122 = v16;
  sub_1000188E8();
  v139 = type metadata accessor for UUID();
  sub_100006FBC();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000188C4();
  v138 = v20;
  sub_1000188E8();
  v141 = type metadata accessor for WeatherAlert();
  sub_100006FBC();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000188B0();
  v140 = v24;
  __chkstk_darwin(v25);
  sub_100018938();
  v137 = v26;
  sub_1000188E8();
  type metadata accessor for Logger();
  sub_100006FBC();
  v127 = v28;
  v128 = v27;
  __chkstk_darwin(v27);
  sub_1000188B0();
  sub_1000188D8();
  __chkstk_darwin(v29);
  sub_1000188D8();
  __chkstk_darwin(v30);
  v32 = &v114 - v31;
  v33 = *(a1 + 16);
  v34 = _swiftEmptyArrayStorage;
  v129 = v3;
  v118 = v8;
  v126 = a1;
  v132 = v22;
  if (v33)
  {
    v116 = &v114 - v31;
    v142 = _swiftEmptyArrayStorage;
    sub_100014558(0, v33, 0);
    v34 = v142;
    v36 = *(v22 + 16);
    v35 = v22 + 16;
    v37 = a1 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v134 = *(v35 + 56);
    v135 = v36;
    v133 = (v18 + 8);
    v136 = v35;
    v38 = (v35 - 8);
    v117 = v33;
    v39 = v33;
    v40 = v137;
    do
    {
      v41 = v141;
      v135(v40, v37, v141);
      v42 = v138;
      WeatherAlert.id.getter();
      v43 = UUID.uuidString.getter();
      v45 = v44;
      (*v133)(v42, v139);
      (*v38)(v40, v41);
      v142 = v34;
      v3 = v34[2];
      v46 = v34[3];
      if (v3 >= v46 >> 1)
      {
        v48 = sub_10001892C(v46);
        sub_100014558(v48, v3 + 1, 1);
        v34 = v142;
      }

      v34[2] = v3 + 1;
      v47 = &v34[2 * v3];
      v47[4] = v43;
      v47[5] = v45;
      v37 += v134;
      --v39;
    }

    while (v39);
    v33 = v117;
    v32 = v116;
  }

  static Logger.notifications.getter();

  v49 = v34;
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  v52 = os_log_type_enabled(v50, v51);
  v138 = v49;
  if (v52)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v142 = v54;
    *v53 = 136315138;
    v55 = Array.description.getter();
    v3 = v56;
    v57 = sub_10000D9FC(v55, v56, &v142);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v50, v51, "Creating weather alert details URL based with identifiers: %s", v53, 0xCu);
    sub_100006994(v54);
    sub_10000FA7C(v54);
    sub_10000FA7C(v53);
  }

  v137 = *(v127 + 8);
  v137(v32, v128);
  if (v33)
  {
    v139 = *(v132 + 16);
    v58 = v126 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v59 = *(v132 + 72);
    v60 = (v132 + 8);
    v61 = _swiftEmptyArrayStorage;
    v132 += 16;
    do
    {
      v62 = v140;
      v63 = v141;
      v139(v140, v58, v141);
      v64 = WeatherAlert.detailsUrl.getter();
      v3 = v65;
      (*v60)(v62, v63);
      if (v3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000188F4();
          sub_10005B5C4();
          v61 = v69;
        }

        v67 = v61[2];
        v66 = v61[3];
        if (v67 >= v66 >> 1)
        {
          sub_10001892C(v66);
          sub_10005B5C4();
          v61 = v70;
        }

        v61[2] = v67 + 1;
        v68 = &v61[2 * v67];
        v68[4] = v64;
        v68[5] = v3;
      }

      v58 += v59;
      --v33;
    }

    while (v33);
  }

  else
  {
    v61 = _swiftEmptyArrayStorage;
  }

  if (!v61[2])
  {

    v82 = v120;
    static Logger.notifications.getter();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "None of the weather alerts specify detail URLs", v85, 2u);
      sub_10000FA7C(v85);
    }

    v86 = v82;
    goto LABEL_46;
  }

  v71 = v124;
  sub_100018944();
  URLComponents.init(string:)();
  v72 = v125;
  if (sub_100007374(v71, 1, v125) == 1)
  {

    sub_100018858(v71, &qword_1000A3E58, &qword_100080CF8);
    v73 = v119;
    static Logger.notifications.getter();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v142 = v77;
      *v76 = 136315138;
      v78 = sub_100018944();
      v81 = sub_10000D9FC(v78, v79, v80);

      *(v76 + 4) = v81;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to construct components from URL: %s", v76, 0xCu);
      sub_100006994(v77);
      sub_10000FA7C(v77);
      sub_10000FA7C(v76);
    }

    else
    {
    }

    v86 = v73;
LABEL_46:
    v137(v86, v128);
    return 0;
  }

  (*(v123 + 32))(v122, v71, v72);
  v87 = URLComponents.queryItems.getter();
  if (v87)
  {
    v88 = v87;
    v89 = 0;
    v90 = *(v87 + 16);
    v91 = v130;
    v141 = (v129 + 32);
    v92 = (v129 + 8);
    for (i = _swiftEmptyArrayStorage; ; v140(i + v3 + v100 * v94, v115, v91))
    {
      while (1)
      {
        if (v90 == v89)
        {

          v3 = v129;
          v105 = v118;
          goto LABEL_48;
        }

        if (v89 >= *(v88 + 16))
        {
          __break(1u);
LABEL_56:
          sub_1000188F4();
          sub_10005B4EC();
          i = v112;
LABEL_50:
          v107 = i[2];
          if (v107 >= i[3] >> 1)
          {
            sub_10005B4EC();
            i = v113;
          }

          i[2] = v107 + 1;
          (*(v3 + 32))(i + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v107, v121, v130);
          goto LABEL_53;
        }

        v3 = (*(v129 + 80) + 32) & ~*(v129 + 80);
        v94 = *(v129 + 72);
        (*(v129 + 16))(v131, v88 + v3 + v94 * v89, v91);
        if (URLQueryItem.name.getter() != 7562345 || v95 != 0xE300000000000000)
        {
          break;
        }

LABEL_42:
        v91 = v130;
        (*v92)(v131, v130);
        ++v89;
      }

      v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v97)
      {
        goto LABEL_42;
      }

      v91 = v130;
      v140 = *v141;
      v140(v115, v131, v130);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000145DC(0, i[2] + 1, 1);
        v91 = v130;
        i = v142;
      }

      v100 = i[2];
      v99 = i[3];
      v101 = v100 + 1;
      if (v100 >= v99 >> 1)
      {
        v102 = sub_10001892C(v99);
        v104 = v103;
        sub_1000145DC(v102, v103, 1);
        v101 = v104;
        v91 = v130;
        i = v142;
      }

      ++v89;
      i[2] = v101;
    }
  }

  i = 0;
  v105 = v118;
  v3 = v129;
LABEL_48:
  v142 = v138;
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100014578();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  if (i)
  {
    (*(v3 + 16))(v121, v105, v130);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_53:

  v108 = v122;
  URLComponents.queryItems.setter();
  v106 = URLComponents.string.getter();
  v109 = sub_100018944();
  v110(v109);
  (*(v123 + 8))(v108, v125);

  return v106;
}

uint64_t sub_100018540@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  WeatherAlert.expireTime.getter();
  Date.init()();
  v9 = static Date.> infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    WeatherAlert.expireTime.getter();
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  return sub_100006BD4(a1, v11, 1, v2);
}

uint64_t sub_10001868C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereNotificationSubscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000186F0(uint64_t a1)
{
  v2 = type metadata accessor for SevereNotificationSubscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001874C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003020(&qword_1000A3E28, &qword_1000817A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000187BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_100018804(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100018814()
{
  result = qword_1000A3E48;
  if (!qword_1000A3E48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000A3E48);
  }

  return result;
}

uint64_t sub_100018858(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003020(a2, a3);
  sub_100018904();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100018950(uint64_t a1)
{

  return sub_100018858(a1, v1, v2);
}

uint64_t (*sub_100018988(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = _swiftEmptyArrayStorage;
  v17 = result;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    sub_100006930(v8, v19);
    v10 = v5(v19);
    if (v3)
    {
      sub_100006994(v19);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_100006D78(v19, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = sub_100031050();
        sub_100014518(v12, v13, v14);
        v9 = v20;
      }

      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_100014518((v15 > 1), v16 + 1, 1);
        v9 = v20;
      }

      v9[2] = v16 + 1;
      result = sub_100006D78(v18, &v9[5 * v16 + 4]);
      v5 = v17;
    }

    else
    {
      result = sub_100006994(v19);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018AE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = result;
  v5 = 0;
  v19 = *(a3 + 16);
  v6 = (a3 + 64);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v19 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v20 = v5;
    v8 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    v21[0] = v8;
    v21[1] = v9;
    v21[2] = v10;
    v21[3] = v11;
    v21[4] = v12;

    v13 = v18(v21);
    if (v3)
    {

LABEL_15:

      return v7;
    }

    if (v13)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      v22 = v7;
      if ((result & 1) == 0)
      {
        result = sub_100014634(0, v7[2] + 1, 1);
        v7 = v22;
      }

      v15 = v7[2];
      v14 = v7[3];
      v3 = 0;
      if (v15 >= v14 >> 1)
      {
        result = sub_100014634((v14 > 1), v15 + 1, 1);
        v3 = 0;
        v7 = v22;
      }

      v7[2] = v15 + 1;
      v16 = &v7[5 * v15];
      v16[4] = v8;
      v16[5] = v9;
      v16[6] = v10;
      v16[7] = v11;
      v16[8] = v12;
      v4 = a3;
    }

    else
    {

      v3 = 0;
    }

    v6 += 5;
    v5 = v20 + 1;
  }

  __break(1u);
  return result;
}

void *sub_100018CB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = a3;
  v31 = a2;
  v32 = type metadata accessor for WeatherAlert();
  v5 = *(v32 - 8);
  v6 = __chkstk_darwin(v32);
  v27 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = 0;
  v30 = *(a1 + 16);
  v28 = v5 + 16;
  v13 = (v5 + 8);
  v26 = (v5 + 32);
  v14 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v30 == v12)
    {

LABEL_14:

      return v14;
    }

    if (v12 >= *(v9 + 16))
    {
      break;
    }

    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    v17 = v9;
    (*(v5 + 16))(v11, v9 + v15 + v16 * v12, v32);
    v18 = sub_100023474(v11, v31, v29);
    if (v3)
    {
      (*v13)(v11, v32);

      goto LABEL_14;
    }

    if (v18)
    {
      v25 = *v26;
      v25(v27, v11, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100014674(0, v14[2] + 1, 1);
        v14 = v33;
      }

      v21 = v14[2];
      v20 = v14[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = v14[2];
        v24 = v21 + 1;
        sub_100014674((v20 > 1), v21 + 1, 1);
        v21 = v23;
        v22 = v24;
        v14 = v33;
      }

      ++v12;
      v14[2] = v22;
      result = (v25)(v14 + v15 + v21 * v16, v27, v32);
      v9 = v17;
    }

    else
    {
      result = (*v13)(v11, v32);
      ++v12;
      v9 = v17;
    }
  }

  __break(1u);
  return result;
}

void *sub_100018F68(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v38 = type metadata accessor for WeatherAlert();
  sub_100006FBC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000188B0();
  v32 = v8;
  sub_100030F24();
  result = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = 0;
  v37 = *(a3 + 16);
  v34 = v6 + 16;
  v14 = (v6 + 8);
  v31 = (v6 + 32);
  v33 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v37 == v13)
    {

      return v33;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = *(v6 + 72);
    v17 = a3;
    (*(v6 + 16))(v12, a3 + v15 + v16 * v13, v38);
    v18 = v35(v12);
    if (v3)
    {
      (*v14)(v12, v38);
      v28 = v33;

      return v28;
    }

    if (v18)
    {
      v30 = *v31;
      v30(v32, v12, v38);
      v19 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v19;
      }

      else
      {
        v22 = sub_100031050();
        sub_100014674(v22, v23, v24);
        v21 = v39;
      }

      a3 = v17;
      v26 = v21[2];
      v25 = v21[3];
      v27 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v33 = (v26 + 1);
        v29 = v26;
        sub_100014674((v25 > 1), v26 + 1, 1);
        v27 = v33;
        v26 = v29;
        a3 = v17;
        v21 = v39;
      }

      ++v13;
      v21[2] = v27;
      v33 = v21;
      result = (v30)(v21 + v15 + v26 * v16, v32, v38);
    }

    else
    {
      result = (*v14)(v12, v38);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

void *sub_100019204(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, uint64_t))
{
  v9 = sub_100003020(&qword_1000A40C0, &qword_100080FD8);
  sub_100006FF0(v9);
  sub_100018920();
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  v13 = sub_100003020(&qword_1000A3FE8, &qword_100080F28);
  sub_100006FBC();
  v33 = v14;
  __chkstk_darwin(v15);
  sub_1000188B0();
  v35 = v16;
  sub_100030F24();
  __chkstk_darwin(v17);
  sub_100018938();
  v34 = v18;
  v19 = 0;
  v20 = *(a1 + 16);
  v36 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v20 == v19)
    {

      return v36;
    }

    v21 = type metadata accessor for SevereNotificationSubscription(0);
    sub_10000E960(v21);
    a4(a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v23 + 72) * v19, a2, a3);
    if (v4)
    {
      break;
    }

    if (sub_100007374(v12, 1, v13) == 1)
    {
      sub_10000E904(v12, &qword_1000A40C0, &qword_100080FD8);
      ++v19;
    }

    else
    {
      sub_10002FEFC();
      sub_10002FEFC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B770(0, v36[2] + 1, 1, v36);
        v36 = v27;
      }

      v25 = v36[2];
      v24 = v36[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v31[1] = v36[2];
        v32 = v25 + 1;
        sub_10005B770(v24 > 1, v25 + 1, 1, v36);
        v26 = v32;
        v36 = v28;
      }

      ++v19;
      v36[2] = v26;
      sub_10002FEFC();
    }
  }

  v29 = v36;

  return v29;
}

uint64_t sub_100019500()
{
  *(v0 + 16) = static NotificationsActor.shared.getter();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100019598;

  return sub_10001973C();
}

uint64_t sub_100019598()
{
  sub_100030C4C();
  v1 = *v0;
  sub_10000FA6C();
  *v2 = v1;

  type metadata accessor for NotificationsActor.Actor();
  sub_100030B44();
  sub_1000306FC(v3, 255, v4, &protocol conformance descriptor for NotificationsActor.Actor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000196E4, v6, v5);
}

uint64_t sub_1000196E4()
{
  sub_100030C4C();

  sub_100030C70();

  return v0();
}

uint64_t sub_10001973C()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for PredictedLocationsFeatureState();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = static NotificationsActor.shared.getter();
  type metadata accessor for NotificationsActor.Actor();
  sub_1000306FC(&qword_1000A40F8, 255, &type metadata accessor for NotificationsActor.Actor, &protocol conformance descriptor for NotificationsActor.Actor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v5;
  v1[15] = v4;

  return _swift_task_switch(sub_100019918, v5, v4);
}

uint64_t sub_100019918()
{
  sub_100030E20();
  sub_100030DA0((v0[2] + 336));
  sub_100030CE0();
  if (dispatch thunk of NotificationAuthorizationStatusProviderType.hasNotificationAuthorization()())
  {
    sub_100030DA0((v0[2] + 216));
    static Location.currentLocationID.getter();
    v0[16] = v1;
    swift_task_alloc();
    sub_100030CD4();
    v0[17] = v2;
    *v2 = v3;
    v2[1] = sub_100019A70;
    sub_100030CBC();

    return dispatch thunk of NotificationSubscriptionManagerType.subscription(with:)(v4);
  }

  else
  {

    sub_100024810();

    sub_100030C70();

    return v5();
  }
}

uint64_t sub_100019A70()
{
  sub_100030C58();
  sub_100030FBC();
  sub_10000FA6C();
  *v3 = v1;
  *v3 = *v2;

  sub_100031030();
  if (v0)
  {

    v4 = *(v1 + 112);
    v5 = *(v1 + 120);
    v6 = sub_10001A20C;
  }

  else
  {

    v4 = *(v1 + 112);
    v5 = *(v1 + 120);
    v6 = sub_100019BA0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100019BA0()
{
  sub_100030C58();
  v1 = *(v0 + 88);
  sub_10002FFD0();
  type metadata accessor for NotificationSubscription();
  if (sub_100031110(v1) == 1)
  {
    sub_10000E904(*(v0 + 88), &qword_1000A3FA8, &qword_100080F00);
    v2 = 0;
  }

  else
  {
    v2 = NotificationSubscription.severeEnabled.getter();
    sub_100030C40();
    v3 = sub_100030F18();
    v4(v3);
  }

  *(v0 + 152) = v2 & 1;
  sub_100030DA0((*(v0 + 16) + 440));
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 144) = v5;
  *v5 = v6;
  v7 = sub_100030C7C(v5);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v7);
}

uint64_t sub_100019CBC()
{
  sub_100030C4C();
  sub_100030E50();
  v2 = *v1;
  sub_10000FA6C();
  *v3 = v2;

  sub_100030E68();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return _swift_task_switch(sub_100019DC8, v6, v5);
}

uint64_t sub_100019DC8()
{
  v40 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 64);

  v3 = sub_100031064();
  v4(v3);
  sub_100030F18();
  v5 = static PredictedLocationsFeatureState.== infix(_:_:)();
  v6 = *(v2 + 8);
  v7 = sub_100030CE0();
  v6(v7);
  v8 = sub_100030E5C();
  v6(v8);
  if ((v1 & 1) == 0 && (v5 & 1) == 0)
  {
    static Logger.notifications.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (sub_100031158(v10))
    {
      v11 = sub_100031140();
      v39 = swift_slowAlloc();
      *v11 = 136446466;
      *(v11 + 4) = sub_10000D9FC(0x65736C6166, 0xE500000000000000, &v39);
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_10000D9FC(0x65736C6166, 0xE500000000000000, &v39);
      _os_log_impl(&_mh_execute_header, v9, v10, "Removing observer of location manager; currentLocationSevereEnabled=%{public}s predictedLocationsSevereEnabled=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
      sub_100030D84();
      sub_10000FA7C(v11);
    }

    v12 = sub_100030CE0();
    v13(v12);
    v14 = *(v0 + 96);
    sub_100024810();
    v15 = v14;
    goto LABEL_8;
  }

  v16 = *(v0 + 16);
  if (*(v16 + 496))
  {
    v15 = *(v0 + 96);
LABEL_8:
    sub_10000E904(v15, &qword_1000A3FA8, &qword_100080F00);
    goto LABEL_25;
  }

  static Logger.notifications.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (sub_100031158(v18))
  {
    v19 = *(v0 + 152);
    v36 = *(v0 + 32);
    v37 = *(v0 + 24);
    v38 = *(v0 + 48);
    v20 = sub_100031140();
    v21 = swift_slowAlloc();
    v39 = v21;
    *v20 = 136446466;
    if (v19)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    if (v19)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = sub_10000D9FC(v22, v23, &v39);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    if (v5)
    {
      v25 = 1702195828;
    }

    else
    {
      v25 = 0x65736C6166;
    }

    if (v5)
    {
      v26 = 0xE400000000000000;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_10000D9FC(v25, v26, &v39);

    *(v20 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "Adding observer to location manager; currentLocationSevereEnabled=%{public}s predictedLocationsSevereEnabled=%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    sub_10000FA7C(v21);
    sub_10000FA7C(v20);

    (*(v36 + 8))(v38, v37);
  }

  else
  {

    v28 = sub_100030CAC();
    v29(v28);
  }

  v30 = *(v0 + 96);
  sub_1000032B8((*(v0 + 16) + 256), *(*(v0 + 16) + 280));
  sub_100030CEC();
  sub_1000306FC(v31, v32, v33, &unk_100080E2C);
  dispatch thunk of LocationManagerType.addObserver(_:)();
  sub_10000E904(v30, &qword_1000A3FA8, &qword_100080F00);
  *(v16 + 496) = 1;
LABEL_25:

  sub_100030C70();

  return v34();
}

uint64_t sub_10001A20C()
{
  sub_100030C58();
  v1 = type metadata accessor for NotificationSubscription();
  sub_100030DE0();
  sub_100006BD4(v2, v3, v4, v1);
  v5 = *(v0 + 88);
  sub_10002FFD0();
  if (sub_100031110(v5) == 1)
  {
    sub_10000E904(*(v0 + 88), &qword_1000A3FA8, &qword_100080F00);
    v6 = 0;
  }

  else
  {
    v6 = NotificationSubscription.severeEnabled.getter();
    sub_100030C40();
    v7 = sub_100030F18();
    v8(v7);
  }

  *(v0 + 152) = v6 & 1;
  sub_100030DA0((*(v0 + 16) + 440));
  swift_task_alloc();
  sub_100030CD4();
  *(v0 + 144) = v9;
  *v9 = v10;
  v11 = sub_100030C7C(v9);

  return dispatch thunk of PredictedLocationsFeatureStateManagerType.severeNotificationFeatureState()(v11);
}

uint64_t sub_10001A398(uint64_t *a1)
{
  v55 = a1;
  v48 = *v1;
  v49 = v1;
  v2 = type metadata accessor for APSMessage(0);
  v50 = *(v2 - 8);
  __chkstk_darwin(v2);
  v51 = v3;
  v52 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SevereNotificationContent(0);
  v5 = *(v4 - 8);
  v44 = v4;
  v45 = v5;
  v6 = __chkstk_darwin(v4);
  v46 = v7;
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v42 - v8;
  v53 = type metadata accessor for Date();
  v43 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003020(&qword_1000A3F88, &qword_100080EE0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v42 - v16;
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Received a severe weather notification; creating debug presentation", v23, 2u);
  }

  (*(v18 + 8))(v20, v17);
  v24 = *v55;
  v25 = v55[1];
  v26 = (v55 + *(v2 + 28));
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
  }

  else
  {
    v28 = 0x6E776F6E6B6E55;
  }

  if (v27)
  {
    v29 = v26[1];
  }

  else
  {
    v29 = 0xE700000000000000;
  }

  (*(v43 + 16))(v11, v55 + *(v2 + 20), v53);
  swift_bridgeObjectRetain_n();

  sub_100012AB4(v24, v25, v28, v29, v11, v54);
  v56 = 0x3A6C656E6E616843;
  v57 = 0xE900000000000020;
  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = v56;
  v32 = v57;
  sub_10002FFD0();
  v33 = type metadata accessor for SevereMessage(0);
  if (sub_100007374(v15, 1, v33) == 1)
  {
    sub_10000E904(v15, &qword_1000A3F88, &qword_100080EE0);
    v34 = 0;
    v35 = 0xE000000000000000;
  }

  else
  {
    v34 = sub_100014378();
    v35 = v36;
    sub_100030508(v15);
  }

  v37 = Dictionary.init(dictionaryLiteral:)();
  sub_100006BD4(&v9[*(v44 + 40)], 1, 1, v53);
  *v9 = 0xD000000000000021;
  *(v9 + 1) = 0x8000000100085170;
  *(v9 + 2) = v31;
  *(v9 + 3) = v32;
  *(v9 + 4) = v34;
  *(v9 + 5) = v35;
  *(v9 + 6) = 0x6775626564;
  *(v9 + 7) = 0xE500000000000000;
  *(v9 + 8) = v37;
  v9[72] = 0;
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v38 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  swift_allocObject();
  sub_10002FEA4();
  firstly<A, B>(on:disposeOn:closure:)();

  v39 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  sub_1000304B0();
  swift_allocObject();
  sub_10002FEA4();
  v40 = zalgo.getter();
  Promise.error(on:closure:)();

  sub_100030508(v9);
  return sub_10000E904(v54, &qword_1000A3F88, &qword_100080EE0);
}

uint64_t sub_10001AB28(uint64_t *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  static Logger.notifications.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D9FC(v7, v8, &v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "Delivered debug notification with identifier: %{public}s", v12, 0xCu);
    sub_100006994(v13);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10001ACE0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SevereMessage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v7);
  v9 = (v27 - v8);
  v29 = type metadata accessor for Logger();
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.notifications.getter();
  sub_1000304B0();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27[0] = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28 = v2;
    v18 = v17;
    v30 = v17;
    *v16 = 136446210;
    v27[1] = a1;
    v27[2] = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *v9;
    v20 = v9[1];

    sub_100030508(v9);
    v21 = sub_10000D9FC(v19, v20, &v30);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "Handling severe message with identifier: %{public}s", v16, 0xCu);
    sub_100006994(v18);
    v2 = v28;
  }

  else
  {

    sub_100030508(v9);
  }

  (*(v10 + 8))(v12, v29);
  sub_1000304B0();
  *(swift_allocObject() + 16) = v2;
  sub_10002FEA4();
  v22 = objc_allocWithZone(sub_100003020(&qword_1000A3F98, &qword_100080EE8));

  v23 = AsyncBlockOperation.init(_:)();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  v24 = v23;
  v25 = Promise.__allocating_init(_:scheduleOn:)();

  return v25;
}

uint64_t sub_10001B090(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SevereMessage(0);
  __chkstk_darwin(v3 - 8);
  sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A3FA0, &qword_100080EF8);
  type metadata accessor for SevereNotificationsManager();
  firstly<A, B>(on:disposeOn:closure:)();

  v5 = static OS_dispatch_queue.notifications.getter();
  sub_1000304B0();
  *(swift_allocObject() + 16) = a1;
  sub_10002FEA4();

  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v6 = zalgo.getter();
  v7 = Promise.error(on:closure:)();

  return v7;
}

uint64_t sub_10001B2CC(uint64_t a1)
{
  sub_100003020(&qword_1000A40E0, &qword_100081000);

  Promise.__allocating_init<A>(task:)();
  sub_100003020(&qword_1000A40E8, &qword_100081018);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;

  Promise.__allocating_init<A>(task:)();
  v3 = combine<A, B>(_:_:)();

  return v3;
}

uint64_t sub_10001B3BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v69 = a4;
  v5 = type metadata accessor for SevereNotificationSubscription(0);
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin(v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SevereMessage(0);
  v65 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v67 = v9;
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Location();
  v10 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for NotificationSubscription.Location();
  v12 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NotificationSubscription();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = (&v60 - v19);
  v20 = sub_100003020(&qword_1000A3FA8, &qword_100080F00);
  v63 = *(v20 - 8);
  v21 = __chkstk_darwin(v20 - 8);
  v64 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v22;
  __chkstk_darwin(v21);
  v70 = &v60 - v23;
  v25 = *a1;
  v24 = a1[1];
  v26 = *(*a1 + 16);
  v81 = (v15 + 16);
  v71 = (v10 + 8);
  v72 = (v12 + 8);
  v77 = v15;
  v27 = (v15 + 8);

  v61 = v24;

  v29 = 0;
  v84 = v7;
  while (1)
  {
    if (v26 == v29)
    {
      v39 = 1;
      v40 = v70;
      goto LABEL_13;
    }

    if (v29 >= *(v25 + 16))
    {
      __break(1u);
      return result;
    }

    v30 = v25;
    (*(v77 + 16))(v80, v25 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v29, v14);
    v31 = v73;
    NotificationSubscription.location.getter();
    v32 = v75;
    NotificationSubscription.Location.locationOverride.getter();
    (*v72)(v31, v74);
    Location.kind.getter();
    (*v71)(v32, v76);
    v33 = Location.Identifier.Kind.rawValue.getter();
    v35 = v34;
    if (v33 == Location.Identifier.Kind.rawValue.getter() && v35 == v36)
    {
      break;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_12;
    }

    result = (*v27)(v80, v14);
    ++v29;
    v25 = v30;
  }

LABEL_12:
  v40 = v70;
  (*(v77 + 32))(v70, v80, v14);
  v39 = 0;
  v25 = v30;
LABEL_13:
  sub_100006BD4(v40, v39, 1, v14);
  if (v26)
  {
    v41 = *(v77 + 80);
    v76 = v25;
    v42 = v25 + ((v41 + 32) & ~v41);
    v80 = *(v77 + 72);
    v43 = *(v77 + 16);
    v44 = _swiftEmptyArrayStorage;
    do
    {
      v43(v18, v42, v14);
      NotificationSubscription.location.getter();
      (*v27)(v18, v14);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005B698();
        v44 = v46;
      }

      v45 = v44[2];
      if (v45 >= v44[3] >> 1)
      {
        sub_10005B698();
        v44 = v47;
      }

      v44[2] = v45 + 1;
      sub_10002FEA4();
      v42 += v80;
      --v26;
    }

    while (v26);
  }

  else
  {

    v44 = _swiftEmptyArrayStorage;
  }

  v82 = v44;
  v83 = v61;
  sub_100003020(&qword_1000A3FB0, &qword_100080F08);
  swift_allocObject();
  Promise.init(value:)();
  v84 = sub_100030944(0, &qword_1000A5B70, OS_dispatch_queue_ptr);
  v48 = static OS_dispatch_queue.notifications.getter();
  v81 = type metadata accessor for SevereMessage;
  sub_1000304B0();
  swift_allocObject();
  v80 = type metadata accessor for SevereMessage;
  sub_10002FEA4();
  sub_100003020(&qword_1000A3FB8, &qword_100080F10);
  type metadata accessor for SevereNotificationsManager();
  v49 = v66;
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_10002FFD0();
  v50 = (v62 + ((*(v63 + 80) + 16) & ~*(v63 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_10002FEFC();
  *(v51 + v50) = v49;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10002B428;
  *(v52 + 24) = v51;

  v53 = zalgo.getter();
  sub_100006CD0(&qword_1000A3FC0, &qword_1000A3FB8, &qword_100080F10, &protocol conformance descriptor for [A]);
  Promise<A>.filter(on:closure:)();

  sub_1000304B0();
  v54 = swift_allocObject();
  *(v54 + 16) = v49;
  sub_10002FEA4();
  v55 = swift_allocObject();
  *(v55 + 16) = sub_10002B5F4;
  *(v55 + 24) = v54;

  v56 = zalgo.getter();
  sub_100003020(&qword_1000A3538, &qword_100080EF0);
  Promise<A>.compactMap<A>(on:closure:)();

  v57 = zalgo.getter();
  sub_100003020(&qword_1000A3FC8, &qword_100080F18);
  Promise.then<A>(on:closure:)();

  v58 = static OS_dispatch_queue.notifications.getter();
  sub_100003020(&qword_1000A34C0, &qword_1000804D0);
  sub_100006CD0(&qword_1000A3FD0, &qword_1000A3FC8, &qword_100080F18, &protocol conformance descriptor for [A]);
  sub_100006CD0(&qword_1000A34D0, &qword_1000A34C0, &qword_1000804D0, &protocol conformance descriptor for [A]);
  v59 = Promise<A>.flatMap<A>(on:closure:)();

  sub_10000E904(v70, &qword_1000A3FA8, &qword_100080F00);
  return v59;
}