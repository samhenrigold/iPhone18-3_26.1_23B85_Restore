uint64_t sub_1002E35AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1002EA58C(&qword_100977FD0, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_1007B6CD8);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1002E3660@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_10013DB10();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1002E3694@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_1001E13C4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1002E36EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x258);
  v5 = *(v3 + 0x238);
  v22[0] = *(v3 + 0x228);
  v22[1] = v5;
  v22[2] = *(v3 + 584);
  v23 = v4;
  type metadata accessor for BaseDiffableShelfViewController(0, v22);
  swift_getWitnessTable();
  v6 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_1000073E8(v24, v22);
  sub_100056164(v22, v20);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100034090(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100034090((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v25, v22);
  sub_100056164(v22, v20);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100034090(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_100034090((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    v8[2] = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10002C0AC(v22, v20);

  v15 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  result = sub_100007000(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_1002E3A40()
{
  v0 = sub_1002E9EA4();

  return v0;
}

void sub_1002E3A7C(uint64_t a1)
{
  v3 = qword_10097F2F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002E3B34(uint64_t a1)
{
  v3 = qword_10097F2F8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002E3C10(char a1)
{
  v2 = qword_1009CF428;
  if (*(v1 + qword_1009CF428) == (a1 & 1))
  {
    return;
  }

  v3 = qword_10097F318;
  if (!*(v1 + qword_1009CF428) || *(v1 + qword_10097F318))
  {
    v4 = *(v1 + qword_10097F318);
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  type metadata accessor for BarButtonItemHidingScrollObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v1 + v3) = v5;
  if (*(v1 + qword_10097F318))
  {
    sub_1002EA58C(&unk_10097F5D0, type metadata accessor for BarButtonItemHidingScrollObserver, &unk_1007C63F4);
  }

  CompoundScrollObserver.addChild(_:)();

  v4 = *(v1 + qword_10097F318);
  if (v4)
  {
LABEL_5:
    *(v4 + 24) = *(v1 + v2);

    sub_1002D9730();
  }
}

void sub_1002E3D5C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = sub_10002849C(&unk_10097F4A0, &qword_1007C6948);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  v9 = *((v3 & v2) + 0x258);
  v10 = *(v4 + 568);
  v49[0] = *(v4 + 552);
  v49[1] = v10;
  v49[2] = *(v4 + 584);
  v50 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v49);
  v51.receiver = v1;
  v51.super_class = v11;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_10045B2A0(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v14 = static UIColor.defaultBackground.getter();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 launchedToTest];

  if (v21)
  {

    dispatch thunk of InfiniteScrollObserver.pptAllowedPaginationCount.setter();
  }

  swift_getWitnessTable();
  ShelfBasedCollectionViewController.prepareLayoutDependencies()();
  (*((swift_isaMask & *v1) + 0x498))();
  dispatch thunk of DiffablePagePresenter.viewDidLoad()();
  v22 = [v1 collectionView];
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  [v22 setPrefetchDataSource:v1];

  v24 = qword_10097F2F8;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (v25)
  {
    v48 = v5;
    v26 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10002849C(&qword_10097F4B0, &qword_1007C6950);
    swift_allocObject();
    v28 = v25;
    v47 = v26;
    swift_retain_n();
    *(v27 + 32) = SyncEvent.init()();
    v46 = v28;
    swift_unknownObjectWeakAssign();
    *(v27 + 24) = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002EA034;
    *(v29 + 24) = 0;
    sub_100097060(&qword_10097F4B8, &qword_10097F4B0, &qword_1007C6950, &protocol conformance descriptor for SyncEvent<A>);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v49);
    (*(v6 + 8))(v8, v48);
    v30 = sub_1002EA58C(&qword_10097F4C0, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007C42D4);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v27;
    v32[4] = v30;

    v33 = v1;
    v34 = sub_1002EA0A8(v27, v33, sub_1002EA09C, v32, v47);

    v35 = *(v33 + qword_10097F308);
    *(v33 + qword_10097F308) = v34;
    v36 = v34;

    *(v33 + qword_10097F300) = v27;

    v37 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v36];
    v38 = [v33 collectionView];
    if (v38)
    {
      v39 = v38;
      [v38 addInteraction:v37];

      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_12:
  if (*(v1 + qword_10097F310))
  {
    v40 = [v1 collectionView];
    ImpressionsScrollObserver.collectionView.setter();
  }

  v41 = *(v1 + qword_10097F318);
  if (v41)
  {
    v42 = *((swift_isaMask & *v1) + 0x3F8);

    v44 = v42(v43);
    v45 = *(v41 + 16);
    *(v41 + 16) = v44;
  }
}

void sub_1002E4488(void *a1)
{
  v1 = a1;
  sub_1002E3D5C();
}

uint64_t sub_1002E44D0(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v9[0] = *(v4 + 0x228);
  v9[1] = v6;
  v9[2] = *(v4 + 584);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  if ((*(v2 + qword_1009CF3E8) & 1) == 0)
  {
    dispatch thunk of TimedMetricsPagePresenter.didLoad()();
  }

  dispatch thunk of DiffablePagePresenter.viewWillAppear()();
  return ArtworkLoader.isOccluded.setter();
}

void sub_1002E45D4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E44D0(a3);
}

void sub_1002E4628(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v10[0] = *(v4 + 0x228);
  v10[1] = v6;
  v10[2] = *(v4 + 584);
  v11 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v10);
  v12.receiver = v2;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  dispatch thunk of DiffablePagePresenter.viewDidAppear()();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v8 = *&v10[0];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (*&v10[0])
  {
    v9 = *&v10[0];
    dispatch thunk of PlaybackCoordinator.resume()();

    v8 = v9;
  }
}

void sub_1002E4780(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E4628(a3);
}

void sub_1002E47D4(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = type metadata accessor for ViewWillDisappearReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x258);
  v12 = *(v6 + 568);
  v16[0] = *(v6 + 552);
  v16[1] = v12;
  v16[2] = *(v6 + 584);
  v17 = v11;
  v13 = type metadata accessor for BaseDiffableShelfViewController(0, v16);
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  static ViewWillDisappearReason.inferred(for:)();
  dispatch thunk of DiffablePagePresenter.viewWillDisappear(forReason:)();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_1009CF420) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v14 = *&v16[0];
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  type metadata accessor for PlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = *&v16[0];
  dispatch thunk of PlaybackCoordinator.pause()();
}

void sub_1002E49F8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E47D4(a3);
}

uint64_t sub_1002E4A4C(char a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x258);
  v6 = *(v4 + 0x238);
  v9[0] = *(v4 + 0x228);
  v9[1] = v6;
  v9[2] = *(v4 + 584);
  v10 = v5;
  v7 = type metadata accessor for BaseDiffableShelfViewController(0, v9);
  v11.receiver = v2;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  dispatch thunk of DiffablePagePresenter.viewDidDisappear()();
  return ArtworkLoader.isOccluded.setter();
}

void sub_1002E4B2C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E4A4C(a3);
}

void sub_1002E4BB4(void *a1)
{
  v1 = a1;
  sub_1002E50FC(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_1002E4C30()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6[0] = *(v1 + 0x228);
  v6[1] = v3;
  v6[2] = *(v1 + 584);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible");
  return dispatch thunk of DiffablePagePresenter.viewWillBecomePartiallyVisible()();
}

void sub_1002E4CF0(void *a1)
{
  v1 = a1;
  sub_1002E4C30();
}

void sub_1002E4D38()
{
  v1 = swift_isaMask & *v0;
  v6 = *(v1 + 0x228);
  v2 = *(v1 + 576);
  v7 = *(v1 + 560);
  v8 = v2;
  v9 = *(v1 + 592);
  v3 = type metadata accessor for BaseDiffableShelfViewController(0, &v6);
  v10.receiver = v0;
  v10.super_class = v3;
  objc_msgSendSuper2(&v10, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  AppStoreViewControllerPresenter.viewDidBecomePartiallyVisible()();
  if (*(v0 + qword_1009CF420) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v4 = v6;
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for PlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = v6;
  dispatch thunk of PlaybackCoordinator.pause()();
}

void sub_1002E4ED8(void *a1)
{
  v1 = a1;
  sub_1002E4D38();
}

void sub_1002E4F20()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v8[0] = *(v1 + 0x228);
  v8[1] = v3;
  v8[2] = *(v1 + 584);
  v9 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v8);
  v10.receiver = v0;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  dispatch thunk of DiffablePagePresenter.viewWillBecomeFullyVisible()();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = *&v8[0];
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v6 = *&v8[0];
  if (*&v8[0])
  {
    v7 = *&v8[0];
    dispatch thunk of PlaybackCoordinator.resume()();
  }

  ArtworkLoader.isOccluded.setter();
}

void sub_1002E5080(void *a1)
{
  v1 = a1;
  sub_1002E4F20();
}

uint64_t sub_1002E50FC(SEL *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v12 = *(v6 + 0x228);
  v7 = *(v6 + 576);
  v13 = *(v6 + 560);
  v11 = v13;
  v14 = v7;
  v15 = *(v6 + 592);
  v8 = type metadata accessor for BaseDiffableShelfViewController(0, &v12);
  v16.receiver = v3;
  v16.super_class = v8;
  objc_msgSendSuper2(&v16, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v11, WitnessTable);
}

void sub_1002E51E4(void *a1)
{
  v1 = a1;
  sub_1002E50FC(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_1002E5260(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *((v4 & v3) + 0x258);
  v10 = *(v5 + 568);
  v18[0] = *(v5 + 552);
  v18[1] = v10;
  v18[2] = *(v5 + 584);
  v19 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController(0, v18);
  v20.receiver = v1;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = [v1 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 collectionViewLayout];

      [v15 invalidateLayout];
    }

    sub_1002DFE08();
    v16 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1002DFFDC(v8);
    sub_10002B894(v8, &unk_10097F490, &qword_1007C2210);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
      return sub_10045B2A0(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002E54E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002E5260(a3);
}

id sub_1002E554C(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = swift_isaMask & *v3;
  v11 = sub_10002849C(&unk_10097F490, &qword_1007C2210);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *((v9 & v8) + 0x258);
  v15 = *(v10 + 568);
  aBlock = *(v10 + 552);
  v23 = v15;
  v24 = *(v10 + 584);
  v25 = v14;
  v16 = type metadata accessor for BaseDiffableShelfViewController(0, &aBlock);
  v26.receiver = v4;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = [v4 isViewLoaded];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *&v24 = sub_1002EA028;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1006D1458;
    *(&v23 + 1) = &unk_1008BCF70;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_1002DFE08();
    v21 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_1002DFFDC(v13);
    sub_10002B894(v13, &unk_10097F490, &qword_1007C2210);
    swift_getWitnessTable();
    return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  return result;
}

void sub_1002E57F4(double a1, double a2, uint64_t a3, void *a4)
{
  v5 = swift_isaMask & *a4;
  v8 = *(v5 + 0x258);
  v9 = *(v5 + 0x238);
  v13[0] = *(v5 + 0x228);
  v13[1] = v9;
  v13[2] = *(v5 + 584);
  v14 = v8;
  type metadata accessor for BaseDiffableShelfViewController(0, v13);
  sub_10045B2A0(*&a1, *&a2, 0);
  v10 = [a4 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }
}

void sub_1002E5910(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002E554C(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1002E5990()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[69];
    v4[2] = v18;
    v17 = v1[70];
    v4[3] = v17;
    v5 = v1[71];
    v4[4] = v5;
    v6 = v1[72];
    v4[5] = v6;
    v7 = v1[73];
    v4[6] = v7;
    v8 = v1[74];
    v4[7] = v8;
    v9 = v1[75];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_10002849C(&unk_10097F470, &unk_1007C6920));
    v11 = ModelMappedDiffableDataSource.init(collectionView:cellProvider:)();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *&v14 = v18;
    *(&v14 + 1) = v17;
    *&v15 = v5;
    *(&v15 + 1) = v6;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v12;
    v16 = v11;

    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1002E5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_10097F2F8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10002B894(v16, &qword_100977FB8, &unk_1007C4330);
      return 0;
    }

    v27[0] = a11;
    v27[1] = a2;
    (*(v18 + 32))(v20, v16, v17);

    v30[0] = a5;
    v30[1] = a6;
    v30[2] = v28;
    v30[3] = v29;
    v30[4] = a9;
    v30[5] = a10;
    v30[6] = v27[0];
    type metadata accessor for BaseDiffableShelfViewController(0, v30);
    swift_getWitnessTable();
    v26 = ShelfBasedCollectionViewController.collectionViewCellProvider(indexPath:item:asPartOf:)();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_1002E5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
  }

  v21[0] = a6;
  v21[1] = a7;
  v21[2] = a8;
  v21[3] = a9;
  v21[4] = a10;
  v21[5] = a11;
  v21[6] = a12;
  type metadata accessor for BaseDiffableShelfViewController(0, v21);
  swift_getWitnessTable();
  v19 = ShelfBasedCollectionViewController.supplementaryViewProvider(elementKind:indexPath:asPartOf:)();

  return v19;
}

id sub_1002E5FF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;

    (*((swift_isaMask & *v1) + 0x488))(v8, v10);
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 784))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 552);
    *(v14 + 24) = *(v3 + 560);
    *(v14 + 40) = *(v3 + 576);
    *(v14 + 48) = *(v3 + 584);
    *(v14 + 64) = *(v3 + 600);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_1002E9EB4;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1002E9BD4;
    v18[3] = &unk_1008BCEA8;
    v16 = _Block_copy(v18);

    v17 = [v15 initWithSectionProvider:v16 configuration:v4];

    _Block_release(v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E62A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = type metadata accessor for Dependency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = a9;
  v27 = a10;
  v29 = a2;
  v21 = Strong;
  sub_10002849C(&qword_10097F468, &qword_1007C6918);
  v28 = a1;
  v31 = v21;
  v32 = &off_1008BCE00;

  v22 = v21;
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v17 + 8))(v19, v16);

  v31 = v30;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v26;
  v37 = v27;
  type metadata accessor for BaseDiffableShelfViewController(0, &v31);
  swift_getWitnessTable();
  v23 = ShelfBasedCollectionViewController.compositionalLayoutSectionProvider(section:layoutEnvironment:asPartOf:)();

  return v23;
}

uint64_t sub_1002E64C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v36 = a1;
  v14 = type metadata accessor for ShelfBackground();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v37 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v35 - v21;
  v23 = type metadata accessor for ShelfLayoutContext();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_10002B894(v22, &qword_10097F480, &unk_1007C4AB0);
  }

  v28 = Strong;
  v41[0] = a6;
  v41[1] = a7;
  v41[2] = v40;
  v41[3] = a9;
  v41[4] = a10;
  v41[5] = a11;
  v41[6] = a12;
  type metadata accessor for BaseDiffableShelfViewController(0, v41);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10002B894(v22, &qword_10097F480, &unk_1007C4AB0);
  }

  (*(v24 + 32))(v26, v22, v23);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v37 + 8))(v19, v17);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 88))(v16, v39) == enum case for ShelfBackground.color(_:))
  {
    (*(v30 + 96))(v16, v29);
    v31 = *v16;
    v32 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
    v33 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v33 - 8) + 8))(v16 + v32, v33);
    [v36 setBackgroundColor:v31];

    return (*(v24 + 8))(v26, v23);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return (*(v30 + 8))(v16, v29);
  }
}

void sub_1002E6934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v49 = type metadata accessor for ShelfBackground();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v44 - v14;
  v16 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = type metadata accessor for ShelfLayoutContext();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v45 = a1;
    v28 = qword_10097F2F8;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (!v29)
    {

      return;
    }

    v30 = v29;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v31 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v23 + 8))(v25, v22);
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        return;
      }

      v33 = v32;
      v34 = v20;
      v55[0] = v51;
      v55[1] = v52;
      v55[2] = v53;
      v55[3] = a9;
      v55[4] = a10;
      v55[5] = a11;
      v55[6] = a12;
      type metadata accessor for BaseDiffableShelfViewController(0, v55);
      swift_getWitnessTable();
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

      v35 = (*(v20 + 48))(v18, 1, v19);
      v36 = v54;
      if (v35 != 1)
      {
        (*(v34 + 32))(v54, v18, v19);
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v37 = v50;
        v38 = v47;
        ReadOnlyLens.subscript.getter();

        (*(v46 + 8))(v15, v38);
        v39 = v48;
        v40 = v49;
        if ((*(v48 + 88))(v37, v49) == enum case for ShelfBackground.color(_:))
        {
          (*(v39 + 96))(v37, v40);
          v41 = *v37;
          v42 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
          v43 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v43 - 8) + 8))(v37 + v42, v43);
          [v45 setBackgroundColor:v41];

          (*(v34 + 8))(v36, v19);
        }

        else
        {
          (*(v34 + 8))(v36, v19);
          (*(v39 + 8))(v37, v40);
        }

        return;
      }
    }

    else
    {
      (*(v20 + 56))(v18, 1, 1, v19);
    }

    sub_10002B894(v18, &qword_10097F480, &unk_1007C4AB0);
  }
}

uint64_t sub_1002E6F0C(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_100031660(a2, &v7, &unk_1009711D0, &unk_1007B1A10);
  sub_100031660(&v6, &v4, &qword_10097C510, &qword_1007C4328);
  v2 = v4;

  sub_1002E250C(v2, v5);

  sub_10002B894(&v6, &qword_10097C510, &qword_1007C4328);
  return sub_10002B894(v5, &unk_1009711D0, &unk_1007B1A10);
}

double sub_1002E6FE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter();

    if (v5)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

uint64_t sub_1002E70BC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ItemLayoutContext();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a2)
  {
    v24 = a1;
    v25 = a4;
    swift_getObjectType();
    v18 = a2;
    dispatch thunk of ShelfComponentView.itemLayoutContext.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10002B894(v12, &unk_1009731E0, &unk_1007B0B60);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 600);
      v20 = *(v9 + 568);
      v26[0] = *(v9 + 552);
      v26[1] = v20;
      v26[2] = *(v9 + 584);
      v27 = v19;
      type metadata accessor for BaseDiffableShelfViewController(0, v26);
      swift_getWitnessTable();
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1002E73A4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002E70BC(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1002E7508(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ItemLayoutContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      dispatch thunk of ShelfComponentView.itemLayoutContext.getter();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10002B894(v9, &unk_1009731E0, &unk_1007B0B60);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 600);
        v18 = *(v6 + 568);
        v26[0] = *(v6 + 552);
        v26[1] = v18;
        v26[2] = *(v6 + 584);
        v27 = v17;
        type metadata accessor for BaseDiffableShelfViewController(0, v26);
        swift_getWitnessTable();
        ShelfBasedCollectionViewController.collectionElementsObserver.getter();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), ObjectType, v20);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v25;
    }
  }
}

uint64_t sub_1002E785C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_1002E7508(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002E7968(uint64_t a1, void *a2)
{
  v2 = swift_isaMask & *a2;
  v3 = *(v2 + 0x258);
  v4 = *(v2 + 0x238);
  v6[0] = *(v2 + 0x228);
  v6[1] = v4;
  v6[2] = *(v2 + 584);
  v7 = v3;
  type metadata accessor for BaseDiffableShelfViewController(0, v6);
  swift_getWitnessTable();
  return ShelfBasedCollectionViewController.itemLayoutContext(at:)();
}

double sub_1002E7A5C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  type metadata accessor for IndexPath();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = a1;
  sub_1002E26A0(v7, v6);

  return result;
}

uint64_t sub_1002E7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v10 - 8);
  v41 = (&v38 - v11);
  v46 = type metadata accessor for ItemLayoutContext();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ShelfLayoutContext();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 1168);
  v42 = a3;
  v43 = a4;
  v21(v56, a3, a4, v18);
  sub_100031660(v56, &v50, &qword_10097F488, &unk_1007C6930);
  v22 = (v9 + 552);
  v23 = (v9 + 568);
  v24 = (v9 + 584);
  if (*(&v51 + 1))
  {
    sub_100005A38(&v50, &v54);
    v40 = *v22;
    v39 = *v23;
    v38 = *v24;
    v25 = *(v9 + 600);
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v25;
    type metadata accessor for BaseDiffableShelfViewController(0, &v50);
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.collectionElementsObserver.getter();
    swift_getObjectType();
    dispatch thunk of CollectionElementsObserver.willDisplayGlobalSupplementary(_:registeredWith:collectionView:asPartOf:)();
    swift_unknownObjectRelease();
    sub_100007000(&v54);
    v26 = v38;
    v27 = v39;
    v28 = v40;
  }

  else
  {
    sub_10002B894(&v50, &qword_10097F488, &unk_1007C6930);
    v28 = *v22;
    v27 = *v23;
    v26 = *v24;
    v25 = *(v9 + 600);
  }

  v50 = v28;
  v51 = v27;
  v52 = v26;
  v53 = v25;
  type metadata accessor for BaseDiffableShelfViewController(0, &v50);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &qword_10097F480, &unk_1007C4AB0);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100005A38(&v54, &v50);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.willDisplayShelfSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v50);
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      sub_10002B894(&v54, &qword_10097F488, &unk_1007C6930);
    }
  }

  v29 = v41;
  ShelfBasedCollectionViewController.itemLayoutContext(at:)();
  v30 = v45;
  v31 = v46;
  v32 = (*(v45 + 48))(v29, 1, v46);
  v33 = v44;
  if (v32 == 1)
  {
    sub_10002B894(v56, &qword_10097F488, &unk_1007C6930);
    v34 = &unk_1009731E0;
    v35 = &unk_1007B0B60;
    v36 = v29;
  }

  else
  {
    (*(v30 + 32))(v44, v29, v31);
    ShelfBasedCollectionViewController.itemSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100005A38(&v54, &v50);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.willDisplayItemSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v50);
      (*(v30 + 8))(v33, v31);
      v34 = &qword_10097F488;
      v35 = &unk_1007C6930;
      v36 = v56;
    }

    else
    {
      (*(v30 + 8))(v33, v31);
      sub_10002B894(v56, &qword_10097F488, &unk_1007C6930);
      v36 = &v54;
      v34 = &qword_10097F488;
      v35 = &unk_1007C6930;
    }
  }

  return sub_10002B894(v36, v34, v35);
}

uint64_t sub_1002E822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a2;
  v50 = a5;
  v48 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v10 - 8);
  v42 = (&v39 - v11);
  v12 = type metadata accessor for ItemLayoutContext();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v45 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v39 - v15;
  v17 = type metadata accessor for ShelfLayoutContext();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 1168);
  v43 = a3;
  v44 = a4;
  v22(&v51, a3, a4, v19);
  v23 = (v9 + 552);
  v24 = (v9 + 568);
  v25 = (v9 + 584);
  if (*(&v52 + 1))
  {
    sub_100005A38(&v51, &v55);
    v41 = *v23;
    v40 = *v24;
    v39 = *v25;
    v26 = *(v9 + 600);
    v51 = v41;
    v52 = v40;
    v53 = v39;
    v54 = v26;
    type metadata accessor for BaseDiffableShelfViewController(0, &v51);
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.collectionElementsObserver.getter();
    swift_getObjectType();
    dispatch thunk of CollectionElementsObserver.didEndDisplayingGlobalSupplementary(_:registeredWith:collectionView:asPartOf:)();
    swift_unknownObjectRelease();
    sub_100007000(&v55);
    v27 = v39;
    v28 = v40;
    v29 = v41;
  }

  else
  {
    sub_10002B894(&v51, &qword_10097F488, &unk_1007C6930);
    v29 = *v23;
    v28 = *v24;
    v27 = *v25;
    v26 = *(v9 + 600);
  }

  v51 = v29;
  v52 = v28;
  v53 = v27;
  v54 = v26;
  type metadata accessor for BaseDiffableShelfViewController(0, &v51);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10002B894(v16, &qword_10097F480, &unk_1007C4AB0);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_100005A38(&v55, &v51);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.didEndDisplayingShelfSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v51);
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      sub_10002B894(&v55, &qword_10097F488, &unk_1007C6930);
    }
  }

  v30 = v42;
  ShelfBasedCollectionViewController.itemLayoutContext(at:)();
  v32 = v46;
  v31 = v47;
  v33 = (*(v46 + 48))(v30, 1, v47);
  v34 = v45;
  if (v33 == 1)
  {
    v35 = &unk_1009731E0;
    v36 = &unk_1007B0B60;
    v37 = v30;
  }

  else
  {
    (*(v32 + 32))(v45, v30, v31);
    ShelfBasedCollectionViewController.itemSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v56)
    {
      sub_100005A38(&v55, &v51);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.didEndDisplayingItemSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v51);
      return (*(v32 + 8))(v34, v31);
    }

    (*(v32 + 8))(v34, v31);
    v35 = &qword_10097F488;
    v36 = &unk_1007C6930;
    v37 = &v55;
  }

  return sub_10002B894(v37, v35, v36);
}

uint64_t sub_1002E88E0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_1002E8A2C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_1002E2A90(v9, v12);

  sub_10002B894(v9, &unk_10097DAE0, &qword_1007B5CA0);
  type metadata accessor for IndexPath();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_1002E8C38(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002E9C50(a4, a5);

  swift_unknownObjectRelease();
}

void sub_1002E8CD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8CBC(v4);
}

void sub_1002E8D5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8D40(v4);
}

void sub_1002E8DE0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8DC4(v4);
}

void sub_1002E8E64(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8E48(v4);
}

void sub_1002E8EF0(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1002E8ECC(v6, a4);
}

uint64_t sub_1002E8F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10002B894(v8, &unk_100972A00, &unk_1007B3130);
    v13 = 0;
  }

  else
  {
    v13 = sub_1005F9AF4(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_1002E90D0(void *a1)
{
  v1 = a1;
  sub_1002DED28();
}

void sub_1002E9118(void *a1)
{
  v1 = a1;
  sub_1002DED48();
}

double sub_1002E9160()
{

  v1 = qword_1009CF3D8;
  v2 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

id sub_1002E92B8()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6[0] = *(v1 + 0x228);
  v6[1] = v3;
  v6[2] = *(v1 + 584);
  v7 = v2;
  v4 = type metadata accessor for BaseDiffableShelfViewController(0, v6);
  v8.receiver = v0;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, "dealloc");
}

double sub_1002E9360(uint64_t a1)
{

  v2 = qword_1009CF3D8;
  v3 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  return result;
}

id sub_1002E95C8()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_1002E9600(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_1002E9648(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_1002E96A4;
}

void sub_1002E96A4(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_1002E96EC()
{
  v0 = sub_1002E9FB0();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002E971C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002E3B8C(v2);
  return sub_1000C2700;
}

void *sub_1002E978C()
{
  v0 = sub_1002E9F6C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002E97BC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002E3AD4(v2);
  return sub_1000C2700;
}

uint64_t (*sub_1002E9834(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002DFCA4(v2);
  return sub_1000B4CAC;
}

double sub_1002E9AD0()
{
  sub_1002E9F5C();

  return result;
}

id sub_1002E9BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1002E9C50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v2;
  v6 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for ShelfLayoutContext();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *((v4 & v3) + 0x258);
  v14 = *(v5 + 568);
  v16[0] = *(v5 + 552);
  v16[1] = v14;
  v16[2] = *(v5 + 584);
  v17 = v13;
  type metadata accessor for BaseDiffableShelfViewController(0, v16);
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10002B894(v8, &qword_10097F480, &unk_1007C4AB0);
  }

  (*(v10 + 32))(v12, v8, v9);
  dispatch thunk of CompoundScrollObserver.didScroll(orthogonalScrollView:in:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1002E9F6C()
{
  v1 = qword_10097F2F0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002E9FB0()
{
  v1 = qword_10097F2F8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1002EA034(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA1DC;
}

id sub_1002EA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002EA58C(&qword_10097F4C0, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007C42D4);
  v9 = sub_10002849C(&qword_10097F4C8, &qword_1007C6958);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

void (*sub_1002EA1F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA4F4;
}

uint64_t (*sub_1002EA25C(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA5DC;
}

uint64_t (*sub_1002EA2C0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA498;
}

void (*sub_1002EA34C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA474;
}

uint64_t (*sub_1002EA3B0(void *a1))(uint64_t, uint64_t)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA5DC;
}

uint64_t (*sub_1002EA414())(uint64_t a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1002EA1D4;
}

uint64_t sub_1002EA58C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002EA5F0(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for NavigationTab();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReferrerData.Kind();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReferrerData();
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v36 = v5;
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v20;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v21 = sub_1003D78D8(v43), (v22 & 1) == 0))
  {

    sub_10003D614(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_1000073E8(*(v19 + 56) + 32 * v21, &v44);
  sub_10003D614(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10002B894(&v44, &unk_1009711D0, &unk_1007B1A10);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v36;
    if (v29)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v27 = v36;
LABEL_14:
  (*(v37 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  ReferrerData.init(app:externalUrl:kind:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v30 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
  v31 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v32 = v40;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10002B894(v33, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005FA0E4(v30, 1, v32, v33);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t _sSo14NSUserActivityC8AppStoreE6handle04userB08asPartOfSbAB_9JetEngine15BaseObjectGraphCtFZ_0(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = type metadata accessor for FlowPresentationContext();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowOrigin();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FlowAnimationBehavior();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = type metadata accessor for FlowPage();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationTab();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReferrerData();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100985B10, qword_1007C69E8);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = type metadata accessor for AppStoreDeepLink();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_1002EA5F0(a1, v35);
  }

  v54 = v5;
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  AppStoreDeepLink.init(userActivity:refApp:)();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10002B894(v24, &qword_100985B10, qword_1007C69E8);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    type metadata accessor for MetricsActivity();
    static MetricsActivity.current.getter();
    AppStoreDeepLink.referral.getter();
    dispatch thunk of MetricsActivity.setReferrerData(_:)();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    type metadata accessor for ASKBagContract();
    BaseObjectGraph.optional<A>(_:)();
    if (v78)
    {
      static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007B0B70;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    AppStoreDeepLink.url.getter();
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    AppStoreDeepLink.referral.getter();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    static ActionMetrics.notInstrumented.getter();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    v48 = *(v64 + 13);
    v64 = v42;
    v48(v69, enum case for FlowOrigin.external(_:), v65);
    (*(v67 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v70);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    *(v44 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v49 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
    v50 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    v51 = v54;
    v52 = v75;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v64, v74);

      sub_10002B894(v51, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005FA0E4(v49, 1, v52, v51);

      (*(v73 + 8))(v64, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

UIColor sub_1002EB6BC()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v0 = [objc_opt_self() whiteColor];
  result.super.isa = UIColor.init(light:dark:)(v0, [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0]).super.isa;
  qword_10097F648 = result.super.isa;
  return result;
}

id sub_1002EB77C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_1002EB7C0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = type metadata accessor for Artwork.Style();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for InAppPurchaseTheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  v16 = type metadata accessor for ArtworkView();
  *&v3[v15] = static ArtworkView.iapIconArtworkView.getter();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics;
  v18 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  InAppPurchaseIconLayout.Metrics.plusLineWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC8AppStore8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (InAppPurchaseIconLayout.Metrics.scaleToFit.getter())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_1002EBEE4(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  ArtworkView.style.setter();

  v41 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  [v43 setHidden:(InAppPurchaseIconLayout.Metrics.displaysPlus.getter() & 1) == 0];

  v44 = qword_10096DA30;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFCF0);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  ArtworkView.shadow.setter();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}

void sub_1002EBEE4(uint64_t a1)
{
  v3 = type metadata accessor for InAppPurchaseTheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for InAppPurchaseTheme.infer(_:) || v8 == enum case for InAppPurchaseTheme.light(_:) || v8 == enum case for InAppPurchaseTheme.dark(_:))
  {
    if (qword_10096D680 != -1)
    {
      swift_once();
    }

    v11 = qword_10097F640;
    goto LABEL_16;
  }

  if (v8 == enum case for InAppPurchaseTheme.spotlight(_:))
  {
    if (qword_10096D688 != -1)
    {
      swift_once();
    }

    v11 = qword_10097F648;
LABEL_16:
    v12 = v11;
    goto LABEL_20;
  }

  if (qword_10096D680 != -1)
  {
    swift_once();
  }

  v13 = *(v4 + 8);
  v12 = qword_10097F640;
  v13(v7, v3);
LABEL_20:
  if (v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_iconType] != 2)
  {
    [*&v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] setBackgroundColor:v12];
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  if (qword_10096D690 != -1)
  {
    swift_once();
  }

  v15 = qword_10097F650;
  v16 = *&v14[OBJC_IVAR____TtC8AppStore8PlusView_plusColor];
  *&v14[OBJC_IVAR____TtC8AppStore8PlusView_plusColor] = qword_10097F650;
  v17 = v15;

  [v14 setNeedsDisplay];
  [v1 setNeedsDisplay];
}

uint64_t sub_1002EC1D0()
{
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v2 = type metadata accessor for CornerStyle();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artwork.Style();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v47 = &v44 - v9;
  v10 = type metadata accessor for LayoutRect();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v15;
  v16 = type metadata accessor for InAppPurchaseIconLayout();
  v58 = *(v16 - 8);
  v59 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78.receiver = v0;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "layoutSubviews", v17);
  (*(v13 + 16))(v15, &v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics], v12);
  v20 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
  v21 = type metadata accessor for ArtworkView();
  v76 = v21;
  v77 = &protocol witness table for UIView;
  v75 = v20;
  v22 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView];
  v73 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v74 = &protocol witness table for UIView;
  v71 = &protocol witness table for UIView;
  v72 = v22;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView];
  v70 = v73;
  v69 = v23;
  v24 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  v67 = type metadata accessor for PlusView();
  v68 = &protocol witness table for UIView;
  v65 = &protocol witness table for UIView;
  v66 = v24;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView];
  v64 = v21;
  v63 = v25;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  InAppPurchaseIconLayout.init(metrics:artworkView:artworkContainingView:backgroundView:plusView:tileArtworkView:tileArtworkBackgroundView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v31 = v54;
  v53 = v0;
  v57 = v19;
  InAppPurchaseIconLayout.placeChildren(relativeTo:in:)();
  (v55)[1](v31, v56);
  if (([v30 isHidden] & 1) == 0)
  {
    ArtworkView.frame.getter();
    v32 = v45;
    ArtworkView.style.getter();
    v55 = v27;
    v56 = v29;
    v34 = v48;
    v33 = v49;
    v35 = v46;
    (*(v48 + 104))(v46, enum case for Artwork.Style.roundedRect(_:), v49);
    v36 = v28;
    v37 = v47;
    Artwork.Style.orIfUnspecified(_:)();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)();
    v38(v37, v33);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for CornerStyle.arc(_:), v52);
    ArtworkView.setCorner(radius:style:)();
    v42 = v40;
    v29 = v56;
    (*(v39 + 8))(v42, v41);
    sub_1002EC7A4(v30, v36);
    sub_1002EC7A4(v30, v55);
  }

  [v29 setNeedsDisplay];
  return (*(v58 + 8))(v57, v59);
}

void sub_1002EC7A4(void *a1, id a2)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRect:{v6, v8, v10, v12}];
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a2 frame];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectIntersection(v53, v57);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
  v32 = -v31;
  InAppPurchaseIconLayout.Metrics.tileBorderWidth.getter();
  v34 = -v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v32, v34);
  [v2 convertRect:a2 toCoordinateSpace:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  dispatch thunk of RoundedCornerView.cornerRadius.getter();
  v44 = v43;
  dispatch thunk of RoundedCornerView.cornerRadius.getter();
  v46 = [v13 bezierPathWithRoundedRect:2 byRoundingCorners:v36 cornerRadii:{v38, v40, v42, v44, v45}];
  v47 = [v46 bezierPathByReversingPath];

  [v14 appendPath:v47];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [v14 CGPath];
  [v48 setPath:v49];

  v50 = [a2 layer];
  [v50 setMasksToBounds:1];

  v51 = [a2 layer];
  [v51 setMask:v48];
}

void sub_1002ECAFC(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for InAppPurchaseTheme();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  ArtworkView.image.getter();
  ArtworkView.image.setter();
  ArtworkView.image.getter();
  ArtworkView.image.setter();
  v11 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_1002EBEE4(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

uint64_t type metadata accessor for InAppPurchaseView(uint64_t a1)
{
  result = qword_10097F6B0;
  if (!qword_10097F6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002ECE98(uint64_t a1)
{
  result = type metadata accessor for InAppPurchaseTheme();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for InAppPurchaseIconLayout.Metrics();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_1002ECF90(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - v11;
  v12 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  *&v4[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  *&v4[v14] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView] = 0;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  v17 = *&v15[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer];
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v17;
  v21 = [v18 whiteColor];
  v22 = [v21 colorWithAlphaComponent:0.5];

  v23 = [v22 CGColor];
  [v20 setBackgroundColor:v23];

  v46 = v16;
  v47 = v15;
  [*&v15[v16] setCompositingFilter:kCAFilterScreenBlendMode];
  v24 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  v25 = *&v19[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer];
  v26 = [v18 whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.8];

  v28 = [v27 CGColor];
  [v25 setBackgroundColor:v28];

  [*&v19[v24] setCompositingFilter:kCAFilterOverlayBlendMode];
  v29 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  v30 = *&v19[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007B15F0;
  v32 = objc_opt_self();
  v33 = v30;
  result = [v32 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v31 + 32) = result;
    *(v31 + 40) = [objc_opt_self() colorEffectSaturate:1.4];
    sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v33 setBackgroundEffects:isa];

    v36 = v19;
    v37 = [v36 layer];
    [v37 addSublayer:*&v19[v24]];

    v38 = [v36 layer];
    [v38 addSublayer:*&v47[v46]];

    [v36 addSubview:*&v19[v29]];
    v39 = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_10096DAD8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Shadow();
    v41 = sub_1000056A8(v40, qword_1009CFEE8);
    v42 = *(v40 - 8);
    v43 = v48;
    (*(v42 + 16))(v48, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    dispatch thunk of ShadowView.shadow.setter();
    [v36 insertSubview:v39 belowSubview:*&v19[v29]];
    v44 = *&v36[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView];
    *&v36[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView] = v39;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002ED51C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }
}

unint64_t sub_1002ED71C()
{
  result = qword_10097F708;
  if (!qword_10097F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F708);
  }

  return result;
}

void sub_1002ED770()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_smallCornerRadius) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  *(v1 + v2) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v3) = static ArtworkView.iapIconArtworkView.getter();
  v4 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = type metadata accessor for InAppPurchaseTheme();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002ED888()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_topLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_bottomLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_blurView;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC8AppStoreP33_0929855FC914B63BD770DBF68A393ACE26InAppBlendedBackgroundView_shadowView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1002ED958(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v12 = [v10 contentView];
  [v12 addSubview:*&v10[OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView]];

  return v10;
}

id sub_1002EDC10(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallSearchLockupCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1002EDC98(uint64_t a1)
{
  result = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

id sub_1002EDD90()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_10097F740 = result;
  return result;
}

id sub_1002EDDE0()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.333333333 alpha:1.0];
  qword_10097F748 = result;
  return result;
}

id sub_1002EDE30()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.133333333 blue:0.180392157 alpha:1.0];
  qword_10097F750 = result;
  return result;
}

id sub_1002EDEA8()
{
  result = [objc_opt_self() whiteColor];
  qword_10097F760 = result;
  return result;
}

void sub_1002EDF1C(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

uint64_t (*sub_1002EDF98(uint64_t a1))(void *a1)
{
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v4 = *(AllButtonStyle - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(AllButtonStyle);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, AllButtonStyle, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), AllButtonStyle);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  return sub_1002F4EA0;
}

uint64_t sub_1002EE0D4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_10097F778;
  swift_beginAccess();
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v6 = *(AllButtonStyle - 8);
  (*(v6 + 24))(&v1[v4], a1, AllButtonStyle);
  swift_endAccess();
  v7 = *&v1[qword_10097F798];
  v11[4] = sub_1002EDF98(&v1[v4]);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100080D48;
  v11[3] = &unk_1008BD428;
  v9 = _Block_copy(v11);

  [v7 setConfigurationUpdateHandler:v9];
  _Block_release(v9);
  [v2 setNeedsLayout];
  return (*(v6 + 8))(a1, AllButtonStyle);
}

char *sub_1002EE250(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = qword_10097F778;
  v14 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 104))(&v4[v13], v14, AllButtonStyle);
  v16 = &v4[qword_1009CF450];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = qword_10097F780;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10097F788;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  *&v4[qword_10097F790] = _swiftEmptyArrayStorage;
  v19 = qword_10097F798;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  v20 = &v4[qword_10097F7A0];
  *v20 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v20[1] = 0;
  *&v4[qword_10097F7A8] = _swiftEmptyArrayStorage;
  swift_weakInit();
  *&v4[qword_10097F7B8] = _swiftEmptyArrayStorage;
  v4[qword_10097F7C0] = 0;
  *&v4[qword_10097F7C8] = 0;
  v4[qword_1009CF458] = 0;
  v21 = &v4[qword_10097F7D0];
  *v21 = 0;
  v21[8] = 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  [v22 _setCornerRadius:20.0];
  v23 = v22;
  [v23 setClipsToBounds:1];
  v24 = qword_10097F780;
  [v23 addSubview:*&v23[qword_10097F780]];
  [v23 addSubview:*&v23[qword_10097F788]];
  v25 = qword_10097F798;
  [v23 addSubview:*&v23[qword_10097F798]];
  v26 = *&v23[v24];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B15F0;
  v28 = qword_10096D6A0;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_10097F748;
  *(v27 + 32) = qword_10097F748;
  v31 = qword_10096D6A8;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_10097F750;
  *(v27 + 40) = qword_10097F750;
  *&v29[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v27;
  v34 = v33;

  sub_1001C0CEC();

  v35 = *&v23[v25];
  [v35 addTarget:v23 action:"didTapDownloadAllButton" forControlEvents:64];

  v36 = *&v23[v25];
  static UIButton.Configuration.filled()();
  v37 = type metadata accessor for UIButton.Configuration();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  UIButton.configuration.setter();

  v38 = [*&v23[v25] layer];
  [v38 setCompositingFilter:kCAFilterPlusL];

  [*&v23[v25] setOverrideUserInterfaceStyle:2];
  v39 = [v23 layer];

  [v39 setAllowsGroupBlending:0];
  [*&v23[v25] setHidden:1];

  return v23;
}

void sub_1002EE774()
{
  v1 = qword_10097F778;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 8))(v0 + v1, AllButtonStyle);
  sub_10002B894(v0 + qword_1009CF450, &qword_10097F860, &qword_1007C6CD0);

  swift_weakDestroy();

  v3 = *(v0 + qword_10097F7C8);
}

void sub_1002EE890()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_10097F7B8];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, "dealloc");
  }
}

void sub_1002EE99C(uint64_t a1)
{
  v2 = qword_10097F778;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 8))(a1 + v2, AllButtonStyle);
  sub_10002B894(a1 + qword_1009CF450, &qword_10097F860, &qword_1007C6CD0);

  swift_weakDestroy();

  v4 = *(a1 + qword_10097F7C8);
}

void sub_1002EEABC()
{
  v1 = type metadata accessor for LegacyAppState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v37 - v6;
  v7 = sub_10002849C(&qword_100975C58, &qword_1007C6CA0);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = qword_10097F7B8;
  v58 = v0;
  v11 = *(v0 + qword_10097F7B8);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_29;
  }

  v44 = qword_10097F7B8;
  v59 = _swiftEmptyArrayStorage;

  sub_100144044(0, v12, 0);
  v13 = v59;
  v54 = (v2 + 32);
  v53 = (v2 + 88);
  v52 = enum case for LegacyAppState.waiting(_:);
  v49 = enum case for LegacyAppState.updatable(_:);
  v50 = enum case for LegacyAppState.purchased(_:);
  v45 = enum case for LegacyAppState.paused(_:);
  v46 = enum case for LegacyAppState.downloadable(_:);
  v41 = enum case for LegacyAppState.installing(_:);
  v42 = enum case for LegacyAppState.downloading(_:);
  v39 = enum case for LegacyAppState.buyable(_:);
  v40 = enum case for LegacyAppState.openable(_:);
  v47 = (v2 + 8);
  v38 = enum case for LegacyAppState.installed(_:);
  v51 = (v2 + 96);
  v43 = v11;
  v14 = v11 + 40;
  v37 = enum case for LegacyAppState.unknown(_:);
  v48 = enum case for PurchaseType.preorder(_:);
  v15 = v57;
  do
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.adamId.getter();
    dispatch thunk of AppStateMachine.currentState.getter();
    swift_unknownObjectRelease();
    (*v54)(v4, v15, v1);
    v16 = (*v53)(v4, v1);
    if (v16 == v52)
    {
      (*v51)(v4, v1);
      v17 = type metadata accessor for InstallationType();
LABEL_5:
      (*(*(v17 - 8) + 8))(v4, v17);
LABEL_6:
      v18 = 0;
      goto LABEL_14;
    }

    if (v16 == v50)
    {
      (*v51)(v4, v1);
      v19 = type metadata accessor for PurchaseType();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 88))(v4, v19);
      if (v21 != v48)
      {
        (*(v20 + 8))(v4, v19);
        goto LABEL_6;
      }
    }

    else if (v16 == v49 || v16 == v46)
    {
      (*v47)(v4, v1);
    }

    else if (v16 == v45)
    {
      (*v51)(v4, v1);
      v24 = type metadata accessor for LegacyAppState.AppInstallationDetails();
      (*(*(v24 - 8) + 8))(v4, v24);
    }

    else
    {
      if (v16 == v42 || v16 == v41)
      {
        (*v51)(v4, v1);
        v17 = type metadata accessor for LegacyAppState.AppInstallationDetails();
        goto LABEL_5;
      }

      if (v16 == v40)
      {
        (*v51)(v4, v1);

        v17 = type metadata accessor for OpenableDestination();
        goto LABEL_5;
      }

      if (v16 != v39)
      {
        if (v16 == v38)
        {
          goto LABEL_6;
        }

        if (v16 != v37)
        {
          (*v47)(v4, v1);
          goto LABEL_6;
        }
      }
    }

    v18 = 1;
LABEL_14:
    v9[*(v56 + 48)] = v18;
    v59 = v13;
    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      sub_100144044((v22 > 1), v23 + 1, 1);
      v13 = v59;
    }

    v13[2] = v23 + 1;
    sub_1002F4744(v9, v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v23);
    v14 += 16;
    --v12;
  }

  while (v12);

  v10 = v44;
LABEL_29:
  if (v13[2])
  {
    sub_10002849C(&qword_100970CD0, &qword_1007B1F38);
    v25 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v59 = v25;

  sub_1002F47B4(v26, 1, &v59);
  v27 = swift_allocObject();

  *(v27 + 16) = v59;
  v28 = swift_allocObject();
  v29 = v58;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;

  sub_1002EF624(v31, v28);

  v32 = *(v29 + v10);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (v34 < *(v32 + 16))
    {
      ++v34;
      swift_getObjectType();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = sub_1002F4D00;
      v36[4] = v30;

      swift_unknownObjectRetain();

      dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();
      swift_unknownObjectRelease();

      v35 += 16;
      if (v33 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_1002EF284()
{
  v1 = v0;
  v2 = type metadata accessor for LegacyAppState();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = type metadata accessor for InstallationType();
LABEL_3:
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = type metadata accessor for PurchaseType();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v6, v10) != enum case for PurchaseType.preorder(_:))
    {
      (*(v11 + 8))(v6, v10);
      return 0;
    }
  }

  else if (v7 == enum case for LegacyAppState.updatable(_:) || v7 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 == enum case for LegacyAppState.paused(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  else
  {
    if (v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
    {
      (*(v3 + 96))(v6, v2);
      v8 = type metadata accessor for LegacyAppState.AppInstallationDetails();
      goto LABEL_3;
    }

    if (v7 == enum case for LegacyAppState.openable(_:))
    {
      (*(v3 + 96))(v6, v2);

      v8 = type metadata accessor for OpenableDestination();
      goto LABEL_3;
    }

    if (v7 != enum case for LegacyAppState.buyable(_:))
    {
      if (v7 == enum case for LegacyAppState.installed(_:))
      {
        return 0;
      }

      if (v7 != enum case for LegacyAppState.unknown(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return 1;
}

void sub_1002EF624(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v62 = sub_10002849C(&qword_10097F838, &qword_1007C6CA8);
  __chkstk_darwin(v62);
  v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v53 - v5;
  __chkstk_darwin(v6);
  v59 = v53 - v7;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  swift_beginAccess();
  v54 = a1;
  v10 = *(a1 + 16);
  v11 = *(v10 + 64);
  v56 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v55 = (v12 + 63) >> 6;
  v61 = v10;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v59;
  while (v14)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v61;
    v21 = *(v61 + 48);
    v22 = type metadata accessor for AdamId();
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 16))(v58, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + v19);
    v26 = v62;
    *(v24 + *(v62 + 48)) = v25;
    sub_100031660(v24, v16, &qword_10097F838, &qword_1007C6CA8);
    v27 = *(v26 + 48);
    LOBYTE(v21) = *(v16 + v27);
    v28 = v60;
    (*(v23 + 32))(v60, v16, v22);
    *(v28 + v27) = v21;
    sub_10002B894(v28, &qword_10097F838, &qword_1007C6CA8);
    sub_10002B894(v24, &qword_10097F838, &qword_1007C6CA8);
    if ((v21 & 1) == 0)
    {
      v29 = 1;
LABEL_13:

      v30 = v54;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
        v37 = v36;
LABEL_22:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v37 << 6);
        v40 = *(v31 + 48);
        v41 = type metadata accessor for AdamId();
        v42 = *(v41 - 8);
        v43 = v40 + *(v42 + 72) * v39;
        v44 = v57;
        (*(v42 + 16))(v57, v43, v41);
        LODWORD(v39) = *(*(v31 + 56) + v39);
        *(v44 + *(v62 + 48)) = v39;
        sub_10002B894(v44, &qword_10097F838, &qword_1007C6CA8);
        if (v39 == 1)
        {
          v45 = 1;
LABEL_25:

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v47 = Strong;
            v48 = *(Strong + qword_10097F798);

            [v48 setEnabled:v45];
          }

          swift_beginAccess();
          v49 = swift_unknownObjectWeakLoadStrong();
          if (v49)
          {
            v50 = v49;
            v51 = v49 + qword_1009CF450;
            swift_beginAccess();
            if (*(v51 + 24))
            {
              sub_10002C0AC(v51, v63);

              sub_10002A400(v63, v63[3]);
              if (v45)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              if (!v29)
              {
                v52 = 0;
              }

              sub_100423650(v52);
              sub_100007000(v63);
            }

            else
            {
            }
          }

          return;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }

        if (v37 >= v35)
        {
          v45 = 0;
          goto LABEL_25;
        }

        v34 = *(v31 + 64 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_22;
        }
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v14 = *(v56 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1002EFBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v6 = type metadata accessor for LegacyAppState();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdamId();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of AppStateMachine.adamId.getter();
  dispatch thunk of AppStateMachine.currentState.getter();
  v14 = sub_1002EF284();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_10005236C(v14 & 1, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v10);
  *(a3 + 16) = v20;
  v16 = swift_endAccess();
  return v19(v16);
}

void sub_1002EFDA4(uint64_t a1)
{
  v3 = qword_10097F7B8;
  v4 = *(v1 + qword_10097F7B8);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      swift_getObjectType();
      swift_unknownObjectRetain();
      dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
      swift_unknownObjectRelease();
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;

    sub_1002EEABC();
  }
}

uint64_t sub_1002EFE80(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_10002849C(&qword_10097F848, &unk_1007C6CC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v69 = &v53[-v9];
  v10 = sub_10002849C(&unk_100987100, &qword_1007CF950);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11];
  v63 = type metadata accessor for UIButton.Configuration.Size();
  v61 = *(v63 - 1);
  __chkstk_darwin(v63);
  v62 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v68 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v64 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v19 - 8);
  v65 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v53[-v22];
  v24 = type metadata accessor for UIButton.Configuration();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UIButton.configuration.getter();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10002B894(v23, &qword_10097CC90, &unk_1007BB2A0);
  }

  v58 = v12;
  (*(v25 + 32))(v27, v23, v24);
  v29 = [a1 state];
  v59 = v5;
  v60 = v6;
  if (v29 == 2)
  {
    if (qword_10096D6C8 != -1)
    {
      swift_once();
    }

    v32 = UIColor.highlighted.getter();
    v33 = qword_10096D6C0;
    v57 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = &qword_10097F768;
  }

  else
  {
    if (v29 == 1)
    {
      if (qword_10096D6C8 != -1)
      {
        swift_once();
      }

      v30 = UIColor.highlighted.getter();
      v31 = qword_10096D6B8;
    }

    else
    {
      if (qword_10096D6C8 != -1)
      {
        swift_once();
      }

      v31 = qword_10096D6B8;
      v30 = qword_10097F770;
    }

    v57 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = &qword_10097F760;
  }

  v35 = *v34;
  v36 = v68;
  v56 = *(v68 + 16);
  v56(v18, v70, AllButtonStyle);
  v55 = *(v36 + 88);
  v37 = v55(v18, AllButtonStyle);
  v54 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:))
  {
    v38 = v35;
    UIButton.Configuration.contentInsets.setter();
  }

  else if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
  {
    (*(v61 + 104))(v62, enum case for UIButton.Configuration.Size.large(_:), v63);
    v39 = v35;
    UIButton.Configuration.buttonSize.setter();
  }

  else
  {
    v63 = *(v68 + 8);
    v40 = v35;
    (v63)(v18, AllButtonStyle);
  }

  v41 = swift_allocObject();
  v63 = v35;
  *(v41 + 16) = v35;
  *(v41 + 24) = a1;
  a1;
  v42 = v58;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v43 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v44 = v69;
  UIButton.Configuration.background.getter();
  v45 = v64;
  v56(v64, v70, AllButtonStyle);
  v46 = v55(v45, AllButtonStyle);
  if (v46 == v54)
  {
    UIBackgroundConfiguration.cornerRadius.setter();
    v47 = v60;
    v48 = v67;
    v49 = v57;
  }

  else
  {
    v47 = v60;
    v48 = v67;
    v49 = v57;
    if (v46 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
    {
      v44 = v69;
      UIBackgroundConfiguration.cornerRadius.setter();
    }

    else
    {
      (*(v68 + 8))(v45, AllButtonStyle);
      v44 = v69;
    }
  }

  *(swift_allocObject() + 16) = v49;
  v50 = v59;
  UIConfigurationColorTransformer.init(_:)();
  v51 = type metadata accessor for UIConfigurationColorTransformer();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  UIBackgroundConfiguration.backgroundColorTransformer.setter();
  (*(v48 + 16))(v66, v44, v47);
  UIButton.Configuration.background.setter();
  v52 = v65;
  (*(v25 + 16))(v65, v27, v24);
  (*(v25 + 56))(v52, 0, 1, v24);
  UIButton.configuration.setter();

  (*(v48 + 8))(v44, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_1002F0778@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AttributeContainer();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_1002F4F4C();
  v9 = a2;
  AttributeContainer.subscript.setter();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E348 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D1958);
  v11 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_1001469E0();
  AttributeContainer.subscript.setter();
  if (qword_10096E8A0 != -1)
  {
    swift_once();
  }

  v12 = qword_1009D2978;
  sub_1002F4FA0();
  v13 = v12;
  return AttributeContainer.subscript.setter();
}

uint64_t sub_1002F0938@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DisjointStack();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v7;
  v62 = type metadata accessor for Resize.Rule();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v59 = (&v56 - v10);
  __chkstk_darwin(v11);
  v66 = (&v56 - v12);
  __chkstk_darwin(v13);
  v58 = (&v56 - v14);
  v65 = type metadata accessor for Resize();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v17 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v68 = type metadata accessor for VerticalStack();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  swift_beginAccess();

  v26 = sub_1002A5DB4(v25);

  v27 = qword_10097F778;
  swift_beginAccess();
  v28 = *(v17 + 16);
  v74 = v2;
  v28(v22, v2 + v27, AllButtonStyle);
  (*(v17 + 104))(v19, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:), AllButtonStyle);
  sub_1002F4D34(&qword_10097F868, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v75 == v78)
  {
    v29 = *(v17 + 8);
    v29(v19, AllButtonStyle);
    v29(v22, AllButtonStyle);
  }

  else
  {
    LODWORD(v57) = _stringCompareWithSmolCheck(_:_:expecting:)();
    v30 = *(v17 + 8);
    v30(v19, AllButtonStyle);
    v30(v22, AllButtonStyle);

    if ((v57 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v74 + qword_10097F798);
  if ([v31 isHidden])
  {
    goto LABEL_9;
  }

  v76 = sub_100005744(0, &qword_1009811E0, UIButton_ptr);
  v77 = &protocol witness table for UIButton;
  v57 = v31;
  *&v75 = v31;
  v32 = v58;
  *v58 = sub_1002F1298;
  v32[1] = 0;
  v33 = *(v60 + 104);
  v34 = v62;
  v33(v32, enum case for Resize.Rule.recalculated(_:), v62);
  v35 = enum case for Resize.Rule.unchanged(_:);
  v33(v66, enum case for Resize.Rule.unchanged(_:), v34);
  v33(v59, v35, v34);
  v33(v61, v35, v34);
  v36 = v57;
  v37 = v63;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v38 = v65;
    v39 = v64;
    v41 = v26[2];
    v40 = v26[3];
    if (v41 >= v40 >> 1)
    {
      v26 = sub_100034C2C((v40 > 1), v41 + 1, 1, v26);
    }

    v76 = v38;
    v77 = &protocol witness table for Resize;
    v42 = sub_1000056E0(&v75);
    (*(v39 + 16))(v42, v37, v38);
    v26[2] = v41 + 1;
    sub_100005A38(&v75, &v26[5 * v41 + 4]);
    (*(v39 + 8))(v37, v38);
LABEL_9:
    v43 = v26[2];
    if (!v43)
    {
      break;
    }

    v44 = 0;
    v45 = (v26 + 4);
    v37 = &v75;
    while (v44 < v26[2])
    {
      *&v75 = v44;
      sub_10002C0AC(v45, &v75 + 8);
      sub_1002F12A0(v44, &v75 + 8, v24, v43, ObjectType);
      sub_10002B894(&v75, &qword_10097F870, &qword_1007C6CD8);
      v45 += 40;
      if (v43 == ++v44)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    v26 = sub_100034C2C(0, v26[2] + 1, 1, v26);
  }

LABEL_13:

  v46 = v69;
  DisjointStack.init(with:)();
  *&v78 = *(v74 + qword_10097F788);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  Measurable.placeable.getter();
  v47 = v70;
  DisjointStack.inserting(_:at:with:)();
  sub_100007000(&v75);
  v48 = *(v72 + 8);
  v49 = v46;
  v50 = v73;
  v48(v49, v73);
  v51 = v68;
  v76 = v68;
  v77 = &protocol witness table for VerticalStack;
  v52 = sub_1000056E0(&v75);
  v53 = v67;
  (*(v67 + 16))(v52, v24, v51);
  v54 = v71;
  v71[3] = v50;
  v54[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v54);
  DisjointStack.inserting(_:at:with:)();
  v48(v47, v50);
  sub_100007000(&v75);
  return (*(v53 + 8))(v24, v51);
}

uint64_t sub_1002F12A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002C0AC(a2, &v10);
  v11[3] = type metadata accessor for Margins();
  v11[4] = &protocol witness table for Margins;
  sub_1000056E0(v11);
  Margins.init(insets:child:)();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a4;
  v8[4] = a5;
  VerticalStack.add(_:with:)();

  return sub_100007000(v11);
}

uint64_t sub_1002F137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = VerticalStack.Properties.topSpacing.setter();
  if (!__OFSUB__(a3, 1))
  {
    return VerticalStack.Properties.bottomSpacing.setter();
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F1418()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for ZeroDimension();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  DisjointStack.Properties.topEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.leadingEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.bottomEdge.setter();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  v6(v3, v5, v0);
  DisjointStack.Properties.trailingEdge.setter();
  return DisjointStack.Properties.anchorsHugContent.setter();
}

uint64_t sub_1002F15F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = type metadata accessor for Resize.Rule();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = (&v39 - v5);
  __chkstk_darwin(v6);
  v43 = (&v39 - v7);
  __chkstk_darwin(v8);
  v41 = (&v39 - v9);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v11 = *(AllButtonStyle - 8);
  __chkstk_darwin(AllButtonStyle);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for VerticalStack();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  VerticalStack.init(with:)();
  sub_1002F0938(v53);
  VerticalStack.adding(_:with:)();
  sub_100007000(v53);
  v24 = *(v18 + 8);
  v47 = v17;
  v24(v20, v17);
  v25 = *(v1 + qword_10097F798);
  if (([v25 isHidden] & 1) == 0)
  {
    v26 = qword_10097F778;
    swift_beginAccess();
    (*(v11 + 16))(v16, v2 + v26, AllButtonStyle);
    (*(v11 + 104))(v13, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), AllButtonStyle);
    sub_1002F4D34(&qword_10097F868, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v53[0] == v49 && v53[1] == v50)
    {
      v27 = *(v11 + 8);
      v27(v13, AllButtonStyle);
      v27(v16, AllButtonStyle);

LABEL_6:
      v51 = sub_100005744(0, &qword_1009811E0, UIButton_ptr);
      v52 = &protocol witness table for UIButton;
      v49 = v25;
      v40 = v25;
      v29 = v41;
      v30 = v42;
      *v41 = sub_1002F1298;
      v29[1] = 0;
      v31 = *(v30 + 104);
      v32 = v44;
      v31(v29, enum case for Resize.Rule.recalculated(_:), v44);
      v33 = enum case for Resize.Rule.unchanged(_:);
      v31(v43, enum case for Resize.Rule.unchanged(_:), v32);
      v31(v45, v33, v32);
      v31(v46, v33, v32);
      v53[3] = type metadata accessor for Resize();
      v53[4] = &protocol witness table for Resize;
      sub_1000056E0(v53);
      v34 = v40;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      sub_100007000(v53);
      goto LABEL_7;
    }

    LODWORD(v40) = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = *(v11 + 8);
    v28(v13, AllButtonStyle);
    v28(v16, AllButtonStyle);

    if (v40)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v36 = v47;
  v35 = v48;
  v48[3] = v47;
  v35[4] = &protocol witness table for VerticalStack;
  v37 = sub_1000056E0(v35);
  return (*(v18 + 32))(v37, v23, v36);
}

id sub_1002F1BB8()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = *&v0[qword_10097F780];
  [v0 bounds];

  return [v2 setFrame:?];
}

void sub_1002F1C34(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10097F790;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
      [v9 removeFromSuperview];
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:

  *&v2[v4] = _swiftEmptyArrayStorage;

  v10 = qword_10097F7A8;
  swift_beginAccess();
  *&v2[v10] = _swiftEmptyArrayStorage;

  sub_1002EFDA4(_swiftEmptyArrayStorage);
  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (a1)
  {
    type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      if (qword_10096D6B0 != -1)
      {
        swift_once();
      }

      v13 = qword_10097F758;
      ArtworkView.backgroundColor.setter();
      [*&v12[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC8AppStore39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder] setBackgroundColor:v13];
      [v2 addSubview:v12];
      swift_beginAccess();
      v14 = *&v2[v4];
      v15 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v4] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_100033A44(0, v14[2] + 1, 1, v14);
        *&v2[v4] = v14;
      }

      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        v14 = sub_100033A44((v17 > 1), v18 + 1, 1, v14);
      }

      v19 = sub_1002F4D34(&qword_10097F830, type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder, &unk_1007DB6A8);
      v14[2] = v18 + 1;
      v20 = &v14[2 * v18];
      v20[4] = v15;
      v20[5] = v19;
      *&v2[v4] = v14;
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  [*&v2[qword_10097F798] setHidden:1];
  [v2 setNeedsLayout];
}

void sub_1002F1F30(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  v130 = a4;
  LODWORD(ObjCClassFromMetadata) = a3;
  v118 = a2;
  v6 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v6 - 8);
  v110 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v104 - v9;
  v117 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v10;
  __chkstk_darwin(v11);
  v107 = &v104 - v12;
  v13 = type metadata accessor for AdamId();
  v132 = *(v13 - 8);
  v133 = v13;
  __chkstk_darwin(v13);
  v105 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v104 - v16;
  __chkstk_darwin(v17);
  v131 = &v104 - v18;
  v127 = type metadata accessor for AutomationSemantics();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_1009732C0, &unk_1007C6CB0);
  __chkstk_darwin(v20 - 8);
  v106 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v113 = &v104 - v23;
  __chkstk_darwin(v24);
  v26 = &v104 - v25;
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  v27 = *(AllButtonStyle - 1);
  __chkstk_darwin(AllButtonStyle);
  v123 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v104 - v30;
  v32 = qword_10097F790;
  swift_beginAccess();
  v129 = v4;
  v33 = *&v4[v32];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 32);
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v37 = *v36;
      v36 += 2;
      [v37 removeFromSuperview];
      if (v34 == v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_24:
    v44 = _CocoaArrayWrapper.endIndex.getter();
    if (!v44)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_5:

  v34 = v129;
  *&v129[v32] = _swiftEmptyArrayStorage;

  v38 = qword_10097F7A8;
  swift_beginAccess();
  *&v34[v38] = a1;

  swift_weakAssign();
  v34[qword_10097F7C0] = ObjCClassFromMetadata & 1;
  sub_100031660(v118, v26, &unk_1009732C0, &unk_1007C6CB0);
  v39 = *(v116 + 48);
  v40 = v117;
  v120 = v116 + 48;
  v119 = v39;
  if (v39(v26, 1, v117) == 1)
  {
    sub_10002B894(v26, &unk_1009732C0, &unk_1007C6CB0);
    (v27)[13](v31, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), AllButtonStyle);
  }

  else
  {
    v41 = &v26[*(v40 + 20)];
    v42 = v123;
    v43 = AllButtonStyle;
    (v27)[2](v123, v41, AllButtonStyle);
    sub_1002F4D7C(v26);
    (v27)[4](v31, v42, v43);
  }

  sub_1002EE0D4(v31);
  type metadata accessor for ArtworkLoader();
  v112 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  AllButtonStyle = v135;
  v111 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_25;
  }

LABEL_10:
  type metadata accessor for TodayCardLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v44 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = 0;
  v122 = *&v34[qword_10097F788];
  v121 = a1 & 0xC000000000000001;
  v46 = (v132 + 8);
  v47 = (v124 + 8);
  v124 = a1;
  v123 = v44;
  do
  {
    if (v121)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v48 = *(a1 + 8 * v45 + 32);
    }

    v49 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    [v122 addSubview:v49];
    v50 = v131;
    Lockup.adamId.getter();
    v51 = AdamId.stringValue.getter();
    v53 = v52;
    (*v46)(v50, v133);
    v137 = &type metadata for String;
    v135 = v51;
    v136 = v53;
    memset(v134, 0, sizeof(v134));
    v54 = v126;
    static AutomationSemantics.shelfItem(itemKind:id:parentId:)();
    sub_10002B894(v134, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(&v135, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();
    (*v47)(v54, v127);
    sub_1002F2FB0(v48, AllButtonStyle, v130);
    v55 = qword_10096D6B0;
    v56 = *&v49[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = qword_10097F758;
    ArtworkView.placeholderColor.setter();

    swift_beginAccess();
    v58 = *&v34[v32];
    v59 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v32] = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_100033A44(0, v58[2] + 1, 1, v58);
      *&v34[v32] = v58;
    }

    a1 = v124;
    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_100033A44((v61 > 1), v62 + 1, 1, v58);
    }

    ++v45;
    v63 = sub_1002F4D34(&qword_10097F840, type metadata accessor for TodayCardLockupView, &unk_1007E2274);
    v58[2] = v62 + 1;
    v64 = &v58[2 * v62];
    v64[4] = v59;
    v64[5] = v63;
    v34 = v129;
    *&v129[v32] = v58;
    swift_endAccess();
  }

  while (v123 != v45);
LABEL_25:
  v65 = v118;
  v66 = v113;
  sub_100031660(v118, v113, &unk_1009732C0, &unk_1007C6CB0);
  v67 = v117;
  if (v119(v66, 1, v117) == 1)
  {
    sub_10002B894(v66, &unk_1009732C0, &unk_1007C6CB0);
    v68 = &v34[qword_10097F7A0];
    *v68 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v68[1] = 0;
  }

  else
  {
    v69 = v66;
    v70 = v107;
    sub_1002F4DD8(v69, v107);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v71 = v109;
    sub_1002F4DD8(v70, v109);
    v72 = (*(v116 + 80) + 24) & ~*(v116 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v130;
    sub_1002F4DD8(v71, v73 + v72);
    v74 = &v34[qword_10097F7A0];
    *v74 = sub_1002F4E3C;
    v74[1] = v73;
  }

  v75 = v115;
  v76 = v114;
  v77 = *&v34[qword_10097F798];
  UIButton.configuration.getter();
  v78 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v78 - 8) + 48))(v76, 1, v78))
  {
    sub_100031660(v76, v110, &qword_10097CC90, &unk_1007BB2A0);
    UIButton.configuration.setter();
    sub_10002B894(v76, &qword_10097CC90, &unk_1007BB2A0);
  }

  else
  {
    v79 = v106;
    sub_100031660(v65, v106, &unk_1009732C0, &unk_1007C6CB0);
    if (v119(v79, 1, v67) == 1)
    {
      sub_10002B894(v79, &unk_1009732C0, &unk_1007C6CB0);
    }

    else
    {

      sub_1002F4D7C(v79);
      Action.title.getter();
    }

    UIButton.Configuration.title.setter();
    UIButton.configuration.setter();
  }

  v80 = String._bridgeToObjectiveC()();
  [v77 setAccessibilityIdentifier:v80];

  [v77 setHidden:{v119(v65, 1, v67) == 1}];
  sub_10002849C(&unk_100973AF0, &qword_1007B3960);
  inject<A, B>(_:from:)();
  v130 = v135;
  v127 = v136;
  if (v111)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v81)
  {
    v135 = _swiftEmptyArrayStorage;
    sub_1001440C4(0, v81 & ~(v81 >> 63), 0);
    if (v81 < 0)
    {
LABEL_62:
      __break(1u);
      return;
    }

    v82 = v135;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v81; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        Lockup.adamId.getter();
        swift_unknownObjectRelease();
        v135 = v82;
        v85 = v82[2];
        v84 = v82[3];
        if (v85 >= v84 >> 1)
        {
          sub_1001440C4((v84 > 1), v85 + 1, 1);
          v82 = v135;
        }

        v82[2] = v85 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v85, v75, v133);
      }
    }

    else
    {
      v86 = a1 + 32;
      v87 = v105;
      do
      {

        Lockup.adamId.getter();

        v135 = v82;
        v89 = v82[2];
        v88 = v82[3];
        if (v89 >= v88 >> 1)
        {
          sub_1001440C4((v88 > 1), v89 + 1, 1);
          v82 = v135;
        }

        v82[2] = v89 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v89, v87, v133);
        v86 += 8;
        --v81;
      }

      while (v81);
    }

    v34 = v129;
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  v90 = v82[2];
  if (v90)
  {
    v135 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_100144084(0, v90, 0);
    v91 = v132;
    v126 = v82 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v92 = v135;
    ObjCClassFromMetadata = swift_getObjectType();
    v93 = 0;
    v124 = v91 + 16;
    v123 = (v91 + 8);
    while (v93 < v82[2])
    {
      v94 = v90;
      v95 = v131;
      v96 = v132;
      v97 = v133;
      (*(v132 + 16))(v131, &v126[*(v132 + 72) * v93], v133);
      v98 = dispatch thunk of AppStateController.stateMachine(forApp:)();
      v100 = v99;
      (*(v96 + 8))(v95, v97);
      v135 = v92;
      v102 = v92[2];
      v101 = v92[3];
      if (v102 >= v101 >> 1)
      {
        sub_100144084((v101 > 1), v102 + 1, 1);
        v92 = v135;
      }

      ++v93;
      v92[2] = v102 + 1;
      v103 = &v92[2 * v102];
      v103[4] = v98;
      v103[5] = v100;
      v90 = v94;
      if (v94 == v93)
      {
        swift_unknownObjectRelease();

        v34 = v129;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v92 = _swiftEmptyArrayStorage;
LABEL_59:
  sub_1002EFDA4(v92);
  [v34 setNeedsLayout];

  swift_unknownObjectRelease();
}

void sub_1002F2FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v5 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v44 - v9);
  v11 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for OfferStyle();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = type metadata accessor for OfferEnvironment();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  if (qword_10096D6C8 != -1)
  {
    swift_once();
  }

  v23 = qword_10096D6B8;
  v24 = qword_10097F770;
  if (v23 != -1)
  {
    v43 = v24;
    swift_once();
    v24 = v43;
  }

  v25 = qword_10097F760;
  *v10 = v24;
  v10[1] = v25;
  v26 = enum case for OfferTint.custom(_:);
  v27 = type metadata accessor for OfferTint();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = v25;
  sub_1004F3190(v46, v4, v19, v45, 0, 0, v16, v13, v10, v7);
  v4[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_100776DD8();
  [v4 setNeedsLayout];
  sub_100776DD8();
  sub_10002B894(v7, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v10, &unk_100973AD0, &unk_1007B17C0);
  sub_10002B894(v13, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v16, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v19, &unk_100973230, &unk_1007B17E0);
  if (Lockup.icon.getter())
  {
    swift_beginAccess();
    Artwork.config(using:)();
    type metadata accessor for ArtworkView();
    sub_1002F4D34(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  [*&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel] setOverrideUserInterfaceStyle:2];
  v31 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v32 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v32)
  {
    [v32 setOverrideUserInterfaceStyle:2];
    v33 = *&v4[v31];
    if (v33)
    {
      v34 = [v33 layer];
      [v34 setCompositingFilter:kCAFilterPlusL];

      v35 = *&v4[v31];
      if (v35)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v36 = v35;
        v37 = static UIColor.secondaryText.getter();
        [v36 setTextColor:v37];
      }
    }
  }

  v38 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  v39 = [v38 layer];
  [v39 setCompositingFilter:kCAFilterPlusL];

  v40 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending;
  v4[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending] = 0;
  v41 = [v4 layer];
  [v41 setAllowsGroupBlending:v4[v40]];

  v42 = [v38 layer];
  [v42 setAllowsGroupBlending:v4[v40]];
}

uint64_t sub_1002F3694(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(*a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_1002F37D8()
{
  v1 = *&v0[qword_10097F788];
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  [v1 setTransform:&aBlock];
  v2 = qword_10097F790;
  swift_beginAccess();
  v18 = v0;
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  v20 = v3;

  v19 = v4;
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v20 + 16))
    {
      v6 = *(v20 + 32 + 16 * v5);
      v7 = [v6 subviews];
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (v9)
        {
LABEL_7:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setAlpha:0.0];

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_3:
      ++v5;

      if (v5 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  v5 = v18;
  [*&v18[qword_10097F798] setAlpha:0.0];
  if (qword_10096D698 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10097F740 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *&aBlock.tx = sub_1002F52E4;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100007A08;
  *&aBlock.d = &unk_1008BD4F0;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  [v14 addAnimations:v16];
  _Block_release(v16);
  [v14 startAnimationAfterDelay:0.16];
}

double sub_1002F3B1C(double a1)
{
  v3 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setAlpha:a1];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  return result;
}

void sub_1002F3C58(uint64_t a1)
{
  v2 = qword_10097F790;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (v5 < *(v3 + 16))
    {
      ++v5;
      v7 = *v6;
      v6 += 2;
      v8 = v7;
      sub_1002F3B1C(1.0);

      if (v4 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    [*(a1 + qword_10097F798) setAlpha:1.0];
    v9 = *(a1 + qword_10097F788);
    v10[0] = 0x3FF0000000000000;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0x3FF0000000000000;
    v10[4] = 0;
    v10[5] = 0;
    [v9 setTransform:v10];
  }
}

void sub_1002F3D4C(char *a1)
{
  v1 = *&a1[qword_10097F7A0];
  v3 = a1;

  v1(v2);
}

void sub_1002F3DB4(uint64_t a1, double a2, double a3)
{
  v7 = qword_10097F790;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = *(v8 + 16);

  v10 = 0;
  v11 = 32;
  while (1)
  {
    if (v9 == v10)
    {
LABEL_5:

      return;
    }

    if (v10 >= *(v8 + 16))
    {
      break;
    }

    ++v10;
    v12 = *(v8 + v11);
    [v12 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v13 = [v12 pointInside:a1 withEvent:?];

    v11 += 16;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1002F3ECC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = qword_10097F7A8;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  swift_endAccess();
  v9 = Lockup.clickAction.getter();
  if (!v9)
  {
LABEL_10:

    return;
  }

  v10 = v9;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_10;
  }

  v12 = Strong;
  v13 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {

    sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005F9AF4(v10, 1, v12, v6);

    (*(v14 + 8))(v6, v13);
  }
}

void sub_1002F40FC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) == 1)
  {
    v6 = qword_10097F7C8;
    v7 = *(v2 + qword_10097F7C8);
    if (!v7 || [v7 phase] == 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == 4)
    {
      v9 = sub_10066D4C4(a1);
      if (v9)
      {
        v10 = v9;
        [v9 locationInView:v2];
        sub_1002F3DB4(a2, v11, v12);
        v13 = v2 + qword_10097F7D0;
        *v13 = v14;
        *(v13 + 8) = v15 & 1;
        v16 = *(v2 + v6);
        *(v2 + v6) = v10;

        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v2, ObjectType, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
      }

      else
      {
        sub_100005744(0, &qword_100981660, UITouch_ptr);
        sub_10008DB40();
        v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
        objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v2, ObjectType, v21.receiver, v21.super_class);
      }
    }

    else
    {
      sub_100005744(0, &qword_100981660, UITouch_ptr);
      sub_10008DB40();
      v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
      objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v17.super.isa, a2, v2, ObjectType, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v21.receiver, v21.super_class);
    }
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v17.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v17.super.isa, a2, v18.receiver, v18.super_class, v19.receiver, v19.super_class, v20.receiver, v20.super_class, v2, ObjectType);
  }
}

void sub_1002F4320(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) != 1)
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v14, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v13.receiver, v13.super_class, v2, ObjectType);
    goto LABEL_11;
  }

  v6 = qword_10097F7C8;
  v7 = *(v2 + qword_10097F7C8);
  if (!v7)
  {
LABEL_10:
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v13, "touchesEnded:withEvent:", v11.super.isa, a2, v12.receiver, v12.super_class, v2, ObjectType, v14.receiver, v14.super_class);
    goto LABEL_11;
  }

  v8 = v7;
  if ((sub_100296044(v8, a1) & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = *(v2 + v6);
  *(v2 + v6) = 0;

  v10 = v2 + qword_10097F7D0;
  if ((*(v2 + qword_10097F7D0 + 8) & 1) == 0 && (*(v2 + qword_1009CF458) & 1) == 0)
  {
    sub_1002F3ECC(*v10);
  }

  *v10 = 0;
  *(v10 + 8) = 1;
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v11.super.isa = Set._bridgeToObjectiveC()().super.isa;
  objc_msgSendSuper2(&v12, "touchesEnded:withEvent:", v11.super.isa, a2, v2, ObjectType, v13.receiver, v13.super_class, v14.receiver, v14.super_class);
LABEL_11:
}

double sub_1002F44E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);

  return result;
}

void sub_1002F4598(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*(v2 + qword_10097F7C0) == 1)
  {
    v5 = *(v2 + qword_10097F7C8);
    *(v2 + qword_10097F7C8) = 0;

    v6 = v2 + qword_10097F7D0;
    *v6 = 0;
    *(v6 + 8) = 1;
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v7.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v8, "touchesCancelled:withEvent:", v7.super.isa, a2, v2, ObjectType, v9.receiver, v9.super_class);
  }

  else
  {
    sub_100005744(0, &qword_100981660, UITouch_ptr);
    sub_10008DB40();
    v7.super.isa = Set._bridgeToObjectiveC()().super.isa;
    objc_msgSendSuper2(&v9, "touchesCancelled:withEvent:", v7.super.isa, a2, v8.receiver, v8.super_class, v2, ObjectType);
  }
}

unint64_t sub_1002F46F0()
{
  result = qword_10097F828;
  if (!qword_10097F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F828);
  }

  return result;
}

uint64_t sub_1002F4744(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975C58, &qword_1007C6CA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002F47B4(void *a1, char a2, void *a3)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100975C58, &qword_1007C6CA0);
  __chkstk_darwin(v11);
  v15 = v55 - v14;
  v60 = a1[2];
  if (!v60)
  {
    goto LABEL_22;
  }

  v55[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v59 = *(v13 + 72);
  v61 = a1;
  sub_100031660(a1 + v17, v55 - v14, &qword_100975C58, &qword_1007C6CA0);
  v56 = v8;
  v62 = *(v8 + 32);
  v63 = v7;
  v62(v10, v15, v7);
  v58 = v16;
  v18 = v15[v16];
  v19 = *a3;
  v20 = sub_1003D7438(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_10004C678(v25, a2 & 1);
    v20 = sub_1003D7438(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v29 = v18;
  v30 = v20;
  sub_100053230();
  v20 = v30;
  v18 = v29;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v66 = v28;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690, qword_1007B39A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v56 + 8))(v10, v63);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = v18;
  v32 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v33 = v32[6];
  v57 = *(v56 + 72);
  v34 = v20;
  v62((v33 + v57 * v20), v10, v63);
  *(v32[7] + v34) = v31;
  v35 = v32[2];
  v24 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (!v24)
  {
    v32[2] = v36;
    v37 = v61;
    if (v60 == 1)
    {
LABEL_22:

      return;
    }

    v38 = v61 + v59 + v17;
    v39 = 1;
    while (v39 < v37[2])
    {
      sub_100031660(v38, v15, &qword_100975C58, &qword_1007C6CA0);
      v62(v10, v15, v63);
      v40 = v15[v58];
      v41 = *a3;
      v42 = sub_1003D7438(v10);
      v44 = v41[2];
      v45 = (v43 & 1) == 0;
      v24 = __OFADD__(v44, v45);
      v46 = v44 + v45;
      if (v24)
      {
        goto LABEL_23;
      }

      v47 = v43;
      if (v41[3] < v46)
      {
        sub_10004C678(v46, 1);
        v42 = sub_1003D7438(v10);
        if ((v47 & 1) != (v48 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v47)
      {
        goto LABEL_9;
      }

      v49 = *a3;
      *(*a3 + 8 * (v42 >> 6) + 64) |= 1 << v42;
      v50 = v42;
      v62((v49[6] + v57 * v42), v10, v63);
      *(v49[7] + v50) = v40;
      v51 = v49[2];
      v24 = __OFADD__(v51, 1);
      v52 = v51 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v39;
      v49[2] = v52;
      v38 += v59;
      v37 = v61;
      if (v60 == v39)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v53._object = 0x800000010080B8A0;
  v53._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v53);
  _print_unlocked<A, B>(_:_:)();
  v54._countAndFlagsBits = 39;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002F4D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F4D7C(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F4DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F4E3C()
{
  v1 = *(type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1002F3694(v2, v3);
}

uint64_t sub_1002F4EA0(void *a1)
{
  v3 = *(type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002EFE80(a1, v4);
}

unint64_t sub_1002F4F4C()
{
  result = qword_10097F850;
  if (!qword_10097F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F850);
  }

  return result;
}

unint64_t sub_1002F4FA0()
{
  result = qword_10097F858;
  if (!qword_10097F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F858);
  }

  return result;
}

double sub_1002F4FF4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfferButtonMetrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v23[-v9 - 8];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v11 = &xmmword_1009D4040;
  }

  else
  {
    v11 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v11, v23);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v12 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v12 = qword_100991028;
  }

  bottom = UIEdgeInsetsZero.bottom;
  v14 = sub_1000056A8(v4, v12);
  (*(v5 + 16))(v7, v14, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v24 = v16;
    v25 = v17;
    v26 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, 0.0);
  v20 = v19;
  (*(v5 + 8))(v10, v4, v18);
  sub_10003B944(v23);
  return (ceil(bottom + UIEdgeInsetsZero.top + v20) + 8.0 + 8.0) * a1 + 12.0 + 12.0;
}

void sub_1002F52EC()
{
  v1 = qword_10097F778;
  v2 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  AllButtonStyle = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
  (*(*(AllButtonStyle - 8) + 104))(v0 + v1, v2, AllButtonStyle);
  v4 = v0 + qword_1009CF450;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = qword_10097F780;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v6 = qword_10097F788;
  *(v0 + v6) = [objc_allocWithZone(UIView) init];
  *(v0 + qword_10097F790) = _swiftEmptyArrayStorage;
  v7 = qword_10097F798;
  *(v0 + v7) = [objc_opt_self() buttonWithType:0];
  v8 = (v0 + qword_10097F7A0);
  *v8 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v8[1] = 0;
  *(v0 + qword_10097F7A8) = _swiftEmptyArrayStorage;
  swift_weakInit();
  *(v0 + qword_10097F7B8) = _swiftEmptyArrayStorage;
  *(v0 + qword_10097F7C0) = 0;
  *(v0 + qword_10097F7C8) = 0;
  *(v0 + qword_1009CF458) = 0;
  v9 = v0 + qword_10097F7D0;
  *v9 = 0;
  *(v9 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1002F54C8(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a2;
  v28 = a3;
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v26 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_10097F7A8;
  swift_beginAccess();
  v32 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = qword_10097F790;

    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v14 = 0;
    v30 = v11 & 0xFFFFFFFFFFFFFF8;
    v31 = v11 & 0xC000000000000001;
    v29 = (v8 + 48);
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    v15 = 32;
    v25 = v13;
    while (1)
    {
      if (v31)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_16;
        }

        v8 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v32 + v13);
      if (v14 >= *(v16 + 16))
      {
        break;
      }

      v17 = *(v16 + v15);
      Lockup.impressionMetrics.getter();
      if ((*v29)(v6, 1, v7) == 1)
      {

        sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        v18 = v7;
        v19 = v26;
        (*v24)(v26, v6, v18);
        v20 = v17;
        [v20 bounds];
        [v28 convertRect:v20 fromCoordinateSpace:?];
        ImpressionsCalculator.addElement(_:at:)();

        v21 = v19;
        v7 = v18;
        v13 = v25;
        (*v23)(v21, v7);
      }

      ++v14;

      v15 += 16;
      if (i == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_14:

  return result;
}

uint64_t sub_1002F5818(uint64_t a1)
{
  result = type metadata accessor for Action();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeLinkedLabel(uint64_t a1)
{
  result = qword_10097F928;
  if (!qword_10097F928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1002F595C(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_1002F59B8(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, "setTextColor:", v5);
  v6 = [v4 textColor];
  if (v6)
  {
    v7 = v6;
    v8 = *&v4[qword_10097F920];
    *&v4[qword_10097F920] = v6;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v9 = v7;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      sub_1002F63D4();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1002F5AA8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_1002F5AEC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v9.receiver = a1;
  v9.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, "textAlignment");
  v8.receiver = v6;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "setTextAlignment:", a3);
  if ([v6 textAlignment] != v7)
  {
    sub_1002F63D4();
  }
}

id sub_1002F5B8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v23 = a2;
  v24 = a3;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  *(v4 + qword_10097F908) = _swiftEmptyArrayStorage;
  *(v4 + qword_10097F910) = 0;
  *(v4 + qword_10097F918) = 0;
  v13 = qword_10097F920;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  *(v4 + v13) = static UIColor.primaryText.getter();
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a1, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v16 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v20 = v16;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right, v23, v24}];
  [v20 setUserInteractionEnabled:1];
  v21 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v20 action:"labelTapped:"];
  [v20 addGestureRecognizer:v21];

  (*(v15 + 8))(a1, v14);
  return v20;
}

void sub_1002F5E7C(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_1002F63D4();
}

uint64_t sub_1002F5ED8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = dispatch thunk of DynamicTypeLabel.traitCollectionForFontUseCases.getter();
  v6 = [v5 preferredContentSizeCategory];

  dispatch thunk of DynamicTypeLabel.fontUseCaseContentSizeCategory.setter();
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  return sub_1002F63D4();
}

void sub_1002F6004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = qword_10097F908;
  swift_beginAccess();
  *&v4[v8] = _swiftEmptyArrayStorage;

  if (*(*&v4[v8] + 16))
  {
    v9 = &UIAccessibilityTraitLink;
  }

  else
  {
    v9 = &UIAccessibilityTraitStaticText;
  }

  [v4 setAccessibilityTraits:*v9];
  *&v4[qword_10097F910] = a1;

  *&v4[qword_10097F918] = a2;

  dispatch thunk of StyledText.plainText.getter();
  v10 = objc_allocWithZone(NSString);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithString:v11];

  v13 = *(a3 + 16);
  if (v13)
  {
    v27 = UIAccessibilityTraitLink;
    v28 = v12;
    v14 = v13 - 1;
    v15 = (a3 + 56);
    v29 = v8;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      v18 = String._bridgeToObjectiveC()();

      v19 = [v12 rangeOfString:v18 options:4];
      v21 = v20;

      if (v19 == NSNotFound.getter())
      {

        if (!v14)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        v22 = *&v4[v8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v8] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_100033670(0, v22[2] + 1, 1, v22);
          *&v4[v8] = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_100033670((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = v19;
        v26[5] = v21;
        v26[6] = v16;
        v26[7] = v17;
        v8 = v29;
        *&v4[v29] = v22;
        swift_endAccess();
        [v4 setAccessibilityTraits:v27];

        v12 = v28;
        if (!v14)
        {
          break;
        }
      }

      --v14;
      v15 += 4;
    }
  }

  sub_1002F63D4();
}

id sub_1002F62D8()
{
  [v0 setAttributedText:0];
  *&v0[qword_10097F910] = 0;

  v1 = qword_10097F908;
  swift_beginAccess();
  *&v0[v1] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  return [v0 setAccessibilityTraits:*v2];
}

void sub_1002F638C(void *a1)
{
  v1 = a1;
  sub_1002F63D4();
}

uint64_t sub_1002F63D4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &qword_100972ED0, &unk_1007B17B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v10 = dispatch thunk of DynamicTypeLabel.traitCollectionForFontUseCases.getter();
  v11 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = *&v0[qword_10097F910];
  v13 = *&v0[qword_10097F920];

  v14 = v13;
  v15 = [v0 textAlignment];
  v50 = [v1 lineBreakMode];
  v16 = qword_10097F908;
  swift_beginAccess();
  v17 = *&v1[v16];

  v18 = [v1 tintColor];
  v19 = v18;
  if (v12)
  {
    v42 = v15;
    v46 = v8;
    v47 = v6;
    v48 = v5;
    v49 = v1;

    v44 = v12;
    v45 = v11;
    v20 = dispatch thunk of StyledText.asAttributedString(using:)();
    v53 = v17;
    v21 = v20;
    v22 = objc_allocWithZone(NSMutableAttributedString);
    v41 = v21;
    v23 = [v22 initWithAttributedString:v21];
    v24 = v14;
    v25 = v23;
    v26 = [v23 length];
    v52 = NSForegroundColorAttributeName;
    v43 = v24;
    v27 = v53;
    v40 = v26;
    [v25 addAttribute:? value:? range:?];
    v28 = *(v27 + 16);
    if (v28)
    {
      v51 = NSUnderlineStyleAttributeName;
      v29 = v27 + 56;
      do
      {
        v30 = *(v29 - 24);
        v31 = *(v29 - 16);
        if (v19)
        {

          v32 = v19;
        }

        else
        {
          v33 = objc_opt_self();

          v32 = [v33 systemBlueColor];
        }

        v34 = v19;
        [v25 addAttribute:v52 value:v32 range:{v30, v31}];
        if (UIAccessibilityButtonShapesEnabled())
        {
          isa = Int._bridgeToObjectiveC()().super.super.isa;
          [v25 addAttribute:v51 value:isa range:{v30, v31}];
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    v36 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v36 setAlignment:v42];
    [v36 setLineBreakMode:v50];
    v37 = v36;
    [v25 addAttribute:NSParagraphStyleAttributeName value:v37 range:{0, v40}];

    v5 = v48;
    v1 = v49;
    v8 = v46;
    v6 = v47;
    v11 = v45;
  }

  else
  {

    v25 = 0;
  }

  v38 = sub_1002F68E8(v25, v11);
  [v1 setAttributedText:v38];

  return (*(v6 + 8))(v8, v5);
}

id sub_1002F68E8(void *a1, void *a2)
{
  v3 = a1;
  if (!a1 || !*(v2 + qword_10097F918))
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();

  v6 = v3;
  v7 = [v5 configurationWithFont:a2];
  v8 = static SystemImage.load(artwork:with:includePrivateImages:)();

  if (!v8)
  {

LABEL_6:
    v22 = v3;
    return v3;
  }

  [v8 size];
  v10 = v9;
  v12 = v11;
  [a2 capHeight];
  v14 = floor((v13 - v12) * 0.5);
  v15 = [objc_opt_self() tintColor];
  v16 = [v8 imageWithTintColor:v15];

  v17 = [objc_opt_self() textAttachmentWithImage:v16];
  [v17 setBounds:{2.0, v14, v10, v12}];
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 initWithString:v19];

  [v3 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v17];
  [v3 appendAttributedString:v21];

  return v3;
}

void sub_1002F6B48(void *a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1002F6DDC(a1);
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = qword_10097F908;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      v13 = (v10 + 56);
      while (1)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return;
        }

        v15 = *(v13 - 1);
        v14 = *v13;
        v17 = *(v13 - 3);
        v16 = *(v13 - 2);

        if (v8 >= v17 && &v8[-v17] < v16)
        {
          break;
        }

        ++v12;
        v13 += 4;
        if (v11 == v12)
        {
          goto LABEL_11;
        }
      }

      v19 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v5, 1, v19) == 1)
      {

        sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005F9AF4(v15, 1, v14, v5);

        (*(v20 + 8))(v5, v19);
      }
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_1002F6D74(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002F6B48(v4);
}

id sub_1002F6DDC(void *a1)
{
  v2 = v1;
  v4 = [v1 attributedText];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v5];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v9, 1.79769313e308}];
    v14 = [objc_allocWithZone(NSLayoutManager) init];
    [v14 addTextContainer:v13];
    [v12 addLayoutManager:v14];
    [v13 setLineFragmentPadding:0.0];
    [v13 setLineBreakMode:{objc_msgSend(v2, "lineBreakMode")}];
    [v13 setMaximumNumberOfLines:{objc_msgSend(v2, "numberOfLines")}];
    [a1 locationInView:v7];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer:v13];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_1002F700C()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = qword_10097F908;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10002B894(v3, &unk_100972A00, &unk_1007B3130);
    }

    else
    {

      sub_1005F9AF4(v10, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v6 != 0;
}

BOOL sub_1002F71CC(void *a1)
{
  v1 = a1;
  v2 = sub_1002F700C();

  return v2;
}

void sub_1002F7230()
{

  v1 = *(v0 + qword_10097F920);
}

id sub_1002F7290()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002F72C8(uint64_t a1)
{

  v2 = *(a1 + qword_10097F920);
}

uint64_t sub_1002F739C@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v2 = type metadata accessor for ComponentPrefetchSizing();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_1002F74F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1002F753C()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100987AF0, &unk_1007C6DA8);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = Lockup.heading.getter();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v15 = static UIColor.primaryText.getter();
      sub_10020E6F8(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  Lockup.title.getter();
  if (v21)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  Lockup.tertiaryTitle.getter();
  if (v23)
  {
    sub_10020E9A8();
    v24 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = String._bridgeToObjectiveC()();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  Lockup.subtitle.getter();
  if (v31)
  {
    v32 = String._bridgeToObjectiveC()();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = Lockup.subtitleTextColor.getter();
  if (!v42)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v42 = static UIColor.secondaryText.getter();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &StringUserDefaultsDebugSetting;
  v45 = [v30 layer];
  Lockup.subtitleTextFilter.getter();
  v46 = type metadata accessor for TitleEffectFilterType();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_1002F7BA4(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  TitleEffectFilterType.compositingFilter.getter();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10002A400(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v51 + 8))(v54, v49);
  v44 = &StringUserDefaultsDebugSetting;
  sub_100007000(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[43].base_prots];

  v58 = v62;
  Lockup.subtitleTextFilter.getter();
  v59 = v48(v58, 1, v46) == 1;
  sub_1002F7BA4(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_1002F7BA4(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100987AF0, &unk_1007C6DA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1002F7C0C(double a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v6 = v5;
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_10020F064(a3, (v6 - v7) * 0.5, a1);
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 absoluteDimension:v9];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = [v16 widthDimension];
  v19 = [v16 heightDimension];
  v20 = [v15 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B0B70;
  *(v22 + 32) = v17;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v20 subitems:isa];

  return v25;
}

uint64_t LinkableHeaderViewLayout.init(metrics:topSeparator:text:bottomSeparator:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[7];
  a5[6] = a1[6];
  a5[7] = v8;
  v9 = a1[9];
  a5[8] = a1[8];
  a5[9] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = a1[5];
  a5[4] = a1[4];
  a5[5] = v11;
  v12 = a1[1];
  *a5 = *a1;
  a5[1] = v12;
  sub_100005A38(a2, (a5 + 10));
  sub_100005A38(a3, a5 + 200);

  return sub_100005A38(a4, (a5 + 15));
}

uint64_t sub_1002F7EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799E0, qword_1007B5950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1002F83D4(a1, v3, a2, a3);
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v5 + 20, v5[23]);
  Measurable.measuredSize(fitting:in:)();
  v35 = v16;
  v36 = v15;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MinY = CGRectGetMinY(v39);
  sub_10002A400(v6 + 20, v6[23]);
  dispatch thunk of LayoutView.frame.setter();
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  sub_10002A400(v6, v6[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v12 + 8))(v14, v11);
  v33 = a2;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  sub_10002A400(v6 + 25, v6[28]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v19 = v18;
  v21 = v20;
  *&v32[1] = a3;
  v32[2] = v22;
  v37 = v23;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v24 = a5;
  v42.size.height = a5;
  v25 = CGRectGetMidX(v42) + v19 * -0.5;
  v43.origin.x = MinX;
  v43.size.height = v35;
  v43.origin.y = MinY;
  v43.size.width = v36;
  MaxY = CGRectGetMaxY(v43);
  sub_10002A400(v6 + 5, v6[8]);
  AnyDimension.topMargin(from:in:)();
  v28 = MaxY + v27;
  sub_10002A400(v6 + 25, v6[28]);
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v6 + 30, v6[33]);
  Measurable.measuredSize(fitting:in:)();
  v35 = v30;
  v36 = v29;
  v44.origin.x = v33;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = v24;
  CGRectGetMinX(v44);
  v45.origin.x = v25;
  v45.origin.y = v28;
  v45.size.width = v19;
  v45.size.height = v21;
  CGRectGetMaxY(v45);
  sub_10002A400(v6 + 10, v6[13]);
  AnyDimension.bottomMargin(from:in:)();
  sub_10002A400(v6 + 30, v6[33]);
  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_1002F83D4(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2, a2[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v10 = *(v7 + 8);
  v10(v9, v6);
  sub_10002A400(a2 + 25, a2[28]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_100129CF0((a2 + 15), v13);
  if (v14)
  {
    sub_10002A400(v13, v14);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v10(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_100036530(v13);
  }

  sub_10002A400(a2 + 30, a2[33]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 20, a2[23]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 10, a2[13]);
  AnyDimension.bottomMargin(from:in:)();
  return a3;
}

uint64_t sub_1002F86D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002F86F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F873C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1002F87D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1002F8800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F8848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F88C0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_10097F9C0);
  sub_1000056A8(v0, qword_10097F9C0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002F8A24(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v29 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0740);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = type metadata accessor for StaticDimension();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v25 = v3[1];
  v25(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD58 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D07A0);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v32);
  v15 = v28;
  v28(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v32);
  v15(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_1000056A8(v24, qword_1009D0698);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v32);
  v28(v21, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  return SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
}

char *sub_1002F8F10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v83 = type metadata accessor for SmallLockupLayout.Metrics();
  v74 = *(v83 - 8);
  __chkstk_darwin(v83);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v12;
  v13 = type metadata accessor for AutomationSemantics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DirectionalTextAlignment();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v21 - 8);
  v23 = &v72 - v22;
  v24 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *&v5[v24] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v25 = &v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  *v25 = 0;
  v25[1] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory] = 7;
  v26 = &v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground] = v27;
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_1009D1520);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v78 = v30 + 16;
  v77 = v31;
  v31(v23, v29, v28);
  v32 = *(v30 + 56);
  v79 = v30 + 56;
  v80 = v28;
  v76 = v32;
  v32(v23, 0, 1, v28);
  (*(v18 + 104))(v20, enum case for DirectionalTextAlignment.none(_:), v17);
  v33 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v81 = v23;
  v34 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] = v34;
  memset(v86, 0, 32);
  memset(v85, 0, sizeof(v85));
  v35 = v34;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v85, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v86, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v14 + 8))(v16, v13);
  v84.receiver = v5;
  v84.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v84, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v40 = v36;
  [v40 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground]];
  v41 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v42 = *&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  v43 = [v40 traitCollection];
  sub_100140A4C(v43);

  v44 = qword_10096D6D0;
  v45 = *&v40[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = v83;
  v47 = sub_1000056A8(v83, qword_10097F9C0);
  v48 = v74;
  v49 = *(v74 + 16);
  v50 = v82;
  v49(v82, v47, v46);
  v51 = *&v45[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v52 = v75;
  v49(v75, v50, v46);
  v53 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v48 + 24))(&v51[v53], v52, v46);
  swift_endAccess();
  [v51 setNeedsLayout];
  v54 = *(v48 + 8);
  v54(v52, v46);
  [v45 setNeedsLayout];

  v54(v50, v46);
  [*&v40[v41] setLayoutMargins:{2.0, 0.0, 3.0, 0.0}];
  v55 = qword_10096DD10;
  v56 = *(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = v80;
  v58 = sub_1000056A8(v80, qword_1009D06C8);
  v59 = v81;
  v60 = v77;
  v77(v81, v58, v57);
  v61 = v76;
  v76(v59, 0, 1, v57);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v62 = qword_10096DD38;
  v63 = *(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_1000056A8(v57, qword_1009D0740);
  v60(v59, v64, v57);
  v61(v59, 0, 1, v57);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*(*&v40[v41] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v41]];
  v65 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] setAccessibilityIgnoresInvertColors:1];
  [v40 addSubview:*&v40[v65]];
  v66 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  [*&v40[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] setDelegate:v40];
  v67 = *&v40[v66];
  [v67 addTarget:v40 action:"handleTapWithGestureRecognizer:"];

  [v40 addGestureRecognizer:*&v40[v66]];
  v68 = [*&v40[v65] layer];
  [v68 setOpacity:0.0];

  v69 = [*&v40[v41] layer];
  LODWORD(v70) = 1.0;
  [v69 setOpacity:v70];

  return v40;
}

void sub_1002F9904(char a1)
{
  if (a1)
  {
    v2 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
    v3 = String._bridgeToObjectiveC()();
    [v2 removeAnimationForKey:v3];

    v4 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
    v5 = String._bridgeToObjectiveC()();
    [v4 removeAnimationForKey:v5];
  }

  v6 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  [v6 setOpacity:0.0];

  v8 = [*(v1 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
  LODWORD(v7) = 1.0;
  [v8 setOpacity:v7];
}

id sub_1002F9AA8()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1002F9C38(double a1, double a2)
{
  v5 = sub_1002F9D70(1, a1, a2);
  v6 = sub_1002F9D70(0, a1, a2);
  v7 = [*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel) layer];
  v8 = String._bridgeToObjectiveC()();
  [v7 addAnimation:v5 forKey:v8];

  v9 = [*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) layer];
  v10 = String._bridgeToObjectiveC()();
  [v9 addAnimation:v6 forKey:v10];
}

id sub_1002F9D70(char a1, double a2, double a3)
{
  v4 = v3;
  v7 = a3 + 0.3;
  v8 = a3 + 0.6;
  sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  isa = NSNumber.init(floatLiteral:)(v7 / v8).super.super.isa;
  v10 = NSNumber.init(floatLiteral:)(0.3 / v8).super.super.isa;
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() animationWithKeyPath:v11];

  v13 = v12;
  [v13 setRemovedOnCompletion:1];
  v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [v13 setTimingFunction:v14];

  [v13 setBeginTime:CACurrentMediaTime() + a2];
  [v13 setDuration:v8];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007BB060;
  v16 = 0.0;
  *(v15 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v15 + 40) = v10;
  *(v15 + 48) = isa;
  v17 = v10;
  v18 = isa;
  *(v15 + 56) = NSNumber.init(floatLiteral:)(1.0);
  v19 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setKeyTimes:v19];

  if (a1)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((a1 & 1) == 0)
  {
    v16 = 1.0;
  }

  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B5350;
  *(v21 + 56) = &type metadata for Double;
  *(v21 + 32) = v16;
  *(v21 + 88) = &type metadata for Double;
  *(v21 + 64) = v20;
  *(v21 + 120) = &type metadata for Double;
  *(v21 + 96) = v20;
  *(v21 + 152) = &type metadata for Double;
  *(v21 + 128) = v16;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setValues:v22];

  [v13 setDelegate:v4];
  return v13;
}

void sub_1002FA154(char *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v4 = *&a1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  [v4 setHidden:0];
  [v4 removeFromSuperview];
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  [v6 setHidden:1];
  [v6 removeFromSuperview];
  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  [v1 addSubview:v8];
  v9 = *&a1[v3];
  *&a1[v3] = v6;
  v10 = v6;

  [a1 addSubview:v10];
  v11 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v12 = *&a1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v12 setHidden:0];
  [v12 removeFromSuperview];
  v13 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel];
  [v14 setHidden:1];
  [v14 removeFromSuperview];
  v15 = *&v1[v13];
  *&v1[v13] = v12;
  v16 = v12;

  [v1 addSubview:v16];
  v17 = *&a1[v11];
  *&a1[v11] = v14;
  v18 = v14;

  [a1 addSubview:v18];
  [a1 setNeedsLayout];
}

void sub_1002FA514()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v61 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v61 - 8);
  __chkstk_darwin(v61);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = &v59 - v7;
  v8 = type metadata accessor for SmallLockupLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v59 - v14;
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground];
  [v1 bounds];
  [v16 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v62 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  sub_10013F3FC(v15);
  [v25 layoutMargins];
  v27 = v26;
  v29 = v28;
  v30 = [v25 traitCollection];
  v31 = *(v9 + 16);
  v63 = v8;
  v31(v11, v15, v8);
  v32 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v34 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v35 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v35 = qword_100991028;
    }

    v36 = v61;
    v37 = sub_1000056A8(v61, v35);
    v38 = v5;
    (*(v3 + 16))(v5, v37, v36);
    v39 = v60;
    (*(v3 + 32))(v60, v38, v36);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v3 + 8))(v39, v36);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v41 = v40;

  v42 = *(v9 + 8);
  v43 = v63;
  v42(v11, v63);

  v44 = v29 + v27 + v41;
  v42(v15, v43);
  v45 = *&v1[v62];
  v65.origin.x = v18;
  v65.origin.y = v20;
  v65.size.width = v22;
  v65.size.height = v24;
  MinX = CGRectGetMinX(v65);
  v66.origin.x = v18;
  v66.origin.y = v20;
  v66.size.width = v22;
  v66.size.height = v24;
  v47 = CGRectGetMidY(v66) - v44 * 0.5;
  v67.origin.x = v18;
  v67.origin.y = v20;
  v67.size.width = v22;
  v67.size.height = v24;
  [v45 setFrame:{MinX, v47, CGRectGetWidth(v67), v44}];

  v48 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
  [*&v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel] sizeThatFits:{v22, v24}];
  v50 = v49;
  v51 = *&v1[v48];
  v68.origin.x = v18;
  v68.origin.y = v20;
  v68.size.width = v22;
  v68.size.height = v24;
  v52 = CGRectGetMinX(v68);
  v69.origin.x = v18;
  v69.origin.y = v20;
  v69.size.width = v22;
  v69.size.height = v24;
  MinY = CGRectGetMinY(v69);
  v70.origin.x = v18;
  v70.origin.y = v20;
  v70.size.width = v22;
  v70.size.height = v24;
  v54 = MinY + (CGRectGetHeight(v70) - v50) * 0.5;
  v71.origin.x = v18;
  v71.origin.y = v20;
  v71.size.width = v22;
  v71.size.height = v24;
  [v51 setFrame:{v52, v54, CGRectGetWidth(v71), v50}];

  v55 = &v1[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v56 = *v55;
  if (*v55)
  {
    v57 = *(v55 + 1);

    v56(v58);
    sub_10001F63C(v56, v57);
  }
}

void sub_1002FADB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5, uint64_t a6)
{
  v7 = v6;
  v201 = a6;
  v209 = a2;
  v11 = a5;
  v12 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v12 - 8);
  v200 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for SmallLockupLayout.Metrics();
  v198 = *(v199 - 8);
  __chkstk_darwin(v199);
  v197 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Artwork.Crop();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v184 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for Paragraph.Alignment();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v184 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v17 - 8);
  v190 = &v184 - v18;
  v213 = type metadata accessor for AdamId();
  v208 = *(v213 - 1);
  __chkstk_darwin(v213);
  v189 = &v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v212 = &v184 - v21;
  v22 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v22 - 8);
  v207 = &v184 - v23;
  v24 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v24 - 8);
  v206 = &v184 - v25;
  v26 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v26 - 8);
  v205 = &v184 - v27;
  v28 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v28 - 8);
  v204 = &v184 - v29;
  v30 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v30 - 8);
  v203 = &v184 - v31;
  v32 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v202 = &v184 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v35 - 8);
  v211 = &v184 - v36;
  v210 = type metadata accessor for TodayCard.Style();
  v216 = *(v210 - 8);
  __chkstk_darwin(v210);
  v188 = &v184 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v184 - v39;
  v41 = v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory];
  v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory] = a5;
  if (v11 == 7)
  {
    if (v41 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v7 setNeedsLayout];
    goto LABEL_6;
  }

  if (v41 == 7)
  {
    goto LABEL_5;
  }

  switch(v11)
  {
    case 6:
      if (v41 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v41 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v41 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v41 - 7) > 0xFFFFFFFC || v41 != v11)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v219 = a4;
  v42 = TodayCard.Style.overlayBackgroundColor.getter();
  [v7 setBackgroundColor:v42];

  v43 = [v7 traitCollection];
  if (v11 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v43 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v7 setLayoutMargins:{v45, v47, v49, v51}];
  v214 = a1;
  v52 = TodayCardMarketingLockupOverlay.lockup.getter();
  v215 = v7;
  v217 = v52;
  v218 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v53 = *&v7[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView];
  v54 = TodayCard.Style.overlayTextColor.getter();
  v55 = v54;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v57 = *(v56 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v56 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = v54;
  if (v57)
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v58 = v55;
    v57 = v57;
    v59 = static NSObject.== infix(_:_:)();

    if (v59)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v60 = v54;
  }

  sub_10003E7B4();
  v58 = v55;
LABEL_13:

  v61 = v215;
  v62 = v218;
  v63 = *(*(*&v215[v218] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v64 = v219;
  v65 = TodayCard.Style.overlayTextColor.getter();
  [v63 setTextColor:v65];

  v66 = *(*(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v67 = TodayCard.Style.overlayDetailTextColor.getter();
  [v66 setTextColor:v67];

  [*(*(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:1];
  v68 = *(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel);
  v69 = TodayCard.Style.overlayDetailTextColor.getter();
  [v68 setTextColor:v69];

  v70 = *(*(v61 + v62) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel);
  v71 = TodayCard.Style.overlayTextColor.getter();
  [v70 setTextColor:v71];

  v72 = v216;
  v73 = *(v216 + 16);
  v74 = v210;
  v187 = v216 + 16;
  v186 = v73;
  v73(v40, v64, v210);
  v76 = *(v72 + 88);
  v75 = v72 + 88;
  v185 = v76;
  v77 = v76(v40, v74);
  v184 = __PAIR64__(enum case for TodayCard.Style.automatic(_:), enum case for TodayCard.Style.white(_:));
  if (v77 == enum case for TodayCard.Style.automatic(_:) || v77 == enum case for TodayCard.Style.white(_:))
  {
    v78 = v218;
    [*(v61 + v218) setOverrideUserInterfaceStyle:{0, v184}];
    [*(*(*(v61 + v78) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) setTintColor:0];
  }

  else
  {
    if (v77 == enum case for TodayCard.Style.dark(_:))
    {
      v78 = v218;
      [*(v61 + v218) setOverrideUserInterfaceStyle:{2, v184}];
    }

    else
    {
      v78 = v218;
      if (v77 != enum case for TodayCard.Style.light(_:))
      {
        goto LABEL_81;
      }

      [*(v61 + v218) setOverrideUserInterfaceStyle:{1, v184}];
    }

    v79 = *(*(*(v61 + v78) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
    v80 = TodayCard.Style.overlayTextColor.getter();
    [v79 setTintColor:v80];
  }

  v216 = v75;
  v81 = *(v61 + v78);
  v82 = *(v33 + 104);
  v82(v202, enum case for OfferButtonPresenterViewAlignment.right(_:), v32);
  v83 = v203;
  v82(v203, enum case for OfferButtonPresenterViewAlignment.left(_:), v32);
  (*(v33 + 56))(v83, 0, 1, v32);
  sub_1002FD5B8(&unk_100970190, 255, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v84 = v81;
  v85 = v211;
  AccessibilityConditional.init(value:axValue:)();
  v86 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = *&v84[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
  v88 = Lockup.icon.getter();
  if (v88)
  {
  }

  [v87 setHidden:v88 == 0];
  v89 = *&v84[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v90 = type metadata accessor for OfferStyle();
  v91 = v204;
  (*(*(v90 - 8) + 56))(v204, 1, 1, v90);
  v92 = type metadata accessor for OfferEnvironment();
  v93 = v205;
  (*(*(v92 - 8) + 56))(v205, 1, 1, v92);
  v94 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v95 = v206;
  (*(*(v94 - 8) + 56))(v206, 1, 1, v94);
  v96 = type metadata accessor for OfferTint();
  v97 = v207;
  (*(*(v96 - 8) + 56))(v207, 1, 1, v96);
  sub_1004F3190(v217, v89, v85, v209, 1, 0, v91, v93, v97, v95);
  sub_10002B894(v97, &unk_100973AD0, &unk_1007B17C0);
  v89[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10070AB34();
  [v89 setNeedsLayout];
  sub_10002B894(v95, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v93, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v91, &qword_100973AE0, &unk_1007B17D0);
  v98 = v212;
  Lockup.adamId.getter();
  v99 = Lockup.crossLinkTitle.getter();
  v101 = v100;
  v207 = Lockup.crossLinkSubtitle.getter();
  v103 = v102;
  v104 = Lockup.includeBetaApps.getter();
  if (v101 && v103)
  {
    v105 = v104;
    v106 = v98;
    v107 = v208;
    v108 = v189;
    (*(v208 + 16))(v189, v106, v213);
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v110 = aBlock;
    v109 = v221;
    type metadata accessor for CrossLinkPresenter(0);
    swift_allocObject();
    v111 = v84;
    v112 = v99;
    v113 = v111;
    v183 = v110;
    v61 = v215;
    v114 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v108, v112, v101, v207, v103, v105 & 1, v84, &off_1008B5970, v183, v109);
    (*(v107 + 8))(v212, v213);
    sub_10002B894(v211, &unk_100973230, &unk_1007B17E0);
    v115 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v113[v115] = v114;

    v116 = v219;

    v117 = &unk_100975000;
    v118 = &selRef_setRequiresColorStatistics_;
  }

  else
  {

    v119 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
    swift_beginAccess();
    *&v84[v119] = 0;

    sub_10014024C(0, 0);

    (*(v208 + 8))(v98, v213);
    sub_10002B894(v85, &unk_100973230, &unk_1007B17E0);
    v117 = &unk_100975000;
    v118 = &selRef_setRequiresColorStatistics_;
    v116 = v219;
  }

  v120 = v218;
  v121 = *(*(v61 + v218) + v117[339]);
  v122 = *(v121 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v122)
  {
    v123 = v122;
    v124 = TodayCard.Style.overlayDetailTextColor.getter();
    [v123 v118[13]];

    v121 = *(*&v120[v61] + v117[339]);
  }

  v125 = &OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v126 = *(v121 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (!v126)
  {
    goto LABEL_39;
  }

  v127 = v126;
  v128 = TodayCard.Style.overlayDetailTextColor.getter();
  [v127 v118[13]];

  v129 = *(*(*&v120[v61] + v117[339]) + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (!v129)
  {
    goto LABEL_39;
  }

  v130 = qword_10096DD58;
  isEscapingClosureAtFileLocation = v129;
  if (v130 != -1)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v132 = type metadata accessor for FontUseCase();
    v133 = sub_1000056A8(v132, qword_1009D07A0);
    v134 = *(v132 - 8);
    v135 = v190;
    (*(v134 + 16))(v190, v133, v132);
    (*(v134 + 56))(v135, 0, 1, v132);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v136 = *(*(*&v120[v61] + v117[339]) + *v125);
    v118 = &selRef_setRequiresColorStatistics_;
    if (v136)
    {
      [v136 setAccessibilityIgnoresInvertColors:1];
    }

LABEL_39:
    v137 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel;
    v138 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_paragraphLabel);
    v139 = TodayCard.Style.overlayTextColor.getter();
    [v138 v118[13]];

    if (!TodayCardMarketingLockupOverlay.paragraph.getter())
    {
      break;
    }

    v212 = *(v61 + v137);
    v140 = Paragraph.text.getter();
    v141 = [v61 traitCollection];
    v61 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v140];
    v213 = [v140 length];
    v117 = swift_allocObject();
    v117[2] = 0;
    v117[3] = v141;
    v117[4] = v61;
    *(v117 + 40) = 1;
    v142 = swift_allocObject();
    *(v142 + 16) = sub_10010279C;
    *(v142 + 24) = v117;
    v224 = sub_1001027AC;
    v225 = v142;
    aBlock = _NSConcreteStackBlock;
    v221 = 1107296256;
    v222 = sub_1006606C4;
    v223 = &unk_1008BD7C8;
    v116 = _Block_copy(&aBlock);
    v125 = v141;
    v120 = v61;

    [v140 enumerateAttributesInRange:0 options:v213 usingBlock:{0x100000, v116}];

    _Block_release(v116);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v143 = v212;
      [v212 setAttributedText:v120];

      v61 = v215;
      v144 = *&v215[v137];
      v145 = v191;
      Paragraph.alignment.getter();
      v146 = v192;
      v147 = v193;
      v148 = (*(v192 + 88))(v145, v193);
      if (v148 == enum case for Paragraph.Alignment.left(_:))
      {
        v149 = 0;
        v120 = v218;
        v116 = v219;
      }

      else
      {
        v120 = v218;
        v116 = v219;
        if (v148 == enum case for Paragraph.Alignment.center(_:))
        {
          v149 = 1;
        }

        else if (v148 == enum case for Paragraph.Alignment.right(_:))
        {
          v149 = 2;
        }

        else if (v148 == enum case for Paragraph.Alignment.justified(_:))
        {
          v149 = 3;
        }

        else if (v148 == enum case for Paragraph.Alignment.localized(_:))
        {
          v149 = 4;
        }

        else
        {
          (*(v146 + 8))(v145, v147);
          v149 = 0;
        }
      }

      [v144 setTextAlignment:v149];

      [v61 setNeedsLayout];
      if ((*(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded) & 1) == 0)
      {
        sub_1002F9C38(3.0, 5.0);
      }

      break;
    }

    __break(1u);
LABEL_80:
    swift_once();
  }

  TodayCardMarketingLockupOverlay.lockup.getter();
  v150 = Lockup.icon.getter();

  if (v150)
  {
    v151 = v194;
    Artwork.crop.getter();
    v152 = Artwork.Crop.preferredContentMode.getter();
    (*(v195 + 8))(v151, v196);
    v153 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
    v154 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    v155 = v198;
    v156 = v153 + v154;
    v157 = v197;
    v158 = v199;
    (*(v198 + 16))(v197, v156, v199);
    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v155 + 8))(v157, v158);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v159 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v159 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    [*(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView) setContentMode:v152];
    v160 = *(*&v120[v61] + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
    type metadata accessor for ArtworkView();
    sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v161 = v160;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v162 = Artwork.backgroundColor.getter();
    if (v162 && (v163 = v162, [v162 _luminance], v165 = v164, v163, v165 >= 0.54))
    {
      v166 = objc_opt_self();
      v167 = v165 < 0.89;
    }

    else
    {
      v166 = objc_opt_self();
      v167 = 2;
    }

    v168 = [v166 effectWithBrightness:v167];
    v169 = TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter();
    [v168 setBackgroundColorForReducedTransparency:v169];

    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v171 = swift_allocObject();
    *(v171 + 16) = xmmword_1007B0B70;
    *(v171 + 32) = v168;
    sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v170 setBackgroundEffects:isa];

    goto LABEL_78;
  }

  v173 = v188;
  v174 = v210;
  v186(v188, v116, v210);
  v175 = v185(v173, v174);
  if (v175 == HIDWORD(v184) || v175 == v184)
  {
    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    [v170 setHidden:1];
LABEL_78:
    [v170 setHidden:TodayCardMarketingLockupOverlay.hideBackground.getter() & 1];

    return;
  }

  if (v175 == enum case for TodayCard.Style.dark(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:2];
LABEL_77:
    v177 = v176;
    v178 = TodayCardMarketingLockupOverlay.artworkBackgroundColor.getter();
    [v177 setBackgroundColorForReducedTransparency:v178];

    v170 = *(v61 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_materialBackground);
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1007B0B70;
    *(v179 + 32) = v177;
    sub_100005744(0, &qword_10097FB70, UIVisualEffect_ptr);
    v180 = v177;
    v181 = Array._bridgeToObjectiveC()().super.isa;

    [v170 setBackgroundEffects:v181];

    goto LABEL_78;
  }

  if (v175 == enum case for TodayCard.Style.light(_:))
  {
    v176 = [objc_opt_self() effectWithBrightness:0];
    goto LABEL_77;
  }

LABEL_81:
  aBlock = 0;
  v221 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  aBlock = 0xD00000000000002ALL;
  v221 = 0x80000001007FFFC0;
  v182._countAndFlagsBits = TodayCard.Style.rawValue.getter();
  String.append(_:)(v182);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002FCA30()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Style();
  v3 = __chkstk_darwin(v2);
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v6 = *(*(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  (*(v7 + 104))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Artwork.Style.unspecified(_:), v3);
  v8 = v6;
  ArtworkView.style.setter();

  v9 = *(*(v0 + v5) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v10);

  v11 = *(*(v1 + v5) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002FCBCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardMarketingLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardMarketingLockupOverlay.lockup.getter();
          Lockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

            (*(v8 + 8))(v10, v7);
          }
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
    }
  }
}

void sub_1002FCF38(char *a1, char a2)
{
  if (a2)
  {
    sub_1002FA154(a1);
  }

  else
  {
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_1002FCF70(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4, v5);
}

double sub_1002FCFBC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView);
  v6 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

double sub_1002FD140(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1002FD1A0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1002FD238()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1002FD294(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1002FD354(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100005A38(v7, v5 + 32);
  return sub_1002FD600;
}

void sub_1002FD420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView;
  v5 = *(*(v2 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v6 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FD5B8(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002FD514(uint64_t a1, uint64_t a2)
{
  result = sub_1002FD5B8(&qword_10097FAB0, a2, type metadata accessor for TodayCardMarketingLockupOverlayView, &unk_1007C6F54);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002FD5B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1002FD60C()
{
  v1 = OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_tapGestureRecognizer;
  *(v0 + v1) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_sizeCategory) = 7;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler);
  *v3 = 0;
  v3[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1002FD6F4(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
    }

    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC8AppStore35TodayCardMarketingLockupOverlayView_clickActionHandler] != 0;
  }

  else
  {

    return 0;
  }
}

id sub_1002FD82C()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v11 - v3;
  result = [v0 view];
  if (result)
  {
    v6 = result;
    v7 = *&v0[OBJC_IVAR____TtC8AppStore26TapActionGestureRecognizer_objectGraph];
    v8 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v4, 1, v8) == 1)
    {

      return sub_1000F40E0(v4);
    }

    else
    {

      sub_1005F9AF4(v10, 1, v7, v4);

      return (*(v9 + 8))(v4, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for SearchAdTransparencyLabel(uint64_t a1)
{
  result = qword_10097FBE8;
  if (!qword_10097FBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FDB74(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_1002FDC2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

char *sub_1002FDC78(void *a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DirectionalTextAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = v23 - v12;
  v14 = qword_10097FBC0;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = v1 + qword_10097FBD8;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  v16 = (v1 + qword_10097FBE0);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + qword_10097FBC8) = a1;
  v17 = a1;
  sub_1002FE9CC(v17);
  *(v1 + qword_10097FBD0) = v18;
  v19 = type metadata accessor for FontUseCase();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  (*(v8 + 104))(v10, enum case for DirectionalTextAlignment.none(_:), v7);
  v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  [v20 setUserInteractionEnabled:1];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(v23);
  sub_10003D444(v24);
  UIView.setAutomationSemantics(_:)();
  (*(v4 + 8))(v6, v3);
  v21 = qword_10097FBC0;
  [*&v20[qword_10097FBC0] addTarget:v20 action:"didTapLabelWithGestureRecognizer:"];
  [*&v20[v21] setDelegate:v20];
  [v20 addGestureRecognizer:*&v20[v21]];

  return v20;
}

double sub_1002FDFD4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = &a1[qword_10097FBD8];
  if (a1[qword_10097FBD8 + 16])
  {
    v4 = a1;
  }

  else
  {
    v6 = *v3;
    v5 = v3[1];
    v7 = a1;
    sub_1002FE134(v6, v5, &v12);
    if ((v13 & 1) == 0)
    {
      *&v9 = UIAccessibilityConvertFrameToScreenCoordinates(v12, v7);

      return v9;
    }
  }

  v11.receiver = a1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "accessibilityFrame");
  v9 = v8;

  return v9;
}

id sub_1002FE0C4(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "setAccessibilityFrame:", a2, a3, a4, a5);
}

void sub_1002FE134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v3 attributedText];
  if (v8)
  {
    v9 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v8];
    v10 = [objc_allocWithZone(NSLayoutManager) init];
    [v9 addLayoutManager:v10];
    [v4 bounds];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v11, v12}];
    [v13 setLineFragmentPadding:0.0];
    [v10 addTextContainer:v13];
    v24 = 0;
    v25 = 0;
    [v10 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v24}];
    [v10 boundingRectForGlyphRange:v24 inTextContainer:{v25, v13}];
    v21 = v14;
    v22 = v15;
    v20 = v16;
    v23 = v17;

    *&v19 = v20;
    *&v18 = v21;
    *(&v18 + 1) = v22;
    *(&v19 + 1) = v23;
  }

  else
  {
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v8 == 0;
}

void sub_1002FE304()
{
  v1 = v0;
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSForegroundColorAttributeName;
  v3 = qword_10096D0B8;
  v4 = NSForegroundColorAttributeName;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_1009CE068;
  v6 = sub_100005744(0, &qword_100970180, UIColor_ptr);
  *(inited + 40) = v5;
  *(inited + 64) = v6;
  *(inited + 72) = NSFontAttributeName;
  v7 = v5;
  v8 = NSFontAttributeName;
  v9 = [v0 font];
  *(inited + 104) = sub_10002849C(&qword_10097FC38, &qword_1007C70D8);
  *(inited + 80) = v9;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B0B70;
  v11 = *&v0[qword_10097FBD0];
  *(v10 + 32) = v11;
  v12 = v11;
  v13 = [v0 traitCollection];
  v14 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();
  v15 = [v14 length];
  v16 = &v1[qword_10097FBD8];
  *v16 = 0;
  *(v16 + 1) = v15;
  v16[16] = 0;
  v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v14];
  if (*&v1[qword_10097FBE0 + 8])
  {
    v18 = objc_allocWithZone(NSAttributedString);

    v19 = String._bridgeToObjectiveC()();

    v20 = [v18 initWithString:v19];

    [v17 appendAttributedString:v20];
  }

  [v1 setAttributedText:v17];
}

void sub_1002FE5CC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v5);
  type metadata accessor for DynamicTypeLabel();
  v6 = method lookup function for DynamicTypeLabel();
  v6(a1);
  v7 = *&v3[qword_10097FBC8];
  v8 = [v3 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  UIView.traitOverrides.getter();
  UIMutableTraits.preferredContentSizeCategory.setter();
  UIView.traitOverrides.setter();
  [v7 updateTraitsIfNeeded];
  sub_1002FE9CC(v7);
  v10 = *&v3[qword_10097FBD0];
  *&v3[qword_10097FBD0] = v11;

  sub_1002FE304();
}

BOOL sub_1002FE72C(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = &a1[qword_10097FBD8];
  if (a1[qword_10097FBD8 + 16])
  {
    return 0;
  }

  v8 = *v4;
  v7 = v4[1];
  v9 = a4;
  v10 = a1;
  sub_1002FE134(v8, v7, &v22);
  if (v23)
  {
    v5 = 0;
  }

  else
  {
    CGRect.adding(outsets:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v9 locationInView:v10];
    v24.x = v19;
    v24.y = v20;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v5 = CGRectContainsPoint(v25, v24);
  }

  return v5;
}

void sub_1002FE828(char *a1)
{
  v1 = *&a1[qword_10097FBC8] + qword_1009750A8;
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);
    v5 = a1;
    v4 = sub_10000827C(v2, v3);
    v2(v4);
    sub_10001F63C(v2, v3);
  }
}

double sub_1002FE8F0()
{

  return result;
}

double sub_1002FE954(uint64_t a1)
{

  return result;
}

void sub_1002FE9CC(void *a1)
{
  [a1 sizeToFit];
  [a1 bounds];
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:{v2, v3, v4, v5}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002FEB9C;
  *(v8 + 24) = v7;
  v11[4] = sub_1002FEBA4;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1002FDC2C;
  v11[3] = &unk_1008BD8B8;
  v9 = _Block_copy(v11);
  v10 = a1;

  [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

id sub_1002FEBD8(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6, __n128 a7)
{
  if (v7[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] == 1)
  {
    v7[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 0;
    sub_100755A34(*a1, a4, a3, a6, a7);
  }

  return [v7 setNeedsLayout];
}

uint64_t sub_1002FEC50()
{
  result = dispatch thunk of UpsellBreakout.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

id sub_1002FED28(double a1, double a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100680570(a4, v9, a1);
  type metadata accessor for UpsellBreakoutLayout();
  sub_1002FF610(&qword_100995CD0, &type metadata accessor for UpsellBreakoutLayout, &protocol conformance descriptor for UpsellBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  v12 = objc_opt_self();
  v13 = [v12 fractionalWidthDimension:1.0];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = objc_opt_self();
  v19 = [v12 fractionalWidthDimension:1.0];
  v20 = [v12 absoluteDimension:v11];
  v21 = [v15 sizeWithWidthDimension:v19 heightDimension:v20];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B0B70;
  *(v22 + 32) = v17;
  sub_1002FF658();
  v23 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v18 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v25;
}

void sub_1002FF034(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v3 = type metadata accessor for PageGrid();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  v46 = v2;
  sub_10009768C(v2 + v18, v17);
  v19 = v9[6];
  if (v19(v17, 1, v8))
  {
    sub_1000284E4(v17);
LABEL_6:
    [v46 bounds];
    v27 = v26;
    v29 = v28;
    v30 = v47;
    goto LABEL_7;
  }

  v41 = v7;
  v42 = v14;
  v20 = v8;
  v40 = v9[2];
  v40(v11, v17, v8);
  sub_1000284E4(v17);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v39 = v9[1];
  v39(v11, v8);
  v21 = v49;
  v22 = [v49 horizontalSizeClass];

  if (v22 != 2)
  {
    goto LABEL_6;
  }

  v23 = v46;
  v24 = v42;
  sub_10009768C(v46 + v18, v42);
  if (v19(v24, 1, v20))
  {
    sub_1000284E4(v24);
    [v23 bounds];
    Width = CGRectGetWidth(v50);
  }

  else
  {
    v40(v11, v24, v20);
    sub_1000284E4(v24);
    swift_getKeyPath();
    v31 = v43;
    ItemLayoutContext.subscript.getter();

    v39(v11, v20);
    v33 = v44;
    v32 = v45;
    v34 = v41;
    (*(v44 + 32))(v41, v31, v45);
    PageGrid.containerWidth.getter();
    Width = v35;
    PageGrid.containerHeight.getter();
    v37 = v36;
    (*(v33 + 8))(v34, v32);
    if (Width <= v37)
    {
      Width = v37;
    }
  }

  [v23 bounds];
  Height = CGRectGetHeight(v51);
  v29 = 710.0;
  if (Height > 710.0)
  {
    v29 = Height;
  }

  v30 = v47;
  v27 = Width;
LABEL_7:
  sub_10075549C(v30, v48, v27, v29);
}

void sub_1002FF488(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002FF610(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v5 = v4;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v6 = *(*(*(v3 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v6)
  {
    type metadata accessor for VideoView(0);
    if (swift_dynamicCastClass())
    {
      sub_1002FF610(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      v7 = v6;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_1002FF610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002FF658()
{
  result = qword_10098EFE0;
  if (!qword_10098EFE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098EFE0);
  }

  return result;
}

uint64_t sub_1002FF6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a12@<D4>, double a13@<D5>, double a16, double a17)
{
  v58 = a6;
  v53 = a5;
  v63 = a4;
  v55 = a13;
  v54 = a12;
  v64 = a1;
  v62 = a7;
  v49 = type metadata accessor for DynamicTypeSize();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Shelf.ContentType();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PageGrid.Direction();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v47 - v26;
  v28 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v28);
  v51 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v47 - v31;
  sub_100031660(a2, &v47 - v31, &unk_10098FFB0, qword_1007B3890);
  v50 = v28;
  sub_100031660(a3, &v32[*(v28 + 48)], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v60 = v23;
  v33 = *(v23 + 104);
  v34 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!LOBYTE(v65[0]))
  {
    v34 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v35 = *v34;
  v59 = v27;
  v61 = v22;
  v33(v27, v35, v22);
  ReviewsDiffablePagePresenter.initialFocusedReviewId.getter();
  v36 = v65[3];
  sub_10002B894(v65, &qword_10096FB90, &qword_1007B2A50);
  swift_getKeyPath();
  v37 = v57;
  v38 = v56;
  ReadOnlyLens.subscript.getter();

  if ((*(v38 + 88))(v21, v37) == enum case for Shelf.ContentType.productReview(_:))
  {
    v39 = v32;
    v40 = v59;
    v41 = v60;
    v42 = v61;
    if (v36)
    {
      (*(v60 + 16))(v52, v59, v61);
      sub_10069F96C(0.0);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    }

    else
    {
      v46 = v47;
      PageEnvironment.dynamicTypeSize.getter();
      (*(v41 + 16))(v52, v40, v42);
      sub_1001E7B04(v46);
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v48 + 8))(v46, v49);
    }

    (*(v41 + 8))(v40, v42);
    return sub_10002B894(v39, &qword_100974650, &unk_1007B6B70);
  }

  else
  {
    v65[0] = v53;
    v43 = v51;
    sub_100031660(v32, v51, &qword_100974650, &unk_1007B6B70);
    v44 = *(v50 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v60 + 8))(v59, v61);
    sub_10002B894(v32, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(v43 + v44, &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v43, &unk_10098FFB0, qword_1007B3890);
    return (*(v38 + 8))(v21, v37);
  }
}

uint64_t sub_1002FFDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003001C8();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1002FFE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1003001C8();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1002FFF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10030021C();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1002FFFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a12@<D6>, double a13@<D7>, double a14, double a15)
{
  v28[4] = a4;
  *&v28[2] = a12;
  *&v28[3] = a13;
  v28[0] = a5;
  v28[1] = a1;
  v18 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  v25 = *v15;
  sub_100031660(a2, v28 - v23, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(a3, &v24[*(v19 + 56)], &unk_10098FFB0, qword_1007B3890);
  v28[5] = v25;
  sub_100031660(v24, v21, &qword_100974650, &unk_1007B6B70);
  v26 = *(v19 + 56);
  sub_10010E37C();

  PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v24, &qword_100974650, &unk_1007B6B70);

  sub_10002B894(&v21[v26], &unk_10098FFB0, qword_1007B3890);
  return sub_10002B894(v21, &unk_10098FFB0, qword_1007B3890);
}

unint64_t sub_1003001C8()
{
  result = qword_10097FC88;
  if (!qword_10097FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC88);
  }

  return result;
}

unint64_t sub_10030021C()
{
  result = qword_10097FC90;
  if (!qword_10097FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097FC90);
  }

  return result;
}

void sub_100300270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_1009CF4A8) = 0;
  sub_100307B48();
  v5 = qword_10097FCC0;
  v6 = *(v2 + qword_10097FCC0);
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    if (v7)
    {
      v8 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
      v9 = *(v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    }

    else
    {
      v10 = v6 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
      v8 = *(v10 + 8);
      v9 = *v10;
    }

    ObjectType = swift_getObjectType();
    v12 = *(v8 + 264);
    v13 = v7;
    v14 = v12(ObjectType, v8);

    if (v14)
    {
      *&v14[qword_100988CB8 + 8] = &off_1008BD9D0;
      swift_unknownObjectWeakAssign();
    }

    v15 = *(v3 + v5);
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v16 != 0)
      {
        if (a1)
        {
          v18 = swift_getObjectType();
          v19 = *(a2 + 8);
          v20 = v16;
          v19(v18, a2);
          type metadata accessor for VideoPlaybackCoordinator();
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          swift_getObjectType();
          v21 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
          v22 = v20;
          dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
        }

        else
        {
          v23 = v16;
        }

        type metadata accessor for VideoPlaybackCoordinator();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        swift_getObjectType();
        v24 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
        v25 = v16;
        dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
      }
    }
  }
}

uint64_t sub_10030052C()
{
  swift_unknownObjectRelease();

  sub_10001F63C(*(v0 + qword_1009CF4B8), *(v0 + qword_1009CF4B8 + 8));
  sub_10001F63C(*(v0 + qword_1009CF4C0), *(v0 + qword_1009CF4C0 + 8));

  sub_10002B894(v0 + qword_10097FCE0, &qword_10097DBD0, &qword_1007BC750);

  return sub_10002B894(v0 + qword_1009CF4E0, &qword_100973D30, &unk_1007B1DC0);
}

id sub_100300678()
{
  ObjectType = swift_getObjectType();
  if (v0[qword_10097FCF0] == 1)
  {
    v0[qword_10097FCF0] = 0;
  }

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003006C8(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_10097FCF0] == 1)
  {
    a1[qword_10097FCF0] = 0;
  }

  v5.receiver = a1;
  v5.super_class = ObjectType;
  v3 = a1;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_100300728(uint64_t a1)
{
  swift_unknownObjectRelease();

  sub_10001F63C(*(a1 + qword_1009CF4B8), *(a1 + qword_1009CF4B8 + 8));
  sub_10001F63C(*(a1 + qword_1009CF4C0), *(a1 + qword_1009CF4C0 + 8));

  sub_10002B894(a1 + qword_10097FCE0, &qword_10097DBD0, &qword_1007BC750);

  return sub_10002B894(a1 + qword_1009CF4E0, &qword_100973D30, &unk_1007B1DC0);
}

void sub_100300898(char a1)
{
  v2 = v1;
  v4 = *&v1[qword_10097FCC0];
  if (v4)
  {
    v4[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled] = v1[qword_1009CF498];
    v5 = v4;
    sub_100768F60();
  }

  v6 = *&v2[qword_10097FCF8];
  if (v6)
  {
    [v6 setHidden:v2[qword_1009CF498]];
  }

  v7 = a1 & ~v2[qword_1009CF498];
  sub_1003009E4();
  if (v7 & 1) != 0 || (v8)
  {
    v2[qword_1009CF4B0] = 1;
    v9 = [v2 viewIfLoaded];
    [v9 setNeedsLayout];

    v2[qword_10097FCA0] = 1;
    v10 = [v2 viewIfLoaded];
    [v10 setNeedsLayout];
  }
}

void sub_1003009E4()
{
  v1 = qword_10097FCC0;
  v2 = *&v0[qword_10097FCC0];
  if (v2)
  {
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      if ((v0[qword_1009CF498] & 1) == 0)
      {
        if (*&v0[v1])
        {
          type metadata accessor for ListTodayCardCollectionViewCell(0);
          if (swift_dynamicCastClass())
          {
            v5 = [v4 superview];
            v6 = [v0 collectionView];
            v7 = v6;
            if (v5)
            {
              if (v6)
              {
                sub_100005744(0, &qword_100972EB0, UIView_ptr);
                v8 = static NSObject.== infix(_:_:)();

                if ((v8 & 1) == 0)
                {
LABEL_28:
                  v24 = objc_opt_self();
                  v25 = swift_allocObject();
                  *(v25 + 16) = v4;
                  *(v25 + 24) = v0;
                  v26 = swift_allocObject();
                  *(v26 + 16) = sub_100309914;
                  *(v26 + 24) = v25;
                  v35 = sub_10006F258;
                  v36 = v26;
                  v31 = _NSConcreteStackBlock;
                  v32 = 1107296256;
                  v33 = sub_1000489A8;
                  v34 = &unk_1008BDB70;
                  v27 = _Block_copy(&v31);
                  v28 = v0;

                  v18 = v4;

                  [v24 performWithoutAnimation:v27];
                  _Block_release(v27);
                  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

                  if ((v24 & 1) == 0)
                  {
                    v29 = [v28 collectionView];
                    if (v29)
                    {
                      v30 = v29;
                      [v29 insertSubview:v18 atIndex:0];

                      if ([v18 effectiveUserInterfaceLayoutDirection] == 1)
                      {
                        v23 = [v18 layer];
                        [v23 setFlipsHorizontalAxis:1];
                        goto LABEL_23;
                      }

                      goto LABEL_32;
                    }

LABEL_39:
                    __break(1u);
                    return;
                  }

                  goto LABEL_36;
                }

LABEL_15:

                return;
              }

              v7 = v5;
            }

            else if (!v6)
            {
              goto LABEL_15;
            }

            goto LABEL_28;
          }
        }
      }

      v9 = [v4 superview];
      v10 = [v0 view];
      v11 = v10;
      if (v9)
      {
        if (v10)
        {
          sub_100005744(0, &qword_100972EB0, UIView_ptr);
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            goto LABEL_15;
          }

LABEL_18:
          v13 = objc_opt_self();
          v14 = swift_allocObject();
          *(v14 + 16) = v4;
          *(v14 + 24) = v0;
          v15 = swift_allocObject();
          *(v15 + 16) = sub_1003098E8;
          *(v15 + 24) = v14;
          v35 = sub_10006F094;
          v36 = v15;
          v31 = _NSConcreteStackBlock;
          v32 = 1107296256;
          v33 = sub_1000489A8;
          v34 = &unk_1008BDAF8;
          v16 = _Block_copy(&v31);
          v17 = v0;
          v18 = v4;

          [v13 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

          if ((v13 & 1) == 0)
          {
            v19 = [v17 view];
            if (v19)
            {
              v20 = v19;
              v21 = [v17 collectionView];
              if (v21)
              {
                v22 = v21;
                [v20 insertSubview:v18 aboveSubview:v21];

                if ([v18 effectiveUserInterfaceLayoutDirection] == 1)
                {
                  v23 = [v18 layer];
                  [v23 setFlipsHorizontalAxis:0];
LABEL_23:

LABEL_33:
                  return;
                }

LABEL_32:

                goto LABEL_33;
              }

              goto LABEL_38;
            }

LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v11 = v9;
      }

      else if (!v10)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }
  }
}

void sub_100300F64(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v12 = v5;

  sub_1003010A0();
  static ViewControllerContainment.add(_:to:frame:)();

  if (*&v1[v3])
  {
    type metadata accessor for JULoadingViewController();
    if (swift_dynamicCastClass())
    {
      v7 = *&v1[qword_10097FCC0];
      if (v7)
      {
        v8 = [v7 viewIfLoaded];
        if (v8)
        {
          v9 = v8;
          v10 = [v1 view];
          if (!v10)
          {
            __break(1u);
            return;
          }

          v11 = v10;
          [v10 bringSubviewToFront:v9];
        }
      }
    }
  }
}

void sub_1003010A0()
{
  v1 = v0;
  v2 = *&v0[qword_10097FCC0];
  if (!v2 || !*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController] || (type metadata accessor for JULoadingViewController(), !swift_dynamicCastClass()))
  {
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];

      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;

  v8 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (v8)
  {
    v9 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8];
    v10 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    v10 = *&v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
    v8 = 0;
  }

  v13 = v8;
  sub_100769CEC(v10, v9, v7);
}

void sub_100301230()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewDidLoad", v5);
  v8 = type metadata accessor for Feature.iOS();
  v23[3] = v8;
  v23[4] = sub_10030A0F8(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v9 = sub_1000056E0(v23);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v23);
  if ((v8 & 1) == 0)
  {
    v10 = [v1 view];
    if (!v10)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v11 = v10;
    [v10 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v12 = [v1 view];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = v12;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v14 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  sub_10030312C();
  v15 = sub_10035F010();
  [v15 addTarget:v1 action:"dismissAnimated" forControlEvents:64];
  static AutomationSemantics.dismissButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v4 + 8))(v7, v3);
  v16 = [v1 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = v16;
  [v16 addSubview:v15];

  v18 = *&v1[qword_1009CF4C8];
  *&v1[qword_1009CF4C8] = v15;
  v19 = v15;

  type metadata accessor for ArticleLinkLoaderScrollObserver();
  swift_allocObject();
  v20 = sub_100585924();
  v21 = qword_10097FCC8;
  if (*&v1[qword_10097FCC8])
  {
    sub_10030A0F8(&qword_100980408, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_1007D5FA0);
  }

  CompoundScrollObserver.removeChild(_:)();

  *&v1[v21] = v20;
  swift_retain_n();

  sub_10030A0F8(&qword_100980408, type metadata accessor for ArticleLinkLoaderScrollObserver, &unk_1007D5FA0);
  CompoundScrollObserver.addChild(_:)();

  if (*&v1[qword_10097FCC0])
  {
    sub_1003009E4();
  }
}