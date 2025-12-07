double sub_100177634(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, uint64_t, id))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v18 = a3;
    goto LABEL_7;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  v17 = a3;
  if (!v16)
  {

    goto LABEL_7;
  }

  v30 = v17;
  if ([v16 isBeingDismissed])
  {

LABEL_7:
    sub_100170C4C(1);
    swift_unknownObjectWeakAssign();

    return result;
  }

  v20 = [v16 sheetPresentationController];
  if (v20)
  {
    v21 = v20;
    [v20 setDelegate:0];
  }

  if (*(a2 + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle) == 3)
  {
    v22 = [v16 viewIfLoaded];
    if (v22 && (v23 = v22, v24 = [v22 window], v23, v24) && (v25 = objc_msgSend(v24, "rootViewController"), v24, v25))
    {
      type metadata accessor for SceneSplitViewController(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v26;
        v28 = v30;
        a7(a1 & 1, v27, v28);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    aBlock[4] = a5;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = a6;
    v29 = _Block_copy(aBlock);

    [v16 dismissViewControllerAnimated:a1 & 1 completion:v29];

    _Block_release(v29);
  }

  swift_unknownObjectWeakAssign();

  return result;
}

uint64_t sub_100177988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unownedRetainStrong();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong || (sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr), sub_1000F24EC(&qword_100AD57E8, &unk_100944160), (swift_dynamicCast() & 1) == 0))
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_6;
  }

  v4 = *(&v9 + 1);
  if (!*(&v9 + 1))
  {
LABEL_6:
    sub_100004F84(&v8, &qword_100AD57E0, &qword_100944158);
    v6 = 1;
    return v6 & 1;
  }

  v5 = v10;
  sub_10000CA14(&v8, *(&v9 + 1));
  v6 = (*(v5 + 16))(v4, v5);
  sub_10000BA7C(&v8);
  return v6 & 1;
}

uint64_t sub_100177AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD57F0, &qword_100955210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177B38()
{

  return swift_deallocObject();
}

uint64_t sub_100177D00()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD5820);
  v1 = sub_10000617C(v0, qword_100AD5820);
  if (qword_100AD01E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100177DC8()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v0 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  type metadata accessor for DataAggregator(0);
  swift_allocObject();
  v1 = v0;
  v2 = sub_100183D1C(v1, 1);

  qword_100B2F408 = v2;
}

double sub_100177E68(char a1)
{
  v3 = *v1;
  v4 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  *&result = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v16 - v6;
  if ((a1 & 1) != 0 && !v1[4])
  {
    v8 = [v1[2] persistentStoreCoordinator];
    static TaskPriority.low.getter();
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
    v10 = swift_allocObject();
    swift_weakInit();
    v11 = v1[3];
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v11;
    v12[5] = v8;
    v12[6] = v10;
    v12[7] = v3;
    v13 = v11;
    v14 = v8;
    v15 = sub_10017AD28(0xD00000000000001ALL, 0x80000001008E2180, v7, &unk_100944530, v12);

    sub_100004F84(v7, &qword_100AD5170, &unk_100943680);
    v1[4] = v15;
  }

  return result;
}

uint64_t sub_100178044()
{
  v1 = v0;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v0 + 32))
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();
  }

  v2 = OBJC_IVAR____TtC7Journal14DataAggregator__recentPlaces;
  v3 = sub_1000F24EC(&qword_100AD5B68, &qword_100944520);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByMapPlace;
  v5 = sub_1000F24EC(&qword_100AD5B60, &unk_1009401F0);
  v6 = *(*(v5 - 8) + 8);
  v6(v1 + v4, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__entriesByPhotoPlace, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__entriesByRoutePlace, v5);
  v6(v1 + OBJC_IVAR____TtC7Journal14DataAggregator__mostRecentEntriesByPlace, v5);
  v7 = OBJC_IVAR____TtC7Journal14DataAggregator__hasCompletedFirstUpdate;
  v8 = sub_1000F24EC(&qword_100AD5B58, &qword_100944518);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC7Journal14DataAggregator__assetTypeCount;
  v10 = sub_1000F24EC(&qword_100AD5B50, &qword_100944510);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  return v1;
}

uint64_t sub_1001782CC(uint64_t a1)
{
  sub_100178044();

  return swift_deallocClassInstance();
}

uint64_t sub_100178330()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();
  v3 = v2;

  return _swift_task_deinitOnExecutor(v0, sub_1001782CC, v1, v3, 0, v4);
}

void sub_1001783EC(uint64_t a1)
{
  sub_1001785C4(319, &qword_100AD58A8, &qword_100AD58B0, &qword_100944220);
  if (v1 <= 0x3F)
  {
    sub_1001785C4(319, &qword_100AD58B8, &qword_100AD58C0, &qword_10095E4D0);
    if (v2 <= 0x3F)
    {
      sub_100180884(319, &qword_100AD58C8, &type metadata for Bool, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1001785C4(319, &qword_100AD58D0, &unk_100AD58D8, &qword_100944228);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001785C4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000F2A18(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100178618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = sub_1000F24EC(&qword_100AD5B70, &qword_100944538);
  v6[23] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD5B78, &qword_100944540);
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = sub_1000F24EC(&qword_100AD5B80, &qword_100944548);
  v6[28] = swift_task_alloc();
  v6[29] = sub_1000F24EC(&qword_100AD5B88, &qword_100944550);
  v6[30] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AD5B90, &qword_100944558);
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();

  return _swift_task_switch(sub_1001788C8, 0, 0);
}

uint64_t sub_1001788C8()
{
  v1 = v0[23];
  NSManagedObjectContext.didMergeChangesNotifications.getter();
  swift_getOpaqueTypeConformance2();
  AsyncFilterSequence.init(_:isIncluded:)();
  sub_10000B58C(&qword_100AD5B98, &qword_100AD5B88, &qword_100944550, &protocol conformance descriptor for AsyncFilterSequence<A>);
  AsyncMapSequence.init(_:transform:)();
  NSPersistentStoreCoordinator.storesDidChangeNotifications.getter();
  sub_1000F24EC(&qword_100AD5BA0, &qword_100966750);
  sub_10000B58C(&qword_100AD5BA8, &qword_100AD5BA0, &qword_100966750, &protocol conformance descriptor for AsyncSyncSequence<A>);
  sub_10000B58C(&qword_100AD5BB0, &qword_100AD5B90, &qword_100944558, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  swift_getOpaqueTypeConformance2();
  merge<A, B, C>(_:_:_:)();
  v2 = AsyncMerge3Sequence.makeAsyncIterator()();
  v0[34] = v2;
  sub_1000BE578(v1);
  v0[10] = v2;
  swift_beginAccess();
  v3 = swift_task_alloc();
  v0[35] = v3;
  v4 = sub_1000F24EC(&qword_100AD5BB8, &qword_100944570);
  *v3 = v0;
  v3[1] = sub_100178B88;

  return AsyncMerge3Sequence.Iterator.next()(v0 + 57, v4);
}

uint64_t sub_100178B88()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_100178EEC;
  }

  else
  {
    *(v2 + 58) = *(v2 + 57);
    v3 = sub_100178CA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100178CC0()
{
  if (*(v0 + 58) == 1)
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 248);
    v3 = *(v0 + 256);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);

    (*(v5 + 8))(v4, v6);
    (*(v3 + 8))(v1, v2);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 296) = Strong;
    if (Strong)
    {
      v10 = swift_task_alloc();
      *(v0 + 304) = v10;
      *v10 = v0;
      v10[1] = sub_100178F78;

      return sub_100179B44();
    }

    else
    {
      *(v0 + 312) = type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100179128, v12, v11);
    }
  }
}

uint64_t sub_100178EEC()
{
  *(v0 + 88) = *(v0 + 288);
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100178F78()
{

  return _swift_task_switch(sub_100179090, 0, 0);
}

uint64_t sub_100179090()
{
  *(v0 + 312) = type metadata accessor for MainActor();
  *(v0 + 320) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100179128, v2, v1);
}

uint64_t sub_100179128()
{

  return _swift_task_switch(sub_100179190, 0, 0);
}

uint64_t sub_100179190(uint64_t a1)
{
  *(v1 + 328) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017921C, v3, v2);
}

uint64_t sub_10017921C()
{

  return _swift_task_switch(sub_100179284, 0, 0);
}

uint64_t sub_100179284(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 120);
  v5 = static Duration.seconds(_:)();
  v7 = v6;
  static Clock<>.continuous.getter();
  *(v1 + 64) = v5;
  *(v1 + 72) = v7;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 56) = 1;
  v8 = sub_100184A84(&qword_100AD5BC8, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_100184A84(&unk_100AD5BD0, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v9 = *(v3 + 8);
  *(v1 + 336) = v9;
  *(v1 + 344) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = swift_task_alloc();
  *(v1 + 352) = v10;
  *v10 = v1;
  v10[1] = sub_100179448;
  v12 = *(v1 + 144);
  v11 = *(v1 + 152);

  return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v1 + 40, v11, v8);
}

uint64_t sub_100179448()
{
  v2 = *v1;
  *(v2 + 360) = v0;

  if (v0)
  {
    (*(v2 + 336))(*(v2 + 144), *(v2 + 120));

    return _swift_task_switch(sub_100179620, 0, 0);
  }

  else
  {
    v4 = *(v2 + 160);
    v3 = *(v2 + 168);
    v5 = *(v2 + 152);
    (*(v2 + 336))(*(v2 + 144), *(v2 + 120));
    (*(v4 + 8))(v3, v5);
    v6 = swift_task_alloc();
    *(v2 + 280) = v6;
    v7 = sub_1000F24EC(&qword_100AD5BB8, &qword_100944570);
    *v6 = v2;
    v6[1] = sub_100178B88;

    return AsyncMerge3Sequence.Iterator.next()(v2 + 57, v7);
  }
}

uint64_t sub_100179620()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[32];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100179774()
{
  type metadata accessor for JournalEntryAssetMO();
  v1 = NSManagedObjectContext.ObjectIDNotification.affects<A>(_:where:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t sub_1001797FC()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  JournalEntryAssetMO.type.getter();
  v10 = type metadata accessor for AssetType();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1000082B4(v9, v6, &qword_100AE4290, &qword_100945270);
    v13 = (*(v11 + 88))(v6, v10);
    if (v13 == enum case for AssetType.photo(_:) || v13 == enum case for AssetType.livePhoto(_:) || v13 == enum case for AssetType.video(_:))
    {
      sub_100004F84(v9, &qword_100AE4290, &qword_100945270);
      (*(v1 + 104))(v3, enum case for JournalFeatureFlags.mapViewPhotos(_:), v0);
      v12 = JournalFeatureFlags.isEnabled.getter();
      (*(v1 + 8))(v3, v0);
      return v12 & 1;
    }

    if (v13 == enum case for AssetType.multiPinMap(_:))
    {
      sub_100004F84(v9, &qword_100AE4290, &qword_100945270);
      v12 = 1;
      return v12 & 1;
    }

    if (v13 == enum case for AssetType.workoutRoute(_:))
    {
      (*(v1 + 104))(v3, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v0);
      v12 = JournalFeatureFlags.isEnabled.getter();
      (*(v1 + 8))(v3, v0);
      sub_100004F84(v9, &qword_100AE4290, &qword_100945270);
      return v12 & 1;
    }

    (*(v11 + 8))(v6, v10);
  }

  sub_100004F84(v9, &qword_100AE4290, &qword_100945270);
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_100179B44()
{
  v1[25] = v0;
  v1[26] = *v0;
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v1[27] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v1[28] = swift_task_alloc();
  v2 = type metadata accessor for AssetType();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[32] = v3;
  v1[33] = *(v3 - 8);
  v1[34] = swift_task_alloc();
  v4 = type metadata accessor for ProtectedData.ProtectedDataState();
  v1[35] = v4;
  v1[36] = *(v4 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = type metadata accessor for MainActor();
  v1[40] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v6;
  v1[42] = v5;

  return _swift_task_switch(sub_100179D98, v6, v5);
}

uint64_t sub_100179D98()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v4 + 104))(v2, enum case for ProtectedData.ProtectedDataState.available(_:), v3);
  v5 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 272);
    v31 = *(v0 + 208);
    v32 = *(v0 + 264);
    v30 = *(v0 + 200);
    v7 = swift_allocObject();
    *(v0 + 344) = v7;
    *(v7 + 16) = 0;
    v8 = swift_allocObject();
    *(v0 + 352) = v8;
    *(v8 + 16) = _swiftEmptyArrayStorage;
    v29 = swift_allocObject();
    *(v0 + 360) = v29;
    *(v29 + 16) = _swiftEmptyArrayStorage;
    v28 = swift_allocObject();
    *(v0 + 368) = v28;
    *(v28 + 16) = _swiftEmptyArrayStorage;
    v9 = swift_allocObject();
    *(v0 + 376) = v9;
    *(v9 + 16) = _swiftEmptyArrayStorage;
    v10 = swift_allocObject();
    *(v0 + 384) = v10;
    *(v10 + 16) = &_swiftEmptyDictionarySingleton;
    *(v0 + 392) = CFAbsoluteTimeGetCurrent();
    type metadata accessor for JournalEntryAssetMO();
    v11 = static JournalEntryAssetMO.fetchRequest()();
    *(v0 + 400) = v11;
    sub_1000065A8(0, &unk_100AD5AF0, NSCompoundPredicate_ptr);
    v12 = static NSPredicate.allNotDeletedAssets.getter();
    [v11 setPredicate:v12];

    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100941D50;
    v14 = objc_allocWithZone(NSSortDescriptor);
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 initWithKey:v15 ascending:0];

    *(v13 + 32) = v16;
    sub_1000065A8(0, &qword_100AD5B00, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setSortDescriptors:isa];

    v18 = swift_allocObject();
    *(v0 + 408) = v18;
    v18[2] = v7;
    v18[3] = v30;
    v18[4] = v11;
    v18[5] = v10;
    v18[6] = v8;
    v18[7] = v29;
    v18[8] = v9;
    v18[9] = v28;
    v18[10] = v31;
    (*(v32 + 104))(v34, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v33);

    v19 = v11;

    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v20[1] = sub_10017A32C;
    v21 = *(v0 + 272);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_100183748, v18, &type metadata for () + 1);
  }

  else
  {

    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000617C(v22, qword_100AD5820);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Returning early from DataAggregator.updateData() because isProtectedDataAvailable == false. Most likely because the device is locked.", v25, 2u);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_10017A32C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
  }

  else
  {
    (*(v2[33] + 8))(v2[34], v2[32]);

    v4 = v2[41];
    v5 = v2[42];

    return _swift_task_switch(sub_10017A484, v4, v5);
  }
}

void sub_10017A484()
{
  v68 = v0;
  v3 = v0[48];
  v4 = v0[30];

  swift_beginAccess();
  v5 = *(v3 + 16);
  sub_1000F24EC(&qword_100AD5B08, &qword_100944300);
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  v8 = v5 + 64;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v61 = v6 + 64;
  v63 = v4;
  v65 = v5;
  v60 = (v4 + 32);

  v13 = 0;
  for (i = v0; v11; v7[2] = v23)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_10:
    v2 = v14 | (v13 << 6);
    v17 = *(v63 + 72) * v2;
    (*(v63 + 16))(v0[31], *(v65 + 48) + v17, v0[29]);
    v1 = *(*(v65 + 56) + 8 * v2);
    if ((v1 & 0xC000000000000001) != 0)
    {

      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *(v1 + 16);
    }

    v0 = i;
    v19 = i[31];
    v20 = i[29];
    *(v61 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v2;
    (*v60)(v7[6] + v17, v19, v20);
    *(v7[7] + 8 * v2) = v18;
    v21 = v7[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_43;
    }
  }

  v15 = v13;
  while (1)
  {
    v13 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v13 >= v12)
    {
      break;
    }

    v16 = *(v8 + 8 * v13);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  v24 = v0[53];
  v25 = v0[44];

  swift_getKeyPath();
  swift_getKeyPath();
  i[20] = v7;

  static Published.subscript.setter();
  swift_beginAccess();
  v67[0] = *(v25 + 16);
  swift_bridgeObjectRetain_n();
  sub_1001809F0(v67);
  if (v24)
  {

    return;
  }

  v26 = i[45];

  v27 = v67[0];
  swift_getKeyPath();
  swift_getKeyPath();
  i[21] = v27;
  v1 = i;

  static Published.subscript.setter();
  swift_beginAccess();
  v2 = *(v26 + 16);
  v67[0] = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_44;
  }

  for (j = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!j)
    {
      break;
    }

    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v29 = *(v2 + 8 * v1 + 32);
      }

      v30 = v29;
      v31 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v32 = i[28];
      v33 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      sub_1000082B4(v30 + v33, v32, &unk_100AD4790, &unk_10093B4E0);
      v34 = type metadata accessor for Date();
      v35 = (*(*(v34 - 8) + 48))(v32, 1, v34);
      v36 = i[28];
      if (v35 == 1)
      {

        sub_100004F84(v36, &unk_100AD4790, &unk_10093B4E0);
      }

      else
      {
        sub_100004F84(i[28], &unk_100AD4790, &unk_10093B4E0);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v1;
      if (v31 == j)
      {
        v1 = i;
        goto LABEL_31;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_31:

  v67[0] = sub_1004FCDD4(v38, v37);
  sub_100180974(v67);

  v39 = v67[0];
  if ((v67[0] & 0x8000000000000000) != 0 || (v67[0] & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

LABEL_46:

    v41 = 0;
    goto LABEL_47;
  }

  if (!*(v67[0] + 2))
  {
    goto LABEL_46;
  }

LABEL_36:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v39 + 16))
    {
      __break(1u);
      return;
    }

    v40 = *(v39 + 32);
  }

  v41 = v40;

LABEL_47:
  v62 = v41;
  v64 = *(v1 + 400);
  v42 = *(v1 + 392);
  v43 = *(v1 + 376);
  v44 = *(v1 + 360);
  v45 = *(v1 + 368);
  v46 = *(v1 + 344);
  v47 = v1;
  v48 = *(v1 + 216);
  v49 = *(v47 + 200);
  v50 = *(v44 + 16);

  sub_1001841F0(v41, v50, 5);
  v52 = v51;

  v53 = type metadata accessor for TaskPriority();
  (*(*(v53 - 8) + 56))(v48, 1, 1, v53);

  v54 = static MainActor.shared.getter();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = &protocol witness table for MainActor;
  v55[4] = v49;
  v55[5] = v52;
  sub_1003E9628(0, 0, v48, &unk_1009443A0, v55);

  v56 = *(v44 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 176) = v56;

  static Published.subscript.setter();
  swift_beginAccess();
  v57 = *(v45 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 184) = v57;

  static Published.subscript.setter();
  swift_beginAccess();
  v58 = *(v43 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 192) = v58;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v47 + 432) = 1;

  static Published.subscript.setter();

  sub_10017B128(v46, v49, v42);

  v59 = *(v47 + 8);

  v59();
}

uint64_t sub_10017AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000082B4(a3, v22 - v9, &qword_100AD5170, &unk_100943680);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100004F84(v10, &qword_100AD5170, &unk_100943680);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10017B034()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10017B0BC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double sub_10017B128(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_100ACF9C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AD5820);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 134218498;
    swift_beginAccess();
    *(v8 + 4) = *(a1 + 16);

    *(v8 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = *(v17 + 16);

    *(v8 + 14) = v10;

    *(v8 + 22) = 2080;
    sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v11 + 56) = &type metadata for Double;
    *(v11 + 64) = &protocol witness table for Double;
    *(v11 + 32) = Current - a3;
    v13 = String.init(format:_:)();
    v15 = sub_100008458(v13, v14, &v18);

    *(v8 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "DataAggregator.updateData: processed %ld assets, %ld recent places. Compled in %s seconds", v8, 0x20u);
    sub_10000BA7C(v9);
  }

  else
  {
  }

  return result;
}

void sub_10017B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[0] = a1;
  v29[1] = a2;
  v30 = a9;
  v31 = a3;
  v14 = type metadata accessor for JournalFeatureFlags();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v14, v16);
  JournalFeatureFlags.isEnabled.getter();
  (*(v15 + 8))(v18, v14);
  v32 = a4 + 16;
  v33 = a5 + 16;
  v34 = a6 + 16;
  v35 = a7 + 16;
  v36 = a8 + 16;
  v37 = v30;
  type metadata accessor for JournalEntryAssetMO();
  v19 = v38;
  v20 = NSManagedObjectContext.forEach<A>(_:batchSize:using:)();
  if (v19)
  {
    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000617C(v21, qword_100AD5820);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "DataAggregator updateRecentPlaces fetch error: %@", v24, 0xCu);
      sub_100004F84(v25, &unk_100AD4BB0, &unk_100941E50);
    }

    else
    {
    }
  }

  else
  {
    v27 = v20;
    v28 = v29[0];
    swift_beginAccess();
    *(v28 + 16) = v27;
  }
}

uint64_t sub_10017B6CC(void *a1, char *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v422 = a6;
  v423 = a5;
  v457 = a4;
  v459 = a3;
  v463 = a2;
  v469 = a1;
  v6 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  __chkstk_darwin(v6 - 8);
  v432 = &v411 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v433 = &v411 - v9;
  __chkstk_darwin(v10);
  v434 = &v411 - v11;
  v451 = type metadata accessor for PhotoLibraryAssetMetadata();
  v446 = *(v451 - 1);
  __chkstk_darwin(v451);
  v425 = (&v411 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v426 = (&v411 - v14);
  __chkstk_darwin(v15);
  v427 = (&v411 - v16);
  v17 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
  __chkstk_darwin(v17 - 8);
  v443 = &v411 - v18;
  v445 = type metadata accessor for WorkoutRouteAssetMetadata();
  v444 = *(v445 - 1);
  __chkstk_darwin(v445);
  v436 = &v411 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for JournalFeatureFlags();
  v460 = *(v462 - 1);
  __chkstk_darwin(v462);
  v461 = &v411 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v21 - 8);
  v453 = &v411 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v429 = &v411 - v24;
  __chkstk_darwin(v25);
  v438 = &v411 - v26;
  __chkstk_darwin(v27);
  v448 = &v411 - v28;
  __chkstk_darwin(v29);
  v442 = &v411 - v30;
  __chkstk_darwin(v31);
  v430 = &v411 - v32;
  __chkstk_darwin(v33);
  v437 = &v411 - v34;
  v458 = type metadata accessor for Date();
  v450 = *(v458 - 8);
  __chkstk_darwin(v458);
  v428 = &v411 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v441 = &v411 - v37;
  v452 = type metadata accessor for DataAggregator.Place(0);
  v467 = *(v452 - 8);
  __chkstk_darwin(v452);
  v440 = &v411 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v466 = &v411 - v40;
  v456 = type metadata accessor for VisitAssetMetadata();
  v464 = *(v456 - 8);
  __chkstk_darwin(v456);
  v465 = (&v411 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v455 = type metadata accessor for MultiPinMapAssetMetadata();
  v454 = *(v455 - 8);
  __chkstk_darwin(v455);
  v439 = &v411 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v43 - 8);
  v45 = &v411 - v44;
  v46 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  __chkstk_darwin(v46 - 8);
  v447 = &v411 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v431 = &v411 - v49;
  __chkstk_darwin(v50);
  v52 = &v411 - v51;
  v470 = type metadata accessor for AssetType();
  v471 = *(v470 - 8);
  __chkstk_darwin(v470);
  v424 = &v411 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v435 = &v411 - v55;
  __chkstk_darwin(v56);
  v449 = (&v411 - v57);
  __chkstk_darwin(v58);
  v60 = &v411 - v59;
  __chkstk_darwin(v61);
  v63 = &v411 - v62;
  __chkstk_darwin(v64);
  v468 = (&v411 - v65);
  v66 = type metadata accessor for ProtectedData.ProtectedDataState();
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v411 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v72 = &v411 - v71;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v67 + 104))(v69, enum case for ProtectedData.ProtectedDataState.available(_:), v66);
  v73 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v74 = *(v67 + 8);
  v74(v69, v66);
  v75 = v72;
  LODWORD(v72) = v73;
  v74(v75, v66);
  if ((v73 & 1) == 0)
  {
    if (qword_100ACF9C0 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000617C(v79, qword_100AD5820);
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "Returning early from DataAggregator.updateData() assets loop because isProtectedDataAvailable == false. Most likely because the device is locked.", v82, 2u);
    }

    return v72 & 1;
  }

  v76 = v469;
  JournalEntryAssetMO.type.getter();
  v77 = v471;
  v78 = v470;
  if ((*(v471 + 6))(v52, 1, v470) == 1)
  {
    sub_100004F84(v52, &qword_100AE4290, &qword_100945270);
    return v72 & 1;
  }

  v83 = v468;
  v77[4](v468, v52, v78);
  v84 = [v76 entry];
  if (v84)
  {
    v85 = v84;
    v86 = [v84 objectID];

    if (v86)
    {
      v87 = v463;
      swift_beginAccess();
      v88 = *v87;
      if (*(v88 + 16) && (v89 = sub_100362044(v83), (v90 & 1) != 0))
      {
        v91 = v72;
        v92 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v475 = v92;
      }

      else
      {
        v91 = v72;
        swift_endAccess();
        v475 = _swiftEmptySetSingleton;
      }

      v93 = v86;
      sub_100288038(&v479, v93);

      v94 = v475;
      v72 = v463;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v474 = *v72;
      *v72 = 0x8000000000000000;
      sub_1002022DC(v94, v83, isUniquelyReferenced_nonNull_native);
      *v72 = v474;
      swift_endAccess();

      LODWORD(v72) = v91;
      v78 = v470;
    }
  }

  v96 = *(v471 + 13);
  v417 = enum case for AssetType.multiPinMap(_:);
  v420 = v471 + 104;
  v419 = v96;
  v96(v63);
  v97 = sub_100184A84(&qword_100AD5B40, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v418 = v97;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v479 == v475 && v480 == v476)
  {
    v98 = 1;
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v99 = *(v471 + 1);
  v463 = v471 + 8;
  v421 = v99;
  v99(v63, v78);

  if ((v98 & 1) == 0)
  {
    v113 = v460;
    v114 = *(v460 + 13);
    v115 = v461;
    v116 = v462;
    v114(v461, enum case for JournalFeatureFlags.mapViewWorkouts(_:), v462);
    v117 = JournalFeatureFlags.isEnabled.getter();
    v118 = *(v113 + 1);
    v118(v115, v116);
    if (v117)
    {
      LODWORD(v467) = enum case for AssetType.workoutRoute(_:);
      v419(v60);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v479 == v475 && v480 == v476)
      {
        v421(v60, v78);

LABEL_39:
        v121 = sub_100039CE0();
        type metadata accessor for WorkoutRouteAsset(0);
        v122 = swift_dynamicCastClass();
        if (v122)
        {
          v123 = v468;
          if (*(v122 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
          {
            v124 = v121;

            v125 = v443;
            sub_10025B758(v443);

            v126 = v444;
            v127 = v445;
            if (v444[6](v125, 1, v445) != 1)
            {
              v316 = v436;
              (v126)[4](v436, v125, v127);
              v317 = [v469 entry];
              if (v317)
              {
                v318 = v317;
                v100 = [v317 objectID];

                if (v100)
                {
                  v319 = WorkoutRouteAssetMetadata.route.getter();
                  if (v319)
                  {
                    v76 = v319;
                    v197 = v319 & 0xFFFFFFFFFFFFFF8;
                    if (v319 >> 62)
                    {
                      goto LABEL_245;
                    }

                    if (*((v319 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_180;
                    }

LABEL_246:

                    goto LABEL_247;
                  }
                }
              }

LABEL_248:
              (v126[1])(v316, v127);
              v119 = v123;
              goto LABEL_249;
            }

            v421(v123, v78);
          }

          else
          {

            v421(v123, v78);
            v125 = v443;
            (v444[7])(v443, 1, 1, v445);
          }

          sub_100004F84(v125, &qword_100AD5B28, &unk_10094FA90);
          return v72 & 1;
        }

LABEL_171:
        v119 = v468;
        goto LABEL_249;
      }

      v120 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v421(v60, v78);

      v116 = v462;
      v115 = v461;
      if (v120)
      {
        goto LABEL_39;
      }
    }

    v114(v115, enum case for JournalFeatureFlags.mapViewPhotos(_:), v116);
    v128 = v116;
    v129 = JournalFeatureFlags.isEnabled.getter();
    v118(v115, v128);
    if ((v129 & 1) == 0)
    {
      goto LABEL_171;
    }

    v130 = v449;
    (v419)(v449, enum case for AssetType.photo(_:), v78);
    v131 = v468;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v479 == v475 && v480 == v476)
    {
      v421(v130, v78);

      v132 = v453;
      v133 = v451;
      goto LABEL_188;
    }

    v134 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v421(v130, v78);

    v132 = v453;
    v133 = v451;
    if ((v134 & 1) == 0)
    {
      v135 = v435;
      (v419)(v435, enum case for AssetType.video(_:), v78);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v479 == v475 && v480 == v476)
      {
        goto LABEL_50;
      }

      v351 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v421(v135, v78);

      if ((v351 & 1) == 0)
      {
        v135 = v424;
        (v419)(v424, enum case for AssetType.livePhoto(_:), v78);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v479 == v475 && v480 == v476)
        {
LABEL_50:
          v421(v135, v78);

          goto LABEL_188;
        }

        v364 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v421(v135, v78);

        if ((v364 & 1) == 0)
        {
          goto LABEL_226;
        }
      }
    }

LABEL_188:
    v352 = v469;
    v100 = sub_100039CE0();
    v353 = [v352 entry];
    if (!v353)
    {

      v119 = v131;
      goto LABEL_249;
    }

    v354 = v353;
    v355 = [v353 objectID];

    if (!v355)
    {
      v421(v131, v78);

      return v72 & 1;
    }

    v356 = *(v450 + 56);
    v450 += 56;
    v469 = v356;
    (v356)(v132, 1, 1, v458);
    type metadata accessor for PhotoAsset(0);
    v357 = swift_dynamicCastClass();
    if (v357)
    {
      if (!*(v357 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
      {
        v359 = v434;
        (*(v446 + 56))(v434, 1, 1, v133);
        goto LABEL_197;
      }

      v358 = v100;

      v359 = v434;
      sub_100046ADC(v434);

      v360 = v446;
      if ((*(v446 + 48))(v359, 1, v133) == 1)
      {

LABEL_197:
        sub_100004F84(v359, &qword_100AD5B20, qword_1009521A0);
        goto LABEL_207;
      }

      v361 = v427;
      (*(v360 + 32))(v427, v359, v133);
      v362 = PhotoLibraryAssetMetadata.latitude.getter();
      if (v363)
      {
        (*(v360 + 8))(v361, v133);
      }

      else
      {
        v365 = *&v362;
        v366 = PhotoLibraryAssetMetadata.longitude.getter();
        if ((v367 & 1) == 0)
        {
          goto LABEL_234;
        }

        v133 = v451;
        (*(v446 + 8))(v361, v451);
      }

      v132 = v453;
    }

LABEL_207:
    type metadata accessor for LivePhotoAsset(0);
    v368 = swift_dynamicCastClass();
    if (v368)
    {
      if (*(v368 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
      {
        v369 = v100;

        v370 = v433;
        sub_100046ADC(v433);

        v371 = v446;
        if ((*(v446 + 48))(v370, 1, v133) != 1)
        {
          v361 = v426;
          (*(v371 + 32))(v426, v370, v133);
          v372 = PhotoLibraryAssetMetadata.latitude.getter();
          if (v373)
          {
            (*(v371 + 8))(v361, v133);
          }

          else
          {
            v365 = *&v372;
            v366 = PhotoLibraryAssetMetadata.longitude.getter();
            if ((v374 & 1) == 0)
            {
              goto LABEL_234;
            }

            v133 = v451;
            (*(v446 + 8))(v361, v451);
          }

          v132 = v453;
          goto LABEL_218;
        }
      }

      else
      {
        v370 = v433;
        (*(v446 + 56))(v433, 1, 1, v133);
      }

      sub_100004F84(v370, &qword_100AD5B20, qword_1009521A0);
    }

LABEL_218:
    type metadata accessor for VideoAsset(0);
    v375 = swift_dynamicCastClass();
    if (!v375)
    {
LABEL_224:

LABEL_225:
      sub_100004F84(v132, &unk_100AD4790, &unk_10093B4E0);
LABEL_226:
      v119 = v131;
      goto LABEL_249;
    }

    if (!*(v375 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
    {
      v377 = v432;
      (*(v446 + 56))(v432, 1, 1, v133);
      goto LABEL_223;
    }

    v376 = v100;

    v377 = v432;
    sub_100046ADC(v432);

    v378 = v446;
    if ((*(v446 + 48))(v377, 1, v133) == 1)
    {

LABEL_223:
      sub_100004F84(v377, &qword_100AD5B20, qword_1009521A0);
      goto LABEL_224;
    }

    v361 = v425;
    (*(v378 + 32))(v425, v377, v133);
    v379 = PhotoLibraryAssetMetadata.latitude.getter();
    if (v380)
    {
      (*(v378 + 8))(v361, v133);
LABEL_233:

      v132 = v453;
      goto LABEL_225;
    }

    v365 = *&v379;
    v366 = PhotoLibraryAssetMetadata.longitude.getter();
    if (v381)
    {
      (*(v446 + 8))(v361, v451);
      goto LABEL_233;
    }

LABEL_234:
    v382 = [objc_allocWithZone(CLLocation) initWithLatitude:v365 longitude:*&v366];
    v466 = PhotoLibraryAssetMetadata.placeName.getter();
    v467 = v383;
    v384 = v429;
    PhotoLibraryAssetMetadata.date.getter();

    (*(v446 + 8))(v361, v451);
    v132 = v453;
    sub_100004F84(v453, &unk_100AD4790, &unk_10093B4E0);
    sub_100021CEC(v384, v132, &unk_100AD4790, &unk_10093B4E0);
    v465 = v382;
    if (v382)
    {
      v414 = v72;
      v385 = v471;
      v386 = v431;
      (*(v471 + 2))(v431, v100 + OBJC_IVAR____TtC7Journal5Asset_type, v78);
      v387 = *(v385 + 7);
      v387(v386, 0, 1, v78);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v388 = swift_allocObject();
      v471 = v388;
      *(v388 + 16) = xmmword_100941D50;
      *(v388 + 32) = v355;
      sub_1000082B4(v132, v384, &unk_100AD4790, &unk_10093B4E0);
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v389 = type metadata accessor for UUID();
      v390 = *(v389 - 8);
      v391 = (*(v390 + 80) + 32) & ~*(v390 + 80);
      v392 = swift_allocObject();
      v464 = v392;
      *(v392 + 16) = xmmword_100940080;
      (*(v390 + 16))(v392 + v391, v100 + OBJC_IVAR____TtC7Journal5Asset_id, v389);
      v462 = type metadata accessor for DataAggregator.EntryPlace(0);
      v393 = objc_allocWithZone(v462);
      v394 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
      v387(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v78);
      v395 = v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName;
      *v395 = 0;
      v395[1] = 0;
      v396 = v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
      *v396 = 0;
      v396[1] = 0;
      v397 = v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city;
      *v397 = 0;
      v397[1] = 0;
      v398 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
      v457 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
      v460 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
      v399 = v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
      *v399 = 0;
      v399[8] = 0;
      v456 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
      v459 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      (v469)(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v458);
      v461 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
      v400 = v465;
      *(v393 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v465;
      swift_beginAccess();
      v401 = v400;
      v469 = v355;
      v402 = v431;
      sub_100184ACC(v431, v393 + v394, &qword_100AE4290, &qword_100945270);
      swift_endAccess();
      v403 = v467;
      *v395 = v466;
      v395[1] = v403;
      v78 = v401;

      *v396 = 0;
      v396[1] = 0;

      *v397 = 0;
      v397[1] = 0;

      v404 = *(v393 + v398);
      *(v393 + v398) = 0;

      v405 = *(v457 + v393);
      *(v457 + v393) = 0;

      v460[v393] = 2;
      *v399 = 0;
      v399[8] = 1;
      *(v393 + v456) = v471;

      v406 = v459;
      swift_beginAccess();
      v407 = v429;
      sub_100184ACC(v429, v406 + v393, &unk_100AD4790, &unk_10093B4E0);
      swift_endAccess();
      *&v461[v393] = v464;

      v478.receiver = v393;
      v478.super_class = v462;
      v408 = objc_msgSendSuper2(&v478, "init");

      sub_100004F84(v407, &unk_100AD4790, &unk_10093B4E0);
      sub_100004F84(v402, &qword_100AE4290, &qword_100945270);
      v409 = v422;
      swift_beginAccess();
      v76 = v408;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v409 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v409 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_253;
      }

      goto LABEL_236;
    }

    goto LABEL_225;
  }

  v100 = sub_100039CE0();
  type metadata accessor for MultiPinMapAsset(0);
  v101 = swift_dynamicCastClass();
  if (!v101)
  {

    goto LABEL_37;
  }

  if (!*(v101 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
LABEL_27:
    if (qword_100ACF9C0 != -1)
    {
      goto LABEL_242;
    }

    goto LABEL_28;
  }

  v102 = v100;

  sub_1000768B4(v45);

  v103 = v454;
  v104 = v455;
  if ((*(v454 + 48))(v45, 1, v455))
  {

    sub_100004F84(v45, &unk_100AD5B30, &unk_100941F80);
    goto LABEL_27;
  }

  v453 = v102;
  v136 = v439;
  (*(v103 + 16))(v439, v45, v104);
  sub_100004F84(v45, &unk_100AD5B30, &unk_100941F80);
  v137 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v103 + 8))(v136, v104);
  if (!v137)
  {

    goto LABEL_27;
  }

  v138 = v452;
  v100 = v456;
  v139 = v465;
  v461 = v137[2];
  if (!v461)
  {
LABEL_174:
    v315 = v453;

    goto LABEL_37;
  }

  v413 = OBJC_IVAR____TtC7Journal5Asset_id;
  v462 = v137;
  v140 = v464;
  v460 = v462 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
  swift_beginAccess();
  v76 = v457;
  swift_beginAccess();
  swift_beginAccess();
  v127 = 0;
  v455 = v140 + 16;
  v446 = v450 + 48;
  v449 = (v450 + 32);
  v450 += 56;
  v451 = v471 + 56;
  v454 = v140 + 8;
  v141 = v462;
  v412 = xmmword_100941D50;
  v411 = xmmword_100940080;
  v414 = v72;
  while (1)
  {
    if (v127 >= v141[2])
    {
      goto LABEL_241;
    }

    (*(v464 + 16))(v139, &v460[*(v464 + 72) * v127], v100);
    v142 = VisitAssetMetadata.latitude.getter();
    if (v143)
    {
      goto LABEL_55;
    }

    v76 = v142;
    v144 = VisitAssetMetadata.longitude.getter();
    if (v145)
    {
      goto LABEL_55;
    }

    v146 = *&v76;
    v147 = *&v144;
    v471 = [objc_allocWithZone(CLLocation) initWithLatitude:*&v76 longitude:*&v144];
    v148 = *v459;
    v76 = *(*v459 + 16);
    if (v76 <= 0x13)
    {
      break;
    }

LABEL_86:
    v195 = [v469 entry];
    if (!v195)
    {

LABEL_55:
      (*v454)(v139, v100);
      goto LABEL_56;
    }

    v196 = v195;
    v76 = [v195 objectID];

    if (v76)
    {
      v197 = *v457;
      v78 = (*v457 & 0xFFFFFFFFFFFFFF8);
      if (*v457 >> 62)
      {
        v198 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v198 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v83 = v197 & 0xC000000000000001;

      v72 = -v198;
      v100 = 4;
      while (1)
      {
        if (v72 + v100 == 4)
        {
          v126 = v76;

          v78 = v470;
          v72 = v448;
          goto LABEL_111;
        }

        v199 = v100 - 4;
        if (v83)
        {
          v200 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v199 >= *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_239;
          }

          v200 = *(v197 + 8 * v100);
        }

        v201 = v200;
        v202 = *&v200[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location];
        [v202 distanceFromLocation:v471];
        v204 = v203;

        if (v204 <= 10.0)
        {
          break;
        }

        ++v100;
        if (__OFADD__(v199, 1))
        {
          goto LABEL_240;
        }
      }

      v124 = *v457;
      v123 = v465;
      v126 = v76;
      if (!(*v457 >> 62))
      {
        v78 = v470;
        v72 = v448;
        if (v199 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_104;
        }

LABEL_111:
        v214 = [objc_allocWithZone(CLLocation) initWithLatitude:v146 longitude:v147];
        v215 = v447;
        (v419)(v447, v417, v78);
        v444 = *v451;
        (v444)(v215, 0, 1, v78);
        v216 = VisitAssetMetadata.placeName.getter();
        if (v217)
        {
          v418 = v217;
          v422 = v216;
          v218 = v126;
        }

        else
        {
          v219 = VisitAssetMetadata.mapItemData.getter();
          v218 = v126;
          if (v220 >> 60 != 15 && (v221 = v219, v222 = v220, sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr), v223 = static NSCoding<>.create(from:)(), v224 = sub_10003A5C8(v221, v222), v223) && (v225 = [v223 name], v223, v225))
          {
            v422 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v418 = v226;
          }

          else
          {
            v422 = 0;
            v418 = 0xE000000000000000;
          }
        }

        v227 = VisitAssetMetadata.typeOfPlace.getter();
        if (v228)
        {
          v229 = v227;
        }

        else
        {
          v229 = 0;
        }

        v230 = 0xE000000000000000;
        if (v228)
        {
          v230 = v228;
        }

        v439 = v230;
        v231 = VisitAssetMetadata.city.getter();
        if (v232)
        {
          v415 = v232;
          v416 = v231;
        }

        else
        {
          v231 = VisitAssetMetadata.mapItemData.getter();
          if (v233 >> 60 != 15 && (v234 = v231, v235 = v233, sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr), v236 = static NSCoding<>.create(from:)(), v237 = sub_10003A5C8(v234, v235), v236) && (v238 = [v236 addressRepresentations], v236, v238) && (v239 = objc_msgSend(v238, "cityName"), v238, v239))
          {
            v416 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v415 = v240;
          }

          else
          {
            v416 = 0;
            v415 = 0xE000000000000000;
          }
        }

        v241 = sub_100579A18(v231);
        v242 = VisitAssetMetadata.mapItemData.getter();
        v445 = v214;
        v443 = v229;
        v435 = v241;
        if (v243 >> 60 == 15)
        {
          v434 = 0;
        }

        else
        {
          v244 = v242;
          v245 = v243;
          sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
          v434 = static NSCoding<>.create(from:)();
          sub_10003A5C8(v244, v245);
        }

        v246 = v438;
        v247 = VisitAssetMetadata.isWork.getter();
        v248 = VisitAssetMetadata.horizontalAccuracy.getter();
        v250 = v249;
        sub_1000F24EC(&unk_100AD4780, &unk_100941070);
        v251 = swift_allocObject();
        *(v251 + 16) = v412;
        v433 = v251;
        *(v251 + 32) = v218;
        v436 = v218;
        VisitAssetMetadata.visitStartTime.getter();
        v252 = *v446;
        v253 = v458;
        if ((*v446)(v246, 1, v458) == 1)
        {
          VisitAssetMetadata.createdDate.getter();
          if (v252(v246, 1, v253) != 1)
          {
            sub_100004F84(v246, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          (*v449)(v72, v246, v253);
          (*v450)(v72, 0, 1, v253);
        }

        LODWORD(v432) = v247 & 1;
        if (v250)
        {
          v254 = 0;
        }

        else
        {
          v254 = v248;
        }

        v429 = v254;
        sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
        v255 = type metadata accessor for UUID();
        v256 = *(v255 - 8);
        v257 = (*(v256 + 80) + 32) & ~*(v256 + 80);
        v258 = swift_allocObject();
        v427 = v258;
        *(v258 + 16) = v411;
        (*(v256 + 16))(v258 + v257, &v453[v413], v255);
        v426 = type metadata accessor for DataAggregator.EntryPlace(0);
        v259 = objc_allocWithZone(v426);
        v260 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        (v444)(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v470);
        v261 = (v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName);
        *v261 = 0;
        v261[1] = 0;
        v262 = v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
        *v262 = 0;
        v262[1] = 0;
        v263 = (v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city);
        *v263 = 0;
        v263[1] = 0;
        v264 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
        v265 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
        v425 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
        v266 = v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
        *v266 = 0;
        v266[8] = 0;
        v423 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
        v424 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        (*v450)(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v253);
        v444 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
        v267 = v445;
        *(v259 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v445;
        swift_beginAccess();
        v445 = v267;
        v268 = v259 + v260;
        v269 = v447;
        sub_100184ACC(v447, v268, &qword_100AE4290, &qword_100945270);
        swift_endAccess();
        v270 = v418;
        *v261 = v422;
        v261[1] = v270;

        v271 = v439;
        *v262 = v443;
        v262[1] = v271;

        v272 = v415;
        *v263 = v416;
        v263[1] = v272;

        v273 = *(v259 + v264);
        v274 = v435;
        *(v259 + v264) = v435;
        v275 = v274;

        v276 = *(v259 + v265);
        v277 = v434;
        *(v259 + v265) = v434;
        v278 = v277;

        *(v425 + v259) = v432;
        *v266 = v429;
        v266[8] = 0;
        *(v259 + v423) = v433;

        v279 = v424;
        swift_beginAccess();
        v280 = &v279[v259];
        v281 = v448;
        v76 = &unk_100AD4790;
        sub_100184ACC(v448, v280, &unk_100AD4790, &unk_10093B4E0);
        swift_endAccess();
        *(v444 + v259) = v427;

        v472.receiver = v259;
        v282 = v445;
        v472.super_class = v426;
        objc_msgSendSuper2(&v472, "init");

        sub_100004F84(v281, &unk_100AD4790, &unk_10093B4E0);
        sub_100004F84(v269, &qword_100AE4290, &qword_100945270);
        v283 = v457;
        swift_beginAccess();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*v283 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v283 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((*v283 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

LABEL_144:
        v139 = v465;
        v100 = v456;
        (*v454)(v465, v456);
        LOBYTE(v72) = v414;
        v78 = v470;
        v83 = v468;
        v138 = v452;
        goto LABEL_56;
      }

      v314 = _CocoaArrayWrapper.endIndex.getter();
      if ((v314 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v78 = v470;
        v72 = v448;
        v123 = v465;
        if (v199 >= v314)
        {
          goto LABEL_111;
        }

LABEL_104:
        if ((v124 & 0xC000000000000001) != 0)
        {

          v205 = specialized _ArrayBuffer._getElementSlowPath(_:)();

          goto LABEL_107;
        }

        if (v199 < *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v205 = *(v124 + 8 * v100);
LABEL_107:
          v206 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
          v207 = *&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs];
          if (!v207)
          {

            goto LABEL_111;
          }

          swift_beginAccess();

          v208 = sub_100692B14();
          swift_endAccess();

          sub_1000F24EC(&unk_100AD4780, &unk_100941070);
          inited = swift_initStackObject();
          *(inited + 16) = v412;
          *(inited + 32) = v126;
          v473 = v207;
          v210 = v126;
          sub_1006AD6A0(inited);
          *&v205[v206] = v473;

          v211 = &v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace];
          if (*&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace + 8])
          {
            v213 = VisitAssetMetadata.typeOfPlace.getter();
          }

          else
          {
            v212 = 0;
            v213 = *v211;
          }

          *v211 = v213;
          v211[1] = v212;

          v284 = &v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city];
          if (*&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city + 8])
          {
            v285 = VisitAssetMetadata.city.getter();
            v287 = v286;
          }

          else
          {
            v285 = *v211;
            v287 = v211[1];
          }

          *v284 = v285;
          v284[1] = v287;

          v288 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
          v289 = *&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes];
          v290 = v289;
          v291 = v289;
          if (!v289)
          {
            v291 = sub_100579A18(0);
            v290 = *&v205[v288];
          }

          *&v205[v288] = v291;
          v292 = v289;

          v293 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
          v294 = *&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem];
          v295 = v294;
          if (!v294)
          {
            v296 = VisitAssetMetadata.mapItemData.getter();
            if (v297 >> 60 == 15)
            {
              v295 = 0;
            }

            else
            {
              v298 = v296;
              v299 = v297;
              sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
              v295 = static NSCoding<>.create(from:)();
              sub_10003A5C8(v298, v299);
            }
          }

          v300 = *&v205[v293];
          *&v205[v293] = v295;
          v301 = v294;

          v302 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
          v303 = v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork];
          if (v303 == 2 || (v303 & 1) == 0)
          {
            v304 = VisitAssetMetadata.isWork.getter();
          }

          else
          {
            v304 = 1;
          }

          v305 = v470;
          v205[v302] = v304 & 1;
          v306 = v431;
          (v419)(v431, v417, v305);
          (*v451)(v306, 0, 1, v305);
          v307 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
          swift_beginAccess();
          sub_100184B34(v306, &v205[v307]);
          swift_endAccess();
          v76 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
          if (*&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs])
          {
            v308 = *&v205[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs];
          }

          else
          {
            v308 = _swiftEmptyArrayStorage;
          }

          sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
          v309 = type metadata accessor for UUID();
          v310 = *(v309 - 8);
          v311 = (*(v310 + 80) + 32) & ~*(v310 + 80);
          v312 = swift_allocObject();
          *(v312 + 16) = v411;
          (*(v310 + 16))(v312 + v311, &v453[v413], v309);
          v473 = v308;

          sub_1006AD938(v312);
          *&v205[v76] = v473;

          v313 = v457;
          swift_beginAccess();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v313 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v313 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v76 = *((*v313 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          goto LABEL_144;
        }
      }

      __break(1u);
LABEL_245:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_246;
      }

LABEL_180:
      v414 = v72;
      if ((v76 & 0xC000000000000001) == 0)
      {
        if (*(v197 + 16))
        {
          v320 = v124;
          v321 = *(v76 + 32);
          goto LABEL_183;
        }

        __break(1u);
LABEL_253:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_236:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        sub_100004F84(v453, &unk_100AD4790, &unk_10093B4E0);
        v421(v468, v470);
        LOBYTE(v72) = v414;
        return v72 & 1;
      }

      v320 = v124;
      v321 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_183:
      v322 = v321;
      v323 = v467;

      v324 = v431;
      (v419)(v431, v323, v78);
      v464 = *(v471 + 7);
      (v464)(v324, 0, 1, v78);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v325 = swift_allocObject();
      v469 = v325;
      *(v325 + 16) = xmmword_100941D50;
      *(v325 + 32) = v100;
      v326 = v322;
      v471 = v100;
      WorkoutRouteAssetMetadata.startTime.getter();
      sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
      v327 = type metadata accessor for UUID();
      v328 = *(v327 - 8);
      v329 = (*(v328 + 80) + 32) & ~*(v328 + 80);
      v330 = swift_allocObject();
      v467 = v330;
      *(v330 + 16) = xmmword_100940080;
      (*(v328 + 16))(v330 + v329, &v320[OBJC_IVAR____TtC7Journal5Asset_id], v327);
      v466 = v320;

      v465 = type metadata accessor for DataAggregator.EntryPlace(0);
      v331 = objc_allocWithZone(v465);
      v332 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
      (v464)(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType, 1, 1, v78);
      v333 = v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_placeName;
      *v333 = 0;
      v333[1] = 0;
      v334 = v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_typeOfPlace;
      *v334 = 0;
      v334[1] = 0;
      v335 = v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_city;
      *v335 = 0;
      v335[1] = 0;
      v336 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_styleAttributes) = 0;
      v337 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_mkMapItem) = 0;
      v462 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_isWork) = 2;
      v338 = v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_horizontalUncertainty;
      *v338 = 0;
      v338[8] = 0;
      v339 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_entryObjectIDs) = 0;
      v461 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      (*(v450 + 56))(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate, 1, 1, v458);
      v464 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetIDs) = 0;
      *(v331 + OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location) = v326;
      swift_beginAccess();
      v340 = v326;
      v341 = v331 + v332;
      v342 = v431;
      sub_100184ACC(v431, v341, &qword_100AE4290, &qword_100945270);
      swift_endAccess();
      *v333 = 0;
      v333[1] = 0;

      *v334 = 0;
      v334[1] = 0;

      *v335 = 0;
      v335[1] = 0;

      v343 = *(v331 + v336);
      *(v331 + v336) = 0;

      v344 = *(v331 + v337);
      *(v331 + v337) = 0;

      *(v462 + v331) = 2;
      *v338 = 0;
      v338[8] = 1;
      *(v331 + v339) = v469;

      v345 = v461;
      swift_beginAccess();
      v346 = &v345[v331];
      v347 = v429;
      sub_100184ACC(v429, v346, &unk_100AD4790, &unk_10093B4E0);
      swift_endAccess();
      *(v331 + v464) = v467;

      v477.receiver = v331;
      v477.super_class = v465;
      v348 = objc_msgSendSuper2(&v477, "init");

      sub_100004F84(v347, &unk_100AD4790, &unk_10093B4E0);
      sub_100004F84(v342, &qword_100AE4290, &qword_100945270);
      v349 = v423;
      swift_beginAccess();
      v350 = v348;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v349 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v349 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      LOBYTE(v72) = v414;
      v78 = v470;
      v123 = v468;
      v127 = v445;
      v126 = v444;
LABEL_247:
      v316 = v436;
      goto LABEL_248;
    }

    (*v454)(v139, v100);

LABEL_56:
    v141 = v462;
    if (++v127 == v461)
    {
      goto LABEL_174;
    }
  }

  v100 = 0;
  while (1)
  {
    if (v76 == v100)
    {

      v152 = v437;
      VisitAssetMetadata.visitStartTime.getter();
      v153 = *v446;
      v154 = v458;
      if ((*v446)(v152, 1, v458) == 1)
      {
        v155 = v469;
        v156 = [v469 createdDate];
        if (v156)
        {
          v157 = v428;
          v158 = v156;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v159 = *v449;
          v160 = v430;
          (*v449)(v430, v157, v154);
          (*v450)(v160, 0, 1, v154);
          v159(v441, v160, v154);
          v155 = v469;
        }

        else
        {
          v161 = v430;
          (*v450)(v430, 1, 1, v154);
          Date.init()();
          if (v153(v161, 1, v154) != 1)
          {
            sub_100004F84(v430, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        if (v153(v152, 1, v154) != 1)
        {
          sub_100004F84(v152, &unk_100AD4790, &unk_10093B4E0);
        }
      }

      else
      {
        (*v449)(v441, v152, v154);
        v155 = v469;
      }

      VisitAssetMetadata.visitStartTime.getter();
      v162 = VisitAssetMetadata.placeName.getter();
      v164 = v163;
      v165 = VisitAssetMetadata.typeOfPlace.getter();
      v167 = v166;
      v168 = VisitAssetMetadata.city.getter();
      v170 = v169;
      v171 = [v155 entry];
      v445 = v165;
      v444 = v167;
      v443 = v168;
      v439 = v170;
      v172 = v164;
      v173 = v162;
      if (v171)
      {
        v174 = v171;
        v175 = [v171 objectID];
      }

      else
      {
        v175 = 0;
      }

      v176 = sub_100579A18(v171);
      v177 = VisitAssetMetadata.mapItemData.getter();
      if (v178 >> 60 == 15)
      {
        v180 = 0;
      }

      else
      {
        v181 = v177;
        v182 = v178;
        sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
        v180 = static NSCoding<>.create(from:)();
        v179.n128_f64[0] = sub_10003A5C8(v181, v182);
      }

      v183 = v440;
      (*v449)(v440, v441, v458, v179);
      v138 = v452;
      v184 = v471;
      *(v183 + *(v452 + 20)) = v471;
      sub_100021CEC(v442, v183 + v138[6], &unk_100AD4790, &unk_10093B4E0);
      v185 = (v183 + v138[7]);
      *v185 = v173;
      v185[1] = v172;
      v186 = (v183 + v138[8]);
      v187 = v444;
      *v186 = v445;
      v186[1] = v187;
      v188 = (v183 + v138[9]);
      v189 = v439;
      *v188 = v443;
      v188[1] = v189;
      *(v183 + v138[10]) = v175;
      *(v183 + v138[11]) = v176;
      *(v183 + v138[12]) = v180;
      v190 = v459;
      swift_beginAccess();
      v191 = *v190;
      v192 = v184;
      v193 = swift_isUniquelyReferenced_nonNull_native();
      *v190 = v191;
      if ((v193 & 1) == 0)
      {
        v191 = sub_1003E4DCC(0, *(v191 + 2) + 1, 1, v191);
        *v459 = v191;
      }

      v78 = v470;
      v83 = v468;
      v139 = v465;
      v76 = *(v191 + 2);
      v194 = *(v191 + 3);
      if (v76 >= v194 >> 1)
      {
        v191 = sub_1003E4DCC((v194 > 1), v76 + 1, 1, v191);
        *v459 = v191;
      }

      *(v191 + 2) = v76 + 1;
      sub_100184A10(v440, v191 + ((*(v467 + 80) + 32) & ~*(v467 + 80)) + *(v467 + 72) * v76);
      swift_endAccess();
LABEL_85:
      v100 = v456;
      goto LABEL_86;
    }

    if (v100 >= *(v148 + 16))
    {
      break;
    }

    v149 = v466;
    sub_100184950(v148 + ((*(v467 + 80) + 32) & ~*(v467 + 80)) + *(v467 + 72) * v100++, v466);
    [*&v149[v138[5]] distanceFromLocation:v471];
    v151 = v150;
    sub_1001849B4(v149);
    if (v151 <= 10.0)
    {

      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  swift_once();
LABEL_28:
  v105 = type metadata accessor for Logger();
  sub_10000617C(v105, qword_100AD5820);
  v106 = v76;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    *v109 = 138412290;
    v111 = [v106 objectID];
    *(v109 + 4) = v111;
    *v110 = v111;
    _os_log_impl(&_mh_execute_header, v107, v108, "DataAggregator multiPinMap object is missing visitsData. Skipping location. AssetMO.objectID: %@", v109, 0xCu);
    sub_100004F84(v110, &unk_100AD4BB0, &unk_100941E50);

    v112 = v100;
  }

  else
  {
    v112 = v107;
    v107 = v100;
  }

LABEL_37:
  v119 = v83;
LABEL_249:
  v421(v119, v78);
  return v72 & 1;
}

uint64_t sub_10017F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017F6C4, v7, v6);
}

uint64_t sub_10017F6C4()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  static Published.subscript.setter();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10017F784(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v17 + v19, v9, &unk_100AD4790, &unk_10093B4E0);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v9, 1, v10) != 1)
    {
      sub_100004F84(v9, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v18 + v21, v6, &unk_100AD4790, &unk_10093B4E0);
  if (v20(v6, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v6, 1, v10) != 1)
    {
      sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = static Date.> infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

void sub_10017FAA8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_100184A84(&unk_100AEE080, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v10 = type metadata accessor for DataAggregator.Place(0);
  NSObject.hash(into:)();
  sub_1000082B4(v1 + v10[6], v9, &unk_100AD4790, &unk_10093B4E0);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  if (*(v1 + v10[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v10[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v10[9] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = *(v1 + v10[10]);
  if (v11)
  {
    Hasher._combine(_:)(1u);
    v12 = v11;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v13 = *(v2 + v10[11]);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    v14 = v13;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v15 = *(v2 + v10[12]);
  if (v15)
  {
    Hasher._combine(_:)(1u);
    v16 = v15;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10017FE3C()
{
  Hasher.init(_seed:)();
  sub_10017FAA8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10017FE80(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10017FAA8(v2);
  return Hasher._finalize()();
}

id sub_10017FF08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAggregator.EntryPlace(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100180060(uint64_t a1)
{
  sub_1001801A0(319, &qword_100AD59E8, &type metadata accessor for AssetType);
  if (v1 <= 0x3F)
  {
    sub_1001801A0(319, &qword_100AD59F0, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001801A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1001801F4(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v35 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  type metadata accessor for DataAggregator.EntryPlace(0);
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    return 1;
  }

  v16 = v15;
  v35 = v11;
  v37 = v14;
  v38 = v4;
  v40 = v8;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  inited = swift_initStackObject();
  v39 = xmmword_100941D50;
  *(inited + 16) = xmmword_100941D50;
  *(inited + 32) = v1;
  swift_unknownObjectRetain();
  v36 = v1;
  v18 = sub_100184C78();
  swift_setDeallocating();
  swift_arrayDestroy();
  v19 = swift_initStackObject();
  *(v19 + 16) = v39;
  *(v19 + 32) = v16;
  swift_unknownObjectRetain();
  v20 = sub_100184C78();
  swift_setDeallocating();
  swift_arrayDestroy();
  if (v18 == 1)
  {
    v21 = v9;
    v22 = v40;
    if (v20 != 1)
    {
      swift_unknownObjectRelease();
      return 1;
    }
  }

  else
  {
    v21 = v9;
    v22 = v40;
    if (v20 == 1)
    {
      swift_unknownObjectRelease();
      return -1;
    }
  }

  v24 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_1000082B4(v16 + v24, v7, &unk_100AD4790, &unk_10093B4E0);
  v25 = *(v21 + 48);
  if (v25(v7, 1, v22) == 1)
  {
    swift_unknownObjectRelease();
    v26 = v7;
  }

  else
  {
    v27 = v37;
    (*(v21 + 32))(v37, v7, v22);
    v28 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    v29 = v36;
    swift_beginAccess();
    v30 = v29 + v28;
    v31 = v38;
    sub_1000082B4(v30, v38, &unk_100AD4790, &unk_10093B4E0);
    if (!v25(v31, 1, v22))
    {
      v32 = v35;
      (*(v21 + 16))(v35, v31, v22);
      sub_100004F84(v31, &unk_100AD4790, &unk_10093B4E0);
      v33 = Date.compare(_:)();
      swift_unknownObjectRelease();
      v34 = *(v21 + 8);
      v34(v32, v22);
      v34(v27, v22);
      return v33;
    }

    (*(v21 + 8))(v27, v22);
    swift_unknownObjectRelease();
    v26 = v31;
  }

  sub_100004F84(v26, &unk_100AD4790, &unk_10093B4E0);
  return 1;
}

void sub_1001806E8(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1000065A8(319, &unk_100AD2BF0, CLLocation_ptr);
    if (v2 <= 0x3F)
    {
      sub_1001801A0(319, &qword_100AD59F0, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        sub_100180884(319, &qword_100AD5A70, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1001808D4(319, &qword_100AD5A78, &qword_100AD43F0, NSManagedObjectID_ptr);
          if (v5 <= 0x3F)
          {
            sub_1001808D4(319, qword_100AEE020, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr);
            if (v6 <= 0x3F)
            {
              sub_1001808D4(319, &qword_100AEE000, &qword_100AD5A90, MKMapItem_ptr);
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

void sub_100180884(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1001808D4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1000065A8(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100180974(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100206E70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = (v2 + 32);
  v6[1] = v4;
  sub_100180D3C(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1001809F0(double **a1)
{
  v2 = *(type metadata accessor for DataAggregator.Place(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205034(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1001811CC(v5);
  *a1 = v3;
}

void sub_100180AE8(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
}

uint64_t sub_100180B64(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100180BDC(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100180C5C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100180CD0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100180D3C(char ***a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v43 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v43 - v14;
  v15 = a1[1];
  v16 = _minimumMergeRunLength(_:)(v15);
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v17 = v16;
      if (v15 <= 1)
      {
        v18 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataAggregator.EntryPlace(0);
        v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15 / 2;
      }

      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      v57[0] = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      v57[1] = v15 / 2;
      sub_1001814EC(v57, v56, a1, v17);
      *(v42 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v52 = v12;
    v53 = v5;
    v43[1] = v1;
    v44 = v15;
    v19 = *a1;
    v48 = (v10 + 8);
    v49 = (v10 + 32);
    v20 = (v10 + 48);
    v21 = -1;
    v22 = 1;
    v23 = &unk_100B2F000;
    v54 = v19;
    v50 = v20;
    v51 = v8;
    do
    {
      v46 = v22;
      v47 = v21;
      v24 = *(v54 + 8 * v22);
      v45 = v19;
      do
      {
        v25 = *v19;
        v26 = v23[139];
        swift_beginAccess();
        sub_1000082B4(v24 + v26, v8, &unk_100AD4790, &unk_10093B4E0);
        v27 = *v20;
        if ((*v20)(v8, 1, v9) == 1)
        {
          v28 = v24;
          v29 = v25;
          Date.init()();
          if (v27(v8, 1, v9) != 1)
          {
            sub_100004F84(v8, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          (*v49)(v58, v8, v9);
          v30 = v24;
          v31 = v25;
        }

        v32 = v23[139];
        swift_beginAccess();
        v55 = v25;
        v33 = v25 + v32;
        v34 = v53;
        sub_1000082B4(v33, v53, &unk_100AD4790, &unk_10093B4E0);
        if (v27(v34, 1, v9) == 1)
        {
          v35 = v52;
          Date.init()();
          v36 = v9;
          if (v27(v34, 1, v9) != 1)
          {
            sub_100004F84(v34, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          v35 = v52;
          (*v49)(v52, v34, v9);
          v36 = v9;
        }

        v37 = v58;
        v38 = static Date.> infix(_:_:)();
        v39 = *v48;
        (*v48)(v35, v36);
        v39(v37, v36);

        v20 = v50;
        v8 = v51;
        v9 = v36;
        v23 = &unk_100B2F000;
        if ((v38 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_28;
        }

        v40 = *v19;
        v24 = *(v19 + 8);
        *v19 = v24;
        *(v19 + 8) = v40;
        v19 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      v22 = v46 + 1;
      v19 = v45 + 8;
      v21 = v47 - 1;
    }

    while (v46 + 1 != v44);
  }
}

void sub_1001811CC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataAggregator.Place(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for DataAggregator.Place(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100182204(v8, v9, a1, v4);
      v6[2] = 0.0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1001812F8(0, v2, 1, a1);
  }
}

void sub_1001812F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = type metadata accessor for DataAggregator.Place(0);
  __chkstk_darwin(v32);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_100184950(v22, v16);
      sub_100184950(v19, v12);
      v23 = Date.compare(_:)();
      sub_1001849B4(v12);
      sub_1001849B4(v16);
      if (v23 != 1)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v21 = v29 - 1;
        v22 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v17)
      {
        break;
      }

      sub_100184A10(v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      sub_100184A10(v9, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1001814EC(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v137 = a1;
  v8 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v134 - v12;
  __chkstk_darwin(v14);
  v142 = &v134 - v15;
  __chkstk_darwin(v16);
  v144 = &v134 - v17;
  v18 = type metadata accessor for Date();
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v156 = &v134 - v20;
  __chkstk_darwin(v21);
  __chkstk_darwin(v22);
  v146 = &v134 - v26;
  v145 = a3;
  v27 = *(a3 + 8);
  if (v27 < 1)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_109:
    a3 = *v137;
    if (!*v137)
    {
      goto LABEL_150;
    }

    v28 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v129 = v28;
LABEL_112:
      v159 = v129;
      v28 = *(v129 + 2);
      if (v28 >= 2)
      {
        while (*v145)
        {
          v130 = v129[2 * v28];
          v131 = v129;
          v132 = v129[2 * v28 + 3];
          sub_100182A54((*v145 + 8 * *&v130), (*v145 + 8 * *&v129[2 * v28 + 2]), (*v145 + 8 * *&v132), a3);
          if (v5)
          {
            goto LABEL_120;
          }

          if (*&v132 < *&v130)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v131 = sub_100204C44(v131);
          }

          if (v28 - 2 >= *(v131 + 2))
          {
            goto LABEL_138;
          }

          v133 = &v131[2 * v28];
          *v133 = v130;
          v133[1] = v132;
          v159 = v131;
          sub_100204BB8(v28 - 1);
          v129 = v159;
          v28 = *(v159 + 2);
          if (v28 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_148;
      }

LABEL_120:

      return;
    }

LABEL_144:
    v129 = sub_100204C44(v28);
    goto LABEL_112;
  }

  v141 = v25;
  v148 = v24;
  v134 = a4;
  v28 = 0;
  v29 = (v23 + 48);
  v153 = (v23 + 32);
  v30 = _swiftEmptyArrayStorage;
  v152 = (v23 + 8);
  v149 = v10;
  v154 = v13;
  v151 = (v23 + 48);
  while (1)
  {
    if ((v28 + 1) >= v27)
    {
      v27 = v28 + 1;
    }

    else
    {
      v136 = v30;
      v31 = *v145;
      v32 = *(*v145 + 8 * (v28 + 1));
      v157 = *(*v145 + 8 * v28);
      v33 = v157;
      v158 = v32;
      v34 = v32;
      v35 = v33;
      LODWORD(v150) = sub_10017F784(&v158, &v157);
      if (v5)
      {

        return;
      }

      v36 = v28;
      v37 = v28 + 2;
      v135 = v36;
      v140 = 8 * v36;
      v38 = (v31 + 8 * v36 + 16);
      v147 = v27;
      v143 = 0;
      while (1)
      {
        a3 = v144;
        if (v27 == v37)
        {
          break;
        }

        v42 = *(v38 - 1);
        v43 = *v38;
        v44 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        sub_1000082B4(v43 + v44, a3, &unk_100AD4790, &unk_10093B4E0);
        v45 = *v29;
        if ((*v29)(a3, 1, v18) == 1)
        {
          v46 = v43;
          v47 = v42;
          Date.init()();
          if (v45(a3, 1, v18) != 1)
          {
            sub_100004F84(a3, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          (*v153)(v146, a3, v18);
          v48 = v43;
          v49 = v42;
        }

        v50 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v51 = v42 + v50;
        v52 = v142;
        sub_1000082B4(v51, v142, &unk_100AD4790, &unk_10093B4E0);
        v53 = v45(v52, 1, v18);
        v155 = v42;
        if (v53 == 1)
        {
          v39 = v141;
          Date.init()();
          if (v45(v52, 1, v18) != 1)
          {
            sub_100004F84(v52, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          v39 = v141;
          (*v153)(v141, v52, v18);
        }

        v40 = v146;
        v41 = static Date.> infix(_:_:)();
        a3 = *v152;
        (*v152)(v39, v18);
        (a3)(v40, v18);

        ++v37;
        ++v38;
        v5 = v143;
        v13 = v154;
        v29 = v151;
        v27 = v147;
        if ((v150 ^ v41))
        {
          v27 = v37 - 1;
          break;
        }
      }

      v30 = v136;
      v28 = v135;
      if (v150)
      {
        if (v27 < v135)
        {
          goto LABEL_143;
        }

        if (v135 < v27)
        {
          v54 = 8 * v27 - 8;
          v55 = v27;
          v56 = v135;
          v57 = v140;
          do
          {
            if (v56 != --v55)
            {
              v59 = *v145;
              if (!*v145)
              {
                goto LABEL_147;
              }

              v58 = *(v59 + v57);
              *(v59 + v57) = *(v59 + v54);
              *(v59 + v54) = v58;
            }

            ++v56;
            v54 -= 8;
            v57 += 8;
          }

          while (v56 < v55);
        }
      }
    }

    v60 = v145[1];
    if (v27 >= v60)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v27, v28))
    {
      goto LABEL_140;
    }

    if ((v27 - v28) >= v134)
    {
LABEL_36:
      v62 = v27;
      if (v27 < v28)
      {
        goto LABEL_139;
      }

      goto LABEL_37;
    }

    v61 = v28 + v134;
    if (__OFADD__(v28, v134))
    {
      goto LABEL_141;
    }

    if (v61 >= v60)
    {
      v61 = v145[1];
    }

    if (v61 < v28)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v27 == v61)
    {
      goto LABEL_36;
    }

    v136 = v30;
    v143 = v5;
    v150 = *v145;
    v110 = v150 + 8 * v27 - 8;
    v135 = v28;
    v111 = v28 - v27;
    v138 = v61;
LABEL_90:
    v147 = v27;
    v112 = *(v150 + 8 * v27);
    v139 = v111;
    v140 = v110;
LABEL_91:
    v113 = *v110;
    v114 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    sub_1000082B4(v112 + v114, v13, &unk_100AD4790, &unk_10093B4E0);
    v115 = *v29;
    if ((*v29)(v13, 1, v18) == 1)
    {
      v116 = v112;
      v117 = v113;
      Date.init()();
      if (v115(v13, 1, v18) != 1)
      {
        sub_100004F84(v13, &unk_100AD4790, &unk_10093B4E0);
      }
    }

    else
    {
      (*v153)(v156, v13, v18);
      v118 = v112;
      v119 = v113;
    }

    v120 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    v155 = v113;
    v121 = v113 + v120;
    v122 = v149;
    sub_1000082B4(v121, v149, &unk_100AD4790, &unk_10093B4E0);
    if (v115(v122, 1, v18) == 1)
    {
      v123 = v148;
      Date.init()();
      v124 = v18;
      if (v115(v122, 1, v18) != 1)
      {
        sub_100004F84(v122, &unk_100AD4790, &unk_10093B4E0);
      }
    }

    else
    {
      v123 = v148;
      (*v153)(v148, v122, v18);
      v124 = v18;
    }

    v125 = v156;
    a3 = static Date.> infix(_:_:)();
    v126 = *v152;
    (*v152)(v123, v124);
    v126(v125, v124);

    if (a3)
    {
      break;
    }

    v13 = v154;
    v29 = v151;
    v18 = v124;
LABEL_89:
    v27 = v147 + 1;
    v110 = v140 + 8;
    v111 = v139 - 1;
    v62 = v138;
    if (v147 + 1 != v138)
    {
      goto LABEL_90;
    }

    v5 = v143;
    v30 = v136;
    v28 = v135;
    if (v138 < v135)
    {
      goto LABEL_139;
    }

LABEL_37:
    v138 = v62;
    v63 = v30;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v30 = v63;
    }

    else
    {
      v30 = sub_1003E4B80(0, *(v63 + 16) + 1, 1, v63);
    }

    a3 = *(v30 + 2);
    v64 = *(v30 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v30 = sub_1003E4B80((v64 > 1), a3 + 1, 1, v30);
    }

    *(v30 + 2) = v65;
    v66 = &v30[2 * a3];
    v67 = v138;
    *(v66 + 4) = v28;
    *(v66 + 5) = v67;
    v155 = *v137;
    if (!v155)
    {
      goto LABEL_149;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          v72 = &v30[2 * v65 + 4];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_126;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_127;
          }

          v79 = &v30[2 * v65];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_129;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_132;
          }

          if (v83 >= v75)
          {
            v101 = &v30[2 * a3 + 4];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_136;
            }

            if (v70 < v104)
            {
              a3 = v65 - 2;
            }
          }

          else
          {
LABEL_56:
            if (v71)
            {
              goto LABEL_128;
            }

            v84 = &v30[2 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_131;
            }

            v90 = &v30[2 * a3 + 4];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_135;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_70;
            }

            if (v70 < v93)
            {
              a3 = v65 - 2;
            }
          }
        }

        else
        {
          if (v65 == 3)
          {
            v68 = *(v30 + 4);
            v69 = *(v30 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_56;
          }

          v94 = &v30[2 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_70:
          if (v89)
          {
            goto LABEL_130;
          }

          v97 = &v30[2 * a3];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_133;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v28 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*v145)
        {
          goto LABEL_146;
        }

        v105 = v30;
        v106 = v30[2 * v28 + 4];
        v107 = v30[2 * a3 + 5];
        sub_100182A54((*v145 + 8 * *&v106), (*v145 + 8 * *&v30[2 * a3 + 4]), (*v145 + 8 * *&v107), v155);
        if (v5)
        {
          goto LABEL_120;
        }

        if (*&v107 < *&v106)
        {
          goto LABEL_124;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = v105;
        }

        else
        {
          v108 = sub_100204C44(v105);
        }

        v13 = v154;
        if (v28 >= *(v108 + 2))
        {
          goto LABEL_125;
        }

        v109 = &v108[2 * v28];
        v109[4] = v106;
        v109[5] = v107;
        v159 = v108;
        v28 = &v159;
        sub_100204BB8(a3);
        v30 = v159;
        v65 = *(v159 + 2);
        if (v65 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v27 = v145[1];
    v28 = v138;
    if (v138 >= v27)
    {
      goto LABEL_109;
    }
  }

  v13 = v154;
  if (v150)
  {
    v127 = *v110;
    v112 = *(v110 + 8);
    *v110 = v112;
    *(v110 + 8) = v127;
    v110 -= 8;
    v128 = __CFADD__(v111++, 1);
    v29 = v151;
    v18 = v124;
    if (v128)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_100182204(int64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v98 = a1;
  v110 = type metadata accessor for DataAggregator.Place(0);
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v109 = &v95 - v11;
  __chkstk_darwin(v12);
  v14 = &v95 - v13;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v108 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v98;
    if (!*v98)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v90 = a4;
    }

    else
    {
LABEL_129:
      v90 = sub_100204C44(a4);
    }

    v111 = v90;
    a4 = *(v90 + 2);
    if (a4 >= 2)
    {
      while (*v108)
      {
        v91 = v90[2 * a4];
        v92 = v90;
        v93 = v90[2 * a4 + 3];
        sub_1001832C8(*v108 + *(v106 + 72) * *&v91, *v108 + *(v106 + 72) * *&v90[2 * a4 + 2], *v108 + *(v106 + 72) * *&v93, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (*&v93 < *&v91)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_100204C44(v92);
        }

        if (a4 - 2 >= *(v92 + 2))
        {
          goto LABEL_123;
        }

        v94 = &v92[2 * a4];
        *v94 = v91;
        v94[1] = v93;
        v111 = v92;
        sub_100204BB8(a4 - 1);
        v90 = v111;
        a4 = *(v111 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v97 = a4;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v101 = v20;
    if (v22 >= v18)
    {
      v29 = v22;
    }

    else
    {
      v23 = *v108;
      v104 = v23;
      v24 = *(v106 + 72);
      v5 = v23 + v24 * v22;
      sub_100184950(v5, v17);
      sub_100184950(v23 + v24 * v21, v14);
      v105 = Date.compare(_:)();
      sub_1001849B4(v14);
      sub_1001849B4(v17);
      v96 = v21;
      v25 = v21 + 2;
      v107 = v24;
      v26 = v104 + v24 * (v21 + 2);
      while (v18 != v25)
      {
        v27 = v105 == 1;
        sub_100184950(v26, v17);
        sub_100184950(v5, v14);
        v28 = Date.compare(_:)();
        sub_1001849B4(v14);
        sub_1001849B4(v17);
        ++v25;
        v26 += v107;
        v5 += v107;
        if (((v27 ^ (v28 != 1)) & 1) == 0)
        {
          v29 = v25 - 1;
          goto LABEL_11;
        }
      }

      v29 = v18;
LABEL_11:
      v21 = v96;
      a4 = v97;
      if (v105 == 1)
      {
        if (v29 < v96)
        {
          goto LABEL_126;
        }

        if (v96 < v29)
        {
          v95 = v6;
          v30 = v29;
          v31 = v107 * (v29 - 1);
          v5 = v29 * v107;
          v105 = v29;
          v32 = v96;
          v33 = v96 * v107;
          do
          {
            if (v32 != --v30)
            {
              v34 = *v108;
              if (!*v108)
              {
                goto LABEL_132;
              }

              sub_100184A10(v34 + v33, v100);
              if (v33 < v31 || v34 + v33 >= (v34 + v5))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v33 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100184A10(v100, v34 + v31);
            }

            ++v32;
            v31 -= v107;
            v5 -= v107;
            v33 += v107;
          }

          while (v32 < v30);
          v6 = v95;
          v21 = v96;
          a4 = v97;
          v29 = v105;
        }
      }
    }

    v35 = v108[1];
    if (v29 < v35)
    {
      if (__OFSUB__(v29, v21))
      {
        goto LABEL_125;
      }

      if (v29 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v35)
        {
          v5 = v108[1];
        }

        else
        {
          v5 = v21 + a4;
        }

        if (v5 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v5)
        {
          break;
        }
      }
    }

    v5 = v29;
    if (v29 < v21)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v101;
    }

    else
    {
      v20 = sub_1003E4B80(0, *(v101 + 2) + 1, 1, v101);
    }

    a4 = *(v20 + 2);
    v36 = *(v20 + 3);
    v37 = a4 + 1;
    if (a4 >= v36 >> 1)
    {
      v20 = sub_1003E4B80((v36 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v37;
    v38 = &v20[2 * a4];
    *(v38 + 4) = v21;
    *(v38 + 5) = v5;
    v39 = *v98;
    if (!*v98)
    {
      goto LABEL_134;
    }

    v102 = v5;
    if (a4)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v20 + 4);
          v41 = *(v20 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_54:
          if (v43)
          {
            goto LABEL_113;
          }

          v56 = &v20[2 * v37];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_116;
          }

          v62 = &v20[2 * v5 + 4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_120;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v66 = &v20[2 * v37];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_68:
        if (v61)
        {
          goto LABEL_115;
        }

        v69 = &v20[2 * v5];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_118;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v5 - 1;
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
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
          goto LABEL_128;
        }

        if (!*v108)
        {
          goto LABEL_131;
        }

        v77 = v20;
        v78 = v20[2 * a4 + 4];
        v79 = v20[2 * v5 + 5];
        sub_1001832C8(*v108 + *(v106 + 72) * *&v78, *v108 + *(v106 + 72) * *&v20[2 * v5 + 4], *v108 + *(v106 + 72) * *&v79, v39);
        if (v6)
        {
          goto LABEL_107;
        }

        if (*&v79 < *&v78)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_100204C44(v77);
        }

        if (a4 >= *(v77 + 2))
        {
          goto LABEL_110;
        }

        v80 = &v77[2 * a4];
        v80[4] = v78;
        v80[5] = v79;
        v111 = v77;
        sub_100204BB8(v5);
        v20 = v111;
        v37 = *(v111 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v20[2 * v37 + 4];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_111;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_112;
      }

      v51 = &v20[2 * v37];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_114;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_117;
      }

      if (v55 >= v47)
      {
        v73 = &v20[2 * v5 + 4];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_121;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v18 = v108[1];
    v19 = v102;
    a4 = v97;
    if (v102 >= v18)
    {
      goto LABEL_96;
    }
  }

  v95 = v6;
  v81 = v21;
  v82 = *v108;
  v83 = *(v106 + 72);
  v84 = *v108 + v83 * (v29 - 1);
  v85 = -v83;
  v96 = v81;
  v86 = v81 - v29;
  v99 = v83;
  v87 = v82 + v29 * v83;
  v102 = v5;
LABEL_86:
  v104 = v86;
  v105 = v29;
  v103 = v87;
  v88 = v87;
  v107 = v84;
  while (1)
  {
    sub_100184950(v88, v17);
    sub_100184950(v84, v14);
    a4 = Date.compare(_:)();
    sub_1001849B4(v14);
    sub_1001849B4(v17);
    if (a4 != 1)
    {
LABEL_85:
      v29 = v105 + 1;
      v84 = v107 + v99;
      v86 = v104 - 1;
      v5 = v102;
      v87 = v103 + v99;
      if (v105 + 1 != v102)
      {
        goto LABEL_86;
      }

      v6 = v95;
      v21 = v96;
      if (v102 < v96)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v82)
    {
      break;
    }

    a4 = v109;
    sub_100184A10(v88, v109);
    swift_arrayInitWithTakeFrontToBack();
    sub_100184A10(a4, v84);
    v84 += v85;
    v88 += v85;
    if (__CFADD__(v86++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

uint64_t sub_100182A54(void **a1, void **a2, void **a3, void **a4)
{
  v8 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v8 - 8);
  v86 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v88 = &v80 - v11;
  __chkstk_darwin(v12);
  v85 = (&v80 - v13);
  __chkstk_darwin(v14);
  v87 = (&v80 - v15);
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  v84 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v91 = &v80 - v19;
  __chkstk_darwin(v20);
  v83 = (&v80 - v21);
  __chkstk_darwin(v22);
  v90 = (&v80 - v24);
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  v92 = a4;
  if (v26 < v27 >> 3)
  {
    v29 = a4;
    if (a4 != a1 || &a1[v26] <= a4)
    {
      v30 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v30;
      v29 = v92;
    }

    v93 = &v29[v26];
    if (a2 - a1 < 8 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_55;
    }

    v31 = a2;
    v32 = (v23 + 48);
    v91 = (v23 + 32);
    v88 = (v23 + 8);
    v33 = v87;
    v86 = (v23 + 48);
    while (1)
    {
      v89 = v31;
      v34 = *v31;
      v92 = v29;
      v35 = *v29;
      v36 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      sub_1000082B4(v34 + v36, v33, &unk_100AD4790, &unk_10093B4E0);
      v37 = *v32;
      if ((*v32)(v33, 1, v16) == 1)
      {
        v38 = v34;
        v39 = v35;
        Date.init()();
        if (v37(v33, 1, v16) != 1)
        {
          sub_100004F84(v33, &unk_100AD4790, &unk_10093B4E0);
        }
      }

      else
      {
        (*v91)(v90, v33, v16);
        v40 = v34;
        v41 = v35;
      }

      v42 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      v43 = v35 + v42;
      v44 = v85;
      sub_1000082B4(v43, v85, &unk_100AD4790, &unk_10093B4E0);
      if (v37(v44, 1, v16) == 1)
      {
        v45 = v83;
        Date.init()();
        if (v37(v44, 1, v16) != 1)
        {
          sub_100004F84(v44, &unk_100AD4790, &unk_10093B4E0);
        }
      }

      else
      {
        v45 = v83;
        (*v91)(v83, v44, v16);
      }

      v46 = v90;
      v47 = static Date.> infix(_:_:)();
      v48 = v45;
      v49 = v47;
      v50 = *v88;
      (*v88)(v48, v16);
      v50(v46, v16);

      if ((v49 & 1) == 0)
      {
        break;
      }

      v51 = v89;
      v31 = v89 + 1;
      v29 = v92;
      v33 = v87;
      if (a1 != v89)
      {
        goto LABEL_24;
      }

LABEL_25:
      ++a1;
      v32 = v86;
      if (v29 >= v93 || v31 >= a3)
      {
        a2 = a1;
        goto LABEL_55;
      }
    }

    v51 = v92;
    v29 = v92 + 1;
    v31 = v89;
    v33 = v87;
    if (a1 == v92)
    {
      goto LABEL_25;
    }

LABEL_24:
    *a1 = *v51;
    goto LABEL_25;
  }

  v29 = a4;
  if (a4 != a2 || &a2[v28] <= a4)
  {
    v52 = v23;
    memmove(a4, a2, 8 * v28);
    v23 = v52;
    v29 = v92;
  }

  v93 = &v29[v28];
  if (a3 - a2 >= 8 && a2 > a1)
  {
    v53 = (v23 + 48);
    v82 = (v23 + 8);
    v83 = (v23 + 32);
    v54 = &unk_100B2F000;
    v55 = v88;
    v85 = (v23 + 48);
    v81 = a1;
    while (1)
    {
      v89 = a2;
      v56 = a2 - 1;
      v57 = (a3 - 1);
      v58 = v93;
      v87 = a2 - 1;
      while (1)
      {
        v59 = *(v58 - 1);
        v90 = v58 - 1;
        v60 = *v56;
        v61 = v54[139];
        swift_beginAccess();
        sub_1000082B4(v59 + v61, v55, &unk_100AD4790, &unk_10093B4E0);
        v62 = *v53;
        if ((*v53)(v55, 1, v16) == 1)
        {
          v63 = v59;
          v64 = v60;
          Date.init()();
          if (v62(v55, 1, v16) != 1)
          {
            sub_100004F84(v55, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          (*v83)(v91, v55, v16);
          v65 = v59;
          v66 = v60;
        }

        v67 = v54[139];
        swift_beginAccess();
        v68 = v60 + v67;
        v69 = v86;
        sub_1000082B4(v68, v86, &unk_100AD4790, &unk_10093B4E0);
        v70 = v57;
        if (v62(v69, 1, v16) == 1)
        {
          v71 = v84;
          Date.init()();
          if (v62(v69, 1, v16) != 1)
          {
            sub_100004F84(v69, &unk_100AD4790, &unk_10093B4E0);
          }
        }

        else
        {
          v71 = v84;
          (*v83)(v84, v69, v16);
        }

        v72 = v91;
        v73 = static Date.> infix(_:_:)();
        v74 = v71;
        v75 = v73;
        v76 = *v82;
        (*v82)(v74, v16);
        v76(v72, v16);

        a3 = v70;
        v77 = (v70 + 8);
        if (v75)
        {
          break;
        }

        v29 = v92;
        v55 = v88;
        v58 = v90;
        if (v77 != v93)
        {
          *v70 = *v90;
        }

        v57 = v70 - 8;
        v93 = v58;
        v53 = v85;
        v54 = &unk_100B2F000;
        v56 = v87;
        if (v58 <= v29)
        {
          v93 = v58;
          a2 = v89;
          goto LABEL_55;
        }
      }

      v55 = v88;
      v29 = v92;
      v78 = v87;
      if (v77 != v89)
      {
        *v70 = *v87;
      }

      v53 = v85;
      v54 = &unk_100B2F000;
      if (v93 > v29)
      {
        a2 = v78;
        if (v78 > v81)
        {
          continue;
        }
      }

      a2 = v78;
      break;
    }
  }

LABEL_55:
  if (a2 != v29 || a2 >= (v29 + ((v93 - v29 + (v93 - v29 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v29, 8 * (v93 - v29));
  }

  return 1;
}

void sub_1001832C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = a3;
  v39 = type metadata accessor for DataAggregator.Place(0);
  __chkstk_darwin(v39);
  v40 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v35 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v41 - a2;
  if (v41 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v44 = a1;
  v43 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v37 = v23;
      v38 = a4;
      do
      {
        v35[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v41;
          if (v26 <= a1)
          {
            v44 = v26;
            v42 = v35[0];
            goto LABEL_59;
          }

          v36 = v25;
          v41 += v23;
          v30 = v24 + v23;
          sub_100184950(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v40;
          sub_100184950(v32, v40);
          v34 = Date.compare(_:)();
          sub_1001849B4(v33);
          sub_1001849B4(v11);
          if (v34 == 1)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v41 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v38;
          v23 = v37;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v41 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v36;
          v23 = v37;
        }

        else
        {
          v25 = v36;
          v23 = v37;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v38);
    }

LABEL_58:
    v44 = a2;
    v42 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v42 = a4 + v16;
    if (v16 >= 1 && a2 < v41)
    {
      do
      {
        sub_100184950(a2, v11);
        v20 = v40;
        sub_100184950(a4, v40);
        v21 = Date.compare(_:)();
        sub_1001849B4(v20);
        sub_1001849B4(v11);
        if (v21 == 1)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v43 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v44 = a1;
      }

      while (a4 < v18 && a2 < v41);
    }
  }

LABEL_59:
  sub_100204C70(&v44, &v43, &v42);
}

uint64_t sub_100183780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - v9;
  v11 = sub_1000F24EC(&unk_100AD5BE0, &unk_100940CD8);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
  v14 = type metadata accessor for DataAggregator.Place(0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a1;
  v16 = a2;
  v60 = v15;
  v61 = v14;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  sub_1000082B4(v15 + v17, v13, &unk_100AD4790, &unk_10093B4E0);
  v19 = v16 + v17;
  v20 = v16;
  sub_1000082B4(v19, &v13[v18], &unk_100AD4790, &unk_10093B4E0);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &unk_100AD4790, &unk_10093B4E0);
    if (v21(&v13[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v18], v4);
      sub_100184A84(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      v20 = v16;
      sub_100004F84(v13, &unk_100AD4790, &unk_10093B4E0);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_100004F84(v13, &unk_100AD5BE0, &unk_100940CD8);
    return 0;
  }

  if (v21(&v13[v18], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_100004F84(v13, &unk_100AD4790, &unk_10093B4E0);
LABEL_12:
  v26 = v60;
  v25 = v61;
  v27 = v61[7];
  v28 = (v60 + v27);
  v29 = *(v60 + v27 + 8);
  v30 = (v20 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v32 = v25[8];
  v33 = (v26 + v32);
  v34 = *(v26 + v32 + 8);
  v35 = (v20 + v32);
  v36 = v35[1];
  if (v34)
  {
    if (!v36 || (*v33 != *v35 || v34 != v36) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  v37 = v25[9];
  v38 = (v26 + v37);
  v39 = *(v26 + v37 + 8);
  v40 = (v20 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v41)
  {
    return 0;
  }

  v42 = v25[10];
  v43 = *(v26 + v42);
  v44 = *(v20 + v42);
  if (v43)
  {
    if (!v44)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
    v45 = v44;
    v46 = v43;
    v47 = static NSObject.== infix(_:_:)();

    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  v48 = v61[11];
  v49 = *(v26 + v48);
  v50 = *(v20 + v48);
  if (v49)
  {
    if (!v50)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr);
    v51 = v50;
    v52 = v49;
    v53 = static NSObject.== infix(_:_:)();

    if ((v53 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v50)
  {
    return 0;
  }

  v54 = v61[12];
  v55 = *(v26 + v54);
  v56 = *(v20 + v54);
  if (v55)
  {
    if (v56)
    {
      sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
      v57 = v56;
      v58 = v55;
      v59 = static NSObject.== infix(_:_:)();

      if (v59)
      {
        return 1;
      }
    }
  }

  else if (!v56)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100183D1C(void *a1, int a2)
{
  v3 = v2;
  v39 = a2;
  v38 = a1;
  v4 = sub_1000F24EC(&qword_100AD5B50, &qword_100944510);
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v35 = &v33 - v5;
  v6 = sub_1000F24EC(&qword_100AD5B58, &qword_100944518);
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v9 = sub_1000F24EC(&qword_100AD5B60, &unk_1009401F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = sub_1000F24EC(&qword_100AD5B68, &qword_100944520);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0x415B9ECD00000000;
  v17 = OBJC_IVAR____TtC7Journal14DataAggregator__recentPlaces;
  v40 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD58B0, &qword_100944220);
  Published.init(initialValue:)();
  (*(v14 + 32))(v2 + v17, v16, v13);
  v18 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByMapPlace;
  v40 = _swiftEmptyArrayStorage;
  sub_1000F24EC(&qword_100AD58C0, &qword_10095E4D0);
  Published.init(initialValue:)();
  v19 = *(v10 + 32);
  v19(v2 + v18, v12, v9);
  v20 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByPhotoPlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v20, v12, v9);
  v21 = OBJC_IVAR____TtC7Journal14DataAggregator__entriesByRoutePlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v21, v12, v9);
  v22 = OBJC_IVAR____TtC7Journal14DataAggregator__mostRecentEntriesByPlace;
  v40 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v19(v2 + v22, v12, v9);
  v23 = OBJC_IVAR____TtC7Journal14DataAggregator__hasCompletedFirstUpdate;
  LOBYTE(v40) = 0;
  Published.init(initialValue:)();
  (*(v33 + 32))(v3 + v23, v8, v34);
  v24 = OBJC_IVAR____TtC7Journal14DataAggregator__assetTypeCount;
  v40 = &_swiftEmptyDictionarySingleton;
  sub_1000F24EC(&unk_100AD58D8, &qword_100944228);
  v25 = v35;
  Published.init(initialValue:)();
  (*(v36 + 32))(v3 + v24, v25, v37);
  v26 = v38;
  *(v3 + 16) = v38;
  v27 = [v26 newBackgroundContext];
  *(v3 + 24) = v27;
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 mergeByPropertyStoreTrumpMergePolicy];
  [v29 setMergePolicy:v30];

  [*(v3 + 24) setAutomaticallyMergesChangesFromParent:1];
  v31 = *(v3 + 24);
  NSManagedObjectContext.setInitialQueryGeneration()();

  sub_100177E68(v39);
  return v3;
}

void sub_1001841F0(char *a1, unint64_t a2, int64_t a3)
{
  v9 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - v10;
  v56 = a2;
  v59 = a1;
  if (!a1)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      v4 = a2 >> 62;
      if (!(a2 >> 62))
      {
        v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22 >= a3)
        {
          v23 = a3;
        }

        else
        {
          v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (a3)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        if (v22 < v24)
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

LABEL_27:
        if ((v56 & 0xC000000000000001) != 0 && v24)
        {
          type metadata accessor for DataAggregator.EntryPlace(0);

          v25 = 0;
          do
          {
            v26 = v25 + 1;
            _ArrayBuffer._typeCheckSlowPath(_:)(v25);
            v25 = v26;
          }

          while (v24 != v26);
          if (!v4)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (!v4)
          {
LABEL_32:
            v27 = 0;
            v28 = v56 & 0xFFFFFFFFFFFFFF8;
            v29 = (v56 & 0xFFFFFFFFFFFFFF8) + 32;
            v30 = (2 * v24) | 1;
LABEL_65:
            v46 = v29;
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v47 = swift_dynamicCastClass();
            if (!v47)
            {
              swift_unknownObjectRelease();
              v47 = _swiftEmptyArrayStorage;
            }

            v48 = *(v47 + 2);

            if (__OFSUB__(v30 >> 1, v27))
            {
              __break(1u);
            }

            else if (v48 == (v30 >> 1) - v27)
            {
              v49 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v49)
              {
                return;
              }

              goto LABEL_70;
            }

            swift_unknownObjectRelease();
            v29 = v46;
LABEL_64:
            sub_10060FDFC(v28, v29, v27, v30);
            swift_unknownObjectRelease();
            return;
          }
        }

        v28 = _CocoaArrayWrapper.subscript.getter();
        v27 = v44;
        v30 = v45;
        if ((v45 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      goto LABEL_87;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    if ((a2 & 0x8000000000000000) != 0)
    {
      a1 = a2;
    }

    else
    {
      a1 = (a2 & 0xFFFFFFFFFFFFFF8);
    }

    i = _CocoaArrayWrapper.endIndex.getter();
    if ((_CocoaArrayWrapper.endIndex.getter() & 0x8000000000000000) == 0)
    {
      if (i >= a3)
      {
        v52 = a3;
      }

      else
      {
        v52 = i;
      }

      if (i < 0)
      {
        v52 = a3;
      }

      if (a3)
      {
        v24 = v52;
      }

      else
      {
        v24 = 0;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < v24)
      {
        goto LABEL_100;
      }

      goto LABEL_27;
    }

LABEL_106:
    __break(1u);

    __break(1u);
    return;
  }

  v60 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v58 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location;
    v12 = v59;
    v5 = v12;
    if (!i)
    {
      break;
    }

    v54 = a3;
    v55 = v12;
    v13 = 0;
    v57 = a2 & 0xC000000000000001;
    v14 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v57)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_72;
        }

        v15 = *(a2 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      a3 = i;
      [*&v15[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location] distanceFromLocation:*&v59[v58]];
      v19 = v18;
      v20 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
      swift_beginAccess();
      sub_1000082B4(v16 + v20, v11, &unk_100AD4790, &unk_10093B4E0);
      v21 = type metadata accessor for Date();
      if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
      {

        sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
      }

      else
      {
        sub_100004F84(v11, &unk_100AD4790, &unk_10093B4E0);
        if (v19 >= 7240500.0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          a2 = v56;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }
      }

      i = a3;
      ++v13;
      if (v17 == a3)
      {
        a3 = v54;
        v5 = v55;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

LABEL_33:

  v60 = sub_1004FCDD4(v32, v31);
  v4 = 0;
  sub_100180974(&v60);

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    i = v60;
    if (v60 < 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = (v60 >> 62) & 1;
    }

    if ((v4 & 1) == 0)
    {
      v33 = *(v60 + 16);
      if (v33 >= a3)
      {
        v34 = a3;
      }

      else
      {
        v34 = *(v60 + 16);
      }

      if (a3)
      {
        a2 = v34;
      }

      else
      {
        a2 = 0;
      }

      if (v33 >= a2)
      {
        goto LABEL_45;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }

  v50 = _CocoaArrayWrapper.endIndex.getter();
  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_106;
  }

  if (v50 >= a3)
  {
    v51 = a3;
  }

  else
  {
    v51 = v50;
  }

  if (v50 < 0)
  {
    v51 = a3;
  }

  if (a3)
  {
    a2 = v51;
  }

  else
  {
    a2 = 0;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < a2)
  {
    goto LABEL_85;
  }

LABEL_45:
  if ((i & 0xC000000000000001) != 0 && a2)
  {
    type metadata accessor for DataAggregator.EntryPlace(0);

    v35 = 0;
    do
    {
      v36 = v35 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v35);
      v35 = v36;
    }

    while (a2 != v36);
  }

  else
  {
  }

  if (!v4)
  {
    a1 = 0;
    v4 = i + 32;
    v24 = (2 * a2) | 1;
    if (v24)
    {
      goto LABEL_56;
    }

LABEL_55:
    sub_10060FDFC(i, v4, a1, v24);
    swift_unknownObjectRelease();

    return;
  }

  v37 = _CocoaArrayWrapper.subscript.getter();
  v4 = v38;
  a1 = v39;
  v24 = v40;

  i = v37;
  if ((v24 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v41 = swift_dynamicCastClass();
  if (!v41)
  {
    swift_unknownObjectRelease();
    v41 = _swiftEmptyArrayStorage;
  }

  v42 = *(v41 + 2);

  if (__OFSUB__(v24 >> 1, a1))
  {
    goto LABEL_101;
  }

  if (v42 != (v24 >> 1) - a1)
  {
LABEL_102:
    swift_unknownObjectRelease_n();
    goto LABEL_55;
  }

  v43 = swift_dynamicCastClass();

  swift_unknownObjectRelease_n();
  if (!v43)
  {
LABEL_70:
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100184890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10017F62C(a1, v4, v5, v7, v6);
}

uint64_t sub_100184950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001849B4(uint64_t a1)
{
  v2 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100184A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataAggregator.Place(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100184ACC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000F24EC(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_100184B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100184BA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100178618(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100184C78()
{
  v0 = sub_1000F24EC(&qword_100AD5BF8, &qword_100944580);
  __chkstk_darwin(v0 - 8);
  v2 = &v59 - v1;
  v67 = type metadata accessor for AssetType();
  v3 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v61 = &v59 - v6;
  v7 = sub_1000F24EC(&qword_100AE4290, &qword_100945270);
  v69 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  __chkstk_darwin(v16);
  v66 = &v59 - v18;
  if (v17 >> 62)
  {
    v57 = v17;
    v58 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v57;
    v19 = v58;
  }

  else
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = _swiftEmptyArrayStorage;
  v64 = v2;
  v65 = v3;
  v62 = v12;
  v63 = v7;
  if (v19)
  {
    v21 = v17;
    v72 = _swiftEmptyArrayStorage;
    result = sub_100199B94(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return result;
    }

    v20 = v72;
    v23 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v23;
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        swift_beginAccess();
        sub_1000082B4(v26 + v27, v15, &qword_100AE4290, &qword_100945270);
        swift_unknownObjectRelease();
        v72 = v20;
        v29 = *(v20 + 2);
        v28 = *(v20 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_100199B94((v28 > 1), v29 + 1, 1);
          v20 = v72;
        }

        ++v24;
        *(v20 + 2) = v29 + 1;
        sub_100021CEC(v15, v20 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v29, &qword_100AE4290, &qword_100945270);
        v23 = v25;
      }

      while (v19 != v24);
    }

    else
    {
      v30 = (v21 + 32);
      do
      {
        v31 = *v30;
        v32 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_assetType;
        swift_beginAccess();
        sub_1000082B4(v31 + v32, v9, &qword_100AE4290, &qword_100945270);
        v72 = v20;
        v34 = *(v20 + 2);
        v33 = *(v20 + 3);
        if (v34 >= v33 >> 1)
        {
          sub_100199B94((v33 > 1), v34 + 1, 1);
          v20 = v72;
        }

        *(v20 + 2) = v34 + 1;
        sub_100021CEC(v9, v20 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v34, &qword_100AE4290, &qword_100945270);
        ++v30;
        --v19;
      }

      while (v19);
    }

    v3 = v65;
  }

  v35 = sub_100890B20(v20);

  v36 = *(v3 + 104);
  v37 = v66;
  v38 = v67;
  v36(v66, enum case for AssetType.photo(_:), v67);
  v39 = *(v3 + 56);
  v68 = 1;
  v39(v37, 0, 1, v38);
  v40 = sub_1006278CC(v37, v35);
  sub_100004F84(v37, &qword_100AE4290, &qword_100945270);
  if ((v40 & 1) == 0)
  {
    v36(v37, enum case for AssetType.livePhoto(_:), v38);
    v68 = 1;
    v39(v37, 0, 1, v38);
    v41 = sub_1006278CC(v37, v35);
    sub_100004F84(v37, &qword_100AE4290, &qword_100945270);
    if ((v41 & 1) == 0)
    {
      v36(v37, enum case for AssetType.video(_:), v38);
      v39(v37, 0, 1, v38);
      v68 = sub_1006278CC(v37, v35);
      sub_100004F84(v37, &qword_100AE4290, &qword_100945270);
    }
  }

  v42 = enum case for AssetType.workoutRoute(_:);
  v36(v37, enum case for AssetType.workoutRoute(_:), v38);
  v39(v37, 0, 1, v38);
  v43 = sub_1006278CC(v37, v35);
  sub_100004F84(v37, &qword_100AE4290, &qword_100945270);
  if ((v43 & 1) == 0)
  {
    v36(v37, enum case for AssetType.multiPinMap(_:), v38);
    v39(v37, 0, 1, v38);
    v49 = sub_1006278CC(v37, v35);
    sub_100004F84(v37, &qword_100AE4290, &qword_100945270);
    v44 = v68;
    if ((v49 & v68 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:

    return 4;
  }

  v44 = v68;
  if (v68)
  {
    goto LABEL_25;
  }

LABEL_21:
  v45 = v64;
  if (!((*(v35 + 16) < 2uLL) | v44 & 1))
  {

    return 3;
  }

  sub_100603C44(v35, v64);

  if ((*(v69 + 48))(v45, 1, v63) == 1)
  {
    v46 = &qword_100AD5BF8;
    v47 = &qword_100944580;
    v48 = v45;
LABEL_29:
    sub_100004F84(v48, v46, v47);
    return v44 & 1;
  }

  v50 = v62;
  sub_100021CEC(v45, v62, &qword_100AE4290, &qword_100945270);
  v51 = v65;
  if ((*(v65 + 48))(v50, 1, v38) == 1)
  {
    v46 = &qword_100AE4290;
    v47 = &qword_100945270;
    v48 = v50;
    goto LABEL_29;
  }

  v52 = v61;
  (*(v51 + 32))(v61, v50, v38);
  v53 = v60;
  v36(v60, v42, v38);
  sub_100184A84(&qword_100AD5B40, &type metadata accessor for AssetType, &protocol conformance descriptor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v72 == v70 && v73 == v71)
  {
    v54 = *(v65 + 8);
    v54(v53, v38);
    v54(v52, v38);
  }

  else
  {
    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v56 = *(v65 + 8);
    v56(v53, v38);
    v56(v52, v38);

    v44 = v68;
    if ((v55 & 1) == 0)
    {
      return v44 & 1;
    }
  }

  return 2;
}

double *sub_100185544(double *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD5C00, &qword_100944588);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v25 - v6;
  v8 = sub_1000F24EC(&qword_100AD5C08, &unk_100944590);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v31[0] = a2;
  v33 = a1;
  sub_1000F24EC(&qword_100AD58C0, &qword_10095E4D0);
  sub_10000B58C(&unk_100AD5C10, &qword_100AD58C0, &qword_10095E4D0, &protocol conformance descriptor for [A]);
  sub_100184A84(&qword_100AE9C40, type metadata accessor for DataAggregator.EntryPlace, &protocol conformance descriptor for NSObject);
  v12 = v8;
  BidirectionalCollection<>.difference<A>(from:)();
  v32 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  (*(v9 + 16))(v7, v11, v8);
  v13 = *(v5 + 44);
  v14 = sub_10000B58C(&unk_100AD5C20, &qword_100AD5C08, &unk_100944590, &protocol conformance descriptor for CollectionDifference<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = _swiftEmptyArrayStorage;
  if (*&v7[v13] != v31[0])
  {
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v26 = v11;
    v27 = v9;
    v29 = v14;
    v30 = v13;
    do
    {
      v25 = v16;
      while (1)
      {
        v28 = v15;
        v17 = v7;
        v18 = dispatch thunk of Collection.subscript.read();
        v20 = *(v19 + 8);
        v21 = *(v19 + 25);
        v22 = v20;
        v18(v31, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v23 = v20;
        if (v21 == 1)
        {
          break;
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v15 = v33;
        v7 = v17;
        dispatch thunk of Collection.endIndex.getter();
        if (*&v17[v30] == v31[0])
        {
          v11 = v26;
          v9 = v27;
          goto LABEL_12;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v16 = v32;
      v7 = v17;
      dispatch thunk of Collection.endIndex.getter();
      v11 = v26;
      v9 = v27;
      v15 = v28;
    }

    while (*&v17[v30] != v31[0]);
  }

LABEL_12:
  sub_100004F84(v7, &qword_100AD5C00, &qword_100944588);
  (*(v9 + 8))(v11, v12);
  return v15;
}

uint64_t sub_1001859CC()
{
  v0 = type metadata accessor for EntryListType(0);
  sub_100006118(v0, qword_100B2F468);
  v1 = sub_10000617C(v0, qword_100B2F468);
  type metadata accessor for JournalMO();
  static JournalMO.defaultJournalID.getter();
  v2 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 2, v2);
}

uint64_t sub_100185A80()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  __chkstk_darwin(v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5CF0, &unk_100957340);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for EntryListType(0);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_100022B50(v0, &v29 - v12);
  v14 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
  v15 = *(*(v14 - 8) + 48);
  if (!v15(v13, 2, v14))
  {
    v31 = v7;
    v32 = v0;
    v18 = v13;
    v19 = v33;
    v29 = *(v34 + 8);
    v30 = v10;
    v29(v18);
    if (qword_100ACF9D0 != -1)
    {
      swift_once();
    }

    v20 = sub_10000617C(v8, qword_100B2F468);
    v21 = *(v5 + 48);
    v22 = v31;
    sub_100022B50(v32, v31);
    sub_100022B50(v20, v22 + v21);
    v23 = v15(v22, 2, v14);
    if (!v23)
    {
      v24 = v4;
      v25 = v30;
      sub_100022B50(v22, v30);
      if (!v15(v22 + v21, 2, v14))
      {
        (*(v34 + 32))(v4, v22 + v21, v19);
        v27 = static UUID.== infix(_:_:)();
        v28 = v29;
        (v29)(v24, v19);
        v28(v25, v19);
        sub_100011478(v22);
        v17 = v27 ^ 1;
        return v17 & 1;
      }

      (v29)(v25, v19);
      goto LABEL_14;
    }

    if (v23 == 1)
    {
      if (v15(v22 + v21, 2, v14) != 1)
      {
        goto LABEL_14;
      }
    }

    else if (v15(v22 + v21, 2, v14) != 2)
    {
LABEL_14:
      sub_1000117D0(v22);
      v17 = 1;
      return v17 & 1;
    }

    v16 = v22;
    goto LABEL_3;
  }

  v16 = v13;
LABEL_3:
  sub_100011478(v16);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100185E20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntryListType(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100022B50(a2, v6);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  sub_100186174(a1, v7);
  return sub_1000346D0(v6, v7, v8);
}

uint64_t sub_100185EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100186218();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_100185F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1001861C4();

  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t sub_100185F88@<X0>(_BYTE *a2@<X8>)
{
  sub_1001861C4();
  result = UITraitCollection.subscript.getter();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100185FD8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  sub_100186174(a1, v3);
  return sub_100185F28(v2, v3, v4);
}

uint64_t sub_100186024()
{
  sub_10003C544();

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_10018606C()
{
  sub_1001860A8();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_1001860A8()
{
  result = qword_100AD5CF8;
  if (!qword_100AD5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5CF8);
  }

  return result;
}

unint64_t sub_100186120()
{
  result = qword_100AD5D10;
  if (!qword_100AD5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D10);
  }

  return result;
}

uint64_t sub_100186174(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1001861C4()
{
  result = qword_100ADE690;
  if (!qword_100ADE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE690);
  }

  return result;
}

unint64_t sub_100186218()
{
  result = qword_100AD5D20;
  if (!qword_100AD5D20)
  {
    type metadata accessor for EntryListType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5D20);
  }

  return result;
}

double sub_100186270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_1000082B4(a1, v20 - v9, &qword_100AD5170, &unk_100943680);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AD5170, &unk_100943680);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();

  return result;
}

NSString sub_100186484()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F498 = result;
  return result;
}

double sub_1001864BC(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1001880F4();
  }

  return result;
}

void *sub_100186514(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = [result isHidden];

    return (v3 ^ 1);
  }

  return result;
}

uint64_t sub_100186578(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void sub_1001865B8()
{
  v1 = v0;
  v2 = 0;
  v118 = *v0;
  v3 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v3 - 8);
  v119 = &v112 - v4;
  v5 = sub_1000F24EC(qword_100AF2AC0, &qword_100944828);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v120 = &v112 - v7;
  v8 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  [*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext) invalidate];
  v9 = *(v0 + v8);
  *(v0 + v8) = 0;

  v10 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask))
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();
  }

  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 connectedScenes];

  v13 = sub_1000065A8(0, &qword_100AE4620, UIScene_ptr);
  v14 = sub_10002623C();
  v125 = v13;
  v121 = v14;
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v123 = v1;
  v116 = 0;
  v117 = v10;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = _swiftEmptySetSingleton;
    v128 = _swiftEmptySetSingleton;
    v18 = __CocoaSet.makeIterator()();
    v13 = v18;
    v19 = __CocoaSet.Iterator.next()();
    if (!v19)
    {
LABEL_27:

      if ((v17 & 0xC000000000000001) != 0)
      {
        goto LABEL_51;
      }

      goto LABEL_56;
    }

    v20 = -1;
LABEL_10:
    v126 = v19;
    swift_dynamicCast();
    v28 = [v127 session];
    v29 = [v28 role];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v30;
    v2 = v33;
    if (v35 == v34 && v32 == v33)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {

        goto LABEL_9;
      }
    }

    v37 = v127;
    v38 = *(v17 + 16);
    if (*(v17 + 24) <= v38)
    {
      sub_10028D564(v38 + 1);
    }

    v17 = v128;
    v21 = NSObject._rawHashValue(seed:)(v128[5]);
    v23 = v17 + 56;
    v24 = -1 << *(v17 + 32);
    v25 = v21 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v17 + 56 + 8 * (v25 >> 6))) != 0)
    {
      v27 = __clz(__rbit64((-1 << v25) & ~*(v17 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_8;
    }

    v39 = 0;
    v40 = (63 - v24) >> 6;
    while (++v26 != v40 || (v39 & 1) == 0)
    {
      v41 = v26 == v40;
      if (v26 == v40)
      {
        v26 = 0;
      }

      v39 |= v41;
      v42 = *(v23 + 8 * v26);
      if (v42 != -1)
      {
        v27 = __clz(__rbit64(~v42)) + (v26 << 6);
LABEL_8:
        *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        *(*(v17 + 48) + 8 * v27) = v37;
        ++*(v17 + 16);
LABEL_9:
        v13 = v18;
        v19 = __CocoaSet.Iterator.next()();
        if (!v19)
        {
          goto LABEL_27;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    v71 = v22;

    v13 = v71;
    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_30;
    }

    v72 = swift_slowAlloc();
    v17 = sub_1005112C8(v72, v20, v15, sub_100187310);
    v116 = v2;

    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_51;
    }

LABEL_56:
    v73 = -1 << *(v17 + 32);
    v66 = v17 + 56;
    v68 = ~v73;
    v74 = -v73;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v70 = v75 & *(v17 + 56);

    v69 = 0;
    v67 = v17;
    goto LABEL_60;
  }

  v43 = *(v15 + 32);
  v20 = ((1 << v43) + 63) >> 6;
  v22 = 8 * v20;
  if ((v43 & 0x3Fu) > 0xD)
  {
    goto LABEL_53;
  }

LABEL_30:
  v113 = v20;
  v112 = &v112;
  __chkstk_darwin(v16);
  v114 = &v112 - ((v44 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v114, v44);
  v115 = 0;
  v20 = 0;
  v45 = v15 + 56;
  v46 = 1 << *(v15 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(v15 + 56);
  v49 = (v46 + 63) >> 6;
  v124 = UIWindowSceneSessionRoleApplication;
  do
  {
    do
    {
      if (!v48)
      {
        v51 = v20;
        while (1)
        {
          v20 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_52;
          }

          if (v20 >= v49)
          {
            goto LABEL_50;
          }

          v52 = *(v45 + 8 * v20);
          ++v51;
          if (v52)
          {
            v50 = __clz(__rbit64(v52));
            v48 = (v52 - 1) & v52;
            goto LABEL_40;
          }
        }
      }

      v50 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
LABEL_40:
      v53 = v50 | (v20 << 6);
      v13 = v15;
      v54 = *(v15 + 48);
      v122 = v53;
      v55 = *(v54 + 8 * v53);
      v56 = [v55 session];
      v57 = [v56 role];

      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
      v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v62;
      if (v58 == v61 && v60 == v62)
      {

        v15 = v13;
        break;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = v13;
    }

    while ((v64 & 1) == 0);
    *&v114[(v122 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v122;
  }

  while (!__OFADD__(v115++, 1));
  __break(1u);
LABEL_50:
  v17 = sub_100652008(v114, v113, v115, v15);
  if ((v17 & 0xC000000000000001) == 0)
  {
    goto LABEL_56;
  }

LABEL_51:
  swift_unknownObjectRetain();
  __CocoaSet.makeIterator()();
  Set.Iterator.init(_cocoa:)();
  v67 = v128;
  v66 = v129;
  v68 = v130;
  v69 = v131;
  v70 = v132;
LABEL_60:
  v124 = v68;
  v76 = ((v68 + 64) >> 6);
  while (2)
  {
    if ((v67 & 0x8000000000000000) == 0)
    {
      v77 = v69;
      v78 = v70;
      if (!v70)
      {
        while (1)
        {
          v69 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          if (v69 >= v76)
          {
            goto LABEL_72;
          }

          v78 = *(v66 + 8 * v69);
          ++v77;
          if (v78)
          {
            goto LABEL_66;
          }
        }

        __break(1u);
LABEL_94:
        swift_once();
LABEL_86:
        [v76 postNotificationName:qword_100B2F498 object:0];

        goto LABEL_87;
      }

LABEL_66:
      v70 = (v78 - 1) & v78;
      v13 = *(*(v67 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v78)))));
      if (!v13)
      {
        break;
      }

      goto LABEL_70;
    }

    v79 = __CocoaSet.Iterator.next()();
    if (v79)
    {
      v126 = v79;
      swift_dynamicCast();
      v13 = v127;
      if (v127)
      {
LABEL_70:
        v80 = [v13 activationState];

        if (!v80)
        {
          sub_100014FF8(v67);

          return;
        }

        continue;
      }
    }

    break;
  }

LABEL_72:
  sub_100014FF8(v67);

  v81 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  v82 = v123;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&_mh_execute_header, v83, v84, "All scenes have entered the background", v85, 2u);
  }

  v86 = v82 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
  if (*(v82 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp + 8) == 1)
  {
    *v86 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    *(v86 + 8) = 0;
  }

  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v87, v88))
  {

    goto LABEL_80;
  }

  v89 = swift_slowAlloc();
  *v89 = 134217984;
  if (*(v86 + 8))
  {

    __break(1u);
    return;
  }

  *(v89 + 4) = *v86;
  v90 = v89;

  _os_log_impl(&_mh_execute_header, v87, v88, "applicationDidEnterBackground: backgroundedAt=%llu", v90, 0xCu);

LABEL_80:
  v91 = *(v82 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (!v91 || (v92 = [v91 rootViewController]) == 0)
  {
LABEL_89:
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "sceneDidEnterBackground: Attempted to process scene event before window was ready!", v104, 2u);
    }

    return;
  }

  v13 = v92;
  type metadata accessor for AppSecureAccessViewController();
  v93 = swift_dynamicCastClass();
  if (!v93)
  {

    goto LABEL_89;
  }

  v94 = v93;
  v95 = type metadata accessor for Logger();
  v96 = *(v95 - 8);
  v97 = v82 + v81;
  v98 = v120;
  (*(v96 + 16))(v120, v97, v95);
  (*(v96 + 56))(v98, 0, 1, v95);
  sub_100014590(v98, 0xD000000000000017, 0x80000001008E24C0);
  LOBYTE(v95) = v99;
  sub_100004F84(v98, qword_100AF2AC0, &qword_100944828);
  if (v95)
  {
    sub_1007E33D4(0, 0, v94);
    v100 = [v94 traitCollection];
    v101 = [v100 userInterfaceIdiom];

    if (v101 == 5)
    {
      v76 = [objc_opt_self() defaultCenter];
      if (qword_100ACF9F8 == -1)
      {
        goto LABEL_86;
      }

      goto LABEL_94;
    }

LABEL_87:

    return;
  }

  v105 = type metadata accessor for TaskPriority();
  v106 = v119;
  (*(*(v105 - 8) + 56))(v119, 1, 1, v105);
  type metadata accessor for MainActor();
  v107 = v13;
  v108 = static MainActor.shared.getter();
  v109 = swift_allocObject();
  v109[2] = v108;
  v109[3] = &protocol witness table for MainActor;
  v110 = v118;
  v109[4] = v94;
  v109[5] = v110;
  v111 = sub_10018B728(0, 0, v106, 0, 0, &unk_1009448C8, v109);

  sub_100004F84(v106, &qword_100AD5170, &unk_100943680);
  *(v82 + v117) = v111;
}

uint64_t sub_100187310(id *a1)
{
  v1 = [*a1 session];
  v2 = [v1 role];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001873EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1001874E0, v7, v6);
}

uint64_t sub_1001874E0()
{
  v1 = [*(v0 + 16) traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = sub_100014964();
    if (v3 == 4)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    v5 = qword_1009449B0[v4];
    v6 = 1000000000000000000 * v5;
    v7 = (v5 * 0xDE0B6B3A7640000uLL) >> 64;
    static Clock<>.continuous.getter();
    v8 = swift_task_alloc();
    *(v0 + 72) = v8;
    *v8 = v0;
    v8[1] = sub_10018771C;

    return sub_10003FA1C(v6, v7, 0, 0, 1);
  }

  else
  {

    v10 = *(v0 + 16);
    sub_1007E33D4(1u, 0, v10);
    v11 = [v10 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 5)
    {
      v13 = [objc_opt_self() defaultCenter];
      if (qword_100ACF9F8 != -1)
      {
        swift_once();
      }

      [v13 postNotificationName:qword_100B2F498 object:0];
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10018771C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1001879E0;
  }

  else
  {
    v8 = sub_1001878B4;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001878B4()
{

  v1 = *(v0 + 16);
  sub_1007E33D4(1u, 0, v1);
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 5)
  {
    v4 = [objc_opt_self() defaultCenter];
    if (qword_100ACF9F8 != -1)
    {
      swift_once();
    }

    [v4 postNotificationName:qword_100B2F498 object:0];
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001879E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100187A64()
{
  v1 = type metadata accessor for JournalFeatureFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(qword_100AF2AC0, &qword_100944828);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v34 - v7;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask))
  {

    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    Task.cancel()();
  }

  v9 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v10 = *(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = [v10 rootViewController];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  type metadata accessor for AppSecureAccessViewController();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_11:
    v35 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v35, v17, "applicationRequestedManualLock: Attempted to process scene event before window was ready!", v18, 2u);
    }

    goto LABEL_13;
  }

  v14 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  if ((v13[OBJC_IVAR____TtC7Journal29AppSecureAccessViewController_state] & 0xFE) == 2)
  {
    v35 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v35, v15, "applicationRequestedManualLock: Ignoring duplicate lock request. App is already locked.", v16, 2u);
    }

LABEL_13:
    v19 = v35;

    return;
  }

  v35 = v13;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v0 + v14, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  sub_100014590(v8, 0xD00000000000001ELL, 0x80000001008E24A0);
  LOBYTE(v20) = v22;
  sub_100004F84(v8, qword_100AF2AC0, &qword_100944828);
  if (v20)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "applicationRequestedManualLock: Ignoring request, feature disabled", v25, 2u);
    }
  }

  else
  {
    v26 = v0;
    (*(v2 + 104))(v4, enum case for JournalFeatureFlags.suggestionsAPI(_:), v1);
    v27 = JournalFeatureFlags.isEnabled.getter();
    (*(v2 + 8))(v4, v1);
    if (v27)
    {
      v28 = *(v26 + v9);
      if (v28)
      {
        v29 = [v28 windowScene];
        if (v29)
        {
          v30 = v29;
          if (qword_100ACFCD0 != -1)
          {
            swift_once();
          }

          if ([v30 _sceneComponentForKey:qword_100AE1160])
          {
            type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
            if (swift_dynamicCastClass())
            {
              sub_1003ABAF8();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }

          else
          {
          }
        }
      }
    }

    else
    {
      if (qword_100ACFD50 != -1)
      {
        swift_once();
      }

      sub_1003ED2C8(0, 1);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "applicationRequestedManualLock", v33, 2u);
    }

    sub_1007E33D4(3u, 1, v35);
  }
}

unint64_t sub_1001880B8()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1001880F4()
{
  v1 = v0;
  v2 = type metadata accessor for ProtectedData.ProtectedDataState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  if (*(v0 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext))
  {
    v43 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v43, v10, "onAuthenticateRequested: Attempted to authenticate when there was already another active auth attempt.", v11, 2u);
    }

    v12 = v43;

    return;
  }

  type metadata accessor for ProtectedData();
  static ProtectedData.shared.getter();
  ProtectedData.state.getter();

  (*(v3 + 104))(v5, enum case for ProtectedData.ProtectedDataState.available(_:), v2);
  v13 = static ProtectedData.ProtectedDataState.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  if ((v13 & 1) == 0)
  {
    sub_10018B6A4();
    v28 = swift_allocError();
    *v29 = 0;
LABEL_18:
    sub_10018894C(v28);

    return;
  }

  v15 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window;
  v16 = *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
  if (v16)
  {
    v17 = [v16 rootViewController];
    if (v17)
    {
      v18 = v17;
      type metadata accessor for AppSecureAccessViewController();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = [v19 traitCollection];

        v21 = [v20 userInterfaceIdiom];
        if (v21 == 5)
        {
          v22 = *(v1 + v15);
          if (!v22)
          {
            goto LABEL_25;
          }

          v23 = [v22 rootViewController];
          if (!v23)
          {
            goto LABEL_25;
          }

          v24 = v23;
          v25 = swift_dynamicCastClass();
          if (!v25)
          {

LABEL_25:
            sub_10018B6A4();
            v28 = swift_allocError();
            *v41 = 1;
            goto LABEL_18;
          }

          v26 = [v25 traitCollection];

          v27 = [v26 activeAppearance];
          if (v27 != 1)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
      }
    }
  }

  v30 = [objc_allocWithZone(LAContext) init];
  v31 = *(v1 + v9);
  *(v1 + v9) = v30;
  v32 = v30;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "onAuthenticateRequested: Starting new auth attempt...", v35, 2u);
  }

  v36 = [objc_opt_self() mainBundle];
  v46._object = 0x80000001008E2420;
  v37._object = 0x80000001008E2400;
  v46._countAndFlagsBits = 0xD000000000000054;
  v37._countAndFlagsBits = 0xD000000000000013;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

  v39 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10018B6F8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005FC710;
  aBlock[3] = &unk_100A5FA58;
  v40 = _Block_copy(aBlock);

  [v32 evaluatePolicy:2 localizedReason:v39 reply:v40];
  _Block_release(v40);
}

uint64_t sub_100188648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  aBlock[4] = sub_10018B700;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A5FAA8;
  v13 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100015024(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_10000B58C(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_10018894C(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AF6E60, &unk_100944898);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = v26 - v5;
  v7 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext;
  if (*(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext))
  {
    v8 = *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window);
    if (v8)
    {
      v9 = [v8 rootViewController];
      if (v9)
      {
        v26[0] = v9;
        type metadata accessor for AppSecureAccessViewController();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          v12 = *(v1 + v7);
          *(v1 + v7) = 0;

          if (a1)
          {
            type metadata accessor for Code(0);
            v26[1] = -9;
            sub_100015024(&qword_100AD19B8, type metadata accessor for Code, &unk_10093F24C);
            if (static _ErrorCodeProtocol.~= infix(_:_:)())
            {
              v13 = Logger.logObject.getter();
              v14 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v13, v14))
              {
                v15 = swift_slowAlloc();
                *v15 = 0;
                _os_log_impl(&_mh_execute_header, v13, v14, "onAuthenticateComplete: Attempt failed from app cancel (app moving to background)", v15, 2u);
              }
            }

            else
            {
              swift_errorRetain();
              v21 = Logger.logObject.getter();
              v22 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v21, v22))
              {
                v23 = swift_slowAlloc();
                v24 = swift_slowAlloc();
                *v23 = 138412290;
                swift_errorRetain();
                v25 = _swift_stdlib_bridgeErrorToNSError();
                *(v23 + 4) = v25;
                *v24 = v25;
                _os_log_impl(&_mh_execute_header, v21, v22, "onAuthenticateComplete: Attempt failed w/ error - %@", v23, 0xCu);
                sub_100004F84(v24, &unk_100AD4BB0, &unk_100941E50);
              }

              sub_1007E33D4(3u, 1, v11);
            }
          }

          else
          {
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "onAuthenticateComplete: Attempt succeeded!", v19, 2u);
            }

            v20 = type metadata accessor for Notification();
            (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
            sub_10004E570(v6);

            sub_100004F84(v6, &qword_100AF6E60, &unk_100944898);
          }
        }

        else
        {
          v16 = v26[0];
        }
      }
    }
  }
}

void sub_100188D20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = static String._fromSubstring(_:)();
    v15 = sub_100008458(v13, v14, &v20);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = sub_100008458(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "onAppUnlocked[%s]: Posting %s.", v12, 0x16u);
    swift_arrayDestroy();
  }

  v19 = [objc_opt_self() defaultCenter];
  [v19 postNotificationName:v9 object:a7];
}

double sub_100188EF4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v13 = Strong;
      if ([a3 activationState])
      {

        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v21 = v17;
          *v16 = 136315138;
          v18 = static String._fromSubstring(_:)();
          v20 = sub_100008458(v18, v19, &v21);

          *(v16 + 4) = v20;
          _os_log_impl(&_mh_execute_header, v14, v15, "onAppUnlocked[%s]: Scene not yet active, deferring didUnlock...", v16, 0xCu);
          sub_10000BA7C(v17);
        }

        *(v13 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive) = 1;
      }

      else
      {
        if (qword_100ACF9E8 != -1)
        {
          swift_once();
        }

        a9(qword_100B2F488);
      }
    }
  }

  return result;
}

uint64_t sub_1001890D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100189174, v4, v3);
}

uint64_t sub_100189174()
{
  v1 = [*(v0 + 16) presentingViewController];
  v2 = *(v0 + 16);
  if (v1)
  {
    do
    {
      v3 = v1;

      v1 = [v3 presentingViewController];
      v2 = v3;
    }

    while (v1);
  }

  else
  {
    v3 = *(v0 + 16);
  }

  v4 = [v3 viewIfLoaded];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  *(v0 + 64) = v6;

  if (!v6)
  {
LABEL_9:
    v10 = *(v0 + 24);
    v11 = static MainActor.shared.getter();
    *(v0 + 72) = v11;
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *(v12 + 16) = v6;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_1001893A4;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 96, &type metadata for Bool, &type metadata for Bool, v11, &protocol witness table for MainActor, &unk_100944840, v12, &type metadata for Bool);
  }

  v7 = v6;
  if ([v7 activationState])
  {

    goto LABEL_9;
  }

  sub_10018AEBC(v6);
  v9 = v8;

  if (v9)
  {
    goto LABEL_9;
  }

  v14 = *(v0 + 8);

  return v14(1);
}

uint64_t sub_1001893A4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_100189504, v3, v2);
}

uint64_t sub_100189504()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100189574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_1000F24EC(&qword_100AD5F28, &qword_100944848);
  v4[8] = swift_task_alloc();
  v5 = sub_1000F24EC(&qword_100AD5F30, &qword_100944850);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = sub_1000F24EC(&qword_100AD5F38, &unk_100944858);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v4[15] = swift_task_alloc();
  v4[16] = type metadata accessor for MainActor();
  v4[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[18] = v8;
  v4[19] = v7;

  return _swift_task_switch(sub_100189754, v8, v7);
}

uint64_t sub_100189754()
{
  v1 = v0[15];
  v2 = v0[11];
  v15 = v0[9];
  v16 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v3;
  v9 = v4;
  sub_100186270(v1, &unk_100944870, v8);
  sub_100004F84(v1, &qword_100AD5170, &unk_100943680);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100186270(v1, &unk_100944880, v10);
  sub_100004F84(v1, &qword_100AD5170, &unk_100943680);
  v11 = *v5;
  v0[20] = *v5;
  v0[2] = v11;
  sub_1000F24EC(&qword_100AD5F40, &qword_100944888);
  sub_10000B58C(&qword_100AD5F48, &qword_100AD5F40, &qword_100944888, &protocol conformance descriptor for TaskGroup<A>);
  AsyncPrefixSequence.init(_:count:)();
  AsyncPrefixSequence.base.getter();
  TaskGroup.makeAsyncIterator()();
  AsyncPrefixSequence.count.getter();
  (*(v16 + 8))(v2, v15);
  AsyncPrefixSequence.Iterator.init(_:count:)();
  v12 = static MainActor.shared.getter();
  v0[21] = v12;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_100189A44;

  return sub_10018A624(v12, &protocol witness table for MainActor);
}

uint64_t sub_100189A44(char a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  if (!v1)
  {

    v5 = *(v3 + 144);
    v6 = *(v3 + 152);

    return _swift_task_switch(sub_100189B5C, v5, v6);
  }

  return result;
}

uint64_t sub_100189B5C()
{
  v1 = *(v0 + 184);

  if (v1 == 2)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v2 = 0;
  }

  else
  {
    v3 = *(v0 + 184);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = *(v0 + 96);
    TaskGroup.cancelAll()();
    (*(v5 + 8))(v4, v6);
    v2 = v3 & 1;
  }

  **(v0 + 32) = v2;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100189C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  sub_1000F24EC(&qword_100AF6E60, &unk_100944898);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100189D50, 0, 0);
}

uint64_t sub_100189D50()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACF9E8 != -1)
  {
    swift_once();
  }

  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100015024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100189EAC;
  v4 = v0[5];
  v5 = v0[6];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_100189EAC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10018A0D0;
  }

  else
  {
    v2 = sub_100189FC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100189FDC()
{
  v1 = *(v0 + 40);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = 0;
  }

  else
  {
    sub_100004F84(*(v0 + 40), &qword_100AF6E60, &unk_100944898);
    v3 = 1;
  }

  **(v0 + 24) = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10018A0D0()
{
  *(v0 + 16) = *(v0 + 80);
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10018A15C(uint64_t a1)
{
  v1[3] = a1;
  sub_1000F24EC(&qword_100AF6E60, &unk_100944898);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10018A254, 0, 0);
}

uint64_t sub_10018A254()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  v2 = sub_100015024(&qword_100AD5F58, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_10018A384;
  v4 = v0[4];
  v5 = v0[5];

  return dispatch thunk of AsyncIteratorProtocol.next()(v4, v5, v2);
}

uint64_t sub_10018A384()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10018A598;
  }

  else
  {
    v2 = sub_10018A498;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10018A4B4()
{
  v1 = *(v0 + 32);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    sub_100004F84(*(v0 + 32), &qword_100AF6E60, &unk_100944898);
  }

  **(v0 + 24) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10018A598()
{
  *(v0 + 16) = *(v0 + 72);
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_10018A624(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[13] = v4;
  v3[14] = v6;

  return _swift_task_switch(sub_10018A6B8, v4, v6);
}

uint64_t sub_10018A6B8()
{
  sub_1000F24EC(&qword_100AD5F38, &unk_100944858);
  if (AsyncPrefixSequence.Iterator.remaining.getter())
  {
    v1 = AsyncPrefixSequence.Iterator.remaining.modify();
    --*v2;
    v1(v0 + 2, 0);
    v0[15] = AsyncPrefixSequence.Iterator.baseIterator.modify();
    sub_1000F24EC(&qword_100AD5F28, &qword_100944848);
    sub_10000B58C(&qword_100AD5F50, &qword_100AD5F28, &qword_100944848, &protocol conformance descriptor for TaskGroup<A>.Iterator);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_10018A85C;
    v4 = v0[10];
    v5 = v0[11];

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 17, v4, v5);
  }

  else
  {
    v6 = v0[1];

    return v6(2);
  }
}

uint64_t sub_10018A85C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10018A9A0;
  }

  else
  {
    (*(v2 + 120))();
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_10018A984;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10018A9A0()
{
  (*(v0 + 120))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10018AA14()
{
  v1 = OBJC_IVAR____TtC7Journal22AppSecureAccessManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10018AAFC()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v6 = (v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_sceneLogID);
  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = sub_10018B258(6uLL, v7, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  *v6 = v10;
  v6[1] = v12;
  v6[2] = v14;
  v6[3] = v16;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_window) = 0;
  v17 = v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_backgroundedAtNanoStamp;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_activeAuthContext) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_unlockRequestedWhileWindowInactive) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_lockInBackgroundTask) = 0;
  *(v1 + OBJC_IVAR____TtC7Journal22AppSecureAccessManager_isNewAppLaunch) = 0;
  return v1;
}

uint64_t sub_10018ACB4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10018ADA8;

  return v5(v2 + 32);
}

uint64_t sub_10018ADA8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

void sub_10018AEBC(void *a1)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 activationState] == -1)
  {

    return;
  }

  v5 = [v3 windows];
  sub_1000065A8(0, &unk_100AE3160, UIWindow_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = v8;
      if (v7)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(v6 + 8 * v9 + 32);
    }

    v14 = v13;
    v15 = [v13 rootViewController];
    if (v15)
    {
      break;
    }

    v11 = v14;
LABEL_8:

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }
  }

  v11 = v15;
  type metadata accessor for AppSecureAccessViewController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_27:
    if (v9 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    return;
  }

LABEL_19:
  if (v10)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v9 = v16;
    v17 = [v16 rootViewController];
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = v17;
    type metadata accessor for AppSecureAccessViewController();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  else
  {
    if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v6 + 32 + 8 * v9);
      goto LABEL_22;
    }

    __break(1u);
LABEL_35:
    v18 = v9;
  }

  __break(1u);
}

BOOL sub_10018B14C(void *a1)
{
  v1 = a1;
  v2 = [v1 presentingViewController];
  if (v2)
  {
    do
    {
      v3 = v2;

      v2 = [v3 presentingViewController];
      v1 = v3;
    }

    while (v2);
  }

  else
  {
    v3 = v1;
  }

  v4 = [v3 viewIfLoaded];
  v5 = [v4 window];

  v6 = [v5 windowScene];
  if (!v6)
  {
    return 0;
  }

  if ([v6 activationState])
  {

    return 0;
  }

  sub_10018AEBC(v6);
  v8 = v7;

  return !v8;
}

unint64_t sub_10018B258(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
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

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

uint64_t sub_10018B314(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_100189574(a1, a2, v7, v6);
}

uint64_t sub_10018B3C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100189C58(a1, v4, v5, v6);
}

uint64_t sub_10018B488(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_10018A15C(a1);
}

void sub_10018B534(void *a1)
{
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];
  v12 = *(v1 + v6);

  sub_100188D20(a1, v1 + v4, v8, v9, v10, v11, v12);
}

double sub_10018B5E4()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100188EF4(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_10018B6A4()
{
  result = qword_100AD5F68;
  if (!qword_100AD5F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5F68);
  }

  return result;
}

uint64_t sub_10018B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a5;
  v27 = a1;
  v11 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1000082B4(a3, v13, &qword_100AD5170, &unk_100943680);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_100004F84(v13, &qword_100AD5170, &unk_100943680);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v24 = v34;
      v34[2] = v14;
      v34[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v22 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v22;
        }

        goto LABEL_12;
      }
    }

    v33[4] = 6;
    v33[5] = v24;
    v33[6] = a4;
    v33[7] = v26;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v33[0] = 0;
    v33[1] = 0;
    v21 = v33;
    v33[2] = v14;
    v33[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v32[0] = 6;
    v32[1] = v21;
    v32[2] = a4;
    v32[3] = v26;
    v21 = v32;
  }

LABEL_11:
  v29 = 7;
  v30 = v21;
  v31 = v20;
  v22 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v22;
}

void sub_10018BA40(void *a1)
{
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = a1;
  if ([v3 activationState] == -1)
  {

    return;
  }

  v5 = [v3 windows];
  sub_1000065A8(0, &unk_100AE3160, UIWindow_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_32:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = v6 & 0xC000000000000001;
  while (1)
  {
    if (v8 == v9)
    {
      v9 = v8;
      if (v7)
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(v6 + 8 * v9 + 32);
    }

    v14 = v13;
    v15 = [v13 rootViewController];
    if (v15)
    {
      break;
    }

    v11 = v14;
LABEL_8:

    if (__OFADD__(v9++, 1))
    {
      goto LABEL_31;
    }
  }

  v11 = v15;
  type metadata accessor for AppSecureAccessViewController();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_8;
  }

  if (v7)
  {
LABEL_27:
    if (v9 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

    return;
  }

LABEL_19:
  if (v10)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
    v9 = v16;
    v17 = [v16 rootViewController];
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = v17;
    type metadata accessor for AppSecureAccessViewController();
    if (swift_dynamicCastClass())
    {

      return;
    }
  }

  else
  {
    if (v9 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v6 + 32 + 8 * v9);
      goto LABEL_22;
    }

    __break(1u);
LABEL_35:
    v18 = v9;
  }

  __break(1u);
}

uint64_t sub_10018BCD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1001873EC(a1, v4, v5, v6);
}

unint64_t sub_10018BDB8()
{
  result = qword_100AD5F78;
  if (!qword_100AD5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5F78);
  }

  return result;
}

char *sub_10018BE1C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing] = 0;
  *&v4[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for VideoSeekSlider();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  [v9 setPreferredBehavioralStyle:1];
  [v9 setSliderStyle:1];
  [v9 setContinuous:1];
  [v9 setSemanticContentAttribute:1];
  [v9 addTarget:v9 action:"editingDidBegin" forControlEvents:1];
  [v9 addTarget:v9 action:"editingDidEnd" forControlEvents:448];
  swift_getKeyPath();
  v10 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v11 = *&v9[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver];
  *&v9[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isTrackingObserver] = v10;

  return v9;
}

id sub_10018BF9C(id *a1)
{
  v1 = *a1;
  result = [*a1 isTracking];
  if (result)
  {
    if (v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing])
    {
      return result;
    }

    v3 = 1;
    v4 = 0x10000;
  }

  else
  {
    if (!v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing])
    {
      return result;
    }

    v3 = 0;
    v4 = 0x40000;
  }

  v1[OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing] = v3;

  return [v1 sendActionsForControlEvents:v4];
}

id sub_10018C0F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoSeekSlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018C168()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

double sub_10018C1DC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return result;
}

char *sub_10018C254(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1000F24EC(&qword_100AD6048, &qword_100944AE8);
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v43 - v11;
  v48 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  __chkstk_darwin(v48);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v43 - v14;
  v45 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v45);
  v44 = sub_1000F24EC(&qword_100AD6050, &unk_100944AF0);
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v43 - v16;
  v18 = type metadata accessor for ColorResource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  *&v5[v23] = [objc_allocWithZone(UIView) init];
  v24 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__fillColor;
  sub_10018D564();
  if (qword_100AD0C00 != -1)
  {
    swift_once();
  }

  v26 = sub_10000617C(v18, qword_100B31310);
  (*(v19 + 16))(v21, v26, v18);
  v53 = UIColor.init(resource:)();
  v27 = v53;
  UIView.Invalidations.Layout.init()();
  sub_10018D6FC(&qword_100AD6020, sub_10018D564, &protocol conformance descriptor for NSObject);
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v15 + 32))(&v5[v25], v17, v44);
  v28 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__colorVariant;
  v29 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v30 = v47;
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  sub_10018D744(v30, v46);
  UIView.Invalidations.Layout.init()();
  sub_10018D648();
  v31 = v49;
  UIView.Invalidating.init(wrappedValue:_:)();
  sub_10018D7B4(v30);
  (*(v50 + 32))(&v5[v28], v31, v51);
  v32 = type metadata accessor for ThirdPartyMediaColorEffectView(0);
  v52.receiver = v5;
  v52.super_class = v32;
  v33 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  v35 = *&v33[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView];
  v36 = v33;
  v37 = v35;
  [v36 bounds];
  [v37 setFrame:?];

  [*&v33[v34] setAutoresizingMask:18];
  [*&v33[v34] setContentMode:2];
  [v36 addSubview:*&v33[v34]];
  v38 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  v39 = *&v36[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView];
  [v36 bounds];
  [v39 setFrame:?];

  [*&v36[v38] setAutoresizingMask:18];
  [v36 addSubview:*&v36[v38]];
  v40 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  v41 = *&v36[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView];
  [v36 bounds];
  [v41 setFrame:?];

  [*&v36[v40] setAutoresizingMask:18];
  [v36 addSubview:*&v36[v40]];

  return v36;
}

uint64_t sub_10018C88C(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = sub_1000F24EC(&qword_100AD6048, &qword_100944AE8);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v34 - v4;
  v42 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  __chkstk_darwin(v42);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v34 - v7;
  v39 = type metadata accessor for UIView.Invalidations.Layout();
  __chkstk_darwin(v39);
  v41 = sub_1000F24EC(&qword_100AD6050, &unk_100944AF0);
  v8 = *(v41 - 8);
  __chkstk_darwin(v41);
  v10 = &v34 - v9;
  v11 = type metadata accessor for ColorResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView;
  v16 = [objc_allocWithZone(UIView) init];
  v38 = v15;
  *(v1 + v15) = v16;
  v17 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  v36 = v17;
  *(v1 + v17) = v18;
  v19 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView;
  v20 = [objc_allocWithZone(UIView) init];
  v35 = v19;
  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__fillColor;
  sub_10018D564();
  if (qword_100AD0C00 != -1)
  {
    swift_once();
  }

  v22 = sub_10000617C(v11, qword_100B31310);
  (*(v12 + 16))(v14, v22, v11);
  v47 = UIColor.init(resource:)();
  v23 = v47;
  UIView.Invalidations.Layout.init()();
  sub_10018D6FC(&qword_100AD6020, sub_10018D564, &protocol conformance descriptor for NSObject);
  UIView.Invalidating.init(wrappedValue:_:)();

  v24 = v10;
  v25 = v41;
  (*(v8 + 32))(v1 + v21, v24, v41);
  v26 = OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView__colorVariant;
  v27 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v28 = *(*(v27 - 8) + 56);
  v34 = v21;
  v29 = v37;
  v28(v37, 1, 1, v27);
  sub_10018D744(v29, v40);
  UIView.Invalidations.Layout.init()();
  sub_10018D648();
  v30 = v43;
  UIView.Invalidating.init(wrappedValue:_:)();

  sub_10018D7B4(v29);
  v32 = v45;
  v31 = v46;
  (*(v45 + 32))(v2 + v26, v30, v46);

  (*(v8 + 8))(v2 + v34, v25);
  (*(v32 + 8))(v2 + v26, v31);
  type metadata accessor for ThirdPartyMediaColorEffectView(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10018CE30()
{
  v1 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = type metadata accessor for ThirdPartyMediaColorEffectView(0);
  v25.receiver = v0;
  v25.super_class = v4;
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v5 = *&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_fillView];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  v6 = v24;
  [v5 setBackgroundColor:v24];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  v7 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v9 = v24;
    v10 = [v24 CGColor];
    UISColorLuminance();
    v12 = v11;

    if (v12 <= 0.1)
    {
      goto LABEL_9;
    }

LABEL_7:
    v14 = &kCAFilterPlusL;
    v15 = &selRef_systemBlackColor;
    v16 = 0.6;
LABEL_10:
    v17 = 2;
    goto LABEL_11;
  }

  v13 = (*(v8 + 88))(v3, v7);
  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:))
  {
    v14 = &kCAFilterPlusD;
    v15 = &selRef_systemWhiteColor;
    v16 = 0.78;
    v17 = 1;
LABEL_11:
    [v0 setOverrideUserInterfaceStyle:v17];
    v18 = *&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_overlayView];
    v19 = [objc_opt_self() *v15];
    v20 = [v19 colorWithAlphaComponent:v16];

    [v18 setBackgroundColor:v20];
    v21 = [v18 layer];
    [v21 setCompositingFilter:0];

    v22 = [*&v0[OBJC_IVAR____TtC7Journal30ThirdPartyMediaColorEffectView_contentView] layer];
    [v22 setCompositingFilter:*v14];

    return;
  }

  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:))
  {
    goto LABEL_7;
  }

  if (v13 == enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:))
  {
LABEL_9:
    v14 = &kCAFilterPlusL;
    v15 = &selRef_systemWhiteColor;
    v16 = 0.13;
    goto LABEL_10;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

id sub_10018D248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaColorEffectView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ThirdPartyMediaColorEffectView(uint64_t a1)
{
  result = qword_100AD6008;
  if (!qword_100AD6008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10018D3C8(uint64_t a1)
{
  sub_10018D4A8(319);
  if (v1 <= 0x3F)
  {
    sub_10018D5B0(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018D4A8(uint64_t a1)
{
  if (!qword_100AD6018)
  {
    sub_10018D564();
    type metadata accessor for UIView.Invalidations.Layout();
    sub_10018D6FC(&qword_100AD6020, sub_10018D564, &protocol conformance descriptor for NSObject);
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6018);
    }
  }
}

unint64_t sub_10018D564()
{
  result = qword_100AD4C70;
  if (!qword_100AD4C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4C70);
  }

  return result;
}

void sub_10018D5B0(uint64_t a1)
{
  if (!qword_100AD6028)
  {
    sub_1000F2A18(&qword_100AD6030, &qword_100944A50);
    type metadata accessor for UIView.Invalidations.Layout();
    sub_10018D648();
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD6028);
    }
  }
}

unint64_t sub_10018D648()
{
  result = qword_100AD6038;
  if (!qword_100AD6038)
  {
    sub_1000F2A18(&qword_100AD6030, &qword_100944A50);
    sub_10018D6FC(&qword_100AD6040, &type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant, &protocol conformance descriptor for ThirdPartyMediaAssetMetadata.ColorVariant);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6038);
  }

  return result;
}

uint64_t sub_10018D6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10018D744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018D7B4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10018D81C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ColorResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor] = 0;
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100941D70;
  sub_10018D564();
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v10, qword_100B31700);
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  *(v14 + 32) = UIColor.init(resource:)();
  if (qword_100AD0D48 != -1)
  {
    swift_once();
  }

  v17 = sub_10000617C(v10, qword_100B316E8);
  v16(v13, v17, v10);
  *(v14 + 40) = UIColor.init(resource:)();
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v18 = sub_10000617C(v10, qword_100B316D0);
  v16(v13, v18, v10);
  *(v14 + 48) = UIColor.init(resource:)();
  static UnitPoint.top.getter();
  v20 = v19;
  v22 = v21;
  static UnitPoint.bottom.getter();
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for GradientView(0);
  v28 = [objc_allocWithZone(v27) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v14;
  v29 = v28;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 0;
  v30 = v29;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v20;
  v55 = v22;
  v31 = v30;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v24;
  v55 = v26;
  static UIView.Invalidating.subscript.setter();
  *&v5[OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView] = v31;
  static UnitPoint.top.getter();
  v33 = v32;
  v35 = v34;
  static UnitPoint.bottom.getter();
  v37 = v36;
  v39 = v38;
  v40 = [objc_allocWithZone(v27) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = _swiftEmptyArrayStorage;
  v41 = v40;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = 0;
  v42 = v41;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v33;
  v55 = v35;
  v43 = v42;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v54 = v37;
  v55 = v39;
  static UIView.Invalidating.subscript.setter();
  *&v5[OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView] = v43;
  v44 = type metadata accessor for TimelineGradientView();
  v53.receiver = v5;
  v53.super_class = v44;
  v45 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v46 = OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView;
  v47 = *&v45[OBJC_IVAR____TtC7Journal20TimelineGradientView_defaultGradientView];
  v48 = v45;
  [v48 addSubview:v47];
  v49 = *&v45[v46];
  sub_100013178(0.0);

  v50 = OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView;
  [v48 addSubview:*&v48[OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView]];
  v51 = *&v48[v50];
  sub_100013178(0.0);

  return v48;
}

void sub_10018DE54()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal20TimelineGradientView_gradientColor);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal20TimelineGradientView_customGradientView);
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100941D60;
    v4 = v1;
    v5 = v2;
    *(v3 + 32) = [v4 colorWithAlphaComponent:0.1];
    *(v3 + 40) = [v4 colorWithAlphaComponent:0.0];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.setter();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v2;
    static UIView.Invalidating.subscript.setter();
  }
}

id sub_10018DFA8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimelineGradientView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10018E05C()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:0 searchableByDefault:0 unique:0 multiValued:0];

  qword_100B2F4A8 = v2;
}