int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for FitnessAppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

void sub_100004CC4()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___CHFitnessAppDelegate_phoneSceneConfigurationName];
  *v2 = 0xD000000000000013;
  *(v2 + 1) = 0x80000001007621D0;
  v3 = &v0[OBJC_IVAR___CHFitnessAppDelegate_iPadSceneConfigurationName];
  *v3 = 0xD000000000000012;
  *(v3 + 1) = 0x80000001007621F0;
  v4 = [objc_allocWithZone(HKHealthStore) init];
  v5 = OBJC_IVAR___CHFitnessAppDelegate_healthStore;
  *&v0[OBJC_IVAR___CHFitnessAppDelegate_healthStore] = v4;
  v6 = objc_allocWithZone(type metadata accessor for HistoryDataProvider());
  *&v0[OBJC_IVAR___CHFitnessAppDelegate_historyDataProvider] = sub_1000051A4(v4);
  v7 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:*&v0[v5]];
  v8 = [objc_allocWithZone(FIUIFormattingManager) initWithUnitManager:v7];

  if (v8)
  {
    *&v1[OBJC_IVAR___CHFitnessAppDelegate_fitnessUIFormattingManager] = v8;
    v9 = [objc_allocWithZone(CHWorkoutFormattingManager) initWithFitnessUIFormattingManager:v8 healthStore:*&v1[v5]];
    *&v1[OBJC_IVAR___CHFitnessAppDelegate_workoutFormattingManager] = v9;
    v10 = [objc_allocWithZone(FIPauseRingsCoordinator) initWithHealthStore:*&v1[v5]];
    *&v1[OBJC_IVAR___CHFitnessAppDelegate_pauseRingsCoordinator] = v10;
    v20.receiver = v1;
    v20.super_class = type metadata accessor for FitnessAppDelegate();
    v11 = objc_msgSendSuper2(&v20, "init");
    type metadata accessor for AppDependencyManager();
    v12 = v11;
    static AppDependencyManager.shared.getter();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *(swift_allocObject() + 16) = v12;
    sub_1000059F8(0, &qword_1008F24A0, HKHealthStore_ptr);
    v13 = v12;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_1000073B8(&v17);
    static AppDependencyManager.shared.getter();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *(swift_allocObject() + 16) = v13;
    v14 = v13;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_1000073B8(&v17);
    static AppDependencyManager.shared.getter();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *(swift_allocObject() + 16) = v14;
    sub_1000059F8(0, &qword_1008F24B0, FIUIFormattingManager_ptr);
    v15 = v14;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_1000073B8(&v17);
    static AppDependencyManager.shared.getter();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *(swift_allocObject() + 16) = v15;
    sub_1000059F8(0, &unk_1008DC348, off_100832828);
    v16 = v15;
    AppDependencyManager.add<A>(key:dependency:)();

    sub_1000073B8(&v17);
    static AppDependencyManager.shared.getter();
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    *(swift_allocObject() + 16) = v16;
    type metadata accessor for FIPauseRingsCoordinator();
    AppDependencyManager.add<A>(key:dependency:)();

    sub_1000073B8(&v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005138()
{

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_1000051A4(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___CHHistoryDataProvider__allHistoryItems] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___CHHistoryDataProvider__stackHistoryItems] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___CHHistoryDataProvider__historyFilterValues] = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR___CHHistoryDataProvider_lock;
  sub_100140278(&qword_1008E8648, &unk_1006EE0A0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v2[v4] = v5;
  *&v2[OBJC_IVAR___CHHistoryDataProvider_onChangeHandlers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR___CHHistoryDataProvider_historyItemIDsPendingDeletion] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR___CHHistoryDataProvider_allMindfulnessSessions] = _swiftEmptyArrayStorage;
  v2[OBJC_IVAR___CHHistoryDataProvider_hasInitialWorkouts] = 0;
  v2[OBJC_IVAR___CHHistoryDataProvider_hasInitialMindfulnessSessions] = 0;
  v2[OBJC_IVAR___CHHistoryDataProvider_shouldForceReload] = 0;
  *&v2[OBJC_IVAR___CHHistoryDataProvider_queue] = 0;
  type metadata accessor for Dependencies();
  v50 = type metadata accessor for DefaultWheelchairStatus();
  v51 = &protocol witness table for DefaultWheelchairStatus;
  sub_100005994(&aBlock);
  DefaultWheelchairStatus.init()();
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = static Dependencies.browsing(wheelchairStatus:queue:)();

  sub_100005A40(&aBlock);
  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();
  v8 = v48;
  v9 = &v2[OBJC_IVAR___CHHistoryDataProvider_eventHub];
  *v9 = aBlock;
  v9[1] = v8;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v2[OBJC_IVAR___CHHistoryDataProvider_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  *&v2[OBJC_IVAR___CHHistoryDataProvider_healthStore] = a1;
  v10 = objc_allocWithZone(CHWorkoutDataProvider);
  v11 = a1;
  v12 = v10;
  v13 = v11;
  v14 = [v12 initWithHealthStore:?];
  *&v2[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider] = v14;
  v46 = v13;
  v15 = [objc_allocWithZone(FIMindfulnessSessionDataProvider) initWithHealthStore:v13];
  *&v2[OBJC_IVAR___CHHistoryDataProvider_mindfulnessSessionDataProvider] = v15;
  v16 = [objc_allocWithZone(FIUIUnitManager) initWithHealthStore:v13];
  v17 = objc_allocWithZone(type metadata accessor for SeymourCatalogItemDataProvider());

  v45 = v16;
  *&v2[OBJC_IVAR___CHHistoryDataProvider_seymourCatalogItemDataProvider] = sub_100005E74(v7, v45, v17);
  v18 = type metadata accessor for HistoryDataProvider();
  v53.receiver = v2;
  v53.super_class = v18;
  v19 = objc_msgSendSuper2(&v53, "init");
  v20 = String._bridgeToObjectiveC()();
  v21 = HKCreateSerialDispatchQueue();

  v22 = *&v19[OBJC_IVAR___CHHistoryDataProvider_queue];
  *&v19[OBJC_IVAR___CHHistoryDataProvider_queue] = v21;

  swift_getObjectType();
  type metadata accessor for PlaylistsUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(&aBlock);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider;
  v25 = *&v19[OBJC_IVAR___CHHistoryDataProvider_workoutDataProvider];
  v51 = sub_10044FBD0;
  v52 = v23;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000449A8;
  v50 = &unk_10085ACD8;
  v26 = _Block_copy(&aBlock);
  v27 = v25;

  [v27 addUpdateHandler:v26];
  _Block_release(v26);

  v28 = *&v19[v24];
  v51 = sub_10044FBD0;
  v52 = v23;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_1000449A8;
  v50 = &unk_10085AD00;
  v29 = _Block_copy(&aBlock);

  v30 = v28;

  [v30 addAnimatedUpdateHandler:v29];
  _Block_release(v29);

  v31 = objc_opt_self();
  v32 = [v31 defaultCenter];
  v33 = kFIMindfulnessSessionDataProviderDidUpdateNotification;
  v34 = objc_opt_self();
  v35 = [v34 mainQueue];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = sub_100027184;
  v52 = v36;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100026F8C;
  v50 = &unk_10085AD28;
  v37 = _Block_copy(&aBlock);

  v38 = [v32 addObserverForName:v33 object:0 queue:v35 usingBlock:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  v39 = [v31 defaultCenter];
  v40 = [v34 mainQueue];
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v51 = sub_10044FBD8;
  v52 = v41;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100026F8C;
  v50 = &unk_10085AD50;
  v42 = _Block_copy(&aBlock);

  v43 = [v39 addObserverForName:UIApplicationWillEnterForegroundNotification object:0 queue:v40 usingBlock:v42];
  _Block_release(v42);

  swift_unknownObjectRelease();

  return v19;
}

uint64_t sub_10000595C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100005994(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000059F8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100005A40(void *a1)
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

char *sub_100005E74(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache;
  *&a3[v5] = [objc_allocWithZone(NSCache) init];
  v6 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_stackViewModelCache;
  *&a3[v6] = [objc_allocWithZone(NSCache) init];
  *&a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_trainerCache] = &_swiftEmptyDictionarySingleton;
  *&a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_playlists] = &_swiftEmptySetSingleton;
  sub_100140278(&unk_1008F5030, &unk_1006FDC48);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient]);
  sub_100140278(&unk_1008F13B0, &qword_1006EE0B0);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_artworkImageLoader]);
  sub_100140278(&unk_1008F4FE0, &unk_1006FDC20);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_bookmarkClient]);
  sub_100140278(&qword_1008ED278, &unk_1006F08A0);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient]);
  sub_100140278(&unk_1008F5040, &qword_1006FDC58);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_configurationClient]);
  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();
  *&a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_eventHub] = v12[0];
  sub_100140278(&qword_1008F5530, &unk_1006FDC60);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_mediaTagStringBuilder]);
  sub_100140278(&qword_1008F5050, &qword_1006F08B8);
  Dependencies.resolve<A>(failureHandler:)();
  sub_100006260(v12, &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_recommendationClient]);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  v7 = &a3[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_unitPreferencesProvider];
  v8 = sub_100006278();
  *v7 = a2;
  *(v7 + 1) = v8;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for SeymourCatalogItemDataProvider();
  v9 = objc_msgSendSuper2(&v11, "init");
  sub_1000062E0();
  swift_getObjectType();
  type metadata accessor for PlaylistsUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  swift_unknownObjectRelease();

  sub_100005A40(v12);

  return v9;
}

uint64_t sub_100006260(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100006278()
{
  result = qword_1008F4FF0;
  if (!qword_1008F4FF0)
  {
    sub_1000059F8(255, &unk_1008F4FF8, FIUIUnitManager_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F4FF0);
  }

  return result;
}

uint64_t sub_1000062E0()
{
  v1 = sub_100140278(&unk_1008F4F80, &unk_1006F0750);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100140278(&qword_1008ED020, &unk_1006FDBA0);
  v9 = *(v8 - 8);
  v21 = v8;
  v22 = v9;
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_bookmarkClient), *(v0 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_bookmarkClient + 24));
  dispatch thunk of BookmarkClientProtocol.queryAllPlaylists()();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10042B500;
  *(v13 + 24) = v12;
  (*(v2 + 16))(v4, v7, v1);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  (*(v2 + 32))(v15 + v14, v4, v1);
  v16 = (v15 + ((v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_10042B51C;
  v16[1] = v13;
  sub_100140278(&unk_1008E4DC0, &qword_1006D44A0);
  Promise.init(asyncOperation:)();
  (*(v2 + 8))(v7, v1);
  v17 = v21;
  v18 = Promise.operation.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v18(sub_100173F20, v19);

  return (*(v22 + 8))(v11, v17);
}

uint64_t sub_10000661C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006654()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000066AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000066F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  sub_100140278(a6, a7);
  v13 = Promise.operation.getter();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a1;
  v14[5] = a2;

  v13(a9, v14);
}

uint64_t sub_1000067B0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100140278(&unk_1008F4F80, &unk_1006F0750) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000066F0(a1, a2, v2 + v6, *v7, v7[1], &unk_1008F4F80, &unk_1006F0750, &unk_100858BA8, sub_1004292A8);
}

uint64_t sub_1000068C8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100140278(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 16, v5 | 7);
}

uint64_t sub_100006964()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000069A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000069F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006B94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006C94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006CF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006D94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006DF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006E94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006ED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006F94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100006FF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007014(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007044(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007054(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007064(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007074(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007084(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000070F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007134(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000071F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007204(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007214(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000073B8(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008F24A8, &unk_1006F8D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000754C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000758C(uint64_t a1)
{
  result = type metadata accessor for SeymourAvailabilityManager.State(319);
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

uint64_t sub_100007660(uint64_t a1)
{
  v1 = type metadata accessor for ContentAvailability();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

char *sub_1000076B8()
{
  v0 = type metadata accessor for EventDispatchStrategy();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for EventDispatchStrategy.async(_:), v0);
  v10[3] = type metadata accessor for DispatchTimerProvider();
  v10[4] = &protocol witness table for DispatchTimerProvider;
  sub_100005994(v10);
  DispatchTimerProvider.init()();
  type metadata accessor for EventHub();
  swift_allocObject();
  v4 = EventHub.init(queue:dispatchStrategy:timerProvider:)();
  type metadata accessor for ContentAvailabilityClient();

  static OS_dispatch_queue.main.getter();
  v5 = ContentAvailabilityClient.__allocating_init(eventHub:queue:)();
  swift_getObjectType();
  v6 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityManager(0));
  v7 = sub_100007918(v5, v4, v6);
  swift_deallocPartialClassInstance();
  return v7;
}

unint64_t sub_1000078CC()
{
  result = qword_1008E3FD0;
  if (!qword_1008E3FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E3FD0);
  }

  return result;
}

char *sub_100007918(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for SeymourAvailabilityManager.State(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = type metadata accessor for ContentAvailabilityClient();
  v25[4] = &protocol witness table for ContentAvailabilityClient;
  v25[0] = a1;
  v9 = OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_state;
  v10 = type metadata accessor for ContentAvailability();
  v11 = *(v10 - 8);
  v22 = *(v11 + 56);
  v22(&a3[v9], 1, 1, v10);
  sub_100007C5C(v25, &a3[OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_contentAvailabilityClient]);
  v12 = &a3[OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_eventHub];
  *v12 = a2;
  *(v12 + 1) = &protocol witness table for EventHub;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_retain_n();
  *&a3[OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 BOOLForKey:v14];

  v16 = 1;
  if (v15)
  {
    (*(v11 + 104))(v8, enum case for ContentAvailability.available(_:), v10);
    v16 = 0;
  }

  v22(v8, v16, 1, v10);
  swift_beginAccess();
  sub_100007CC0(v8, &a3[v9]);
  swift_endAccess();
  v17 = type metadata accessor for SeymourAvailabilityManager(0);
  v24.receiver = a3;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, "init");
  type metadata accessor for ContentAvailabilityUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for EventHub();
  v19 = v18;

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  sub_100005A40(v23);
  sub_100007D24();

  sub_100005A40(v25);
  return v19;
}

uint64_t sub_100007C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeymourAvailabilityManager.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007D24()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DFD10, &unk_1006DB440);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.default.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating availability", v12, 2u);
  }

  (*(v7 + 8))(v9, v6);
  sub_1000066AC((v1 + OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_contentAvailabilityClient), *(v1 + OBJC_IVAR____TtC10FitnessApp26SeymourAvailabilityManager_contentAvailabilityClient + 24));
  dispatch thunk of ContentAvailabilityClientProtocol.queryContentAvailability()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = Promise.operation.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001C8704;
  *(v15 + 24) = v13;

  v14(sub_1001C870C, v15);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100007FD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000800C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

NSString sub_1000080A8()
{
  result = String._bridgeToObjectiveC()();
  qword_1009251D8 = result;
  return result;
}

id sub_1000080F0(void *a1)
{
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery] = 0;
  v3 = OBJC_IVAR___CHOnboardingCoordinator_queryLock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *&v1[v3] = UnfairLock.init()();
  *&v1[OBJC_IVAR___CHOnboardingCoordinator_notifyTokens] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___CHOnboardingCoordinator_healthStore] = a1;
  v4 = a1;
  v5 = sub_100008488();
  v6 = &v1[OBJC_IVAR___CHOnboardingCoordinator_criteria];
  *v6 = v5 & 1;
  v7 = vdupq_n_s64(v5);
  *v7.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v7, xmmword_1006FF780), vshlq_u64(v7, xmmword_1006FF770))), 0x1000100010001);
  *(v6 + 1) = vuzp1_s8(*v7.i8, *v7.i8).u32[0];
  v6[5] = BYTE5(v5) & 1;
  v6[6] = BYTE6(v5) & 1;
  v36.receiver = v1;
  v36.super_class = type metadata accessor for OnboardingCoordinator();
  v8 = objc_msgSendSuper2(&v36, "init");
  v9 = static os_log_type_t.default.getter();
  v10 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v9))
  {
    v11 = v8;
    log = v10;
    v12 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_10000AFDC(v13, v14, &v35);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = &v11[OBJC_IVAR___CHOnboardingCoordinator_criteria];
    v17 = 0x1000000000000;
    if (!v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 6])
    {
      v17 = 0;
    }

    v18 = 0x10000000000;
    if (!v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 5])
    {
      v18 = 0;
    }

    v19 = &_mh_execute_header;
    if (!v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 4])
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 3])
    {
      v20 = 0;
    }

    v21 = 0x10000;
    if (!v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 2])
    {
      v21 = 0;
    }

    if (v11[OBJC_IVAR___CHOnboardingCoordinator_criteria + 1])
    {
      v22 = 256;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_10000F520(v22 | *v16 | v21 | v20 | v19 | v18 | v17);
    v25 = sub_10000AFDC(v23, v24, &v35);

    *(v12 + 14) = v25;
    *(v12 + 22) = 2048;
    v26 = 0x1000000000000;
    if (!v16[6])
    {
      v26 = 0;
    }

    v27 = 0x10000000000;
    if (!v16[5])
    {
      v27 = 0;
    }

    v28 = &_mh_execute_header;
    if (!v16[4])
    {
      v28 = 0;
    }

    v29 = 0x1000000;
    if (!v16[3])
    {
      v29 = 0;
    }

    v30 = 0x10000;
    if (!v16[2])
    {
      v30 = 0;
    }

    if (v16[1])
    {
      v31 = 256;
    }

    else
    {
      v31 = 0;
    }

    v32 = sub_100008D00(v31 | *v16 | v30 | v29 | v28 | v27 | v26);

    *(v12 + 24) = v32;
    _os_log_impl(&_mh_execute_header, log, v9, "%s initial criteria: %s phase %ld", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100009004();
  sub_100009584();

  return v8;
}

unint64_t sub_100008488()
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  if (*(&v39 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1000088B0();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v17 = v40[0];
      LODWORD(v18) = BYTE1(v40[0]);
      LODWORD(v19) = BYTE2(v40[0]);
      LODWORD(v20) = BYTE3(v40[0]);
      LODWORD(v21) = BYTE4(v40[0]);
      LODWORD(v22) = BYTE5(v40[0]);
      LODWORD(v23) = BYTE6(v40[0]);
      v24 = [v0 standardUserDefaults];
      v25 = String._bridgeToObjectiveC()();
      v35 = [v24 hk_keyExists:v25];

      if (v35)
      {
        sub_10000AF88(v36, v37);
      }

      else
      {
        v26 = [v0 standardUserDefaults];
        v27 = 0x1000000000000;
        if (!BYTE6(v40[0]))
        {
          v27 = 0;
        }

        v28 = 0x10000000000;
        if (!BYTE5(v40[0]))
        {
          v28 = 0;
        }

        v29 = &_mh_execute_header;
        if (!BYTE4(v40[0]))
        {
          v29 = 0;
        }

        v30 = 0x1000000;
        if (!BYTE3(v40[0]))
        {
          v30 = 0;
        }

        v31 = 0x10000;
        if (!BYTE2(v40[0]))
        {
          v31 = 0;
        }

        v32 = 256;
        if (!BYTE1(v40[0]))
        {
          v32 = 0;
        }

        v33 = sub_100008D00(v32 | LOBYTE(v40[0]) | v31 | v30 | v29 | v28 | v27) == 5;
        v34 = String._bridgeToObjectiveC()();
        [v26 setBool:v33 forKey:v34];
        sub_10000AF88(v36, v37);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_1001B3EEC(v40);
  }

  v4 = [v0 standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 hk_keyExists:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v0 standardUserDefaults];
    v8 = String._bridgeToObjectiveC()();
    [v7 setBool:0 forKey:v8];
  }

  v9 = sub_1005F9D6C();

  v18 = (v9 >> 8) & 1;
  v19 = (v9 >> 16) & 1;
  v20 = (v9 >> 24) & 1;
  v21 = HIDWORD(v9) & 1;
  v22 = (v9 >> 40) & 1;
  v17 = v9;
  v23 = HIWORD(v9) & 1;
LABEL_11:
  v10 = 0x1000000000000;
  if (!v23)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (!v22)
  {
    v11 = 0;
  }

  v12 = &_mh_execute_header;
  if (!v21)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!v20)
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if (!v19)
  {
    v14 = 0;
  }

  v15 = 256;
  if (!v18)
  {
    v15 = 0;
  }

  return v15 & 0xFFFFFFFFFFFFFFFELL | v17 & 1 | v14 | v13 | v12 | v11 | v10;
}

unint64_t sub_1000088B0()
{
  result = qword_1008F5968;
  if (!qword_1008F5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5968);
  }

  return result;
}

unint64_t sub_100008904(void *a1)
{
  v3 = sub_100140278(&qword_1008F5930, &qword_1006FF860);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v7 = objc_opt_self();
  [v7 isRunningInStoreDemoMode];
  v8 = [v7 sharedApplication];
  [v8 launchedToTest];

  sub_1000066AC(a1, a1[3]);
  sub_100008C88();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005A40(a1);
  }

  v29 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 4;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 5;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 6;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100005A40(a1);
  if (v19)
  {
    v13 = 0x1000000000000;
  }

  else
  {
    v13 = 0;
  }

  if (v20)
  {
    v14 = 0x10000000000;
  }

  else
  {
    v14 = 0;
  }

  if (v21)
  {
    v15 = &_mh_execute_header;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0x1000000;
  if ((v22 & 1) == 0)
  {
    v16 = 0;
  }

  v17 = 0x10000;
  if ((v11 & 1) == 0)
  {
    v17 = 0;
  }

  v18 = 256;
  if ((v10 & 1) == 0)
  {
    v18 = 0;
  }

  return v18 & 0xFFFFFFFFFFFFFFFELL | v9 & 1 | v17 | v16 | v15 | v14 | v13;
}

int8x8_t sub_100008C00@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100008904(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    v6 = vdupq_n_s64(v4);
    *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_1006FF780), vshlq_u64(v6, xmmword_1006FF770))), 0x1000100010001);
    result = vuzp1_s8(*v6.i8, *v6.i8);
    *(a2 + 1) = result.i32[0];
    *(a2 + 5) = BYTE5(v4) & 1;
    *(a2 + 6) = BYTE6(v4) & 1;
  }

  return result;
}

unint64_t sub_100008C88()
{
  result = qword_1008F5938;
  if (!qword_1008F5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5938);
  }

  return result;
}

uint64_t sub_100008D00(uint64_t a1)
{
  if ((a1 & 0x1010000000000) != 0)
  {
    return 5;
  }

  if ((a1 & 0x100) != 0 || (a1 & 0x1010000) == 0x1010000)
  {
    if (a1)
    {
      if ((a1 & 0x100000000) != 0)
      {
LABEL_24:
        v11 = [objc_opt_self() standardUserDefaults];
        if (qword_1008DAEF8 != -1)
        {
          swift_once();
        }

        v12 = String._bridgeToObjectiveC()();
        v13 = [v11 BOOLForKey:v12];

        if (v13)
        {
          return 5;
        }

        else
        {
          return 4;
        }
      }

      v4 = 1;
      goto LABEL_17;
    }

    if ((a1 & 0x100000000) != 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    v4 = 0;
LABEL_17:
    v7 = [objc_opt_self() standardUserDefaults];
    if (qword_1008DAEF8 != -1)
    {
      swift_once();
    }

    v8 = String._bridgeToObjectiveC()();
    [v7 setBool:1 forKey:v8];

    return v4;
  }

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result isStandalonePhoneFitnessMode];

  if (a1)
  {
    if ((a1 & 0x100000000) != 0)
    {
      if (!v4)
      {
        v5 = [objc_opt_self() standardUserDefaults];
        if (qword_1008DAEF8 != -1)
        {
          swift_once();
        }

        v6 = String._bridgeToObjectiveC()();
        [v5 setBool:1 forKey:v6];

        return 3;
      }

      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((a1 & 0x100000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_1008DAEF8 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:1 forKey:v10];

  return 2;
}

void sub_100009078(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, &aBlock);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s starting Activity goal query", v6, 0xCu);
    sub_100005A40(v7);
  }

  sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [ObjCClassFromMetadata calorieGoal];
  if (!v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 queryDescriptorWithSampleType:v13];

  v16 = [ObjCClassFromMetadata moveMinuteGoal];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v17 = v16;
  v18 = [v14 queryDescriptorWithSampleType:v16];

  v19 = [ObjCClassFromMetadata exerciseGoal];
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = v19;
  v21 = [v14 queryDescriptorWithSampleType:v19];

  v22 = [ObjCClassFromMetadata standGoal];
  if (v22)
  {
    v23 = v22;
    v24 = [v14 queryDescriptorWithSampleType:v22];

    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006D5300;
    *(v25 + 32) = v15;
    *(v25 + 40) = v18;
    *(v25 + 48) = v21;
    *(v25 + 56) = v24;
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = objc_allocWithZone(HKAnchoredObjectQuery);
    sub_1000059F8(0, &qword_1008F5948, HKQueryDescriptor_ptr);
    v37 = v15;
    v36 = v18;
    v35 = v21;
    v28 = v24;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = sub_100009934;
    v43 = v26;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10000F8E0;
    v41 = &unk_100864100;
    v30 = _Block_copy(&aBlock);
    v31 = [v27 initWithQueryDescriptors:isa anchor:0 limit:0 resultsHandler:v30];

    _Block_release(v30);

    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_1005FA2A0;
    v43 = v32;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10000F8E0;
    v41 = &unk_100864128;
    v33 = _Block_copy(&aBlock);

    sub_10000B210(sub_1005FA2A0, v32);

    [v31 setUpdateHandler:v33];
    _Block_release(v33);

    [*(a1 + OBJC_IVAR___CHOnboardingCoordinator_healthStore) executeQuery:v31];

    v34 = *(a1 + OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery);
    *(a1 + OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery) = v31;

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100009584()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  out_token = -1;
  v3 = HKStandalonePhoneFitnessModeDidUpdateNotification;
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  aBlock[4] = sub_1005FA2C0;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100629B20;
  aBlock[3] = &unk_100864178;
  v7 = _Block_copy(aBlock);

  LODWORD(v3) = notify_register_dispatch(v3, &out_token, v4, v7);
  _Block_release(v7);

  if (v3 || (v16 = out_token, out_token == -1))
  {
    v8 = static os_log_type_t.error.getter();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock[0] = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_10000AFDC(v13, v14, aBlock);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v10, v8, "%s failed to register for HKStandalonePhoneFitnessModeDidUpdateNotification notification", v11, 0xCu);
      sub_100005A40(v12);
    }
  }

  else
  {
    sub_100140278(&qword_1008F5960, &unk_1006FF878);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1006D46C0;
    *(v17 + 32) = v16;
    *(v1 + OBJC_IVAR___CHOnboardingCoordinator_notifyTokens) = v17;
  }
}

uint64_t sub_100009828()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009860()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000098BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100009954(a2, a5, a7 & 1);
  }
}

void sub_100009954(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  swift_getObjectType();
  if (a2)
  {
    v8 = static os_log_type_t.error.getter();
    v9 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v8))
    {
      v10 = v9;
      v11 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_10000AFDC(v12, v13, &v145);

      *(v11 + 4) = v14;
      *(v11 + 12) = 2080;
      swift_getErrorValue();
      *&v148 = Error.localizedDescription.getter();
      *(&v148 + 1) = v15;
      sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
      v16 = Optional.description.getter();
      v18 = v17;

      v19 = sub_10000AFDC(v16, v18, &v145);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v8, "%s failed to fetch Activity goals: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  if (!a1)
  {
    return;
  }

  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  while (1)
  {
LABEL_8:
    v141 = v20;
    v130 = v5;
    v132 = v4;
    v4 = String._bridgeToObjectiveC()();
    HKNSOperatingSystemVersionFromString();
    v137 = *(&v148 + 1);
    v139 = v148;
    v22 = v149;

    v23 = _swiftEmptyArrayStorage;
    *&v148 = _swiftEmptyArrayStorage;
    v143 = v21;
    if (v21)
    {
      v24 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *(v141 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(a1 + 8 * v24 + 32);
        }

        v4 = v25;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v5 = [v25 sampleType];
        v20 = sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
        v27 = [swift_getObjCClassFromMetadata() calorieGoal];
        v28 = v27;
        if (v5)
        {
          if (v27)
          {
            v20 = static NSObject.== infix(_:_:)();

            if (v20)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }
        }

        else
        {
          if (!v27)
          {
LABEL_23:
            v20 = &v148;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v5 = *(v148 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            goto LABEL_12;
          }
        }

LABEL_12:
        ++v24;
        if (v26 == v143)
        {
          v20 = v148;
          if ((v148 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_45;
        }
      }
    }

    v20 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_28:
    if ((v20 & 0x4000000000000000) == 0)
    {
      v134 = *(v20 + 16);
      if (!v134)
      {
        break;
      }

      goto LABEL_30;
    }

LABEL_45:
    v134 = _CocoaArrayWrapper.endIndex.getter();
    if (!v134)
    {
      break;
    }

LABEL_30:
    v4 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v20 + 16))
        {
          goto LABEL_42;
        }

        v29 = *(v20 + 8 * v4 + 32);
      }

      v5 = v29;
      v30 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v31 = [v29 sourceRevision];
      [v31 operatingSystemVersion];
      v32 = v149;
      v135 = v148;

      v148 = v135;
      v149 = v32;
      v145 = v139;
      v146 = v137;
      v147 = v22;
      v33 = HKNSOperatingSystemVersionCompare();

      v34 = v33 == -1;
      if (v33 != -1)
      {
        ++v4;
        if (v30 != v134)
        {
          continue;
        }
      }

      goto LABEL_47;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (!v21)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
LABEL_47:
  v131 = v34;

  *&v148 = _swiftEmptyArrayStorage;
  if (v143)
  {
    v35 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *(v141 + 16))
        {
          goto LABEL_79;
        }

        v36 = *(a1 + 8 * v35 + 32);
      }

      v37 = v36;
      v23 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v38 = [v36 sampleType];
      sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
      v39 = [swift_getObjCClassFromMetadata() moveMinuteGoal];
      v40 = v39;
      if (v38)
      {
        if (v39)
        {
          v41 = static NSObject.== infix(_:_:)();

          if (v41)
          {
            goto LABEL_62;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v39)
        {
LABEL_62:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_51;
        }
      }

LABEL_51:
      ++v35;
      if (v23 == v143)
      {
        v23 = v148;
        break;
      }
    }
  }

  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
    goto LABEL_82;
  }

  v42 = *(v23 + 16);
  for (i = v42; v42; i = v42)
  {
    v43 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *(v23 + 16))
        {
          goto LABEL_81;
        }

        v44 = *(v23 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v47 = [v44 sourceRevision];
      [v47 operatingSystemVersion];
      v48 = v149;
      v136 = v148;

      v148 = v136;
      v149 = v48;
      v145 = v139;
      v146 = v137;
      v147 = v22;
      v49 = HKNSOperatingSystemVersionCompare();

      v50 = v49 == -1;
      if (v49 == -1)
      {
        v42 = i;
        goto LABEL_84;
      }

      ++v43;
      v42 = i;
      if (v46 == i)
      {
        goto LABEL_84;
      }
    }

LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  v50 = 0;
LABEL_84:

  if (!v143)
  {
    v138 = 0;
    v60 = 0;
    v61 = v132;
LABEL_121:
    v71 = (v61 + OBJC_IVAR___CHOnboardingCoordinator_criteria);
    v72 = *(v61 + OBJC_IVAR___CHOnboardingCoordinator_criteria);
    v73 = *(v61 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1);
    v74 = 0x1000000000000;
    if (!v71[6])
    {
      v74 = 0;
    }

    v75 = 0x10000000000;
    if (!v71[5])
    {
      v75 = 0;
    }

    v76 = &_mh_execute_header;
    if (!v71[4])
    {
      v76 = 0;
    }

    v77 = 0x1000000;
    if (!v71[3])
    {
      v77 = 0;
    }

    v78 = 0x10000;
    if (!v71[2])
    {
      v78 = 0;
    }

    v79 = v73 == 0;
    v80 = 256;
    if (v79)
    {
      v80 = 0;
    }

    v144 = sub_100008D00(v80 | v72 | v78 | v77 | v76 | v75 | v74);
    v81 = v42 | v134;
    v82 = (v42 | v134) != 0;
    v83 = objc_opt_self();
    LODWORD(v42) = [v83 isRunningInStoreDemoMode];
    v87 = [v83 sharedApplication];
    LODWORD(v84) = [v87 launchedToTest];

    v85 = [objc_opt_self() standardUserDefaults];
    v86 = String._bridgeToObjectiveC()();
    LODWORD(v87) = [v85 BOOLForKey:v86];

    v142 = v60;
    if (v130)
    {
      LOBYTE(v88) = v60;
      v89 = v60;
      v90 = v138;
      LOBYTE(v91) = v138;
      LOBYTE(v92) = v82;
      v93 = v138;
      LODWORD(v94) = v131 || v50;
    }

    else
    {
      v95 = &_mh_execute_header;
      if (v71[4])
      {
        v96 = &_mh_execute_header;
      }

      else
      {
        LODWORD(v96) = 0;
      }

      v97 = 0x1000000;
      if (v71[3])
      {
        v98 = 0x1000000;
      }

      else
      {
        v98 = 0;
      }

      v99 = 0x10000;
      if (v71[2])
      {
        v100 = 0x10000;
      }

      else
      {
        v100 = 0;
      }

      v101 = 256;
      if (v71[1])
      {
        v102 = 256;
      }

      else
      {
        v102 = 0;
      }

      if (!v87)
      {
        LODWORD(v95) = 0;
      }

      if (!v60)
      {
        v97 = 0;
      }

      v90 = v138;
      if (!v138)
      {
        v99 = 0;
      }

      if (!v131 && !v50)
      {
        v101 = 0;
      }

      v103 = v102 | *v71 | v100 | v98;
      if (v81)
      {
        ++v101;
      }

      v92 = sub_1005F9EE4(v103 | v96, v101 | v99 | v97 | v95);
      v94 = (v92 >> 8) & 1;
      v91 = (v92 >> 16) & 1;
      v88 = (v92 >> 24) & 1;
      v87 = (HIDWORD(v92) & 1);
      v42 = (v92 >> 40) & 1;
      v84 = HIWORD(v92) & 1;
      v82 = v92 & 1;
      v93 = v91;
      v89 = v88;
    }

    *v71 = v82;
    v71[1] = v94;
    v71[2] = v91;
    v71[3] = v88;
    v71[4] = v87;
    v71[5] = v42;
    v71[6] = v84;
    if (v84)
    {
      v104 = 0x1000000000000;
    }

    else
    {
      v104 = 0;
    }

    if (v42)
    {
      v105 = 0x10000000000;
    }

    else
    {
      v105 = 0;
    }

    if (v87)
    {
      v106 = &_mh_execute_header;
    }

    else
    {
      v106 = 0;
    }

    v79 = v89 == 0;
    v107 = 0x1000000;
    if (v79)
    {
      v107 = 0;
    }

    v79 = v93 == 0;
    v108 = 0x10000;
    if (v79)
    {
      v108 = 0;
    }

    if (v94)
    {
      v109 = 256;
    }

    else
    {
      v109 = 0;
    }

    v110 = sub_100008D00(v109 & 0xFFFFFFFFFFFFFFFELL | v92 & 1 | v108 | v107 | v105 | v106 | v104);
    v111 = static os_log_type_t.default.getter();
    v112 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v113 = swift_allocObject();
    v114 = v113;
    *(v113 + 16) = xmmword_1006D4140;
    *(v113 + 56) = &type metadata for Bool;
    *(v113 + 64) = &protocol witness table for Bool;
    *(v113 + 32) = v134 != 0;
    *(v113 + 96) = &type metadata for Bool;
    *(v113 + 104) = &protocol witness table for Bool;
    *(v113 + 72) = v131;
    *(v113 + 136) = &type metadata for Bool;
    *(v113 + 144) = &protocol witness table for Bool;
    *(v113 + 112) = i != 0;
    *(v113 + 176) = &type metadata for Bool;
    *(v113 + 184) = &protocol witness table for Bool;
    *(v113 + 152) = v50;
    *(v113 + 216) = &type metadata for Bool;
    *(v113 + 224) = &protocol witness table for Bool;
    *(v113 + 192) = v90;
    v115 = *v71;
    v116 = 0x1000000000000;
    if (!v71[6])
    {
      v116 = 0;
    }

    v117 = 0x10000000000;
    if (!v71[5])
    {
      v117 = 0;
    }

    v118 = &_mh_execute_header;
    if (!v71[4])
    {
      v118 = 0;
    }

    v119 = 0x1000000;
    if (!v71[3])
    {
      v119 = 0;
    }

    v120 = 0x10000;
    if (!v71[2])
    {
      v120 = 0;
    }

    if (v71[1])
    {
      v121 = 256;
    }

    else
    {
      v121 = 0;
    }

    *(v113 + 256) = &type metadata for Bool;
    *(v113 + 264) = &protocol witness table for Bool;
    v122 = v121 | v115 | v120 | v119;
    v123 = v118 | v117 | v116;
    *(v113 + 232) = v142;
    v124 = v112;
    v125 = sub_10000F520(v122 | v123);
    v127 = v126;
    v114[37] = &type metadata for String;
    v128 = sub_10000A788();
    v114[34] = v125;
    v114[35] = v127;
    v114[42] = &type metadata for Int;
    v114[43] = &protocol witness table for Int;
    v114[38] = v128;
    v114[39] = v110;
    os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v124, "OnboardingCoordinator fetched calorie %d preKincaidCalorie %d moveMinute %d preKincaidMoveMinute %d exercise %d stand %d criteria %@ phase %d", 141, 2, v114);

    Strong = sub_10000B2DC();
    if (v110 != v144)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong onboardingCoordinatorPhaseDidChangeTo:v110];
        Strong = swift_unknownObjectRelease();
      }
    }

    if (v110 == 5)
    {
      __chkstk_darwin(Strong);
      UnfairLock.acquire<A>(_:)();
    }

    return;
  }

  v51 = 0;
  v140 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v140)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v51 >= *(v141 + 16))
      {
        goto LABEL_197;
      }

      v52 = *(a1 + 8 * v51 + 32);
    }

    v53 = v52;
    v54 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    v55 = [v52 sampleType];
    sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v57 = [ObjCClassFromMetadata exerciseGoal];
    v58 = v57;
    if (v55)
    {
      if (v57)
      {
        v59 = static NSObject.== infix(_:_:)();

        if (v59)
        {
          goto LABEL_102;
        }

        goto LABEL_88;
      }

      v58 = v55;
    }

    else if (!v57)
    {

LABEL_102:
      v62 = 1;
LABEL_103:
      v63 = 0;
      v138 = v62;
      while (2)
      {
        if (v140)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v63 >= *(v141 + 16))
          {
            goto LABEL_199;
          }

          v64 = *(a1 + 8 * v63 + 32);
        }

        v65 = v64;
        v66 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_198;
        }

        v67 = [v64 sampleType];
        v68 = [ObjCClassFromMetadata standGoal];
        v69 = v68;
        if (v67)
        {
          if (v68)
          {
            v70 = static NSObject.== infix(_:_:)();

            if (v70)
            {
              goto LABEL_119;
            }

LABEL_106:
            ++v63;
            if (v66 == v143)
            {
              v60 = 0;
              goto LABEL_120;
            }

            continue;
          }

          v69 = v67;
        }

        else if (!v68)
        {

LABEL_119:
          v60 = 1;
LABEL_120:
          v61 = v132;
          v42 = i;
          goto LABEL_121;
        }

        break;
      }

      goto LABEL_106;
    }

LABEL_88:
    ++v51;
    if (v54 == v143)
    {
      v62 = 0;
      goto LABEL_103;
    }
  }

  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
}

unint64_t sub_10000A788()
{
  result = qword_1008E3FE0;
  if (!qword_1008E3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E3FE0);
  }

  return result;
}

unint64_t sub_10000A7DC()
{
  result = qword_1008F5958;
  if (!qword_1008F5958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5958);
  }

  return result;
}

unint64_t sub_10000ADC8()
{
  result = qword_1008F5978;
  if (!qword_1008F5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5978);
  }

  return result;
}

unint64_t sub_10000AE20()
{
  result = qword_1008F5980;
  if (!qword_1008F5980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5980);
  }

  return result;
}

unint64_t sub_10000AE80()
{
  v1 = *v0;
  v2 = 0x4765766F4D736168;
  v3 = 0x6F4D6F6D65447369;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x646E617453736168;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x6372657845736168;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000AF88(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_10000AFDC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B0A8(v11, 0, 0, 1, a1, a2);
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
    sub_10000B1B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005A40(v11);
  return v7;
}

unint64_t sub_10000B0A8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10007CA50(a5, a6);
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

uint64_t sub_10000B1B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B210(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000B2DC()
{
  swift_getObjectType();
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v1 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1);
  v2 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 2);
  v3 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 3);
  v4 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 4);
  v5 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 5);
  v6 = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 6);
  LOBYTE(v14) = *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria);
  BYTE1(v14) = v1;
  BYTE2(v14) = v2;
  BYTE3(v14) = v3;
  BYTE4(v14) = v4;
  BYTE5(v14) = v5;
  BYTE6(v14) = v6;
  sub_10000A7DC();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;
  v10 = [objc_opt_self() standardUserDefaults];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = String._bridgeToObjectiveC()();
  [v10 setObject:isa forKey:v12];

  sub_10000AF88(v7, v9);
}

_DWORD *initializeBufferWithCopyOfBuffer for OnboardingCoordinator.Criteria(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

void sub_10000B548(uint64_t a1, uint64_t a2)
{
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = _typeName(_:qualified:)();
    v10 = sub_10000AFDC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v5, v3, "%s stopping Activity goal query", v6, 0xCu);
    sub_100005A40(v7);
  }

  v11 = OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery;
  if (*(a1 + OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery))
  {
    [*(a1 + OBJC_IVAR___CHOnboardingCoordinator_healthStore) stopQuery:?];
    v12 = *(a1 + v11);
    *(a1 + v11) = 0;
  }
}

void sub_10000B6F8()
{
  v0 = type metadata accessor for ForegroundProvider();
  swift_allocObject();
  v1 = ForegroundProvider.init()();
  v10 = v0;
  v11 = sub_10000B7C8();
  v9 = v1;
  v2 = objc_allocWithZone(type metadata accessor for LocationProvider());
  v3 = LocationProvider.init(foregroundProvider:)();
  v4 = type metadata accessor for LocationProviderBridge();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___CHLocationProvider_bridgedValue] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v8, "init");

  qword_100925228 = v7;
}

unint64_t sub_10000B7C8()
{
  result = qword_1008E1048;
  if (!qword_1008E1048)
  {
    type metadata accessor for ForegroundProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1048);
  }

  return result;
}

uint64_t type metadata accessor for FitnessAppContext(uint64_t a1)
{
  result = qword_1008F4F60;
  if (!qword_1008F4F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000BF54(uint64_t a1)
{
  result = type metadata accessor for CompletedWorkoutShareItemProvider();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActivitySharingSettings();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

char *sub_10000C10C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for ActivitySharingSettings();
  v59 = *(v12 - 8);
  v60 = v12;
  __chkstk_darwin(v12);
  v58 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CompletedWorkoutShareItemProvider();
  v63 = *(v14 - 1);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___CHFitnessAppContext_playlists] = &_swiftEmptySetSingleton;
  *&v6[OBJC_IVAR___CHFitnessAppContext_seymourAvailabilityManager] = a2;
  type metadata accessor for Dependencies();
  v68 = sub_1000059F8(0, &unk_1008F2050, _HKWheelchairUseCharacteristicCache_ptr);
  v69 = &protocol witness table for _HKWheelchairUseCharacteristicCache;
  *&v67 = a3;
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v57 = a2;
  v16 = a3;
  v17 = static OS_dispatch_queue.main.getter();
  v18 = static Dependencies.browsing(wheelchairStatus:queue:)();

  sub_100005A40(&v67);
  v19 = OBJC_IVAR___CHFitnessAppContext_dependencies;
  *&v6[OBJC_IVAR___CHFitnessAppContext_dependencies] = v18;
  type metadata accessor for FitnessSettingsProvider();
  v20 = swift_allocObject();
  *(v20 + 64) = 0;
  v21 = v16;

  v22 = a1;
  v23 = a4;
  v24 = a5;
  sub_100140278(&qword_1008E4F20, &unk_1006F1470);
  Dependencies.resolve<A>(failureHandler:)();
  *(v20 + 16) = v67;
  *(v20 + 32) = v22;
  *(v20 + 40) = v23;
  *(v20 + 48) = v21;
  *(v20 + 56) = v24;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  sub_10000CCF8();
  [v25 addObserver:v20];

  v61 = v25;
  v29 = v27;

  v30 = sub_10000CEB8(&unk_1008F4FC8, type metadata accessor for FitnessSettingsProvider, &unk_1006DFED0);
  v31 = &v6[OBJC_IVAR___CHFitnessAppContext_accountFitnessSettingsProvider];
  *v31 = v20;
  v31[1] = v30;

  sub_100140278(&unk_1008F2070, qword_1006F88D0);
  Dependencies.resolve<A>(failureHandler:)();

  *&v6[OBJC_IVAR___CHFitnessAppContext_amsBag] = v67;

  sub_100140278(&qword_1008F4FD8, &qword_1006FDC18);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_siriUserActivityHandler]);

  sub_100140278(&unk_1008F4FE0, &unk_1006FDC20);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_bookmarkClient]);

  sub_100140278(&qword_1008ED278, &unk_1006F08A0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_catalogClient]);

  result = [v27 unitManager];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_100006278();
  v33 = v62;
  CompletedWorkoutShareItemProvider.init(dependencies:unitPreferencesProvider:)();
  v63[4](&v6[OBJC_IVAR___CHFitnessAppContext_completedWorkoutItemProvider], v33, v64);
  type metadata accessor for EngagementAppBadgeProvider();
  v34 = swift_allocObject();

  sub_100140278(&qword_1008F2060, &qword_1006FDC30);
  Dependencies.resolve<A>(failureHandler:)();

  *&v6[OBJC_IVAR___CHFitnessAppContext_engagementAppBadgeProvider] = v34;

  Dependencies.resolve<A>(failureHandler:)();

  *&v6[OBJC_IVAR___CHFitnessAppContext_eventHub] = v67;

  sub_100140278(&qword_1008F5008, &qword_1006FDC38);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_metricClient]);
  v35 = *&v6[v19];

  result = [v29 unitManager];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v36 = result;
  v64 = v29;
  v37 = objc_allocWithZone(type metadata accessor for SeymourCatalogItemDataProvider());
  *&v6[OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider] = sub_100005E74(v35, v36, v37);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v6[OBJC_IVAR___CHFitnessAppContext_subscriptionToken] = SubscriptionToken.init(eventHub:)();
  type metadata accessor for SeymourBrowsingCoordinator();
  swift_allocObject();

  v39 = sub_10000CF48(v38);
  v40 = OBJC_IVAR___CHFitnessAppContext_browsingCoordinator;
  *&v6[OBJC_IVAR___CHFitnessAppContext_browsingCoordinator] = v39;
  v41 = qword_1008DAF58;

  if (v41 != -1)
  {
    swift_once();
  }

  sub_1002240F0(qword_100926148);

  v42 = *&v6[v40];
  swift_retain_n();
  v43 = v57;
  v63 = v57;

  v45 = sub_1005D5520(v44, v42, v42, v43);

  *&v6[OBJC_IVAR___CHFitnessAppContext_navigator] = v45;

  sub_100140278(&unk_1008F5010, &unk_1006F88B0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_contentAvailabilityClient]);

  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_engagementClient]);

  sub_100140278(&qword_1008F2068, &unk_1006F88C0);
  Dependencies.resolve<A>(failureHandler:)();

  sub_100006260(&v67, &v6[OBJC_IVAR___CHFitnessAppContext_privacyPreferenceClient]);
  *&v6[OBJC_IVAR___CHFitnessAppContext_pregnancyStateProvider] = v28;
  v57 = v26;
  v62 = v28;
  v46 = v58;
  ActivitySharingSettings.init(healthStore:)();
  (*(v59 + 32))(&v6[OBJC_IVAR___CHFitnessAppContext_activitySharingSettings], v46, v60);
  v47 = [objc_allocWithZone(type metadata accessor for ActivitySharingCloudDeviceProvider(0)) init];
  type metadata accessor for AccountDeviceProvider();
  v48 = swift_allocObject();
  v48[3] = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  v48[2] = [objc_opt_self() sharedInstance];
  sub_100140278(&qword_1008F5020, &qword_1006FDC40);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 16) = _swiftEmptyArrayStorage;
  v48[4] = v49;
  v50 = type metadata accessor for CloudDeviceProvider();
  v51 = objc_allocWithZone(v50);
  *&v51[OBJC_IVAR___CHCloudDeviceProvider_activitySharingCloudDeviceProvider] = v47;
  *&v51[OBJC_IVAR___CHCloudDeviceProvider_accountDeviceProvider] = v48;
  v66.receiver = v51;
  v66.super_class = v50;
  v52 = objc_msgSendSuper2(&v66, "init");
  *&v6[OBJC_IVAR___CHFitnessAppContext_cloudDeviceProvider] = v52;
  v53 = v52;
  sub_10032C4F0();

  v54 = type metadata accessor for FitnessAppContext(0);
  v65.receiver = v6;
  v65.super_class = v54;
  v55 = objc_msgSendSuper2(&v65, "init");
  *(*&v55[OBJC_IVAR___CHFitnessAppContext_navigator] + 192) = &off_100862830;
  swift_unknownObjectWeakAssign();
  v56 = v55;
  sub_1005D2B44();
  swift_getObjectType();
  type metadata accessor for MultiUserBeginActivityRequested();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();
  swift_unknownObjectRelease();

  sub_100005A40(&v67);
  swift_getObjectType();
  type metadata accessor for PlaylistsUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  swift_unknownObjectRelease();

  sub_100005A40(&v67);

  return v56;
}

uint64_t sub_10000CC98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000CCF8()
{
  sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
  v1 = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = objc_allocWithZone(HKObserverQuery);
    v7[4] = sub_10000D8E0;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10000D77C;
    v7[3] = &unk_10084D820;
    v5 = _Block_copy(v7);

    v6 = [v4 initWithSampleType:v2 predicate:0 updateHandler:v5];

    _Block_release(v5);

    [*(v0 + 32) executeQuery:v6];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000CE60()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000CEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000CF48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100140278(&qword_1008E2080, &qword_1006DEF18);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_10000D0CC(&v10 - v4);
  v6 = type metadata accessor for JournalRotator();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1002243A8(v5);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  else
  {
    *(&v11 + 1) = v6;
    v12 = &protocol witness table for JournalRotator;
    v8 = sub_100005994(&v10);
    (*(v7 + 32))(v8, v5, v6);
  }

  type metadata accessor for AppCoordinator();
  swift_allocObject();
  *(v2 + 16) = AppCoordinator.init(dependencies:journalRotator:)();
  return v2;
}

uint64_t sub_10000D0CC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for Logger();
  v29 = *(v1 - 8);
  v30 = v1;
  __chkstk_darwin(v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v33);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v31 = *(v12 - 8);
  v32 = v12;
  __chkstk_darwin(v12);
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = [objc_opt_self() defaultManager];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 containerURLForSecurityApplicationGroupIdentifier:v17];

  if (v18)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 0xD000000000000012;
    v40 = 0x800000010074E4F0;
    (*(v9 + 104))(v11, enum case for URL.DirectoryHint.isDirectory(_:), v8);
    sub_10000FCBC();
    URL.appending<A>(path:directoryHint:)();
    (*(v9 + 8))(v11, v8);
    sub_10000D674();
    static DispatchQoS.unspecified.getter();
    v39 = _swiftEmptyArrayStorage;
    sub_10000D6C0();
    sub_100140278(&qword_1008E2098, &qword_1006DEF20);
    sub_10000D718();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v36 + 104))(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v37);
    OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v19 = v38;
    JournalRotator.init(containerDirectory:limit:queue:)();
    (*(v31 + 8))(v15, v32);
    v20 = 0;
  }

  else
  {
    v22 = v29;
    v21 = v30;
    v23 = v38;
    static Log.default.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get shared data container url!", v26, 2u);
    }

    (*(v22 + 8))(v3, v21);
    v20 = 1;
    v19 = v23;
  }

  v27 = type metadata accessor for JournalRotator();
  return (*(*(v27 - 8) + 56))(v19, v20, 1, v27);
}

unint64_t sub_10000D674()
{
  result = qword_1008E2088;
  if (!qword_1008E2088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E2088);
  }

  return result;
}

unint64_t sub_10000D6C0()
{
  result = qword_1008E2090;
  if (!qword_1008E2090)
  {
    type metadata accessor for OS_dispatch_queue_serial.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E2090);
  }

  return result;
}

unint64_t sub_10000D718()
{
  result = qword_1008E20A0;
  if (!qword_1008E20A0)
  {
    sub_100141EEC(&qword_1008E2098, &qword_1006DEF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E20A0);
  }

  return result;
}

void sub_10000D77C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_10016B148, v8, a4);
}

uint64_t sub_10000D850()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000D8E8();
  }

  return result;
}

uint64_t sub_10000D8E8()
{
  v1 = *v0;
  v2 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_10026E198(0, 0, v4, &unk_1006DFF38, v6);
}

uint64_t sub_10000DA18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000DA58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000681F0;

  return v6(a1);
}

uint64_t sub_10000DB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for AccountFitnessSettingsChanged();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for Calendar();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[13] = v9;
  *v9 = v5;
  v9[1] = sub_1000105CC;

  return sub_10000FDD0();
}

uint64_t sub_10000DCF8()
{
  v2 = v0[3];
  v1 = v0[4];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v3 initWithKey:v4 ascending:0];
  v0[5] = v5;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithKey:v7 ascending:0];
  v0[6] = v8;

  v9 = swift_task_alloc();
  v0[7] = v9;
  v9[2] = v5;
  v9[3] = v8;
  v9[4] = v2;
  v9[5] = v1;
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = sub_100140278(&qword_1008E2EA0, &qword_1006DFF18);
  *v10 = v0;
  v10[1] = sub_1000104B4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000028, 0x800000010074F270, sub_10000DED4, v9, v11);
}

uint64_t sub_10000DEE0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t sub_10000DF98()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10000E000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BBC0;

  return sub_10000DA58(a1, v4);
}

uint64_t sub_10000E0B8()
{
  v0 = sub_100140278(&qword_1008DE590, &qword_1006D7D10);
  __chkstk_darwin(v0 - 8);
  v89 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v68 - v3;
  __chkstk_darwin(v5);
  v7 = &v68 - v6;
  v80 = type metadata accessor for Calendar.Component();
  v72 = *(v80 - 1);
  __chkstk_darwin(v80);
  v76 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v9 - 8);
  v75 = &v68 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v82 = &v68 - v16;
  __chkstk_darwin(v17);
  v78 = &v68 - v18;
  __chkstk_darwin(v19);
  v79 = &v68 - v20;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  if (qword_1008DA548 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for Calendar();
  v81 = sub_10001AC90(v83, qword_100925000);
  DateInterval.start.getter();
  Calendar.startOfDay(for:)();
  v68 = v26;
  v27 = *(v12 + 8);
  v27(v23, v11);
  DateInterval.end.getter();
  Calendar.startOfDay(for:)();
  v88 = v12 + 8;
  v77 = v27;
  v27(v23, v11);
  v28 = v78;
  v85 = *(v12 + 16);
  v86 = v12 + 16;
  v85(v78, v68, v11);
  v29 = static Date.< infix(_:_:)();
  v30 = _swiftEmptyArrayStorage;
  v87 = v4;
  v31 = v28;
  if (v29)
  {
    v32 = v12 + 32;
    v74 = enum case for Calendar.Component.day(_:);
    v33 = v72++;
    v73 = (v33 + 13);
    v70 = v7;
    v71 = v12 + 48;
    v69 = v14;
    while (1)
    {
      v85(v82, v31, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10001AC68(0, *(v30 + 2) + 1, 1, v30);
      }

      v35 = *(v30 + 2);
      v34 = *(v30 + 3);
      if (v35 >= v34 >> 1)
      {
        v30 = sub_10001AC68((v34 > 1), v35 + 1, 1, v30);
      }

      *(v30 + 2) = v35 + 1;
      v36 = &v30[((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35];
      v37 = *(v12 + 32);
      v37(v36, v82, v11);
      v38 = v32;
      v39 = v76;
      v40 = v80;
      (*v73)(v76, v74, v80);
      v41 = v75;
      v42 = v78;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      (*v72)(v39, v40);
      if ((*(v12 + 48))(v41, 1, v11) == 1)
      {
        break;
      }

      v77(v42, v11);
      v37(v42, v41, v11);
      v43 = static Date.< infix(_:_:)();
      v4 = v87;
      v31 = v42;
      v7 = v70;
      v32 = v38;
      v14 = v69;
      if ((v43 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_10000EA04(v41, &unk_1008F73A0, &unk_1006DB450);
    v4 = v87;
    v31 = v42;
    v7 = v70;
    v14 = v69;
  }

LABEL_13:
  v90 = _swiftEmptyArrayStorage;
  v44 = *(v30 + 2);
  if (v44)
  {
    v82 = OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_summaryCache;
    v45 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v76 = v30;
    v46 = &v30[v45];
    v47 = *(v12 + 72);
    v80 = _swiftEmptyArrayStorage;
    v81 = v47;
    v48 = v77;
    do
    {
      v85(v14, v46, v11);
      v49.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (qword_1008DA540 != -1)
      {
        swift_once();
      }

      sub_10001AC90(v83, qword_100924FE8);
      isa = Calendar._bridgeToObjectiveC()().super.isa;
      v51 = _HKActivityCacheDateComponentsFromDate();

      if (v51)
      {
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = v4;
      v54 = type metadata accessor for DateComponents();
      v55 = *(v54 - 8);
      (*(v55 + 56))(v53, v52, 1, v54);
      sub_10003BE9C(v53, v7);
      v56 = v89;
      sub_10001B104(v7, v89, &qword_1008DE590, &qword_1006D7D10);
      v57 = (*(v55 + 48))(v56, 1, v54);
      v58 = 0;
      if (v57 != 1)
      {
        v59 = v89;
        v58 = DateComponents._bridgeToObjectiveC()().super.isa;
        (*(v55 + 8))(v59, v54);
      }

      v60 = _HKCacheIndexFromDateComponents();

      sub_10000EA04(v7, &qword_1008DE590, &qword_1006D7D10);
      v61 = [*&v82[v84] activitySummaryForCacheIndex:v60];
      v48(v14, v11);
      v4 = v87;
      if (v61)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v80 = v90;
      }

      v46 += v81;
      --v44;
    }

    while (v44);

    v62 = v78;
    v63 = v80;
  }

  else
  {
    v62 = v31;

    v63 = _swiftEmptyArrayStorage;
    v48 = v77;
  }

  v64 = v79;
  v65 = v68;
  if (v63 >> 62)
  {
    v66 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v66 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48(v62, v11);
  v48(v64, v11);
  v48(v65, v11);
  return v66;
}

uint64_t sub_10000EA04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100140278(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EA64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10000EB18(a1, v4, v5, v6);
}

uint64_t sub_10000EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = a4;
  v5 = swift_task_alloc();
  *(v4 + 96) = v5;
  *v5 = v4;
  v5[1] = sub_10030F9E0;

  return SecureCloudClient.activate()();
}

void sub_10000EBBC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

char *sub_10000EC54(void *a1, void *a2, void *a3, char *a4, char *a5, char *a6, char *a7, void *a8)
{
  v9 = v8;
  v75 = a6;
  v76 = a7;
  v73 = a5;
  v77 = a4;
  v71 = a3;
  v14 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v14 - 8);
  v70 = &v63 - v15;
  v16 = type metadata accessor for SnapshotClient();
  v67 = *(v16 - 8);
  v68 = v16;
  __chkstk_darwin(v16);
  v66 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FitnessIntelligenceConnection();
  v78 = *(v65 - 8);
  __chkstk_darwin(v65);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for InferenceClient();
  v20 = *(v64 - 8);
  __chkstk_darwin(v64);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8[OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel] = 0;
  v23 = OBJC_IVAR___CHWorkoutBrowsingViewController_workoutScrollingCoordinator;
  type metadata accessor for WorkoutScrollingCoordinator();
  swift_allocObject();
  *&v8[v23] = WorkoutScrollingCoordinator.init()();
  *&v8[OBJC_IVAR___CHWorkoutBrowsingViewController_currentQuickStartContext] = 0;
  v24 = OBJC_IVAR___CHWorkoutBrowsingViewController_visibilityObservers;
  *&v9[v24] = [objc_opt_self() weakObjectsHashTable];
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_activityMoveMode] = FIActivityMoveModeWithHealthStore();
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_formattingManager] = a2;
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_healthStore] = a1;
  v25 = *&a5[OBJC_IVAR___CHWorkoutConfigurationOccurrenceStore_bridgedValue];
  v26 = OBJC_IVAR___CHWorkoutBrowsingViewController_occurrenceStore;
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_occurrenceStore] = v25;
  v27 = v25;
  v74 = a2;
  v72 = a1;
  dispatch thunk of WorkoutConfigurationOccurrenceStore.loadIfNeeded()();

  v28 = v71;
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_workoutController] = v71;
  v29 = *&v77[OBJC_IVAR___CHActivityPausedRingsObserver_bridgedValue];
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_activityPausedRingsObserver] = v29;
  v30 = *&v9[v26];
  v31 = objc_allocWithZone(type metadata accessor for StandardActivityItemsViewModel());
  v71 = v28;
  v32 = v29;
  v33 = v30;
  v34 = sub_10004363C(1, v33);

  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_viewModel] = v34;
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_fitnessAppContext] = a8;
  v35 = OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue;
  v36 = *(v78 + 16);
  v78 += 16;
  v37 = v75;
  v38 = v19;
  v39 = v65;
  v36(v19, &v75[OBJC_IVAR___CHFitnessIntelligenceConnection_bridgedValue], v65);
  v69 = a8;
  InferenceClient.init(connection:)();
  v40 = OBJC_IVAR___CHWorkoutBrowsingViewController_inferenceClient;
  v41 = v64;
  (*(v20 + 32))(&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_inferenceClient], v22, v64);
  v36(v38, &v37[v35], v39);
  v42 = v66;
  SnapshotClient.init(connection:)();
  (*(v67 + 32))(&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_snapshotClient], v42, v68);
  v43 = *(v20 + 16);
  v43(v22, &v9[v40], v41);
  type metadata accessor for VoiceAssetsObserver();
  swift_allocObject();
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_voiceAssetsObserver] = VoiceAssetsObserver.init(inferenceClient:)();
  v44 = *&v76[OBJC_IVAR___CHWorkoutVoiceAvailabilityProvider_bridgedValue];
  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_workoutVoiceAvailabilityProvider] = v44;
  v45 = objc_allocWithZone(type metadata accessor for WorkoutOnboardingCoordinatoriOS(0));
  sub_10032DA18(v44);
  v46 = &v9[OBJC_IVAR___CHWorkoutBrowsingViewController__workoutOnboardingCoordinatoriOS];
  swift_beginAccess();
  sub_100055EDC(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS, &unk_1006E9720);
  *v46 = ObservedObject.init(wrappedValue:)();
  v46[1] = v47;
  swift_endAccess();
  v43(v22, &v9[v40], v41);
  type metadata accessor for WorkoutVoiceOnboardingPickerViewModel();
  swift_allocObject();

  *&v9[OBJC_IVAR___CHWorkoutBrowsingViewController_pickerModel] = WorkoutVoiceOnboardingPickerViewModel.init(inferenceClient:voiceAssetsObserver:)();
  v48 = type metadata accessor for WorkoutBrowsingViewController(0);
  v79.receiver = v9;
  v79.super_class = v48;
  v49 = objc_msgSendSuper2(&v79, "initWithNibName:bundle:", 0, 0);

  dispatch thunk of VoiceAssetsObserver.fetchAssets()();

  v50 = type metadata accessor for TaskPriority();
  v51 = v70;
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  type metadata accessor for MainActor();
  v52 = v49;
  v53 = static MainActor.shared.getter();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v54[4] = v52;
  sub_10026E198(0, 0, v51, &unk_1006EDCA0, v54);

  type metadata accessor for WorkoutCoreInjector();
  v55 = static WorkoutCoreInjector.shared.getter();

  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  v58 = v76;
  v57[2] = v56;
  v57[3] = v58;
  v57[4] = v52;
  v59 = objc_allocWithZone(type metadata accessor for QuickWorkoutSwitchProvider());
  v60 = v58;
  QuickWorkoutSwitchProvider.init(quickWorkoutSwitch:)();
  [objc_allocWithZone(type metadata accessor for PerformanceTestModel()) init];
  type metadata accessor for ConfigurationNavigationModel();
  swift_allocObject();
  v61 = ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)();

  *&v52[OBJC_IVAR___CHWorkoutBrowsingViewController_navigationModel] = v61;

  return v52;
}

uint64_t sub_10000F460()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F4A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F4D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F520(uint64_t a1)
{
  _StringGuts.grow(_:)(154);
  v2._countAndFlagsBits = 0xD00000000000002FLL;
  v2._object = 0x80000001007665F0;
  String.append(_:)(v2);
  v3._countAndFlagsBits = 0x4D6F6D6544736928;
  v3._object = 0xED0000203A65646FLL;
  String.append(_:)(v3);
  if ((a1 & 0x10000000000) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v7._object = 0x8000000100766620;
  String.append(_:)(v7);
  if ((a1 & &_mh_execute_header) != 0)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if ((a1 & &_mh_execute_header) != 0)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x65766F4D73616820;
  v11._object = 0xEE00203A6C616F47;
  String.append(_:)(v11);
  if (a1)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (a1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v14 = v13;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 0xD000000000000018;
  v15._object = 0x8000000100766640;
  String.append(_:)(v15);
  if ((a1 & 0x100) != 0)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19._object = 0x8000000100766660;
  v19._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v19);
  if ((a1 & 0x10000) != 0)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = v21;
  String.append(_:)(*&v20);

  v23._countAndFlagsBits = 0x6E61745373616820;
  v23._object = 0xEF203A6C616F4764;
  String.append(_:)(v23);
  if ((a1 & 0x1000000) != 0)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if ((a1 & 0x1000000) != 0)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26 = v25;
  String.append(_:)(*&v24);

  v27._countAndFlagsBits = 0xD00000000000001BLL;
  v27._object = 0x8000000100766680;
  String.append(_:)(v27);
  v28 = [objc_opt_self() standardUserDefaults];
  if (qword_1008DAEF8 != -1)
  {
    swift_once();
  }

  v29 = String._bridgeToObjectiveC()();
  v30 = [v28 BOOLForKey:v29];

  if (v30)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v30)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = 0xE500000000000000;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  v34._countAndFlagsBits = 41;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);
  return 0;
}

uint64_t sub_10000F8E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    sub_1000059F8(0, &qword_1008F5950, HKDeletedObject_ptr);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

uint64_t sub_10000FA08(void *a1, unint64_t a2)
{
  v4 = sub_100140278(&qword_1008F5940, &unk_1006FF868);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9[-v6];
  sub_1000066AC(a1, a1[3]);
  sub_100008C88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v9[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[11] = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[10] = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v9[9] = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10000FC28(void *a1)
{
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v1[1])
  {
    v7 = 0;
  }

  return sub_10000FA08(a1, v7 | *v1 | v6 | v5 | v4 | v3 | v2);
}

unint64_t sub_10000FCBC()
{
  result = qword_1008DBF10;
  if (!qword_1008DBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DBF10);
  }

  return result;
}

uint64_t sub_10000FD10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002BACC;

  return sub_10000DB50(a1, v4, v5, v7, v6);
}

uint64_t sub_10000FDD0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_10000DCF8, 0, 0);
}

void sub_10000FE18(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v8 = sub_100140278(&qword_1008E2EA8, &unk_1006DFF20);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  sub_1000059F8(0, &unk_1008E4E30, HKSampleType_ptr);
  v13 = [swift_getObjCClassFromMetadata() activityMoveModeChangeType];
  if (v13)
  {
    v14 = v13;
    sub_100140278(&unk_1008E4E20, &qword_1006D5040);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1006D68D0;
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v12, v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
    v18 = objc_allocWithZone(HKSampleQuery);
    sub_1000059F8(0, &qword_1008E2EB0, NSSortDescriptor_ptr);
    v19 = a2;
    v20 = a3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = sub_1000103F4;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DEE0;
    aBlock[3] = &unk_10084D7A8;
    v22 = _Block_copy(aBlock);
    v23 = [v18 initWithSampleType:v14 predicate:0 limit:1 sortDescriptors:isa resultsHandler:v22];

    _Block_release(v22);

    [*(v25 + 32) executeQuery:v23];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000100E0()
{
  v1 = sub_100140278(&qword_1008E2EA8, &unk_1006DFF20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

unint64_t sub_100010180(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = static os_log_type_t.error.getter();
    v6 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v8 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000AFDC(v9, v10, &v23);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      Error.localizedDescription.getter();
      sub_100140278(&qword_1008DC8F8, &qword_1006D50B0);
      v12 = Optional.description.getter();
      v14 = v13;

      v15 = sub_10000AFDC(v12, v14, &v23);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v7, v5, "%s failed to load last move mode category sample with error: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_15;
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v16 = a2 & 0xFFFFFFFFFFFFFF8;
  if (!(a2 >> 62))
  {
    v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_15:
    sub_100140278(&qword_1008E2EA8, &unk_1006DFF20);
    return CheckedContinuation.resume(returning:)();
  }

  v22 = a2;
  v17 = _CocoaArrayWrapper.endIndex.getter();
  a2 = v22;
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_8:
  v18 = __OFSUB__(v17, 1);
  result = v17 - 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
    v21 = v20;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
    }

    goto LABEL_15;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v16 + 16))
  {
    v20 = *(a2 + 8 * result + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000103F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_100140278(&qword_1008E2EA8, &unk_1006DFF20) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100010180(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1000104B4()
{

  return _swift_task_switch(sub_10000DF98, 0, 0);
}

uint64_t sub_1000105CC(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1000106CC, 0, 0);
}

uint64_t sub_1000106CC()
{
  v34 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = static os_log_type_t.default.getter();
    v3 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v2))
    {
      v4 = v0[14];
      v5 = v3;
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v33 = v8;
      *v6 = 136315394;
      v9 = _typeName(_:qualified:)();
      v11 = sub_10000AFDC(v9, v10, &v33);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v1;
      *v7 = v4;
      v12 = v1;
      _os_log_impl(&_mh_execute_header, v5, v2, "%s last move mode sample: %@", v6, 0x16u);
      sub_1001F3454(v7);

      sub_100005A40(v8);
    }

    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[7];
    v18 = v0[8];
    v19 = v0[2];
    *(v19 + 64) = [v1 value] == 2;
    static Calendar.current.getter();
    v20 = [v1 _creationDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v20) = Calendar.isDateInToday(_:)();
    (*(v18 + 8))(v16, v17);
    (*(v14 + 8))(v13, v15);
    *(v19 + 65) = v20 & 1;
    type metadata accessor for MainActor();
    v0[15] = static MainActor.shared.getter();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10023F694, v22, v21);
  }

  else
  {
    v23 = static os_log_type_t.default.getter();
    v24 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v23))
    {
      v25 = v24;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = _typeName(_:qualified:)();
      v30 = sub_10000AFDC(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v25, v23, "%s no last move mode sample; defaulting isAppleMoveTime and didSwitchMoveModeToday to false", v26, 0xCu);
      sub_100005A40(v27);
    }

    v31 = v0[1];

    return v31();
  }
}

void sub_100010A7C(NSObject *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v188 = a2;
  v190 = a1;
  v6 = type metadata accessor for DispatchTimeInterval();
  v177 = *(v6 - 8);
  v178 = v6;
  __chkstk_darwin(v6);
  v176 = (&v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v174 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v179 = &v162 - v12;
  v13 = type metadata accessor for Calendar.Component();
  v186 = *(v13 - 1);
  v187 = v13;
  __chkstk_darwin(v13);
  v185 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v15 - 8);
  v189 = &v162 - v16;
  v17 = type metadata accessor for Date();
  v193 = *(v17 - 8);
  v194 = v17;
  __chkstk_darwin(v17);
  v173 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v172 = &v162 - v20;
  __chkstk_darwin(v21);
  v192 = &v162 - v22;
  __chkstk_darwin(v23);
  v183 = &v162 - v24;
  v171 = v25;
  __chkstk_darwin(v26);
  v195 = &v162 - v27;
  v28 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v28 - 8);
  v184 = &v162 - v29;
  v30 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v30 - 8);
  v32 = &v162 - v31;
  v33 = type metadata accessor for DateComponents();
  v181 = *(v33 - 8);
  v182 = v33;
  __chkstk_darwin(v33);
  v238 = &v162 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchPredicate();
  v36 = *(v35 - 1);
  __chkstk_darwin(v35);
  v38 = (&v162 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierVO2Max];
  if (!v39)
  {
    sub_100011DA0(&v210);
LABEL_20:
    v156 = v221;
    *(a3 + 160) = v220;
    *(a3 + 176) = v156;
    *(a3 + 192) = v222;
    v157 = v217;
    *(a3 + 96) = v216;
    *(a3 + 112) = v157;
    v158 = v219;
    *(a3 + 128) = v218;
    *(a3 + 144) = v158;
    v159 = v213;
    *(a3 + 32) = v212;
    *(a3 + 48) = v159;
    v160 = v215;
    *(a3 + 64) = v214;
    *(a3 + 80) = v160;
    v161 = v211;
    *a3 = v210;
    *(a3 + 16) = v161;
    return;
  }

  v191 = v39;
  if (qword_1008DAFB0 != -1)
  {
    swift_once();
  }

  v167 = v9;
  v168 = v8;
  if (byte_1008F868A)
  {
    v180 = 0;
  }

  else
  {
    v40 = objc_opt_self();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 _predicateForObjectsWithMinOSBuildVersion:v41 maxOSBuildVersion:0];

    v4 = v3;
    v180 = v42;
    v43 = v42;
  }

  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v38 = static OS_dispatch_queue.main.getter();
  (*(v36 + 104))(v38, enum case for DispatchPredicate.notOnQueue(_:), v35);
  v44 = _dispatchPreconditionTest(_:)();
  (*(v36 + 8))(v38, v35);
  v45 = v195;
  if (v44)
  {
    v169 = a3;
    v170 = v4;
    v35 = v223;
    sub_100011DA0(v223);
    v235 = v223[10];
    v236 = v223[11];
    v237 = v224;
    v231 = v223[6];
    v232 = v223[7];
    v234 = v223[9];
    v233 = v223[8];
    v227 = v223[2];
    v228 = v223[3];
    v230 = v223[5];
    v229 = v223[4];
    v226 = v223[1];
    v225 = v223[0];
    v38 = type metadata accessor for Calendar();
    (*(*(v38 - 1) + 56))(v32, 1, 1, v38);
    v46 = type metadata accessor for TimeZone();
    (*(*(v46 - 8) + 56))(v184, 1, 1, v46);
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    DateComponents.day.setter();
    if (qword_1008DA540 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_10:
  sub_10001AC90(v38, qword_100924FE8);
  Calendar.startOfDay(for:)();
  v47 = v45;
  v49 = v185;
  v48 = v186;
  v50 = v187;
  (v186[13].isa)(v185, enum case for Calendar.Component.day(_:), v187);
  v51 = v189;
  v52 = v194;
  if (!__OFSUB__(0, v190))
  {
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v48[1].isa)(v49, v50);
    v53 = v193;
    if ((*(v193 + 48))(v51, 1, v52) == 1)
    {

      v54 = v180;
      (*(v53 + 8))(v47, v52);
      (*(v181 + 8))(v238, v182);
      sub_10000EA04(v51, &unk_1008F73A0, &unk_1006DB450);
      v55 = v35[11];
      v220 = v35[10];
      v221 = v55;
      v222 = v224;
      v56 = v35[7];
      v216 = v35[6];
      v217 = v56;
      v57 = v35[9];
      v218 = v35[8];
      v219 = v57;
      v58 = v35[3];
      v212 = v35[2];
      v213 = v58;
      v59 = v35[5];
      v214 = v35[4];
      v215 = v59;
      v61 = *v35;
      v60 = v35[1];
    }

    else
    {
      v186 = *(v53 + 32);
      v187 = (v53 + 32);
      (v186)(v183, v51, v52);
      Calendar.startOfDay(for:)();
      v62 = objc_opt_self();
      v63 = [v62 literUnitWithMetricPrefix:4];
      v64 = [v62 gramUnitWithMetricPrefix:9];
      v65 = [v62 minuteUnit];
      v66 = [v63 unitDividedByUnit:v64];
      v67 = [v66 unitDividedByUnit:v65];

      v68 = dispatch_semaphore_create(0);
      v69 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
      v70 = v69;
      v71 = v180;
      v189 = v69;
      v190 = v68;
      v185 = v67;
      if (v180)
      {
        sub_100140278(&unk_1008E4E20, &qword_1006D5040);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1006D68D0;
        *(v72 + 32) = v70;
        *(v72 + 40) = v71;
        sub_1000059F8(0, &unk_1008E4070, NSPredicate_ptr);
        v73 = v71;
        v74 = v70;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v76 = [objc_opt_self() andPredicateWithSubpredicates:isa];
      }

      else
      {
        v76 = v69;
      }

      v77 = v195;
      *&v197 = 0x3A73646E6572545BLL;
      *(&v197 + 1) = 0xE900000000000020;
      v78 = v191;
      v79 = [v191 identifier];
      v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83._countAndFlagsBits = v80;
      v83._object = v82;
      String.append(_:)(v83);

      v84._countAndFlagsBits = 93;
      v84._object = 0xE100000000000000;
      String.append(_:)(v84);
      v165 = *(&v197 + 1);
      v166 = v197;
      v85 = objc_allocWithZone(HKStatisticsCollectionQuery);
      v86 = v76;
      v87 = Date._bridgeToObjectiveC()().super.isa;
      v88 = DateComponents._bridgeToObjectiveC()().super.isa;
      v184 = [v85 initWithQuantityType:v78 quantitySamplePredicate:v86 options:2 anchorDate:v87 intervalComponents:v88];
      v188 = v86;

      v89 = swift_allocObject();
      v90 = v236;
      *(v89 + 176) = v235;
      *(v89 + 192) = v90;
      *(v89 + 208) = v237;
      v91 = v232;
      *(v89 + 112) = v231;
      *(v89 + 128) = v91;
      v92 = v234;
      *(v89 + 144) = v233;
      *(v89 + 160) = v92;
      v93 = v228;
      *(v89 + 48) = v227;
      *(v89 + 64) = v93;
      v94 = v230;
      *(v89 + 80) = v229;
      *(v89 + 96) = v94;
      v95 = v226;
      *(v89 + 16) = v225;
      *(v89 + 32) = v95;
      v96 = v193 + 16;
      v97 = *(v193 + 16);
      v98 = v172;
      v99 = v194;
      v97(v172, v192, v194);
      v100 = v173;
      v97(v173, v77, v99);
      v101 = *(v96 + 64);
      v102 = (v101 + 32) & ~v101;
      v103 = (v171 + v101 + v102) & ~v101;
      v104 = v103 + v171;
      v105 = v99;
      v106 = (v103 + v171 + 7) & 0xFFFFFFFFFFFFFFF8;
      v107 = (v103 + v171 + 23) & 0xFFFFFFFFFFFFFFF8;
      v171 = (v103 + v171 + 223) & 0xFFFFFFFFFFFFFFF8;
      v164 = (v104 + 239) & 0xFFFFFFFFFFFFFFF8;
      v162 = v107;
      v163 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v109 = v190;
      *(v108 + 16) = v191;
      *(v108 + 24) = v109;
      v110 = v98;
      v111 = v186;
      (v186)(v108 + v102, v110, v105);
      (v111)(v108 + v103, v100, v105);
      v112 = v108 + v106;
      *v112 = 2;
      *(v112 + 8) = 0;
      v113 = v108 + v162;
      v114 = v228;
      *(v113 + 32) = v227;
      *(v113 + 48) = v114;
      v115 = v226;
      *v113 = v225;
      *(v113 + 16) = v115;
      v116 = v232;
      *(v113 + 96) = v231;
      *(v113 + 112) = v116;
      v117 = v230;
      *(v113 + 64) = v229;
      *(v113 + 80) = v117;
      *(v113 + 192) = v237;
      v118 = v236;
      *(v113 + 160) = v235;
      *(v113 + 176) = v118;
      v119 = v234;
      *(v113 + 128) = v233;
      *(v113 + 144) = v119;
      v120 = v108 + v171;
      v121 = v185;
      *v120 = v185;
      *(v120 + 8) = 0;
      v122 = (v108 + v164);
      v123 = v165;
      *v122 = v166;
      v122[1] = v123;
      v124 = v108 + v163;
      *v124 = v89;
      *(v124 + 8) = 6;
      *&v199 = sub_100042974;
      *(&v199 + 1) = v108;
      *&v197 = _NSConcreteStackBlock;
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_100018C74;
      *(&v198 + 1) = &unk_10084E380;
      v125 = _Block_copy(&v197);
      v186 = v191;
      v126 = v190;
      v190 = v121;

      sub_10000B210(sub_100042974, v108);

      v127 = v184;
      [v184 setInitialResultsHandler:v125];
      _Block_release(v125);

      v128 = v127;
      v129 = String._bridgeToObjectiveC()();
      [v128 setDebugIdentifier:v129];

      v130 = *(v175 + 16);
      v187 = v128;
      [v130 executeQuery:v128];
      v131 = v174;
      static DispatchTime.now()();
      v133 = v176;
      v132 = v177;
      *v176 = 15;
      v134 = v178;
      (*(v132 + 104))(v133, enum case for DispatchTimeInterval.seconds(_:), v178);
      v135 = v179;
      + infix(_:_:)();
      (*(v132 + 8))(v133, v134);
      v136 = *(v167 + 8);
      v137 = v131;
      v138 = v168;
      v136(v137, v168);
      v191 = v126;
      OS_dispatch_semaphore.wait(timeout:)();
      if (static DispatchTimeoutResult.== infix(_:_:)())
      {
        LODWORD(v185) = static os_log_type_t.default.getter();
        v139 = HKLogActivity;
        sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_1006D46C0;
        *(v140 + 56) = sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);
        *(v140 + 64) = sub_10025F118(&qword_1008E3FF0, &qword_1008DEE18, HKQuantityType_ptr);
        v141 = v186;
        *(v140 + 32) = v186;
        v142 = v141;
        v143 = v139;
        os_log(_:dso:log:_:_:)(v185, &_mh_execute_header, v143, "Semaphore wait timed out fetching statistics for quantity type %@", 65, 2, v140);

        sub_10025F0BC();
        swift_allocError();
        swift_willThrow();

        v144 = v180;
        v136(v179, v138);
        v145 = *(v193 + 8);
        v146 = v194;
        v145(v192, v194);
        v145(v183, v146);
        v145(v195, v146);
        (*(v181 + 8))(v238, v182);

        return;
      }

      v147 = v180;
      v136(v135, v138);
      v148 = *(v193 + 8);
      v149 = v194;
      v148(v192, v194);
      v148(v183, v149);
      v148(v195, v149);
      (*(v181 + 8))(v238, v182);
      swift_beginAccess();
      v150 = *(v89 + 192);
      v207 = *(v89 + 176);
      v208 = v150;
      v209 = *(v89 + 208);
      v151 = *(v89 + 128);
      v203 = *(v89 + 112);
      v204 = v151;
      v152 = *(v89 + 160);
      v205 = *(v89 + 144);
      v206 = v152;
      v153 = *(v89 + 64);
      v199 = *(v89 + 48);
      v200 = v153;
      v154 = *(v89 + 96);
      v201 = *(v89 + 80);
      v202 = v154;
      v155 = *(v89 + 32);
      v197 = *(v89 + 16);
      v198 = v155;
      sub_10001B104(&v197, &v196, &qword_1008E5710, &unk_1006E1760);

      v220 = v207;
      v221 = v208;
      v222 = v209;
      v216 = v203;
      v217 = v204;
      v218 = v205;
      v219 = v206;
      v212 = v199;
      v213 = v200;
      v214 = v201;
      v215 = v202;
      v61 = v197;
      v60 = v198;
    }

    v210 = v61;
    v211 = v60;
    a3 = v169;
    goto LABEL_20;
  }

  __break(1u);
}

double sub_100011DA0(uint64_t a1)
{
  *(a1 + 192) = 0;
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_100011DDC(uint64_t a1)
{
  __chkstk_darwin(a1);
  v134 = v1;
  v3 = v2;
  v5 = v4;
  v142 = type metadata accessor for DispatchTime();
  v138 = *(v142 - 8);
  __chkstk_darwin(v142);
  v137 = (&v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v141 = &v118 - v8;
  v131 = type metadata accessor for Date();
  v133 = *(v131 - 8);
  v9 = *(v133 + 64);
  __chkstk_darwin(v131);
  v132 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  i = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v139 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v5;
  sub_1000132E8(365);
  v128 = v9;
  v129 = v12;
  v130 = v3;
  memcpy(v181, v163, sizeof(v181));
  if (sub_100013184(v181) != 1)
  {
    memcpy(v182, v181, sizeof(v182));
    v16 = v143;
    sub_1000132E8(90);
    v17 = 0;
    memcpy(v179, v164, sizeof(v179));
    v18 = sub_100013184(v179);
    if (v18 == 1)
    {
      sub_10000EA04(v163, &qword_1008E5708, &qword_1006E3CA8);
    }

    else
    {
      v127 = v15;
      v135 = v13;
      v136 = v10;
      memcpy(v180, v179, sizeof(v180));
      sub_10006C024(v182);
      sub_10000EA04(v164, &qword_1008E5708, &qword_1006E3CA8);
      sub_10000EA04(v163, &qword_1008E5708, &qword_1006E3CA8);
      *&v16[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_retryCount] = 0;

      sub_10028D5AC(&v165);

      v19 = v168;
      v119 = v167;
      v20 = (v167 + 64) >> 6;
      v137 = &v146;
      v126 = (i + 8);
      v125 = (v139 + 8);
      v141 = v165;
      v21 = v166;
      v22 = v169;
      v121 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType90;
      v120 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fitsByTrendType90;
      *&v23 = 136315650;
      v122 = v23;
      v24 = v133;
      v139 = v166;
      for (i = v20; ; v20 = i)
      {
        v40 = v132;
        if (!v22)
        {
          break;
        }

        v41 = v19;
LABEL_15:
        v43 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v44 = v43 | (v41 << 6);
        v45 = *(*(v141 + 48) + v44);
        v46 = *(v141 + 56) + 200 * v44;
        v150 = *v46;
        v47 = *(v46 + 64);
        v49 = *(v46 + 16);
        v48 = *(v46 + 32);
        v153 = *(v46 + 48);
        v154 = v47;
        v151 = v49;
        v152 = v48;
        v50 = *(v46 + 128);
        v52 = *(v46 + 80);
        v51 = *(v46 + 96);
        v157 = *(v46 + 112);
        v158 = v50;
        v155 = v52;
        v156 = v51;
        v54 = *(v46 + 160);
        v53 = *(v46 + 176);
        v55 = *(v46 + 144);
        v162 = *(v46 + 192);
        v160 = v54;
        v161 = v53;
        v159 = v55;
        v183 = v151;
        v184 = v152;
        v185 = v153;
        v186 = v154;
        sub_10003E4F0(&v150, &v144);

        sub_10006C764(v170);
        v142 = v45;
        if (v17)
        {
          sub_10006CBE0(&v150);

          v56 = static os_log_type_t.error.getter();
          sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
          v57 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v57, v56))
          {
            v58 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v144 = v59;
            *v58 = v122;
            v60 = _typeName(_:qualified:)();
            v62 = sub_10000AFDC(v60, v61, &v144);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2048;
            *(v58 + 14) = v142;
            *(v58 + 22) = 2112;
            swift_errorRetain();
            v63 = _swift_stdlib_bridgeErrorToNSError();
            *(v58 + 24) = v63;
            v64 = v138;
            *v138 = v63;
            _os_log_impl(&_mh_execute_header, v57, v56, "%s failed to calculate mannKendall test for %ld error: %@", v58, 0x20u);
            sub_10000EA04(v64, &unk_1008DB8B0, &unk_1006DBD30);

            sub_100005A40(v59);
          }

          else
          {
          }

          v17 = 0;
        }

        else
        {

          sub_10006C958();
          v26 = v25;
          sub_100521410(v25);
          v28 = v27;
          v29 = sub_100521318(v26, v27);

          sub_10006CBE0(&v150);
          v30 = *&v143[v121];

          v31 = v127;
          static DispatchWorkItemFlags.barrier.getter();
          v32 = swift_allocObject();
          *(v32 + 16) = v30;
          *(v32 + 24) = v45;
          v33 = v170[1];
          *(v32 + 32) = v170[0];
          *(v32 + 48) = v33;
          *(v32 + 64) = v171;
          v148 = sub_10028E3A0;
          v149 = v32;
          v144 = _NSConcreteStackBlock;
          v145 = 1107296256;
          v146 = sub_1000449A8;
          v147 = &unk_10084FA20;
          v34 = _Block_copy(&v144);

          v35 = v129;
          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v34);
          v124 = *v126;
          v138 = 0;
          v124(v35, v136);
          v123 = *v125;
          v123(v31, v135);

          v36 = *&v143[v120];

          static DispatchWorkItemFlags.barrier.getter();
          v37 = swift_allocObject();
          *(v37 + 16) = v36;
          *(v37 + 24) = v142;
          *(v37 + 32) = v28;
          *(v37 + 40) = v29;
          v148 = sub_10028E3B0;
          v149 = v37;
          v144 = _NSConcreteStackBlock;
          v145 = 1107296256;
          v146 = sub_1000449A8;
          v147 = &unk_10084FA70;
          v38 = _Block_copy(&v144);

          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v38);
          v39 = v35;
          v17 = v138;
          v124(v39, v136);
          v123(v31, v135);
        }

        v19 = v41;
        v24 = v133;
        v21 = v139;
      }

      v42 = v19;
      while (1)
      {
        v41 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          __break(1u);
          __break(1u);
          goto LABEL_38;
        }

        if (v41 >= v20)
        {
          break;
        }

        v22 = *(v21 + 8 * v41);
        ++v42;
        if (v22)
        {
          goto LABEL_15;
        }
      }

      sub_100022DEC(v141);
      v65 = v143;
      if ((v143[OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_calculatesLongTermFits] & 1) == 0)
      {
LABEL_36:
        v110 = [objc_opt_self() mainQueue];
        v111 = v131;
        (*(v24 + 16))(v40, v130, v131);
        v112 = (*(v24 + 80) + 16) & ~*(v24 + 80);
        v113 = v40;
        v114 = (v128 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
        v115 = swift_allocObject();
        (*(v24 + 32))(v115 + v112, v113, v111);
        *(v115 + v114) = v65;
        *&v152 = sub_10007B8FC;
        *(&v152 + 1) = v115;
        *&v150 = _NSConcreteStackBlock;
        *(&v150 + 1) = 1107296256;
        *&v151 = sub_1000449A8;
        *(&v151 + 1) = &unk_10084FAC0;
        v116 = _Block_copy(&v150);
        v117 = v65;

        [v110 addOperationWithBlock:v116];
        _Block_release(v116);

        return;
      }

      sub_10028D5AC(&v172);

      v66 = v175;
      v119 = v174;
      v67 = (v174 + 64) >> 6;
      v137 = &v146;
      i = v67;
      v141 = v172;
      v68 = v173;
      v69 = v176;
      v120 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_fitsByTrendType365;
      v121 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_mannKendallTestByTrendType365;
      v139 = v173;
      while (v69)
      {
        v86 = v66;
LABEL_30:
        v88 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v89 = v88 | (v86 << 6);
        v90 = *(*(v141 + 48) + v89);
        v91 = *(v141 + 56) + 200 * v89;
        v150 = *v91;
        v92 = *(v91 + 64);
        v94 = *(v91 + 16);
        v93 = *(v91 + 32);
        v153 = *(v91 + 48);
        v154 = v92;
        v151 = v94;
        v152 = v93;
        v95 = *(v91 + 128);
        v97 = *(v91 + 80);
        v96 = *(v91 + 96);
        v157 = *(v91 + 112);
        v158 = v95;
        v155 = v97;
        v156 = v96;
        v99 = *(v91 + 160);
        v98 = *(v91 + 176);
        v100 = *(v91 + 144);
        v162 = *(v91 + 192);
        v160 = v99;
        v161 = v98;
        v159 = v100;
        v187 = v151;
        v188 = v152;
        v189 = v153;
        v190 = v154;
        sub_10003E4F0(&v150, &v144);

        sub_10006C764(v177);
        v142 = v90;
        if (v17)
        {
          sub_10006CBE0(&v150);

          v101 = static os_log_type_t.error.getter();
          sub_1000059F8(0, &qword_1008E5700, OS_os_log_ptr);
          v102 = static OS_os_log.default.getter();
          if (os_log_type_enabled(v102, v101))
          {
            v103 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v144 = v104;
            *v103 = v122;
            v105 = _typeName(_:qualified:)();
            v107 = sub_10000AFDC(v105, v106, &v144);

            *(v103 + 4) = v107;
            *(v103 + 12) = 2048;
            *(v103 + 14) = v142;
            *(v103 + 22) = 2112;
            swift_errorRetain();
            v108 = _swift_stdlib_bridgeErrorToNSError();
            *(v103 + 24) = v108;
            v109 = v138;
            *v138 = v108;
            _os_log_impl(&_mh_execute_header, v102, v101, "%s failed to calculate mannKendall test for %ld error: %@", v103, 0x20u);
            sub_10000EA04(v109, &unk_1008DB8B0, &unk_1006DBD30);

            sub_100005A40(v104);
          }

          else
          {
          }

          v17 = 0;
        }

        else
        {

          sub_10006C958();
          v71 = v70;
          sub_100521410(v70);
          v73 = v72;
          v74 = sub_100521318(v71, v72);

          sub_10006CBE0(&v150);
          v75 = *&v143[v121];

          v76 = v90;
          v77 = v127;
          static DispatchWorkItemFlags.barrier.getter();
          v78 = swift_allocObject();
          *(v78 + 16) = v75;
          *(v78 + 24) = v76;
          v79 = v177[1];
          *(v78 + 32) = v177[0];
          *(v78 + 48) = v79;
          *(v78 + 64) = v178;
          v148 = sub_10028E46C;
          v149 = v78;
          v144 = _NSConcreteStackBlock;
          v145 = 1107296256;
          v146 = sub_1000449A8;
          v147 = &unk_10084FB10;
          v80 = _Block_copy(&v144);

          v81 = v129;
          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v80);
          v124 = *v126;
          v138 = 0;
          v124(v81, v136);
          v123 = *v125;
          v123(v77, v135);

          v82 = *&v143[v120];

          static DispatchWorkItemFlags.barrier.getter();
          v83 = swift_allocObject();
          *(v83 + 16) = v82;
          *(v83 + 24) = v142;
          *(v83 + 32) = v73;
          *(v83 + 40) = v74;
          v148 = sub_10028E470;
          v149 = v83;
          v144 = _NSConcreteStackBlock;
          v145 = 1107296256;
          v146 = sub_1000449A8;
          v147 = &unk_10084FB60;
          v84 = _Block_copy(&v144);

          static DispatchQoS.unspecified.getter();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v84);
          v85 = v81;
          v17 = v138;
          v124(v85, v136);
          v123(v77, v135);
        }

        v66 = v86;
        v40 = v132;
        v24 = v133;
        v68 = v139;
        v67 = i;
      }

      v87 = v66;
      while (1)
      {
        v86 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v86 >= v67)
        {
          sub_100022DEC(v141);
          v65 = v143;
          goto LABEL_36;
        }

        v69 = *(v68 + 8 * v86);
        ++v87;
        if (v69)
        {
          goto LABEL_30;
        }
      }

LABEL_38:
      __break(1u);
    }
  }
}

uint64_t sub_100013184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001319C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000131D4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001320C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100013244(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

void *sub_1000132E8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v432 = v2;
  v210 = v3;
  v5 = v4;
  v7 = v6;
  v237 = v8;
  v9 = type metadata accessor for DispatchTimeInterval();
  v214 = *(v9 - 8);
  v215 = v9;
  __chkstk_darwin(v9);
  v213 = (&v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = type metadata accessor for DispatchTime();
  v223 = *(v217 - 8);
  __chkstk_darwin(v217);
  v212 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v216 = &v200 - v13;
  v232 = type metadata accessor for Calendar.Component();
  v227 = *(v232 - 1);
  __chkstk_darwin(v232);
  v226 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v15 - 8);
  v229 = &v200 - v16;
  v17 = type metadata accessor for Date();
  v230 = *(v17 - 8);
  v231 = v17;
  __chkstk_darwin(v17);
  v219 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v218 = &v200 - v20;
  __chkstk_darwin(v21);
  v228 = &v200 - v22;
  __chkstk_darwin(v23);
  v222 = &v200 - v24;
  v211 = v25;
  __chkstk_darwin(v26);
  v233 = &v200 - v27;
  v28 = sub_100140278(&unk_1008E3FB0, &unk_1006DCB80);
  __chkstk_darwin(v28 - 8);
  v225 = &v200 - v29;
  v30 = sub_100140278(&unk_1008E51A0, &unk_1006E09C0);
  __chkstk_darwin(v30 - 8);
  v224 = &v200 - v31;
  v32 = type metadata accessor for DateComponents();
  v220 = *(v32 - 8);
  v221 = v32;
  __chkstk_darwin(v32);
  *&v236 = &v200 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = type metadata accessor for DispatchPredicate();
  *&v234 = *(v235 - 1);
  __chkstk_darwin(v235);
  v35 = (&v200 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_100140278(&unk_1008E3FC0, &qword_1006E1758);
  __chkstk_darwin(v36 - 8);
  v38 = &v200 - v37;
  v39 = type metadata accessor for ActivityStatisticsCollection(0);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v200 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100015308(v7, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_10000EA04(v38, &unk_1008E3FC0, &qword_1006E1758);
    goto LABEL_16;
  }

  sub_1000409F4(v38, v42);
  v43 = v432;
  sub_100010A7C(v7, v5, v360);
  if (v43)
  {
    return sub_100038238(v42);
  }

  v208 = v7;
  v209 = v5;
  v427 = v360[9];
  v428 = v360[10];
  v429 = v360[11];
  v423 = v360[5];
  v424 = v360[6];
  v425 = v360[7];
  v426 = v360[8];
  v419 = v360[1];
  v420 = v360[2];
  v421 = v360[3];
  v422 = v360[4];
  v430 = v361;
  v418 = v360[0];
  if (sub_100013184(&v418) == 1)
  {
    goto LABEL_15;
  }

  v357 = v428;
  v358 = v429;
  v359 = v430;
  v353 = v424;
  v354 = v425;
  v355 = v426;
  v356 = v427;
  v349 = v420;
  v350 = v421;
  v351 = v422;
  v352 = v423;
  v347 = v418;
  v348 = v419;
  v45 = [objc_opt_self() quantityTypeForIdentifier:HKQuantityTypeIdentifierAppleStandTime];
  if (!v45)
  {
    goto LABEL_14;
  }

  v46 = v1;
  v207 = v45;
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  *v35 = static OS_dispatch_queue.main.getter();
  v47 = v234;
  v48 = v235;
  (*(v234 + 104))(v35, enum case for DispatchPredicate.notOnQueue(_:), v235);
  v49 = _dispatchPreconditionTest(_:)();
  (*(v47 + 8))(v35, v48);
  if ((v49 & 1) == 0)
  {
    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_11;
  }

  sub_10003C91C(v208, v209, &v362);
  v235 = v46;
  v50 = type metadata accessor for Calendar();
  v51 = *(*(v50 - 8) + 56);
  v432 = v50;
  v51(v224, 1, 1);
  v52 = type metadata accessor for TimeZone();
  (*(*(v52 - 8) + 56))(v225, 1, 1, v52);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  if (qword_1008DA540 != -1)
  {
    goto LABEL_38;
  }

LABEL_11:
  sub_10001AC90(v432, qword_100924FE8);
  v53 = v233;
  Calendar.startOfDay(for:)();
  v54 = v226;
  v55 = v227;
  result = (v227[13])(v226, enum case for Calendar.Component.day(_:), v232);
  if (!__OFSUB__(0, v208))
  {
    v56 = v229;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    (v55)[1](v54, v232);
    v57 = v230;
    v58 = v56;
    v59 = v231;
    if ((*(v230 + 48))(v58, 1, v231) == 1)
    {
      sub_10000EA04(&v362, &qword_1008E5710, &unk_1006E1760);
      (*(v57 + 8))(v53, v59);
      (*(v220 + 8))(v236, v221);
      sub_10000EA04(v229, &unk_1008F73A0, &unk_1006DB450);

LABEL_14:
      sub_10000EA04(v360, &qword_1008E5710, &unk_1006E1760);
      goto LABEL_15;
    }

    v232 = v42;
    v432 = 0;
    v226 = *(v57 + 32);
    v227 = (v57 + 32);
    (v226)(v222, v229, v59);
    Calendar.startOfDay(for:)();
    v229 = [objc_opt_self() minuteUnit];
    *&v234 = dispatch_semaphore_create(0);
    v60 = [objc_opt_self() _predicateForObjectsFromAppleWatches];
    *&v305[0] = 0x3A73646E6572545BLL;
    *(&v305[0] + 1) = 0xE900000000000020;
    v225 = v60;
    v61 = [v207 identifier];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65._countAndFlagsBits = v62;
    v65._object = v64;
    String.append(_:)(v65);

    v66._countAndFlagsBits = 93;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    v401 = v371;
    v402 = v372;
    v403 = v373;
    v397 = v367;
    v398 = v368;
    v399 = v369;
    v400 = v370;
    v393 = v363;
    v394 = v364;
    v395 = v365;
    v396 = v366;
    v67 = *(&v305[0] + 1);
    v68 = *&v305[0];
    v404 = v374;
    v392 = v362;
    if (sub_100013184(&v392) == 1)
    {
      v69 = static os_log_type_t.default.getter();
      v70 = HKLogActivity;
      os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "Asked to divide by hours worn, but none found!", 46, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v414 = v401;
      v415 = v402;
      v416 = v403;
      v417 = v404;
      v410 = v397;
      v411 = v398;
      v412 = v399;
      v413 = v400;
      v406 = v393;
      v407 = v394;
      v408 = v395;
      v409 = v396;
      v405 = v392;
      v71 = static os_log_type_t.default.getter();
      v72 = HKLogActivity;
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_1006D46C0;
      *&v305[0] = 0;
      *(&v305[0] + 1) = 0xE000000000000000;
      v74 = v67;
      v75 = v72;
      _StringGuts.grow(_:)(17);
      v304[0] = v305[0];
      v76._countAndFlagsBits = v68;
      v76._object = v74;
      String.append(_:)(v76);
      v77._countAndFlagsBits = 0x77207372756F4820;
      v77._object = 0xED0000203A6E726FLL;
      String.append(_:)(v77);
      v305[9] = v414;
      v305[10] = v415;
      v305[11] = v416;
      LOBYTE(v305[12]) = v417;
      v305[5] = v410;
      v305[6] = v411;
      v305[7] = v412;
      v305[8] = v413;
      v305[1] = v406;
      v305[2] = v407;
      v305[3] = v408;
      v305[4] = v409;
      v305[0] = v405;
      _print_unlocked<A, B>(_:_:)();
      v78 = *&v304[0];
      v79 = v68;
      v80 = *(&v304[0] + 1);
      *(v73 + 56) = &type metadata for String;
      *(v73 + 64) = sub_10000A788();
      *(v73 + 32) = v78;
      *(v73 + 40) = v80;
      v68 = v79;
      os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v75, "%{public}@", 10, 2, v73);

      v67 = v74;
    }

    v206 = v67;
    v224 = v68;
    v81 = static os_log_type_t.default.getter();
    v82 = HKLogActivity;
    v201 = sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v83 = swift_allocObject();
    v200 = xmmword_1006D46C0;
    *(v83 + 16) = xmmword_1006D46C0;
    *&v305[0] = 0;
    *(&v305[0] + 1) = 0xE000000000000000;
    v84 = v82;
    _StringGuts.grow(_:)(16);

    *&v305[0] = v68;
    *(&v305[0] + 1) = v67;
    v85._countAndFlagsBits = 0x6163696465725020;
    v85._object = 0xEC000000203A6574;
    String.append(_:)(v85);
    v86 = v225;
    v87 = [v225 description];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v91._countAndFlagsBits = v88;
    v91._object = v90;
    String.append(_:)(v91);

    v92 = v305[0];
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_10000A788();
    *(v83 + 32) = v92;
    os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v84, "%{public}@", 10, 2, v83);

    v93 = objc_allocWithZone(HKStatisticsCollectionQuery);
    v94 = v86;
    v95 = v233;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v97 = DateComponents._bridgeToObjectiveC()().super.isa;
    v205 = [v93 initWithQuantityType:v207 quantitySamplePredicate:v94 options:80 anchorDate:isa intervalComponents:v97];
    v225 = v94;

    v98 = swift_allocObject();
    sub_100011DA0(v345);
    v99 = v345[11];
    *(v98 + 176) = v345[10];
    *(v98 + 192) = v99;
    *(v98 + 208) = v346;
    v100 = v345[7];
    *(v98 + 112) = v345[6];
    *(v98 + 128) = v100;
    v101 = v345[9];
    *(v98 + 144) = v345[8];
    *(v98 + 160) = v101;
    v102 = v345[3];
    *(v98 + 48) = v345[2];
    *(v98 + 64) = v102;
    v103 = v345[5];
    *(v98 + 80) = v345[4];
    *(v98 + 96) = v103;
    v104 = v345[1];
    *(v98 + 16) = v345[0];
    *(v98 + 32) = v104;
    v105 = v231;
    v106 = v230 + 16;
    v107 = *(v230 + 16);
    v107(v218, v228, v231);
    v107(v219, v95, v105);
    v108 = *(v106 + 64);
    v109 = (v108 + 32) & ~v108;
    v110 = (v211 + v108 + v109) & ~v108;
    v111 = v110 + v211;
    v112 = (v110 + v211 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = (v110 + v211 + 23) & 0xFFFFFFFFFFFFFFF8;
    v211 = (v110 + v211 + 223) & 0xFFFFFFFFFFFFFFF8;
    v204 = (v111 + 239) & 0xFFFFFFFFFFFFFFF8;
    v202 = v113;
    v203 = (v204 + 23) & 0xFFFFFFFFFFFFFFF8;
    v114 = swift_allocObject();
    v115 = v234;
    *(v114 + 16) = v207;
    *(v114 + 24) = v115;
    v116 = v114 + v109;
    v117 = v226;
    (v226)(v116, v218, v105);
    (v117)(v114 + v110, v219, v105);
    v118 = v114 + v112;
    *v118 = 80;
    *(v118 + 8) = 1;
    v119 = v114 + v202;
    v120 = v365;
    *(v119 + 32) = v364;
    *(v119 + 48) = v120;
    v121 = v363;
    *v119 = v362;
    *(v119 + 16) = v121;
    v122 = v369;
    *(v119 + 96) = v368;
    *(v119 + 112) = v122;
    v123 = v367;
    *(v119 + 64) = v366;
    *(v119 + 80) = v123;
    *(v119 + 192) = v374;
    v124 = v373;
    *(v119 + 160) = v372;
    *(v119 + 176) = v124;
    v125 = v371;
    *(v119 + 128) = v370;
    *(v119 + 144) = v125;
    v126 = v114 + v211;
    v127 = v229;
    *v126 = v229;
    *(v126 + 8) = 1;
    v128 = (v114 + v204);
    v129 = v206;
    *v128 = v224;
    v128[1] = v129;
    v130 = v114 + v203;
    *v130 = v98;
    *(v130 + 8) = 2;
    *&v305[2] = sub_100011DC4;
    *(&v305[2] + 1) = v114;
    *&v305[0] = _NSConcreteStackBlock;
    *(&v305[0] + 1) = 1107296256;
    *&v305[1] = sub_100018C74;
    *(&v305[1] + 1) = &unk_10084E1C8;
    v131 = _Block_copy(v305);
    v227 = v207;
    v226 = v234;
    *&v234 = v127;

    sub_10000B210(sub_100011DC4, v114);

    v132 = v205;
    [v205 setInitialResultsHandler:v131];
    _Block_release(v131);

    v133 = v132;
    v134 = String._bridgeToObjectiveC()();
    [v133 setDebugIdentifier:v134];

    [*(v235 + 2) executeQuery:v133];
    v135 = v212;
    static DispatchTime.now()();
    v137 = v213;
    v136 = v214;
    *v213 = 15;
    v138 = v215;
    (*(v136 + 104))(v137, enum case for DispatchTimeInterval.seconds(_:), v215);
    v139 = v216;
    + infix(_:_:)();
    (*(v136 + 8))(v137, v138);
    v140 = v223 + 8;
    v141 = v226;
    v142 = v217;
    v229 = *(v223 + 8);
    (v229)(v135, v217);
    OS_dispatch_semaphore.wait(timeout:)();
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v143 = static os_log_type_t.default.getter();
      v144 = HKLogActivity;
      v145 = swift_allocObject();
      *(v145 + 16) = v200;
      v223 = v140;
      *(v145 + 56) = sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);
      *(v145 + 64) = sub_10025F118(&qword_1008E3FF0, &qword_1008DEE18, HKQuantityType_ptr);
      v146 = v227;
      *(v145 + 32) = v227;
      v147 = v146;
      v148 = v144;
      os_log(_:dso:log:_:_:)(v143, &_mh_execute_header, v148, "Semaphore wait timed out fetching statistics for quantity type %@", 65, 2, v145);

      sub_10025F0BC();
      swift_allocError();
      swift_willThrow();
      v149 = v225;

      (v229)(v216, v217);
      v150 = v231;
      v151 = *(v230 + 8);
      v151(v228, v231);
      v151(v222, v150);
      v151(v233, v150);
      (*(v220 + 8))(v236, v221);

      sub_100038238(v232);

      return sub_10000EA04(v360, &qword_1008E5710, &unk_1006E1760);
    }

    v152 = v225;

    (v229)(v139, v142);
    v153 = v231;
    v154 = *(v230 + 8);
    v154(v228, v231);
    v154(v222, v153);
    v154(v233, v153);
    (*(v220 + 8))(v236, v221);
    swift_beginAccess();
    v155 = *(v98 + 144);
    v328 = *(v98 + 160);
    v156 = *(v98 + 192);
    v329 = *(v98 + 176);
    v330 = v156;
    v157 = *(v98 + 80);
    v324 = *(v98 + 96);
    v158 = *(v98 + 128);
    v325 = *(v98 + 112);
    v326 = v158;
    v327 = v155;
    v159 = *(v98 + 16);
    v320 = *(v98 + 32);
    v160 = *(v98 + 64);
    v321 = *(v98 + 48);
    v322 = v160;
    v323 = v157;
    v331 = *(v98 + 208);
    v319 = v159;
    sub_10001B104(&v319, v305, &qword_1008E5710, &unk_1006E1760);

    v341 = v328;
    v342 = v329;
    v343 = v330;
    v344 = v331;
    v338 = v325;
    v339 = v326;
    v340 = v327;
    v334 = v321;
    v335 = v322;
    v336 = v323;
    v337 = v324;
    v332 = v319;
    v333 = v320;
    if (sub_100013184(&v332) != 1)
    {
      v161 = v210;
      if (v210)
      {
        v162 = 70;
      }

      else
      {
        v162 = 52;
      }

      v164 = v208;
      v163 = v209;
      sub_100018DEC(v162, v208, v209, v375);
      v388 = v375[9];
      v389 = v375[10];
      v390 = v375[11];
      v384 = v375[5];
      v385 = v375[6];
      v386 = v375[7];
      v387 = v375[8];
      v380 = v375[1];
      v381 = v375[2];
      v382 = v375[3];
      v383 = v375[4];
      v391 = v376;
      v379 = v375[0];
      v165 = sub_100013184(&v379);
      v166 = v232;
      if (v165 == 1)
      {
        sub_100038238(v232);
      }

      else
      {
        v315 = v388;
        v316 = v389;
        v317 = v390;
        v318 = v391;
        v311 = v384;
        v312 = v385;
        v313 = v386;
        v314 = v387;
        v307 = v380;
        v308 = v381;
        v309 = v382;
        v310 = v383;
        if (v161)
        {
          v167 = 71;
        }

        else
        {
          v167 = 37;
        }

        v306 = v379;
        sub_100018DEC(v167, v164, v163, v377);
        if (sub_100013184(v377) != 1)
        {
          v304[109] = v377[9];
          v304[110] = v377[10];
          v304[111] = v377[11];
          LOBYTE(v304[112]) = v378;
          v304[105] = v377[5];
          v304[106] = v377[6];
          v304[107] = v377[7];
          v304[108] = v377[8];
          v304[101] = v377[1];
          v304[102] = v377[2];
          v304[103] = v377[3];
          v304[104] = v377[4];
          v304[100] = v377[0];
          v168 = *(v166 + 176);
          v249 = *(v166 + 160);
          v250 = v168;
          v251 = *(v166 + 192);
          v169 = *(v166 + 112);
          v245 = *(v166 + 96);
          v246 = v169;
          v170 = *(v166 + 144);
          v247 = *(v166 + 128);
          v248 = v170;
          v171 = *(v166 + 48);
          v241 = *(v166 + 32);
          v242 = v171;
          v172 = *(v166 + 80);
          v243 = *(v166 + 64);
          v244 = v172;
          v173 = *(v166 + 16);
          v239 = *v166;
          v240 = v173;
          v174 = *(v166 + 576);
          v262 = *(v166 + 560);
          v263 = v174;
          v264 = *(v166 + 592);
          v175 = *(v166 + 512);
          v258 = *(v166 + 496);
          v259 = v175;
          v176 = *(v166 + 544);
          v260 = *(v166 + 528);
          v261 = v176;
          v177 = *(v166 + 448);
          v254 = *(v166 + 432);
          v255 = v177;
          v178 = *(v166 + 480);
          v256 = *(v166 + 464);
          v257 = v178;
          v179 = *(v166 + 416);
          v252 = *(v166 + 400);
          v253 = v179;
          v180 = *(v166 + 976);
          v275 = *(v166 + 960);
          v276 = v180;
          v277 = *(v166 + 992);
          v181 = *(v166 + 912);
          v271 = *(v166 + 896);
          v272 = v181;
          v182 = *(v166 + 944);
          v273 = *(v166 + 928);
          v274 = v182;
          v183 = *(v166 + 848);
          v267 = *(v166 + 832);
          v268 = v183;
          v184 = *(v166 + 880);
          v269 = *(v166 + 864);
          v270 = v184;
          v185 = *(v166 + 816);
          v265 = *(v166 + 800);
          v266 = v185;
          v186 = *(v166 + 1344);
          v187 = *(v166 + 1376);
          v288 = *(v166 + 1360);
          v289 = v187;
          v290 = *(v166 + 1392);
          v188 = *(v166 + 1280);
          v189 = *(v166 + 1312);
          v284 = *(v166 + 1296);
          v285 = v189;
          v286 = *(v166 + 1328);
          v287 = v186;
          v190 = *(v166 + 1216);
          v191 = *(v166 + 1248);
          v280 = *(v166 + 1232);
          v281 = v191;
          v282 = *(v166 + 1264);
          v283 = v188;
          v278 = *(v166 + 1200);
          v279 = v190;
          v192 = *(v166 + 1576);
          v301 = *(v166 + 1560);
          v302 = v192;
          v303 = *(v166 + 1592);
          v193 = *(v166 + 1512);
          v297 = *(v166 + 1496);
          v298 = v193;
          v194 = *(v166 + 1544);
          v299 = *(v166 + 1528);
          v300 = v194;
          v195 = *(v166 + 1448);
          v293 = *(v166 + 1432);
          v294 = v195;
          v196 = *(v166 + 1480);
          v295 = *(v166 + 1464);
          v296 = v196;
          v197 = *(v166 + 1416);
          v291 = *(v166 + 1400);
          v292 = v197;
          v235 = &v305[112] + 8;
          v236 = *(v166 + 1600);
          v234 = *(v166 + 1616);
          sub_10003E4F0(&v239, v238);
          sub_10003E4F0(&v252, v238);
          sub_10003E4F0(&v265, v238);
          sub_10003E4F0(&v278, v238);
          sub_10003E4F0(&v291, v238);
          sub_100038238(v166);
          v304[9] = v248;
          v304[10] = v249;
          v304[11] = v250;
          LOBYTE(v304[12]) = v251;
          v304[5] = v244;
          v304[6] = v245;
          v304[7] = v246;
          v304[8] = v247;
          v304[1] = v240;
          v304[2] = v241;
          v304[3] = v242;
          v304[4] = v243;
          v304[0] = v239;
          *(&v304[22] + 8) = v262;
          *(&v304[23] + 8) = v263;
          *(&v304[18] + 8) = v258;
          *(&v304[19] + 8) = v259;
          *(&v304[20] + 8) = v260;
          *(&v304[21] + 8) = v261;
          *(&v304[16] + 8) = v256;
          *(&v304[17] + 8) = v257;
          BYTE8(v304[24]) = v264;
          *(&v304[13] + 8) = v253;
          *(&v304[14] + 8) = v254;
          *(&v304[15] + 8) = v255;
          *(&v304[12] + 8) = v252;
          v304[35] = v275;
          v304[36] = v276;
          LOBYTE(v304[37]) = v277;
          v304[31] = v271;
          v304[32] = v272;
          v304[33] = v273;
          v304[34] = v274;
          v304[27] = v267;
          v304[28] = v268;
          v304[29] = v269;
          v304[30] = v270;
          v304[25] = v265;
          v304[26] = v266;
          *(&v304[47] + 8) = v288;
          *(&v304[48] + 8) = v289;
          *(&v304[43] + 8) = v284;
          *(&v304[44] + 8) = v285;
          *(&v304[45] + 8) = v286;
          *(&v304[46] + 8) = v287;
          *(&v304[39] + 8) = v280;
          *(&v304[40] + 8) = v281;
          *(&v304[41] + 8) = v282;
          *(&v304[42] + 8) = v283;
          *(&v304[37] + 8) = v278;
          *(&v304[38] + 8) = v279;
          BYTE8(v304[49]) = v290;
          v304[60] = v301;
          v304[61] = v302;
          LOBYTE(v304[62]) = v303;
          v304[56] = v297;
          v304[57] = v298;
          v304[58] = v299;
          v304[59] = v300;
          v304[52] = v293;
          v304[53] = v294;
          v304[54] = v295;
          v304[55] = v296;
          v304[50] = v291;
          v304[51] = v292;
          *(&v304[72] + 8) = v357;
          *(&v304[73] + 8) = v358;
          *(&v304[68] + 8) = v353;
          *(&v304[69] + 8) = v354;
          *(&v304[70] + 8) = v355;
          *(&v304[71] + 8) = v356;
          *(&v304[64] + 8) = v349;
          *(&v304[65] + 8) = v350;
          *(&v304[66] + 8) = v351;
          *(&v304[67] + 8) = v352;
          *(&v304[62] + 8) = v347;
          *(&v304[63] + 8) = v348;
          BYTE8(v304[74]) = v359;
          v304[84] = v341;
          v304[85] = v342;
          v304[86] = v343;
          LOBYTE(v304[87]) = v344;
          v304[80] = v337;
          v304[81] = v338;
          v304[82] = v339;
          v304[83] = v340;
          v304[76] = v333;
          v304[77] = v334;
          v304[78] = v335;
          v304[79] = v336;
          v304[75] = v332;
          *(&v304[97] + 8) = v316;
          *(&v304[98] + 8) = v317;
          *(&v304[93] + 8) = v312;
          *(&v304[94] + 8) = v313;
          *(&v304[95] + 8) = v314;
          *(&v304[96] + 8) = v315;
          *(&v304[89] + 8) = v308;
          *(&v304[90] + 8) = v309;
          *(&v304[91] + 8) = v310;
          *(&v304[92] + 8) = v311;
          *(&v304[87] + 8) = v306;
          *(&v304[88] + 8) = v307;
          BYTE8(v304[99]) = v318;
          memcpy(v305, v304, 0x708uLL);
          v198 = v235;
          v199 = v234;
          *v235 = v236;
          *(v198 + 1) = v199;
          ASFriendListDisplayMode.id.getter();
          memcpy(v431, v305, 0x728uLL);
          return memcpy(v237, v431, 0x728uLL);
        }

        sub_100038238(v166);
        sub_10000EA04(v375, &qword_1008E5710, &unk_1006E1760);
      }

      sub_10000EA04(&v319, &qword_1008E5710, &unk_1006E1760);
      sub_10000EA04(v360, &qword_1008E5710, &unk_1006E1760);
LABEL_16:
      sub_10025F0B4(v431);
      return memcpy(v237, v431, 0x728uLL);
    }

    sub_10000EA04(v360, &qword_1008E5710, &unk_1006E1760);
    v42 = v232;
LABEL_15:
    sub_100038238(v42);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100015250()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 209, 7);
}

uint64_t type metadata accessor for ActivityStatisticsCollection(uint64_t a1)
{
  result = qword_1008F59E0;
  if (!qword_1008F59E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015308@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v61 = a3;
  v4 = sub_100140278(&qword_1008DE590, &qword_1006D7D10);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  v7 = type metadata accessor for DateInterval();
  v56 = *(v7 - 8);
  __chkstk_darwin(v7);
  v55 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for Calendar.Component();
  v9 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v11 - 8);
  v59 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v48 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v53 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v52 = v48 - v20;
  __chkstk_darwin(v21);
  v54 = v48 - v22;
  __chkstk_darwin(v23);
  v60 = v48 - v24;
  __chkstk_darwin(v25);
  v27 = v48 - v26;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Calendar();
  sub_10001AC90(v28, qword_100924FE8);
  Calendar.startOfDay(for:)();
  v29 = *(v9 + 104);
  LODWORD(v58) = enum case for Calendar.Component.day(_:);
  v57 = v29;
  result = v29(v62);
  if (!__OFSUB__(0, a1))
  {
    v50 = v6;
    v51 = v7;
    v31 = v62;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v32 = *(v9 + 8);
    v32(v31, v63);
    v33 = *(v17 + 48);
    if (v33(v15, 1, v16) == 1)
    {
      (*(v17 + 8))(v27, v16);
    }

    else
    {
      v49 = v32;
      v34 = v27;
      v48[0] = *(v17 + 32);
      v48[1] = v17 + 32;
      (v48[0])(v60, v15, v16);
      v36 = v62;
      v35 = v63;
      v57(v62, v58, v63);
      v37 = v59;
      v58 = v34;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v49(v36, v35);
      if (v33(v37, 1, v16) != 1)
      {
        v40 = v54;
        (v48[0])(v54, v37, v16);
        v41 = *(v17 + 16);
        v42 = v60;
        v41(v52, v60, v16);
        v41(v53, v40, v16);
        v43 = v55;
        DateInterval.init(start:end:)();
        v44 = type metadata accessor for DateComponents();
        v45 = v50;
        (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
        sub_100016008(v43, v45, v61);
        sub_10000EA04(v45, &qword_1008DE590, &qword_1006D7D10);
        (*(v56 + 8))(v43, v51);
        v46 = *(v17 + 8);
        v46(v40, v16);
        v46(v42, v16);
        v46(v58, v16);
        v39 = 0;
        goto LABEL_10;
      }

      v38 = *(v17 + 8);
      v38(v60, v16);
      v38(v58, v16);
      v15 = v37;
    }

    sub_10000EA04(v15, &unk_1008F73A0, &unk_1006DB450);
    v39 = 1;
LABEL_10:
    v47 = type metadata accessor for ActivityStatisticsCollection(0);
    return (*(*(v47 - 8) + 56))(v61, v39, 1, v47);
  }

  __break(1u);
  return result;
}

void *sub_10001599C(uint64_t a1)
{
  v45 = type metadata accessor for Calendar.Component();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  DateInterval.start.getter();
  v43 = a1;
  DateInterval.end.getter();
  v41 = sub_100018D5C(&qword_1008E4080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v17 = *(v8 + 8);
  v42 = v13;
  v46 = v8 + 8;
  v17(v13, v7);
  if (a1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_3:
    v17(v16, v7);
  }

  else
  {
    v38 = *(v8 + 16);
    v47 = v8 + 32;
    v37 = enum case for Calendar.Component.day(_:);
    v35 = (v2 + 8);
    v36 = (v2 + 104);
    v18 = _swiftEmptyArrayStorage;
    v39 = v8 + 16;
    v40 = v17;
    v33 = v8;
    v34 = (v8 + 48);
    while (1)
    {
      v38(v10, v16, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10001AC68(0, v18[2] + 1, 1, v18);
      }

      v20 = v18[2];
      v19 = v18[3];
      if (v20 >= v19 >> 1)
      {
        v18 = sub_10001AC68((v19 > 1), v20 + 1, 1, v18);
      }

      v21 = v6;
      v18[2] = v20 + 1;
      v22 = v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20;
      v23 = *(v8 + 32);
      v24 = v10;
      v23(v22, v10, v7);
      if (qword_1008DA540 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Calendar();
      sub_10001AC90(v25, qword_100924FE8);
      v26 = v44;
      v27 = v45;
      (*v36)(v44, v37, v45);
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v28 = v26;
      v6 = v21;
      (*v35)(v28, v27);
      v17 = v40;
      v40(v16, v7);
      if ((*v34)(v21, 1, v7) == 1)
      {
        break;
      }

      v23(v16, v21, v7);
      v29 = v42;
      DateInterval.end.getter();
      v30 = dispatch thunk of static Comparable.< infix(_:_:)();
      v17(v29, v7);
      v10 = v24;
      v8 = v33;
      if (v30)
      {
        goto LABEL_3;
      }
    }

    sub_10000EA04(v21, &unk_1008F73A0, &unk_1006DB450);
  }

  return v18;
}

uint64_t sub_100015E80(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100140278(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_100015EE8(uint64_t a1)
{
  v2 = sub_10001ACC8(a1);
  v3 = v2[2];
  if (v3)
  {
    sub_10001E898(0, v3, 0);
    v4 = *(v1 + 24);
    v5 = 4;
    do
    {
      v6 = v2[v5];
      v7 = [v4 activitySummaryForCacheIndex:v6];
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        v11 = v7;
        sub_10001E898((v8 > 1), v9 + 1, 1);
        v7 = v11;
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100016008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v5 = type metadata accessor for DateInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100015EE8(a1);
  sub_10001B17C(a1, v8);
  sub_10001B5CC(v9, 0, &v85);
  sub_10003E54C(v9, 0, &v98);
  sub_10003F184(v9, 2, &v111);
  sub_10003FDBC(v9, 2, &v124);
  sub_100038294(v9, 5, &v137);
  sub_100038ECC(v9, 5, &v150);
  sub_100039B04(v9, 1, v163);
  sub_10003A73C(v9, 5, v165);

  v10 = *(v86 + 16);
  if (!v10)
  {
LABEL_34:
    v84 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_35:
    (*(v6 + 8))(v8, v5);
    v33 = type metadata accessor for ActivityStatisticsCollection(0);
    result = sub_10001B104(v83, a3 + *(v33 + 64), &qword_1008DE590, &qword_1006D7D10);
    v34 = v96;
    *(a3 + 160) = v95;
    *(a3 + 176) = v34;
    *(a3 + 192) = v97;
    v35 = v92;
    *(a3 + 96) = v91;
    *(a3 + 112) = v35;
    v36 = v94;
    *(a3 + 128) = v93;
    *(a3 + 144) = v36;
    v37 = v88;
    *(a3 + 32) = v87;
    *(a3 + 48) = v37;
    v38 = v90;
    *(a3 + 64) = v89;
    *(a3 + 80) = v38;
    v39 = v86;
    *a3 = v85;
    *(a3 + 16) = v39;
    v40 = v109;
    *(a3 + 360) = v108;
    *(a3 + 376) = v40;
    *(a3 + 392) = v110;
    v41 = v105;
    *(a3 + 296) = v104;
    *(a3 + 312) = v41;
    v42 = v107;
    *(a3 + 328) = v106;
    *(a3 + 344) = v42;
    v43 = v98;
    *(a3 + 216) = v99;
    v44 = v101;
    *(a3 + 232) = v100;
    *(a3 + 248) = v44;
    v45 = v103;
    *(a3 + 264) = v102;
    *(a3 + 280) = v45;
    *(a3 + 200) = v43;
    v46 = v122;
    *(a3 + 560) = v121;
    *(a3 + 576) = v46;
    *(a3 + 592) = v123;
    v47 = v118;
    *(a3 + 496) = v117;
    *(a3 + 512) = v47;
    v48 = v120;
    *(a3 + 528) = v119;
    *(a3 + 544) = v48;
    v49 = v114;
    *(a3 + 432) = v113;
    *(a3 + 448) = v49;
    v50 = v116;
    *(a3 + 464) = v115;
    *(a3 + 480) = v50;
    v51 = v112;
    *(a3 + 400) = v111;
    *(a3 + 416) = v51;
    v52 = v135;
    *(a3 + 760) = v134;
    *(a3 + 776) = v52;
    *(a3 + 792) = v136;
    v53 = v131;
    *(a3 + 696) = v130;
    *(a3 + 712) = v53;
    v54 = v133;
    *(a3 + 728) = v132;
    *(a3 + 744) = v54;
    v55 = v127;
    *(a3 + 632) = v126;
    *(a3 + 648) = v55;
    v56 = v129;
    *(a3 + 664) = v128;
    *(a3 + 680) = v56;
    v57 = v125;
    *(a3 + 600) = v124;
    *(a3 + 616) = v57;
    v58 = v148;
    *(a3 + 960) = v147;
    *(a3 + 976) = v58;
    *(a3 + 992) = v149;
    v59 = v144;
    *(a3 + 896) = v143;
    *(a3 + 912) = v59;
    v60 = v146;
    *(a3 + 928) = v145;
    *(a3 + 944) = v60;
    v61 = v140;
    *(a3 + 832) = v139;
    *(a3 + 848) = v61;
    v62 = v142;
    *(a3 + 864) = v141;
    *(a3 + 880) = v62;
    v63 = v138;
    *(a3 + 800) = v137;
    *(a3 + 816) = v63;
    v64 = v161;
    *(a3 + 1160) = v160;
    *(a3 + 1176) = v64;
    *(a3 + 1192) = v162;
    v65 = v157;
    *(a3 + 1096) = v156;
    *(a3 + 1112) = v65;
    v66 = v159;
    *(a3 + 1128) = v158;
    *(a3 + 1144) = v66;
    v67 = v153;
    *(a3 + 1032) = v152;
    *(a3 + 1048) = v67;
    v68 = v155;
    *(a3 + 1064) = v154;
    *(a3 + 1080) = v68;
    v69 = v151;
    *(a3 + 1000) = v150;
    *(a3 + 1016) = v69;
    v70 = v163[8];
    *(a3 + 1344) = v163[9];
    v71 = v163[11];
    *(a3 + 1360) = v163[10];
    *(a3 + 1376) = v71;
    *(a3 + 1392) = v164;
    v72 = v163[4];
    *(a3 + 1280) = v163[5];
    v73 = v163[7];
    *(a3 + 1296) = v163[6];
    *(a3 + 1312) = v73;
    *(a3 + 1328) = v70;
    v74 = v163[0];
    *(a3 + 1216) = v163[1];
    v75 = v163[3];
    *(a3 + 1232) = v163[2];
    *(a3 + 1248) = v75;
    *(a3 + 1264) = v72;
    *(a3 + 1200) = v74;
    v76 = v165[9];
    v77 = v165[11];
    *(a3 + 1560) = v165[10];
    *(a3 + 1576) = v77;
    *(a3 + 1592) = v166;
    v78 = v165[5];
    v79 = v165[7];
    *(a3 + 1496) = v165[6];
    *(a3 + 1512) = v79;
    *(a3 + 1528) = v165[8];
    *(a3 + 1544) = v76;
    v80 = v165[1];
    v81 = v165[3];
    *(a3 + 1432) = v165[2];
    *(a3 + 1448) = v81;
    *(a3 + 1464) = v165[4];
    *(a3 + 1480) = v78;
    *(a3 + 1400) = v165[0];
    *(a3 + 1416) = v80;
    *(a3 + 1600) = v14;
    *(a3 + 1608) = v13;
    *(a3 + 1616) = v12;
    *(a3 + 1624) = v84;
    return result;
  }

  v11 = 0;
  v84 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(v99 + 16);
  result = *(v112 + 16);
  v18 = *(v125 + 16);
  v19 = *(v138 + 16);
  v20 = *(v151 + 16);
  while (1)
  {
    v21 = 0.0;
    if (v15 >= v16)
    {
      v23 = 1;
      v22 = 0.0;
      if (v15 < result)
      {
LABEL_6:
        v21 = *(v112 + v11 + 32);
        v24 = *(v112 + v11 + 48);
        goto LABEL_9;
      }
    }

    else
    {
      v22 = *(v99 + v11 + 32);
      v23 = *(v99 + v11 + 48);
      if (v15 < result)
      {
        goto LABEL_6;
      }
    }

    v24 = 1;
LABEL_9:
    v25 = 0.0;
    if (v15 >= v18)
    {
      v27 = 1;
      v26 = 0.0;
      if (v15 < v19)
      {
LABEL_11:
        v25 = *(v138 + v11 + 32);
        v28 = *(v138 + v11 + 48);
        if (v15 >= v20)
        {
          goto LABEL_15;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v26 = *(v125 + v11 + 32);
      v27 = *(v125 + v11 + 48);
      if (v15 < v19)
      {
        goto LABEL_11;
      }
    }

    v28 = 1;
    if (v15 >= v20)
    {
LABEL_15:
      v30 = 1;
      v29 = 0.0;
      goto LABEL_16;
    }

LABEL_12:
    v29 = *(v151 + v11 + 32);
    v30 = *(v151 + v11 + 48);
LABEL_16:
    if (*(v86 + v11 + 48) & 1) != 0 || (v23 & 1) != 0 || (v24 & 1) != 0 || (v27 & 1) != 0 || (v28 & 1) != 0 || (v30)
    {
      goto LABEL_3;
    }

    v31 = *(v86 + v11 + 32);
    if (v22 <= v31)
    {
      v32 = __OFADD__(v14++, 1);
      if (v32)
      {
        break;
      }
    }

    if (v26 <= v21)
    {
      v32 = __OFADD__(v13++, 1);
      if (v32)
      {
        goto LABEL_37;
      }
    }

    if (v29 <= v25)
    {
      v32 = __OFADD__(v12++, 1);
      if (v32)
      {
        goto LABEL_38;
      }
    }

    if (v22 <= v31 && v26 <= v21 && v29 <= v25)
    {
      v32 = __OFADD__(v84++, 1);
      if (v32)
      {
        __break(1u);
        goto LABEL_34;
      }
    }

LABEL_3:
    ++v15;
    v11 += 24;
    if (v10 == v15)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_10001668C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, char a9, __int128 *a10, void *a11, unsigned __int8 a12, uint64_t a13, void *a14, uint64_t a15, unsigned __int8 a16)
{
  v257 = a8;
  v231 = type metadata accessor for Calendar.Component();
  v22 = *(v231 - 8);
  __chkstk_darwin(v231);
  v254 = &v220 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100140278(&unk_1008E4020, &unk_1006E1788);
  __chkstk_darwin(v24 - 8);
  v26 = &v220 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v220 - v28;
  *&v259 = type metadata accessor for Date();
  __chkstk_darwin(v259);
  __chkstk_darwin(v30);
  __chkstk_darwin(v31);
  if (a2)
  {
    v245 = v22;
    v246 = v35;
    v250 = &v220 - v32;
    v251 = v34;
    v258 = v33;
    v255 = v29;
    v256 = v26;
    v228 = a5;
    v36 = swift_allocObject();
    v37 = a7;
    *(v36 + 16) = _swiftEmptyArrayStorage;
    v38 = (v36 + 16);
    v39 = a2;
    v252 = a6;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v253 = v37;
    v41 = Date._bridgeToObjectiveC()().super.isa;
    v42 = swift_allocObject();
    *(v42 + 16) = v257;
    *(v42 + 24) = v36;
    *&v295 = sub_10001E9E0;
    *(&v295 + 1) = v42;
    *&v293 = _NSConcreteStackBlock;
    *(&v293 + 1) = 1107296256;
    *&v294 = sub_10001E9E8;
    *(&v294 + 1) = &unk_10084E290;
    v43 = _Block_copy(&v293);
    v227 = v36;

    v226 = v39;
    [v39 enumerateStatisticsFromDate:isa toDate:v41 withBlock:v43];
    _Block_release(v43);

    v247 = (v36 + 16);
    if (a9)
    {
      v44 = a10[11];
      v303 = a10[10];
      v304 = v44;
      v305 = *(a10 + 192);
      v45 = a10[7];
      v299 = a10[6];
      v300 = v45;
      v46 = a10[9];
      v301 = a10[8];
      v302 = v46;
      v47 = a10[3];
      v295 = a10[2];
      v296 = v47;
      v48 = a10[5];
      v297 = a10[4];
      v298 = v48;
      v49 = a10[1];
      v293 = *a10;
      v294 = v49;
      if (sub_100013184(&v293) != 1)
      {
        v50 = v294;
        swift_beginAccess();
        v51 = *v38;
        v52 = *(*v38 + 16);
        v53 = _swiftEmptyArrayStorage;
        if (v52)
        {
          *&v272[0] = _swiftEmptyArrayStorage;

          specialized ContiguousArray.reserveCapacity(_:)();
          v54 = 0;
          v55 = *(v51 + 16);
          v56 = (v50 + 48);
          do
          {
            if (v55 == v54)
            {
LABEL_182:
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
              return;
            }

            v57 = *(v51 + 8 * v54 + 32);
            if (v57 && v54 < *(v50 + 16) && (*v56 & 1) == 0)
            {
              v58 = *(v56 - 2);
              v59 = v57;
              v60 = [v59 _unit];
              [v59 doubleValueForUnit:v60];
              v62 = [objc_opt_self() quantityWithUnit:v60 doubleValue:v61 / v58];
            }

            ++v54;
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v56 += 3;
          }

          while (v52 != v54);

          v53 = *&v272[0];
          v38 = v247;
        }

        *v38 = v53;
      }
    }

    v224 = a16;
    v222 = a14;
    v221 = a13;
    v223 = a12;
    v225 = a15;
    swift_beginAccess();
    v71 = *(*v38 + 16);
    v72 = v246;
    v73 = *(*&v246 + 16);
    v74 = v250;
    v75 = v259;
    v73(v250, v252, v259);
    v76 = v251;
    v73(v251, v253, v75);
    Date.timeIntervalSinceReferenceDate.getter();
    v78 = v77;
    Date.timeIntervalSinceReferenceDate.getter();
    sub_10001C204(v71, v276, v78, v79);
    v80 = v276[0];
    v233 = v276[1];
    v232 = v276[2];
    v237 = v278;
    v238 = v277;
    v81 = v279;
    v234 = v280;
    v82 = *(*&v72 + 8);
    v82(v76, v75);
    v252 = v82;
    v253 = *&v72 + 8;
    v82(v74, v75);
    v83 = v279;
    v84 = v277;
    v85 = v276[0];
    v86 = *(*v38 + 16);
    v87 = *v38 + 32;
    v257 = *v38;

    v88 = v81;
    v89 = 0;
    v249 = xmmword_1006D1F70;
    v250 = v87;
    v248 = v86;
LABEL_18:
    v235 = v88;
LABEL_19:
    v236 = v80;
    if (v89 != *&v86)
    {
      v90 = 24 * v89;
      v91 = v89;
      v251 = v85;
      do
      {
        if (v91 >= *(v257 + 16))
        {
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
          goto LABEL_182;
        }

        v99 = *(v87 + 8 * v91);
        if (v99)
        {
          v100 = v99;
          if ([v100 isCompatibleWithUnit:a11])
          {
            [v100 doubleValueForUnit:a11];
            if (v91 < *(v85 + 16))
            {
              v102 = v101;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v80 = v85;
              }

              else
              {
                v80 = sub_10057F5E0(v85);
              }

              if (v91 >= *(v80 + 2))
              {
                goto LABEL_185;
              }

              v103 = &v80[v90];
              v88 = v102;
              *(v103 + 4) = v102;
              *(v103 + 5) = 0x3FF0000000000000;
              v103[48] = 0;
              if (v84 >= v102)
              {
                v104 = v238;
              }

              else
              {
                v104 = v102;
              }

              v105 = v237;
              if (v84 < v102)
              {
                v105 = 1.0;
              }

              v237 = v105;
              v238 = v104;
              if (v84 < v102)
              {
                v84 = v102;
              }

              if (v83 < 0.0 || (v89 = v91 + 1, v85 = v80, v102 < v83))
              {
                v89 = v91 + 1;
                v234 = 1.0;
                v83 = v102;
                v85 = v80;
                goto LABEL_18;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v92 = static os_log_type_t.error.getter();
            v93 = HKLogActivity;
            sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
            v94 = swift_allocObject();
            *(v94 + 16) = v249;
            *(v94 + 56) = sub_1000059F8(0, &unk_1008DEED8, HKQuantity_ptr);
            *(v94 + 64) = sub_10025F118(&unk_1008E4040, &unk_1008DEED8, HKQuantity_ptr);
            *(v94 + 32) = v100;
            *(v94 + 96) = sub_1000059F8(0, &qword_1008DEED0, HKUnit_ptr);
            *(v94 + 104) = sub_10025F118(&unk_1008E4050, &qword_1008DEED0, HKUnit_ptr);
            *(v94 + 72) = a11;
            v95 = v100;
            v96 = v93;
            v97 = a11;
            v98 = v92;
            v86 = v248;
            v87 = v250;
            os_log(_:dso:log:_:_:)(v98, &_mh_execute_header, v96, "Error: sum %@ is not compatible with unit %@", 44, 2, v94);

            v85 = v251;
          }
        }

        ++v91;
        v90 += 24;
      }

      while (*&v86 != v91);
    }

    v106 = *v247;
    v107 = *(*v247 + 16);

    if (v107)
    {
      v108 = 0;
      v109 = 0.0;
      v110 = v231;
      while (1)
      {
        while (1)
        {
          if (v108 >= *(v106 + 16))
          {
            goto LABEL_179;
          }

          v111 = *(v106 + 32 + 8 * v108);
          if (v111)
          {
            break;
          }

LABEL_46:
          if (v107 == ++v108)
          {
            goto LABEL_54;
          }
        }

        v112 = v111;
        if (![v112 isCompatibleWithUnit:a11])
        {

          goto LABEL_46;
        }

        [v112 doubleValueForUnit:a11];
        v114 = v113;

        v109 = v109 + v114;
        if (v107 - 1 == v108++)
        {
          goto LABEL_54;
        }
      }
    }

    v109 = 0.0;
    v110 = v231;
LABEL_54:

    v116 = *v247;
    v117 = *(*v247 + 16);
    v118 = *v247 + 32;

    v119 = 0;
    v120 = 0;
    do
    {
      if (v119 == v117)
      {
        goto LABEL_64;
      }

      while (1)
      {
        if (v119 >= *(v116 + 16))
        {
          goto LABEL_178;
        }

        v121 = *(v118 + 8 * v119);
        if (v121)
        {
          if ([v121 isCompatibleWithUnit:a11])
          {
            break;
          }
        }

        if (v117 == ++v119)
        {
          goto LABEL_64;
        }
      }

      ++v119;
    }

    while (!__OFADD__(v120++, 1));
    __break(1u);
LABEL_64:

    if (v120 >= 1)
    {
      v123 = v109 / v120;
    }

    else
    {
      v123 = 0.0;
    }

    v229 = v120;
    v230 = v123;
    sub_10001C204(7, &v281, 0.0, 6.0);
    v250 = v281;
    v275 = v282;
    v124 = v283;
    v243 = v284;
    v125 = v285;
    v126 = v286;
    sub_10001C204(7, &v287, 0.0, 6.0);
    *&v249 = v287;
    v274 = v288;
    v127 = v289;
    v241 = v290;
    v128 = v291;
    v129 = v292;
    v313 = v236;
    v314 = v233;
    v315 = v232;
    v316 = v238;
    v317 = v237;
    v318 = v235;
    v319 = v234;
    v130 = sub_100058240();
    v131 = 0;
    v132 = (*&v246 + 32);
    v247 = v130;
    v133 = v130[2];
    v134 = (*&v245 + 104);
    v135 = (*&v245 + 8);
    LODWORD(v257) = enum case for Calendar.Component.weekday(_:);
    v245 = 0.0;
    v246 = v128;
    v242 = v127;
    v239 = v127;
    v240 = v124;
    v248 = v125;
    v244 = v124;
    v136 = v256;
    v251 = v133;
    while (1)
    {
      if (v131 == v133)
      {
        v141 = sub_100140278(&qword_1008DE5A0, &qword_1006D7D20);
        (*(*(v141 - 8) + 56))(v136, 1, 1, v141);
        v131 = v133;
      }

      else
      {
        if ((v131 & 0x8000000000000000) != 0)
        {
          goto LABEL_180;
        }

        if (v131 >= v247[2])
        {
          goto LABEL_181;
        }

        v142 = v247;
        v143 = sub_100140278(&qword_1008DE5A0, &qword_1006D7D20);
        v144 = *(v143 - 8);
        sub_10001B104(v142 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v131++, v136, &qword_1008DE5A0, &qword_1006D7D20);
        (*(v144 + 56))(v136, 0, 1, v143);
      }

      v145 = v136;
      v146 = v255;
      sub_100015E80(v145, v255, &unk_1008E4020, &unk_1006E1788);
      v147 = sub_100140278(&qword_1008DE5A0, &qword_1006D7D20);
      if ((*(*(v147 - 8) + 48))(v146, 1, v147) == 1)
      {

        if (v223)
        {
          v188 = static os_log_type_t.default.getter();
          v189 = HKLogActivity;
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v190 = swift_allocObject();
          v259 = xmmword_1006D46C0;
          *(v190 + 16) = xmmword_1006D46C0;
          *&v272[0] = 0;
          *(&v272[0] + 1) = 0xE000000000000000;
          v191 = v189;
          _StringGuts.grow(_:)(16);
          v192 = v222;

          v193 = v221;
          *&v272[0] = v221;
          *(&v272[0] + 1) = v192;
          v194._countAndFlagsBits = 0x72676F7473694820;
          v194._object = 0xEC000000203A6D61;
          String.append(_:)(v194);
          v306 = v236;
          v307 = v233;
          v308 = v232;
          v309 = v238;
          v310 = v237;
          v311 = v235;
          v312 = v234;
          v197._countAndFlagsBits = sub_100037B3C(v195, v196);
          String.append(_:)(v197);

          v198 = v272[0];
          *(v190 + 56) = &type metadata for String;
          v199 = sub_10000A788();
          *(v190 + 64) = v199;
          *(v190 + 32) = v198;
          os_log(_:dso:log:_:_:)(v188, &_mh_execute_header, v191, "%{public}@", 10, 2, v190);

          v200 = static os_log_type_t.default.getter();
          v201 = HKLogActivity;
          v202 = swift_allocObject();
          *(v202 + 16) = v259;
          *&v272[0] = 0;
          *(&v272[0] + 1) = 0xE000000000000000;
          v203 = v201;
          _StringGuts.grow(_:)(16);
          v204._countAndFlagsBits = v193;
          v204._object = v192;
          String.append(_:)(v204);
          v205._countAndFlagsBits = 0x6167657267674120;
          v205._object = 0xEC000000203A6574;
          String.append(_:)(v205);
          *&v260 = v230;
          *(&v260 + 1) = v229;
          _print_unlocked<A, B>(_:_:)();
          v206 = v272[0];
          *(v202 + 56) = &type metadata for String;
          *(v202 + 64) = v199;
          *(v202 + 32) = v206;
          os_log(_:dso:log:_:_:)(v200, &_mh_execute_header, v203, "%{public}@", 10, 2, v202);
        }

        v265 = v275;
        *(v268 + 8) = v274;
        *&v260 = v230;
        *(&v260 + 1) = v229;
        *&v261 = v236;
        *(&v261 + 1) = v233;
        *&v262 = v232;
        *(&v262 + 1) = v238;
        *&v263 = v237;
        *(&v263 + 1) = v235;
        *&v264 = v234;
        *(&v264 + 1) = v250;
        *&v266 = v244;
        *(&v266 + 1) = v243;
        *&v267 = v125;
        *(&v267 + 1) = v126;
        *&v268[0] = v249;
        *(&v268[1] + 1) = v242;
        *&v269 = v241;
        *(&v269 + 1) = v128;
        *&v270 = v129;
        *(&v270 + 1) = v245;
        v271 = v224;
        ASFriendListDisplayMode.id.getter();
        v207 = v225;
        swift_beginAccess();
        v208 = *(v207 + 192);
        v272[10] = *(v207 + 176);
        v272[11] = v208;
        v273 = *(v207 + 208);
        v209 = *(v207 + 128);
        v272[6] = *(v207 + 112);
        v272[7] = v209;
        v210 = *(v207 + 160);
        v272[8] = *(v207 + 144);
        v272[9] = v210;
        v211 = *(v207 + 64);
        v272[2] = *(v207 + 48);
        v272[3] = v211;
        v212 = *(v207 + 96);
        v272[4] = *(v207 + 80);
        v272[5] = v212;
        v213 = *(v207 + 32);
        v272[0] = *(v207 + 16);
        v272[1] = v213;
        v214 = v270;
        *(v207 + 176) = v269;
        *(v207 + 192) = v214;
        *(v207 + 208) = v271;
        v215 = v267;
        *(v207 + 112) = v266;
        *(v207 + 128) = v215;
        v216 = v268[1];
        *(v207 + 144) = v268[0];
        *(v207 + 160) = v216;
        v217 = v263;
        *(v207 + 48) = v262;
        *(v207 + 64) = v217;
        v218 = v265;
        *(v207 + 80) = v264;
        *(v207 + 96) = v218;
        v219 = v261;
        *(v207 + 16) = v260;
        *(v207 + 32) = v219;
        sub_10000EA04(v272, &qword_1008E5710, &unk_1006E1760);
        OS_dispatch_semaphore.signal()();

        return;
      }

      v148 = v146 + *(v147 + 48);
      v149 = *v148;
      v150 = *(v148 + 16);
      (*v132)(v258, v146, v259);
      if (qword_1008DA548 != -1)
      {
        swift_once();
      }

      v151 = type metadata accessor for Calendar();
      sub_10001AC90(v151, qword_100925000);
      v152 = v254;
      (*v134)(v254, v257, v110);
      v153 = Calendar.component(_:from:)();
      (*v135)(v152, v110);
      v154 = v153 - 1;
      if (v154 > 6 || (v150 & 1) != 0)
      {
        v137 = v125;
        v138 = v126;
        v139 = v128;
        v140 = v129;
        v136 = v256;
        v133 = v251;
        goto LABEL_69;
      }

      v155 = v250;
      v136 = v256;
      v156 = v249;
      if (v154 >= *(v250 + 16))
      {
        v137 = v125;
        v138 = v126;
      }

      else
      {
        v157 = v250 + 24 * v154;
        if (*(v157 + 48))
        {
          v158 = 1.0;
          v159 = 0.0;
        }

        else
        {
          v159 = *(v157 + 32);
          v158 = *(v157 + 40);
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v155 = v250;
        }

        else
        {
          v155 = sub_10057F5E0(v250);
        }

        v156 = v249;
        if (v154 >= *(v155 + 2))
        {
          goto LABEL_183;
        }

        v160 = v149 + v159 * v158;
        v138 = v158 + 1.0;
        v137 = v160 / (v158 + 1.0);
        v161 = &v155[24 * v154];
        *(v161 + 4) = v137;
        *(v161 + 5) = v158 + 1.0;
        v161[48] = 0;
        v162 = v240;
        if (v240 >= v137)
        {
          v163 = v244;
        }

        else
        {
          v163 = v160 / (v158 + 1.0);
        }

        v164 = v243;
        if (v240 < v137)
        {
          v164 = v158 + 1.0;
        }

        v243 = v164;
        v244 = v163;
        if (v240 < v137)
        {
          v162 = v137;
        }

        v240 = v162;
        if (v248 < 0.0)
        {
          v165 = v137;
          goto LABEL_99;
        }

        if (v137 < v248)
        {
          v165 = v137;
          goto LABEL_99;
        }

        v137 = v125;
        v138 = v126;
      }

      v165 = v248;
LABEL_99:
      v166 = *(v156 + 2);
      v250 = v155;
      v167 = v246;
      if (v154 >= v166)
      {
        v139 = v128;
        v140 = v129;
        v133 = v251;
      }

      else
      {
        v168 = &v156[24 * v154];
        if (v168[48])
        {
          v169 = 1.0;
          v170 = 0.0;
        }

        else
        {
          v170 = *(v168 + 4);
          v169 = *(v168 + 5);
        }

        v171 = v156;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v155 = v250;
          v156 = v171;
        }

        else
        {
          v156 = sub_10057F5E0(v171);
          v155 = v250;
        }

        if (v154 >= *(v156 + 2))
        {
          goto LABEL_184;
        }

        v172 = v170 * v169 + 1.0;
        v140 = v169 + 1.0;
        v139 = v172 / v140;
        v173 = &v156[24 * v154];
        *(v173 + 4) = v172 / v140;
        *(v173 + 5) = v140;
        v173[48] = 0;
        v174 = v239;
        v175 = v239 < v172 / v140;
        if (v239 >= v172 / v140)
        {
          v176 = v242;
        }

        else
        {
          v176 = v172 / v140;
        }

        v177 = v241;
        if (v175)
        {
          v177 = v140;
        }

        v241 = v177;
        v242 = v176;
        if (v175)
        {
          v174 = v139;
        }

        v239 = v174;
        if (v167 < 0.0)
        {
          v167 = v139;
          v133 = v251;
        }

        else
        {
          v133 = v251;
          if (v139 < v167)
          {
            v167 = v139;
          }

          else
          {
            v139 = v128;
            v140 = v129;
          }
        }
      }

      v178 = *(v155 + 2);
      v180 = 0.0;
      if (v178)
      {
        if ((v155[48] & 1) == 0)
        {
          if (*(v156 + 2))
          {
            v179 = (v156 + 32);
            if ((v156[48] & 1) == 0 && *v179 > 0.0)
            {
              if (*(v155 + 4) / *v179 > 0.0)
              {
                v180 = *(v155 + 4) / *v179;
              }

              else
              {
                v180 = 0.0;
              }
            }
          }
        }
      }

      if (v178 > 1 && (v155[72] & 1) == 0 && *(v156 + 2) > 1uLL)
      {
        v181 = (v156 + 56);
        if ((v156[72] & 1) == 0 && *v181 > 0.0 && *(v155 + 7) / *v181 > v180)
        {
          v180 = *(v155 + 7) / *v181;
        }
      }

      if (v178 > 2 && (v155[96] & 1) == 0 && *(v156 + 2) > 2uLL)
      {
        v182 = (v156 + 80);
        if ((v156[96] & 1) == 0 && *v182 > 0.0 && *(v155 + 10) / *v182 > v180)
        {
          v180 = *(v155 + 10) / *v182;
        }
      }

      if (v178 > 3 && (v155[120] & 1) == 0 && *(v156 + 2) > 3uLL)
      {
        v183 = (v156 + 104);
        if ((v156[120] & 1) == 0 && *v183 > 0.0 && *(v155 + 13) / *v183 > v180)
        {
          v180 = *(v155 + 13) / *v183;
        }
      }

      if (v178 > 4 && (v155[144] & 1) == 0 && *(v156 + 2) > 4uLL)
      {
        v184 = (v156 + 128);
        if ((v156[144] & 1) == 0 && *v184 > 0.0 && *(v155 + 16) / *v184 > v180)
        {
          v180 = *(v155 + 16) / *v184;
        }
      }

      if (v178 > 5 && (v155[168] & 1) == 0 && *(v156 + 2) > 5uLL)
      {
        v185 = (v156 + 152);
        if ((v156[168] & 1) == 0 && *v185 > 0.0 && *(v155 + 19) / *v185 > v180)
        {
          v180 = *(v155 + 19) / *v185;
        }
      }

      v245 = v180;
      v246 = v167;
      *&v249 = v156;
      v248 = v165;
      if (v178 > 6 && (v155[192] & 1) == 0 && *(v156 + 2) > 6uLL)
      {
        v186 = (v156 + 176);
        if ((v156[192] & 1) == 0 && *v186 > 0.0)
        {
          v187 = v245;
          if (*(v155 + 22) / *v186 > v245)
          {
            v187 = *(v155 + 22) / *v186;
          }

          v245 = v187;
        }
      }

LABEL_69:
      v252(v258, v259);
      v125 = v137;
      v126 = v138;
      v128 = v139;
      v129 = v140;
    }
  }

  if (a3)
  {
    v63 = a4;
    v64 = _convertErrorToNSError(_:)();
    v65 = static os_log_type_t.error.getter();
    v66 = HKLogActivity;
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1006D1F70;
    *(v67 + 56) = sub_1000059F8(0, &qword_1008DEE18, HKQuantityType_ptr);
    *(v67 + 64) = sub_10025F118(&qword_1008E3FF0, &qword_1008DEE18, HKQuantityType_ptr);
    *(v67 + 32) = a4;
    *(v67 + 96) = sub_1000059F8(0, &qword_1008E56F0, NSError_ptr);
    *(v67 + 104) = sub_10025F118(&qword_1008E4030, &qword_1008E56F0, NSError_ptr);
    *(v67 + 72) = v64;
    v68 = v66;
    v69 = v63;
    v70 = v64;
    os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, v68, "Error fetching statistics for quantity type %@: %@", 50, 2, v67);
  }

  OS_dispatch_semaphore.signal()();
}

uint64_t sub_100017E40()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100018C0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 - 184));
  objc_destroyWeak((v1 - 144));
  objc_destroyWeak((v1 - 136));
  _Unwind_Resume(a1);
}

void sub_100018C74(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_100018D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018D5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100018DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100018DEC(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v237 = a1;
  *&v240 = a3;
  v221 = *&a2;
  v211 = a4;
  v208 = sub_100140278(&qword_1008E4000, &qword_1006E1770);
  v205 = *(v208 - 8);
  __chkstk_darwin(v208);
  v219 = (&v183 - v4);
  v5 = sub_100140278(&qword_1008E4008, &unk_1006E1778);
  __chkstk_darwin(v5 - 8);
  v224 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v223 = (&v183 - v8);
  *&v241 = type metadata accessor for DateInterval();
  v231 = *(v241 - 8);
  __chkstk_darwin(v241);
  v10 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for DateComponents();
  v225 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  *&v222 = &v183 - v13;
  v14 = COERCE_DOUBLE(type metadata accessor for Calendar.Component());
  v15 = *(*&v14 - 8);
  __chkstk_darwin(*&v14);
  v17 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100140278(&unk_1008F73A0, &unk_1006DB450);
  __chkstk_darwin(v18 - 8);
  v202 = &v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v183 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 1);
  __chkstk_darwin(v23);
  v199 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  *&v204 = &v183 - v27;
  __chkstk_darwin(v28);
  v203 = &v183 - v29;
  __chkstk_darwin(v30);
  v209 = &v183 - v31;
  __chkstk_darwin(v32);
  v210 = &v183 - v33;
  __chkstk_darwin(v34);
  v36 = &v183 - v35;
  if (qword_1008DA540 != -1)
  {
    goto LABEL_232;
  }

LABEL_2:
  *&v239 = type metadata accessor for Calendar();
  v37 = sub_10001AC90(v239, qword_100924FE8);
  v213 = v36;
  Calendar.startOfDay(for:)();
  v197 = *(v15 + 104);
  v198 = v15 + 104;
  v197(v17, enum case for Calendar.Component.day(_:), *&v14);
  if (__OFSUB__(0, *&v221))
  {
    __break(1u);
  }

  else
  {
    v38 = v17;
    *&v17 = COERCE_DOUBLE(v261);
    v212 = v14;
    v39 = v38;
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v40 = v15 + 8;
    v41 = *(v15 + 8);
    v196 = v39;
    v41(v39, *&v212);
    v200 = *(v24 + 6);
    v201 = v24 + 48;
    if (v200(v22, 1, v23) == 1)
    {
      (*(v24 + 1))(v213, v23);
      sub_10000EA04(v22, &unk_1008F73A0, &unk_1006DB450);
LABEL_68:
      sub_100011DA0(&v267);
LABEL_69:
      v92 = v211;
      v93 = *(v17 + 288);
      *(v211 + 160) = *(v17 + 272);
      *(v92 + 176) = v93;
      *(v92 + 192) = v279;
      v94 = *(v17 + 224);
      *(v92 + 96) = *(v17 + 208);
      *(v92 + 112) = v94;
      v95 = *(v17 + 256);
      *(v92 + 128) = *(v17 + 240);
      *(v92 + 144) = v95;
      v96 = *(v17 + 160);
      *(v92 + 32) = *(v17 + 144);
      *(v92 + 48) = v96;
      v97 = *(v17 + 192);
      *(v92 + 64) = *(v17 + 176);
      *(v92 + 80) = v97;
      v98 = *(v17 + 128);
      *v92 = *(v17 + 112);
      *(v92 + 16) = v98;
      return;
    }

    v194 = v41;
    v195 = v40;
    v206 = v23;
    v207 = v24;
    v192 = *(v24 + 4);
    v193 = v24 + 32;
    v192(v210, v22, v23);
    v24 = v209;
    Calendar.startOfDay(for:)();
    if (qword_1008DA550 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  sub_10001AC90(v239, qword_100925018);
  v15 = v213;
  v42 = sub_10003DF50(v24, v213);
  v14 = v221;
  if (*(v42 + 16) != *&v221)
  {

    v88 = static os_log_type_t.error.getter();
    v89 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v88, &_mh_execute_header, v89, "Component count doesn't match number of days. Investigate!", 58, 2, _swiftEmptyArrayStorage);

    v90 = v206;
    v91 = *(v207 + 1);
    v91(v24, v206);
    v91(v210, v90);
    v91(v15, v90);
    goto LABEL_68;
  }

  v218 = v42;
  v191 = v37;
  v43 = [v238[4] workoutsByDay];
  sub_100140278(&unk_1008E4010, &unk_1006DCBA0);
  sub_100018D5C(&qword_1008DF090, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 == 0.0)
  {

    v99 = _swiftEmptyArrayStorage;
    goto LABEL_71;
  }

  v217 = v22;
  *&v242 = _swiftEmptyArrayStorage;
  sub_10003E4D0(0, *&v14, 0);
  v44 = 0;
  v45 = (*(v225 + 80) + 32) & ~*(v225 + 80);
  v227 = v242;
  *&v216 = &v218[v45];
  *&v215 = v225 + 16;
  *&v234 = COERCE_DOUBLE(&v268);
  v23 = (*&v231 + 8);
  *&v214 = v225 + 8;
  v36 = *&v222;
  v229 = (*&v231 + 16);
  do
  {
    if (v44 >= *(v218 + 2))
    {
      goto LABEL_231;
    }

    v46 = *(v225 + 72);
    v220 = v44;
    v22 = v36;
    (*(v225 + 16))(v36, *&v216 + v46 * v44, v230);
    v47 = v217;
    if (*(v217 + 16) && (v48 = sub_1004C59D4(v22), (v49 & 1) != 0))
    {
      v36 = *(*(v47 + 56) + 8 * v48);

      v24 = _swiftEmptyArrayStorage;
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
      v36 = _swiftEmptyArrayStorage;
    }

    *&v267 = _swiftEmptyArrayStorage;
    if (v36 >> 62)
    {
      *&v17 = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
      if (*&v17 == 0.0)
      {
LABEL_28:
        *&v17 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
        goto LABEL_29;
      }
    }

    else
    {
      v17 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*&v17 == 0.0)
      {
        goto LABEL_28;
      }
    }

    v15 = 0;
    v22 = v36 & 0xC000000000000001;
    v24 = (v36 & 0xFFFFFFFFFFFFFF8);
    *&v240 = v36;
    *&v239 = v36 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v22)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v24 + 2))
        {
          goto LABEL_224;
        }

        v50 = *(v36 + 8 * v15 + 32);
      }

      v51 = v50;
      *&v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        swift_once();
        goto LABEL_2;
      }

      v52 = [v50 workoutActivityType];
      if (v52 == v237)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v24 = v239;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v36 = v240;
      }

      else
      {
      }

      ++v15;
    }

    while (*&v14 != v17);
    v17 = *&v267;
    v24 = _swiftEmptyArrayStorage;
LABEL_29:

    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      *&v53 = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
      if (*&v53 == 0.0)
      {
        goto LABEL_54;
      }

LABEL_32:
      v36 = 0;
      v235 = (v17 + 32);
      v236 = v17 & 0xC000000000000001;
      v226 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      v232 = *&v53;
      v233 = *&v17;
      while (1)
      {
        if (v236)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *(v17 + 16))
          {
            goto LABEL_226;
          }

          v54 = *&v235[8 * v36];
        }

        v22 = v54;
        if (__OFADD__(v36++, 1))
        {
          goto LABEL_225;
        }

        v56 = [v54 totalDistance];
        if (v56)
        {
          v238 = v56;
          *&v240 = v36;
          v57 = swift_allocObject();
          *(v57 + 16) = _swiftEmptyArrayStorage;
          *&v14 = v57 + 16;
          *&v269 = sub_10025F110;
          *(&v269 + 1) = v57;
          *&v267 = _NSConcreteStackBlock;
          *(&v267 + 1) = 1107296256;
          *&v268 = sub_10063C1F4;
          *(&v268 + 1) = &unk_10084E218;
          v58 = _Block_copy(&v267);

          *&v239 = v22;
          [v22 _enumerateActiveTimePeriods:v58];
          _Block_release(v58);
          swift_beginAccess();
          v59 = **&v14;

          v15 = *(v59 + 2);
          if (v15)
          {
            *&v14 = v59 + ((*(*&v231 + 80) + 32) & ~*(*&v231 + 80));
            v60 = *(*&v231 + 72);
            v61 = *(*&v231 + 16);
            v62 = 0.0;
            v63 = v241;
            do
            {
              v61(v10, *&v14, v63);
              DateInterval.duration.getter();
              v63 = v241;
              v65 = v64;
              (*v23)(v10, v241);
              v62 = v62 + v65;
              *&v14 += v60;
              --v15;
            }

            while (v15);

            v24 = _swiftEmptyArrayStorage;
            *&v53 = v232;
            *&v17 = v233;
            if (v62 > 0.0)
            {
              v66 = [objc_opt_self() meterUnitWithMetricPrefix:9];
              v67 = v238;
              [v238 doubleValueForUnit:v66];
              v69 = v68;

              *&v70 = v226;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                *&v70 = COERCE_DOUBLE(sub_1001A1EA0(0, *(v70 + 2) + 1, 1, v70));
              }

              v22 = *(v70 + 2);
              v71 = *(v70 + 3);
              v226 = *&v70;
              if (v22 >= v71 >> 1)
              {
                v226 = COERCE_DOUBLE(sub_1001A1EA0((v71 > 1), v22 + 1, 1, *&v226));
              }

              v72 = v226;
              *(*&v226 + 16) = v22 + 1;
              v73 = *&v72 + 16 * v22;
              *(v73 + 32) = v69 / (v62 / 60.0 / 60.0);
              *(v73 + 40) = v62;
              v36 = v240;
              goto LABEL_50;
            }
          }

          else
          {

            v24 = _swiftEmptyArrayStorage;
          }

          v36 = v240;
          v22 = v239;
        }

LABEL_50:
        if (v36 == v53)
        {
          goto LABEL_55;
        }
      }
    }

    v53 = *(v17 + 16);
    if (*&v53 != 0.0)
    {
      goto LABEL_32;
    }

LABEL_54:
    v226 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
LABEL_55:

    v74 = v226;
    v75 = *(*&v226 + 16);
    if (v75)
    {
      v24 = sub_1001A1EA0(0, 1, 1, _swiftEmptyArrayStorage);
      v76 = (*&v74 + 32);
      v77 = *(v24 + 2);
      do
      {
        v78 = *v76;
        v79 = *(v24 + 3);
        if (v77 >= v79 >> 1)
        {
          v240 = *v76;
          v80 = sub_1001A1EA0((v79 > 1), v77 + 1, 1, v24);
          v78 = v240;
          v24 = v80;
        }

        *(v24 + 2) = v77 + 1;
        *&v24[16 * v77 + 32] = v78;
        ++v76;
        ++v77;
        --v75;
      }

      while (v75);
    }

    v14 = *(v24 + 2);
    if (v14 == 0.0)
    {
      (**&v214)(*&v222, v230);

      v83 = 0uLL;
    }

    else
    {
      *&v81 = sub_1001E7414(v24);
      v239 = v82;
      v240 = v81;

      (**&v214)(*&v222, v230);
      *&v83 = v240;
      *(&v83 + 1) = v239;
    }

    v84 = v227;
    *&v242 = v227;
    v15 = v227[2];
    v85 = v227[3];
    v22 = v15 + 1;
    v36 = *&v222;
    v86 = v220;
    if (v15 >= v85 >> 1)
    {
      v240 = v83;
      sub_10003E4D0((v85 > 1), v15 + 1, 1);
      v83 = v240;
      v86 = v220;
      v36 = *&v222;
      v84 = v242;
    }

    v44 = v86 + 1;
    v84[2] = v22;
    v227 = v84;
    v87 = &v84[3 * v15];
    *(v87 + 2) = v83;
    *(v87 + 48) = *&v14 == 0;
  }

  while (v44 != *&v221);

  *&v17 = COERCE_DOUBLE(v261);
  v24 = v209;
  v99 = v227;
LABEL_71:
  v100 = v99[2];
  v227 = v99;
  if (v100)
  {
    v101 = v99 + 6;
    v102 = _swiftEmptyArrayStorage;
    do
    {
      if ((*v101 & 1) == 0)
      {
        v241 = *(v101 - 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1001A1EA0(0, *(v102 + 2) + 1, 1, v102);
        }

        v104 = *(v102 + 2);
        v103 = *(v102 + 3);
        if (v104 >= v103 >> 1)
        {
          v102 = sub_1001A1EA0((v103 > 1), v104 + 1, 1, v102);
        }

        *(v102 + 2) = v104 + 1;
        *&v102[16 * v104 + 32] = v241;
      }

      v101 += 24;
      --v100;
    }

    while (v100);
  }

  else
  {
    v102 = _swiftEmptyArrayStorage;
  }

  if (*(v102 + 2))
  {
    v216 = sub_1001E7414(v102);
    v220 = v105;
  }

  else
  {

    v216 = 0.0;
    v220 = 0;
  }

  v106 = v207;
  v15 = v208;
  v107 = *(v207 + 2);
  v108 = v203;
  v109 = v206;
  v107(v203, v24, v206);
  v110 = v204;
  v107(*&v204, v213, v109);
  Date.timeIntervalSinceReferenceDate.getter();
  v112 = v111;
  Date.timeIntervalSinceReferenceDate.getter();
  sub_10001C204(*&v221, v256, v112, v113);
  v238 = v256[0];
  v217 = v256[1];
  v114 = v256[2];
  v115 = v257;
  v116 = v258;
  v117 = v259;
  v118 = v260;
  v119 = *(v106 + 1);
  v119(*&v110, v109);
  v207 = v106 + 8;
  v229 = v119;
  v119(v108, v109);
  v204 = *&v259;
  v215 = v257;
  v237 = v256[0];
  sub_10001C204(7, v261, 0.0, 6.0);
  v120 = v261[0];
  v36 = &v242;
  v255 = *(v17 + 8);
  v121 = *&v261[3];
  v122 = *&v261[4];
  v123 = *&v261[5];
  v233 = *&v261[6];
  sub_10001C204(7, v262, 0.0, 6.0);
  v22 = 0;
  v235 = v262[0];
  v124 = *(v17 + 64);
  *&v239 = v225 + 16;
  v17 = v205 + 56;
  v24 = (v205 + 48);
  v23 = (v225 + 32);
  *&v241 = v227 + 4;
  *&v14 = v225 + 8;
  v254 = v124;
  v221 = *&v264;
  v222 = v263;
  v231 = v265;
  v232 = v266;
  v10 = v218;
  v125 = *(v218 + 2);
  v190 = enum case for Calendar.Component.weekday(_:);
  v226 = 0.0;
  v185 = v265;
  v186 = v123;
  v187 = v263;
  v188 = v121;
  v205 = v120;
  v203 = v120;
  v189 = v120;
  *&v240 = v125;
  while (2)
  {
    v234 = v120;
    while (2)
    {
      while (2)
      {
        if (v22 == v125)
        {
          v126 = 1;
          v22 = v125;
          v127 = v224;
        }

        else
        {
          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_229;
          }

          if (v22 >= *(v10 + 2))
          {
            goto LABEL_230;
          }

          v128 = v225;
          v129 = &v10[((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v22];
          v130 = *(v15 + 48);
          v131 = v219;
          *v219 = v22;
          (*(v128 + 16))(v131 + v130, v129, v230);
          v132 = v131;
          v127 = v224;
          sub_100015E80(v132, v224, &qword_1008E4000, &qword_1006E1770);
          v126 = 0;
          ++v22;
        }

        (*v17)(v127, v126, 1, v15);
        v133 = v127;
        v134 = v223;
        sub_100015E80(v133, v223, &qword_1008E4008, &unk_1006E1778);
        if ((*v24)(v134, 1, v15) == 1)
        {

          v181 = v206;
          v182 = v229;
          v229(v209, v206);
          v182(v210, v181);
          v182(v213, v181);
          v247 = v255;
          *(v250 + 8) = v254;
          *&v242 = v216;
          *(&v242 + 1) = v220;
          *&v243 = v238;
          *(&v243 + 1) = v217;
          *&v244 = v114;
          *(&v244 + 1) = v115;
          *&v245 = v116;
          *(&v245 + 1) = v117;
          *&v246 = v118;
          *(&v246 + 1) = v234;
          *&v248 = v121;
          *(&v248 + 1) = v122;
          *&v249 = v123;
          *(&v249 + 1) = v233;
          *&v250[0] = v235;
          *(&v250[1] + 1) = v222;
          *&v251 = v221;
          *(&v251 + 1) = v231;
          *&v252 = v232;
          *(&v252 + 1) = v226;
          v253 = 3;
          ASFriendListDisplayMode.id.getter();
          *&v17 = COERCE_DOUBLE(v261);
          v277 = v251;
          v278 = v252;
          v279 = v253;
          v273 = v248;
          v274 = v249;
          v275 = v250[0];
          v276 = v250[1];
          v269 = v244;
          v270 = v245;
          v271 = v246;
          v272 = v247;
          v267 = v242;
          v268 = v243;
          goto LABEL_69;
        }

        v36 = *v134;
        (*v23)(v228, v134 + *(v15 + 48), v230);
        if ((v36 & 0x8000000000000000) != 0)
        {
          goto LABEL_227;
        }

        if (v36 >= v227[2])
        {
          goto LABEL_228;
        }

        v135 = v241 + 24 * v36;
        if (*(v135 + 16))
        {
          (**&v14)(v228, v230);
          v125 = v240;
          continue;
        }

        break;
      }

      v214 = v121;
      v136 = v122;
      v236 = v117;
      v137 = v116;
      v138 = v114;
      v139 = *v135;
      v140 = *v135;
      v141 = v237;
      if (v36 >= v237[2])
      {
        v15 = v208;
        v147 = v202;
      }

      else
      {
        v184 = *(v135 + 8);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v142 = v141;
        }

        else
        {
          v142 = sub_10057F5E0(v141);
        }

        if (v36 >= *(v142 + 2))
        {
          __break(1u);
          goto LABEL_236;
        }

        v143 = v184;
        v144 = v184;
        v145 = &v142[24 * v36];
        *(v145 + 4) = v139;
        *(v145 + 5) = v144;
        v145[48] = 0;
        v146 = v215;
        if (v215 < v140)
        {
          v115 = v140;
          v137 = v143;
          v146 = v140;
        }

        v215 = v146;
        v238 = v142;
        if (v204 < 0.0)
        {
          v236 = *&v140;
          v204 = v140;
          v237 = v142;
          v15 = v208;
          v147 = v202;
          v118 = v144;
        }

        else
        {
          v15 = v208;
          v147 = v202;
          if (v204 > v140)
          {
            v236 = *&v140;
            v204 = v140;
            v237 = v142;
            v118 = v144;
          }

          else
          {
            v237 = v142;
          }
        }
      }

      v148 = v228;
      v36 = v191;
      Calendar.date(from:)();
      if (v200(v147, 1, v206) == 1)
      {
        (**&v14)(v148, v230);
        sub_10000EA04(v147, &unk_1008F73A0, &unk_1006DB450);
        v10 = v218;
        v116 = v137;
        v117 = v236;
        v122 = v136;
        v121 = v214;
        v125 = v240;
        continue;
      }

      break;
    }

    v192(v199, v147, v206);
    v149 = v196;
    v150 = v212;
    v197(v196, v190, *&v212);
    v36 = Calendar.component(_:from:)();
    v194(v149, *&v150);
    if (v36 <= 3)
    {
      v10 = v218;
      v120 = v234;
      v151 = v235;
      switch(v36)
      {
        case 1uLL:
          v36 = 0;
          v152 = v205;
          goto LABEL_127;
        case 2uLL:
          v152 = v234;
          v36 = 1;
          v203 = v234;
          goto LABEL_127;
        case 3uLL:
          v36 = 2;
          v152 = v189;
          v203 = v189;
          goto LABEL_127;
      }

      goto LABEL_123;
    }

    v10 = v218;
    v120 = v234;
    v151 = v235;
    if (v36 > 5)
    {
      if (v36 == 6)
      {
        v152 = v205;
        v36 = 5;
        goto LABEL_127;
      }

      if (v36 == 7)
      {
        v152 = v205;
        v36 = 6;
        goto LABEL_127;
      }

LABEL_123:
      v184 = v123;
      v116 = v137;
      v117 = v236;
      v122 = v136;
      v121 = v214;
      goto LABEL_221;
    }

    if (v36 == 4)
    {
      v152 = v203;
      v36 = 3;
    }

    else
    {
      v152 = v205;
      v36 = 4;
    }

LABEL_127:
    if (v36 >= *(v152 + 2))
    {
      v156 = v233;
      v184 = v123;
      v205 = v152;
      goto LABEL_146;
    }

    *&v234 = v118;
    *&v226 = 24 * v36;
    v153 = &v152[24 * v36];
    v120 = v152;
    if (v153[48])
    {
      v154 = 1.0;
      v155 = 0.0;
    }

    else
    {
      v155 = *(v153 + 4);
      v154 = *(v153 + 5);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      *&v120 = COERCE_DOUBLE(sub_10057F5E0(v120));
    }

    v151 = v235;
    if (v36 >= *(v120 + 16))
    {
LABEL_236:
      __break(1u);
    }

    else
    {
      v156 = v154 + 1.0;
      v157 = (v155 * v154 + v140) / (v154 + 1.0);
      v158 = (v120 + *&v226);
      *(v158 + 4) = v157;
      *(v158 + 5) = v154 + 1.0;
      v158[48] = 0;
      v159 = v188;
      if (v188 < v157)
      {
        v136 = v154 + 1.0;
      }

      v160 = v214;
      if (v188 < v157)
      {
        v160 = (v155 * v154 + v140) / (v154 + 1.0);
      }

      v214 = v160;
      if (v188 < v157)
      {
        v159 = (v155 * v154 + v140) / (v154 + 1.0);
      }

      v188 = v159;
      if (v186 < 0.0)
      {
        v184 = (v155 * v154 + v140) / (v154 + 1.0);
        v186 = v184;
        v205 = v120;
        v203 = v120;
        v114 = v138;
        v118 = *&v234;
      }

      else
      {
        v118 = *&v234;
        if (v157 < v186)
        {
          v184 = v157;
          v186 = v157;
        }

        else
        {
          v156 = v233;
          v184 = v123;
        }

        v205 = v120;
        v203 = v120;
LABEL_146:
        v114 = v138;
      }

      v161 = *(v151 + 2);
      v122 = v136;
      v233 = v156;
      if (v36 >= v161)
      {
        v116 = v137;
        v165 = v231;
        v166 = v232;
        v117 = v236;
        v121 = v214;
        goto LABEL_169;
      }

      v234 = 24 * v36;
      v162 = &v151[24 * v36];
      v121 = v214;
      if (v162[48])
      {
        v163 = 1.0;
        v164 = 0.0;
      }

      else
      {
        v164 = *(v162 + 4);
        v163 = *(v162 + 5);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v235 = sub_10057F5E0(v235);
      }

      v161 = *(v235 + 2);
      if (v36 < v161)
      {
        v166 = v163 + 1.0;
        v165 = (v164 * v163 + 1.0) / (v163 + 1.0);
        v167 = &v235[v234];
        *(v167 + 4) = v165;
        *(v167 + 5) = v163 + 1.0;
        v167[48] = 0;
        v168 = v187;
        if (v187 >= v165)
        {
          v169 = v222;
        }

        else
        {
          v169 = (v164 * v163 + 1.0) / (v163 + 1.0);
        }

        v170 = v221;
        if (v187 < v165)
        {
          v170 = v163 + 1.0;
        }

        v221 = v170;
        v222 = v169;
        if (v187 < v165)
        {
          v168 = (v164 * v163 + 1.0) / (v163 + 1.0);
        }

        v187 = v168;
        if (v185 < 0.0)
        {
          v185 = (v164 * v163 + 1.0) / (v163 + 1.0);
          v116 = v137;
        }

        else
        {
          v116 = v137;
          if (v165 < v185)
          {
            v185 = v165;
          }

          else
          {
            v165 = v231;
            v166 = v232;
          }
        }

        v117 = v236;
        v151 = v235;
LABEL_169:
        v171 = *(v205 + 16);
        v235 = v151;
        v172 = v151 + 32;
        v173 = 0.0;
        if (v171 && (*(v205 + 48) & 1) == 0 && v161 && (v172[16] & 1) == 0 && *v172 > 0.0)
        {
          if (*(v205 + 32) / *v172 > 0.0)
          {
            v173 = *(v205 + 32) / *v172;
          }

          else
          {
            v173 = 0.0;
          }
        }

        if (v171 > 1 && (*(v205 + 72) & 1) == 0 && v161 > 1)
        {
          v174 = (v172 + 24);
          if ((v172[40] & 1) == 0 && *v174 > 0.0 && *(v205 + 56) / *v174 > v173)
          {
            v173 = *(v205 + 56) / *v174;
          }
        }

        if (v171 > 2 && (*(v205 + 96) & 1) == 0 && v161 > 2)
        {
          v175 = (v172 + 48);
          if ((v172[64] & 1) == 0 && *v175 > 0.0 && *(v205 + 80) / *v175 > v173)
          {
            v173 = *(v205 + 80) / *v175;
          }
        }

        if (v171 > 3 && (*(v205 + 120) & 1) == 0 && v161 > 3)
        {
          v176 = (v172 + 72);
          if ((v172[88] & 1) == 0 && *v176 > 0.0 && *(v205 + 104) / *v176 > v173)
          {
            v173 = *(v205 + 104) / *v176;
          }
        }

        if (v171 > 4 && (*(v205 + 144) & 1) == 0 && v161 > 4)
        {
          v177 = (v172 + 96);
          if ((v172[112] & 1) == 0 && *v177 > 0.0 && *(v205 + 128) / *v177 > v173)
          {
            v173 = *(v205 + 128) / *v177;
          }
        }

        if (v171 > 5 && (*(v205 + 168) & 1) == 0 && v161 > 5)
        {
          v178 = (v172 + 120);
          if ((v172[136] & 1) == 0 && *v178 > 0.0 && *(v205 + 152) / *v178 > v173)
          {
            v173 = *(v205 + 152) / *v178;
          }
        }

        v226 = v173;
        v231 = v165;
        v232 = v166;
        if (v171 > 6 && (*(v205 + 192) & 1) == 0 && v161 > 6)
        {
          v179 = (v172 + 144);
          if ((v172[160] & 1) == 0 && *v179 > 0.0)
          {
            v180 = v226;
            if (*(v205 + 176) / *v179 > v226)
            {
              v180 = *(v205 + 176) / *v179;
            }

            v226 = v180;
          }
        }

        v189 = v203;
LABEL_221:
        v229(v199, v206);
        (**&v14)(v228, v230);
        v123 = v184;
        v125 = v240;
        continue;
      }
    }

    break;
  }

  __break(1u);
}