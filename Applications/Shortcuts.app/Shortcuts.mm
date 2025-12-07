uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

id sub_100002DA4()
{
  result = VCIsInternalBuild();
  if (result)
  {
    v1 = +[NSUserDefaults systemShortcutsUserDefaults];
    v2 = [v1 BOOLForKey:WFLeakDetectionEnabledKey];

    return v2;
  }

  return result;
}

uint64_t sub_100002E10()
{
  result = VCIsInternalBuild();
  if (result)
  {
    type metadata accessor for LogStreamManager();
    static LogStreamManager.shared.getter();
    dispatch thunk of LogStreamManager.start()();

    type metadata accessor for AttributeGraphProfiler();
    static AttributeGraphProfiler.shared.getter();
    dispatch thunk of AttributeGraphProfiler.start()();
  }

  return result;
}

uint64_t sub_100002E90(uint64_t a1)
{
  sub_1000042A8(*(v1 - 128), 1, 1, a1);
  v3 = *(v1 - 120);

  return sub_1000042A8(v3, 1, 1, a1);
}

uint64_t sub_100002F40(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100002F6C(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t sub_100002F88()
{

  return sub_10000823C(v0, v3, v1, v2);
}

uint64_t sub_100002FC4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100003004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000030A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000030B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000030C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000030D4()
{
  result = qword_100102610;
  if (!qword_100102610)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102610);
  }

  return result;
}

unint64_t sub_10000312C()
{
  result = qword_100102620;
  if (!qword_100102620)
  {
    sub_100041CB4(&qword_1001001C0, &qword_1000C4830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102620);
  }

  return result;
}

uint64_t sub_100003190(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000031D4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - v6;
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v37 = WFLogCategoryGeneral;
  static WFLog.subscript.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v36 = v4;
    v14 = v1;
    v15 = v0;
    v16 = v13;
    v38 = v13;
    *v12 = 136315138;
    v17 = Array.description.getter();
    v19 = sub_10000DA48(v17, v18, &v38);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "IntelligencePlatformHelper: Building views: %s", v12, 0xCu);
    sub_10000DF90(v16);
    v0 = v15;
    v1 = v14;
    v4 = v36;
  }

  v20 = *(v1 + 8);
  v20(v9, v0);
  v21 = [objc_allocWithZone(GDXPCViewService) init];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v38 = 0;
  v23 = [v21 performUpdateForViewNames:isa includeDependencies:1 error:&v38];

  if (v23)
  {
    v24 = v38;
    static WFLog.subscript.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "IntelligencePlatformHelper: Done building views", v27, 2u);
    }
  }

  else
  {
    v28 = v38;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static WFLog.subscript.getter();
    swift_errorRetain();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&_mh_execute_header, v29, v30, "IntelligencePlatformHelper: error initializing: %@", v31, 0xCu);
      sub_100074C1C(v32);
    }

    else
    {
    }

    v7 = v4;
  }

  return (v20)(v7, v0);
}

uint64_t sub_10000365C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  sub_100004458();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000039BC();
  v6 = v5 - v4;
  v25 = type metadata accessor for DispatchQoS();
  sub_100004458();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v12 = v11 - v10;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100004458();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000039BC();
  v19 = v18 - v17;
  sub_100074BD8();
  (*(v15 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v19, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  aBlock[4] = sub_100003A74;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003190;
  aBlock[3] = &unk_1000F2CC8;
  v22 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  sub_1000030D4();
  sub_10002E87C(&qword_1001001C0, &qword_1000C4830);
  sub_10000312C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v2 + 8))(v6, v0);
  (*(v8 + 8))(v12, v25);
}

uint64_t sub_10000396C(uint64_t a1)
{
  sub_1000042A8(*(v1 - 136), 1, 1, a1);
  v3 = *(v1 - 128);

  return sub_1000042A8(v3, 1, 1, a1);
}

uint64_t sub_1000039DC()
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_100003A94(uint64_t a1)
{
  type metadata accessor for RootNavigationDestination();
  if (v1 <= 0x3F)
  {
    sub_100003CC0(319, &qword_1000FFB90, &type metadata accessor for RootNavigationDestination);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100003C20(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_100003C60(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000095CC();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100003D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100003D74()
{
  sub_100003A0C();
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  sub_100019C2C();
  (*(v2 + 104))(v0, enum case for RootNavigationDestination.allShortcuts(_:));
  v3 = objc_allocWithZone(type metadata accessor for MainViewController(0));
  v4 = sub_100019BF0();
  v6 = v5;
  sub_100004008(v4, v7);
  sub_100007DC8();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_100003F80@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_100003FE4(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

char *sub_100004008(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for RootNavigationDestination();
  sub_100004730();
  sub_1000042A8(v7, v8, v9, v6);
  *(v3 + OBJC_IVAR___WFMainViewController_navigationCompletions) = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR___WFMainViewController_mainUndoManager;
  *(v3 + v10) = [objc_allocWithZone(NSUndoManager) init];
  *(v3 + OBJC_IVAR___WFMainViewController_display) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController____lazy_storage___columnSidebar) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController____lazy_storage___compactSidebar) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController____lazy_storage___columnGalleryViewController) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController____lazy_storage___compactGalleryViewController) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController____lazy_storage___searchStateController) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController_content) = 0;
  *(v3 + OBJC_IVAR___WFMainViewController_database) = a1;
  (*(*(v6 - 8) + 16))(v3 + OBJC_IVAR___WFMainViewController_initialDestination, a2, v6);
  sub_100002FC4(0, &qword_100100150, WFLibraryRunCoordinator_ptr);
  v11 = WFWorkflowRunSourceMyWorkflows;
  v12 = a1;
  *(v3 + OBJC_IVAR___WFMainViewController_runCoordinator) = sub_10000433C(v11, v12);
  v13 = [objc_allocWithZone(UISplitViewController) initWithStyle:1];
  *(v3 + OBJC_IVAR___WFMainViewController_splitView) = v13;
  v14 = objc_allocWithZone(type metadata accessor for AutoShortcutsAppsDataSource());
  *(v3 + OBJC_IVAR___WFMainViewController_autoShortcutsDataSource) = AutoShortcutsAppsDataSource.init(organizedCollections:)();
  v25 = type metadata accessor for MainViewController(0);
  sub_100005BC0();
  v17 = objc_msgSendSuper2(v15, v16, v3, v25);
  sub_10000448C();
  sub_100004594(v18, v19);
  v20 = v17;
  sub_100012B10();
  RootView.setup()();
  v21 = OBJC_IVAR___WFMainViewController_runCoordinator;
  [*&v20[OBJC_IVAR___WFMainViewController_runCoordinator] setDelegate:v20];
  [*&v20[v21] registerObserver:v20];

  v22 = sub_1000042EC();
  v23(v22);
  return v20;
}

uint64_t sub_1000042D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

id sub_10000433C(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSource:a1 database:a2];

  return v4;
}

uint64_t sub_1000043EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000966C(a1, a2, a3);
}

uint64_t sub_100004410(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t sub_10000446C(uint64_t a1)
{

  return swift_once();
}

id sub_1000044A4()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

id sub_100004510()
{
  v3 = *(v1 + 2944);

  return [v0 v3];
}

uint64_t (*sub_10000456C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>))()
{
  *(v2 + 216) = a2;
  *(v2 + 224) = a1;
  return sub_1000B0778;
}

uint64_t sub_100004594(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000046A8()
{

  return type metadata accessor for LocalizedStringResource();
}

uint64_t sub_1000046C4(uint64_t a1)
{
}

uint64_t sub_10000473C()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000047B0()
{
  type metadata accessor for PrefetchableImage.Coordinator();
  static PrefetchableImage.Coordinator.current.getter();
  dispatch thunk of PrefetchableImage.Coordinator.activate()();
}

void sub_100004840()
{
  v28.receiver = v0;
  v28.super_class = sub_100041F8C();
  objc_msgSendSuper2(&v28, "viewDidLoad");
  sub_100004B44();
  v2 = v1;
  [v1 setDelegate:v0];
  v3 = sub_100008288();
  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];

  v5 = *&v0[OBJC_IVAR___WFMainViewController_splitView];
  [v5 setViewController:v4 forColumn:0];
  [v5 setViewController:v2 forColumn:3];
  [v0 addChildViewController:v5];
  v6 = [v5 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v7 setFrame:{v11, v13, v15, v17}];
  v18 = [v5 view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v18 setAutoresizingMask:18];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  v22 = [v5 view];
  if (v22)
  {
    v23 = v22;
    [v21 addSubview:v22];

    [v5 didMoveToParentViewController:v0];
    v24 = [v0 traitCollection];
    sub_10000BF98();

    sub_10000448C();
    sub_100004594(v25, v26);
    RootView.navigate(to:)();
    v27 = [objc_opt_self() defaultCenter];
    [v27 addObserver:v0 selector:"didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100004B24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_100004B44()
{
  sub_1000043AC();
  v2 = v0;
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_1000043E0();
  v6 = sub_100005600();
  String._bridgeToObjectiveC()();
  v7 = sub_100041DE8();
  v8 = sub_100012B10();
  v9 = sub_100005D9C(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100002FC4(0, &qword_100100110, UIImage_ptr);
  sub_100004B18();
  v14 = sub_100007B58(0xD000000000000014, v13);
  v73 = *(v4 + 104);
  v15 = sub_100006A18();
  v16(v15);
  v17 = sub_100007C20(v1);
  v18 = *(v4 + 8);
  v19 = sub_100005CF0();
  v18(v19);
  v69 = v18;
  v20 = objc_allocWithZone(UITabBarItem);
  v21 = sub_10000619C(v10, v12, v14, v17);
  [v6 setTabBarItem:v21];

  v72 = [objc_allocWithZone(UINavigationController) initWithRootViewController:*&v2[OBJC_IVAR___WFMainViewController____lazy_storage___compactSidebar]];
  v22 = [v72 navigationBar];
  [v22 setPrefersLargeTitles:1];

  v71 = v2;
  [v72 setDelegate:v2];
  v23 = *&v2[OBJC_IVAR___WFMainViewController_database];
  v24 = objc_allocWithZone(type metadata accessor for TriggerRootViewController());
  v25 = v23;
  v26 = TriggerRootViewController.init(with:)();
  v27 = String._bridgeToObjectiveC()();
  String._bridgeToObjectiveC()();
  v28 = sub_10000AB30();
  v29 = sub_100005D9C(v28);

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  v33 = sub_100007B58(0x636F6C636B736564, 0xEE006C6C69662E6BLL);
  v34 = sub_100006A18();
  v73(v34);
  v35 = sub_100007C20(v1);
  v36 = sub_100005CF0();
  v18(v36);
  v37 = objc_allocWithZone(UITabBarItem);
  v38 = sub_10000619C(v30, v32, v33, v35);
  [v26 setTabBarItem:v38];

  v70 = v26;
  v39 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v26];

  v40 = [v39 navigationBar];
  [v40 setPrefersLargeTitles:1];

  String._bridgeToObjectiveC()();
  v41 = sub_100041DE8();
  v42 = sub_100041F0C();
  v43 = sub_100005D9C(v42);

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  sub_100004B18();
  v48 = sub_100007B58(0xD000000000000014, v47);
  v49 = enum case for GalleryNavigationDestination.home(_:);
  v50 = type metadata accessor for GalleryNavigationDestination();
  sub_100003EC8();
  (*(v51 + 104))(v1, v49, v50);
  sub_1000060AC();
  sub_1000042A8(v52, v53, v54, v50);
  v55 = sub_100006A18();
  v73(v55);
  v56 = sub_100007C20(v1);
  v57 = sub_100005CF0();
  v69(v57);
  v58 = objc_allocWithZone(UITabBarItem);
  v59 = sub_10000619C(v44, v46, v48, v56);
  sub_100007D88();
  v61 = v60;
  v62 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v60];

  v63 = [v62 navigationBar];
  [v63 setPrefersLargeTitles:1];

  [*&v71[OBJC_IVAR___WFMainViewController____lazy_storage___compactGalleryViewController] setTabBarItem:v59];
  [objc_allocWithZone(UITabBarController) init];
  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1000C0DA0;
  *(v64 + 32) = v72;
  *(v64 + 40) = v39;
  *(v64 + 48) = v62;
  v65 = v72;
  v66 = v39;
  v67 = sub_1000043C4();
  sub_100006AB4(v67, v68);

  sub_100002EEC();
}

uint64_t sub_100005190()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000051B8(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 32) = v2;

  return type metadata accessor for LibraryDataSource();
}

id sub_1000052B8(uint64_t a1)
{
  v2 = type metadata accessor for SidebarStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E87C(&qword_100100120, &unk_1000C1300);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000C0D90;
  type metadata accessor for MyShortcutsSidebarSection();
  swift_allocObject();
  v7 = MyShortcutsSidebarSection.init(name:)();
  v8 = sub_100004594(&qword_100100128, &type metadata accessor for MyShortcutsSidebarSection);
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  v9 = *(a1 + OBJC_IVAR___WFMainViewController_database);
  v10 = [v9 sortedVisibleFolders];
  type metadata accessor for FoldersSidebarSection();
  swift_allocObject();
  v11 = FoldersSidebarSection.init(folders:)();
  v12 = sub_100004594(&qword_100100130, &type metadata accessor for FoldersSidebarSection);
  *(v6 + 48) = v11;
  *(v6 + 56) = v12;
  v13 = *(a1 + OBJC_IVAR___WFMainViewController_autoShortcutsDataSource);
  type metadata accessor for AutoShortcutsSidebarSection();
  swift_allocObject();
  v14 = v13;
  v15 = AutoShortcutsSidebarSection.init(dataSource:)();
  v16 = sub_100004594(&qword_100100138, &type metadata accessor for AutoShortcutsSidebarSection);
  *(v6 + 64) = v15;
  *(v6 + 72) = v16;
  (*(v3 + 104))(v5, enum case for SidebarStyle.compact(_:), v2);
  v17 = v9;
  v18 = sub_100005620();
  v19 = objc_allocWithZone(type metadata accessor for SidebarViewController(0));
  v20 = sub_1000058BC(v5, v17, v18, v6, 1);
  sub_100004594(&qword_1000FFF78, type metadata accessor for SidebarViewController);
  RootViewSidebar.setup(with:)();
  return v20;
}

id sub_10000559C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_100005620()
{
  v1 = *&v0[OBJC_IVAR___WFMainViewController_database];
  v2 = [v0 undoManager];
  sub_100003A0C();
  type metadata accessor for ShortcutMoveService();
  swift_allocObject();
  sub_100005BCC();
  return ShortcutMoveService.init(database:undoManager:)();
}

void *sub_10000568C()
{
  v1 = *(v0 + OBJC_IVAR___WFMainViewController_mainUndoManager);
  v2 = v1;
  return v1;
}

uint64_t sub_1000056FC(uint64_t a1, uint64_t a2)
{
  sub_10004D458(a1, a2);

  return swift_beginAccess();
}

uint64_t sub_100005764(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

uint64_t type metadata accessor for SidebarViewController(uint64_t a1)
{
  result = qword_100102740;
  if (!qword_100102740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000057CC(uint64_t a1)
{
  result = type metadata accessor for SidebarStyle();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_1000058BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR___WFSidebarViewController_animateDataReload) = 2;
  *(v6 + OBJC_IVAR___WFSidebarViewController____lazy_storage___toolbarViewController) = 1;
  v13 = (v6 + OBJC_IVAR___WFSidebarViewController____lazy_storage___barButtons);
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  *(v6 + OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource) = 0;
  v14 = OBJC_IVAR___WFSidebarViewController_style;
  v15 = type metadata accessor for SidebarStyle();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6 + v14, a1, v15);
  *(v6 + OBJC_IVAR___WFSidebarViewController_database) = a2;
  *(v6 + OBJC_IVAR___WFSidebarViewController_sections) = a4;
  *(v6 + OBJC_IVAR___WFSidebarViewController_isCompact) = a5;
  *(v6 + OBJC_IVAR___WFSidebarViewController_shortcutMoveService) = a3;
  v17 = a2;

  sub_100005BC0();
  v20 = objc_msgSendSuper2(v18, v19, v6, ObjectType);
  v21 = 0;
  if (a5)
  {
    v22 = sub_100005D68();
    v23 = sub_1000060E8();
    v24 = sub_100005D9C(v22);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v20 setTitle:v21];

  (*(v16 + 8))(a1, v15);
  return v20;
}

void sub_100005B0C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 40) = v1;

  type metadata accessor for Key(0);
}

uint64_t sub_100005B54()
{

  return type metadata accessor for IndexPath();
}

uint64_t sub_100005C00(uint64_t result)
{
  *(v2 - 224) = v1;
  *(v2 - 216) = result;
  *(v2 - 256) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100005C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return _AssistantIntent.init<A>(_:phrases:parameterValues:)();
}

uint64_t sub_100005C6C()
{

  return ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(v0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_100005CCC()
{
  *(v1 - 120) = v0;
  *(v1 - 112) = 0;
  *(v1 - 152) = _NSConcreteStackBlock;
}

void sub_100005D5C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = a1;
}

NSString sub_100005D68()
{

  return String._bridgeToObjectiveC()();
}

id sub_100005D9C(void *a1)
{
  v1 = a1;
  v2 = sub_100005E9C();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

uint64_t sub_100005E18()
{

  return UIListContentConfiguration.textProperties.getter();
}

id sub_100005E68()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

id sub_100005E9C()
{
  if (qword_100109BE8 != -1)
  {
    dispatch_once(&qword_100109BE8, &stru_1000F4360);
  }

  v1 = qword_100109BE0;

  return v1;
}

void sub_100005EF0(id a1)
{
  memset(&v5, 0, sizeof(v5));
  if (dladdr(sub_100005E9C, &v5) && v5.dli_fname)
  {
    v1 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    v3 = [NSBundle bundleWithURL:v2];
    v4 = qword_100109BE0;
    qword_100109BE0 = v3;
  }

  else
  {
    v1 = getWFGeneralLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

void sub_100006018(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a3 *a4];
}

NSString sub_1000060E8()
{

  return String._bridgeToObjectiveC()();
}

id sub_100006160(id a1, SEL a2)
{

  return [a1 a2];
}

id sub_10000619C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 initWithTitle:v8 image:a3 tag:a4];

  return v9;
}

uint64_t sub_100006220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000062B4(void *a1)
{
  sub_100002FB8();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100006348()
{

  return swift_dynamicCast();
}

void sub_1000063AC(uint64_t a1)
{
  sub_1000079FC();
  v3 = v2;
  type metadata accessor for GalleryNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v5 = *v3;
  v6 = *&v1[*v3];
  if (!v6)
  {
    v7 = type metadata accessor for GalleryHostingViewController(0);
    v8 = sub_10000637C();
    v9(v8);
    sub_10000448C();
    v12 = sub_100004594(v10, v11);
    v13 = WFUserInterfaceFromViewController();
    ObjectType = swift_getObjectType();
    v15 = v1;
    v16 = sub_100005BCC();
    v18 = sub_100006688(v16, v17, v12, v13, v7, ObjectType);
    v19 = *&v1[v5];
    *&v1[v5] = v18;
    v18;

    v6 = 0;
  }

  v20 = v6;
  sub_1000046DC();
}

void sub_100006504(uint64_t a1)
{
  type metadata accessor for GalleryNavigationDestination();
  if (v1 <= 0x3F)
  {
    sub_100003CC0(319, &qword_1000FFE58, &type metadata accessor for RootPPTTestCase);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100006640(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_100006658(uint64_t a1)
{

  return swift_dynamicCast();
}

char *sub_100006688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(type metadata accessor for GalleryHostingViewController(0));

  return sub_100007E14(a1, a2, a3, a4, v10);
}

uint64_t sub_1000066FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for GalleryNavigationDestination();
  __chkstk_darwin(v12);
  (*(v14 + 16))(&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  GalleryView.init(destination:)();
  KeyPath = swift_getKeyPath();
  v16 = (a6 + *(sub_10002E87C(&qword_1000FFFE8, &qword_1000C1238) + 36));
  *v16 = KeyPath;
  v16[1] = a2;
  v16[2] = a3;
  v17 = swift_getKeyPath();
  v18 = (a6 + *(sub_10002E87C(&qword_1000FFFF0, &unk_1000C1270) + 36));
  *v18 = v17;
  v18[1] = a4;
  type metadata accessor for GallerySearchManager();
  sub_100004594(&qword_1000FFFF8, &type metadata accessor for GallerySearchManager);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = static ObservableObject.environmentStore.getter();
  v20 = (a6 + *(sub_10002E87C(&qword_1000FFFD8, &qword_1000C11F8) + 36));
  *v20 = v19;
  v20[1] = a5;
}

uint64_t sub_1000068DC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.rootNavigator.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000690C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.userInterface.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000069B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10002E87C(a2, a3);
  sub_100003EC8();
  (*(v4 + 8))(a1);
  return a1;
}

id sub_100006A70(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hostingController) contentScrollViewForEdge:a1];

  return v2;
}

void sub_100006AB4(uint64_t a1, void *a2)
{
  sub_100002FC4(0, &qword_1000FFFA8, UIViewController_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setViewControllers:isa];
}

uint64_t sub_100006B38()
{

  return sub_1000042A8(v1, 0, 1, v0);
}

uint64_t sub_100006B58()
{

  return OpenWorkflowOptions.init(scrolledToActionIndex:actionError:isNewWorkflow:showIconPicker:isEmbeddedInAutomation:triggerInputType:onOpen:)();
}

uint64_t sub_100006B90(uint64_t a1)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id sub_100006BD0(uint64_t a1)
{
  v33 = type metadata accessor for SidebarStyle();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E87C(&qword_100100120, &unk_1000C1300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C0D70;
  sub_10002E87C(&qword_100100160, &qword_1000C1310);
  v5 = type metadata accessor for RootNavigationDestination();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000C0D80;
  v10 = v9 + v8;
  v11 = enum case for GalleryNavigationDestination.home(_:);
  v12 = type metadata accessor for GalleryNavigationDestination();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  sub_1000042A8(v10, 0, 1, v12);
  v13 = *(v6 + 104);
  v13(v10, enum case for RootNavigationDestination.gallery(_:), v5);
  v13(v10 + v7, enum case for RootNavigationDestination.automations(_:), v5);
  type metadata accessor for StaticSidebarSection();
  swift_allocObject();
  v14 = StaticSidebarSection.init(name:destinations:)();
  v15 = sub_100004594(&qword_100100168, &type metadata accessor for StaticSidebarSection);
  *(v4 + 32) = v14;
  *(v4 + 40) = v15;
  type metadata accessor for MyShortcutsSidebarSection();
  swift_allocObject();
  v16 = MyShortcutsSidebarSection.init(name:)();
  v17 = sub_100004594(&qword_100100128, &type metadata accessor for MyShortcutsSidebarSection);
  *(v4 + 48) = v16;
  *(v4 + 56) = v17;
  v18 = *(a1 + OBJC_IVAR___WFMainViewController_database);
  v19 = [v18 sortedVisibleFolders];
  type metadata accessor for FoldersSidebarSection();
  swift_allocObject();
  v20 = FoldersSidebarSection.init(folders:)();
  v21 = sub_100004594(&qword_100100130, &type metadata accessor for FoldersSidebarSection);
  *(v4 + 64) = v20;
  *(v4 + 72) = v21;
  v22 = *(a1 + OBJC_IVAR___WFMainViewController_autoShortcutsDataSource);
  type metadata accessor for AutoShortcutsSidebarSection();
  swift_allocObject();
  v23 = v22;
  v24 = AutoShortcutsSidebarSection.init(dataSource:)();
  v25 = sub_100004594(&qword_100100138, &type metadata accessor for AutoShortcutsSidebarSection);
  *(v4 + 80) = v24;
  *(v4 + 88) = v25;
  v26 = v32;
  (*(v2 + 104))(v32, enum case for SidebarStyle.column(_:), v33);
  v27 = v18;
  v28 = sub_100005620();
  v29 = objc_allocWithZone(type metadata accessor for SidebarViewController(0));
  v30 = sub_1000058BC(v26, v27, v28, v4, 0);
  sub_100004594(&qword_1000FFF78, type metadata accessor for SidebarViewController);
  RootViewSidebar.setup(with:)();
  return v30;
}

uint64_t sub_1000070E4(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable();

  return RootView.navigate(to:with:completion:)();
}

uint64_t sub_1000071C0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t (*)(void)))
{
  if (*(v2 + OBJC_IVAR___WFMainViewController_display))
  {
    return a2(a1);
  }

  else
  {
    return a1();
  }
}

char *sub_1000071E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10002E87C(a3, a4);
  v8 = sub_10000E8D4();
  v9 = *(a5(v8) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  result = j__malloc_size(v12);
  if (v10)
  {
    if (&result[-v11] != 0x8000000000000000 || v10 != -1)
    {
      v12[2] = a1;
      v12[3] = 2 * (&result[-v11] / v10);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000072DC(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_100003EC8(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100090480();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100090480();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1000073AC()
{
  v1 = OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource;
  if (*(v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource))
  {
    v2 = *(v0 + OBJC_IVAR___WFSidebarViewController____lazy_storage___sidebarDataSource);
  }

  else
  {
    v2 = sub_100007414(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100007414(uint64_t a1)
{
  v2 = type metadata accessor for SidebarStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for RootNavigationDestination();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v34 - v13;
  __chkstk_darwin(v12);
  v36 = &v34 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = OBJC_IVAR___WFMainViewController_currentDestination;
    swift_beginAccess();
    sub_1000078B4(v17 + v18, v7);

    if (sub_10000AB80(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v36, v7, v8);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1000042A8(v7, 1, 1, v8);
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*(v9 + 16))(v14, v19 + OBJC_IVAR___WFMainViewController_initialDestination, v8);

    (*(v9 + 32))(v36, v14, v8);
  }

  else
  {
    (*(v9 + 104))(v36, enum case for RootNavigationDestination.allShortcuts(_:), v8);
  }

  if (sub_10000AB80(v7, 1, v8) != 1)
  {
    sub_1000069B0(v7, &qword_100100028, &qword_1000C12A8);
  }

LABEL_10:
  (*(v3 + 16))(v37, a1 + OBJC_IVAR___WFSidebarViewController_style, v2);
  v21 = *(a1 + OBJC_IVAR___WFSidebarViewController_database);
  v22 = swift_unknownObjectWeakLoadStrong();
  v34 = v21;
  if (v22)
  {
    v23 = v22;
    v24 = v8;
    v25 = *(v22 + OBJC_IVAR___WFMainViewController_autoShortcutsDataSource);
    v26 = v21;

    v27 = v25;
  }

  else
  {
    v24 = v8;
    v28 = objc_allocWithZone(type metadata accessor for AutoShortcutsAppsDataSource());
    v29 = v21;

    AutoShortcutsAppsDataSource.init(organizedCollections:)();
  }

  v30 = v36;
  (*(v9 + 16))(v35, v36, v24);
  type metadata accessor for SidebarView.DataSource(0);
  swift_allocObject();

  sub_1000089D0();
  v32 = v31;
  (*(v9 + 8))(v30, v24);
  *(v32 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_delegate + 8) = &off_1000F3AF8;
  swift_unknownObjectWeakAssign();
  return v32;
}

uint64_t sub_1000078B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007978()
{
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;

  return Tips.Parameter.wrappedValue.setter();
}

uint64_t sub_1000079D0(__n128 a1)
{
  a1.n128_u64[0] = v7;

  return RunningWorkflow.init(workflowType:progress:waiting:runViewSource:stopHandler:)(v2, v4, v3, v1, v5, a1);
}

uint64_t sub_100007A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10002E87C(a2, a3);
  sub_100002F04();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for LibraryViewController(uint64_t a1)
{
  result = qword_100102500;
  if (!qword_100102500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100007B58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed:v2];

  return v3;
}

char *sub_100007C08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000071E4(v5, a2, a3, a4, v4);
}

uint64_t sub_100007C20(uint64_t a1)
{
  sub_10000E8D4();
  type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v1);
  sub_1000039BC();
  sub_100007B08();
  v2 = sub_100019BF0();
  v3(v2);
  v4 = sub_100006324();
  v6 = v5(v4);
  if (v6 == enum case for RootNavigationDestination.gallery(_:))
  {
    v7 = 2;
  }

  else
  {
    if (v6 == enum case for RootNavigationDestination.shortcuts(_:))
    {
      return 0;
    }

    if (v6 == enum case for RootNavigationDestination.automations(_:))
    {
      return 1;
    }

    v7 = 0;
  }

  v8 = sub_100006324();
  v9(v8);
  return v7;
}

uint64_t sub_100007D68()
{

  return swift_beginAccess();
}

uint64_t sub_100007DD4()
{

  return sub_100066898();
}

char *sub_100007E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v41 = a4;
  v38 = a3;
  v9 = type metadata accessor for RootNavigationDestination();
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002E87C(&qword_1000FFFD8, &qword_1000C11F8);
  v12 = __chkstk_darwin(v11 - 8);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v38 - v14;
  *&a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchController] = 0;
  v16 = &a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_rootNavigator];
  *&a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_rootNavigator + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hasAppeared] = 0;
  v17 = OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingTest;
  v18 = type metadata accessor for RootPPTTestCase();
  sub_1000042A8(&a5[v17], 1, 1, v18);
  v19 = &a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_pendingPresentation];
  *v19 = 0;
  v19[8] = 0;
  v20 = OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_destination;
  v21 = type metadata accessor for GalleryNavigationDestination();
  v45 = *(v21 - 8);
  v22 = *(v45 + 16);
  v39 = a1;
  v40 = v22;
  v22(&a5[v20], a1, v21);
  *(v16 + 1) = a3;
  v42 = a2;
  swift_unknownObjectWeakAssign();
  v23 = v41;
  *&a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_userInterface] = v41;
  type metadata accessor for GallerySearchManager();
  swift_allocObject();
  swift_unknownObjectRetain();
  v24 = GallerySearchManager.init()();
  *&a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_searchManager] = v24;
  v25 = type metadata accessor for GalleryHostingViewController(0);

  sub_1000066FC(a1, a2, v38, v23, v24, v15);

  swift_unknownObjectRelease();
  v26 = objc_allocWithZone(sub_10002E87C(&qword_1000FFFE0, &qword_1000C1200));
  sub_10000823C(v15, v43, &qword_1000FFFD8, &qword_1000C11F8);
  v27 = UIHostingController.init(rootView:)();
  sub_1000069B0(v15, &qword_1000FFFD8, &qword_1000C11F8);
  *&a5[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hostingController] = v27;
  v48.receiver = a5;
  v48.super_class = v25;
  v28 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v29 = v44;
  v30 = v39;
  v40(v44, v39, v21);
  sub_1000042A8(v29, 0, 1, v21);
  v32 = v46;
  v31 = v47;
  (*(v46 + 104))(v29, enum case for RootNavigationDestination.gallery(_:), v47);
  v33 = v28;
  v34 = RootNavigationDestination.displayName.getter();
  v36 = v35;
  (*(v32 + 8))(v29, v31);
  sub_10000AAB4(v34, v36, v33);
  [v33 addChildViewController:*&v33[OBJC_IVAR____TtC9ShortcutsP33_5A6DD2238BCF5ED8887E2D852EDD3B1F28GalleryHostingViewController_hostingController]];

  swift_unknownObjectRelease();
  (*(v45 + 8))(v30, v21);
  return v33;
}

uint64_t sub_10000823C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000137E4(a1, a2, a3, a4);
  sub_100003EC8();
  v5 = sub_100005BCC();
  v6(v5);
  return v4;
}

uint64_t sub_100008354(uint64_t a1)
{

  return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
}

id sub_100008394(double a1, uint64_t a2, const char *a3)
{
  LODWORD(a1) = 2139095040;

  return [v3 a3];
}

uint64_t sub_1000083B0@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v16 = a3;
  v17 = a1;
  v5 = type metadata accessor for RootNavigationDestination();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v18 = a2;
  v10 = *(a2 + 16);
  v11 = (v6 + 8);
  while (1)
  {
    if (v10 == v9)
    {
      v13 = 1;
      v14 = v16;
      return sub_1000042A8(v14, v13, 1, v5);
    }

    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v5);
    v12 = v17(v8);
    if (v3)
    {
      return (*v11)(v8, v5);
    }

    if (v12)
    {
      break;
    }

    (*v11)(v8, v5);
    ++v9;
  }

  v14 = v16;
  (*(v6 + 32))(v16, v8, v5);
  v13 = 0;
  return sub_1000042A8(v14, v13, 1, v5);
}

void sub_10000858C(uint64_t a1)
{
  type metadata accessor for SidebarStyle();
  if (v1 <= 0x3F)
  {
    sub_10000891C(319, &qword_100101240, &qword_100100028, &qword_1000C12A8, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100003D10(319, &qword_1000FFB90, &type metadata accessor for RootNavigationDestination, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_10000891C(319, &qword_100101248, &unk_1001026E0, &qword_1000C4890, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_100003D10(319, &qword_100101250, &type metadata accessor for AutoShortcutsAppsDataSource, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            sub_100003D10(319, &qword_100101258, &type metadata accessor for EditMode, &type metadata accessor for Published);
            if (v6 <= 0x3F)
            {
              sub_10000891C(319, &qword_100101260, &qword_100101268, &qword_1000C4898, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                sub_100008980();
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000891C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100041CB4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100008980()
{
  if (!qword_100101270)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100101270);
    }
  }
}

void sub_1000089D0()
{
  sub_1000043AC();
  v1 = v0;
  v126 = v2;
  v123 = v3;
  v124 = v4;
  v122 = v5;
  v121 = v6;
  v120 = v7;
  v132 = v8;
  sub_10002E87C(&qword_1001016F0, &qword_1000C49C0);
  sub_100004458();
  v127 = v9;
  v128 = v10;
  sub_100005B90();
  __chkstk_darwin(v11);
  sub_100005B00();
  v125 = v12;
  v119 = sub_10002E87C(&qword_1001016F8, &qword_1000C49C8);
  sub_100004458();
  v118 = v13;
  sub_100005B90();
  __chkstk_darwin(v14);
  sub_100005B00();
  sub_100003A48(v15);
  v116 = sub_10002E87C(&qword_100101700, &qword_1000C49D0);
  sub_100004458();
  v115 = v16;
  sub_100005B90();
  __chkstk_darwin(v17);
  sub_100005B00();
  sub_100003A48(v18);
  v112 = sub_10002E87C(&qword_100101708, &qword_1000C49D8);
  sub_100004458();
  v111 = v19;
  sub_100005B90();
  __chkstk_darwin(v20);
  sub_100005B00();
  sub_100003A48(v21);
  v109 = type metadata accessor for EditMode();
  sub_100004458();
  v107 = v22;
  __chkstk_darwin(v23);
  sub_100003EF4();
  v108 = v24 - v25;
  __chkstk_darwin(v26);
  sub_100003A48(&v97 - v27);
  v105 = sub_10002E87C(&qword_100101710, &qword_1000C49E0);
  sub_100004458();
  v104 = v28;
  sub_100005B90();
  __chkstk_darwin(v29);
  sub_100005B00();
  sub_100003A48(v30);
  v102 = sub_10002E87C(&unk_1001026E0, &qword_1000C4890);
  sub_100003EC8();
  __chkstk_darwin(v31);
  sub_100003EF4();
  v101 = v32 - v33;
  __chkstk_darwin(v34);
  v36 = &v97 - v35;
  v133 = sub_10002E87C(&qword_100101718, &qword_1000C49E8);
  sub_100004458();
  v130 = v37;
  sub_100005B90();
  __chkstk_darwin(v38);
  v40 = &v97 - v39;
  v131 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  sub_100002F04();
  __chkstk_darwin(v41);
  sub_100003EF4();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  v47 = &v97 - v46;
  v48 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__currentDestination;
  v113 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__currentDestination;
  v49 = type metadata accessor for RootNavigationDestination();
  sub_100004730();
  sub_1000042A8(v50, v51, v52, v49);
  v129 = v44;
  sub_10000823C(v47, v44, &qword_100100028, &qword_1000C12A8);
  v98 = v40;
  Published.init(initialValue:)();
  sub_100083220(v47, &qword_100100028, &qword_1000C12A8);
  v99 = *(v130 + 32);
  v99(v1 + v48, v40, v133);
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_shouldNavigateWhenDestinationChanges) = 1;
  sub_100004730();
  v53 = v49;
  sub_1000042A8(v54, v55, v56, v49);
  v57 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__selectedApp;
  type metadata accessor for AutoShortcutApp();
  sub_100004730();
  sub_1000042A8(v58, v59, v60, v61);
  sub_10000823C(v36, v101, &unk_1001026E0, &qword_1000C4890);
  v62 = v103;
  Published.init(initialValue:)();
  sub_100083220(v36, &unk_1001026E0, &qword_1000C4890);
  (*(v104 + 32))(v1 + v57, v62, v105);
  v63 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__editMode;
  v64 = v107;
  v65 = v106;
  v66 = v109;
  (*(v107 + 104))(v106, enum case for EditMode.inactive(_:), v109);
  (*(v64 + 16))(v108, v65, v66);
  v67 = v110;
  Published.init(initialValue:)();
  (*(v64 + 8))(v65, v66);
  sub_1000070D8();
  v68(v1 + v63, v67, v112);
  v69 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__presentConfirmationDestination;
  sub_100004730();
  sub_1000042A8(v70, v71, v72, v53);
  sub_10000823C(v47, v129, &qword_100100028, &qword_1000C12A8);
  v73 = v98;
  Published.init(initialValue:)();
  sub_100083220(v47, &qword_100100028, &qword_1000C12A8);
  v99(v1 + v69, v73, v133);
  v74 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__deleteAlertData;
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  sub_10002E87C(&qword_100101268, &qword_1000C4898);
  v75 = v114;
  Published.init(initialValue:)();
  sub_1000070D8();
  v76(v1 + v74, v75, v116);
  v77 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__bottomInset;
  *&v135 = 0;
  v78 = v117;
  Published.init(initialValue:)();
  sub_1000070D8();
  v79(v1 + v77, v78, v119);
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_cancellables) = &_swiftEmptySetSingleton;
  v80 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_numberOfShortcutsByDestination;
  sub_10000F1BC();
  sub_100009C48(v81, v82, &protocol conformance descriptor for RootNavigationDestination);
  *(v1 + v80) = Dictionary.init(dictionaryLiteral:)();
  v83 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_style;
  v119 = type metadata accessor for SidebarStyle();
  v84 = *(v119 - 8);
  (*(v84 + 16))(v1 + v83, v132, v119);
  v85 = v120;
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_database) = v120;
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_sections) = v121;
  sub_10000957C(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource__autoShortcutsAppsDataSource);
  v86 = v122;
  v134 = v122;
  type metadata accessor for AutoShortcutsAppsDataSource();
  v121 = v85;
  v87 = v86;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_isCompact) = v123;
  v88 = v53;
  v100 = v53;
  v89 = *(v53 - 8);
  v90 = v124;
  (*(v89 + 16))(v47, v124, v88);
  sub_1000060AC();
  sub_1000042A8(v91, v92, v93, v88);
  v94 = v113;
  sub_10000957C(v1 + v113);
  (*(v130 + 8))(v1 + v94, v133);
  sub_10000823C(v47, v129, &qword_100100028, &qword_1000C12A8);
  Published.init(initialValue:)();
  sub_100083220(v47, &qword_100100028, &qword_1000C12A8);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_shortcutMoveService) = v126;

  v95 = v125;
  dispatch thunk of AutoShortcutsAppsDataSource.$autoShortcutApps.getter();
  sub_100009624(&qword_100101728, &qword_1001016F0, &qword_1000C49C0, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100007DC8();

  v96 = v127;
  Publisher<>.sink(receiveValue:)();
  sub_100007DC8();

  (*(v128 + 8))(v95, v96);
  sub_10000957C(v1 + OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_cancellables);
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v89 + 8))(v90, v100);
  (*(v84 + 8))(v132, v119);
  sub_100002EEC();
}

uint64_t sub_10000955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10000957C(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_1000095F4()
{

  return type metadata accessor for LibraryConfiguration();
}

uint64_t sub_100009624(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100041CB4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000966C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100041CB4(a2, a3);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000096B0(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for RootNavigationDestination();
  v3 = *(v59 - 8);
  v4 = __chkstk_darwin(v59);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v44 = &v43 - v8;
  v9 = __chkstk_darwin(v7);
  v46 = &v43 - v10;
  __chkstk_darwin(v9);
  v12 = &v43 - v11;
  v13 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  v14 = __chkstk_darwin(v13 - 8);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v43 - v16;
  v17 = OBJC_IVAR____TtCV9Shortcuts11SidebarView10DataSource_numberOfShortcutsByDestination;
  swift_beginAccess();
  v50 = a2;
  v45 = v17;
  v18 = *(a2 + v17);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v54 = v3 + 88;
  v55 = v3 + 16;
  v53 = enum case for RootNavigationDestination.autoShortcuts(_:);
  v56 = v3;
  v57 = (v3 + 8);
  v47 = (v3 + 32);
  v58 = v18;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  v51 = _swiftEmptyArrayStorage;
  v52 = v19;
LABEL_4:
  v26 = v25;
  if (!v22)
  {
    goto LABEL_6;
  }

  do
  {
    v25 = v26;
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = v59;
    v29 = v56;
    v30 = *(v56 + 72);
    v31 = *(v56 + 16);
    v31(v12, *(v58 + 48) + v30 * (v27 | (v25 << 6)), v59);
    v31(v6, v12, v28);
    v32 = (*(v29 + 88))(v6, v28);
    v33 = *(v29 + 8);
    if (v32 == v53)
    {
      v33(v6, v28);
      v34 = *v47;
      (*v47)(v44, v12, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000B180();
        v51 = v37;
      }

      v19 = v52;
      v35 = v51[2];
      if (v35 >= v51[3] >> 1)
      {
        sub_10000B180();
        v51 = v38;
      }

      v36 = v51;
      v51[2] = v35 + 1;
      result = (v34)(v36 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v35 * v30, v44, v59);
      goto LABEL_4;
    }

    v33(v12, v28);
    result = (v33)(v6, v28);
    v26 = v25;
    v19 = v52;
  }

  while (v22);
  while (1)
  {
LABEL_6:
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_9;
    }
  }

  v39 = v49;
  sub_100084A28(v51, v49);

  v40 = v48;
  sub_10000823C(v39, v48, &qword_100100028, &qword_1000C12A8);
  v41 = v59;
  if (sub_10000AB80(v40, 1, v59) == 1)
  {
    sub_100083220(v40, &qword_100100028, &qword_1000C12A8);
  }

  else
  {
    v42 = v46;
    (*v47)(v46, v40, v41);
    swift_beginAccess();
    sub_1000818D8(v42);
    swift_endAccess();

    (*v57)(v42, v41);
  }

  type metadata accessor for SidebarView.DataSource(0);
  sub_100009C48(&qword_100101610, type metadata accessor for SidebarView.DataSource, &unk_1000C4988);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  return sub_100083220(v39, &qword_100100028, &qword_1000C12A8);
}

uint64_t sub_100009C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009C90(uint64_t a1)
{
  result = type metadata accessor for LibraryConfiguration();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100009E14(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100009EA4()
{
  sub_1000079FC();
  objc_allocWithZone(v0);
  sub_100007DBC();
  sub_100009F0C();
  sub_1000046DC();
}

void sub_100009F0C()
{
  sub_1000043AC();
  v43 = v2;
  v44 = v3;
  v37 = v4;
  v38 = v5;
  v7 = v6;
  type metadata accessor for DispatchWorkItemFlags();
  sub_100004458();
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_1000042F8();
  type metadata accessor for DispatchQoS();
  sub_100004458();
  v41 = v10;
  v42 = v9;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v40 = v12 - v11;
  sub_1000042F8();
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  sub_100004458();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_10000A7F8();
  v17 = v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_delegate;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_hasLoadedInitialData) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource) = 0;
  sub_10000A5EC(OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics);
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___editingItems) = 1;
  v18 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_flowLayout;
  *(v0 + v18) = [objc_allocWithZone(type metadata accessor for LibraryViewController.LibraryFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___tableView) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___toolbarViewController) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customPlusButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___createButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_overflowMenuButtonExists) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___overflowMenuButtonItem) = 0;
  v19 = (v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier);
  *v19 = 0;
  v19[1] = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customSyncUnavailableButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___syncUnavailableButtonItem) = 1;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_cancellables) = &_swiftEmptySetSingleton;
  v20 = v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tipStatusObservation) = 0;
  v21 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_lockedAppBundleIdCache;
  v22 = [objc_opt_self() lockedAppBundleIdentifiers];
  v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  *(v0 + v21) = v23;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_viewIsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database) = v7;
  *(v17 + 8) = v37;
  swift_unknownObjectWeakAssign();
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_groups) = v38;
  v24 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  v25 = type metadata accessor for LibraryConfiguration();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v0 + v24, v43, v25);
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_shortcutMoveService) = v44;
  v46 = v0;
  v47 = type metadata accessor for LibraryViewController(0);
  v39 = v7;

  sub_100005BC0();
  v29 = objc_msgSendSuper2(v27, v28);
  v30 = LibraryConfiguration.title.getter();
  sub_10000AAB4(v30, v31, v29);
  sub_100002FC4(0, &qword_1001001B8, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v1, enum case for DispatchQoS.QoSClass.background(_:), v13);
  v32 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v1, v13);
  sub_100003A00();
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  v45[4] = sub_10000AA4C;
  v45[5] = v33;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1107296256;
  v45[2] = sub_100003190;
  v45[3] = &unk_1000F3940;
  v34 = _Block_copy(v45);
  static DispatchQoS.unspecified.getter();
  sub_100009E14(&qword_100102610, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002E87C(&qword_1001001C0, &qword_1000C4830);
  sub_10000966C(&qword_100102620, &qword_1001001C0, &qword_1000C4830);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  swift_unknownObjectRelease();

  (*(v26 + 8))(v43, v25);
  v35 = sub_100003BD0();
  v36(v35);
  (*(v41 + 8))(v40, v42);

  sub_100002EEC();
}

uint64_t sub_10000A55C()
{
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000A5C0(uint64_t a1)
{

  return type metadata accessor for ModifiedContent();
}

double sub_10000A5EC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  return result;
}

id sub_10000A650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewController.LibraryFlowLayout();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_10000A690(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_10000A6F8();
}

void sub_10000A6F8()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      v3 = &v0[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier];
      swift_beginAccess();
      if (*(v3 + 1))
      {

        v4 = String._bridgeToObjectiveC()();
      }

      else
      {
        v4 = 0;
      }

      [v2 setAccessibilityIdentifier:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

__n128 sub_10000A814()
{
  *(v2 - 216) = v1;
  *(v2 - 208) = *(v0 + 24);
  v3 = v2 - 232;
  *(v3 + 40) = *(v0 + 40);
  result = *(v0 + 56);
  *(v3 + 56) = result;
  return result;
}

void sub_10000A838(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1000072DC(v2 + a2, v4, v3 + a2, a1);
}

id sub_10000A884()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

void sub_10000A8D8(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:a1 selector:"keyboardWillChange:" name:WFKeyboardWillChangeNotification object:0];

  v4 = objc_opt_self();
  v5 = [v4 workflowUserDefaults];
  [v5 addObserver:a1 forKeyPath:WFCloudKitSyncEnabledKey options:0 context:0];

  v6 = [v4 syncShortcutsUserDefaults];
  [v6 addObserver:a1 forKeyPath:WFSyncUnavailableMessageKey options:0 context:0];

  v7 = [v2 defaultCenter];
  [v7 addObserver:a1 selector:"didBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];
}

id sub_10000AA54()
{
  v1 = &v0[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state];
  *v1 = xmmword_1000C0470;
  *(v1 + 8) = 0;
  *&v0[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SearchStateStore();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_10000AAB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setTitle:v4];
}

uint64_t sub_10000AB3C(uint64_t a1)
{

  return static Published.subscript.getter();
}

id sub_10000AB60@<X0>(uint64_t a1@<X8>)
{

  return sub_1000AEDC4(0xD000000000000017, (a1 - 32) | 0x8000000000000000);
}

uint64_t sub_10000ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return RootView.navigate(to:completion:)();
}

void sub_10000AC28()
{
  sub_1000043AC();
  v39 = v1;
  v43 = v2;
  v44 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  v38 = v7 - v6;
  v8 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  __chkstk_darwin(v8 - 8);
  sub_100003EF4();
  v40 = v9 - v10;
  v12 = __chkstk_darwin(v11);
  v41 = v0;
  v42 = &v38 - v13;
  v14 = 0;
  v15 = *(v0 + OBJC_IVAR___WFSidebarViewController_sections);
  v16 = *(v15 + 16);
  v17 = v15 + 40;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v16 == v14)
    {
      __chkstk_darwin(v12);
      v27 = v42;
      v26 = v43;
      *(&v38 - 2) = v43;
      sub_1000083B0(sub_10000B2F4, v18, v27);

      v28 = v44;
      if (sub_10000AB80(v27, 1, v44) != 1)
      {
        sub_1000073AC();
        swift_getKeyPath();
        swift_getKeyPath();
        v29 = v40;
        static Published.subscript.getter();

        if (sub_10000AB80(v29, 1, v28))
        {
          sub_1000069B0(v29, &qword_100100028, &qword_1000C12A8);
          v30 = 0;
          v31 = 0;
        }

        else
        {
          v32 = v38;
          (*(v4 + 16))(v38, v29, v28);
          sub_1000069B0(v29, &qword_100100028, &qword_1000C12A8);
          v30 = RootNavigationDestination.sidebarIdentifier.getter();
          v31 = v33;
          (*(v4 + 8))(v32, v28);
        }

        v34 = RootNavigationDestination.sidebarIdentifier.getter();
        if (v31)
        {
          if (v30 == v34 && v31 == v35)
          {

            goto LABEL_29;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        sub_100075C48(v26, v39 & 1);
      }

LABEL_29:
      sub_1000069B0(v27, &qword_100100028, &qword_1000C12A8);
      sub_100002EEC();
      return;
    }

    if (v14 >= *(v15 + 16))
    {
      break;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    v19 = dispatch thunk of SidebarSection.destinations.getter();
    swift_unknownObjectRelease();
    v20 = *(v19 + 16);
    v21 = v18[2];
    if (__OFADD__(v21, v20))
    {
      goto LABEL_31;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v21 + v20 > v18[3] >> 1)
    {
      sub_10000B180();
      v18 = v22;
    }

    if (*(v19 + 16))
    {
      if ((v18[3] >> 1) - v18[2] < v20)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v23 = v18[2];
        v24 = __OFADD__(v23, v20);
        v25 = v23 + v20;
        if (v24)
        {
          goto LABEL_34;
        }

        v18[2] = v25;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_32;
      }
    }

    v17 += 16;
    ++v14;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_10000B0F4(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_10000B134(uint64_t a1)
{

  SetShortcutAttributesAction.init(attribute:operation:state:)();
}

uint64_t sub_10000B15C(uint64_t a1)
{

  return method lookup function for LibraryDataSource();
}

void sub_10000B180()
{
  sub_100002FA8();
  if (v4)
  {
    sub_100090464();
    if (v6 != v7)
    {
      sub_100009598();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10000CB1C();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100007C08(v2, v5, &qword_100100160, &qword_1000C1310);
  sub_10000E8D4();
  type metadata accessor for RootNavigationDestination();
  sub_10000525C();
  sub_100003A3C();
  if (v1)
  {
    sub_10000A838(&type metadata accessor for RootNavigationDestination, v8);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000F1D4();
  }
}

uint64_t sub_10000B25C(uint64_t a1)
{
  v1 = RootNavigationDestination.sidebarIdentifier.getter();
  v3 = v2;
  if (v1 == RootNavigationDestination.sidebarIdentifier.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

void sub_10000B314()
{
  sub_1000043AC();
  v77 = v3;
  v78 = v2;
  v5 = v4;
  v75 = v6;
  v8 = v7;
  v79 = type metadata accessor for RootNavigationContext();
  sub_100004458();
  v69 = v9;
  __chkstk_darwin(v10);
  sub_1000039BC();
  v70 = v12 - v11;
  v13 = sub_10002E87C(&qword_100100020, &qword_1000C12A0);
  v14 = sub_10000A804(v13);
  v72 = v15;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v14);
  v73 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  sub_1000043D0();
  v20 = __chkstk_darwin(v19);
  v22 = &v68 - v21;
  __chkstk_darwin(v20);
  v24 = (&v68 - v23);
  v25 = OBJC_IVAR___WFMainViewController_content;
  v26 = *&v0[OBJC_IVAR___WFMainViewController_content];
  sub_100041F0C();
  sub_10000BAF8();

  v27 = *&v0[v25];
  *&v0[v25] = v8;
  v71 = v8;

  sub_100003A00();
  v28 = swift_allocObject();
  v68 = v0;
  v29 = v22;
  v30 = v77;
  swift_unknownObjectWeakInit();
  v31 = sub_100041D9C();
  sub_10000823C(v31, v32, &qword_100100020, &qword_1000C12A0);
  v74 = v29;
  sub_10000823C(v24, v29, &qword_100100020, &qword_1000C12A0);
  v76 = v1;
  sub_10000823C(v24, v1, &qword_100100020, &qword_1000C12A0);
  v33 = (*(v72 + 80) + 48) & ~*(v72 + 80);
  v34 = v33 + v17;
  v35 = swift_allocObject();
  v35[2] = v78;
  v35[3] = v30;
  v72 = v28;
  v36 = v71;
  v35[4] = v28;
  v35[5] = v36;
  sub_10000CB78(v24, v35 + v33, &qword_100100020, &qword_1000C12A0);
  v37 = v75;
  *(v35 + v34) = v75;
  v38 = v37;
  sub_10000823C(v5, v73, &qword_100100020, &qword_1000C12A0);
  v39 = sub_100041D70();
  sub_10000F7EC(v39, v40, v79);
  if (v41)
  {
    v42 = v36;
    sub_100041E54();
    v43 = v42;
    sub_10000B960(v24, v30);
    v44 = sub_1000042EC();
    sub_1000069B0(v44, v45, &qword_1000C12A0);
    sub_10000CC18(v24, v30, v28, v43, v74, v38 & 1);

    sub_10000B970(v24, v30);

    sub_1000069B0(v76, &qword_100100020, &qword_1000C12A0);

    v46 = sub_1000042EC();
LABEL_10:
    sub_1000069B0(v46, v47, &qword_1000C12A0);
    goto LABEL_12;
  }

  v48 = v74;
  v49 = v38;
  v51 = v69;
  v50 = v70;
  v52 = sub_100006324();
  v53(v52);
  v54 = v36;
  sub_100041E54();
  v55 = v54;
  sub_10000B960(v24, v30);
  v56 = RootNavigationContext.dismissOccludingViewController.getter();
  v57 = v30;
  v58 = v50;
  if ((v56 & 1) == 0)
  {
    sub_10000CC18(v24, v57, v28, v55, v48, v49 & 1);

    sub_10000B970(v24, v57);

    sub_1000069B0(v76, &qword_100100020, &qword_1000C12A0);

    (*(v51 + 8))(v50, v79);
    v46 = v48;
    v47 = &qword_100100020;
    goto LABEL_10;
  }

  sub_1000069B0(v48, &qword_100100020, &qword_1000C12A0);

  sub_1000060B8();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_100041B50;
  *(v59 + 24) = v35;
  swift_retain_n();
  v60 = [v68 presentedViewController];
  if (v60)
  {
    v61 = v60;
    objc_opt_self();
    sub_1000095CC();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      [v62 prepareToDismiss];
    }

    v80[4] = sub_100041BDC;
    v80[5] = v59;
    v80[0] = _NSConcreteStackBlock;
    v80[1] = 1107296256;
    sub_1000137D0();
    v80[2] = v63;
    v80[3] = &unk_1000F1A40;
    v64 = _Block_copy(v80);

    [v68 dismissViewControllerAnimated:0 completion:v64];
    _Block_release(v64);

    sub_10000B970(v24, v77);

    sub_1000069B0(v76, &qword_100100020, &qword_1000C12A0);
    (*(v51 + 8))(v70, v79);
  }

  else
  {
    v65 = v49 & 1;
    v66 = v76;
    v67 = v77;
    sub_10000CC18(v24, v77, v28, v55, v76, v65);

    sub_10000B970(v24, v67);

    sub_1000069B0(v66, &qword_100100020, &qword_1000C12A0);
    (*(v51 + 8))(v58, v79);
  }

LABEL_12:
  sub_100002EEC();
}

uint64_t sub_10000B960(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B970(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B980()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000B9B4()
{
  v1 = sub_10002E87C(&qword_100100020, &qword_1000C12A0);
  sub_10000A804(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = *(v5 + 64);
  if (*(v0 + 16))
  {
  }

  v7 = type metadata accessor for RootNavigationContext();
  if (!sub_10000AB80(v0 + v4, 1, v7))
  {
    sub_100002F04();
    (*(v8 + 8))(v0 + v4, v7);
  }

  return _swift_deallocObject(v0, v6 + v4 + 1, v3 | 7);
}

uint64_t sub_10000BAC4()
{

  sub_1000060B8();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_10000BAF8()
{
  sub_1000043AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_10002E87C(&qword_100100020, &qword_1000C12A0);
  sub_100002EE0(v8);
  sub_100005B90();
  __chkstk_darwin(v9);
  sub_100007B08();
  sub_10000823C(v3, v0, &qword_100100020, &qword_1000C12A0);
  v10 = type metadata accessor for RootNavigationContext();
  sub_10000F7EC(v0, 1, v10);
  if (v11)
  {
    sub_1000069B0(v0, &qword_100100020, &qword_1000C12A0);
    v12 = 1;
  }

  else
  {
    v12 = RootNavigationContext.clearSearchState.getter();
    sub_100002F04();
    v13 = sub_100012B10();
    v14(v13);
  }

  if (v7)
  {
    ObjectType = swift_getObjectType();
    if (sub_10000BD90(v7, ObjectType, &protocol descriptor for SearchControllerDelegate))
    {
      v17 = v16;
      if (v12)
      {
        v18 = swift_getObjectType();
        v19 = *(v17 + 8);
        v20 = v7;
        v21 = v19(v18, v17);
        if (v21)
        {
          v22 = v21;
          sub_10000C5B0();
        }
      }

      else
      {
        v23 = v7;
      }

      v24 = swift_getObjectType();
      (*(v17 + 16))(0, v24, v17);
      v25 = sub_10000BDD4();

      swift_unknownObjectWeakAssign();
    }
  }

  v26 = swift_getObjectType();
  if (sub_10000BD90(v5, v26, &protocol descriptor for SearchControllerDelegate))
  {
    v28 = v27;
    v29 = v5;
    sub_10000BDD4();
    sub_100003A0C();
    v30 = objc_allocWithZone(type metadata accessor for SearchController());
    v31 = sub_100041EBC();
    v32 = sub_10000C330(v31, v28, v1);
    if (v12)
    {
      sub_10000C5B0();
    }

    v33 = swift_getObjectType();
    v34 = *(v28 + 16);
    v35 = v32;
    v36 = sub_1000056F0();
    v34(v36, v33, v28);
    swift_unknownObjectWeakAssign();
  }

  sub_100002EEC();
}

uint64_t sub_10000BD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id sub_10000BDD4()
{
  v1 = OBJC_IVAR___WFMainViewController____lazy_storage___searchStateController;
  v2 = *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___searchStateController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFMainViewController____lazy_storage___searchStateController);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchStateController()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10000BE6C()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21SearchStateController_stateStore;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for SearchStateStore()) init];
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC9Shortcuts21SearchStateController_pendingTraitCollection] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SearchStateController();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_10000BF98()
{
  sub_1000043AC();
  v37 = v3;
  v4 = sub_10002E87C(&qword_100100020, &qword_1000C12A0);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  sub_100041D8C();
  v6 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  sub_100002EE0(v6);
  sub_100005B90();
  __chkstk_darwin(v7);
  sub_10001C780();
  v8 = type metadata accessor for RootNavigationDestination();
  sub_100004458();
  __chkstk_darwin(v9);
  sub_1000039BC();
  sub_1000043E0();
  v10 = type metadata accessor for RootNavigationContext.TransitionType();
  v11 = sub_100002EE0(v10);
  __chkstk_darwin(v11);
  sub_1000039BC();
  sub_100007D94();
  v12 = sub_10002E87C(&qword_1000FFFC0, &qword_1000C11E0);
  sub_100002EE0(v12);
  sub_100005B90();
  __chkstk_darwin(v13);
  sub_100006134();
  v14 = type metadata accessor for RootNavigationContext();
  sub_100004458();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000039BC();
  v20 = v19 - v18;
  v21 = [v37 horizontalSizeClass] == 1;
  *(v1 + OBJC_IVAR___WFMainViewController_display) = v21;
  type metadata accessor for RootPPTTestCase();
  sub_100004730();
  sub_1000042A8(v22, v23, v24, v25);
  static RootNavigationContext.TransitionType.default.getter();
  RootNavigationContext.init(dismissOccludingViewController:clearSearchState:animateTransition:createAutomation:transitionType:pptTest:)();
  v26 = OBJC_IVAR___WFMainViewController_currentDestination;
  sub_100005BC0();
  swift_beginAccess();
  sub_10000823C(v1 + v26, v2, &qword_100100028, &qword_1000C12A8);
  sub_10000F7EC(v2, 1, v8);
  if (v27)
  {
    (*(v16 + 8))(v20, v14);
    sub_1000069B0(v2, &qword_100100028, &qword_1000C12A8);
  }

  else
  {
    v28 = sub_100011918();
    v29(v28);
    (*(v16 + 16))(v0, v20, v14);
    sub_1000060AC();
    sub_1000042A8(v30, v31, v32, v14);
    type metadata accessor for MainViewController(0);
    sub_10000448C();
    sub_100004594(v33, v34);
    sub_1000043C4();
    sub_100005BC0();
    RootView.navigate(to:with:completion:)();
    sub_1000069B0(v0, &qword_100100020, &qword_1000C12A0);
    v35 = sub_100005CF0();
    v36(v35);
    (*(v16 + 8))(v20, v14);
  }

  sub_100002EEC();
}

id sub_10000C330(void *a1, uint64_t a2, void *a3)
{
  v7 = &v3[OBJC_IVAR____TtC9Shortcuts16SearchController_destinationIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v3[OBJC_IVAR____TtC9Shortcuts16SearchController_viewController];
  *&v3[OBJC_IVAR____TtC9Shortcuts16SearchController_viewController + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v3[OBJC_IVAR____TtC9Shortcuts16SearchController_placeholder];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100005D9C(v10);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v9 = v13;
  v9[1] = v15;
  v16 = &v3[OBJC_IVAR____TtC9Shortcuts16SearchController_state];
  *v16 = xmmword_1000C0470;
  *(v16 + 8) = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC9Shortcuts16SearchController_hidesNavigationBarDuringPresentation] = 0;
  *(v8 + 1) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchController();
  v17 = objc_msgSendSuper2(&v23, "init");
  v18 = sub_10000C4E8();
  if (v18)
  {
    v19 = v18;
    [v18 setSearchResultsUpdater:v17];
  }

  v20 = sub_10000C560();
  if (v20)
  {
    v21 = v20;
    [v20 setDelegate:v17];
  }

  return v17;
}

id sub_10000C4E8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = [Strong navigationItem];

    v1 = [v2 searchController];
  }

  return v1;
}

id sub_10000C560()
{
  v0 = sub_10000C4E8();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 searchBar];

  return v2;
}

void sub_10000C5B0()
{
  sub_10000C654(0, 0xE000000000000000, 0);
  v0 = sub_10000C560();
  sub_10000C794(v0);
}

id sub_10000C5FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + OBJC_IVAR____TtC9Shortcuts21SearchStateController_stateStore);

  return v2;
}

id sub_10000C654(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = v3 + OBJC_IVAR____TtC9Shortcuts16SearchController_state;
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 17) = HIBYTE(a3) & 1;

  result = sub_10000C5FC();
  if (result)
  {
    v6 = result;
    v7 = *v4;
    v8 = *(v4 + 8);
    v9 = *(v4 + 16);
    if (*(v4 + 17))
    {
      v10 = 256;
    }

    else
    {
      v10 = 0;
    }

    sub_10000C71C(v7, v8, v10 | v9);
  }

  return result;
}

uint64_t sub_10000C71C(uint64_t result, uint64_t a2, __int16 a3)
{
  if (!*(v3 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_lockCounter))
  {
    v4 = v3 + OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state;
    *v4 = result;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3 & 1;
    *(v4 + 17) = HIBYTE(a3) & 1;
  }

  return result;
}

void sub_10000C794(void *a1)
{
  v2 = sub_10000C5FC();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state];
  v4 = *&v2[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state + 8];
  v6 = v2[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state + 16];

  if (a1)
  {
    v27 = a1;
    v7 = [v27 window];
    if (!v7)
    {

LABEL_13:

LABEL_28:
      v11 = v27;
      goto LABEL_29;
    }

    v8 = [v27 superview];
    if (!v8)
    {

      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v26 = [Strong presentedViewController];

      if (v26)
      {

        v11 = v26;
LABEL_29:

        return;
      }
    }

    v12 = sub_1000A1240(v27);
    if (v4)
    {
      if (!v13)
      {
LABEL_22:
        v16 = String._bridgeToObjectiveC()();
        goto LABEL_26;
      }

      if (v5 == v12 && v4 == v13)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v15 & 1) == 0)
        {

          goto LABEL_22;
        }
      }
    }

    else if (v13)
    {
      v16 = 0;
LABEL_26:

      [v27 setText:v16];

      v17 = v27;
      if (v6)
      {
LABEL_27:
        [v17 becomeFirstResponder];
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    v17 = v27;
    if (v6)
    {
      goto LABEL_27;
    }

LABEL_35:
    v27 = v17;
    [v27 resignFirstResponder];
    v18 = sub_1000A1240(v27);
    if (v19)
    {
      v20 = v18;
      v21 = v19;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        v23 = sub_10000C4E8();
        if (v23)
        {
          v24 = v23;
          [v23 setActive:0];
        }

        v27 = v27;
        sub_100090728(a1);
        if ([v27 showsCancelButton])
        {
          v25 = [v27 isFirstResponder];

          if ((v25 & 1) == 0)
          {
            sub_100090728(a1);
          }
        }

        else
        {
        }
      }
    }

    goto LABEL_13;
  }
}

id sub_10000CB4C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + ((v2 << 9) | (8 * a1)));

  return v4;
}

uint64_t sub_10000CB78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000137E4(a1, a2, a3, a4);
  sub_100003EC8();
  v5 = sub_100005BCC();
  v6(v5);
  return v4;
}

uint64_t sub_10000CBC4()
{

  return sub_1000B1D48(2, 26, 0, 0);
}

uint64_t sub_10000CC00()
{

  return type metadata accessor for LibraryViewController(0);
}

void sub_10000CC18(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v73 = a6;
  v72 = a5;
  v76 = a4;
  v8 = sub_10002E87C(&qword_100100020, &qword_1000C12A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v67 - v9;
  v11 = sub_10002E87C(&qword_100100118, &qword_1000C12F8);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - v12;
  v14 = type metadata accessor for RootNavigationContext.TransitionType();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v74 = &v67 - v22;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v24 = Strong;
  v70 = v14;
  v75 = a1;
  v25 = sub_100007194();
  v26 = [v25 tabBarController];

  if (v26)
  {
    v71 = a2;
    v27 = [v76 tabBarItem];
    if (!v27)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v28 = v27;
    v29 = [v27 tag];

    [v26 setSelectedIndex:v29];
    if (v29 || (v33 = [v26 selectedViewController]) == 0)
    {
      v30 = v24;
      v24 = v26;
    }

    else
    {
      v34 = v33;
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v68 = v34;
        v69 = v35;
        v36 = [v35 topViewController];
        a1 = v75;
        if (v36)
        {
          v37 = v36;
          sub_100002FC4(0, &qword_1000FFFA8, UIViewController_ptr);
          v67 = v76;
          v38 = static NSObject.== infix(_:_:)();

          if (v38)
          {

            v30 = v24;
            v24 = v26;
            goto LABEL_8;
          }
        }

        v39 = [v69 viewControllers];
        v67 = sub_100002FC4(0, &qword_1000FFFA8, UIViewController_ptr);
        v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v41 = sub_10000D55C(v40);

        if (v41 < 2)
        {
          v46 = enum case for RootNavigationContext.TransitionType.push(_:);
          v47 = v74;
          v43 = v70;
          (*(v15 + 104))(v74, enum case for RootNavigationContext.TransitionType.push(_:), v70);
          v45 = v71;
        }

        else
        {
          sub_10000823C(v72, v10, &qword_100100020, &qword_1000C12A0);
          v42 = type metadata accessor for RootNavigationContext();
          if (sub_10000AB80(v10, 1, v42) == 1)
          {
            sub_1000069B0(v10, &qword_100100020, &qword_1000C12A0);
            v43 = v70;
            sub_1000042A8(v13, 1, 1, v70);
            static RootNavigationContext.TransitionType.default.getter();
            v44 = sub_10000AB80(v13, 1, v43);
            v45 = v71;
            if (v44 != 1)
            {
              sub_1000069B0(v13, &qword_100100118, &qword_1000C12F8);
            }
          }

          else
          {
            RootNavigationContext.transitionType.getter();
            (*(*(v42 - 8) + 8))(v10, v42);
            v43 = v70;
            sub_1000042A8(v13, 0, 1, v70);
            (*(v15 + 32))(v21, v13, v43);
            v45 = v71;
          }

          v47 = v74;
          (*(v15 + 32))(v74, v21, v43);
          v46 = enum case for RootNavigationContext.TransitionType.push(_:);
        }

        v48 = v73;
        (*(v15 + 16))(v18, v47, v43);
        v49 = (*(v15 + 88))(v18, v43);
        if (v49 == v46)
        {
LABEL_28:
          v50 = [v69 topViewController];
          if (v50)
          {
            v51 = v50;
            type metadata accessor for LibraryViewController(0);
            if (swift_dynamicCastClass())
            {
              sub_10000E8F4();

              sub_1000ABC64(1);
            }

            else
            {
            }
          }

          [v69 pushViewController:v76 animated:v48 & 1];
          if (a1)
          {
            v60 = swift_allocObject();
            *(v60 + 16) = a1;
            *(v60 + 24) = v45;
            v59 = a1;
            v61 = OBJC_IVAR___WFMainViewController_navigationCompletions;
            swift_beginAccess();
            sub_10000B960(v59, v45);

            sub_100040A14();
            v66 = *(*&v24[v61] + 16);
            sub_100062C54(v66);
            v63 = *&v24[v61];
            *(v63 + 16) = v66 + 1;
            v64 = v63 + 16 * v66;
            v65 = sub_100041D5C;
            goto LABEL_44;
          }

          goto LABEL_45;
        }

        if (v49 == enum case for RootNavigationContext.TransitionType.popAndPush(_:))
        {

          goto LABEL_28;
        }

        if (v49 != enum case for RootNavigationContext.TransitionType.pushAndReplace(_:))
        {
LABEL_50:
          _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return;
        }

        v52 = [v69 viewControllers];
        v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = sub_10000D55C(v53);
        v55 = v54 - 1;
        if (__OFSUB__(v54, 1))
        {
          __break(1u);
        }

        else
        {
          v56 = v76;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v53 < 0 || (v53 & 0x4000000000000000) != 0)
          {
            v53 = sub_100069B50(v53);
          }

          if ((v55 & 0x8000000000000000) == 0)
          {
            if (v55 < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v57 = *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v55 + 0x20);
              *((v53 & 0xFFFFFFFFFFFFFF8) + 8 * v55 + 0x20) = v56;

              isa = Array._bridgeToObjectiveC()().super.isa;

              [v69 setViewControllers:isa animated:v48 & 1];

              v59 = v75;
              if (v75)
              {
                v60 = swift_allocObject();
                *(v60 + 16) = v59;
                *(v60 + 24) = v45;
                v61 = OBJC_IVAR___WFMainViewController_navigationCompletions;
                swift_beginAccess();
                sub_10000B960(v59, v45);

                sub_100040A14();
                v62 = *(*&v24[v61] + 16);
                sub_100062C54(v62);
                v63 = *&v24[v61];
                *(v63 + 16) = v62 + 1;
                v64 = v63 + 16 * v62;
                v65 = sub_100041BDC;
LABEL_44:
                *(v64 + 32) = v65;
                *(v64 + 40) = v60;
                *&v24[v61] = v63;
                swift_endAccess();

                sub_10000B970(v59, v45);
                (*(v15 + 8))(v47, v70);

                return;
              }

LABEL_45:
              (*(v15 + 8))(v47, v70);

              return;
            }

            goto LABEL_48;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v30 = v26;
      v24 = v34;
    }
  }

  else
  {
    v31 = objc_allocWithZone(UINavigationController);
    v30 = [v31 initWithRootViewController:v76];
    v32 = [v30 navigationBar];
    [v32 setPrefersLargeTitles:1];

    [*&v24[OBJC_IVAR___WFMainViewController_splitView] setViewController:v30 forColumn:2];
  }

  a1 = v75;
LABEL_8:

LABEL_9:
  if (a1)
  {
    a1();
  }
}

uint64_t sub_10000D564(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000D588(uint64_t a1)
{
  v3 = OBJC_IVAR___WFMainViewController_currentDestination;
  swift_beginAccess();
  sub_10000D608(a1, v1 + v3);
  swift_endAccess();
  sub_10000D678();
  return sub_1000069B0(a1, &qword_100100028, &qword_1000C12A8);
}

uint64_t sub_10000D608(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_100100028, &qword_1000C12A8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10000D678()
{
  v1 = type metadata accessor for RootNavigationDestination();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WFLog.subscript.getter();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v36 = v4;
    v37 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38[0] = v13;
    *v12 = 136446210;
    v14 = OBJC_IVAR___WFMainViewController_currentDestination;
    swift_beginAccess();
    v15 = sub_10000AB80(&v9[v14], 1, v1);
    v35 = v1;
    if (v15)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v18 = *(v37 + 16);
      v34 = v5;
      v19 = v36;
      v18(v36, &v9[v14], v1);
      v20 = RootNavigationDestination.displayName.getter();
      v21 = v1;
      v17 = v20;
      v16 = v22;
      v23 = v19;
      v5 = v34;
      (*(v37 + 8))(v23, v21);
    }

    v24 = sub_10000DA48(v17, v16, v38);

    *(v12 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v10, v11, "Current destination changed to %{public}s", v12, 0xCu);
    sub_10000DF90(v13);

    (*(v6 + 8))(v8, v5);
    v1 = v35;
    v4 = v36;
    v2 = v37;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v25 = sub_10000BDD4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v27 = OBJC_IVAR___WFMainViewController_currentDestination;
    swift_beginAccess();
    v28 = sub_10000AB80(&v9[v27], 1, v1);
    v29 = 0;
    v30 = v1;
    v31 = 0;
    if (!v28)
    {
      (*(v2 + 16))(v4, &v9[v27], v30);
      v29 = RootNavigationDestination.sidebarIdentifier.getter();
      v31 = v32;
      (*(v2 + 8))(v4, v30);
    }

    v33 = &Strong[OBJC_IVAR____TtC9Shortcuts16SearchController_destinationIdentifier];
    *v33 = v29;
    v33[1] = v31;
  }
}

unint64_t sub_10000DA48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000DBD0(v11, 0, 0, 1, a1, a2);
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
    sub_10000DF34(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_10000DF90(v11);
  return v7;
}

void *sub_10000DB0C(uint64_t a1, uint64_t a2)
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

  sub_10002E87C(&qword_1000FFF80, &qword_1000C11B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_10000DB7C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000DD38(a1, a2);
  sub_10000DE50(&off_1000F0D10);
  return v3;
}

unint64_t sub_10000DBD0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000DB7C(a5, a6);
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

void *sub_10000DD38(uint64_t a1, unint64_t a2)
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
    result = sub_10000DB0C(v5, 0);
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

        v9 = result + 4;
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

        v9 = v7 + 4;
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

uint64_t sub_10000DE50(uint64_t result)
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

    result = sub_100040A60(result, v7, 1, v3);
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

uint64_t sub_10000DF34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DF90(void *a1)
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

void sub_10000E048(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (a1 && v4 == [a1 horizontalSizeClass])
  {
    v6.receiver = v1;
    v6.super_class = type metadata accessor for MainViewController(0);
    objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  }

  else
  {
    v5 = [v1 traitCollection];
    sub_10000BF98();
  }
}

void sub_10000E16C(void *a1)
{
  if (VCIsInternalBuild())
  {
    v2 = [a1 windowScene];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 statusBarManager];
      if (v4)
      {
        v5 = v4;
        v6 = swift_allocObject();
        *(v6 + 16) = a1;
        v10[4] = sub_100048340;
        v10[5] = v6;
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1107296256;
        v10[2] = sub_100003190;
        v10[3] = &unk_1000F1BD0;
        v7 = _Block_copy(v10);
        v8 = a1;

        [v5 setDebugMenuHandler:v7];
        _Block_release(v7);
      }

      type metadata accessor for DebugStatusBarManager();
      v9 = static DebugStatusBarManager.shared.getter();
      dispatch thunk of DebugStatusBarManager.addWindowScene(_:)();
    }
  }
}

uint64_t sub_10000E2B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000E338()
{
  sub_1000043AC();
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002E87C(&qword_1001026B0, &qword_1000C5BD8);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_10000A7F8();
  v29.receiver = v0;
  v29.super_class = type metadata accessor for LibraryViewController(0);
  objc_msgSendSuper2(&v29, "viewDidLoad");
  *(sub_10000E8F4() + qword_100102DA8) = 1;

  type metadata accessor for LibraryDataSource();
  sub_10000F730();
  v5 = method lookup function for LibraryDataSource();

  LOBYTE(v5) = (v5)(v6);

  sub_10000F830(v5 & 1);

  dispatch thunk of LibraryDataSource.$layoutMode.getter();

  sub_100003A00();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000060B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  sub_10000966C(&qword_1001026B8, &qword_1001026B0, &qword_1000C5BD8);
  Publisher<>.sink(receiveValue:)();

  v9 = sub_10001C810();
  v10(v9);
  sub_100007D68();
  AnyCancellable.store(in:)();
  swift_endAccess();

  LibraryDataSource.onSortComparatorChanged.getter();
  sub_10000A8CC();

  v28 = v3;
  sub_100003A00();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10002E87C(&qword_1001026C0, &qword_1000C5BE0);
  sub_10000966C(&qword_1001026C8, &qword_1001026C0, &qword_1000C5BE0);
  Publisher<>.sink(receiveValue:)();

  sub_100007D68();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v11 = [v1 view];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_libraryAccessibilityIdentifier];
    sub_100005BC0();
    swift_beginAccess();
    if (*(v13 + 1))
    {

      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v12 setAccessibilityIdentifier:{v14, ObjectType, v28}];

    v15 = [v1 navigationItem];
    [v15 setHidesSearchBarWhenScrolling:0];

    v16 = [v1 navigationItem];
    [v16 _setLargeTitleTwoLineMode:1];

    v17 = [v1 navigationController];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 navigationBar];

      [v19 setPrefersLargeTitles:1];
    }

    sub_1000128E8();
    if (v20)
    {
      v21 = sub_100007DC8();
      sub_100012F94(v21);
    }

    v22 = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___toolbarViewController];
    if (v22)
    {
      v23 = v22;
      v24 = sub_100003C10();
      sub_1000138C8(v24, v25);
      sub_100012F04(v22);
    }

    sub_100013B1C();
    sub_10002E87C(&qword_1001026D0, &qword_1000C5BE8);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1000C0D80;
    *(v26 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v26 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v26 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v26 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100003A00();
    *(swift_allocObject() + 16) = v27;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    sub_100002EEC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000E860()
{

  sub_1000060B8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000E8F4()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource;
  if (*(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___dataSource);
  }

  else
  {
    v3 = sub_10000E968();
    v2 = sub_10000ECEC(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_10000E988(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10000E9EC(uint64_t a1)
{
  v2 = type metadata accessor for LibraryEditingBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LibraryConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(UICollectionView) initWithFrame:*(a1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_flowLayout) collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  [v12 setDelegate:a1];
  [v12 setDragDelegate:a1];
  [v12 setDragInteractionEnabled:1];
  [v12 setDropDelegate:a1];
  [v12 setAlwaysBounceVertical:1];
  [v12 setAllowsMultipleSelectionDuringEditing:1];
  [v12 setAllowsFocus:1];
  [v12 setSelectionFollowsFocus:1];
  v14 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v14, v6);
  LibraryConfiguration.editingBehavior.getter();
  (*(v7 + 8))(v9, v6);
  LOBYTE(a1) = LibraryEditingBehavior.allowsMultipleSelection.getter();
  (*(v3 + 8))(v5, v2);
  [v12 setAllowsMultipleSelection:a1 & 1];
  return v12;
}

uint64_t sub_10000ECEC(void *a1)
{
  v3 = v1;
  type metadata accessor for LibraryCell();
  swift_getObjCClassFromMetadata();
  sub_10002E87C(&qword_100103218, &qword_1000C69A8);
  String.init<A>(describing:)();
  String._bridgeToObjectiveC()();
  sub_100004724();

  v5 = sub_10000F200();
  [v5 v6];

  _s14descr1000EF9A1C16EmptySectionCellCMa();
  swift_getObjCClassFromMetadata();
  sub_10002E87C(&qword_100103220, &qword_1000C69B0);
  String.init<A>(describing:)();
  String._bridgeToObjectiveC()();
  sub_100004724();

  v7 = sub_10000F200();
  [v7 v8];

  _s14descr1000EF9A1C10TopHitCellCMa();
  swift_getObjCClassFromMetadata();
  sub_10002E87C(&unk_100103228, &qword_1000C69B8);
  String.init<A>(describing:)();
  String._bridgeToObjectiveC()();
  sub_100004724();

  v9 = sub_10000F200();
  [v9 v10];

  _s14descr1000EF9A1C17SectionHeaderViewCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = UICollectionElementKindSectionHeader;
  v13 = String._bridgeToObjectiveC()();
  [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

  _s14descr1000EF9A1C21AppShortcutHeaderViewCMa();
  v14 = swift_getObjCClassFromMetadata();
  v15 = v12;
  v16 = String._bridgeToObjectiveC()();
  [a1 registerClass:v14 forSupplementaryViewOfKind:v15 withReuseIdentifier:v16];

  sub_100002FC4(0, &qword_1000FF9D0, UICollectionReusableView_ptr);
  swift_getObjCClassFromMetadata();
  v17 = UICollectionElementKindSectionFooter;
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_10000F200();
  [v19 v20];

  _s14descr1000EF9A1C27MiniTipCollectionHeaderViewCMa();
  swift_getObjCClassFromMetadata();
  v21 = qword_1000FF568;
  v22 = v15;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = String._bridgeToObjectiveC()();
  sub_1000B01FC(v23);

  _s14descr1000EF9A1C35SyncUnavailableCollectionHeaderViewCMa();
  v24 = qword_1000FF560;
  v25 = v22;
  if (v24 != -1)
  {
    swift_once();
  }

  swift_getObjCClassFromMetadata();
  v26 = String._bridgeToObjectiveC()();
  sub_1000B01FC(v26);

  sub_100003A00();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = objc_allocWithZone(sub_10002E87C(&qword_100103238, &unk_1000C69C0));
  v28 = a1;
  UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  sub_10000A594();
  sub_100003A00();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v29 = *&v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database];
  v30 = *&v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_shortcutMoveService];
  v31 = _s14descr1000EF9A1C10DataSourceCMa(0);
  sub_100006640(v31);
  v32 = v29;
  sub_100004724();

  v33 = v3;
  v34 = sub_1000095CC();
  return sub_10000F47C(v34, v35, v29, v30);
}

uint64_t sub_10000F11C()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10000F1D4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000F2C4()
{
  _s14descr1000EF9A1C27MiniTipCollectionHeaderViewCMa();
  sub_10002E87C(&qword_100103310, &unk_1000C6A98);
  result = String.init<A>(describing:)();
  qword_100109FD0 = result;
  *algn_100109FD8 = v1;
  return result;
}

uint64_t sub_10000F338()
{
  _s14descr1000EF9A1C35SyncUnavailableCollectionHeaderViewCMa();
  sub_10002E87C(&qword_100100CE8, &qword_1000C4108);
  result = String.init<A>(describing:)();
  qword_100109EF0 = result;
  *algn_100109EF8 = v1;
  return result;
}

uint64_t sub_10000F44C()
{
}

id sub_10000F464(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{

  return objc_msgSendSuper2(&a9, a2, v9 & 1, a4, a5, a6, a7, a8);
}

uint64_t sub_10000F47C(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = type metadata accessor for LibraryConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + qword_100102D80) = 0;
  swift_unknownObjectWeakInit();
  v12 = qword_100102D98;
  *(v5 + v12) = Dictionary.init(dictionaryLiteral:)();
  *(v5 + qword_100102DA0) = 0;
  *(v5 + qword_100102DA8) = 0;
  *(v5 + qword_100102D88) = a1;
  swift_unknownObjectWeakAssign();
  v13 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v13], v8);
  v14 = a1;
  LibraryConfiguration.layoutOverride.getter();
  (*(v9 + 8))(v11, v8);
  v15 = LibraryDataSource.init(layoutMode:canChangeLayoutModes:shortcutMoveService:database:)();

  return v15;
}

uint64_t sub_10000F668(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F6AC(uint64_t a1)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

id sub_10000F6F0()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

uint64_t sub_10000F780()
{

  return static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
}

void sub_10000F830(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_10000E968();
  v5 = [v4 superview];

  p_superclass = &OBJC_METACLASS____TtC9Shortcuts21SearchStateController.superclass;
  if (v5)
  {

    [*&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView] removeFromSuperview];
  }

  else
  {
    v7 = sub_10000FE28();
    v8 = [v7 view];

    if (!v8)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v9 = [v8 superview];

    if (v9)
    {

      v10 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___tableView;
      v11 = [*&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___tableView] view];
      if (!v11)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v12 = v11;
      [v11 removeFromSuperview];

      [v2 removeChildViewController:*&v2[v10]];
    }
  }

  if (v3)
  {
    sub_10000E8F4();
    sub_100003A0C();
    type metadata accessor for LibraryDataSource();
    v13 = method lookup function for LibraryDataSource();
    v13();
    sub_1000A1614();

    sub_1000105A4();

    v14 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView;
    [*&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView] wf_scrollToTopAnimated:0];
    v15 = sub_100012B58();
    if (!v15)
    {
      __break(1u);
      goto LABEL_31;
    }

    v16 = v15;
    [v15 insertSubview:*&v2[v14] atIndex:0];

    if (_UISolariumEnabled() && (v16 = [v2 traitCollection], v17 = objc_msgSend(v16, "horizontalSizeClass"), v16, v17 == 2))
    {
      v16 = [v2 navigationItem];
      [v16 setLargeTitleDisplayMode:2];

      [*&v2[v14] setAutoresizingMask:18];
      v18 = *&v2[v14];
      v19 = sub_1000A15D8();
      if (!v19)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      p_superclass = &WFMainViewController__prots;
      [v19 bounds];
      sub_10001C718();
      v69.origin.x = sub_100017370();
      CGRectGetWidth(v69);
      v20 = sub_100012B58();
      if (!v20)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      [v20 bounds];
      sub_100017450();
      sub_100011D8C();
      sub_1000A1660(v21, "setFrame:");

      v22 = *&v2[v14];
      v23 = sub_1000A15D8();
      if (!v23)
      {
LABEL_44:
        __break(1u);
        return;
      }

      v24 = v23;
      [v23 safeAreaInsets];
      v26 = v25;

      v27 = sub_100012B58();
      if (!v27)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      [*&v2[v14] setAutoresizingMask:18];
      v46 = *&v2[v14];
      v47 = sub_1000A15D8();
      if (!v47)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      [v47 bounds];
      sub_10001C718();
      v70.origin.x = sub_100017370();
      CGRectGetWidth(v70);
      v48 = sub_100012B58();
      if (!v48)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      [v48 bounds];
      sub_100017450();
      sub_100011D8C();
      sub_1000A1660(v49, "setFrame:");

      v50 = *&v2[v14];
      v51 = sub_1000A15D8();
      if (!v51)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v52 = v51;
      [v51 safeAreaInsets];
      v26 = v53;

      v27 = sub_100012B58();
      if (!v27)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v54 = v27;
    [v27 safeAreaInsets];
    v56 = v55;

    [v16 setContentInset:{0.0, v26, 0.0, v56}];

    sub_100010CE4(0, 0, v57, v58, v59, v60, v61, v62, v64, v65, v66, v67);

    [v2 setContentScrollView:*&v2[v14] forEdge:15];
    goto LABEL_27;
  }

LABEL_16:
  v28 = sub_10000FE28();
  v29 = [v28 view];

  if (!v29)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v29 setAutoresizingMask:18];

  v30 = p_superclass[144];
  if (![*(&v30->isa + v2) view])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v31 = sub_1000A15D8();
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v31 bounds];
  sub_10001C718();
  v32 = sub_100017370();
  [v33 v34];

  v35 = sub_100012B58();
  if (!v35)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = v35;
  v37 = [*(&v30->isa + v2) view];
  if (!v37)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v38 = v37;
  [v36 insertSubview:v37 atIndex:0];

  [v2 addChildViewController:*(&v30->isa + v2)];
  sub_10000E8F4();
  sub_100010CE4(0, 0, v39, v40, v41, v42, v43, v44, v64, v65, v66, v67);

  v45 = [*(&v30->isa + v2) contentScrollViewForEdge:1];
  [v2 setContentScrollView:v45 forEdge:15];

LABEL_27:
  v63 = [v2 isEditing] ^ 1;

  sub_1000116F8(v63, 0.0);
}

void *sub_10000FE6C(void *a1)
{
  v2 = type metadata accessor for LibraryIndirectMenuDataSource();
  swift_allocObject();
  v3 = a1;
  v4 = sub_10001026C(a1);
  sub_10000E8F4();
  v5 = *&v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_database];
  v6 = &v3[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_delegate];
  swift_unknownObjectWeakLoadStrong();
  v7 = *(v6 + 1);
  swift_unknownObjectWeakInit();
  v21 = 0;
  v8 = v5;
  sub_10002E87C(&unk_100102640, &qword_1000C4290);
  State.init(wrappedValue:)();
  v26 = v18;
  v27 = 0x403A000000000000;
  type metadata accessor for LibraryDataSource();
  sub_100009E14(&qword_100100DB0, &type metadata accessor for LibraryDataSource);
  v22 = ObservedObject.init(wrappedValue:)();
  v23 = v9;
  v24 = v8;
  v25 = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  KeyPath = swift_getKeyPath();
  v19 = v2;
  v20 = sub_100009E14(&qword_100102650, type metadata accessor for LibraryIndirectMenuDataSource);
  *&v18 = v4;
  sub_1000102AC(&v18, &v29, &qword_100102658, &qword_1000C5BB0);
  v28 = KeyPath;

  sub_1000069B0(&v18, &qword_100102658, &qword_1000C5BB0);
  sub_10002E87C(&qword_100102660, &qword_1000C5BB8);
  sub_10001031C();
  v11 = AnyView.init<A>(_:)();
  v12 = objc_allocWithZone(sub_10002E87C(&qword_100102688, &unk_1000C5BC8));
  v13 = sub_100010494(v11);
  v22 = *(v13 + *((swift_isaMask & *v13) + qword_100109F88 + 16));
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;

  v16 = v13;
  sub_10002E87C(&unk_1001025D0, &qword_1000C5B48);
  sub_10000966C(&unk_100102690, &unk_1001025D0, &qword_1000C5B48);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

uint64_t sub_100010228()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10001026C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return v1;
}

uint64_t sub_1000102AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10002E87C(a3, a4);
  sub_100003EC8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_10001031C()
{
  result = qword_100102668;
  if (!qword_100102668)
  {
    sub_100041CB4(&qword_100102660, &qword_1000C5BB8);
    sub_1000103D4();
    sub_10000966C(&qword_100102678, &qword_100102680, &qword_1000C5BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102668);
  }

  return result;
}

unint64_t sub_1000103D4()
{
  result = qword_100102670;
  if (!qword_100102670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102670);
  }

  return result;
}

uint64_t sub_100010494(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + qword_100109F88 + 16);
  sub_10002E87C(&unk_1001025D0, &qword_1000C5B48);
  swift_allocObject();
  *(v1 + v2) = PassthroughSubject.init()();
  return UIHostingController.init(rootView:)();
}

void sub_100010544(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void sub_1000105A4()
{
  sub_1000043AC();
  v2 = v1;
  v3 = sub_10002E87C(&qword_100100010, &unk_1000C1290);
  v4 = sub_100002EE0(v3);
  __chkstk_darwin(v4);
  sub_10000F1A8();
  v83 = v5;
  sub_10000667C();
  __chkstk_darwin(v6);
  v84 = &v74 - v7;
  sub_1000042F8();
  v82 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v75 = v8;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v81 = v11 - v10;
  sub_1000042F8();
  v79 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000039BC();
  v17 = v16 - v15;
  sub_10002E87C(&qword_1001031C0, &qword_1000C68D0);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v18);
  v80 = v0;
  sub_10000E8F4();
  dispatch thunk of LibraryDataSource.sortedSections.getter();

  v19 = OrderedDictionary.values.getter();
  v20 = sub_100003BD0();
  v21(v20);
  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = v13 + 16;
    sub_100003A3C();
    v74 = v19;
    v25 = v19 + v24;
    v76 = *(v23 + 56);
    v77 = (v23 - 8);
    v78 = v26;
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = v79;
      (v78)(v17, v25, v79);
      v29 = ShortcutsLibrarySection.items.getter();
      (*v77)(v17, v28);
      v30 = *(v29 + 16);
      v31 = v27[2];
      if (__OFADD__(v31, v30))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v31 + v30 > v27[3] >> 1)
      {
        sub_10008D230();
        v27 = v32;
      }

      if (*(v29 + 16))
      {
        if ((v27[3] >> 1) - v27[2] < v30)
        {
          goto LABEL_59;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v33 = v27[2];
          v34 = __OFADD__(v33, v30);
          v35 = v33 + v30;
          if (v34)
          {
            goto LABEL_60;
          }

          v27[2] = v35;
        }
      }

      else
      {

        if (v30)
        {
          goto LABEL_58;
        }
      }

      v25 += v76;
      if (!--v22)
      {

        goto LABEL_16;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
LABEL_16:
    v85 = _swiftEmptyArrayStorage;
    v36 = v27[2];
    if (v36)
    {
      v79 = *(v75 + 16);
      sub_100003A3C();
      v38 = v27 + v37;
      v40 = *(v39 + 56);
      v41 = (v39 - 8);
      v78 = _swiftEmptyArrayStorage;
      do
      {
        v42 = v81;
        v43 = v82;
        v79(v81, v38, v82);
        v44 = ShortcutsLibraryItem.workflow.getter();
        (*v41)(v42, v43);
        if (v44)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v45 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v45 >> 1)
          {
            sub_100005E38(v45);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v78 = v85;
        }

        v38 += v40;
        --v36;
      }

      while (v36);

      v46 = v78;
    }

    else
    {

      v46 = _swiftEmptyArrayStorage;
    }

    v86 = _swiftEmptyArrayStorage;
    v47 = sub_10000D55C(v46);
    v48 = 0;
    v81 = v46 & 0xFFFFFFFFFFFFFF8;
    v82 = v46 & 0xC000000000000001;
    v78 = v46;
    v49 = v46 + 32;
LABEL_26:
    while (v48 != v47)
    {
      if (v82)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *(v81 + 16))
        {
          goto LABEL_54;
        }

        v50 = *(v49 + 8 * v48);
      }

      v51 = v50;
      v34 = __OFADD__(v48++, 1);
      if (v34)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v52 = WFDatabaseObjectDescriptor.id.getter();
      v54 = v53;
      if (*(v2 + 16))
      {
        v55 = v52;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v56 = Hasher._finalize()();
        v57 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v58 = v56 & v57;
          if (((*(v2 + 56 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
          {
            break;
          }

          v59 = (*(v2 + 48) + 16 * v58);
          if (*v59 != v55 || v59[1] != v54)
          {
            v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v56 = v58 + 1;
            if ((v61 & 1) == 0)
            {
              continue;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          sub_100003BD0();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_26;
        }
      }
    }

    v62 = v86;
    v63 = sub_10000D55C(v86);
    for (i = 0; v63 != i; ++i)
    {
      if ((v62 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v62 + 16))
        {
          goto LABEL_56;
        }

        v65 = *(v62 + 8 * i + 32);
      }

      v66 = v65;
      if (__OFADD__(i, 1))
      {
        goto LABEL_55;
      }

      v67 = v84;
      sub_1000AB7D8();

      v68 = sub_10000E968();
      v69 = v83;
      sub_10006BA4C(v67, v83);
      v70 = type metadata accessor for IndexPath();
      v71 = sub_10000AB80(v69, 1, v70);
      isa = 0;
      if (v71 != 1)
      {
        v73 = v83;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(*(v70 - 8) + 8))(v73, v70);
      }

      [v68 selectItemAtIndexPath:isa animated:0 scrollPosition:{1, v74}];

      sub_1000171D4(v84, &qword_100100010, &unk_1000C1290);
    }

    sub_100002EEC();
  }
}

void sub_100010CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000043AC();
  v13 = v12;
  v15 = v14;
  v106 = v16;
  v135 = type metadata accessor for ShortcutsLibraryItem();
  sub_100004458();
  v110 = v17;
  __chkstk_darwin(v18);
  sub_1000039BC();
  v134 = v20 - v19;
  sub_1000042F8();
  v21 = type metadata accessor for LibrarySectionOptions.Header();
  sub_100004458();
  v23 = v22;
  __chkstk_darwin(v24);
  sub_100003EF4();
  v27 = v25 - v26;
  __chkstk_darwin(v28);
  v109 = &v103 - v29;
  sub_1000042F8();
  v30 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_1000039BC();
  v129 = v35 - v34;
  sub_1000042F8();
  v36 = type metadata accessor for ShortcutsLibrarySection();
  sub_100004458();
  v122 = v37;
  __chkstk_darwin(v38);
  sub_1000039BC();
  v131 = v40 - v39;
  v41 = sub_10002E87C(&qword_1001031C0, &qword_1000C68D0);
  sub_100004458();
  v133 = v42;
  sub_100005B90();
  __chkstk_darwin(v43);
  v45 = &v103 - v44;
  v121 = sub_10002E87C(&unk_1001031C8, &qword_1000C68D8);
  sub_100004458();
  sub_100005B90();
  __chkstk_darwin(v46);
  v123 = &v103 - v48;
  if ((v15 & 1) != 0 || *(v13 + qword_100102D80) <= 0 && *(v13 + qword_100102DA8) != 1)
  {
    v132 = v23;
    v49 = v41;
    v103 = v47;
    type metadata accessor for LibraryDataSource();
    v50 = method lookup function for LibraryDataSource();
    v50(v106 & 1, v15 & 1);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_40:
      sub_100002EEC();
      return;
    }

    v130 = v32;
    sub_10000F730();
    v51 = method lookup function for LibraryDataSource();
    v51();
    v52 = LibraryLayoutMode.rawValue.getter();
    v54 = v53;
    if (v52 == LibraryLayoutMode.rawValue.getter() && v54 == v55)
    {
    }

    else
    {
      v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v57 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v59 = sub_1000199B0();
    NSDiffableDataSourceSnapshot.init()();
    dispatch thunk of LibraryDataSource.sortedSections.getter();
    v60 = OrderedDictionary.values.getter();
    (*(v133 + 8))(v45, v49);
    v120 = *(v60 + 16);
    if (!v120)
    {
LABEL_38:

      v101 = v123;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
      (*(v103 + 8))(v101, v121);
LABEL_39:
      v102 = Strong;
      sub_1000296C4();

      goto LABEL_40;
    }

    sub_100003A3C();
    v116 = v60 + v62;
    v115 = v63 + 16;
    v128 = (v130 + 8);
    v114 = enum case for LibrarySectionOptions.Header.tip(_:);
    v127 = (v132 + 13);
    v126 = (v132 + 1);
    v113 = v63 + 8;
    v112 = enum case for LibrarySectionOptions.Header.syncUnavailable(_:);
    v132 = (v110 + 8);
    v133 = v110 + 16;
    v107 = xmmword_1000C0C20;
    v118 = v59;
    v125 = v13;
    v105 = v21;
    v104 = v27;
    v108 = v30;
    v119 = v36;
    v117 = v60;
    while (1)
    {
      if (v61 >= *(v60 + 16))
      {
        __break(1u);
        return;
      }

      v64 = *(v122 + 72);
      v130 = v61;
      (*(v122 + 16))(v131, v116 + v64 * v61, v36);
      v65 = v129;
      ShortcutsLibrarySection.options.getter();
      sub_100019A40(v65, v59 & 1);
      v66 = v59;
      v67 = *v128;
      (*v128)(v65, v30);
      ShortcutsLibrarySection.options.getter();
      LibrarySectionOptions.header.getter();
      v67(v65, v30);
      v68 = *v127;
      (*v127)(v27, v114, v21);
      LOBYTE(v65) = static LibrarySectionOptions.Header.== infix(_:_:)();
      v36 = *v126;
      v69 = sub_10000478C();
      (v36)(v69);
      v70 = sub_100011DAC();
      (v36)(v70);
      if (v65)
      {
        v71 = sub_1000197B0();
        if (v66)
        {
          v72 = v71;
LABEL_23:
          v73 = *(ShortcutsLibrarySection.items.getter() + 16);

          if (!v73 && (v72 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else if (v66)
      {
        v72 = 0;
        goto LABEL_23;
      }

      v74 = v129;
      ShortcutsLibrarySection.options.getter();
      LibrarySectionOptions.header.getter();
      v67(v74, v30);
      v68(v27, v112, v21);
      LOBYTE(v74) = static LibrarySectionOptions.Header.== infix(_:_:)();
      v75 = sub_10000478C();
      (v36)(v75);
      v76 = sub_100011DAC();
      (v36)(v76);
      if (v74 & 1) == 0 || (v77 = [Strong traitCollection], v78 = objc_msgSend(v77, "horizontalSizeClass"), v77, v78 != 2) && (sub_100019CFC(), (v79))
      {
        sub_10002E87C(&unk_100102430, &qword_1000C68E0);
        v80 = swift_allocObject();
        *(v80 + 16) = v107;
        *(v80 + 32) = ShortcutsLibrarySection.id.getter();
        *(v80 + 40) = v81;
        NSDiffableDataSourceSnapshot.appendSections(_:)(v80);

        v82 = ShortcutsLibrarySection.items.getter();
        v83 = *(v82 + 16);
        if (v83)
        {
          v136 = _swiftEmptyArrayStorage;
          sub_10001A19C(0, v83, 0);
          v36 = v136;
          sub_100003A3C();
          v111 = v82;
          v85 = v82 + v84;
          v87 = *(v86 + 72);
          v88 = *(v86 + 16);
          do
          {
            v90 = v134;
            v89 = v135;
            v88(v134, v85, v135);
            v91 = ShortcutsLibraryItem.id.getter();
            v93 = v92;
            (*v132)(v90, v89);
            v136 = v36;
            v95 = v36[2];
            v94 = v36[3];
            if (v95 >= v94 >> 1)
            {
              sub_10001A19C(v94 > 1, v95 + 1, 1);
              v36 = v136;
            }

            v36[2] = v95 + 1;
            v96 = &v36[2 * v95];
            v96[4] = v91;
            v96[5] = v93;
            v85 += v87;
            --v83;
          }

          while (v83);

          v21 = v105;
          v27 = v104;
        }

        else
        {

          v36 = _swiftEmptyArrayStorage;
        }

        v136 = 0;
        v137 = 0;
        NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

        v99 = sub_100006108();
        v100(v99);
        v30 = v108;
        LOBYTE(v59) = v118;
        goto LABEL_37;
      }

LABEL_34:
      v97 = sub_100006108();
      v98(v97);
      LOBYTE(v59) = v118;
LABEL_37:
      v60 = v117;
      v61 = v130 + 1;
      if (v130 + 1 == v120)
      {
        goto LABEL_38;
      }
    }
  }

  sub_100002EEC();

  sub_1000116CC();
}

void sub_1000116CC()
{
  v1 = *(v0 + qword_100102D80);
  v2 = v1 < 1;
  v3 = v1 - 1;
  if (!v2 && (*(v0 + qword_100102DA8) & 1) == 0)
  {
    *(v0 + qword_100102D80) = v3;
  }
}

void sub_1000116F8(char a1, double a2)
{
  v5 = sub_10000E968();
  [v5 contentInset];

  if ((a1 & 1) != 0 || (sub_1000128E8(), !v6))
  {
    if (a2 <= 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v6;
  [*&v6[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar] frame];
  CGRectGetHeight(v11);

  if (a2 > 0.0)
  {
LABEL_6:
    [*&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___collectionView] safeAreaInsets];
  }

LABEL_7:
  v8 = [v2 contentScrollViewForEdge:4];
  if (v8)
  {
    v9 = v8;
    sub_100006160(v8, "setContentInset:");
    sub_100006160(v9, "setScrollIndicatorInsets:");
  }
}

uint64_t sub_100011850()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000118A4()
{
  v2 = *(v0 - 336);

  return sub_10006B47C(0, v2);
}

uint64_t sub_1000118F4(uint64_t a1)
{
  *(v1 - 160) = a1;

  return String.LocalizationValue.init(stringLiteral:)();
}

void sub_100011930(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v9 = v8;

    if (v8)
    {
      v10 = [v9 symbolName];

      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_6;
    }

    v7 = 0;
  }

  v12 = 0;
LABEL_6:
  v13 = LibraryLayoutMode.symbolName.getter();
  if (!v12)
  {

    goto LABEL_14;
  }

  if (v7 == v13 && v12 == v14)
  {

    goto LABEL_16;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
LABEL_14:
    v17 = objc_opt_self();
    v27 = sub_100011D4C;
    v28 = a2;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100003190;
    v26 = &unk_1000F3A58;
    v18 = _Block_copy(&aBlock);

    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = v5;
    *(v19 + 32) = a3;
    v27 = sub_1000231E0;
    v28 = v19;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100022DA8;
    v26 = &unk_1000F3AA8;
    v20 = _Block_copy(&aBlock);

    [v17 animateWithDuration:v18 animations:v20 completion:0.125];
    _Block_release(v20);
    _Block_release(v18);
  }

LABEL_16:
  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_10000F830(v5);
  }
}

uint64_t sub_100011BD8()
{

  sub_100019CF0();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100011C20(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v4 = v3;

    if (v3)
    {
      v5 = [v4 imageView];

      if (v5)
      {
        CGAffineTransformMakeScale(&v10, 0.95, 0.95);
        [v5 setTransform:&v10];
      }
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customLayoutButton);
    v9 = v8;

    if (v8)
    {
      [v9 setAlpha:0.0];
    }
  }
}

uint64_t sub_100011D6C(uint64_t a1, ...)
{

  return static Published.subscript.setter();
}

CGFloat sub_100011D8C()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetHeight(*&v5);
}

uint64_t sub_100011DB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000966C(a1, a2, a3);
}

uint64_t sub_100011DE8(uint64_t a1, uint64_t a2)
{

  return String.LocalizationValue.init(stringLiteral:)();
}

void sub_100011E1C()
{
  sub_1000043AC();
  v1 = type metadata accessor for LibraryEditingAction();
  sub_100004458();
  v78 = v2;
  __chkstk_darwin(v3);
  sub_10000F1A8();
  v79 = v4;
  sub_10000667C();
  __chkstk_darwin(v5);
  v77 = &v65 - v6;
  sub_10000667C();
  __chkstk_darwin(v7);
  v9 = &v65 - v8;
  v10 = type metadata accessor for LibraryEditingBehavior();
  sub_100004458();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000039BC();
  v16 = v15 - v14;
  v17 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000039BC();
  v23 = v22 - v21;
  v24 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  (*(v19 + 16))(v23, &v0[v24], v17);
  v25 = v0;
  LibraryConfiguration.editingBehavior.getter();
  (*(v19 + 8))(v23, v17);
  v26 = LibraryEditingBehavior.actions.getter();
  (*(v12 + 8))(v16, v10);
  if (!v26)
  {

LABEL_29:
    sub_100002EEC();
    return;
  }

  v66 = v25;
  v27 = 0;
  v28 = v78;
  v81 = v78 + 16;
  v76 = (v78 + 104);
  v29 = (v78 + 8);
  v72 = (v78 + 88);
  v68 = _swiftEmptyArrayStorage;
  v84 = _swiftEmptyArrayStorage;
  v65 = v78 + 96;
  v30 = *(v26 + 16);
  v80 = enum case for LibraryEditingAction.delete(_:);
  v71 = enum case for LibraryEditingAction.remove(_:);
  v69 = enum case for LibraryEditingAction.duplicate(_:);
  v70 = enum case for LibraryEditingAction.move(_:);
  v74 = v30;
  for (i = v26; ; v26 = i)
  {
    if (v30 == v27)
    {

      goto LABEL_29;
    }

    if (v27 >= v30)
    {
      break;
    }

    sub_100003A3C();
    v32 = *(v28 + 16);
    v32(v9, v26 + v31 + *(v28 + 72) * v27, v1);
    v33 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_31;
    }

    LibraryEditingAction.title.getter();
    v82 = 0u;
    v83 = 0u;
    v34 = objc_allocWithZone(UIBarButtonItem);
    sub_100012930();
    v36 = v35;
    v37 = v77;
    (*v76)(v77, v80, v1);
    v38 = static LibraryEditingAction.== infix(_:_:)();
    v39 = *v29;
    (*v29)(v37, v1);
    if (v38)
    {
      v40 = [objc_opt_self() systemRedColor];
      [v36 setTintColor:v40];
    }

    v41 = LibraryEditingAction.title.getter();
    if (!v42)
    {
      goto LABEL_14;
    }

    v73 = v41;
    v43 = v79;
    v32(v79, v9, v1);
    v44 = (*v72)(v43, v1);
    if (v44 == v71)
    {
      v45 = v79;
      v46 = sub_100003BD0();
      v47(v46);
      v68 = *(v45 + 2);
      v48 = *(v45 + 3);

      sub_100003A00();
      v49 = swift_allocObject();
      sub_100002F6C(v49);
      v50 = swift_allocObject();
      v51 = v68;
      v50[2] = v49;
      v50[3] = v51;
      v50[4] = v48;
    }

    else if (v44 == v70 || v44 == v69)
    {
      sub_100003A00();
      v52 = swift_allocObject();
      sub_100002F6C(v52);
    }

    else
    {
      if (v44 != v80)
      {
        v39(v79, v1);

LABEL_14:

        v39(v9, v1);
        ++v27;
        goto LABEL_15;
      }

      sub_100003A00();
      v53 = swift_allocObject();
      sub_100002F6C(v53);
      v54 = swift_allocObject();
      *(v54 + 16) = v53;
      *(v54 + 24) = v36;
      v55 = v36;
    }

    if (_UISolariumEnabled())
    {
      v56 = LibraryEditingAction.symbolName.getter();
      v58 = v57;
      if (v57)
      {
        v68 = v56;
        sub_100002FC4(0, &qword_100100110, UIImage_ptr);
        v58 = sub_100012A98(v68, v58);
      }
    }

    else
    {
      v58 = 0;
    }

    v67 = sub_100002FC4(0, &qword_100100C60, UIAction_ptr);
    v68 = v58;
    v59 = sub_100005CF0();
    sub_10000B960(v59, v60);
    sub_100005BC0();
    v61 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v36 setPrimaryAction:v61];

    v62 = sub_100005CF0();
    sub_10000B970(v62, v63);

    v39(v9, v1);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v64 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v64 >> 1)
    {
      sub_100005E38(v64);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v68 = v84;
    v27 = v33;
LABEL_15:
    v28 = v78;
    v30 = v74;
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_100012578()
{
  swift_unknownObjectWeakDestroy();
  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000125AC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000125EC()
{

  v1 = sub_100005BF0();

  return _swift_deallocObject(v1, v2, v3);
}

void sub_100012624()
{
  v0 = sub_10001287C();
  if (v0)
  {
    v1 = objc_allocWithZone(UIBarButtonItem);
    sub_100012B90();
    v3 = v2;
    v4 = sub_10000D55C(v0);
    for (i = 0; ; ++i)
    {
      if (v4 == i)
      {

        v10 = objc_allocWithZone(type metadata accessor for FloatingToolbarViewController());
        sub_100012CF4(_swiftEmptyArrayStorage, 1);

        return;
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v0 + 8 * i + 32);
      }

      v7 = v6;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (i && (_UISolariumEnabled() & 1) == 0)
      {
        v8 = v3;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v9 = v7;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1000127FC()
{
  sub_1000079FC();
  v4 = v3;
  v6 = *v5;
  v7 = *(v0 + *v5);
  if (v7 == 1)
  {
    v8 = v2;
    v9 = v1(v0);
    v10 = *(v0 + v6);
    *(v0 + v6) = v9;
    v11 = v9;
    v8(v10);
  }

  v4(v7);
  sub_1000046DC();
}

uint64_t sub_10001287C()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___editingItems;
  v2 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___editingItems);
  v3 = v2;
  if (v2 == 1)
  {
    sub_100011E1C();
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;

    sub_100012B70(v5);
  }

  sub_100012B80(v2);
  return v3;
}

void sub_100012930()
{
  sub_1000043AC();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = v5[3];
  if (v10)
  {
    v11 = sub_100011DAC();
    v13 = sub_100041C04(v11, v12);
    v14 = *(v10 - 8);
    __chkstk_darwin(v13);
    sub_1000039BC();
    v17 = v16 - v15;
    (*(v14 + 16))(v16 - v15);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v17, v10);
    sub_10000DF90(v5);
  }

  else
  {
    v18 = 0;
  }

  [v1 initWithTitle:v9 style:v7 target:v18 action:v3];

  swift_unknownObjectRelease();
  sub_100002EEC();
}

id sub_100012A98(uint64_t a1, uint64_t a2)
{
  v2 = String._bridgeToObjectiveC()();

  v3 = [swift_getObjCClassFromMetadata() systemImageNamed:v2];

  return v3;
}

uint64_t sub_100012B1C(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_100012B3C()
{

  return type metadata accessor for RootNavigationDestination();
}

id sub_100012B58()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

uint64_t sub_100012B70(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_100012B80(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_100012B90()
{
  sub_1000043AC();
  v3 = v2;
  v5 = v4;
  v6 = v1[3];
  if (v6)
  {
    v7 = v1;
    v8 = sub_100041C04(v1, v1[3]);
    v9 = *(v6 - 8);
    __chkstk_darwin(v8);
    sub_1000039BC();
    v12 = v11 - v10;
    (*(v9 + 16))(v11 - v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v6);
    sub_10000DF90(v7);
  }

  else
  {
    v13 = 0;
  }

  [v0 initWithBarButtonSystemItem:v5 target:v13 action:v3];
  swift_unknownObjectRelease();
  sub_100002EEC();
}

char *sub_100012CF4(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar;
  type metadata accessor for Toolbar();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v2[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_backgroundColor] = 0;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for FloatingToolbarViewController();
  v6 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v7 = OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar;
  v8 = *&v6[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar];
  v9 = v6;
  [v8 setTranslucent:a2 & 1];
  sub_100012E7C(a1, *&v6[v7]);

  return v9;
}

id sub_100012DF0(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for Toolbar();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

void sub_100012E7C(uint64_t a1, void *a2)
{
  sub_100002FC4(0, &qword_1001002C0, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setItems:isa];
}

void sub_100012F04(id a1)
{
  if (a1 != 1)
  {
  }
}

void *sub_100012F18()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage____editButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    sub_100015DC0();
    v3 = v4;
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;
    sub_100012F04(v5);
  }

  sub_100012F84(v2);
  return v3;
}

id sub_100012F84(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_100012F94(void *a1)
{
  [a1 addChildViewController:v1];
  v3 = sub_100013340();
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = sub_10000F6F0();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = sub_100013340();
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  [v6 addSubview:v7];

  v9 = sub_100013340();
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = sub_10000F6F0();
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v12 bottomAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  v16 = OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint;
  v17 = *&v1[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint];
  *&v1[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_bottomConstraint] = v15;

  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000C0DA0;
  v19 = sub_100013340();
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v20 = v19;
  v21 = [v19 leadingAnchor];

  v22 = sub_10000F6F0();
  if (!v22)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v18 + 32) = v25;
  v26 = sub_100013340();
  if (!v26)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v26;
  v28 = [v26 trailingAnchor];

  v29 = sub_10000F6F0();
  if (!v29)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v18 + 40) = v32;
  v33 = *&v1[v16];
  if (!v33)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v34 = objc_opt_self();
  *(v18 + 48) = v33;
  sub_100002FC4(0, &qword_1001002C8, NSLayoutConstraint_ptr);
  v35 = v33;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  [v1 didMoveToParentViewController:a1];
}

uint64_t sub_1000132D8()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

id sub_100013340()
{
  v3 = *(v1 + 2032);

  return [v0 v3];
}

void sub_1000133E8()
{
  v33.receiver = v0;
  v33.super_class = type metadata accessor for FloatingToolbarViewController();
  objc_msgSendSuper2(&v33, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC9Shortcuts29FloatingToolbarViewController_toolbar];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = sub_100013340();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 addSubview:v2];

  sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000C13C0;
  v6 = [v2 leadingAnchor];
  v7 = sub_1000044A4();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 safeAreaLayoutGuide];

  v10 = [v9 leadingAnchor];
  v11 = sub_100013804();

  *(v5 + 32) = v11;
  v12 = [v2 topAnchor];
  v13 = sub_1000044A4();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 safeAreaLayoutGuide];

  v16 = [v15 topAnchor];
  v17 = sub_100013804();

  *(v5 + 40) = v17;
  v18 = [v2 trailingAnchor];
  v19 = sub_1000044A4();
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  v22 = [v21 trailingAnchor];
  v23 = sub_100013804();

  *(v5 + 48) = v23;
  v24 = [v2 bottomAnchor];
  v25 = sub_1000044A4();
  if (v25)
  {
    v26 = v25;
    v27 = objc_opt_self();
    v28 = [v26 safeAreaLayoutGuide];

    v29 = [v28 bottomAnchor];
    v30 = [v1 constraintEqualToAnchor:v29];

    *(v5 + 56) = v30;
    sub_100002FC4(0, &qword_1001002C8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 activateConstraints:isa];

    v32 = [objc_opt_self() defaultCenter];
    [v32 addObserver:v0 selector:"keyboardWillChange:" name:WFKeyboardWillChangeNotification object:0];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100013784()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000137E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_10002E87C(a3, a4);
}

id sub_100013804()
{
  v4 = *(v2 + 1720);

  return [v0 v4];
}

uint64_t sub_100013820(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a3 & 1;

  return Text.init(_:tableName:bundle:comment:)(a1, a2, v5, a4, 0, 0, 0, 0, 0);
}

uint64_t sub_100013848(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_10000966C(a1, a2, a3);
}

void sub_1000138C8(char a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = a1;
  if (a2)
  {
    v6 = objc_opt_self();
    v9[4] = sub_100048DC4;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100003190;
    v9[3] = &unk_1000F1C20;
    v7 = _Block_copy(v9);
    v8 = v2;

    [v6 animateWithDuration:v7 animations:UINavigationControllerHideShowBarDuration];

    _Block_release(v7);
  }

  else
  {
    sub_100013A64(v2, a1 & 1);
  }
}

uint64_t sub_100013A2C()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100013A64(void *a1, char a2)
{
  v4 = [a1 view];
  if (!v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = 1.0;
  if (a2)
  {
    v6 = 0.0;
  }

  [v4 setAlpha:v6];

  v7 = [a1 view];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  [v7 setHidden:a2 & 1];
}

uint64_t sub_100013B1C()
{
  v2 = v0;
  v3 = sub_10002E87C(&unk_100101EB0, &unk_1000C5330);
  sub_100002EE0(v3);
  sub_100005B90();
  __chkstk_darwin(v4);
  sub_1000043E0();
  v118 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v117 = v5;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = v8 - v7;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_10001489C(v10, v11);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  [v2 isEditing];
  sub_100014970();
  v14 = v13;
  v16 = v15;
  v121 = v17;
  v18 = [v2 splitViewController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 displayMode];

    v21 = (v20 & 0xFFFFFFFFFFFFFFFDLL) != 1;
  }

  else
  {
    v21 = 1;
  }

  v22 = [v2 traitCollection];
  v23 = [v22 horizontalSizeClass];

  if (v23 != 1 && (([v2 isEditing] | v21) & 1) == 0)
  {
    aBlock = 0u;
    v120 = 0u;
    v24 = objc_allocWithZone(UIBarButtonItem);
    sub_100012B90();
    v26 = v25;
    sub_1000118A4();
    result = sub_10000D564(v24);
    if (result < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v28 = sub_10000D55C(v24);
    v29 = __OFADD__(v28, 1);
    result = v28 + 1;
    if (v29)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_100069BB8(result, 1);
    v30 = sub_10001C7AC();
    sub_100069C58(v30, v31, v32, v26);
  }

  v33 = [v2 traitCollection];
  v34 = [v33 horizontalSizeClass];

  if (v34 == 1)
  {
    goto LABEL_15;
  }

  v35 = sub_10006BD44();
  [v35 setStyle:2];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v36 = [objc_allocWithZone(UIView) init];
    v37 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v36];

    sub_1000118A4();
    result = sub_10000D564(v36);
    if ((result & 0x8000000000000000) == 0)
    {
      v38 = sub_10000D55C(v36);
      v29 = __OFADD__(v38, 1);
      result = v38 + 1;
      if (!v29)
      {
        sub_100069BB8(result, 1);
        v39 = sub_10001C7AC();
        sub_100069C58(v39, v40, v41, v37);
        goto LABEL_14;
      }

LABEL_58:
      __break(1u);
      return result;
    }

    goto LABEL_56;
  }

LABEL_14:
  sub_1000673C8(v14);
LABEL_15:
  if (v16)
  {
    v42 = sub_10006BD44();
    sub_100003A00();
    v43 = swift_allocObject();
    *(v43 + 16) = v16;
    sub_100005C00(v43);
    *(&aBlock + 1) = 1107296256;
    *&v120 = sub_1000676C8;
    *(&v120 + 1) = &unk_1000F2650;
    v44 = _Block_copy(&aBlock);

    [v42 setTitleMenuProvider:v44];
    _Block_release(v44);

    v45 = sub_10006BD44();
    [v45 setLargeTitleDisplayMode:2];
  }

  else
  {
    v45 = sub_10006BD44();
    [v45 setTitleMenuProvider:0];
  }

  v46 = sub_10006BD44();
  sub_100002FC4(0, &qword_1001002C0, UIBarButtonItem_ptr);
  v47.super.isa = Array._bridgeToObjectiveC()().super.isa;
  v48 = sub_10006BD44();
  v49 = sub_10006B4E0(v48, &selRef_leftBarButtonItems);
  if (v49)
  {
    v50 = sub_10000D55C(v49);

    v51 = v50 > 0;
  }

  else
  {
    v51 = 0;
  }

  [v46 setLeftBarButtonItems:v47.super.isa animated:v51];

  v52 = sub_10006BD44();
  v53.super.isa = Array._bridgeToObjectiveC()().super.isa;

  v54 = sub_10006BD44();
  v55 = sub_10006B4E0(v54, &selRef_rightBarButtonItems);
  if (v55)
  {
    v56 = sub_10000D55C(v55);

    v57 = v56 > 0;
  }

  else
  {
    v57 = 0;
  }

  [v52 setRightBarButtonItems:v53.super.isa animated:v57];

  v58 = sub_10006BD44();
  if ([v2 isEditing])
  {
    v59 = 0;
  }

  else
  {
    v60 = [v2 traitCollection];
    v61 = [v60 horizontalSizeClass];

    v59 = v61 != 1;
  }

  [v58 setLeftItemsSupplementBackButton:v59];

  v62 = sub_10006BD44();
  [v62 setBackButtonDisplayMode:2];

  v63 = *&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController];
  if (v63)
  {
    v64 = v63;
    sub_100016A64();
  }

  v65 = objc_opt_self();
  [v65 defaultFontSize];
  v67 = v66;
  if ([v2 isEditing] && (sub_1000297CC(), v69 = sub_10000D55C(v68), , v69 >= 1))
  {
    v70 = sub_10006BD44();
    sub_10002E87C(&qword_1001000D0, &qword_1000C12C8);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1000C0C20;
    sub_1000297CC();
    v73 = sub_10000D55C(v72);

    *(v71 + 56) = &type metadata for Int;
    *(v71 + 64) = &protocol witness table for Int;
    *(v71 + 32) = v73;
    v74 = static String.localizedStringWithFormat(_:_:)();
    v76 = v75;

    sub_100006018(v74, v76, v70, &selRef_setTitle_);

    v77 = [v65 monospacedDigitSystemFontOfSize:v67 weight:UIFontWeightSemibold];
  }

  else
  {

    v78 = sub_10006BD44();
    if ([v2 isEditing])
    {
      v79 = String._bridgeToObjectiveC()();
      v80 = String._bridgeToObjectiveC()();
      v81 = sub_100005D9C(v79);

      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;
    }

    else
    {
      v85 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
      sub_100005BC0();
      swift_beginAccess();
      (*(v117 + 16))(v9, &v2[v85], v118);
      v82 = LibraryConfiguration.title.getter();
      v84 = v86;
      (*(v117 + 8))(v9, v118);
    }

    sub_100006018(v82, v84, v78, &selRef_setTitle_);

    v77 = [v65 boldSystemFontOfSize:v67];
  }

  v87 = v77;
  v88 = [v2 navigationController];
  if (v88)
  {
    v89 = v88;
    v90 = [v88 navigationBar];

    sub_10002E87C(&qword_1000FFA00, &qword_1000C0CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C0C20;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100002FC4(0, &qword_1000FFA08, UIFont_ptr);
    *(inited + 40) = v87;
    type metadata accessor for Key(0);
    sub_100015B40(&qword_1000FFA10, type metadata accessor for Key, &unk_1000C0BBC);
    v92 = NSFontAttributeName;
    v93 = v87;
    v94 = Dictionary.init(dictionaryLiteral:)();
    sub_100016E3C(v94, v90);
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_44;
  }

  v95 = [v2 traitCollection];
  v96 = [v95 horizontalSizeClass];

  if (v96 == 1)
  {
    v97 = sub_10006BD44();
    v98 = [v97 titleMenuProvider];

    if (!v98)
    {
      v99 = *&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton];
      if (!v99)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

    _Block_release(v98);
  }

  v99 = *&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton];
  if (v99)
  {
LABEL_43:
    v100 = v99;
    WFConvertEdgeInsetsToRTLIfNeeded();
    [v100 setContentEdgeInsets:?];
  }

LABEL_44:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v101 = v1;
    dispatch thunk of LibraryDelegate.runningWorkflow.getter();
    swift_unknownObjectRelease();
    v102 = type metadata accessor for RunningWorkflow();
    v103 = sub_10000AB80(v1, 1, v102) != 1;
  }

  else
  {
    v104 = type metadata accessor for RunningWorkflow();
    v101 = v1;
    sub_1000042A8(v1, 1, 1, v104);
    v103 = 0;
  }

  sub_1000171D4(v101, &unk_100101EB0, &unk_1000C5330);
  sub_10002E87C(&qword_100100C28, &qword_1000C4038);
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_1000C0D80;
  v106 = *&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton];
  *(v105 + 32) = v106;
  v107 = *&v2[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customPlusButton];
  *(v105 + 40) = v107;
  v108 = v106;
  v109 = v107;
  for (i = 32; i != 48; i += 8)
  {
    v111 = *(v105 + i);
    if (v111)
    {
      v112 = v111;
      [v112 setUserInteractionEnabled:!v103];
      v113 = objc_opt_self();
      v114 = swift_allocObject();
      *(v114 + 16) = v112;
      *(v114 + 24) = v103;
      sub_100005C00(v114);
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_100003190;
      *(&v120 + 1) = &unk_1000F2600;
      v115 = _Block_copy(&aBlock);
      v116 = v112;

      [v113 animateWithDuration:v115 animations:0.15];
      _Block_release(v115);
    }
  }

  swift_setDeallocating();
  sub_1000172CC(&qword_100100C40, &qword_1000C4040);
}

uint64_t sub_100014830()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100014868()
{

  sub_100003A00();

  return _swift_deallocObject(v0, v1, v2);
}

id sub_10001489C(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [NSString stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = sub_100005E9C();
    v6 = [v5 localizedStringForKey:v4 value:v2 table:0];
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

void sub_100014970()
{
  sub_1000043AC();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_1000043E0();
  if (v4)
  {
    sub_100067CB4(v2);
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = [v11 horizontalSizeClass];

    v5 = v10;
    if (v12 == 1)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100003A2C();
      if (v14)
      {
        v55 = sub_100005E38(v13);
        sub_100006B90(v55);
      }

      sub_100005CF0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_16;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100003A2C();
    if (v14)
    {
      v56 = sub_100005E38(v20);
      sub_100006B90(v56);
    }

    sub_100005CF0();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if (_UISolariumEnabled())
    {
      goto LABEL_16;
    }

    v21 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 1.0, 0.0}];
    [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v21];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100005234();
    if (!v14)
    {
LABEL_15:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_16:
      type metadata accessor for LibraryViewController(0);
      objc_allocWithZone(UIBarButtonItem);
      v23 = v2;
      sub_100012B90();
      sub_100006018(0xD000000000000013, 0x80000001000C8870, v24, &selRef_setAccessibilityIdentifier_);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100005234();
      if (v14)
      {
        v52 = sub_100005E38(v25);
        sub_100008354(v52);
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      goto LABEL_49;
    }

LABEL_52:
    v57 = sub_100005E38(v22);
    sub_100008354(v57);
    goto LABEL_15;
  }

  sub_100014F10();
  if (v15)
  {
    v16 = v15;
    v17 = [v2 traitCollection];
    v18 = [v17 horizontalSizeClass];

    if (v18 != 1)
    {
      sub_10006B47C(0, _swiftEmptyArrayStorage);
      if (sub_10000D564(_swiftEmptyArrayStorage) < 0)
      {
        __break(1u);
      }

      else
      {
        v26 = sub_10000D55C(_swiftEmptyArrayStorage);
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (!v27)
        {
          sub_100069BB8(v28, 1);
          v29 = sub_10001C7AC();
          sub_100069C58(v29, v30, v31, v16);
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_52;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v19 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= v19 >> 1)
    {
      sub_100005E38(v19);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_23:
  v32 = [v2 traitCollection];
  v33 = [v32 horizontalSizeClass];

  if (v33 != 2 || (sub_100019CFC(), (v34 & 1) == 0) || (sub_10009B8A4(), !v35))
  {
LABEL_29:
    sub_100015640();
    if (v42)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100005234();
      if (v14)
      {
        v54 = sub_100005E38(v43);
        sub_100008354(v54);
      }

      sub_100011DAC();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v44 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
    sub_100005BC0();
    swift_beginAccess();
    (*(v7 + 16))(v1, &v2[v44], v5);
    v45 = LibraryConfiguration.layoutOverride.getter();
    v46 = sub_100005CF0();
    v47(v46);
    if (sub_10001583C(v2))
    {
      if (v45 == 2)
      {
        sub_10009B6A8();
        goto LABEL_45;
      }
    }

    else if (v45 == 2)
    {
      sub_10009B468();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100003A2C();
      if (v14)
      {
        v58 = sub_100005E38(v48);
        sub_100006B90(v58);
      }

      sub_100005CF0();
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (!sub_100012F18())
    {
LABEL_48:
      sub_100016444();
LABEL_49:
      sub_100002EEC();
      return;
    }

    if (_UISolariumEnabled())
    {
      v49 = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      sub_100005234();
      if (v14)
      {
        v59 = sub_100005E38(v50);
        sub_100008354(v59);
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

LABEL_45:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100003A2C();
    if (v14)
    {
      v53 = sub_100005E38(v51);
      sub_100006B90(v53);
    }

    sub_100005CF0();
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    goto LABEL_48;
  }

  v36 = v35;
  sub_10006B47C(0, _swiftEmptyArrayStorage);
  if (sub_10000D564(_swiftEmptyArrayStorage) < 0)
  {
    __break(1u);
  }

  else
  {
    v37 = sub_10000D55C(_swiftEmptyArrayStorage);
    v27 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v27)
    {
      sub_100069BB8(v38, 1);
      v39 = sub_10001C7AC();
      sub_100069C58(v39, v40, v41, v36);
      goto LABEL_29;
    }
  }

  __break(1u);
}

id sub_100014F58(char *a1)
{
  v2 = type metadata accessor for LibraryWorkflowCreationBehavior();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v45 - v7;
  v9 = type metadata accessor for LibraryConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v53 = a1;
  v47 = v14;
  v48 = v13;
  v14(v12, &a1[v13], v9);
  LibraryConfiguration.workflowCreationBehavior.getter();
  v15 = *(v10 + 8);
  v49 = v10 + 8;
  v50 = v9;
  v46 = v15;
  v15(v12, v9);
  v45 = *(v3 + 104);
  v45(v6, enum case for LibraryWorkflowCreationBehavior.none(_:), v2);
  sub_100009E14(&unk_100103240, &type metadata accessor for LibraryWorkflowCreationBehavior);
  LOBYTE(v13) = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v3 + 8);
  v51 = v6;
  v17 = v6;
  v18 = v8;
  v16(v17, v2);
  v52 = v3 + 8;
  v16(v8, v2);
  v19 = 0;
  if (v13)
  {
    return v19;
  }

  v20 = v53;
  v21 = v50;
  v47(v12, &v53[v48], v50);
  LibraryConfiguration.workflowCreationBehavior.getter();
  v46(v12, v21);
  v22 = v51;
  v45(v51, enum case for LibraryWorkflowCreationBehavior.inRoot(_:), v2);
  v23 = static LibraryWorkflowCreationBehavior.== infix(_:_:)();
  v16(v22, v2);
  v16(v18, v2);
  if (v23)
  {
    sub_100002FC4(0, &unk_100102630, UIDeferredMenuElement_ptr);
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = sub_10001558C(sub_1000A1468, v24);
    sub_100002FC4(0, &unk_100101F20, UIMenu_ptr);
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = sub_100005D9C(v26);

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    sub_10002E87C(&qword_1001000E0, &qword_1000C12D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000C0DB0;
    *(v32 + 32) = v25;
    v43 = v32;
    v33._countAndFlagsBits = v29;
    v33._object = v31;
    v56.value.super.isa = 0;
    v56.is_nil = 0;
    v34.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v33, 0, v56, 0, 0xFFFFFFFFFFFFFFFFLL, v43, v44).super.super.isa;
  }

  else
  {
    v34.super.super.isa = 0;
  }

  if (_UISolariumEnabled())
  {
    sub_100002FC4(0, &qword_100100110, UIImage_ptr);
    sub_100012A98(1937075312, 0xE400000000000000);
    v55 = type metadata accessor for LibraryViewController(0);
    v54 = v20;
    objc_allocWithZone(UIBarButtonItem);
    v35 = v20;
    sub_1000A4D94();
    v19 = v36;
    [v36 setMenu:v34.super.super.isa];
LABEL_9:

    return v19;
  }

  result = [v20 view];
  if (result)
  {
    v38 = result;
    [result effectiveUserInterfaceLayoutDirection];

    v39 = [objc_opt_self() buttonWithType:1];
    v40 = String._bridgeToObjectiveC()();
    [v39 setSymbolName:v40 pointSizeToWidthRatio:1.7];

    [v39 addTarget:v20 action:"createWorkflow:" forControlEvents:64];
    v41 = v39;
    [v41 setMenu:v34.super.super.isa];
    v42 = *&v20[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customPlusButton];
    *&v20[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customPlusButton] = v41;

    v19 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v41];
    v34.super.super.isa = v41;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

id sub_10001558C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10009B358;
  v5[3] = &unk_1000F3968;
  v2 = _Block_copy(v5);
  v3 = [swift_getObjCClassFromMetadata() elementWithProvider:v2];
  _Block_release(v2);

  return v3;
}

void sub_100015640()
{
  sub_1000079FC();
  v2 = v0;
  v3 = type metadata accessor for LibraryEditingBehavior();
  sub_100004458();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000039BC();
  v7 = sub_1000095F4();
  sub_100004458();
  __chkstk_darwin(v8);
  sub_1000039BC();
  sub_100007B08();
  v9 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  sub_100004780();
  v10(v0, &v0[v9], v7);
  LibraryConfiguration.editingBehavior.getter();
  v11 = sub_100005754();
  v12(v11);
  v13 = (*(v5 + 88))(v1, v3);
  LODWORD(v7) = enum case for LibraryEditingBehavior.autoShortcut(_:);
  (*(v5 + 8))(v1, v3);
  if (v13 == v7)
  {
    sub_100002FC4(0, &qword_100100110, UIImage_ptr);
    sub_100007B58(1868983913, 0xE400000000000000);
    v14 = sub_100003A0C();
    type metadata accessor for LibraryViewController(v14);
    objc_allocWithZone(UIBarButtonItem);
    v15 = v2;
    sub_1000A4D94();
  }

  sub_1000046DC();
}

BOOL sub_10001583C(char *a1)
{
  v2 = type metadata accessor for LibraryConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [a1 navigationController];
  result = 0;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    Width = CGRectGetWidth(v28);
    v18 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightSemibold];
    v19 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
    swift_beginAccess();
    (*(v3 + 16))(v5, &a1[v19], v2);
    LibraryConfiguration.title.getter();
    (*(v3 + 8))(v5, v2);
    v20 = String._bridgeToObjectiveC()();

    sub_10002E87C(&qword_1000FFA00, &qword_1000C0CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C0C20;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100002FC4(0, &qword_1000FFA08, UIFont_ptr);
    *(inited + 40) = v18;
    type metadata accessor for Key(0);
    sub_100015B40(&qword_1000FFA10, type metadata accessor for Key, &unk_1000C0BBC);
    v22 = NSFontAttributeName;
    v23 = v18;
    v24 = Dictionary.init(dictionaryLiteral:)();
    v25 = sub_100015CFC(v24, v20);

    if (Width - v25 < 240.0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100015B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100015BD0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1000095CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int sub_100015C5C(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

__n128 _s14descr1000EF9A1C13LayoutMetricsV17TopHitsItemLayoutVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

double sub_100015CFC(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_100015B40(&qword_1000FFA10, type metadata accessor for Key, &unk_1000C0BBC);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 sizeWithAttributes:isa];
  v5 = v4;

  return v5;
}

void sub_100015DC0()
{
  sub_1000043AC();
  v2 = type metadata accessor for LibraryEditingOption();
  sub_100004458();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000039BC();
  sub_10000A7F8();
  type metadata accessor for LibraryEditingBehavior();
  sub_100004458();
  __chkstk_darwin(v6);
  sub_1000039BC();
  v9 = (v8 - v7);
  v10 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_1000039BC();
  sub_100007B08();
  v14 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  (*(v12 + 16))(v0, &v0[v14], v10);
  LibraryConfiguration.editingBehavior.getter();
  (*(v12 + 8))(v0, v10);
  v15 = sub_100004330();
  v17 = v16(v15);
  if (v17 == enum case for LibraryEditingBehavior.option(_:))
  {
    sub_1000160E8(v0, v18, v19, v20);
    v21 = sub_100004330();
    v22(v21);
LABEL_12:
    sub_100002EEC();
    return;
  }

  if (v17 != enum case for LibraryEditingBehavior.options(_:))
  {
    v34 = sub_100004330();
    v35(v34);
    goto LABEL_12;
  }

  v41 = v0;
  v23 = sub_100004330();
  v24(v23);
  v25 = 0;
  v26 = *v9;
  v27 = *(*v9 + 16);
  v28 = enum case for LibraryEditingOption.selection(_:);
  while (1)
  {
    if (v27 == v25)
    {

      goto LABEL_12;
    }

    if (v25 >= *(v26 + 16))
    {
      break;
    }

    sub_100003A3C();
    (*(v4 + 16))(v1, v26 + v29 + *(v4 + 72) * v25, v2);
    v30 = sub_10000633C();
    if (v31(v30) == v28)
    {

      v36 = sub_10000633C();
      v37(v36);
      sub_1000160E8(v41, v38, v39, v40);
      goto LABEL_12;
    }

    ++v25;
    v32 = sub_10000633C();
    v33(v32);
  }

  __break(1u);
}

void sub_1000160E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_UISolariumEnabled())
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = sub_100005D9C(v5);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    type metadata accessor for LibraryViewController(0);
    objc_allocWithZone(UIBarButtonItem);
    v8 = a1;
    sub_100012930();
  }

  else
  {
    v9 = [objc_opt_self() buttonWithType:1];
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = sub_100005D9C(v10);

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    sub_1000A1338(v13, v15, 0, v9);
    v16 = [v9 titleLabel];
    if (v16)
    {
      v17 = v16;
      [v16 setAdjustsFontForContentSizeCategory:1];
    }

    v18 = [v9 titleLabel];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v19 setFont:v20];
    }

    [v9 addTarget:a1 action:"startEditing" forControlEvents:64];
    v21 = v9;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v21 heightAnchor];
    v23 = [v22 constraintGreaterThanOrEqualToConstant:30.0];

    [v23 setActive:1];
    v24 = *&a1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton];
    *&a1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_customEditButton] = v21;
    v25 = v21;

    [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v25];
  }
}

void sub_1000163E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityLabel:v4];
}

void sub_100016444()
{
  sub_1000043AC();
  v77 = type metadata accessor for LibraryEditingOption();
  sub_100004458();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100003EF4();
  v78 = v4 - v5;
  sub_10000667C();
  v7 = __chkstk_darwin(v6);
  v9 = &v66 - v8;
  __chkstk_darwin(v7);
  v76 = &v66 - v10;
  sub_10000667C();
  __chkstk_darwin(v11);
  sub_100005184();
  v69 = v12;
  sub_1000042F8();
  v13 = type metadata accessor for LibraryEditingBehavior();
  sub_100004458();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000039BC();
  v19 = (v18 - v17);
  v20 = type metadata accessor for LibraryConfiguration();
  sub_100004458();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_1000039BC();
  v26 = v25 - v24;
  v27 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_configuration;
  sub_100005BC0();
  swift_beginAccess();
  v28 = v0 + v27;
  v29 = v0;
  (*(v22 + 16))(v26, v28, v20);
  LibraryConfiguration.editingBehavior.getter();
  (*(v22 + 8))(v26, v20);
  if ((*(v15 + 88))(v19, v13) == enum case for LibraryEditingBehavior.options(_:))
  {
    v67 = v9;
    (*(v15 + 96))(v19, v13);
    v30 = 0;
    v31 = *v19;
    v75 = *(*v19 + 16);
    v72 = v2 + 88;
    LODWORD(v71) = enum case for LibraryEditingOption.selection(_:);
    v74 = (v2 + 8);
    v68 = (v2 + 32);
    v70 = _swiftEmptyArrayStorage;
    v32 = v69;
    v73 = v29;
    v79 = v2 + 16;
    while (v75 != v30)
    {
      if (v30 >= *(v31 + 16))
      {
        __break(1u);
        return;
      }

      v33 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v34 = *(v2 + 72);
      v35 = v31 + v33 + v34 * v30;
      v36 = v30;
      v37 = *(v2 + 16);
      v38 = v77;
      v37(v32, v35, v77);
      v39 = sub_10000633C();
      (v37)(v39);
      v40 = sub_1000051AC();
      v42 = v41(v40);
      v43 = *(v2 + 8);
      if (v42 == v71)
      {
        v43(v32, v38);
        v44 = sub_1000051AC();
        (v43)(v44);
        v30 = v36 + 1;
      }

      else
      {
        v69 = v36;
        v45 = sub_1000051AC();
        (v43)(v45);
        v46 = v67;
        v47 = *v68;
        (*v68)(v67, v32, v38);
        v48 = v70;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v48;
        v80 = v48;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100062CD8(0, v48[2] + 1, 1);
          v50 = v80;
        }

        v51 = v69;
        v53 = v50[2];
        v52 = v50[3];
        if (v53 >= v52 >> 1)
        {
          v54 = sub_100005E38(v52);
          sub_100062CD8(v54, v53 + 1, 1);
          v51 = v69;
          v50 = v80;
        }

        v30 = v51 + 1;
        v50[2] = v53 + 1;
        v70 = v50;
        v47(v50 + v33 + v53 * v34, v46, v77);
      }
    }

    v55 = v70[2];
    if (v55)
    {
      v80 = _swiftEmptyArrayStorage;
      v56 = v70;
      specialized ContiguousArray.reserveCapacity(_:)();
      v76 = sub_100002FC4(0, &qword_100100C60, UIAction_ptr);
      v75 = sub_100002FC4(0, &qword_100100110, UIImage_ptr);
      sub_100003A3C();
      v58 = v56 + v57;
      v59 = *(v2 + 72);
      v71 = *(v2 + 16);
      v72 = v59;
      v60 = v77;
      v61 = v74;
      do
      {
        v62 = sub_1000051AC();
        v71(v62);
        LibraryEditingOption.title.getter();
        v63 = LibraryEditingOption.symbolName.getter();
        sub_100012A98(v63, v64);
        sub_1000A00B4();
        sub_10009FC04();
        v65 = v78;
        sub_100005BC0();
        sub_10001C8E0();
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        (*v61)(v65, v60);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v58 += v72;
        --v55;
      }

      while (v55);
    }
  }

  else
  {
    (*(v15 + 8))(v19, v13);
  }

  sub_100002EEC();
}

void sub_100016A64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_10000C560();
  if (v2)
  {
    v12 = v2;
  }

  else
  {
    v4 = [v1 traitCollection];
    v12 = [v1 navigationItem];
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5 || (v6 = v5, v7 = *(v5 + OBJC_IVAR____TtC9Shortcuts21SearchStateController_pendingTraitCollection), v8 = v7, v6, !v7) || (v9 = [v8 horizontalSizeClass], v10 = objc_msgSend(v4, "horizontalSizeClass"), v8, v9 == v10))
    {
      [v12 setPreferredSearchBarPlacement:0];
      v11 = sub_100016BDC();
      [v12 setSearchController:v11];

      v3 = v11;
      goto LABEL_10;
    }
  }

  v3 = v12;
LABEL_10:
}

id sub_100016BDC()
{
  v1 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  [v1 setSearchResultsUpdater:v0];
  [v1 setObscuresBackgroundDuringPresentation:0];
  [v1 setHidesNavigationBarDuringPresentation:*(v0 + OBJC_IVAR____TtC9Shortcuts16SearchController_hidesNavigationBarDuringPresentation)];
  v2 = sub_100004510();
  [v2 setClipsToBounds:1];

  v3 = sub_100004510();
  [v3 setDelegate:v0];

  v4 = sub_100004510();
  v5 = String._bridgeToObjectiveC()();
  [v4 setPlaceholder:v5];

  v6 = sub_100004510();
  [v6 setLookToDictateEnabled:1];

  v7 = sub_100004510();
  v8 = sub_100016D40();
  sub_100016DD8(v8, v9, v7);

  return v1;
}

uint64_t sub_100016D40()
{
  if (!*(v0 + OBJC_IVAR____TtC9Shortcuts16SearchController_destinationIdentifier + 8))
  {
    return 0x625F686372616573;
  }

  v3 = *(v0 + OBJC_IVAR____TtC9Shortcuts16SearchController_destinationIdentifier);
  swift_bridgeObjectRetain_n();
  v1._countAndFlagsBits = 0x5F6863726165735FLL;
  v1._object = 0xEB00000000726162;
  String.append(_:)(v1);

  return v3;
}

void sub_100016DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityIdentifier:v4];
}

void sub_100016E3C(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_100015B40(&qword_1000FFA10, type metadata accessor for Key, &unk_1000C0BBC);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 setTitleTextAttributes:isa];
}

uint64_t sub_100016F00()
{
  type metadata accessor for RunningWorkflow.WorkflowType();
  sub_100004458();
  __chkstk_darwin(v2);
  sub_1000039BC();
  sub_100019C2C();
  v3 = *&v0[OBJC_IVAR___WFMainViewController_runCoordinator];
  v4 = [v3 runningAppShortcut];
  if (v4)
  {
    v5 = v4;
    *v1 = v4;
    v6 = sub_100003E90();
    v7(v6);
    v8 = v5;
    [v3 progress];
    [v3 waiting];
    v9 = [v3 runViewSource];
    sub_100003A00();
    *(swift_allocObject() + 16) = v0;
    v10 = v0;
    sub_1000079D0(v11);
LABEL_5:

    type metadata accessor for RunningWorkflow();
    sub_1000060AC();
    return sub_1000042A8(v19, v20, v21, v22);
  }

  v12 = [v3 runningWorkflow];
  if (v12)
  {
    v13 = v12;
    *v1 = v12;
    v14 = sub_100003E90();
    v15(v14);
    v8 = v13;
    [v3 progress];
    [v3 waiting];
    v16 = [v3 runViewSource];
    sub_100003A00();
    *(swift_allocObject() + 16) = v0;
    v17 = v0;
    sub_1000079D0(v18);

    goto LABEL_5;
  }

  type metadata accessor for RunningWorkflow();
  sub_100004730();

  return sub_1000042A8(v24, v25, v26, v27);
}

uint64_t sub_100017198()
{
  sub_100003A00();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000171D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002E87C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_100017234(void *a1, char a2)
{
  v4 = objc_opt_self();
  v5 = &selRef_tertiaryLabelColor;
  if ((a2 & 1) == 0)
  {
    v5 = &selRef_systemBlueColor;
  }

  v6 = [v4 *v5];
  [a1 setTintColor:v6];
}

uint64_t sub_1000172CC(uint64_t *a1, uint64_t *a2)
{
  sub_10002E87C(a1, a2);
  swift_arrayDestroy();
  v2 = sub_100005BF0();

  return _swift_deallocClassInstance(v2);
}

uint64_t sub_100017364(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 112) = result;
  *(v4 - 104) = a2;
  *(v4 - 96) = a3;
  *(v4 - 88) = a4;
  return result;
}

uint64_t sub_100017438(uint64_t a1)
{
}

void sub_100017450()
{
}

id sub_100017470()
{
  v8.receiver = v0;
  v8.super_class = sub_10000CC00();
  return sub_10000F464(v8.super_class, "viewWillAppear:", v1, v2, v3, v4, v5, v6, v8);
}

id sub_1000174F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryViewController(0);
  result = objc_msgSendSuper2(&v2, "viewLayoutMarginsDidChange");
  if (*(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_viewIsVisible) == 1)
  {
    return sub_100017AA4();
  }

  return result;
}

uint64_t sub_100017574()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (dispatch thunk of LibraryDelegate.isPresentingViewController.getter())
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v1 = [v0 presentedViewController];
    swift_unknownObjectRelease();
    if (v1)
    {

      return 0;
    }
  }

  return 1;
}

BOOL sub_100017610()
{
  v1 = [v0 presentedViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void sub_1000176DC()
{
  sub_1000079FC();
  v2 = sub_100011918();
  v4 = sub_10002E87C(v2, v3);
  sub_100002EE0(v4);
  sub_100005B90();
  __chkstk_darwin(v5);
  sub_10001C6D0();
  type metadata accessor for RootNavigationContext();
  sub_100041EBC();
  sub_100004730();
  sub_1000042A8(v6, v7, v8, v9);
  sub_100007078();
  sub_10000B314();
  sub_1000069B0(v1, &qword_100100020, &qword_1000C12A0);
  v10 = OBJC_IVAR___WFMainViewController_navigationCompletions;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *(v11 + 16);
  if (v12)
  {

    v13 = v11 + 40;
    do
    {
      v14 = *(v13 - 8);

      v14(v15);

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  *(v0 + v10) = _swiftEmptyArrayStorage;

  sub_1000046DC();
}

void *sub_100017814()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController);
  v2 = v1;
  return v1;
}

id sub_10001786C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100017990()
{
  sub_1000042A8(v1, 0, 1, v0);
  *(v2 - 96) = 0;

  return type metadata accessor for IntentDialog();
}

uint64_t sub_1000179DC()
{

  return static Published.subscript.setter();
}

uint64_t sub_100017A58()
{
  v8.receiver = v0;
  v8.super_class = sub_10000CC00();
  sub_10000F464(v8.super_class, "viewIsAppearing:", v1, v2, v3, v4, v5, v6, v8);
  *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_viewIsVisible) = 1;
  return sub_100017AA4();
}

uint64_t sub_100017AA4()
{
  sub_100017B98(&v7);
  v1 = v7;

  v2 = sub_1000182F8(&v7);
  v1(v2);

  v4 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_hasLoadedInitialData;
  if ((*(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_hasLoadedInitialData) & 1) == 0)
  {
    type metadata accessor for LibraryViewController(0);
    sub_10000453C();
    sub_100009E14(v5, v6);
    LibraryView.reload(animated:)(1);
    *(sub_10000E8F4() + qword_100102DA8) = 0;

    dispatch thunk of LibraryDataSource.observeChanges.setter();

    *(v0 + v4) = 1;
  }

  return result;
}

__n128 sub_100017B98@<Q0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics), sizeof(__dst));
  v4 = *__dst;
  if (*__dst)
  {
    v6 = *&__dst[72];
    v5 = *&__dst[80];
    v7 = *&__dst[64];
    v12 = *&__dst[32];
    v13 = *&__dst[48];
    v8 = *&__dst[24];
    v9 = *&__dst[8];
  }

  else
  {
    sub_100017CD8(*(v1 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_flowLayout), __src);
    memcpy(v15, (v1 + v3), sizeof(v15));
    memcpy((v1 + v3), __src, 0x58uLL);
    sub_100018270(__src, v14);
    sub_1000069B0(v15, &qword_1000FF9B8, &unk_1000C0C80);
    v6 = *&__src[72];
    v5 = *&__src[80];
    v7 = *&__src[64];
    v12 = *&__src[32];
    v13 = *&__src[48];
    v8 = *&__src[24];
    v4 = *__src;
    v9 = *&__src[8];
  }

  v11 = v9;
  sub_1000102AC(__dst, v15, &qword_1000FF9B8, &unk_1000C0C80);
  *a1 = v4;
  *(a1 + 8) = v11;
  *(a1 + 24) = v8;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = v13;
  *(a1 + 64) = v7;
  *(a1 + 72) = v6;
  *(a1 + 80) = v5;
  return result;
}

id sub_100017CD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = swift_allocObject();
  v4 = swift_unknownObjectWeakInit();
  v8 = sub_100017DE4(v4, v5, v6, v7);
  type metadata accessor for CGSize(0);
  sub_1000181C4();
  v9 = Dictionary.init(dictionaryLiteral:)();
  *a2 = sub_10001837C;
  *(a2 + 8) = v3;
  *(a2 + 16) = v8;
  *(a2 + 24) = a1;
  *(a2 + 32) = 0;
  v10 = *&UIEdgeInsetsZero.top;
  *(a2 + 56) = *&UIEdgeInsetsZero.bottom;
  *(a2 + 40) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = v9;

  return a1;
}

uint64_t sub_100017DAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100017DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!_UISolariumEnabled() || (v5 = [v4 traitCollection], v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 != 2))
  {
    v27 = [v4 traitCollection];
    result = [v4 view];
    if (result)
    {
      v46 = result;
      [result frame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v69.origin.x = v48;
      v69.origin.y = v50;
      v69.size.width = v52;
      v69.size.height = v54;
      Width = CGRectGetWidth(v69);
      result = [v4 view];
      if (result)
      {
        v56 = result;
        [result layoutMargins];
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v45 = [objc_opt_self() metricsCompatibleWithTraitCollection:v27 viewWidth:1 layoutMargins:Width needsTopPadding:{v58, v60, v62, v64}];
        goto LABEL_16;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  result = [v4 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = result;
  [result layoutMargins];
  v10 = v9;

  result = [v4 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = result;
  [result layoutMargins];
  v13 = v12;

  result = [v4 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = result;
  [result safeAreaInsets];
  v16 = v15;

  result = [v4 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = result;
  [result layoutMargins];
  v19 = v18;

  result = [v4 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = result;
  [result layoutMargins];
  v22 = v21;

  result = [v4 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = result;
  v66 = v10;
  v67 = v19;
  v24 = v13;
  [result safeAreaInsets];
  v26 = v25;

  v27 = [v4 traitCollection];
  result = [v4 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = result;
  [result frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v68.origin.x = v30;
  v68.origin.y = v32;
  v68.size.width = v34;
  v68.size.height = v36;
  v37 = CGRectGetWidth(v68);
  result = [v4 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v38 = result;
  [result safeAreaInsets];
  v40 = v39;

  result = [v4 view];
  if (result)
  {
    v41 = result;
    v42 = v24 - v16;
    [result safeAreaInsets];
    v44 = v43;

    v45 = [objc_opt_self() metricsCompatibleWithTraitCollection:v27 viewWidth:1 layoutMargins:v37 - v40 - v44 needsTopPadding:{v66, v42, v67, v22 - v26}];
LABEL_16:
    v65 = v45;

    return v65;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1000181C4()
{
  result = qword_1000FF9B0;
  if (!qword_1000FF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF9B0);
  }

  return result;
}

unint64_t sub_100018218()
{
  result = qword_1000FFA18;
  if (!qword_1000FFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFA18);
  }

  return result;
}

uint64_t sub_1000182B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_100018328(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100018384();
  }
}

void sub_100018384()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v231 = &v229 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v229 - v6;
  v8 = [v0 view];
  if (!v8)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v9 = v8;
  [v8 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v252.origin.x = v11;
  v252.origin.y = v13;
  v252.size.width = v15;
  v252.size.height = v17;
  Width = CGRectGetWidth(v252);
  sub_100017B98(v250);
  sub_1000182F8(v250);
  v19 = v251;
  if (Width != v251)
  {
    v20 = [v1 view];
    if (!v20)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v21 = v20;
    [v20 frame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v253.origin.x = v23;
    v253.origin.y = v25;
    v253.size.width = v27;
    v253.size.height = v29;
    v30 = CGRectGetWidth(v253);
    v31 = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 16];
    *v249 = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics];
    *&v249[16] = v31;
    v32 = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 32];
    *&v249[40] = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 40];
    *&v249[56] = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 56];
    *&v249[72] = *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 72];
    memcpy(v248, &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics], sizeof(v248));
    *&v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 32] = v30;
    *&v249[32] = v32;
    sub_100018270(v249, v247);
    sub_100007A44(v248, &qword_1000FF9B8, &unk_1000C0C80);
  }

  v232 = v3;
  v233 = v2;
  v33 = &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics];
  memcpy(v248, &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics], sizeof(v248));
  memcpy(v249, &v1[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics], sizeof(v249));
  sub_100018270(v249, v247);
  v34 = [v1 view];
  if (!v34)
  {
    goto LABEL_75;
  }

  v35 = v34;
  sub_100007A44(v248, &qword_1000FF9B8, &unk_1000C0C80);
  v36 = *&v249[48];
  v37 = &WFMainViewController__prots;
  [v35 layoutMargins];
  v39 = v38;

  v234 = v7;
  if (v36 == v39)
  {
    memcpy(v246, v33, sizeof(v246));
    memcpy(v247, v33, sizeof(v247));
    sub_100018270(v247, v245);
    v40 = [v1 view];
    if (!v40)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v41 = v40;
    sub_100007A44(v246, &qword_1000FF9B8, &unk_1000C0C80);
    v42 = *&v247[64];
    [v41 layoutMargins];
    v44 = v43;

    v45 = Width != v19 || v42 != v44;
  }

  else
  {
    v45 = 1;
  }

  v46 = [v1 traitCollection];
  v47 = *(v33 + 9);
  if (v46)
  {
    v48 = v46;
    if (v47)
    {
      sub_100002FC4(0, &qword_1000FF9D8, UITraitCollection_ptr);
      v49 = v47;
      v50 = static NSObject.== infix(_:_:)();

      if (v50)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_19:
    v51 = [v1 traitCollection];
    memcpy(v246, v33, 0x48uLL);
    v52 = *(v33 + 9);
    v53 = *(v33 + 10);
    memcpy(v245, v33, 0x48uLL);
    v246[9] = v52;
    v246[10] = v53;
    sub_100018270(v246, v247);

    memcpy(v247, v33, sizeof(v247));
    memcpy(v33, v245, 0x48uLL);
    *(v33 + 9) = v51;
    *(v33 + 10) = v53;
    sub_100007A44(v247, &qword_1000FF9B8, &unk_1000C0C80);
    v45 = 1;
    goto LABEL_20;
  }

  if (v47)
  {
    goto LABEL_19;
  }

LABEL_20:
  v54 = [v1 view];
  if (!v54)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v55 = v54;
  [v54 layoutMargins];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v64 = *(v33 + 1);
  *v247 = *v33;
  *&v247[16] = v64;
  *&v247[32] = *(v33 + 4);
  *&v247[72] = *(v33 + 72);
  v65 = *(v33 + 40);
  v235 = *(v33 + 56);
  v236 = v65;
  memcpy(v246, v33, sizeof(v246));
  *(v33 + 5) = v57;
  *(v33 + 6) = v59;
  *(v33 + 7) = v61;
  *(v33 + 8) = v63;
  *&v247[40] = v236;
  *&v247[56] = v235;
  sub_100018270(v247, v245);
  v66 = sub_100007A44(v246, &qword_1000FF9B8, &unk_1000C0C80);
  if (!v45)
  {
    return;
  }

  v70 = sub_100017DE4(v66, v67, v68, v69);
  v71 = (v33 + 24);
  v72 = *(v33 + 3);
  [v70 sectionInset];
  [v72 setSectionInset:?];

  v73 = *(v33 + 3);
  [v70 interitemSpacing];
  [v73 setMinimumInteritemSpacing:?];

  v74 = *(v33 + 3);
  [v70 lineSpacing];
  [v74 setMinimumLineSpacing:?];

  v75 = *(v33 + 3);
  [v70 workflowSize];
  [v75 setItemSize:?];

  memcpy(v239, v33, sizeof(v239));
  v76 = *v33;
  p_superclass = v239[2];
  v78 = *(v33 + 40);
  v240 = *(v33 + 24);
  v241 = v78;
  v79 = *(v33 + 72);
  v242 = *(v33 + 56);
  v243 = v79;
  v244 = v76;
  v80 = v70;
  sub_10001939C(v239, v238);

  memcpy(v245, v33, sizeof(v245));
  *v33 = v244;
  *(v33 + 2) = v80;
  v81 = v241;
  *(v33 + 24) = v240;
  *(v33 + 40) = v81;
  v82 = v243;
  *(v33 + 56) = v242;
  *(v33 + 72) = v82;
  sub_100007A44(v245, &qword_1000FF9B8, &unk_1000C0C80);
  v83 = [*(v33 + 3) collectionView];
  if (v83)
  {
    v230 = (v33 + 24);
    *&v235 = v80;
    *&v236 = v83;
    v84 = [v83 visibleCells];
    sub_100002FC4(0, &qword_1000FF9C0, UICollectionViewCell_ptr);
    v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = sub_10000D55C(v71);
    if (v85)
    {
      v86 = v85;
      if (v85 < 1)
      {
        __break(1u);
        goto LABEL_71;
      }

      p_superclass = 0;
      v80 = (v71 & 0xC000000000000001);
      do
      {
        if (v80)
        {
          v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v87 = *(v71 + 8 * p_superclass + 32);
        }

        v88 = v87;
        type metadata accessor for LibraryCell();
        if (swift_dynamicCastClass())
        {
          v37 = *(v33 + 2);
          v89 = v37;
          sub_10002590C(v37);
        }

        p_superclass = (p_superclass + 1);
      }

      while (v86 != p_superclass);
    }

    v90 = [v236 visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
    sub_100002FC4(0, &qword_1000FF9D0, UICollectionReusableView_ptr);
    v91 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v92 = sub_10000D55C(v91);
    v71 = v230;
    if (!v92)
    {
LABEL_39:

      v80 = v235;
      goto LABEL_40;
    }

    v93 = v92;
    if (v92 >= 1)
    {
      v94 = 0;
      do
      {
        if ((v91 & 0xC000000000000001) != 0)
        {
          v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v95 = *(v91 + 8 * v94 + 32);
        }

        v96 = v95;
        ++v94;
        sub_100033820();
        [v96 setLayoutMargins:0.0];
      }

      while (v93 != v94);
      goto LABEL_39;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_40:
  v97 = [v1 traitCollection];
  v98 = [v97 horizontalSizeClass];

  if (v98 != 2)
  {
    goto LABEL_61;
  }

  v99 = sub_10000E968();
  v100 = [v99 visibleCells];

  sub_100002FC4(0, &qword_1000FF9C0, UICollectionViewCell_ptr);
  v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  p_superclass = &OBJC_METACLASS____TtC9Shortcuts21SearchStateController.superclass;
  if (!sub_10000D55C(v101))
  {

    v37 = &selRef_initWithDelegate_;
LABEL_56:
    v186 = p_superclass[143];
    v187 = *(&v186->isa + v1);
    v188 = [v1 v37[254]];
    if (!v188)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v189 = v188;
    [v188 bounds];
    v191 = v190;
    v193 = v192;
    v195 = v194;
    v197 = v196;

    v259.origin.x = v191;
    v259.origin.y = v193;
    v259.size.width = v195;
    v259.size.height = v197;
    v198 = CGRectGetWidth(v259);
    v199 = [v1 v37[254]];
    if (!v199)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v200 = v199;
    [v199 bounds];
    v202 = v201;
    v204 = v203;
    v206 = v205;
    v208 = v207;

    v260.origin.x = v202;
    v260.origin.y = v204;
    v260.size.width = v206;
    v260.size.height = v208;
    [v187 setFrame:{0.0, 0.0, v198, CGRectGetHeight(v260)}];

    v209 = *(&v186->isa + v1);
    v210 = [v1 v37[254]];
    if (!v210)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v211 = v210;
    [v210 safeAreaInsets];
    v213 = v212;

    v214 = [v1 v37[254]];
    if (!v214)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v215 = v214;
    [v214 safeAreaInsets];
    v217 = v216;

    [v209 setContentInset:{0.0, v213, 0.0, v217}];
LABEL_61:
    [*v71 invalidateLayout];
    sub_10000E8F4();
    sub_100010CE4(0, 0, v218, v219, v220, v221, v222, v223, v229, v230, v231, v232);

    goto LABEL_62;
  }

  sub_100066898();
  v37 = &selRef_initWithDelegate_;
  if ((v101 & 0xC000000000000001) == 0)
  {
    v102 = *(v101 + 32);
    goto LABEL_44;
  }

LABEL_72:
  v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_44:
  v103 = v102;

  v104 = p_superclass[143];
  v105 = [*(&v104->isa + v1) indexPathForCell:v103];
  if (!v105)
  {

    goto LABEL_56;
  }

  v106 = v105;
  v230 = v71;
  *&v235 = v80;
  v107 = v231;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v109 = v232;
  v108 = v233;
  v110 = v234;
  (*(v232 + 32))(v234, v107, v233);
  v111 = *(&v104->isa + v1);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v113 = [v111 layoutAttributesForItemAtIndexPath:isa];

  if (!v113)
  {
    (*(v109 + 8))(v110, v108);
LABEL_66:

    return;
  }

  [v113 frame];
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;

  v254.origin.x = v115;
  v254.origin.y = v117;
  v254.size.width = v119;
  v254.size.height = v121;
  MinY = CGRectGetMinY(v254);
  [*(&v104->isa + v1) contentOffset];
  v124 = v123;
  v125 = *(&v104->isa + v1);
  v126 = [v1 view];
  if (!v126)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v127 = v126;
  [v126 bounds];
  v129 = v128;
  v131 = v130;
  v133 = v132;
  v135 = v134;

  v255.origin.x = v129;
  v255.origin.y = v131;
  v255.size.width = v133;
  v255.size.height = v135;
  v136 = CGRectGetWidth(v255);
  v137 = [v1 view];
  if (!v137)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v138 = v137;
  [v137 bounds];
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;

  v256.origin.x = v140;
  v256.origin.y = v142;
  v256.size.width = v144;
  v256.size.height = v146;
  [v125 setFrame:{0.0, 0.0, v136, CGRectGetHeight(v256)}];

  v147 = *(&v104->isa + v1);
  v148 = [v1 view];
  if (!v148)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v149 = v148;
  [v148 safeAreaInsets];
  v151 = v150;

  v152 = [v1 view];
  if (!v152)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v153 = v152;
  [v152 safeAreaInsets];
  v155 = v154;

  [v147 setContentInset:{0.0, v151, 0.0, v155}];
  [*v230 invalidateLayout];
  sub_10000E8F4();
  sub_100010CE4(0, 0, v156, v157, v158, v159, v160, v161, v229, v230, v231, v232);

  v162 = *(&v104->isa + v1);
  v163 = v234;
  v164 = IndexPath._bridgeToObjectiveC()().super.isa;
  v165 = [v162 layoutAttributesForItemAtIndexPath:v164];

  if (!v165)
  {
    (*(v232 + 8))(v163, v233);
    goto LABEL_66;
  }

  [v165 frame];
  v167 = v166;
  v169 = v168;
  v171 = v170;
  v173 = v172;

  v257.origin.x = v167;
  v257.origin.y = v169;
  v257.size.width = v171;
  v257.size.height = v173;
  v174 = CGRectGetMinY(v257);
  [*(&v104->isa + v1) contentOffset];
  v176 = v175;
  [*(&v104->isa + v1) contentSize];
  v178 = v177;
  [*(&v104->isa + v1) bounds];
  Height = CGRectGetHeight(v258);
  v180 = [v1 view];
  if (!v180)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v181 = v180;
  v182 = v178 - Height;
  [v180 safeAreaInsets];
  v184 = v183;

  v185 = v234;
  v80 = v235;
  if (v182 >= -v184)
  {
    [*(&v104->isa + v1) contentOffset];
    v237 = v174 - v176 - (MinY - v124) + v224;
    v225 = [v1 view];
    if (!v225)
    {
LABEL_88:
      __break(1u);
      return;
    }

    v226 = v225;
    [v225 safeAreaInsets];
    v228 = v227;

    if (v182 >= -v228)
    {
      v238[0] = -v228;
      v238[1] = v182;
      sub_100033A2C();
      clamp<A>(_:to:)();

      (*(v232 + 8))(v185, v233);
      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  (*(v232 + 8))(v234, v233);

LABEL_62:
}

uint64_t sub_100019348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001939C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_1000FF9B8, &unk_1000C0C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000194BC(double a1, double a2, double a3, double a4)
{
  v28 = type metadata accessor for IndexPath();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LibraryViewController.LibraryFlowLayout();
  v27 = v4;
  v30.receiver = v4;
  v30.super_class = v12;
  v13 = objc_msgSendSuper2(&v30, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  sub_100002FC4(0, &qword_1001025C8, UICollectionViewLayoutAttributes_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v15;
  result = sub_10000D55C(v15);
  if (!result)
  {
    return v15;
  }

  v17 = result;
  if (result >= 1)
  {
    v26 = (v9 + 8);

    v18 = 0;
    v19 = v15;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      if (![v20 representedElementCategory])
      {
        v22 = [v21 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v24 = [v27 layoutAttributesForItemAtIndexPath:isa];

        if (v24)
        {
          v25 = v24;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*v26)(v11, v28);
          v19 = v29;
          goto LABEL_14;
        }

        (*v26)(v11, v28);
      }

LABEL_14:
      if (v17 == ++v18)
      {

        return v19;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000197B0()
{
  v1 = OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip;
  sub_100003FE4(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_tip, v11);
  sub_10001990C(v0 + v1, v12);
  v2 = v13;
  if (v13)
  {
    sub_100041C04(v12, v13);
    sub_10000F720();
    v4 = v3;
    __chkstk_darwin(v5);
    sub_1000039BC();
    v8 = v7 - v6;
    (*(v4 + 16))(v7 - v6);
    sub_1000171D4(v12, &qword_1001026D8, qword_1000C5BF0);
    v9 = Tip.shouldDisplay.getter();
    (*(v4 + 8))(v8, v2);
  }

  else
  {
    sub_1000171D4(v12, &qword_1001026D8, qword_1000C5BF0);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E87C(&qword_1001026D8, qword_1000C5BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001997C()
{
  v0 = type metadata accessor for LibraryDataSource();
  v1 = sub_10000B15C(v0);

  return v1();
}

uint64_t sub_1000199B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000199FC();

  return v3 & 1;
}

uint64_t sub_1000199FC()
{
  v0 = sub_10000C5FC();
  if (!v0)
  {
    return 0;
  }

  v1 = v0[OBJC_IVAR____TtC9ShortcutsP33_8EB4106E991E4BC479DE0B61E3FF388616SearchStateStore_state + 17];

  return v1;
}

void sub_100019A40(uint64_t a1, char a2)
{
  sub_100003A0C();
  type metadata accessor for LibrarySectionOptions.SectionType();
  sub_100004458();
  __chkstk_darwin(v3);
  sub_1000039BC();
  v6 = (v5 - v4);
  LibrarySectionOptions.sectionType.getter();
  v7 = sub_10000F430();
  if (v8(v7) == enum case for LibrarySectionOptions.SectionType.shortcuts(_:))
  {
    v9 = sub_10000F430();
    v10(v9);
    v11 = *v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      if (a2)
      {
        v14 = *&Strong[OBJC_IVAR____TtC9Shortcuts21LibraryViewController_searchController];
        if (v14)
        {
          v15 = v14;
          sub_1000906C8();
        }

        type metadata accessor for LibraryDataSource();
        v19 = static LibraryDataSource.searchPredicate(for:)();

        Strong = v19;
        v18 = Strong;
      }

      else
      {
        v18 = 0;
      }

      sub_100041E24(Strong, "setSearchPredicate:");
    }

    else
    {
    }
  }

  else
  {
    v16 = sub_10000F430();
    v17(v16);
  }
}

uint64_t sub_100019C38(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100019C88(__n128 a1, __n128 a2)
{

  return sub_1000AF8B4(0.0, 100.0);
}

uint64_t sub_100019CD8()
{

  return swift_allocObject();
}

void sub_100019CFC()
{
  v1 = type metadata accessor for Date();
  sub_100004458();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - v9;
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  if ([objc_opt_self() isSyncEnabled])
  {
    v29 = v3;
    v13 = objc_opt_self();
    v14 = [v13 syncShortcutsUserDefaults];
    v15 = [v14 BOOLForKey:WFSyncUnavailableMessageKey];

    if (v15)
    {
      v16 = [v0 traitCollection];
      v17 = [v16 horizontalSizeClass];

      if (v17 != 2)
      {
        v18 = [v13 syncShortcutsUserDefaults];
        v19 = WFSyncUnavailableMessageDismissedByUserKey;
        v20 = [v18 BOOLForKey:WFSyncUnavailableMessageDismissedByUserKey];

        if (v20)
        {
          v21 = [v13 syncShortcutsUserDefaults];
          v22 = [v21 integerForKey:WFSyncUnavailableMessageCountKey];

          if (v22 == 1)
          {
            v23 = [v13 syncShortcutsUserDefaults];
            v24 = [v23 objectForKey:WFSyncUnavailableMessageDateKey];

            if (v24)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              sub_10006D474(v30, &v31);
              swift_dynamicCast();
              Date.init()();
              Date.addingTimeInterval(_:)();
              v25 = static Date.> infix(_:_:)();
              v26 = *(v29 + 8);
              v26(v7, v1);
              v26(v10, v1);
              if (v25)
              {
                v27 = [v13 syncShortcutsUserDefaults];
                [v27 setBool:0 forKey:v19];
              }

              v26(v12, v1);
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }
}

void sub_10001A054(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

void sub_10001A074(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  sub_1000060D8();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_10002E87C(a5, a6);
      v16 = swift_allocObject();
      v17 = j__malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v11 + 0x4000000000000000 >= 0)
  {
    sub_100011894();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_10001A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100033AC4();
  v5 = v3;
  v96 = v6;
  v97 = v7;
  v107 = type metadata accessor for IndexPath();
  sub_100004458();
  v103 = v8;
  __chkstk_darwin(v9);
  sub_1000039BC();
  v106 = v11 - v10;
  v12 = sub_10002E87C(&unk_1000FF9E0, &unk_1000C5B60);
  sub_100002EE0(v12);
  sub_100005B90();
  __chkstk_darwin(v13);
  sub_100005B9C(&v92 - v14);
  v100 = type metadata accessor for ShortcutsLibraryItem.ItemType();
  sub_100004458();
  v98 = v15;
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100005B9C(v18 - v17);
  v19 = type metadata accessor for LibrarySectionOptions.Header();
  sub_100004458();
  v101 = v20;
  v22 = __chkstk_darwin(v21);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v92 - v25;
  v105 = type metadata accessor for LibrarySectionOptions();
  sub_100004458();
  v104 = v27;
  __chkstk_darwin(v28);
  sub_1000039BC();
  v31 = v30 - v29;
  v32 = sub_10002E87C(&unk_100102410, &unk_1000C0C90);
  sub_100002EE0(v32);
  sub_100005B90();
  __chkstk_darwin(v33);
  v34 = sub_100033AA4();
  sub_100004458();
  v109 = v35;
  __chkstk_darwin(v36);
  sub_1000039BC();
  v39 = v38 - v37;
  sub_100017B98(v110);
  v40 = v110[3];
  sub_1000182F8(v110);
  [v40 sectionInset];

  v108 = v5;
  sub_10000E8F4();
  sub_10001AB2C();

  if (sub_10000AB80(v4, 1, v34) == 1)
  {
    v41 = &unk_100102410;
    v42 = &unk_1000C0C90;
    v43 = v4;
LABEL_13:
    sub_100007A44(v43, v41, v42);
LABEL_14:
    sub_10000A7D4();
    return;
  }

  v44 = *(v109 + 32);
  v95 = v34;
  v44(v39, v4, v34);
  ShortcutsLibrarySection.options.getter();
  v93 = v39;
  ShortcutsLibrarySection.header.getter();
  v45 = v101;
  v46 = *(v101 + 16);
  v94 = v26;
  v46(v24, v26, v19);
  v47 = (*(v45 + 88))(v24, v19);
  v48 = v19;
  if (v47 == enum case for LibrarySectionOptions.Header.tip(_:))
  {
    v49 = LibrarySectionOptions.hasNoShortcuts.getter();
    v50 = v45;
    v51 = v103;
    v52 = v102;
    if (v49 & 1) == 0 && (sub_1000197B0())
    {
      sub_10001ACF8();
    }
  }

  else
  {
    v51 = v103;
    v52 = v102;
    if (v47 == enum case for LibrarySectionOptions.Header.none(_:))
    {
      sub_10001ACF8();
    }

    v50 = v45;
  }

  v53 = *(v50 + 8);
  v53(v24, v48);

  v54 = v106;
  IndexPath.init(item:section:)();
  sub_10001ADD8();

  v55 = *(v51 + 8);
  v55(v54, v107);
  v56 = type metadata accessor for ShortcutsLibraryItem();
  if (sub_10000AB80(v52, 1, v56) == 1)
  {
    v57 = sub_100007958();
    v53(v57, v48);
    sub_10001732C();
    sub_100033A98();
    v58();
    v59 = sub_100003ED8();
    v60(v59);
    v41 = &unk_1000FF9E0;
    v42 = &unk_1000C5B60;
    v43 = v52;
    goto LABEL_13;
  }

  v103 = v48;
  v61 = v52;
  v62 = v99;
  ShortcutsLibraryItem.itemType.getter();
  sub_100002F04();
  v64 = v56;
  v65 = v62;
  (*(v63 + 8))(v61, v64);
  v66 = v98;
  v67 = v100;
  if ((*(v98 + 88))(v65, v100) != enum case for ShortcutsLibraryItem.ItemType.appShortcutTopHit(_:))
  {
    v70 = sub_100007958();
    v53(v70, v103);
    sub_10001732C();
    sub_100033A98();
    v71();
    v72 = sub_100003ED8();
    v73(v72);
    (*(v66 + 8))(v65, v67);
    goto LABEL_14;
  }

  (*(v66 + 96))(v65, v67);
  type metadata accessor for AutoShortcutAppSection();
  sub_100002F04();
  (*(v68 + 8))(v65);
  if (_UISolariumEnabled())
  {
    v69 = sub_1000039CC();
    (v53)(v69);
    sub_10001732C();
LABEL_22:
    sub_100033A98();
    v84();
    v85 = sub_100003ED8();
    v86(v85);
    goto LABEL_14;
  }

  v74 = v53;
  v102 = v31;
  v75 = v106;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v55(v75, v107);
  v77 = v108;
  v78 = v97;
  [v108 collectionView:v97 layout:v96 sizeForItemAtIndexPath:isa];
  v80 = v79;
  v82 = v81;

  if (v80 == 0.0 && v82 == 0.0)
  {
    v83 = sub_1000039CC();
    v74(v83);
    sub_10001732C();
    goto LABEL_22;
  }

  [v78 frame];
  CGRectGetWidth(v111);
  v87 = [v77 view];
  v88 = v93;
  if (v87)
  {
    v89 = v87;
    [v87 safeAreaInsets];

    [*&v77[OBJC_IVAR____TtC9Shortcuts21LibraryViewController____lazy_storage___layoutMetrics + 24] sectionInset];
    v90 = sub_1000039CC();
    v74(v90);
    sub_10001732C();
    sub_100033A98();
    v91();
    (*(v109 + 8))(v88, v95);
    goto LABEL_14;
  }

  __break(1u);
}