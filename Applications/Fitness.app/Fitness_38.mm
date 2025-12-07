uint64_t sub_10046EC9C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_10000EA04(v3, &qword_1008EE870, &qword_1006F2AE8);
    v4 = v0[41];
    v5 = v0[42];

    return _swift_task_switch(sub_10047964C, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[28], v3, v1);
    v6 = AsyncMapSequence.Iterator.transform.getter();
    v0[48] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[49] = v8;
    *v8 = v0;
    v8[1] = sub_10046EE5C;
    v9 = v0[28];

    return (v11)(v0 + 50, v9);
  }
}

uint64_t sub_10046EE5C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 360);
  v6 = *(v1 + 352);

  return _swift_task_switch(sub_10046EFFC, v6, v5);
}

uint64_t sub_10046EFFC()
{

  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return _swift_task_switch(sub_10046F060, v1, v2);
}

uint64_t sub_10046F060()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v22 = v0[19];
  v23 = v0[18];
  v20 = v0[17];
  v21 = v0[16];
  v19 = v0[15];
  v17 = v0[20];
  v16 = v0[14];
  v5 = type metadata accessor for OSSignposter();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001B104(v1, v2, &unk_1008EE810, &qword_1006EE090);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  sub_100015E80(v2, v9 + v7, &unk_1008EE810, &qword_1006EE090);
  *(v9 + v8) = 0;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v0[6] = sub_100479654;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000449A8;
  v0[5] = &unk_10085C1F8;
  v10 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[12] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v21 + 8))(v20, v19);
  (*(v22 + 8))(v17, v23);
  sub_10000EA04(v1, &unk_1008EE810, &qword_1006EE090);
  v11 = static MainActor.shared.getter();
  v0[43] = v11;
  if (v11)
  {
    swift_getObjectType();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[44] = v12;
  v0[45] = v14;

  return _swift_task_switch(sub_10046EA70, v12, v14);
}

uint64_t sub_10046F3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[14] = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = *(sub_100140278(&unk_1008EE810, &qword_1006EE090) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  sub_100140278(&qword_1008EE870, &qword_1006F2AE8);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Tips.Status();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = sub_100140278(&qword_1008EE878, &qword_1006F2AF0);
  v4[30] = swift_task_alloc();
  v4[31] = sub_100140278(&qword_1008EE880, &qword_1006F2AF8);
  v4[32] = swift_task_alloc();
  v9 = sub_100140278(&qword_1008EE888, &qword_1006F2B00);
  v4[33] = v9;
  v4[34] = *(v9 - 8);
  v4[35] = swift_task_alloc();
  v10 = sub_100140278(&qword_1008EE890, &qword_1006F2B08);
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v12;
  v4[42] = v11;

  return _swift_task_switch(sub_10046F7A8, v12, v11);
}

uint64_t sub_10046F7A8()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  type metadata accessor for FitnessPlusSampleContentTip(0);
  sub_100026E98(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip, &unk_1006EDD34);
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_10014A6B0(&qword_1008EE898, &qword_1008EE878, &qword_1006F2AF0, &protocol conformance descriptor for AsyncStream<A>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  v4 = static MainActor.shared.getter();
  v0[43] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[44] = v5;
  v0[45] = v7;

  return _swift_task_switch(sub_100082230, v5, v7);
}

uint64_t sub_10046F97C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_10047969C;
  }

  else
  {
    (*(v2 + 368))();
    v3 = *(v2 + 352);
    v4 = *(v2 + 360);
    v5 = sub_100081B34;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10046FAA4()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 360);
  v6 = *(v1 + 352);

  return _swift_task_switch(sub_100081E34, v6, v5);
}

void sub_10046FD1C()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008EE828, &qword_1006F2A70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - v8;
  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
  if (v10)
  {
    v17[1] = 1;
    v11 = v10;
    UICollectionViewDiffableDataSource.snapshot(for:)();
    v12 = NSDiffableDataSourceSectionSnapshot.items.getter();
    (*(v7 + 8))(v9, v6);
    v13 = *(v12 + 16);

    if (v13)
    {
      v14 = [v1 collectionView];
      if (!v14)
      {
        __break(1u);
        return;
      }

      v15 = v14;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v5, v2);
      [v15 scrollToItemAtIndexPath:isa atScrollPosition:4 animated:1];

      v11 = isa;
    }
  }
}

void sub_10046FF90()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008EE828, &qword_1006F2A70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
  if (v10)
  {
    v20[1] = 1;
    v11 = v10;
    UICollectionViewDiffableDataSource.snapshot(for:)();
    v12 = NSDiffableDataSourceSectionSnapshot.items.getter();
    (*(v7 + 8))(v9, v6);
    v13 = *(v12 + 16);

    if (!v13)
    {
LABEL_7:

      return;
    }

    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      v16 = [v1 collectionView];
      if (!v16)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v17 = v16;
      v18 = [v16 numberOfItemsInSection:1];

      if (!__OFSUB__(v18, 1))
      {
        IndexPath.init(row:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v3 + 8))(v5, v2);
        [v15 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        v11 = isa;
        goto LABEL_7;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100470244()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if ([v0 collectionView])
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v5 = objc_allocWithZone(sub_100140278(&qword_1008EE740, &qword_1006F29C8));
    v6 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v7 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource;
    v8 = *&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource];
    *&v1[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource] = v6;
    v9 = v6;

    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    v11 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
    sub_100140278(&qword_1008EE748, &qword_1006F29D0);
    UICollectionViewDiffableDataSource.ReorderingHandlers.canReorderItem.setter();
    v11(v15, 0);

    v12 = *&v1[v7];
    if (v12)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = v12;
      v14 = UICollectionViewDiffableDataSource.reorderingHandlers.modify();
      UICollectionViewDiffableDataSource.ReorderingHandlers.didReorder.setter();
      v14(v15, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100470464()
{
  if (Tips.Action.id.getter() == 0xD000000000000013 && 0x800000010075EE50 == v0)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return result;
    }
  }

  return sub_10046C170();
}

void sub_1004704F4(uint64_t a1, uint64_t a2)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView(0);
  __chkstk_darwin(OnboardingNavigationView);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Tips.Action.id.getter() == 0xD000000000000013 && 0x800000010075EE70 == v5)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *v4 = sub_100478E70;
    *(v4 + 1) = v9;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    v16 = _swiftEmptyArrayStorage;
    sub_100140278(&qword_1008DDD40, qword_1006D71E0);
    State.init(wrappedValue:)();
    v10 = v18;
    *(v4 + 4) = v17;
    *(v4 + 5) = v10;
    LOBYTE(v16) = 0;
    State.init(wrappedValue:)();
    v11 = v18;
    v4[48] = v17;
    *(v4 + 7) = v11;
    LOBYTE(v16) = 0;
    State.init(wrappedValue:)();
    v12 = v18;
    v4[64] = v17;
    *(v4 + 9) = v12;
    v13 = *(OnboardingNavigationView + 36);
    *&v4[v13] = swift_getKeyPath();
    sub_100140278(&qword_1008EE800, &qword_1006D7580);
    swift_storeEnumTagMultiPayload();
    v14 = objc_allocWithZone(sub_100140278(&qword_1008EE808, &unk_1006F3670));
    v15 = UIHostingController.init(rootView:)();
    [v8 presentViewController:v15 animated:1 completion:0];
  }
}

void sub_100470744(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (Tips.Action.id.getter() == 0xD000000000000014 && 0x800000010075B370 == v3)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10047196C();
  }
}

uint64_t sub_100470800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100140278(&unk_1008E4E40, &unk_1006E33D0);
  __chkstk_darwin(v47);
  v49 = &v46 - v7;
  v8 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v8 - 8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  __chkstk_darwin(v12);
  v52 = &v46 - v13;
  v14 = type metadata accessor for FitnessPlusSampleContentTip(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrackingTip = type metadata accessor for TrainingLoadTrackingTip(0);
  __chkstk_darwin(TrackingTip - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CustomizeSummaryTip(0);
  __chkstk_darwin(v20 - 8);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100479054(a2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_customizeSummaryTip, v22, type metadata accessor for CustomizeSummaryTip);
  sub_100026E98(&qword_1008EAFA0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = v5;
  v24 = *(v5 + 8);
  v24(v22, v4);
  if (v23)
  {
    goto LABEL_6;
  }

  sub_100479054(a2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_trainingLoadTip, v19, type metadata accessor for TrainingLoadTrackingTip);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24(v19, v4);
  if (v25)
  {
    goto LABEL_6;
  }

  sub_100479054(a2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_sampleContentTip, v16, type metadata accessor for FitnessPlusSampleContentTip);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24(v16, v4);
  if (v26 & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    goto LABEL_6;
  }

  v30 = v51;
  v29 = v52;
  (*(v51 + 16))(v52, a1, v4);
  v31 = *(v30 + 56);
  v31(v29, 0, 1, v4);
  v32 = *(*(a2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
  if (*(v32 + 16))
  {
    sub_100007C5C(v32 + 32, v53);
    v33 = v54;
    v34 = v55;
    sub_1000066AC(v53, v54);
    v35 = v50;
    (*(v34 + 8))(v33, v34);
    v31(v35, 0, 1, v4);
    sub_100005A40(v53);
  }

  else
  {
    v35 = v50;
    v31(v50, 1, 1, v4);
  }

  v36 = v49;
  v37 = *(v47 + 48);
  v38 = v52;
  sub_10001B104(v52, v49, &unk_1008DB8A0, qword_1006DBA20);
  v49 = v37;
  sub_10001B104(v35, v36 + v37, &unk_1008DB8A0, qword_1006DBA20);
  v39 = *(v51 + 48);
  v40 = v39(v36, 1, v4);
  v41 = v48;
  if (v40 != 1)
  {
    sub_10001B104(v36, v48, &unk_1008DB8A0, qword_1006DBA20);
    v42 = v49;
    if (v39(v36 + v49, 1, v4) != 1)
    {
      v43 = v46;
      (*(v51 + 32))(v46, v36 + v42, v4);
      v44 = v41;
      v45 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24(v43, v4);
      sub_10000EA04(v50, &unk_1008DB8A0, qword_1006DBA20);
      sub_10000EA04(v52, &unk_1008DB8A0, qword_1006DBA20);
      v24(v44, v4);
      sub_10000EA04(v36, &unk_1008DB8A0, qword_1006DBA20);
      v27 = v45 ^ 1;
      return v27 & 1;
    }

    sub_10000EA04(v50, &unk_1008DB8A0, qword_1006DBA20);
    sub_10000EA04(v52, &unk_1008DB8A0, qword_1006DBA20);
    v24(v41, v4);
    goto LABEL_16;
  }

  sub_10000EA04(v35, &unk_1008DB8A0, qword_1006DBA20);
  sub_10000EA04(v38, &unk_1008DB8A0, qword_1006DBA20);
  if (v39(v36 + v49, 1, v4) != 1)
  {
LABEL_16:
    sub_10000EA04(v36, &unk_1008E4E40, &unk_1006E33D0);
    v27 = 1;
    return v27 & 1;
  }

  sub_10000EA04(v36, &unk_1008DB8A0, qword_1006DBA20);
LABEL_6:
  v27 = 0;
  return v27 & 1;
}

void sub_100470F64(uint64_t a1, uint64_t a2)
{
  v2 = sub_100140278(&qword_1008EE750, &qword_1006F29D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100140278(&qword_1008EE758, &unk_1006F29E0);
    NSDiffableDataSourceTransaction.finalSnapshot.getter();
    v8 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    (*(v3 + 8))(v5, v2);
    v9 = *&v7[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
    sub_1003E24E8(v8);
  }
}

void sub_1004710B4(uint64_t a1)
{
  v1 = type metadata accessor for Tips.InvalidationReason();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for LoadCard(0);
  __chkstk_darwin(Card);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v57 = type metadata accessor for Logger();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = v4;
    v49 = v2;
    v50 = v1;
    v54 = Strong;
    v47 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator;
    v55 = *(*(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator) + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_loadCardFactory);
    v65 = 0;
    memset(v64, 0, sizeof(v64));
    sub_10001B104(v64, &v58, &qword_1008DCC60, &qword_1006DEBC0);
    v21 = *(&v59 + 1);
    if (*(&v59 + 1))
    {
      v22 = v60;
      sub_1000066AC(&v58, *(&v59 + 1));
      v23 = *(v22 + 8);
      v24 = v55;
      v23(v21, v22);
      v25 = v52;
      (*(v5 + 56))(v15, 0, 1, v52);
      sub_100005A40(&v58);
    }

    else
    {
      v29 = v55;
      sub_10000EA04(&v58, &qword_1008DCC60, &qword_1006DEBC0);
      v25 = v52;
      (*(v5 + 56))(v15, 1, 1, v52);
    }

    v62 = Card;
    v63 = &off_100861A08;
    v52 = sub_100005994(&v61);
    v30 = &v9[Card[5]];
    *v30 = xmmword_1006D4AB0;
    v30[16] = 3;
    sub_10001B104(v15, v12, &unk_1008DB8A0, qword_1006DBA20);
    v31 = *(v5 + 48);
    v32 = v31(v12, 1, v25);
    v33 = v55;
    if (v32 == 1)
    {
      v34 = v51;
      UUID.init()();
      sub_10000EA04(v15, &unk_1008DB8A0, qword_1006DBA20);
      v35 = v31(v12, 1, v25);
      v36 = v34;
      v37 = v50;
      v38 = v25;
      v39 = v49;
      v40 = v48;
      if (v35 != 1)
      {
        v41 = v38;
        sub_10000EA04(v12, &unk_1008DB8A0, qword_1006DBA20);
        v38 = v41;
      }
    }

    else
    {
      sub_10000EA04(v15, &unk_1008DB8A0, qword_1006DBA20);
      v36 = v51;
      (*(v5 + 32))(v51, v12, v25);
      v37 = v50;
      v38 = v25;
      v39 = v49;
      v40 = v48;
    }

    (*(v5 + 32))(v9, v36, v38);
    v9[Card[6]] = 1;
    v9[Card[7]] = 0;
    v9[Card[8]] = 1;
    *&v9[Card[9]] = v33;
    sub_100478E78(v9, v52);

    sub_10000EA04(v64, &qword_1008DCC60, &qword_1006DEBC0);
    if (v62)
    {
      sub_100006260(&v61, v64);
      sub_100007C5C(v64, &v61);
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      swift_beginAccess();
      sub_100636E50(0, &v61, &v58);
      sub_10000EA04(&v58, &qword_1008DCC60, &qword_1006DEBC0);
      sub_10000EA04(&v61, &qword_1008DCC60, &qword_1006DEBC0);
      sub_1003E01B8(v64, 0, 1);
      sub_100005A40(v64);
    }

    else
    {
      sub_10000EA04(&v61, &qword_1008DCC60, &qword_1006DEBC0);
    }

    v42 = v53;
    static WOLog.trainingLoad.getter();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Added Training Load Card in Summary", v45, 2u);
    }

    (*(v56 + 8))(v42, v57);
    (*(v39 + 104))(v40, enum case for Tips.InvalidationReason.actionPerformed(_:), v37);
    type metadata accessor for TrainingLoadTrackingTip(0);
    sub_100026E98(&qword_1008EE7E8, type metadata accessor for TrainingLoadTrackingTip, &unk_1006F9570);
    v46 = v54;
    Tip.invalidate(reason:)();
    (*(v39 + 8))(v40, v37);
    sub_10046FF90();
  }

  else
  {
    static WOLog.trainingLoad.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No self after returning from Training Load Onboarding Flow", v28, 2u);
    }

    (*(v56 + 8))(v19, v57);
  }
}

void sub_10047196C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for IndexPath();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Tips.InvalidationReason();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FitnessPlusSampleContentCard(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*&v0[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator] + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      sub_100007C5C(v13, v35);
      sub_100006260(v35, v34);
      sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
      if (swift_dynamicCast())
      {
        break;
      }

      ++v12;
      v13 += 40;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    sub_1000237AC(v9, type metadata accessor for FitnessPlusSampleContentCard);
    v23 = v30;
    v22 = v31;
    (*(v30 + 104))(v6, enum case for Tips.InvalidationReason.actionPerformed(_:), v31);
    type metadata accessor for FitnessPlusSampleContentTip(0);
    sub_100026E98(&qword_1008EBCF0, type metadata accessor for FitnessPlusSampleContentTip, &unk_1006EDD34);
    Tip.invalidate(reason:)();
    (*(v23 + 8))(v6, v22);
    v24 = v32;
    IndexPath.init(item:section:)();
    v25 = [v1 collectionView];
    if (v25)
    {
      v26 = v25;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v26 scrollToItemAtIndexPath:isa atScrollPosition:2 animated:1];

      (*(v28 + 8))(v24, v29);
      return;
    }

LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_6:

    v14 = static os_log_type_t.error.getter();
    v15 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v14))
    {
      v16 = v15;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v35[0] = v18;
      *v17 = 136315138;
      v19 = _typeName(_:qualified:)();
      v21 = sub_10000AFDC(v19, v20, v35);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v16, v14, "%s Failed scrolling to workout sample card - card not found", v17, 0xCu);
      sub_100005A40(v18);
    }
  }
}

void sub_100472324(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_1008DAC10 != -1)
  {
    swift_once();
  }

  v86 = qword_1008EE4D8;
  [v13 fractionCompleted];
  v15 = [objc_allocWithZone(NSNumber) initWithDouble:v14];
  v16 = [v86 stringFromNumber:v15];

  if (v16)
  {
    v82 = a3;
    v83 = v10;
    v84 = v8;
    v85 = v9;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [objc_opt_self() mainBundle];
    v21 = String._bridgeToObjectiveC()();
    v22 = [v20 localizedStringForKey:v21 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
    v23 = swift_allocObject();
    v81 = xmmword_1006D46C0;
    *(v23 + 16) = xmmword_1006D46C0;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_10000A788();
    *(v23 + 32) = v17;
    *(v23 + 40) = v19;
    v24 = String.init(format:_:)();
    v26 = v25;

    v86 = [objc_allocWithZone(NSMutableAttributedString) init];
    v27 = String._bridgeToObjectiveC()();
    v28 = [objc_opt_self() systemImageNamed:v27];

    if (v28)
    {
      v29 = [objc_opt_self() configurationWithScale:1];
      v30 = [v28 imageWithSymbolConfiguration:v29];

      v31 = objc_opt_self();
      v32 = [v31 secondaryLabelColor];
      v33 = [v30 imageWithTintColor:v32];

      if (v33)
      {
        v34 = objc_opt_self();
        v80 = v33;
        v35 = [v34 textAttachmentWithImage:v80];
        sub_100140278(&unk_1008E7FB0, &unk_1006D6940);
        inited = swift_initStackObject();
        v79 = v6;
        v37 = inited;
        *(inited + 16) = v81;
        v76 = v26;
        *&v81 = v5;
        *(inited + 32) = NSFontAttributeName;
        v38 = inited + 32;
        v39 = objc_opt_self();
        v75 = v24;
        v72 = UIFontTextStyleCaption1;
        v74 = NSFontAttributeName;
        v40 = v35;
        v78 = v12;
        v41 = v40;
        v42 = [v39 preferredFontForTextStyle:UIFontTextStyleCaption1];
        v43 = sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
        *(v37 + 64) = v43;
        *(v37 + 40) = v42;
        sub_1004C9200(v37);
        swift_setDeallocating();
        sub_10000EA04(v38, &unk_1008EE730, &unk_1006D8460);
        type metadata accessor for Key(0);
        sub_100026E98(&qword_1008E7FD0, type metadata accessor for Key, &unk_1006D3C84);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v45 = objc_opt_self();
        v77 = v41;
        v46 = [v45 attributedStringWithAttachment:v41 attributes:isa];
        v73 = v46;

        [v86 appendAttributedString:v46];
        v47 = objc_allocWithZone(NSAttributedString);
        v48 = String._bridgeToObjectiveC()();
        v49 = [v47 initWithString:v48];

        [v86 appendAttributedString:v49];
        v50 = swift_initStackObject();
        *(v50 + 16) = xmmword_1006D1F70;
        *(v50 + 32) = NSForegroundColorAttributeName;
        v51 = NSForegroundColorAttributeName;
        v52 = [v31 secondaryLabelColor];
        v53 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
        *(v50 + 40) = v52;
        v54 = v74;
        *(v50 + 64) = v53;
        *(v50 + 72) = v54;
        v55 = [v39 preferredFontForTextStyle:v72];
        *(v50 + 104) = v43;
        *(v50 + 80) = v55;
        sub_1004C9200(v50);
        swift_setDeallocating();
        sub_100140278(&unk_1008EE730, &unk_1006D8460);
        swift_arrayDestroy();
        v56 = objc_allocWithZone(NSAttributedString);
        v57 = String._bridgeToObjectiveC()();

        v58 = Dictionary._bridgeToObjectiveC()().super.isa;

        v59 = [v56 initWithString:v57 attributes:v58];

        [v86 appendAttributedString:v59];
        sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
        v60 = static OS_dispatch_queue.main.getter();
        v61 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v62 = swift_allocObject();
        v63 = v86;
        *(v62 + 16) = v61;
        *(v62 + 24) = v63;
        aBlock[4] = sub_100478D00;
        aBlock[5] = v62;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000449A8;
        aBlock[3] = &unk_10085BD20;
        v64 = _Block_copy(aBlock);
        v65 = v86;

        v66 = v78;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100140278(&unk_1008E7F50, &qword_1006D8190);
        sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
        v67 = v84;
        v68 = v81;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v64);
        v69 = v80;

        (*(v79 + 8))(v67, v68);
        (*(v83 + 8))(v66, v85);
        return;
      }
    }
  }

  v70 = v86;
}

void sub_100472DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_subtitleLabel);

    [v5 setAttributedText:a2];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_subtitleLabel);

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 navigationItem];

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = *(v12 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_subtitleLabel);
    }

    else
    {
      v14 = 0;
    }

    [v11 setLargeSubtitleView:v14];
  }
}

void sub_100473054(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationItem];
    [v3 setLargeSubtitleView:0];
  }
}

unint64_t sub_100473154()
{
  result = qword_1008EE688;
  if (!qword_1008EE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE688);
  }

  return result;
}

double sub_1004731A8@<D0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_impressionsTracker);
  a1[3] = type metadata accessor for ActivityDashboardImpressionsTracker();
  a1[4] = sub_100026E98(&unk_1008EE690, type metadata accessor for ActivityDashboardImpressionsTracker, &unk_1006F50B4);
  *a1 = v3;

  return result;
}

uint64_t sub_100473344(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return MetricResignActiveObserving<>.addResignActiveObserver()();
}

uint64_t sub_1004733A8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return MetricResignActiveObserving<>.removeResignActiveObserver()();
}

void *sub_100473420()
{
  v1 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10047346C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_100473534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002BACC;

  return MarketingPaletteBannerDisplaying<>.showMarketingPaletteBanner(request:)(a1, a2, a3);
}

uint64_t sub_1004735E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10047367C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001AB738(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1004736F8(v6);
  return specialized ContiguousArray._endMutation()();
}

char *sub_1004736F8(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1004739A0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10047380C(0, v2, 1, a1);
  }

  return result;
}

char *sub_10047380C(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = &result[-a3];
    v6 = &selRef_currentItem;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      result = [v9 v6[109]];
      if (!result)
      {
        break;
      }

      v11 = result;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      result = [v10 v6[109]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v15 = result;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        v6 = &selRef_currentItem;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = &selRef_currentItem;
      if (v20)
      {
        if (!v27)
        {
          goto LABEL_20;
        }

        v21 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v21;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

void sub_1004739A0(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v8 = &selRef_currentItem;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_38;
      }

      v126 = v5;
      v119 = v7;
      v121 = v6;
      v4 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v10);
      v13 = v11;
      v14 = [v12 v8[109]];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [v13 v8[109]];
      if (!v18)
      {
        goto LABEL_161;
      }

      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v6 == v20 && v17 == v22)
      {
        v132 = 0;
      }

      else
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v9 = v121;
      v10 = v121 + 2;
      if (v121 + 2 >= v126)
      {
        v8 = &selRef_currentItem;
        goto LABEL_29;
      }

      v129 = v121 + 2;
      v4 += 8 * v121 + 16;
      v8 = &selRef_currentItem;
      while (1)
      {
        v25 = *(v4 - 8);
        v26 = *v4;
        v27 = v25;
        v28 = [v26 v8[109]];
        if (!v28)
        {
          goto LABEL_155;
        }

        v29 = v28;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = [v27 v8[109]];
        if (!v32)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v6 == v34 && v31 == v36)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v132 ^ v24))
        {
          v8 = &selRef_currentItem;
          v10 = v129;
LABEL_28:
          v9 = v121;
LABEL_29:
          v7 = v119;
          if (v132)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v4 += 8;
        ++v129;
        v10 = v126;
        v8 = &selRef_currentItem;
        if (v126 == v129)
        {
          goto LABEL_28;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v119;
      v9 = v121;
      v8 = &selRef_currentItem;
      v10 = v129;
LABEL_30:
      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if (v9 < v10)
      {
        v38 = 8 * v10 - 8;
        v39 = 8 * v9;
        v40 = v10;
        v41 = v9;
        do
        {
          if (v41 != --v10)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_157;
            }

            v43 = *(v42 + v39);
            *(v42 + v39) = *(v42 + v38);
            *(v42 + v38) = v43;
          }

          ++v41;
          v38 -= 8;
          v39 += 8;
        }

        while (v41 < v10);
        v10 = v40;
      }

LABEL_38:
      v44 = a3[1];
      if (v10 >= v44)
      {
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      v45 = v10;
      if (v10 - v9 >= a4)
      {
LABEL_46:
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      v46 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_148;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v9)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v10 == v46)
      {
        goto LABEL_46;
      }

      v120 = v7;
      v122 = v9;
      v133 = *a3;
      v4 = *a3 + 8 * v10 - 8;
      v94 = v9 - v10;
      v124 = v46;
      do
      {
        v130 = v45;
        v95 = *(v133 + 8 * v45);
        v125 = v94;
        v127 = v4;
        while (1)
        {
          v96 = *v4;
          v97 = v95;
          v98 = v96;
          v99 = [v97 v8[109]];
          if (!v99)
          {
            goto LABEL_152;
          }

          v100 = v99;
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v104 = [v98 v8[109]];
          if (!v104)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v105 = v104;
          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          if (v101 == v106 && v103 == v108)
          {
            break;
          }

          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = &selRef_currentItem;
          if ((v110 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v133)
          {
            goto LABEL_153;
          }

          v111 = *v4;
          v95 = *(v4 + 8);
          *v4 = v95;
          *(v4 + 8) = v111;
          v4 -= 8;
          if (__CFADD__(v94++, 1))
          {
            goto LABEL_100;
          }
        }

        v8 = &selRef_currentItem;
LABEL_100:
        v45 = v130 + 1;
        v4 = v127 + 8;
        v94 = v125 - 1;
      }

      while (v130 + 1 != v124);
      v6 = v124;
      v7 = v120;
      v9 = v122;
      if (v124 < v122)
      {
        goto LABEL_145;
      }

LABEL_49:
      v47 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v47;
      }

      else
      {
        v7 = sub_1001A1D54(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v7 + 2);
      v48 = *(v7 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v7 = sub_1001A1D54((v48 > 1), v4 + 1, 1, v7);
      }

      *(v7 + 2) = v49;
      v50 = &v7[16 * v4];
      *(v50 + 4) = v9;
      *(v50 + 5) = v6;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_159;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v7 + 4);
            v54 = *(v7 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_68:
            if (v56)
            {
              goto LABEL_134;
            }

            v69 = &v7[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_137;
            }

            v75 = &v7[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_141;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v79 = &v7[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_82:
          if (v74)
          {
            goto LABEL_136;
          }

          v82 = &v7[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_139;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_89:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
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
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v90 = v7;
          v91 = *&v7[16 * v4 + 32];
          v92 = *&v7[16 * v52 + 40];
          sub_100474210((*a3 + 8 * v91), (*a3 + 8 * *&v7[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v131)
          {
            goto LABEL_128;
          }

          if (v92 < v91)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_1001A99A4(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_131;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_1001A9918(v52);
          v7 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v7[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_132;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_133;
        }

        v64 = &v7[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_135;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v68 >= v60)
        {
          v86 = &v7[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_142;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_117;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_117:
  v6 = *a1;
  if (*a1)
  {
    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
    }

    else
    {
LABEL_150:
      v113 = sub_1001A99A4(v4);
    }

    v4 = *(v113 + 2);
    if (v4 < 2)
    {
LABEL_128:

      return;
    }

    while (*a3)
    {
      v114 = *&v113[16 * v4];
      v115 = v113;
      v116 = *&v113[16 * v4 + 24];
      sub_100474210((*a3 + 8 * v114), (*a3 + 8 * *&v113[16 * v4 + 16]), (*a3 + 8 * v116), v6);
      if (v131)
      {
        goto LABEL_128;
      }

      if (v116 < v114)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_1001A99A4(v115);
      }

      if (v4 - 2 >= *(v115 + 2))
      {
        goto LABEL_144;
      }

      v117 = &v115[16 * v4];
      *v117 = v114;
      *(v117 + 1) = v116;
      sub_1001A9918(v4 - 1);
      v113 = v115;
      v4 = *(v115 + 2);
      if (v4 <= 1)
      {
        goto LABEL_128;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_162:
  __break(1u);
}

uint64_t sub_100474210(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v61 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_currentItem;
      v55 = v5;
      while (1)
      {
        v57 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[109]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v59 = v4;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[109]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v31 = v55;
        v32 = v57;
        v14 = v57 + 1;
        v4 = v59;
        v15 = v24;
        if (v13 != v57)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v61 || v14 >= v31)
        {
          goto LABEL_26;
        }
      }

LABEL_22:
      v14 = v57;
      v32 = v59;
      v4 = v59 + 1;
      v31 = v55;
      v15 = v24;
      if (v13 == v59)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v32;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v33 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v33;
  }

  v61 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v61 - v4));
    }

    return 1;
  }

  v34 = &selRef_currentItem;
  v60 = v4;
LABEL_33:
  v58 = a2;
  v35 = a2 - 1;
  v36 = v61;
  v54 = a2 - 1;
  while (1)
  {
    v56 = v5;
    v37 = *--v36;
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    result = [v39 v34[109]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v34;
    result = [v40 v34[109]];
    if (!result)
    {
      goto LABEL_57;
    }

    v46 = result;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
      if (v51)
      {
        if (v56 != v58)
        {
          *v5 = *v54;
        }

        v4 = v60;
        if (v61 <= v60 || (a2 = v54, v54 <= __dst))
        {
          a2 = v54;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v35 = v54;
    if (v61 != v52)
    {
      *v5 = *v36;
    }

    v61 = v36;
    if (v36 <= v60)
    {
      v61 = v36;
      a2 = v58;
      v4 = v60;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

void (*sub_10047463C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100479658;
  }

  __break(1u);
  return result;
}

void (*sub_1004746BC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10047473C;
  }

  __break(1u);
  return result;
}

void *sub_10047479C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10047486C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&qword_1008EE708, &unk_1008E4010, &unk_1006DCBA0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&unk_1008E4010, &unk_1006DCBA0);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100474A20(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&qword_1008EE6E8, &qword_1008EE6E0, &qword_1006DFE00, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&qword_1008EE6E0, &qword_1006DFE00);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &qword_1008DC980, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100474BD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&qword_1008EE908, &qword_1008EE900, qword_1006D81A0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&qword_1008EE900, qword_1006D81A0);
            v9 = sub_1004746BC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MindfulnessSessionViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100474D78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&unk_1008EE720, &qword_1008DE4A8, &unk_1006D7C10, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&qword_1008DE4A8, &unk_1006D7C10);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &unk_1008EE710, _HKActivityStatisticsQuantityInfo_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100474F2C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&unk_1008EE6D0, &qword_1008EE6C8, &unk_1006F2968, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&qword_1008EE6C8, &unk_1006F2968);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004750E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&qword_1008EDB50, &unk_1008EE8F0, &unk_1006F1480, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&unk_1008EE8F0, &unk_1006F1480);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &qword_1008DE728, HKObject_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100475294(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10014A6B0(&qword_1008EE700, &qword_1008EE6F8, qword_1006F2978, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100140278(&qword_1008EE6F8, qword_1006F2978);
            v9 = sub_10047463C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000059F8(0, &qword_1008EE6F0, HKQuantitySample_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100475448(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v104 = type metadata accessor for CardTypeConfigurationRoomView(0);
  __chkstk_darwin(v104);
  v105 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v107 = &v98[-v10];
  v116 = a3;
  v117 = a4;
  v11 = sub_100005994(v115);
  (*(*(a3 - 8) + 16))(v11, a1, a3);
  v12 = v116;
  v13 = v117;
  sub_1000066AC(v115, v116);
  v14 = (*(v13 + 16))(v12, v13);
  v16 = v15;
  v18 = v17;
  v19 = sub_1000490C8(v14, v15, v17);
  sub_10001D4F8(v14, v16, v18);
  v20 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_summaryCoordinator];
  v21 = sub_1003DEDA0(v19);
  if (v21[2] && (v22 = sub_1004CD4B0(v19), (v23 & 1) != 0))
  {
    v24 = *(v21[7] + 8 * v22);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v106 = v20;
  v25 = *&v20[OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards];
  v26 = *(v25 + 2);
  if (v26)
  {
    v101 = v24;
    v103 = a2;
    v27 = (v25 + 32);
    v100 = v25;

    v28 = _swiftEmptyArrayStorage;
    while (1)
    {
      sub_100007C5C(v27, &v112);
      v29 = *(&v113 + 1);
      v30 = v114;
      sub_1000066AC(&v112, *(&v113 + 1));
      v31 = (*(v30 + 16))(v29, v30);
      if (v33 > 1u)
      {
        if (v33 == 2)
        {
          goto LABEL_18;
        }

        if (v31 > 4)
        {
          if (v31 <= 6)
          {
            if (v31 ^ 5 | v32)
            {
              if (v19 != 6)
              {
                goto LABEL_22;
              }
            }

            else if (v19 != 5)
            {
              goto LABEL_22;
            }
          }

          else if (v31 ^ 7 | v32)
          {
            if (!(v31 ^ 8 | v32))
            {
LABEL_18:
              if (v19 != 8)
              {
                goto LABEL_22;
              }

              goto LABEL_19;
            }

            if (v19 != 19)
            {
              goto LABEL_22;
            }
          }

          else if (v19 != 4)
          {
            goto LABEL_22;
          }
        }

        else if (v31 <= 1)
        {
          if (v31 | v32)
          {
            if (v19 != 7)
            {
              goto LABEL_22;
            }
          }

          else if (v19)
          {
            goto LABEL_22;
          }
        }

        else if (v31 ^ 2 | v32)
        {
          if (v31 ^ 3 | v32)
          {
            goto LABEL_21;
          }

          if (v19 != 10)
          {
            goto LABEL_22;
          }
        }

        else if (v19 != 3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v33)
        {
          sub_10001D4F8(v31, v32, 1);
LABEL_21:
          if (v19 != 9)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        if (v31 <= 0x12u)
        {
          if (v31 > 0xCu)
          {
            if (v19 != 14)
            {
              goto LABEL_22;
            }
          }

          else if (v31 - 4 >= 9)
          {
            if (v31 >= 2u)
            {
              if (v19 != 2)
              {
                goto LABEL_22;
              }
            }

            else if (v19 != 1)
            {
              goto LABEL_22;
            }
          }

          else if (v19 != 13)
          {
            goto LABEL_22;
          }
        }

        else if (v31 > 0x1Du)
        {
          if (v31 - 30 < 4)
          {
            if (v19 != 12)
            {
              goto LABEL_22;
            }
          }

          else if (v31 - 34 >= 4)
          {
            if (v19 != 18)
            {
LABEL_22:
              v110 = 0;
              v109 = 0u;
              v108 = 0u;
              goto LABEL_23;
            }
          }

          else if (v19 != 11)
          {
            goto LABEL_22;
          }
        }

        else if (v31 - 19 < 4)
        {
          if (v19 != 16)
          {
            goto LABEL_22;
          }
        }

        else if (v31 - 23 >= 4)
        {
          if (v19 != 15)
          {
            goto LABEL_22;
          }
        }

        else if (v19 != 17)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      sub_100007C5C(&v112, &v108);
LABEL_23:
      sub_100005A40(&v112);
      if (*(&v109 + 1))
      {
        sub_100006260(&v108, v111);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1001A1E58(0, v28[2] + 1, 1, v28);
        }

        v35 = v28[2];
        v34 = v28[3];
        if (v35 >= v34 >> 1)
        {
          v28 = sub_1001A1E58((v34 > 1), v35 + 1, 1, v28);
        }

        v28[2] = v35 + 1;
        sub_100006260(v111, &v28[5 * v35 + 4]);
      }

      else
      {
        sub_10000EA04(&v108, &qword_1008DCC60, &qword_1006DEBC0);
      }

      v27 += 40;
      if (!--v26)
      {

        a2 = v103;
        v24 = v101;
        break;
      }
    }
  }

  *&v112 = v24;

  sub_10019EDF8(v36);
  v37 = *&a2[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context];

  sub_100478034(&v112, v37);

  v38 = v112;
  __chkstk_darwin(v39);
  *&v98[-16] = v115;
  v40 = sub_10047CE14(sub_1004780CC, &v98[-32], v38);
  if (v41)
  {

    v42 = static os_log_type_t.default.getter();
    v43 = HKLogActivity;
    sub_100007C5C(v115, &v112);
    if (os_log_type_enabled(v43, v42))
    {
      v44 = v43;
      v45 = swift_slowAlloc();
      *&v111[0] = swift_slowAlloc();
      *v45 = 136315394;
      v46 = _typeName(_:qualified:)();
      v48 = sub_10000AFDC(v46, v47, v111);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2080;
      v49 = *(&v113 + 1);
      v50 = v114;
      sub_1000066AC(&v112, *(&v113 + 1));
      v51 = (*(v50 + 40))(v49, v50);
      v53 = v52;
      sub_100005A40(&v112);
      v54 = sub_10000AFDC(v51, v53, v111);

      *(v45 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v44, v42, "%s Not presenting edit card modal. Unable to determine current card index for card: %s.", v45, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      sub_100005A40(&v112);
    }

LABEL_95:
    sub_100005A40(v115);
    return;
  }

  v55 = v40;
  v56 = v116;
  v57 = v117;
  v58 = a2;
  sub_1000066AC(v115, v116);
  v59 = (*(v57 + 16))(v56, v57);
  v61 = v60;
  v63 = v62;
  LODWORD(v103) = sub_1000490C8(v59, v60, v62);
  sub_10001D4F8(v59, v61, v63);
  sub_100007C5C(v115, &v112);
  v64 = *&v37[OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_configurationProvider];
  v65 = v106;
  v66 = v64;
  v67 = [a2 view];
  if (v67)
  {
    v68 = v67;
    v69 = [v67 window];

    if (v69)
    {
      [v69 bounds];
      v71 = v70;
    }

    else
    {
      v71 = 0;
    }

    v106 = v55;
    v72 = [a2 view];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 window];

      ObjectType = v65;
      v101 = v66;
      if (v74)
      {
        [v74 bounds];
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      v99 = v74 == 0;
      v77 = v69 == 0;
      v78 = swift_allocObject();
      *(v78 + 16) = v58;
      KeyPath = swift_getKeyPath();
      v80 = v107;
      *v107 = KeyPath;
      sub_100140278(&qword_1008EE6A0, &unk_1006D5790);
      swift_storeEnumTagMultiPayload();
      v81 = v104;
      v82 = *(v104 + 40);
      type metadata accessor for DashboardCardCellViewCache(0);
      swift_allocObject();
      v100 = v58;
      *(v80 + v82) = sub_100037560();
      v83 = v81[15];
      v84 = enum case for DynamicTypeSize.accessibility1(_:);
      v85 = type metadata accessor for DynamicTypeSize();
      v86 = *(*(v85 - 8) + 104);
      v86(v80 + v83, v84, v85);
      v86(v80 + v81[16], enum case for DynamicTypeSize.xLarge(_:), v85);
      *(v80 + v81[5]) = v103;
      v87 = v80 + v81[6];
      v88 = v113;
      *v87 = v112;
      *(v87 + 1) = v88;
      *(v87 + 4) = v114;
      *(v80 + v81[7]) = v38;
      *(v80 + v81[8]) = ObjectType;
      *(v80 + v81[9]) = v101;
      v89 = v80 + v81[11];
      *v89 = v71;
      v89[8] = v77;
      v90 = v80 + v81[12];
      *v90 = v76;
      v90[8] = v99;
      v91 = (v80 + v81[13]);
      *v91 = sub_1003BF58C;
      v91[1] = v78;
      v92 = (v80 + v81[14]);
      *v92 = v106;
      v92[1] = 0;
      sub_100479054(v80, v105, type metadata accessor for CardTypeConfigurationRoomView);
      v93 = objc_allocWithZone(sub_100140278(&qword_1008EE6A8, &unk_1006F2958));
      v94 = UIHostingController.init(rootView:)();
      v95 = [v94 presentationController];
      if (v95)
      {
        v96 = v95;
        objc_opt_self();
        v97 = swift_dynamicCastObjCClass();
        if (v97)
        {
          [v97 setPrefersGrabberVisible:1];
        }
      }

      [v100 presentViewController:v94 animated:1 completion:0];

      sub_1000237AC(v107, type metadata accessor for CardTypeConfigurationRoomView);
      goto LABEL_95;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_100476040(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v85 = a5;
  v5 = a4;
  v6 = a3;
  v8 = a2;
  v9 = a2 - __src;
  v10 = (a2 - __src) / 40;
  v11 = a3 - a2;
  v12 = (a3 - a2) / 40;
  if (v10 >= v12)
  {
    if (a4 != a2 || &a2[40 * v12] <= a4)
    {
      memmove(a4, a2, 40 * v12);
      v8 = a2;
    }

    v78 = &v5[40 * v12];
    if (v11 >= 40 && v8 > __src)
    {
      v76 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager;
      v77 = v5;
      v41 = v8;
      do
      {
        __dst = v41;
        v42 = (v41 - 40);
        v43 = (v78 - 40);
        v6 -= 40;
        while (1)
        {
          sub_100007C5C(v43, v82);
          v46 = v42;
          sub_100007C5C(v42, v79);
          v47 = v83;
          v48 = v84;
          sub_1000066AC(v82, v83);
          v49 = (*(v48 + 16))(v47, v48);
          v51 = v50;
          LOBYTE(v48) = v52;
          v53 = *(v85 + v76);
          v54 = sub_1005F58BC(v53, v49, v50, v52);
          sub_10001D4F8(v49, v51, v48);
          v55 = v80;
          v56 = v81;
          sub_1000066AC(v79, v80);
          v57 = (*(v56 + 16))(v55, v56);
          v59 = v58;
          LOBYTE(v56) = v60;
          v61 = sub_1005F58BC(v53, v57, v58, v60);
          sub_10001D4F8(v57, v59, v56);
          if (v54 == v61)
          {
            v62 = v83;
            v63 = v84;
            sub_1000066AC(v82, v83);
            v64 = (*(v63 + 24))(v62, v63) & 1;
            v65 = v80;
            v66 = v81;
            sub_1000066AC(v79, v80);
            v67 = ((*(v66 + 24))(v65, v66) & 1) < v64;
          }

          else
          {
            v67 = v54 < v61;
          }

          sub_100005A40(v79);
          sub_100005A40(v82);
          if (v67)
          {
            break;
          }

          if (v6 + 40 != v43 + 40)
          {
            v68 = *v43;
            v69 = *(v43 + 16);
            *(v6 + 32) = *(v43 + 32);
            *v6 = v68;
            *(v6 + 16) = v69;
          }

          v44 = v43 - 40;
          v6 -= 40;
          v45 = v43 > v77;
          v43 -= 40;
          v42 = v46;
          if (!v45)
          {
            v78 = (v44 + 40);
            v8 = __dst;
            v5 = v77;
            goto LABEL_39;
          }
        }

        v8 = v46;
        if ((v6 + 40) != __dst)
        {
          v70 = *v46;
          v71 = *(v46 + 16);
          *(v6 + 32) = *(v46 + 32);
          *v6 = v70;
          *(v6 + 16) = v71;
        }

        v78 = (v43 + 40);
        v5 = v77;
        if (v43 + 40 <= v77)
        {
          break;
        }

        v41 = v8;
      }

      while (v8 > __src);
      v78 = (v43 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v10] <= a4)
    {
      memmove(a4, __src, 40 * v10);
      v8 = a2;
    }

    v78 = &v5[40 * v10];
    if (v9 >= 40 && v8 < v6)
    {
      v75 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager;
      while (1)
      {
        v14 = v8;
        sub_100007C5C(v8, v82);
        sub_100007C5C(v5, v79);
        v15 = v83;
        v16 = v84;
        sub_1000066AC(v82, v83);
        v17 = (*(v16 + 16))(v15, v16);
        v19 = v18;
        LOBYTE(v16) = v20;
        v21 = *(v85 + v75);
        v22 = sub_1005F58BC(v21, v17, v18, v20);
        sub_10001D4F8(v17, v19, v16);
        v23 = v80;
        v24 = v81;
        sub_1000066AC(v79, v80);
        v25 = (*(v24 + 16))(v23, v24);
        v27 = v26;
        LOBYTE(v24) = v28;
        v29 = sub_1005F58BC(v21, v25, v26, v28);
        sub_10001D4F8(v25, v27, v24);
        if (v22 == v29)
        {
          v30 = v83;
          v31 = v84;
          sub_1000066AC(v82, v83);
          v32 = (*(v31 + 24))(v30, v31) & 1;
          v33 = v80;
          v34 = v81;
          sub_1000066AC(v79, v80);
          v35 = ((*(v34 + 24))(v33, v34) & 1) < v32;
        }

        else
        {
          v35 = v22 < v29;
        }

        sub_100005A40(v79);
        sub_100005A40(v82);
        v8 = v14;
        if (!v35)
        {
          break;
        }

        v36 = v14;
        v8 = v14 + 40;
        if (__src != v14)
        {
          goto LABEL_15;
        }

LABEL_16:
        __src += 40;
        if (v5 >= v78 || v8 >= v6)
        {
          goto LABEL_18;
        }
      }

      v36 = v5;
      v37 = __src == v5;
      v5 += 40;
      if (v37)
      {
        goto LABEL_16;
      }

LABEL_15:
      v38 = *v36;
      v39 = *(v36 + 1);
      *(__src + 4) = *(v36 + 4);
      *__src = v38;
      *(__src + 1) = v39;
      goto LABEL_16;
    }

LABEL_18:
    v8 = __src;
  }

LABEL_39:
  v72 = (v78 - v5) / 40;
  if (v8 != v5 || v8 >= &v5[40 * v72])
  {
    memmove(v8, v5, 40 * v72);
  }

  return 1;
}

void sub_1004765F8(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_1001A99A4(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      __src = (v9 + 40 * *v10);
      v23 = (v9 + 40 * *v13);
      v14 = v9 + 40 * v5;
      v15 = v21;
      sub_100476040(__src, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_10047679C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v216 = a4;
  v214 = a1;
  v7 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v7 - 8);
  __chkstk_darwin(v8);
  v234 = &v214 - v9;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v235 = &v214 - v14;
  v245 = _swiftEmptyArrayStorage;
  v222 = a3;
  v15 = a3[1];
  v220 = a5;
  if (v15 < 1)
  {
    v205 = a5;
LABEL_204:
    v206 = *v214;
    if (!*v214)
    {
      goto LABEL_244;
    }

    v207 = v220;
    v208 = v229;
    sub_1004765F8(&v245, v206, v222, v207);
    v229 = v208;
    if (!v208)
    {

      goto LABEL_209;
    }

LABEL_208:
    v207 = v220;
LABEL_209:

    return;
  }

  v232 = v12;
  v233 = v13;
  v219 = OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager;
  v16 = v15;
  v17 = a5;
  v18 = v16;
  v218 = v17;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    v224 = v20;
    v223 = v19;
    if (v19 + 1 >= v18)
    {
      v29 = v19 + 1;
    }

    else
    {
      v221 = v18;
      v21 = *v222;
      sub_100007C5C(*v222 + 40 * (v19 + 1), &v242);
      sub_100007C5C(v21 + 40 * v19, v239);
      v22 = v229;
      v23 = sub_10032C350(&v242, v239, v218);
      v229 = v22;
      if (v22)
      {
        goto LABEL_215;
      }

      v24 = v23;
      sub_100005A40(v239);
      sub_100005A40(&v242);
      v25 = v19 + 2;
      v26 = 40 * v19;
      v27 = v21 + 40 * v19 + 80;
      while (1)
      {
        v29 = v221;
        if (v221 == v25)
        {
          break;
        }

        sub_100007C5C(v27, &v242);
        sub_100007C5C(v27 - 40, v239);
        v30 = v243;
        v31 = v244;
        sub_1000066AC(&v242, v243);
        v32 = (*(v31 + 16))(v30, v31);
        v34 = v33;
        LOBYTE(v31) = v35;
        v36 = *&v220[v219];
        v37 = sub_1005F58BC(v36, v32, v33, v35);
        sub_10001D4F8(v32, v34, v31);
        v38 = v240;
        v39 = v241;
        sub_1000066AC(v239, v240);
        v40 = (*(v39 + 16))(v38, v39);
        v42 = v41;
        LOBYTE(v39) = v43;
        v44 = sub_1005F58BC(v36, v40, v41, v43);
        sub_10001D4F8(v40, v42, v39);
        if (v37 == v44)
        {
          v45 = v243;
          v46 = v244;
          sub_1000066AC(&v242, v243);
          v47 = (*(v46 + 24))(v45, v46) & 1;
          v48 = v240;
          v49 = v241;
          sub_1000066AC(v239, v240);
          v28 = ((*(v49 + 24))(v48, v49) & 1) < v47;
        }

        else
        {
          v28 = v37 < v44;
        }

        sub_100005A40(v239);
        sub_100005A40(&v242);
        ++v25;
        v27 += 40;
        if (v24 != v28)
        {
          v29 = v25 - 1;
          break;
        }
      }

      v19 = v223;
      if (v24)
      {
        if (v29 < v223)
        {
          goto LABEL_237;
        }

        v50 = v216;
        if (v223 < v29)
        {
          v51 = 40 * v29 - 40;
          v52 = v29;
          do
          {
            if (v19 != --v52)
            {
              v53 = *v222;
              if (!*v222)
              {
                goto LABEL_240;
              }

              v54 = v29;
              v55 = v53 + v26;
              v56 = v53 + v51;
              sub_100006260((v53 + v26), &v242);
              v57 = *(v56 + 32);
              v58 = *(v56 + 16);
              *v55 = *v56;
              *(v55 + 16) = v58;
              *(v55 + 32) = v57;
              sub_100006260(&v242, v56);
              v50 = v216;
              v29 = v54;
            }

            ++v19;
            v51 -= 40;
            v26 += 40;
          }

          while (v19 < v52);
          v19 = v223;
        }

        goto LABEL_24;
      }
    }

    v50 = v216;
LABEL_24:
    v59 = v222[1];
    if (v29 >= v59)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v29, v19))
    {
      goto LABEL_234;
    }

    if (v29 - v19 >= v50)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v19, v50))
    {
      goto LABEL_235;
    }

    if (v19 + v50 < v59)
    {
      v59 = v19 + v50;
    }

    if (v59 < v19)
    {
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      v209 = v218;

      __break(1u);
LABEL_239:
      v210 = v218;

      __break(1u);
LABEL_240:
      v211 = v218;

      __break(1u);
LABEL_241:
      v212 = v218;

      __break(1u);
LABEL_242:
      __break(1u);
      break;
    }

    if (v29 == v59)
    {
LABEL_32:
      if (v29 < v19)
      {
        goto LABEL_233;
      }

      goto LABEL_33;
    }

    v215 = v59;
    v228 = *v222;
    v217 = *&v220[v219];
LABEL_84:
    v221 = v29;
    v116 = v29;
LABEL_85:
    v227 = v116;
    v117 = (v228 + 40 * v116);
    sub_100007C5C(v117, &v242);
    v226 = v117;
    v225 = (v117 - 40);
    sub_100007C5C(v117 - 40, v239);
    v118 = v243;
    v119 = v244;
    sub_1000066AC(&v242, v243);
    v120 = (*(v119 + 16))(v118, v119);
    if (v122 == 2)
    {
      goto LABEL_88;
    }

    if (v122 != 1)
    {
      if (v122)
      {
        sub_10001D4F8(v120, v121, v122);
        v123 = -1;
        goto LABEL_132;
      }

LABEL_88:
      v123 = v120;
      goto LABEL_132;
    }

    v231 = v120;
    v236 = v121;
    v124 = [v217 allFriends];
    if (v124)
    {
      v125 = v124;
      sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
      sub_1003E2D24();
      v126 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v126 & 0xC000000000000001) != 0)
      {
        goto LABEL_95;
      }
    }

    else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_10029CE74(_swiftEmptyArrayStorage);
      v126 = v132;
      if ((v132 & 0xC000000000000001) != 0)
      {
LABEL_95:
        v127 = __CocoaSet.count.getter();
        if (!v127)
        {
          goto LABEL_107;
        }

        goto LABEL_96;
      }
    }

    else
    {
      v126 = &_swiftEmptySetSingleton;
      if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
      {
        goto LABEL_95;
      }
    }

    v127 = *(v126 + 16);
    if (!v127)
    {
LABEL_107:

      v128 = _swiftEmptyArrayStorage;
      if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
      {
        goto LABEL_153;
      }

      goto LABEL_108;
    }

LABEL_96:
    if (v127 < 1)
    {
      v128 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_100140278(&unk_1008E4E20, &qword_1006D5040);
      v128 = swift_allocObject();
      v129 = j__malloc_size(v128);
      v130 = v129 - 32;
      if (v129 < 32)
      {
        v130 = v129 - 25;
      }

      *(v128 + 16) = v127;
      *(v128 + 24) = (2 * (v130 >> 3)) | 1;
    }

    v131 = sub_1001A9A44(&v238, (v128 + 32), v127, v126);
    sub_100022DEC(v238);
    if (v131 != v127)
    {
      goto LABEL_230;
    }

    if ((v128 & 0x8000000000000000) != 0)
    {
LABEL_153:
      v165 = _CocoaArrayWrapper.endIndex.getter();
      if (v165)
      {
        v166 = v165;
        v133 = sub_1001AB73C();

        sub_100474F2C((v133 + 4), v166, v128);
        v168 = v167;

        if (v168 != v166)
        {
          goto LABEL_242;
        }
      }

      else
      {
        v133 = _swiftEmptyArrayStorage;
      }

      goto LABEL_110;
    }

LABEL_108:
    if ((v128 & 0x4000000000000000) != 0)
    {
      goto LABEL_153;
    }

    v133 = v128;
LABEL_110:
    v238 = v133;
    v134 = v229;
    sub_10047367C(&v238);
    v229 = v134;
    if (v134)
    {
      goto LABEL_245;
    }

    v135 = v238;
    if (v238 < 0 || (v238 & 0x4000000000000000) != 0)
    {
      v237 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v237 = *(v238 + 16);
    }

    v123 = 0;
    while (1)
    {
      if (v237 == v123)
      {

        sub_10001D4F8(v231, v236, 1);
        v123 = 0;
        goto LABEL_132;
      }

      if ((v135 & 0xC000000000000001) == 0)
      {
        if (v123 < *(v135 + 16))
        {
          v136 = *(v135 + 8 * v123 + 32);
          goto LABEL_121;
        }

        __break(1u);
LABEL_212:
        __break(1u);
LABEL_213:
        __break(1u);
LABEL_214:
        __break(1u);
LABEL_215:
        sub_100005A40(v239);
        sub_100005A40(&v242);
        goto LABEL_208;
      }

      v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_121:
      v137 = v136;
      v138 = [v136 UUID];
      if (v138)
      {
        v139 = v233;
        v140 = v138;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v141 = 0;
      }

      else
      {
        v141 = 1;
        v139 = v233;
      }

      v142 = type metadata accessor for UUID();
      v143 = *(v142 - 8);
      (*(v143 + 56))(v139, v141, 1, v142);
      v144 = v235;
      sub_100015E80(v139, v235, &unk_1008DB8A0, qword_1006DBA20);
      if ((*(v143 + 48))(v144, 1, v142) == 1)
      {
        sub_10000EA04(v144, &unk_1008DB8A0, qword_1006DBA20);

        goto LABEL_116;
      }

      v145 = UUID.uuidString.getter();
      v147 = v146;
      (*(v143 + 8))(v144, v142);
      if (v145 == v231 && v236 == v147)
      {
        break;
      }

      v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v148)
      {

        sub_10001D4F8(v231, v236, 1);
        goto LABEL_132;
      }

LABEL_116:
      v77 = __OFADD__(v123++, 1);
      if (v77)
      {
        goto LABEL_213;
      }
    }

    v149 = v236;
    v150 = v231;

    sub_10001D4F8(v150, v149, 1);
LABEL_132:
    v151 = v240;
    v152 = v241;
    sub_1000066AC(v239, v240);
    v153 = (*(v152 + 16))(v151, v152);
    if (v155 == 2)
    {
LABEL_135:
      v156 = v153;
      if (v123 != v153)
      {
        goto LABEL_188;
      }

      goto LABEL_189;
    }

    if (v155 != 1)
    {
      if (!v155)
      {
        goto LABEL_135;
      }

      sub_10001D4F8(v153, v154, v155);
      if (v123 != -1)
      {
        v156 = -1;
        goto LABEL_188;
      }

LABEL_189:
      v193 = v243;
      v194 = v244;
      sub_1000066AC(&v242, v243);
      v195 = (*(v194 + 24))(v193, v194) & 1;
      v196 = v240;
      v197 = v241;
      sub_1000066AC(v239, v240);
      v192 = ((*(v197 + 24))(v196, v197) & 1) < v195;
      goto LABEL_190;
    }

    v230 = v153;
    v231 = v154;
    v157 = [v217 allFriends];
    if (!v157)
    {
      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {
        sub_10029CE74(_swiftEmptyArrayStorage);
        v159 = v169;
        if ((v169 & 0xC000000000000001) == 0)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v159 = &_swiftEmptySetSingleton;
        if ((&_swiftEmptySetSingleton & 0xC000000000000001) == 0)
        {
          goto LABEL_160;
        }
      }

LABEL_144:
      v160 = __CocoaSet.count.getter();
      if (!v160)
      {
        goto LABEL_161;
      }

LABEL_145:
      if (v160 < 1)
      {
        v161 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&unk_1008E4E20, &qword_1006D5040);
        v161 = swift_allocObject();
        v162 = j__malloc_size(v161);
        v163 = v162 - 32;
        if (v162 < 32)
        {
          v163 = v162 - 25;
        }

        *(v161 + 16) = v160;
        *(v161 + 24) = (2 * (v163 >> 3)) | 1;
      }

      v164 = sub_1001A9A44(&v238, (v161 + 32), v160, v159);
      sub_100022DEC(v238);
      if (v164 != v160)
      {
        goto LABEL_231;
      }

      if ((v161 & 0x8000000000000000) != 0)
      {
        goto LABEL_194;
      }

LABEL_162:
      if ((v161 & 0x4000000000000000) != 0)
      {
        goto LABEL_194;
      }

      v170 = v161;
      goto LABEL_164;
    }

    v158 = v157;
    sub_1000059F8(0, &qword_1008E53D0, ASFriend_ptr);
    sub_1003E2D24();
    v159 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v159 & 0xC000000000000001) != 0)
    {
      goto LABEL_144;
    }

LABEL_160:
    v160 = *(v159 + 16);
    if (v160)
    {
      goto LABEL_145;
    }

LABEL_161:

    v161 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_194:
    v201 = _CocoaArrayWrapper.endIndex.getter();
    if (!v201)
    {
      v170 = _swiftEmptyArrayStorage;
      goto LABEL_164;
    }

    v202 = v201;
    v170 = sub_1001AB73C();

    sub_100474F2C((v170 + 4), v202, v161);
    v204 = v203;

    if (v204 != v202)
    {
      break;
    }

LABEL_164:
    v238 = v170;
    v171 = v229;
    sub_10047367C(&v238);
    v229 = v171;
    if (v171)
    {
      goto LABEL_245;
    }

    v172 = v238;
    if (v238 < 0 || (v238 & 0x4000000000000000) != 0)
    {
      v237 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v237 = *(v238 + 16);
    }

    v156 = 0;
    v236 = v172 & 0xC000000000000001;
    while (1)
    {
      if (v237 == v156)
      {

        sub_10001D4F8(v230, v231, 1);
        if (!v123)
        {
          goto LABEL_189;
        }

        v156 = 0;
        goto LABEL_188;
      }

      if (v236)
      {
        v173 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v156 >= *(v172 + 16))
        {
          goto LABEL_212;
        }

        v173 = *(v172 + 8 * v156 + 32);
      }

      v174 = v173;
      v175 = [v173 UUID];
      if (v175)
      {
        v176 = v232;
        v177 = v175;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v178 = 0;
      }

      else
      {
        v178 = 1;
        v176 = v232;
      }

      v179 = type metadata accessor for UUID();
      v180 = *(v179 - 8);
      (*(v180 + 56))(v176, v178, 1, v179);
      v181 = v234;
      sub_100015E80(v176, v234, &unk_1008DB8A0, qword_1006DBA20);
      if ((*(v180 + 48))(v181, 1, v179) == 1)
      {
        sub_10000EA04(v181, &unk_1008DB8A0, qword_1006DBA20);

        goto LABEL_170;
      }

      v182 = UUID.uuidString.getter();
      v183 = v181;
      v184 = v182;
      v186 = v185;
      (*(v180 + 8))(v183, v179);
      if (v184 == v230 && v231 == v186)
      {
        break;
      }

      v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v187)
      {

        v190 = v230;
        v191 = v231;
        goto LABEL_187;
      }

LABEL_170:
      v77 = __OFADD__(v156++, 1);
      if (v77)
      {
        goto LABEL_214;
      }
    }

    v188 = v231;
    v189 = v230;

    v190 = v189;
    v191 = v188;
LABEL_187:
    sub_10001D4F8(v190, v191, 1);
    if (v123 == v156)
    {
      goto LABEL_189;
    }

LABEL_188:
    v192 = v123 < v156;
LABEL_190:
    sub_100005A40(v239);
    sub_100005A40(&v242);
    v19 = v223;
    if (v192)
    {
      if (!v228)
      {
        goto LABEL_238;
      }

      v116 = v227 - 1;
      v198 = v226;
      sub_100006260(v226, &v242);
      v199 = v225;
      v200 = v225[1];
      *v198 = *v225;
      v198[1] = v200;
      *(v198 + 4) = *(v199 + 32);
      sub_100006260(&v242, v199);
      if (v116 == v19)
      {
        goto LABEL_83;
      }

      goto LABEL_85;
    }

LABEL_83:
    v29 = v221 + 1;
    if (v221 + 1 != v215)
    {
      goto LABEL_84;
    }

    v29 = v215;
    if (v215 < v19)
    {
      goto LABEL_233;
    }

LABEL_33:
    v215 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v224;
    }

    else
    {
      v20 = sub_1001A1D54(0, *(v224 + 2) + 1, 1, v224);
    }

    v61 = *(v20 + 2);
    v60 = *(v20 + 3);
    v62 = v61 + 1;
    if (v61 >= v60 >> 1)
    {
      v20 = sub_1001A1D54((v60 > 1), v61 + 1, 1, v20);
    }

    *(v20 + 2) = v62;
    v63 = (v20 + 32);
    v64 = &v20[16 * v61 + 32];
    v65 = v215;
    *v64 = v19;
    *(v64 + 1) = v65;
    v245 = v20;
    v237 = *v214;
    if (!v237)
    {
      goto LABEL_241;
    }

    if (v61)
    {
      v236 = (v20 + 32);
      v224 = v20;
      while (1)
      {
        v66 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v67 = *(v20 + 4);
          v68 = *(v20 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_53:
          if (v70)
          {
            goto LABEL_222;
          }

          v83 = &v20[16 * v62];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_225;
          }

          v89 = (v63 + 16 * v66);
          v91 = *v89;
          v90 = v89[1];
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_228;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_229;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v62 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v93 = &v20[16 * v62];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_67:
        if (v88)
        {
          goto LABEL_224;
        }

        v96 = (v63 + 16 * v66);
        v98 = *v96;
        v97 = v96[1];
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_227;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_74:
        if (v66 - 1 >= v62)
        {
          __break(1u);
LABEL_217:
          __break(1u);
LABEL_218:
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
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
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
          goto LABEL_236;
        }

        v104 = *v222;
        if (!*v222)
        {
          goto LABEL_239;
        }

        v105 = (v63 + 16 * (v66 - 1));
        v106 = *v105;
        v107 = v66;
        v108 = (v63 + 16 * v66);
        v109 = v108[1];
        v110 = (v104 + 40 * *v105);
        v111 = (v104 + 40 * *v108);
        v112 = v104 + 40 * v109;
        v113 = v218;
        v114 = v229;
        sub_100476040(v110, v111, v112, v237, v113);
        v229 = v114;
        if (v114)
        {

          v245 = v224;
          goto LABEL_208;
        }

        if (v109 < v106)
        {
          goto LABEL_217;
        }

        v115 = *(v224 + 2);
        if (v107 > v115)
        {
          goto LABEL_218;
        }

        *v105 = v106;
        v105[1] = v109;
        if (v107 >= v115)
        {
          goto LABEL_219;
        }

        v62 = v115 - 1;
        memmove(v108, v108 + 2, 16 * (v115 - 1 - v107));
        v20 = v224;
        *(v224 + 2) = v115 - 1;
        v63 = v236;
        if (v115 <= 2)
        {
LABEL_3:
          v245 = v20;
          goto LABEL_4;
        }
      }

      v71 = v63 + 16 * v62;
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_220;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_221;
      }

      v78 = &v20[16 * v62];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_223;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_226;
      }

      if (v82 >= v74)
      {
        v100 = (v63 + 16 * v66);
        v102 = *v100;
        v101 = v100[1];
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_232;
        }

        if (v69 < v103)
        {
          v66 = v62 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_4:
    v18 = v222[1];
    v19 = v215;
    if (v215 >= v18)
    {
      goto LABEL_204;
    }
  }

  __break(1u);
LABEL_244:
  v213 = v220;

  __break(1u);
LABEL_245:

  __break(1u);
}

uint64_t sub_100477C98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *(a5 + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_friendListManager);
    v40 = *a4;
    v6 = v40 + 40 * a3;
    v7 = result - a3;
LABEL_5:
    v32 = v6;
    v33 = a3;
    v31 = v7;
    while (1)
    {
      sub_100007C5C(v6, &v37);
      sub_100007C5C(v6 - 40, v34);
      v8 = v38;
      v9 = v39;
      sub_1000066AC(&v37, v38);
      v10 = (*(v9 + 16))(v8, v9);
      v12 = v11;
      LOBYTE(v9) = v13;
      v14 = sub_1005F58BC(v5, v10, v11, v13);
      sub_10001D4F8(v10, v12, v9);
      v15 = v35;
      v16 = v36;
      sub_1000066AC(v34, v35);
      v17 = (*(v16 + 16))(v15, v16);
      v19 = v18;
      LOBYTE(v16) = v20;
      v21 = sub_1005F58BC(v5, v17, v18, v20);
      sub_10001D4F8(v17, v19, v16);
      if (v14 == v21)
      {
        v22 = v38;
        v23 = v39;
        sub_1000066AC(&v37, v38);
        v24 = (*(v23 + 24))(v22, v23) & 1;
        v25 = v35;
        v26 = v36;
        sub_1000066AC(v34, v35);
        v27 = ((*(v26 + 24))(v25, v26) & 1) < v24;
      }

      else
      {
        v27 = v14 < v21;
      }

      sub_100005A40(v34);
      result = sub_100005A40(&v37);
      if (!v27)
      {
LABEL_4:
        a3 = v33 + 1;
        v6 = v32 + 40;
        v7 = v31 - 1;
        if (v33 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      sub_100006260(v6, &v37);
      v28 = *(v6 - 24);
      *v6 = *(v6 - 40);
      *(v6 + 16) = v28;
      *(v6 + 32) = *(v6 - 8);
      result = sub_100006260(&v37, v6 - 40);
      v6 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100477EF4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100140278(&unk_1008EE6B0, &qword_1006D58A0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v10[0] = (v8 + 4);
      v10[1] = v7;
      v9 = v4;
      sub_10047679C(v10, v11, a1, v6, v9);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_100477C98(0, v3, 1, a1, v4);
  }
}

void sub_100478034(void **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA4B0(v3);
  }

  v5 = v3[2];
  v7[0] = (v3 + 4);
  v7[1] = v5;
  v6 = v4;
  sub_100477EF4(v7, v6);

  *a1 = v3;
}

void sub_1004780EC()
{
  v1 = (v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_paletteBannerInsets);
  *v1 = xmmword_1006F2630;
  v1[1] = xmmword_1006F2630;
  v2 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_impressionsTracker;
  type metadata accessor for ActivityDashboardImpressionsTracker();
  v3 = swift_allocObject();
  type metadata accessor for BasicImpressionsTracker();
  v3[2] = BasicImpressionsTracker.__allocating_init(threshold:)();
  v3[3] = &protocol witness table for BasicImpressionsTracker;
  v3[4] = 0;
  v3[5] = sub_100037340(_swiftEmptyArrayStorage);
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_achievementTransitionAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_marketingBannerViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_transitionAnimatorFromViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dataSource) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_cloudSyncObserver) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dashboardCardCellViewCache;
  type metadata accessor for DashboardCardCellViewCache(0);
  swift_allocObject();
  *(v0 + v4) = sub_100037560();
  v5 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_addButton;
  *(v0 + v5) = [objc_allocWithZone(UIButton) init];
  v6 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_doneButton;
  *(v0 + v6) = [objc_allocWithZone(UIButton) init];
  v7 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_subtitleLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_awaitingPushForCardTypeFamily) = 20;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_progressObserver) = 0;
  UUID.init()();
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_visibility) = 0;
  v8 = v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_initialPresentation;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_accountButton;
  type metadata accessor for AccountButton();
  *(v0 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = (v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_dashboardTipReuseIdentifier);
  *v10 = 0xD00000000000001ELL;
  v10[1] = 0x800000010075EF20;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_isNavigationBarSetup) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_observers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_keyValueObservers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_resignActiveObserver) = 0;
  v11 = (v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController____lazy_storage___onDismissAddCardModal);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_ringCardIndex) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1004783C0(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "[cloud-restore] Received cloud sync observer progress", 53, 2, _swiftEmptyArrayStorage);

  swift_getKeyPath();
  *(swift_allocObject() + 16) = v1;
  v4 = v1;
  v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v6 = *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_progressObserver];
  *&v4[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_progressObserver] = v5;
}

uint64_t sub_1004784CC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  v9 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v8))
  {
    v10 = v9;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v11 + 4) = v13;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "[cloud-restore] Cloud sync observer sync failed with error: %@", v11, 0xCu);
    sub_10000EA04(v12, &unk_1008DB8B0, &unk_1006DBD30);
  }

  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100479650;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085BCA8;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v20 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v19);
}

uint64_t sub_1004788AC()
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v19 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v20 = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "[cloud-restore] Cloud sync observer sync completed", 50, 2, _swiftEmptyArrayStorage);

  sub_1000059F8(0, &qword_1008E3FD0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v6 + 8);
  v19(v8, v5);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100478CD0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_10085BC80;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100026E98(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50, &qword_1006D8190);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50, &qword_1006D8190, &protocol conformance descriptor for [A]);
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v1, v17);
  (*(v22 + 8))(v4, v23);
  return (v19)(v11, v20);
}

unint64_t sub_100478D30()
{
  result = qword_1008EE7B8;
  if (!qword_1008EE7B8)
  {
    sub_100141EEC(&qword_1008EE7B0, &unk_1006F2A20);
    sub_100141EEC(&qword_1008EE7C0, &qword_100700380);
    sub_10014A6B0(&qword_1008EE7C8, &qword_1008EE7C0, &qword_100700380, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&unk_1008EE7D0, &qword_1008E3A58, &qword_1006F0AE0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE7B8);
  }

  return result;
}

uint64_t sub_100478E78(uint64_t a1, uint64_t a2)
{
  Card = type metadata accessor for LoadCard(0);
  (*(*(Card - 8) + 32))(a2, a1, Card);
  return a2;
}

uint64_t sub_100478EF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1003DCBDC(a1, v4, v5, v6);
}

uint64_t sub_100478FAC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_100479000()
{
  result = qword_1008EE848;
  if (!qword_1008EE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE848);
  }

  return result;
}

uint64_t sub_100479054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10047911C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1003DCBDC(a1, v4, v5, v6);
}

uint64_t sub_1004791E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10046D2FC(a1, v4, v5, v6);
}

uint64_t sub_10047929C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10046DC94(a1, v4, v5, v6);
}

uint64_t sub_100479350(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10046E4E8(a1, v4, v5, v6);
}

uint64_t sub_100479404(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10046F3F4(a1, v4, v5, v6);
}

uint64_t sub_1004794B8()
{
  v1 = *(sub_100140278(&unk_1008EE810, &qword_1006EE090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for OSSignposter();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1004796D8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925A28);
  sub_10001AC90(v0, qword_100925A28);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10047973C()
{
  v0 = sub_100140278(&qword_1008EEA08, &qword_1006F3210);
  __chkstk_darwin(v0);
  v1 = sub_100140278(&qword_1008EEA00, &qword_1006F3208);
  sub_100163368(v1, qword_100925A40);
  sub_10001AC90(v1, qword_100925A40);
  sub_10036F6CC();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010075F0E0;
  v2._countAndFlagsBits = 0xD000000000000014;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100140278(&qword_1008EE9F8, &qword_1006F3200);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1004798A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAC20 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008EEA00, &qword_1006F3208);
  v3 = sub_10001AC90(v2, qword_100925A40);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100479958()
{
  result = qword_1008EE910;
  if (!qword_1008EE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE910);
  }

  return result;
}

unint64_t sub_1004799B0()
{
  result = qword_1008EE918;
  if (!qword_1008EE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE918);
  }

  return result;
}

uint64_t sub_100479A44(uint64_t a1, uint64_t a2)
{
  v2 = sub_100140278(&qword_1008EE9E8, &qword_1006F31C8);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008EE9F0, &qword_1006F31D0);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 0x206E65704FLL;
  v4._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100140278(&qword_1008EE9F8, &qword_1006F3200);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100479BD4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10047CCE0();
  *v4 = v2;
  v4[1] = sub_10047CD34;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_100479C80@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10047C0A4();
  *a2 = result;
  return result;
}

uint64_t sub_100479CA8(uint64_t a1)
{
  v2 = sub_10036F6CC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100479CE8()
{
  result = qword_1008EE920;
  if (!qword_1008EE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE920);
  }

  return result;
}

double sub_100479D64@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_100479DA0(uint64_t *a1)
{
  v1 = a1[1];

  v2 = v1;
  IntentParameter.wrappedValue.setter();

  return result;
}

void (*sub_100479DFC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

uint64_t sub_100479E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10047CBE4();
  v5 = sub_1001D3A20();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100479EDC()
{
  result = qword_1008EE930;
  if (!qword_1008EE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE930);
  }

  return result;
}

unint64_t sub_100479F34()
{
  result = qword_1008EE938;
  if (!qword_1008EE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE938);
  }

  return result;
}

uint64_t sub_100479FC4(uint64_t a1)
{
  v2 = sub_10047CBE4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_10047A000(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10047CBE4();
  v6 = sub_10047CC38();
  v7 = sub_1001D3A20();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_10047A0CC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10047C3C8();
  *a2 = result;
  return result;
}

uint64_t sub_10047A0F4(uint64_t a1)
{
  v2 = sub_10036F720();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10047A138()
{
  result = qword_1008EE940;
  if (!qword_1008EE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE940);
  }

  return result;
}

unint64_t sub_10047A190()
{
  result = qword_1008EE948;
  if (!qword_1008EE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE948);
  }

  return result;
}

uint64_t sub_10047A260(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  type metadata accessor for LocalizedStringResource();
  v2[8] = swift_task_alloc();
  sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10047A35C, v4, v3);
}

void sub_10047A35C()
{

  if (qword_1008DAC48 != -1)
  {
    swift_once();
  }

  v1 = sub_1004AD914(0xD00000000000001ALL, 0x800000010075F060);
  if (!v1)
  {
    sub_10047CA50();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    goto LABEL_20;
  }

  v2 = v1;
  IntentParameter.wrappedValue.getter();
  if ((*(v0 + 88) & 1) == 0)
  {
    v11 = [v2 progress];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() countUnit];
      [v12 doubleValueForUnit:v13];
      v15 = v14;
      v16 = v14;

      if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v15 > -9.22337204e18)
      {
        if (v15 < 9.22337204e18)
        {
          *(v0 + 32) = v15;
          sub_10019C1A0();
          goto LABEL_18;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = *(v0 + 72);
    *(v0 + 40) = *(v0 + 56);
    LocalizedStringResource.init(stringLiteral:)();
    IntentDialog.init(_:)();
    v19 = type metadata accessor for IntentDialog();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
    *(swift_allocObject() + 16) = v2;
    type metadata accessor for AppIntentError();
    sub_10047CB38();
    swift_allocError();
    sub_10047CB90();
    v20 = v2;
    ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();

    sub_10000EA04(v18, &qword_1008DD130, &unk_1006DB9F0);
    swift_willThrow();

LABEL_20:

    v17 = *(v0 + 8);
    goto LABEL_21;
  }

  v3 = [v2 relevantEarnedInstance];
  if (!v3 || (v4 = v3, v5 = [v3 value], v4, !v5))
  {
    *(v0 + 24) = 0;
    sub_10019C1A0();
    goto LABEL_18;
  }

  v6 = [objc_opt_self() countUnit];
  [v5 doubleValueForUnit:v6];
  v8 = v7;
  v9 = v7;

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return;
  }

  *(v0 + 16) = v8;
  sub_10019C1A0();
LABEL_18:
  static IntentResult.result<A>(value:)();

  v17 = *(v0 + 8);
LABEL_21:

  v17();
}

uint64_t sub_10047A7C8(uint64_t a1)
{
  v1[6] = a1;
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v1[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[13] = v4;
  v1[14] = v3;

  return _swift_task_switch(sub_10047A920, v4, v3);
}

uint64_t sub_10047A920()
{
  v1 = *(v0 + 48);
  sub_100140278(&unk_1008F8F40, &unk_1006D50D0);
  v2 = v1;
  LocalizedStringResource.init(stringLiteral:)();
  v3 = EntityProperty<>.init(title:)();
  *(v0 + 120) = v3;
  v4 = v2;
  *(v0 + 136) = [v4 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = sub_1001D3A20();
  *v5 = v0;
  v5[1] = sub_10047AA5C;
  v7 = *(v0 + 56);

  return URLRepresentableEntity.urlRepresentation.getter(v7, &type metadata for AwardEntity, v6);
}

uint64_t sub_10047AA5C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_10047AB7C, v3, v2);
}

uint64_t sub_10047AB7C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 48);
    sub_10000EA04(*(v0 + 56), &unk_1008EB5B0, &unk_1006D2BF0);
  }

  else
  {
    (*(*(v0 + 72) + 32))(*(v0 + 80), *(v0 + 56), *(v0 + 64));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = type metadata accessor for NavigatorContext();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 32) = v10;
    *(v0 + 40) = v9;
    v11 = objc_msgSendSuper2((v0 + 32), "init");
    sub_1004DA120(v5, v11);

    (*(v6 + 8))(v5, v7);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10047AD5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100140278(&qword_1008EE9A8, &qword_1006F3178);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008EE9B0, &qword_1006F3180);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._countAndFlagsBits = 544499015;
  v4._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100140278(&qword_1008EE9B8, &unk_1006F31B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0x74532065766F4D20;
  v5._object = 0xEC0000006B616572;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10047AEFC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return sub_10047A260(a1, v4);
}

uint64_t sub_10047AF9C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_10047C6D8();
  *a2 = result;
  return result;
}

uint64_t sub_10047AFC4(uint64_t a1)
{
  v2 = sub_10036F774();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10047B004()
{
  result = qword_1008EE950;
  if (!qword_1008EE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE950);
  }

  return result;
}

unint64_t sub_10047B05C()
{
  result = qword_1008EE958;
  if (!qword_1008EE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE958);
  }

  return result;
}

uint64_t sub_10047B150()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925A88);
  sub_10001AC90(v0, qword_100925A88);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10047B1B4(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for IntentDialog();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v1[16] = swift_task_alloc();
  sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v1[23] = swift_task_alloc();
  v4 = type metadata accessor for DispatchTimeInterval();
  v1[24] = v4;
  v1[25] = *(v4 - 8);
  v1[26] = swift_task_alloc();
  v5 = type metadata accessor for DispatchTime();
  v1[27] = v5;
  v1[28] = *(v5 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = type metadata accessor for AAUIAwardsDataProviderSection();
  v1[31] = v6;
  v1[32] = *(v6 - 8);
  v1[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[35] = v8;
  v1[36] = v7;

  return _swift_task_switch(sub_10047B4CC, v8, v7);
}

uint64_t sub_10047B4CC()
{
  if (qword_1008DAC48 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v37 = *(v0 + 264);
  v38 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 208);
  v36 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = qword_100925AA0;
  (*(v1 + 104))();
  static DispatchTime.now()();
  *v5 = 3;
  (*(v6 + 104))(v5, enum case for DispatchTimeInterval.seconds(_:), v7);
  + infix(_:_:)();
  (*(v6 + 8))(v5, v7);
  v9 = *(v3 + 8);
  v9(v4, v36);
  OS_dispatch_group.wait(timeout:)();
  v9(v2, v36);
  sub_1000066AC((v8 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider), *(v8 + OBJC_IVAR____TtC10FitnessApp23AwardIntentDataProvider_awardsDataProvider + 24));
  v10 = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
  (*(v1 + 8))(v37, v38);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_20:
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = *(v0 + 136);

    *(v0 + 321) = 5;
    sub_10047C050();
    URLRepresentableEnum.urlRepresentation.getter();
    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      sub_10000EA04(*(v0 + 136), &unk_1008EB5B0, &unk_1006D2BF0);
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 136), *(v0 + 152));
      if (qword_1008DACC0 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = *(v0 + 152);
      v28 = type metadata accessor for NavigatorContext();
      v29 = objc_allocWithZone(v28);
      v29[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
      *(v0 + 80) = v29;
      *(v0 + 88) = v28;
      v30 = objc_msgSendSuper2((v0 + 80), "init");
      sub_1004DA120(v25, v30);

      (*(v26 + 8))(v25, v27);
    }

    v32 = *(v0 + 112);
    v31 = *(v0 + 120);
    v33 = *(v0 + 104);
    *(v0 + 72) = 0;
    *(v0 + 64) = 0;
    IntentDialog.init(stringLiteral:)();
    sub_100140278(&qword_1008E0358, &qword_1006F3150);
    sub_1001D3A74();
    static IntentResult.result<A>(value:dialog:)();
    (*(v32 + 8))(v31, v33);

    v34 = *(v0 + 8);

    return v34();
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_4:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    *(v0 + 296) = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v13 unearned])
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_20;
    }
  }

  sub_100140278(&unk_1008F8F40, &unk_1006D50D0);
  v16 = v14;
  LocalizedStringResource.init(stringLiteral:)();
  v17 = EntityProperty<>.init(title:)();
  *(v0 + 304) = v17;
  v18 = v16;

  *(v0 + 320) = [v18 unearned] ^ 1;
  EntityProperty.wrappedValue.setter();

  *(v0 + 16) = v17;
  *(v0 + 24) = v18;
  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  v20 = sub_1001D3A20();
  *v19 = v0;
  v19[1] = sub_10047BAAC;
  v21 = *(v0 + 144);

  return URLRepresentableEntity.urlRepresentation.getter(v21, &type metadata for AwardEntity, v20);
}

uint64_t sub_10047BAAC()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_10047BBCC, v3, v2);
}

uint64_t sub_10047BBCC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 144), &unk_1008EB5B0, &unk_1006D2BF0);
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 176), *(v0 + 144), *(v0 + 152));
    if (qword_1008DACC0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 176);
    v5 = *(v0 + 152);
    v6 = *(v0 + 160);
    v7 = type metadata accessor for NavigatorContext();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
    *(v0 + 48) = v8;
    *(v0 + 56) = v7;
    v9 = objc_msgSendSuper2((v0 + 48), "init");
    sub_1004DA120(v4, v9);

    (*(v6 + 8))(v4, v5);
  }

  v10 = *(v0 + 296);
  *(v0 + 32) = *(v0 + 304);
  *(v0 + 40) = v10;
  v11 = v10;

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x3A7478654E207055;
  v12._object = 0xE900000000000020;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  v13 = [objc_allocWithZone(ACHAchievementLocalizationProvider) init];
  v14 = [v13 titleForAchievement:v11];

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = v15;
  }

  else
  {
    v18 = sub_100073DA0(*(v0 + 296));
    v17 = v19;
  }

  v20 = *(v0 + 296);
  v21 = *(v0 + 120);
  v22 = *(v0 + 104);
  v23 = *(v0 + 112);
  v24 = v17;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v18);

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
  IntentDialog.init(stringInterpolation:)();
  sub_100140278(&qword_1008E0358, &qword_1006F3150);
  sub_1001D3A74();
  static IntentResult.result<A>(value:dialog:)();

  (*(v23 + 8))(v21, v22);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10047BF3C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002BBC0;

  return sub_10047B1B4(a1);
}

uint64_t sub_10047BFD4(uint64_t a1)
{
  v2 = sub_10036F7C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10047C050()
{
  result = qword_1008EE980;
  if (!qword_1008EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE980);
  }

  return result;
}

uint64_t sub_10047C0A4()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008EE9D0, &qword_1006F31C0);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10047CC8C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

uint64_t sub_10047C3C8()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008E0348, &qword_1006DBA08);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v14 = type metadata accessor for IntentDialog();
  v19 = 0;
  v20 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_10007151C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_10047C6D8()
{
  v17 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130, &unk_1006DB9F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100140278(&qword_1008DD138, &qword_1006D5CC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008EE988, &qword_1006F3158);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v18 = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_10047C9FC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_10047C9FC()
{
  result = qword_1008EE990;
  if (!qword_1008EE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE990);
  }

  return result;
}

unint64_t sub_10047CA50()
{
  result = qword_1008EE998;
  if (!qword_1008EE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE998);
  }

  return result;
}

uint64_t sub_10047CAA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002BACC;

  return sub_10047A7C8(v2);
}

unint64_t sub_10047CB38()
{
  result = qword_1008E6018;
  if (!qword_1008E6018)
  {
    type metadata accessor for AppIntentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E6018);
  }

  return result;
}

unint64_t sub_10047CB90()
{
  result = qword_1008EE9A0;
  if (!qword_1008EE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE9A0);
  }

  return result;
}

unint64_t sub_10047CBE4()
{
  result = qword_1008EE9C0;
  if (!qword_1008EE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE9C0);
  }

  return result;
}

unint64_t sub_10047CC38()
{
  result = qword_1008EE9C8;
  if (!qword_1008EE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE9C8);
  }

  return result;
}

unint64_t sub_10047CC8C()
{
  result = qword_1008EE9D8;
  if (!qword_1008EE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE9D8);
  }

  return result;
}

unint64_t sub_10047CCE0()
{
  result = qword_1008EE9E0;
  if (!qword_1008EE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EE9E0);
  }

  return result;
}

void sub_10047CD44(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100073C68(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler, &unk_1006E9E60);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

uint64_t sub_10047CE14(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 40)
  {
    v8 = a1(i, a2);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_10047CE98(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 72)
  {
    v8 = *(i + 16);
    v9 = *(i + 48);
    v26 = *(i + 32);
    v27 = v9;
    v10 = *(i + 16);
    v25[0] = *i;
    v25[1] = v10;
    v11 = *(i + 48);
    v22 = v26;
    v23 = v11;
    v28 = *(i + 64);
    v24 = *(i + 64);
    v20 = v25[0];
    v21 = v8;
    sub_1002CC418(v25, &v15);
    v12 = a1(&v20);
    if (v3)
    {
      break;
    }

    v13 = v12;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v15 = v20;
    v16 = v21;
    sub_10040765C(&v15);
    if (v13)
    {
      return v6;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  v17 = v22;
  v18 = v23;
  v19 = v24;
  v15 = v20;
  v16 = v21;
  sub_10040765C(&v15);
  return v6;
}

uint64_t sub_10047CFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_100140278(&unk_1008E4D90, &unk_1006D8F40);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for StandardArtworkDescriptor();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for ArtworkDescriptor();
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for Artwork();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v9 = type metadata accessor for CatalogLockup();
  v5[20] = v9;
  v5[21] = *(v9 - 8);
  v5[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v11;
  v5[25] = v10;

  return _swift_task_switch(sub_10047D1FC, v11, v10);
}

uint64_t sub_10047D1FC()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  *(v0 + 208) = v2;
  if (!v2)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + 168);
  v4 = *(v0 + 72);
  View = type metadata accessor for FitnessPlusUpNextView(0);
  *(v0 + 216) = View;
  *(v0 + 224) = *(v4 + *(View + 20) + 8);
  v6 = *(v3 + 16);
  v3 += 16;
  v7 = *(v3 + 64);
  *(v0 + 280) = v7;
  *(v0 + 232) = *(v3 + 56);
  *(v0 + 240) = v6;
  *(v0 + 248) = 0;
  v6(*(v0 + 176), v1 + ((v7 + 32) & ~v7), *(v0 + 160));
  v8 = CatalogLockup.identifier.getter();
  v10 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(*(v0 + 48) + 16))
  {

LABEL_10:

    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v51.origin.x = v21;
    v51.origin.y = v23;
    v51.size.width = v25;
    v51.size.height = v27;
    Width = CGRectGetWidth(v51);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        v32 = [v18 mainScreen];
        [v32 bounds];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v52.origin.x = v34;
        v52.origin.y = v36;
        v52.size.width = v38;
        v52.size.height = v40;
        v41 = CGRectGetWidth(v52) / 1.77777778;
        if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v41 > -9.22337204e18)
          {
            if (v41 < 9.22337204e18)
            {
              v42 = *(v0 + 216);
              v44 = *(v0 + 120);
              v43 = *(v0 + 128);
              v45 = *(v0 + 104);
              v46 = *(v0 + 112);
              v47 = *(v0 + 72);
              CatalogLockup.artworkDescriptor.getter();
              ArtworkDescriptor.standardArtworkDescriptor.getter();
              sub_1004A8D4C(v43, &type metadata accessor for ArtworkDescriptor);
              StandardArtworkDescriptor.artwork.getter();
              (*(v46 + 8))(v44, v45);
              v48 = *(v42 + 24);
              v49 = (v47 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 40) + v48);
              sub_1000066AC(v49, v49[3]);
              dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:)();
              v28 = sub_10047D644;
              v29 = 0;
              v30 = 0;

              return _swift_task_switch(v28, v29, v30);
            }

LABEL_24:
            __break(1u);
            return _swift_task_switch(v28, v29, v30);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_100066F20(v8, v10);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(v0 + 176);
  v14 = *(v0 + 160);
  v15 = *(v0 + 168);

  (*(v15 + 8))(v13, v14);
LABEL_6:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10047D644()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[32] = v2;
  *(v2 + 16) = "FitnessApp/FitnessPlusUpNextView.swift";
  *(v2 + 24) = 38;
  *(v2 + 32) = 2;
  *(v2 + 40) = 46;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[33] = v3;
  v4 = sub_1000059F8(0, &qword_1008DD8C0, UIImage_ptr);
  *v3 = v0;
  v3[1] = sub_10047D764;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000013, 0x8000000100751490, sub_100497968, v2, v4);
}

uint64_t sub_10047D764()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10047DE40;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];
    v2[34] = v2[7];

    (*(v7 + 8))(v6, v8);
    v4 = v2[24];
    v5 = v2[25];
    v3 = sub_10047D8E4;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10047D8E4(uint64_t a1)
{
  v2 = *(v1 + 272);
  v59 = *(v1 + 176);
  v60 = *(v1 + 168);
  v62 = *(v1 + 160);
  v63 = *(v1 + 208);
  v58 = *(v1 + 152);
  v3 = *(v1 + 144);
  v57 = *(v1 + 136);
  v61 = *(v1 + 248) + 1;
  v55 = CatalogLockup.identifier.getter();
  v5 = v4;
  v56 = v2;
  v6 = Image.init(uiImage:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v9;
  *v9 = 0x8000000000000000;
  sub_1004915C4(v6, v55, v5, isUniquelyReferenced_nonNull_native);

  *v9 = v64;
  v7(v1 + 16, 0);

  (*(v3 + 8))(v58, v57);
  (*(v60 + 8))(v59, v62);
  if (v61 != v63)
  {
    v11 = *(v1 + 240);
    v12 = *(v1 + 248) + 1;
    *(v1 + 248) = v12;
    v11(*(v1 + 176), *(v1 + 64) + ((*(v1 + 280) + 32) & ~*(v1 + 280)) + *(v1 + 232) * v12, *(v1 + 160));
    v13 = CatalogLockup.identifier.getter();
    v15 = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*(*(v1 + 48) + 16))
    {
      sub_100066F20(v13, v15);
      v17 = v16;

      if (v17)
      {
        v18 = *(v1 + 176);
        v19 = *(v1 + 160);
        v20 = *(v1 + 168);

        (*(v20 + 8))(v18, v19);
        goto LABEL_6;
      }
    }

    else
    {
    }

    v23 = objc_opt_self();
    v24 = [v23 mainScreen];
    [v24 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v66.origin.x = v26;
    v66.origin.y = v28;
    v66.size.width = v30;
    v66.size.height = v32;
    Width = CGRectGetWidth(v66);
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (Width > -9.22337204e18)
    {
      if (Width < 9.22337204e18)
      {
        v37 = [v23 mainScreen];
        [v37 bounds];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v67.origin.x = v39;
        v67.origin.y = v41;
        v67.size.width = v43;
        v67.size.height = v45;
        v46 = CGRectGetWidth(v67) / 1.77777778;
        if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v46 > -9.22337204e18)
          {
            if (v46 < 9.22337204e18)
            {
              v47 = *(v1 + 216);
              v49 = *(v1 + 120);
              v48 = *(v1 + 128);
              v50 = *(v1 + 104);
              v51 = *(v1 + 112);
              v52 = *(v1 + 72);
              CatalogLockup.artworkDescriptor.getter();
              ArtworkDescriptor.standardArtworkDescriptor.getter();
              sub_1004A8D4C(v48, &type metadata accessor for ArtworkDescriptor);
              StandardArtworkDescriptor.artwork.getter();
              (*(v51 + 8))(v49, v50);
              v53 = *(v47 + 24);
              v54 = (v52 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 40) + v53);
              sub_1000066AC(v54, v54[3]);
              dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:)();
              v33 = sub_10047D644;
              v34 = 0;
              v35 = 0;

              return _swift_task_switch(v33, v34, v35);
            }

LABEL_24:
            __break(1u);
            return _swift_task_switch(v33, v34, v35);
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_6:

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_10047DE40()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[24];
  v2 = v0[25];

  return _swift_task_switch(sub_10047DEB4, v1, v2);
}

uint64_t sub_10047DEB4()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10047DF94(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext(0);
  __chkstk_darwin(CardActionContext);
  v35 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MetricClickElement();
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MetricLocation();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaTagStringBuilderOptions();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v13 = v2 + *(View + 24);
  v14 = *(type metadata accessor for FitnessPlusUpNextCard(0) + 44);
  v27 = v13;
  sub_1000066AC((v13 + v14), *(v13 + v14 + 24));
  CatalogLockup.titleTags.getter();
  static MediaTagStringBuilderOptions.workout.getter();
  v15 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  (*(v10 + 8))(v12, v9);
  v16 = [v15 string];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = a1;
  CatalogLockup.identifier.getter();
  (*(v31 + 104))(v29, enum case for MetricClickElement.lockup(_:), v34);
  v18 = v35;
  sub_1004A8614(_swiftEmptyArrayStorage);
  v20 = v32;
  v19 = v33;
  v21 = CardActionContext;
  MetricLocation.init(identifier:identifierType:index:name:elementType:entitlementRequired:contentType:metadata:)();
  v22 = type metadata accessor for CatalogLockup();
  (*(*(v22 - 8) + 16))(v18, v17, v22);
  (*(v20 + 16))(v18 + *(v21 + 20), v8, v19);
  sub_10001B104(v30 + *(View + 28), v39, &qword_1008DC808, &unk_1006D4FD0);
  if (v40)
  {
    v23 = sub_1000066AC(v39, v40);
    v38[3] = v21;
    v24 = sub_100005994(v38);
    sub_1004A9424(v18, v24, type metadata accessor for FitnessPlusUpNextCardActionContext);
    sub_1004A19B4(v27, v38, *v23);
    sub_1004A8D4C(v18, type metadata accessor for FitnessPlusUpNextCardActionContext);
    (*(v20 + 8))(v8, v19);
    sub_10000EA04(v38, &qword_1008E51F0, qword_1006D50E0);
    return sub_100005A40(v39);
  }

  else
  {
    sub_1004A8D4C(v18, type metadata accessor for FitnessPlusUpNextCardActionContext);
    (*(v20 + 8))(v8, v19);
    return sub_10000EA04(v39, &qword_1008DC808, &unk_1006D4FD0);
  }
}

uint64_t sub_10047E46C@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1(&v31);
  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v36;
  v21 = v31;
  v22 = v32;
  v28 = v36;
  v27[2] = v33;
  v27[3] = v34;
  v27[4] = v35;
  v27[0] = v31;
  v27[1] = v32;
  sub_10001B104(&v21, v37, &qword_1008EECE8, &qword_1006F36C8);
  sub_10000EA04(v27, &qword_1008EECE8, &qword_1006F36C8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = v23;
  v13 = v24;
  v14 = v25;
  v10 = v21;
  v11 = v22;
  v29[0] = v21;
  v29[1] = v22;
  v29[3] = v24;
  v29[4] = v25;
  v29[2] = v23;
  v15 = v26;
  v30 = v26;
  v31 = v21;
  v32 = v22;
  LOWORD(v36) = v26;
  v34 = v24;
  v35 = v25;
  v33 = v23;
  v5 = v22;
  *a3 = v21;
  *(a3 + 16) = v5;
  v6 = v33;
  v7 = v35;
  v8 = v36;
  *(a3 + 48) = v34;
  *(a3 + 64) = v7;
  *(a3 + 32) = v6;
  *(a3 + 80) = v8;
  *(a3 + 88) = a2;
  *(a3 + 96) = v16;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  *(a3 + 128) = v20;

  sub_10001B104(v29, v37, &qword_1008EECE8, &qword_1006F36C8);
  v37[2] = v12;
  v37[3] = v13;
  v37[4] = v14;
  v38 = v15;
  v37[0] = v10;
  v37[1] = v11;
  return sub_10000EA04(v37, &qword_1008EECE8, &qword_1006F36C8);
}

uint64_t sub_10047E63C@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1(&v27);
  v22 = v29;
  v23 = v30;
  v20 = v27;
  v21 = v28;
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v25[1] = v28;
  v24 = v31;
  v25[0] = v27;
  sub_10001B104(&v20, v26, &qword_1008EEB70, &qword_1006F33A8);
  sub_10000EA04(v25, &qword_1008EEB70, &qword_1006F33A8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = v22;
  v12 = v22;
  v13 = v23;
  v6 = v24;
  v14 = v24;
  v26[3] = v23;
  v26[4] = v24;
  v7 = v20;
  v8 = v21;
  v10 = v20;
  v11 = v21;
  v26[0] = v20;
  v26[1] = v21;
  v26[2] = v22;
  *(a3 + 48) = v23;
  *(a3 + 64) = v6;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *a3 = v7;
  *(a3 + 80) = a2;
  *(a3 + 88) = v15;
  *(a3 + 96) = v16;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;

  sub_10001B104(v26, &v27, &qword_1008EEB70, &qword_1006F33A8);
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v27 = v10;
  v28 = v11;
  return sub_10000EA04(&v27, &qword_1008EEB70, &qword_1006F33A8);
}

__n128 sub_10047E7B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = type metadata accessor for Artwork();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StandardArtworkDescriptor();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkDescriptor();
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Image.ResizingMode();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FitnessPlusUpNextView(0);
  v33 = v2;
  v38 = a1;
  v14 = CatalogLockup.identifier.getter();
  v16 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!*(v44 + 16))
  {

    goto LABEL_5;
  }

  sub_100066F20(v14, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:

    sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
    CatalogLockup.artworkDescriptor.getter();
    ArtworkDescriptor.standardArtworkDescriptor.getter();
    sub_1004A8D4C(v10, &type metadata accessor for ArtworkDescriptor);
    StandardArtworkDescriptor.artwork.getter();
    (*(v34 + 8))(v7, v35);
    v24 = Artwork.backgroundColor.getter();
    v26 = v25;
    (*(v36 + 8))(v5, v37);
    v27._countAndFlagsBits = v24;
    v27._object = v26;
    UIColor.init(hex:)(v27);
    v28 = Color.init(_:)();
    *&v41[10] = *v40;
    v43 = 1;
    *v41 = v28;
    *&v41[8] = 256;
    *&v41[26] = *&v40[16];
    *&v41[42] = *&v40[32];
    *&v41[56] = *&v40[46];
    v42 = 1;
    sub_100140278(&qword_1008EED20, &unk_1006F3700);
    sub_100140278(&qword_1008E90C8, &unk_1006E9BD0);
    sub_1004A87B8();
    sub_10014A6B0(&qword_1008E90D8, &qword_1008E90C8, &unk_1006E9BD0, &protocol conformance descriptor for _ShapeView<A, B>);
    _ConditionalContent<>.init(storage:)();
    goto LABEL_6;
  }

  v19 = v32;
  (*(v32 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v11);
  v20 = Image.resizable(capInsets:resizingMode:)();
  (*(v19 + 8))(v13, v11);
  v21 = static Alignment.bottom.getter();
  v23 = v22;
  sub_10047EE04(v38, &v44);
  *v40 = v20;
  *&v40[8] = v44;
  *&v40[24] = v45;
  *&v40[40] = v46;
  *&v40[48] = v21;
  *&v40[56] = v23;
  v44 = *v40;
  v45 = *&v40[16];
  v46 = *&v40[32];
  v47 = *&v40[48];
  v43 = 0;
  v48 = 0;
  sub_10001B104(v40, v41, &qword_1008EED20, &unk_1006F3700);
  sub_100140278(&qword_1008EED20, &unk_1006F3700);
  sub_100140278(&qword_1008E90C8, &unk_1006E9BD0);
  sub_1004A87B8();
  sub_10014A6B0(&qword_1008E90D8, &qword_1008E90C8, &unk_1006E9BD0, &protocol conformance descriptor for _ShapeView<A, B>);
  _ConditionalContent<>.init(storage:)();

  sub_10000EA04(v40, &qword_1008EED20, &unk_1006F3700);
  v46 = *&v41[32];
  v47 = *&v41[48];
  v48 = v42;
  v44 = *v41;
  v45 = *&v41[16];
LABEL_6:
  v29 = v47;
  v30 = v39;
  *(v39 + 32) = v46;
  *(v30 + 48) = v29;
  *(v30 + 64) = v48;
  result = v45;
  *v30 = v44;
  *(v30 + 16) = result;
  return result;
}

void *sub_10047EE04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = type metadata accessor for Artwork();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StandardArtworkDescriptor();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArtworkDescriptor();
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, &v35 - v16);
  (*(v12 + 104))(v14, enum case for DynamicTypeSize.accessibility1(_:), v11);
  v18 = static DynamicTypeSize.< infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  result = (v19)(v17, v11);
  if (v18)
  {
    sub_100140278(&qword_1008E8920, qword_1006E90E8);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1006D1F70;
    sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
    CatalogLockup.artworkDescriptor.getter();
    ArtworkDescriptor.standardArtworkDescriptor.getter();
    v36 = &type metadata accessor for ArtworkDescriptor;
    sub_1004A8D4C(v10, &type metadata accessor for ArtworkDescriptor);
    v21 = v39;
    StandardArtworkDescriptor.artwork.getter();
    v37 = a2;
    v35 = *(v5 + 8);
    v35(v7, v42);
    v22 = Artwork.backgroundColor.getter();
    v24 = v23;
    v25 = v41;
    v40 = *(v40 + 8);
    (v40)(v21, v41);
    v26._countAndFlagsBits = v22;
    v26._object = v24;
    UIColor.init(hex:)(v26);
    *(v38 + 32) = Color.init(_:)();
    CatalogLockup.artworkDescriptor.getter();
    ArtworkDescriptor.standardArtworkDescriptor.getter();
    sub_1004A8D4C(v10, v36);
    StandardArtworkDescriptor.artwork.getter();
    v35(v7, v42);
    a2 = v37;
    v27 = Artwork.backgroundColor.getter();
    v29 = v28;
    (v40)(v21, v25);
    v30._countAndFlagsBits = v27;
    v30._object = v29;
    UIColor.init(hex:)(v30);
    Color.init(_:)();
    v31 = Color.opacity(_:)();

    *(v38 + 40) = v31;
    static UnitPoint.bottom.getter();
    static UnitPoint.center.getter();
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v32 = v44;
    v33 = v45;
    v34 = v46;
  }

  else
  {
    v32 = 0;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  *a2 = v32;
  *(a2 + 8) = v33;
  *(a2 + 24) = v34;
  return result;
}

uint64_t sub_10047F2C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v163 = a2;
  v158 = sub_100140278(&qword_1008EECC0, &qword_1006F36A0);
  __chkstk_darwin(v158);
  v145 = (&v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v143 = &v139 - v6;
  v162 = sub_100140278(&qword_1008EEC80, &qword_1006F35D8);
  __chkstk_darwin(v162);
  v157 = (&v139 - v7);
  v160 = sub_100140278(&qword_1008EECC8, &qword_1006F36A8);
  __chkstk_darwin(v160);
  v161 = &v139 - v8;
  v9 = sub_100140278(&qword_1008EECD0, &qword_1006F36B0);
  __chkstk_darwin(v9 - 8);
  v139 = (&v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v141 = (&v139 - v12);
  v153 = sub_100140278(&qword_1008EECD8, &qword_1006F36B8);
  __chkstk_darwin(v153);
  v140 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v142 = &v139 - v15;
  v154 = sub_100140278(&qword_1008EECE0, &qword_1006F36C0);
  __chkstk_darwin(v154);
  v151 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v152 = &v139 - v18;
  v159 = sub_100140278(&qword_1008EEC50, &qword_1006F35C0);
  __chkstk_darwin(v159);
  v144 = &v139 - v19;
  v149 = type metadata accessor for DynamicTypeSize();
  v171 = *(v149 - 8);
  __chkstk_darwin(v149);
  v155 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v156 = &v139 - v22;
  __chkstk_darwin(v23);
  v150 = &v139 - v24;
  v169 = type metadata accessor for Artwork();
  v176 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for StandardArtworkDescriptor();
  v175 = *(v167 - 8);
  __chkstk_darwin(v167);
  v166 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ArtworkDescriptor();
  __chkstk_darwin(v27 - 8);
  v165 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = type metadata accessor for MediaTagStringBuilderOptions();
  v29 = *(v170 - 8);
  __chkstk_darwin(v170);
  v31 = &v139 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2 + *(type metadata accessor for FitnessPlusUpNextView(0) + 24);
  v33 = (v32 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 44));
  sub_1000066AC(v33, v33[3]);
  v164 = a1;
  CatalogLockup.titleTags.getter();
  static MediaTagStringBuilderOptions.workout.getter();
  v174 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  v146 = *(v29 + 8);
  v147 = v29 + 8;
  v34 = v170;
  v146(v31, v170);
  sub_1000066AC(v33, v33[3]);
  CatalogLockup.subtitleTags.getter();
  static MediaTagStringBuilderOptions.workout.getter();
  v173 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  v35 = v34;
  v36 = v146;
  v146(v31, v35);
  sub_1000066AC(v33, v33[3]);
  v37 = v164;
  CatalogLockup.detailTags.getter();
  static MediaTagStringBuilderOptions.workout.getter();
  v38 = v149;
  v172 = dispatch thunk of MediaTagStringBuilding.attributedString(for:options:)();

  v39 = v31;
  v40 = v37;
  v36(v39, v170);
  v177 = v148;
  v178 = v37;
  v41 = sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  v42 = v165;
  CatalogLockup.artworkDescriptor.getter();
  v43 = v166;
  ArtworkDescriptor.standardArtworkDescriptor.getter();
  sub_1004A8D4C(v42, &type metadata accessor for ArtworkDescriptor);
  v44 = v168;
  v45 = v43;
  StandardArtworkDescriptor.artwork.getter();
  v46 = *(v175 + 8);
  v175 += 8;
  (v46)(v45, v167);
  v47 = v44;
  v48 = Artwork.backgroundColor.getter();
  v50 = v49;
  v51 = *(v176 + 8);
  v176 += 8;
  v51(v47, v169);
  v52._countAndFlagsBits = v48;
  v52._object = v50;
  UIColor.init(hex:)(v52);
  v53 = Color.init(_:)();
  v54 = v150;
  sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v150);
  v55 = (*(v171 + 88))(v54, v38);
  v170 = v53;
  v146 = v51;
  v147 = v41;
  if (v55 == enum case for DynamicTypeSize.xSmall(_:) || v55 == enum case for DynamicTypeSize.small(_:) || v55 == enum case for DynamicTypeSize.medium(_:) || v55 == enum case for DynamicTypeSize.large(_:) || v55 == enum case for DynamicTypeSize.xLarge(_:) || v55 == enum case for DynamicTypeSize.xxLarge(_:) || v55 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v145 = v46;
    v75 = static HorizontalAlignment.center.getter();
    v189 = 0;
    sub_10047E46C(sub_1004A8748, v53, &v208);
    v196 = v209[5];
    v197 = v209[6];
    v198 = v209[7];
    v192 = v209[1];
    v193 = v209[2];
    v194 = v209[3];
    v195 = v209[4];
    v190 = v208;
    v191 = v209[0];
    v205 = v209[5];
    v206 = v209[6];
    v207 = v209[7];
    v200 = v209[0];
    v201 = v209[1];
    v202 = v209[2];
    v204 = v209[4];
    v203 = v209[3];
    v199 = v208;
    sub_10001B104(&v190, &v185, &qword_1008EED08, &qword_1006F36E8);
    sub_10000EA04(&v199, &qword_1008EED08, &qword_1006F36E8);
    *&v188[87] = v195;
    *&v188[103] = v196;
    *&v188[119] = v197;
    *&v188[135] = v198;
    *&v188[23] = v191;
    *&v188[39] = v192;
    *&v188[55] = v193;
    *&v188[71] = v194;
    *&v188[7] = v190;
    v76 = static Alignment.bottom.getter();
    v150 = v77;
    v151 = v76;
    *(&v209[6] + 1) = *&v188[96];
    *(&v209[7] + 1) = *&v188[112];
    *(&v209[8] + 1) = *&v188[128];
    *(&v209[2] + 1) = *&v188[32];
    *(&v209[3] + 1) = *&v188[48];
    *(&v209[4] + 1) = *&v188[64];
    *(&v209[5] + 1) = *&v188[80];
    *(v209 + 1) = *v188;
    v157 = v75;
    v208 = v75;
    LOBYTE(v209[0]) = v189;
    *&v209[9] = *&v188[143];
    *(&v209[1] + 1) = *&v188[16];
    v78 = static HorizontalAlignment.leading.getter();
    v79 = v141;
    *v141 = v78;
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    v80 = sub_100140278(&qword_1008EECF0, &qword_1006F36D0);
    sub_100480734(v172, v174, v173, v79 + *(v80 + 44));
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v81 = v142;
    sub_100015E80(v79, v142, &qword_1008EECD0, &qword_1006F36B0);
    v82 = (v81 + *(v153 + 36));
    v83 = *(&v209[14] + 8);
    v82[4] = *(&v209[13] + 8);
    v82[5] = v83;
    v82[6] = *(&v209[15] + 8);
    v84 = *(&v209[10] + 8);
    *v82 = *(&v209[9] + 8);
    v82[1] = v84;
    v85 = *(&v209[12] + 8);
    v82[2] = *(&v209[11] + 8);
    v82[3] = v85;
    LOBYTE(v79) = static Edge.Set.all.getter();
    v86 = v81;
    v87 = v152;
    sub_100015E80(v86, v152, &qword_1008EECD8, &qword_1006F36B8);
    v88 = v87 + *(v154 + 36);
    *v88 = v79;
    *(v88 + 8) = xmmword_1006D5580;
    *(v88 + 24) = xmmword_1006F3230;
    *(v88 + 40) = 0;
    v89 = v156;
    sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v156);
    v90 = v171;
    v91 = v155;
    (*(v171 + 104))(v155, enum case for DynamicTypeSize.accessibility1(_:), v38);
    LOBYTE(v79) = static DynamicTypeSize.< infix(_:_:)();
    v92 = *(v90 + 8);
    v92(v91, v38);
    v92(v89, v38);
    if (v79)
    {
      v93 = static Color.clear.getter();
    }

    else
    {
      v94 = v165;
      CatalogLockup.artworkDescriptor.getter();
      v95 = v166;
      ArtworkDescriptor.standardArtworkDescriptor.getter();
      sub_1004A8D4C(v94, &type metadata accessor for ArtworkDescriptor);
      v96 = v168;
      StandardArtworkDescriptor.artwork.getter();
      (v145)(v95, v167);
      v97 = Artwork.backgroundColor.getter();
      v99 = v98;
      v146(v96, v169);
      v100._countAndFlagsBits = v97;
      v100._object = v99;
      UIColor.init(hex:)(v100);
      v93 = Color.init(_:)();
    }

    v101 = v93;
    v102 = v144;
    v103 = &v144[*(v159 + 36)];
    v104 = static Edge.Set.all.getter();
    sub_100015E80(v152, v103, &qword_1008EECE0, &qword_1006F36C0);
    v105 = v103 + *(v158 + 36);
    *v105 = v101;
    *(v105 + 8) = v104;
    v106 = (v103 + *(sub_100140278(&qword_1008EEC70, &qword_1006F35D0) + 36));
    v107 = v150;
    *v106 = v151;
    v106[1] = v107;
    v108 = v209[0];
    *v102 = v208;
    *(v102 + 16) = v108;
    v109 = v209[4];
    *(v102 + 64) = v209[3];
    *(v102 + 80) = v109;
    v110 = v209[2];
    *(v102 + 32) = v209[1];
    *(v102 + 48) = v110;
    v111 = v209[8];
    *(v102 + 128) = v209[7];
    *(v102 + 144) = v111;
    v112 = v209[6];
    *(v102 + 96) = v209[5];
    *(v102 + 112) = v112;
    *&v186[97] = *&v188[96];
    *&v186[113] = *&v188[112];
    *v187 = *&v188[128];
    *&v186[33] = *&v188[32];
    *&v186[49] = *&v188[48];
    *&v186[65] = *&v188[64];
    *&v186[81] = *&v188[80];
    v113 = *&v188[16];
    *&v186[1] = *v188;
    *(v102 + 160) = *&v209[9];
    v185 = v157;
    v186[0] = v189;
    *&v187[15] = *&v188[143];
    *&v186[17] = v113;
    sub_10001B104(&v208, &v179, &qword_1008EEC60, &qword_1006F35C8);
    sub_10000EA04(&v185, &qword_1008EEC60, &qword_1006F35C8);
    sub_10001B104(v102, v161, &qword_1008EEC50, &qword_1006F35C0);
    swift_storeEnumTagMultiPayload();
    sub_1004A8530();
    sub_10014A6B0(&qword_1008EEC78, &qword_1008EEC80, &qword_1006F35D8, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();

    v114 = v102;
    v115 = &qword_1008EEC50;
    v116 = &qword_1006F35C0;
    return sub_10000EA04(v114, v115, v116);
  }

  v56 = enum case for DynamicTypeSize.accessibility1(_:);
  if (v55 == enum case for DynamicTypeSize.accessibility1(_:) || v55 == enum case for DynamicTypeSize.accessibility2(_:) || v55 == enum case for DynamicTypeSize.accessibility3(_:) || v55 == enum case for DynamicTypeSize.accessibility4(_:) || v55 == enum case for DynamicTypeSize.accessibility5(_:))
  {
    v57 = static HorizontalAlignment.leading.getter();
    v58 = v157;
    *v157 = v57;
    v58[1] = 0;
    *(v58 + 16) = 0;
    sub_10047E7B8(v40, v188);
    LOBYTE(v199) = 0;
    v181 = *&v188[32];
    v182 = *&v188[48];
    v179 = *v188;
    v180 = *&v188[16];
    *&v183 = *&v188[64];
    *(&v183 + 1) = 0x3FFC71C71C71C71CLL;
    v184 = 0;
    *&v186[16] = *&v188[32];
    *&v186[32] = *&v188[48];
    v185 = *v188;
    *v186 = *&v188[16];
    *&v186[48] = *&v188[64];
    *&v186[56] = 0x3FFC71C71C71C71CLL;
    *&v186[64] = 0;
    sub_10001B104(&v179, &v208, &qword_1008EECE8, &qword_1006F36C8);
    sub_10000EA04(&v185, &qword_1008EECE8, &qword_1006F36C8);
    v59 = static HorizontalAlignment.leading.getter();
    v60 = v139;
    *v139 = v59;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    v61 = sub_100140278(&qword_1008EECF0, &qword_1006F36D0);
    sub_100480734(v172, v174, v173, v60 + *(v61 + 44));
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v62 = v140;
    sub_100015E80(v60, v140, &qword_1008EECD0, &qword_1006F36B0);
    v63 = (v62 + *(v153 + 36));
    v64 = v209[4];
    v63[4] = v209[3];
    v63[5] = v64;
    v63[6] = v209[5];
    v65 = v209[0];
    *v63 = v208;
    v63[1] = v65;
    v66 = v209[2];
    v63[2] = v209[1];
    v63[3] = v66;
    LOBYTE(v60) = static Edge.Set.all.getter();
    v67 = v62;
    v68 = v151;
    sub_100015E80(v67, v151, &qword_1008EECD8, &qword_1006F36B8);
    v69 = v68 + *(v154 + 36);
    *v69 = v60;
    *(v69 + 8) = xmmword_1006D5580;
    *(v69 + 24) = xmmword_1006F3230;
    *(v69 + 40) = 0;
    v70 = v156;
    sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v156);
    v71 = v171;
    v72 = v155;
    (*(v171 + 104))(v155, v56, v38);
    LOBYTE(v60) = static DynamicTypeSize.< infix(_:_:)();
    v73 = *(v71 + 8);
    v73(v72, v38);
    v73(v70, v38);
    if (v60)
    {
      v74 = static Color.clear.getter();
    }

    else
    {
      v117 = v165;
      CatalogLockup.artworkDescriptor.getter();
      v118 = v166;
      ArtworkDescriptor.standardArtworkDescriptor.getter();
      sub_1004A8D4C(v117, &type metadata accessor for ArtworkDescriptor);
      v119 = v168;
      StandardArtworkDescriptor.artwork.getter();
      (v46)(v118, v167);
      v120 = Artwork.backgroundColor.getter();
      v122 = v121;
      v146(v119, v169);
      v123._countAndFlagsBits = v120;
      v123._object = v122;
      UIColor.init(hex:)(v123);
      v74 = Color.init(_:)();
    }

    v124 = v74;
    v125 = sub_100140278(&qword_1008EECF8, &qword_1006F36D8);
    v126 = v157;
    v127 = v157 + *(v125 + 44);
    v128 = static Edge.Set.all.getter();
    v129 = v143;
    sub_100015E80(v151, v143, &qword_1008EECE0, &qword_1006F36C0);
    v130 = v129 + *(v158 + 36);
    *v130 = v124;
    *(v130 + 8) = v128;
    v192 = v181;
    v193 = v182;
    v194 = v183;
    LOWORD(v195) = v184;
    v190 = v179;
    v191 = v180;
    v131 = v145;
    sub_10001B104(v129, v145, &qword_1008EECC0, &qword_1006F36A0);
    v132 = v193;
    v202 = v193;
    v133 = v194;
    v203 = v194;
    v134 = v195;
    LOWORD(v204) = v195;
    v135 = v190;
    v136 = v191;
    v199 = v190;
    v200 = v191;
    v201 = v192;
    *(v127 + 2) = v192;
    *(v127 + 3) = v132;
    *(v127 + 4) = v133;
    *(v127 + 40) = v134;
    *v127 = v135;
    *(v127 + 1) = v136;
    v137 = sub_100140278(&qword_1008EED00, &qword_1006F36E0);
    sub_10001B104(v131, &v127[*(v137 + 48)], &qword_1008EECC0, &qword_1006F36A0);
    sub_10001B104(&v199, v188, &qword_1008EECE8, &qword_1006F36C8);
    sub_10000EA04(v129, &qword_1008EECC0, &qword_1006F36A0);
    sub_10000EA04(v131, &qword_1008EECC0, &qword_1006F36A0);
    *&v188[32] = v192;
    *&v188[48] = v193;
    *&v188[64] = v194;
    *&v188[80] = v195;
    *v188 = v190;
    *&v188[16] = v191;
    sub_10000EA04(v188, &qword_1008EECE8, &qword_1006F36C8);
    sub_10001B104(v126, v161, &qword_1008EEC80, &qword_1006F35D8);
    swift_storeEnumTagMultiPayload();
    sub_1004A8530();
    sub_10014A6B0(&qword_1008EEC78, &qword_1008EEC80, &qword_1006F35D8, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();

    v114 = v126;
    v115 = &qword_1008EEC80;
    v116 = &qword_1006F35D8;
    return sub_10000EA04(v114, v115, v116);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100480734@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a3;
  v78 = a2;
  v83 = a4;
  v81 = type metadata accessor for Font.Leading();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100140278(&qword_1008EEB98, &qword_1006F33D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v86 = &v75[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v75[-v11];
  v13 = [a1 string];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v93 = v14;
  v94 = v16;
  v85 = sub_10000FCBC();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.caption.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v22 = Text.font(_:)();
  v24 = v23;
  v76 = v25;
  v77 = v26;

  sub_10004642C(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v28 = &v12[*(sub_100140278(&qword_1008EEBA0, &unk_1006F3408) + 36)];
  v29 = *(sub_100140278(&qword_1008DDAE0, &unk_1006EC600) + 28);
  v30 = enum case for Text.Case.uppercase(_:);
  v31 = type metadata accessor for Text.Case();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v28 + v29, v30, v31);
  (*(v32 + 56))(v28 + v29, 0, 1, v31);
  *v28 = swift_getKeyPath();
  *v12 = v22;
  *(v12 + 1) = v24;
  v12[16] = v76 & 1;
  *(v12 + 3) = v77;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 1;
  v12[48] = 0;
  v84 = v12;
  *&v12[*(v7 + 44)] = static ShapeStyle<>.keyTint.getter();
  v33 = [v78 string];
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v93 = v34;
  v94 = v36;
  v37 = Text.init<A>(_:)();
  v39 = v38;
  LOBYTE(v36) = v40;
  static Font.title3.getter();
  Font.bold()();

  v41 = v80;
  v42 = v79;
  v43 = v81;
  (*(v80 + 104))(v79, enum case for Font.Leading.tight(_:), v81);
  Font.leading(_:)();

  (*(v41 + 8))(v42, v43);
  v80 = Text.font(_:)();
  v79 = v44;
  LOBYTE(v41) = v45;
  v81 = v46;

  sub_10004642C(v37, v39, v36 & 1);

  v78 = swift_getKeyPath();
  LOBYTE(v12) = v41 & 1;
  LOBYTE(v93) = v41 & 1;
  LODWORD(v77) = v41 & 1;
  LOBYTE(v90) = 0;
  v47 = [v82 string];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v93 = v48;
  v94 = v50;
  v51 = Text.init<A>(_:)();
  v53 = v52;
  LOBYTE(v50) = v54;
  static Font.caption.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v55 = Text.font(_:)();
  v57 = v56;
  LOBYTE(v37) = v58;
  v85 = v59;

  sub_10004642C(v51, v53, v50 & 1);

  v60 = swift_getKeyPath();
  LODWORD(v82) = static HierarchicalShapeStyle.secondary.getter();
  v89 = v37 & 1;
  v88 = 0;
  v61 = v86;
  sub_10001B104(v84, v86, &qword_1008EEB98, &qword_1006F33D0);
  LOBYTE(v53) = v88;
  LOBYTE(v34) = v89;
  v62 = v61;
  v63 = v83;
  sub_10001B104(v62, v83, &qword_1008EEB98, &qword_1006F33D0);
  v64 = sub_100140278(&qword_1008EED10, &qword_1006F36F0);
  v65 = v63 + *(v64 + 48);
  v66 = v80;
  v67 = v79;
  *&v90 = v80;
  *(&v90 + 1) = v79;
  LOBYTE(v91) = v12;
  *(&v91 + 1) = v87[0];
  DWORD1(v91) = *(v87 + 3);
  v68 = v81;
  v69 = v78;
  *(&v91 + 1) = v81;
  *v92 = v78;
  *&v92[8] = 2;
  v92[16] = 0;
  *&v92[17] = 256;
  v70 = v90;
  v71 = v91;
  v72 = *v92;
  *(v65 + 47) = *&v92[15];
  *(v65 + 16) = v71;
  *(v65 + 32) = v72;
  *v65 = v70;
  v73 = v63 + *(v64 + 64);
  *v73 = v55;
  *(v73 + 8) = v57;
  *(v73 + 16) = v34;
  *(v73 + 24) = v85;
  *(v73 + 32) = v60;
  *(v73 + 40) = 1;
  *(v73 + 48) = v53;
  *(v73 + 52) = v82;
  sub_10001B104(&v90, &v93, &qword_1008EED18, &qword_1006F36F8);
  sub_10006965C(v55, v57, v34 & 1);

  sub_10000EA04(v84, &qword_1008EEB98, &qword_1006F33D0);
  sub_10004642C(v55, v57, v34 & 1);

  v93 = v66;
  v94 = v67;
  v95 = v77;
  *v96 = v87[0];
  *&v96[3] = *(v87 + 3);
  v97 = v68;
  v98 = v69;
  v99 = 2;
  v100 = 0;
  v101 = 256;
  sub_10000EA04(&v93, &qword_1008EED18, &qword_1006F36F8);
  return sub_10000EA04(v86, &qword_1008EEB98, &qword_1006F33D0);
}

uint64_t sub_100480EA4@<X0>(void *a1@<X8>)
{
  v86 = a1;
  v80 = sub_100140278(&qword_1008EEA20, &qword_1006F32F0);
  __chkstk_darwin(v80);
  v77 = &v68 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v76 = &v68 - v3;
  v85 = sub_100140278(&qword_1008EEAD0, &qword_1006F3368);
  __chkstk_darwin(v85);
  v78 = (&v68 - v4);
  v83 = sub_100140278(&qword_1008EEC00, &qword_1006F3568);
  __chkstk_darwin(v83);
  v84 = &v68 - v5;
  v6 = sub_100140278(&qword_1008EEA40, &qword_1006F3310);
  __chkstk_darwin(v6 - 8);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v79 = sub_100140278(&qword_1008EEA48, &qword_1006F3318);
  __chkstk_darwin(v79);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v68 - v15;
  v82 = sub_100140278(&qword_1008EEAA0, &qword_1006F3350);
  __chkstk_darwin(v82);
  v18 = &v68 - v17;
  v19 = type metadata accessor for DynamicTypeSize();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = static Color.clear.getter();
  sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v22);
  v23 = (*(v20 + 88))(v22, v19);
  if (v23 == enum case for DynamicTypeSize.xSmall(_:) || v23 == enum case for DynamicTypeSize.small(_:) || v23 == enum case for DynamicTypeSize.medium(_:) || v23 == enum case for DynamicTypeSize.large(_:) || v23 == enum case for DynamicTypeSize.xLarge(_:) || v23 == enum case for DynamicTypeSize.xxLarge(_:) || v23 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v78 = static HorizontalAlignment.center.getter();
    v103 = 0;
    v41 = static Color.clear.getter();
    v76 = v41;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v42 = v111;
    v75 = v111;
    v43 = v113;
    v44 = v115;
    v45 = v116;
    v102 = 0;
    v101 = v112;
    v100 = v114;
    v46 = v112;
    v69 = v18;
    v70 = v16;
    v47 = v114;
    v73 = v112;
    v74 = v114;
    v48 = v81;

    v49 = static Alignment.bottom.getter();
    v71 = v50;
    v72 = v49;
    v104 = v78;
    LODWORD(v77) = v103;
    LOBYTE(v105) = v103;
    *(&v105 + 1) = v41;
    *&v106 = 0x3FFC71C71C71C71CLL;
    WORD4(v106) = 0;
    *&v107 = v48;
    *(&v107 + 1) = v42;
    LOBYTE(v108) = v46;
    *(&v108 + 1) = v43;
    LOBYTE(v109) = v47;
    *(&v109 + 1) = v44;
    v110 = v45;
    *v11 = static HorizontalAlignment.leading.getter();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v51 = sub_100140278(&qword_1008EEB78, &qword_1006F33B0);
    sub_1004818FC(&v11[*(v51 + 44)]);
    static Alignment.leading.getter();
    v52 = v69;
    v53 = &v69[*(v82 + 36)];
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v54 = v11;
    v55 = v70;
    sub_100015E80(v54, v70, &qword_1008EEA40, &qword_1006F3310);
    v56 = (v55 + *(v79 + 36));
    v57 = v122;
    v56[4] = v121;
    v56[5] = v57;
    v56[6] = v123;
    v58 = v118;
    *v56 = v117;
    v56[1] = v58;
    v59 = v120;
    v56[2] = v119;
    v56[3] = v59;
    v60 = static Edge.Set.all.getter();
    sub_100015E80(v55, v53, &qword_1008EEA48, &qword_1006F3318);
    v61 = v53 + *(v80 + 36);
    *v61 = v60;
    *(v61 + 8) = xmmword_1006D5580;
    *(v61 + 24) = xmmword_1006F3230;
    *(v61 + 40) = 0;
    v62 = (v53 + *(sub_100140278(&qword_1008EEAC0, &qword_1006F3360) + 36));
    v63 = v71;
    *v62 = v72;
    v62[1] = v63;
    v64 = v105;
    *v52 = v104;
    *(v52 + 16) = v64;
    *(v52 + 96) = v110;
    v65 = v109;
    *(v52 + 64) = v108;
    *(v52 + 80) = v65;
    v66 = v107;
    *(v52 + 32) = v106;
    *(v52 + 48) = v66;
    v88[0] = v78;
    v88[1] = 0;
    v89 = v77;
    v90 = v76;
    v91 = 0x3FFC71C71C71C71CLL;
    v92 = 0;
    v93 = v48;
    v94 = v75;
    v95 = v73;
    v96 = v43;
    v97 = v74;
    v98 = v44;
    v99 = v45;
    sub_10001B104(&v104, &v87, &qword_1008EEAB0, &qword_1006F3358);
    sub_10000EA04(v88, &qword_1008EEAB0, &qword_1006F3358);
    v38 = &qword_1008EEAA0;
    v39 = &qword_1006F3350;
    sub_10001B104(v52, v84, &qword_1008EEAA0, &qword_1006F3350);
    swift_storeEnumTagMultiPayload();
    sub_1004876FC();
    sub_10014A6B0(&qword_1008EEAC8, &qword_1008EEAD0, &qword_1006F3368, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();

    v40 = v52;
    return sub_10000EA04(v40, v38, v39);
  }

  if (v23 == enum case for DynamicTypeSize.accessibility1(_:) || v23 == enum case for DynamicTypeSize.accessibility2(_:) || v23 == enum case for DynamicTypeSize.accessibility3(_:) || v23 == enum case for DynamicTypeSize.accessibility4(_:) || v23 == enum case for DynamicTypeSize.accessibility5(_:))
  {
    v24 = static HorizontalAlignment.leading.getter();
    v25 = v78;
    *v78 = v24;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    v26 = static Color.clear.getter();
    *v8 = static HorizontalAlignment.leading.getter();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v27 = sub_100140278(&qword_1008EEB78, &qword_1006F33B0);
    sub_1004818FC(&v8[*(v27 + 44)]);
    static Alignment.leading.getter();
    v28 = v25 + *(sub_100140278(&qword_1008EEC08, &qword_1006F3570) + 44);
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100015E80(v8, v13, &qword_1008EEA40, &qword_1006F3310);
    v29 = &v13[*(v79 + 36)];
    v30 = v122;
    *(v29 + 4) = v121;
    *(v29 + 5) = v30;
    *(v29 + 6) = v123;
    v31 = v118;
    *v29 = v117;
    *(v29 + 1) = v31;
    v32 = v120;
    *(v29 + 2) = v119;
    *(v29 + 3) = v32;
    v33 = static Edge.Set.all.getter();
    v34 = v76;
    sub_100015E80(v13, v76, &qword_1008EEA48, &qword_1006F3318);
    v35 = v34 + *(v80 + 36);
    *v35 = v33;
    *(v35 + 8) = xmmword_1006D5580;
    *(v35 + 24) = xmmword_1006F3230;
    *(v35 + 40) = 0;
    v36 = v77;
    sub_10001B104(v34, v77, &qword_1008EEA20, &qword_1006F32F0);
    *v28 = v26;
    *(v28 + 8) = 0x3FFC71C71C71C71CLL;
    *(v28 + 16) = 0;
    v37 = sub_100140278(&qword_1008EEC10, &qword_1006F3578);
    sub_10001B104(v36, v28 + *(v37 + 48), &qword_1008EEA20, &qword_1006F32F0);

    sub_10000EA04(v34, &qword_1008EEA20, &qword_1006F32F0);
    sub_10000EA04(v36, &qword_1008EEA20, &qword_1006F32F0);

    v38 = &qword_1008EEAD0;
    v39 = &qword_1006F3368;
    sub_10001B104(v25, v84, &qword_1008EEAD0, &qword_1006F3368);
    swift_storeEnumTagMultiPayload();
    sub_1004876FC();
    sub_10014A6B0(&qword_1008EEAC8, &qword_1008EEAD0, &qword_1006F3368, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();

    v40 = v25;
    return sub_10000EA04(v40, v38, v39);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004818FC@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v76 = type metadata accessor for Font.Leading();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v67[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_100140278(&qword_1008EEB98, &qword_1006F33D0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v80 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v67[-v6];
  v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v8[2] = 18;
  v8[4] = 88;
  v8[5] = 0xE100000000000000;
  v8[6] = 88;
  v8[7] = 0xE100000000000000;
  v8[8] = 88;
  v8[9] = 0xE100000000000000;
  v8[10] = 88;
  v8[11] = 0xE100000000000000;
  v8[12] = 88;
  v8[13] = 0xE100000000000000;
  v8[14] = 88;
  v8[15] = 0xE100000000000000;
  v8[16] = 88;
  v8[17] = 0xE100000000000000;
  v8[18] = 88;
  v8[19] = 0xE100000000000000;
  v8[20] = 88;
  v8[21] = 0xE100000000000000;
  v8[22] = 88;
  v8[23] = 0xE100000000000000;
  v8[24] = 88;
  v8[25] = 0xE100000000000000;
  v8[26] = 88;
  v8[27] = 0xE100000000000000;
  v8[28] = 88;
  v8[29] = 0xE100000000000000;
  v8[30] = 88;
  v8[31] = 0xE100000000000000;
  v8[32] = 88;
  v8[33] = 0xE100000000000000;
  v8[34] = 88;
  v8[35] = 0xE100000000000000;
  v8[36] = 88;
  v8[37] = 0xE100000000000000;
  v8[38] = 88;
  v8[39] = 0xE100000000000000;
  v82 = v8;
  v79 = sub_100140278(&qword_1008EEC18, &qword_1006F3580);
  v78 = sub_10014A6B0(&qword_1008EEC20, &qword_1008EEC18, &qword_1006F3580, &protocol conformance descriptor for [A]);
  v82 = String.init<A>(_:)();
  v83 = v9;
  v77 = sub_10000FCBC();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.caption.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v69 = v16;
  v70 = v15;
  v68 = v17;
  v71 = v18;

  sub_10004642C(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  v20 = &v7[*(sub_100140278(&qword_1008EEBA0, &unk_1006F3408) + 36)];
  v21 = *(sub_100140278(&qword_1008DDAE0, &unk_1006EC600) + 28);
  v22 = enum case for Text.Case.uppercase(_:);
  v23 = type metadata accessor for Text.Case();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v20 + v21, v22, v23);
  (*(v24 + 56))(v20 + v21, 0, 1, v23);
  *v20 = swift_getKeyPath();
  v25 = v69;
  *v7 = v70;
  *(v7 + 1) = v25;
  v7[16] = v68 & 1;
  *(v7 + 3) = v71;
  *(v7 + 4) = KeyPath;
  *(v7 + 5) = 1;
  v7[48] = 0;
  v72 = v7;
  *&v7[*(v3 + 44)] = static ShapeStyle<>.keyTint.getter();
  v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v26[2] = 20;
  v26[4] = 88;
  v26[5] = 0xE100000000000000;
  v26[6] = 88;
  v26[7] = 0xE100000000000000;
  v26[8] = 88;
  v26[9] = 0xE100000000000000;
  v26[10] = 88;
  v26[11] = 0xE100000000000000;
  v26[12] = 88;
  v26[13] = 0xE100000000000000;
  v26[14] = 88;
  v26[15] = 0xE100000000000000;
  v26[16] = 88;
  v26[17] = 0xE100000000000000;
  v26[18] = 88;
  v26[19] = 0xE100000000000000;
  v26[20] = 88;
  v26[21] = 0xE100000000000000;
  v26[22] = 88;
  v26[23] = 0xE100000000000000;
  v26[24] = 88;
  v26[25] = 0xE100000000000000;
  v26[26] = 88;
  v26[27] = 0xE100000000000000;
  v26[28] = 88;
  v26[29] = 0xE100000000000000;
  v26[30] = 88;
  v26[31] = 0xE100000000000000;
  v26[32] = 88;
  v26[33] = 0xE100000000000000;
  v26[34] = 88;
  v26[35] = 0xE100000000000000;
  v26[36] = 88;
  v26[37] = 0xE100000000000000;
  v26[38] = 88;
  v26[39] = 0xE100000000000000;
  v26[40] = 88;
  v26[41] = 0xE100000000000000;
  v26[42] = 88;
  v26[43] = 0xE100000000000000;
  v82 = v26;
  v82 = String.init<A>(_:)();
  v83 = v27;
  v28 = Text.init<A>(_:)();
  v30 = v29;
  LOBYTE(v21) = v31;
  v71 = v32;
  static Font.title3.getter();
  Font.bold()();

  v33 = v73;
  v34 = v74;
  v35 = v76;
  (*(v74 + 104))(v73, enum case for Font.Leading.tight(_:), v76);
  Font.leading(_:)();

  (*(v34 + 8))(v33, v35);
  v76 = Text.font(_:)();
  v73 = v36;
  v74 = v37;
  LODWORD(v70) = v38;

  sub_10004642C(v28, v30, v21 & 1);

  v71 = swift_getKeyPath();
  v39 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  v39[2] = 20;
  v39[4] = 88;
  v39[5] = 0xE100000000000000;
  v39[6] = 88;
  v39[7] = 0xE100000000000000;
  v39[8] = 88;
  v39[9] = 0xE100000000000000;
  v39[10] = 88;
  v39[11] = 0xE100000000000000;
  v39[12] = 88;
  v39[13] = 0xE100000000000000;
  v39[14] = 88;
  v39[15] = 0xE100000000000000;
  v39[16] = 88;
  v39[17] = 0xE100000000000000;
  v39[18] = 88;
  v39[19] = 0xE100000000000000;
  v39[20] = 88;
  v39[21] = 0xE100000000000000;
  v39[22] = 88;
  v39[23] = 0xE100000000000000;
  v39[24] = 88;
  v39[25] = 0xE100000000000000;
  v39[26] = 88;
  v39[27] = 0xE100000000000000;
  v39[28] = 88;
  v39[29] = 0xE100000000000000;
  v39[30] = 88;
  v39[31] = 0xE100000000000000;
  v39[32] = 88;
  v39[33] = 0xE100000000000000;
  v39[34] = 88;
  v39[35] = 0xE100000000000000;
  v39[36] = 88;
  v39[37] = 0xE100000000000000;
  v39[38] = 88;
  v39[39] = 0xE100000000000000;
  v39[40] = 88;
  v39[41] = 0xE100000000000000;
  v39[42] = 88;
  v39[43] = 0xE100000000000000;
  v82 = v39;
  v82 = String.init<A>(_:)();
  v83 = v40;
  v41 = Text.init<A>(_:)();
  v43 = v42;
  v45 = v44;
  static Font.caption.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v46 = Text.font(_:)();
  v48 = v47;
  LOBYTE(v28) = v49;
  v79 = v50;

  sub_10004642C(v41, v43, v45 & 1);

  v51 = swift_getKeyPath();
  LODWORD(v78) = static HierarchicalShapeStyle.secondary.getter();
  LOBYTE(v82) = v28 & 1;
  v84 = 0;
  v52 = v72;
  v53 = v80;
  sub_10001B104(v72, v80, &qword_1008EEB98, &qword_1006F33D0);
  LOBYTE(v43) = v70 & 1;
  v81 = v70 & 1;
  v54 = v84;
  v55 = v82;
  v56 = v53;
  v57 = v75;
  sub_10001B104(v56, v75, &qword_1008EEB98, &qword_1006F33D0);
  v58 = sub_100140278(&qword_1008EEBA8, &qword_1006F3448);
  v59 = v57 + *(v58 + 48);
  v60 = v76;
  v61 = v73;
  v62 = v74;
  *v59 = v76;
  *(v59 + 8) = v61;
  *(v59 + 16) = v43;
  v63 = v71;
  *(v59 + 24) = v62;
  *(v59 + 32) = v63;
  *(v59 + 40) = 2;
  *(v59 + 48) = 0;
  v64 = v57 + *(v58 + 64);
  *v64 = v46;
  *(v64 + 8) = v48;
  *(v64 + 16) = v55;
  *(v64 + 24) = v79;
  *(v64 + 32) = v51;
  *(v64 + 40) = 1;
  *(v64 + 48) = v54;
  *(v64 + 52) = v78;
  v65 = v61;
  sub_10006965C(v60, v61, v43);

  sub_10006965C(v46, v48, v55 & 1);

  sub_10000EA04(v52, &qword_1008EEB98, &qword_1006F33D0);
  sub_10004642C(v46, v48, v55 & 1);

  sub_10004642C(v76, v65, v81);

  return sub_10000EA04(v80, &qword_1008EEB98, &qword_1006F33D0);
}

uint64_t sub_1004820B4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v128 = a1;
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v114 = *(View - 8);
  __chkstk_darwin(View);
  v123 = v4;
  v5 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100140278(&qword_1008EEA10, &qword_1006F32E0);
  __chkstk_darwin(v115);
  v7 = (&v103 - v6);
  v127 = sub_100140278(&qword_1008EEA18, &qword_1006F32E8);
  __chkstk_darwin(v127);
  v116 = &v103 - v8;
  v118 = sub_100140278(&qword_1008EEA20, &qword_1006F32F0);
  __chkstk_darwin(v118);
  v112 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v103 - v11;
  v12 = type metadata accessor for Image.ResizingMode();
  v105 = *(v12 - 8);
  v106 = v12;
  __chkstk_darwin(v12);
  v104 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100140278(&qword_1008EEA28, &qword_1006F32F8);
  __chkstk_darwin(v14);
  v113 = (&v103 - v15);
  v125 = sub_100140278(&qword_1008EEA30, &qword_1006F3300);
  __chkstk_darwin(v125);
  v126 = &v103 - v16;
  v121 = sub_100140278(&qword_1008EEA38, &qword_1006F3308);
  __chkstk_darwin(v121);
  v122 = (&v103 - v17);
  v18 = sub_100140278(&qword_1008EEA40, &qword_1006F3310);
  __chkstk_darwin(v18 - 8);
  v108 = (&v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v107 = (&v103 - v21);
  v117 = sub_100140278(&qword_1008EEA48, &qword_1006F3318);
  __chkstk_darwin(v117);
  v110 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v109 = &v103 - v24;
  v120 = sub_100140278(&qword_1008EEA50, &qword_1006F3320);
  __chkstk_darwin(v120);
  v26 = &v103 - v25;
  v27 = type metadata accessor for DynamicTypeSize();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100140278(&qword_1008EEA58, &unk_1006F3328);
  __chkstk_darwin(v31);
  v119 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = *(v2 + *(View + 32));
  v124 = v34;
  if (v36 != 1)
  {
    v68 = v2;
    sub_100483D50(v2, v7);
    v69 = v2 + *(View + 24);
    v70 = *(v69 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 36));
    *&v160 = v70;
    v122 = type metadata accessor for FitnessPlusUpNextView;
    v71 = v5;
    sub_1004A9424(v68, v5, type metadata accessor for FitnessPlusUpNextView);
    v72 = (*(v114 + 80) + 16) & ~*(v114 + 80);
    v73 = swift_allocObject();
    v121 = type metadata accessor for FitnessPlusUpNextView;
    sub_10002B9C4(v5, v73 + v72, type metadata accessor for FitnessPlusUpNextView);
    sub_100221040(v70);
    sub_10048739C();
    sub_1004879D4();
    v74 = v116;
    View.onChange<A>(of:initial:_:)();

    sub_100487A28(v70);
    sub_10000EA04(v7, &qword_1008EEA10, &qword_1006F32E0);
    sub_1004A9424(v68, v71, v122);
    v75 = swift_allocObject();
    sub_10002B9C4(v71, v75 + v72, v121);
    v76 = v126;
    v77 = (v74 + *(v127 + 36));
    *v77 = sub_100487A38;
    v77[1] = v75;
    v77[2] = 0;
    v77[3] = 0;
    sub_10001B104(v74, v76, &qword_1008EEA18, &qword_1006F32E8);
    swift_storeEnumTagMultiPayload();
    sub_100487A50();
    sub_100487BEC();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v74, &qword_1008EEA18, &qword_1006F32E8);
  }

  v123 = v14;
  v115 = &v103;
  v116 = &v103 - v35;
  __chkstk_darwin(v34);
  sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
  v37._countAndFlagsBits = 0x353035313232;
  v37._object = 0xE600000000000000;
  UIColor.init(hex:)(v37);
  v38 = Color.init(_:)();
  v103 = v2;
  sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v30);
  v39 = (*(v28 + 88))(v30, v27);
  v114 = v38;
  if (v39 == enum case for DynamicTypeSize.xSmall(_:) || v39 == enum case for DynamicTypeSize.small(_:) || v39 == enum case for DynamicTypeSize.medium(_:) || v39 == enum case for DynamicTypeSize.large(_:) || v39 == enum case for DynamicTypeSize.xLarge(_:) || v39 == enum case for DynamicTypeSize.xxLarge(_:) || v39 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v79 = static HorizontalAlignment.center.getter();
    v113 = v79;
    v141 = 0;
    sub_10047E63C(sub_100487CD0, v38, &v160);
    v148 = v161[5];
    v149 = v161[6];
    v144 = v161[1];
    v145 = v161[2];
    v146 = v161[3];
    v147 = v161[4];
    v142 = v160;
    v143 = v161[0];
    v157 = v161[5];
    v158 = v161[6];
    v153 = v161[1];
    v154 = v161[2];
    v155 = v161[3];
    v156 = v161[4];
    v150 = *&v161[7];
    v159 = *&v161[7];
    v151 = v160;
    v152 = v161[0];
    sub_10001B104(&v142, &v133, &qword_1008EEB90, &qword_1006F33C8);
    sub_10000EA04(&v151, &qword_1008EEB90, &qword_1006F33C8);
    *&v140[87] = v147;
    *&v140[103] = v148;
    *&v140[119] = v149;
    *&v140[23] = v143;
    *&v140[39] = v144;
    *&v140[55] = v145;
    *&v140[71] = v146;
    *&v140[135] = v150;
    *&v140[7] = v142;
    v112 = static Alignment.bottom.getter();
    v81 = v80;
    *(&v161[5] + 1) = *&v140[80];
    *(&v161[6] + 1) = *&v140[96];
    *(&v161[7] + 1) = *&v140[112];
    v161[8] = *&v140[127];
    *(&v161[1] + 1) = *&v140[16];
    *(&v161[2] + 1) = *&v140[32];
    *(&v161[3] + 1) = *&v140[48];
    *(&v161[4] + 1) = *&v140[64];
    v160 = v79;
    v82 = v141;
    LOBYTE(v161[0]) = v141;
    *(v161 + 1) = *v140;
    v83 = static HorizontalAlignment.leading.getter();
    v84 = v107;
    *v107 = v83;
    v84[1] = 0;
    *(v84 + 16) = 0;
    v85 = sub_100140278(&qword_1008EEB78, &qword_1006F33B0);
    sub_1004836D0(v84 + *(v85 + 44));
    static Alignment.leading.getter();
    v86 = &v26[*(v120 + 36)];
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v87 = v84;
    v88 = v109;
    sub_100015E80(v87, v109, &qword_1008EEA40, &qword_1006F3310);
    v89 = (v88 + *(v117 + 36));
    v90 = v161[14];
    v89[4] = v161[13];
    v89[5] = v90;
    v89[6] = v161[15];
    v91 = v161[10];
    *v89 = v161[9];
    v89[1] = v91;
    v92 = v161[12];
    v89[2] = v161[11];
    v89[3] = v92;
    LOBYTE(v79) = static Edge.Set.all.getter();
    sub_100015E80(v88, v86, &qword_1008EEA48, &qword_1006F3318);
    v93 = v86 + *(v118 + 36);
    *v93 = v79;
    *(v93 + 8) = xmmword_1006D5580;
    *(v93 + 24) = xmmword_1006F3230;
    *(v93 + 40) = 0;
    v94 = (v86 + *(sub_100140278(&qword_1008EEAC0, &qword_1006F3360) + 36));
    *v94 = v112;
    v94[1] = v81;
    v95 = v161[0];
    *v26 = v160;
    *(v26 + 1) = v95;
    v96 = v161[4];
    *(v26 + 4) = v161[3];
    *(v26 + 5) = v96;
    v97 = v161[2];
    *(v26 + 2) = v161[1];
    *(v26 + 3) = v97;
    v98 = v161[8];
    *(v26 + 8) = v161[7];
    *(v26 + 9) = v98;
    v99 = v161[6];
    *(v26 + 6) = v161[5];
    *(v26 + 7) = v99;
    v137 = *&v140[80];
    v138 = *&v140[96];
    *v139 = *&v140[112];
    *&v139[15] = *&v140[127];
    *&v135[17] = *&v140[16];
    *&v135[33] = *&v140[32];
    *&v135[49] = *&v140[48];
    v136 = *&v140[64];
    v133 = v113;
    v134 = 0;
    v135[0] = v82;
    *&v135[1] = *v140;
    sub_10001B104(&v160, &v129, &qword_1008EEB58, &qword_1006F33A0);
    sub_10000EA04(&v133, &qword_1008EEB58, &qword_1006F33A0);
    v65 = &qword_1008EEA50;
    v66 = &qword_1006F3320;
    sub_10001B104(v26, v122, &qword_1008EEA50, &qword_1006F3320);
    swift_storeEnumTagMultiPayload();
    sub_100487B08();
    sub_10014A6B0(&qword_1008EEB60, &qword_1008EEA28, &qword_1006F32F8, &protocol conformance descriptor for VStack<A>);
    v67 = v119;
  }

  else
  {
    if (v39 != enum case for DynamicTypeSize.accessibility1(_:) && v39 != enum case for DynamicTypeSize.accessibility2(_:) && v39 != enum case for DynamicTypeSize.accessibility3(_:) && v39 != enum case for DynamicTypeSize.accessibility4(_:) && v39 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v40 = static HorizontalAlignment.leading.getter();
    v26 = v113;
    *v113 = v40;
    *(v26 + 1) = 0;
    v26[16] = 0;
    Image.init(_:bundle:)();
    v42 = v104;
    v41 = v105;
    v43 = v106;
    (*(v105 + 104))(v104, enum case for Image.ResizingMode.stretch(_:), v106);
    v44 = Image.resizable(capInsets:resizingMode:)();

    (*(v41 + 8))(v42, v43);
    v45 = static Alignment.bottom.getter();
    v47 = v46;
    sub_10048345C(&v160);
    LOBYTE(v151) = 0;
    *&v130[2] = *v140;
    *&v130[6] = *&v140[4];
    *&v129 = v44;
    *(&v129 + 1) = 0x3FFC71C71C71C71CLL;
    *v130 = 0;
    *&v130[8] = v160;
    *&v130[24] = *&v161[0];
    v131 = *(v161 + 8);
    *&v132 = v45;
    *(&v132 + 1) = v47;
    v133 = v44;
    v134 = 0x3FFC71C71C71C71CLL;
    *v135 = 0;
    *&v135[2] = *v140;
    *&v135[6] = *&v140[4];
    *&v135[8] = v160;
    *&v135[24] = v161[0];
    *&v135[40] = *&v161[1];
    *&v135[48] = v45;
    *&v135[56] = v47;
    sub_10001B104(&v129, &v160, &qword_1008EEB70, &qword_1006F33A8);
    sub_10000EA04(&v133, &qword_1008EEB70, &qword_1006F33A8);
    v48 = static HorizontalAlignment.leading.getter();
    v49 = v108;
    *v108 = v48;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0;
    v50 = sub_100140278(&qword_1008EEB78, &qword_1006F33B0);
    sub_1004836D0(v49 + *(v50 + 44));
    static Alignment.leading.getter();
    v51 = &v26[*(sub_100140278(&qword_1008EEB80, &qword_1006F33B8) + 44)];
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v52 = v110;
    sub_100015E80(v49, v110, &qword_1008EEA40, &qword_1006F3310);
    v53 = (v52 + *(v117 + 36));
    v54 = v161[4];
    v53[4] = v161[3];
    v53[5] = v54;
    v53[6] = v161[5];
    v55 = v161[0];
    *v53 = v160;
    v53[1] = v55;
    v56 = v161[2];
    v53[2] = v161[1];
    v53[3] = v56;
    LOBYTE(v47) = static Edge.Set.all.getter();
    v57 = v111;
    sub_100015E80(v52, v111, &qword_1008EEA48, &qword_1006F3318);
    v58 = v57 + *(v118 + 36);
    *v58 = v47;
    *(v58 + 8) = xmmword_1006D5580;
    *(v58 + 24) = xmmword_1006F3230;
    *(v58 + 40) = 0;
    v144 = *&v130[16];
    v145 = v131;
    v146 = v132;
    v142 = v129;
    v143 = *v130;
    v59 = v112;
    sub_10001B104(v57, v112, &qword_1008EEA20, &qword_1006F32F0);
    v60 = v145;
    v153 = v144;
    v154 = v145;
    v61 = v146;
    v155 = v146;
    v63 = v142;
    v62 = v143;
    v151 = v142;
    v152 = v143;
    *(v51 + 2) = v144;
    *(v51 + 3) = v60;
    *(v51 + 4) = v61;
    *v51 = v63;
    *(v51 + 1) = v62;
    v64 = sub_100140278(&qword_1008EEB88, &qword_1006F33C0);
    sub_10001B104(v59, &v51[*(v64 + 48)], &qword_1008EEA20, &qword_1006F32F0);
    sub_10001B104(&v151, v140, &qword_1008EEB70, &qword_1006F33A8);
    sub_10000EA04(v57, &qword_1008EEA20, &qword_1006F32F0);
    sub_10000EA04(v59, &qword_1008EEA20, &qword_1006F32F0);
    *&v140[32] = v144;
    *&v140[48] = v145;
    *&v140[64] = v146;
    *v140 = v142;
    *&v140[16] = v143;
    sub_10000EA04(v140, &qword_1008EEB70, &qword_1006F33A8);
    v65 = &qword_1008EEA28;
    v66 = &qword_1006F32F8;
    sub_10001B104(v26, v122, &qword_1008EEA28, &qword_1006F32F8);
    swift_storeEnumTagMultiPayload();
    sub_100487B08();
    sub_10014A6B0(&qword_1008EEB60, &qword_1008EEA28, &qword_1006F32F8, &protocol conformance descriptor for VStack<A>);
    v67 = v119;
  }

  _ConditionalContent<>.init(storage:)();

  sub_10000EA04(v26, v65, v66);
  v100 = v126;
  v101 = v67;
  v102 = v116;
  sub_100015E80(v101, v116, &qword_1008EEA58, &unk_1006F3328);
  sub_10001B104(v102, v100, &qword_1008EEA58, &unk_1006F3328);
  swift_storeEnumTagMultiPayload();
  sub_100487A50();
  sub_100487BEC();
  _ConditionalContent<>.init(storage:)();
  return sub_10000EA04(v102, &qword_1008EEA58, &unk_1006F3328);
}

__n128 sub_1004832CC@<Q0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Image.ResizingMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v7 = Image.resizable(capInsets:resizingMode:)();

  (*(v4 + 8))(v6, v3);
  v8 = static Alignment.bottom.getter();
  v10 = v9;
  sub_10048345C(v14);
  v11 = v15;
  result = v14[0];
  v13 = v14[1];
  *a2 = v7;
  *(a2 + 8) = 0x3FFC71C71C71C71CLL;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 40) = v13;
  *(a2 + 56) = v11;
  *(a2 + 64) = v8;
  *(a2 + 72) = v10;
  return result;
}

void *sub_10048345C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  sub_10005471C(&qword_1008EE6A0, &unk_1006D5790, &type metadata accessor for DynamicTypeSize, v19 - v7);
  (*(v3 + 104))(v5, enum case for DynamicTypeSize.accessibility1(_:), v2);
  v9 = static DynamicTypeSize.< infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  result = (v10)(v8, v2);
  if (v9)
  {
    sub_100140278(&qword_1008E8920, qword_1006E90E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1006D1F70;
    sub_1000059F8(0, &qword_1008E7FC0, UIColor_ptr);
    v13._countAndFlagsBits = 0x353035313232;
    v13._object = 0xE600000000000000;
    UIColor.init(hex:)(v13);
    *(v12 + 32) = Color.init(_:)();
    v14._countAndFlagsBits = 0x353035313232;
    v14._object = 0xE600000000000000;
    UIColor.init(hex:)(v14);
    Color.init(_:)();
    v15 = Color.opacity(_:)();

    *(v12 + 40) = v15;
    static UnitPoint.bottom.getter();
    static UnitPoint.center.getter();
    Gradient.init(colors:)();
    result = LinearGradient.init(gradient:startPoint:endPoint:)();
    v16 = v19[1];
    v17 = v20;
    v18 = v21;
  }

  else
  {
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_1004836D0@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = type metadata accessor for Font.Leading();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v56[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_100140278(&qword_1008EEB98, &qword_1006F33D0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v65 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v56[-v6];
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Font.caption.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v59 = Text.font(_:)();
  v60 = v13;
  v15 = v14;
  v17 = v16;

  sub_10004642C(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = &v7[*(sub_100140278(&qword_1008EEBA0, &unk_1006F3408) + 36)];
  v20 = *(sub_100140278(&qword_1008DDAE0, &unk_1006EC600) + 28);
  v21 = enum case for Text.Case.uppercase(_:);
  v22 = type metadata accessor for Text.Case();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v19 + v20, v21, v22);
  (*(v23 + 56))(v19 + v20, 0, 1, v22);
  *v19 = swift_getKeyPath();
  *v7 = v59;
  *(v7 + 1) = v15;
  v7[16] = v17 & 1;
  *(v7 + 3) = v60;
  *(v7 + 4) = KeyPath;
  *(v7 + 5) = 1;
  v7[48] = 0;
  *&v7[*(v3 + 44)] = static ShapeStyle<>.keyTint.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  LOBYTE(KeyPath) = v27;
  static Font.title3.getter();
  Font.bold()();

  v29 = v61;
  v28 = v62;
  v30 = v64;
  (*(v62 + 104))(v61, enum case for Font.Leading.tight(_:), v64);
  Font.leading(_:)();

  (*(v28 + 8))(v29, v30);
  v64 = Text.font(_:)();
  v61 = v31;
  v62 = v32;
  LODWORD(v59) = v33;

  sub_10004642C(v24, v26, KeyPath & 1);

  v60 = swift_getKeyPath();
  LocalizedStringKey.init(stringLiteral:)();
  v34 = Text.init(_:tableName:bundle:comment:)();
  v36 = v35;
  LOBYTE(v22) = v37;
  static Font.caption.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v38 = Text.font(_:)();
  v40 = v39;
  LOBYTE(v20) = v41;
  v58 = v42;

  sub_10004642C(v34, v36, v22 & 1);

  v43 = swift_getKeyPath();
  v57 = static HierarchicalShapeStyle.secondary.getter();
  v68 = v20 & 1;
  v67 = 0;
  v44 = v65;
  sub_10001B104(v7, v65, &qword_1008EEB98, &qword_1006F33D0);
  LOBYTE(v22) = v59 & 1;
  v66 = v59 & 1;
  LOBYTE(v29) = v67;
  LOBYTE(v28) = v68;
  v45 = v44;
  v46 = v63;
  sub_10001B104(v45, v63, &qword_1008EEB98, &qword_1006F33D0);
  v47 = sub_100140278(&qword_1008EEBA8, &qword_1006F3448);
  v48 = v46 + *(v47 + 48);
  v49 = v64;
  v50 = v61;
  v51 = v62;
  *v48 = v64;
  *(v48 + 8) = v50;
  *(v48 + 16) = v22;
  v52 = v60;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 2;
  *(v48 + 48) = 0;
  v53 = v46 + *(v47 + 64);
  *v53 = v38;
  *(v53 + 8) = v40;
  *(v53 + 16) = v28;
  *(v53 + 24) = v58;
  *(v53 + 32) = v43;
  *(v53 + 40) = 1;
  *(v53 + 48) = v29;
  *(v53 + 52) = v57;
  v54 = v50;
  sub_10006965C(v49, v50, v22);

  sub_10006965C(v38, v40, v28 & 1);

  sub_10000EA04(v7, &qword_1008EEB98, &qword_1006F33D0);
  sub_10004642C(v38, v40, v28 & 1);

  sub_10004642C(v64, v54, v66);

  return sub_10000EA04(v65, &qword_1008EEB98, &qword_1006F33D0);
}

id sub_100483D50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v116 = a2;
  v102 = sub_100140278(&qword_1008EEBC0, &qword_1006F34D0);
  __chkstk_darwin(v102);
  v103 = &v94 - v3;
  v115 = sub_100140278(&qword_1008EEB00, &qword_1006F3380);
  __chkstk_darwin(v115);
  v105 = &v94 - v4;
  v101 = sub_100140278(&qword_1008EEB10, &qword_1006F3388);
  __chkstk_darwin(v101);
  *&v104 = &v94 - v5;
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v96 = *(View - 8);
  __chkstk_darwin(View);
  v97 = v7;
  v98 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_100140278(&qword_1008EEBC8, &qword_1006F34D8);
  v100 = *(v111 - 8);
  __chkstk_darwin(v111);
  v99 = &v94 - v8;
  v112 = sub_100140278(&qword_1008EEBD0, &qword_1006F34E0);
  __chkstk_darwin(v112);
  v114 = &v94 - v9;
  OpaqueTypeConformance2 = sub_100140278(&qword_1008EEBD8, &qword_1006F34E8);
  __chkstk_darwin(OpaqueTypeConformance2);
  v109 = &v94 - v10;
  v113 = sub_100140278(&qword_1008EEA80, &qword_1006F3340);
  __chkstk_darwin(v113);
  v110 = &v94 - v11;
  v12 = type metadata accessor for RedactionReasons();
  v106 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008EEA88, &qword_1006F3348);
  __chkstk_darwin(v15);
  v17 = (&v94 - v16);
  v18 = sub_100140278(&qword_1008EEBE0, &qword_1006F34F0);
  v107 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v94 - v19;
  v21 = View;
  v22 = *(View + 24);
  v23 = a1;
  v24 = *(a1 + v22 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 36));
  if (v24 < 2)
  {
    sub_100480EA4(v17);
    static RedactionReasons.placeholder.getter();
    v52 = sub_100487644();
    v95 = v20;
    View.redacted(reason:)();
    (*(v106 + 8))(v14, v12);
    sub_10000EA04(v17, &qword_1008EEA88, &qword_1006F3348);
    v53 = v107;
    v54 = v20;
    v55 = v18;
    (*(v107 + 16))(v109, v54, v18);
    swift_storeEnumTagMultiPayload();
    *&v123 = v15;
    *(&v123 + 1) = v52;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v56 = sub_100141EEC(&qword_1008EEAD8, &qword_1006F3370);
    v57 = sub_100141EEC(&qword_1008EEAE0, &qword_1006F3378);
    v58 = sub_10014A6B0(&qword_1008EEAE8, &qword_1008EEAD8, &qword_1006F3370, &unk_1006E8A48);
    v59 = sub_10014A6B0(&qword_1008EEAF0, &qword_1008EEAE0, &qword_1006F3378, &protocol conformance descriptor for TupleView<A>);
    *&v123 = v56;
    *(&v123 + 1) = v57;
    *&v124 = v58;
    *(&v124 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    v60 = v110;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v60, v114, &qword_1008EEA80, &qword_1006F3340);
    swift_storeEnumTagMultiPayload();
    sub_1004874AC();
    sub_1004877E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v60, &qword_1008EEA80, &qword_1006F3340);
    return (*(v53 + 8))(v95, v55);
  }

  v106 = v15;
  v107 = v18;
  v25 = v23;
  if (v24 == 2)
  {
    v111 = static HorizontalAlignment.center.getter();
    v137 = 0;
    sub_100486510(&v131);
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v117 = v131;
    v118 = v132;
    v125 = v133;
    v126 = v134;
    v127 = v135;
    v123 = v131;
    v124 = v132;
    sub_10001B104(&v117, v130, &qword_1008EEBE8, &qword_1006F34F8);
    sub_10000EA04(&v123, &qword_1008EEBE8, &qword_1006F34F8);
    *&v129[23] = v118;
    *&v129[39] = v119;
    *&v129[55] = v120;
    *&v129[71] = v121;
    *&v129[7] = v117;
    LODWORD(v110) = v137;
    v61 = static Edge.Set.all.getter();
    LOBYTE(v131) = 0;
    v62 = static Alignment.center.getter();
    v64 = v63;
    v65 = v104;
    v66 = v104 + *(v101 + 36);
    *v66 = static HorizontalAlignment.center.getter();
    *(v66 + 8) = 0x4014000000000000;
    *(v66 + 16) = 0;
    v67 = sub_100140278(&qword_1008EEBF0, &qword_1006F3500);
    sub_100485DA0(v23, (v66 + *(v67 + 44)));
    KeyPath = swift_getKeyPath();
    v69 = v66 + *(sub_100140278(&qword_1008EEBF8, &qword_1006F3538) + 36);
    *v69 = KeyPath;
    *(v69 + 8) = 1;
    v70 = (v66 + *(sub_100140278(&qword_1008EEB30, &qword_1006F3398) + 36));
    *v70 = v62;
    v70[1] = v64;
    v71 = *v129;
    *(v65 + 33) = *&v129[16];
    *(v65 + 17) = v71;
    *(v65 + 96) = *&v129[79];
    v72 = *&v129[48];
    *(v65 + 81) = *&v129[64];
    v73 = *&v129[32];
    *(v65 + 65) = v72;
    *v65 = v111;
    *(v65 + 8) = 0;
    *(v65 + 16) = v110;
    *(v65 + 49) = v73;
    *(v65 + 104) = v61;
    *(v65 + 112) = xmmword_1006D5580;
    *(v65 + 128) = xmmword_1006D5580;
    *(v65 + 144) = 0;
    sub_10001B104(v65, v103, &qword_1008EEB10, &qword_1006F3388);
    swift_storeEnumTagMultiPayload();
    sub_100487864();
    v74 = v105;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v74, v114, &qword_1008EEB00, &qword_1006F3380);
    swift_storeEnumTagMultiPayload();
    sub_1004874AC();
    sub_1004877E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v74, &qword_1008EEB00, &qword_1006F3380);
    v51 = v65;
    return sub_10000EA04(v51, &qword_1008EEB10, &qword_1006F3388);
  }

  if (v24 == 3)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v27 = result;
      wapiCapability = MobileGestalt_get_wapiCapability();

      if (wapiCapability)
      {
        v29 = 1312902231;
      }

      else
      {
        v29 = 1229343063;
      }

      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      *&v123 = 0xD000000000000017;
      *(&v123 + 1) = 0x800000010075F1E0;
      v30._countAndFlagsBits = v29;
      v30._object = 0xE400000000000000;
      String.append(_:)(v30);

      v31._object = 0x800000010075F200;
      v31._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v31);
      v32 = [objc_opt_self() mainBundle];
      v33 = String._bridgeToObjectiveC()();

      v34 = [v32 localizedStringForKey:v33 value:0 table:0];

      v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v111 = static HorizontalAlignment.center.getter();
      v137 = 0;
      sub_100486510(&v131);
      v119 = v133;
      v120 = v134;
      v121 = v135;
      v117 = v131;
      v118 = v132;
      v125 = v133;
      v126 = v134;
      v127 = v135;
      v123 = v131;
      v124 = v132;
      sub_10001B104(&v117, v130, &qword_1008EEBE8, &qword_1006F34F8);
      sub_10000EA04(&v123, &qword_1008EEBE8, &qword_1006F34F8);
      *&v136[23] = v118;
      *&v136[39] = v119;
      *&v136[55] = v120;
      *&v136[71] = v121;
      *&v136[7] = v117;
      v37 = v137;
      LOBYTE(v32) = static Edge.Set.all.getter();
      v130[0] = 0;
      v38 = static Alignment.center.getter();
      v40 = v39;
      v41 = v104;
      v42 = v104 + *(v101 + 36);
      *v42 = static HorizontalAlignment.center.getter();
      *(v42 + 8) = 0x4014000000000000;
      *(v42 + 16) = 0;
      v43 = sub_100140278(&qword_1008EEBF0, &qword_1006F3500);
      sub_1004865C8(v110, v36, v25, (v42 + *(v43 + 44)));

      v44 = swift_getKeyPath();
      v45 = v42 + *(sub_100140278(&qword_1008EEBF8, &qword_1006F3538) + 36);
      *v45 = v44;
      *(v45 + 8) = 1;
      v46 = (v42 + *(sub_100140278(&qword_1008EEB30, &qword_1006F3398) + 36));
      *v46 = v38;
      v46[1] = v40;
      v47 = *v136;
      *(v41 + 33) = *&v136[16];
      *(v41 + 17) = v47;
      *(v41 + 96) = *&v136[79];
      v48 = *&v136[48];
      *(v41 + 81) = *&v136[64];
      v49 = *&v136[32];
      *(v41 + 65) = v48;
      *v41 = v111;
      *(v41 + 8) = 0;
      *(v41 + 16) = v37;
      *(v41 + 49) = v49;
      *(v41 + 104) = v32;
      *(v41 + 108) = *(&v131 + 3);
      *(v41 + 105) = v131;
      *(v41 + 112) = xmmword_1006D5580;
      *(v41 + 128) = xmmword_1006D5580;
      *(v41 + 144) = 0;
      sub_10001B104(v41, v103, &qword_1008EEB10, &qword_1006F3388);
      swift_storeEnumTagMultiPayload();
      sub_100487864();
      v50 = v105;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v50, v114, &qword_1008EEB00, &qword_1006F3380);
      swift_storeEnumTagMultiPayload();
      sub_1004874AC();
      sub_1004877E0();
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v50, &qword_1008EEB00, &qword_1006F3380);
      v51 = v41;
      return sub_10000EA04(v51, &qword_1008EEB10, &qword_1006F3388);
    }

    __break(1u);
  }

  else
  {
    v75 = v23;
    type metadata accessor for DashboardCardCellViewCache(0);
    sub_100073C68(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v104 = v123;
    v76 = v124;
    v77 = *(v23 + *(v21 + 36));
    v78 = v98;
    sub_1004A9424(v75, v98, type metadata accessor for FitnessPlusUpNextView);
    v79 = (*(v96 + 80) + 24) & ~*(v96 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v24;
    sub_10002B9C4(v78, v80 + v79, type metadata accessor for FitnessPlusUpNextView);
    LOBYTE(v131) = 1;
    sub_100221040(v24);

    State.init(wrappedValue:)();
    LOBYTE(v79) = v117;
    v81 = *(&v117 + 1);
    LOBYTE(v131) = 0;
    v82 = State.init(wrappedValue:)();
    v105 = &v94;
    v83 = v117;
    *&v118 = v76;
    v84 = *(&v117 + 1);
    v117 = v104;
    BYTE8(v118) = v79;
    *&v119 = v81;
    BYTE8(v119) = v83;
    *&v120 = v84;
    *(&v120 + 1) = v24;
    LOBYTE(v121) = v77;
    *(&v121 + 1) = sub_1004A83FC;
    v122 = v80;
    __chkstk_darwin(v82);
    *(&v94 - 2) = v75;
    *(&v94 - 1) = v24;
    v85 = sub_100140278(&qword_1008EEAD8, &qword_1006F3370);
    v86 = sub_100140278(&qword_1008EEAE0, &qword_1006F3378);
    v87 = sub_10014A6B0(&qword_1008EEAE8, &qword_1008EEAD8, &qword_1006F3370, &unk_1006E8A48);
    v88 = sub_10014A6B0(&qword_1008EEAF0, &qword_1008EEAE0, &qword_1006F3378, &protocol conformance descriptor for TupleView<A>);
    v89 = v99;
    View.accessibilityRepresentation<A>(representation:)();
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v128 = v122;
    v123 = v117;
    v124 = v118;
    sub_10000EA04(&v123, &qword_1008EEAD8, &qword_1006F3370);
    v90 = v100;
    v91 = v111;
    (*(v100 + 16))(v109, v89, v111);
    swift_storeEnumTagMultiPayload();
    v92 = sub_100487644();
    *&v117 = v106;
    *(&v117 + 1) = v92;
    swift_getOpaqueTypeConformance2();
    *&v117 = v85;
    *(&v117 + 1) = v86;
    *&v118 = v87;
    *(&v118 + 1) = v88;
    swift_getOpaqueTypeConformance2();
    v93 = v110;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v93, v114, &qword_1008EEA80, &qword_1006F3340);
    swift_storeEnumTagMultiPayload();
    sub_1004874AC();
    sub_1004877E0();
    _ConditionalContent<>.init(storage:)();
    sub_10000EA04(v93, &qword_1008EEA80, &qword_1006F3340);
    return (*(v90 + 8))(v89, v91);
  }

  return result;
}

void sub_100484EB4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100484F34(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100484FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v7 = *(View - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(View - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_100140278(&qword_1008EED40, &qword_1006F3718);
  sub_10049ACD0(a1);
  v22 = v10;
  swift_getKeyPath();
  sub_1004A9424(a2, v9, type metadata accessor for FitnessPlusUpNextView);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10002B9C4(v9, v12 + v11, type metadata accessor for FitnessPlusUpNextView);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1004A8870;
  *(v13 + 24) = v12;
  sub_100140278(&qword_1008EED48, &qword_1006F3750);
  sub_100140278(&qword_1008EED50, &qword_1006F3758);
  sub_10014A6B0(&qword_1008EED58, &qword_1008EED48, &qword_1006F3750, &protocol conformance descriptor for [A]);
  v14 = sub_100141EEC(&qword_1008EED60, &qword_1006F3760);
  v15 = sub_100141EEC(&qword_1008EEC28, &qword_1006F3588);
  v16 = sub_1004A8478();
  v20 = v15;
  v21 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = v14;
  v21 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100485260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a4;
  v30 = type metadata accessor for CatalogLockup();
  v6 = *(v30 - 8);
  v31 = *(v6 + 64);
  __chkstk_darwin(v30);
  v35 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v28 = *(View - 8);
  v27 = *(v28 + 64);
  __chkstk_darwin(View - 8);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100140278(&qword_1008EEC28, &qword_1006F3588);
  __chkstk_darwin(v10);
  v12 = (&v26 - v11);
  v29 = sub_100140278(&qword_1008EED60, &qword_1006F3760);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v26 - v13;
  sub_10047F2C8(a2, v12);
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v15 = sub_1004A8478();
  View.containerRelativeFrame(_:alignment:)();
  sub_10000EA04(v12, &qword_1008EEC28, &qword_1006F3588);
  v16 = a3;
  v17 = v26;
  sub_1004A9424(v16, v26, type metadata accessor for FitnessPlusUpNextView);
  v18 = a2;
  v19 = v30;
  (*(v6 + 16))(v35, v18, v30);
  v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v21 = (v27 + *(v6 + 80) + v20) & ~*(v6 + 80);
  v22 = (v31 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  sub_10002B9C4(v17, v23 + v20, type metadata accessor for FitnessPlusUpNextView);
  (*(v6 + 32))(v23 + v21, v35, v19);
  *(v23 + v22) = v33;
  v36 = v10;
  v37 = v15;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  View.onTapGesture(count:perform:)();

  return (*(v32 + 8))(v14, v24);
}

void sub_100485634(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v57 = a3;
  v4 = type metadata accessor for AccessibilityActionKind();
  v66 = *(v4 - 8);
  __chkstk_darwin(v4);
  v65 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for CatalogLockup();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = v7;
  v61 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v9 = View - 8;
  v54 = *(View - 8);
  __chkstk_darwin(View);
  v55 = v10;
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100140278(&qword_1008EEC28, &qword_1006F3588);
  __chkstk_darwin(v68);
  v15 = (&v47 - v14);
  v16 = sub_100140278(&qword_1008EEC30, &qword_1006F3590);
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = sub_100140278(&qword_1008EEC38, &qword_1006F3598);
  __chkstk_darwin(v19 - 8);
  v64 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v63 = &v47 - v22;
  v23 = a1;
  v52 = a1 + *(v9 + 28);
  v24 = *(v52 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v53 = v24;
  static Published.subscript.getter();

  v25 = v69;
  if ((v69 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26 = *(v67 + 16);
    if (v69 < v26)
    {
      v49 = v4;
      v27 = v6;
      v28 = *(v6 + 80);
      v50 = v26;
      v29 = v67 + ((v28 + 32) & ~v28) + *(v6 + 72) * v69;
      sub_10047F2C8(v29, v15);
      static AccessibilityChildBehavior.combine.getter();
      v67 = sub_1004A8478();
      v48 = v18;
      View.accessibilityElement(children:)();
      (*(v11 + 8))(v13, v51);
      sub_10000EA04(v15, &qword_1008EEC28, &qword_1006F3588);
      v30 = v56;
      sub_1004A9424(v23, v56, type metadata accessor for FitnessPlusUpNextView);
      v31 = v61;
      v32 = v62;
      (*(v27 + 16))(v61, v29, v62);
      v33 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v34 = (v55 + v28 + v33) & ~v28;
      v35 = (v60 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      sub_10002B9C4(v30, v36 + v33, type metadata accessor for FitnessPlusUpNextView);
      (*(v27 + 32))(v36 + v34, v31, v32);
      *(v36 + v35) = v25;
      v37 = v65;
      static AccessibilityActionKind.default.getter();
      v69 = v68;
      v70 = v67;
      swift_getOpaqueTypeConformance2();
      v38 = v63;
      v39 = v59;
      v40 = v48;
      View.accessibilityAction(_:_:)();

      (*(v66 + 8))(v37, v49);
      (*(v58 + 8))(v40, v39);
      type metadata accessor for DashboardCardCellViewCache(0);
      sub_100073C68(&qword_1008DD018, type metadata accessor for DashboardCardCellViewCache, &unk_1006DB780);
      ObservedObject.projectedValue.getter();
      swift_getKeyPath();
      ObservedObject.Wrapper.subscript.getter();

      v41 = v69;
      v42 = v70;
      v43 = v71;
      v44 = v64;
      sub_10001B104(v38, v64, &qword_1008EEC38, &qword_1006F3598);
      v45 = v57;
      sub_10001B104(v44, v57, &qword_1008EEC38, &qword_1006F3598);
      v46 = (v45 + *(sub_100140278(&qword_1008EEC88, &unk_1006F35E0) + 48));
      *v46 = v50;
      v46[1] = v41;
      v46[2] = v42;
      v46[3] = v43;

      sub_10000EA04(v38, &qword_1008EEC38, &qword_1006F3598);

      sub_10000EA04(v44, &qword_1008EEC38, &qword_1006F3598);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_100485DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v72 = a1;
  v64 = a2;
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v3 = *(View - 8);
  v73 = View - 8;
  v71 = v3;
  v70 = *(v3 + 64);
  __chkstk_darwin(View - 8);
  v66 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100140278(&qword_1008EED78, &qword_1006F3778) - 8;
  __chkstk_darwin(v74);
  v75 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v59 - v7;
  LocalizedStringKey.init(stringLiteral:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Font.title2.getter();
  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;

  sub_10004642C(v8, v10, v12 & 1);

  static Font.Weight.bold.getter();
  v18 = Text.fontWeight(_:)();
  v67 = v19;
  v68 = v18;
  v65 = v20;
  v69 = v21;
  sub_10004642C(v13, v15, v17 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  static Font.subheadline.getter();
  v27 = Text.font(_:)();
  v29 = v28;
  LOBYTE(v10) = v30;

  sub_10004642C(v22, v24, v26 & 1);

  v78[0] = static HierarchicalShapeStyle.secondary.getter();
  v31 = Text.foregroundStyle<A>(_:)();
  v60 = v31;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  sub_10004642C(v27, v29, v10 & 1);

  v35 = v72;
  v36 = v66;
  sub_1004A9424(v72, v66, type metadata accessor for FitnessPlusUpNextView);
  v37 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v38 = swift_allocObject();
  sub_10002B9C4(v36, v38 + v37, type metadata accessor for FitnessPlusUpNextView);
  v39 = v76;
  Button.init(action:label:)();
  v40 = static Color.keyTint.getter();
  KeyPath = swift_getKeyPath();
  v42 = (v39 + *(sub_100140278(&qword_1008EED80, &qword_1006F37B0) + 36));
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = *(v73 + 32);
  LOBYTE(v43) = *(v35 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 28) + v43);
  *(v39 + *(sub_100140278(&qword_1008EED88, &qword_1006F37B8) + 36)) = (v43 & 1) == 0;
  LOBYTE(v43) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v44 = v75;
  v45 = v39 + *(v74 + 44);
  *v45 = v43;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  LOBYTE(v43) = v65 & 1;
  v77 = v65 & 1;
  sub_10001B104(v39, v44, &qword_1008EED78, &qword_1006F3778);
  v51 = v67;
  v50 = v68;
  v53 = v63;
  v52 = v64;
  *v64 = v68;
  v52[1] = v51;
  *(v52 + 16) = v43;
  v52[3] = v69;
  v52[4] = v31;
  v54 = v61;
  v52[5] = v61;
  LOBYTE(KeyPath) = v62 & 1;
  *(v52 + 48) = v62 & 1;
  v52[7] = v53;
  v55 = v52;
  v56 = sub_100140278(&qword_1008EED90, &qword_1006F37C0);
  sub_10001B104(v44, v55 + *(v56 + 64), &qword_1008EED78, &qword_1006F3778);
  sub_10006965C(v50, v51, v43);

  v57 = v60;
  sub_10006965C(v60, v54, KeyPath);

  sub_10000EA04(v76, &qword_1008EED78, &qword_1006F3778);
  sub_10000EA04(v44, &qword_1008EED78, &qword_1006F3778);
  sub_10004642C(v57, v54, KeyPath);

  sub_10004642C(v50, v51, v77);
}

uint64_t sub_100486360(uint64_t a1)
{
  View = type metadata accessor for FitnessPlusUpNextView(0);
  sub_10001B104(a1 + *(View + 28), v7, &qword_1008DC808, &unk_1006D4FD0);
  if (!v8)
  {
    return sub_10000EA04(v7, &qword_1008DC808, &unk_1006D4FD0);
  }

  v3 = sub_1000066AC(v7, v8);
  v4 = *(View + 24);
  memset(v6, 0, sizeof(v6));
  sub_10049BEA4(a1 + v4, v6, *v3);
  sub_10000EA04(v6, &qword_1008E51F0, qword_1006D50E0);
  return sub_100005A40(v7);
}

uint64_t sub_10048641C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10004642C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

double sub_100486510@<D0>(uint64_t a2@<X8>)
{
  v3 = static Color.clear.getter();
  v4 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v3;
  *(a2 + 8) = 0x3FFC71C71C71C71CLL;
  *(a2 + 16) = 0;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  result = *&v10;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_1004865C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v68 = a1;
  v69 = a3;
  v67 = a2;
  v72 = a4;
  v70 = sub_100140278(&qword_1008EED78, &qword_1006F3778) - 8;
  __chkstk_darwin(v70);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v73 = &v62 - v6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v63 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v62 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v74 = v14;
  v75 = v16;
  sub_10000FCBC();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v16) = v20;
  static Font.title2.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  sub_10004642C(v17, v19, v16 & 1);

  static Font.Weight.bold.getter();
  v26 = Text.fontWeight(_:)();
  v65 = v27;
  v66 = v28;
  v64 = v29;
  sub_10004642C(v21, v23, v25 & 1);

  String.LocalizationValue.init(_:)();
  static Locale.current.getter();
  v74 = String.init(localized:table:bundle:locale:comment:)();
  v75 = v30;
  v31 = Text.init<A>(_:)();
  v33 = v32;
  LOBYTE(v11) = v34;
  static Font.subheadline.getter();
  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v19) = v38;

  sub_10004642C(v31, v33, v11 & 1);

  LODWORD(v74) = static HierarchicalShapeStyle.secondary.getter();
  v63 = Text.foregroundStyle<A>(_:)();
  v40 = v39;
  LODWORD(v67) = v41;
  v68 = v42;
  sub_10004642C(v35, v37, v19 & 1);

  v43 = v73;
  Button.init(action:label:)();
  v44 = static Color.keyTint.getter();
  KeyPath = swift_getKeyPath();
  v46 = (v43 + *(sub_100140278(&qword_1008EED80, &qword_1006F37B0) + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  v47 = v69 + *(type metadata accessor for FitnessPlusUpNextView(0) + 24);
  LOBYTE(v47) = *(v47 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 28));
  *(v43 + *(sub_100140278(&qword_1008EED88, &qword_1006F37B8) + 36)) = (v47 & 1) == 0;
  LOBYTE(v47) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v48 = v71;
  v49 = v43 + *(v70 + 44);
  *v49 = v47;
  *(v49 + 8) = v50;
  *(v49 + 16) = v51;
  *(v49 + 24) = v52;
  *(v49 + 32) = v53;
  *(v49 + 40) = 0;
  LOBYTE(v47) = v64 & 1;
  LOBYTE(v74) = v64 & 1;
  sub_10001B104(v43, v48, &qword_1008EED78, &qword_1006F3778);
  v54 = v72;
  v55 = v26;
  *v72 = v26;
  v57 = v65;
  v56 = v66;
  v54[1] = v65;
  *(v54 + 16) = v47;
  v58 = v63;
  v54[3] = v56;
  v54[4] = v58;
  v54[5] = v40;
  LOBYTE(v16) = v67 & 1;
  *(v54 + 48) = v67 & 1;
  v54[7] = v68;
  v59 = v54;
  v60 = sub_100140278(&qword_1008EED90, &qword_1006F37C0);
  sub_10001B104(v48, v59 + *(v60 + 64), &qword_1008EED78, &qword_1006F3778);
  sub_10006965C(v55, v57, v47);

  sub_10006965C(v58, v40, v16);

  sub_10000EA04(v73, &qword_1008EED78, &qword_1006F3778);
  sub_10000EA04(v48, &qword_1008EED78, &qword_1006F3778);
  sub_10004642C(v58, v40, v16);

  sub_10004642C(v55, v57, v74);
}

id sub_100486BB0()
{
  v0 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000EA04(v2, &unk_1008EB5B0, &unk_1006D2BF0);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    sub_1002FC244(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openSensitiveURL:v11 withOptions:isa];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100486DDC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000FCBC();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

double sub_100486EC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v6 = *(View - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(View - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  *&result = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18 - v11;
  v13 = *a2;
  if (v13 >= 4)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    sub_1004A9424(a3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FitnessPlusUpNextView);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = &protocol witness table for MainActor;
    v17[4] = v13;
    sub_10002B9C4(v8, v17 + v16, type metadata accessor for FitnessPlusUpNextView);
    sub_10026E198(0, 0, v12, &unk_1006F34C8, v17);
  }

  return result;
}

double sub_1004870C4(uint64_t a1)
{
  View = type metadata accessor for FitnessPlusUpNextView(0);
  v3 = View - 8;
  v4 = *(View - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(View);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = a1 + *(v3 + 32);
  v11 = *(v10 + *(type metadata accessor for FitnessPlusUpNextCard(0) + 36));
  if (v11 >= 4)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_1004A9424(a1, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FitnessPlusUpNextView);
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v11;
    sub_10002B9C4(v6, v16 + v15, type metadata accessor for FitnessPlusUpNextView);
    sub_10026E198(0, 0, v9, &unk_1006F3460, v16);
  }

  return result;
}

uint64_t sub_1004872D8@<X0>(uint64_t *a2@<X8>)
{
  result = CatalogLockup.identifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_10048731C(uint64_t a1, unint64_t *a2)
{
  v5 = *(type metadata accessor for FitnessPlusUpNextView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100486EC8(a1, a2, v6);
}

unint64_t sub_10048739C()
{
  result = qword_1008EEA60;
  if (!qword_1008EEA60)
  {
    sub_100141EEC(&qword_1008EEA10, &qword_1006F32E0);
    sub_100487420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EEA60);
  }

  return result;
}

unint64_t sub_100487420()
{
  result = qword_1008EEA68;
  if (!qword_1008EEA68)
  {
    sub_100141EEC(&qword_1008EEA70, &qword_1006F3338);
    sub_1004874AC();
    sub_1004877E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EEA68);
  }

  return result;
}