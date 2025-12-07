int main(int argc, const char **argv, const char **envp)
{
  v3 = static CommandLine.argc.getter();
  v4 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for Application();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for AppDelegate();
  v7 = swift_getObjCClassFromMetadata();
  v8 = NSStringFromClass(v7);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v3, v4, v6, v8);

  return 0;
}

id sub_10000299C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC9StocksApp11AppDelegate_mainScene] = 0;
  *&v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager] = 0;
  *&v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container] = 0;
  v4 = &v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___resolver];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker] = 0;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100002AF4(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  ObjectType = swift_getObjectType();
  v47 = type metadata accessor for StartupTaskExecutionPhase();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for EventTriggerBehavior();
  v53 = *(v57 - 8);
  v54 = v57 - 8;
  v55 = v53;
  __chkstk_darwin(v57 - 8);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Container.Environment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10003EDF0;
  v48 = v2;
  sub_100003FC8();
  ContainerManager.containerEnvironment.getter();

  sub_10000402C(&qword_10004F0A8, 255, &type metadata accessor for Container.Environment, &protocol conformance descriptor for Container.Environment);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_1000056B0();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Application will finish launching with container environment=%{public}@", 71, 2, &_mh_execute_header, v19, v20, v15);

  type metadata accessor for Logging();
  static Settings.NewsFeedModule.Layout.enableLogDebugging.getter();
  sub_10000402C(&qword_10004EF58, v21, type metadata accessor for AppDelegate, &unk_10003EE80);
  Configurable.setting<A>(_:)();

  static Logging.debuggingEnabled.setter();
  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.global(qualityOfService:)();
  v61 = sub_10000604C;
  v62 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C54;
  v60 = &unk_10004AD38;
  v23 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v58[0] = &_swiftEmptyArrayStorage;
  sub_10000402C(&qword_10004F0B8, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000057AC(0, &qword_10004F0C0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100005810(&qword_10004F0C8, &qword_10004F0C0, &type metadata accessor for DispatchWorkItemFlags);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v52 + 8))(v7, v5);
  v24 = (*(v50 + 8))(v10, v51);
  v25 = v48;
  sub_100005874(v24, v26);
  [objc_opt_self() pushHighPriorityTaskInFlight];
  type metadata accessor for Tracker();
  static Tracker.appEventManager.getter();
  sub_1000057AC(0, &qword_10004F0D0, &type metadata accessor for AppEvent, &type metadata accessor for _ContiguousArrayStorage);
  v27 = type metadata accessor for AppEvent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10003EE00;
  v32 = v31 + v30;
  v33 = *(v28 + 104);
  v33(v32, enum case for AppEvent.stockListDidLoad(_:), v27);
  v33(v32 + v29, enum case for AppEvent.forYouFeedDidLoad(_:), v27);
  sub_100005C98(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000057AC(0, &qword_10004F0D8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for _ContiguousArrayStorage);
  v34 = v55;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_10003EE10;
  static EventTriggerBehavior.onlyOnce.getter();
  static EventTriggerBehavior.eager.getter();
  static EventTriggerBehavior.all.getter();
  aBlock[0] = v35;
  sub_10000402C(&qword_10004F0E0, 255, &type metadata accessor for EventTriggerBehavior, &protocol conformance descriptor for EventTriggerBehavior);
  sub_1000057AC(0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
  sub_100005810(&qword_10004F0F0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior);
  v37 = v56;
  v36 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(swift_allocObject() + 16) = v25;
  v25;
  dispatch thunk of EventManager.trigger(on:behavior:block:)();

  (*(v34 + 8))(v37, v36);
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v60);
  type metadata accessor for AppSessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_10000461C(aBlock);
  AppSessionManager.startAppSession()();
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v60);
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_10000461C(aBlock);
  if (v44)
  {
    Dictionary<>.applicationStateLaunchOptions.getter();
  }

  v39 = v46;
  v40 = v45;
  v41 = v47;
  (*(v46 + 104))(v45, enum case for StartupTaskExecutionPhase.willFinishLaunching(_:), v47);
  StartupTaskManager.startAllTasks(launchOptions:phase:)();

  (*(v39 + 8))(v40, v41);
  sub_100006098(aBlock);
  sub_1000045D8(aBlock, v60);
  sub_1000036DC(0, &qword_10004F0F8, &protocol descriptor for ComputeServiceUnloaderServiceType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v58[3])
  {
    sub_100006248(v58, &qword_10004F100, &qword_10004F0F8, &protocol descriptor for ComputeServiceUnloaderServiceType);
    sub_10000461C(aBlock);
    sub_10000557C(0, &qword_10004F108, UINavigationBar_ptr);
    v42 = [swift_getObjCClassFromMetadata() appearance];
    v43 = [objc_allocWithZone(UIImage) init];
    [v42 setShadowImage:v43];

    return 1;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100003670(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000036DC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000036DC(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003738()
{
  sub_100003670(0, &qword_10004EF60, &qword_10004EF68, &protocol descriptor for BundleAssemblyType, &type metadata accessor for _ContiguousArrayStorage);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10003EDD0;
  v1 = type metadata accessor for FrameworkAssembly();
  swift_allocObject();
  v2 = FrameworkAssembly.init()();
  *(v0 + 56) = v1;
  *(v0 + 64) = sub_10000402C(&qword_10004EF70, 255, &type metadata accessor for FrameworkAssembly, &protocol conformance descriptor for FrameworkAssembly);
  *(v0 + 32) = v2;
  v3 = type metadata accessor for FrameworkAssembly();
  v4 = [objc_allocWithZone(v3) init];
  *(v0 + 96) = v3;
  *(v0 + 104) = &protocol witness table for FrameworkAssembly;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for FrameworkAssembly();
  v6 = [objc_allocWithZone(v5) init];
  *(v0 + 136) = v5;
  *(v0 + 144) = sub_10000402C(&qword_10004EF78, 255, &type metadata accessor for FrameworkAssembly, &protocol conformance descriptor for FrameworkAssembly);
  *(v0 + 112) = v6;
  [objc_allocWithZone(SXSwiftFrameWorkAssembly) init];
  v7 = type metadata accessor for BridgedBundleAssembly();
  swift_allocObject();
  v8 = BridgedBundleAssembly.init(_:)();
  *(v0 + 176) = v7;
  *(v0 + 184) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 152) = v8;
  [objc_allocWithZone(NUSwiftApplicationFrameworkAssembly) init];
  swift_allocObject();
  v9 = BridgedBundleAssembly.init(_:)();
  *(v0 + 216) = v7;
  *(v0 + 224) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 192) = v9;
  [objc_allocWithZone(SNAssembly) init];
  swift_allocObject();
  v10 = BridgedBundleAssembly.init(_:)();
  *(v0 + 256) = v7;
  *(v0 + 264) = &protocol witness table for BridgedBundleAssembly;
  *(v0 + 232) = v10;
  v11 = type metadata accessor for Assembly();
  v12 = [objc_allocWithZone(v11) init];
  *(v0 + 296) = v11;
  *(v0 + 304) = sub_10000402C(&qword_10004EF80, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 272) = v12;
  v13 = type metadata accessor for Assembly();
  v14 = [objc_allocWithZone(v13) init];
  *(v0 + 336) = v13;
  *(v0 + 344) = sub_10000402C(&qword_10004EF88, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 312) = v14;
  v15 = type metadata accessor for Assembly();
  v16 = [objc_allocWithZone(v15) init];
  *(v0 + 376) = v15;
  *(v0 + 384) = sub_10000402C(&qword_10004EF90, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 352) = v16;
  v17 = type metadata accessor for Assembly();
  v18 = [objc_allocWithZone(v17) init];
  *(v0 + 416) = v17;
  *(v0 + 424) = sub_10000402C(&qword_10004EF98, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 392) = v18;
  v19 = type metadata accessor for Assembly();
  v20 = [objc_allocWithZone(v19) init];
  *(v0 + 456) = v19;
  *(v0 + 464) = sub_10000402C(&qword_10004EFA0, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 432) = v20;
  v21 = type metadata accessor for Assembly();
  v22 = [objc_allocWithZone(v21) init];
  *(v0 + 496) = v21;
  *(v0 + 504) = sub_10000402C(&qword_10004EFA8, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 472) = v22;
  v23 = type metadata accessor for Assembly();
  v24 = [objc_allocWithZone(v23) init];
  *(v0 + 536) = v23;
  *(v0 + 544) = sub_10000402C(&qword_10004EFB0, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 512) = v24;
  v25 = type metadata accessor for Assembly();
  swift_allocObject();
  v26 = Assembly.init()();
  *(v0 + 576) = v25;
  *(v0 + 584) = sub_10000402C(&qword_10004EFB8, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 552) = v26;
  v27 = type metadata accessor for Assembly();
  swift_allocObject();
  v28 = Assembly.init()();
  *(v0 + 616) = v27;
  *(v0 + 624) = sub_10000402C(&qword_10004EFC0, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 592) = v28;
  v29 = type metadata accessor for Assembly();
  swift_allocObject();
  v30 = Assembly.init()();
  *(v0 + 656) = v29;
  *(v0 + 664) = sub_10000402C(&qword_10004EFC8, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 632) = v30;
  v31 = type metadata accessor for Assembly();
  swift_allocObject();
  v32 = Assembly.init()();
  *(v0 + 696) = v31;
  *(v0 + 704) = sub_10000402C(&qword_10004EFD0, 255, &type metadata accessor for Assembly, &protocol conformance descriptor for Assembly);
  *(v0 + 672) = v32;
  sub_100003670(0, &qword_10004EFD8, &qword_10004EFE0, &protocol descriptor for AssemblyType, &type metadata accessor for _ContiguousArrayStorage);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10003EDE0;
  v34 = type metadata accessor for ActivityAssembly();
  v35 = swift_allocObject();
  *(v33 + 56) = v34;
  *(v33 + 64) = sub_10000402C(&qword_10004EFE8, 255, type metadata accessor for ActivityAssembly, &unk_10003F3F4);
  *(v33 + 32) = v35;
  v36 = type metadata accessor for DebugAssembly();
  v37 = swift_allocObject();
  *(v33 + 96) = v36;
  *(v33 + 104) = sub_10000402C(&qword_10004EFF0, 255, type metadata accessor for DebugAssembly, &unk_10003F4C8);
  *(v33 + 72) = v37;
  v38 = type metadata accessor for ManagerAssembly();
  v39 = swift_allocObject();
  *(v33 + 136) = v38;
  *(v33 + 144) = sub_10000402C(&qword_10004EFF8, 255, type metadata accessor for ManagerAssembly, &unk_10003F54C);
  *(v33 + 112) = v39;
  v40 = type metadata accessor for SettingsAssembly();
  v41 = swift_allocObject();
  *(v33 + 176) = v40;
  *(v33 + 184) = sub_10000402C(&unk_10004F000, 255, type metadata accessor for SettingsAssembly, &unk_10003FA84);
  *(v33 + 152) = v41;
  type metadata accessor for SingletonPool();
  swift_allocObject();
  SingletonPool.init()();
  type metadata accessor for ContainerManager();
  swift_allocObject();
  return ContainerManager.init(singletonPool:bundleAssemblies:assemblies:)();
}

uint64_t sub_100003FC8()
{
  v1 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___containerManager);
  }

  else
  {
    v2 = sub_100003738();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10000402C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004104()
{
  v0 = type metadata accessor for CallbackScope();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v13 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Scope();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  sub_100004488(0, &qword_10004F6D8, &protocol descriptor for StocksUserActivityIntentSerializerType);
  RegistrationContainer.register<A>(_:name:factory:)();

  v6 = enum case for Scope.singleton(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Scope.singleton(_:), v2);
  Definition.inScope(_:)();

  v8 = *(v3 + 8);
  v8(v5, v2);
  ProxyContainer.public.getter();
  sub_100004488(0, &qword_10004F6E0, &protocol descriptor for StocksUserActivityIntentDeserializerType);
  RegistrationContainer.register<A>(_:name:factory:)();

  v7(v5, v6, v2);
  Definition.inScope(_:)();

  v8(v5, v2);
  ProxyContainer.private.getter();
  type metadata accessor for AppIntentsDependencyStartupTask(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.callback.getter();
  sub_1000045D8(v16, v16[3]);
  type metadata accessor for StartupTaskManager();
  v10 = v13;
  v9 = v14;
  v11 = v15;
  (*(v14 + 104))(v13, enum case for CallbackScope.any(_:), v15);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  (*(v9 + 8))(v10, v11);
  return sub_10000461C(v16);
}

uint64_t sub_100004488(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for AppIntentsDependencyStartupTask(uint64_t a1)
{
  result = qword_10004F3A8;
  if (!qword_10004F3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004530(uint64_t a1)
{
  result = type metadata accessor for StartupTaskExecutionPhase();
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

void *sub_1000045D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000461C(void *a1)
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

uint64_t sub_100004668()
{
  v0 = type metadata accessor for CallbackScope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.callback.getter();
  sub_1000045D8(v6, v6[3]);
  type metadata accessor for DebugDataSource();
  (*(v1 + 104))(v3, enum case for CallbackScope.any(_:), v0);

  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();

  (*(v1 + 8))(v3, v0);
  return sub_10000461C(v6);
}

uint64_t sub_1000047D8(uint64_t a1)
{
  v39 = a1;
  v1 = type metadata accessor for Container.TestSuite();
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Scope();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v31 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CallbackScope();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.callback.getter();
  sub_1000045D8(v41, v42);
  sub_1000036DC(0, &qword_10004F9A8, &protocol descriptor for WatchlistManagerType, 1);
  v9 = enum case for CallbackScope.any(_:);
  v33 = *(v6 + 104);
  LODWORD(v32) = enum case for CallbackScope.any(_:);
  v33(v8, enum case for CallbackScope.any(_:), v5);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v10 = *(v6 + 8);
  v40 = (v6 + 8);
  v10(v8, v5);
  sub_10000461C(v41);
  ProxyContainer.callback.getter();
  sub_1000045D8(v41, v42);
  sub_1000036DC(0, &qword_10004F9B0, &protocol descriptor for StockPriceDataManagerType, 1);
  v11 = v9;
  v12 = v33;
  v33(v8, v11, v5);
  v30[2] = v6 + 104;
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v10(v8, v5);
  sub_10000461C(v41);
  ProxyContainer.callback.getter();
  v30[1] = v43;
  sub_1000045D8(v41, v42);
  sub_1000036DC(0, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType, 1);
  v13 = v32;
  v12(v8, v32, v5);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v10(v8, v5);
  sub_10000461C(v41);
  ProxyContainer.callback.getter();
  sub_1000045D8(v41, v42);
  sub_1000052EC(0, &qword_10004F9C0, &protocolRef_TSAppMonitorType);
  v12(v8, v13, v5);
  dispatch thunk of CallbackRegistrationType.whenResolving<A>(_:scope:callback:)();
  v10(v8, v5);
  sub_10000461C(v41);
  ProxyContainer.public.getter();
  sub_1000036DC(0, &qword_10004F9C8, &protocol descriptor for AppIntentExecutionTypeProviderType, 1);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000036DC(0, &qword_10004F9D0, &protocol descriptor for SceneProviderType, 1);
  RegistrationContainer.register<A>(_:name:factory:)();

  v14 = enum case for Scope.containerSingleton(_:);
  v16 = v34;
  v15 = v35;
  v17 = (v34 + 104);
  v18 = *(v34 + 104);
  v19 = v31;
  v18(v31, enum case for Scope.containerSingleton(_:), v35);
  Definition.inScope(_:)();

  v40 = *(v16 + 8);
  v40(v19, v15);
  ProxyContainer.public.getter();
  type metadata accessor for Database.CacheSize();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.public.getter();
  sub_1000052EC(0, &qword_10004F9D8, &protocolRef_TUStateRestoreControllerType);
  RegistrationContainer.register<A>(_:name:factory:)();

  v18(v19, v14, v15);
  Definition.inScope(_:)();

  v20 = v40;
  v40(v19, v15);
  ProxyContainer.public.getter();
  type metadata accessor for SceneStateManagerBridge();
  RegistrationContainer.register<A>(_:name:factory:)();

  v21 = enum case for Scope.singleton(_:);
  v18(v19, enum case for Scope.singleton(_:), v15);
  v32 = v18;
  v33 = v17;
  Definition.inScope(_:)();

  v20(v19, v15);
  ProxyContainer.public.getter();
  type metadata accessor for PrivateDataPollingManager();
  RegistrationContainer.register<A>(_:name:factory:)();

  v18(v19, v21, v15);
  Definition.inScope(_:)();

  v20(v19, v15);
  ProxyContainer.public.getter();
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  type metadata accessor for AppActivationURLHandler();
  RegistrationContainer.register<A>(_:name:factory:)();

  ProxyContainer.private.getter();
  sub_1000036DC(0, &qword_10004F9E8, &protocol descriptor for GizmoSyncManagerType, 0);
  RegistrationContainer.register<A>(_:name:factory:)();

  v23 = v36;
  v22 = v37;
  v24 = v38;
  (*(v37 + 104))(v36, enum case for Container.TestSuite.performance(_:), v38);
  Definition.whenTesting(_:_:)();

  (*(v22 + 8))(v23, v24);
  v25 = v15;
  v26 = v15;
  v27 = v32;
  v32(v19, v21, v26);
  Definition.inScope(_:)();

  v28 = v40;
  v40(v19, v25);
  ProxyContainer.private.getter();
  type metadata accessor for WidgetContentInvalidationManager(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  v27(v19, v21, v25);
  Definition.inScope(_:)();

  v28(v19, v25);
  ProxyContainer.private.getter();
  type metadata accessor for StocksTodayAgent(0);
  RegistrationContainer.register<A>(_:name:factory:)();

  v27(v19, v21, v25);
  Definition.inScope(_:)();

  v28(v19, v25);
  ProxyContainer.private.getter();
  sub_10000557C(0, &qword_10004F9F0, FCFileCoordinatedTodayDropbox_ptr);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1000052EC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContentInvalidationManager(uint64_t a1)
{
  result = qword_10004FBF0;
  if (!qword_10004FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000053BC(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t type metadata accessor for StocksTodayAgent(uint64_t a1)
{
  result = qword_1000506B8;
  if (!qword_1000506B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000054B8(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10000557C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_1000055C4(uint64_t a1)
{
  ProxyContainer.public.getter();
  sub_100005650(0, &qword_100050468, &type metadata accessor for Array);
  RegistrationContainer.register<A>(_:name:factory:)();
}

void sub_100005650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Group();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1000056B0()
{
  result = qword_100050030;
  if (!qword_100050030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050030);
  }

  return result;
}

uint64_t sub_100005704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:)(a1, a2, ObjectType, a6);
}

uint64_t sub_10000576C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000577C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000578C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000579C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000057AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100005810(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1000057AC(255, a2, a3, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100005874(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    if (qword_10004EA68 != -1)
    {
      swift_once();
    }

    sub_10000402C(&qword_10004EF58, v2, type metadata accessor for AppDelegate, &unk_10003EE80);
    Configurable.setting<A>(_:)();
    if (LOBYTE(v6[0]) == 1)
    {
      LOBYTE(v6[0]) = 0;
      sub_10000402C(&qword_10004F128, v3, type metadata accessor for AppDelegate, &unk_10003EE40);
      Updatable.save<A>(setting:value:)();
      sub_100006098(v6);
      sub_1000045D8(v6, v6[3]);
      type metadata accessor for DebugCacheRegistry();
      if (dispatch thunk of ResolverType.resolve<A>(_:)())
      {
        DebugCacheRegistry.clearCache()();

        sub_10000461C(v6);
        v4 = [objc_opt_self() defaultCenter];
        v5 = static NSNotificationName.stocksDidClearSharedCache.getter();
        [v4 postNotificationName:v5 object:0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100005A48()
{
  v0 = type metadata accessor for Access();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Domain();
  __chkstk_darwin(v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for Domain.standard(_:));
  (*(v1 + 104))(v3, enum case for Access.public(_:), v0);
  v8[15] = 0;
  sub_100005BFC();
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  static Settings.Debug.clearCacheOnNextLaunch = result;
  return result;
}

void sub_100005BFC()
{
  if (!qword_10004F518[0])
  {
    v0 = type metadata accessor for Setting();
    if (!v1)
    {
      atomic_store(v0, qword_10004F518);
    }
  }
}

uint64_t sub_100005C54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_100005C98(uint64_t a1)
{
  v2 = type metadata accessor for AppEvent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100005FB4(0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_10000402C(&qword_10004F118, 255, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppEvent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_10000402C(&qword_10004F120, 255, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppEvent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100005FB4(uint64_t a1)
{
  if (!qword_10004F110)
  {
    type metadata accessor for AppEvent();
    sub_10000402C(&qword_10004F118, 255, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppEvent);
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F110);
    }
  }
}

uint64_t sub_10000604C()
{
  static Account.storefrontID.getter();
}

uint64_t sub_100006098@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___resolver;
  swift_beginAccess();
  sub_1000061B8(v1 + v3, &v5);
  if (v6)
  {
    return sub_1000061A0(&v5, a1);
  }

  sub_100006248(&v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  sub_100006328();
  Container.resolver.getter();

  sub_100006580(a1, &v5);
  swift_beginAccess();
  sub_100006478(&v5, v1 + v3, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  return swift_endAccess();
}

uint64_t sub_1000061A0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000061B8(uint64_t a1, uint64_t a2)
{
  sub_100003670(0, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006248(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_100003670(0, a2, a3, a4, &type metadata accessor for Optional);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1000062B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_10000B348(0, a2, a3, a4, &type metadata accessor for Optional);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_100006328()
{
  v1 = type metadata accessor for ContainerScope();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___container);
  }

  else
  {
    v7 = v0;
    sub_100003FC8();
    (*(v2 + 104))(v4, enum case for ContainerScope.application(_:), v1);
    v6 = ContainerManager.container(for:)();

    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_100006478(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_100003670(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t sub_1000064FC(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_10000B348(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t sub_100006580(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000065E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SceneProvider();
  swift_allocObject();
  result = SceneProvider.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for SceneProvider;
  *a1 = result;
  return result;
}

void *sub_10000663C(void *a1, void *a2)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000045D8(a2, a2[3]);
  sub_1000036DC(0, &qword_10004F9E8, &protocol descriptor for GizmoSyncManagerType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    dispatch thunk of WatchlistManagerType.addObserver(_:)();
    swift_unknownObjectRelease();
    sub_1000045D8(a2, a2[3]);
    type metadata accessor for WidgetContentInvalidationManager(0);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_100006820(&qword_10004FB98, type metadata accessor for WidgetContentInvalidationManager, &unk_10003F690);
      dispatch thunk of WatchlistManagerType.addObserver(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000678C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for StubGizmoSyncManager();
  v2 = swift_allocObject();
  result = sub_100006820(&qword_10004FAC8, type metadata accessor for StubGizmoSyncManager, &unk_10003F998);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_100006820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006868(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000068B0(uint64_t a1, uint64_t a2)
{
  result = sub_100006868(&qword_100050300, a2, type metadata accessor for StubGizmoSyncManager, &unk_10003F968);
  *(a1 + 8) = result;
  return result;
}

void *sub_100006908(void *a1)
{
  sub_1000045D8(a1, a1[3]);
  sub_100006A3C(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004F9A8, &protocol descriptor for WatchlistManagerType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v6[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000045D8(a1, a1[3]);
  type metadata accessor for StocksTodayAgent(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5 = *(result + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_didWriteTodayDataSubject);

    type metadata accessor for WidgetContentInvalidationManager(0);
    swift_allocObject();
    return sub_1000071EC(v3, v6, v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100006A3C(uint64_t a1)
{
  if (!qword_10004FA10)
  {
    type metadata accessor for AppEvent();
    sub_100006820(&qword_10004F118, &type metadata accessor for AppEvent, &protocol conformance descriptor for AppEvent);
    v1 = type metadata accessor for EventManager();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA10);
    }
  }
}

uint64_t sub_100006AD0(uint64_t a1)
{
  type metadata accessor for MainActor();
  v3[2] = a1;
  return sub_100006B44(sub_100006EE4, v3, "StocksApp/ManagerAssembly.swift", 31, 2, 132);
}

uint64_t sub_100006B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_100006D0C(v17);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v17[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v14._object = 0x800000010003CC00;
  v14._countAndFlagsBits = 0xD00000000000003FLL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 46;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_100006D0C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_100006D50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &unk_10004F9F8, FCPurchaseController_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  sub_1000045D8(a1, a1[3]);
  sub_1000052EC(0, &qword_10004F490, &protocolRef_FCBundleSubscriptionManagerType);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_10004FA08, FCSubscriptionController_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_10004F9F0, FCFileCoordinatedTodayDropbox_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(type metadata accessor for StocksTodayAgent(0));
    result = sub_100006F00(v5, v6, v7, v8);
    *a2 = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_100006F00(void *a1, void *a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_didWriteTodayDataSubject;
  sub_100007184(0, &qword_10004FA28, &type metadata for () + 8, &type metadata accessor for PassthroughSubject);
  swift_allocObject();
  *&v4[v10] = PassthroughSubject.init()();
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler] = 0;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_purchaseController] = a1;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_bundleSubscriptionManager] = a2;
  *&v4[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_dropbox] = a4;
  v26.receiver = v4;
  v26.super_class = ObjectType;
  v11 = a1;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v26, "init");
  v14 = objc_allocWithZone(FCBoostableOperationThrottler);
  v15 = v13;
  v16 = [v14 initWithDelegate:{v15, v26.receiver, v26.super_class}];
  v17 = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler;
  v18 = *&v15[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler];
  *&v15[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler] = v16;

  v19 = [objc_opt_self() defaultCenter];
  [v19 addObserver:v15 selector:"markPurchaseDirty" name:FCPurchaseListChangedNotificationName object:0];

  result = [a2 addObserver:v15];
  v21 = *&v15[v17];
  if (v21)
  {
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 sharedApplication];
    v25 = [v24 applicationState];

    [v23 setSuspended:v25 == 0];
    swift_unknownObjectRelease();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100007184(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void *, void *))
{
  if (!*a2)
  {
    v5 = a4(0, a3, &type metadata for Never, &protocol witness table for Never);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1000071EC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v67 = a3;
  v90 = a1;
  v75 = *v4;
  v89 = type metadata accessor for EventTriggerBehavior();
  v85 = *(v89 - 8);
  v86 = v89 - 8;
  v87 = v85;
  __chkstk_darwin(v89 - 8);
  v88 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEvent();
  v83 = *(v8 - 8);
  v84 = v8;
  __chkstk_darwin(v8);
  v82 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewsEnvironment();
  v80 = *(v10 - 8);
  v81 = v10;
  __chkstk_darwin(v10);
  v79 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsProvider();
  v77 = *(v12 - 8);
  v78 = v12;
  __chkstk_darwin(v12);
  v74 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FeatureState();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F0(0);
  v69 = v15;
  v70 = *(v15 - 8);
  __chkstk_darwin(v15);
  v68 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008398(0, &qword_10004FA48, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  __chkstk_darwin(v17 - 8);
  v63 = &v56 - v18;
  sub_1000084F8(0);
  v20 = v19;
  v21 = *(v19 - 8);
  __chkstk_darwin(v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000858C(0);
  v59 = v24;
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008638(0);
  v61 = v28;
  v62 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000086CC(0);
  v65 = v31;
  v66 = *(v31 - 8);
  __chkstk_darwin(v31);
  v60 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = a3;
  static Logger.widgetRefresh.getter();
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) = 0;
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = 2;
  v64 = OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_cancellables;
  *(v4 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_cancellables) = &_swiftEmptySetSingleton;
  v76 = a2;
  sub_1000045D8(a2, a2[3]);
  WatchlistManagerType.activeWatchlistChanges.getter();
  swift_getKeyPath();
  sub_100006820(&qword_10004FA80, sub_1000084F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  Publisher.map<A>(_:)();

  (*(v21 + 8))(v23, v20);
  sub_100006820(&qword_10004FA90, sub_10000858C, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_100006820(&qword_10004FAA8, &type metadata accessor for PriceChangeDisplay, &protocol conformance descriptor for PriceChangeDisplay);
  v33 = v59;
  Publisher<>.removeDuplicates()();
  (*(v25 + 8))(v27, v33);
  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v34 = static OS_dispatch_queue.main.getter();
  v91 = v34;
  v35 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v36 = *(v35 - 8);
  v57 = *(v36 + 56);
  v58 = v36 + 56;
  v37 = v63;
  v57(v63, 1, 1, v35);
  sub_100006820(&qword_10004FAA0, sub_100008638, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v59 = sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v38 = v60;
  v39 = v61;
  Publisher.receive<A>(on:options:)();
  v40 = v37;
  sub_1000087CC(v37);
  v62[1](v30, v39);

  swift_allocObject();
  swift_weakInit();
  v62 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100006820(&qword_10004FAB0, sub_1000086CC, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v41 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v66 + 8))(v38, v41);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v42 = static OS_dispatch_queue.main.getter();
  v91 = v42;
  v57(v40, 1, 1, v35);
  sub_1000082F0();
  sub_100006820(&qword_10004FA38, sub_1000082F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v43 = v68;
  Publisher.receive<A>(on:options:)();
  sub_1000087CC(v40);

  swift_allocObject();
  swift_weakInit();
  sub_100006820(&qword_10004FAB8, sub_1000081F0, v62);
  v44 = v69;
  Publisher<>.sink(receiveValue:)();

  (*(v70 + 8))(v43, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  static Settings.UserPreferences.showCurrency.getter();
  swift_allocObject();
  swift_weakInit();
  sub_100006820(&qword_10004FAC0, type metadata accessor for WidgetContentInvalidationManager, &unk_10003F6E8);
  Configurable.setting<A>(_:_:)();

  static Settings.Features.showYahooNewsAttribution.getter();
  swift_allocObject();
  swift_weakInit();
  v45 = v71;
  Configurable.setting<A>(_:_:)();

  (*(v72 + 8))(v45, v73);
  static Settings.News.newsProvider.getter();
  swift_allocObject();
  swift_weakInit();
  v46 = v74;
  Configurable.setting<A>(_:_:)();

  (*(v77 + 8))(v46, v78);
  static Settings.News.appleNewsEnvironment.getter();
  swift_allocObject();
  swift_weakInit();
  v47 = v79;
  Configurable.setting<A>(_:_:)();

  (*(v80 + 8))(v47, v81);
  v49 = v82;
  v48 = v83;
  v50 = v84;
  (*(v83 + 104))(v82, enum case for AppEvent.stockListDidLoad(_:), v84);
  sub_100008398(0, &qword_10004F0D8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for _ContiguousArrayStorage);
  v51 = v87;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10003EE00;
  static EventTriggerBehavior.eager.getter();
  static EventTriggerBehavior.onlyOnce.getter();
  v91 = v52;
  sub_100006820(&qword_10004F0E0, &type metadata accessor for EventTriggerBehavior, &protocol conformance descriptor for EventTriggerBehavior);
  sub_100008398(0, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
  sub_1000088E8();
  v54 = v88;
  v53 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of EventManager.trigger(on:behavior:block:)();

  (*(v51 + 8))(v54, v53);
  (*(v48 + 8))(v49, v50);

  sub_10000461C(v76);
  return v4;
}

uint64_t sub_1000081B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000081F0(uint64_t a1)
{
  if (!qword_10004FA20)
  {
    sub_1000082F0();
    sub_10000557C(255, &qword_10004F0B0, OS_dispatch_queue_ptr);
    sub_100006820(&qword_10004FA38, sub_1000082F0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v1 = type metadata accessor for Publishers.ReceiveOn();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA20);
    }
  }
}

void sub_1000082F0()
{
  if (!qword_10004FA28)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FA28);
    }
  }
}

uint64_t sub_100008354(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000557C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100008398(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000083FC(uint64_t a1)
{
  if (!qword_10004FA58)
  {
    sub_100008490(255);
    sub_100006820(&qword_10004FA68, sub_100008490, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v1 = type metadata accessor for Publishers.Drop();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA58);
    }
  }
}

void sub_100008490(uint64_t a1)
{
  if (!qword_10004FA60)
  {
    type metadata accessor for Watchlist();
    v1 = type metadata accessor for CurrentValueSubject();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA60);
    }
  }
}

void sub_1000084F8(uint64_t a1)
{
  if (!qword_10004FA50)
  {
    sub_1000083FC(255);
    sub_100006820(&qword_10004FA70, sub_1000083FC, &protocol conformance descriptor for Publishers.Drop<A>);
    v1 = type metadata accessor for Publishers.RemoveDuplicates();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA50);
    }
  }
}

void sub_10000858C(uint64_t a1)
{
  if (!qword_10004FA78)
  {
    sub_1000084F8(255);
    type metadata accessor for PriceChangeDisplay();
    sub_100006820(&qword_10004FA80, sub_1000084F8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v1 = type metadata accessor for Publishers.MapKeyPath();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA78);
    }
  }
}

void sub_100008638(uint64_t a1)
{
  if (!qword_10004FA88)
  {
    sub_10000858C(255);
    sub_100006820(&qword_10004FA90, sub_10000858C, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
    v1 = type metadata accessor for Publishers.RemoveDuplicates();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA88);
    }
  }
}

void sub_1000086CC(uint64_t a1)
{
  if (!qword_10004FA98)
  {
    sub_100008638(255);
    sub_10000557C(255, &qword_10004F0B0, OS_dispatch_queue_ptr);
    sub_100006820(&qword_10004FAA0, sub_100008638, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    sub_100008354(&qword_10004FA40, &qword_10004F0B0, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v1 = type metadata accessor for Publishers.ReceiveOn();
    if (!v2)
    {
      atomic_store(v1, &qword_10004FA98);
    }
  }
}

uint64_t sub_1000087CC(uint64_t a1)
{
  sub_100008398(0, &qword_10004FA48, &type metadata accessor for OS_dispatch_queue.SchedulerOptions, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000088E8()
{
  result = qword_10004F0F0;
  if (!qword_10004F0F0)
  {
    sub_100008398(255, &qword_10004F0E8, &type metadata accessor for EventTriggerBehavior, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F0F0);
  }

  return result;
}

uint64_t sub_100008970@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppIntentExecutionTypeProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_100006820(&qword_10004FB68, type metadata accessor for AppIntentExecutionTypeProvider, &unk_10003F510);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_100008A18(void *a1, void *a2)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for WidgetContentInvalidationManager(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_100006820(&qword_10004FB90, type metadata accessor for WidgetContentInvalidationManager, &unk_10003F6C0);
    dispatch thunk of StockPriceDataManagerType.addWidgetObserver(_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008AF0(void *a1)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000052EC(0, &qword_10004FAF8, &protocolRef_FCAppActivityReceiver);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    type metadata accessor for SceneStateManagerBridge();
    swift_allocObject();
    return SceneStateManagerBridge.init(activityReceiver:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100008B78(void *a1, void *a2)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for PrivateDataPollingManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_100006820(&qword_10004FB78, type metadata accessor for PrivateDataPollingManager, &unk_10003F35C);
  dispatch thunk of SceneStateManagerType.add(monitor:)();

  sub_10000461C(v5);
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for WidgetContentInvalidationManager(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100006820(&qword_10004FB80, type metadata accessor for WidgetContentInvalidationManager, &unk_10003F628);
  dispatch thunk of SceneStateManagerType.add(monitor:)();

  sub_10000461C(v5);
  sub_1000045D8(a2, a2[3]);
  type metadata accessor for StocksTodayAgent(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    sub_100006820(&qword_10004FB88, type metadata accessor for StocksTodayAgent, &unk_10003FB50);
    dispatch thunk of SceneStateManagerType.add(monitor:)();

    return sub_10000461C(v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_100008D8C(void *a1)
{
  sub_1000045D8(a1, a1[3]);
  sub_1000036DC(0, &qword_10004FAF0, &protocol descriptor for PrivateDataPollingServiceType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    type metadata accessor for PrivateDataPollingManager();
    v2 = swift_allocObject();
    sub_1000061A0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008E2C(uint64_t a1, void *a2)
{
  sub_1000045D8(a2, a2[3]);
  v2 = type metadata accessor for AppIntentsDependencyStartupTask(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v4 = result;
    v5[3] = v2;
    v5[4] = sub_100008FD8(&qword_10004F6E8, type metadata accessor for AppIntentsDependencyStartupTask, &unk_10003F0D8);
    v5[0] = v4;
    StartupTaskManager.onStartup(run:)();
    return sub_10000461C(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008EF4(uint64_t a1)
{
  type metadata accessor for AppDependencyManager();
  v2 = static AppDependencyManager.shared.getter();
  sub_100006580(a1, v8);
  type metadata accessor for AppIntentsDependencyStartupTask(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v5 = enum case for StartupTaskExecutionPhase.didFinishLaunching(_:);
  v6 = type metadata accessor for StartupTaskExecutionPhase();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *(v3 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_appDependencyManager) = v2;
  sub_100008FD4(v8, v3 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver);
  return v3;
}

uint64_t sub_100008FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009020@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v5 = type metadata accessor for StartupTaskExecutionPhase();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10000916C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for StartupTaskExecutionPhase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10003EDF0;
  v11 = [a1 applicationState];
  if (!v11)
  {
    v12 = 0xE600000000000000;
    v13 = 0x657669746361;
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v12 = 0xE800000000000000;
    v13 = 0x6576697463616E69;
    goto LABEL_7;
  }

  if (v11 == 2)
  {
    v12 = 0xEA0000000000646ELL;
    v13 = 0x756F72676B636162;
LABEL_7:
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1000056B0();
    *(v10 + 32) = v13;
    *(v10 + 40) = v12;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v14 = static OS_os_log.default.getter();
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Application did finish launching with application state=%{public}@", 66, 2, &_mh_execute_header, v14, v15, v10);

    sub_100006098(v29);
    sub_1000045D8(v29, v30);
    type metadata accessor for StartupTaskManager();
    if (dispatch thunk of ResolverType.resolve<A>(_:)())
    {
      sub_10000461C(v29);
      if (a2)
      {
        Dictionary<>.applicationStateLaunchOptions.getter();
      }

      (*(v7 + 104))(v9, enum case for StartupTaskExecutionPhase.didFinishLaunching(_:), v6);
      StartupTaskManager.startAllTasks(launchOptions:phase:)();

      (*(v7 + 8))(v9, v6);
      sub_100006098(v29);
      sub_1000045D8(v29, v30);
      type metadata accessor for RemoteNotificationManager();
      if (dispatch thunk of ResolverType.resolve<A>(_:)())
      {
        sub_10000461C(v29);
        *(swift_allocObject() + 16) = a1;
        v16 = a1;
        RemoteNotificationManager.whenActive(block:)();

        sub_100006098(&v27);
        sub_1000045D8(&v27, v28);
        sub_1000036DC(0, &qword_10004F088, &protocol descriptor for ApplicationStateManagerType, 1);
        dispatch thunk of ResolverType.resolve<A>(_:)();
        if (v26)
        {
          sub_1000061A0(&v25, v29);
          sub_10000461C(&v27);
          sub_1000045D8(v29, v30);
          if (a2)
          {
            Dictionary<>.applicationStateLaunchOptions.getter();
          }

          dispatch thunk of ApplicationStateManagerType.applicationDidFinishLaunching(withOptions:)();

          sub_100006098(&v27);
          sub_1000045D8(&v27, v28);
          sub_10000A270();
          v17 = dispatch thunk of ResolverType.resolve<A>(_:)();
          if (v17)
          {
            v18 = v17;
            sub_10000461C(&v27);
            [v18 prepareForUseWithApplicationDelegate:v3];
            v19 = [objc_opt_self() sharedApplication];
            type metadata accessor for Application();
            v20 = swift_dynamicCastClass();
            if (!v20)
            {
              swift_unknownObjectRelease();

              goto LABEL_19;
            }

            sub_100006098(&v25);
            sub_1000045D8(&v25, v26);
            sub_1000036DC(0, &qword_10004FE20, &protocol descriptor for KeyboardInputMonitorType, 1);
            dispatch thunk of ResolverType.resolve<A>(_:)();
            if (v24)
            {
              swift_unknownObjectRelease();

              sub_1000061A0(&v23, &v27);
              sub_10000461C(&v25);
              sub_1000061A0(&v27, &v25);
              v21 = OBJC_IVAR____TtC9StocksApp11Application_keyboardInputMonitor;
              swift_beginAccess();
              sub_100006478(&v25, v20 + v21, &qword_10004F0A0, &qword_10004FE20, &protocol descriptor for KeyboardInputMonitorType);
              swift_endAccess();
LABEL_19:

              sub_10000461C(v29);
              return v20 != 0;
            }

            goto LABEL_24;
          }

LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100009760()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009798()
{

  AppDependencyManager.addStocksDependencies(using:)();

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F440, &protocol descriptor for CommandCenterType, 0);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F450, &protocol descriptor for HeadlineProviderFactoryType, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F458, &protocol descriptor for HeadlineServiceType, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F460, &protocol descriptor for NowPlayingPresenting, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F468, &protocol descriptor for ShareLinkProviderType, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_100009EE8(0, &unk_10004F470, &type metadata accessor for AnyNavigator);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_1000036DC(0, &qword_10004F480, &protocol descriptor for OpenArticleIntentNavigatorType, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  type metadata accessor for Tracker();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  AnyHashable.init<A>(_:)();
  sub_1000036DC(0, &qword_10004F488, &protocol descriptor for ArticleOptionsProviderType, 1);

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  AnyHashable.init<A>(_:)();

  AppDependencyManager.add<A>(key:dependency:)();

  sub_100009E18(&v4);
  sub_1000045D8((v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_100009FCC();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    *(swift_allocObject() + 16) = v2;
    swift_unknownObjectRetain();
    AppDependencyManager.add<A>(key:dependency:)();

    sub_100009E18(&v4);
    sub_100009E98(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    swift_allocObject();
    v3 = Promise.init(value:)();
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009DBC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009E18(uint64_t a1)
{
  sub_100009E98(0, &qword_10004F448, &type metadata for AnyHashable, &type metadata accessor for Optional);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009E98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100009EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StocksActivity();
    v7 = sub_100009F84(&unk_100050090, &type metadata accessor for StocksActivity, &protocol conformance descriptor for StocksActivity);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100009F84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100009FCC()
{
  result = qword_10004F490;
  if (!qword_10004F490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F490);
  }

  return result;
}

uint64_t sub_10000A088@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v9 = a1(0);
  v10 = swift_allocObject();
  a5[3] = v9;
  result = sub_100008FD8(a2, a3, a4);
  a5[4] = result;
  *a5 = v10;
  return result;
}

void *sub_10000A124(uint64_t a1, void *a2)
{
  type metadata accessor for AppMonitor();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1000045D8(a2, a2[3]);
    sub_1000036DC(0, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType, 1);
    swift_unknownObjectRetain();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v5)
    {
      sub_1000061A0(&v4, v6);
      sub_1000045D8(v6, v6[3]);
      sub_100006820(&qword_10004FB70, &type metadata accessor for AppMonitor, &protocol conformance descriptor for AppMonitor);
      swift_unknownObjectRetain();
      dispatch thunk of SceneStateManagerType.add(monitor:)();
      swift_unknownObjectRelease_n();
      sub_10000461C(&v4);
      return sub_10000461C(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_10000A270()
{
  result = qword_10004F090;
  if (!qword_10004F090)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F090);
  }

  return result;
}

uint64_t type metadata accessor for SceneDelegate(uint64_t a1)
{
  result = qword_10004FEE0;
  if (!qword_10004FEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000A320(uint64_t a1)
{
  sub_10000A458(319, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10000A458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10000A4BC(uint64_t a1)
{
  if (!qword_10004FF80[0])
  {
    type metadata accessor for URL();
    sub_10000A554(255, &qword_1000503B0, &type metadata for String, &type metadata accessor for Optional);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_10004FF80);
    }
  }
}

void sub_10000A554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_10000A5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[qword_10004FE30] = 0;
  v5 = &v2[qword_10004FE38];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v2[qword_10004FE40] = 0;
  *&v2[qword_10004FE48] = 0;
  *&v2[qword_10004FE50] = 0;
  *&v2[qword_10004FE58] = 0;
  v6 = &v2[qword_10004FE60];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *&v2[qword_10004FE68] = 0;
  v7 = &v2[qword_10004FE70];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *&v2[qword_10004FE78] = 0;
  *&v2[qword_10004FE80] = 0;
  *&v2[qword_10004FE88] = 0;
  v8 = &v2[qword_10004FE90];
  *v8 = 0;
  v8[1] = 0;
  v9 = qword_10004FE98;
  sub_10000A4BC(0);
  (*(*(v10 - 8) + 56))(&v3[v9], 1, 1, v10);
  v11 = qword_10004FEA0;
  v19 = 0;
  sub_10000A818(0);
  swift_allocObject();
  *&v3[v11] = StateMachine.init(state:)();
  v3[qword_10004FEA8] = 0;
  v12 = &v3[qword_10004FEB0];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v3[qword_10004FEB8];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  v14 = &v3[qword_10004FEC0];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v3[qword_10004FEC8];
  *v15 = 0;
  v15[1] = 0;
  *&v3[qword_10004FED0] = 0;
  v16 = qword_10004FED8;
  *&v3[v16] = sub_10000A87C(&_swiftEmptyArrayStorage);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

unint64_t sub_10000A7C4()
{
  result = qword_100050058;
  if (!qword_100050058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050058);
  }

  return result;
}

void sub_10000A818(uint64_t a1)
{
  if (!qword_100050050)
  {
    sub_10000A7C4();
    v1 = type metadata accessor for StateMachine();
    if (!v2)
    {
      atomic_store(v1, &qword_100050050);
    }
  }
}

unint64_t sub_10000A87C(uint64_t a1)
{
  sub_10000AA40(0);
  v3 = v2;
  v4 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100024E08(0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_10002B7C4(v10, v6, sub_10000AA40);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100029810(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      sub_10000A4BC(0);
      result = sub_100024738(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_10000AA40(uint64_t a1)
{
  if (!qword_1000503A0)
  {
    sub_10000A4BC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000503A0);
    }
  }
}

void sub_10000AAA8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_10000AB40(v8, v9, v10);
}

void sub_10000AB40(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for SceneConnectionOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  if (v12)
  {
    v82 = v9;
    v83 = v8;
    v81 = v13;
    v14 = swift_allocObject();
    v78 = xmmword_10003EDF0;
    *(v14 + 16) = xmmword_10003EDF0;
    v80 = a1;
    v15 = [a2 persistentIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v14 + 56) = &type metadata for String;
    v79 = sub_1000056B0();
    *(v14 + 64) = v79;
    *(v14 + 32) = v16;
    *(v14 + 40) = v18;
    v19 = sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v20 = static OS_os_log.default.getter();
    v21 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Application connecting to scene, sceneSession=%{public}@", 56, 2, &_mh_execute_header, v20, v21, v14);

    v22 = [a2 persistentIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = &v4[qword_10004FE90];
    *v26 = v23;
    v26[1] = v25;

    v27 = [objc_opt_self() sharedApplication];
    LODWORD(v23) = [v27 isRunningPerformanceTest];

    if (v23)
    {
      sub_10000B3B4(v85);
      sub_1000045D8(v85, v86);
      sub_10000557C(0, &qword_10004F038, SNTestRunner_ptr);
      v28 = dispatch thunk of ResolverType.resolve<A>(_:)();
      if (!v28)
      {
        goto LABEL_18;
      }

      v29 = v28;
      [v28 runExtendedLaunchTest];

      sub_10000461C(v85);
    }

    v77 = v19;
    v75 = v12;
    v30 = *&v4[qword_10004FE80];
    *&v4[qword_10004FE80] = a3;

    v31 = *&v4[qword_10004FE88];
    *&v4[qword_10004FE88] = a2;
    v76 = a3;
    v32 = a3;

    v33 = a2;
    sub_10000B720(v85);
    sub_1000045D8(v85, v86);
    UISceneConnectionOptions.connectionOptions.getter();
    dispatch thunk of SceneStateManagerType.sceneWillConnectToSession(withOptions:)();
    (*(v82 + 8))(v11, v83);
    sub_10000461C(v85);
    v34 = sub_10000BA84(a2);
    if (!v34)
    {
LABEL_8:
      v37 = v80;
      v38 = [v80 activationState];
      if (v38 < 2)
      {
        v39 = swift_allocObject();
        *(v39 + 16) = v78;
        v40 = [v33 persistentIdentifier];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        v44 = v79;
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v44;
        *(v39 + 32) = v41;
        *(v39 + 40) = v43;
        v45 = static OS_os_log.default.getter();
        v46 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Application scene bootstrapping due to not launching in background, sceneSession=%{public}@", 91, 2, &_mh_execute_header, v45, v46, v39);

        sub_10000D728(v75, v76);
LABEL_16:
        __chkstk_darwin(v47);
        firstly<A>(closure:)();
        v69 = swift_allocObject();
        v69[2] = v32;
        v69[3] = v4;
        v69[4] = v37;
        v70 = v37;
        v71 = v32;
        v72 = v4;
        v73 = zalgo.getter();
        Promise.then<A>(on:closure:)();

        return;
      }

      if (v38 == -1 || v38 == 2)
      {
        v61 = swift_allocObject();
        *(v61 + 16) = v78;
        v62 = [v33 persistentIdentifier];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = v79;
        *(v61 + 56) = &type metadata for String;
        *(v61 + 64) = v66;
        *(v61 + 32) = v63;
        *(v61 + 40) = v65;
        v67 = static OS_os_log.default.getter();
        v68 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Application scene deferring bootstrapping due to launching in background or unattached state, sceneSession=%{public}@", 117, 2, &_mh_execute_header, v67, v68, v61);

        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v35 = v34;
    sub_10000B3B4(v85);
    sub_1000045D8(v85, v86);
    sub_1000036DC(0, &unk_100050100, &protocol descriptor for ScrollRestorationManagerType, 0);
    dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v84)
    {
      sub_10000461C(v85);
      swift_getObjectType();
      v36 = v35;
      dispatch thunk of ScrollRestorationManagerType.userActivity.setter();

      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_10003EE00;
  v49 = [a2 persistentIdentifier];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  *(v48 + 56) = &type metadata for String;
  v53 = sub_1000056B0();
  *(v48 + 64) = v53;
  *(v48 + 32) = v50;
  *(v48 + 40) = v52;
  v54 = a1;
  v55 = [v54 description];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  *(v48 + 96) = &type metadata for String;
  *(v48 + 104) = v53;
  *(v48 + 72) = v56;
  *(v48 + 80) = v58;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v83 = static OS_os_log.default.getter();
  v59 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Application attempting to connect to unsupported scene type, sceneSession=%{public}@, scene=%@", 94, 2, &_mh_execute_header, v83, v59, v48);

  v60 = v83;
}

void sub_10000B348(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000036DC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10000B3B4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE38;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  if (v6)
  {
    return sub_1000061A0(&v5, a1);
  }

  sub_1000062B8(&v5, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  sub_10000B558();
  Container.resolver.getter();

  sub_100006580(a1, &v5);
  swift_beginAccess();
  sub_1000064FC(&v5, v1 + v3, &qword_10004F4B0, &unk_10004F020, &protocol descriptor for ResolverType);
  return swift_endAccess();
}

uint64_t sub_10000B4D4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_10000B348(0, a3, a4, a5, &type metadata accessor for Optional);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_10000B558()
{
  v1 = type metadata accessor for ContainerScope();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_10004FE30;
  if (*(v0 + qword_10004FE30))
  {
    goto LABEL_4;
  }

  v7 = v3;
  v8 = v0;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for AppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_100003FC8();
    (*(v2 + 104))(v5, enum case for ContainerScope.scene(_:), v7);
    v11 = ContainerManager.container(for:)();
    swift_unknownObjectRelease();

    (*(v2 + 8))(v5, v7);
    *(v8 + v6) = v11;

LABEL_4:

    return;
  }

  __break(1u);
}

void *sub_10000B720@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FEB8;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &unk_100050060, &qword_10004F9B8, &protocol descriptor for SceneStateManagerType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000B8C0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return SceneStateMonitor.sceneWillConnectToSession(withOptions:)(a1, ObjectType);
}

void *sub_10000B910@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10004FE70;
  swift_beginAccess();
  sub_10000B4D4(v1 + v3, &v7, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
  if (v8)
  {
    return sub_1000061A0(&v7, a1);
  }

  sub_1000062B8(&v7, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
  sub_10000B3B4(&v7);
  sub_1000045D8(&v7, v8);
  sub_1000036DC(0, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType, 1);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    sub_1000061A0(&v5, a1);
    sub_10000461C(&v7);
    sub_100006580(a1, &v7);
    swift_beginAccess();
    sub_1000064FC(&v7, v1 + v3, &qword_1000500E8, &qword_1000500F0, &protocol descriptor for WelcomeFlowProviderType);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000BA84(void *a1)
{
  v2 = v1;
  sub_10000B910(&v13);
  sub_1000045D8(&v13, v14);
  v4 = dispatch thunk of WelcomeFlowProviderType.shouldShowWelcome()();
  sub_10000461C(&v13);
  if (v4)
  {
    return 0;
  }

  v5 = [sub_100020850() isStateRestorationFeatureEnabled];
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  if (![*(v2 + qword_10004FE58) isStateRestorationAllowed] || a1 == 0)
  {
    return 0;
  }

  v7 = a1;
  v8 = [v7 stateRestorationActivity];
  v9 = v8;
  sub_10002090C(&v13);
  sub_1000254D4(&v13, v14);
  dispatch thunk of StateRestorationActivityProvider.stateRestorationActivity.setter();

  sub_1000061A0(&v13, v12);
  v10 = qword_10004FE60;
  swift_beginAccess();
  sub_1000064FC(v12, v2 + v10, &qword_100050008, &unk_100050010, &protocol descriptor for StateRestorationActivityProvider);
  swift_endAccess();
  return v8;
}

uint64_t sub_10000BBFC(void *a1)
{
  v2 = v1;
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4 - 8);
  v8 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = *&v1[qword_10004FE88];
  v12 = v11;
  v13 = sub_10000BA84(v11);

  if (v13)
  {
    sub_100020790(&qword_10004FE48, &type metadata accessor for StocksV2UserActivityDeserializer);
    StocksV2UserActivityDeserializer.deserialize(userActivity:)();

    v14 = CACurrentMediaTime();
    v41 = 1;
    sub_100025148(0);
    v37 = v5;
    swift_allocObject();
    StateMachineTransition.init(state:)();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    v38 = v13;
    v16 = a1;
    StateMachineTransition.didEnter(block:)();

    StateMachine.add(transition:)();

    v40 = 1;
    v17 = v10;
    swift_allocObject();
    StateMachineTransition.init(state:)();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v16;
    v19 = v16;
    StateMachineTransition.willExit(block:)();

    StateMachine.add(transition:)();

    sub_100020790(&qword_10004FE50, sub_10001C090);
    sub_100025240(v10, v8, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
    v20 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v21 = swift_allocObject();
    sub_1000252B4(v8, v21 + v20);
    *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
    v22 = v2;
    dispatch thunk of StackNavigator.onNavigationStart(closure:)();

    v39 = 0;
    v23 = StateMachine.fire(event:)();
    __chkstk_darwin(v23);
    *(&v37 - 2) = v22;
    sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    swift_allocObject();
    Promise.init(resolver:)();
    v24 = swift_allocObject();
    v25 = v38;
    *(v24 + 16) = v22;
    *(v24 + 24) = v25;
    v26 = v25;
    v27 = v22;
    v28 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    firstly<A>(closure:)();
    *(swift_allocObject() + 16) = v27;
    v29 = v27;
    v30 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
    v31 = static OS_dispatch_queue.main.getter();
    *(swift_allocObject() + 16) = v29;
    v32 = v29;
    v33 = Promise.error(on:closure:)();

    sub_10000F018(v17, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional, sub_10000A458);
    return v33;
  }

  else
  {
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v35 = static OS_os_log.default.getter();
    v36 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Skipping state restoration because there's no eligible activity", 63, 2, &_mh_execute_header, v35, v36, &_swiftEmptyArrayStorage);

    sub_10000A554(0, &qword_10004F498, &type metadata for () + 8, &type metadata accessor for Promise);
    swift_allocObject();
    return Promise.init(value:)();
  }
}

uint64_t sub_10000C2E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C324()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000C35C()
{
  sub_10000A458(0, &unk_100050110, &type metadata accessor for StocksActivity, &type metadata accessor for Optional);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for StocksActivity();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v7 + 8, v2 | 7);
}

void sub_10000C4EC(uint64_t a1, void *a2, char *a3, void *a4)
{
  v67 = a4;
  v7 = type metadata accessor for SidebarConfiguration();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v70 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for URL();
  v74 = *(v12 - 1);
  v13 = __chkstk_darwin(v12);
  v68 = v14;
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v61 - v15;
  v73 = a2;
  v17 = [a2 URLContexts];
  sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr);
  sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr);
  v18 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = sub_10000CC2C(v18);

  if (!v19)
  {
    goto LABEL_7;
  }

  v65 = a3;
  v66 = v4;
  v20 = [v19 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = [v67 session];
  v22 = [v21 persistentIdentifier];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v24;
  v62 = v23;

  sub_10000A4BC(0);
  v26 = v25;
  v27 = &v11[*(v25 + 48)];
  v28 = *(v74 + 16);
  v64 = v16;
  v29 = v16;
  v67 = v12;
  v30 = v28;
  v28(v11, v29, v12);
  v63 = v19;
  v31 = [v19 options];
  v32 = [v31 sourceApplication];

  if (!v32)
  {
    v33 = [v73 sourceApplication];
    if (!v33)
    {
      v35 = 0;
      v37 = 0;
      v34 = v74;
      goto LABEL_6;
    }

    v32 = v33;
  }

  v34 = v74;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

LABEL_6:
  *v27 = v35;
  v27[1] = v37;
  (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
  v38 = v65;
  swift_beginAccess();
  sub_100020560(v11, v62, v61);
  swift_endAccess();
  v39 = v69;
  v40 = v64;
  v41 = v67;
  v42 = v30;
  v30(v69, v64, v67);
  v43 = v70;
  SidebarConfiguration.init(_:)();
  v44 = SidebarConfiguration.shouldCollapseSidebar.getter();
  (*(v71 + 8))(v43, v72);
  v38[qword_10004FEA8] = v44 & 1;
  v42(v39, v40, v41);
  a3 = v38;
  v45 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v46 = (v68 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = v34;
  v48 = swift_allocObject();
  *(v48 + 16) = a3;
  (*(v47 + 32))(v48 + v45, v39, v41);
  v49 = v63;
  *(v48 + v46) = v63;
  v50 = a3;
  v51 = v49;
  v52 = sub_10000EE84();
  v53 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();

  (*(v47 + 8))(v40, v41);
LABEL_7:
  v54 = [v73 shortcutItem];
  if (v54)
  {
    v55 = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = a3;
    *(v56 + 24) = v55;
    v57 = a3;
    v58 = v55;
    v59 = sub_10000EE84();
    v60 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();
  }
}

uint64_t sub_10000CAE4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000CBDC(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000557C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000CC40(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10000CD74(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_10000CD74(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_10001ECA4(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_10000CD74(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_10000CD74(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10000CD80()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10000CDD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10000CE40(v4);
}

uint64_t sub_10000CE40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StocksActivity();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v65 = &v55 - v8;
  v9 = type metadata accessor for Date();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UUID();
  v12 = *(v60 - 8);
  __chkstk_darwin(v60);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Session.Kind();
  v15 = *(v61 - 8);
  __chkstk_darwin(v61);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v2 + qword_10004FE78);
  v56 = v6;
  v66 = a1;
  if (v18 || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
  {
    LODWORD(v62) = 0;
  }

  else
  {
    v62 = v19;
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v20 = swift_allocObject();
    v21 = v20;
    *(v20 + 16) = xmmword_10003EDF0;
    v22 = v2;
    if (*(v2 + qword_10004FE90 + 8))
    {
      v23 = *(v2 + qword_10004FE90);
      v24 = *(v2 + qword_10004FE90 + 8);
    }

    else
    {
      v24 = 0xE300000000000000;
      v23 = 7104878;
    }

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_1000056B0();
    *(v21 + 32) = v23;
    *(v21 + 40) = v24;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v25 = v66;
    v26 = static OS_os_log.default.getter();
    v27 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Application running deferred bootstrapping on foreground, sceneSession=%{public}@", 81, 2, &_mh_execute_header, v26, v27, v21);

    v2 = v22;
    v28 = *(v22 + qword_10004FE80);
    v29 = v28;
    sub_10000D728(v62, v28);

    LODWORD(v62) = 1;
  }

  sub_10000B3B4(v67);
  sub_1000045D8(v67, v68);
  type metadata accessor for IdentificationResetManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v31 = result;
  sub_10000461C(v67);
  v59 = v31;
  IdentificationResetManager.resetIdentifierIfNeeded()();
  sub_10000B3B4(v67);
  v32 = v2;
  sub_1000045D8(v67, v68);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  sub_10000461C(v67);
  v33 = v61;
  (*(v15 + 104))(v17, enum case for Session.Kind.userEvents(_:), v61);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v12 + 8))(v14, v60);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v63 + 8))(v11, v64);
  (*(v15 + 8))(v17, v33);
  sub_10000B720(v67);
  sub_1000045D8(v67, v68);
  dispatch thunk of SceneStateManagerType.willEnterForeground()();
  sub_10000461C(v67);
  v34 = v66;
  v35 = [v66 session];
  v36 = [v35 persistentIdentifier];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = qword_10004FED8;
  swift_beginAccess();
  v41 = *(v32 + v40);
  if (*(v41 + 16))
  {
    v42 = sub_100029810(v37, v39);
    v44 = v43;

    if (v44)
    {
      v45 = *(v41 + 56);
      sub_10000A4BC(0);
      v47 = v46;
      v48 = *(v46 - 8);
      v49 = v45 + *(v48 + 72) * v42;
      v50 = v65;
      sub_100024E70(v49, v65);
      (*(v48 + 56))(v50, 0, 1, v47);
      goto LABEL_15;
    }
  }

  else
  {
  }

  sub_10000A4BC(0);
  v50 = v65;
  (*(*(v51 - 8) + 56))(v65, 1, 1, v51);
LABEL_15:
  swift_endAccess();
  if ((v62 & 1) == 0 && [v34 activationState] == 2 && (v52 = objc_msgSend(sub_100020850(), "isStateRestorationFeatureEnabled"), swift_unknownObjectRelease(), v52) && (objc_msgSend(*(v32 + qword_10004FE58), "isStateRestorationAllowed") & 1) == 0 && (sub_10000A4BC(0), (*(*(v53 - 8) + 48))(v50, 1, v53) == 1))
  {
    v67[0] = sub_100020790(&qword_10004FE50, sub_10001C090);
    v54 = v56;
    static StocksActivity.main.getter();
    sub_10001C090(0);
    sub_10000EDC4(&unk_10004F4D0, sub_10001C090, &protocol conformance descriptor for StackNavigator<A>);
    Navigator.navigateWithoutAnimation(to:)();

    (*(v57 + 8))(v54, v58);
  }

  else
  {
  }

  return sub_10000F018(v50, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional, sub_10000A458);
}

void sub_10000D728(void *a1, void *a2)
{
  v143 = a2;
  v145 = a1;
  v140 = type metadata accessor for URL();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A458(0, &qword_10004FF78, sub_10000A4BC, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v144 = &v124 - v5;
  v6 = type metadata accessor for Container.TestSuite();
  v141 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v124 - v10;
  v12 = type metadata accessor for Container.Environment();
  v142 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SidebarConfiguration();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ThemingStyle();
  v20 = __chkstk_darwin(v19);
  v23 = v2;
  if (*(v2 + qword_10004FE78))
  {
    v24 = static os_log_type_t.error.getter();
    sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10003EDF0;
    if (*(v2 + qword_10004FE90 + 8))
    {
      v26 = *(v2 + qword_10004FE90);
      v27 = *(v23 + qword_10004FE90 + 8);
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7104878;
    }

    *(v25 + 56) = &type metadata for String;
    v40 = v25;
    *(v25 + 64) = sub_1000056B0();
    *(v40 + 32) = v26;
    *(v40 + 40) = v27;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

    v145 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Attempted to create window and bootstrap application but we already have a window, sceneSession=%{public}@", 106, 2, &_mh_execute_header, v145, v24, v40);

    v41 = v145;

    return;
  }

  v135 = qword_10004FE78;
  v130 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v22;
  v132 = v20;
  v125 = v18;
  v126 = v16;
  v127 = v15;
  v133 = v12;
  v134 = v9;
  v136 = v14;
  v137 = v11;
  sub_10000B3B4(&v156);
  sub_1000045D8(&v156, v157);
  sub_1000036DC(0, &qword_1000500A0, &protocol descriptor for HeartbeatEventServiceType, 0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v153)
  {
    __break(1u);
    goto LABEL_61;
  }

  v28 = v2;
  swift_unknownObjectRelease();
  sub_10000461C(&v156);
  sub_10000B3B4(&v156);
  sub_1000045D8(&v156, v157);
  type metadata accessor for DebugWindow();
  v29 = swift_allocObject();
  v30 = v145;
  *(v29 + 16) = v145;
  v31 = v30;
  v32 = dispatch thunk of ResolverType.resolve<A>(_:with:)();

  if (!v32)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_10000461C(&v156);
  sub_10000EDC4(&unk_1000500A8, type metadata accessor for SceneDelegate, &unk_10003F870);
  swift_unknownObjectRetain();
  DebugWindow.debugDelegate.setter();
  v33 = *(v2 + v135);
  *(v23 + v135) = v32;
  v128 = v32;
  v145 = v32;

  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v129 = v34;
  v35 = swift_allocObject();
  v36 = v35;
  v124 = xmmword_10003EDF0;
  *(v35 + 16) = xmmword_10003EDF0;
  v37 = (v23 + qword_10004FE90);
  if (*(v23 + qword_10004FE90 + 8))
  {
    v38 = *v37;
    v39 = *(v23 + qword_10004FE90 + 8);
  }

  else
  {
    v39 = 0xE300000000000000;
    v38 = 7104878;
  }

  *(v35 + 56) = &type metadata for String;
  v42 = sub_1000056B0();
  v36[8] = v42;
  v36[4] = v38;
  v36[5] = v39;
  v43 = sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);

  v44 = static OS_os_log.default.getter();
  v45 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Application did create window for window scene, sceneSession=%{public}@", 71, 2, &_mh_execute_header, v44, v45, v36);

  sub_10000B3B4(&v153);
  sub_1000045D8(&v153, v154);
  sub_1000036DC(0, &qword_10004F9D0, &protocol descriptor for SceneProviderType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v152)
  {
    goto LABEL_62;
  }

  sub_1000061A0(&v151, &v156);
  sub_10000461C(&v153);
  sub_1000045D8(&v156, v157);
  dispatch thunk of SceneProviderType.register(_:)();
  v46 = [objc_opt_self() currentDevice];
  v47 = [v46 userInterfaceIdiom];

  if (!v47)
  {
    v48 = *(v28 + v135);
    if (v48)
    {
      [v48 setOverrideUserInterfaceStyle:2];
    }
  }

  v135 = v42;
  sub_10000B3B4(&v151);
  sub_1000045D8(&v151, v152);
  sub_1000036DC(0, &qword_1000500B8, &protocol descriptor for BaseStylerType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  v49 = v149;
  if (!v149)
  {
    goto LABEL_63;
  }

  v50 = v150;
  sub_1000045D8(v148, v149);
  v51 = v145;
  v52 = [v51 traitCollection];
  v154 = v49;
  v155 = v50;
  sub_10000EE0C(&v153);
  dispatch thunk of DynamicStylerType.dynamic(for:)();

  sub_10000461C(v148);
  sub_10000461C(&v151);
  v145 = v51;
  dispatch thunk of BaseStylerType.style(window:)();
  dispatch thunk of BaseStylerType.theme.getter();
  sub_1000045D8(&v151, v152);
  v53 = v130;
  dispatch thunk of Theming.style.getter();
  v54 = (*(v131 + 88))(v53, v132);
  if (v54 == enum case for ThemingStyle.light(_:))
  {
    v55 = 1;
    v56 = v145;
    v57 = v6;
    v58 = v137;
  }

  else
  {
    v58 = v137;
    if (v54 != enum case for ThemingStyle.dark(_:))
    {
LABEL_66:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    v57 = v6;
    v55 = 2;
    v56 = v145;
  }

  v132 = v43;
  [v56 setTs_accessibilityInterfaceStyleIntent:{v55, v124}];

  sub_10000461C(&v151);
  v59 = v143;
  if (v143 && (v60 = [v143 userActivities], sub_10000557C(0, &qword_10004FBA0, NSUserActivity_ptr), sub_10000CBDC(&qword_1000500D8, &qword_10004FBA0, NSUserActivity_ptr), v61 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v60, v62 = sub_10000EE70(v61), , v62))
  {
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v62;

    v65 = v62;
    v66 = sub_10000EE84();
    v67 = zalgoIfMain.getter();
    Bootstrapper.afterBootstrap(on:run:)();

    v58 = v137;
    sub_100020790(&qword_10004FE48, &type metadata accessor for StocksV2UserActivityDeserializer);
    v68 = v65;
    v69 = v125;
    SidebarConfiguration.init(_:userActivity:)();
    LODWORD(v131) = SidebarConfiguration.shouldCollapseSidebar.getter();

    (*(v126 + 8))(v69, v127);
  }

  else
  {
    LODWORD(v131) = 0;
  }

  type metadata accessor for ContainerEnviromentProvider();
  swift_allocObject();
  ContainerEnviromentProvider.init()();
  v70 = [objc_opt_self() sharedApplication];
  v71 = [objc_opt_self() processInfo];
  v72 = v136;
  ContainerEnviromentProvider.enviroment(for:processInfo:)();
  v73 = v72;

  v74 = v142;
  v75 = v133;
  v76 = (*(v142 + 88))(v73, v133);
  if (v76 != enum case for Container.Environment.testing(_:))
  {
    if (v76 == enum case for Container.Environment.normal(_:))
    {
      goto LABEL_37;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_32;
  }

  (*(v74 + 96))(v73, v75);
  v71 = v141;
  (v141[2])(v58, v73, v57);
  (v71[13])(v134, enum case for Container.TestSuite.performance(_:), v57);
  sub_10000EDC4(&unk_1000500C8, &type metadata accessor for Container.TestSuite, &protocol conformance descriptor for Container.TestSuite);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v151 != v148[0] || *(&v151 + 1) != v148[1])
  {
LABEL_32:
    v77 = v28;
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v77 = v28;
  v78 = 1;
LABEL_33:
  v79 = v71[1];
  v79(v134, v57);

  if (v78)
  {
    v80 = swift_allocObject();
    v81 = v80;
    *(v80 + 16) = v124;
    if (v37[1])
    {
      v82 = *v37;
      v83 = v37[1];
    }

    else
    {
      v83 = 0xE300000000000000;
      v82 = 7104878;
    }

    v93 = v137;
    *(v80 + 56) = &type metadata for String;
    *(v80 + 64) = v135;
    *(v80 + 32) = v82;
    *(v80 + 40) = v83;

    v94 = static OS_os_log.default.getter();
    v95 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Application starting bootstrapping with onboarding disabled for performance testing, sceneSession=%{public}@", 108, 2, &_mh_execute_header, v94, v95, v81);

    v96 = sub_10000EE84();
    Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:)(v56, 0, v131 & 1);

    v79(v93, v57);
    v79(v136, v57);
    v28 = v77;
    goto LABEL_43;
  }

  v79(v137, v57);
  v79(v136, v57);
  v28 = v77;
LABEL_37:
  sub_10000B910(&v151);
  sub_1000045D8(&v151, v152);
  v84 = dispatch thunk of WelcomeFlowProviderType.shouldShowWelcome()();
  sub_10000461C(&v151);
  v85 = swift_allocObject();
  v86 = v85;
  *(v85 + 16) = xmmword_10003EE00;
  *(v85 + 56) = &type metadata for Bool;
  *(v85 + 64) = &protocol witness table for Bool;
  *(v85 + 32) = v84 & 1;
  v87 = v135;
  if (v37[1])
  {
    v88 = *v37;
    v89 = v37[1];
  }

  else
  {
    v89 = 0xE300000000000000;
    v88 = 7104878;
  }

  *(v85 + 96) = &type metadata for String;
  *(v85 + 104) = v87;
  *(v85 + 72) = v88;
  *(v85 + 80) = v89;

  v90 = static OS_os_log.default.getter();
  v91 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Application starting bootstrapping, shouldOnboard=%d, sceneSession=%{public}@", 77, 2, &_mh_execute_header, v90, v91, v86);

  v92 = sub_10000EE84();
  static MainMetrics.defaultWindowWindowSize.getter();
  v159.is_nil = LOBYTE(v159.value.width);
  Bootstrapper.startBootstrapping(window:shouldOnboard:shouldCollapseSidebar:defaultWindowSize:)(v56, v84 & 1, v131 & 1, v159);

LABEL_43:
  v97 = sub_10000EE84();
  if (v37[1])
  {
    v98 = *v37;
    v99 = v37[1];
  }

  else
  {
    v99 = 0xE300000000000000;
    v98 = 7104878;
  }

  v100 = v144;
  v101 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = swift_allocObject();
  v102[2] = v98;
  v102[3] = v99;
  v102[4] = v101;

  v103 = zalgoIfMain.getter();
  Bootstrapper.afterBootstrap(on:run:)();

  sub_10000B3B4(v148);
  sub_1000045D8(v148, v149);
  sub_1000036DC(0, &qword_1000500C0, &protocol descriptor for AgreedToTermsAndConditionsProvider, 1);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v147)
  {
    goto LABEL_64;
  }

  sub_1000061A0(&v146, &v151);
  sub_10000461C(v148);
  sub_1000045D8(&v151, v152);
  if (dispatch thunk of AgreedToTermsAndConditionsProvider.agreedToTermsAndConditions()())
  {
    type metadata accessor for TrackingConsent();
    v104 = static TrackingConsent.shared.getter();
    TrackingConsent.allow()();
  }

  sub_10000B3B4(v148);
  sub_1000045D8(v148, v149);
  type metadata accessor for SessionObserver();
  v105 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v105)
  {
    goto LABEL_65;
  }

  v106 = v105;
  sub_10000461C(v148);
  SessionObserver.window.setter();
  if (v59 && (v107 = [v59 URLContexts], sub_10000557C(0, &qword_100050040, UIOpenURLContext_ptr), sub_10000CBDC(&qword_100050048, &qword_100050040, UIOpenURLContext_ptr), v108 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v107, v109 = sub_10000CC2C(v108), , v109))
  {
    sub_10000A4BC(0);
    v111 = v110;
    v112 = (v100 + *(v110 + 48));
    v113 = [v109 URL];
    v114 = v138;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v139 + 32))(v100, v114, v140);
    v115 = [v109 options];
    v116 = [v115 sourceApplication];

    if (v116)
    {
      v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v119 = v118;
    }

    else
    {
      v120 = [v59 sourceApplication];
      if (v120)
      {
        v121 = v120;
        v117 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v122;
      }

      else
      {

        v117 = 0;
        v119 = 0;
      }
    }

    *v112 = v117;
    v112[1] = v119;
    (*(*(v111 - 8) + 56))(v100, 0, 1, v111);
    v123 = qword_10004FE98;
    swift_beginAccess();
    sub_100025014(v100, v28 + v123);
    swift_endAccess();
  }

  else
  {
  }

  sub_10000461C(&v151);
  sub_10000461C(&v153);
  sub_10000461C(&v156);
}

uint64_t sub_10000EC60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000EC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000ECD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000ED10()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000ED5C(void *a1, uint64_t a2)
{
  sub_1000045D8(a1, a1[3]);
  sub_10000557C(0, &qword_1000500F8, UIWindowScene_ptr);
  return dispatch thunk of ContextType.useWeak<A>(_:for:)();
}

uint64_t sub_10000EDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_10000EE0C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_10000EE84()
{
  v1 = qword_10004FE40;
  v2 = *(v0 + qword_10004FE40);
  if (v2)
  {
    v3 = *(v0 + qword_10004FE40);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  sub_10000B3B4(v9);
  sub_1000045D8(v9, v9[3]);
  type metadata accessor for Bootstrapper();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v6 = result;
    sub_10000461C(v9);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_10000EFD4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  SceneStateMonitor.sceneWillEnterForeground()();
}

uint64_t sub_10000F018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_10000F0C0(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v5 + 16))(v7, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v4);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000F298(0);
  }

  return result;
}

void sub_10000F298(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v4, v5, "Invalidating widget content onlyIfActive=%{BOOL}d", v6, 8u);
  }

  if (*(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_hasCompletedColdLaunch) != 1)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Enqueueing invalidation because stock list hasn't loaded yet";
      goto LABEL_10;
    }

LABEL_11:

    v15 = *(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
    v16 = v15 == 2;
    v17 = v15 & v3;
    if (v16)
    {
      v17 = v3;
    }

    *(v2 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = v17 & 1;
    return;
  }

  v7 = [objc_opt_self() sharedApplication];
  sub_1000101A0();
  v9 = v8;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  if (v9 & 1) == 0 && (v3)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Enqueueing invalidation due to not being the active app";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, v11, v14, v13, 2u);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Reloading widget timelines", v18, 2u);
  }

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();
}

uint64_t sub_10000F538()
{

  asyncMain(block:)();
}

void sub_10000F584(uint64_t a1, const char *a2, char a3)
{
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 2u);
  }

  sub_10000F298(a3 & 1);
}

void sub_10000F664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B348(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10003EE10;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_1000056B0();
  *(v5 + 64) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_10000A458(0, &qword_1000500E0, &type metadata accessor for DebugWindow, &type metadata accessor for Optional);

  v7 = String.init<A>(describing:)();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v7;
  *(v5 + 80) = v8;
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 isKeyWindow];
  }

  else
  {
    v11 = 0;
  }

  *(v5 + 136) = &type metadata for Bool;
  *(v5 + 144) = &protocol witness table for Bool;
  *(v5 + 112) = v11;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v12 = static OS_os_log.default.getter();
  v13 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Application finished bootstrapping, sceneSession=%{public}@, window=%@, windowIsKey=%d", 86, 2, &_mh_execute_header, v12, v13, v5);

  type metadata accessor for TrackingConsent();
  v14 = static TrackingConsent.shared.getter();
  TrackingConsent.allow()();
}

void sub_10000F864(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10000F9C0();
}

uint64_t sub_10000F96C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_10000F9C0()
{
  v1 = v0;
  sub_10000A458(0, &qword_100050078, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v31 = v27 - v3;
  v4 = type metadata accessor for Date();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UUID();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Session.Kind();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000B3B4(v33);
  sub_1000045D8(v33, v34);
  type metadata accessor for IdentificationResetManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  sub_10000461C(v33);
  v27[1] = v15;
  IdentificationResetManager.resetIdentifierIfNeeded()();
  sub_10000B3B4(v33);
  sub_1000045D8(v33, v34);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  sub_10000461C(v33);
  (*(v11 + 104))(v13, enum case for Session.Kind.userEvents(_:), v10);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v7 + 8))(v9, v28);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v29 + 8))(v6, v30);
  (*(v11 + 8))(v13, v10);
  v27[0] = v16;
  SessionManager.tracker.getter();
  type metadata accessor for AppSessionResumeEvent();
  sub_10000EDC4(&unk_100050080, &type metadata accessor for AppSessionResumeEvent, &protocol conformance descriptor for AppSessionResumeEvent);
  Tracker.submit<A>(_:onlyIfTimed:completion:)();

  sub_10000B720(v33);
  sub_1000045D8(v33, v34);
  dispatch thunk of SceneStateManagerType.didBecomeActive()();
  sub_10000461C(v33);
  sub_10000B720(v33);
  v28 = v35;
  v17 = sub_1000045D8(v33, v34);
  v29 = v1;
  v30 = v17;
  v18 = v1 + qword_10004FE98;
  swift_beginAccess();
  sub_10000A4BC(0);
  v20 = v19;
  v21 = *(*(v19 - 8) + 48);
  v22 = 1;
  v23 = v21(v18, 1, v19);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = v31;
  if (!v23)
  {
    (*(*(v24 - 8) + 16))(v31, v18, v24);
    v22 = 0;
  }

  (*(v25 + 56))(v26, v22, 1, v24);
  if (!v21(v18, 1, v20))
  {
  }

  dispatch thunk of SceneStateManagerType.didBecomeActive(with:sourceApplication:sceneID:)();

  sub_10000F018(v26, &qword_100050078, &type metadata accessor for URL, &type metadata accessor for Optional, sub_10000A458);
  sub_10000461C(v33);
  sub_10000B3B4(v33);
  sub_1000045D8(v33, v34);
  sub_1000036DC(0, &qword_10004F440, &protocol descriptor for CommandCenterType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v32)
  {

    swift_unknownObjectRelease();
    return sub_10000461C(v33);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100010050()
{
  sub_1000045D8((v0 + 16), *(v0 + 40));
  dispatch thunk of PrivateDataPollingServiceType.pollForChangesIfNeeded()();
}

void sub_1000100A4()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_1000101A0();
  v2 = v1;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "sceneDidBecomeActive isLikelyEligible: %{BOOL}d", v5, 8u);
  }

  sub_100010438();
}

void sub_1000101A0()
{
  v1 = [v0 connectedScenes];
  sub_10000557C(0, &qword_10004FAE0, UIScene_ptr);
  sub_1000103C8();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v17;
    v3 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), (v12 = v16) == 0))
    {
LABEL_18:
      sub_100010430(v4);

      return;
    }

LABEL_9:
    v13 = [v12 activationState];

    if (!v13)
    {
      goto LABEL_18;
    }
  }

  v14 = v6;
  v15 = v7;
  if (v7)
  {
LABEL_8:
    v7 = (v15 - 1) & v15;
    v12 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v12)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v15 = *(v3 + 8 * v6);
    ++v14;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1000103C8()
{
  result = qword_10004FAE8;
  if (!qword_10004FAE8)
  {
    sub_10000557C(255, &qword_10004FAE0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FAE8);
  }

  return result;
}

void sub_100010438()
{
  v1 = v0;

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
    *v4 = 136446210;
    v7 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v7 = 0x65736C6166;
    }

    v8 = 0xE500000000000000;
    if (v6)
    {
      v8 = 0xE400000000000000;
    }

    if (v6 == 2)
    {
      v9 = 7104878;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_1000105E4(v9, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Processing queued invalidation, queued=%{public}s", v4, 0xCu);
    sub_10000461C(v5);
  }

  v12 = *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation);
  if (v12 != 2)
  {
    *(v1 + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_queuedInvalidation) = 2;

    sub_10000F298(v12 & 1);
  }
}

unint64_t sub_1000105E4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000108E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100010AE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000461C(v11);
  return v7;
}

void sub_1000106B0()
{
  if (!qword_10004FC90)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FC90);
    }
  }
}

void *sub_100010700(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000106B0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100010768(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000107B4(a1, a2);
  sub_1000109F4(&off_10004AAD0);
  return v3;
}

char *sub_1000107B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100010700(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100010700(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1000108E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100010768(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

uint64_t sub_1000109F4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10001F430(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100010AE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_100010B3C()
{
  result = *(v0 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (result)
  {
    [result tickleWithQualityOfService:9 data:1 completion:0];
    v2 = type metadata accessor for MainActor();
    __chkstk_darwin(v2);
    v3[2] = v0;
    return sub_100010BF8(sub_100010E50, v3, "StocksApp/StocksTodayAgent.swift", 32, 2u, 146);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  static MainActor.shared.getter();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_100010E28();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    _StringGuts.grow(_:)(66);
    v12._object = 0x800000010003CC00;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100010D84(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedApplication];
    v5 = [v4 applicationState];

    [v3 setSuspended:v5 == 0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100010E6C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  SceneStateMonitor.sceneDidBecomeActive()();
}

uint64_t sub_100010F48()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_100010F80(uint64_t a1, uint64_t a2)
{
  sub_100011158(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v2[OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_operationThrottler];
  if (result)
  {
    v9 = [result mergedData];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v2;

    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    v13[5] = v9;
    v13[6] = a1;
    v13[7] = a2;
    sub_100037A7C(0, 0, v7, &unk_10003FBC0, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000110E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100011158(uint64_t a1)
{
  if (!qword_100050790)
  {
    type metadata accessor for TaskPriority();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100050790);
    }
  }
}

uint64_t sub_1000111B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return SceneStateMonitor.sceneDidBecomeActive(with:sourceApplication:sceneID:)(a1, a2, a3, a4, a5, ObjectType);
}

uint64_t sub_100011230(uint64_t a1)
{
  sub_100011158(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001128C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C0B0;

  return sub_100011344(a1, v4);
}

uint64_t sub_100011344(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012940;

  return v6(a1);
}

uint64_t sub_10001143C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100012308;

  return sub_100011510(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100011510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = type metadata accessor for MainActor();
  v7[5] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v7[6] = v9;
  *v9 = v7;
  v9[1] = sub_1000378D4;

  return sub_1000115D0(a5);
}

uint64_t sub_1000115D0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v4;
  v2[12] = v3;

  return _swift_task_switch(sub_10001166C, v4, v3);
}

uint64_t sub_10001166C(uint64_t a1)
{
  v40 = v1;
  v2 = v1[7];
  v1[13] = OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_logger;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v39 = v6;
    *v5 = 136446210;
    if (v2)
    {
      v7 = 1702195828;
    }

    else
    {
      v7 = 0x65736C6166;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    v9 = sub_1000105E4(v7, v8, &v39);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Running operation. isDirty: %{public}s", v5, 0xCu);
    sub_10000461C(v6);
  }

  if (v2)
  {
    v10 = v1[7];
    sub_100011C4C(0);
    v11 = swift_allocObject();
    v1[14] = v11;
    *(v11 + 20) = 0;
    *(v11 + 16) = 0;
    v12 = swift_allocObject();
    v1[15] = v12;
    *(v12 + 16) = &_swiftEmptyArrayStorage;
    if (v10)
    {
      v13 = [*(v1[8] + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_purchaseController) allPurchasedTagIDs];
      if (v13)
      {
        v14 = v13;
        v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v15 = 0;
      }

      v18 = [*(v1[8] + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_bundleSubscriptionManager) cachedSubscription];
      [v18 copy];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100011D0C();
      swift_dynamicCast();
      v19 = v1[6];

      v20 = v19;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = v23;
        *v23 = 134218496;
        if (v15)
        {
          v25 = *(v15 + 16);
        }

        else
        {
          v25 = 0;
        }

        *(v23 + 4) = v25;

        *(v24 + 12) = 2048;
        v26 = [v20 bundleChannelIDs];
        v27 = [v26 count];

        *(v24 + 14) = v27;
        *(v24 + 22) = 2048;
        *(v24 + 24) = [v20 subscriptionState];

        _os_log_impl(&_mh_execute_header, v21, v22, "Preparing to update purchases. purchased: %ld, bundle channels: %ld, subscriptionState: %lu", v24, 0x20u);
      }

      else
      {

        v21 = v20;
      }

      v28 = swift_allocObject();
      v28[2] = v15;
      v28[3] = v11;
      v28[4] = v20;
      v29 = *(v12 + 16);
      v30 = v20;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v12 + 16) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_100011D58(0, v29[2] + 1, 1, v29);
        *(v12 + 16) = v29;
      }

      v33 = v29[2];
      v32 = v29[3];
      if (v33 >= v32 >> 1)
      {
        v29 = sub_100011D58((v32 > 1), v33 + 1, 1, v29);
      }

      v29[2] = v33 + 1;
      v34 = &v29[2 * v33];
      v34[4] = sub_100012D70;
      v34[5] = v28;
      *(v12 + 16) = v29;
    }

    v35 = v1[8];
    v36 = static MainActor.shared.getter();
    v1[16] = v36;
    v37 = swift_task_alloc();
    v1[17] = v37;
    *(v37 + 16) = v35;
    *(v37 + 24) = v12;
    v38 = swift_task_alloc();
    v1[18] = v38;
    *v38 = v1;
    v38[1] = sub_100013020;

    return withCheckedContinuation<A>(isolation:function:_:)(v1 + 19, v36, &protocol witness table for MainActor, 0xD000000000000017, 0x800000010003EAD0, sub_100012300, v37, &type metadata for Bool);
  }

  else
  {

    v16 = v1[1];

    return v16();
  }
}

uint64_t sub_100011BCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011C04()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100011C4C(uint64_t a1)
{
  if (!qword_100050798)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = type metadata accessor for ManagedBuffer();
    if (!v2)
    {
      atomic_store(v1, &qword_100050798);
    }
  }
}

void sub_100011CAC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_100011D0C()
{
  result = qword_1000507A8;
  if (!qword_1000507A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000507A8);
  }

  return result;
}

void *sub_100011D58(void *result, int64_t a2, char a3, void *a4)
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
    sub_100011E90(0, &qword_10004F7D8, sub_100011EE4);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100011FA8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100011E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _ContiguousArrayStorage();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100011EE4()
{
  result = qword_10004F7E0;
  if (!qword_10004F7E0)
  {
    sub_100011F44();
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_10004F7E0);
  }

  return result;
}

unint64_t sub_100011F44()
{
  result = qword_10004F7E8;
  if (!qword_10004F7E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F7E8);
  }

  return result;
}

unint64_t sub_100011FA8()
{
  result = qword_10004F850;
  if (!qword_10004F850)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10004F850);
  }

  return result;
}

void sub_100011FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100007184(0, &unk_1000507B0, &type metadata for Bool, &type metadata accessor for CheckedContinuation);
  v7 = v6;
  v8 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *(a2 + OBJC_IVAR____TtC9StocksApp16StocksTodayAgent_dropbox);
  v22 = sub_100012BD8;
  v23 = a3;
  v17 = v11;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100012AD8;
  v21 = &unk_10004B608;
  v12 = _Block_copy(&aBlock);

  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  v22 = sub_100012F88;
  v23 = v14;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100012F34;
  v21 = &unk_10004B658;
  v15 = _Block_copy(&aBlock);

  [v17 depositWithAccessor:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);
}

uint64_t sub_100012254()
{
  sub_100007184(0, &unk_1000507B0, &type metadata for Bool, &type metadata accessor for CheckedContinuation);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100012308()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000123FC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = v2;
    (*(v14 + 16))(v16, Strong + OBJC_IVAR____TtC9StocksApp32WidgetContentInvalidationManager_logger, v13);

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v12;
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Attempting widget update for stock list loading", v20, 2u);
      v12 = v27;
    }

    (*(v14 + 8))(v16, v13);
    v2 = v28;
  }

  sub_10000557C(0, &qword_10004F0B0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v7 + 8);
  v28 = v7 + 8;
  v22(v10, v6);
  aBlock[4] = sub_10001F428;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C54;
  aBlock[3] = &unk_10004AFF8;
  v23 = _Block_copy(aBlock);

  v24 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100012A38(&qword_10004F0B8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100012A80(0);
  sub_100012A38(&qword_10004F0C8, sub_100012A80, &protocol conformance descriptor for [A]);
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v25, v2);
  (*(v30 + 8))(v24, v31);
  return (v22)(v12, v6);
}

uint64_t sub_100012940()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100012A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100012A80(uint64_t a1)
{
  if (!qword_10004F0C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F0C0);
    }
  }
}

uint64_t sub_100012AD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_100012B38(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v9 = a1;

      v8(&v9);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

void sub_100012BE0(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [*a1 purchasedTagIDs];
  if (!v8)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v9 = v8;
  v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (!a2)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    v12.super.isa = 0;
    goto LABEL_10;
  }

  if (!v10 || (v11 = sub_100012D7C(a2, v10), , (v11 & 1) == 0))
  {
LABEL_7:
    v12.super.isa = Set._bridgeToObjectiveC()().super.isa;
LABEL_10:
    [v7 setPurchasedTagIDs:v12.super.isa];

    os_unfair_lock_lock((a3 + 20));
    *(a3 + 16) = 1;
    os_unfair_lock_unlock((a3 + 20));
  }

LABEL_11:
  v13 = [v7 bundleSubscription];
  sub_100011D0C();
  v14 = static NSObject.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    [v7 setBundleSubscription:a4];
    os_unfair_lock_lock((a3 + 20));
    *(a3 + 16) = 1;

    os_unfair_lock_unlock((a3 + 20));
  }
}

uint64_t sub_100012D7C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100012F34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100013020()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100037658, v3, v2);
}

uint64_t sub_100013180()
{
  v0 = type metadata accessor for StartupTaskExecutionPhase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006098(v6);
  sub_1000045D8(v6, v6[3]);
  type metadata accessor for StartupTaskManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v6);
    (*(v1 + 104))(v3, enum case for StartupTaskExecutionPhase.afterLaunching(_:), v0);
    StartupTaskManager.startAllTasks(launchOptions:phase:)();
    (*(v1 + 8))(v3, v0);
    [objc_opt_self() popHighPriorityTaskInFlight];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000132E8@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013314()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001334C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013394(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100013440(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000134E8()
{
  sub_10000461C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100013520()
{
  v1 = type metadata accessor for BannerAdImpressionInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000135A8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000135E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013628()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013660()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000136D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001370C()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100013744()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013784()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000137EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013828()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100013864(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000138B8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100013934(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000139AC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100013A2C@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100013A70(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100013AF8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100013B40(uint64_t a1)
{
  v2 = sub_100013CC0(&qword_10004F080, &unk_10003ED80);
  v3 = sub_100013CC0(&unk_10004EB30, &unk_10003ECD4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100013C10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013C30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100013CC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100013D40()
{
  v1 = v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager;
  v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager);
LABEL_5:
    v6 = v2;
    return v3;
  }

  sub_100006098(v9);
  sub_1000045D8(v9, v9[3]);
  sub_1000036DC(0, &unk_10004F010, &protocol descriptor for MenuManagerType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v7)
  {
    sub_10000461C(v9);
    v5 = *v1;
    *v1 = v7;
    *(v1 + 8) = v8;
    v3 = v7;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100013E20()
{
  v1 = OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker;
  if (*(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___tracker);
LABEL_5:

    return v2;
  }

  sub_100006098(v4);
  sub_1000045D8(v4, v4[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v2 = result;
    sub_10000461C(v4);
    *(v0 + v1) = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id DiagnosticFileProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_100013FB8()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:)();
}

void *sub_100014010()
{
  swift_getObjectType();

  return Configurable.setting<A>(_:_:)();
}

uint64_t sub_100014080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return Configurable.setting<A>(_:defaultValue:_:)(a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_100014280(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for RemoteNotificationFetchResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for RemoteNotificationFetchResult.noData(_:))
  {
    v9 = 1;
    return a2(v9);
  }

  if (v8 == enum case for RemoteNotificationFetchResult.newData(_:))
  {
    v9 = 0;
    return a2(v9);
  }

  if (v8 == enum case for RemoteNotificationFetchResult.failed(_:))
  {
    v9 = 2;
    return a2(v9);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100014574(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = type metadata accessor for BackgroundFetchResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == enum case for BackgroundFetchResult.noData(_:))
  {
    v9 = 1;
    return a2(v9);
  }

  if (v8 == enum case for BackgroundFetchResult.newData(_:))
  {
    v9 = 0;
    return a2(v9);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100014864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();

  return Updatable.save<A>(setting:value:)();
}

uint64_t sub_1000148BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return Updatable.reset<A>(setting:)(a1, ObjectType, a5);
}

uint64_t sub_10001490C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return Updatable.apply(preset:)();
}

void *sub_1000149D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  result = sub_100013D40();
  if (a1)
  {
    v8 = result;
    v9 = [result canPerformAction:a1 withSender:v3];

    if (v9)
    {
      v10 = *&v3[OBJC_IVAR____TtC9StocksApp11AppDelegate____lazy_storage___menuManager];
      *(a3 + 24) = swift_getObjectType();
      *a3 = v10;

      return v10;
    }

    else
    {
      v13.receiver = v3;
      v13.super_class = ObjectType;
      result = objc_msgSendSuper2(&v13, "forwardingTargetForSelector:", a1);
      if (result)
      {
        _bridgeAnyObjectToAny(_:)();
        result = swift_unknownObjectRelease();
      }

      else
      {
        v11 = 0u;
        v12 = 0u;
      }

      *a3 = v11;
      *(a3 + 16) = v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100014C24(uint64_t a1)
{
  sub_100006098(v5);
  sub_1000045D8(v5, v6);
  sub_1000036DC(0, &qword_10004F440, &protocol descriptor for CommandCenterType, 0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    sub_10000461C(v5);
    v2 = sub_100013D40();
    swift_getObjectType();
    v3 = sub_100013E20();
    v6 = type metadata accessor for Tracker();
    v7 = sub_10000402C(&qword_10004F030, 255, &type metadata accessor for Tracker, &protocol conformance descriptor for Tracker);
    v5[0] = v3;
    dispatch thunk of MenuManagerType.validate(_:with:tracker:)();
    swift_unknownObjectRelease();

    return sub_10000461C(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100014DD4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_100013D40();
  sub_1000151E8(a2, v23);
  v7 = v24;
  if (v24)
  {
    v8 = sub_1000045D8(v23, v24);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_10000461C(v23);
  }

  else
  {
    v12 = 0;
  }

  v13 = [v6 canPerformAction:a1 withSender:v12];

  swift_unknownObjectRelease();
  if (v13)
  {
    return 1;
  }

  sub_1000151E8(a2, v23);
  v15 = v24;
  if (v24)
  {
    v16 = sub_1000045D8(v23, v24);
    v17 = *(v15 - 8);
    __chkstk_darwin(v16);
    v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v17 + 8))(v19, v15);
    sub_10000461C(v23);
  }

  else
  {
    v20 = 0;
  }

  v22.receiver = v2;
  v22.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v22, "canPerformAction:withSender:", a1, v20);
  swift_unknownObjectRelease();
  return v21;
}

uint64_t sub_100015138(uint64_t a1)
{
  sub_100015194();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100015194()
{
  if (!qword_100050370)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100050370);
    }
  }
}

uint64_t sub_1000151E8(uint64_t a1, uint64_t a2)
{
  sub_100015194();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001524C()
{
  v0 = type metadata accessor for EndReason();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ViewEndData();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006098(v10);
  sub_1000045D8(v10, v11);
  type metadata accessor for SessionManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10000461C(v10);
    SessionManager.tracker.getter();
    (*(v1 + 104))(v3, enum case for EndReason.forceQuit(_:), v0);
    ViewEndData.init(endReason:)();
    sub_10000402C(&qword_10004F078, 255, &type metadata accessor for ViewEndData, &protocol conformance descriptor for ViewEndData);
    Tracker.push<A>(data:traits:file:line:)();

    (*(v5 + 8))(v7, v4);
    sub_100006098(v10);
    sub_1000045D8(v10, v11);
    type metadata accessor for AppSessionManager();
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (result)
    {
      sub_10000461C(v10);
      AppSessionManager.appSessionDidTerminate()();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1000154F4(void *a1)
{
  v2 = [a1 role];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_8:
    v11 = [a1 role];
    v10 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v11];

    type metadata accessor for SceneDelegate(0);
    [v10 setDelegateClass:swift_getObjCClassFromMetadata()];
    type metadata accessor for WindowScene();
    [v10 setSceneClass:swift_getObjCClassFromMetadata()];
    sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10003EDF0;
    v13 = [a1 persistentIdentifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_1000056B0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    v17 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Application requested scene configuration, sceneSession=%{public}@", 66, 2, &_mh_execute_header, v9, v17, v12);

    goto LABEL_9;
  }

  v9 = [a1 role];
  v10 = [objc_allocWithZone(UISceneConfiguration) initWithName:0 sessionRole:v9];
LABEL_9:

  return v10;
}

void sub_100015768(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
    sub_1000160EC();
    Set.Iterator.init(_cocoa:)();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v4;
    v11 = v5;
    v12 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_100010430(v1);
      return;
    }

    while (1)
    {
      sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10003EDF0;
      v16 = [v14 persistentIdentifier];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_1000056B0();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
      v20 = static OS_os_log.default.getter();
      v21 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Application discarding scene session, sceneSession=%{public}@", 61, 2, &_mh_execute_header, v20, v21, v15);

      v4 = v12;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_10000557C(0, &qword_10004F068, UISceneSession_ptr);
        swift_dynamicCast();
        v14 = v22;
        v12 = v4;
        v13 = v5;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
      goto LABEL_18;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100015A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10003EDF0;
  v6 = Dictionary.description.getter();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000056B0();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  v10 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("received remote notification: %{public}@", 40, 2, &_mh_execute_header, v9, v10, v5);

  sub_100006098(v15);
  sub_1000045D8(v15, v15[3]);
  type metadata accessor for RemoteNotificationManager();
  if (dispatch thunk of ResolverType.resolve<A>(_:)())
  {
    sub_10000461C(v15);
    RemoteNotificationManager.handleRemoteNotification(userInfo:)();
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    v12 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    v14 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    __break(1u);
  }
}

void sub_100015CB4(uint64_t a1)
{
  v1 = static os_log_type_t.error.getter();
  sub_100003670(0, &qword_10004F040, &qword_10004F048, &protocol descriptor for CVarArg, &type metadata accessor for _ContiguousArrayStorage);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10003EDF0;
  sub_1000036DC(0, &unk_10004F050, &protocol descriptor for Error, 1);
  _print_unlocked<A, B>(_:_:)();
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_1000056B0();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_10000557C(0, &qword_10004F060, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:type:_:)("failed to register for remote notifications with error: %{public}@", 66, 2, &_mh_execute_header, v3, v1, v2);
}

void sub_100015DF8(uint64_t a1, uint64_t a2)
{
  sub_100006098(v10);
  sub_1000045D8(v10, v10[3]);
  type metadata accessor for BackgroundFetchManager();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v4)
  {
    v5 = v4;
    sub_10000461C(v10);
    BackgroundFetchManager.performBackgroundFetch()();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;

    v7 = zalgo.getter();
    Promise.then<A>(on:closure:)();

    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    v9 = zalgo.getter();
    Promise.error(on:closure:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100015F6C(uint64_t a1, uint64_t a2, Class isa)
{
  sub_100006098(v9);
  sub_1000045D8(v9, v9[3]);
  sub_10000557C(0, &qword_10004F038, SNTestRunner_ptr);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = sub_10000461C(v9);
  if (!a2)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = String._bridgeToObjectiveC()();
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v8 = [v6 runTest:v7 options:isa];

  return v8;
}

unint64_t sub_1000160EC()
{
  result = qword_10004F070;
  if (!qword_10004F070)
  {
    sub_10000557C(255, &qword_10004F068, UISceneSession_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F070);
  }

  return result;
}

uint64_t sub_100016164()
{
  v0 = type metadata accessor for SettingAction.PostInstruction();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingAction();
  swift_allocObject();
  SettingAction.init(_:_:)();
  (*(v1 + 104))(v3, enum case for SettingAction.PostInstruction.killProcess(_:), v0);
  v4 = dispatch thunk of SettingAction.then(_:)();

  result = (*(v1 + 8))(v3, v0);
  qword_100051BE0 = v4;
  return result;
}

uint64_t sub_1000162BC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  return dispatch thunk of Updatable.save<A>(setting:value:)();
}

__n128 sub_100016378(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001638C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000163C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100016418(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100016450@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for Stock();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for SymbolEntity();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OpenSymbolIntent();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity.StockFeed();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StocksActivity();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for StocksActivity.stockList(_:))
  {
    (*(v12 + 96))(v14, v11);
    sub_1000173E4(0, &qword_10004F280, &type metadata accessor for ScrollPosition, sub_10001746C, "scrollPosition selectedWatchlistID ");

    v16 = type metadata accessor for ScrollPosition();
LABEL_5:
    result = (*(*(v16 - 8) + 8))(v14, v16);
    goto LABEL_6;
  }

  if (v15 == enum case for StocksActivity.forYouFeed(_:))
  {
    (*(v12 + 96))(v14, v11);
    sub_1000173E4(0, &qword_10004F278, &type metadata accessor for ForYouSectionDescriptor, &type metadata accessor for CardViewPresentationState, "section cardPresentationState ");
    v18 = *(v17 + 48);
    v19 = type metadata accessor for CardViewPresentationState();
    (*(*(v19 - 8) + 8))(&v14[v18], v19);
    v16 = type metadata accessor for ForYouSectionDescriptor();
    goto LABEL_5;
  }

  if (v15 == enum case for StocksActivity.symbolFeed(_:))
  {
    (*(v12 + 96))(v14, v11);
    v22 = v27;
    (*(v27 + 32))(v10, v14, v8);
    OpenSymbolIntent.init()();
    StocksActivity.StockFeed.stock.getter();
    SymbolEntity.init(from:)();
    OpenSymbolIntent.target.setter();
    v23 = v29;
    v29[3] = v5;
    v23[4] = sub_1000174BC();
    v24 = sub_10000EE0C(v23);
    (*(v28 + 32))(v24, v7, v5);
    return (*(v22 + 8))(v10, v8);
  }

  if (v15 == enum case for StocksActivity.symbolSearch(_:) || v15 == enum case for StocksActivity.article(_:))
  {
    goto LABEL_12;
  }

  if (v15 == enum case for StocksActivity.url(_:))
  {
    (*(v12 + 96))(v14, v11);
    v16 = type metadata accessor for URL();
    goto LABEL_5;
  }

  if (v15 == enum case for StocksActivity.alert(_:) || v15 == enum case for StocksActivity.campaignLandingPage(_:) || v15 == enum case for StocksActivity.tip(_:) || v15 == enum case for StocksActivity.onboarding(_:) || v15 == enum case for StocksActivity.watchlistCreation(_:))
  {
LABEL_12:
    result = (*(v12 + 8))(v14, v11);
    goto LABEL_6;
  }

  if (v15 != enum case for StocksActivity.manageWatchlists(_:))
  {
    simulateCrash(_:_:)();
    v25 = v29;
    v29[4] = 0;
    *v25 = 0u;
    *(v25 + 1) = 0u;
    return (*(v12 + 8))(v14, v11);
  }

  (*(v12 + 96))(v14, v11);
  sub_10001726C(0);

  result = sub_10001736C(v14);
LABEL_6:
  v21 = v29;
  v29[4] = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  return result;
}

uint64_t sub_100016AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WatchlistEntity();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OpenWatchlistIntent();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SymbolEntity();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for OpenSymbolIntent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksIntentType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  v17 = (*(v14 + 88))(v16, v13);
  if (v17 == enum case for StocksIntentType.addSymbolToWatchlist(_:) || v17 == enum case for StocksIntentType.deleteSymbolFromWatchlist(_:))
  {
    (*(v14 + 8))(v16, v13);
    v19 = type metadata accessor for StocksActivity();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  if (v17 == enum case for StocksIntentType.openSymbol(_:))
  {
    (*(v14 + 96))(v16, v13);
    (*(v10 + 32))(v12, v16, v9);
    sub_1000173E4(0, &qword_10004F290, &type metadata accessor for Stock, &type metadata accessor for StocksActivity.Options, " options ");
    OpenSymbolIntent.target.getter();
    Stock.init(from:)();
    static StocksActivity.Options.default.getter();
    (*(v10 + 8))(v12, v9);
    v21 = enum case for StocksActivity.StockFeed.individual(_:);
    v22 = type metadata accessor for StocksActivity.StockFeed();
    (*(*(v22 - 8) + 104))(a2, v21, v22);
    v23 = &enum case for StocksActivity.symbolFeed(_:);
  }

  else
  {
    if (v17 == enum case for StocksIntentType.openWatchlist(_:))
    {
      (*(v14 + 96))(v16, v13);
      v24 = v48;
      v25 = v50;
      (*(v48 + 32))(v7, v16, v50);
      sub_1000173E4(0, &qword_10004F280, &type metadata accessor for ScrollPosition, sub_10001746C, "scrollPosition selectedWatchlistID ");
      v27 = a2;
      v28 = (a2 + *(v26 + 48));
      v29 = enum case for ScrollPosition.top(_:);
      v30 = type metadata accessor for ScrollPosition();
      (*(*(v30 - 8) + 104))(a2, v29, v30);
      v31 = v49;
      OpenWatchlistIntent.target.getter();
      v32 = WatchlistEntity.id.getter();
      v34 = v33;
      (*(v51 + 8))(v31, v52);
      (*(v24 + 8))(v7, v25);
      *v28 = v32;
      v28[1] = v34;
      v35 = enum case for StocksActivity.stockList(_:);
      v36 = type metadata accessor for StocksActivity();
      v37 = *(v36 - 8);
      (*(v37 + 104))(v27, v35, v36);
      return (*(v37 + 56))(v27, 0, 1, v36);
    }

    if (v17 != enum case for StocksIntentType.openBusinessNews(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    sub_1000173E4(0, &qword_10004F278, &type metadata accessor for ForYouSectionDescriptor, &type metadata accessor for CardViewPresentationState, "section cardPresentationState ");
    v39 = *(v38 + 48);
    v40 = enum case for ForYouSectionDescriptor.topStories(_:);
    v41 = type metadata accessor for ForYouSectionDescriptor();
    (*(*(v41 - 8) + 104))(a2, v40, v41);
    v42 = enum case for CardViewPresentationState.expanded(_:);
    v43 = type metadata accessor for CardViewPresentationState();
    (*(*(v43 - 8) + 104))(a2 + v39, v42, v43);
    v23 = &enum case for StocksActivity.forYouFeed(_:);
  }

  v44 = *v23;
  v45 = type metadata accessor for StocksActivity();
  v46 = *(v45 - 8);
  (*(v46 + 104))(a2, v44, v45);
  return (*(v46 + 56))(a2, 0, 1, v45);
}

void sub_10001726C(uint64_t a1)
{
  if (!qword_10004F260)
  {
    sub_100017318(255, &qword_10004F268, &type metadata accessor for Stock);
    sub_100017318(255, &qword_10004F270, &type metadata accessor for CommandExecutionSource);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10004F260);
    }
  }
}

void sub_100017318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_10001736C(uint64_t a1)
{
  sub_100017318(0, &qword_10004F268, &type metadata accessor for Stock);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000173E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10001746C()
{
  if (!qword_1000503B0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000503B0);
    }
  }
}

unint64_t sub_1000174BC()
{
  result = qword_10004F288;
  if (!qword_10004F288)
  {
    type metadata accessor for OpenSymbolIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F288);
  }

  return result;
}

uint64_t ArticleScorer.init(subscribedTags:config:currentDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  sub_1000061A0(a2, (a4 + 8));
  v6 = *(type metadata accessor for ArticleScorer(0) + 24);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for ArticleScorer(uint64_t a1)
{
  result = qword_10004F2F0;
  if (!qword_10004F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ArticleScorer.score<A>(article:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v27 = type metadata accessor for Date();
  v8 = *(v27 - 8);
  v9 = __chkstk_darwin(v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))();
  v14 = (*(a3 + 56))(a2, a3);
  v15 = (*(a3 + 40))(a2, a3);
  v16 = (*(a3 + 48))(a2, a3);
  v17 = sub_100018814(a1, v4, a2, a3);
  v18 = (*(a3 + 32))(a2, a3);
  v31 = v4;
  v19 = sub_100017A00(0, sub_100018BC0, &v30, v18);

  v20 = (*(a3 + 64))(a2, a3);
  v21 = (*(a3 + 72))(a2, a3);
  v22 = (*(a3 + 96))(a2, a3);
  (*(a3 + 80))(a2, a3);
  type metadata accessor for ArticleScorer(0);
  Date.timeIntervalSince(_:)();
  v24 = v23;
  (*(v8 + 8))(v11, v27);
  v25 = (*(a3 + 88))(a2, a3);
  *v33 = v14;
  *&v33[1] = v15;
  *&v33[2] = v16;
  *&v33[3] = v17;
  v33[4] = v19;
  *&v33[5] = v20;
  *&v33[6] = v21;
  v34 = v22 & 1;
  *v35 = v41[0];
  *&v35[3] = *(v41 + 3);
  v36 = v24 * 1000.0;
  v37 = v25;
  v38 = 0u;
  v39 = 0u;
  v40 = 0;
  sub_100018CD4(v33, v4 + 1, v32);
  sub_10001CF1C(v28, v32, a2, a3, v29);
}

uint64_t sub_100017990(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v4;
  v7[2] = v8;
  result = sub_100025528(sub_10001958C, v7, v5);
  if (__OFADD__(*a1, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a1 += result & 1;
  }

  return result;
}

uint64_t sub_100017A00(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

void ArticleScorer.score<A>(articles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v12 = a2;
  v13 = a3;
  v5 = type metadata accessor for Array();
  v7 = type metadata accessor for ScoredArticle(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_100017CE4(sub_100019264, v11, v5, v7, &type metadata for Never, WitnessTable, &protocol witness table for Never, v9);
  type metadata accessor for Array();
  v14 = Dictionary.init()();
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();

  v10 = Dictionary.mapValues<A>(_:)();

  v15 = v10;
  v14 = Array.init()();
  swift_getWitnessTable();
  Sequence.reduce<A>(into:_:)();
}

uint64_t sub_100017CE4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v27 - v13;
  __chkstk_darwin(v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = dispatch thunk of Collection.count.getter();
  if (!v19)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v41 = v19;
  v45 = ContiguousArray.init()();
  v32 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v41);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100018104(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(a3, a4);
  v8 = type metadata accessor for ScoredArticle(255, a3, a4, v7);
  type metadata accessor for Array();

  Dictionary.subscript.getter();

  if (!v12)
  {
    static Array._allocateUninitialized(_:)();
  }

  type metadata accessor for _ContiguousArrayStorage();
  v9 = *(v8 - 8);
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  (*(v9 + 16))(v10, a2, v8);
  static Array.+ infix(_:_:)();

  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t sub_1000182EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v28 = *a1;
  v24 = a3;
  v25 = a4;
  v8 = type metadata accessor for ScoredArticle(255, a3, a4, a4);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.sorted(by:)();
  Sequence.enumerated()();

  v27 = v28;
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_1000194F8;
  v19 = &v20;
  v9 = type metadata accessor for EnumeratedSequence();
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v12 = sub_100017CE4(sub_100019504, v15, v9, v8, &type metadata for Never, v10, &protocol witness table for Never, v11);

  *a5 = v12;
  return result;
}

void sub_1000184C0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a4 - 8);
  __chkstk_darwin(a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a2 + *(type metadata accessor for ScoredArticle(0, v13, v14, v13) + 36));
  v16 = *(v15 + 4);
  v17 = *(v15 + 6);
  v32 = *(v15 + 5);
  v31 = *(v15 + 56);
  v18 = *(v15 + 8);
  v19 = *(v15 + 9);
  v20 = *(v15 + 13);
  v33 = *(v15 + 12);
  v21 = a3[4];
  v22 = a3[5];
  v23 = *v15;
  v30 = v15[1];
  v36 = v23;
  sub_1000045D8(a3 + 1, v21);
  v24 = (*(v22 + 160))(v21, v22);
  (*(v10 + 16))(v12, a2, a4);
  v25 = v24 * *&v36;
  v26 = a3[4];
  v27 = a3[5];
  sub_1000045D8(a3 + 1, v26);
  v28 = (*(v27 + 128))(v26, v27);
  v29 = pow(1.0 - v28, a1);
  v37[1] = v30;
  v37[0] = v36;
  v38 = v16;
  v39 = v32;
  v40 = v17;
  v41 = v31;
  v42 = v18;
  v43 = v19;
  v44 = a1;
  v45 = 0;
  v46 = v33;
  v47 = v20;
  v48 = v25 + (1.0 - v24) * (v20 * v29);
  sub_10001CF1C(v12, v37, a4, v34, v35);
}

uint64_t sub_10001875C(void *a1)
{
  type metadata accessor for Capabilities();
  if ((static Capabilities.isInternalBuild()() & 1) == 0 || (type metadata accessor for SettingReader(), static SettingReader.shared.getter(), static Settings.ArticleScoring.useOnlyComputationalGraphScore.getter(), SettingReader.read<A>(_:)(), , result = , (v5 & 1) == 0))
  {
    v3 = a1[3];
    v4 = a1[4];
    sub_1000045D8(a1, v3);
    return (*(v4 + 160))(v3, v4);
  }

  return result;
}

double sub_100018814(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(a4 + 16))(v5, a4);
  v11 = *(v10 + 16);
  if (v11)
  {
    v36 = v7;
    v37 = v5;
    v12 = *a2;
    v38 = v10;
    v13 = v10 + 32;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      sub_100006580(v13, v40);
      v16 = v41;
      v17 = v42;
      sub_1000045D8(v40, v41);
      v39[0] = (*(v17 + 8))(v16, v17);
      v39[1] = v18;
      __chkstk_darwin(v39[0]);
      *(&v35 - 2) = v39;
      LOBYTE(v16) = sub_100025528(sub_1000195AC, (&v35 - 4), v12);

      if (v16)
      {
        v19 = v41;
        v20 = v42;
        sub_1000045D8(v40, v41);
        if ((*(v20 + 24))(v19, v20) > 0.0)
        {
          v21 = v41;
          v22 = v42;
          sub_1000045D8(v40, v41);
          v23 = (*(v22 + 16))(v21, v22);
          v24 = v41;
          v25 = v42;
          sub_1000045D8(v40, v41);
          v14 = v14 + v23 / (*(v25 + 24))(v24, v25);
          v15 = v15 + 1.0;
        }
      }

      sub_10000461C(v40);
      v13 += 40;
      --v11;
    }

    while (v11);

    v7 = v36;
    v5 = v37;
    if (v15 != 0.0)
    {
      v26 = v14 / v15;
      goto LABEL_13;
    }
  }

  else
  {
  }

  (*(a4 + 8))(v40, v5, a4);
  v27 = v41;
  v28 = v42;
  sub_1000045D8(v40, v41);
  if ((*(v28 + 24))(v27, v28) <= 0.0)
  {
    sub_10000461C(v40);
    v26 = 0.0;
  }

  else
  {
    v29 = v41;
    v30 = v42;
    sub_1000045D8(v40, v41);
    v31 = (*(v30 + 16))(v29, v30);
    v32 = v41;
    v33 = v42;
    sub_1000045D8(v40, v41);
    v26 = v31 / (*(v33 + 24))(v32, v33);
    sub_10000461C(v40);
  }

LABEL_13:
  (*(v7 + 8))(v9, v5);
  return v26;
}

uint64_t sub_100018BDC(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    v5 = a2[3];
    v6 = a2[4];
    sub_1000045D8(a2, v5);
    return (*(v6 + 80))(v5, v6);
  }

  else if (a1 == 1)
  {
    v2 = a2[3];
    v3 = a2[4];
    sub_1000045D8(a2, v2);
    return (*(v3 + 72))(v2, v3);
  }

  else
  {
    v7 = a2[3];
    v8 = a2[4];
    sub_1000045D8(a2, v7);
    if (a1 >= 3)
    {
      return (*(v8 + 88))(v7, v8);
    }

    else
    {
      return (*(v8 + 64))(v7, v8);
    }
  }
}

double sub_100018CD4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = a2[3];
  v9 = a2[4];
  sub_1000045D8(a2, v8);
  (*(v9 + 136))(v8, v9);
  v11 = v7 > 0.0 && v6 > 0.0;
  v12 = 1.0;
  v95 = v7;
  v96 = v6;
  v13 = v6 / v7;
  v101 = 1.0;
  if (v11)
  {
    v101 = exp2(-(v10 * v13));
  }

  v14 = a2[3];
  v15 = a2[4];
  sub_1000045D8(a2, v14);
  (*(v15 + 48))(v14, v15);
  if (v11)
  {
    v12 = exp2(-(v16 * v13));
  }

  v93 = v12;
  v17 = a2[3];
  v18 = a2[4];
  sub_1000045D8(a2, v17);
  v91 = (*(v18 + 40))(v17, v18);
  v97 = *(a1 + 16);
  v19 = a2[3];
  v20 = a2[4];
  sub_1000045D8(a2, v19);
  v90 = (*(v20 + 24))(v19, v20);
  v21 = a2[3];
  v22 = a2[4];
  sub_1000045D8(a2, v21);
  v88 = (*(v22 + 32))(v21, v22);
  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  sub_100018BDC(v24, a2);
  v89 = v25;
  v99 = *(a1 + 40);
  v26 = a2[3];
  v27 = a2[4];
  sub_1000045D8(a2, v26);
  v87 = (*(v27 + 104))(v26, v27);
  v28 = a2[3];
  v29 = a2[4];
  sub_1000045D8(a2, v28);
  v86 = (*(v29 + 112))(v28, v29);
  v98 = *(a1 + 8);
  v100 = *(a1 + 48);
  v30 = a2[3];
  v31 = a2[4];
  sub_1000045D8(a2, v30);
  v32 = (*(v31 + 16))(v30, v31);
  v33 = a2[3];
  v34 = a2[4];
  sub_1000045D8(a2, v33);
  v35 = (*(v34 + 8))(v33, v34);
  v36 = a2[3];
  v37 = a2[4];
  sub_1000045D8(a2, v36);
  v38 = (*(v37 + 56))(v36, v37);
  v39 = a2[3];
  v40 = a2[4];
  sub_1000045D8(a2, v39);
  v41 = (*(v40 + 96))(v39, v40);
  v42 = a2[3];
  v43 = a2[4];
  sub_1000045D8(a2, v42);
  v44 = (*(v43 + 120))(v42, v43);
  v45 = *(a1 + 88);
  v46 = a2[3];
  v47 = a2[4];
  sub_1000045D8(a2, v46);
  v48 = (*(v47 + 152))(v46, v47);
  v49 = *(a1 + 56);
  v50 = 1.0;
  if (v49 == 1)
  {
    v51 = a2[3];
    v52 = a2[4];
    v53 = v48;
    sub_1000045D8(a2, v51);
    v54 = (*(v52 + 144))(v51, v52);
    v48 = v53;
    v50 = 1.0 - v54;
  }

  v55 = v35;
  v56 = v32 + v35 + v38 + v41 + v44;
  if (v56 <= 0.0)
  {
    v56 = 1.0;
  }

  v57 = v99 * v87 + v86;
  if (v57 <= 1.0)
  {
    v58 = v99 * v87 + v86;
  }

  else
  {
    v58 = 1.0;
  }

  v59 = v57 > 0.0;
  v60 = 0.0;
  if (!v59)
  {
    v58 = 0.0;
  }

  v61 = v91;
  v62 = v97 * v90 + v88;
  if (v62 <= 1.0)
  {
    v63 = v97 * v90 + v88;
  }

  else
  {
    v63 = 1.0;
  }

  if (v62 > 0.0)
  {
    v60 = v63;
  }

  v64 = (1.0 - v91) * v60;
  v92 = v93 * (v91 * v23) + v101 * v64;
  v94 = v23;
  v65 = v50 / v56;
  v66 = v98 * v55;
  v67 = v89 * v38;
  v68 = v58 * v41;
  v69 = v100 * v44;
  v70 = ((v61 * v23 + v64) * v32 + v98 * v55 + v67 + v68 + v69) * (v50 / v56);
  v71 = pow(1.0 - v48, v45);
  v72 = v70 * v71;
  v73 = (v92 * v32 + v101 * (v66 + v67 + v68 + v69)) * v65 * v71;
  v74 = *a1;
  sub_10001875C(a2);
  v75 = *(a1 + 80);
  v77 = v74 * v76;
  v78 = 1.0 - v76;
  v79 = v74 * v76 + v72 * (1.0 - v76);
  v80 = v74 * v76 + v73 * (1.0 - v76);
  v81 = a2[3];
  v82 = a2[4];
  sub_1000045D8(a2, v81);
  v83 = (*(v82 + 128))(v81, v82);
  v84 = pow(1.0 - v83, v75);
  *a3 = v74;
  *(a3 + 8) = v98;
  result = v77 + v78 * (v73 * v84);
  *(a3 + 16) = v97;
  *(a3 + 24) = v94;
  *(a3 + 32) = v24;
  *(a3 + 40) = v99;
  *(a3 + 48) = v100;
  *(a3 + 56) = v49;
  *(a3 + 64) = v96;
  *(a3 + 72) = v95;
  *(a3 + 80) = v75;
  *(a3 + 88) = v45;
  *(a3 + 96) = v79;
  *(a3 + 104) = v80;
  *(a3 + 112) = result;
  return result;
}

void sub_10001934C(uint64_t a1)
{
  sub_1000193E8();
  if (v1 <= 0x3F)
  {
    sub_100019438();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000193E8()
{
  if (!qword_10004F300)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F300);
    }
  }
}

unint64_t sub_100019438()
{
  result = qword_10004F308;
  if (!qword_10004F308)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10004F308);
  }

  return result;
}

uint64_t sub_100019504(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = *a1;
  type metadata accessor for ScoredArticle(255, v4[2], v4[3], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t *sub_1000195C8(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = &_swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v19 = &_swiftEmptyArrayStorage;
  sub_100029940(0, v5, 0);
  v6 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v17[0] = *(i - 1);
    v17[1] = v9;

    a1(v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v18[0];
    v10 = v18[1];
    v19 = v6;
    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      sub_100029940((v12 > 1), v13 + 1, 1);
      v6 = v19;
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t *DiagnosticFileProvider.files()()
{
  v0 = sub_100019AC8();
  sub_100019D64();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EE10;
  *(inited + 32) = static Caches.Default.location.getter();
  *(inited + 40) = v2;
  *(inited + 48) = static Caches.Shared.location.getter();
  *(inited + 56) = v3;
  *(inited + 64) = static Caches.Charts.location.getter();
  *(inited + 72) = v4;
  sub_1000199D4(inited);
  return v0;
}

id DiagnosticFileProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiagnosticFileProvider.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1000198D8@<X0>(uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  v7 = URL.path.getter();
  v9 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a2 = v7;
  a2[1] = v9;
  return result;
}

uint64_t sub_1000199D4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10001DB64(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t *sub_100019AC8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v18[-v5];
  type metadata accessor for AppGroup();
  static AppGroup.stocks.getter();
  AppGroup.containerURL.getter();

  URL.appendingPathComponent(_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v19 = 0;
  v10 = [v8 contentsOfDirectoryAtPath:v9 error:&v19];

  v11 = v19;
  if (v10)
  {
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v11;

    __chkstk_darwin(v14);
    *&v18[-16] = v6;
    v15 = sub_1000195C8(sub_100019DD8, &v18[-32], v12);
  }

  else
  {
    v16 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v15 = &_swiftEmptyArrayStorage;
  }

  v7(v6, v0);
  return v15;
}

void sub_100019D64()
{
  if (!qword_1000503C0)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_1000503C0);
    }
  }
}

uint64_t sub_100019DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_100019E18, 0, 0);
}

uint64_t sub_100019E18()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100019EAC, v2, v1);
}

uint64_t sub_100019EAC()
{
  v1 = *(v0 + 64);

  v2 = v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v3 = *(v0 + 56);
  if (*(v0 + 40))
  {
    sub_1000061A0((v0 + 16), v3);
  }

  else
  {
    sub_100006580(v2, v3);
    if (*(v0 + 40))
    {
      sub_10001BF74(v0 + 16);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100019FB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return _swift_task_switch(sub_100019FD4, 0, 0);
}

uint64_t sub_100019FD4()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A068, v2, v1);
}

uint64_t sub_10001A068()
{

  v1 = sub_10001A108();
  v0[2] = v1;
  v0[3] = v2;
  v0[7] = v1;

  return _swift_task_switch(sub_10001A0DC, 0, 0);
}

uint64_t sub_10001A0DC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    *v3 = v1;
    v3[1] = v2;
    return (*(v0 + 8))();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A108()
{
  sub_1000036DC(0, &qword_10004F440, &protocol descriptor for CommandCenterType, 0);
  v1 = v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  sub_1000045D8((v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v4)
  {
    sub_1000061A0(&v3, v5);
  }

  else
  {
    sub_100006580(v1, v5);
  }

  sub_1000045D8(v5, v5[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  sub_10000461C(v5);
  return v3;
}

uint64_t sub_10001A238(unint64_t *a1, uint64_t a2)
{
  sub_1000036DC(0, a1, a2, 1);
  v4 = v3 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  sub_1000045D8((v3 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v3 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v7)
  {
    sub_1000061A0(&v6, v8);
  }

  else
  {
    sub_100006580(v4, v8);
  }

  sub_1000045D8(v8, v8[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  return sub_10000461C(v8);
}

uint64_t sub_10001A360(uint64_t (*a1)(void))
{
  a1(0);
  v2 = v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  sub_1000045D8((v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v1 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v5)
  {
    sub_1000061A0(&v4, v6);
  }

  else
  {
    sub_100006580(v2, v6);
  }

  sub_1000045D8(v6, v6[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  sub_10000461C(v6);
  return v4;
}

uint64_t sub_10001A484(uint64_t (*a1)(void))
{
  a1(0);
  v3 = v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver;
  sub_1000045D8((v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver), *(v2 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver + 24));
  sub_1000036DC(0, &unk_10004F020, &protocol descriptor for ResolverType, 1);
  dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (v6)
  {
    sub_1000061A0(&v5, v7);
  }

  else
  {
    sub_100006580(v3, v7);
  }

  sub_1000045D8(v7, v7[3]);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  return sub_10000461C(v7);
}

uint64_t sub_10001A5A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A5C8, 0, 0);
}

uint64_t sub_10001A5C8()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A65C, v2, v1);
}

uint64_t sub_10001A65C()
{

  sub_10001A238(&qword_10004F450, &protocol descriptor for HeadlineProviderFactoryType);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001A6DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A6FC, 0, 0);
}

uint64_t sub_10001A6FC()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A790, v2, v1);
}

uint64_t sub_10001A790()
{

  sub_10001A238(&qword_10004F458, &protocol descriptor for HeadlineServiceType);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001A810(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A830, 0, 0);
}

uint64_t sub_10001A830()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001A8C4, v2, v1);
}

uint64_t sub_10001A8C4()
{

  sub_10001A238(&qword_10004F460, &protocol descriptor for NowPlayingPresenting);

  return _swift_task_switch(sub_10001A944, 0, 0);
}

uint64_t sub_10001A944()
{
  if (*(v0 + 40))
  {
    sub_1000061A0((v0 + 16), *(v0 + 56));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A9B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001A9D8, 0, 0);
}

uint64_t sub_10001A9D8()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AA6C, v2, v1);
}

uint64_t sub_10001AA6C()
{

  sub_10001A238(&qword_10004F468, &protocol descriptor for ShareLinkProviderType);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001AAEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10001AB0C, 0, 0);
}

uint64_t sub_10001AB0C()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001ABA0, v2, v1);
}

uint64_t sub_10001ABA0()
{

  *(v0 + 48) = sub_10001A360(sub_10001C090);

  return _swift_task_switch(sub_10001AC24, 0, 0);
}

void sub_10001AC24()
{
  v1 = v0[6];
  if (v1)
  {
    v0[2] = v1;
    type metadata accessor for StocksActivity();
    sub_10001C090(0);
    sub_100009F84(&unk_10004F4D0, sub_10001C090, &protocol conformance descriptor for StackNavigator<A>);
    AnyNavigator.init<A>(base:)();
    v2 = v0[1];

    v2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001AD04(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_10001AD24, 0, 0);
}

uint64_t sub_10001AD24()
{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001ADB8, v2, v1);
}

uint64_t sub_10001ADB8()
{

  sub_10001A238(&qword_10004F480, &protocol descriptor for OpenArticleIntentNavigatorType);

  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001AE38(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10001AE58, 0, 0);
}

uint64_t sub_10001AE58()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AEEC, v2, v1);
}

uint64_t sub_10001AEEC()
{

  *(v0 + 40) = sub_10001A360(&type metadata accessor for Tracker);

  return _swift_task_switch(sub_10001AF70, 0, 0);
}

uint64_t sub_10001AF70()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    **(v0 + 16) = v1;
    return (*(v0 + 8))();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AF9C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &qword_10004F4B8, &type metadata accessor for ArticleTopStoriesOptionsProvider);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B048, 0, 0);
}

uint64_t sub_10001B048()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B0DC, v2, v1);
}

uint64_t sub_10001B0DC()
{

  sub_10001A484(&type metadata accessor for ArticleTopStoriesOptionsProvider);

  return _swift_task_switch(sub_10001B164, 0, 0);
}

uint64_t sub_10001B164()
{
  v1 = v0[4];
  v2 = type metadata accessor for ArticleTopStoriesOptionsProvider();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v5[3] = v2;
    v5[4] = sub_100009F84(&qword_10004F4C0, &type metadata accessor for ArticleTopStoriesOptionsProvider, &protocol conformance descriptor for ArticleTopStoriesOptionsProvider);
    v6 = sub_10000EE0C(v5);
    (*(v3 + 32))(v6, v1, v2);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_10001B2AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &qword_10004F4B8, &type metadata accessor for ArticleTopStoriesOptionsProvider);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B358, 0, 0);
}

uint64_t sub_10001B358()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B3EC, v2, v1);
}

uint64_t sub_10001B3EC()
{

  sub_10001A484(&type metadata accessor for ArticleTopStoriesOptionsProvider);

  return _swift_task_switch(sub_10001C0B4, 0, 0);
}

uint64_t sub_10001B474(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10001C03C(0, &unk_10004F4A0, &type metadata accessor for SavedArticleOptionsProvider);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10001B520, 0, 0);
}

uint64_t sub_10001B520()
{
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001B5B4, v2, v1);
}

uint64_t sub_10001B5B4()
{

  sub_10001A484(&type metadata accessor for SavedArticleOptionsProvider);

  return _swift_task_switch(sub_10001B63C, 0, 0);
}

uint64_t sub_10001B63C()
{
  v1 = v0[4];
  v2 = type metadata accessor for SavedArticleOptionsProvider();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    v5[3] = v2;
    v5[4] = &protocol witness table for SavedArticleOptionsProvider;
    v6 = sub_10000EE0C(v5);
    (*(v3 + 32))(v6, v1, v2);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_10001B750()
{
  v1 = OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_executionPhase;
  v2 = type metadata accessor for StartupTaskExecutionPhase();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000461C((v0 + OBJC_IVAR____TtC9StocksApp31AppIntentsDependencyStartupTask_initialResolver));

  return swift_deallocClassInstance();
}

uint64_t sub_10001B818(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012308;

  return sub_100019DF8(a1, v1);
}

uint64_t sub_10001B8B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_100019FB4(a1, v1);
}

uint64_t sub_10001B950(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A5A8(a1, v1);
}

uint64_t sub_10001B9EC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A6DC(a1, v1);
}

uint64_t sub_10001BA88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A810(a1, v1);
}

uint64_t sub_10001BB24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001A9B8(a1, v1);
}

uint64_t sub_10001BBC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AAEC(a1, v1);
}

uint64_t sub_10001BC5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AD04(a1, v1);
}

uint64_t sub_10001BCF8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100012308;

  return sub_10001AE38(a1, v1);
}

uint64_t sub_10001BD94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001AF9C(a1, v1);
}

uint64_t sub_10001BE30(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001B2AC(a1, v1);
}

uint64_t sub_10001BECC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001C0B0;

  return sub_10001B474(a1, v1);
}

uint64_t sub_10001BF74(uint64_t a1)
{
  sub_10001BFD0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001BFD0(uint64_t a1)
{
  if (!qword_10004F4B0)
  {
    sub_1000036DC(255, &unk_10004F020, &protocol descriptor for ResolverType, 1);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F4B0);
    }
  }
}

void sub_10001C03C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t *Settings.Debug.clearCacheOnNextLaunch.unsafeMutableAddressor()
{
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  return &static Settings.Debug.clearCacheOnNextLaunch;
}

unint64_t Storefront.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x313434333431;
    v7 = 0x343434333431;
    v8 = 0x353534333431;
    if (a1 != 3)
    {
      v8 = 0x303634333431;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x323534333431;
    v2 = 0x333434333431;
    if (a1 != 9)
    {
      v2 = 0x323434333431;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x353634333431;
    v4 = 0x323634333431;
    if (a1 != 6)
    {
      v4 = 0x313734333431;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10001C240(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = Storefront.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Storefront.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001C2C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Storefront.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001C32C(uint64_t a1)
{
  Storefront.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int sub_10001C380(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Storefront.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10001C3E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9StocksApp10StorefrontO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10001C410@<X0>(unint64_t *a1@<X8>)
{
  result = Storefront.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001C43C(uint64_t a1)
{
  v2 = sub_10001CD18();

  return static RawRepresentable<>.dataType.getter(a1, v2, &protocol witness table for String);
}

uint64_t sub_10001C490(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001CD18();

  return static RawRepresentable<>.convert(from:)(a1, a2, v4, &protocol witness table for String);
}

uint64_t sub_10001C4EC(uint64_t a1)
{
  v2 = sub_10001CD18();

  return RawRepresentable<>.toData()(a1, v2, &protocol witness table for String);
}

uint64_t sub_10001C564()
{
  v0 = type metadata accessor for Access();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Domain();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10001CD6C(0);
  v9[15] = 0;
  *v7 = 0xD000000000000012;
  v7[1] = 0x800000010003CA40;
  (*(v5 + 104))(v7, enum case for Domain.domain(_:), v4);
  (*(v1 + 104))(v3, enum case for Access.protected(_:), v0);
  sub_10001CE1C(0);
  sub_10001CE74();
  *(swift_allocObject() + 16) = xmmword_10003F1E0;
  v9[14] = 0;
  Option.init(label:value:description:)();
  v9[13] = 1;
  Option.init(label:value:description:)();
  v9[12] = 2;
  Option.init(label:value:description:)();
  v9[11] = 3;
  Option.init(label:value:description:)();
  v9[10] = 4;
  Option.init(label:value:description:)();
  v9[9] = 5;
  Option.init(label:value:description:)();
  v9[8] = 6;
  Option.init(label:value:description:)();
  v9[7] = 7;
  Option.init(label:value:description:)();
  v9[6] = 8;
  Option.init(label:value:description:)();
  v9[5] = 9;
  Option.init(label:value:description:)();
  v9[4] = 10;
  Option.init(label:value:description:)();
  sub_10001CEC4();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  static Settings.Debug.storefront = result;
  return result;
}

uint64_t *Settings.Debug.storefront.unsafeMutableAddressor()
{
  if (qword_10004EA70 != -1)
  {
    swift_once();
  }

  return &static Settings.Debug.storefront;
}

uint64_t sub_10001CA9C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

unint64_t _s9StocksApp10StorefrontO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10004A9A8, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001CB48()
{
  result = qword_10004F4E0;
  if (!qword_10004F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Storefront(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Storefront(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001CD18()
{
  result = qword_10004F4E8;
  if (!qword_10004F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4E8);
  }

  return result;
}

void sub_10001CD6C(uint64_t a1)
{
  if (!qword_10004F4F0)
  {
    sub_10001CDC8();
    v1 = type metadata accessor for Setting();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F4F0);
    }
  }
}

unint64_t sub_10001CDC8()
{
  result = qword_10004F4F8;
  if (!qword_10004F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F4F8);
  }

  return result;
}

void sub_10001CE1C(uint64_t a1)
{
  if (!qword_10004F500)
  {
    sub_10001CE74();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_10004F500);
    }
  }
}

void sub_10001CE74()
{
  if (!qword_10004F508)
  {
    v0 = type metadata accessor for Option();
    if (!v1)
    {
      atomic_store(v0, &qword_10004F508);
    }
  }
}

unint64_t sub_10001CEC4()
{
  result = qword_10004F510;
  if (!qword_10004F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F510);
  }

  return result;
}

__n128 sub_10001CF1C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for ScoredArticle(0, a3, a4, v9) + 36);
  v11 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = *(a2 + 112);
  v12 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v12;
  result = *(a2 + 32);
  v14 = *(a2 + 48);
  *(v10 + 32) = result;
  *(v10 + 48) = v14;
  return result;
}

__n128 ScoredArticle.score.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v4 = *(v3 + 80);
  *(a2 + 64) = *(v3 + 64);
  *(a2 + 80) = v4;
  *(a2 + 96) = *(v3 + 96);
  *(a2 + 112) = *(v3 + 112);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v5;
  result = *(v3 + 32);
  v7 = *(v3 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t sub_10001D030(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001D0A8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v15) + 1;
}

double sub_10001D1E8(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFF88)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFF88)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 120);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0xFE)
    {
      result = 0.0;
      *(v19 + 104) = 0u;
      *(v19 + 88) = 0u;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      *(v19 + 40) = 0u;
      *(v19 + 24) = 0u;
      *(v19 + 8) = 0u;
      *v19 = a2 - 255;
    }

    else
    {
      *(v19 + 56) = a2 + 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_10001D408()
{
  sub_10000461C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_10001D51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DebugModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100006580(a2, v15);
  v9 = swift_allocObject();
  sub_1000061A0(v15, v9 + 16);
  *v8 = sub_10001DB54;
  v8[1] = v9;
  v10 = enum case for DebugModel.action(_:);
  v11 = *(v6 + 104);
  v11(v8, enum case for DebugModel.action(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  v12 = *(v6 + 8);
  v12(v8, v5);
  *v8 = sub_10001DB5C;
  v8[1] = a3;
  v11(v8, v10, v5);

  dispatch thunk of DebugDataSource.add(_:_:)();
  v12(v8, v5);
  *v8 = sub_10001D8A0;
  v8[1] = 0;
  v11(v8, enum case for DebugModel.modal(_:), v5);
  dispatch thunk of DebugDataSource.add(_:_:)();
  return (v12)(v8, v5);
}

void *sub_10001D764(void *a1)
{
  sub_1000045D8(a1, a1[3]);
  sub_10001E05C();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v3)
  {
    sub_1000061A0(&v2, v4);
    sub_1000045D8(v4, v4[3]);
    dispatch thunk of FeedItemDismissalStorageType.clear()();
    return sub_10000461C(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001D7FC()
{
  if (qword_10004EA68 != -1)
  {
    swift_once();
  }

  type metadata accessor for DebugAssembly();
  sub_10001E01C(&qword_10004F7C0, &unk_10003F488);
  Updatable.save<A>(setting:value:)();
  exit(0);
}

void sub_10001D8A0()
{
  v0 = [objc_allocWithZone(type metadata accessor for DiagnosticFileProvider()) init];
  v1 = sub_100019AC8();
  sub_10001DFD0(0, &qword_1000503C0, &type metadata for String);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003EE10;
  *(inited + 32) = static Caches.Default.location.getter();
  *(inited + 40) = v3;
  *(inited + 48) = static Caches.Shared.location.getter();
  *(inited + 56) = v4;
  *(inited + 64) = static Caches.Charts.location.getter();
  *(inited + 72) = v5;
  v15[0] = v1;
  sub_1000199D4(inited);

  v6 = v1[2];
  if (v6)
  {
    v7 = 0;
    v8 = v15[0] + 40;
    v9 = &_swiftEmptyArrayStorage;
    while (v7 < v1[2])
    {
      v16 = type metadata accessor for URL();
      sub_10000EE0C(v15);

      URL.init(fileURLWithPath:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10001DC74(0, *(v9 + 2) + 1, 1, v9);
      }

      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
      if (v11 >= v10 >> 1)
      {
        v9 = sub_10001DC74((v10 > 1), v11 + 1, 1, v9);
      }

      ++v7;
      *(v9 + 2) = v11 + 1;
      sub_10001DF74(v15, &v9[32 * v11 + 32]);
      v8 += 16;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v12 = objc_allocWithZone(UIActivityViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    sub_10001DF84();
    v14 = Array._bridgeToObjectiveC()().super.isa;
    [v12 initWithActivityItems:isa applicationActivities:v14];
  }
}