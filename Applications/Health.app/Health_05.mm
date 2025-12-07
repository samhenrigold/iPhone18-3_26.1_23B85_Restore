uint64_t sub_100083708()
{
  sub_10001870C(v0 + qword_1000DDA90, qword_1000DB4A0, sub_10001093C);
  sub_10001870C(v0 + qword_1000DDA98, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);

  swift_unknownObjectRelease();

  sub_100003B90((v0 + qword_1000DDAD8));
}

uint64_t sub_100083840()
{
  v0 = CompoundSectionedDataSource.deinit();
  sub_10001870C(v0 + qword_1000DDA90, qword_1000DB4A0, sub_10001093C);
  sub_10001870C(v0 + qword_1000DDA98, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);

  swift_unknownObjectRelease();

  sub_100003B90((v0 + qword_1000DDAD8));

  return v0;
}

uint64_t sub_100083980()
{
  sub_100083840();

  return swift_deallocClassInstance();
}

BOOL sub_1000839DC()
{
  v0 = JustObservingFetchedResultsControllerDataSource.frc.getter();
  v1 = [v0 fetchedObjects];

  if (!v1)
  {
    return 1;
  }

  type metadata accessor for Feed();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

void sub_100083A80(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8[4] = sub_1000844C4;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008310;
  v8[3] = &unk_1000D02B8;
  v5 = _Block_copy(v8);
  v6 = a2;
  v7 = a1;

  [v7 performBlock:v5];
  _Block_release(v5);
}

void sub_100083B64(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  if (NSManagedObjectContext.doesFeedEligibleForDisplayExist(kind:associatedProfileIdentifier:)())
  {
    static Logger.personalization.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Highlights section timeout complete, no population operation needed", v11, 2u);
    }

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    static Logger.personalization.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Highlights section timeout complete, dispatching population operation", v14, 2u);
    }

    (*(v3 + 8))(v6, v2);
    sub_100003DDC(0, &qword_1000DBC38, NSOperationQueue_ptr);
    v15 = static NSOperationQueue.userInitiated.getter();
    v16 = objc_allocWithZone(type metadata accessor for PopulateDiscoverFeedOperation());
    v17 = PopulateDiscoverFeedOperation.init(feedKinds:)();
    [v15 addOperation:v17];
  }
}

void sub_100083DCC(void *a1, uint64_t a2, void *a3)
{
  sub_10000ACE8(a2, v8);
  v5 = objc_allocWithZone(type metadata accessor for AllHighlightsByCategoryViewController());
  v6 = a3;
  v7 = AllHighlightsByCategoryViewController.init(healthExperienceStore:healthStore:provenance:)();
  [a1 showViewController:v7 sender:a1];
}

void sub_100083E94()
{

  sub_100003B90((v0 + qword_1000DDB50));
  v1 = *(v0 + qword_1000DDB58);
}

uint64_t sub_100083EF4()
{
  v0 = CompoundSectionedDataSource.deinit();
  v1 = *(v0 + qword_1000DDB40);

  sub_100003B90((v0 + qword_1000DDB50));
  v2 = *(v0 + qword_1000DDB58);

  return swift_deallocClassInstance();
}

uint64_t sub_100083F88(void *a1, void *a2)
{
  v32 = a2;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BFFC(a1, a1[3]);
  v17 = dispatch thunk of HealthExperienceStore.sharedBackgroundContext.getter();
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.userInitiated(_:), v13);
  v30 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  static DispatchTime.now()();
  type metadata accessor for SummaryTabFeedPopulationManager();
  static SummaryTabFeedPopulationManager.highlightsSectionTimeout.getter();
  + infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v19 = swift_allocObject();
  v20 = v32;
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  aBlock[4] = sub_1000844BC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0268;
  v21 = _Block_copy(aBlock);
  v22 = v20;
  v23 = v17;
  v24 = v31;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_100012734(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100010760(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
  sub_100028B74();
  v25 = v33;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v30;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v37 + 8))(v25, v26);
  (*(v35 + 8))(v24, v36);
  v18(v12, v29);
}

uint64_t sub_100084468()
{

  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10008452C(uint64_t a1)
{
  if (!qword_1000DBA88)
  {
    type metadata accessor for MutableArrayDataSourceWithLayout();
    v1 = type metadata accessor for CellRegistering();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DBA88);
    }
  }
}

uint64_t sub_10008458C()
{
  sub_100003B90((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

void sub_1000845D8(uint64_t a1)
{
  if (!qword_1000DDC68)
  {
    type metadata accessor for UIUserInterfaceSizeClass(255);
    sub_100069570();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DDC68);
    }
  }
}

unint64_t sub_100084648()
{
  result = qword_1000DDC70;
  if (!qword_1000DDC70)
  {
    sub_100012248(255, &qword_1000DDC50, &type metadata accessor for NoticesDataSource, sub_100012EDC, &type metadata accessor for HideableDataSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDC70);
  }

  return result;
}

void *sub_100084714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007C57C(0, v1, 0);
    v3 = (a1 + 32);
    v4 = _swiftEmptyArrayStorage[2];
    v5 = 2 * v4;
    do
    {
      v6 = *v3++;
      v7 = sub_100084800(v6);
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v4 + 1;
      if (v4 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_10007C57C((v9 > 1), v10, 1);
        v8 = v13;
        v7 = v12;
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = &_swiftEmptyArrayStorage[v5];
      v11[4] = v7;
      v11[5] = v8;
      v5 += 2;
      v4 = v10;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100084800(char a1)
{
  result = 0xD000000000000042;
  switch(a1)
  {
    case 2:
    case 30:
      result = 0xD00000000000004FLL;
      break;
    case 3:
      result = 0xD00000000000004CLL;
      break;
    case 4:
      result = 0xD000000000000054;
      break;
    case 5:
      result = 0xD000000000000047;
      break;
    case 6:
    case 7:
      result = 0xD0000000000000C8;
      break;
    case 8:
      result = 0xD0000000000000BBLL;
      break;
    case 9:
      result = 0xD0000000000000C7;
      break;
    case 10:
      result = 0xD0000000000000D0;
      break;
    case 11:
      result = 0xD000000000000061;
      break;
    case 12:
      result = 0xD000000000000062;
      break;
    case 13:
      result = 0xD000000000000060;
      break;
    case 14:
      result = 0xD00000000000005ELL;
      break;
    case 15:
      result = 0xD00000000000002ALL;
      break;
    case 16:
      result = 0x1000000000000058;
      break;
    case 17:
      result = 0xD000000000000028;
      break;
    case 18:
      result = 0xD000000000000034;
      break;
    case 19:
    case 33:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000051;
      break;
    case 21:
    case 22:
      result = 0xD00000000000001CLL;
      break;
    case 23:
      result = 0xD000000000000043;
      break;
    case 25:
      result = 0xD000000000000049;
      break;
    case 26:
      result = 0xD00000000000003CLL;
      break;
    case 27:
      result = 0xD000000000000040;
      break;
    case 28:
      result = 0xD000000000000041;
      break;
    case 29:
      result = 0xD00000000000004ELL;
      break;
    case 31:
      result = 0xD00000000000001BLL;
      break;
    case 32:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100084B18(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000CC738, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100084B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10008560C(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000771C(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000771C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000771C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100084E48()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = sub_10000F810();
    v4[3] = type metadata accessor for PinnedContentManager();
    v4[4] = &protocol witness table for PinnedContentManager;
    v4[0] = v2;
    type metadata accessor for StoreDemoModeManager();
    v1 = swift_allocObject();
    sub_1000091BC(v4, v1 + 16);
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_100084EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v44 - v10;
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  sub_100006900();
  v15 = v14;
  v16 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1 + OBJC_IVAR____TtC6Health16LifecycleManager__preloadPluginsAfterLaunch, v15);
  UserDefault.wrappedValue.getter();
  (*(v16 + 8))(v18, v15);
  if (v45 == 1)
  {
    static Logger.general.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v44 = a2;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136446210;
      v24 = _typeName(_:qualified:)();
      v26 = v4;
      v27 = sub_1000036D0(v24, v25, &v45);

      *(v22 + 4) = v27;
      v4 = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%{public}s] Preloading plugins in a background thread asynchronously", v22, 0xCu);
      sub_100003B90(v23);

      v28 = *(v5 + 8);
      v28(v13, v26);
    }

    else
    {

      v28 = *(v5 + 8);
      v28(v13, v4);
    }

    type metadata accessor for FoundationPluginBundleProvider();
    static FoundationPluginBundleProvider.sharedInstance.getter();
    dispatch thunk of PluginBundleProvider.loadAllPlugins()();

    static Logger.general.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136446210;
      v41 = _typeName(_:qualified:)();
      v43 = sub_1000036D0(v41, v42, &v45);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "[%{public}s] Finished preloading plugins", v39, 0xCu);
      sub_100003B90(v40);
    }

    return (v28)(v11, v4);
  }

  else
  {
    static Logger.general.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v45 = v32;
      *v31 = 136446210;
      v33 = _typeName(_:qualified:)();
      v35 = sub_1000036D0(v33, v34, &v45);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "[%{public}s] Skipping preload plugins after app launch", v31, 0xCu);
      sub_100003B90(v32);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100085504()
{

  v1 = OBJC_IVAR____TtC6Health16LifecycleManager__preloadPluginsAfterLaunch;
  sub_100006900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000855A4()
{
  sub_100085504();

  return swift_deallocClassInstance();
}

uint64_t sub_10008560C(uint64_t a1, uint64_t a2)
{
  sub_100006120(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000856A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100018D6C;

  return sub_10000C040(a1, v4);
}

uint64_t type metadata accessor for AllHealthDataViewController(uint64_t a1)
{
  result = qword_1000DDEA8;
  if (!qword_1000DDEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000857A8(uint64_t a1)
{
  result = type metadata accessor for Presentation();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100085858(uint64_t a1)
{
  v2 = qword_1000E3F58;
  v3 = enum case for Presentation.showAllData(_:);
  v4 = type metadata accessor for Presentation();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100085910()
{
  v1 = type metadata accessor for DeepLinkActivityType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AllHealthDataViewController(0);
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v6 = [objc_opt_self() mainBundle];
  v16._object = 0x80000001000AA950;
  v7._countAndFlagsBits = 0x6C616548206C6C41;
  v7._object = 0xEF61746144206874;
  v8._object = 0x80000001000AA930;
  v16._countAndFlagsBits = 0xD00000000000007FLL;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v6, v7, v16);

  v9 = String._bridgeToObjectiveC()();
  [v0 setTitle:v9];

  (*(v2 + 104))(v4, enum case for DeepLinkActivityType.allHealthData(_:), v1);
  v10 = static HAUserActivity.createActivity(title:restorationType:profileIdentifier:eligibleForSearch:eligibleForHandoff:eligibleForPrediction:)();
  (*(v2 + 8))(v4, v1);
  [v0 setUserActivity:v10];

  v11 = [v0 collectionView];
  if (v11)
  {
    v12 = v11;

    isa = Array._bridgeToObjectiveC()().super.isa;
    v14 = HKUIJoinStringsForAutomationIdentifier();

    [v12 setAccessibilityIdentifier:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_100085B94(void *a1)
{
  v1 = a1;
  sub_100085910();
}

void sub_100085BDC(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for Presentation();
  __chkstk_darwin(v6);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &a1[qword_1000E3F58]);
  v9 = a1;
  UIViewController.traitOverrides.getter();
  UIMutableTraits.presentation.setter();
  UIViewController.traitOverrides.setter();
  v10 = type metadata accessor for AllHealthDataViewController(0);
  v11.receiver = v9;
  v11.super_class = v10;
  objc_msgSendSuper2(&v11, "viewIsAppearing:", a3);
}

void sub_100085D58(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AllHealthDataViewController(0);
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidAppear:", a3);
  v5 = [v4 userActivity];
  if (v5)
  {
    v6 = v5;
    [v4 submitUserActivityForRestoration:v5];
  }
}

void sub_100085DF4()
{
  type metadata accessor for CompoundDataSourceCollectionViewController();
  v1 = method lookup function for CompoundDataSourceCollectionViewController();
  v1();
  v2 = [v0 collectionView];
  if (v2)
  {
    type metadata accessor for PlaceholderTextCollectionViewCell();
    UICollectionView.registerCell<A>(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100085EF4()
{
  sub_100003B90((v0 + qword_1000DDEA0));
  v1 = qword_1000E3F58;
  v2 = type metadata accessor for Presentation();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100085F7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AllHealthDataViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100085FB4(uint64_t a1)
{
  sub_100003B90((a1 + qword_1000DDEA0));
  v2 = qword_1000E3F58;
  v3 = type metadata accessor for Presentation();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_100086048@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1000E3F58;
  v5 = type metadata accessor for Presentation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for CloudSyncDownloadingViewController(uint64_t a1)
{
  result = qword_1000DDF08;
  if (!qword_1000DDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100086110(uint64_t a1)
{
  sub_100012654(319, &qword_1000DB158, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000861DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  *(v1 + qword_1000DDEF8 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = qword_1000DDF00;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v8 = objc_allocWithZone(type metadata accessor for CloudSyncStateObserver());
  v9 = a1;
  *(v2 + qword_1000E3F70) = CloudSyncStateObserver.init(healthStore:store:)();
  v10 = [objc_allocWithZone(UIView) init];
  static OnboardingImageHeight.iconDefaultHeight.getter();
  v12 = [objc_opt_self() configurationWithPointSize:4 weight:1 scale:v11];
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  if (v14)
  {
    v15 = type metadata accessor for ImageWithCircleBackground();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC6Health25ImageWithCircleBackground_image] = v14;
    v33.receiver = v16;
    v33.super_class = v15;
    v17 = v14;
    v18 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_100028D78();

    v10 = v18;
  }

  [objc_opt_self() wapiCapability];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v19 = v10;
  v20 = OnboardingIconSmallPaddingViewController.init(title:detailText:heroView:heroViewHeight:linkButtonText:linkButtonAccessibilityIdentifier:)();
  sub_10000B84C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000AE110;
  v22 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v24 = HKUIJoinStringsForAutomationIdentifier();

  if (v24)
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    *(v21 + 32) = v25;
    *(v21 + 40) = v27;
    strcpy((v21 + 48), "ContinueButton");
    *(v21 + 63) = -18;
    v28 = Array._bridgeToObjectiveC()().super.isa;

    v29 = HKUIJoinStringsForAutomationIdentifier();

    v30 = v22;
    v31 = Array._bridgeToObjectiveC()().super.isa;
    v32 = HKUIJoinStringsForAutomationIdentifier();

    if (v32)
    {
      [v30 setAccessibilityIdentifier:v32];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000866E4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for CloudSyncDownloadingViewController(0);
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v5 = HKUIJoinStringsForAutomationIdentifier();

    if (v5)
    {
      [v3 setAccessibilityIdentifier:v5];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000867D0(void *a1)
{
  v1 = a1;
  sub_1000866E4();
}

uint64_t sub_100086818(char a1)
{
  v2 = v1;
  sub_100012654(0, &qword_1000DB158, &type metadata accessor for Date);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CloudSyncDownloadingViewController(0);
  v12.receiver = v2;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  Date.init()();
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = qword_1000DDF00;
  swift_beginAccess();
  sub_1000874EC(v6, v2 + v9);
  swift_endAccess();
  dispatch thunk of CloudSyncStateObserver.startFirstRestoreIfNeeded()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of CloudSyncStateObserver.firstRestoreStateChangeHandler.setter();
}

void sub_1000869A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100086A50(a1);
  }
}

void sub_1000869FC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100086818(a3);
}

uint64_t sub_100086A50(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v43 - v7;
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for CloudSyncRestoreState();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = *(v12 + 16);
  v18(&v43 - v16, a1, v11);
  v18(v15, v17, v11);
  if (CloudSyncRestoreState.isOngoing.getter())
  {
    static Logger.cloudSync.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v48 = v44;
      *v21 = 136315138;
      v22 = _typeName(_:qualified:)();
      v24 = sub_1000036D0(v22, v23, &v48);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "[%s] Sync in progress", v21, 0xCu);
      sub_100003B90(v44);
    }

    (*(v46 + 8))(v10, v47);
    v25 = *(v12 + 8);
    v25(v15, v11);
    return (v25)(v17, v11);
  }

  else
  {
    v27 = *(v12 + 8);
    v27(v15, v11);
    v28 = (*(v12 + 88))(v17, v11);
    if (v28 == enum case for CloudSyncRestoreState.failed(_:))
    {
      static Logger.cloudSync.getter();
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v48 = v32;
        *v31 = 136315138;
        v33 = _typeName(_:qualified:)();
        v35 = sub_1000036D0(v33, v34, &v48);

        *(v31 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v29, v30, "[%s] Sync failed", v31, 0xCu);
        sub_100003B90(v32);
      }

      return (*(v46 + 8))(v5, v47);
    }

    else if (v28 == enum case for CloudSyncRestoreState.completed(_:))
    {
      static Logger.cloudSync.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v48 = v39;
        *v38 = 136315138;
        v40 = _typeName(_:qualified:)();
        v42 = sub_1000036D0(v40, v41, &v48);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%s] Sync completed", v38, 0xCu);
        sub_100003B90(v39);
      }

      return (*(v46 + 8))(v8, v47);
    }

    else
    {
      return (v27)(v17, v11);
    }
  }
}

uint64_t sub_100086FA0()
{
  swift_getObjectType();
  sub_100012654(0, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (&v24 - v4);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.cloudSync.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    v15 = _typeName(_:qualified:)();
    v17 = sub_1000036D0(v15, v16, &v27);
    v25 = v6;
    v18 = v17;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%s] User tapped Done while sync was in progress", v13, 0xCu);
    sub_100003B90(v14);

    v3 = v26;

    (*(v7 + 8))(v9, v25);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = enum case for CloudSyncRestoreState.activelyRestoring(_:);
    v21 = type metadata accessor for CloudSyncRestoreState();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v5, v20, v21);
    v23 = *(v22 + 56);
    v23(v5, 0, 1, v21);
    v23(v3, 1, 1, v21);
    sub_1000731F4(v5, v3);
    swift_unknownObjectRelease();
    sub_100087574(v3, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
    return sub_100087574(v5, &qword_1000DD4D0, &type metadata accessor for CloudSyncRestoreState);
  }

  return result;
}

void sub_100087320(void *a1)
{
  v1 = a1;
  sub_100086FA0();
}

void sub_1000873C8()
{
  sub_10005A3AC(v0 + qword_1000DDEF8);
  sub_100087574(v0 + qword_1000DDF00, &qword_1000DB158, &type metadata accessor for Date);
  v1 = *(v0 + qword_1000E3F70);
}

id sub_100087434()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CloudSyncDownloadingViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10008746C(uint64_t a1)
{
  sub_10005A3AC(a1 + qword_1000DDEF8);
  sub_100087574(a1 + qword_1000DDF00, &qword_1000DB158, &type metadata accessor for Date);
  v2 = *(a1 + qword_1000E3F70);
}

uint64_t sub_1000874EC(uint64_t a1, uint64_t a2)
{
  sub_100012654(0, &qword_1000DB158, &type metadata accessor for Date);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_100012654(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000875D0()
{
  sub_100087638(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000AE100;
  v1 = type metadata accessor for HealthIntentsFrameworkPackage();
  v2 = sub_10008773C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  return v0;
}

void sub_100087638(uint64_t a1)
{
  if (!qword_1000DDF58)
  {
    sub_100087690();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DDF58);
    }
  }
}

unint64_t sub_100087690()
{
  result = qword_1000DDF60;
  if (!qword_1000DDF60)
  {
    sub_1000876D8();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1000DDF60);
  }

  return result;
}

unint64_t sub_1000876D8()
{
  result = qword_1000DDF68;
  if (!qword_1000DDF68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000DDF68);
  }

  return result;
}

unint64_t sub_10008773C()
{
  result = qword_1000DDF70;
  if (!qword_1000DDF70)
  {
    type metadata accessor for HealthIntentsFrameworkPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DDF70);
  }

  return result;
}

uint64_t type metadata accessor for HealthNotificationsWelcomeViewController(uint64_t a1)
{
  result = qword_1000DDFA0;
  if (!qword_1000DDFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1000878B0()
{
  v1 = qword_1000DDF98;
  v2 = *(v0 + qword_1000DDF98);
  if (v2)
  {
    v3 = *(v0 + qword_1000DDF98);
  }

  else
  {
    v4 = sub_100087910();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100087910()
{
  type metadata accessor for DiffableCollectionViewAdaptor();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  return v4;
}

char *sub_100087A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  *(v3 + qword_1000DDF88 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + qword_1000DDF90) = 0;
  *(v3 + qword_1000DDF98) = 0;
  *(v3 + qword_1000DDF78) = a1;
  *(v3 + qword_1000DDF80) = a2;

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100044B50();
  static AdvertisableFeature.Identifier.healthWelcomeFlowIdentifiers.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = AdvertisableFeatureOnboardingViewController.init(featureManager:featureIdentifiers:title:detailText:subtitleText:icon:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();

  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = HKUIJoinStringsForAutomationIdentifier();

  v12 = [v8 hxui_addPrimaryFooterButtonWithTitle:v9 accessibilityIdentifier:v11];
  v13 = *&v8[qword_1000DDF90];
  *&v8[qword_1000DDF90] = v12;

  sub_100087D88();

  return v8;
}

void sub_100087D88()
{
  v1 = [v0 headerView];
  [v1 setAllowFullWidthIcon:1];

  v2 = [v0 headerView];
  v21 = [v2 customIconContainerView];

  if (v21)
  {
    [v21 setClipsToBounds:0];
    v3 = sub_1000878B0();
    [v21 addSubview:v3];

    v4 = objc_opt_self();
    if (([v4 hk_currentDeviceHas4InchScreen] & 1) != 0 || objc_msgSend(v4, "hk_currentDeviceHas4Point7InchScreen"))
    {
      v5 = objc_opt_self();
      sub_1000157F8();
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000B02F0;
      v7 = qword_1000DDF98;
      v8 = [*&v0[qword_1000DDF98] topAnchor];
      v9 = [v21 topAnchor];
      v10 = [v8 constraintEqualToAnchor:v9 constant:10.0];

      *(v6 + 32) = v10;
      v11 = [*&v0[v7] leadingAnchor];
      v12 = [v21 leadingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      *(v6 + 40) = v13;
      v14 = [*&v0[v7] trailingAnchor];
      v15 = [v21 trailingAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];

      *(v6 + 48) = v16;
      v17 = [*&v0[v7] bottomAnchor];
      v18 = [v21 bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      *(v6 + 56) = v19;
      sub_100003DDC(0, &qword_1000DD2C0, NSLayoutConstraint_ptr);
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 activateConstraints:v20.super.isa];
    }

    else
    {
      v20.super.isa = *&v0[qword_1000DDF98];
      [(objc_class *)v20.super.isa hk_alignConstraintsWithView:v21];
    }
  }
}

void sub_1000880F4(void *a1)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HealthNotificationsWelcomeViewController(0);
  v1 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    v4 = String._bridgeToObjectiveC()();
    [v3 setAccessibilityIdentifier:v4];

    sub_100047B74();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000881C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.general.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v24 = ObjectType;
  if (v9)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315138;
    v12 = _typeName(_:qualified:)();
    v14 = sub_1000036D0(v12, v13, v25);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Primary footer button tapped", v10, 0xCu);
    sub_100003B90(v11);
  }

  (*(v4 + 8))(v6, v3);
  v15 = *(v1 + qword_1000DDF90);
  if (v15)
  {
    [v15 showsBusyIndicator];
  }

  v16 = dispatch thunk of AdvertisableFeatureOnboardingViewController.hasAdvertisableFeatures.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v24;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;

  sub_100045B08(v16 & 1, sub_100089CCC, v18);

  v26 = 3;
  v20 = type metadata accessor for AnalyticsSender();
  v21 = static AnalyticsSender.shared.getter();
  v25[3] = v20;
  v25[4] = &protocol witness table for AnalyticsSender;
  v25[0] = v21;
  sub_10004B810();
  AnalyticsSubmitting.submit(sender:)();
  return sub_100003B90(v25);
}

uint64_t sub_100088478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v13 = *(v22 - 8);
  __chkstk_darwin(v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = v7;
  *(v16 + 48) = a5;
  aBlock[4] = sub_100089CD4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008310;
  aBlock[3] = &unk_1000D0540;
  v17 = _Block_copy(aBlock);

  sub_100089CE8(a1, a2, v7);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007CBC(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000445D4(0);
  sub_100007CBC(&qword_1000DAD48, sub_1000445D4, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = v21;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v22);
}

void sub_100088794(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5)
{
  v64 = a5;
  v65 = a2;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v62 - v15;
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  if (a4)
  {
    if (a4 == 1)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        sub_100088ECC(v65, a3);
      }

      goto LABEL_26;
    }

    if (v65 | a3)
    {
      if (v65 ^ 1 | a3)
      {
        static Logger.general.getter();
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v66[0] = v63;
          *v51 = 136315394;
          v52 = _typeName(_:qualified:)();
          v54 = sub_1000036D0(v52, v53, v66);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2080;
          v67[0] = v65;
          v67[1] = a3;
          v68 = 2;
          v55 = String.init<A>(describing:)();
          v57 = sub_1000036D0(v55, v56, v66);

          *(v51 + 14) = v57;
          _os_log_impl(&_mh_execute_header, v49, v50, "%s Did not proceed: %s", v51, 0x16u);
          swift_arrayDestroy();
        }

        (*(v10 + 8))(v13, v9);
      }

      else
      {
        swift_beginAccess();
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          sub_100089440();
        }

        swift_beginAccess();
        v34 = swift_unknownObjectWeakLoadStrong();
        if (v34)
        {
          v35 = *(v34 + qword_1000DDF90);
          v36 = v34;
          v37 = v35;

          if (v35)
          {
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v38 = String._bridgeToObjectiveC()();

            [v37 setTitle:v38 forState:0];
          }
        }
      }

      goto LABEL_26;
    }

    static Logger.general.getter();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67[0] = v42;
      *v41 = 136315138;
      v43 = _typeName(_:qualified:)();
      v45 = sub_1000036D0(v43, v44, v67);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s Notifying that the user tapped continue in order to proceed, no follow up items", v41, 0xCu);
      sub_100003B90(v42);
    }

    (*(v10 + 8))(v18, v9);
    swift_beginAccess();
    v46 = swift_unknownObjectWeakLoadStrong();
    if (v46)
    {
      v47 = v46;
      v48 = swift_unknownObjectWeakLoadStrong();

      if (v48)
      {
        v31 = _swiftEmptyArrayStorage;
        goto LABEL_22;
      }
    }
  }

  else
  {
    static Logger.advertisableFeatures.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v67[0] = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = sub_1000036D0(v25, v26, v67);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s Notifying that the user tapped continue in order to proceed, supplying follow up items", v23, 0xCu);
      sub_100003B90(v24);
    }

    (*(v10 + 8))(v16, v9);
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v30 = swift_unknownObjectWeakLoadStrong();

      if (v30)
      {
        v31 = v65;
LABEL_22:
        sub_100073CE0(v31);
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_26:
  swift_beginAccess();
  v58 = swift_unknownObjectWeakLoadStrong();
  if (v58)
  {
    v59 = *(v58 + qword_1000DDF90);
    v60 = v58;
    v61 = v59;

    if (v59)
    {
      [v61 hidesBusyIndicator];
    }
  }
}

void sub_100088E84(void *a1)
{
  v1 = a1;
  sub_1000881C0();
}

void sub_100088ECC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v28[1] = swift_getObjectType();
  v6 = type metadata accessor for Logger();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v11 = String._bridgeToObjectiveC()();

  v29 = a1;
  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  v15 = v3;
  v16 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100089D04;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100087848;
  aBlock[3] = &unk_1000D05E0;
  v17 = _Block_copy(aBlock);

  v18 = [objc_opt_self() actionWithTitle:v16 style:1 handler:v17];
  _Block_release(v17);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v20 = HKUIJoinStringsForAutomationIdentifier();

  [v18 setAccessibilityIdentifier:v20];
  [v13 addAction:v18];
  static Logger.general.getter();

  v30 = v8;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v28[0] = v6;
    v24 = v23;
    aBlock[0] = swift_slowAlloc();
    *v24 = 136315395;
    v25 = _typeName(_:qualified:)();
    v27 = sub_1000036D0(v25, v26, aBlock);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2081;
    *(v24 + 14) = sub_1000036D0(v29, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v21, v22, "%s Showing alert with description: %{private}s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v30, v28[0]);
  }

  else
  {

    (*(v31 + 8))(v30, v6);
  }

  [v15 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_1000893E0(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100073CE0(_swiftEmptyArrayStorage);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100089440()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for Logger();
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = &ObjectType - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, ObjectType}];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();

  v36 = nullsub_1;
  v37 = 0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100087848;
  v35 = &unk_1000D0568;
  v8 = _Block_copy(&aBlock);

  v9 = objc_opt_self();
  v10 = [v9 actionWithTitle:v7 style:1 handler:v8];
  _Block_release(v8);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v12 = HKUIJoinStringsForAutomationIdentifier();

  [v10 setAccessibilityIdentifier:v12];
  v27 = v10;
  [v6 addAction:v10];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();

  v36 = sub_100089A8C;
  v37 = 0;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100087848;
  v35 = &unk_1000D0590;
  v14 = _Block_copy(&aBlock);

  v15 = [v9 actionWithTitle:v13 style:0 handler:v14];
  _Block_release(v14);

  v16 = Array._bridgeToObjectiveC()().super.isa;
  v17 = HKUIJoinStringsForAutomationIdentifier();

  [v15 setAccessibilityIdentifier:v17];
  [v6 addAction:v15];
  [v6 setPreferredAction:v15];
  v18 = v28;
  static Logger.general.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136315138;
    v23 = _typeName(_:qualified:)();
    v25 = sub_1000036D0(v23, v24, &aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s Showing notification authorization denied alert", v21, 0xCu);
    sub_100003B90(v22);
  }

  (*(v29 + 8))(v18, v30);
  [v31 presentViewController:v6 animated:1 completion:0];
}

uint64_t sub_100089A8C()
{
  v0 = type metadata accessor for ExternalDeepLink();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for ExternalDeepLink.healthSettings(_:), v0);
  ExternalDeepLink.open()();
  return (*(v1 + 8))(v3, v0);
}

void sub_100089BA0()
{

  sub_10005A3AC(v0 + qword_1000DDF88);

  v1 = *(v0 + qword_1000DDF98);
}

id sub_100089C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthNotificationsWelcomeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100089C48(uint64_t a1)
{

  sub_10005A3AC(a1 + qword_1000DDF88);

  v2 = *(a1 + qword_1000DDF98);
}

uint64_t sub_100089CE8(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t type metadata accessor for DataLoggingSectionDataSource(uint64_t a1)
{
  result = qword_1000DE018;
  if (!qword_1000DE018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100089DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000ACE8(a2, v13);
  sub_10003C16C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AE100;
  *(v6 + 32) = HKHealthStore.sourceProfile.getter();
  sub_10000ACE8(a4, &v12);
  v7 = objc_allocWithZone(type metadata accessor for EditFavoritesCollectionViewController());
  v8 = EditFavoritesCollectionViewController.init(pinnedContentManager:sourceProfiles:healthExperienceStore:)();
  v9 = [objc_allocWithZone(HKNavigationController) initWithRootViewController:v8];
  v10 = [a1 viewController];
  if (v10)
  {
    v11 = v10;
    [v10 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_100089EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v9 = v8;
  v10 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  sub_10002ACA0();
  v13 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v14 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v13)
  {
    v14 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v10 + 104))(v12, *v14, v9);
  dispatch thunk of HideableDataSource.visibility.setter();
  sub_10008A3E8(0, &qword_1000DE088, &type metadata accessor for HideableDataSource);
  v15 = method lookup function for HideableDataSource();
  return v15(a1, a2, a3, a4);
}

uint64_t sub_10008A040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v23 = a5;
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v6 = v5;
  v7 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = &v22[-v8];
  sub_10002ACA0();
  v11 = v10;
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static NSDiffableDataSourceSnapshot._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = NSDiffableDataSourceSnapshot.numberOfItems.getter();
  v19 = &enum case for HideableDataSource.Visibility.hidden<A>(_:);
  if (v18)
  {
    v19 = &enum case for HideableDataSource.Visibility.visible<A>(_:);
  }

  (*(v7 + 104))(v9, *v19, v6);
  dispatch thunk of HideableDataSource.visibility.setter();
  sub_10008A3E8(0, &qword_1000DE088, &type metadata accessor for HideableDataSource);
  v20 = method lookup function for HideableDataSource();
  v20(v15, v17, v14, v23);

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10008A2D4()
{
  HideableDataSource.deinit();

  return swift_deallocClassInstance();
}

void sub_10008A30C(uint64_t a1)
{
  if (!qword_1000DE070)
  {
    type metadata accessor for PinnedContentDataLoggingDataSource();
    sub_10008A3A0(&qword_1000DE078, &type metadata accessor for PinnedContentDataLoggingDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);
    v1 = type metadata accessor for Supplementary();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE070);
    }
  }
}

uint64_t sub_10008A3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10008A3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_10008A30C(255);
    v7 = v6;
    v8 = sub_10008A3A0(&qword_1000DE080, sub_10008A30C, &protocol conformance descriptor for Supplementary<A>);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10008A484()
{
  sub_10004FC00();
  result = static NSBundle.healthExperienceUI.getter();
  qword_1000DDFF0 = result;
  return result;
}

void sub_10008A4B8()
{
  if (qword_1000DA5B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000DDFF0;
  v4._object = 0x80000001000AAF90;
  v1._countAndFlagsBits = 0x4F4C204B43495551;
  v2._countAndFlagsBits = 0x6F4C206B63697551;
  v2._object = 0xE900000000000067;
  v1._object = 0xE900000000000047;
  v4._countAndFlagsBits = 0xD000000000000014;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000DDFF8 = v3;
}

void sub_10008A59C()
{
  if (qword_1000DA5B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000DDFF0;
  v4._object = 0x80000001000A66E0;
  v1._countAndFlagsBits = 1414087749;
  v1._object = 0xE400000000000000;
  v2._countAndFlagsBits = 1953064005;
  v2._object = 0xE400000000000000;
  v4._countAndFlagsBits = 0xD000000000000010;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_1000DE008 = v3;
}

uint64_t sub_10008A664(void *a1, void *a2, void *a3)
{
  sub_10008A3E8(0, &qword_1000DE068, &type metadata accessor for HideableDataSource.Visibility);
  v27 = v6;
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v23 = v22 - v7;
  v26 = type metadata accessor for ListLayoutConfiguration();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v10 - 8);
  if (qword_1000DA5B8 != -1)
  {
    swift_once();
  }

  v22[1] = xmmword_1000DDFF8;
  v11 = qword_1000DA5C0;

  if (v11 != -1)
  {
    swift_once();
  }

  sub_10000ACE8(a3, &v29);
  sub_10000ACE8(a1, v28);
  v12 = swift_allocObject();
  sub_100014D24(&v29, v12 + 16);
  *(v12 + 56) = a2;
  sub_100014D24(v28, v12 + 64);

  v13 = a2;
  static UIListContentConfiguration.extraProminentInsetGroupedHeader()();
  v14 = type metadata accessor for HeaderItem();
  swift_allocObject();
  v15 = HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)();
  static ListLayoutConfiguration.withHeader.getter();
  ListLayoutConfiguration.interGroupSpacing.setter();
  v16 = ListLayoutConfiguration.additionalContentInsets.modify();
  *(v17 + 16) = 0;
  v16(&v29, 0);
  sub_10000ACE8(a3, &v29);
  sub_10000BFFC(a1, a1[3]);
  dispatch thunk of HealthExperienceStore.viewContext.getter();
  v18 = objc_allocWithZone(type metadata accessor for PinnedContentDataLoggingDataSource());
  v19 = PinnedContentDataLoggingDataSource.init(pinnedContentManager:context:)();
  v30 = v14;
  v31 = sub_10008A3A0(&qword_1000DAE78, &type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  *&v29 = v15;
  sub_10008A3A0(&qword_1000DE078, &type metadata accessor for PinnedContentDataLoggingDataSource, &protocol conformance descriptor for FetchedResultsControllerDataSource<A>);

  SnapshotDataSource.withSupplementaryItem(_:)();

  sub_100003B90(&v29);
  (*(v25 + 104))(v23, enum case for HideableDataSource.Visibility.visible<A>(_:), v27);
  v20 = HideableDataSource.init(source:visibility:)();

  sub_100003B90(a3);
  (*(v24 + 8))(v9, v26);
  sub_100003B90(a1);
  return v20;
}

void sub_10008AB04()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  v3 = *(v0 + qword_1000DB930);
  v4 = objc_allocWithZone(HKProfileStore);

  v5 = [v4 initWithHealthStore:v3];
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10008AD70;
  *(v6 + 24) = v2;
  v8[4] = sub_10008C438;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10008C440;
  v8[3] = &unk_1000D0680;
  v7 = _Block_copy(v8);

  [v5 fetchAllProfilesWithCompletion:v7];
  _Block_release(v7);
}

void sub_10008AC7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = v8;
      sub_10008AD78(&v11, a2, a3);

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_10008AD78(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [objc_allocWithZone(HKProfileStore) initWithHealthStore:*a1];
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v5;
  v7[4] = a3;
  v10[4] = sub_10008C4E4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10008BEFC;
  v10[3] = &unk_1000D06D0;
  v8 = _Block_copy(v10);

  v9 = v5;

  [v6 fetchDisplayName:v8];
  _Block_release(v8);
}

uint64_t sub_10008AE98(void **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, void **a8)
{
  v99 = a8;
  v103 = a7;
  v122 = a6;
  v101 = a4;
  v102 = a3;
  v100 = a1;
  v115 = type metadata accessor for Logger();
  v9 = *(v115 - 8);
  __chkstk_darwin(v115);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v105 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v114 = *(v15 - 8);
  __chkstk_darwin(v15);
  v113 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for SectionedDataSourceContainerViewType();
  v110 = *(v119 - 8);
  __chkstk_darwin(v119);
  v109 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008C5E4(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v18 - 8);
  v118 = v86 - v19;
  v117 = type metadata accessor for CellDeselectionBehavior();
  v106 = *(v117 - 8);
  __chkstk_darwin(v117);
  v104 = v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for UUID();
  v21 = *(v116 - 8);
  __chkstk_darwin(v116);
  v23 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ContentConfigurationItem();
  v111 = *(v112 - 8);
  v24 = *(v111 + 64);
  v25 = __chkstk_darwin(v112);
  v108 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v107 = v86 - v27;
  v28 = __chkstk_darwin(v26);
  v120 = v86 - v29;
  __chkstk_darwin(v28);
  v121 = v86 - v30;
  v31 = type metadata accessor for PersonNameComponents();
  v32 = __chkstk_darwin(v31);
  v35 = v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    static Logger.profile.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v129 = v39;
      *v38 = 136315138;
      aBlock = v99;
      swift_getMetatypeMetadata();
      v40 = String.init<A>(describing:)();
      v42 = sub_1000036D0(v40, v41, &v129);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%s] There was an error while getting the tinker user's name", v38, 0xCu);
      sub_100003B90(v39);
    }

    return (*(v9 + 8))(v11, v115);
  }

  else
  {
    v98 = v35;
    v115 = v32;
    v99 = v33;
    PersonNameComponents.init()();

    PersonNameComponents.givenName.setter();

    PersonNameComponents.familyName.setter();
    v44 = objc_opt_self();
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v46 = [v44 localizedStringFromPersonNameComponents:isa style:2 options:0];
    v102 = v12;
    v47 = v46;

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v48;
    v50 = v49;

    aBlock = v48;
    v124 = v50;

    v51._countAndFlagsBits = 0x656C69666F725020;
    v51._object = 0xE800000000000000;
    String.append(_:)(v51);
    v101 = v14;
    v52 = swift_allocObject();
    v88 = v52;
    v53 = v103;
    *(v52 + 16) = v122;
    *(v52 + 24) = v53;

    v95 = v53;
    UUID.init()();
    v86[2] = UUID.uuidString.getter();
    v86[1] = v54;
    v55 = *(v21 + 8);
    v96 = v21 + 8;
    v97 = v55;
    v55(v23, v116);
    v94 = type metadata accessor for UIListContentConfiguration();
    v126 = v94;
    v127 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&aBlock);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v93 = objc_opt_self();
    v56 = [v93 tintColor];
    v57 = UIListContentConfiguration.textProperties.modify();
    v103 = v15;
    v58 = v57;
    UIListContentConfiguration.TextProperties.color.setter();
    v58(&v129, 0);

    v59 = v104;
    *v104 = 1;
    v92 = enum case for CellDeselectionBehavior.deselectOnDidSelect(_:);
    v106 = *(v106 + 104);
    (v106)(v59);
    v90 = type metadata accessor for UIBackgroundConfiguration();
    v60 = *(v90 - 8);
    v89 = *(v60 + 56);
    v91 = v60 + 56;
    v89(v118, 1, 1, v90);
    v87 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v110 = *(v110 + 104);
    v61 = v109;
    (v110)(v109);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    aBlock = v100;
    v124 = v50;

    v62._countAndFlagsBits = 0x6C61636964654D20;
    v62._object = 0xEB00000000444920;
    String.append(_:)(v62);

    v63 = swift_allocObject();
    v64 = v95;
    *(v63 + 16) = v122;
    *(v63 + 24) = v64;

    v65 = v64;
    UUID.init()();
    v100 = UUID.uuidString.getter();
    v95 = v66;
    v97(v23, v116);
    v126 = v94;
    v127 = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(&aBlock);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v67 = [v93 tintColor];
    v68 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v68(&v129, 0);

    *v59 = 1;
    (v106)(v59, v92, v117);
    v89(v118, 1, 1, v90);
    (v110)(v61, v87, v119);
    v69 = v120;
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    sub_100003DDC(0, &qword_1000DBAE0, OS_dispatch_queue_ptr);
    v119 = static OS_dispatch_queue.main.getter();
    v70 = v111;
    v71 = *(v111 + 16);
    v72 = v107;
    v73 = v112;
    v71(v107, v121, v112);
    v74 = v108;
    v71(v108, v69, v73);
    v75 = *(v70 + 80);
    v76 = (v75 + 24) & ~v75;
    v77 = (v24 + v75 + v76) & ~v75;
    v78 = swift_allocObject();
    *(v78 + 16) = v122;
    v79 = *(v70 + 32);
    v79(v78 + v76, v72, v73);
    v79(v78 + v77, v74, v73);
    v127 = sub_10008C554;
    v128 = v78;
    aBlock = _NSConcreteStackBlock;
    v124 = 1107296256;
    v125 = sub_100008310;
    v126 = &unk_1000D0770;
    v80 = _Block_copy(&aBlock);

    v81 = v113;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_100007D94(&qword_1000DAD40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10008C5E4(0, &qword_1000DBAF0, &type metadata accessor for DispatchWorkItemFlags, &type metadata accessor for Array);
    sub_100028B74();
    v82 = v101;
    v83 = v102;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v84 = v119;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v80);

    (*(v105 + 8))(v82, v83);
    (*(v114 + 8))(v81, v103);
    v85 = *(v70 + 8);
    v85(v120, v73);
    v85(v121, v73);
    return (v99[1])(v98, v115);
  }
}

void *sub_10008BD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ContentConfigurationItem();
  v12 = v5;
  v6 = sub_100007D94(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v13 = v6;
  v7 = sub_10000AD4C(v11);
  v8 = *(*(v5 - 8) + 16);
  v8(v7, a2, v5);
  type metadata accessor for AuxiliaryProfilesDataSource(0);
  result = SnapshotDataSource.sectionIdentifiers.getter();
  if (result[2])
  {

    dispatch thunk of MutableArrayDataSource.append(item:toSectionWithID:)();

    sub_100003B90(v11);
    v12 = v5;
    v13 = v6;
    v10 = sub_10000AD4C(v11);
    v8(v10, a3, v5);
    result = SnapshotDataSource.sectionIdentifiers.getter();
    if (result[2])
    {

      dispatch thunk of MutableArrayDataSource.append(item:toSectionWithID:)();

      return sub_100003B90(v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:

  v12 = a4;
  v6(v7, v9, v10, v5, a4);
}

uint64_t sub_10008BFCC(unint64_t a1, uint64_t a2, void (*a3)(void), uint64_t **a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 && a1)
  {
    v35 = _swiftEmptyArrayStorage;
    if (a1 >> 62)
    {
LABEL_33:
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = a4;
    v33 = a3;
    if (v12)
    {
      v13 = 0;
      a3 = (a1 & 0xC000000000000001);
      a4 = &off_1000D7000;
      do
      {
        if (a3)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v14 = *(a1 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if ([v14 type] == 3)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v13;
      }

      while (v16 != v12);
      v24 = v35;
      a3 = v33;
      if ((v35 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
      {
LABEL_22:
        if ((v24 & 0x4000000000000000) == 0)
        {
          v25 = *(v24 + 16);
          if (!v25)
          {
LABEL_35:

            a3(_swiftEmptyArrayStorage);
LABEL_36:
          }

LABEL_24:
          v35 = _swiftEmptyArrayStorage;
          result = specialized ContiguousArray.reserveCapacity(_:)();
          if (v25 < 0)
          {
            __break(1u);
            return result;
          }

          v26 = 0;
          do
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v27 = *(v24 + 8 * v26 + 32);
            }

            v28 = v27;
            ++v26;
            v29 = [objc_allocWithZone(HKHealthStore) init];
            [v29 setProfileIdentifier:v28];
            [v29 resume];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v25 != v26);

          v33(v35);
          goto LABEL_36;
        }
      }
    }

    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  static Logger.profile.getter();
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = a2;
    v35 = v31;
    *v19 = 136315138;
    swift_errorRetain();
    sub_10008C5E4(0, &qword_1000DD580, sub_100008C14, &type metadata accessor for Optional);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000036D0(v20, v21, &v35);

    *(v19 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v17, v18, "There was an error fetching tinker profiles: %s", v19, 0xCu);
    sub_100003B90(v31);
  }

  (*(v9 + 8))(v11, v8);
  return (a3)(_swiftEmptyArrayStorage);
}

uint64_t sub_10008C440(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100003DDC(0, &qword_1000DE090, HKProfileIdentifier_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10008C4FC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

void *sub_10008C554()
{
  v1 = *(type metadata accessor for ContentConfigurationItem() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v1 + 64) + v2 + v3) & ~v2);

  return sub_10008BD58(v4, v0 + v3, v5);
}

void sub_10008C5E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10008C658@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a1;
  sub_10008CB70(0);
  v39 = v3;
  v4 = __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v36 - v6;
  v7 = type metadata accessor for Calendar();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A224(0, &qword_1000DB158, &type metadata accessor for Date, &type metadata accessor for Optional);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v36 - v19;
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  a2[1] = 0;
  a2[2] = 0;
  v41 = &_swiftEmptySetSingleton;
  sub_10008CBA4(0);
  State.init(wrappedValue:)();
  v23 = v43;
  a2[3] = v42;
  a2[4] = v23;
  static Date.now.getter();
  static Calendar.current.getter();
  Date.startOfWeek(for:)();
  (*(v8 + 8))(v10, v7);
  v24 = *(v15 + 8);
  v24(v20, v14);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = type metadata accessor for ExportDatasetView(0);
    (*(v15 + 32))(v22, v13, v14);
    v27 = *(v15 + 16);
    v27(v20, v22, v14);
    State.init(wrappedValue:)();
    v24(v22, v14);
    static Date.now.getter();
    v27(v36, v20, v14);
    State.init(wrappedValue:)();
    v24(v20, v14);
    v28 = (a2 + v26[9]);
    v41 = sub_1000970BC();
    sub_1000976C4(0, &qword_1000DE0A0, &type metadata accessor for Array);
    State.init(wrappedValue:)();
    v29 = v43;
    *v28 = v42;
    v28[1] = v29;
    v30 = a2 + v26[10];
    LOBYTE(v41) = 0;
    State.init(wrappedValue:)();
    v31 = v43;
    *v30 = v42;
    *(v30 + 1) = v31;
    v32 = a2 + v26[11];
    LOBYTE(v41) = 0;
    State.init(wrappedValue:)();
    v33 = v43;
    *v32 = v42;
    *(v32 + 1) = v33;
    v34 = type metadata accessor for URL();
    v35 = v38;
    (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
    sub_10009A64C(v35, v37, sub_10008CB70);
    State.init(wrappedValue:)();
    result = sub_10009A37C(v35, sub_10008CB70);
    *a2 = v40;
  }

  return result;
}

void sub_10008CBA4(uint64_t a1)
{
  if (!qword_1000DE098)
  {
    sub_10007AF48();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE098);
    }
  }
}

void *sub_10008CC20(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v20 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v11 = *(a1 + 48) + 16 * v5;
      v12 = *v11;
      if (*(v11 + 8))
      {
        sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
        HKQuantityType.init(_:)(v12);
      }

      else
      {
        sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
        HKCategoryType.init(_:)(v12);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_26;
      }

      v4 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v10);
      if ((v13 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_28;
      }

      v14 = v13 & (-2 << (v5 & 0x3F));
      if (v14)
      {
        v8 = __clz(__rbit64(v14)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v9 = v20;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v9 = v20;
        v17 = (a1 + 64 + 8 * v10);
        while (v16 < (v8 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_10000F210(v5, v7, 0);
            v8 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_10000F210(v5, v7, 0);
      }

LABEL_4:
      ++v6;
      v5 = v8;
      if (v6 == v9)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_10008CE88(void (*a1)(id *), unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v27 = a2;
  sub_100099604(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v25 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - v8;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = a3;
    v29 = _swiftEmptyArrayStorage;
    a3 = &v29;
    sub_10007C59C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v12 = 0;
    v13 = v29;
    v14 = v11;
    v23 = v11;
    v24 = v11 & 0xC000000000000001;
    v20 = v11 & 0xFFFFFFFFFFFFFF8;
    v21 = v7 + 32;
    v22 = i;
    while (1)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v14 + 8 * v12 + 32);
      }

      i = v16;
      v28 = v16;
      a3 = v27;
      v26(&v28);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v29 = v13;
      v18 = v13[2];
      v17 = v13[3];
      if (v18 >= v17 >> 1)
      {
        a3 = &v29;
        sub_10007C59C((v17 > 1), v18 + 1, 1);
        v13 = v29;
      }

      v13[2] = v18 + 1;
      (*(v7 + 32))(v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, v25);
      ++v12;
      v14 = v23;
      if (v15 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_10008D0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10008D1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10008D2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v57 = a2;
  v3 = type metadata accessor for ExportDatasetView(0);
  v4 = *(v3 - 8);
  v51 = v3 - 8;
  v56 = v4;
  v55 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098244(0);
  v8 = v7;
  v44 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098190(0);
  v12 = v11;
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000980A4(0);
  v49 = v15;
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097F38(0);
  v52 = v18;
  v54 = *(v18 - 8);
  __chkstk_darwin(v18);
  v58 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_1000982D8(0);
  sub_10009A2EC(&qword_1000DE318, sub_1000982D8, &protocol conformance descriptor for TupleView<A>);
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v20 = sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
  View.navigationTitle(_:)();

  (*(v44 + 8))(v10, v8);
  v21 = v47;
  v22 = v45;
  v23 = v48;
  (*(v47 + 104))(v45, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v48);
  v61 = v8;
  v62 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.navigationBarTitleDisplayMode(_:)();
  (*(v21 + 8))(v22, v23);
  (*(v46 + 8))(v14, v12);
  v25 = v43;
  v59 = v43;
  sub_100098ADC(0);
  v27 = v26;
  v61 = v12;
  v62 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_10009A2EC(&qword_1000DE388, sub_100098ADC, &protocol conformance descriptor for TupleToolbarContent<A>);
  v30 = v49;
  View.toolbar<A>(content:)();
  (*(v50 + 8))(v17, v30);
  v31 = v25 + *(v51 + 48);
  v32 = *v31;
  v33 = *(v31 + 8);
  v65 = v32;
  v66 = v33;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  v34 = v53;
  sub_10009A64C(v25, v53, type metadata accessor for ExportDatasetView);
  v35 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v36 = swift_allocObject();
  sub_100099198(v34, v36 + v35, type metadata accessor for ExportDatasetView);
  sub_100098FD0(0);
  v61 = v30;
  v62 = v27;
  v63 = v28;
  v64 = v29;
  swift_getOpaqueTypeConformance2();
  sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
  v38 = v37;
  v39 = sub_100099114();
  v61 = v38;
  v62 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v52;
  v41 = v58;
  View.sheet<A>(isPresented:onDismiss:content:)();

  return (*(v54 + 8))(v41, v40);
}

uint64_t sub_10008DAC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  sub_1000989E4(0, &qword_1000DE308, sub_100098A50, &type metadata for EmptyView);
  v52 = v3;
  v59 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v54 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = &v44 - v6;
  sub_1000989E4(0, &qword_1000DE2E8, sub_100098930, &type metadata for Text);
  v51 = v7;
  v48 = *(v7 - 8);
  v8 = v48;
  v9 = __chkstk_darwin(v7);
  v57 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v47 = &v44 - v11;
  sub_1000989E4(0, &qword_1000DE268, sub_100098400, &type metadata for Text);
  v56 = v13;
  v50 = *(v13 - 8);
  v14 = v50;
  v15 = __chkstk_darwin(v13);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v63 = Text.init(_:tableName:bundle:comment:)();
  v64 = v19;
  v65 = v20 & 1;
  v66 = v21;
  v62 = a1;
  sub_100098400(0);
  sub_10009A2EC(&qword_1000DE3B8, sub_100098400, &protocol conformance descriptor for TupleView<A>);
  v49 = v18;
  Section<>.init(header:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v63 = Text.init(_:tableName:bundle:comment:)();
  v64 = v22;
  v65 = v23 & 1;
  v66 = v24;
  v61 = a1;
  sub_100098930(0);
  sub_10009A2EC(&qword_1000DE3C0, sub_100098930, &protocol conformance descriptor for TupleView<A>);
  Section<>.init(header:content:)();
  v60 = a1;
  sub_100098A50(0);
  sub_100099380();
  v25 = v58;
  Section<>.init(content:)();
  v26 = *(v14 + 16);
  v27 = v55;
  v28 = v18;
  v29 = v56;
  v26(v55, v28, v56);
  v46 = *(v8 + 16);
  v30 = v57;
  v31 = v51;
  v46(v57, v12, v51);
  v45 = *(v59 + 16);
  v32 = v25;
  v33 = v52;
  v45(v54, v32, v52);
  v34 = v53;
  v26(v53, v27, v29);
  sub_10009830C(0);
  v36 = v35;
  v46(&v34[*(v35 + 48)], v30, v31);
  v37 = &v34[*(v36 + 64)];
  v38 = v54;
  v45(v37, v54, v33);
  v39 = *(v59 + 8);
  v39(v58, v33);
  v40 = *(v48 + 8);
  v40(v47, v31);
  v41 = *(v50 + 8);
  v42 = v56;
  v41(v49, v56);
  v39(v38, v33);
  v40(v57, v31);
  return (v41)(v55, v42);
}

uint64_t sub_10008E134@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, char *a2@<X8>)
{
  sub_100098648(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = __chkstk_darwin(v4);
  v9 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &KeyPath - v10;
  v12 = type metadata accessor for ExportDatasetView(0);
  v49 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v50 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v13;
  sub_100098488(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = __chkstk_darwin(v14);
  v52 = &KeyPath - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = a1;
  v60 = &KeyPath - v19;
  v20 = *(a1 + 4);
  v62 = *(a1 + 3);
  v63 = v20;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v21 = v66;
  v22 = v66[2];
  v57 = v6;
  v58 = v5;
  v55 = v9;
  v56 = a2;
  v61 = v11;
  v53 = v16;
  v54 = v15;
  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = sub_100031D4C(v22, 0);
  v24 = sub_100033D28(&v62, (v23 + 4), v22, v21);
  sub_10000F754(v62);
  if (v24 != v22)
  {
    __break(1u);
LABEL_4:

    v23 = _swiftEmptyArrayStorage;
  }

  v66 = v23;
  KeyPath = swift_getKeyPath();
  v48 = type metadata accessor for ExportDatasetView;
  v25 = v50;
  sub_10009A64C(v59, v50, type metadata accessor for ExportDatasetView);
  v26 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v27 = swift_allocObject();
  v49 = type metadata accessor for ExportDatasetView;
  sub_100099198(v25, v27 + v26, type metadata accessor for ExportDatasetView);
  sub_10009A4D4(0, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
  sub_100098548(0);
  sub_1000988B4();
  sub_10007AF48();
  sub_1000985E0(255);
  v29 = v28;
  v30 = sub_1000987D4();
  v62 = &type metadata for Text;
  v63 = v29;
  v64 = &protocol witness table for Text;
  v65 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v60;
  ForEach<>.init(_:id:content:)();
  sub_10009A64C(v59, v25, v48);
  v32 = swift_allocObject();
  sub_100099198(v25, v32 + v26, v49);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
  v33 = v61;
  Button.init(action:label:)();
  v34 = v52;
  v35 = v53;
  v36 = *(v53 + 16);
  v37 = v54;
  v36(v52, v31, v54);
  v38 = v57;
  v59 = *(v57 + 16);
  v39 = v55;
  v40 = v33;
  v41 = v58;
  v59(v55, v40, v58);
  v42 = v56;
  v36(v56, v34, v37);
  sub_100098B64(0, &qword_1000DE278, sub_100098488, sub_100098648);
  v59(&v42[*(v43 + 48)], v39, v41);
  v44 = *(v38 + 8);
  v44(v61, v41);
  v45 = *(v35 + 8);
  v45(v60, v37);
  v44(v39, v41);
  return (v45)(v34, v37);
}

uint64_t sub_10008E728(uint64_t *a1, uint64_t a2)
{
  sub_10008E82C(*a1);
  sub_100039898();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5 & 1;
  sub_1000985E0(0);
  sub_1000987D4();
  View.swipeActions<A>(edge:allowsFullSwipe:content:)();
  sub_1000385F4(v2, v4, v6);
}

uint64_t sub_10008E82C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1._countAndFlagsBits = static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
  v2 = String.hasPrefix(_:)(v1);

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v2)
  {
    static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
    v6 = String.count.getter();

    v7 = v6;
    v8 = v3;
  }

  else
  {
    v9._countAndFlagsBits = static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v10 = String.hasPrefix(_:)(v9);

    result = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v12;
    if (!v10)
    {
      return result;
    }

    v13 = result;
    static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v14 = String.count.getter();

    v7 = v14;
    v8 = v13;
  }

  sub_100099BF4(v7, v8, v5);

  v15 = static String._fromSubstring(_:)();

  return v15;
}

void sub_10008E978(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ExportDatasetView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  sub_10009A64C(a1, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_100099198(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExportDatasetView);
  v13 = v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = a2;
  *(v13 + 8) = a3 & 1;
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
  v14 = a2;
  Button.init(action:label:)();
  v15 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  v20[1] = v15;
  v17 = AnyShapeStyle.init<A>(_:)();
  sub_1000985E0(0);
  v19 = (a4 + *(v18 + 36));
  *v19 = KeyPath;
  v19[1] = v17;
}

uint64_t sub_10008EB88(uint64_t a1, uint64_t a2, char a3)
{
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);

  State.wrappedValue.getter();
  v5 = sub_100096C00(a2, a3 & 1);
  sub_100099BE0(v5, v6);
  State.wrappedValue.setter();
}

uint64_t sub_10008EC68()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008ECD4(uint64_t a1)
{
  type metadata accessor for ExportDatasetView(0);
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  return State.wrappedValue.setter();
}

uint64_t sub_10008ED60()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008EDD4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a1;
  v56 = a2;
  v52 = type metadata accessor for DatePickerComponents();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  sub_10009A224(0, &qword_1000DE3F0, &type metadata accessor for Date, &type metadata accessor for Binding);
  __chkstk_darwin(v3 - 8);
  v39 = v37 - v4;
  sub_100098C6C(0, &qword_1000DE300, &type metadata accessor for DatePicker);
  v6 = v5;
  v55 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v54 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v53 = v37 - v10;
  v11 = __chkstk_darwin(v9);
  v51 = v37 - v12;
  __chkstk_darwin(v11);
  v38 = v37 - v13;
  v14 = LocalizedStringKey.init(stringLiteral:)();
  v48 = v15;
  v49 = v14;
  v44 = v16;
  v47 = v17;
  v50 = type metadata accessor for ExportDatasetView(0);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
  v45 = v18;
  State.projectedValue.getter();
  sub_10009A224(0, &qword_1000DE3F8, &type metadata accessor for DatePickerComponents, &type metadata accessor for _ContiguousArrayStorage);
  v43 = v19;
  v20 = *(v2 + 72);
  v21 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v41 = v20;
  v42 = v21 + 2 * v20;
  v22 = swift_allocObject();
  v40 = xmmword_1000AE110;
  *(v22 + 16) = xmmword_1000AE110;
  static DatePickerComponents.hourAndMinute.getter();
  static DatePickerComponents.date.getter();
  v57 = v22;
  v37[1] = sub_10009A2EC(&qword_1000DE400, &type metadata accessor for DatePickerComponents, &protocol conformance descriptor for DatePickerComponents);
  sub_100099794(0);
  sub_10009A2EC(&qword_1000DE410, sub_100099794, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  DatePicker<>.init(_:selection:displayedComponents:)();
  v23 = LocalizedStringKey.init(stringLiteral:)();
  v48 = v24;
  v49 = v23;
  v47 = v25;
  State.projectedValue.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v40;
  static DatePickerComponents.hourAndMinute.getter();
  static DatePickerComponents.date.getter();
  v57 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v51;
  DatePicker<>.init(_:selection:displayedComponents:)();
  v28 = v55;
  v29 = *(v55 + 16);
  v30 = v53;
  v31 = v38;
  v29(v53, v38, v6);
  v32 = v54;
  v29(v54, v27, v6);
  v33 = v56;
  v29(v56, v30, v6);
  sub_100098964(0);
  v29(&v33[*(v34 + 48)], v32, v6);
  v35 = *(v28 + 8);
  v35(v27, v6);
  v35(v31, v6);
  v35(v32, v6);
  return (v35)(v30, v6);
}

void sub_10008F37C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExportDatasetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100098648(0);
  v8 = v7;
  v9 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A64C(a1, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_100099198(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for ExportDatasetView);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v14 = *(a1 + 32);
  v26 = *(a1 + 24);
  v27 = v14;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v15 = *(v25 + 16);

  if (v15)
  {
    v16 = (a1 + *(v4 + 44));
    v17 = *v16;
    v18 = *(v16 + 1);
    LOBYTE(v26) = v17;
    v27 = v18;
    sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
    State.wrappedValue.getter();
    v19 = v25;
  }

  else
  {
    v19 = 1;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v9 + 32))(a2, v11, v8);
  sub_100098A50(0);
  v23 = (a2 + *(v22 + 36));
  *v23 = KeyPath;
  v23[1] = sub_10009948C;
  v23[2] = v21;
}

uint64_t sub_10008F6C4()
{
  v1 = v0;
  v2 = type metadata accessor for ExportDatasetView(0);
  v42 = *(v2 - 8);
  __chkstk_darwin(v2);
  v43 = v3;
  v45 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A224(0, &unk_1000DD0E0, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v4 - 8);
  v44 = &v38 - v5;
  v6 = type metadata accessor for SampleExporter(0);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for Date();
  v13 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v47 = type metadata accessor for DateInterval();
  v40 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0[3];
  v16 = v0[4];
  v49 = v15;
  v50 = v16;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.wrappedValue.getter();
  v17 = *(v48 + 16);

  if (v17)
  {
    v19 = v1 + *(v2 + 44);
    v20 = *v19;
    v21 = *(v19 + 1);
    LOBYTE(v49) = v20;
    v50 = v21;
    LOBYTE(v48) = 1;
    sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
    State.wrappedValue.setter();
    v49 = v15;
    v50 = v16;
    State.wrappedValue.getter();
    v22 = sub_10008CC20(v48);

    sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    v23 = v46;
    DateInterval.init(start:end:)();
    v24 = v38;
    v25 = v40;
    (*(v40 + 16))(&v11[*(v38 + 20)], v23, v47);
    v26 = *v1;
    v27 = objc_opt_self();
    v28 = v26;
    v29 = [v27 defaultManager];
    *v11 = v22;
    *&v11[*(v24 + 24)] = v28;
    *&v11[*(v24 + 28)] = v29;
    v30 = type metadata accessor for TaskPriority();
    v31 = v44;
    (*(*(v30 - 8) + 56))(v44, 1, 1, v30);
    v32 = v45;
    sub_10009A64C(v1, v45, type metadata accessor for ExportDatasetView);
    v33 = v41;
    sub_10009A64C(v11, v41, type metadata accessor for SampleExporter);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v36 = (v43 + *(v39 + 80) + v35) & ~*(v39 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = &protocol witness table for MainActor;
    sub_100099198(v32, v37 + v35, type metadata accessor for ExportDatasetView);
    sub_100099198(v33, v37 + v36, type metadata accessor for SampleExporter);
    sub_100084B64(0, 0, v31, &unk_1000B1310, v37);

    sub_10009A37C(v11, type metadata accessor for SampleExporter);
    return (*(v25 + 8))(v46, v47);
  }

  return result;
}

uint64_t sub_10008FCD0()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_10008FD40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_100098B64(0, &qword_1000DE330, sub_100098BE0, sub_100098CCC);
  v51 = v3;
  __chkstk_darwin(v3);
  v48 = &v43 - v4;
  sub_100098D00(0);
  v6 = v5;
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098DB4(0);
  v50 = v8;
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008CB70(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v49 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098CCC(0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v55 = &v43 - v20;
  v21 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v21 - 8);
  sub_100098BE0(0);
  v54 = v22;
  v52 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ToolbarItemPlacement.cancellationAction.getter();
  v57 = a1;
  sub_100098C6C(0, &qword_1000DCE18, &type metadata accessor for Button);
  sub_1000664E8();
  ToolbarItem<>.init(placement:content:)();
  type metadata accessor for ExportDatasetView(0);
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  State.wrappedValue.getter();
  v25 = v14;
  v26 = v13;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10009A37C(v12, sub_10008CB70);
    (*(v56 + 56))(v19, 1, 1, v6);
    v27 = sub_10009A2EC(&qword_1000DE380, sub_100098DB4, &protocol conformance descriptor for ToolbarItem<A, B>);
    v58 = v50;
    v59 = v27;
    swift_getOpaqueTypeConformance2();
    v28 = v55;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100020424(v19);
  }

  else
  {
    v29 = *(v14 + 32);
    v30 = v49;
    v44 = v26;
    v29();
    v31 = static ToolbarItemPlacement.primaryAction.getter();
    v32 = v50;
    __chkstk_darwin(v31);
    *(&v43 - 2) = v30;
    sub_100098E54(0);
    sub_10009A2EC(&qword_1000DE378, sub_100098E54, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    v33 = v45;
    ToolbarItem<>.init(placement:content:)();
    v34 = sub_10009A2EC(&qword_1000DE380, sub_100098DB4, &protocol conformance descriptor for ToolbarItem<A, B>);
    v35 = v47;
    v36 = v32;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    v37 = v56;
    (*(v56 + 16))(v19, v35, v6);
    (*(v37 + 56))(v19, 0, 1, v6);
    v58 = v32;
    v59 = v34;
    swift_getOpaqueTypeConformance2();
    v28 = v55;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100020424(v19);
    (*(v37 + 8))(v35, v6);
    (*(v46 + 8))(v33, v36);
    (*(v25 + 8))(v49, v44);
  }

  v38 = v52;
  v39 = *(v51 + 48);
  v40 = v48;
  v41 = v54;
  (*(v52 + 16))(v48, v24, v54);
  sub_100020480(v28, &v40[v39]);
  TupleToolbarContent.init(_:)();
  sub_100020424(v28);
  return (*(v38 + 8))(v24, v41);
}

uint64_t sub_1000904EC(uint64_t a1)
{
  v2 = type metadata accessor for ExportDatasetView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_10009A64C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExportDatasetView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100099198(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for ExportDatasetView);
  return Button.init(action:label:)();
}

uint64_t sub_100090640(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000986DC();
  sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
  return ShareLink<>.init<>(item:subject:message:label:)();
}

uint64_t sub_10009078C()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000907F0(uint64_t a1)
{
  v2 = type metadata accessor for ExportDatasetView(0);
  v3 = (a1 + *(v2 + 36));
  v5 = *v3;
  v4 = v3[1];
  *&v11[0] = v5;
  *(&v11[0] + 1) = v4;
  sub_100099270(0, &unk_1000DE1D0, &type metadata accessor for State);
  State.projectedValue.getter();
  v6 = *(a1 + 32);
  *&v11[0] = *(a1 + 24);
  *(&v11[0] + 1) = v6;
  sub_10009A224(0, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
  State.projectedValue.getter();
  v7 = (a1 + *(v2 + 40));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v11[0]) = v8;
  *(&v11[0] + 1) = v9;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.projectedValue.getter();
  sub_100090A1C(0xD000000000000011, 0x80000001000AB000, v13, *(&v13 + 1), v14, v13, *(&v13 + 1), v14, v11, v13, *(&v13 + 1), v14);
  sub_100099070(0, &qword_1000DE398, type metadata accessor for SearchableListView);
  sub_100099114();
  View.interactiveDismissDisabled(_:)();
  v19 = v11[6];
  v20 = v11[7];
  v21 = v12;
  v15 = v11[2];
  v16 = v11[3];
  v17 = v11[4];
  v18 = v11[5];
  v13 = v11[0];
  v14 = v11[1];
  return sub_100097840(&v13, &qword_1000DE398, type metadata accessor for SearchableListView);
}

char *sub_100090A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  v49 = a1;
  v50 = a2;
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  v45 = *(v19 - 8);
  __chkstk_darwin(v19 - 8);
  v21 = v38 - v20;
  v53 = 0;
  v54 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v47 = v56;
  v48 = v55;
  v46 = v57;
  v55 = a6;
  v56 = a7;
  v57 = a8;
  sub_10009A224(0, &qword_1000DE3A8, sub_10008CBA4, &type metadata accessor for Binding);

  Binding.wrappedValue.getter();
  v22 = v53;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  sub_100099270(0, &qword_1000DE3B0, &type metadata accessor for Binding);
  Binding.wrappedValue.getter();

  v52 = a4;

  v51 = a3;

  v23 = *(v53 + 16);
  if (!v23)
  {

    v27 = _swiftEmptyArrayStorage;
LABEL_20:
    *a9 = v49;
    *(a9 + 8) = v50;
    *(a9 + 16) = v51;
    *(a9 + 24) = v52;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
    *(a9 + 48) = a7;
    *(a9 + 56) = a8;
    *(a9 + 64) = a10;
    *(a9 + 72) = a11;
    *(a9 + 80) = a12 & 1;
    *(a9 + 88) = v22;
    *(a9 + 96) = 0;
    v37 = v47;
    *(a9 + 104) = v48;
    *(a9 + 112) = v37;
    *(a9 + 120) = v46;
    *(a9 + 128) = v27;
    return result;
  }

  v39 = v22;
  v40 = a5;
  v41 = a6;
  v42 = a7;
  v43 = a8;
  v44 = a9;
  v24 = *(v45 + 80);
  v38[1] = v53;
  v25 = v53 + ((v24 + 32) & ~v24);
  v26 = *(v45 + 72);
  v27 = _swiftEmptyArrayStorage;
  while (1)
  {
    result = sub_100097740(v25, v21);
    v29 = *(v21 + 2);
    v30 = *(v29 + 16);
    v31 = *(v27 + 2);
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v32 <= *(v27 + 3) >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v33 = v31 + v30;
      }

      else
      {
        v33 = v31;
      }

      result = sub_100031B98(result, v33, 1, v27);
      v27 = result;
      if (*(v29 + 16))
      {
LABEL_14:
        if ((*(v27 + 3) >> 1) - *(v27 + 2) < v30)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v34 = *(v27 + 2);
          v35 = __OFADD__(v34, v30);
          v36 = v34 + v30;
          if (v35)
          {
            goto LABEL_24;
          }

          *(v27 + 2) = v36;
        }

        goto LABEL_4;
      }
    }

    if (v30)
    {
      goto LABEL_22;
    }

LABEL_4:
    sub_100097840(v21, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    v25 += v26;
    if (!--v23)
    {

      a8 = v43;
      a9 = v44;
      a6 = v41;
      a7 = v42;
      v22 = v39;
      a5 = v40;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100090DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_10008CB70(0);
  v4[8] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[9] = v5;
  v4[10] = type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v4[12] = v6;
  *v6 = v4;
  v6[1] = sub_100090EB4;

  return sub_1000913BC(v5);
}

uint64_t sub_100090EB4()
{
  *(*v1 + 104) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1000911D0;
  }

  else
  {
    v4 = sub_100091010;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100091010()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);

  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = type metadata accessor for ExportDatasetView(0);
  sub_10009A64C(v1, v2, sub_10008CB70);
  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
  State.wrappedValue.setter();
  sub_10009A37C(v1, sub_10008CB70);
  v5 = (*(v0 + 56) + *(v4 + 44));
  v6 = *v5;
  v7 = *(v5 + 1);
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 112) = 0;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000911D0()
{
  v1 = *(v0 + 104);

  sub_10009A4D4(0, &qword_1000DD9C0, &type metadata for Any + 8, &type metadata accessor for _ContiguousArrayStorage);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AE100;
  _StringGuts.grow(_:)(21);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v3._object = 0x80000001000AB070;
  v3._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v3);
  *(v0 + 48) = v1;
  sub_100008C14();
  _print_unlocked<A, B>(_:_:)();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  print(_:separator:terminator:)();

  v6 = *(v0 + 56);
  v7 = (v6 + *(type metadata accessor for ExportDatasetView(0) + 44));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v0 + 32) = v8;
  *(v0 + 40) = v9;
  *(v0 + 112) = 0;
  sub_10009A4D4(0, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
  State.wrappedValue.setter();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000913BC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for Logger();
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for SampleDataEncoder();
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  sub_100099604(0, &qword_1000DB710, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSampleQueryDescriptor);
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100091620, 0, 0);
}

uint64_t sub_100091620()
{
  v1 = v0[8];
  v2 = *v1;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  sub_10008CE88(sub_10009966C, v3, v2);
  v5 = v4;
  v0[23] = v4;

  v6 = *(v5 + 16);
  v0[24] = v6;
  if (v6)
  {
    v7 = v0[21];
    v0[25] = _swiftEmptyArrayStorage;
    v0[26] = 0;
    v8 = v0[23];
    if (!*(v8 + 16))
    {
      __break(1u);
    }

    v9 = v0[8];
    (*(v7 + 16))(v0[22], v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v0[20]);
    v10 = *(v9 + *(type metadata accessor for SampleExporter(0) + 24));
    v11 = swift_task_alloc();
    v0[27] = v11;
    *v11 = v0;
    v11[1] = sub_100091B9C;
    v12 = v0[20];

    return HKSampleQueryDescriptor.result(for:)(v10, v12);
  }

  else
  {

    static Logger.general.getter();
    SampleDataEncoder.init(samples:logger:)();
    v13 = SampleDataEncoder.encodeSamples()();
    v15 = v14;
    v16 = v0[11];
    v18 = v0[9];
    v17 = v0[10];
    v19 = v0[8];
    UUID.init()();
    v20 = *(v19 + *(type metadata accessor for SampleExporter(0) + 28));
    v21 = [v20 temporaryDirectory];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    v22 = *(v17 + 8);
    v22(v16, v18);
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v0[6] = 0;
    v26 = [v20 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

    v27 = v0[6];
    if (v26)
    {
      v28 = v27;
      URL.appendingPathComponent(_:)();
      Data.write(to:options:)();
      v29 = v15;
      v36 = v0[18];
      v35 = v0[19];
      v47 = v0[17];
      v37 = v0[14];
      v45 = v0[15];
      v39 = v0[12];
      v38 = v0[13];
      v40 = v0[9];
      sub_100026CBC(v13, v29);
      v22(v39, v40);
      (*(v37 + 8))(v45, v38);
      (*(v36 + 8))(v35, v47);
    }

    else
    {
      v43 = v15;
      v44 = v22;
      v30 = v0[18];
      v49 = v0[17];
      v50 = v0[19];
      v31 = v0[14];
      v32 = v0[12];
      v46 = v0[13];
      v48 = v0[15];
      v33 = v0[9];
      v34 = v27;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100026CBC(v13, v43);
      v44(v32, v33);
      (*(v31 + 8))(v48, v46);
      (*(v30 + 8))(v50, v49);
    }

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_100091B9C(uint64_t a1)
{
  v3 = *v2;
  v3[28] = a1;
  v3[29] = v1;

  (*(v3[21] + 8))(v3[22], v3[20]);
  if (v1)
  {

    v4 = sub_1000924A4;
  }

  else
  {
    v4 = sub_100091D28;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100091D28()
{
  v1 = *(v0 + 224);
  v2 = v1 >> 62;
  if (v1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 200);
  v5 = v4 >> 62;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = v6 + v3;
    if (!__OFADD__(v6, v3))
    {
      goto LABEL_5;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v57 = _CocoaArrayWrapper.endIndex.getter();
  v7 = v57 + v3;
  if (__OFADD__(v57, v3))
  {
    goto LABEL_42;
  }

LABEL_5:
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
  {
    if (!v5)
    {
      goto LABEL_22;
    }

LABEL_21:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_22;
  }

  if (v5)
  {
    goto LABEL_21;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v8 + 24) >> 1;
  if (v9 >= v7)
  {
    v10 = *(v0 + 200);
    v11 = *(v8 + 16);
    if (v2)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v8 = v10 & 0xFFFFFFFFFFFFFF8;
  v9 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_9:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_24:

    if (v3 <= 0)
    {
      goto LABEL_25;
    }

    goto LABEL_43;
  }

LABEL_10:
  if (v9 - v11 < v3)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v65 = v10;
  if (v2)
  {
    if (v12 < 1)
    {
      goto LABEL_47;
    }

    sub_100099604(0, &qword_1000DE3D0, &qword_1000DB718, HKSample_ptr, &type metadata accessor for Array);
    sub_10009968C();
    for (i = 0; i != v12; ++i)
    {
      v14 = sub_100054724((v0 + 16), i, *(v0 + 224));
      v16 = *v15;
      (v14)(v0 + 16, 0);
      *(v8 + 8 * v11 + 32 + 8 * i) = v16;
    }
  }

  else
  {
    sub_100003DDC(0, &qword_1000DB718, HKSample_ptr);
    swift_arrayInitWithCopy();
  }

  v10 = v65;
  if (v3 > 0)
  {
    v17 = *(v8 + 16);
    v18 = __OFADD__(v17, v3);
    v19 = v17 + v3;
    if (v18)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    *(v8 + 16) = v19;
  }

LABEL_25:
  v20 = *(v0 + 208) + 1;
  if (v20 == *(v0 + 192))
  {
    v21 = *(v0 + 232);

    static Logger.general.getter();
    SampleDataEncoder.init(samples:logger:)();
    v22 = SampleDataEncoder.encodeSamples()();
    if (v21)
    {
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    else
    {
      v29 = v22;
      v30 = v23;
      v31 = *(v0 + 88);
      v33 = *(v0 + 72);
      v32 = *(v0 + 80);
      v34 = *(v0 + 64);
      UUID.init()();
      v35 = *(v34 + *(type metadata accessor for SampleExporter(0) + 28));
      v36 = [v35 temporaryDirectory];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.uuidString.getter();
      URL.appendingPathComponent(_:)();

      v37 = *(v32 + 8);
      v37(v31, v33);
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      *(v0 + 48) = 0;
      v41 = [v35 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:v0 + 48];

      v42 = *(v0 + 48);
      if (v41)
      {
        v43 = v42;
        URL.appendingPathComponent(_:)();
        Data.write(to:options:)();
        v44 = v30;
        v51 = *(v0 + 144);
        v50 = *(v0 + 152);
        v63 = *(v0 + 136);
        v52 = *(v0 + 112);
        v61 = *(v0 + 120);
        v54 = *(v0 + 96);
        v53 = *(v0 + 104);
        v55 = *(v0 + 72);
        sub_100026CBC(v29, v44);
        v37(v54, v55);
        (*(v52 + 8))(v61, v53);
        (*(v51 + 8))(v50, v63);

        v56 = *(v0 + 8);
LABEL_36:

        return v56();
      }

      v59 = v30;
      v60 = v37;
      v45 = *(v0 + 144);
      v66 = *(v0 + 136);
      v67 = *(v0 + 152);
      v46 = *(v0 + 112);
      v47 = *(v0 + 96);
      v62 = *(v0 + 104);
      v64 = *(v0 + 120);
      v48 = *(v0 + 72);
      v49 = v42;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100026CBC(v29, v59);
      v60(v47, v48);
      (*(v46 + 8))(v64, v62);
      (*(v45 + 8))(v67, v66);
    }

    v56 = *(v0 + 8);
    goto LABEL_36;
  }

  *(v0 + 200) = v10;
  *(v0 + 208) = v20;
  v24 = *(v0 + 184);
  if (v20 >= *(v24 + 16))
  {
    goto LABEL_45;
  }

  v25 = *(v0 + 64);
  (*(*(v0 + 168) + 16))(*(v0 + 176), v24 + ((*(*(v0 + 168) + 80) + 32) & ~*(*(v0 + 168) + 80)) + *(*(v0 + 168) + 72) * v20, *(v0 + 160));
  v26 = *(v25 + *(type metadata accessor for SampleExporter(0) + 24));
  v27 = swift_task_alloc();
  *(v0 + 216) = v27;
  *v27 = v0;
  v27[1] = sub_100091B9C;
  v28 = *(v0 + 160);

  return HKSampleQueryDescriptor.result(for:)(v26, v28);
}

uint64_t sub_1000924A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100092580()
{
  sub_100097D30(0);
  sub_100097F38(255);
  sub_100098FD0(255);
  sub_1000980A4(255);
  sub_100098ADC(255);
  sub_100098190(255);
  sub_100098244(255);
  sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10009A2EC(&qword_1000DE388, sub_100098ADC, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
  sub_100099114();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationView.init(content:)();
}

uint64_t sub_100092798(uint64_t *a1)
{
  sub_100099710(0);
  sub_100099604(0, &qword_1000DE3E8, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSamplePredicate);
  *(swift_allocObject() + 16) = xmmword_1000AE100;
  v1 = objc_opt_self();
  type metadata accessor for SampleExporter(0);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v3 = [v1 predicateForSamplesWithinDateInterval:isa options:0];

  sub_100003DDC(0, &qword_1000DB718, HKSample_ptr);
  static HKSamplePredicate.sample(type:predicate:)();

  return HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
}

Swift::Int sub_100092938()
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10009299C(uint64_t a1)
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100092A24(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = *(v1 + 32);
  v3 = *(a1 + 32);
  v5[0] = *(a1 + 16);
  v5[1] = v3;
  v5[2] = v2;
  type metadata accessor for SearchableListSection(255, v5);
  type metadata accessor for Array();
  type metadata accessor for Binding();
  Binding.wrappedValue.getter();
  return *&v5[0];
}

uint64_t sub_100092A94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Set();
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_100092AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_100092B70()
{
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();

  v0 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v0 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  return v0 != 0;
}

uint64_t sub_100092C00(uint64_t a1)
{
  type metadata accessor for Array();

  swift_getWitnessTable();
  return _ArrayProtocol.filter(_:)();
}

uint64_t sub_100092CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of CustomStringConvertible.description.getter();
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.wrappedValue.getter();
  sub_100039898();
  v4 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();

  return v4 & 1;
}

uint64_t sub_100092D84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Array();
  *&v57 = &type metadata for Text;
  *(&v57 + 1) = v3;
  *&v58 = &protocol witness table for Text;
  v40 = *(a1 + 32);
  v36[2] = &unk_1000B18E0;
  *&v57 = v4;
  *(&v57 + 1) = swift_getAssociatedTypeWitness();
  *&v58 = swift_getOpaqueTypeMetadata2();
  *(&v58 + 1) = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  v37 = *(a1 + 24);
  *&v5 = v3;
  v36[1] = v3;
  *(&v5 + 1) = v37;
  v57 = v5;
  v58 = v40;
  type metadata accessor for SearchableListSection(255, &v57);
  v6 = type metadata accessor for Array();
  v7 = type metadata accessor for UUID();
  v8 = type metadata accessor for Section();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v57 = v6;
  *(&v57 + 1) = v7;
  *&v58 = v8;
  *(&v58 + 1) = WitnessTable;
  AssociatedConformanceWitness = v10;
  type metadata accessor for ForEach();
  v11 = type metadata accessor for _ConditionalContent();
  *&v57 = &type metadata for Text;
  *(&v57 + 1) = v3;
  *&v58 = &protocol witness table for Text;
  *(&v58 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = &protocol witness table for EmptyView;
  v54 = swift_getWitnessTable();
  v55 = &protocol witness table for EmptyView;
  v12 = swift_getWitnessTable();
  v50 = &protocol witness table for Text;
  v51 = v54;
  v52 = &protocol witness table for EmptyView;
  v49 = swift_getWitnessTable();
  v47 = v12;
  v48 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  *&v57 = v3;
  *(&v57 + 1) = v11;
  *&v58 = v40;
  *(&v58 + 1) = v13;
  v14 = type metadata accessor for List();
  v15 = swift_getWitnessTable();
  v16 = sub_100039898();
  *&v57 = v14;
  *(&v57 + 1) = &type metadata for String;
  *&v58 = v15;
  *(&v58 + 1) = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v57 = v14;
  *(&v57 + 1) = &type metadata for String;
  *&v58 = v15;
  *(&v58 + 1) = v16;
  v18 = swift_getOpaqueTypeConformance2();
  *&v57 = OpaqueTypeMetadata2;
  *(&v57 + 1) = v18;
  swift_getOpaqueTypeMetadata2();
  sub_10009A154(255);
  v19 = type metadata accessor for ModifiedContent();
  sub_10009A1F0(255);
  v21 = v20;
  *&v57 = OpaqueTypeMetadata2;
  *(&v57 + 1) = v18;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = sub_10009A2EC(&qword_1000DE580, sub_10009A154, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v22 = swift_getWitnessTable();
  v23 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v57 = v19;
  *(&v57 + 1) = v21;
  *&v58 = v22;
  *(&v58 + 1) = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  *&v57 = v19;
  *(&v57 + 1) = v21;
  *&v58 = v22;
  *(&v58 + 1) = v23;
  v25 = swift_getOpaqueTypeConformance2();
  *&v57 = v24;
  *(&v57 + 1) = v25;
  swift_getOpaqueTypeMetadata2();
  *&v57 = v24;
  *(&v57 + 1) = v25;
  swift_getOpaqueTypeConformance2();
  v26 = type metadata accessor for NavigationView();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = v36 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = v36 - v31;
  v41 = v3;
  v42 = v37;
  v43 = v40;
  v44 = v38;
  NavigationView.init(content:)();
  swift_getWitnessTable();
  v33 = *(v27 + 16);
  v33(v32, v30, v26);
  v34 = *(v27 + 8);
  v34(v30, v26);
  v33(v39, v32, v26);
  return (v34)(v32, v26);
}

uint64_t sub_100093480@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, char *a6@<X8>)
{
  v118 = a6;
  v119 = a4;
  v123 = a3;
  v109 = a1;
  v9 = type metadata accessor for SearchFieldPlacement();
  v116 = *(v9 - 8);
  v117 = v9;
  __chkstk_darwin(v9);
  v115 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EditMode();
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin(v11);
  v112 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009A188(0);
  __chkstk_darwin(v13 - 8);
  v111 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v148 = &type metadata for Text;
  *(&v148 + 1) = a2;
  v149 = &protocol witness table for Text;
  v150 = a4;
  v106 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v122 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v148 = v16;
  *(&v148 + 1) = AssociatedTypeWitness;
  v149 = OpaqueTypeMetadata2;
  v150 = WitnessTable;
  v151 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v104 = type metadata accessor for Section();
  *&v148 = a2;
  *(&v148 + 1) = v123;
  v21 = v119;
  v149 = v119;
  v150 = a5;
  type metadata accessor for SearchableListSection(255, &v148);
  v22 = type metadata accessor for Array();
  v23 = type metadata accessor for UUID();
  v24 = type metadata accessor for Section();
  v105 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *&v148 = v22;
  *(&v148 + 1) = v23;
  v149 = v24;
  v150 = v25;
  v151 = v26;
  type metadata accessor for ForEach();
  v27 = type metadata accessor for _ConditionalContent();
  v120 = a2;
  v121 = v27;
  *&v148 = &type metadata for Text;
  *(&v148 + 1) = a2;
  v149 = &protocol witness table for Text;
  v150 = v21;
  v28 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = swift_getWitnessTable();
  v144 = &protocol witness table for EmptyView;
  v145 = v29;
  v146 = &protocol witness table for EmptyView;
  v30 = swift_getWitnessTable();
  v141 = &protocol witness table for Text;
  v142 = v29;
  v143 = &protocol witness table for EmptyView;
  v140 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v138 = v30;
  v139 = v31;
  v32 = v121;
  v101 = swift_getWitnessTable();
  *&v148 = a2;
  *(&v148 + 1) = v32;
  v149 = v28;
  v150 = v101;
  v33 = v28;
  v34 = type metadata accessor for List();
  v104 = *(v34 - 8);
  __chkstk_darwin(v34);
  v98 = v84 - v35;
  v36 = swift_getWitnessTable();
  v37 = sub_100039898();
  *&v148 = v34;
  *(&v148 + 1) = &type metadata for String;
  v149 = v36;
  v150 = v37;
  v90 = v37;
  v91 = v36;
  v38 = v37;
  v39 = swift_getOpaqueTypeMetadata2();
  v102 = *(v39 - 8);
  __chkstk_darwin(v39);
  v92 = v84 - v40;
  *&v148 = v34;
  *(&v148 + 1) = &type metadata for String;
  v149 = v36;
  v150 = v38;
  v41 = swift_getOpaqueTypeConformance2();
  *&v148 = v39;
  *(&v148 + 1) = v41;
  v42 = v41;
  v84[1] = v41;
  v100 = swift_getOpaqueTypeMetadata2();
  v105 = *(v100 - 8);
  __chkstk_darwin(v100);
  v88 = v84 - v43;
  sub_10009A154(255);
  v44 = type metadata accessor for ModifiedContent();
  v106 = *(v44 - 8);
  __chkstk_darwin(v44);
  v96 = v84 - v45;
  sub_10009A1F0(255);
  v47 = v46;
  *&v148 = v39;
  *(&v148 + 1) = v42;
  v48 = swift_getOpaqueTypeConformance2();
  v89 = v48;
  v49 = sub_10009A2EC(&qword_1000DE580, sub_10009A154, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v136 = v48;
  v137 = v49;
  v50 = swift_getWitnessTable();
  v51 = sub_10009A2EC(&qword_1000DE588, sub_10009A1F0, &protocol conformance descriptor for TupleToolbarContent<A>);
  *&v148 = v44;
  *(&v148 + 1) = v47;
  v52 = v47;
  v84[2] = v47;
  v149 = v50;
  v150 = v51;
  v86 = v50;
  v53 = v51;
  v84[0] = v51;
  v54 = swift_getOpaqueTypeMetadata2();
  v94 = v54;
  v103 = *(v54 - 8);
  __chkstk_darwin(v54);
  v85 = v84 - v55;
  *&v148 = v44;
  *(&v148 + 1) = v52;
  v149 = v50;
  v150 = v53;
  v93 = swift_getOpaqueTypeConformance2();
  *&v148 = v54;
  *(&v148 + 1) = v93;
  v99 = swift_getOpaqueTypeMetadata2();
  v97 = *(v99 - 8);
  v56 = __chkstk_darwin(v99);
  v87 = v84 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v95 = v84 - v58;
  v59 = v109;
  v134 = *(v109 + 88);
  v60 = v120;
  type metadata accessor for Set();
  type metadata accessor for State();
  State.projectedValue.getter();
  v129 = v60;
  v130 = v123;
  v131 = v33;
  v132 = v122;
  v133 = v59;
  v61 = v98;
  List.init(selection:content:)();
  v148 = *v59;
  v62 = v92;
  View.navigationTitle<A>(_:)();
  (*(v104 + 8))(v61, v34);
  v63 = v107;
  v64 = v108;
  v65 = v110;
  (*(v108 + 104))(v107, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v110);
  v66 = v88;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v64 + 8))(v63, v65);
  (*(v102 + 8))(v62, v39);
  swift_getKeyPath();
  v67 = v112;
  v68 = v113;
  v69 = v114;
  (*(v113 + 104))(v112, enum case for EditMode.active(_:), v114);
  v70 = v111;
  static Binding.constant(_:)();
  (*(v68 + 8))(v67, v69);
  sub_10009A1BC(0);
  (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
  v72 = v96;
  v73 = v100;
  View.environment<A>(_:_:)();

  sub_10009A37C(v70, sub_10009A188);
  (*(v105 + 8))(v66, v73);
  v124 = v120;
  v125 = v123;
  v126 = v119;
  v127 = v122;
  v128 = v59;
  swift_checkMetadataState();
  v74 = v85;
  View.toolbar<A>(content:)();
  (v106)[1](v72, v44);
  v134 = *(v59 + 104);
  v135 = *(v59 + 15);
  sub_10009A4D4(0, &qword_1000DCEB0, &type metadata for String, &type metadata accessor for State);
  State.projectedValue.getter();
  v75 = v115;
  static SearchFieldPlacement.automatic.getter();
  v76 = v94;
  v77 = v87;
  View.searchable(text:placement:prompt:)();

  (*(v116 + 8))(v75, v117);
  (*(v103 + 8))(v74, v76);
  v78 = v97;
  v79 = *(v97 + 16);
  v80 = v95;
  v81 = v99;
  v79(v95, v77, v99);
  v82 = *(v78 + 8);
  v82(v77, v81);
  v79(v118, v80, v81);
  return (v82)(v80, v81);
}

uint64_t sub_10009428C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v70 = a3;
  v71 = a1;
  v75 = a6;
  v109 = a2;
  v110 = a3;
  v111 = a4;
  v112 = a5;
  v81 = a4;
  v67 = type metadata accessor for SearchableListSection(255, &v109);
  v9 = type metadata accessor for Array();
  v76 = type metadata accessor for UUID();
  v10 = type metadata accessor for Array();
  v69 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v109 = &type metadata for Text;
  v110 = a2;
  v111 = &protocol witness table for Text;
  v112 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109 = v10;
  v110 = AssociatedTypeWitness;
  v111 = OpaqueTypeMetadata2;
  v112 = WitnessTable;
  v113 = AssociatedConformanceWitness;
  v15 = type metadata accessor for ForEach();
  v16 = type metadata accessor for Section();
  v17 = swift_getWitnessTable();
  v18 = sub_10009A2EC(&qword_1000DE220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v68 = v9;
  v109 = v9;
  v110 = v76;
  v79 = v16;
  v111 = v16;
  v112 = v17;
  v64[1] = v17;
  v113 = v18;
  v19 = type metadata accessor for ForEach();
  v66 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v65 = v64 - v23;
  v78 = v15;
  v24 = v69;
  v25 = type metadata accessor for Section();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v64[0] = v64 - v30;
  v74 = v19;
  v31 = v70;
  v32 = type metadata accessor for _ConditionalContent();
  v72 = *(v32 - 8);
  v73 = v32;
  __chkstk_darwin(v32);
  v77 = v64 - v33;
  v80 = a2;
  v109 = a2;
  v110 = v31;
  v34 = v71;
  v111 = v81;
  v112 = v24;
  v35 = type metadata accessor for SearchableListView(0, &v109);
  v36 = sub_100092B70();
  if (v36)
  {
    __chkstk_darwin(v36);
    v38 = v80;
    v37 = v81;
    v64[-6] = v80;
    v64[-5] = v31;
    v64[-4] = v37;
    v64[-3] = v24;
    v63 = v34;
    v109 = &type metadata for Text;
    v110 = v38;
    v111 = &protocol witness table for Text;
    v112 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v76 = &protocol conformance descriptor for <> ForEach<A, B, C>;
    v39 = swift_getWitnessTable();
    Section<>.init(content:)();
    v86 = &protocol witness table for EmptyView;
    v87 = v39;
    v88 = &protocol witness table for EmptyView;
    v71 = swift_getWitnessTable();
    v40 = *(v26 + 16);
    v41 = v64[0];
    v40(v64[0], v29, v25);
    v42 = *(v26 + 8);
    v42(v29, v25);
    v40(v29, v41, v25);
    v83 = &protocol witness table for Text;
    v84 = v39;
    v85 = &protocol witness table for EmptyView;
    v82 = swift_getWitnessTable();
    v43 = v74;
    v44 = swift_getWitnessTable();
    sub_10008D0F8(v29, v25, v43, v71, v44);
    v42(v29, v25);
    v42(v41, v25);
  }

  else
  {
    v108 = sub_100092A24(v35);
    v45 = swift_allocObject();
    v47 = v80;
    v46 = v81;
    v45[2] = v80;
    v45[3] = v31;
    v45[4] = v46;
    v45[5] = v24;
    v109 = &type metadata for Text;
    v110 = v47;
    v111 = &protocol witness table for Text;
    v112 = v46;
    v107 = swift_getOpaqueTypeConformance2();
    v71 = swift_getWitnessTable();
    v104 = &protocol witness table for Text;
    v105 = v71;
    v106 = &protocol witness table for EmptyView;
    v70 = &protocol conformance descriptor for <> Section<A, B, C>;
    v48 = swift_getWitnessTable();
    v63 = swift_getWitnessTable();
    ForEach<>.init(_:content:)();
    v103 = v48;
    v49 = v74;
    v50 = swift_getWitnessTable();
    v52 = v65;
    v51 = v66;
    v53 = *(v66 + 16);
    v53(v65, v22, v49);
    v54 = *(v51 + 8);
    v54(v22, v49);
    v53(v22, v52, v49);
    v100 = &protocol witness table for EmptyView;
    v101 = v71;
    v102 = &protocol witness table for EmptyView;
    v55 = swift_getWitnessTable();
    sub_10008D1F0(v22, v25, v49, v55, v50);
    v54(v22, v49);
    v54(v52, v49);
  }

  v109 = &type metadata for Text;
  v110 = v80;
  v111 = &protocol witness table for Text;
  v112 = v81;
  v99 = swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable();
  v96 = &protocol witness table for EmptyView;
  v97 = v56;
  v98 = &protocol witness table for EmptyView;
  v57 = swift_getWitnessTable();
  v93 = &protocol witness table for Text;
  v94 = v56;
  v95 = &protocol witness table for EmptyView;
  v92 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v90 = v57;
  v91 = v58;
  v59 = v73;
  swift_getWitnessTable();
  v60 = v72;
  v61 = v77;
  (*(v72 + 16))(v75, v77, v59);
  return (*(v60 + 8))(v61, v59);
}

uint64_t sub_100094B8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a1;
  v30 = a6;
  v27 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v33 = v27;
  v34 = AssociatedTypeWitness;
  v35 = OpaqueTypeMetadata2;
  v36 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ForEach();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v18 = type metadata accessor for SearchableListView(0, &v33);
  v32 = sub_100092C00(v18);
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v33 = &type metadata for Text;
  v34 = a2;
  v35 = &protocol witness table for Text;
  v36 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v31 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v21 = *(v12 + 16);
  v21(v17, v15, v11);
  v22 = *(v12 + 8);
  v22(v15, v11);
  v21(v30, v17, v11);
  return (v22)(v17, v11);
}

uint64_t sub_100094E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v24[0] = a4;
  v25 = a3;
  v26 = a6;
  v24[1] = &unk_1000B18E0;
  v40 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v9 = type metadata accessor for Section();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  v16 = a1[1];
  v40 = *a1;
  AssociatedTypeWitness = v16;
  sub_100039898();

  v40 = Text.init<A>(_:)();
  AssociatedTypeWitness = v17;
  LOBYTE(OpaqueTypeMetadata2) = v18 & 1;
  WitnessTable = v19;
  v27 = a2;
  v28 = v25;
  v29 = v24[0];
  v30 = a5;
  v31 = a1;
  v36 = &type metadata for Text;
  v37 = a2;
  v38 = &protocol witness table for Text;
  v39 = v24[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = swift_getWitnessTable();
  Section<>.init(header:content:)();
  v32 = &protocol witness table for Text;
  v33 = v20;
  v34 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  v21 = *(v10 + 16);
  v21(v15, v13, v9);
  v22 = *(v10 + 8);
  v22(v13, v9);
  v21(v26, v15, v9);
  return (v22)(v15, v9);
}

uint64_t sub_1000951E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v29 = a3;
  v30 = a6;
  v27 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = &unk_1000B18E0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v33 = v27;
  v34 = AssociatedTypeWitness;
  v35 = OpaqueTypeMetadata2;
  v36 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for ForEach();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v32 = *(a1 + 16);
  v18 = swift_allocObject();
  v19 = v29;
  v18[2] = a2;
  v18[3] = v19;
  v18[4] = a4;
  v18[5] = a5;

  v33 = &type metadata for Text;
  v34 = a2;
  v35 = &protocol witness table for Text;
  v36 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:content:)();
  v31 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  v21 = *(v12 + 16);
  v21(v17, v15, v11);
  v22 = *(v12 + 8);
  v22(v15, v11);
  v21(v30, v17, v11);
  return (v22)(v17, v11);
}

uint64_t sub_1000954C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v24 = a1;
  v25 = a4;
  v26 = a5;
  v28 = a2;
  v27 = &type metadata for Text;
  v29 = &protocol witness table for Text;
  v30 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  v8 = __chkstk_darwin(OpaqueTypeMetadata2);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v13;
  sub_100039898();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  v27 = v14;
  v28 = v15;
  v18 = v17 & 1;
  LOBYTE(v29) = v17 & 1;
  v30 = v19;
  sub_100021E70(v24, 1, &type metadata for Text, a2, &protocol witness table for Text);
  sub_1000385F4(v14, v16, v18);

  v20 = *(v7 + 16);
  v20(v12, v10, OpaqueTypeMetadata2);
  v21 = *(v7 + 8);
  v21(v10, OpaqueTypeMetadata2);
  v20(v26, v12, OpaqueTypeMetadata2);
  return (v21)(v12, OpaqueTypeMetadata2);
}

uint64_t sub_1000956D4(uint64_t a1)
{
  sub_10009A188(0);
  __chkstk_darwin(v2 - 8);
  sub_10009A64C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_10009A188);
  return EnvironmentValues.editMode.setter();
}

uint64_t sub_100095770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v30 = a1;
  v32 = a6;
  sub_10009A288(0);
  v31 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v13 - 8);
  sub_100098BE0(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = __chkstk_darwin(v14);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v27 - v20;
  static ToolbarItemPlacement.cancellationAction.getter();
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v22 = v30;
  v42 = v30;
  sub_100098C6C(0, &qword_1000DCE18, &type metadata accessor for Button);
  sub_1000664E8();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = a5;
  v37 = v22;
  ToolbarItem<>.init(placement:content:)();
  v23 = *(v31 + 48);
  v24 = *(v16 + 16);
  v24(v12, v21, v15);
  v24(&v12[v23], v19, v15);
  TupleToolbarContent.init(_:)();
  v25 = *(v16 + 8);
  v25(v19, v15);
  return (v25)(v21, v15);
}

uint64_t sub_100095A38(char a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for Set();
    type metadata accessor for State();
    State.wrappedValue.getter();
    sub_100092A94(v4, a2);
  }

  sub_10009A4D4(0, &qword_1000DE590, &type metadata for Bool, &type metadata accessor for Binding);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100095B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  v14 = *(a1 + 112);
  *(v13 + 144) = *(a1 + 96);
  *(v13 + 160) = v14;
  *(v13 + 176) = *(a1 + 128);
  v15 = *(a1 + 48);
  *(v13 + 80) = *(a1 + 32);
  *(v13 + 96) = v15;
  v16 = *(a1 + 80);
  *(v13 + 112) = *(a1 + 64);
  *(v13 + 128) = v16;
  v17 = *(a1 + 16);
  *(v13 + 48) = *a1;
  *(v13 + 64) = v17;
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v18 = type metadata accessor for SearchableListView(0, v20);
  (*(*(v18 - 8) + 16))(v20, a1, v18);
  return Button.init(action:label:)();
}

uint64_t sub_100095C2C@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_100095CE0(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, void *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_100095D7C(v12, a3, a4);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_100095D7C(unint64_t *a1, unint64_t *a2, void *a3)
{
  v6 = a1[1];
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100003DDC(0, a2, a3);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      sub_100096014(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_100095E98(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_100095E98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100096014(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_100096814((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100033330(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_1000332A4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_100033330(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100031644(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100031644((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
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
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_100096814((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100033330(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_1000332A4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_100096814(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 identifier];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v36 identifier];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 identifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v16 identifier];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

uint64_t sub_100096C00(uint64_t a1, char a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v19 = v2;
  v8 = ~v6;
  while (1)
  {
    if (*(*(v4 + 48) + 16 * v7 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (a2)
    {
      goto LABEL_3;
    }

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_16;
    }

LABEL_3:
    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v19;
  v20 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100079BBC();
    v17 = v20;
  }

  v18 = *(*(v17 + 48) + 16 * v7);
  sub_100096DCC(v7);
  result = v18;
  *v19 = v20;
  return result;
}

unint64_t sub_100096DCC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v24 = v4;
      do
      {
        v10 = 16 * v6;
        v11 = v3;
        v12 = *(*(v3 + 48) + 16 * v6);
        v13 = v9;
        Hasher.init(_seed:)();
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v2;
        v15 = v12;
        String.hash(into:)();

        v16 = Hasher._finalize()();

        v2 = v14;
        v9 = v13;
        v17 = v16 & v7;
        if (v14 >= v13)
        {
          if (v17 < v13)
          {
            v4 = v24;
            v3 = v11;
          }

          else
          {
            v4 = v24;
            v3 = v11;
            if (v2 >= v17)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v4 = v24;
          v3 = v11;
          if (v17 >= v9 || v2 >= v17)
          {
LABEL_12:
            v18 = *(v3 + 48);
            v19 = (v18 + 16 * v2);
            v20 = (v18 + v10);
            if (16 * v2 != v10 || (v2 = v6, v19 >= v20 + 1))
            {
              *v19 = *v20;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100096FF0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
      if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
      {
LABEL_11:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_12;
      }

LABEL_10:
      v8 = 1;
LABEL_12:

      return v8 & 1;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

uint64_t sub_1000970BC()
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  v44 = v0;
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v45 = (&v42 - v5);
  v6 = _HKAllCategoryTypes();
  sub_100003DDC(0, &qword_1000DD688, HKCategoryType_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = sub_100079F6C(v7);
  sub_100095CE0(&v46, sub_1000341B0, &qword_1000DD688, HKCategoryType_ptr);

  v8 = v46;
  v42 = v1;
  v43 = v4;
  if (v46 < 0 || (v46 & 0x4000000000000000) != 0)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v9 = *(v46 + 16);
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_4:
  v46 = _swiftEmptyArrayStorage;
  sub_10007C51C(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  v10 = 0;
  v11 = v46;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    v14 = [v12 identifier];
    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v46 = v11;
    v16 = v11[2];
    v15 = v11[3];
    if (v16 >= v15 >> 1)
    {
      sub_10007C51C((v15 > 1), v16 + 1, 1);
      v11 = v46;
    }

    ++v10;
    v11[2] = v16 + 1;
    v17 = &v11[2 * v16];
    v17[4] = v14;
    *(v17 + 40) = 0;
  }

  while (v9 != v10);

LABEL_17:
  v18 = static HKSampleDataCodingConstants.categoryTypeIdentifierPrefix.getter();
  v19 = v45;
  *v45 = v18;
  v19[1] = v20;
  v19[2] = v11;
  UUID.init()();
  v21 = _HKAllQuantityTypes();
  sub_100003DDC(0, &qword_1000DD670, HKQuantityType_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = sub_100079F40(v22);
  sub_100095CE0(&v46, sub_1000341B0, &qword_1000DD670, HKQuantityType_ptr);

  v23 = v46;
  if ((v46 & 0x8000000000000000) == 0 && (v46 & 0x4000000000000000) == 0)
  {
    v24 = *(v46 + 16);
    if (v24)
    {
      goto LABEL_20;
    }

LABEL_32:

    v26 = _swiftEmptyArrayStorage;
LABEL_33:
    v33 = static HKSampleDataCodingConstants.quantityTypeIdentifierPrefix.getter();
    v34 = v43;
    *v43 = v33;
    *(v34 + 8) = v35;
    *(v34 + 16) = v26;
    UUID.init()();
    sub_1000976C4(0, qword_1000DE0C0, &type metadata accessor for _ContiguousArrayStorage);
    v36 = *(v42 + 72);
    v37 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000AE110;
    v39 = v38 + v37;
    v40 = v45;
    sub_100097740(v45, v39);
    sub_1000977C0(v34, v39 + v36);
    sub_100097840(v40, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    return v38;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_32;
  }

LABEL_20:
  v46 = _swiftEmptyArrayStorage;
  sub_10007C51C(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v46;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v23 + 8 * v25 + 32);
      }

      v28 = v27;
      v29 = [v27 identifier];
      if (!v29)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = String._bridgeToObjectiveC()();
      }

      v46 = v26;
      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        sub_10007C51C((v30 > 1), v31 + 1, 1);
        v26 = v46;
      }

      ++v25;
      v26[2] = v31 + 1;
      v32 = &v26[2 * v31];
      v32[4] = v29;
      *(v32 + 40) = 1;
    }

    while (v24 != v25);

    goto LABEL_33;
  }

LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_100097604()
{
  result = qword_1000DE0B0;
  if (!qword_1000DE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE0B0);
  }

  return result;
}

unint64_t sub_100097658()
{
  result = qword_1000DE0B8;
  if (!qword_1000DE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE0B8);
  }

  return result;
}

void sub_1000976C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_100099070(255, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100097740(uint64_t a1, uint64_t a2)
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000977C0(uint64_t a1, uint64_t a2)
{
  sub_100099070(0, &qword_1000DE0A8, type metadata accessor for SearchableListSection);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100097840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  sub_100099070(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000978A4(uint64_t a1)
{
  result = type metadata accessor for Array();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100097970(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100097984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000979CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_100097A54(uint64_t a1)
{
  sub_100003DDC(319, &qword_1000DC680, HKHealthStore_ptr);
  if (v1 <= 0x3F)
  {
    sub_10009A224(319, &qword_1000DE1C0, sub_100028CB0, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10009A224(319, &qword_1000DE1C8, sub_10008CBA4, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10009A224(319, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100099270(319, &unk_1000DE1D0, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_10009A4D4(319, &qword_1000DCE70, &type metadata for Bool, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_10009A224(319, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100097CB8()
{
  result = qword_1000DE228;
  if (!qword_1000DE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE228);
  }

  return result;
}

void sub_100097D30(uint64_t a1)
{
  if (!qword_1000DE230)
  {
    sub_100097F38(255);
    sub_100098FD0(255);
    sub_1000980A4(255);
    sub_100098ADC(255);
    sub_100098190(255);
    sub_100098244(255);
    sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE230);
    }
  }
}

void sub_100097F38(uint64_t a1)
{
  if (!qword_1000DE238)
  {
    sub_1000980A4(255);
    sub_100098ADC(255);
    sub_100098190(255);
    sub_100098244(255);
    sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC, &protocol conformance descriptor for TupleToolbarContent<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE238);
    }
  }
}

void sub_1000980A4(uint64_t a1)
{
  if (!qword_1000DE240)
  {
    sub_100098190(255);
    sub_100098244(255);
    sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE240);
    }
  }
}

void sub_100098190(uint64_t a1)
{
  if (!qword_1000DE248)
  {
    sub_100098244(255);
    sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE248);
    }
  }
}

void sub_100098244(uint64_t a1)
{
  if (!qword_1000DE250)
  {
    sub_1000982D8(255);
    sub_10009A2EC(&qword_1000DE318, sub_1000982D8, &protocol conformance descriptor for TupleView<A>);
    v1 = type metadata accessor for Form();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE250);
    }
  }
}

void sub_10009830C(uint64_t a1)
{
  if (!qword_1000DE260)
  {
    sub_1000989E4(255, &qword_1000DE268, sub_100098400, &type metadata for Text);
    sub_1000989E4(255, &qword_1000DE2E8, sub_100098930, &type metadata for Text);
    sub_1000989E4(255, &qword_1000DE308, sub_100098A50, &type metadata for EmptyView);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1000DE260);
    }
  }
}

void sub_100098400(uint64_t a1)
{
  if (!qword_1000DE270)
  {
    sub_100098B64(255, &qword_1000DE278, sub_100098488, sub_100098648);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE270);
    }
  }
}

void sub_100098488(uint64_t a1)
{
  if (!qword_1000DE280)
  {
    sub_10009A4D4(255, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
    sub_100098548(255);
    sub_1000988B4();
    sub_10007AF48();
    v1 = type metadata accessor for ForEach();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE280);
    }
  }
}

void sub_100098548(uint64_t a1)
{
  if (!qword_1000DE290)
  {
    sub_1000985E0(255);
    sub_1000987D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE290);
    }
  }
}

void sub_1000985E0(uint64_t a1)
{
  if (!qword_1000DE298)
  {
    sub_100098648(255);
    sub_100098758(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE298);
    }
  }
}

void sub_100098648(uint64_t a1)
{
  if (!qword_1000DE2A0)
  {
    sub_1000986DC();
    sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
    v1 = type metadata accessor for Button();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE2A0);
    }
  }
}

void sub_1000986DC()
{
  if (!qword_1000DE2A8)
  {
    v0 = type metadata accessor for Label();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DE2A8);
    }
  }
}

void sub_100098758(uint64_t a1)
{
  if (!qword_1000DE2B8)
  {
    sub_10009A4D4(255, &qword_1000DE2C0, &type metadata for AnyShapeStyle, &type metadata accessor for Optional);
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE2B8);
    }
  }
}

unint64_t sub_1000987D4()
{
  result = qword_1000DE2C8;
  if (!qword_1000DE2C8)
  {
    sub_1000985E0(255);
    sub_10009A2EC(&qword_1000DE2D0, sub_100098648, &protocol conformance descriptor for Button<A>);
    sub_10009A2EC(&qword_1000DE2D8, sub_100098758, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2C8);
  }

  return result;
}

unint64_t sub_1000988B4()
{
  result = qword_1000DE2E0;
  if (!qword_1000DE2E0)
  {
    sub_10009A4D4(255, &qword_1000DE288, &type metadata for HKDataType, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE2E0);
  }

  return result;
}

void sub_100098964(uint64_t a1)
{
  if (!qword_1000DE2F8)
  {
    sub_100098C6C(255, &qword_1000DE300, &type metadata accessor for DatePicker);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE2F8);
    }
  }
}

void sub_1000989E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = type metadata accessor for Section();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100098A50(uint64_t a1)
{
  if (!qword_1000DE310)
  {
    sub_100098648(255);
    sub_10009A4D4(255, &qword_1000DCE20, &type metadata for Bool, &type metadata accessor for _EnvironmentKeyTransformModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE310);
    }
  }
}

void sub_100098ADC(uint64_t a1)
{
  if (!qword_1000DE328)
  {
    sub_100098B64(255, &qword_1000DE330, sub_100098BE0, sub_100098CCC);
    v1 = type metadata accessor for TupleToolbarContent();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE328);
    }
  }
}

void sub_100098B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100098BE0(uint64_t a1)
{
  if (!qword_1000DE338)
  {
    sub_100098C6C(255, &qword_1000DCE18, &type metadata accessor for Button);
    sub_1000664E8();
    v1 = type metadata accessor for ToolbarItem();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE338);
    }
  }
}

void sub_100098C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Text, &protocol witness table for Text);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100098D00(uint64_t a1)
{
  if (!qword_1000DE348)
  {
    sub_100098DB4(255);
    sub_10009A2EC(&qword_1000DE380, sub_100098DB4, &protocol conformance descriptor for ToolbarItem<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE348);
    }
  }
}

void sub_100098DB4(uint64_t a1)
{
  if (!qword_1000DE350)
  {
    sub_100098E54(255);
    sub_10009A2EC(&qword_1000DE378, sub_100098E54, &protocol conformance descriptor for ShareLink<A, B, C, D>);
    v1 = type metadata accessor for ToolbarItem();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE350);
    }
  }
}

void sub_100098E54(uint64_t a1)
{
  if (!qword_1000DE358)
  {
    sub_100098F9C(255);
    sub_1000986DC();
    sub_10009A2EC(&qword_1000DE368, sub_100098F9C, &protocol conformance descriptor for CollectionOfOne<A>);
    sub_10009A2EC(&qword_1000DE2B0, sub_1000986DC, &protocol conformance descriptor for Label<A, B>);
    sub_10009A2EC(&qword_1000DE370, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v1 = type metadata accessor for ShareLink();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE358);
    }
  }
}

void sub_100098FD0(uint64_t a1)
{
  if (!qword_1000DE390)
  {
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1000DE390);
    }
  }
}

void sub_100099070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for HKDataType;
    v8[1] = sub_100097604();
    v8[2] = sub_10007AF48();
    v8[3] = sub_100097658();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_100099114()
{
  result = qword_1000DE3A0;
  if (!qword_1000DE3A0)
  {
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3A0);
  }

  return result;
}

uint64_t sub_100099198(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100099200()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000907F0(v2);
}

void sub_100099270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1000976C4(255, &qword_1000DE0A0, &type metadata accessor for Array);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1000992FC()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = *(v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 8);
  if (v4)
  {
    return v4();
  }

  return result;
}

unint64_t sub_100099380()
{
  result = qword_1000DE3C8;
  if (!qword_1000DE3C8)
  {
    sub_100098A50(255);
    sub_10009A2EC(&qword_1000DE2D0, sub_100098648, &protocol conformance descriptor for Button<A>);
    sub_10006655C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3C8);
  }

  return result;
}

uint64_t sub_1000994B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  type metadata accessor for SampleExporter(0);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100018D6C;

  return sub_100090DB8(a1, v7, v8, v1 + v6);
}

void sub_100099604(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003DDC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10009968C()
{
  result = qword_1000DE3D8;
  if (!qword_1000DE3D8)
  {
    sub_100099604(255, &qword_1000DE3D0, &qword_1000DB718, HKSample_ptr, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE3D8);
  }

  return result;
}

void sub_100099710(uint64_t a1)
{
  if (!qword_1000DE3E0)
  {
    sub_100099604(255, &qword_1000DE3E8, &qword_1000DB718, HKSample_ptr, &type metadata accessor for HKSamplePredicate);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE3E0);
    }
  }
}

uint64_t sub_1000997C8(uint64_t *a1)
{
  v3 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10008E728(a1, v4);
}

uint64_t sub_100099848()
{
  v1 = type metadata accessor for ExportDatasetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  if (*(v0 + v3 + 8))
  {
  }

  v5 = v4 + v1[7];
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  sub_10009A224(0, &qword_1000DE148, &type metadata accessor for Date, &type metadata accessor for State);

  v7(v4 + v1[8], v6);

  v8 = v4 + v1[12];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  sub_10009A224(0, &qword_1000DE150, sub_10008CB70, &type metadata accessor for State);

  return _swift_deallocObject(v0, v3 + v12, v2 | 7);
}

uint64_t sub_100099AE0()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10008ECD4(v2);
}

uint64_t sub_100099B4C()
{
  v1 = *(type metadata accessor for ExportDatasetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_10008EB88(v0 + v2, v4, v5);
}

void sub_100099BE0(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

unint64_t sub_100099BF4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

void sub_100099CCC(uint64_t a1)
{
  sub_100099604(319, &qword_1000DE480, &qword_1000DE488, HKSampleType_ptr, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DateInterval();
    if (v2 <= 0x3F)
    {
      sub_100003DDC(319, &qword_1000DC680, HKHealthStore_ptr);
      if (v3 <= 0x3F)
      {
        sub_100003DDC(319, &unk_1000DE490, NSFileManager_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100099DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100099E14(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100099E48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100099E90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100099EF0(uint64_t a1)
{
  if (!qword_1000DE550)
  {
    sub_100097D30(255);
    sub_100097F38(255);
    sub_100098FD0(255);
    sub_1000980A4(255);
    sub_100098ADC(255);
    sub_100098190(255);
    sub_100098244(255);
    sub_10009A2EC(&qword_1000DE320, sub_100098244, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10009A2EC(&qword_1000DE388, sub_100098ADC, &protocol conformance descriptor for TupleToolbarContent<A>);
    swift_getOpaqueTypeConformance2();
    sub_100099070(255, &qword_1000DE398, type metadata accessor for SearchableListView);
    sub_100099114();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for NavigationView();
    if (!v2)
    {
      atomic_store(v1, &qword_1000DE550);
    }
  }
}

void sub_10009A224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10009A288(uint64_t a1)
{
  if (!qword_1000DE578)
  {
    sub_100098BE0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000DE578);
    }
  }
}

uint64_t sub_10009A2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009A37C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009A48C()
{
  v1 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v2 = type metadata accessor for SearchableListView(0, v4);
  return sub_100095A38(1, v2);
}

void sub_10009A4D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10009A524()
{

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10009A5C4()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = v1;
  type metadata accessor for SearchableListView(0, &v3);
  v3 = *(v0 + 112);
  LOBYTE(v4) = *(v0 + 128);
  v5 = 0;
  sub_10009A4D4(0, &qword_1000DE590, &type metadata for Bool, &type metadata accessor for Binding);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10009A64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_10009A8FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ActivityIndicatorTitleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009A9B8(char a1)
{
  v2 = type metadata accessor for NotificationAuthorizationAnalyticsEvent.SelectedAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotificationAuthorizationAnalyticsEvent.Context();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NotificationAuthorizationAnalyticsEvent();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for NotificationAuthorizationAnalyticsEvent.Context.healthAppOnboarding(_:), v6);
  v14 = &enum case for NotificationAuthorizationAnalyticsEvent.SelectedAction.allowNotifications(_:);
  if ((a1 & 1) == 0)
  {
    v14 = &enum case for NotificationAuthorizationAnalyticsEvent.SelectedAction.doNotAllowNotifications(_:);
  }

  (*(v3 + 104))(v5, *v14, v2);
  NotificationAuthorizationAnalyticsEvent.init(context:featureDomain:featureName:selectedAction:)();
  v15 = type metadata accessor for AnalyticsSender();
  v16 = static AnalyticsSender.shared.getter();
  v19[3] = v15;
  v19[4] = &protocol witness table for AnalyticsSender;
  v19[0] = v16;
  sub_10009AC48();
  AnalyticsSubmitting.submit(sender:)();
  (*(v11 + 8))(v13, v10);
  return sub_100003B90(v19);
}

unint64_t sub_10009AC48()
{
  result = qword_1000DE5D0;
  if (!qword_1000DE5D0)
  {
    type metadata accessor for NotificationAuthorizationAnalyticsEvent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE5D0);
  }

  return result;
}

uint64_t sub_10009ACA0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 dateFromString:v11];

  if (v12)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v9, v7, v3);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    [v13 setDateStyle:1];
    [v13 setTimeStyle:1];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 stringFromDate:isa];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v4 + 8))(v9, v3);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_10009AEB8()
{
  v66 = type metadata accessor for SectionedDataSourceContainerViewType();
  v0 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BE7C(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v64 = v43 - v3;
  v63 = type metadata accessor for CellDeselectionBehavior();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BE7C(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v61 = v43 - v7;
  v60 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UICellAccessory.DisplayedState();
  v10 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for UUID();
  v12 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ContentConfigurationItem();
  v14 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = _swiftEmptyArrayStorage;
  sub_10007C53C(0, 24, 0);
  v17 = v76;
  v53 = objc_opt_self();
  v52 = 0x80000001000AB200;
  v68 = (v12 + 8);
  v51 = enum case for UICellAccessory.DisplayedState.always(_:);
  v50 = (v10 + 104);
  v49 = (v8 + 8);
  v48 = (v10 + 8);
  v47 = enum case for CellDeselectionBehavior.default(_:);
  v46 = (v4 + 104);
  v45 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
  v44 = (v0 + 104);
  v55 = v14;
  v43[2] = v14 + 32;
  v18 = &stru_100000020;
  v67 = xmmword_1000AE100;
  v19 = v57;
  do
  {
    v20 = *(&off_1000CC230 + v18);
    sub_100009238(v20);
    v73 = swift_allocObject();
    *(v73 + 16) = v20;
    v21 = v69;
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v71 = v23;
    v72 = v22;
    v54 = *v68;
    v54(v21, v70);
    v75[3] = type metadata accessor for UIListContentConfiguration();
    v75[4] = &protocol witness table for UIListContentConfiguration;
    sub_10000AD4C(v75);
    static UIListContentConfiguration.cell()();

    UIListContentConfiguration.text.setter();
    v24 = [v53 labelColor];
    v25 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.color.setter();
    v25(v74, 0);
    sub_10009BE7C(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
    type metadata accessor for UICellAccessory();
    *(swift_allocObject() + 16) = v67;
    v26 = v58;
    (*v50)(v19, v51, v58);
    v27 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v27 - 8) + 56))(v61, 1, 1, v27);
    v28 = v16;
    v29 = v59;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    v30 = v29;
    v16 = v28;
    (*v49)(v30, v60);
    (*v48)(v19, v26);

    (*v46)(v62, v47, v63);
    v31 = type metadata accessor for UIBackgroundConfiguration();
    (*(*(v31 - 8) + 56))(v64, 1, 1, v31);
    (*v44)(v65, v45, v66);
    ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
    v76 = v17;
    v33 = *(v17 + 16);
    v32 = *(v17 + 24);
    if (v33 >= v32 >> 1)
    {
      sub_10007C53C((v32 > 1), v33 + 1, 1);
      v17 = v76;
    }

    *(v17 + 16) = v33 + 1;
    (*(v55 + 32))(v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v33, v28, v56);
    v18 += 8;
  }

  while (v18 != 224);
  sub_10009BE7C(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v67;
  sub_10009C004(v17);

  v34 = v69;
  UUID.init()();
  UUID.uuidString.getter();
  v35 = v70;
  v36 = v54;
  v54(v34, v70);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v75[0] = 0x3C53447961727241;
  v75[1] = 0xE800000000000000;
  UUID.init()();
  v37 = UUID.uuidString.getter();
  v39 = v38;
  v36(v34, v35);
  v40._countAndFlagsBits = v37;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 62;
  v41._object = 0xE100000000000000;
  String.append(_:)(v41);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void *sub_10009B9C8(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for HKTypeGroup();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  result = UIViewController.resolvedHealthStore.getter();
  if (result)
  {
    v11 = result;
    static HKTypeGroup.typeGroup(for:)();
    (*(v4 + 16))(v7, v9, v3);
    v12 = v11;
    UIViewController.resolvedHealthExperienceStore.getter();
    UIViewController.resolvedPinnedContentManager.getter();
    v13 = objc_allocWithZone(type metadata accessor for CategoryViewController());
    v14 = CategoryViewController.init(typeGroup:healthStore:healthExperienceStore:pinnedContentManager:)();
    [a1 showViewController:v14 sender:0];

    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

unint64_t sub_10009BCAC()
{
  result = qword_1000DE5D8;
  if (!qword_1000DE5D8)
  {
    sub_10009BE7C(255, &qword_1000DE5E0, type metadata accessor for HKDisplayCategoryIdentifier, &type metadata accessor for Array);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DE5D8);
  }

  return result;
}

uint64_t type metadata accessor for CategoryDataSource(uint64_t a1)
{
  result = qword_1000DE5E8;
  if (!qword_1000DE5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009BDC8(uint64_t a1)
{
  *(a1 + 8) = sub_10009BE30(&qword_1000DE638, &unk_1000B15D0);
  result = sub_10009BE30(&qword_1000DE640, &unk_1000B1600);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10009BE30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CategoryDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10009BE7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10009BEE0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = dispatch thunk of PluginInternalSettingsProviding.makeInternalSettingsViewController()();
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }
}

uint64_t type metadata accessor for ContentKindDataSource(uint64_t a1)
{
  result = qword_1000DE648;
  if (!qword_1000DE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10009C004(uint64_t a1)
{
  v2 = type metadata accessor for ContentConfigurationItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_10007C55C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = v7[2];
      v12 = v7[3];
      if (v13 >= v12 >> 1)
      {
        sub_10007C55C((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_10009D488(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
      v14 = sub_10000AD4C(&v18);
      v9(v14, v5, v2);
      v7 = v21;
      v21[2] = v13 + 1;
      sub_100014D24(&v18, &v7[5 * v13 + 4]);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_10009C1FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v19 = _swiftEmptyArrayStorage;
    sub_10007C55C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10000ACE8(v4, v15);
      sub_100009630(0, &qword_1000DB6D0, &protocol descriptor for SectionedDataSourceItem);
      sub_100009630(0, &qword_1000DAC08, &protocol descriptor for SnapshotDataSourceItem);
      swift_dynamicCast();
      v19 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_10007C55C((v5 > 1), v6 + 1, 1);
      }

      v7 = v17;
      v8 = v18;
      v9 = sub_1000190A0(v16, v17);
      __chkstk_darwin(v9);
      v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v12 + 16))(v11);
      sub_10009D534(v6, v11, &v19, v7, v8);
      sub_100003B90(v16);
      v2 = v19;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_10009C3DC()
{
  v94 = type metadata accessor for SectionedDataSourceContainerViewType();
  v100 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = v57 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D4D0(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v1 - 8);
  v92 = v57 - v2;
  v91 = type metadata accessor for CellDeselectionBehavior();
  v3 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009D4D0(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v5 - 8);
  v89 = v57 - v6;
  v88 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v7 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UICellAccessory.DisplayedState();
  v9 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UUID();
  v11 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ContentConfigurationItem();
  v13 = *(v84 - 8);
  __chkstk_darwin(v84);
  v15 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ContentKind();
  v16 = *(v83 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v83);
  v82 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v81 = v57 - v19;
  v20 = static ContentKind.allCases.getter();
  v21 = &unk_1000AE000;
  if (*(v20 + 16))
  {
    v101 = *(v20 + 16);
    v22 = v20;
    v77 = objc_opt_self();
    v24 = *(v16 + 16);
    v23 = v16 + 16;
    v76 = v24;
    v25 = *(v23 + 64);
    v57[1] = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v74 = *(v23 + 56);
    v75 = v25;
    v73 = (v25 + 16) & ~v25;
    v72 = v73 + v17;
    v71 = (v23 + 16);
    v70 = (v11 + 8);
    v69 = enum case for UICellAccessory.DisplayedState.always(_:);
    v68 = (v9 + 104);
    v67 = (v7 + 8);
    v66 = (v9 + 8);
    v65 = enum case for CellDeselectionBehavior.default(_:);
    v64 = (v3 + 104);
    v63 = enum case for SectionedDataSourceContainerViewType.collectionView(_:);
    v62 = (v100 + 104);
    v78 = v23;
    v61 = (v23 - 8);
    v60 = v13 + 32;
    v27 = _swiftEmptyArrayStorage;
    v59 = xmmword_1000AE100;
    v80 = v11;
    v79 = v13;
    v58 = v15;
    v28 = v85;
    do
    {
      v29 = v81;
      v100 = v26;
      v30 = v83;
      v31 = v76;
      (v76)(v81);
      v32 = v82;
      v31(v82, v29, v30);
      String.init<A>(describing:)();
      v31(v32, v29, v30);
      v99 = swift_allocObject();
      (*v71)(v99 + v73, v32, v30);
      v33 = v95;
      UUID.init()();
      v34 = UUID.uuidString.getter();
      v97 = v35;
      v98 = v34;
      (*v70)(v33, v96);
      v103[3] = type metadata accessor for UIListContentConfiguration();
      v103[4] = &protocol witness table for UIListContentConfiguration;
      sub_10000AD4C(v103);
      static UIListContentConfiguration.cell()();

      UIListContentConfiguration.text.setter();
      v36 = [v77 labelColor];
      v37 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v37(v102, 0);
      sub_10009D4D0(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = v59;
      v38 = v27;
      v39 = v86;
      (*v68)(v28, v69, v86);
      v40 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
      v41 = v87;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*v67)(v41, v88);
      v42 = v39;
      v27 = v38;
      (*v66)(v28, v42);

      (*v64)(v90, v65, v91);
      v43 = type metadata accessor for UIBackgroundConfiguration();
      (*(*(v43 - 8) + 56))(v92, 1, 1, v43);
      (*v62)(v93, v63, v94);
      v44 = v58;
      ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
      (*v61)(v29, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100031774(0, v38[2] + 1, 1, v38);
      }

      v46 = v27[2];
      v45 = v27[3];
      v11 = v80;
      v47 = v79;
      if (v46 >= v45 >> 1)
      {
        v27 = sub_100031774((v45 > 1), v46 + 1, 1, v27);
      }

      v27[2] = v46 + 1;
      (*(v47 + 32))(v27 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v46, v44, v84);
      v26 = v100 + v74;
      --v101;
    }

    while (v101);

    v21 = &unk_1000AE000;
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  sub_10009D4D0(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for ArrayDataSourceSection();
  *(swift_allocObject() + 16) = v21[16];
  sub_10009C004(v27);

  v48 = v95;
  UUID.init()();
  UUID.uuidString.getter();
  v49 = *(v11 + 8);
  v50 = v96;
  v49(v48, v96);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v103[0] = 0x3C53447961727241;
  v103[1] = 0xE800000000000000;
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v53 = v52;
  v49(v48, v50);
  v54._countAndFlagsBits = v51;
  v54._object = v53;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 62;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009D0F8(void *a1, uint64_t a2)
{
  sub_10009D4D0(0, &qword_1000DBAA8, &type metadata accessor for ContentKind, &type metadata accessor for _ContiguousArrayStorage);
  v4 = type metadata accessor for ContentKind();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000AE100;
  (*(v5 + 16))(v7 + v6, a2, v4);
  v8 = objc_allocWithZone(type metadata accessor for InternalFeedItemListViewController());
  v9 = InternalFeedItemListViewController.init(contentKinds:)();
  [a1 showViewController:v9 sender:0];
}

uint64_t sub_10009D394(uint64_t a1)
{
  *(a1 + 8) = sub_10009D488(&qword_1000DE698, type metadata accessor for ContentKindDataSource, &unk_1000B1680);
  result = sub_10009D488(&qword_1000DE6A0, type metadata accessor for ContentKindDataSource, &unk_1000B16B0);
  *(a1 + 24) = result;
  return result;
}

void sub_10009D418(void *a1)
{
  v3 = *(type metadata accessor for ContentKind() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10009D0F8(a1, v4);
}

uint64_t sub_10009D488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10009D4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009D534(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000AD4C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100014D24(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for AllFeedItemsDataSource(uint64_t a1)
{
  result = qword_1000DE6A8;
  if (!qword_1000DE6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009D658()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v50 = *(v0 - 8);
  v51 = v0;
  __chkstk_darwin(v0);
  v49 = v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v48 = v35 - v3;
  v4 = type metadata accessor for CellDeselectionBehavior();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DAEF0, &type metadata accessor for UICellAccessory.LayoutDimension, &type metadata accessor for Optional);
  __chkstk_darwin(v6 - 8);
  v41 = v35 - v7;
  v8 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v39 - 8);
  __chkstk_darwin(v39);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v36 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009E288(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v18 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v42 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v40 = swift_allocObject();
  v52 = xmmword_1000AE100;
  *(v40 + 16) = xmmword_1000AE100;
  sub_10009E288(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v19 = swift_allocObject();
  *(v19 + 16) = v52;
  *(v19 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v19 + 64) = sub_10009E240(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v35[2] = sub_10000AD4C((v19 + 32));
  UUID.init()();
  v35[1] = UUID.uuidString.getter();
  v35[0] = v20;
  v21 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v21;
  v21(v17, v14);
  v54[3] = type metadata accessor for UIListContentConfiguration();
  v54[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v54);
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.text.setter();
  v22 = [objc_opt_self() labelColor];
  v23 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v23(v53, 0);
  sub_10009E288(0, &qword_1000DAF00, &type metadata accessor for UICellAccessory, &type metadata accessor for _ContiguousArrayStorage);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = v52;
  v24 = v39;
  (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v39);
  v25 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
  static UICellAccessory.disclosureIndicator(displayed:options:)();
  (*(v43 + 8))(v10, v44);
  (*(v11 + 8))(v13, v24);
  (*(v46 + 104))(v45, enum case for CellDeselectionBehavior.default(_:), v47);
  v26 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  (*(v50 + 104))(v49, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v51);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v27 = v36;
  v28 = v38;
  v38(v17, v36);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v54[0] = 0x3C53447961727241;
  v54[1] = 0xE800000000000000;
  UUID.init()();
  v29 = UUID.uuidString.getter();
  v31 = v30;
  v28(v17, v27);
  v32._countAndFlagsBits = v29;
  v32._object = v31;
  String.append(_:)(v32);

  v33._countAndFlagsBits = 62;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009DF70(void *a1)
{
  type metadata accessor for DiskHealthExperienceStore();
  static DiskHealthExperienceStore.shared.getter();
  type metadata accessor for AllFeedItemsListDataSourceProvider();
  swift_allocObject();
  AllFeedItemsListDataSourceProvider.init(for:)();
  dispatch thunk of AllFeedItemsListDataSourceProvider.selectedDataSources(for:)();
  type metadata accessor for CompoundSectionedDataSource();
  swift_allocObject();
  CompoundSectionedDataSource.init(_:)();
  v2 = objc_allocWithZone(type metadata accessor for CompoundDataSourceCollectionViewController());

  v3 = CompoundDataSourceCollectionViewController.init(dataSource:)();
  [a1 showViewController:v3 sender:0];
}

uint64_t sub_10009E1BC(uint64_t a1)
{
  *(a1 + 8) = sub_10009E240(&qword_1000DE6F8, type metadata accessor for AllFeedItemsDataSource, &unk_1000B1730);
  result = sub_10009E240(&qword_1000DE700, type metadata accessor for AllFeedItemsDataSource, &unk_1000B1760);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10009E240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10009E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for UserDefaultsDataSource(uint64_t a1)
{
  result = qword_1000DE708;
  if (!qword_1000DE708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009E378()
{
  v0 = type metadata accessor for SectionedDataSourceContainerViewType();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ED00(0, &qword_1000DABF0, &type metadata accessor for UIBackgroundConfiguration, &type metadata accessor for Optional);
  __chkstk_darwin(v2 - 8);
  v31 = v24 - v3;
  v30 = type metadata accessor for CellDeselectionBehavior();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v26 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ED00(0, &qword_1000DABF8, &type metadata accessor for ArrayDataSourceSection, &type metadata accessor for _ContiguousArrayStorage);
  v10 = *(type metadata accessor for ArrayDataSourceSection() - 8);
  v29 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v27 = swift_allocObject();
  v25 = xmmword_1000AE100;
  *(v27 + 16) = xmmword_1000AE100;
  sub_10009ED00(0, &qword_1000DAC00, sub_1000199DC, &type metadata accessor for _ContiguousArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = v25;
  type metadata accessor for HealthAppPluginSource();
  static HealthAppPluginSource.disabledHealthPluginsDefaultsKey.getter();
  *(v11 + 56) = type metadata accessor for ContentConfigurationItem();
  *(v11 + 64) = sub_10009ED64(&unk_1000DAC10, &type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  *&v25 = sub_10000AD4C((v11 + 32));
  UUID.init()();
  v24[1] = UUID.uuidString.getter();
  v24[0] = v12;
  v13 = *(v7 + 8);
  v13(v9, v6);
  v36[3] = type metadata accessor for UIListContentConfiguration();
  v36[4] = &protocol witness table for UIListContentConfiguration;
  sub_10000AD4C(v36);
  static UIListContentConfiguration.cell()();

  UIListContentConfiguration.text.setter();
  v14 = [objc_opt_self() tintColor];
  v15 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v15(v35, 0);

  *v5 = 1;
  (*(v28 + 104))(v5, enum case for CellDeselectionBehavior.deselectOnDidSelect(_:), v30);
  v16 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v16 - 8) + 56))(v31, 1, 1, v16);
  (*(v33 + 104))(v32, enum case for SectionedDataSourceContainerViewType.collectionView(_:), v34);
  ContentConfigurationItem.init(uniqueIdentifier:contentConfiguration:cellAccessories:cellSelectionHandler:deselectionBehavior:backgroundConfiguration:updateContentConfigurationHandler:container:automationIdentifier:)();
  UUID.init()();
  UUID.uuidString.getter();
  v17 = v26;
  v13(v9, v26);
  ArrayDataSourceSection.init(title:arrangedItems:identifier:)();
  v36[0] = 0x3C53447961727241;
  v36[1] = 0xE800000000000000;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v13(v9, v17);
  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return ArrayDataSource.init(arrangedSections:identifier:)();
}

void sub_10009E9B0(void *a1)
{
  type metadata accessor for HealthAppPluginSource();
  static HealthAppPluginSource.disabledHealthPluginsDefaultsKey.getter();
  type metadata accessor for FoundationPluginBundleProvider();
  static FoundationPluginBundleProvider.sharedInstance.getter();
  dispatch thunk of PluginBundleProvider.disabledPlugins.getter();

  Array.description.getter();

  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();

  v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:1];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() actionWithTitle:v5 style:0 handler:0];

  [v4 addAction:v6];
  [a1 presentViewController:v4 animated:1 completion:0];
}

uint64_t sub_10009EC7C(uint64_t a1)
{
  *(a1 + 8) = sub_10009ED64(&qword_1000DE758, type metadata accessor for UserDefaultsDataSource, &unk_1000B17E0);
  result = sub_10009ED64(&qword_1000DE760, type metadata accessor for UserDefaultsDataSource, &unk_1000B1810);
  *(a1 + 24) = result;
  return result;
}

void sub_10009ED00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009ED64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10009EDAC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for HKTCategoryViewFactory();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 tabBarController];
  if (v14)
  {
    v24[2] = a3;
    v15 = v14;
    v16 = UIViewController.resolvedHealthStore.getter();
    if (v16)
    {
      v17 = v16;
      v24[1] = v5;
      HKTCategoryViewFactory.init()();
      v18 = v17;
      UIViewController.resolvedPinnedContentManager.getter();
      UIViewController.resolvedHealthExperienceStore.getter();

      type metadata accessor for ProvidedViewContext();
      swift_allocObject();
      ProvidedViewContext.init(healthStore:pinnedContentManagerProvider:pinnedContentManager:healthExperienceStore:)();
      v22 = HKTCategoryViewFactory.makeViewController(typeGroup:context:)();
      (*(v11 + 8))(v13, v10);

      return v22;
    }
  }

  static Logger.view.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Somehow we don't have a tab bar controller or health store for the top level entry point", v21, 2u);
  }

  (*(v6 + 8))(v9, v5);
  return [objc_allocWithZone(UIViewController) init];
}

id sub_10009F280()
{
  v2.receiver = v0;
  v2.super_class = _s15CategoriesGroupCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10009F2B4(void *a1)
{
  v3 = *(type metadata accessor for HKTypeGroup() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10009EDAC(a1, v1 + v4, v5);
}

uint64_t sub_10009F37C(int a1, int a2, int a3, int a4)
{
  if (qword_1000E3CB8 == -1)
  {
    if (qword_1000E3CC0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10009F844();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000E3CC0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000E3CB0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10009F85C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000E3CA0 < v11;
    if (dword_1000E3CA0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000E3CA4 > a3)
      {
        return 1;
      }

      if (dword_1000E3CA4 >= a3)
      {
        return dword_1000E3CA8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000E3CA0 < a2;
  if (dword_1000E3CA0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10009F510(uint64_t result)
{
  v1 = qword_1000E3CC0;
  if (qword_1000E3CC0)
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
      qword_1000E3CC0 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1000E3CA0, &dword_1000E3CA4, &dword_1000E3CA8);
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

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = PersonNameComponents._bridgeToObjectiveC()();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

uint64_t static HKTypeGroup.typeGroup(for:)()
{
  return static HKTypeGroup.typeGroup(for:)();
}

{
  return static HKTypeGroup.typeGroup(for:)();
}

uint64_t SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)()
{
  return SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();
}

{
  return SnapshotDataSource.withLayoutSectionProvider(collapseEmptySections:_:)();
}

UIBarButtonItem_optional __swiftcall TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()()
{
  v0 = TapToRadarButtonDisplaying.makeTapToRadarButtonIfNeeded()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.integer(for:)(Swift::String a1)
{
  v1 = HKKeyValueDomain.integer(for:)(a1._countAndFlagsBits, a1._object);
  result.value = v1;
  result.is_nil = v2;
  return result;
}

UIViewController_optional __swiftcall UINavigationController.rootViewController()()
{
  v0 = UINavigationController.rootViewController()();
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}