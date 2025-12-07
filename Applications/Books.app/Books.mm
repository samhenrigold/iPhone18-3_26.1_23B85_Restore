uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  kdebug_trace();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  kdebug_trace();
  objc_autoreleasePoolPop(v4);
  return v9;
}

id sub_100004DA8(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

NSString sub_100004E0C()
{
  result = sub_1007A2214();
  qword_100B22EF8 = result;
  return result;
}

NSString sub_100004E68()
{
  result = sub_1007A2214();
  qword_100B22F00 = result;
  return result;
}

uint64_t sub_100005080(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

char *OfflineCacheLoadingController.init()()
{
  v1 = sub_1001F1160(&qword_100AEC230, &qword_100833220);
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v19 = &v18 - v2;
  v3 = sub_1007A2E74();
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = sub_1001F1160(&qword_100AEC238, &qword_100833228);
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  *&v0[OBJC_IVAR___BKOfflineCacheLoadingController_cancellable] = 0;
  v10 = type metadata accessor for OfflineCacheLoadingController();
  v24.receiver = v0;
  v24.super_class = v10;
  v11 = objc_msgSendSuper2(&v24, "init");
  v12 = [objc_opt_self() defaultCenter];
  sub_10079AD34();
  if (sub_10079AD04())
  {
    sub_1007A2E84();
    if (qword_100AD1300 != -1)
    {
      swift_once();
    }

    sub_1007A2E84();
    if (qword_100AD1308 != -1)
    {
      swift_once();
    }

    sub_1007A2E84();
    if (qword_100AD18C8 != -1)
    {
      swift_once();
    }

    sub_1007A2E84();
    sub_100005B5C();
    sub_10079B804();
    sub_100005920(&qword_100AEC260, &qword_100AEC238, &qword_100833228, &protocol conformance descriptor for Publishers.Merge4<A, B, C, D>);
    v13 = sub_10079BA14();
    (*(v22 + 8))(v9, v7);
  }

  else
  {
    if ((sub_10079AD14() & 1) == 0)
    {

      v16 = 0;
      goto LABEL_15;
    }

    sub_1007A2E84();
    if (qword_100AD18C8 != -1)
    {
      swift_once();
    }

    sub_1007A2E84();
    sub_100005B5C();
    v14 = v19;
    sub_10079B7F4();
    sub_100005920(&qword_100AEC248, &qword_100AEC230, &qword_100833220, &protocol conformance descriptor for Publishers.Merge<A, B>);
    v15 = v21;
    v13 = sub_10079BA14();
    (*(v20 + 8))(v14, v15);
  }

  v23 = v13;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&qword_100AEC250, &unk_100833230);
  sub_100005920(&qword_100AEC258, &qword_100AEC250, &unk_100833230, &protocol conformance descriptor for AnyPublisher<A, B>);
  v16 = sub_10079BB04();

LABEL_15:
  *&v11[OBJC_IVAR___BKOfflineCacheLoadingController_cancellable] = v16;

  return v11;
}

uint64_t sub_10000563C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100005920(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NSString sub_100005B24()
{
  result = sub_1007A2214();
  qword_100B23660 = result;
  return result;
}

unint64_t sub_100005B5C()
{
  result = qword_100AE19E0;
  if (!qword_100AE19E0)
  {
    sub_1007A2E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE19E0);
  }

  return result;
}

void sub_1000061B4(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100AF7840;
  qword_100AF7840 = v1;
}

id sub_1000061F0(uint64_t a1)
{
  if (qword_100AF7720 != -1)
  {
    sub_100006234();
  }

  v2 = qword_100AF7718;

  return v2;
}

void sub_100006248(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKUbiquityOptInController");
  v2 = qword_100AF7718;
  qword_100AF7718 = v1;
}

void sub_100006690(void *a1, uint64_t a2, void *a3, const void *a4)
{
  swift_beginAccess();
  v7 = a3;
  v8 = a1;
  objc_setAssociatedObject(v8, a4, v7, 1);
  swift_endAccess();
}

id AppLifecycleObserver.init(coordinator:)(uint64_t a1)
{
  v3 = [objc_opt_self() sharedApplication];
  if ([objc_opt_self() appKitBundleClass])
  {
    swift_getObjCClassMetadata();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [v1 initWithCoordinator:a1 uiApplication:v3 appKitBundle:ObjCClassFromMetadata];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1000068A8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_100006C00(uint64_t a1)
{
  kdebug_trace();
  v7 = +[BRCConfigurationManager sharedInstance];
  v2 = +[JSABridge sharedInstance];
  [v7 setJsBridge:v2];

  v3 = +[BCRCDataContainer defaultContainer];
  v4 = +[JSABridge sharedInstance];
  [v3 setBridge:v4];

  [v3 setSessionHosting:*(a1 + 32)];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 URLForResource:@"BooksDefaults" withExtension:@"json"];
  [v7 registerNamespace:BRCBooksDefaultsNamespace withDefaults:v6 forBundleID:BRCBundleID];
  kdebug_trace();
}

char *sub_100006D70(uint64_t a1, void *a2)
{
  v4 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onWillEnterForeground];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidEnterBackground];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onWillResignActive];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeActive];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onDidBecomeFrontmost];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR___BKAppLifecycleObserver_onWillResignFrontmost];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v2[OBJC_IVAR___BKAppLifecycleObserver_coordinator] = a1;
  v10 = objc_allocWithZone(sub_10079EA24());
  swift_unknownObjectRetain();
  v11 = a2;
  *&v2[OBJC_IVAR___BKAppLifecycleObserver_frontmostTracker] = sub_10079EA14();
  v19.receiver = v2;
  v19.super_class = type metadata accessor for AppLifecycleObserver();
  v12 = objc_msgSendSuper2(&v19, "init");
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:v11];
  [v15 addObserver:v14 selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:v11];
  [v15 addObserver:v14 selector:"applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:v11];
  [v15 addObserver:v14 selector:"applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:v11];
  v16 = *&v14[OBJC_IVAR___BKAppLifecycleObserver_frontmostTracker];
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v17 = v16;

  sub_10079EA04();

  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_100006FC4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_100007020(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000070F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007280(v11, 0, 0, 1, a1, a2);
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
    sub_100007484(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000074E0(v11);
  return v7;
}

void *sub_1000071C0(uint64_t a1, uint64_t a2)
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

  sub_1001F1160(&qword_100AD5BC8, &qword_100811448);
  v4 = swift_allocObject();
  v5 = j__malloc_size_1(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007234(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008BD0(a1, a2);
  sub_100007398(&off_100A0BAE0);
  return v3;
}

unint64_t sub_100007280(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100007234(a5, a6);
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
    result = sub_1007A37B4();
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

uint64_t sub_100007398(uint64_t result)
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

  result = sub_10021BEFC(result, v11, 1, v3);
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

uint64_t sub_100007484(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000074E0(void *a1)
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

uint64_t sub_1000076D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___BKContainerHost____lazy_storage___resolver;
  swift_beginAccess();
  sub_1000077D8(v1 + v3, &v5, &unk_100AEB460, &unk_100832600);
  if (v6)
  {
    return sub_1000077C0(&v5, a1);
  }

  sub_100007840(&v5, &unk_100AEB460, &unk_100832600);
  sub_1000078A0();
  sub_100798DF4();

  sub_100009864(a1, &v5);
  swift_beginAccess();
  sub_100013ADC(&v5, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000077C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000077D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001F1160(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001F1160(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000078A0()
{
  v1 = sub_10079AFA4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___BKContainerHost____lazy_storage___container;
  if (*(v0 + OBJC_IVAR___BKContainerHost____lazy_storage___container))
  {
    v6 = *(v0 + OBJC_IVAR___BKContainerHost____lazy_storage___container);
  }

  else
  {
    v7 = v0;
    sub_100007D70();
    (*(v2 + 104))(v4, enum case for ContainerScope.application(_:), v1);
    v6 = sub_10079AFF4();

    (*(v2 + 8))(v4, v1);
    *(v7 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1000079F0(uint64_t a1)
{
  sub_1001F1160(&qword_100AEB428, &unk_10083AB30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100812CF0;
  v3 = sub_10079A164();
  v4 = [objc_allocWithZone(v3) init];
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_100007DD8(&qword_100AEB430, &type metadata accessor for FrameworkAssembly, &protocol conformance descriptor for FrameworkAssembly);
  *(v2 + 32) = v4;
  v5 = sub_10079B044();
  v6 = [objc_allocWithZone(v5) init];
  *(v2 + 96) = v5;
  *(v2 + 104) = sub_100007DD8(&qword_100AEB438, &type metadata accessor for FrameworkAssembly, &protocol conformance descriptor for FrameworkAssembly);
  *(v2 + 72) = v6;
  v7 = sub_100798D44();
  v8 = [objc_allocWithZone(v7) init];
  *(v2 + 136) = v7;
  *(v2 + 144) = &protocol witness table for FrameworkAssembly;
  *(v2 + 112) = v8;
  if (sub_100798F24())
  {
    if (qword_100AD17B8 != -1)
    {
      swift_once();
    }

    sub_1000077D8(&xmmword_100B23448, &v18, &qword_100AEB458, &qword_1008325F8);
    if (v19)
    {
      sub_1000077C0(&v18, v20);
      sub_100009864(v20, &v18);
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_10000A814((v9 > 1), v10 + 1, 1, v2);
      }

      sub_1000074E0(v20);
      *(v2 + 16) = v10 + 1;
      sub_1000077C0(&v18, v2 + 40 * v10 + 32);
    }

    else
    {
      sub_100007840(&v18, &qword_100AEB458, &qword_1008325F8);
    }
  }

  sub_1001F1160(&qword_100AEB440, &qword_1008325F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10080EFF0;
  v12 = *(a1 + OBJC_IVAR___BKContainerHost_launchCoordinator);
  v13 = type metadata accessor for Assembly();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v11 + 56) = v13;
  *(v11 + 64) = sub_100007DD8(&qword_100AEB448, type metadata accessor for Assembly, &unk_100833870);
  *(v11 + 32) = v14;
  v15 = type metadata accessor for BooksPersonalizationAssembly();
  v16 = swift_allocObject();
  *(v11 + 96) = v15;
  *(v11 + 104) = sub_100007DD8(&qword_100AEB450, type metadata accessor for BooksPersonalizationAssembly, &unk_10082AC30);
  *(v11 + 72) = v16;
  sub_100798D04();
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_100798CF4();
  sub_10079B004();
  swift_allocObject();
  return sub_10079AFE4();
}

uint64_t sub_100007D70()
{
  v1 = OBJC_IVAR___BKContainerHost____lazy_storage___containerManager;
  if (*(v0 + OBJC_IVAR___BKContainerHost____lazy_storage___containerManager))
  {
    v2 = *(v0 + OBJC_IVAR___BKContainerHost____lazy_storage___containerManager);
  }

  else
  {
    v2 = sub_1000079F0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100007DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100007E20()
{
  result = qword_100ADC810;
  if (!qword_100ADC810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADC810);
  }

  return result;
}

void sub_100007E98()
{
  if (qword_100AD17B0 != -1)
  {
    swift_once();
  }

  if (qword_100B23440)
  {
    v2 = qword_100B23440;
    [v2 load];
    v0 = sub_1007A2214();
    v1 = NSClassFromString(v0);

    if (v1)
    {
      swift_getObjCClassMetadata();
      sub_100009818();
      swift_dynamicCastMetatypeUnconditional();
      [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

      sub_1001F1160(&qword_100AE7FE8, &qword_10082D5E0);
      swift_dynamicCast();
    }

    else
    {
      qword_100B23468 = 0;
      xmmword_100B23448 = 0u;
      unk_100B23458 = 0u;
    }
  }

  else
  {
    qword_100B23468 = 0;
    xmmword_100B23448 = 0u;
    unk_100B23458 = 0u;
  }
}

uint64_t sub_100008010@<X0>(char *a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = sub_1007969B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD17A0 != -1)
  {
    swift_once();
  }

  v9 = sub_100008B98(v2, qword_100AE7FB8);
  sub_10000847C(v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100008F68(v4);
    v10 = [objc_opt_self() defaultManager];
    if (qword_100AD17A8 != -1)
    {
      swift_once();
    }

    v11 = sub_100008B98(v5, qword_100AE7FD0);
    sub_100796984();
    v12 = sub_1007A2214();

    v13 = [v10 fileExistsAtPath:v12];

    if ((v13 & 1) == 0)
    {
      v15 = 1;
      return (*(v6 + 56))(a1, v15, 1, v5);
    }

    (*(v6 + 16))(a1, v11, v5);
  }

  else
  {
    v14 = *(v6 + 32);
    v14(v8, v4, v5);
    v14(a1, v8, v5);
  }

  v15 = 0;
  return (*(v6 + 56))(a1, v15, 1, v5);
}

uint64_t sub_1000082B8()
{
  v0 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v0);
  v2 = &v12 - v1;
  sub_100009A38(v3, qword_100AE7FB8);
  v4 = sub_100008B98(v0, qword_100AE7FB8);
  v5 = [objc_opt_self() mainBundle];
  v6 = sub_1007A2214();
  v7 = sub_1007A2214();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  if (v8)
  {
    sub_100796974();

    v9 = sub_1007969B4();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  }

  else
  {
    v10 = sub_1007969B4();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  }

  return sub_100008EF8(v2, v4);
}

uint64_t sub_10000847C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000084EC()
{
  v0 = sub_1007969B4();
  sub_100009A38(v0, qword_100AE7FD0);
  sub_100008B98(v0, qword_100AE7FD0);
  return sub_100796924();
}

uint64_t sub_100008550(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100009A34;

  return sub_1000086F4();
}

uint64_t sub_1000085FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100028220;

  return v6(a1);
}

uint64_t sub_100008710()
{
  if (qword_100AD1860 != -1)
  {
    swift_once();
  }

  v1 = qword_100AEA5A0;
  v2 = sub_1007A2214();
  LOBYTE(v1) = [v1 BOOLForKey:v2];

  byte_100B23530 = v1;
  v3 = *(v0 + 8);

  return v3();
}

id sub_1000087E4()
{
  result = [objc_opt_self() defaultStore];
  qword_100AEA5A0 = result;
  return result;
}

Swift::Void __swiftcall UIApplication.observeExtendedLaunchTestCompletion()()
{
  v1 = v0;
  v2 = sub_10079E7F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079EB84();
  sub_10079EB64();
  v6 = sub_10079E7D4();
  (*(v3 + 8))(v5, v2);
  if (qword_100AD1548 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AE1C68);
  v8 = sub_10079ACC4();
  v9 = sub_1007A2994();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = sub_10079E7C4();
    v14 = sub_1000070F4(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Observing Extended Launch completion for destination %{public}s", v10, 0xCu);
    sub_1000074E0(v11);
  }

  if (v6)
  {
    if (v6 != 1)
    {
      return;
    }

    v15 = &off_100A03AE0;
  }

  else
  {
    v15 = &BSUIFeedInitialContentReadyNotification;
  }

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v1 selector:"onExtendedLaunchCompleted" name:*v15 object:0];
}

uint64_t sub_100008B38()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE1C68);
  sub_100008B98(v0, qword_100AE1C68);
  sub_10079EB84();
  sub_10079EB74();
  return sub_10079ACF4();
}

uint64_t sub_100008B98(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

char *sub_100008BD0(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1000071C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1007A37B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1007A2424();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000071C0(v10, 0);
        result = sub_1007A3704();
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

uint64_t sub_100008D00()
{
  v0 = sub_1007969B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  result = sub_100798F24();
  v11 = 0;
  if (result)
  {
    sub_100008010(v9);
    sub_10000847C(v9, v6);
    if ((*(v1 + 48))(v6, 1, v0) == 1)
    {
      sub_100008F68(v9);
      v11 = 0;
      v9 = v6;
    }

    else
    {
      (*(v1 + 32))(v3, v6, v0);
      v12 = objc_allocWithZone(NSBundle);
      sub_100796944(v13);
      v15 = v14;
      v11 = [v12 initWithURL:v14];

      (*(v1 + 8))(v3, v0);
    }

    result = sub_100008F68(v9);
  }

  qword_100B23440 = v11;
  return result;
}

uint64_t sub_100008EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008F68(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BookReaderModuleFactory.prewarm()()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_1007A2704();
  v5 = sub_1007A2744();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  sub_1007A26F4();
  v7 = sub_1007A26E4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1003457A0(0, 0, v4, &unk_10082E380, v8);

  v6(v4, 1, 1, v5);
  v9 = sub_1007A26E4();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v1;
  sub_10050CBCC(0, 0, v4, &unk_10082E390, v10);

  sub_1007A2704();
  v6(v4, 0, 1, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1003457A0(0, 0, v4, &unk_10082E3A0, v11);
}

uint64_t sub_100009200()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100009238()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100009274(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) q_deleteLocaliCloudDataIfUserLoggedOutFromiCloud];

  return kdebug_trace();
}

void sub_1000092E0(id a1)
{
  kdebug_trace();
  +[BKStandardItemsCacheManager prewarm];

  kdebug_trace();
}

uint64_t sub_1000095F4()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE4D38);
  sub_100008B98(v0, qword_100AE4D38);
  return sub_10079ACD4();
}

char *sub_10000966C()
{
  result = sub_100009A9C();
  qword_100B23BC0 = result;
  return result;
}

uint64_t sub_10000968C(char a1)
{
  sub_10079AD34();
  if (a1)
  {
    if ((sub_10079AD14() & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = sub_10079AD24();
    v4 = v6;
    goto LABEL_8;
  }

  if (sub_10079AD04())
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = sub_1007A25E4();

  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];
  }

  else
  {

    v5 = 0;
    v4 = 0xE000000000000000;
  }

LABEL_8:
  v7 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = objc_allocWithZone(NSString);
    v9 = sub_1007A2214();

    v10 = [v8 initWithString:v9];

    v11 = sub_1007A2214();
    v12 = [v10 stringByAppendingPathComponent:v11];

    v5 = sub_1007A2254();
  }

  return v5;
}

unint64_t sub_100009818()
{
  result = qword_100ADAF70;
  if (!qword_100ADAF70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADAF70);
  }

  return result;
}

uint64_t sub_100009864(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000098C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001F1160(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t *sub_100009A38(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

char *sub_100009A9C()
{
  v0 = sub_1007A1D04();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = (&v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  *v3 = sub_1007A2D74();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.notOnQueue(_:), v0);
  v4 = sub_1007A1D34();
  v6 = *(v1 + 8);
  v5 = v1 + 8;
  v6(v3, v0);
  if ((v4 & 1) == 0)
  {
    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_10000968C(0);
  v0 = v8;
  v9 = (v8 >> 56) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_15;
  }

  v5 = v7;
  if (qword_100AD1688 != -1)
  {
    goto LABEL_47;
  }

LABEL_6:
  v10 = sub_10079ACE4();
  sub_100008B98(v10, qword_100AE4D38);

  v11 = sub_10079ACC4();
  v12 = sub_1007A2994();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008EAC80, v69);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, v69);
    *(v13 + 22) = 2082;
    *(v13 + 24) = sub_1000070F4(v5, v0, v69);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %s Reading from disk at %{public}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  v14 = [objc_opt_self() defaultManager];
  v15 = sub_1007A2214();
  v16 = [v14 fileExistsAtPath:v15];

  if (!v16)
  {

    v19 = sub_10079ACC4();
    v26 = sub_1007A2994();

    if (os_log_type_enabled(v19, v26))
    {
      v27 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v27 = 136315650;
      *(v27 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008EAC80, v69);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, v69);
      *(v27 + 22) = 2082;
      v28 = sub_1000070F4(v5, v0, v69);

      *(v27 + 24) = v28;
      _os_log_impl(&_mh_execute_header, v19, v26, "%s %s No cache for RootBarStandardItems at %{public}s", v27, 0x20u);
      swift_arrayDestroy();

      return 0;
    }

    goto LABEL_14;
  }

  v17 = objc_allocWithZone(NSData);
  v18 = sub_1007A2214();
  v19 = [v17 initWithContentsOfFile:v18];

  if (!v19)
  {
LABEL_15:

    return 0;
  }

  v20 = sub_1007A3094();
  if (v20 == sub_1007A30A4())
  {
LABEL_14:

    goto LABEL_15;
  }

  sub_10000A7C4(0, &qword_100AF6F58, NSKeyedUnarchiver_ptr);
  sub_1001F1160(&unk_100AF6F60, &unk_100845CA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100812CF0;
  *(v21 + 32) = type metadata accessor for RootBarItem();
  *(v21 + 40) = sub_10000A7C4(0, &qword_100AF1670, NSArray_ptr);
  *(v21 + 48) = sub_10000A7C4(0, &unk_100AEB920, NSString_ptr);
  v22 = v19;
  v23 = sub_1007969D4();
  v25 = v24;
  v66 = v22;

  sub_1007A2C74();
  sub_10000ADCC(v23, v25);

  sub_10000AE20(v69, v68);
  if (!v68[3])
  {
    sub_100007840(v68, &unk_100AD5B40, &unk_100811300);
    goto LABEL_25;
  }

  sub_1001F1160(&qword_100AEB180, &unk_100813120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:

    v39 = sub_10079ACC4();
    v40 = sub_1007A29B4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v41 = 136315650;
      *(v41 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008EAC80, v68);
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, v68);
      *(v41 + 22) = 2082;
      v42 = sub_1000070F4(v5, v0, v68);

      *(v41 + 24) = v42;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s %s Error casting cached RootBarStandardItems at %{public}s", v41, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100007840(v69, &unk_100AD5B40, &unk_100811300);
    return 0;
  }

  v30 = v67;

  v65 = v30;

  v31 = sub_10079ACC4();
  v32 = sub_1007A2994();

  v64 = v31;
  if (os_log_type_enabled(v31, v32))
  {
    v62 = v32;
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v68[0] = v61;
    *v33 = 136316162;
    *(v33 + 4) = sub_1000070F4(0xD000000000000012, 0x80000001008EAC80, v68);
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_1000070F4(0xD000000000000019, 0x8000000100845C60, v68);
    *(v33 + 22) = 2048;
    v34 = v65 >> 62;
    if (v65 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      *(v33 + 24) = i;

      *(v33 + 32) = 2082;
      v36 = sub_1000070F4(v5, v0, v68);

      *(v33 + 34) = v36;
      *(v33 + 42) = 2082;
      if (v34)
      {
        v44 = v65;
        v38 = sub_1007A38D4();
        v37 = v44;
      }

      else
      {
        v37 = v65;
        v38 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v33;
      if (!v38)
      {
        break;
      }

      v5 = 0;
      v33 = v37 & 0xC000000000000001;
      v34 = v37 & 0xFFFFFFFFFFFFFF8;
      v0 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v33)
        {
          v45 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v34 + 16))
          {
            goto LABEL_49;
          }

          v45 = *&v37[8 * v5 + 32];
        }

        v46 = v45;
        v47 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v48 = [v45 description];
        v49 = sub_1007A2254();
        v51 = v50;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_10000B3D8(0, *(v0 + 2) + 1, 1, v0);
        }

        v37 = v65;
        v53 = *(v0 + 2);
        v52 = *(v0 + 3);
        if (v53 >= v52 >> 1)
        {
          v0 = sub_10000B3D8((v52 > 1), v53 + 1, 1, v0);
          v37 = v65;
        }

        *(v0 + 2) = v53 + 1;
        v54 = &v0[16 * v53];
        *(v54 + 4) = v49;
        *(v54 + 5) = v51;
        ++v5;
        if (v47 == v38)
        {
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

    v0 = _swiftEmptyArrayStorage;
LABEL_45:
    v67 = v0;
    sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
    sub_10000B4E4();
    v55 = sub_1007A20B4();
    v57 = v56;

    v58 = sub_1000070F4(v55, v57, v68);

    v59 = v63;
    *(v63 + 44) = v58;
    v60 = v64;
    _os_log_impl(&_mh_execute_header, v64, v62, "%s %s Found %ld Cached RootBarStandardItems at %{public}s: %{public}s", v59, 0x34u);
    swift_arrayDestroy();

    sub_100007840(v69, &unk_100AD5B40, &unk_100811300);
    return v65;
  }

  else
  {

    v43 = v65;

    sub_100007840(v69, &unk_100AD5B40, &unk_100811300);
    return v43;
  }
}

uint64_t sub_10000A7C4(uint64_t a1, unint64_t *a2, void *a3)
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

id RootBarItem.init(coder:)(void *a1)
{
  v2 = v1;
  sub_10000A7C4(0, &unk_100AEB920, NSString_ptr);
  v4 = sub_1007A3124();
  if (v4)
  {
    sub_1007A2254();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1007A2214();
  v8 = [a1 decodeBoolForKey:v7];

  v9 = sub_1007A3124();
  v10 = sub_1007A3124();
  v11 = sub_1007A3124();
  v12 = sub_1007A3124();
  v13 = sub_1007A3124();
  if (v6)
  {

    LOBYTE(v16) = 0;
    v14 = [v2 initWithIdentifier:v4 isPlaceholder:v8 url:v9 titleOverride:v10 iconNameOverride:v11 selectedIconNameOverride:v12 countryCode:v13 editNameOnSelect:v16];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v14;
}

id RootBarItem.init(identifier:isPlaceholder:url:titleOverride:iconNameOverride:selectedIconNameOverride:countryCode:editNameOnSelect:)(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v20 = a2;
  v21 = a1;
  if (a1 == 0x5F676E6964616572 && a2 == 0xEB00000000776F6ELL || (sub_1007A3AB4() & 1) != 0 || v21 == 0x776F6E5F64616572 && v20 == 0xE800000000000000 || (sub_1007A3AB4() & 1) != 0)
  {
    v21 = 1701670760;

    v20 = 0xE400000000000000;
  }

  v22 = &v14[OBJC_IVAR___BKRootBarItem_identifier];
  *v22 = v21;
  v22[1] = v20;
  v14[OBJC_IVAR___BKRootBarItem_isPlaceholder] = a3 & 1;
  v23 = &v14[OBJC_IVAR___BKRootBarItem_url];
  *v23 = a4;
  v23[1] = a5;
  v24 = &v14[OBJC_IVAR___BKRootBarItem_titleOverride];
  *v24 = a6;
  v24[1] = a7;
  v25 = &v14[OBJC_IVAR___BKRootBarItem_iconNameOverride];
  *v25 = a8;
  v25[1] = a9;
  v26 = &v14[OBJC_IVAR___BKRootBarItem_selectedIconNameOverride];
  *v26 = a10;
  v26[1] = a11;
  v27 = &v14[OBJC_IVAR___BKRootBarItem_countryCode];
  *v27 = a12;
  v27[1] = a13;
  v14[OBJC_IVAR___BKRootBarItem_editNameOnSelect] = a14 & 1;
  v30.receiver = v14;
  v30.super_class = type metadata accessor for RootBarItem();
  return objc_msgSendSuper2(&v30, "init");
}

uint64_t sub_10000ADCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000AE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AD5B40, &unk_100811300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RootBarItem.description.getter()
{
  v1 = 0xE000000000000000;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  v25._countAndFlagsBits = 60;
  v25._object = 0xE100000000000000;
  sub_1007A23D4(v25);
  swift_getObjectType();
  v26._countAndFlagsBits = sub_1007A3D34();
  sub_1007A23D4(v26);

  v27._countAndFlagsBits = 8250;
  v27._object = 0xE200000000000000;
  sub_1007A23D4(v27);
  sub_1007A3894();
  v28._countAndFlagsBits = 1029990688;
  v28._object = 0xE400000000000000;
  sub_1007A23D4(v28);
  sub_1007A23D4(*(v0 + OBJC_IVAR___BKRootBarItem_identifier));
  if (*(v0 + OBJC_IVAR___BKRootBarItem_isPlaceholder))
  {
    v2 = 0x6563616C50736920;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR___BKRootBarItem_isPlaceholder))
  {
    v3 = 0xEE007265646C6F68;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v29._countAndFlagsBits = v2;
  v29._object = v3;
  sub_1007A23D4(v29);

  v4 = *(v0 + OBJC_IVAR___BKRootBarItem_url + 8);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___BKRootBarItem_url);

    v30._countAndFlagsBits = v5;
    v30._object = v4;
    sub_1007A23D4(v30);

    v4 = 0x3D6C727520;
    v1 = 0xE500000000000000;
  }

  v31._countAndFlagsBits = v4;
  v31._object = v1;
  sub_1007A23D4(v31);

  v7 = v24[0];
  v6 = v24[1];
  v8 = *(v0 + OBJC_IVAR___BKRootBarItem_titleOverride + 8);
  v9 = 0xE000000000000000;
  if (v8)
  {
    v10 = *(v0 + OBJC_IVAR___BKRootBarItem_titleOverride);
    sub_1007A3744(17);

    v32._countAndFlagsBits = v10;
    v32._object = v8;
    sub_1007A23D4(v32);

    v8 = 0x764F656C74697420;
    v9 = 0xEF3D656469727265;
  }

  v33._countAndFlagsBits = v8;
  v33._object = v9;
  sub_1007A23D4(v33);

  v11 = *(v0 + OBJC_IVAR___BKRootBarItem_iconNameOverride + 8);
  v12 = 0xE000000000000000;
  if (v11)
  {
    v13 = *(v0 + OBJC_IVAR___BKRootBarItem_iconNameOverride);
    sub_1007A3744(20);

    v34._countAndFlagsBits = v13;
    v34._object = v11;
    sub_1007A23D4(v34);

    v11 = 0xD000000000000012;
    v12 = 0x80000001008DE6C0;
  }

  v35._countAndFlagsBits = v11;
  v35._object = v12;
  sub_1007A23D4(v35);

  v14 = *(v0 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride + 8);
  v15 = 0xE000000000000000;
  if (v14)
  {
    v16 = *(v0 + OBJC_IVAR___BKRootBarItem_selectedIconNameOverride);
    sub_1007A3744(28);

    v36._countAndFlagsBits = v16;
    v36._object = v14;
    sub_1007A23D4(v36);

    v14 = 0xD00000000000001ALL;
    v15 = 0x80000001008DE6A0;
  }

  v37._countAndFlagsBits = v14;
  v37._object = v15;
  sub_1007A23D4(v37);

  v17 = *(v0 + OBJC_IVAR___BKRootBarItem_countryCode + 8);
  if (v17)
  {
    v18 = *(v0 + OBJC_IVAR___BKRootBarItem_countryCode);
    strcpy(v24, " countryCode=");
    HIWORD(v24[1]) = -4864;

    v38._countAndFlagsBits = v18;
    v38._object = v17;
    sub_1007A23D4(v38);

    v20 = v24[0];
    v19 = v24[1];
  }

  else
  {
    v20 = 0;
    v19 = 0xE000000000000000;
  }

  v24[0] = v7;
  v24[1] = v6;

  v39._countAndFlagsBits = v20;
  v39._object = v19;
  sub_1007A23D4(v39);

  if (*(v0 + OBJC_IVAR___BKRootBarItem_editNameOnSelect))
  {
    v21 = 0xD000000000000011;
  }

  else
  {
    v21 = 0;
  }

  if (*(v0 + OBJC_IVAR___BKRootBarItem_editNameOnSelect))
  {
    v22 = 0x80000001008DE680;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v40._countAndFlagsBits = v21;
  v40._object = v22;
  sub_1007A23D4(v40);

  v41._countAndFlagsBits = 62;
  v41._object = 0xE100000000000000;
  sub_1007A23D4(v41);

  return v24[0];
}

char *sub_10000B3D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&unk_100AE0B30, &qword_10081B480);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

unint64_t sub_10000B4E4()
{
  result = qword_100AEB190;
  if (!qword_100AEB190)
  {
    sub_1001F1234(&unk_100AD61F0, &qword_10080FEF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB190);
  }

  return result;
}

void sub_10000B548(id a1)
{
  kdebug_trace();
  +[AEAudiobookPlatformConfiguration configureForPlatform];

  kdebug_trace();
}

uint64_t sub_10000B614(uint64_t a1)
{
  v73 = sub_100798CE4();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10079A874();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10079A304();
  v76 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10079A0E4();
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100798DD4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B58, &qword_10082AC58);
  sub_100798D84();

  v10 = enum case for Scope.singleton(_:);
  v11 = *(v7 + 104);
  v88 = v7 + 104;
  v11(v9, enum case for Scope.singleton(_:), v6);
  sub_100798C44();

  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B60, &qword_10082AC60);
  sub_100798D84();

  v87 = v11;
  v11(v9, v10, v6);
  sub_100798C44();

  v89 = v12;
  v85 = v7 + 8;
  v12(v9, v6);
  v86 = a1;
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B68, &qword_10082AC68);
  sub_100798D84();

  v11(v9, v10, v6);
  sub_100798C44();

  v12(v9, v6);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B70, &qword_10082AC70);
  v75 = enum case for CollectionSource.mediaAPI(_:);
  v13 = v83;
  v74 = *(v83 + 104);
  v80 = (v83 + 104);
  v14 = v77;
  v15 = v78;
  v74(v77);
  v81 = sub_100013664(&qword_100AE6B78, 255, &type metadata accessor for CollectionSource, &protocol conformance descriptor for CollectionSource);
  sub_1007A2564();
  v16 = *(v13 + 8);
  v83 = v13 + 8;
  v79 = v16;
  v16(v14, v15);
  sub_100798D84();

  v84 = v10;
  v82 = v6;
  v17 = v87;
  v87(v9, v10, v6);
  sub_100798C44();

  v18 = v6;
  v19 = v89;
  v89(v9, v18);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B80, &qword_10082AC78);
  sub_1007A2384();
  sub_100798D84();

  v20 = v82;
  v17(v9, v10, v82);
  sub_100798C44();

  v19(v9, v20);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B88, &qword_10082AC80);
  v21 = v77;
  v22 = v78;
  v23 = v74;
  (v74)(v77, v75, v78);
  sub_1007A2564();
  v79(v21, v22);
  sub_100798D84();

  v24 = v84;
  v25 = v82;
  v87(v9, v84, v82);
  sub_100798C44();

  v89(v9, v25);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B90, &qword_10082AC88);
  v26 = v21;
  v27 = v21;
  v28 = v75;
  v29 = v78;
  (v23)(v27, v75, v78);
  sub_1007A2564();
  v79(v26, v29);
  sub_100798D84();

  v30 = v24;
  v31 = v82;
  v87(v9, v30, v82);
  sub_100798C44();

  v89(v9, v31);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6B98, &qword_10082AC90);
  v32 = v28;
  v33 = v74;
  (v74)(v26, v32, v29);
  sub_1007A2564();
  v34 = v79;
  v79(v26, v29);
  sub_100798D84();

  v87(v9, v84, v31);
  sub_100798C44();

  v89(v9, v31);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BA0, &qword_10082AC98);
  v35 = v77;
  (v33)(v77, v75, v29);
  sub_1007A2564();
  v34(v35, v29);
  sub_100798D84();

  v36 = v84;
  v37 = v82;
  v38 = v87;
  v87(v9, v84, v82);
  sub_100798C44();

  v39 = v89;
  v89(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BA8, &qword_10082ACA0);
  sub_100798D84();

  v38(v9, v36, v37);
  sub_100798C44();

  v39(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BB0, &qword_10082ACA8);
  v41 = v77;
  v40 = v78;
  (v74)(v77, enum case for CollectionSource.appleMediaDiscovery(_:), v78);
  sub_1007A2564();
  v79(v41, v40);
  sub_100798D84();

  v42 = v84;
  v38(v9, v84, v37);
  sub_100798C44();

  v43 = v89;
  v89(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BB8, &qword_10082ACB0);
  sub_100798D84();

  v38(v9, v42, v37);
  sub_100798C44();

  v43(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BC0, &qword_10082ACB8);
  sub_100798D84();

  v38(v9, v42, v37);
  sub_100798C44();

  v43(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BC8, &qword_10082ACC0);
  sub_100798D84();

  v38(v9, v42, v37);
  sub_100798C44();

  v43(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BD0, &qword_10082ACC8);
  sub_100798D84();

  v38(v9, v42, v37);
  sub_100798C44();

  v43(v9, v37);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6BD8, &qword_10082ACD0);
  sub_100798D84();

  v38(v9, v42, v37);
  sub_100798C44();

  v43(v9, v37);
  sub_100798D14();
  sub_100799B34();

  sub_100798D84();

  sub_100798D14();
  sub_10079A094();
  sub_100798D84();

  sub_100798D14();
  v90[0] = sub_10079A1D4();
  sub_1001F1160(&qword_100AE6BE0, &qword_10082ACD8);
  sub_1007A22E4();

  sub_100798D84();

  sub_100798D14();
  v90[0] = sub_10079A0F4();
  sub_1001F1160(&qword_100AE6BE8, &qword_10082ACE0);
  sub_1007A22E4();

  sub_100798D84();

  sub_100798D14();
  sub_1001F1160(&qword_100AE6BF0, &qword_10082ACE8);
  v44 = v76;
  v83 = *(v76 + 104);
  v45 = v66;
  v46 = v67;
  (v83)(v66, enum case for GenreRecommendationSource.appleMediaDiscovery(_:), v67);
  v81 = sub_100013664(&qword_100AE6BF8, 255, &type metadata accessor for GenreRecommendationSource, &protocol conformance descriptor for GenreRecommendationSource);
  sub_1007A2564();
  v47 = *(v44 + 8);
  v76 = v44 + 8;
  v80 = v47;
  v47(v45, v46);
  sub_100798D84();

  v48 = v82;
  v87(v9, v84, v82);
  sub_100798C44();

  v89(v9, v48);
  sub_100798D14();
  (v83)(v45, enum case for GenreRecommendationSource.onDevicePersonalization(_:), v46);
  sub_1007A2564();
  v80(v45, v46);
  sub_100798D84();

  v49 = v84;
  v50 = v87;
  v87(v9, v84, v48);
  sub_100798C44();

  v51 = v89;
  v89(v9, v48);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6C00, &qword_10082ACF0);
  sub_100798D84();

  v50(v9, v49, v48);
  sub_100798C44();

  v52 = v48;
  v51(v9, v48);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6C08, &qword_10082ACF8);
  v53 = v69;
  v54 = v68;
  v55 = v70;
  (*(v69 + 104))(v68, enum case for Scorer.appleMediaDiscovery(_:), v70);
  sub_100013664(&qword_100AE6C10, 255, &type metadata accessor for Scorer, &protocol conformance descriptor for Scorer);
  sub_1007A2564();
  (*(v53 + 8))(v54, v55);
  sub_100798D84();

  v56 = v84;
  v57 = v52;
  v58 = v52;
  v59 = v87;
  v87(v9, v84, v58);
  sub_100798C44();

  v60 = v89;
  v89(v9, v57);
  sub_100798D14();
  sub_100798FE4();
  sub_100798D84();

  sub_100798D14();
  sub_1001F1160(&qword_100AE6C18, &qword_10082AD00);
  sub_100798D84();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6C20, &unk_100822E78);
  sub_100798D84();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_1001F1160(&qword_100AE6C28, &unk_10082AD08);
  sub_100798D74();

  sub_100798D24();
  type metadata accessor for AccountAccessRequirement();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for ExperimentIDsCookieParser();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for GenreRecommendationManager();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for ExperimentIDsHeaderValueFormatter();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for PaidStorefrontAccessRequirement();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_1001F1160(&qword_100AE6C30, &qword_10082AD18);
  sub_100798D74();

  sub_100798D24();
  type metadata accessor for AMSEngagementService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for AMDBookScorer();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for AMDCollectionService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for AMDGenreRecommendationService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_10000A7C4(0, &qword_100AE6C38, JSACookieStorage_ptr);
  sub_100798D74();

  sub_100798D24();
  type metadata accessor for MediaAPIMetadataService(0);
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for MediaAPIBooksByAuthorsService(0);
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService(0);
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_10079A004();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_10000A7C4(0, &qword_100AE6C40, BUBag_ptr);
  sub_100798D74();

  sub_100798D24();
  type metadata accessor for ODPGenreRecommendationService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for MergedPersonalizationConfigurationService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for PersonalizationConfigurationService(0);
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  sub_10079E784();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for MediaAPICollectionService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for StoreBooksService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for EditionStringFlatteningService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for StoreBookRatingsService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for StoreBookTastesService();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for EngagementCollectorEventStore(0);
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for UnderThirteenAccessRequirement();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D24();
  type metadata accessor for UserPreferenceAccessRequirement();
  sub_100798D74();

  v59(v9, v56, v57);
  sub_100798C44();

  v60(v9, v57);
  sub_100798D34();
  sub_10000E3E8(v90, v90[3]);
  sub_1001F1160(&qword_100AE6C48, &qword_10082AD20);
  v61 = v72;
  v62 = v71;
  v63 = v73;
  (*(v72 + 104))(v71, enum case for CallbackScope.any(_:), v73);
  sub_100798D94();
  (*(v61 + 8))(v62, v63);
  return sub_1000074E0(v90);
}

unint64_t sub_10000DDCC()
{
  result = qword_100AEB0E8;
  if (!qword_100AEB0E8)
  {
    sub_100007E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB0E8);
  }

  return result;
}

void *sub_10000DE48(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1001F1160(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_10000E0AC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(void *)@<X5>, uint64_t *a5@<X8>)
{
  v9 = a2(0);
  a5[3] = v9;
  a5[4] = a3;
  v10 = objc_allocWithZone(v9);
  result = a4(a1);
  *a5 = result;
  return result;
}

uint64_t sub_10000E12C(uint64_t a1)
{
  result = sub_100798FE4();
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

uint64_t type metadata accessor for MediaAPIBooksByAuthorsService(uint64_t a1)
{
  result = qword_100AEFB98;
  if (!qword_100AEFB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E214(uint64_t a1)
{
  result = sub_100798FE4();
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

unint64_t sub_10000E2A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007A3694(*(v2 + 40));

  return sub_10000E2E8(a1, v4);
}

unint64_t sub_10000E2E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100028940(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1007A36A4();
      sub_10002899C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10000E3B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10000E3E8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for PersonalizationConfigurationService(uint64_t a1)
{
  result = qword_100AE07E8;
  if (!qword_100AE07E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10000E4C4()
{
  result = qword_100AD50A0;
  if (!qword_100AD50A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD50A0);
  }

  return result;
}

unint64_t sub_10000E53C(uint64_t a1, uint64_t a2)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v4 = sub_1007A3C44();

  return sub_100016CE8(a1, a2, v4);
}

uint64_t sub_10000E5D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001F1160(&qword_100ADAE68, &unk_100818EC0);
  v40 = v4;
  result = sub_1007A3914();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 56 * v24;
      if (v40)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 32);
        v44 = *(v28 + 48);
        v42 = v30;
        v43 = v31;
        v41 = v29;
      }

      else
      {
        sub_1000077D8(v28, &v41, &qword_100ADAE70, &unk_100832440);
      }

      sub_1007A3C04();
      _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
      result = sub_1007A3C44();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v41;
      v19 = v42;
      v20 = v43;
      *(v17 + 48) = v44;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t type metadata accessor for EngagementCollectorEventStore(uint64_t a1)
{
  result = qword_100AF4B08;
  if (!qword_100AF4B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id YearInReviewEligibilityService.init()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___BKYearInReviewEligibilityService__setupState;
  v9 = 0;
  sub_1001F1160(&qword_100AD1F38, &unk_100832450);
  swift_allocObject();
  *&v2[v5] = sub_100798B54();
  v6 = OBJC_IVAR___BKYearInReviewEligibilityService_setupPromise;
  *&v3[v6] = [objc_allocWithZone(AMSMutablePromise) init];
  *&v3[OBJC_IVAR___BKYearInReviewEligibilityService_eligibilityProvider] = 0;
  *&v3[OBJC_IVAR___BKYearInReviewEligibilityService_notificationScheduler] = 0;
  *&v3[OBJC_IVAR___BKYearInReviewEligibilityService_topPicksObserver] = 0;
  v8.receiver = v3;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "init");
}

void sub_10000EA78(id a1, SEL a2, int64_t a3)
{

  StartupTaskManager.startAllTasks(phase:)(a3);
}

void sub_10000ED28(id a1)
{
  v1 = objc_alloc_init(BKiAPController);
  v2 = qword_100AF76A8;
  qword_100AF76A8 = v1;
}

void sub_10000EE24(id a1)
{
  kdebug_trace();
  +[BKiAPController setup];

  kdebug_trace();
}

uint64_t sub_10000EE88()
{
  v0 = sub_100798DD4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100798D14();
  sub_1001F1160(&unk_100AEC7D0, &qword_10082AD30);
  sub_100798D74();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_100798C44();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6C80, &unk_10082AD38);
  sub_100798D74();

  v5(v3, v4, v0);
  sub_100798C44();

  v6(v3, v0);
  sub_100798D14();
  sub_1001F1160(&qword_100AE6C90, &qword_10082AD48);
  sub_100798D74();

  v5(v3, v4, v0);
  sub_100798C44();

  v6(v3, v0);
  sub_100798D14();
  sub_1001F1160(&unk_100AE6C70, &qword_10082AD28);
  sub_100798D74();

  v5(v3, v4, v0);
  v9[0] = v5;
  sub_100798C44();

  v6(v3, v0);
  sub_100798D14();
  type metadata accessor for PersonalizationEventDonor();
  sub_100798D74();

  v5(v3, v4, v0);
  sub_100798C44();

  v6(v3, v0);
  v7 = *(v9[1] + 16);
  sub_100798D24();
  sub_1001F1160(&unk_100AEC7E0, &qword_100833898);
  *(swift_allocObject() + 16) = v7;
  swift_unknownObjectRetain();
  sub_100798D74();

  (v9[0])(v3, v4, v0);
  sub_100798C44();

  return (v6)(v3, v0);
}

uint64_t sub_10000F32C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *_s5Books29ServiceCenterAppConfigurationC16serviceFactoriesSayAA03AnyB7Factory_pGvg_0()
{
  type metadata accessor for ReadingActivityServiceFactory();
  v0 = swift_allocObject();
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v0[5] = sub_100007E20();
  v0[6] = sub_10000DDCC();
  v0[2] = v2;
  v0[7] = [v1 standardUserDefaults];
  v3 = sub_10000DE24(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3[2];
  v4 = v3[3];
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v3 = sub_10000DE24((v4 > 1), v5 + 1, 1, v3);
  }

  v3[2] = v6;
  v7 = &v3[2 * v5];
  v7[4] = v0;
  v7[5] = &off_100A28F50;
  type metadata accessor for WidgetServiceFactory();
  v8 = swift_allocObject();
  v9 = v3[3];
  v10 = v5 + 2;
  if ((v5 + 2) > (v9 >> 1))
  {
    v21 = v8;
    v3 = sub_10000DE24((v9 > 1), v5 + 2, 1, v3);
    v8 = v21;
  }

  v3[2] = v10;
  v11 = &v3[2 * v6];
  v11[4] = v8;
  v11[5] = &off_100A2A160;
  type metadata accessor for YearInReviewEligibilityServiceFactory();
  v12 = swift_allocObject();
  v13 = v3[3];
  v14 = v5 + 3;
  if ((v5 + 3) > (v13 >> 1))
  {
    v22 = v12;
    v3 = sub_10000DE24((v13 > 1), v5 + 3, 1, v3);
    v12 = v22;
  }

  v3[2] = v14;
  v15 = &v3[2 * v10];
  v15[4] = v12;
  v15[5] = &off_100A0FF28;
  type metadata accessor for PriceTrackingServiceFactory();
  v16 = swift_allocObject();
  v17 = v3[3];
  v18 = v5 + 4;
  if ((v5 + 4) > (v17 >> 1))
  {
    v23 = v16;
    v3 = sub_10000DE24((v17 > 1), v18, 1, v3);
    v16 = v23;
  }

  v3[2] = v18;
  v19 = &v3[2 * v14];
  v19[4] = v16;
  v19[5] = &off_100A27D30;
  return v3;
}

uint64_t sub_10000F650(uint64_t a1)
{
  v2 = _s5Books29ServiceCenterAppConfigurationC16serviceFactoriesSayAA03AnyB7Factory_pGvg_0();
  v41 = v2[2];
  v42 = v2;
  if (!v41)
  {
  }

  v3 = 0;
  v39 = v2 + 4;
  v38 = xmmword_10080B690;
  v40 = OBJC_IVAR___BKServiceCenter_services;
  while (v3 < v42[2])
  {
    v43 = v3;
    v44 = *&v39[2 * v3];
    ObjectType = swift_getObjectType();
    v5 = *(*(&v44 + 1) + 8);
    swift_unknownObjectRetain();
    v5(v52, a1, ObjectType, *(&v44 + 1));
    sub_10000E3E8(v52, v52[3]);
    DynamicType = swift_getDynamicType();
    v7 = a1;
    v8 = v52[4];
    v9 = sub_1007A29A4();
    if (qword_100AD1378 != -1)
    {
      swift_once();
    }

    v10 = qword_100AD9010;
    sub_1001F1160(&unk_100AD5090, &unk_100815670);
    v11 = swift_allocObject();
    *(v11 + 16) = v38;
    v12 = *(v8 + 8);
    v13 = v12(DynamicType, v8);
    v15 = v14;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10000E4C4();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_10079AB44(v9, &_mh_execute_header, v10, "Registering service: %s", v38);

    v16 = v12(DynamicType, v8);
    v18 = v17;
    v49 = v44;
    sub_100009864(v52, v50);
    swift_beginAccess();
    v45 = v49;
    v46 = v50[0];
    v47 = v50[1];
    v48 = v51;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v7 + v40);
    *(v7 + v40) = 0x8000000000000000;
    v22 = sub_10000E53C(v16, v18);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    a1 = v7;
    if (v20[3] >= v25)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1002F243C();
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10000E5D8(v25, isUniquelyReferenced_nonNull_native);
      v27 = sub_10000E53C(v16, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v22 = v27;
      if (v26)
      {
LABEL_3:

        sub_10057FFF0(&v45, v20[7] + 56 * v22);
        goto LABEL_4;
      }
    }

    v20[(v22 >> 6) + 8] |= 1 << v22;
    v29 = (v20[6] + 16 * v22);
    *v29 = v16;
    v29[1] = v18;
    v30 = v20[7] + 56 * v22;
    v31 = v48;
    v33 = v46;
    v32 = v47;
    *v30 = v45;
    *(v30 + 16) = v33;
    *(v30 + 32) = v32;
    *(v30 + 48) = v31;
    v34 = v20[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_22;
    }

    v20[2] = v36;
LABEL_4:
    v3 = v43 + 1;
    *(a1 + v40) = v20;
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_1000074E0(v52);
    if (v41 == v43 + 1)
    {
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_1007A3B24();
  __break(1u);
  return result;
}

void ReadingActivityService.init(serviceCenter:)(void *a1, uint64_t a2)
{
  v193 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_1001F1160(&unk_100AD20D0, &unk_100837EE0);
  __chkstk_darwin(v2 - 8);
  v195 = v190 - v3;
  v4 = sub_100798694();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v190 - v9;
  sub_100798684();
  sub_100798664();
  v12 = v11;
  v13 = *(v5 + 8);
  v200 = v4;
  v198 = v13;
  v13(v10, v4);
  v207 = &type metadata for Double;
  v205 = v12;
  v14 = sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
  inited = swift_initStackObject();
  v201 = xmmword_10080B690;
  *(inited + 16) = xmmword_10080B690;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = 0xD000000000000020;
  *(inited + 80) = 0x80000001008C0070;
  sub_100013740(inited);
  swift_setDeallocating();
  sub_100007840(inited + 32, &unk_100AD1E50, &unk_10080B810);
  v16 = sub_10000E3E8(&v205, &type metadata for Double);
  v17 = *(&type metadata for Double - 1);
  v18 = __chkstk_darwin(v16);
  v20 = v190 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v18);
  v21 = sub_1007A3AA4();
  (*(v17 + 8))(v20, &type metadata for Double);
  sub_1000074E0(&v205);
  v22 = objc_allocWithZone(BSUIDynamicValue);
  isa = sub_1007A2024().super.isa;

  v24 = [v22 initWithValue:v21 options:isa];
  swift_unknownObjectRelease();

  if (!v24)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = v199;
  *&v199[OBJC_IVAR___BKReadingActivityService_dailyGoal] = v24;
  sub_100798684();
  v26 = sub_100798674();
  v198(v7, v200);
  v207 = &type metadata for Int;
  v205 = v26;
  v200 = v14;
  v27 = swift_initStackObject();
  *(v27 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v27 + 96) = &type metadata for String;
  *(v27 + 72) = 0xD000000000000028;
  *(v27 + 80) = 0x80000001008C00A0;
  sub_100013740(v27);
  swift_setDeallocating();
  sub_100007840(v27 + 32, &unk_100AD1E50, &unk_10080B810);
  v28 = v207;
  if (v207)
  {
    v29 = sub_10000E3E8(&v205, v207);
    v30 = *(v28 - 1);
    v31 = __chkstk_darwin(v29);
    v33 = v190 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v33, v31);
    v34 = sub_1007A3AA4();
    (*(v30 + 8))(v33, v28);
    sub_1000074E0(&v205);
  }

  else
  {
    v34 = 0;
  }

  v35 = objc_allocWithZone(BSUIDynamicValue);
  v36 = sub_1007A2024().super.isa;

  v37 = [v35 initWithValue:v34 options:v36];
  swift_unknownObjectRelease();

  if (!v37)
  {
    goto LABEL_44;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_booksFinishedGoal] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v201;
  v205 = 0x6D614E6775626564;
  v206 = 0xE900000000000065;
  sub_1007A36B4();
  *(v38 + 96) = &type metadata for String;
  *(v38 + 72) = 0xD000000000000025;
  *(v38 + 80) = 0x80000001008C00D0;
  sub_100013740(v38);
  swift_setDeallocating();
  sub_100007840(v38 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v39 = objc_allocWithZone(BSUIDynamicArray);
  v196 = sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
  v40 = sub_1007A25D4().super.isa;
  v41 = sub_1007A2024().super.isa;

  v42 = [v39 initWithArray:v40 options:v41];

  if (!v42)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssets] = v42;
  v194 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  v207 = v194;
  v205 = _swiftEmptyDictionarySingleton;
  v43 = swift_allocObject();
  *(v43 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v43 + 96) = &type metadata for String;
  *(v43 + 72) = 0xD000000000000029;
  *(v43 + 80) = 0x80000001008C0100;
  sub_100013740(v43);
  swift_setDeallocating();
  sub_100007840(v43 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v44 = v207;
  if (v207)
  {
    v45 = sub_10000E3E8(&v205, v207);
    v46 = *(v44 - 1);
    v47 = __chkstk_darwin(v45);
    v49 = v190 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49, v47);
    v50 = sub_1007A3AA4();
    (*(v46 + 8))(v49, v44);
    sub_1000074E0(&v205);
  }

  else
  {
    v50 = 0;
  }

  v51 = &BSUIAssetKeyIsFinished_ptr;
  v52 = objc_allocWithZone(BSUIDynamicValue);
  v53 = sub_1007A2024().super.isa;

  v54 = [v52 initWithValue:v50 options:v53];
  swift_unknownObjectRelease();

  if (!v54)
  {
    goto LABEL_46;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssetsData] = v54;
  v207 = &type metadata for Int;
  v205 = 0;
  v55 = swift_allocObject();
  *(v55 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v55 + 96) = &type metadata for String;
  *(v55 + 72) = 0xD000000000000028;
  *(v55 + 80) = 0x80000001008C0130;
  sub_100013740(v55);
  swift_setDeallocating();
  sub_100007840(v55 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v56 = v207;
  if (v207)
  {
    v57 = sub_10000E3E8(&v205, v207);
    v58 = *(v56 - 1);
    v59 = __chkstk_darwin(v57);
    v61 = v190 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v58 + 16))(v61, v59);
    v62 = sub_1007A3AA4();
    (*(v58 + 8))(v61, v56);
    v51 = &BSUIAssetKeyIsFinished_ptr;
    sub_1000074E0(&v205);
  }

  else
  {
    v62 = 0;
  }

  v63 = objc_allocWithZone(v51[41]);
  v64 = sub_1007A2024().super.isa;

  v65 = [v63 initWithValue:v62 options:v64];
  swift_unknownObjectRelease();

  if (!v65)
  {
    goto LABEL_47;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssetYear] = v65;
  v207 = &type metadata for Int;
  v205 = 0;
  v66 = swift_allocObject();
  *(v66 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v66 + 96) = &type metadata for String;
  *(v66 + 72) = 0xD000000000000030;
  *(v66 + 80) = 0x80000001008C0160;
  sub_100013740(v66);
  swift_setDeallocating();
  sub_100007840(v66 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v67 = v207;
  if (v207)
  {
    v68 = sub_10000E3E8(&v205, v207);
    v69 = *(v67 - 1);
    v70 = __chkstk_darwin(v68);
    v72 = v190 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v72, v70);
    v73 = sub_1007A3AA4();
    (*(v69 + 8))(v72, v67);
    v51 = &BSUIAssetKeyIsFinished_ptr;
    sub_1000074E0(&v205);
  }

  else
  {
    v73 = 0;
  }

  v74 = objc_allocWithZone(v51[41]);
  v75 = sub_1007A2024().super.isa;

  v76 = [v74 initWithValue:v73 options:v75];
  swift_unknownObjectRelease();

  if (!v76)
  {
    goto LABEL_48;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssetAllTimeCount] = v76;
  v207 = &type metadata for Int;
  v205 = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v77 + 96) = &type metadata for String;
  *(v77 + 72) = 0xD00000000000003ALL;
  *(v77 + 80) = 0x80000001008C01A0;
  sub_100013740(v77);
  swift_setDeallocating();
  sub_100007840(v77 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v78 = v207;
  if (v207)
  {
    v79 = sub_10000E3E8(&v205, v207);
    v80 = *(v78 - 1);
    v81 = __chkstk_darwin(v79);
    v83 = v190 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v80 + 16))(v83, v81);
    v84 = sub_1007A3AA4();
    (*(v80 + 8))(v83, v78);
    v51 = &BSUIAssetKeyIsFinished_ptr;
    sub_1000074E0(&v205);
  }

  else
  {
    v84 = 0;
  }

  v85 = objc_allocWithZone(v51[41]);
  v86 = sub_1007A2024().super.isa;

  v87 = [v85 initWithValue:v84 options:v86];
  swift_unknownObjectRelease();

  if (!v87)
  {
    goto LABEL_49;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssetsAfterCurrentYearCount] = v87;
  v207 = &type metadata for Int;
  v205 = 0;
  v88 = swift_allocObject();
  *(v88 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v88 + 96) = &type metadata for String;
  *(v88 + 72) = 0xD00000000000003CLL;
  *(v88 + 80) = 0x80000001008C01E0;
  sub_100013740(v88);
  swift_setDeallocating();
  sub_100007840(v88 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v89 = v207;
  if (v207)
  {
    v90 = sub_10000E3E8(&v205, v207);
    v91 = *(v89 - 1);
    v92 = __chkstk_darwin(v90);
    v94 = v190 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v91 + 16))(v94, v92);
    v95 = sub_1007A3AA4();
    (*(v91 + 8))(v94, v89);
    v51 = &BSUIAssetKeyIsFinished_ptr;
    sub_1000074E0(&v205);
  }

  else
  {
    v95 = 0;
  }

  v96 = objc_allocWithZone(v51[41]);
  v97 = sub_1007A2024().super.isa;

  v98 = [v96 initWithValue:v95 options:v97];
  swift_unknownObjectRelease();

  if (!v98)
  {
    goto LABEL_50;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_finishedAssetsPriorToCurrentYearCount] = v98;
  v207 = &type metadata for Bool;
  LOBYTE(v205) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v99 + 96) = &type metadata for String;
  *(v99 + 72) = 0xD00000000000002BLL;
  *(v99 + 80) = 0x80000001008C0220;
  sub_100013740(v99);
  swift_setDeallocating();
  sub_100007840(v99 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v100 = v207;
  if (v207)
  {
    v101 = sub_10000E3E8(&v205, v207);
    v102 = *(v100 - 1);
    v103 = __chkstk_darwin(v101);
    v105 = v190 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v102 + 16))(v105, v103);
    v106 = sub_1007A3AA4();
    v107 = v105;
    v51 = &BSUIAssetKeyIsFinished_ptr;
    (*(v102 + 8))(v107, v100);
    sub_1000074E0(&v205);
  }

  else
  {
    v106 = 0;
  }

  v108 = objc_allocWithZone(v51[41]);
  v109 = sub_1007A2024().super.isa;

  v110 = [v108 initWithValue:v106 options:v109];
  swift_unknownObjectRelease();

  if (!v110)
  {
    goto LABEL_51;
  }

  *&v25[OBJC_IVAR___BKReadingActivityService_isDailyGoalCompleted] = v110;
  v207 = &type metadata for Int;
  v205 = 0;
  v111 = swift_allocObject();
  *(v111 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v111 + 96) = &type metadata for String;
  *(v111 + 72) = 0xD000000000000027;
  *(v111 + 80) = 0x80000001008C0250;
  sub_100013740(v111);
  swift_setDeallocating();
  sub_100007840(v111 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v112 = sub_10000E3E8(&v205, &type metadata for Int);
  v113 = *(&type metadata for Int - 1);
  v114 = v113[8];
  v115 = __chkstk_darwin(v112);
  v191 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v116 = v190 - v191;
  v117 = v113 + 2;
  v198 = v113[2];
  (v198)(v190 - v191, v115);
  v118 = sub_1007A3AA4();
  v120 = v113[1];
  v119 = v113 + 1;
  v197 = v120;
  v120(v116, &type metadata for Int);
  sub_1000074E0(&v205);
  v121 = objc_allocWithZone(BSUIDynamicValue);
  v122 = sub_1007A2024().super.isa;

  v123 = [v121 initWithValue:v118 options:v122];
  swift_unknownObjectRelease();

  if (!v123)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  *&v199[OBJC_IVAR___BKReadingActivityService_readingTimeToday] = v123;
  v207 = &type metadata for Int;
  v205 = 0;
  v124 = swift_allocObject();
  *(v124 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v124 + 96) = &type metadata for String;
  *(v124 + 72) = 0xD000000000000030;
  *(v124 + 80) = 0x80000001008C0280;
  sub_100013740(v124);
  swift_setDeallocating();
  sub_100007840(v124 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v125 = sub_10000E3E8(&v205, &type metadata for Int);
  v190[1] = v114;
  v126 = __chkstk_darwin(v125);
  v127 = v190 - v191;
  v128 = v190 - v191;
  v191 = v117;
  (v198)(v128, v126);
  v129 = sub_1007A3AA4();
  v197(v127, &type metadata for Int);
  sub_1000074E0(&v205);
  v130 = objc_allocWithZone(BSUIDynamicValue);
  v131 = sub_1007A2024().super.isa;

  v132 = [v130 initWithValue:v129 options:v131];
  swift_unknownObjectRelease();

  if (!v132)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v190[0] = v119;
  v133 = v199;
  *&v199[OBJC_IVAR___BKReadingActivityService_readingIndicatorTimeToday] = v132;
  v134 = swift_allocObject();
  *(v134 + 16) = v201;
  v205 = 0x6D614E6775626564;
  v206 = 0xE900000000000065;
  sub_1007A36B4();
  *(v134 + 96) = &type metadata for String;
  *(v134 + 72) = 0xD000000000000025;
  *(v134 + 80) = 0x80000001008C02C0;
  sub_100013740(v134);
  swift_setDeallocating();
  sub_100007840(v134 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v135 = objc_allocWithZone(BSUIDynamicArray);
  v136 = sub_1007A25D4().super.isa;
  v137 = sub_1007A2024().super.isa;

  v138 = [v135 initWithArray:v136 options:v137];

  if (!v138)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  *&v133[OBJC_IVAR___BKReadingActivityService_readingHistory] = v138;
  v207 = &type metadata for Bool;
  LOBYTE(v205) = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v139 + 96) = &type metadata for String;
  *(v139 + 72) = 0xD00000000000002ELL;
  *(v139 + 80) = 0x80000001008C02F0;
  sub_100013740(v139);
  swift_setDeallocating();
  sub_100007840(v139 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v140 = sub_10000E3E8(&v205, &type metadata for Bool);
  v141 = *(&type metadata for Bool - 1);
  v142 = __chkstk_darwin(v140);
  v144 = v190 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v141 + 16))(v144, v142);
  v145 = sub_1007A3AA4();
  (*(v141 + 8))(v144, &type metadata for Bool);
  sub_1000074E0(&v205);
  v146 = objc_allocWithZone(BSUIDynamicValue);
  v147 = sub_1007A2024().super.isa;

  v148 = [v146 initWithValue:v145 options:v147];
  swift_unknownObjectRelease();

  if (!v148)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  *&v133[OBJC_IVAR___BKReadingActivityService_didSeeWelcomeExperience] = v148;
  v149 = v194;
  v207 = v194;
  v205 = _swiftEmptyDictionarySingleton;
  v150 = swift_allocObject();
  *(v150 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v150 + 96) = &type metadata for String;
  *(v150 + 72) = 0xD00000000000002ELL;
  *(v150 + 80) = 0x80000001008C0320;
  sub_100013740(v150);
  swift_setDeallocating();
  sub_100007840(v150 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  if (v149)
  {
    v151 = sub_10000E3E8(&v205, v149);
    v152 = *(v149 - 8);
    v153 = __chkstk_darwin(v151);
    v155 = v190 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v152 + 16))(v155, v153);
    v156 = sub_1007A3AA4();
    (*(v152 + 8))(v155, v149);
    sub_1000074E0(&v205);
  }

  else
  {
    v156 = 0;
  }

  v157 = objc_allocWithZone(BSUIDynamicValue);
  v158 = sub_1007A2024().super.isa;

  v159 = [v157 initWithValue:v156 options:v158];
  swift_unknownObjectRelease();

  if (!v159)
  {
    goto LABEL_56;
  }

  *&v133[OBJC_IVAR___BKReadingActivityService_allTimeRecordStreakData] = v159;
  v160 = OBJC_IVAR___BKReadingActivityService_readingHistoryPublisher;
  v161 = sub_100798774();
  (*(*(v161 - 8) + 56))(v195, 1, 1, v161);
  sub_1001F1160(&unk_100AEF1C0, &unk_10080B8A0);
  swift_allocObject();
  *&v133[v160] = sub_10079B924();
  v162 = swift_allocObject();
  *(v162 + 16) = v201;
  v205 = 0x6D614E6775626564;
  v206 = 0xE900000000000065;
  sub_1007A36B4();
  *(v162 + 96) = &type metadata for String;
  *(v162 + 72) = 0xD000000000000023;
  *(v162 + 80) = 0x80000001008C0350;
  sub_100013740(v162);
  swift_setDeallocating();
  sub_100007840(v162 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v163 = objc_allocWithZone(BSUIDynamicValue);
  v164 = sub_1007A2024().super.isa;

  v165 = [v163 initWithValue:0 options:v164];

  if (!v165)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  *&v133[OBJC_IVAR___BKReadingActivityService_booksPerYear] = v165;
  v166 = swift_allocObject();
  *(v166 + 16) = v201;
  v205 = 0x6D614E6775626564;
  v206 = 0xE900000000000065;
  sub_1007A36B4();
  *(v166 + 96) = &type metadata for String;
  *(v166 + 72) = 0xD000000000000027;
  *(v166 + 80) = 0x80000001008C0380;
  sub_100013740(v166);
  swift_setDeallocating();
  sub_100007840(v166 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v167 = objc_allocWithZone(BSUIDynamicValue);
  v168 = sub_1007A2024().super.isa;

  v169 = [v167 initWithValue:0 options:v168];

  if (!v169)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  *&v133[OBJC_IVAR___BKReadingActivityService_timeReadPerMonth] = v169;
  v207 = &type metadata for Int;
  v205 = 0;
  v170 = swift_allocObject();
  *(v170 + 16) = v201;
  v203 = 0x6D614E6775626564;
  v204 = 0xE900000000000065;
  sub_1007A36B4();
  *(v170 + 96) = &type metadata for String;
  *(v170 + 72) = 0xD00000000000002FLL;
  *(v170 + 80) = 0x80000001008C03B0;
  sub_100013740(v170);
  swift_setDeallocating();
  sub_100007840(v170 + 32, &unk_100AD1E50, &unk_10080B810);
  swift_deallocClassInstance();
  v171 = sub_10000E3E8(&v205, &type metadata for Int);
  v172 = __chkstk_darwin(v171);
  v174 = v190 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v198)(v174, v172);
  v175 = sub_1007A3AA4();
  v197(v174, &type metadata for Int);
  sub_1000074E0(&v205);
  v176 = objc_allocWithZone(BSUIDynamicValue);
  v177 = sub_1007A2024().super.isa;

  v178 = [v176 initWithValue:v175 options:v177];
  swift_unknownObjectRelease();

  if (v178)
  {
    *&v133[OBJC_IVAR___BKReadingActivityService_finishedAssetCountByYear] = v178;
    v179 = OBJC_IVAR___BKReadingActivityService__setupState;
    LOBYTE(v205) = 0;
    sub_1001F1160(&qword_100AD1F38, &unk_100832450);
    swift_allocObject();
    *&v133[v179] = sub_100798B54();
    *&v133[OBJC_IVAR___BKReadingActivityService__currentActiveAchievementSheetKind] = 0;
    v133[OBJC_IVAR___BKReadingActivityService_enableCloudSync] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_clearDataObservation] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_welcomeTimers] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_readingTimeTodayDynamicProgress] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_libraryManager] = 0;
    v180 = &v133[OBJC_IVAR___BKReadingActivityService_goalsModule];
    *v180 = 0u;
    v180[1] = 0u;
    v180[2] = 0u;
    v180[3] = 0u;
    v180[4] = 0u;
    v181 = &v133[OBJC_IVAR___BKReadingActivityService_booksFinishedModule];
    *v181 = 0u;
    *(v181 + 1) = 0u;
    *(v181 + 2) = 0u;
    *(v181 + 3) = 0u;
    *(v181 + 4) = 0u;
    *(v181 + 5) = 0u;
    *(v181 + 6) = 0u;
    *(v181 + 14) = 0;
    v182 = &v133[OBJC_IVAR___BKReadingActivityService_historyModule];
    *v182 = 0u;
    *(v182 + 1) = 0u;
    *(v182 + 2) = 0u;
    *(v182 + 3) = 0u;
    *(v182 + 4) = 0u;
    *(v182 + 5) = 0u;
    *(v182 + 6) = 0u;
    *(v182 + 14) = 0;
    v183 = &v133[OBJC_IVAR___BKReadingActivityService_sessionEventProvider];
    *v183 = 0u;
    *(v183 + 1) = 0u;
    *(v183 + 4) = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_achievementsController] = 0;
    v184 = &v133[OBJC_IVAR___BKReadingActivityService_cloudSyncStateHandler];
    *v184 = 0;
    v184[1] = 0;
    v185 = &v133[OBJC_IVAR___BKReadingActivityService_notificationSuppressingEventHandler];
    *v185 = 0;
    v185[1] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_readingActivityDonor] = 0;
    *&v133[OBJC_IVAR___BKReadingActivityService_engagementManager] = 0;
    v202.receiver = v133;
    v202.super_class = ObjectType;
    v186 = objc_msgSendSuper2(&v202, "init");
    v187 = objc_opt_self();
    v188 = v186;
    v189 = [v187 defaultCenter];
    [v189 addObserver:v188 selector:"handleCloudChangeNotification:" name:BCCloudGlobalMetadataManagerChangedNotification object:0];

    return;
  }

LABEL_59:
  __break(1u);
}

void sub_100011DD4(uint64_t a1)
{
  if (!qword_100AE07F8)
  {
    sub_100799FB4();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE07F8);
    }
  }
}

void sub_100011E2C(uint64_t a1)
{
  sub_100011DD4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id WidgetService.init(serviceCenter:)(uint64_t a1)
{
  v3 = OBJC_IVAR___BKWidgetService__setupState;
  v7 = 0;
  sub_1001F1160(&qword_100AD1F38, &unk_100832450);
  swift_allocObject();
  *&v1[v3] = sub_100798B54();
  *&v1[OBJC_IVAR___BKWidgetService_cancellables] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR___BKWidgetService_libraryManager] = 0;
  *&v1[OBJC_IVAR___BKWidgetService_widgetInfoManager] = 0;
  v4 = &v1[OBJC_IVAR___BKWidgetService_onWidgetConfigurationChangeCallback];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___BKWidgetService_serviceCenter] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for WidgetService();
  return objc_msgSendSuper2(&v6, "init");
}

id PriceTrackingService.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR___BKPriceTrackingService__bridge];
  *v4 = 0x656764697262;
  *(v4 + 1) = 0xE600000000000000;
  *(v4 + 2) = 0;
  v5 = &v2[OBJC_IVAR___BKPriceTrackingService__priceTracker];
  strcpy(&v2[OBJC_IVAR___BKPriceTrackingService__priceTracker], "priceTracker");
  v5[13] = 0;
  *(v5 + 7) = -5120;
  *(v5 + 2) = 0;
  v6 = &v2[OBJC_IVAR___BKPriceTrackingService__addToWTRDelegate];
  *v6 = 0xD000000000000010;
  *(v6 + 1) = 0x80000001008C0430;
  *(v6 + 2) = 0;
  v7 = &v2[OBJC_IVAR___BKPriceTrackingService__stateChanges];
  strcpy(&v2[OBJC_IVAR___BKPriceTrackingService__stateChanges], "stateChanges");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  *(v7 + 2) = 0;
  v8 = OBJC_IVAR___BKPriceTrackingService_mutableSetupState;
  v11 = 0;
  sub_1001F1160(&qword_100AD1F38, &unk_100832450);
  swift_allocObject();
  *&v2[v8] = sub_100798B54();
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "init");
}

void sub_100012208(uint64_t a1)
{
  kdebug_trace();
  v3 = objc_alloc_init(BKServiceCenterAppConfiguration);
  v2 = [[BKServiceCenter alloc] initWithAppConfiguration:v3];
  [*(a1 + 32) setServiceCenter:v2];

  kdebug_trace();
}

id sub_1000122C0(uint64_t a1)
{
  if (qword_100AF7878 != -1)
  {
    sub_100012304();
  }

  v2 = qword_100AF7870;

  return v2;
}

void sub_100012318(id a1)
{
  v1 = os_log_create("com.apple.iBooks", "BKAppDelegate");
  v2 = qword_100AF7870;
  qword_100AF7870 = v1;
}

Swift::Void __swiftcall BKAppDelegate.registerAppIntentsDependencies()()
{
  sub_100795C54();
  v1 = [v0 sceneManager];
  [v0 appLaunchCoordinator];
  sub_100012848();
  sub_100795C44();
  sub_100795B74();
  sub_100795B64();
  v2 = [v0 sceneManager];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  sub_1001F1160(&qword_100AF3758, &qword_100840178);
  sub_100795B54();

  sub_100007840(&v17, &unk_100AEEF50, &unk_100837C70);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *(swift_allocObject() + 16) = v0;
  sub_10001292C();
  v4 = v0;
  sub_100795B54();

  sub_100007840(&v17, &unk_100AEEF50, &unk_100837C70);
  v5 = [v4 menuController];
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for MenuController();
  v6 = v5;
  sub_100795B54();

  sub_100007840(&v17, &unk_100AEEF50, &unk_100837C70);
  sub_1000129AC([v4 appLaunchCoordinator], objc_msgSend(v4, "sceneManager"), &v17);
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v7 = v17;
  v8 = v18;
  v20 = v19;
  v21 = *(&v18 + 1);
  v9 = swift_allocObject();
  v10 = v18;
  *(v9 + 16) = v17;
  *(v9 + 32) = v10;
  *(v9 + 48) = v19;
  v11 = v7;
  swift_unknownObjectRetain();
  v12 = v8;
  sub_100012ACC(&v21, v13);
  sub_100012ACC(&v20, v13);
  sub_100795B54();

  sub_100007840(&v14, &unk_100AEEF50, &unk_100837C70);
  sub_1007A1774();
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  sub_100795B54();

  swift_unknownObjectRelease();

  sub_100007840(&v21, &qword_100AE6A50, &qword_10082AB30);
  sub_100007840(&v20, &qword_100AE6A50, &qword_10082AB30);

  sub_100007840(&v14, &unk_100AEEF50, &unk_100837C70);
}

uint64_t sub_1000127A0()
{

  return swift_deallocObject();
}

uint64_t sub_1000127D8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_100012848()
{
  result = qword_100AF3750;
  if (!qword_100AF3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3750);
  }

  return result;
}

uint64_t sub_1000128BC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10001292C()
{
  result = qword_100AF0348;
  if (!qword_100AF0348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF0348);
  }

  return result;
}

id sub_1000129AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100811370;
  *(v6 + 32) = [objc_allocWithZone(NSNumber) initWithShort:1];
  *(v6 + 40) = [objc_allocWithZone(NSNumber) initWithShort:4];
  *(v6 + 48) = [objc_allocWithZone(NSNumber) initWithShort:3];
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100811390;
  *(v7 + 32) = [objc_allocWithZone(NSNumber) initWithShort:6];
  result = [objc_allocWithZone(NSUndoManager) init];
  *a3 = result;
  a3[1] = a1;
  a3[2] = a2;
  a3[3] = v6;
  a3[4] = v7;
  return result;
}

uint64_t sub_100012ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE6A50, &qword_10082AB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100012CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100012CF4(uint64_t a1)
{
  kdebug_trace();
  v2 = +[AEAnnotationProvider sharedInstance];
  [*(a1 + 32) setSharedAnnotationProvider:v2];

  v3 = [*(a1 + 32) sharedAnnotationProvider];
  [v3 setDelegate:*(a1 + 32)];

  return kdebug_trace();
}

uint64_t sub_100012E5C(uint64_t a1)
{
  kdebug_trace();
  v2 = objc_alloc_init(BKLibraryOperationObserver);
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  return kdebug_trace();
}

id sub_100012EEC(unint64_t a1)
{
  v2 = +[NSMutableArray array];
  if (a1)
  {
    v3 = 0;
    do
    {
      if (a1)
      {
        v4 = sub_100024BF8(v3);
        v5 = [v4 substringFromIndex:20];
        v6 = v5;
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v8 = [NSNumber numberWithUnsignedInteger:v3];
          v7 = [v8 stringValue];
        }

        [v2 addObject:v7];
      }

      ++v3;
      v9 = a1 >= 2;
      a1 >>= 1;
    }

    while (v9);
  }

  if ([v2 count])
  {
    v10 = [v2 componentsJoinedByString:@" | "];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_100013058()
{
  result = [objc_allocWithZone(type metadata accessor for LibraryCollectionsService(0)) init];
  qword_100B233E8 = result;
  return result;
}

void sub_10001308C(uint64_t a1)
{
  if (!qword_100AE5780)
  {
    sub_1001F1234(&qword_100AE5788, &qword_1008289C0);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE5780);
    }
  }
}

id sub_1000130F0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v24 = sub_1001F1160(&qword_100AE5850, &unk_100828B08);
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v24 - v4;
  v6 = sub_1001F1160(&qword_100ADFAB0, &qword_10081FCC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC5Books25LibraryCollectionsService__defaultCollections;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AE5788, &qword_1008289C0);
  sub_10079B964();
  v11 = *(v7 + 32);
  v11(&v2[v10], v9, v6);
  v12 = OBJC_IVAR____TtC5Books25LibraryCollectionsService__userCollections;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10079B964();
  v11(&v2[v12], v9, v6);
  v13 = OBJC_IVAR____TtC5Books25LibraryCollectionsService__state;
  LOBYTE(aBlock[0]) = 0;
  sub_10079B964();
  (*(v3 + 32))(&v2[v13], v5, v24);
  *&v2[OBJC_IVAR____TtC5Books25LibraryCollectionsService_defaultCollectionsFRC] = 0;
  *&v2[OBJC_IVAR____TtC5Books25LibraryCollectionsService_userCollectionsFRC] = 0;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 delegate];
  v18 = [v17 appLaunchCoordinator];

  v19 = sub_1007A2214();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  aBlock[4] = sub_10048AB74;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B6B0;
  aBlock[3] = &unk_100A1E2A8;
  v21 = _Block_copy(aBlock);
  v22 = v16;

  [v18 appLaunchCoordinatorOnConditionMask:65 blockID:v19 performBlock:v21];
  swift_unknownObjectRelease();

  _Block_release(v21);
  return v22;
}

uint64_t sub_100013474()
{

  return swift_deallocObject();
}

id sub_100013574(void *a1, char *a2)
{
  ObjectType = swift_getObjectType();
  *&a2[OBJC_IVAR___BKServiceCenter____lazy_storage___serviceQueue] = 0;
  *&a2[OBJC_IVAR___BKServiceCenter____lazy_storage___group] = 0;
  *&a2[OBJC_IVAR___BKServiceCenter_services] = _swiftEmptyDictionarySingleton;
  v5 = OBJC_IVAR___BKServiceCenter__setupState;
  v10 = 0;
  sub_1001F1160(&qword_100AD1F38, &unk_100832450);
  swift_allocObject();
  *&a2[v5] = sub_100798B54();
  v9.receiver = a2;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "init");
  v7 = a1;
  sub_10000F650(v6);

  return v6;
}

uint64_t sub_100013664(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for MediaAPIMetadataService(uint64_t a1)
{
  result = qword_100AEE488;
  if (!qword_100AEE488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100013740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&qword_100AD3C30, &unk_100818E50);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, v13, &unk_100AD1E50, &unk_10080B810);
      result = sub_10000E2A4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100019288(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_10001389C()
{
  result = qword_100AD20A0;
  if (!qword_100AD20A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD20A0);
  }

  return result;
}

uint64_t sub_10001390C()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100AD9010 = result;
  return result;
}

void sub_10001399C(uint64_t a1)
{
  if (!qword_100ADD320)
  {
    sub_100796AD4();
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADD320);
    }
  }
}

void sub_1000139F4(uint64_t a1)
{
  sub_10001399C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100013A94@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v5 = a1(0);
  a3[3] = v5;
  a3[4] = a2;
  result = [objc_allocWithZone(v5) init];
  *a3 = result;
  return result;
}

uint64_t sub_100013ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AEB460, &unk_100832600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t StartupTaskManager.startAllTasks(phase:)(unint64_t a1)
{
  v2 = sub_100798DA4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >= 3)
  {
    v8[2] = 0;
    v8[3] = 0xE000000000000000;
    sub_1007A3744(48);
    v9._object = 0x80000001008CBB10;
    v9._countAndFlagsBits = 0xD00000000000002ELL;
    sub_1007A23D4(v9);
    v8[1] = a1;
    sub_1007A3894();
    result = sub_1007A38A4();
    __break(1u);
  }

  else
  {
    (*(v3 + 104))(v6, **(&off_100A16410 + a1), v2, v4);
    sub_100798D54();
    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

void sub_100013D38(id a1)
{
  kdebug_trace();
  v1 = +[NSFileManager defaultManager];
  v2 = +[BLLockFile iTunesSyncLockFilePath];
  v3 = [v2 stringByDeletingLastPathComponent];
  v4 = 0;
  [v1 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v4];

  kdebug_trace();
}

uint64_t sub_100013E70(uint64_t a1)
{
  kdebug_trace();
  v2 = [*(a1 + 32) sceneManager];
  v3 = [v2 newShowURLTransactionWithOriginatingSceneController:0 targetSceneDescriptor:0];
  v4 = [*(a1 + 32) sceneManager];
  [v4 setInitialUserTransaction:v3];

  return kdebug_trace();
}

uint64_t sub_100013FC0(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) q_setupLibrary];

  return kdebug_trace();
}

void sub_10001402C(uint64_t a1)
{
  v2 = sub_1000122C0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Began setting up library", buf, 2u);
  }

  kdebug_trace();
  v3 = BCSignpostLibraryDataSource();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  spid = v4;
  v191 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Asset Metadata Cache", "", buf, 2u);
  }

  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v9 = *(v8 + 32);
  *(v8 + 32) = v7;

  v10 = v6;
  v11 = v10;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v13 = v11;
  }

  else
  {
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "Asset Metadata Cache", "", buf, 2u);
    }

    v12 = v11;
    if (os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Cover Image Helper", "", buf, 2u);
    }
  }

  v14 = [BKAssetCoverImageHelper alloc];
  v15 = +[QLThumbnailGenerator sharedGenerator];
  v16 = +[AEPluginRegistry sharedInstance];
  v17 = [(BKAssetCoverImageHelper *)v14 initWithThumbnailGenerator:v15 pluginRegistry:v16];
  v18 = *(a1 + 32);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = v11;
  v21 = v20;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v23 = v21;
  }

  else
  {
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_END, spid, "Cover Image Helper", "", buf, 2u);
    }

    v22 = v21;
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BLDownload", "", buf, 2u);
    }
  }

  v189 = objc_alloc_init(BKLibraryDataSourceBLDownload);
  v24 = v21;
  v25 = v24;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v27 = v25;
  }

  else
  {
    if (os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_INTERVAL_END, spid, "BLDownload", "", buf, 2u);
    }

    v26 = v25;
    if (os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Air Traffic", "", buf, 2u);
    }
  }

  v187 = objc_opt_new();
  [*(a1 + 32) setAirTrafficController:v187];
  v28 = v25;
  v29 = v28;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v31 = v29;
  }

  else
  {
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_END, spid, "Air Traffic", "", buf, 2u);
    }

    v30 = v29;
    if (os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Cloud Audiobooks", "", buf, 2u);
    }
  }

  v185 = +[BKLibraryDataSourceMediaLibraryCloud cloudAudiobooksDataSource];
  v32 = v29;
  v33 = v32;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v35 = v33;
  }

  else
  {
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, spid, "Cloud Audiobooks", "", buf, 2u);
    }

    v34 = v33;
    if (os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Local Audiobooks", "", buf, 2u);
    }
  }

  v181 = +[BKLibraryDataSourceMediaLibraryLocal localAudiobooksDataSource];
  v36 = v33;
  v37 = v36;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v39 = v37;
  }

  else
  {
    if (os_signpost_enabled(v36))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v37, OS_SIGNPOST_INTERVAL_END, spid, "Local Audiobooks", "", buf, 2u);
    }

    v38 = v37;
    if (os_signpost_enabled(v38))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Managed", "", buf, 2u);
    }
  }

  v40 = [*(a1 + 32) assetMetadataCache];
  v41 = [*(a1 + 32) coverImageHelper];
  v42 = [*(a1 + 32) assetMetadataCache];
  v180 = [BKLibraryDataSourcePlist managedBooksPlistDataSourceWithAssetMetadataProvider:v40 coverImageHelper:v41 assetMetadataCache:v42];

  v43 = v37;
  v44 = v43;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v46 = v44;
  }

  else
  {
    if (os_signpost_enabled(v43))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_INTERVAL_END, spid, "Managed", "", buf, 2u);
    }

    v45 = v44;
    if (os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v45, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Untethered", "", buf, 2u);
    }
  }

  v47 = [*(a1 + 32) assetMetadataCache];
  v48 = [*(a1 + 32) coverImageHelper];
  v49 = [*(a1 + 32) assetMetadataCache];
  v50 = [BKLibraryDataSourcePlistUntetheredBooks untetheredBooksPlistDataSourceWithAssetMetadataProvider:v47 coverImageHelper:v48 assetMetadataCache:v49];

  [v50 setDidWritePlistHandler:&stru_100A0AE18];
  objc_storeStrong((*(a1 + 32) + 232), v50);
  v51 = v44;
  v52 = v51;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v54 = v52;
  }

  else
  {
    if (os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v52, OS_SIGNPOST_INTERVAL_END, spid, "Untethered", "", buf, 2u);
    }

    v53 = v52;
    if (os_signpost_enabled(v53))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v53, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Importing", "", buf, 2u);
    }
  }

  v55 = [BKLibraryDataSourcePlistImporting alloc];
  v56 = [*(a1 + 32) assetMetadataCache];
  v188 = [(BKLibraryDataSourcePlistImporting *)v55 initWithMetadataCache:v56 importingDelegate:v50];

  [(BKLibraryDataSourcePlistImporting *)v188 setPlistWriter:v50];
  v212[0] = _NSConcreteStackBlock;
  v212[1] = 3221225472;
  v212[2] = sub_1001C7A00;
  v212[3] = &unk_100A033C8;
  v57 = v50;
  v213 = v57;
  [(BKLibraryDataSourcePlistImporting *)v188 setReloadCounterpartHandler:v212];
  if (![(BKLibraryDataSourcePlistImporting *)v188 hasCleanedUpImportedFiles])
  {
    v58 = &_dispatch_main_q;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001C7A08;
    block[3] = &unk_100A03440;
    block[4] = *(a1 + 32);
    v211 = v188;
    dispatch_async(&_dispatch_main_q, block);
  }

  v59 = v52;
  v60 = v59;
  if (v191 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v62 = v60;
  }

  else
  {
    if (os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v60, OS_SIGNPOST_INTERVAL_END, spid, "Importing", "", buf, 2u);
    }

    v61 = v60;
    if (os_signpost_enabled(v61))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Sample", "", buf, 2u);
    }
  }

  v63 = [*(a1 + 32) assetMetadataCache];
  v64 = [*(a1 + 32) coverImageHelper];
  v65 = [*(a1 + 32) assetMetadataCache];
  v66 = [BKLibraryDataSourcePlist sampleBooksPlistDataSourceWithAssetMetadataProvider:v63 coverImageHelper:v64 assetMetadataCache:v65];

  [v66 setDidWritePlistHandler:&stru_100A0AE18];
  v207[0] = _NSConcreteStackBlock;
  v207[1] = 3221225472;
  v207[2] = sub_1001C7AB8;
  v207[3] = &unk_100A0AE40;
  v67 = v57;
  v208 = v67;
  v68 = v66;
  v209 = v68;
  [(BKLibraryDataSourceBLDownload *)v189 setGenerationChangeHandler:v207];
  v69 = v60;
  v70 = v69;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v72 = v70;
  }

  else
  {
    if (os_signpost_enabled(v69))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v70, OS_SIGNPOST_INTERVAL_END, spid, "Sample", "", buf, 2u);
    }

    v71 = v70;
    if (os_signpost_enabled(v71))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v71, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Stashed Sample", "", buf, 2u);
    }
  }

  v73 = [*(a1 + 32) assetMetadataCache];
  v74 = [*(a1 + 32) coverImageHelper];
  v75 = [*(a1 + 32) assetMetadataCache];
  v183 = [BKLibraryDataSourcePlist stashedSampleBooksPlistDataSourceWithAssetMetadataProvider:v73 coverImageHelper:v74 assetMetadataCache:v75];

  v76 = v70;
  v77 = v76;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v79 = v77;
  }

  else
  {
    if (os_signpost_enabled(v76))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v77, OS_SIGNPOST_INTERVAL_END, spid, "Stashed Sample", "", buf, 2u);
    }

    v78 = v77;
    if (os_signpost_enabled(v78))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_BEGIN, spid, "iTunes Synced", "", buf, 2u);
    }
  }

  v80 = [*(a1 + 32) assetMetadataCache];
  v81 = [*(a1 + 32) coverImageHelper];
  v82 = [*(a1 + 32) assetMetadataCache];
  v83 = [BKLibraryDataSourcePlist iTunesSyncedBooksPlistDataSourceWithAssetMetadataProvider:v80 coverImageHelper:v81 assetMetadataCache:v82];

  [v83 setDidWritePlistHandler:&stru_100A0AE18];
  v84 = v77;
  v85 = v84;
  if (v191 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v84))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v85, OS_SIGNPOST_INTERVAL_END, spid, "iTunes Synced", "", buf, 2u);
  }

  [(BKLibraryDataSourceBLDownload *)v189 setITunesSyncedBooksPlistCleaner:v83];
  v202[0] = _NSConcreteStackBlock;
  v202[1] = 3221225472;
  v202[2] = sub_1001C7B00;
  v202[3] = &unk_100A03C78;
  v86 = v67;
  v203 = v86;
  v87 = v68;
  v204 = v87;
  v179 = v183;
  v205 = v179;
  v88 = v83;
  v206 = v88;
  [(BKLibraryDataSourceBLDownload *)v189 setReloadCounterpartHandler:v202];
  v201[0] = _NSConcreteStackBlock;
  v201[1] = 3221225472;
  v201[2] = sub_1001C7B4C;
  v201[3] = &unk_100A075B0;
  v201[4] = *(a1 + 32);
  [(BKLibraryDataSourceBLDownload *)v189 setDidLoadSupplementalAssetHandler:v201];
  v217[0] = v86;
  v217[1] = v88;
  v89 = [NSArray arrayWithObjects:v217 count:2];
  [(BKLibraryDataSourceBLDownload *)v189 setRestoreControllers:v89];

  objc_initWeak(&location, *(a1 + 32));
  v195[0] = _NSConcreteStackBlock;
  v195[1] = 3221225472;
  v195[2] = sub_1001C7B94;
  v195[3] = &unk_100A0AE68;
  v182 = v88;
  v196 = v182;
  v90 = v86;
  v197 = v90;
  v178 = v87;
  v198 = v178;
  objc_copyWeak(&v199, &location);
  [v187 setDataSourceAirTrafficEndedHandler:v195];
  v91 = v85;
  v92 = v91;
  if (v191 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v91))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v92, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Jalisco Purchases", "", buf, 2u);
  }

  v184 = objc_opt_new();
  v93 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v216 = v184;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing jaliscoPurchasesDataSource %@", buf, 0xCu);
  }

  [v184 setPlistWriter:v182];
  v94 = v92;
  v95 = v94;
  if (v191 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v94))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v95, OS_SIGNPOST_INTERVAL_END, spid, "Jalisco Purchases", "", buf, 2u);
  }

  v186 = v185;
  v96 = [[BKBookletMigrationManager alloc] initWithPurchaseItemMigrationController:v186];
  [*(a1 + 32) setBookletMigrationManager:v96];

  v97 = v95;
  v98 = v97;
  if (v191 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v97))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v98, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Ubiquity", "", buf, 2u);
  }

  v99 = [BKLibraryDataSourceUbiquityiOS alloc];
  v100 = [*(a1 + 32) ubiquityStatusMonitor];
  v101 = [*(a1 + 32) assetMetadataCache];
  v102 = [*(a1 + 32) coverImageHelper];
  v103 = [(BKLibraryDataSourceUbiquityiOS *)v99 initWithUbiquityStatusMonitor:v100 assetMetadataCache:v101 coverImageHelper:v102 imageSource:0];

  objc_storeStrong((*(a1 + 32) + 240), v103);
  v104 = v98;
  v105 = v104;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v107 = v105;
  }

  else
  {
    if (os_signpost_enabled(v104))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v105, OS_SIGNPOST_INTERVAL_END, spid, "Ubiquity", "", buf, 2u);
    }

    v106 = v105;
    if (os_signpost_enabled(v106))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v106, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Ubiquitous Documents Controller", "", buf, 2u);
    }
  }

  v108 = [BKUbiquitousDocumentsController alloc];
  v109 = [*(a1 + 32) ubiquityStatusMonitor];
  v110 = [(BKUbiquitousDocumentsController *)v108 initWithUbiquityStatusMonitor:v109 ubiquitousBooksPlistHost:v103 ubiquityEligibleBooksProvider:v90];
  [*(a1 + 32) setUbiquitousDocumentsController:v110];

  v111 = +[UIApplication nonisolatedSharedApplication];
  v112 = [*(a1 + 32) ubiquitousDocumentsController];
  [v112 setBackgroundTaskProvider:v111];

  v113 = [*(a1 + 32) ubiquitousDocumentsController];
  [(BKLibraryDataSourceUbiquityiOS *)v103 setUploadReporter:v113];

  v114 = [*(a1 + 32) ubiquitousDocumentsController];
  [(BKLibraryDataSourceUbiquityiOS *)v103 addMetadataQueryHandlingObserver:v114];

  v115 = v105;
  v116 = v115;
  if (v191 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v115))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v116, OS_SIGNPOST_INTERVAL_END, spid, "Ubiquitous Documents Controller", "", buf, 2u);
  }

  v193[0] = _NSConcreteStackBlock;
  v193[1] = 3221225472;
  v193[2] = sub_1001C7CE8;
  v193[3] = &unk_100A0AE90;
  v177 = v90;
  v194 = v177;
  [(BKLibraryDataSourceUbiquityiOS *)v103 setMadeUbiquitousNotifyBlock:v193];
  v117 = v116;
  v118 = v117;
  if (v191 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v117))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v118, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Jalisco Preorders", "", buf, 2u);
  }

  v119 = objc_opt_new();
  v120 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v216 = v119;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Initializing jaliscoPreordersDataSource %@", buf, 0xCu);
  }

  [v119 setShouldReloadAfterAssetAdded:1];
  v121 = v118;
  v122 = v121;
  if (v191 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v124 = v122;
  }

  else
  {
    if (os_signpost_enabled(v121))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v122, OS_SIGNPOST_INTERVAL_END, spid, "Jalisco Preorders", "", buf, 2u);
    }

    v123 = v122;
    if (os_signpost_enabled(v123))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v123, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Series", "", buf, 2u);
    }
  }

  v125 = objc_alloc_init(BKLibraryDataSourceSeries);
  v126 = v122;
  v127 = v126;
  if (v191 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v129 = v127;
  }

  else
  {
    if (os_signpost_enabled(v126))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v127, OS_SIGNPOST_INTERVAL_END, spid, "Series", "", buf, 2u);
    }

    v128 = v127;
    if (os_signpost_enabled(v128))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v128, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Performance", "", buf, 2u);
    }
  }

  v130 = [[BKLibraryDataSourcePerformance alloc] initWithResource:@"Performance-1" forceRandomBooks:0];
  v131 = v127;
  v132 = v131;
  if (v191 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v134 = v132;
  }

  else
  {
    if (os_signpost_enabled(v131))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v132, OS_SIGNPOST_INTERVAL_END, spid, "Performance", "", buf, 2u);
    }

    v133 = v132;
    if (os_signpost_enabled(v133))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v133, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Rank", "", buf, 2u);
    }
  }

  [(BKLibraryDataSourcePlistImporting *)v188 setRank:200];
  [(BKLibraryDataSourceBLDownload *)v189 setRank:205];
  [v187 setRank:220];
  [v181 setRank:240];
  [v180 setRank:250];
  [v177 setRank:260];
  [v182 setRank:270];
  [(BKLibraryDataSourceUbiquityiOS *)v103 setRank:380];
  [v184 setRank:385];
  [v186 setRank:386];
  [v178 setRank:390];
  [v179 setRank:392];
  [v119 setRank:395];
  [v130 setRank:398];
  [(BKLibraryDataSourceSeries *)v125 setRank:400];
  v214[0] = v103;
  v214[1] = v187;
  v214[2] = v125;
  v214[3] = v184;
  v214[4] = v119;
  v214[5] = v182;
  v214[6] = v177;
  v214[7] = v180;
  v214[8] = v186;
  v214[9] = v181;
  v214[10] = v189;
  v214[11] = v188;
  v214[12] = v178;
  v214[13] = v179;
  v135 = [NSArray arrayWithObjects:v214 count:14];
  v136 = [NSMutableArray arrayWithArray:v135];

  if ([v130 isEnabled])
  {
    [v136 addObject:v130];
  }

  v137 = v132;
  v138 = v137;
  if (v191 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v140 = v138;
  }

  else
  {
    if (os_signpost_enabled(v137))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v138, OS_SIGNPOST_INTERVAL_END, spid, "Rank", "", buf, 2u);
    }

    v139 = v138;
    if (os_signpost_enabled(v139))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v139, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BKLibraryManager Init", "", buf, 2u);
    }
  }

  v141 = [BKLibraryManager managerWithDataSources:v136];
  [*(a1 + 32) setLibraryManager:v141];

  v142 = *(a1 + 32);
  v143 = [v142 libraryManager];
  [v143 setDelegate:v142];

  v144 = [*(a1 + 32) libraryManager];
  [v144 setUIManagerProviderForAddingToWantToReadBlock:&stru_100A0AED0];

  v145 = [BKLibraryItemStateProvider alloc];
  v146 = [*(a1 + 32) libraryManager];
  v147 = [(BKLibraryItemStateProvider *)v145 initWithLibraryManager:v146];
  [*(a1 + 32) setLibraryItemStateProvider:v147];

  v148 = [*(a1 + 32) libraryItemStateProvider];
  BSUISetLibraryItemStateProvider();

  v149 = [*(a1 + 32) libraryItemStateProvider];
  BSUISetLibraryItemStateUpdater();

  v150 = v138;
  v151 = v150;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v153 = v151;
  }

  else
  {
    if (os_signpost_enabled(v150))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v151, OS_SIGNPOST_INTERVAL_END, spid, "BKLibraryManager Init", "", buf, 2u);
    }

    v152 = v151;
    if (os_signpost_enabled(v152))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v152, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Now Playing Adaptor", "", buf, 2u);
    }
  }

  v154 = [*(a1 + 32) libraryManager];
  v155 = +[BKAudiobookNowPlayingAdaptor sharedInstance];
  [v155 setGenericCoverProvider:v154];

  v156 = v151;
  v157 = v156;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v159 = v157;
  }

  else
  {
    if (os_signpost_enabled(v156))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v157, OS_SIGNPOST_INTERVAL_END, spid, "Now Playing Adaptor", "", buf, 2u);
    }

    v158 = v157;
    if (os_signpost_enabled(v158))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v158, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Audiobook Analytics Recorder", "", buf, 2u);
    }
  }

  v160 = +[AEAudiobookAnalyticsRecorder sharedRecorder];
  [v160 startRecordingAnalyticsWithSessionHost:*(a1 + 32)];

  v161 = v157;
  v162 = v161;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v164 = v162;
  }

  else
  {
    if (os_signpost_enabled(v161))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v162, OS_SIGNPOST_INTERVAL_END, spid, "Audiobook Analytics Recorder", "", buf, 2u);
    }

    v163 = v162;
    if (os_signpost_enabled(v163))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v163, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Store Controller", "", buf, 2u);
    }
  }

  v165 = [BKStoreController alloc];
  v166 = [*(a1 + 32) mainLibrary];
  v167 = [(BKStoreController *)v165 initWithLibrary:v166 downloadQueueManager:v189];
  [*(a1 + 32) setStoreController:v167];

  v168 = v162;
  v169 = v168;
  if (v191 >= 0xFFFFFFFFFFFFFFFELL)
  {

    v171 = v169;
  }

  else
  {
    if (os_signpost_enabled(v168))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v169, OS_SIGNPOST_INTERVAL_END, spid, "Store Controller", "", buf, 2u);
    }

    v170 = v169;
    if (os_signpost_enabled(v170))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v170, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Cover Cache", "", buf, 2u);
    }
  }

  [*(a1 + 32) _createCoverCache];
  v172 = v169;
  v173 = v172;
  if (v191 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v172))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v173, OS_SIGNPOST_INTERVAL_END, spid, "Cover Cache", "", buf, 2u);
  }

  v175 = sub_1000122C0(v174);
  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "Signaling library did initialize", buf, 2u);
  }

  v176 = &_dispatch_main_q;
  v192[0] = _NSConcreteStackBlock;
  v192[1] = 3221225472;
  v192[2] = sub_1001C7D44;
  v192[3] = &unk_100A033C8;
  v192[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v192);

  kdebug_trace();
  objc_destroyWeak(&v199);

  objc_destroyWeak(&location);
}

void sub_100015F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location)
{
  objc_destroyWeak(&a39);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000160B0(void *a1, void *a2)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  v4 = qword_100B233E8;
  v5 = [objc_opt_self() bu_sharedAccountStore];
  if ([objc_opt_self() appKitBundleClass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v7 = type metadata accessor for MenuController();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___BKMenuController_observeAssetPresentationTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_observeSelectedItemTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_observeKeyWindowTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_observeRecentBooksProviderTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_observeUserCollectionsTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_retryMainContentTypeTask] = 0;
  *&v8[OBJC_IVAR___BKMenuController_mainContentTypeRetryCount] = 0;
  swift_unknownObjectWeakInit();
  v8[OBJC_IVAR___BKMenuController_mainContentType] = 0;
  v8[OBJC_IVAR___BKMenuController_bookshelfType] = 2;
  *&v8[OBJC_IVAR___BKMenuController_recentlyOpenedAssets] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___BKMenuController_userCollections] = _swiftEmptyArrayStorage;
  *&v8[OBJC_IVAR___BKMenuController_appLaunchCoordinator] = a1;
  *&v8[OBJC_IVAR___BKMenuController_sceneManager] = a2;
  *&v8[OBJC_IVAR___BKMenuController_libraryCollectionsService] = v4;
  *&v8[OBJC_IVAR___BKMenuController_legacyAccountStore] = v5;
  *&v8[OBJC_IVAR___BKMenuController_appKitBundle] = ObjCClassMetadata;
  v26.receiver = v8;
  v26.super_class = v7;
  swift_unknownObjectRetain();
  v9 = a2;
  v10 = v4;
  v11 = v5;
  v12 = objc_msgSendSuper2(&v26, "init");
  sub_10001772C();
  sub_100017EC0();
  v13 = sub_1007A2214();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_1005CBA74;
  v25 = v14;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_1003323D0;
  v23 = &unk_100A24F18;
  v15 = _Block_copy(&v20);

  [a1 appLaunchCoordinatorPerformWhenLaunched:v13 block:v15];
  _Block_release(v15);

  v16 = sub_1007A2214();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = sub_1005CBA7C;
  v25 = v17;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10021B6B0;
  v23 = &unk_100A24F40;
  v18 = _Block_copy(&v20);

  [a1 appLaunchCoordinatorOnConditionMask:512 blockID:v16 performBlock:v18];
  swift_unknownObjectRelease();

  _Block_release(v18);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

uint64_t sub_1000164A4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100016698(id a1)
{
  kdebug_trace();
  v1 = +[BSUITemplate manager];

  kdebug_trace();
}

void sub_1000167B8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF7798;
  qword_100AF7798 = v1;
}

void sub_100016AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t type metadata accessor for LibraryCollectionsService(uint64_t a1)
{
  result = qword_100AE5770;
  if (!qword_100AE5770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016BC0(uint64_t a1)
{
  sub_10001308C(319);
  if (v1 <= 0x3F)
  {
    sub_100016C98();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100016C98()
{
  if (!qword_100AE5790)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE5790);
    }
  }
}

unint64_t sub_100016CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1007A3AB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100016E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016E78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016E88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016E98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016EA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016EB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016EC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016F88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016FE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017028(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017048(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017058(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017068(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000170A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000170B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000170C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000170D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000170F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017128(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017138(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017158(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017198(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000171F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017208(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017238(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017248(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017268(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017298(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000172B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000172C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000172D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000172E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000172F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017308(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017318(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017328(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017338(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017348(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017358(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017378(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000173A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000173B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000173C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000173D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000173F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017418(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017438(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017448(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017458(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017468(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017478(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017488(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017498(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000174A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000174B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000174D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000174E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000174F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017538(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017548(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017588(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000175F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017648(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017658(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017678(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017698(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000176A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000176B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000176D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000176E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017708(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100017718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001772C()
{
  v0 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_1001F1160(&qword_100AEC9C8, &qword_100833BC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v26 = sub_1001F1160(&qword_100AEC9D0, &qword_100833BC8);
  v7 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v24 - v8;
  v10 = sub_1001F1160(&qword_100AEC9D8, &unk_100833BD0);
  v11 = *(v10 - 8);
  v28 = v10;
  v29 = v11;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v25 = sub_1007A2E74();
  v27 = *(v25 - 8);
  __chkstk_darwin(v25);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  sub_1001F1160(&qword_100AE19F0, &qword_100822A28);
  sub_100017DD4(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  sub_10079BA24();
  sub_1001F1160(&unk_100AEC9E0, &unk_100833BE0);
  sub_10079B7D4();
  (*(v4 + 8))(v6, v3);
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v17 = sub_1007A2D74();
  v31 = v17;
  v18 = sub_1007A2D24();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  sub_100005920(&unk_100AEC9F0, &qword_100AEC9D0, &qword_100833BC8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  sub_100017E1C();
  v19 = v26;
  sub_10079BAB4();
  sub_100007840(v2, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v7 + 8))(v9, v19);
  swift_allocObject();
  v20 = v30;
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AECA00, &qword_100AEC9D8, &unk_100833BD0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v21 = v28;
  v22 = sub_10079BB04();

  (*(v29 + 8))(v13, v21);
  (*(v27 + 8))(v15, v25);
  *(v20 + OBJC_IVAR___BKMenuController_observeRecentBooksProviderTask) = v22;
}

uint64_t sub_100017CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017CFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100017E1C()
{
  result = qword_100AE8CA0;
  if (!qword_100AE8CA0)
  {
    sub_100017E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8CA0);
  }

  return result;
}

unint64_t sub_100017E74()
{
  result = qword_100AD1E10;
  if (!qword_100AD1E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD1E10);
  }

  return result;
}

uint64_t sub_100017EC0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v11 = 0u;
  v12 = 0u;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = sub_10001811C(@"BKAssetPresentingBookOpenComplete", &v11, sub_1005CBBB8, v4);

  sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);

  v6 = [v2 defaultCenter];
  v11 = 0u;
  v12 = 0u;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_10001811C(@"BKBookDidCloseNotificationName", &v11, sub_1005CB7B4, v7);

  sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);

  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v8;
  sub_10079B884();
  swift_allocObject();
  *(v1 + OBJC_IVAR___BKMenuController_observeAssetPresentationTask) = sub_10079B894();
}

uint64_t sub_1000180DC()
{

  return swift_deallocObject();
}

uint64_t sub_10001811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() mainQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_10000AE20(a2, aBlock);
  v11 = v25;
  if (v25)
  {
    v12 = sub_10000E3E8(aBlock, v25);
    v13 = *(v11 - 1);
    v14 = __chkstk_darwin(v12);
    v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);

    v17 = sub_1007A3AA4();
    (*(v13 + 8))(v16, v11);
    sub_1000074E0(aBlock);
  }

  else
  {

    v17 = 0;
  }

  v26 = sub_1006D047C;
  v27 = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006D0148;
  v25 = &unk_100A2D1E0;
  v18 = _Block_copy(aBlock);

  v19 = [v4 addObserverForName:a1 object:v17 queue:v9 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v19;
  sub_10079B884();
  swift_allocObject();
  v21 = v4;
  v22 = sub_10079B894();

  return v22;
}

uint64_t sub_1000183CC()
{

  return swift_deallocObject();
}

uint64_t sub_100018404()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100018480(id a1)
{
  kdebug_trace();
  v1 = +[BCCoverEffects sharedInstance];

  kdebug_trace();
}

void sub_1000184EC(id a1)
{
  kdebug_trace();
  v1 = +[AVAudioSession sharedInstance];
  v2 = 0;
  [v1 setCategory:AVAudioSessionCategoryPlayback error:&v2];

  kdebug_trace();
}

void sub_1000185CC(id a1)
{
  v1 = +[BUBag defaultBag];

  +[TUIResourceLoader prewarmOfflineCache];
}

void sub_10001860C(id a1, SEL a2)
{
  sub_100798004();
  v2 = sub_100797FF4();
  v3[3] = &type metadata for EventDataProvider;
  v3[4] = sub_10001866C();
  sub_100797FE4();

  sub_1000074E0(v3);
}

unint64_t sub_10001866C()
{
  result = qword_100AF3760;
  if (!qword_100AF3760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3760);
  }

  return result;
}

void sub_1000186C0(id a1)
{
  kdebug_trace();
  +[BAEventReporter setupEventDataProvider];

  kdebug_trace();
}

BOOL sub_100018778(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_1007A2FB4();

    v2 = v9 != 0;
    sub_1003B9B54(v8);
  }

  else
  {
    if (qword_100AD14E8 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AE06E8);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No UIScene.ConnectionOptions", v6, 2u);
    }

    return 0;
  }

  return v2;
}

void sub_100018890(uint64_t a1)
{
  if (+[JSAOfflineCache runFromCache])
  {
    v2 = [*(a1 + 32) workloopUserInitiatedQueue];
    dispatch_async(v2, &stru_100A0ADB8);
  }
}

id sub_100018C80()
{
  v0 = objc_allocWithZone(type metadata accessor for PersonalizationEventDonor());

  return [v0 init];
}

char *sub_100018D48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v33 = sub_10079ACE4();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v4[OBJC_IVAR___BKPersonalizationEventDonor_libraryAssetProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_cachedEnagagementPropertyValues] = _swiftEmptyDictionarySingleton;
  v10 = &v4[OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedPropertyTimestamp];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_lastCreatedIdentifierUniquenessIndex] = 0;
  v11 = OBJC_IVAR___BKPersonalizationEventDonor_config;
  *&v4[v11] = sub_100019158(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_booksPersonalizationSectionIDs] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer] = 0;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_defaultMaxCount] = 2000;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_defaultAgeToExpire] = 0x417E133800000000;
  v4[OBJC_IVAR___BKPersonalizationEventDonor_finishingBookAutomatically] = 2;
  *&v4[OBJC_IVAR___BKPersonalizationEventDonor_sectionLinks] = _swiftEmptyDictionarySingleton;
  v12 = sub_1007A2214();

  v13 = type metadata accessor for PersonalizationEventDonor();
  v36.receiver = v4;
  v36.super_class = v13;
  v14 = objc_msgSendSuper2(&v36, "initWithType:", v12);

  v15 = OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer;
  v16 = *&v14[OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer];
  *&v14[OBJC_IVAR___BKPersonalizationEventDonor_remoteConfigurationContainer] = a3;
  v17 = v14;
  v34 = a3;
  v18 = a3;

  v19 = [objc_opt_self() defaultCenter];
  v20 = v17;
  v21 = sub_1007A2E44();
  [v19 addObserver:v20 selector:"configurationDidChange:" name:v21 object:*&v14[v15]];

  if (qword_100AD1710 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v20 selector:? name:? object:?];

  sub_10079AC84();
  v22 = sub_10079ACC4();
  v23 = sub_1007A29D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v19;
    v26 = v25;
    v35 = v25;
    *v24 = 136315138;
    v37 = ObjectType;
    swift_getMetatypeMetadata();
    v27 = sub_1007A22E4();
    v29 = sub_1000070F4(v27, v28, &v35);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Initializing %s enabled=false", v24, 0xCu);
    sub_1000074E0(v26);
    v19 = v31;
  }

  (*(v6 + 8))(v8, v33);
  sub_1000192D0(v34, 0);

  return v20;
}

unint64_t sub_100019158(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001F1160(&unk_100AD3C10, &unk_10082EED0);
    v3 = sub_1007A3924();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000077D8(v4, &v13, &unk_100ADD560, &unk_10080CDC0);
      v5 = v13;
      v6 = v14;
      result = sub_10000E53C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100019288(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_100019288(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

NSString sub_100019298()
{
  result = sub_1007A2214();
  static NSNotificationName.markedAsFinished = result;
  return result;
}

uint64_t sub_1000192D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v78 - v10;
  __chkstk_darwin(v12);
  v82 = &v78 - v13;
  v84 = sub_10079ACE4();
  v83 = *(v84 - 1);
  __chkstk_darwin(v84);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_4;
  }

  if (a1)
  {
    sub_10079E764();
LABEL_4:

    goto LABEL_5;
  }

  sub_100019158(_swiftEmptyArrayStorage);
LABEL_5:
  v16.super.isa = sub_1007A2024().super.isa;
  if ([(objc_class *)v16.super.isa valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalCollectionEnabled])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93[0] = 0u;
  }

  v95[0] = v92;
  v95[1] = v93[0];
  sub_1000077D8(v95, &v92, &unk_100AD5B40, &unk_100811300);
  if (*(&v93[0] + 1))
  {
    sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v17 = v89;
      v18 = [v89 BOOLValue];

      goto LABEL_13;
    }
  }

  else
  {
    sub_100007840(&v92, &unk_100AD5B40, &unk_100811300);
  }

  v18 = 0;
LABEL_13:
  if ([(objc_class *)v16.super.isa valueForKeyPath:BRCBooksDefaultsKeyPersonalizationLocalSignalPurge])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v92 = v89;
  v93[0] = v90;
  isa = v16.super.isa;
  if (*(&v90 + 1))
  {
    sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
    if (swift_dynamicCast())
    {
      v19 = v88;
      goto LABEL_21;
    }
  }

  else
  {
    sub_100007840(&v92, &unk_100AD5B40, &unk_100811300);
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_21:
  v87 = v19;
  v81 = OBJC_IVAR___BKPersonalizationEventDonor_config;
  *&v92 = *(v3 + OBJC_IVAR___BKPersonalizationEventDonor_config);
  v20 = sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  sub_100005920(&qword_100AE59D0, &qword_100AD6710, &unk_10080B890, &protocol conformance descriptor for [A : B]);
  if (v18 == (sub_1007A28A4() & 1))
  {
    sub_100007840(v95, &unk_100AD5B40, &unk_100811300);
  }

  v85 = v20;
  sub_10079AC84();
  v21 = sub_10079ACC4();
  v22 = sub_1007A29D4();
  v23 = os_log_type_enabled(v21, v22);
  v79 = v11;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *&v89 = swift_slowAlloc();
    *v24 = 136315394;
    *&v92 = ObjectType;
    swift_getMetatypeMetadata();
    v25 = sub_1007A22E4();
    ObjectType = v15;
    v27 = v8;
    v28 = sub_1000070F4(v25, v26, &v89);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    if (v18)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (v18)
    {
      v30 = 0xE400000000000000;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    v31 = sub_1000070F4(v29, v30, &v89);

    *(v24 + 14) = v31;
    v8 = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Updating %s enabled=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v83 + 8))(ObjectType, v84);
  }

  else
  {

    (*(v83 + 8))(v15, v84);
  }

  if (!v18)
  {

    v32 = sub_100019158(_swiftEmptyArrayStorage);
    v33 = v81;
    *(v3 + v81) = v32;

    *(v3 + OBJC_IVAR___BKPersonalizationEventDonor_booksPersonalizationSectionIDs) = _swiftEmptyArrayStorage;
LABEL_50:

    v94 = _swiftEmptyArrayStorage;
    v84 = v3;
    v52 = *(v3 + v33);
    v53 = 1 << *(v52 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v52 + 64);
    v56 = (v53 + 63) >> 6;

    v57 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v55)
          {
            if (v56 <= v57 + 1)
            {
              v59 = v57 + 1;
            }

            else
            {
              v59 = v56;
            }

            v60 = v59 - 1;
            while (1)
            {
              v58 = v57 + 1;
              if (__OFADD__(v57, 1))
              {
                break;
              }

              if (v58 >= v56)
              {
                v55 = 0;
                v90 = 0u;
                v91 = 0u;
                v57 = v60;
                v89 = 0u;
                goto LABEL_66;
              }

              v55 = *(v52 + 64 + 8 * v58);
              ++v57;
              if (v55)
              {
                v57 = v58;
                goto LABEL_65;
              }
            }

            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v58 = v57;
LABEL_65:
          v61 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          v62 = v61 | (v58 << 6);
          v63 = (*(v52 + 48) + 16 * v62);
          v65 = *v63;
          v64 = v63[1];
          sub_100007484(*(v52 + 56) + 32 * v62, &v88);
          *&v89 = v65;
          *(&v89 + 1) = v64;
          sub_1000076D4(&v88, &v90);

LABEL_66:
          v92 = v89;
          v93[0] = v90;
          v93[1] = v91;
          if (!*(&v89 + 1))
          {

            swift_beginAccess();
            sub_100799824();
            v77 = sub_1007A25D4().super.isa;
            [v84 setEventConfigurations:v77];

            sub_100007840(v95, &unk_100AD5B40, &unk_100811300);
          }

          sub_1000076D4(v93, &v89);
          result = swift_dynamicCast();
        }

        while ((result & 1) == 0);
        v66 = v88;
        if (v88[2])
        {
          v67 = sub_10000E53C(0xD000000000000013, 0x80000001008D7140);
          if (v68)
          {
            sub_100007484(*(v66 + 56) + 32 * v67, &v89);
            if (swift_dynamicCast())
            {

              sub_100019FD4(v66, v87, &v94);
              goto LABEL_54;
            }
          }
        }

        if (*(v66 + 16))
        {
          v69 = sub_10000E53C(1702060387, 0xE400000000000000);
          if (v70)
          {
            break;
          }
        }

LABEL_54:
      }

      sub_100007484(*(v66 + 56) + 32 * v69, &v89);

      sub_1001F1160(&qword_100ADE598, &qword_100822EA0);
      result = swift_dynamicCast();
      if (result)
      {
        v71 = v88;
        v72 = v88[2];
        if (v72)
        {
          v73 = 4;
          do
          {
            v74 = v71[v73];
            if (*(v74 + 16))
            {

              v75 = sub_10000E53C(0xD000000000000013, 0x80000001008D7140);
              if (v76)
              {
                sub_100007484(*(v74 + 56) + 32 * v75, &v89);
                if (swift_dynamicCast())
                {

                  sub_100019FD4(v74, v87, &v94);
                }
              }
            }

            ++v73;
            --v72;
          }

          while (v72);
        }

        goto LABEL_54;
      }
    }
  }

  if ([(objc_class *)isa valueForKeyPath:BRCBooksDefaultsKeyPersonalizationBooksPersonalizationSections])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v92 = v89;
  v93[0] = v90;
  if (!*(&v90 + 1))
  {
    sub_100007840(&v92, &unk_100AD5B40, &unk_100811300);
    goto LABEL_42;
  }

  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v34 = &off_100A0D1C8;
    goto LABEL_43;
  }

  v34 = v88;
LABEL_43:
  *(v3 + OBJC_IVAR___BKPersonalizationEventDonor_booksPersonalizationSectionIDs) = v34;

  v35 = [objc_opt_self() mainBundle];
  *&v92 = swift_getObjectType();
  sub_1001F1160(&qword_100AE59D8, &qword_100828CA8);
  sub_1007A22E4();
  v36 = sub_1007A2214();

  v37 = sub_1007A2214();
  v38 = [v35 URLForResource:v36 withExtension:v37];

  if (v38)
  {
    v39 = v79;
    sub_100796974();

    v40 = 0;
  }

  else
  {
    v40 = 1;
    v39 = v79;
  }

  v41 = sub_1007969B4();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v39, v40, 1, v41);
  v43 = v39;
  v44 = v82;
  sub_100008EF8(v43, v82);
  sub_1000077D8(v44, v8, &unk_100AD5AC0, &unk_100811090);
  result = (*(v42 + 48))(v8, 1, v41);
  if (result == 1)
  {
    goto LABEL_88;
  }

  v46 = objc_allocWithZone(NSDictionary);
  sub_100796944(v47);
  v49 = v48;
  v50 = [v46 initWithContentsOfURL:v48];

  result = (*(v42 + 8))(v8, v41);
  if (v50)
  {

    *&v92 = 0;
    result = sub_1007A2034();
    v51 = v92;
    if (v92)
    {

      sub_100007840(v82, &unk_100AD5AC0, &unk_100811090);
      v33 = v81;
      *(v3 + v81) = v51;
      goto LABEL_50;
    }
  }

  else
  {
LABEL_89:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100019FD4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v6 = sub_10000E53C(0xD000000000000013, 0x80000001008D7140);
  if ((v7 & 1) == 0)
  {
    return;
  }

  sub_100007484(*(a1 + 56) + 32 * v6, v27);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v9 = v25;
  v8 = v26;
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_15:
    v18 = 31536000.0;
    goto LABEL_16;
  }

  v11 = (a2 + 32);
  while (1)
  {
    v12 = *v11;
    if (!*(*v11 + 16))
    {
      goto LABEL_7;
    }

    v13 = sub_10000E53C(0x6D614E746E657665, 0xE900000000000065);
    if (v14)
    {
      sub_100007484(*(v12 + 56) + 32 * v13, v27);
      if (swift_dynamicCast())
      {
        break;
      }
    }

LABEL_7:
    ++v11;
    if (!--v10)
    {
      goto LABEL_15;
    }
  }

  if (*&v25 == *&v9 && v26 == v8)
  {

    goto LABEL_24;
  }

  v15 = v9;
  v16 = v8;
  v17 = sub_1007A3AB4();

  if ((v17 & 1) == 0)
  {

    v8 = v16;
    v9 = v15;
    goto LABEL_7;
  }

  v8 = v16;
LABEL_24:
  if (*(v12 + 16))
  {

    v21 = sub_10000E53C(0x746E756F4378616DLL, 0xE800000000000000);
    if (v22)
    {
      sub_100007484(*(v12 + 56) + 32 * v21, v27);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  if (*(v12 + 16) && (v23 = sub_10000E53C(0x65674178616DLL, 0xE600000000000000), (v24 & 1) != 0))
  {
    sub_100007484(*(v12 + 56) + 32 * v23, v27);

    if (swift_dynamicCast())
    {
      v18 = v25;
      goto LABEL_16;
    }
  }

  else
  {
  }

  v18 = 31536000.0;
LABEL_16:
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v18 < 9.22337204e18)
  {
    v19 = objc_allocWithZone(sub_1007998A4());
    v20 = sub_100799894();
    swift_beginAccess();
    v8 = v20;
    sub_1007A25C4();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_1007A2614();
LABEL_20:
  sub_1007A2644();
  swift_endAccess();
}

void sub_10001A6F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dq_performInitialFetch];
}

void sub_10001ACD0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = +[BCRCDataContainer defaultContainer];
  v2 = [v1 treatmentData];

  v3 = [WeakRetained analyticsController];
  [v3 setTreatmentData:v2];
}

void sub_10001AE14(id a1)
{
  v3 = +[BAEventReporter sharedReporter];
  v1 = +[JSAStore sharedInstance];
  [v1 addObserver:v3];

  v2 = +[JSAAccountController sharedController];
  [v2 addObserver:v3];
}

void sub_10001AF48(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100AF7610;
  qword_100AF7610 = v1;
}

void sub_10001B158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *BookReaderInteractionCoordinator.init(window:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1001F1160(&unk_100AEBCA0, &unk_10082D840);
  v6 = *(v5 - 8);
  v28 = v5;
  v29 = v6;
  __chkstk_darwin(v5);
  v27 = &v26 - v7;
  v8 = sub_1001F1160(&qword_100AE82F0, &unk_10082D850);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  *&v2[OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTask] = 0;
  *&v2[OBJC_IVAR___BKBookReaderInteractionCoordinator_appIntentsInfoTask] = 0;
  type metadata accessor for WindowAppIntentsAssetViewControllerTracker(0);
  swift_allocObject();
  *&v2[OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker] = sub_10001B824(0);
  type metadata accessor for AppIntentsAssetViewControllerInfoTracker(0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v32[0] = 0;
  sub_1001F1160(&unk_100AEBC90, &qword_10080B868);
  sub_10079B964();
  *(v12 + OBJC_IVAR____TtC5Books40AppIntentsAssetViewControllerInfoTracker_task) = 0;
  swift_unknownObjectWeakAssign();
  *&v3[OBJC_IVAR___BKBookReaderInteractionCoordinator_appIntentsInfoTracker] = v12;
  type metadata accessor for BookReaderInteractionManager();
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  swift_allocObject();
  v13 = sub_10001BE94(0, 0, v32);
  sub_10001C050(v32);
  *&v3[OBJC_IVAR___BKBookReaderInteractionCoordinator_interactionManager] = v13;
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v31, "init");
  v15 = OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTracker;
  swift_beginAccess();
  v16 = v14;

  sub_1001F1160(&qword_100AE8320, &unk_10082D860);
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AE8328, &qword_100AE82F0, &unk_10082D850, &protocol conformance descriptor for Published<A>.Publisher);
  v17 = sub_10079BB04();

  (*(v9 + 8))(v11, v8);
  *&v16[OBJC_IVAR___BKBookReaderInteractionCoordinator_assetViewControllerTask] = v17;

  swift_beginAccess();

  sub_1001F1160(&unk_100AE8330, &qword_10081F580);
  v18 = v27;
  sub_10079B974();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&unk_100AEBCB0, &unk_100AEBCA0, &unk_10082D840, &protocol conformance descriptor for Published<A>.Publisher);
  v19 = v28;
  v20 = sub_10079BB04();

  (*(v29 + 8))(v18, v19);
  *&v16[OBJC_IVAR___BKBookReaderInteractionCoordinator_appIntentsInfoTask] = v20;

  v21 = *&v14[v15];
  v22 = *(v21 + 16);
  v23 = v30;
  *(v21 + 16) = v30;
  v24 = v23;
  sub_10001DA04(v22);

  return v16;
}

uint64_t sub_10001B69C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for WindowAppIntentsAssetViewControllerTracker(uint64_t a1)
{
  result = qword_100AF1AA8;
  if (!qword_100AF1AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001B720(uint64_t a1)
{
  if (!qword_100AF1AB8)
  {
    sub_1001F1234(&unk_100AF1AC0, &unk_10083CBF0);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF1AB8);
    }
  }
}

void sub_10001B784(uint64_t a1)
{
  sub_10001B720(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10001B824(void *a1)
{
  v3 = sub_1001F1160(&qword_100AE8320, &unk_10082D860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v7 = OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker__viewController;
  v11[1] = 0;
  sub_1001F1160(&unk_100AF1AC0, &unk_10083CBF0);
  sub_10079B964();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker_assetPresenterTask) = 0;
  *(v1 + OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker_viewControllerTask) = 0;
  v8 = *(v1 + 16);
  *(v1 + 16) = a1;
  v9 = a1;

  sub_10001B95C();
  return v1;
}

void sub_10001B95C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_weakInit();
    v3 = v1;

    v1 = sub_10001DD74(sub_10068F1A0, v2);
  }

  *(v0 + OBJC_IVAR____TtC5Books42WindowAppIntentsAssetViewControllerTracker_assetPresenterTask) = v1;

  sub_10001BA48();
}

uint64_t sub_10001BA10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10001BA48()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = sub_10001DFD0();
  }

  else
  {
    v3 = 0;
  }

  v5 = *(v0 + 24);
  *(v0 + 24) = v3;
  v4 = v3;
  sub_10001BAD8(v5);
}

void sub_10001BAD8(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 24);
  if (a1)
  {
    if (v3)
    {
      v4 = a1;
      sub_10000A7C4(0, &qword_100AED9C8, off_1009F8548);
      v5 = v3;
      v6 = v4;
      LOBYTE(v4) = sub_1007A3184();

      if (v4)
      {
        return;
      }

      v3 = *(v2 + 24);
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = qword_100AD1AC0;
  v8 = v3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AF1A50);
  v19 = v8;
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    if (v3)
    {
      v14 = [v19 description];
      v15 = sub_1007A2254();
      v17 = v16;
    }

    else
    {
      v17 = 0xE600000000000000;
      v15 = 0x3E656E6F6E3CLL;
    }

    v18 = sub_1000070F4(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Observing asset presenter: %s", v12, 0xCu);
    sub_1000074E0(v13);
  }

  sub_10068E5D0();
}

uint64_t type metadata accessor for AppIntentsAssetViewControllerInfoTracker(uint64_t a1)
{
  result = qword_100ADF380;
  if (!qword_100ADF380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001BD68(uint64_t a1)
{
  sub_10001BE0C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10001BE0C(uint64_t a1)
{
  if (!qword_100ADF390[0])
  {
    sub_1001F1234(&unk_100AEBC90, &qword_10080B868);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, qword_100ADF390);
    }
  }
}

uint64_t sub_10001BE94(uint64_t a1, void *a2, __int128 *a3)
{
  swift_unknownObjectWeakInit();
  *(v3 + 24) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0;
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + 24);
  *(v3 + 24) = a2;
  v7 = a2;

  v8 = *(v3 + 88);
  v9 = *(v3 + 120);
  v16[4] = *(v3 + 104);
  v16[5] = v9;
  v10 = *(v3 + 56);
  v16[0] = *(v3 + 40);
  v16[1] = v10;
  v16[2] = *(v3 + 72);
  v16[3] = v8;
  v11 = a3[3];
  *(v3 + 72) = a3[2];
  v12 = *a3;
  *(v3 + 56) = a3[1];
  *(v3 + 40) = v12;
  v13 = a3[4];
  *(v3 + 120) = a3[5];
  *(v3 + 104) = v13;
  v17 = *(v3 + 136);
  *(v3 + 88) = v11;
  *(v3 + 136) = *(a3 + 96);
  sub_10001BFF8(a3, v15);
  sub_10001C050(v16);
  sub_10001C0A4();
  sub_10001C4A8(0, 0);
  return v3;
}

uint64_t sub_10001C038(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10001C0A4()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_100842A78;
  *(v3 + 24) = v2;
  v4 = sub_100799634();
  v5 = objc_allocWithZone(v4);
  sub_10001C368();
  v6 = sub_100799624();
  v7 = 0;
  v16[4] = v6;
  if (*(v1 + 136) == 1)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = &unk_100842AA0;
    *(v9 + 24) = v8;
    v10 = objc_allocWithZone(v4);
    sub_1002200FC();
    v7 = sub_100799624();
  }

  v11 = 0;
  v16[5] = v7;
  while (v11 != 2)
  {
    if (v16[v11++ + 4])
    {
      swift_unknownObjectRetain();
      sub_1007A25C4();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
    }
  }

  sub_1001F1160(&qword_100AF5058, &qword_100842A90);
  swift_arrayDestroy();
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  *(v1 + 32) = _swiftEmptyArrayStorage;
  v15 = v13;
  sub_10001C4A8(v13, v14);
}

uint64_t sub_10001C2F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10001C32C()
{

  return swift_deallocObject();
}

unint64_t sub_10001C368()
{
  result = qword_100AF5050;
  if (!qword_100AF5050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5050);
  }

  return result;
}

unint64_t sub_10001C3BC()
{
  result = qword_100AE9A68;
  if (!qword_100AE9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A68);
  }

  return result;
}

unint64_t sub_10001C418()
{
  result = qword_100AE9A70;
  if (!qword_100AE9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A70);
  }

  return result;
}

uint64_t sub_10001C46C(uint64_t a1)
{
  v2 = sub_10001C368();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_10001C4A8(char **a1, unint64_t a2)
{
  v8 = v2;
  if (!a1)
  {
    goto LABEL_20;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

  v10 = qword_100AD1B98;
  v6 = a1;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = sub_10079ACE4();
  v3 = sub_100008B98(v12, qword_100AF4F70);
  v13 = v11;

  v14 = sub_10079ACC4();
  LOBYTE(v4) = sub_1007A29D4();

  v7 = v9 >> 62;
  if (!os_log_type_enabled(v14, v4))
  {

    goto LABEL_10;
  }

  v3 = swift_slowAlloc();
  v5 = swift_slowAlloc();
  *v3 = 134218242;
  if (v7)
  {
    goto LABEL_46;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    *(v3 + 4) = i;

    *(v3 + 12) = 2112;
    *(v3 + 14) = v13;
    *v5 = v6;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v14, v4, "Removing %ld Link interactions from %@", v3, 0x16u);
    sub_100007840(v5, &unk_100AD9480, &qword_1008113B0);

LABEL_10:
    if (v7)
    {
      v14 = sub_1007A38D4();
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    if (v14 < 1)
    {
      goto LABEL_45;
    }

    v3 = 0;
    v6 = &selRef_predicateToExcludeLibraryAssetsWithExplicitContent;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v4 = sub_1007A3784();
      }

      else
      {
        v4 = *(v9 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      ++v3;
      [v13 removeInteraction:v4];
      swift_unknownObjectRelease();
    }

    while (v14 != v3);
LABEL_19:

LABEL_20:
    v5 = *(v8 + 24);
    if (!v5)
    {
      return;
    }

    v17 = *(v8 + 32);
    if (v17 >> 62)
    {
      v9 = sub_1007A38D4();
    }

    else
    {
      v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = qword_100AD1B98;
    v19 = v5;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100AF4F70);
    v25 = v19;
    v21 = sub_10079ACC4();
    v13 = sub_1007A29D4();

    if (os_log_type_enabled(v21, v13))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 134218242;
      *(v3 + 4) = v9;
      *(v3 + 12) = 2112;
      *(v3 + 14) = v25;
      *v4 = v5;
      v22 = v25;
      _os_log_impl(&_mh_execute_header, v21, v13, "Adding %ld interactions to %@", v3, 0x16u);
      sub_100007840(v4, &unk_100AD9480, &qword_1008113B0);
    }

    v8 = *(v8 + 32);
    if (!(v8 >> 62))
    {
      v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        break;
      }

      goto LABEL_29;
    }

    v14 = sub_1007A38D4();
    if (!v14)
    {
      break;
    }

LABEL_29:
    if (v14 >= 1)
    {

      for (j = 0; j != v14; ++j)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v24 = sub_1007A3784();
        }

        else
        {
          v24 = *(v8 + 8 * j + 32);
          swift_unknownObjectRetain();
        }

        [v25 addInteraction:v24];
        swift_unknownObjectRelease();
      }

      return;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }
}

void sub_10001C960(void **a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();

  swift_unknownObjectWeakAssign();

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR___BKBookReaderInteractionCoordinator_interactionManager];

  if (v2)
  {
    v6 = [v2 viewIfLoaded];
    v7 = v6;
    v8 = *(v5 + 24);
    *(v5 + 24) = v6;
    if (v8)
    {
      if (v6)
      {
        sub_10025D2FC();
        v9 = v7;
        v10 = v8;
        v11 = sub_1007A3184();

        if (v11)
        {

          goto LABEL_12;
        }

        goto LABEL_10;
      }

      goto LABEL_7;
    }

    if (v6)
    {
      v9 = v6;
      v8 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *(v5 + 24);
    *(v5 + 24) = 0;
    if (v8)
    {
LABEL_7:
      v9 = 0;
LABEL_10:
      v12 = *(v5 + 32);

      sub_10001C4A8(v8, v12);

      goto LABEL_12;
    }
  }

LABEL_12:
  v13 = swift_unknownObjectUnownedLoadStrong();

  v14 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10001CB44(v14);
}

void sub_10001CB44(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (a1)
  {
    if (Strong)
    {
      sub_10000A7C4(0, &unk_100ADF430, UIResponder_ptr);
      v4 = a1;
      v5 = v3;
      v6 = sub_1007A3184();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    if (!Strong)
    {
      return;
    }
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (qword_100AD14B0 != -1)
  {
    swift_once();
  }

  v8 = sub_10079ACE4();
  sub_100008B98(v8, qword_100ADF330);
  v18 = v7;
  v9 = sub_10079ACC4();
  v10 = sub_1007A29D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    if (v18)
    {
      v13 = [v18 description];
      v14 = sub_1007A2254();
      v16 = v15;
    }

    else
    {
      v16 = 0xE600000000000000;
      v14 = 0x3E656E6F6E3CLL;
    }

    v17 = sub_1000070F4(v14, v16, &v19);

    *(v11 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "Observing view controller: %s", v11, 0xCu);
    sub_1000074E0(v12);
  }

  sub_1003923B4();
}

uint64_t sub_10001CDA4(void **a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();

  v4 = v2;
  sub_10001CE24(v2, v6);
  sub_10001D690(v6);
  sub_10001C050(v6);
}

void sub_10001CE24(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v86 = a2;
  v3 = sub_1007967F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v56[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100796CF4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  *&v81 = &v56[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v56[-v10];
  v80 = sub_1007A21D4();
  v12 = *(v80 - 8);
  __chkstk_darwin(v80);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v56[-v16];
  v18 = sub_100796814();
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v56[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    *&v83 = v21;
    v22 = [a1 assetID];
    if (v22)
    {
      *&v82 = v3;
      v23 = v22;
      v24 = sub_1007A2254();
      v68 = v25;
      v69 = v24;

      v26 = [a1 title];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1007A2254();
        v66 = v29;
        v67 = v28;
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      *&v87 = v7;
      v37 = [a1 author];
      v70 = a1;
      *&v85 = v4;
      if (v37)
      {
        v38 = v37;
        v39 = sub_1007A2254();
        v63 = v40;
        v64 = v39;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      sub_1001F1160(&unk_100AD9510, &qword_1008168C8);
      v62 = sub_100795DC4();
      v65 = sub_100795DC4();
      v61 = sub_100795DC4();
      sub_1007A2154();
      sub_100796C94();
      *&v84 = v12;
      v41 = *(v12 + 16);
      v77 = v12 + 16;
      v78 = v41;
      v42 = v80;
      v41(v14, v17, v80);
      v43 = *(v87 + 16);
      v75 = v87 + 16;
      v76 = v43;
      v44 = v81;
      v43(v81, v11, v6);
      v74 = type metadata accessor for BundleFinder();
      v45 = v79;
      *v79 = v74;
      v57 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
      v73 = *(v85 + 104);
      *&v85 = v85 + 104;
      v73(v45);
      sub_100796834();
      v46 = *(v87 + 8);
      *&v87 = v87 + 8;
      v72 = v46;
      v46(v11, v6);
      v47 = *(v84 + 8);
      *&v84 = v84 + 8;
      v71 = v47;
      v47(v17, v42);
      v60 = sub_100795DB4();
      sub_1001F1160(&qword_100AE8370, &unk_1008168D0);
      v59 = sub_100795DA4();
      v58 = sub_1001F1160(&unk_100AD9520, &unk_10082D3B0);
      sub_1007A2154();
      sub_100796C94();
      v78(v14, v17, v42);
      v76(v44, v11, v6);
      v48 = v73;
      *v45 = v74;
      v49 = v57;
      (v48)(v45, v57, v82);
      sub_100796834();
      v72(v11, v6);
      v71(v17, v42);
      sub_100211A50();
      v58 = sub_100795D74();
      sub_1001F1160(&unk_100AD9530, &unk_1008168E0);
      sub_1007A2154();
      sub_100796C94();
      v78(v14, v17, v42);
      v76(v44, v11, v6);
      v50 = v73;
      *v45 = v74;
      (v50)(v45, v49, v82);
      sub_100796834();
      v72(v11, v6);
      v71(v17, v42);
      sub_100005920(&unk_100AE7F80, &qword_100AD9540, &qword_10082D3C0, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
      v51 = sub_100795D84();
      v96 = v67;
      v97 = v66;
      v52 = v62;
      sub_100795D64();
      v96 = v64;
      v97 = v63;
      v53 = v61;
      sub_100795D64();
      LOBYTE(v96) = 0;
      v54 = v58;
      sub_100795D64();
      *&v90 = v69;
      *(&v90 + 1) = v68;
      *(&v91 + 1) = *v89;
      DWORD1(v91) = *&v89[3];
      LOBYTE(v91) = 1;
      *(&v91 + 1) = v52;
      *&v92 = v65;
      *(&v92 + 1) = v53;
      *&v93 = v60;
      *(&v93 + 1) = v59;
      *&v94 = v54;
      v95 = 0uLL;
      *(&v94 + 1) = v51;
      v96 = v69;
      v97 = v68;
      v98 = 1;
      *v99 = *v89;
      *&v99[3] = *&v89[3];
      v100 = v52;
      v101 = v65;
      v102 = v53;
      v103 = v60;
      v104 = v59;
      v105 = v54;
      v106 = v51;
      v107 = 0;
      v108 = 0;
      sub_1002A40C0(&v90, &v88);
      sub_1002A411C(&v96);
      v87 = v90;
      v84 = v92;
      v85 = v91;
      v82 = v94;
      v83 = v93;
      v81 = v95;
      a1 = v70;
    }

    else
    {
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v81 = 0u;
    }

    v30 = [a1 supportsTheming];

    v31 = v87;
    v33 = v84;
    v32 = v85;
    v35 = v82;
    v34 = v83;
    v36 = v81;
  }

  else
  {
    v30 = 0;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
  }

  v55 = v86;
  *v86 = v31;
  v55[1] = v32;
  v55[2] = v33;
  v55[3] = v34;
  v55[4] = v35;
  v55[5] = v36;
  *(v55 + 96) = v30;
}

uint64_t sub_10001D690(__int128 *a1)
{
  v2 = a1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 120);
  v17 = *(v1 + 104);
  v18 = v4;
  v19 = *(v1 + 136);
  v5 = *(v1 + 56);
  v14[0] = *(v1 + 40);
  v14[1] = v5;
  v15 = *(v1 + 72);
  v16 = v3;
  v22[0] = v14[0];
  v22[1] = v5;
  v22[2] = v15;
  v22[3] = v3;
  v22[4] = v17;
  v22[5] = v4;
  v23 = v19;
  v6 = a1[3];
  *(v1 + 72) = a1[2];
  v7 = *a1;
  *(v1 + 56) = a1[1];
  *(v1 + 40) = v7;
  v8 = a1[4];
  *(v1 + 120) = a1[5];
  *(v1 + 104) = v8;
  *(v1 + 88) = v6;
  *(v1 + 136) = *(a1 + 96);
  sub_10001BFF8(v14, v20);
  sub_10001BFF8(v2, v20);
  sub_10001C050(v22);
  v9 = *(v1 + 88);
  v10 = *(v1 + 120);
  v20[4] = *(v1 + 104);
  v20[5] = v10;
  v21 = *(v1 + 136);
  v11 = *(v1 + 56);
  v20[0] = *(v1 + 40);
  v20[1] = v11;
  v20[2] = *(v1 + 72);
  v20[3] = v9;
  sub_10001BFF8(v20, v13);
  LOBYTE(v2) = sub_10001D7AC(v14, v20);
  sub_10001C050(v20);
  if ((v2 & 1) == 0)
  {
    sub_10001C0A4();
  }

  return sub_10001C050(v14);
}

uint64_t sub_10001D7AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 64);
  v52 = *(a1 + 48);
  v53 = v5;
  v54 = *(a1 + 80);
  v6 = *(a1 + 32);
  v50 = *(a1 + 16);
  v51 = v6;
  v8 = *a2;
  v7 = a2[1];
  if (!v4)
  {
    if (!v7)
    {
      v30 = v3;
      v21 = *(a1 + 64);
      v33 = *(a1 + 48);
      v34 = v21;
      v35 = *(a1 + 80);
      v22 = *(a1 + 32);
      v31 = *(a1 + 16);
      v32 = v22;
      v14 = a1;
      sub_10001BFF8(a1, &v36);
      sub_10001BFF8(a2, &v36);
      sub_100007840(&v30, &unk_100AE7F60, &qword_1008110C0);
      goto LABEL_8;
    }

LABEL_6:
    v36 = v3;
    v37 = v4;
    v17 = *(a1 + 64);
    v40 = *(a1 + 48);
    v41 = v17;
    v42 = *(a1 + 80);
    v18 = *(a1 + 32);
    v38 = *(a1 + 16);
    v39 = v18;
    v43 = v8;
    v44 = v7;
    v19 = *(a2 + 5);
    v48 = *(a2 + 4);
    v49 = v19;
    v20 = *(a2 + 3);
    v46 = *(a2 + 2);
    v47 = v20;
    v45 = *(a2 + 1);
    sub_10001BFF8(a1, &v30);
    sub_10001BFF8(a2, &v30);
    sub_100007840(&v36, &qword_100AF5048, &qword_100842A58);
    v16 = 0;
    return v16 & 1;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

  *&v24 = *a2;
  *(&v24 + 1) = v7;
  v9 = *(a2 + 4);
  v27 = *(a2 + 3);
  v28 = v9;
  v10 = *(a2 + 5);
  v11 = *(a2 + 2);
  v25 = *(a2 + 1);
  v26 = v11;
  v34 = v9;
  v35 = v10;
  v32 = v11;
  v33 = v27;
  v31 = v25;
  v29 = v10;
  v30 = v24;
  v12 = *(a1 + 64);
  v58 = *(a1 + 48);
  v59 = v12;
  v60 = *(a1 + 80);
  v13 = *(a1 + 32);
  v56 = *(a1 + 16);
  v57 = v13;
  v55[0] = v3;
  v55[1] = v4;
  v14 = a1;
  sub_10001BFF8(a1, &v36);
  sub_10001BFF8(a2, &v36);
  v15 = sub_100213128(v55, &v30);
  sub_100007840(&v24, &unk_100AE7F60, &qword_1008110C0);
  v36 = v3;
  v37 = v4;
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v38 = v50;
  v39 = v51;
  sub_100007840(&v36, &unk_100AE7F60, &qword_1008110C0);
  if (v15)
  {
LABEL_8:
    v16 = *(v14 + 96) ^ *(a2 + 96) ^ 1;
    return v16 & 1;
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_10001D9BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

void sub_10001DA04(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 16);
  if (a1)
  {
    if (v3)
    {
      v4 = a1;
      sub_10000A7C4(0, &qword_100AD5B98, UIWindow_ptr);
      v5 = v3;
      v6 = v4;
      LOBYTE(v4) = sub_1007A3184();

      if (v4)
      {
        return;
      }

      v3 = *(v2 + 16);
    }
  }

  else if (!v3)
  {
    return;
  }

  v7 = qword_100AD1AC0;
  v8 = v3;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_10079ACE4();
  sub_100008B98(v9, qword_100AF1A50);
  v19 = v8;
  v10 = sub_10079ACC4();
  v11 = sub_1007A29D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    if (v3)
    {
      v14 = [v19 description];
      v15 = sub_1007A2254();
      v17 = v16;
    }

    else
    {
      v17 = 0xE600000000000000;
      v15 = 0x3E656E6F6E3CLL;
    }

    v18 = sub_1000070F4(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Observing window: %s", v12, 0xCu);
    sub_1000074E0(v13);
  }

  sub_10001B95C();
}

uint64_t sub_10001DCF0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF1A50);
  sub_100008B98(v0, qword_100AF1A50);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

uint64_t sub_10001DD74(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v13 = 0u;
  v14 = 0u;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_10001811C(@"BKAssetPresentingBookOpenComplete", &v13, sub_100282C90, v6);

  sub_100007840(&v13, &unk_100AD5B40, &unk_100811300);
  v8 = [v4 defaultCenter];
  v13 = 0u;
  v14 = 0u;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_10001811C(@"BKBookDidCloseNotificationName", &v13, sub_100282C90, v9);

  sub_100007840(&v13, &unk_100AD5B40, &unk_100811300);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v10;
  sub_10079B884();
  swift_allocObject();
  return sub_10079B894();
}

uint64_t sub_10001DF54()
{

  return swift_deallocObject();
}

uint64_t sub_10001DF8C()
{

  return swift_deallocObject();
}

uint64_t sub_10001DFD0()
{
  v1 = [v0 rootViewController];
  if (!v1)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v8 = sub_10079ACE4();
    sub_100008B98(v8, qword_100AF1A50);
    v2 = sub_10079ACC4();
    v9 = sub_1007A29A4();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v2, v9, "no root VC", v10, 2u);
    }

    goto LABEL_13;
  }

  v2 = v1;
  type metadata accessor for MainToolbarController();
  if (swift_dynamicCastClass())
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v3 = sub_10079ACE4();
    sub_100008B98(v3, qword_100AF1A50);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "root VC is main toolbar controller";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_8:

LABEL_13:
    return 0;
  }

  v12 = [v2 presentedViewController];
  if (!v12)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AF1A50);
    v4 = sub_10079ACC4();
    v5 = sub_1007A29A4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_8;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "no presented VC";
    goto LABEL_7;
  }

  v13 = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    if (qword_100AD1AC0 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100AF1A50);
    v25 = v13;
    v26 = sub_10079ACC4();
    v27 = sub_1007A29A4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v13;
      v30 = v25;
      _os_log_impl(&_mh_execute_header, v26, v27, "presented VC %@ is not a BKAssetPresentingVC", v28, 0xCu);
      sub_100007840(v29, &unk_100AD9480, &qword_1008113B0);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v15 = v14;
  if (qword_100AD1AC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10079ACE4();
  sub_100008B98(v16, qword_100AF1A50);
  v17 = v13;
  v18 = sub_10079ACC4();
  v19 = sub_1007A29A4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v15;
    *v21 = v15;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "found BKAssetPresentingVC: %@", v20, 0xCu);
    sub_100007840(v21, &unk_100AD9480, &qword_1008113B0);
  }

  return v15;
}

char *sub_10001EC5C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = a2;
  v64 = a3;
  v55 = sub_1001F1160(&qword_100AD6A18, &qword_1008130C8);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v50 = &v50 - v6;
  v56 = sub_1001F1160(&qword_100AD6A20, &qword_1008130D0);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v50 - v7;
  v8 = sub_1001F1160(&qword_100AD6A28, &qword_1008130D8);
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v57 = &v50 - v9;
  v10 = sub_1001F1160(&unk_100ADAC60, &unk_1008130E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - v12;
  v14 = OBJC_IVAR___BKRootBarCoordinator_miniPlayerInteraction;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for PalettePresentationInteraction()) init];
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___BKRootBarCoordinator_tabBarController;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_tabBarController] = 0;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_splitViewController] = 0;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_cancellables] = &_swiftEmptySetSingleton;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_fullPlayerViewController] = 0;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_miniPlayerViewController] = 0;
  v4[OBJC_IVAR___BKRootBarCoordinator_undockingMiniPlayer] = 0;
  v4[OBJC_IVAR___BKRootBarCoordinator_isMiniPlayerHidden] = 0;
  *&v4[OBJC_IVAR___BKRootBarCoordinator_miniPlayerPaletteInteraction] = 0;
  v62 = a1;
  v16 = [a1 bk_window];
  if (v16 && (v17 = v16, v18 = [v16 traitCollection], v17, v18))
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v19 = [objc_opt_self() sharedInstance];
    v20 = [objc_allocWithZone(type metadata accessor for StandardItemsCacheManager()) init];
    v21 = objc_allocWithZone(type metadata accessor for RootBarStandardItemsManager(0));
    v22 = sub_10001FDF8(v19, 0, v20, v21);
    *&v4[OBJC_IVAR___BKRootBarCoordinator_standardItemsManager] = v22;
    v23 = objc_allocWithZone(type metadata accessor for TabBarController(0));
    v60 = v22;
    v24 = swift_unknownObjectRetain();
    v25 = sub_1000204C4(v24);
    swift_unknownObjectRelease();
    v26 = *&v4[v15];
    *&v4[v15] = v25;
    v27 = v25;

    *&v4[OBJC_IVAR___BKRootBarCoordinator_activeRootBarKind] = v25;
    swift_beginAccess();
    v28 = v27;
    sub_1001F1160(&unk_100AEB3A0, &unk_100818CD0);
    sub_10079B974();
    swift_endAccess();
    sub_100005920(&qword_100AD6A30, &unk_100ADAC60, &unk_1008130E0, &protocol conformance descriptor for Published<A>.Publisher);
    v29 = sub_10079BA14();
    (*(v11 + 8))(v13, v10);
    *&v4[OBJC_IVAR___BKRootBarCoordinator_selectedItemPublisher] = v29;
    *&v4[OBJC_IVAR___BKRootBarCoordinator_rootViewController] = v28;
    v30 = type metadata accessor for RootBarCoordinator();
    v66.receiver = v4;
    v66.super_class = v30;
    v51 = v28;
    v31 = objc_msgSendSuper2(&v66, "init");
    if (*&v31[OBJC_IVAR___BKRootBarCoordinator_splitViewController])
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    v61 = v18;
    if (*&v31[OBJC_IVAR___BKRootBarCoordinator_tabBarController])
    {
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    v32 = OBJC_IVAR___BKRootBarCoordinator_selectedItemPublisher;
    aBlock[0] = *&v31[OBJC_IVAR___BKRootBarCoordinator_selectedItemPublisher];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = v31;

    sub_1001F1160(&unk_100AECA30, &unk_1008130F0);
    sub_100005920(&unk_100ADE5A0, &unk_100AECA30, &unk_1008130F0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10079BB04();

    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    aBlock[0] = *&v31[v32];
    type metadata accessor for RootBarItem();

    v34 = v50;
    sub_10079BA24();

    sub_100005920(&qword_100AD6A38, &qword_100AD6A18, &qword_1008130C8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v35 = v52;
    v36 = v55;
    sub_10079BA54();
    (*(v53 + 8))(v34, v36);
    sub_100005920(&qword_100AD6A40, &qword_100AD6A20, &qword_1008130D0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    v37 = v57;
    v38 = v56;
    sub_10079BAD4();
    (*(v54 + 8))(v35, v38);
    *(swift_allocObject() + 16) = v33;
    sub_100005920(&qword_100AD6A48, &qword_100AD6A28, &qword_1008130D8, &protocol conformance descriptor for Publishers.Drop<A>);
    v39 = v59;
    sub_10079BB04();

    (*(v58 + 8))(v37, v39);
    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v40 = v51;
    aBlock[0] = *&v51[OBJC_IVAR___BKTabBarController_rootBarEventSubject];
    sub_1001F1160(&unk_100AD2090, &qword_10080B860);
    sub_100005920(&qword_100AEB170, &unk_100AD2090, &qword_10080B860, &protocol conformance descriptor for PassthroughSubject<A, B>);
    aBlock[0] = sub_10079BA14();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1001F1160(&qword_100AD6A50, &qword_100813100);
    sub_100005920(&qword_100AD6A58, &qword_100AD6A50, &qword_100813100, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_10079BB04();

    swift_beginAccess();
    sub_10079B854();
    swift_endAccess();

    v41 = [objc_opt_self() delegate];
    v42 = [v41 appLaunchCoordinator];

    v43 = sub_1007A2214();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v45 = swift_allocObject();
    v46 = v60;
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    aBlock[4] = sub_100242B90;
    aBlock[5] = v45;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A10198;
    v47 = _Block_copy(aBlock);
    v48 = v46;

    [v42 appLaunchCoordinatorOnConditionMask:65 blockID:v43 performBlock:v47];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    _Block_release(v47);

    return v33;
  }

  else
  {
    result = sub_1007A38A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_10001F85C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10001F894()
{

  return swift_deallocObject();
}

uint64_t sub_10001F8CC()
{

  return swift_deallocObject();
}

char *sub_10001F930()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___BKPalettePresentationInteraction_view] = 0;
  v0[OBJC_IVAR___BKPalettePresentationInteraction_isEnabled] = 1;
  v1 = OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer;
  *&v0[v1] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v2 = OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer;
  *&v0[v2] = [objc_allocWithZone(UIPanGestureRecognizer) init];
  *&v0[OBJC_IVAR___BKPalettePresentationInteraction_animationController] = 0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PalettePresentationInteraction();
  v3 = objc_msgSendSuper2(&v9, "init");
  v4 = OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer;
  v5 = *&v3[OBJC_IVAR___BKPalettePresentationInteraction_tapGestureRecognizer];
  v6 = v3;
  [v5 addTarget:v6 action:"tapGestureRecognized:"];
  [*&v3[v4] setDelegate:v6];
  v7 = OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer;
  [*&v6[OBJC_IVAR___BKPalettePresentationInteraction_panGestureRecognizer] addTarget:v6 action:"panGestureRecognized:"];
  [*&v6[v7] setMaximumNumberOfTouches:1];
  [*&v6[v7] _setHysteresis:5.0];
  [*&v6[v7] setDelegate:v6];

  return v6;
}

uint64_t type metadata accessor for RootBarStandardItemsManager(uint64_t a1)
{
  result = qword_100AF0F18;
  if (!qword_100AF0F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FCCC(uint64_t a1)
{
  if (!qword_100AF0F28)
  {
    sub_1001F1234(&qword_100AEB180, &unk_100813120);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF0F28);
    }
  }
}

void sub_10001FD30(uint64_t a1)
{
  sub_10001FCCC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_10001FDF8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v23 = a1;
  v24 = a2;
  v6 = sub_1007A2CF4();
  __chkstk_darwin(v6);
  v22[1] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A2D64();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1CA4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1001F1160(&unk_100AF0EA0, &qword_100813110);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v22 - v15;
  v27[3] = type metadata accessor for StandardItemsCacheManager();
  v27[4] = &protocol witness table for StandardItemsCacheManager;
  a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_loadedFromBag] = 0;
  v27[0] = a3;
  v17 = OBJC_IVAR____TtC5Books27RootBarStandardItemsManager__items;
  v26 = _swiftEmptyArrayStorage;
  sub_1001F1160(&qword_100AEB180, &unk_100813120);
  sub_10079B964();
  (*(v14 + 32))(&a4[v17], v16, v13);
  *&a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag] = 0;
  v22[0] = OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheAccessQueue;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  sub_1007A1C94();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v8);
  v26 = _swiftEmptyArrayStorage;
  sub_1000201CC();
  sub_1001F1160(&unk_100AD1E20, &qword_100824350);
  sub_100005920(&qword_100AE8230, &unk_100AD1E20, &qword_100824350, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  *&a4[v22[0]] = sub_1007A2DA4();
  *&a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_restrictionProvider] = v23;
  sub_100009864(v27, &a4[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager_cacheManager]);
  v18 = type metadata accessor for RootBarStandardItemsManager(0);
  v25.receiver = a4;
  v25.super_class = v18;
  v19 = objc_msgSendSuper2(&v25, "init");
  sub_1000074E0(v27);
  if (v24)
  {
    v20 = *&v19[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag];
    *&v19[OBJC_IVAR____TtC5Books27RootBarStandardItemsManager____lazy_storage___bag] = v24;
  }

  return v19;
}

unint64_t sub_1000201CC()
{
  result = qword_100AE8220;
  if (!qword_100AE8220)
  {
    sub_1007A2CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE8220);
  }

  return result;
}

uint64_t type metadata accessor for TabBarController(uint64_t a1)
{
  result = qword_100AEB248;
  if (!qword_100AEB248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000202B4(uint64_t a1)
{
  if (!qword_100ADACD8)
  {
    sub_1001F1234(&unk_100ADAC50, &qword_100832460);
    v1 = sub_10079B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADACD8);
    }
  }
}

void sub_10002032C(uint64_t a1)
{
  sub_1000202B4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100020400(id a1)
{
  v1 = objc_opt_new();
  v2 = qword_100AF7880;
  qword_100AF7880 = v1;
}

char *sub_1000204C4(uint64_t a1)
{
  v20[0] = sub_1007A2E74();
  v2 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AEB3A0, &unk_100818CD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___BKTabBarController_rootBarEventSubject;
  sub_1001F1160(&unk_100AD2090, &qword_10080B860);
  swift_allocObject();
  *&v1[v9] = sub_10079B8D4();
  v10 = OBJC_IVAR___BKTabBarController__cachedSelectedItem;
  v20[1] = 0;
  sub_1001F1160(&unk_100ADAC50, &qword_100832460);
  sub_10079B964();
  (*(v6 + 32))(&v1[v10], v8, v5);
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___BKTabBarController_items] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR___BKTabBarController_isCreatingContentForNavigationController;
  *&v1[v11] = [objc_opt_self() weakObjectsHashTable];
  v1[OBJC_IVAR___BKTabBarController_isPopulatingItems] = 0;
  v1[OBJC_IVAR___BKTabBarController_isTransferingFromSidebar] = 0;
  *&v1[OBJC_IVAR___BKTabBarController_cancellables] = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for TabBarController(0);
  v21.receiver = v1;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  [v13 setDelegate:v13];
  [v13 setTabBarMinimizeBehavior:1];

  sub_100020ED0();
  v14 = [objc_opt_self() standardUserDefaults];
  v15 = sub_1007A2214();
  LODWORD(v5) = [v14 BOOLForKey:v15];

  if (v5)
  {
    [v13 setMode:2];
  }

  v16 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100022A14(&qword_100AE19E0, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
  v17 = v20[0];
  sub_10079BB04();

  (*(v2 + 8))(v4, v17);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  sub_1001F1160(&unk_100AEB3D0, &qword_1008325D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10080B690;
  *(v18 + 32) = sub_10079B3E4();
  *(v18 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_1007A2C44();
  swift_unknownObjectRelease();

  return v13;
}