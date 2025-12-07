void sub_100185808()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    v1 = v2;
    dispatch thunk of PlaybackCoordinator.resume()();
  }

  ArtworkLoader.isOccluded.setter();
}

void sub_10018592C(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1);
  ArtworkLoader.isOccluded.setter();
  v4 = *&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v4 && !*&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
  {

    v5 = [v2 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      if (v7)
      {

        v8 = [v2 transitionCoordinator];
        if (v8)
        {
          v9 = v8;
          v18 = sub_1001872B4;
          v19 = v4;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1006D1458;
          v17 = &unk_1008B6E68;
          v10 = _Block_copy(&v14);

          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          *(v12 + 16) = v11;
          *(v12 + 24) = v4;
          v18 = sub_1001872B8;
          v19 = v12;
          v14 = _NSConcreteStackBlock;
          v15 = 1107296256;
          v16 = sub_1006D1458;
          v17 = &unk_1008B6EB8;
          v13 = _Block_copy(&v14);

          [v9 animateAlongsideTransition:v10 completion:v13];

          _Block_release(v13);
          _Block_release(v10);
          swift_unknownObjectRelease();
          return;
        }

        sub_10006C3BC();
      }
    }
  }
}

void sub_100185B9C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v9 = v6;
      v10 = static NSObject.== infix(_:_:)();

      if ((v10 & 1) != 0 && ([a1 isCancelled] & 1) != 0 && (v11 = *(a3 + 40)) != 0)
      {
        v12 = *(a3 + 48);

        v11(v13, 1.0, 0.0);

        sub_10001F63C(v11, v12);
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

void sub_100185D1C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid) = 1;
  v3 = [v1 viewIfLoaded];
  [v3 setNeedsLayout];

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = v6;
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v6)
  {
    v5 = v6;
    dispatch thunk of PlaybackCoordinator.resume()();

    v4 = v5;
  }
}

void sub_100185E7C(char a1)
{
  v2 = v1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1 & 1);
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v4 = v18;
  if (v18)
  {
    v5 = v18;
    dispatch thunk of PlaybackCoordinator.pause()();
  }

  v6 = *&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [v2 presentedViewController];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation] == 1 || (v9 = [v2 transitionCoordinator]) == 0)
  {
    v15 = *(v6 + 40);
    if (!v15)
    {

      goto LABEL_6;
    }

    v16 = *(v6 + 48);

    v15(v17, 1.0, 0.0);

    sub_10001F63C(v15, v16);
  }

  else
  {
    v10 = v9;
    v22 = sub_1001872A4;
    v23 = v6;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1006D1458;
    v21 = &unk_1008B6DC8;
    v11 = _Block_copy(&v18);

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v6;
    v22 = sub_1001872AC;
    v23 = v13;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1006D1458;
    v21 = &unk_1008B6E40;
    v14 = _Block_copy(&v18);

    [v10 animateAlongsideTransition:v11 completion:v14];

    _Block_release(v14);
    _Block_release(v11);
    swift_unknownObjectRelease();
  }
}

void sub_100186144(void *a1, uint64_t a2)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for StoreCollectionViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*((swift_isaMask & *v5) + 0x158))();
    }
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    v7 = *(a2 + 48);

    v6(v8, 1.0, 0.0);

    sub_10001F63C(v6, v7);
  }
}

void sub_10018623C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v7 = v4;
        v8 = static NSObject.== infix(_:_:)();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
        {
          v9 = [v7 navigationController];
          if (v9)
          {
            v10 = v9;
            v11 = [v9 navigationBar];

            if (v11)
            {

              sub_10006C3BC();
            }
          }
        }
      }
    }
  }
}

void sub_1001863DC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v3, "as_viewDidBecomePartiallyVisible");
  ArtworkLoader.isOccluded.setter();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    v1 = v2;
    dispatch thunk of PlaybackCoordinator.pause()();
  }
}

void sub_10018652C(void *a1, uint64_t a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a3, a4);
  v8 = *&v4[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v8)
  {
    v10[4] = sub_100187444;
    v10[5] = v8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1006D1458;
    v10[3] = &unk_1008B6DA0;
    v9 = _Block_copy(v10);
    swift_retain_n();

    [a1 animateAlongsideTransition:v9 completion:0];
    _Block_release(v9);
  }
}

void sub_1001866C4(uint64_t a1, uint64_t a2)
{
  v24.receiver = v2;
  v24.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v24, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    v4 = v3;
    [v2 pageMarginInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView;
    [*&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_titleView] layoutMargins];
    v20 = v6 == v17 && v8 == v14 && v10 == v15 && v12 == v16;
    if (v20 || ([*&v4[v13] setLayoutMargins:{v6, v8, v10, v12}], objc_msgSend(v4, "invalidateIntrinsicContentSize"), (v21 = *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver]) == 0))
    {
    }

    else
    {
      v22 = *&v4[OBJC_IVAR____TtC8AppStore14UberHeaderView_sizeChangeObserver + 8];

      v21(v23);

      sub_10001F63C(v21, v22);
    }
  }

  if (v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] == 1)
  {
    v2[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 0;
    sub_1001846F8();
  }
}

void sub_1001868CC(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber);
  if (v4)
  {
    v15 = v4;
    if (!a1)
    {
      goto LABEL_14;
    }

    type metadata accessor for Uber();
    sub_1001873D4(&qword_100973B40, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);

    v5 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v5)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberHeaderView);
  if (v6)
  {
    v7 = v6;
    if (Uber.video.getter())
    {

      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v8 = *(*(*&v7[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v8)
      {
        type metadata accessor for VideoView(0);
        v9 = swift_dynamicCastClass();
        if (v9)
        {
          sub_1001873D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
          v10 = v8;
        }
      }

      else
      {
        v9 = 0;
      }

      sub_1001873D4(&qword_100974F38, type metadata accessor for UberHeaderView, &unk_1007B6E78);
      v11 = v7;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }

    else
    {
    }
  }

LABEL_14:
  v12 = sub_100184C6C();
  if (!v12)
  {
LABEL_20:
    sub_10018526C();
    return;
  }

  v13 = v12;
  if (!*(v2 + v3))
  {

    goto LABEL_20;
  }

  v14 = *(*(*&v12[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);

  if (v14)
  {
    sub_100183998(v13);
  }

  sub_100184928();
}

double sub_100186B90()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uberScrollObserver];
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
    {
      v2 = *(v1 + 40);
      if (v2)
      {
        v3 = *(v1 + 48);

        v4 = sub_10000827C(v2, v3);
        v2(v4, 1.0, 0.0);

        sub_10001F63C(v2, v3);
      }
    }

    else
    {

      v6 = [v0 navigationController];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 navigationBar];

        if (v8)
        {

          sub_10006C3BC();
        }
      }
    }
  }

  return result;
}

void sub_100186CC0(char *a1, uint64_t a2)
{
  v3 = *&a1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle];
  *&a1[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_statusBarStyle] = a2;
  if (v3 != a2)
  {
    v5 = [objc_allocWithZone(UIStatusBarAnimationParameters) init];
    [v5 setSkipFencing:1];
    [a1 _setNeedsStatusBarAppearanceUpdateWithAnimationParameters:v5];
  }
}

void sub_100186D5C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_contentInsetsInvalid] = 1;
    v2 = Strong;
    v3 = [Strong viewIfLoaded];
    [v3 setNeedsLayout];
  }
}

void sub_100186DE4(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10018442C(a2, a3);
  }
}

void sub_100186FF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for UberedCollectionViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v5 = [v2 traitCollection];
  v6 = UITraitCollection.isSizeClassCompact.getter();

  if (!a1 || (UITraitCollection.isSizeClassCompact.getter() & 1) != (v6 & 1))
  {
    v7 = sub_100184C6C();
    if (v7)
    {
      v8 = v7;
      if (*&v3[OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_uber])
      {

        sub_100183998(v8);

        return;
      }
    }

    sub_10018526C();
  }
}

double sub_10018714C()
{

  return result;
}

id sub_1001871AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for UberedCollectionViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100187270(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_startedAsFlowPreview) = result;
  if (result)
  {
    *(v1 + OBJC_IVAR____TtC8AppStore30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 1;
  }

  return result;
}

void sub_1001872C0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v7 = v5;

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];

    static ViewControllerContainment.add(_:to:frame:)();

    sub_100186B90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001873D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10018744C()
{
  result = qword_100974A48;
  if (!qword_100974A48)
  {
    type metadata accessor for BadgeCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974A48);
  }

  return result;
}

double sub_1001874A4()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v4, qword_1009D2508);
  v5 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v7 = v6;

  return v7;
}

uint64_t sub_100187608(uint64_t a1)
{
  v3 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView);
  v18 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v19 = &protocol witness table for UIView;
  v17 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel);
  v15 = type metadata accessor for DynamicTypeLabel();
  v16 = &protocol witness table for UIView;
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel);
  v14[5] = &protocol witness table for UIView;
  v14[6] = v8;
  v14[4] = v15;
  v14[1] = v9;
  (*(v4 + 16))(v6, a1, v3);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  return SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)();
}

void *sub_100187770(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  (*(v4 + 56))(v12, 0, 1, v3);
  v13 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v12, v2 + v13, &qword_10097DBD0, &qword_1007BC750);
  swift_endAccess();
  type metadata accessor for TodayCard();
  sub_100189B2C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v15 = v17;
  if (v17)
  {
    sub_100031660(v2 + v13, v9, &qword_10097DBD0, &qword_1007BC750);
    if ((*(v4 + 48))(v9, 1, v3) == 1)
    {

      return sub_10002B894(v9, &qword_10097DBD0, &qword_1007BC750);
    }

    else
    {
      (*(v4 + 32))(v6, v9, v3);
      (*((swift_isaMask & *v2) + 0xD8))(v15, v6, v16);
      [v2 setNeedsLayout];

      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

uint64_t sub_100187A84@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  v37.super.isa = a1;
  v39 = a2;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v6 - 8);
  v38 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AspectRatio.init(_:_:)();
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1760);
  v10 = *(v8 - 8);
  v11 = *(v10 + 16);
  v12 = v10 + 16;
  v34 = v9;
  v11(v5);
  v13 = enum case for FontSource.useCase(_:);
  v36 = v3[13];
  v36(v5);
  v43 = type metadata accessor for StaticDimension();
  v56[3] = v43;
  v56[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v56);
  v54 = v2;
  v55 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(&v53);
  v35 = v3[2];
  v41 = v3 + 2;
  v35(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v15 = v3[1];
  v42 = v3 + 1;
  v32 = v15;
  v15(v5, v2);
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v8, qword_1009D1778);
  (v11)(v5, v33, v8);
  v40 = v13;
  v16 = v13;
  v17 = v36;
  (v36)(v5, v16, v2);
  v54 = v43;
  v31 = v3 + 13;
  v29 = v8;
  v55 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v53);
  v28 = v12;
  v30 = v11;
  v51 = v2;
  v52 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v50);
  v19 = v35;
  v35(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v20 = v32;
  v32(v5, v2);
  (v11)(v5, v34, v8);
  (v17)(v5, v40, v2);
  v51 = v43;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(v50);
  v21 = v20;
  isa = v37.super.isa;
  v23 = FontSource.font(compatibleWith:)(v37).super.isa;
  [(objc_class *)v23 lineHeight];
  v48 = v2;
  v49 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v47);
  v19(v24, v5, v2);
  StaticDimension.init(_:scaledLike:)();

  v21(v5, v2);
  v30(v5, v33, v29);
  (v17)(v5, v40, v2);
  v48 = v43;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(v47);
  v25 = FontSource.font(compatibleWith:)(isa).super.isa;
  [(objc_class *)v25 lineHeight];
  v45 = v2;
  v46 = &protocol witness table for FontSource;
  v26 = sub_1000056E0(v44);
  v19(v26, v5, v2);
  StaticDimension.init(_:scaledLike:)();

  v21(v5, v2);
  v45 = type metadata accessor for ZeroDimension();
  v46 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v44);
  static ZeroDimension.zero.getter();
  return SmallStoryCardLayout.Metrics.init(contentAspectRatio:headingPrimarySpace:descriptionPrimarySpace:headingSecondarySpace:descriptionSecondarySpace:descriptionBottomSpace:descriptionNumberOfLines:headingNumberOfLines:)();
}

char *sub_10018807C(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  v17 = *(*(v16 - 8) + 56);
  v53 = v4;
  v17(&v4[v15], 1, 1, v16);
  v51 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1760);
  v20 = *(v18 - 8);
  v50 = *(v20 + 16);
  v50(v14, v19, v18);
  v49 = *(v20 + 56);
  v49(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v22 = *(v10 + 104);
  v22(v52, enum case for DirectionalTextAlignment.leading(_:), v9);
  v23 = type metadata accessor for DynamicTypeLabel();
  v48 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v53[v51] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v51 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v18, qword_1009D1778);
  v50(v14, v26, v18);
  v49(v14, 0, 1, v18);
  v22(v52, v21, v48);
  v27 = objc_allocWithZone(v24);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v53;
  *&v53[v51] = v28;
  v30 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  *&v29[v30] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  v32 = type metadata accessor for PageGrid();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  *&v29[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  v33 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v54.receiver = v29;
  v54.super_class = v33;
  v34 = objc_msgSendSuper2(&v54, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v36 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  [*&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] _setCornerRadius:20.0];
  [*&v34[v36] setClipsToBounds:1];
  v37 = *&v34[v36];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v38 = v37;
  v39 = static UIColor.placeholderBackground.getter();
  [v38 setBackgroundColor:v39];

  v40 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  v41 = *&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel];
  v42 = static UIColor.secondaryText.getter();
  [v41 setTextColor:v42];

  [*&v34[v40] setNumberOfLines:2];
  v43 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel] setNumberOfLines:2];
  v44 = [v34 contentView];
  [v44 addSubview:*&v34[v40]];

  v45 = [v34 contentView];
  [v45 addSubview:*&v34[v43]];

  v46 = [v34 contentView];
  [v46 addSubview:*&v34[v36]];

  return v34;
}

id sub_1001886B8()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SmallStoryCardLayout();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  v20.receiver = v1;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits])
  {
    swift_unknownObjectRetain();
    v15 = [v1 traitCollection];
    v18 = v2;
    v16 = v15;
    sub_100187A84(v15, v12);

    sub_100187608(v12);
    v17 = [v1 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();

    SmallStoryCardLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v18);
    (*(v6 + 8))(v8, v19);
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

id sub_1001889EC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = 0;
  swift_unknownObjectRelease();
  if (*&v0[v1])
  {
    [v0 setNeedsLayout];
  }

  [*&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel] setText:0];
}

uint64_t sub_100188BB0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel) text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v21[0] = v4;
  v5 = [*(v0 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel) text];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = _swiftEmptyArrayStorage;
LABEL_8:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_100033E38(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_100033E38((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_8;
    }
  }

  sub_10002849C(&unk_100984350, &unk_1007B47A0);
  swift_arrayDestroy();
  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_10015872C();
  v19 = BidirectionalCollection<>.joined(separator:)();

  return v19;
}

id sub_100188E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BaseTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_100977358;
  if (!qword_100977358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100188FC4(uint64_t a1)
{
  sub_1001890DC(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_1001890DC(319, &qword_100977370, &type metadata accessor for PageGrid);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001890DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100189130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1001891B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0, &unk_1007B0B60);
}

uint64_t sub_10018921C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0, &unk_1007B0B60);
  return swift_endAccess();
}

double sub_10018936C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = ShelfLayoutContext.traitCollection.getter();
  sub_100187A84(v8, v7);

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  v9 = ShelfLayoutContext.traitCollection.getter();
  static SmallStoryCardLayout.estimatedMeasurements(fitting:using:with:)();
  v11 = v10;

  (*(v5 + 8))(v7, v4);
  return v11;
}

id sub_10018957C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel];
  TodayCard.collapsedHeading.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  PageGrid.containerWidth.getter();
  v6 = v5;
  v7 = [v1 traitCollection];
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v18.receiver = v9;
  v18.super_class = v8;
  v11 = objc_msgSendSuper2(&v18, "init");
  v12 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits;
  *&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits] = v11;
  v13 = v11;
  swift_unknownObjectRelease();
  if (*&v1[v12])
  {
    [v1 setNeedsLayout];
  }

  v14 = *&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel];
  TodayCard.inlineDescription.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  return [v1 setNeedsLayout];
}

void sub_100189718()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_itemLayoutContext;
  v9 = type metadata accessor for ItemLayoutContext();
  v10 = *(*(v9 - 8) + 56);
  v32 = v0;
  v10(v0 + v8, 1, 1, v9);
  v29 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_headingLabel;
  if (qword_10096E2A0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1760);
  v13 = *(v11 - 8);
  v28 = *(v13 + 16);
  v28(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = enum case for DirectionalTextAlignment.leading(_:);
  v16 = v2 + 104;
  v17 = *(v2 + 104);
  v30 = v16;
  v31 = v1;
  v17(v4, enum case for DirectionalTextAlignment.leading(_:), v1);
  v18 = type metadata accessor for DynamicTypeLabel();
  v19 = objc_allocWithZone(v18);
  *(v32 + v29) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_descriptionLabel;
  if (qword_10096E2A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v11, qword_1009D1778);
  v28(v7, v20, v11);
  v14(v7, 0, 1, v11);
  v17(v4, v15, v31);
  v21 = objc_allocWithZone(v18);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = v32;
  *(v32 + v29) = v22;
  v24 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView;
  *(v23 + v24) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  v26 = type metadata accessor for PageGrid();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  *(v23 + OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100189B2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100189BB0()
{
  v0 = type metadata accessor for AppPromotionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  type metadata accessor for AppPromotion();
  sub_10018A15C(&qword_1009744D8, &type metadata accessor for AppPromotion, &protocol conformance descriptor for AppPromotion);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v14[1])
  {
    return 0;
  }

  AppPromotion.promotionType.getter();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for AppPromotionType.appEvent(_:))
  {
    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppEventCollectionViewCell(0);
    v9 = &unk_100977450;
    v10 = type metadata accessor for AppEventCollectionViewCell;
    v11 = &unk_1007BEFA0;
  }

  else
  {
    if (v7 != enum case for AppPromotionType.contingentOffer(_:) && v7 != enum case for AppPromotionType.offerItem(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v1 + 8))(v6, v0);

    v8 = type metadata accessor for AppPromotionOfferCollectionViewCell(0);
    v9 = &unk_100977448;
    v10 = type metadata accessor for AppPromotionOfferCollectionViewCell;
    v11 = &unk_1007B4558;
  }

  sub_10018A15C(v9, v10, v11);
  return v8;
}

uint64_t sub_100189E38()
{
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v15 - v5;
  v7 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.appPromotion(_:), v0);
  sub_10018A15C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15[2] == v15[0] && v15[3] == v15[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);

    return sub_100189BB0();
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);

  if (v12)
  {
    return sub_100189BB0();
  }

  return 0;
}

uint64_t sub_10018A15C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10018A1A4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10018A3C8()
{
  v0 = sub_10002849C(&qword_100977558, &qword_1007BC928);
  sub_100005644(v0, qword_100977480);
  sub_1000056A8(v0, qword_100977480);
  sub_10002849C(&unk_100977570, qword_1007BC930);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A454()
{
  v0 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  sub_100005644(v0, qword_100977498);
  sub_1000056A8(v0, qword_100977498);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A4CC()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009774B0);
  sub_1000056A8(v0, qword_1009774B0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A54C()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009774C8);
  sub_1000056A8(v0, qword_1009774C8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A5C4()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009774E0);
  sub_1000056A8(v0, qword_1009774E0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A63C()
{
  v0 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  sub_100005644(v0, qword_1009774F8);
  sub_1000056A8(v0, qword_1009774F8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A6B4()
{
  v0 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  sub_100005644(v0, qword_100977510);
  sub_1000056A8(v0, qword_100977510);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10018A72C()
{
  ObjectType = swift_getObjectType();
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  v128 = *(v0 - 8);
  __chkstk_darwin(v0);
  v122 = v117 - v1;
  v131 = type metadata accessor for UUID();
  v2 = *(v131 - 8);
  __chkstk_darwin(v131);
  v4 = v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v117 - v7;
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096D1B0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v9 = sub_10002849C(&qword_100977558, &qword_1007BC928);
    sub_1000056A8(v9, qword_100977480);
    v10 = Preferences.subscript.getter();
    v12 = v11;

    v13 = swift_getObjectType();
    if (qword_10096D1E0 != -1)
    {
      swift_once();
    }

    v123 = v0;
    v126 = v4;
    v132 = v2;
    v14 = sub_1000056A8(v5, qword_100977510);
    v15 = *(v6 + 16);
    v125 = v5;
    v15(v8, v14, v5);
    v136 = xmmword_1007BC8A0;
    v124 = v13;
    Preferences.subscript.setter();
    *&v136 = static Locale.availableIdentifiers.getter();

    sub_10016FC88(&v136);
    v117[5] = v14;
    v5 = 0xED00006449656C61;

    v16 = sub_1002A5878(v136);

    *&v136 = &off_1008AFBB8;
    sub_1003949BC(v16);
    v6 = v136;
    v2 = *(v136 + 16);
    v8 = v131;
    if (!v2)
    {
      break;
    }

    v134 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = 0;
    while (v4 < *(v6 + 16))
    {
      v136 = *(v6 + 16 * v4 + 32);

      v0 = 0xED00006449656C61;
      v8 = v10;
      sub_10018BA48(&v136, v10, v12, ObjectType, v139);

      ++v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v2 == v4)
      {

        v17 = v134;
        v8 = v131;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_10:
  v127 = v12;
  v121 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1007BC8B0;
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v12;
  strcpy((v18 + 32), "unsetLocaleId");
  *(v18 + 46) = -4864;
  *(v18 + 48) = ObjectType;
  v117[4] = type metadata accessor for MenuDebugSetting();
  v19 = swift_allocObject();
  v19[7] = 0xD000000000000011;
  v19[8] = 0x8000000100804C30;
  v19[9] = v17;
  v19[10] = sub_10018C14C;
  v19[11] = v18;
  swift_unknownObjectRetain();

  v20 = v126;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  v24 = *(v132 + 1);
  v132 += 8;
  v130 = v24;
  v24(v20, v8);
  *&v136 = v21;
  *(&v136 + 1) = v23;
  AnyHashable.init<A>(_:)();
  if (qword_10096D1B8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v125, qword_100977498);
  Preferences.subscript.getter();
  v26 = *(&v136 + 1);
  v25 = v136;
  if (!*(&v136 + 1))
  {
    v25 = 0x636F4C7465736E75;
    v26 = 0xED00006449656C61;
  }

  v134 = v25;
  v135 = v26;
  v27 = AnyHashable.init<A>(_:)();
  __chkstk_darwin(v27);
  v117[-2] = &v136;

  sub_10070DDEC(sub_1001587FC, &v117[-4], v17);
  v117[3] = 0;

  sub_1000C36CC(&v136);
  *(v129 + 32) = v19;
  if (qword_10096D1C0 != -1)
  {
    swift_once();
  }

  v28 = v123;
  v29 = sub_1000056A8(v123, qword_1009774B0);
  v30 = v128;
  v31 = v128 + 16;
  v32 = *(v128 + 16);
  v33 = v122;
  v32(v122, v29, v28);
  v34 = type metadata accessor for BoolPreferencesDebugSetting(0);
  v35 = swift_allocObject();
  strcpy((v35 + 56), "Screamer Mode");
  *(v35 + 70) = -4864;
  *(v35 + 72) = 0xD000000000000025;
  *(v35 + 80) = 0x8000000100804C50;
  *(v35 + 88) = 0;
  v120 = v31;
  v119 = v32;
  v32((v35 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key), v33, v28);
  v36 = (v35 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v37 = v127;
  *v36 = v10;
  v36[1] = v37;
  swift_unknownObjectRetain();
  v38 = v126;
  UUID.init()();
  v39 = UUID.uuidString.getter();
  v41 = v40;
  v130(v38, v131);
  *&v136 = v39;
  *(&v136 + 1) = v41;
  v42 = v28;
  AnyHashable.init<A>(_:)();
  v43 = *(v30 + 8);
  v128 = v30 + 8;
  v118 = v43;
  v43(v33, v28);
  *(v129 + 40) = v35;
  if (qword_10096D1C8 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v28, qword_1009774C8);
  v45 = v119;
  v119(v33, v44, v28);
  v46 = swift_allocObject();
  v117[1] = v34;
  v47 = v33;
  v48 = v46;
  *(v46 + 56) = 0xD000000000000011;
  *(v46 + 64) = 0x8000000100804C80;
  *(v46 + 72) = 0xD00000000000002CLL;
  *(v46 + 80) = 0x8000000100804CA0;
  *(v46 + 88) = 1;
  v45(v46 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v47, v28);
  v49 = (v48 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v50 = v127;
  *v49 = v10;
  v49[1] = v50;
  swift_unknownObjectRetain();
  UUID.init()();
  v51 = UUID.uuidString.getter();
  v53 = v52;
  v54 = v131;
  v55 = v47;
  v56 = v130;
  v130(v38, v131);
  *&v136 = v51;
  *(&v136 + 1) = v53;
  AnyHashable.init<A>(_:)();
  v118(v55, v42);
  v57 = v129;
  *(v129 + 48) = v48;
  v117[2] = type metadata accessor for InfoDebugSetting();
  v58 = swift_allocObject();
  v58[7] = 0xD000000000000013;
  v58[8] = 0x8000000100804CD0;
  v58[9] = 0xD00000000000001CLL;
  v58[10] = 0x8000000100804CF0;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v56(v38, v54);
  *&v136 = v59;
  *(&v136 + 1) = v61;
  AnyHashable.init<A>(_:)();
  *(v57 + 56) = v58;
  if (qword_10096D1D0 != -1)
  {
    swift_once();
  }

  v62 = v123;
  v63 = sub_1000056A8(v123, qword_1009774E0);
  v64 = v122;
  v65 = v119;
  v119(v122, v63, v62);
  v66 = swift_allocObject();
  *(v66 + 56) = 0xD000000000000012;
  *(v66 + 64) = 0x8000000100804D10;
  *(v66 + 72) = 0xD000000000000030;
  *(v66 + 80) = 0x8000000100804D30;
  *(v66 + 88) = 0;
  v65(v66 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key, v64, v62);
  v67 = (v66 + OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_preferences);
  v68 = v127;
  *v67 = v10;
  v67[1] = v68;
  swift_unknownObjectRetain();
  v69 = v126;
  UUID.init()();
  v70 = UUID.uuidString.getter();
  v72 = v71;
  v130(v69, v131);
  *&v136 = v70;
  *(&v136 + 1) = v72;
  AnyHashable.init<A>(_:)();
  v118(v64, v62);
  *(v129 + 64) = v66;
  v128 = 0x8000000100804D70;
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1007B48F0;
  v134 = 1701736302;
  v135 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  v74 = swift_allocObject();
  v74[2] = v10;
  v74[3] = v68;
  v75 = ObjectType;
  v74[4] = ObjectType;
  type metadata accessor for MenuItemDebugSetting();
  v76 = swift_allocObject();
  *(v76 + 72) = 0;
  *(v76 + 56) = 1701736270;
  *(v76 + 64) = 0xE400000000000000;
  *(v76 + 80) = sub_10018C15C;
  *(v76 + 88) = v74;
  v77 = v137;
  *(v76 + 16) = v136;
  *(v76 + 32) = v77;
  *(v76 + 48) = v138;
  *(v73 + 32) = v76;
  v134 = 0x646E616D65446E6FLL;
  v135 = 0xE800000000000000;
  swift_unknownObjectRetain();
  AnyHashable.init<A>(_:)();
  v78 = swift_allocObject();
  v78[2] = v10;
  v78[3] = v68;
  v78[4] = v75;
  v79 = swift_allocObject();
  *(v79 + 72) = 0;
  *(v79 + 56) = 0x6E616D6544206E4FLL;
  *(v79 + 64) = 0xE900000000000064;
  *(v79 + 80) = sub_10018C184;
  *(v79 + 88) = v78;
  v80 = v137;
  *(v79 + 16) = v136;
  *(v79 + 32) = v80;
  *(v79 + 48) = v138;
  *(v73 + 40) = v79;
  v134 = 0x74726174536E6FLL;
  v135 = 0xE700000000000000;
  swift_unknownObjectRetain();
  AnyHashable.init<A>(_:)();
  v81 = swift_allocObject();
  v81[2] = v10;
  v81[3] = v68;
  v81[4] = v75;
  v82 = swift_allocObject();
  *(v82 + 72) = 0;
  *(v82 + 56) = 0x7472617453206E4FLL;
  *(v82 + 64) = 0xE800000000000000;
  *(v82 + 80) = sub_10018C1AC;
  *(v82 + 88) = v81;
  v83 = v137;
  *(v82 + 16) = v136;
  *(v82 + 32) = v83;
  *(v82 + 48) = v138;
  *(v73 + 48) = v82;
  v84 = swift_allocObject();
  v84[2] = v10;
  v84[3] = v68;
  v84[4] = v75;
  v85 = swift_allocObject();
  v86 = v128;
  v85[7] = 0xD00000000000001ALL;
  v85[8] = v86;
  ObjectType = v73;
  v85[9] = v73;
  v85[10] = sub_10018C1D4;
  v85[11] = v84;
  swift_unknownObjectRetain_n();

  UUID.init()();
  v87 = UUID.uuidString.getter();
  v89 = v88;
  v130(v69, v131);
  *&v136 = v87;
  *(&v136 + 1) = v89;
  AnyHashable.init<A>(_:)();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v125, qword_1009774F8);
  Preferences.subscript.getter();
  v91 = *(&v136 + 1);
  v90 = v136;
  if (!*(&v136 + 1))
  {
    v90 = 0x74726174536E6FLL;
    v91 = 0xE700000000000000;
  }

  v134 = v90;
  v135 = v91;
  v92 = AnyHashable.init<A>(_:)();
  __chkstk_darwin(v92);
  v117[-2] = &v136;
  v93 = ObjectType;

  sub_10070DDEC(sub_10018C38C, &v117[-4], v93);

  sub_1000C36CC(&v136);
  v94 = v129;
  *(v129 + 72) = v85;
  Preferences.subscript.getter();
  v95 = v136;
  v96 = swift_allocObject();
  *(v96 + 56) = 0xD000000000000016;
  *(v96 + 64) = 0x8000000100804D90;
  *(v96 + 72) = v95;

  UUID.init()();
  v97 = UUID.uuidString.getter();
  v99 = v98;
  v100 = v131;
  v101 = v130;
  v130(v69, v131);
  v134 = v97;
  v135 = v99;
  AnyHashable.init<A>(_:)();

  v94[10] = v96;
  type metadata accessor for ActionDebugSetting();
  v102 = swift_allocObject();
  strcpy((v102 + 56), "Apply Settings");
  *(v102 + 71) = -18;
  *(v102 + 72) = 0u;
  *(v102 + 88) = 0u;
  *(v102 + 104) = sub_10018C0C4;
  *(v102 + 112) = 0;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v105 = v104;
  v101(v69, v100);
  *&v136 = v103;
  *(&v136 + 1) = v105;
  AnyHashable.init<A>(_:)();
  v94[11] = v102;
  v106 = swift_allocObject();
  strcpy((v106 + 56), "Reset Settings");
  *(v106 + 71) = -18;
  *(v106 + 72) = 0u;
  *(v106 + 88) = 0u;
  *(v106 + 104) = sub_10018C1E0;
  *(v106 + 112) = 0;
  UUID.init()();
  v107 = UUID.uuidString.getter();
  v109 = v108;
  v101(v69, v100);
  *&v136 = v107;
  *(&v136 + 1) = v109;
  AnyHashable.init<A>(_:)();
  v94[12] = v106;
  v110 = v94;
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007B0B70;
  type metadata accessor for DebugSection();
  v112 = swift_allocObject();
  UUID.init()();
  v113 = UUID.uuidString.getter();
  v115 = v114;
  v101(v69, v100);
  v112[2] = v113;
  v112[3] = v115;
  v112[4] = 0;
  v112[5] = 0xE000000000000000;
  v112[6] = v110;
  *(v111 + 32) = v112;
  swift_unknownObjectRelease();
  return v111;
}

double sub_10018BA48@<D0>(uint64_t *a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  if (v11)
  {
    v12 = a1[1];
    v13 = *a1;
  }

  else
  {

    v13 = 0x74655320746F4ELL;
    v12 = 0xE700000000000000;
  }

  AnyHashable.init<A>(_:)();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  type metadata accessor for MenuItemDebugSetting();
  v15 = swift_allocObject();
  *(v15 + 72) = 0;
  *(v15 + 56) = v13;
  *(v15 + 64) = v12;
  *(v15 + 80) = sub_10018C328;
  *(v15 + 88) = v14;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  *(v15 + 48) = v20;
  *a7 = v15;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_10018BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  swift_getObjectType();
  if (a2)
  {
    if (qword_10096D1B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1000056A8(v6, qword_100977498);
    (*(v7 + 16))(v9, v10, v6);
    v15[0] = a1;
    v15[1] = a2;

    return Preferences.subscript.setter();
  }

  else
  {
    if (qword_10096D1B8 != -1)
    {
      swift_once();
    }

    v12 = sub_1000056A8(v6, qword_100977498);
    v15[3] = v6;
    v15[4] = sub_10018C338(&qword_100977568, &qword_100977550, &qword_1007BC920);
    v13 = sub_1000056E0(v15);
    (*(v7 + 16))(v13, v12, v6);
    dispatch thunk of Preferences.removeValue(forKey:)();
    return sub_100007000(v15);
  }
}

void *sub_10018BD90()
{
  swift_getObjectType();
  if (qword_10096D1B8 != -1)
  {
    swift_once();
  }

  v4 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  sub_1000056A8(v4, qword_100977498);
  Preferences.subscript.getter();
  if (!v6)
  {
  }

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10018BE84(__n128 a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a1;
  v3 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  swift_getObjectType();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_1009774F8);
  (*(v4 + 16))(v6, v7, v3);
  v9[1] = v9[0];
  return Preferences.subscript.setter();
}

void *sub_10018BFD0()
{
  swift_getObjectType();
  if (qword_10096D1D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  sub_1000056A8(v2, qword_1009774F8);
  Preferences.subscript.getter();
  return AnyHashable.init<A>(_:)();
}

void sub_10018C0C4()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

void sub_10018C1E0()
{
  type metadata accessor for LocalPreferences();
  static LocalPreferences.currentApplication.getter();
  if (qword_10096D1B0 != -1)
  {
    swift_once();
  }

  v0 = sub_10002849C(&qword_100977558, &qword_1007BC928);
  v1 = sub_1000056A8(v0, qword_100977480);
  v4[3] = v0;
  v4[4] = sub_10018C338(&qword_100977560, &qword_100977558, &qword_1007BC928);
  v2 = sub_1000056E0(v4);
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  LocalPreferences.removeValue(forKey:)();

  sub_100007000(v4);
  v3 = [objc_opt_self() sharedCoordinator];
  [v3 notify];
}

uint64_t sub_10018C338(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIColor sub_10018C3A4()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_100977580 = result.super.isa;
  return result;
}

id sub_10018C484()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v24 - v6;
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "viewDidLoad", v5);
  v8 = v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling];
  v25 = v7;
  if (v8 == 1)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = result;
    v11 = [result layer];

    [v11 setCornerRadius:18.0];
    result = [v1 view];
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v12 = result;
    if (qword_10096D1E8 != -1)
    {
      swift_once();
    }

    [v12 setBackgroundColor:qword_100977580];
LABEL_12:
    v17 = v4;

    result = [v1 view];
    if (result)
    {
      v18 = result;
      v19 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView];
      [result addSubview:v19];

      [v19 setDelegate:v1];
      [v19 setAlwaysBounceVertical:1];
      v20 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
      v21 = swift_getObjectType();
      dispatch thunk of ShelfComponentView.applyData(from:asPartOf:)();
      v22 = v25;
      ItemLayoutContext.item.getter();
      ReadOnlyLens.value.getter();
      (*(v17 + 8))(v22, v3);
      v26[3] = v21;
      v26[0] = v20;
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      v23 = v20;
      inject<A, B>(_:from:)();
      tryToFetch(artworkFor:into:on:asPartOf:)();

      sub_10002B894(v27, &unk_10097DBE0, &unk_1007BCA00);
      sub_100007000(v26);
      return [v19 addSubview:v23];
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
  v14 = [v13 backgroundView];
  result = [v1 view];
  v12 = result;
  if (v14)
  {
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = [v14 backgroundColor];
    [v12 setBackgroundColor:v15];

    goto LABEL_12;
  }

  if (result)
  {
    v16 = [v13 backgroundColor];
    [v12 setBackgroundColor:v16];

    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_10018C8D8()
{
  v57.receiver = v0;
  v57.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v57, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v1 setFrame:{v5, v7, v9, v11}];
  top = 20.0;
  left = 20.0;
  if ((v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling] & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  result = [v0 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  [result bounds];

  v15 = sub_10018CC08();
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  [result bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v58.origin.x = v18;
  v58.origin.y = v20;
  v58.size.width = v22;
  v58.size.height = v24;
  MinX = CGRectGetMinX(v58);
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = left;
  [result bounds];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v59.origin.x = v28;
  v59.origin.y = v30;
  v59.size.width = v32;
  v59.size.height = v34;
  MinY = CGRectGetMinY(v59);
  result = [v0 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v36 = result;
  [result bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v60.origin.x = v38;
  v60.origin.y = v40;
  v60.size.width = v42;
  v60.size.height = v44;
  Width = CGRectGetWidth(v60);
  [*&v0[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView] setFrame:{sub_1000CC354(MinX, MinY, Width, v15, top, v26)}];
  [v1 setContentSize:{Width, v15}];
  [v1 frame];
  Height = CGRectGetHeight(v61);
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v47 = result;
  if (Height < v15)
  {
    v15 = Height;
  }

  [result bounds];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v62.origin.x = v49;
  v62.origin.y = v51;
  v62.size.width = v53;
  v62.size.height = v55;
  return [v0 setPreferredContentSize:{CGRectGetWidth(v62), v15}];
}

double sub_10018CC08()
{
  v1 = type metadata accessor for ShelfLayoutContext();
  v33 = *(v1 - 8);
  __chkstk_darwin(v1);
  *&v32 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PageGrid();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v34 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v30 - v10;
  v12 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  ObjectType = swift_getObjectType();
  top = 20.0;
  bottom = 20.0;
  if ((*(v0 + OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling) & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
  }

  CGSize.subtracting(insets:)();
  v19 = v18;
  v21 = v20;
  type metadata accessor for GenericProductReviewCollectionViewCell(0);
  if (swift_dynamicCastMetatype())
  {
    v30[1] = v19;
    v30[2] = v21;
    v32 = bottom;
    v33 = top;
    v22 = OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_itemLayoutContext;
    (*(v7 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v6);
    swift_getKeyPath();
    v31 = v22;
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v23 = v35;
    (*(v3 + 8))(v5, v35);
    (*(v7 + 16))(v34, v11, v6);
    if (qword_10096DB10 != -1)
    {
      swift_once();
    }

    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v7 + 8))(v11, v6);
    (*(v3 + 56))(v14, 0, 1, v23);
    sub_1005C91E4(v0 + v31, v14);
    v25 = v24;
    sub_10002B894(v14, &qword_10097DBD0, &qword_1007BC750);
    bottom = v32;
    top = v33;
  }

  else if (swift_conformsToProtocol2() && ObjectType)
  {
    dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
    v25 = v26;
  }

  else
  {
    v25 = 0.0;
    if (swift_conformsToProtocol2() && ObjectType)
    {
      v27 = v32;
      ItemLayoutContext.parentShelfLayoutContext.getter();
      dispatch thunk of static EstimatedHeightProviding.estimatedHeight(in:asPartOf:)();
      v25 = v28;
      (*(*&v33 + 8))(COERCE_DOUBLE(*&v27), v1);
    }
  }

  return bottom + top + v25;
}

uint64_t type metadata accessor for ProductPageReviewsOverflowViewController(uint64_t a1)
{
  result = qword_1009775D8;
  if (!qword_1009775D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018D360(uint64_t a1)
{
  result = type metadata accessor for ItemLayoutContext();
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

void sub_10018D488(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v3 = [a1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (v4 == 1)
    {

      [a1 dismissViewControllerAnimated:0 completion:0];
    }
  }
}

id sub_10018D534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  *&v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_objectGraph] = a6;
  v14 = OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v8[v14], a1, v15);
  v17 = objc_allocWithZone(UIScrollView);

  v18 = [v17 init];
  *&v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_scrollView] = v18;
  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = &v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_componentView];
  *v20 = v19;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v8[OBJC_IVAR____TtC8AppStore40ProductPageReviewsOverflowViewController_useCardStyling] = a7;
  v27.receiver = v8;
  v27.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B10D0;
  *(v22 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v22 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v23 = v21;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v16 + 8))(a1, v15);
  return v23;
}

void sub_10018D7C0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC8AppStore8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    CGPoint.rounded(_:)();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness]);
      v24 = v18;
      CGContextRef.move(to:)();

      v25 = v24;
      CGContextRef.addLine(to:)();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    CGPoint.rounded(_:)();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness]);
      v26 = v18;
      CGContextRef.move(to:)();

      v27 = v26;
      CGContextRef.addLine(to:)();

      CGContextStrokePath(v27);
    }
  }
}

id sub_10018DC64(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10018DE10(void *a1)
{
  v2 = v1;
  v38 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v12 = CGRectGetWidth(v46) * 0.2;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v13 = CGRectGetHeight(v47) * 0.2;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectInset(v48, v12, v13);
      v14 = &v2[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_originRect + 32])
      {
        v15 = v49.origin.x;
        v16 = v49.origin.y;
        v17 = v49.size.width;
        v18 = v49.size.height;
      }

      else
      {
        v17 = v14[2];
        v18 = v14[3];
        v15 = *v14;
        v16 = v14[1];
      }

      [v38 addSubview:v7];
      [v7 setFrame:{v15, v16, v17, v18}];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_10018E7F4;
      *(v21 + 24) = v20;
      v43 = sub_10006F094;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_1000489A8;
      v42 = &unk_1008B7128;
      v22 = _Block_copy(&aBlock);
      v23 = v7;

      [v19 performWithoutAnimation:v22];
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = [swift_unknownObjectRetain() containerView];
        v26 = [v25 traitCollection];

        LOBYTE(v25) = UITraitCollection.isSizeClassCompact.getter();
        swift_unknownObjectRelease();
        if (v25)
        {
          v27 = 0.62;
        }

        else
        {
          v27 = 0.61;
        }

        v28 = [a1 containerView];
        v29 = [v28 traitCollection];

        LOBYTE(v28) = UITraitCollection.isSizeClassCompact.getter();
        if (v28)
        {
          v30 = 0.8;
        }

        else
        {
          v30 = 0.84;
        }

        v31 = swift_allocObject();
        *(v31 + 2) = v2;
        *(v31 + 3) = v23;
        v31[4] = x;
        v31[5] = y;
        v31[6] = width;
        v31[7] = height;
        v43 = sub_10018E804;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100007A08;
        v42 = &unk_1008B7178;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_10018E8D4;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100504C5C;
        v42 = &unk_1008B71C8;
        v36 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v37 = v34;

        [v19 animateWithDuration:129 delay:v32 usingSpringWithDamping:v36 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

        _Block_release(v36);
        _Block_release(v32);
      }

      return;
    }
  }
}

void sub_10018E35C(void *a1)
{
  v2 = v1;
  v30 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v30 addSubview:v7];
      [v7 setFrame:{v9, v11, v13, v15}];
      [v7 layoutIfNeeded];
      [v7 setAlpha:0.0];
      v16 = [swift_unknownObjectRetain() containerView];
      v17 = [v16 traitCollection];

      LOBYTE(v16) = UITraitCollection.isSizeClassCompact.getter();
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = 0.62;
      }

      else
      {
        v18 = 0.61;
      }

      v19 = [a1 containerView];
      v20 = [v19 traitCollection];

      LOBYTE(v19) = UITraitCollection.isSizeClassCompact.getter();
      if (v19)
      {
        v21 = 0.8;
      }

      else
      {
        v21 = 0.84;
      }

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v7;
      v35 = sub_10018E7A4;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100007A08;
      v34 = &unk_1008B7060;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_10018E7F0;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100504C5C;
      v34 = &unk_1008B70B0;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v29 = v25;

      [v22 animateWithDuration:129 delay:v24 usingSpringWithDamping:v28 initialSpringVelocity:v18 options:0.0 animations:v21 completion:1.0];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }
  }
}

id sub_10018E74C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10018E7A4()
{
  v1 = *(v0 + 24);
  sub_1005F3D78(1);

  return [v1 setAlpha:1.0];
}

id sub_10018E804()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_1005F3D78(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_10018E874()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10018E8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v90 = type metadata accessor for InteractedAdEvent();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_10002849C(&qword_100977700, qword_1007BCAE8) - 8;
  __chkstk_darwin(v81);
  v93 = v75 - v6;
  v79 = type metadata accessor for AdvertActionMetrics.PurchaseType();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v94 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdvertActionMetrics.Invocation();
  v99 = *(v8 - 8);
  v100 = v8;
  __chkstk_darwin(v8);
  v82 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v75 - v11;
  v92 = type metadata accessor for AdvertActionMetrics.AdvertType();
  v77 = *(v92 - 8);
  __chkstk_darwin(v92);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AdamId();
  v97 = *(v101 - 8);
  __chkstk_darwin(v101);
  v84 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v75 - v17;
  v19 = type metadata accessor for AdInteractionType();
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v83 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v75 - v22;
  v96 = v3;
  v24 = *(v3 + 24);
  AdvertActionMetrics.adamId.getter();
  AdvertActionMetrics.advertType.getter();
  AdvertActionMetrics.invocation.getter();
  v85 = a1;
  AdvertActionMetrics.purchaseType.getter();
  v75[2] = v24;
  swift_getObjectType();
  dispatch thunk of AppStateController.stateMachine(forApp:)();
  v75[1] = v25;
  v26 = *(v81 + 56);
  v27 = v99;
  v28 = *(v99 + 16);
  v29 = v93;
  v80 = v12;
  v30 = v100;
  v28(v93, v12, v100);
  v31 = v77;
  v32 = *(v77 + 16);
  v76 = v26;
  v81 = v14;
  v32(v29 + v26, v14, v92);
  v33 = (*(v27 + 88))(v29, v30);
  v91 = v19;
  v34 = v98;
  v95 = v23;
  if (v33 == enum case for AdvertActionMetrics.Invocation.advertPressed(_:))
  {
    swift_unknownObjectRelease();
    (*(v78 + 8))(v94, v79);
    v35 = *(v27 + 8);
    v35(v80, v30);
    v36 = *(v31 + 8);
    v37 = v92;
    v36(v81, v92);
    (*(v97 + 8))(v18, v101);
    (*(v34 + 104))(v95, enum case for AdInteractionType.normal(_:), v91);
    v38 = v93;
    v36(v93 + v76, v37);
    v94 = v35;
    v35(v38, v30);
    goto LABEL_12;
  }

  v39 = v94;
  v75[0] = v18;
  v40 = v78;
  v41 = v79;
  v42 = v92;
  v43 = v93;
  if (v33 == enum case for AdvertActionMetrics.Invocation.markerPress(_:))
  {
    swift_unknownObjectRelease();
    (*(v40 + 8))(v39, v41);
    v44 = v100;
    v45 = *(v99 + 8);
    v45(v80, v100);
    v46 = *(v31 + 8);
    v46(v81, v42);
    (*(v97 + 8))(v75[0], v101);
    (*(v98 + 104))(v95, enum case for AdInteractionType.adMarker(_:), v91);
    v46(v43 + v76, v42);
    v94 = v45;
    v45(v43, v44);
    goto LABEL_12;
  }

  v47 = v97;
  v48 = v95;
  v49 = v93;
  v50 = v92;
  v51 = v31;
  v52 = v79;
  v53 = v75[0];
  if (v33 == enum case for AdvertActionMetrics.Invocation.offerButtonPress(_:))
  {
    v54 = v93;
    v55 = (*(v51 + 88))(v93 + v76, v92);
    if (v55 == enum case for AdvertActionMetrics.AdvertType.standardApp(_:))
    {
      sub_1003466AC(v48);
LABEL_10:
      swift_unknownObjectRelease();
      (*(v40 + 8))(v39, v52);
      v56 = v100;
      v57 = *(v99 + 8);
      v57(v80, v100);
      (*(v51 + 8))(v81, v50);
      (*(v97 + 8))(v53, v101);
      v94 = v57;
      v57(v54, v56);
      goto LABEL_12;
    }

    v49 = v54;
    if (v55 == enum case for AdvertActionMetrics.AdvertType.arcadeApp(_:))
    {
      sub_1003462D8(v48);
      goto LABEL_10;
    }
  }

  v58 = v49;
  swift_unknownObjectRelease();
  (*(v40 + 8))(v39, v52);
  v94 = *(v99 + 8);
  (v94)(v80, v100);
  (*(v51 + 8))(v81, v50);
  (*(v47 + 8))(v53, v101);
  (*(v98 + 104))(v48, enum case for AdInteractionType.open(_:), v91);
  sub_10002B894(v58, &qword_100977700, qword_1007BCAE8);
LABEL_12:
  if (qword_10096D130 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for OSLogger();
  v92 = sub_1000056A8(v93, qword_1009CE248);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007BCA60;
  static LogMessage.identity(_:)();
  LogMessage.init(stringLiteral:)();
  LogMessage.init(stringLiteral:)();
  v59 = AdvertActionMetrics.instanceId.getter();
  v104 = &type metadata for String;
  v102 = v59;
  v103 = v60;
  static LogMessage.safe(_:)();
  sub_10002B894(&v102, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v104 = v101;
  sub_1000056E0(&v102);
  AdvertActionMetrics.adamId.getter();
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v102, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v61 = v82;
  AdvertActionMetrics.invocation.getter();
  v62 = AdvertActionMetrics.Invocation.rawValue.getter();
  v64 = v63;
  (v94)(v61, v100);
  v104 = &type metadata for String;
  v102 = v62;
  v103 = v64;
  static LogMessage.safe(_:)();
  sub_10002B894(&v102, &unk_1009711D0, &unk_1007B1A10);
  LogMessage.init(stringLiteral:)();
  v65 = v91;
  v104 = v91;
  v66 = sub_1000056E0(&v102);
  v67 = v98;
  v68 = *(v98 + 16);
  v69 = v95;
  v68(v66, v95, v65);
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(&v102, &unk_1009711D0, &unk_1007B1A10);
  Logger.info(_:)();

  v70 = AdvertActionMetrics.instanceId.getter();
  v99 = v71;
  v100 = v70;
  v68(v83, v69, v65);
  AdvertActionMetrics.bundleId.getter();
  v72 = v84;
  AdvertActionMetrics.adamId.getter();
  AdamId.stringValue.getter();
  (*(v97 + 8))(v72, v101);
  v73 = v86;
  InteractedAdEvent.init(adInstanceId:type:bundleId:adamId:)();
  dispatch thunk of PromotedContentMetricCollector.advertInteracted(event:completion:)();
  (*(v87 + 8))(v73, v90);
  return (*(v67 + 8))(v69, v65);
}

char *sub_10018F640(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView] = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  v9 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v10 = [v9 contentView];
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v11 = [v9 contentView];
  v12 = [objc_opt_self() systemBackgroundColor];
  [v11 setBackgroundColor:v12];

  v13 = [v9 contentView];
  [v13 addSubview:*&v9[OBJC_IVAR____TtC8AppStore32LinkableHeaderCollectionViewCell_headerView]];

  return v9;
}

id sub_10018F910(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LinkableHeaderCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10018F978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    AppEventSearchResult.appEvent.getter();
    v9 = AppPromotion.clickAction.getter();

    if (v9)
    {
      v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_1000F40E0(v6);
      }

      else
      {
        sub_1005F9AF4(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10018FB28(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, int *a11)
{
  v116 = a3;
  v117 = a11;
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v112 = *(v14 - 8);
  v113 = v14;
  __chkstk_darwin(v14);
  v111 = &v86[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for SmallSearchLockupLayout();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin(v16);
  v107 = &v86[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v122 = type metadata accessor for LabelPlaceholderCompatibility();
  v105 = *(v122 - 8);
  __chkstk_darwin(v122);
  v104 = &v86[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for OfferButtonMetrics();
  v119 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v86[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v86[-v23];
  v25 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v120 = *(v25 - 8);
  __chkstk_darwin(v25);
  v106 = &v86[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v86[-v28];
  CGSize.subtracting(insets:)();
  v31 = v30;
  v33 = v32;
  v114 = a1;
  v34 = AppEventSearchResult.lockup.getter();
  v35 = Lockup.title.getter();
  v94 = v36;
  v95 = v35;
  v37 = Lockup.subtitle.getter();
  v96 = v38;
  v97 = v37;
  if (Lockup.searchAdOpportunity.getter())
  {
    v39 = SearchAdOpportunity.searchAd.getter();

    if (v39)
    {
      v40 = SearchAd.advertisingText.getter();
      v102 = v41;
      v103 = v40;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }
  }

  else
  {
    v102 = 0;
    v103 = 0;
  }

  MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v42 = [a2 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v43 = sub_1000056A8(v25, qword_1009CDC00);
  v99 = *(v120 + 16);
  v100 = v120 + 16;
  v99(v29, v43, v25);
  v44 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v115 = a2;
  v108 = v34;
  v121 = v25;
  if (v44)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v45 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v45 = qword_100991028;
  }

  v46 = v19;
  v47 = sub_1000056A8(v19, v45);
  v48 = v119;
  (*(v119 + 16))(v21, v47, v19);
  (*(v48 + 32))(v24, v21, v19);
  v93 = v42;
  v49 = [v42 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v50 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(representing:)();
  v51 = objc_opt_self();
  v89 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = type metadata accessor for Feature();
  v91 = v29;
  v54 = v53;
  v159[3] = v53;
  v118 = sub_10019074C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v159[4] = v118;
  v55 = sub_1000056E0(v159);
  v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v57 = *(v54 - 8);
  v90 = *(v57 + 104);
  v101 = v46;
  v58 = v57 + 104;
  v87 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v90(v55, enum case for Feature.measurement_with_labelplaceholder(_:), v54);
  v88 = v58;
  isFeatureEnabled(_:)();
  v98 = v24;
  sub_100007000(v159);
  v59 = v104;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v60 = *(v105 + 8);
  v60(v59, v122);
  v61 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v158[3] = v54;
  v158[4] = v118;
  v62 = sub_1000056E0(v158);
  v63 = v56;
  v64 = v90;
  v90(v62, v63, v54);
  isFeatureEnabled(_:)();
  sub_100007000(v158);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v60(v59, v122);
  v65 = [v89 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v157[3] = v54;
  v157[4] = v118;
  v66 = sub_1000056E0(v157);
  v64(v66, v87, v54);
  isFeatureEnabled(_:)();
  sub_100007000(v157);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v60(v59, v122);
  sub_1000AE138();
  swift_allocObject();
  v67 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138();
  swift_allocObject();
  v68 = LayoutViewPlaceholder.init(representing:)();
  v69 = v91;
  v99(v106, v91, v121);
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v50;
  v154 = v92;
  v153 = 0;
  *&v151[40] = 0u;
  v152 = 0u;
  sub_10002C0AC(v159, v151);
  sub_10002C0AC(v158, &v150);
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  v146 = 0;
  v144 = 0u;
  v145 = 0u;

  v70 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v143 = &protocol witness table for LayoutViewPlaceholder;
  v142 = v50;
  v141 = v70;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_10002C0AC(v157, v129);
  v127 = v50;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  v125 = &protocol witness table for LayoutViewPlaceholder;
  v126 = v67;
  v124 = v50;
  v123 = v68;
  v71 = v107;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007B0B70;
  v73 = v93;
  *(v72 + 32) = v93;
  v74 = v73;
  v75 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_10019074C(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v76 = v110;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v78 = v77;

  (*(v109 + 8))(v71, v76);
  sub_100007000(v157);
  sub_100007000(v158);
  sub_100007000(v159);
  (*(v119 + 8))(v98, v101);
  (*(v120 + 8))(v69, v121);
  if (qword_10096EFC0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D3A50, qword_1009D3A68);
  v79 = v111;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v80 = v115;
  AnyDimension.value(in:rounded:)();
  v82 = v81;
  (*(v112 + 8))(v79, v113);
  v83 = type metadata accessor for AppEventView(0);
  v84 = AppEventSearchResult.appEvent.getter();
  sub_10016862C(v31, v33 - (v78 + v82), v84, v80, v116, v83, v117);

  return a4;
}

uint64_t sub_10019074C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_100005A38(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();
  result = sub_100190B68(v5, a1, a2, a3, a4, a5);
  v12 = result;
  v13 = *(v5 + 96);
  v14 = *(v13 + 16);
  if (!v14)
  {

    return LayoutRect.init(representing:)();
  }

  v15 = 0;
  v16 = *(result + 16);
  v17 = v13 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v15 >= v16)
    {
      goto LABEL_3;
    }

    if (v15 >= *(v13 + 16))
    {
      break;
    }

    sub_10002C0AC(v17, v19);
    result = sub_10002A400(v19, v19[3]);
    if (v15 >= *(v12 + 16))
    {
      goto LABEL_12;
    }

    dispatch thunk of LayoutView.frame.setter();
    result = sub_100007000(v19);
LABEL_3:
    ++v15;
    v17 += 40;
    if (v14 == v15)
    {

      return LayoutRect.init(representing:)();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();

  return sub_100190B2C(a1, a2, ObjectType, a3, a4);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

char *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  swift_getObjectType();

  return sub_100190B68(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100190B2C(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v5 = *(sub_100190B68(a1, a2, 0.0, 0.0, a4, a5) + 2);

  return v5;
}

char *sub_100190B68(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v207, v183);
  v208.origin.x = a5 * -0.5;
  v208.origin.y = a6 * -0.5;
  v208.size.width = a5;
  v208.size.height = a6;
  v209 = CGRectApplyAffineTransform(v208, &v207);
  x = v209.origin.x;
  y = v209.origin.y;
  width = v209.size.width;
  v205 = v209.size.width;
  height = v209.size.height;
  v201 = v209.size.height;
  MinX = CGRectGetMinX(v209);
  v196 = a3;
  v210.origin.x = a3;
  v197 = a4;
  v210.origin.y = a4;
  v210.size.width = a5;
  v210.size.height = a6;
  v198 = a6;
  v204 = MinX + CGRectGetMidX(v210);
  v211.origin.x = x;
  v211.origin.y = y;
  v211.size.width = width;
  v211.size.height = height;
  MinY = CGRectGetMinY(v211);
  v212.origin.x = a3;
  v212.origin.y = a4;
  v212.size.width = a5;
  v20 = a5;
  v212.size.height = a6;
  v203 = MinY + CGRectGetMidY(v212);
  v22 = *a1;
  v21 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v207, v183);
  v213.origin.x = v22 * -0.5;
  v213.origin.y = v21 * -0.5;
  v213.size.width = v22;
  v213.size.height = v21;
  v195 = v21;
  v214 = CGRectApplyAffineTransform(v213, &v207);
  v23 = v214.origin.x;
  v24 = v214.origin.y;
  v25 = v214.size.width;
  v26 = v214.size.height;
  v27 = CGRectGetMinX(v214);
  v215.origin.x = 0.0;
  v215.origin.y = 0.0;
  v215.size.width = v22;
  v215.size.height = v21;
  v200 = v27 + CGRectGetMidX(v215);
  v216.origin.x = v23;
  v216.origin.y = v24;
  v216.size.width = v25;
  v216.size.height = v26;
  v28 = CGRectGetMinY(v216);
  v217.origin.x = 0.0;
  v217.origin.y = 0.0;
  v217.size.width = v22;
  v217.size.height = v21;
  v202 = v28 + CGRectGetMidY(v217);
  sub_10002A400((a1 + 16), *(a1 + 40));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v30 = v29;
  v190 = v29;
  (*(v12 + 8))(v14, v11);
  v31 = *(a1 + 56);
  v193 = v22;
  v32 = v22 + v30;
  v33 = floor(v32 * v31);
  v34 = v196;
  v218.origin.x = v196;
  v35 = v197;
  v218.origin.y = v197;
  v218.size.width = v20;
  v36 = v198;
  v218.size.height = v198;
  MidX = CGRectGetMidX(v218);
  v219.origin.x = v34;
  v219.origin.y = v35;
  v194 = v20;
  v219.size.width = v20;
  v219.size.height = v36;
  MidY = CGRectGetMidY(v219);
  v37 = v183;
  v38 = __sincos_stret(v183);
  v189 = v38.__cosval * v32;
  v188 = v38.__sinval * v32;
  v39 = __sincos_stret(v37 + 3.14159265);
  v192 = v39.__cosval * v32;
  v191 = v39.__sinval * v32;
  v180 = v38.__cosval * v33;
  v179 = v38.__sinval * v33;
  v40 = __sincos_stret(v37 + 1.57079633);
  sinval = v40.__sinval;
  cosval = v40.__cosval;
  v41 = v195 + v190;
  v42 = v200;
  v220.origin.x = v200;
  v43 = v202;
  v220.origin.y = v202;
  v220.size.width = v25;
  v220.size.height = v26;
  v44 = MidX + CGRectGetMidX(v220);
  v221.origin.x = v42;
  v221.origin.y = v43;
  v221.size.width = v25;
  v221.size.height = v26;
  v45 = v44 + CGRectGetWidth(v221) * -0.5;
  v222.origin.x = v42;
  v222.origin.y = v43;
  v222.size.width = v25;
  v222.size.height = v26;
  v46 = MidY + CGRectGetMidY(v222);
  v223.origin.x = v42;
  v223.origin.y = v43;
  v223.size.width = v25;
  v223.size.height = v26;
  v224.origin.y = v46 + CGRectGetHeight(v223) * -0.5;
  v300.origin.x = v204;
  v300.size.width = v205;
  v224.origin.x = v45;
  v300.origin.y = v203;
  v224.size.width = v25;
  v224.size.height = v26;
  v300.size.height = v201;
  v47 = CGRectIntersectsRect(v224, v300);
  v178 = v41;
  MinX = v25;
  v199 = v26;
  if (v47)
  {
    v185 = cosval * v41 + v180;
    v184 = sinval * v41 + v179;
    v48 = _swiftEmptyArrayStorage;
    v49 = 0.5;
    v50 = MidX;
    v51 = MidY;
    v52 = v201;
    v53 = v202;
    v54 = v200;
    do
    {
      cosval = v50;
      v230.origin.x = v54;
      v230.origin.y = v53;
      v230.size.width = v25;
      v230.size.height = v26;
      v57 = v50 + CGRectGetMidX(v230);
      v231.origin.x = v54;
      v231.origin.y = v53;
      v231.size.width = v25;
      v231.size.height = v26;
      v58 = v57 - CGRectGetWidth(v231) * v49;
      v232.origin.x = v54;
      v232.origin.y = v53;
      v232.size.width = v25;
      v232.size.height = v26;
      v190 = v51 + CGRectGetMidY(v232);
      v233.origin.x = v54;
      v233.origin.y = v53;
      v233.size.width = v25;
      v233.size.height = v26;
      v59 = v190 - CGRectGetHeight(v233) * v49;
      v234.origin.x = v58;
      v234.origin.y = v59;
      v234.size.width = v25;
      v234.size.height = v26;
      v302.origin.y = v203;
      v302.origin.x = v204;
      v302.size.width = v205;
      v302.size.height = v52;
      v60 = CGRectIntersectsRect(v234, v302);
      sinval = v51;
      if (v60)
      {
        v190 = cosval;
        v61 = v51;
        do
        {
          v240.origin.x = v58;
          v240.origin.y = v59;
          v240.size.width = v25;
          v240.size.height = v26;
          v304.origin.x = v196;
          v304.origin.y = v197;
          v304.size.width = v194;
          v304.size.height = v198;
          if (CGRectIntersectsRect(v240, v304))
          {
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v71 = v193;
            v241.size.width = v193;
            v72 = v195;
            v241.size.height = v195;
            v73 = CGRectGetMidX(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v71;
            v242.size.height = v72;
            v74 = CGRectGetWidth(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v71;
            v243.size.height = v72;
            v75 = CGRectGetMidY(v243);
            v244.origin.x = 0.0;
            v244.origin.y = 0.0;
            v244.size.width = v71;
            v244.size.height = v72;
            v76 = CGRectGetHeight(v244);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v78 = *(v48 + 2);
            v77 = *(v48 + 3);
            v63 = v190;
            if (v78 >= v77 >> 1)
            {
              v48 = sub_10003341C((v77 > 1), v78 + 1, 1, v48);
            }

            v62 = 0.5;
            *(v48 + 2) = v78 + 1;
            v79 = &v48[32 * v78];
            v79[4] = v63 + v73 - v74 * 0.5;
            v79[5] = v61 + v75 - v76 * 0.5;
            v80 = v195;
            v79[6] = v193;
            v79[7] = v80;
          }

          else
          {
            v62 = 0.5;
            v63 = v190;
          }

          v64 = v189 + v63;
          v61 = v188 + v61;
          v26 = v199;
          v65 = v200;
          v235.origin.x = v200;
          v66 = v202;
          v235.origin.y = v202;
          v25 = MinX;
          v235.size.width = MinX;
          v235.size.height = v199;
          v67 = CGRectGetMidX(v235);
          v190 = v64;
          v68 = v64 + v67;
          v236.origin.x = v65;
          v236.origin.y = v66;
          v236.size.width = v25;
          v236.size.height = v26;
          v58 = v68 - CGRectGetWidth(v236) * v62;
          v237.origin.x = v65;
          v237.origin.y = v66;
          v237.size.width = v25;
          v237.size.height = v26;
          v69 = v61 + CGRectGetMidY(v237);
          v238.origin.x = v65;
          v238.origin.y = v66;
          v238.size.width = v25;
          v238.size.height = v26;
          v59 = v69 - CGRectGetHeight(v238) * v62;
          v239.origin.x = v58;
          v239.origin.y = v59;
          v239.size.width = v25;
          v239.size.height = v26;
          v303.origin.y = v203;
          v303.origin.x = v204;
          v303.size.width = v205;
          v303.size.height = v201;
          v70 = CGRectIntersectsRect(v239, v303);
          v51 = sinval;
        }

        while (v70);
      }

      v81 = v192 + cosval;
      v82 = v191 + v51;
      v245.size.height = v199;
      v83 = v200;
      v245.origin.x = v200;
      v84 = v202;
      v245.origin.y = v202;
      v245.size.width = v25;
      v85 = v81 + CGRectGetMidX(v245);
      v246.origin.x = v83;
      v246.origin.y = v84;
      v246.size.width = v25;
      v246.size.height = v199;
      v86 = v85 - CGRectGetWidth(v246) * 0.5;
      v247.origin.x = v83;
      v247.origin.y = v84;
      v247.size.width = v25;
      v247.size.height = v199;
      v87 = v82 + CGRectGetMidY(v247);
      v248.origin.x = v83;
      v248.origin.y = v84;
      v26 = v199;
      v248.size.width = v25;
      v248.size.height = v199;
      v88 = v87 - CGRectGetHeight(v248) * 0.5;
      v249.origin.x = v86;
      v249.origin.y = v88;
      v249.size.width = v25;
      v249.size.height = v26;
      v305.origin.y = v203;
      v305.origin.x = v204;
      v305.size.width = v205;
      v305.size.height = v201;
      if (CGRectIntersectsRect(v249, v305))
      {
        do
        {
          v255.origin.x = v86;
          v255.origin.y = v88;
          v255.size.width = v25;
          v255.size.height = v26;
          v307.origin.x = v196;
          v307.origin.y = v197;
          v307.size.width = v194;
          v307.size.height = v198;
          if (CGRectIntersectsRect(v255, v307))
          {
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v95 = v193;
            v256.size.width = v193;
            v96 = v195;
            v256.size.height = v195;
            v97 = CGRectGetMidX(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v95;
            v257.size.height = v96;
            v98 = CGRectGetWidth(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v95;
            v258.size.height = v96;
            v190 = CGRectGetMidY(v258);
            v259.origin.x = 0.0;
            v259.origin.y = 0.0;
            v259.size.width = v95;
            v259.size.height = v96;
            v99 = CGRectGetHeight(v259);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v101 = *(v48 + 2);
            v100 = *(v48 + 3);
            if (v101 >= v100 >> 1)
            {
              v48 = sub_10003341C((v100 > 1), v101 + 1, 1, v48);
            }

            v89 = 0.5;
            v102 = v82 + v190 - v99 * 0.5;
            *(v48 + 2) = v101 + 1;
            v103 = &v48[32 * v101];
            v103[4] = v81 + v97 - v98 * 0.5;
            v103[5] = v102;
            v104 = v195;
            v103[6] = v193;
            v103[7] = v104;
          }

          else
          {
            v89 = 0.5;
          }

          v81 = v192 + v81;
          v82 = v191 + v82;
          v90 = v200;
          v250.origin.x = v200;
          v91 = v202;
          v250.origin.y = v202;
          v250.size.width = v25;
          v92 = v199;
          v250.size.height = v199;
          v93 = v81 + CGRectGetMidX(v250);
          v251.origin.x = v90;
          v251.origin.y = v91;
          v251.size.width = MinX;
          v251.size.height = v92;
          v86 = v93 - CGRectGetWidth(v251) * v89;
          v252.origin.x = v90;
          v252.origin.y = v91;
          v252.size.width = MinX;
          v252.size.height = v92;
          v94 = v82 + CGRectGetMidY(v252);
          v253.origin.x = v90;
          v253.origin.y = v91;
          v26 = v92;
          v25 = MinX;
          v253.size.width = MinX;
          v253.size.height = v26;
          v88 = v94 - CGRectGetHeight(v253) * v89;
          v254.origin.x = v86;
          v254.origin.y = v88;
          v254.size.width = v25;
          v254.size.height = v26;
          v306.origin.y = v203;
          v306.origin.x = v204;
          v306.size.width = v205;
          v306.size.height = v201;
        }

        while (CGRectIntersectsRect(v254, v306));
      }

      v50 = v185 + cosval;
      v51 = v184 + sinval;
      v54 = v200;
      v225.origin.x = v200;
      v53 = v202;
      v225.origin.y = v202;
      v225.size.width = v25;
      v225.size.height = v26;
      v55 = v50 + CGRectGetMidX(v225);
      v226.origin.x = v54;
      v226.origin.y = v53;
      v226.size.width = v25;
      v226.size.height = v26;
      v49 = 0.5;
      v190 = v55 - CGRectGetWidth(v226) * 0.5;
      v227.origin.x = v54;
      v227.origin.y = v53;
      v227.size.width = v25;
      v227.size.height = v26;
      v56 = v51 + CGRectGetMidY(v227);
      v228.origin.x = v54;
      v228.origin.y = v53;
      v228.size.width = v25;
      v228.size.height = v26;
      v229.origin.y = v56 - CGRectGetHeight(v228) * 0.5;
      v229.origin.x = v190;
      v229.size.width = v25;
      v229.size.height = v26;
      v301.origin.y = v203;
      v301.origin.x = v204;
      v301.size.width = v205;
      v52 = v201;
      v301.size.height = v201;
    }

    while (CGRectIntersectsRect(v229, v301));
  }

  else
  {
    v48 = _swiftEmptyArrayStorage;
    v53 = v202;
    v54 = v200;
  }

  v105 = __sincos_stret(v183 + -1.57079633);
  v185 = v105.__cosval * v178 - v180;
  v106 = MidX + v185;
  v184 = v105.__sinval * v178 - v179;
  v107 = MidY + v184;
  v260.origin.x = v54;
  v260.origin.y = v53;
  v260.size.width = v25;
  v260.size.height = v26;
  v108 = CGRectGetMidX(v260);
  sinval = v106;
  v109 = v106 + v108;
  v261.origin.x = v54;
  v261.origin.y = v53;
  v261.size.width = v25;
  v261.size.height = v26;
  v110 = v54;
  v111 = v109 - CGRectGetWidth(v261) * 0.5;
  v262.origin.x = v110;
  v262.origin.y = v53;
  v262.size.width = v25;
  v262.size.height = v26;
  v112 = CGRectGetMidY(v262);
  cosval = v107;
  v113 = v107 + v112;
  v263.origin.x = v110;
  v263.origin.y = v53;
  v263.size.width = v25;
  v263.size.height = v26;
  v264.origin.y = v113 - CGRectGetHeight(v263) * 0.5;
  v308.size.height = v201;
  v264.origin.x = v111;
  v264.size.width = v25;
  v264.size.height = v26;
  v308.origin.y = v203;
  v308.origin.x = v204;
  v308.size.width = v205;
  if (CGRectIntersectsRect(v264, v308))
  {
    v114 = sinval;
    v115 = cosval;
    v116 = v200;
    do
    {
      v270.origin.x = v116;
      v270.origin.y = v53;
      v270.size.width = v25;
      v270.size.height = v26;
      v120 = v114 + CGRectGetMidX(v270);
      v271.origin.x = v116;
      v271.origin.y = v53;
      v271.size.width = v25;
      v271.size.height = v26;
      v121 = v120 - CGRectGetWidth(v271) * 0.5;
      v272.origin.x = v116;
      v272.origin.y = v53;
      v272.size.width = v25;
      v272.size.height = v26;
      v122 = v115 + CGRectGetMidY(v272);
      v273.origin.x = v116;
      v273.origin.y = v53;
      v273.size.width = v25;
      v273.size.height = v26;
      v123 = v122 - CGRectGetHeight(v273) * 0.5;
      v274.origin.x = v121;
      v274.origin.y = v123;
      v274.size.width = v25;
      v274.size.height = v26;
      v310.origin.y = v203;
      v310.origin.x = v204;
      v310.size.width = v205;
      v310.size.height = v201;
      v124 = CGRectIntersectsRect(v274, v310);
      sinval = v114;
      cosval = v115;
      if (v124)
      {
        v190 = v114;
        do
        {
          v280.origin.x = v121;
          v280.origin.y = v123;
          v280.size.width = v25;
          v280.size.height = v26;
          v312.origin.x = v196;
          v312.origin.y = v197;
          v312.size.width = v194;
          v312.size.height = v198;
          if (CGRectIntersectsRect(v280, v312))
          {
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v133 = v193;
            v281.size.width = v193;
            v134 = v195;
            v281.size.height = v195;
            v135 = CGRectGetMidX(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v133;
            v282.size.height = v134;
            v136 = CGRectGetWidth(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v133;
            v283.size.height = v134;
            v137 = CGRectGetMidY(v283);
            v284.origin.x = 0.0;
            v284.origin.y = 0.0;
            v284.size.width = v133;
            v284.size.height = v134;
            v138 = CGRectGetHeight(v284);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v140 = *(v48 + 2);
            v139 = *(v48 + 3);
            v141 = 0.5;
            v126 = v190;
            if (v140 >= v139 >> 1)
            {
              v146 = sub_10003341C((v139 > 1), v140 + 1, 1, v48);
              v141 = 0.5;
              v48 = v146;
            }

            v142 = v126 + v135 - v136 * v141;
            v143 = v115 + v137;
            v125 = 0.5;
            *(v48 + 2) = v140 + 1;
            v144 = &v48[32 * v140];
            v144[4] = v142;
            v144[5] = v143 - v138 * 0.5;
            v145 = v195;
            v144[6] = v193;
            v144[7] = v145;
          }

          else
          {
            v125 = 0.5;
            v126 = v190;
          }

          v127 = v189 + v126;
          v115 = v188 + v115;
          v26 = v199;
          v128 = v200;
          v275.origin.x = v200;
          v129 = v202;
          v275.origin.y = v202;
          v25 = MinX;
          v275.size.width = MinX;
          v275.size.height = v199;
          v130 = CGRectGetMidX(v275);
          v190 = v127;
          v131 = v127 + v130;
          v276.origin.x = v128;
          v276.origin.y = v129;
          v276.size.width = v25;
          v276.size.height = v26;
          v121 = v131 - CGRectGetWidth(v276) * v125;
          v277.origin.x = v128;
          v277.origin.y = v129;
          v277.size.width = v25;
          v277.size.height = v26;
          v132 = v115 + CGRectGetMidY(v277);
          v278.origin.x = v128;
          v278.origin.y = v129;
          v278.size.width = v25;
          v278.size.height = v26;
          v123 = v132 - CGRectGetHeight(v278) * v125;
          v279.origin.x = v121;
          v279.origin.y = v123;
          v279.size.width = v25;
          v279.size.height = v26;
          v311.origin.y = v203;
          v311.origin.x = v204;
          v311.size.width = v205;
          v311.size.height = v201;
        }

        while (CGRectIntersectsRect(v279, v311));
      }

      v147 = v192 + sinval;
      v148 = v191 + cosval;
      v149 = v200;
      v285.origin.x = v200;
      v285.origin.y = v202;
      v285.size.width = v25;
      v285.size.height = v26;
      v150 = CGRectGetMidX(v285);
      v190 = v147;
      v151 = v147 + v150;
      v286.origin.x = v149;
      v286.origin.y = v202;
      v286.size.width = v25;
      v286.size.height = v26;
      v152 = v151 - CGRectGetWidth(v286) * 0.5;
      v287.origin.x = v149;
      v287.origin.y = v202;
      v287.size.width = v25;
      v287.size.height = v26;
      v153 = v148 + CGRectGetMidY(v287);
      v288.origin.x = v149;
      v53 = v202;
      v288.origin.y = v202;
      v288.size.width = v25;
      v288.size.height = v26;
      v154 = v153 - CGRectGetHeight(v288) * 0.5;
      v289.origin.x = v152;
      v289.origin.y = v154;
      v289.size.width = v25;
      v289.size.height = v26;
      v313.origin.y = v203;
      v313.origin.x = v204;
      v313.size.width = v205;
      v313.size.height = v201;
      if (CGRectIntersectsRect(v289, v313))
      {
        do
        {
          v295.origin.x = v152;
          v295.origin.y = v154;
          v295.size.width = v25;
          v295.size.height = v26;
          v315.origin.x = v196;
          v315.origin.y = v197;
          v315.size.width = v194;
          v315.size.height = v198;
          if (CGRectIntersectsRect(v295, v315))
          {
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v162 = v193;
            v296.size.width = v193;
            v163 = v195;
            v296.size.height = v195;
            v164 = CGRectGetMidX(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v162;
            v297.size.height = v163;
            v165 = CGRectGetWidth(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v162;
            v298.size.height = v163;
            v166 = CGRectGetMidY(v298);
            v299.origin.x = 0.0;
            v299.origin.y = 0.0;
            v299.size.width = v162;
            v299.size.height = v163;
            v167 = CGRectGetHeight(v299);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v48 = sub_10003341C(0, *(v48 + 2) + 1, 1, v48);
            }

            v169 = *(v48 + 2);
            v168 = *(v48 + 3);
            v170 = 0.5;
            v156 = v190;
            if (v169 >= v168 >> 1)
            {
              v175 = sub_10003341C((v168 > 1), v169 + 1, 1, v48);
              v170 = 0.5;
              v48 = v175;
            }

            v171 = v156 + v164 - v165 * v170;
            v172 = v148 + v166;
            v155 = 0.5;
            *(v48 + 2) = v169 + 1;
            v173 = &v48[32 * v169];
            v173[4] = v171;
            v173[5] = v172 - v167 * 0.5;
            v174 = v195;
            v173[6] = v193;
            v173[7] = v174;
          }

          else
          {
            v155 = 0.5;
            v156 = v190;
          }

          v157 = v192 + v156;
          v148 = v191 + v148;
          v26 = v199;
          v158 = v200;
          v290.origin.x = v200;
          v53 = v202;
          v290.origin.y = v202;
          v25 = MinX;
          v290.size.width = MinX;
          v290.size.height = v199;
          v159 = CGRectGetMidX(v290);
          v190 = v157;
          v160 = v157 + v159;
          v291.origin.x = v158;
          v291.origin.y = v53;
          v291.size.width = v25;
          v291.size.height = v26;
          v152 = v160 - CGRectGetWidth(v291) * v155;
          v292.origin.x = v158;
          v292.origin.y = v53;
          v292.size.width = v25;
          v292.size.height = v26;
          v161 = v148 + CGRectGetMidY(v292);
          v293.origin.x = v158;
          v293.origin.y = v53;
          v293.size.width = v25;
          v293.size.height = v26;
          v154 = v161 - CGRectGetHeight(v293) * v155;
          v294.origin.x = v152;
          v294.origin.y = v154;
          v294.size.width = v25;
          v294.size.height = v26;
          v314.origin.y = v203;
          v314.origin.x = v204;
          v314.size.width = v205;
          v314.size.height = v201;
        }

        while (CGRectIntersectsRect(v294, v314));
      }

      v114 = v185 + sinval;
      v115 = v184 + cosval;
      v116 = v200;
      v265.origin.x = v200;
      v265.origin.y = v53;
      v265.size.width = v25;
      v265.size.height = v26;
      v117 = v114 + CGRectGetMidX(v265);
      v266.origin.x = v116;
      v266.origin.y = v53;
      v266.size.width = v25;
      v266.size.height = v26;
      v118 = v117 - CGRectGetWidth(v266) * 0.5;
      v267.origin.x = v116;
      v267.origin.y = v53;
      v267.size.width = v25;
      v267.size.height = v26;
      v119 = v115 + CGRectGetMidY(v267);
      v268.origin.x = v116;
      v268.origin.y = v53;
      v268.size.width = v25;
      v268.size.height = v26;
      v269.origin.y = v119 - CGRectGetHeight(v268) * 0.5;
      v269.origin.x = v118;
      v269.size.width = v25;
      v269.size.height = v26;
      v309.origin.y = v203;
      v309.origin.x = v204;
      v309.size.width = v205;
      v309.size.height = v201;
    }

    while (CGRectIntersectsRect(v269, v309));
  }

  return v48;
}

__n128 sub_100191E78(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100191EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100191EEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100191F54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100191F78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100191FC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100192028(void *a1)
{
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1001920D8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore23VideoCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10019212C;
}

void sub_10019212C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100192A30();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_100192A30();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1001923C0(__n128 a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VideoCollectionViewCell(0);
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

id sub_100192590()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoCollectionViewCell(uint64_t a1)
{
  result = qword_100977760;
  if (!qword_100977760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100192698(uint64_t a1)
{
  result = type metadata accessor for VideoConfiguration();
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

uint64_t (*sub_100192744(uint64_t **a1))()
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
  v2[4] = sub_1001920D8(v2);
  return sub_1000C2700;
}

uint64_t sub_1001927B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100192808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100192874(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

uint64_t sub_1001929E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100192A30()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1001929E8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    Strong = v1;
  }

  v2 = sub_1000F07CC(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

double sub_100192B00(void **a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_10037A62C(v10, a8);
  type metadata accessor for LayoutViewPlaceholder();
  dispatch thunk of Measurable.measurements(fitting:in:)();

  return a2;
}

id sub_100192BB0(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = v2;

  sub_100378DCC(v3);

  return [v1 setNeedsLayout];
}

uint64_t sub_100192C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ArtworkView();
  sub_10019304C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100192CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

double sub_100192ED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category))
  {

    PrivacyCategory.artwork.getter();

    Artwork.config(using:)();
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);
    type metadata accessor for ArtworkView();
    sub_10019304C(&qword_1009777D0, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
    v3 = v2;
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_1000C36CC(v5);
  }

  return result;
}

uint64_t sub_10019304C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10019309C()
{
  sub_10002849C(&qword_10097A790, &qword_1007BCDC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_100397278(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870, qword_1007C1D30);
  result = swift_arrayDestroy();
  qword_1009777D8 = v1;
  return result;
}

NSNumber sub_10019329C()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  sub_100194454();
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1057253870;
  *(v0 + 40) = [v1 initWithFloat:v2];
  result.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  *(v0 + 48) = result;
  qword_1009777E8 = v0;
  return result;
}

void sub_10019333C()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B48F0;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.32];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.16];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.0];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  qword_1009777F0 = v0;
}

NSNumber sub_1001934E0()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007BCD60;
  sub_100194454();
  *(v0 + 32) = NSNumber.init(floatLiteral:)(0.0);
  v1 = objc_allocWithZone(NSNumber);
  LODWORD(v2) = 1036831949;
  *(v0 + 40) = [v1 initWithFloat:v2];
  v3 = objc_allocWithZone(NSNumber);
  LODWORD(v4) = 1050141873;
  *(v0 + 48) = [v3 initWithFloat:v4];
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = 0.5;
  *(v0 + 56) = [v5 initWithFloat:v6];
  result.super.super.isa = NSNumber.init(floatLiteral:)(1.0).super.super.isa;
  *(v0 + 64) = result;
  qword_100977800 = v0;
  return result;
}

void sub_1001935C0()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007BCD60;
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  v4 = [v3 CGColor];
  *(v0 + 32) = v4;
  v5 = [v1 blackColor];
  v6 = [v5 colorWithAlphaComponent:0.15];

  v7 = [v6 CGColor];
  *(v0 + 40) = v7;
  v8 = [v1 blackColor];
  v9 = [v8 colorWithAlphaComponent:0.85];

  v10 = [v9 CGColor];
  *(v0 + 48) = v10;
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  *(v0 + 56) = v12;
  v13 = [v1 blackColor];
  v14 = [v13 CGColor];

  *(v0 + 64) = v14;
  qword_100977808 = v0;
}

char *sub_1001937B8(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect] = 1;
  v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect] = 1;
  v9 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v10 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *&v4[v10] = [objc_allocWithZone(CAGradientLayer) init];
  v11 = [objc_opt_self() effectWithBlurRadius:50.0];
  v12 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v12] = v13;
  v14 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  *&v4[v14] = [objc_allocWithZone(CAGradientLayer) init];
  v15 = &v4[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
  *v15 = 0;
  v15[8] = 1;
  v62.receiver = v4;
  v62.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  v16 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  [v16 setUserInteractionEnabled:0];
  v18 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer] setAnchorPoint:{0.0, 0.0}];
  v19 = qword_10096D218;
  v20 = *&v16[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_100194454();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 setLocations:isa];

  v22 = qword_10096D220;
  v23 = *&v16[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  sub_1002A4E98(qword_100977808);
  v24 = Array._bridgeToObjectiveC()().super.isa;

  [v23 setColors:v24];

  v25 = qword_10096D1F0;
  v26 = *&v16[v18];
  if (v25 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780, &unk_1007CC250);
  v27 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v26 setActions:v27];

  v61 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v28 = [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView] layer];
  [v28 setMask:*&v16[v18]];

  v29 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient] setAnchorPoint:{0.0, 0.0}];
  v30 = *&v16[v29];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007B15F0;
  v32 = v30;
  *(v31 + 32) = NSNumber.init(floatLiteral:)(0.0);
  *(v31 + 40) = NSNumber.init(floatLiteral:)(1.0);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  [v32 setLocations:v33];

  v34 = *&v16[v29];
  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B1890;
  v36 = objc_opt_self();
  v37 = v34;
  v38 = [v36 blackColor];
  v39 = [v38 colorWithAlphaComponent:0.5];

  v40 = [v39 CGColor];
  type metadata accessor for CGColor(0);
  v42 = v41;
  *(v35 + 56) = v41;
  *(v35 + 32) = v40;
  v43 = [v36 blackColor];
  v44 = [v43 colorWithAlphaComponent:0.25];

  v45 = [v44 CGColor];
  *(v35 + 88) = v42;
  *(v35 + 64) = v45;
  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setColors:v46];

  v47 = *&v16[v29];
  v48 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v47 setActions:v48];

  v49 = [*&v16[v61] layer];
  [v49 addSublayer:*&v16[v29]];

  [v16 addSubview:*&v16[v61]];
  v50 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  [*&v16[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient] setAnchorPoint:{0.0, 0.0}];
  v51 = qword_10096D200;
  v52 = *&v16[v50];
  if (v51 != -1)
  {
    swift_once();
  }

  v53 = Array._bridgeToObjectiveC()().super.isa;
  [v52 setLocations:v53];

  v54 = qword_10096D208;
  v55 = *&v16[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  sub_1002A4E98(qword_1009777F0);
  v56 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setColors:v56];

  v57 = *&v16[v50];
  v58 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v57 setActions:v58];

  v59 = [v16 layer];
  [v59 addSublayer:*&v16[v50]];

  return v16;
}

id sub_100193FE0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  Height = CGRectGetHeight(v15);
  if (qword_10096D1F8 != -1)
  {
    swift_once();
  }

  v2 = Height * *&qword_1009777E0;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient];
  [v0 bounds];
  MinX = CGRectGetMinX(v16);
  [v0 bounds];
  MinY = CGRectGetMinY(v17);
  [v0 bounds];
  [v3 setFrame:{MinX, MinY, CGRectGetWidth(v18), v2}];
  if (v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight + 8])
  {
    if (qword_10096D210 != -1)
    {
      swift_once();
    }

    v6 = Height * *&qword_1009777F8;
  }

  else
  {
    v6 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
  }

  [v0 bounds];
  v7 = CGRectGetMinX(v19);
  [v0 bounds];
  v8 = CGRectGetMaxY(v20) - v6;
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView];
  [v10 setFrame:{v7, v8, Width, v6}];
  v11 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer];
  [v10 bounds];
  [v11 setFrame:?];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient];
  [v10 bounds];
  return [v12 setFrame:?];
}

id sub_10019423C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BreakoutBackgroundEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100194300()
{
  *(v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect) = 1;
  v1 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient;
  *(v0 + v1) = [objc_allocWithZone(CAGradientLayer) init];
  v2 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurGradientMaskLayer;
  *(v0 + v2) = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];
  v4 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v3];

  *(v0 + v4) = v5;
  v6 = OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradient;
  *(v0 + v6) = [objc_allocWithZone(CAGradientLayer) init];
  v7 = v0 + OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight;
  *v7 = 0;
  *(v7 + 8) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100194454()
{
  result = qword_10097FB80;
  if (!qword_10097FB80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097FB80);
  }

  return result;
}

id sub_1001944A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v63 = a2;
  v65 = a1;
  v64 = type metadata accessor for ReportConcernReason();
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v15._countAndFlagsBits = 0xD000000000000014;
  v15._object = 0x80000001008052A0;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();

  [v14 setTitle:v17];

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x80000001008052C0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(v18, v19);
  v20 = String._bridgeToObjectiveC()();

  [v14 setBackTitle:v20];

  v21._object = 0x80000001008052E0;
  v21._countAndFlagsBits = 0xD000000000000015;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23 = String._bridgeToObjectiveC()();

  [v14 setCancelTitle:v23];

  v24._object = 0x8000000100805300;
  v24._countAndFlagsBits = 0xD000000000000015;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  localizedString(_:comment:)(v24, v25);
  v26 = String._bridgeToObjectiveC()();

  [v14 setSubmitTitle:v26];

  if (a5)
  {
    v27._countAndFlagsBits = 0xD00000000000002ALL;
    v27._object = 0x80000001008053C0;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    localizedString(_:comment:)(v27, v28);
    v29 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonTitle:v29];

    if (a3)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    v42 = v65;
    [v14 setReportConcernExplanation:v30];

    v43._countAndFlagsBits = 0xD000000000000025;
    v43._object = 0x80000001008053F0;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    localizedString(_:comment:)(v43, v44);
    v45 = String._bridgeToObjectiveC()();

    [v14 setPrivacyNote:v45];

    v46 = swift_allocObject();
    *(v46 + 16) = a4;
    *(v46 + 24) = a6;
    v71 = sub_100195F78;
    v72 = v46;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100195770;
    v70 = &unk_1008B7408;
    v41 = _Block_copy(&aBlock);
  }

  else
  {

    v31._countAndFlagsBits = 0xD00000000000001BLL;
    v31._object = 0x8000000100805320;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    localizedString(_:comment:)(v31, v32);
    v33 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonTitle:v33];

    v34._countAndFlagsBits = 0xD00000000000001ELL;
    v34._object = 0x8000000100805340;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    localizedString(_:comment:)(v34, v35);
    v36 = String._bridgeToObjectiveC()();

    [v14 setSelectReasonSubtitle:v36];

    v37._countAndFlagsBits = 0xD000000000000016;
    v37._object = 0x8000000100805360;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    localizedString(_:comment:)(v37, v38);
    v39 = String._bridgeToObjectiveC()();

    [v14 setPrivacyNote:v39];

    v40 = swift_allocObject();
    *(v40 + 16) = a4;
    *(v40 + 24) = a6;
    v71 = sub_100195F24;
    v72 = v40;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_100195770;
    v70 = &unk_1008B73B8;
    v41 = _Block_copy(&aBlock);

    v42 = v65;
  }

  [v14 setCompletion:v41];
  _Block_release(v41);
  v47 = *(v42 + 16);
  if (v47)
  {
    v60 = v14;
    v61 = v7;
    v62 = a4;
    v63 = a6;
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v48 = v66 + 16;
    v66 = *(v66 + 16);
    v49 = v42 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v50 = *(v48 + 56);
    v51 = v64;
    do
    {
      (v66)(v13, v49, v51);
      v52 = [objc_allocWithZone(ASReportAConcernReason) init];
      ReportConcernReason.id.getter();
      v53 = String._bridgeToObjectiveC()();

      [v52 setReasonID:v53];

      ReportConcernReason.name.getter();
      v54 = String._bridgeToObjectiveC()();

      [v52 setName:v54];

      ReportConcernReason.uppercaseName.getter();
      v55 = String._bridgeToObjectiveC()();

      [v52 setUppercaseName:v55];

      (*(v48 - 8))(v13, v51);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v49 += v50;
      --v47;
    }

    while (v47);

    v14 = v60;
  }

  else
  {
  }

  sub_100195F2C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setReasons:isa];

  v57 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v57 setModalPresentationStyle:2];

  return v57;
}

double sub_100194C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = type metadata accessor for ActionMetrics();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for HttpTemplateSubstitutions();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001963E0(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  v17 = v16;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  v57 = a6;
  v18 = HttpTemplateAction.dictionaryBody.getter();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_10019569C(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_10002849C(&qword_100977880, &qword_1007BCDC8);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007B10D0;
        sub_10002849C(&unk_100984010, &qword_1007BCDD0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007B1890;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_1001962CC(inited);
        swift_setDeallocating();
        sub_10002849C(&unk_100989050, &qword_1007CB9D0);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_10002849C(&qword_100977888, &qword_1007BCDD8);
        v60[0] = v21;
        sub_10004ACAC(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_10019569C(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_10002849C(&qword_100977880, &qword_1007BCDC8);
      v28 = swift_allocObject();
      v51 = xmmword_1007B10D0;
      *(v28 + 16) = xmmword_1007B10D0;
      sub_10002849C(&unk_100984010, &qword_1007BCDD0);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_1001962CC(v29);
      swift_setDeallocating();
      sub_10002B894(v29 + 32, &unk_100989050, &qword_1007CB9D0);
      *(v28 + 32) = v31;
      v61 = sub_10002849C(&qword_100977888, &qword_1007BCDD8);
      v60[0] = v28;
      sub_10004ACAC(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_10002849C(&qword_100977890, qword_1007BCDE0);
  v33 = Optional._bridgeToObjectiveC()();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    static String.Encoding.utf8.getter();
    String.init(data:encoding:)();
    if (v39)
    {
      v40 = v54;
      static ActionMetrics.notInstrumented.getter();
      v44 = dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
      (*(v55 + 8))(v40, v56);

      v45 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v46 = v49;
      v47 = v50;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_100061EE8(v36, v38);

        sub_10002B894(v47, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        sub_1005FA07C(v44, 1, v46, v47);

        sub_100061EE8(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }

      goto LABEL_18;
    }

    sub_100061EE8(v36, v38);
  }

  else
  {
    v41 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for OSLogger();
  sub_1000056A8(v42, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  (*(v58 + 8))(v17, v59);
LABEL_18:

  return result;
}

uint64_t (*sub_10019569C(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100195F80(v6, a2, a3);
  return sub_100195724;
}

void sub_100195724(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

double sub_100195770(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a2;
  v6();

  return result;
}

uint64_t sub_10019582C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = type metadata accessor for ActionMetrics();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HttpTemplateParameter();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HttpTemplateSubstitutions();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001963E0(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  v52 = v19;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  v44 = a6;
  v20 = HttpTemplateAction.parameters.getter();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (HttpTemplateParameter.key.getter() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (HttpTemplateParameter.key.getter() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    HttpTemplateSubstitutions.setParameter(value:for:)();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  static ActionMetrics.notInstrumented.getter();
  v33 = dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10002B894(v34, &unk_100972A00, &unk_1007B3130);
  }

  else
  {
    sub_1005FA07C(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

unint64_t sub_100195F2C()
{
  result = qword_100977878;
  if (!qword_100977878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100977878);
  }

  return result;
}

void (*sub_100195F80(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100196298(v7);
  v7[9] = sub_10019608C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_10019602C;
}

void sub_10019602C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10019608C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1000072B8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100054848();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10004E85C(v18, a4 & 1);
    v13 = sub_1000072B8(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1001961E4;
}

void sub_1001961E4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100052CE4(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1001964F0(*(v7 + 48) + 16 * v6);
    sub_1000506A8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_100196298(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1001962C0;
}

unint64_t sub_1001962CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100982810, &unk_1007CA1D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1000072B8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1001963E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002849C(&qword_100970CB0, &qword_1007CA220);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100196544(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000072B8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100056164(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100196544(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100982880, &unk_1007DEC80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001965BC()
{
  if (!*&v0[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      if (v3)
      {

        *(sub_10019701C() + 88) = 1;

        v4 = [v0 transitionCoordinator];
        if (v4)
        {
          v5 = v4;
          v6 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_10019DBA4;
          v17 = v6;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006D1458;
          v15 = &unk_1008B7700;
          v7 = _Block_copy(&aBlock);

          v8 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v16 = sub_10019DBC0;
          v17 = v8;
          aBlock = _NSConcreteStackBlock;
          v13 = 1107296256;
          v14 = sub_1006D1458;
          v15 = &unk_1008B7728;
          v9 = _Block_copy(&aBlock);

          [v5 animateAlongsideTransition:v7 completion:v9];
          _Block_release(v9);
          _Block_release(v7);
          swift_unknownObjectRelease();
        }

        else
        {

          v10 = [v0 collectionView];
          if (v10)
          {
            v11 = v10;
            sub_1000423A0(v10);
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

double sub_10019683C()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    if (*(v0 + qword_1009CE4B8) == 1)
    {
      sub_10019701C();
      sub_100041DF8();
    }

    else
    {
      v3 = [v0 transitionCoordinator];
      v4 = sub_10019701C();
      if (v3)
      {
        v12 = sub_10019DB94;
        v13 = v4;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1006D1458;
        v11 = &unk_1008B76B0;
        v5 = _Block_copy(&v8);

        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v12 = sub_10019DB9C;
        v13 = v6;
        v8 = _NSConcreteStackBlock;
        v9 = 1107296256;
        v10 = sub_1006D1458;
        v11 = &unk_1008B76D8;
        v7 = _Block_copy(&v8);

        [v3 animateAlongsideTransition:v5 completion:v7];
        _Block_release(v7);
        _Block_release(v5);
        swift_unknownObjectRelease();
        return result;
      }

      sub_100041DF8();
    }
  }

  return result;
}

void sub_100196A64(void *a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = v3;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v5 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = (a1 & 8) == 0;

  sub_100062100();
  if ((a1 & 1) == 0 && ((a1 & 2) == 0 || (sub_10006230C() & 1) == 0))
  {
    *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = 0;
    goto LABEL_11;
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_18:
    __break(1u);
    return;
  }

  a1 = v6;
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
LABEL_17:

    goto LABEL_18;
  }

  v8 = *(v7 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle) = v8;
  if ((v8 & 1) == 0)
  {
LABEL_11:
    v9 = 2;
    goto LABEL_12;
  }

  v9 = 3;
LABEL_12:
  v10 = [v1 navigationItem];
  [v10 setLargeTitleDisplayMode:v9];
}

char *sub_100196BB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + qword_100977898) = 0x4024000000000000;
  *(v2 + qword_1009778A0) = 0;
  *(v2 + qword_1009778A8) = 0;
  *(v2 + qword_1009CE4B8) = 0;
  *(v2 + qword_1009CE4C0) = 0;
  *(v2 + qword_1009CE4C8) = 0;
  v6 = qword_1009CE4D0;
  type metadata accessor for ProductTitleView();
  *(v3 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v3 + qword_1009CE4D8) = 0;
  *(v3 + qword_1009778B0) = 0;
  *(v3 + qword_1009CE4E0) = 0;
  *(v3 + qword_1009CE4E8) = 0;
  *(v3 + qword_1009778C0) = 0;
  v7 = qword_1009778D0;
  type metadata accessor for ProductPageExtensionBannerScrollObserver();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + v7) = v8;
  *(v3 + qword_1009778D8) = 0;
  *(v3 + qword_1009778E0) = _swiftEmptySetSingleton;
  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009778B8) = ASKBagContract.refreshArcadeEntitlementsOnLoadingArcadeView.getter() & 1;
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_1009778C8) = v19;

  v9 = sub_1003B8AE4(a1, a2);
  v10 = qword_1009CF410;
  v11 = *&v9[qword_1009CF410];
  v12 = v9;
  v13 = v11;
  sub_100196F38();
  sub_10019DBC8(&qword_100977ED8, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_1007C7D44);
  CompoundScrollObserver.addChild(_:)();

  v14 = *&v9[v10];

  CompoundScrollObserver.addChild(_:)();

  v15 = *&v9[v10];

  v16 = qword_1009778D0;
  sub_10019DBC8(&qword_100977EE0, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_1007E237C);

  CompoundScrollObserver.addChild(_:)();

  v17 = *&v12[v16];
  sub_10002849C(&qword_100977EE8, &unk_1007BCE90);

  BaseObjectGraph.injectIfAvailable<A>(_:)();

  *(v17 + 40) = v20;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_100196F38()
{
  v1 = qword_1009778D8;
  if (*&v0[qword_1009778D8])
  {
    v2 = *&v0[qword_1009778D8];
  }

  else
  {
    v3 = *&v0[qword_1009CF3E0];
    v4 = *&v0[qword_1009CF3F0];
    type metadata accessor for ProductTopLockupCollectionElementsObserver();
    swift_allocObject();

    v5 = v0;
    v2 = sub_10032E8C4(v3, v5, v4);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_10019701C()
{
  v1 = qword_1009778A8;
  if (*(v0 + qword_1009778A8))
  {
    v2 = *(v0 + qword_1009778A8);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008B7460;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    v5 = *(v2 + 80);
    *(v2 + 72) = sub_10019D1B0;
    *(v2 + 80) = v3;

    sub_10001F63C(v4, v5);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100197130()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SystemImage();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v43[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "viewDidLoad", v9);
  (*(v8 + 104))(v11, enum case for SystemImage.squareAndArrowUp(_:), v7);
  v12 = static SystemImage.load(_:with:)();
  (*(v8 + 8))(v11, v7);
  v13 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v12 style:0 target:v1 action:"share:"];

  [v13 setHidden:1];
  v14 = v13;
  v15._object = 0x80000001008056C0;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  localizedString(_:comment:)(v15, v16);
  v17 = String._bridgeToObjectiveC()();

  [v14 setTitle:v17];

  v18 = v14;
  v19._countAndFlagsBits = 0xD00000000000002BLL;
  v19._object = 0x80000001008056F0;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  localizedString(_:comment:)(v19, v20);
  v21 = String._bridgeToObjectiveC()();

  [v18 setAccessibilityLabel:v21];

  v22 = qword_1009778B0;
  v23 = *&v1[qword_1009778B0];
  *&v1[qword_1009778B0] = v18;
  v24 = v18;

  v25 = *&v1[v22];
  if (v25)
  {
    v44 = 0u;
    v45 = 0u;
    memset(v43, 0, sizeof(v43));
    v26 = v25;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(v43, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(&v44, &unk_1009711D0, &unk_1007B1A10);
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    UIAccessibilityIdentification.setAutomationSemantics(_:)();

    (*(v4 + 8))(v6, v3);
  }

  v27 = [v1 navigationItem];
  v28 = [v27 rightBarButtonItems];

  if (v28)
  {
    sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

  *&v43[0] = v29;
  if (v29 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = v24;
  sub_1004A6D30(0, 0, v30);

  v31 = [v1 navigationItem];
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v31 setRightBarButtonItems:isa];

  sub_10019701C();
  sub_10019DBC8(&qword_100977FD8, type metadata accessor for UberedPageScrollObserver, &unk_1007B1B0C);
  CompoundScrollObserver.addChild(_:)();

  v33 = [v1 navigationItem];
  [v33 setTitleView:*&v1[qword_1009CE4D0]];

  v34 = [v1 collectionView];
  if (!v34)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v35 = v34;
  v44 = 0u;
  v45 = 0u;
  static AutomationSemantics.page(name:id:)();
  sub_10002B894(&v44, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v4 + 8))(v6, v3);
  v36 = [v1 view];
  if (!v36)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v37 = v36;
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v38 = swift_allocObject();
  v42 = xmmword_1007B10D0;
  *(v38 + 16) = xmmword_1007B10D0;
  *(v38 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v39 = [v1 view];
  if (v39)
  {
    v40 = v39;

    v41 = swift_allocObject();
    *(v41 + 16) = v42;
    *(v41 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v41 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1001978A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong collectionViewLayout];
    [v5 invalidateLayout];

    v6 = [v4 collectionView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100197950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = [v8 traitCollection];
    v10 = UITraitCollection.isSizeClassCompact.getter();

    v11 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
    if ((v10 & 1) == 0)
    {
      v11 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
    }

    (*(v4 + 104))(v6, *v11, v3);
    ProductDiffablePagePresenter.didChangePageWidth(_:)();

    (*(v4 + 8))(v6, v3);
    v12 = [v8 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100197B08(void *a1)
{
  v1 = a1;
  sub_100197130();
}

uint64_t sub_100197B50(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntitlementRefeshCondition();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1, v11);
  sub_1001965BC();
  if (*(v2 + qword_1009778B8) == 1)
  {
    v14 = qword_1009778C0;
    if ((*(v2 + qword_1009778C0) & 1) == 0)
    {
      type metadata accessor for ArcadeSubscriptionManager();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v15 = v17[1];
      *v13 = 1;
      (*(v10 + 104))(v13, enum case for EntitlementRefeshCondition.ifCacheIsExpired(_:), v9);
      ArcadeSubscriptionManager.updateStateFromEntitlements(refreshingCache:)();

      (*(v10 + 8))(v13, v9);
      *(v2 + v14) = 1;
    }
  }

  (*(v6 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v5);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v6 + 8))(v8, v5);
}

void sub_100197DCC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100197B50(a3);
}

uint64_t sub_100197E48(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v2;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v11);
  v2[qword_1009CE4C0] = 1;
  v14 = qword_1009CE4C8;
  if ((v2[qword_1009CE4C8] & 1) == 0)
  {
    v15 = ProductDiffablePagePresenter.appPromotionDetailPageAction.getter();
    if (v15)
    {
      v16 = v15;
      v2[v14] = 1;
      v17 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      sub_1005F9AF4(v16, 1, v17, v8);

      (*(v6 + 8))(v8, v5);
    }
  }

  (*(v10 + 104))(v13, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.didAppear(_:), v9);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v10 + 8))(v13, v9);
}

void sub_1001980B0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100197E48(a3);
}

void sub_100198104(void *a1, uint64_t a2, uint64_t a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a3);
  sub_10019683C();
}

void sub_10019817C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_1001982B0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  v10 = *(v6 + 104);
  v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willDisappear(_:), v5);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  v11 = *(v6 + 8);
  v11(v9, v5);
  if ([v2 isMovingFromParentViewController])
  {
    v10(v9, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v5);
    AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
    v11(v9, v5);
  }

  return sub_10019843C();
}

uint64_t sub_10019843C()
{
  v1 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  result = ProductDiffablePagePresenter.pageDisappearedAction.getter();
  if (result)
  {
    v5 = result;
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
    v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {

      return sub_10002B894(v3, &unk_100972A00, &unk_1007B3130);
    }

    else
    {
      sub_1005F9AF4(v5, 1, v6, v3);

      return (*(v8 + 8))(v3, v7);
    }
  }

  return result;
}

void sub_1001985C0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1001982B0(a3);
}

void sub_100198614(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_10019DC64;
    v17 = v7;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B7638;
    v8 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = v3;
    v16 = sub_10019DB8C;
    v17 = v9;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1006D1458;
    v15 = &unk_1008B7688;
    v10 = _Block_copy(&v12);
    v11 = v3;

    [a1 animateAlongsideTransition:0 completion:v10];
    _Block_release(v10);
  }
}

void sub_1001987E0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ProductDiffablePagePresenter.PageWidth();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProductDiffablePagePresenter.reloadProductReviewsSection()();
  v7 = [a2 traitCollection];
  v8 = UITraitCollection.isSizeClassCompact.getter();

  v9 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
  if ((v8 & 1) == 0)
  {
    v9 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
  }

  (*(v4 + 104))(v6, *v9, v3);
  ProductDiffablePagePresenter.didChangePageWidth(_:)();
  (*(v4 + 8))(v6, v3);
  v10 = [a2 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_100198964(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100198614(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_100198A0C(void *a1)
{
  v1 = a1;
  sub_1001989E4();
}

uint64_t sub_100198A7C(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v6 + v15, v22, &unk_10097F510, &unk_1007B2700);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510, &unk_1007B2700);
    v18 = a2;
    v19 = v7;
    sub_10002A400(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v12 + 8))(v14, v11);
    v16 = sub_100007000(v21);
  }

  else
  {
    v16 = sub_10002B894(v22, &unk_10097F510, &unk_1007B2700);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_100198D20(void *a1)
{
  v1 = a1;
  sub_100198A54();
}

void sub_100198D68(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  a1[4] = sub_10019DBC8(&qword_100977FD0, type metadata accessor for BaseShelfComponentTypeMappingProvider, &unk_1007B6CD8);
  *a1 = v3;
}

uint64_t sub_100198E1C()
{
  v17[2] = swift_getObjectType();
  v1 = sub_10002849C(&qword_100977F70, &qword_1007BCEC0);
  v22 = *(v1 - 8);
  v23 = v1;
  __chkstk_darwin(v1);
  v21 = v17 - v2;
  v3 = sub_10002849C(&qword_100977F78, &qword_1007BCEC8);
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = v17 - v4;
  v5 = sub_10002849C(&qword_100977F80, &unk_1007BCED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_1004130A0();
  v9 = *(v0 + qword_1009CF3E0);
  v17[0] = v0;
  v17[1] = v9;
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  v10 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v11;
  sub_10002849C(&unk_10097F550, &qword_1007C6970);
  sub_100097060(&qword_100977F88, &unk_10097F550, &qword_1007C6970, &protocol conformance descriptor for SyncEvent<A>);
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v6 + 8))(v8, v5);
  sub_100007000(v24);
  ProductDiffablePagePresenter.onScrollToPosition.getter();
  v12 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v12;
  sub_10002849C(&qword_100977F90, &qword_1007BCEE0);
  sub_100097060(&qword_100977F98, &qword_100977F90, &qword_1007BCEE0, &protocol conformance descriptor for SyncEvent<A>);
  v13 = v18;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v19 + 8))(v13, v20);
  sub_100007000(v24);
  ProductDiffablePagePresenter.onDownloadingOrderingItemsRemoved.getter();
  v14 = static OS_dispatch_queue.main.getter();
  v25 = v10;
  v26 = &protocol witness table for OS_dispatch_queue;
  v24[0] = v14;
  sub_10002849C(&qword_100977FA0, &qword_1007BCEE8);
  sub_100097060(&qword_100977FA8, &qword_100977FA0, &qword_1007BCEE8, &protocol conformance descriptor for SyncEvent<A>);
  v15 = v21;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v22 + 8))(v15, v23);
  return sub_100007000(v24);
}

void sub_100199280(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v2 - 8);
  v73 = v70 - v3;
  v4 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v72 = v70 - v5;
  v6 = type metadata accessor for IndexPath();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100977FC0, &qword_1007BCF08);
  __chkstk_darwin(v8 - 8);
  v81 = v70 - v9;
  v10 = type metadata accessor for DiffablePageContentIdentifier();
  v11 = *(v10 - 8);
  v82 = v10;
  v83 = v11;
  __chkstk_darwin(v10);
  v76 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v13 - 8);
  v87 = v70 - v14;
  v84 = type metadata accessor for Shelf.ContentType();
  v86 = *(v84 - 8);
  __chkstk_darwin(v84);
  v71 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = v70 - v17;
  __chkstk_darwin(v18);
  v85 = v70 - v19;
  v20 = sub_10002849C(&qword_100975028, &unk_1007C69C0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v70 - v22;
  v24 = sub_10002849C(&qword_10097F530, &qword_1007BCF10);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v70 - v26;
  v28 = sub_10002849C(&qword_100977FC8, &qword_1007C6940);
  v29 = a1;
  SnapshotUpdate.contentSnapshot.getter();
  ModelMappedDiffableDataSourceContentSnapshot.identifierSnapshot.getter();
  v30 = *(v25 + 8);
  v30(v27, v24);
  v31 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  (*(v21 + 8))(v23, v20);
  if (v31 < 1)
  {
    goto LABEL_10;
  }

  v70[2] = v28;
  SnapshotUpdate.contentSnapshot.getter();
  v32 = v87;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)();
  v30(v27, v24);
  v33 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v35 = &unk_10098FFB0;
    v36 = qword_1007B3890;
    v37 = v32;
LABEL_9:
    sub_10002B894(v37, v35, v36);
    goto LABEL_10;
  }

  v70[1] = v29;
  swift_getKeyPath();
  v38 = v80;
  ReadOnlyLens.subscript.getter();

  (*(v34 + 8))(v32, v33);
  v40 = v85;
  v39 = v86;
  v41 = v84;
  (*(v86 + 32))(v85, v38, v84);
  v42 = qword_10097F2F8;
  v43 = v88;
  swift_beginAccess();
  v44 = *(v43 + v42);
  if (!v44)
  {
    (*(v39 + 8))(v40, v41);
    swift_endAccess();
    v48 = v81;
    (*(v83 + 56))(v81, 1, 1, v82);
    goto LABEL_8;
  }

  swift_endAccess();
  v45 = v44;
  v46 = v77;
  IndexPath.init(item:section:)();
  v47 = v81;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v48 = v47;
  v87 = *(v78 + 8);
  (v87)(v46, v79);
  v50 = v82;
  v49 = v83;
  if ((*(v83 + 48))(v47, 1, v82) == 1)
  {
    (*(v86 + 8))(v85, v41);
LABEL_8:
    v35 = &qword_100977FC0;
    v36 = &qword_1007BCF08;
    v37 = v48;
    goto LABEL_9;
  }

  v51 = v76;
  (*(v49 + 32))(v76, v47, v50);
  SnapshotUpdate.contentSnapshot.getter();
  v52 = v30;
  v53 = v73;
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)();
  v54 = v27;
  v55 = v53;
  v52(v54, v24);
  v56 = v74;
  v57 = v53;
  v58 = v75;
  if ((*(v74 + 48))(v57, 1, v75) == 1)
  {
    (*(v49 + 8))(v51, v50);
    (*(v86 + 8))(v85, v84);
    v35 = &qword_100977FB8;
    v36 = &unk_1007C4330;
    v37 = v55;
    goto LABEL_9;
  }

  v59 = v72;
  (*(v56 + 32))(v72, v55, v58);
  v61 = v85;
  v60 = v86;
  v62 = v71;
  v63 = v84;
  (*(v86 + 16))(v71, v85, v84);
  if ((*(v60 + 88))(v62, v63) != enum case for Shelf.ContentType.productTopLockup(_:))
  {
    (*(v56 + 8))(v59, v58);
    (*(v83 + 8))(v76, v50);
    v69 = *(v60 + 8);
    v69(v61, v63);
    *(v88 + qword_1009778E0) = _swiftEmptySetSingleton;

    v69(v62, v63);
    return;
  }

  ReadOnlyLens.value.getter();
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for ProductTopLockup();
  v64 = swift_dynamicCast();
  v65 = v76;
  if (v64)
  {
    if (ProductTopLockup.uber.getter())
    {

      sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
      v66 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1007B10D0;
      IndexPath.init(item:section:)();
      v68 = sub_100083BE8(v67);
      swift_setDeallocating();
      (v87)(v67 + v66, v79);
      swift_deallocClassInstance();

      (*(v56 + 8))(v59, v58);
      (*(v83 + 8))(v65, v50);
      (*(v86 + 8))(v85, v84);
      *(v88 + qword_1009778E0) = v68;
      goto LABEL_11;
    }
  }

  (*(v56 + 8))(v59, v58);
  (*(v83 + 8))(v65, v50);
  (*(v86 + 8))(v85, v84);
LABEL_10:
  *(v88 + qword_1009778E0) = _swiftEmptySetSingleton;
LABEL_11:
}

void (*sub_100199DA4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10019DAB8;
}

void sub_100199E08(uint64_t a1)
{
  v64 = type metadata accessor for IndexPath();
  v2 = *(v64 - 8);
  __chkstk_darwin(v64);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v62 - v6;
  v8 = type metadata accessor for ProductPageScrollPosition();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for ProductPageScrollPosition.topOfPage(_:))
  {
    (*(v9 + 96))(v12, v8);
    v14 = *v12;
    v15 = *(*v12 + 16);
    if (!v15)
    {
LABEL_7:
      v20 = [v65 collectionView];
      if (v20)
      {
        v21 = v20;

        [v21 setContentOffset:1 animated:{0.0, 0.0}];

        return;
      }

      goto LABEL_31;
    }

    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      v17 = [v65 collectionView];
      if (!v17)
      {
        goto LABEL_29;
      }

      v18 = v17;
      ++v16;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v7, v64);
      [v18 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:1];

      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v13 != enum case for ProductPageScrollPosition.topOfIndexPath(_:))
  {
    (*(v9 + 8))(v12, v8);
    return;
  }

  (*(v9 + 96))(v12, v8);
  v22 = sub_10002849C(&qword_100977FB0, &unk_1007BCEF0);
  v23 = v12[*(v22 + 48)];
  v24 = *&v12[*(v22 + 64)];
  (*(v2 + 32))(v4, v12, v64);
  v25 = [v65 collectionView];
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = v25;
  v27 = IndexPath._bridgeToObjectiveC()().super.isa;
  v28 = [v26 layoutAttributesForItemAtIndexPath:v27];

  if (!v28)
  {
    goto LABEL_23;
  }

  [v28 frame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v23)
  {
LABEL_15:
    v63 = v4;
    v41 = *(v24 + 16);
    if (!v41)
    {
LABEL_20:
      v46 = [v65 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 frame];
        v50 = v49;
        v52 = v51;
        v54 = v53;
        v56 = v55;

        v67.origin.x = v50;
        v67.origin.y = v52;
        v67.size.width = v54;
        v67.size.height = v56;
        MaxY = CGRectGetMaxY(v67);
      }

      else
      {
        MaxY = 0.0;
      }

      v58 = v63;
      v68.origin.x = v30;
      v68.origin.y = v32;
      v68.size.width = v34;
      v68.size.height = v36;
      MinY = CGRectGetMinY(v68);
      v60 = [v65 collectionView];
      if (v60)
      {
        v61 = v60;

        [v61 setContentOffset:1 animated:{0.0, MinY - MaxY}];

        (*(v2 + 8))(v58, v64);
        return;
      }

      goto LABEL_33;
    }

    v42 = 0;
    while (v42 < *(v24 + 16))
    {
      v43 = [v65 collectionView];
      if (!v43)
      {
        goto LABEL_30;
      }

      v44 = v43;
      ++v42;
      IndexPath.init(item:section:)();
      v45 = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v2 + 8))(v7, v64);
      [v44 scrollToItemAtIndexPath:v45 atScrollPosition:0 animated:1];

      if (v41 == v42)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_28;
  }

  v37 = [v65 collectionView];
  if (v37)
  {
    v38 = v37;
    [v37 contentOffset];
    v40 = v39;

    v66.origin.x = v30;
    v66.origin.y = v32;
    v66.size.width = v34;
    v66.size.height = v36;
    if (CGRectGetMinY(v66) < v40)
    {
      goto LABEL_15;
    }

LABEL_23:
    (*(v2 + 8))(v4, v64);

    return;
  }

LABEL_34:
  __break(1u);
}

void (*sub_10019A42C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10019DA94;
}

uint64_t (*sub_10019A490(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10019DA28;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_10019DA68;
}

unint64_t sub_10019A520@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  a1[3] = &type metadata for ProductPageGridProvider;
  result = sub_10019D9D4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10019A5A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController, &unk_1007C67E0);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_1000073E8(v18, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v19, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0, &qword_1007B13E0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v10 = type metadata accessor for ProductPageLayoutSectionProvider(0);
  swift_allocObject();
  sub_10002C0AC(v17, v16);
  sub_10002C0AC(v16, v15);

  v11 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v16);
  result = sub_100007000(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10019A8B4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ProductPageShelfLayoutSpacingProvider;
  result = sub_10019D980();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10019A8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for ProductPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10019DBC8(&qword_100977F30, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10019DBC8(&qword_100977F58, type metadata accessor for ProductPageShelfSupplementaryProvider, &unk_1007C37A0);

  return v2;
}

uint64_t sub_10019A9E8()
{
  swift_getObjectType();
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController, &unk_1007C67E0);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ProductPageItemSupplementaryViewProvider();
  v0 = swift_allocObject();
  sub_10002C0AC(v3, v0 + 16);
  type metadata accessor for ProductPageSeparatorItemSupplementaryProvider();
  v1 = swift_allocObject();
  sub_100005A38(v3, v1 + 16);
  *(v0 + 56) = v1;
  sub_10019DBC8(&qword_100977F50, type metadata accessor for ProductPageItemSupplementaryViewProvider, &unk_1007CC9AC);
  return v0;
}

id sub_10019AAE4()
{
  v1 = v0;
  swift_getObjectType();
  sub_100739948();
  type metadata accessor for CompoundCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    v2 = CompoundCollectionElementsObserver.removingChildren(where:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = CompoundCollectionElementsObserver.init(children:)();
  }

  sub_10002849C(&qword_1009717B0, &unk_1007B2A00);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B23A0;

  sub_10019701C();
  type metadata accessor for UberedCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v4 + 24) = 0;
  swift_weakAssign();

  v5 = sub_10019DBC8(&qword_100975038, type metadata accessor for UberedCollectionElementsObserver, &unk_1007BFFC4);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v6 = *&v0[qword_1009778D0];
  v7 = sub_10019DBC8(&qword_100977F08, type metadata accessor for ProductPageExtensionBannerScrollObserver, &unk_1007E23D4);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8 = sub_100196F38();
  v9 = sub_10019DBC8(&qword_100977F10, type metadata accessor for ProductTopLockupCollectionElementsObserver, &unk_1007C7D9C);
  *(v3 + 64) = v8;
  *(v3 + 72) = v9;
  v10 = *&v1[qword_1009CF3F0];
  type metadata accessor for ProductMediaCollectionElementsObserver();
  v11 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  *(v11 + 32) = v10;
  v12 = sub_10019DBC8(&qword_100977F18, type metadata accessor for ProductMediaCollectionElementsObserver, &unk_1007CE0A8);
  *(v3 + 80) = v11;
  *(v3 + 88) = v12;
  sub_10019DBC8(&qword_100977F20, type metadata accessor for ProductDiffablePageViewController, &unk_1007C67E0);
  swift_retain_n();

  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  sub_10019DBC8(&qword_100977F28, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_10019DBC8(&qword_100977F30, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v13 + qword_100973FD8) = 0;
  swift_unknownObjectWeakAssign();
  sub_10002C0AC(v23, v13 + qword_100973FD0);

  v14 = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  sub_100007000(v23);
  *(v3 + 96) = v14;
  *(v3 + 104) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 24) = &off_1008B7430;
  swift_unknownObjectWeakAssign();
  v16 = sub_10019DBC8(&qword_100977F38, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver, &unk_1007DDD5C);
  *(v3 + 112) = v15;
  *(v3 + 120) = v16;
  CompoundCollectionElementsObserver.addChildren(_:)(v3);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B1E00;
  sub_10002849C(&qword_100977F40, &unk_1007BCEB0);
  swift_allocObject();
  swift_retain_n();
  v18 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v19 = sub_100097060(&qword_100977F48, &qword_100977F40, &unk_1007BCEB0, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v20 = swift_allocObject();
  *(v20 + 16) = 3;
  v21 = sub_10019DBC8(&qword_1009717C8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, &unk_1007D4BF4);
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v17 + 64) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v17 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    CompoundCollectionElementsObserver.addChildren(_:)(v17);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_10019B154(uint64_t a1)
{
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    return 1;
  }

  type metadata accessor for ImpressionsCollectionElementsObserver();
  return swift_dynamicCastClass() != 0;
}

void sub_10019B1AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10002849C(&qword_100977EF0, &unk_1007BCEA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v16 - v10);
  sub_100727668(a1);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v9 + 96))(v11, v8);
    sub_10019B450(*v11);
    if (*(v1 + qword_1009CE4C0) == 1)
    {
      v12 = qword_1009CE4C8;
      if ((*(v1 + qword_1009CE4C8) & 1) == 0)
      {
        v13 = ProductDiffablePagePresenter.appPromotionDetailPageAction.getter();
        if (v13)
        {
          v14 = v13;
          *(v2 + v12) = 1;
          v15 = *(v2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          sub_1005F9AF4(v14, 1, v15, v7);

          (*(v5 + 8))(v7, v4);
        }
      }
    }

    sub_10019B7FC();
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }
}

void sub_10019B450(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = DynamicPage.presentationOptions.getter();
  v18 = v1;
  sub_100196A64(v8);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10019D910;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008B7570;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10019DBC8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
  v12 = v18;
  sub_10019BE80();
  v13 = *(v12 + qword_1009778B0);
  if (v13)
  {
    v14 = v13;
    v15 = ShelfBasedProductPage.shareAction.getter();
    if (v15)
    {
    }

    [v14 setHidden:v15 == 0];
  }

  if (ShelfBasedProductPage.uber.getter() && (v16 = Uber.video.getter(), , v16))
  {

    sub_10019BFB0();
  }

  else
  {
    sub_10019C3B8();
  }
}

void sub_10019B7FC()
{
  v32 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v32);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShareSheetData.Metadata();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (ProductDiffablePagePresenter.shareAction.getter())
  {
    v31 = v0;
    type metadata accessor for ShareSheetAction();
    if (swift_dynamicCastClass())
    {
      ShareSheetAction.data.getter();
      ShareSheetData.metadata.getter();

      if ((*(v10 + 88))(v12, v9) != enum case for ShareSheetData.Metadata.product(_:))
      {

        (*(v10 + 8))(v12, v9);
        return;
      }

      (*(v10 + 96))(v12, v9);
      ShareSheetProductMetadata.adamId.getter();
      v13 = AdamId.stringValue.getter();
      v15 = v14;
      (*(v6 + 8))(v8, v5);
      if (!ShareSheetProductMetadata.notesMetadata.getter() || (v16 = ShareSheetNotesMetadata.mediaType.getter(), v18 = v17, , !v18))
      {
        v20 = v15;
        goto LABEL_19;
      }

      v19 = v16 == 0x656C646E7562 && v18 == 0xE600000000000000;
      v20 = v15;
      if (v19)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
LABEL_19:

          ShareSheetAction.data.getter();
          ShareSheetData.url.getter();

          v23 = type metadata accessor for URL();
          (*(*(v23 - 8) + 56))(v4, 0, 1, v23);
          v24 = ShareSheetProductMetadata.name.getter();
          sub_1005E58D8(v13, v20, v4, v24, v25, &v36);
          v39 = v37;
          v40[0] = v36;
          v35 = _swiftEmptyArrayStorage;
          sub_10019D860(v40, v34);
          sub_10019D860(&v39, v34);
          sub_10019DBC8(&unk_100980350, &type metadata accessor for AppEntityVisualState, &protocol conformance descriptor for AppEntityVisualState);

          sub_10002849C(&qword_100977EF8, &qword_1007C73F0);
          sub_100097060(&qword_100980360, &qword_100977EF8, &qword_1007C73F0, &protocol conformance descriptor for [A]);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v34[0] = v36;
          v34[1] = v37;
          v34[2] = v38;
          v26 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
          sub_10019D8BC();
          v27 = AppEntityViewAnnotation.init<A>(entity:state:)();
          v28 = [v31 view];
          if (v28)
          {
            v29 = v28;

            UIView.annotate(with:)();

            sub_1001964F0(v40);
            sub_1001964F0(&v39);
          }

          else
          {
            __break(1u);
          }

          return;
        }
      }

      *&v36 = v13;
      *(&v36 + 1) = v15;
      *&v34[0] = 0x2D656C646E7562;
      *(&v34[0] + 1) = 0xE700000000000000;
      *&v34[0] = String.init<A>(_:)();
      *(&v34[0] + 1) = v22;
      String.append<A>(contentsOf:)();

      v20 = *(&v34[0] + 1);
      v13 = *&v34[0];
      goto LABEL_19;
    }
  }
}

double sub_10019BE18(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100196F38();

    sub_10032E3E0();
  }

  return result;
}

void sub_10019BE80()
{
  if (*(v0 + qword_1009778A0) != 1)
  {
LABEL_7:
    v5 = [v0 collectionView];
    if (!v5)
    {
      return;
    }

    goto LABEL_8;
  }

  v1 = [v0 view];
  if (!v1)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [v0 collectionView];
  if (!v5)
  {
    return;
  }

LABEL_8:
  v6 = v5;
  [v5 frame];
  [v6 setFrame:?];
}

void sub_10019BFB0()
{
  v1 = v0;
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1009CE4E0;
  v8 = *&v1[qword_1009CE4E0];
  if (v8)
  {
    v9 = *&v1[qword_1009CE4E0];
  }

  else
  {
    (*(v3 + 104))(v6, enum case for SystemImage.speakerSlashFill(_:), v2, v4);
    v10 = static SystemImage.load(_:with:)();
    (*(v3 + 8))(v6, v2);
    v11 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v10 style:0 target:0 action:0];

    v9 = v11;
    v12._object = 0x80000001008021C0;
    v12._countAndFlagsBits = 0xD00000000000002BLL;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    localizedString(_:comment:)(v12, v13);
    v14 = String._bridgeToObjectiveC()();

    [v9 setTitle:v14];

    v15._countAndFlagsBits = 0xD00000000000002CLL;
    v15._object = 0x8000000100802190;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    localizedString(_:comment:)(v15, v16);
    v17 = String._bridgeToObjectiveC()();

    [v9 setAccessibilityLabel:v17];

    [v9 setHidden:1];
    v18 = *&v1[v7];
    *&v1[v7] = v9;

    v8 = 0;
  }

  v19 = v8;
  v20 = [v1 navigationItem];
  v21 = [v20 rightBarButtonItems];

  if (v21 && (sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v32 = v9, __chkstk_darwin(v23), *(&v31 - 2) = &v32, v24 = sub_10003D668(sub_10019D918, (&v31 - 4), v22), , (v24 & 1) == 0))
  {
    v25 = [v1 navigationItem];
    v26 = [v25 rightBarButtonItems];

    if (v26)
    {
      v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v32 = v27;
    v28 = v9;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v29 = [v1 navigationItem];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v29 setRightBarButtonItems:isa];
  }

  else
  {
  }
}

void sub_10019C3B8()
{
  v1 = *&v0[qword_1009CE4E0];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 navigationItem];
    v3 = [v2 rightBarButtonItems];

    if (v3 && (sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr), v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v3, v5 = sub_10045DBD4(v13, v4), v7 = v6, , (v7 & 1) == 0))
    {
      v8 = [v0 navigationItem];
      v9 = [v8 rightBarButtonItems];
      if (v9)
      {
        v10 = v9;
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v11)
        {
          v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v12.super.isa = 0;
        }

        [v8 setRightBarButtonItems:v12.super.isa];
      }

      else
      {
        [v8 setRightBarButtonItems:0];
      }
    }
  }
}

void sub_10019C584()
{
  if (*(*&v0[qword_1009778E0] + 16))
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for InsetCollectionViewControllerContentView();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);

        if ((v4 & 1) == 0)
        {
        }

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10019C624(uint64_t result)
{
  *(v1 + qword_1009CF400) = result;
  if (result)
  {
    *(v1 + qword_1009CE4B8) = 1;
  }

  return result;
}

void sub_10019C64C()
{
  *(v0 + qword_1009778A0) = 1;
  *(sub_100196F38() + 72) = 1;

  sub_10019BE80();
}

void sub_10019C694()
{
  *(v0 + qword_1009778A0) = 0;
  *(sub_100196F38() + 72) = 0;

  sub_10019BE80();
}

uint64_t sub_10019C6D0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_10097CCA0, &unk_1007B70F0);
  __chkstk_darwin(v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_100118188(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1001181EC(v9);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
  sub_100118248(&v9[*(v19 + 48)], v18);
  DiffablePagePresenter.pageUrl.getter();
  v20 = *(v4 + 48);
  sub_100031660(v15, v6, &qword_100982460, &unk_1007B5C90);
  sub_100031660(v18, &v6[v20], &qword_100982460, &unk_1007B5C90);
  v21 = v29;
  v22 = *(v29 + 48);
  if (v22(v6, 1, v2) != 1)
  {
    sub_100031660(v6, v12, &qword_100982460, &unk_1007B5C90);
    if (v22(&v6[v20], 1, v2) != 1)
    {
      v25 = v28;
      (*(v21 + 32))(v28, &v6[v20], v2);
      sub_10019DBC8(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v26 = v21;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v27 = *(v26 + 8);
      v27(v25, v2);
      sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
      sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
      v27(v12, v2);
      sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
      return v23 & 1;
    }

    sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
    sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
    (*(v21 + 8))(v12, v2);
    goto LABEL_8;
  }

  sub_10002B894(v15, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v18, &qword_100982460, &unk_1007B5C90);
  if (v22(&v6[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_10002B894(v6, &unk_10097CCA0, &unk_1007B70F0);
    goto LABEL_9;
  }

  sub_10002B894(v6, &qword_100982460, &unk_1007B5C90);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_10019CB8C(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v34[0]) = 0;
  *&v16[0] = a1;
  *(v16 + 8) = 0u;
  *(&v16[1] + 8) = 0u;
  BYTE8(v16[2]) = 0;
  __asm { FMOV            V0.2D, #10.0 }

  v17 = _Q0;
  v18 = _Q0;
  v19 = 15;
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v11 = a1;
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (a1)
  {
    v23 = xmmword_100975F60;
    v24 = xmmword_100975F70;
    v20 = xmmword_100975F30;
    v21 = xmmword_100975F40;
    v22 = xmmword_100975F50;
    v28 = v16[2];
    v29 = v17;
    v30 = v18;
    v26 = v16[0];
    v27 = v16[1];
    v32[0] = xmmword_100975F30;
    v32[1] = xmmword_100975F40;
    v32[3] = xmmword_100975F60;
    v32[4] = xmmword_100975F70;
    v25 = qword_100975F80;
    v31 = v19;
    v33 = qword_100975F80;
    v32[2] = xmmword_100975F50;
    sub_100031660(&v20, v34, &unk_10097F520, &unk_1007BA430);
    xmmword_100975F50 = v28;
    xmmword_100975F60 = v29;
    xmmword_100975F70 = v30;
    qword_100975F80 = v31;
    xmmword_100975F30 = v26;
    xmmword_100975F40 = v27;
    sub_10002B894(v32, &unk_10097F520, &unk_1007BA430);
    v15[3] = sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
    v15[0] = v11;
    v13 = v11;
    sub_10019DADC(v16, v34);
    ProductDiffablePagePresenter.didSelectShare(sender:)();
    sub_10002B894(v15, &unk_1009711D0, &unk_1007B1A10);
    v34[2] = xmmword_100975F50;
    v34[3] = xmmword_100975F60;
    v34[4] = xmmword_100975F70;
    v34[0] = xmmword_100975F30;
    v34[1] = xmmword_100975F40;
    xmmword_100975F30 = v20;
    xmmword_100975F40 = v21;
    xmmword_100975F50 = v22;
    xmmword_100975F60 = v23;
    v35 = qword_100975F80;
    xmmword_100975F70 = v24;
    qword_100975F80 = v25;
    sub_10002B894(v34, &unk_10097F520, &unk_1007BA430);
    return sub_10019DB38(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10019CE80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10019CB8C(v4);
}

double sub_10019CEE8()
{

  return result;
}

double sub_10019CFA8(uint64_t a1)
{

  return result;
}

uint64_t type metadata accessor for ProductDiffablePageViewController(uint64_t a1)
{
  result = qword_100977910;
  if (!qword_100977910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = type metadata accessor for TimingCurve();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &aBlock[-1] - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v19 = *&Strong[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress], v20 = Strong[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress + 8], Strong, v20 == 1))
  {
    if (a5 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a5)
  {
LABEL_4:
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint1.getter();
    v22 = v21;
    v24 = v23;
    v25 = *(v12 + 8);
    v25(v17, v11);
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint2.getter();
    v27 = v26;
    v29 = v28;
    v25(v14, v11);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a5;
    v31 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = a3;
    aBlock[5] = v30;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = a4;
    v32 = _Block_copy(aBlock);

    v33 = [v31 initWithDuration:v32 controlPoint1:a6 controlPoint2:v22 animations:{v24, v27, v29}];
    _Block_release(v32);
    [v33 startAnimation];
  }
}

void sub_10019D4D0(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_navigationBarAppearanceProgress;
    *v5 = a2;
    *(v5 + 8) = 0;
    sub_1000625B0();
  }
}

void sub_10019D548(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v5)
    {
      v6 = v5;
      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v7 = v4;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        if ([a1 isCancelled])
        {
          sub_10019701C();
          sub_100041DF8();
        }
      }
    }
  }
}

void sub_10019D644(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a1 isCancelled])
    {
      v5 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v5)
      {
        v6 = v5;
        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v7 = v4;
        v8 = static NSObject.== infix(_:_:)();

        if ((v8 & 1) != 0 && !*&v7[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController])
        {
          v9 = v7;
          v10 = [v9 navigationController];
          if (v10)
          {
            v11 = v10;
            v12 = [v10 navigationBar];

            if (v12)
            {

              sub_10019701C();
              v13 = [v9 collectionView];

              if (!v13)
              {
                __break(1u);
                return;
              }

              sub_1000423A0(v13);

              v9 = v13;
            }
          }
        }
      }
    }
  }
}

void sub_10019D7C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10019701C();
    v4 = [v3 collectionView];
    if (v4)
    {
      v5 = v4;
      sub_1000423A0(v4);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10019D8BC()
{
  result = qword_100977F00;
  if (!qword_100977F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F00);
  }

  return result;
}

unint64_t sub_10019D980()
{
  result = qword_100977F60;
  if (!qword_100977F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F60);
  }

  return result;
}

unint64_t sub_10019D9D4()
{
  result = qword_100977F68;
  if (!qword_100977F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977F68);
  }

  return result;
}

uint64_t sub_10019DBC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10019DC68(uint64_t a1, char a2)
{
  v3 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_100988CC0);

    sub_10019FDD0();
    sub_10019FE1C(&qword_100973A60, sub_10019FDD0, &protocol conformance descriptor for UIImageView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  sub_10019FDD0();
  sub_10019FE1C(&qword_100973A60, sub_10019FDD0, &protocol conformance descriptor for UIImageView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  sub_10071C3B8(a1, a2 & 1);
  v9 = *(v3 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v10 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v11 = *(*(v9 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_10019FE1C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v13 = *(*(v9 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v14 = *(*(v9 + v10) + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView];
    v16 = v14;
    v17 = v15;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    v18 = *&v16[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10019DF50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v6 - 8);
  v94 = &v73 - v7;
  v93 = type metadata accessor for OfferButtonSubtitlePosition();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v73 - v11;
  v12 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v12 - 8);
  v96 = &v73 - v13;
  v14 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v14 - 8);
  v97 = &v73 - v15;
  v16 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v73 - v17;
  v19 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v19 - 8);
  v99 = &v73 - v20;
  v21 = sub_10002849C(&qword_100974528, qword_1007E0520);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v24 - 8);
  v89 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v98 = &v73 - v27;
  sub_1007204CC(a1, a2);
  v28 = *(v2 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
  if (ContingentOffer.additionalInfo.getter())
  {
    v29 = Paragraph.text.getter();
  }

  else
  {
    v29 = 0;
  }

  [*(v28 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v29];

  v30 = *(v3 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
  v31 = ContingentOffer.offerLockup.getter();
  v32 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v35 = v98;
  v88 = v33 + 56;
  v34(v98, 1, 1, v32);
  v36 = type metadata accessor for MediaOverlayStyle();
  (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
  v37 = type metadata accessor for OfferStyle();
  (*(*(v37 - 8) + 56))(v99, 1, 1, v37);
  type metadata accessor for InAppPurchaseLockup();
  v38 = swift_dynamicCastClass();
  v39 = *(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView);
  if (v38)
  {
    v82 = v34;
    v83 = v32;
    v86 = v23;
    v40 = v38;
    v41 = v39;
    v42 = type metadata accessor for OfferEnvironment();
    v95 = a2;
    v76 = v42;
    v43 = *(v42 - 8);
    v78 = *(v43 + 56);
    v87 = v43 + 56;
    v78(v18, 1, 1, v42);
    v85 = v10;
    v79 = v31;
    v77 = *(v10 + 56);
    v44 = v97;
    v77(v97, 1, 1, v9);
    v45 = v30;
    v46 = type metadata accessor for OfferTint();
    v47 = *(v46 - 8);
    v74 = *(v47 + 56);
    v75 = v47 + 56;
    v48 = v96;
    v74(v96, 1, 1, v46);
    swift_retain_n();
    v49 = v98;
    sub_1004F3190(v40, v41, v98, v95, 1, 0, v99, v18, v48, v44);
    sub_10002B894(v48, &unk_100973AD0, &unk_1007B17C0);
    v41[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v80 = v41;
    [v41 setNeedsLayout];
    sub_10002B894(v44, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v18, &unk_100970160, &unk_1007BDDE0);
    v84 = v45;
    v50 = *&v45[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v81 = v40;
    v51 = v49;
    v52 = InAppPurchaseLockup.parent.getter();
    v53 = v95;
    v78(v18, 1, 1, v76);
    v54 = v53;
    v87 = v9;
    (v77)(v44, 1, 1);
    v74(v48, 1, 1, v46);
    sub_1004F3190(v52, v50, v51, v53, 0, 0, v99, v18, v48, v44);
    sub_10002B894(v48, &unk_100973AD0, &unk_1007B17C0);
    v50[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v50 setNeedsLayout];

    sub_10002B894(v44, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v18, &unk_100970160, &unk_1007BDDE0);
    v55 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v50[v55] setUserInteractionEnabled:0];
    [v50 setHidden:1];
    v56 = v79;
    v57 = Lockup.icon.getter();
    if (v57)
    {
    }

    sub_100709C80(v57 != 0);
    v58 = *&v50[v55];
    v59 = Lockup.offerDisplayProperties.getter();
    v60 = v56;

    v61 = Lockup.buttonAction.getter();

    v62 = v89;
    v82(v89, 1, 1, v83);
    v63 = v90;
    v64 = v93;
    (*(v90 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v93);
    (*(v63 + 56))(v94, 1, 1, v64);
    sub_10019FE1C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v65 = v92;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v59, v61, 0, v62, v65, v54, 0, 0);

    (*(v85 + 8))(v65, v87);
    sub_10002B894(v62, &unk_100973230, &unk_1007B17E0);
    v66 = v84;
    sub_1001006C8(v60, v84, v54);

    v23 = v86;
    sub_1005076FC(v66, v86);
    v35 = v98;
  }

  else
  {
    [*(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) setHidden:1];
    v67 = *(v30 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView);
    v68 = type metadata accessor for OfferEnvironment();
    (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
    v69 = v97;
    (*(v10 + 56))(v97, 1, 1, v9);
    v70 = type metadata accessor for OfferTint();
    v71 = v96;
    (*(*(v70 - 8) + 56))(v96, 1, 1, v70);
    sub_1004F3190(v31, v67, v35, a2, 0, 0, v99, v18, v71, v69);
    sub_10002B894(v71, &unk_100973AD0, &unk_1007B17C0);
    v67[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v67 setNeedsLayout];
    sub_10002B894(v69, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v18, &unk_100970160, &unk_1007BDDE0);
    sub_1005076FC(v30, v23);
  }

  sub_10002B894(v99, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v23, &qword_100974528, qword_1007E0520);
  return sub_10002B894(v35, &unk_100973230, &unk_1007B17E0);
}

void sub_10019EB50(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v154 = a3;
  v152 = a2;
  v8 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v8 - 8);
  v144 = v125 - v9;
  v143 = type metadata accessor for OfferButtonSubtitlePosition();
  v140 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v148 = *(v11 - 8);
  v149 = v11;
  __chkstk_darwin(v11);
  v142 = v125 - v12;
  v13 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v13 - 8);
  v145 = v125 - v14;
  v15 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v15 - 8);
  v147 = v125 - v16;
  v17 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v17 - 8);
  v146 = v125 - v18;
  v19 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v19 - 8);
  v21 = v125 - v20;
  v22 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v22 - 8);
  v24 = v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v125 - v26;
  v28 = sub_10002849C(&qword_100974528, qword_1007E0520);
  __chkstk_darwin(v28 - 8);
  v30 = v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v125 - v32;
  v34 = type metadata accessor for MediaOverlayStyle();
  v35 = *(v34 - 1);
  __chkstk_darwin(v34);
  v151 = v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v125 - v38;
  type metadata accessor for ContingentOfferDetailPage();
  v40 = a1;
  if (swift_dynamicCastClass())
  {
    v150 = a1;

    v41 = ContingentOfferDetailPage.contingentOffer.getter();
    v43 = v153;
    v42 = v154;
    sub_10019DF50(v41, v154);

    v44 = *(v43 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v45 = ContingentOfferDetailPage.video.getter();
    v46 = ContingentOfferDetailPage.artwork.getter();
    sub_1000CEA30(v45, v46, v42);

    v47 = *(v43 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView);
    v48 = [v44 backgroundColor];
    [v47 setBackgroundColor:v48];

    ContingentOfferDetailPage.mediaOverlayStyle.getter();
    v49 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v50 = v151;
    (*(v35 + 16))(v151, v43 + v49, v34);
    swift_beginAccess();
    (*(v35 + 24))(v43 + v49, v39, v34);
    swift_endAccess();
    sub_100405408(v50);
    v51 = *(v35 + 8);
    v51(v50, v34);
    v51(v39, v34);
    *(v43 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = ContingentOfferDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100407E54(0);
    ContingentOfferDetailPage.contingentOffer.getter();

    v52 = ContingentOffer.offerLockup.getter();
    v53 = a4;
    v54 = a5;
    v55 = v152;
  }

  else
  {
    v135 = v33;
    v56 = v39;
    v57 = v153;
    v137 = v34;
    v134 = v24;
    v136 = v30;
    v139 = v27;
    v138 = v21;
    type metadata accessor for OfferItemDetailPage();
    v58 = swift_dynamicCastClass();
    if (!v58)
    {
      return;
    }

    v59 = v58;
    v60 = *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaContainerView);
    v150 = v40;

    v61 = sub_1000CF378(v59, v154);
    v62 = *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_pageContainerView);
    v63 = [v60 backgroundColor];
    [v62 setBackgroundColor:v63];

    OfferItemDetailPage.mediaOverlayStyle.getter();
    v64 = OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_mediaOverlayStyle;
    swift_beginAccess();
    v65 = v35;
    v66 = *(v35 + 16);
    v67 = v151;
    v68 = v137;
    v66(v151, v57 + v64, v137);
    swift_beginAccess();
    (*(v65 + 24))(v57 + v64, v56, v68);
    swift_endAccess();
    sub_100405408(v67);
    v69 = *(v65 + 8);
    v69(v67, v68);
    v69(v56, v68);
    *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_includeBorderInDarkMode) = OfferItemDetailPage.includeBorderInDarkMode.getter() & 1;
    sub_100407E54(0);
    v70 = *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_learnMoreView);
    if (OfferItemDetailPage.additionalInfo.getter())
    {
      v71 = Paragraph.text.getter();
    }

    else
    {
      v71 = 0;
    }

    v72 = v135;
    [*(v70 + OBJC_IVAR____TtC8AppStore25AppPromotionLearnMoreView_learnMoreLabel) setAttributedText:v71];

    v73 = *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_contentView);
    v74 = OfferItemDetailPage.offerItem.getter();
    OfferItemDetailPage.mediaOverlayStyle.getter();
    v75 = *(v65 + 56);
    v75(v72, 0, 1, v68);
    sub_100721850(v74, v154, v72);

    sub_10002B894(v72, &qword_100974528, qword_1007E0520);
    v76 = *(v73 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
    OfferItemDetailPage.learnMoreTitle.getter();
    v77 = String._bridgeToObjectiveC()();

    [v76 setTitle:v77 forState:0];

    v78 = *(v73 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
    if (OfferItemDetailPage.additionalInfo.getter())
    {
      v79 = Paragraph.text.getter();
    }

    else
    {
      v79 = 0;
    }

    v80 = v148;
    [v78 setAttributedText:v79];

    v81 = OfferItemDetailPage.offerItem.getter();
    v82 = v136;
    v151 = v59;
    OfferItemDetailPage.mediaOverlayStyle.getter();
    v75(v82, 0, 1, v137);
    v83 = v154;
    sub_100721850(v81, v154, v82);
    v84 = *(v57 + OBJC_IVAR____TtC8AppStore26AppPromotionDetailPageView_lockupView);
    v153 = v81;
    v85 = OfferItem.offerLockup.getter();
    v86 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v87 = *(v86 - 8);
    v88 = *(v87 + 56);
    v89 = v139;
    v135 = (v87 + 56);
    v88(v139, 1, 1, v86);
    v90 = type metadata accessor for OfferStyle();
    v91 = v138;
    (*(*(v90 - 8) + 56))(v138, 1, 1, v90);
    type metadata accessor for InAppPurchaseLockup();
    v92 = swift_dynamicCastClass();
    v93 = *&v84[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
    if (v92)
    {
      v132 = v88;
      v133 = v86;
      v137 = v84;
      v94 = v92;
      v95 = v93;
      v128 = type metadata accessor for OfferEnvironment();
      v96 = *(v128 - 8);
      v127 = *(v96 + 56);
      v129 = v96 + 56;
      v97 = v146;
      v127(v146, 1, 1, v128);
      v126 = *(v80 + 56);
      v98 = v147;
      v126(v147, 1, 1, v149);
      v99 = type metadata accessor for OfferTint();
      v100 = *(v99 - 8);
      v125[0] = *(v100 + 56);
      v125[1] = v100 + 56;
      v101 = v145;
      (v125[0])(v145, 1, 1, v99);
      swift_retain_n();
      sub_1004F3190(v94, v95, v89, v154, 1, 0, v138, v97, v101, v98);
      sub_10002B894(v101, &unk_100973AD0, &unk_1007B17C0);
      v95[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      v130 = v95;
      [v95 setNeedsLayout];
      sub_10002B894(v98, &unk_100970150, &unk_1007BDDD0);
      sub_10002B894(v97, &unk_100970160, &unk_1007BDDE0);
      v102 = *&v137[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
      v131 = v94;
      v103 = InAppPurchaseLockup.parent.getter();
      v127(v97, 1, 1, v128);
      v126(v98, 1, 1, v149);
      v104 = v99;
      v91 = v138;
      (v125[0])(v101, 1, 1, v104);
      sub_1004F3190(v103, v102, v89, v154, 0, 0, v91, v97, v101, v98);
      sub_10002B894(v101, &unk_100973AD0, &unk_1007B17C0);
      v102[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      [v102 setNeedsLayout];

      sub_10002B894(v98, &unk_100970150, &unk_1007BDDD0);
      sub_10002B894(v97, &unk_100970160, &unk_1007BDDE0);
      v105 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
      [*&v102[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
      [*&v102[v105] setUserInteractionEnabled:0];
      [v102 setHidden:1];
      v106 = Lockup.icon.getter();
      if (v106)
      {
      }

      sub_100709C80(v106 != 0);
      v107 = *&v102[v105];
      v108 = Lockup.offerDisplayProperties.getter();

      v109 = Lockup.buttonAction.getter();

      v110 = v134;
      v132(v134, 1, 1, v133);
      v111 = v140;
      v112 = v143;
      (*(v140 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
      (*(v111 + 56))(v144, 1, 1, v112);
      sub_10019FE1C(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
      v113 = v142;
      AccessibilityConditional.init(value:axValue:)();
      v114 = v154;
      sub_10064AFA4(v108, v109, 0, v110, v113, v154, 0, 0);

      (*(v148 + 8))(v113, v149);
      sub_10002B894(v110, &unk_100973230, &unk_1007B17E0);
      v115 = v137;
      sub_1001006C8(v85, v137, v114);

      v82 = v136;
      sub_1005076FC(v115, v136);
      v116 = v152;
      v117 = v139;
    }

    else
    {
      [*&v84[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] setHidden:1];
      v118 = *&v84[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
      v119 = type metadata accessor for OfferEnvironment();
      v120 = v146;
      (*(*(v119 - 8) + 56))(v146, 1, 1, v119);
      v121 = v147;
      (*(v80 + 56))(v147, 1, 1, v149);
      v122 = type metadata accessor for OfferTint();
      v123 = v145;
      (*(*(v122 - 8) + 56))(v145, 1, 1, v122);
      sub_1004F3190(v85, v118, v139, v83, 0, 0, v91, v120, v123, v121);
      v124 = v123;
      v117 = v139;
      sub_10002B894(v124, &unk_100973AD0, &unk_1007B17C0);
      v118[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_10070AB34();
      [v118 setNeedsLayout];
      sub_10002B894(v121, &unk_100970150, &unk_1007BDDD0);
      sub_10002B894(v120, &unk_100970160, &unk_1007BDDE0);
      sub_1005076FC(v84, v82);
      v116 = v152;
    }

    sub_10002B894(v91, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v117, &unk_100973230, &unk_1007B17E0);
    sub_10002B894(v82, &qword_100974528, qword_1007E0520);
    OfferItemDetailPage.offerItem.getter();

    v52 = OfferItem.offerLockup.getter();
    v53 = a4;
    v54 = a5;
    v55 = v116;
  }

  sub_100504CB0(v52, v55, v53, v54);
}

unint64_t sub_10019FDD0()
{
  result = qword_100973120;
  if (!qword_100973120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100973120);
  }

  return result;
}

uint64_t sub_10019FE1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10019FE64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_objectGraph] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  sub_1001A0AA4(&qword_100978038, v8, type metadata accessor for PersonalizationTransparencyPageViewController, &unk_1007BCFD8);
  v9 = v7;
  dispatch thunk of PersonalizationTransparencyPagePresenter.view.setter();

  return v9;
}

void sub_1001A0034(uint64_t a1)
{
  v2 = sub_1001A0344(a1);
  v3 = [v1 childViewControllers];
  sub_100065AF0();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_11:

    v8 = 0;
    goto LABEL_12;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  type metadata accessor for GenericAccountPageViewController();
  v7 = swift_dynamicCastClass();
  v8 = v7;
  if (v7)
  {
    [v7 willMoveToParentViewController:0];
    v9 = [v8 view];
    if (!v9)
    {
LABEL_28:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 removeFromSuperview];

    [v8 removeFromParentViewController];
  }

  else
  {
  }

LABEL_12:
  v11 = v2;
  [v1 addChildViewController:v11];
  v12 = [v11 view];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v1 view];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame:{v17, v19, v21, v23}];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v24;
  v26 = [v11 view];

  if (!v26)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v25 addSubview:v26];

  [v11 didMoveToParentViewController:v1];
  v27 = [v1 navigationItem];
  GenericAccountPage.title.getter();
  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v27 setTitle:v29];
}

id sub_1001A0344(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_objectGraph);
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for GenericAccountPagePresenter();
  swift_allocObject();

  v7 = GenericAccountPagePresenter.init(objectGraph:url:page:)();
  v8 = sub_1001A0AA4(&qword_100978028, 255, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

  v9 = sub_10054A47C(v5, v7, v8, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100805770);

  v10 = type metadata accessor for GenericAccountPageViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController] = 0;
  *&v11[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter] = v7;
  *&v11[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph] = v9;
  v13.receiver = v11;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "initWithStyle:", 2);
}

void sub_1001A0518()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  v3 = [v0 childViewControllers];
  sub_100065AF0();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v3) = Array.isNotEmpty.getter();

  if (v3)
  {
    v4 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
    v5 = *&v0[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v6 = *&v0[v4];
    *&v0[v4] = 0;

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v9 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v10 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v11 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
    v12 = *&v1[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v1[v11];
    *&v1[v11] = v10;
    v14 = v10;

    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

id sub_1001A0758()
{
  v1 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A0820(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for JUContentUnavailableViewController();
  sub_1001A0AA4(&qword_100978030, 255, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v3 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v4 = OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore45PersonalizationTransparencyPageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v6 = *&v2[v4];
  *&v2[v4] = v3;
  v9 = v3;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001A0AA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void SmallGameCenterPlayerLayout.Metrics.avatarInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t SmallGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 48));

  return sub_100005A38(a1, v1 + 48);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 88));

  return sub_100005A38(a1, v1 + 88);
}

uint64_t SmallGameCenterPlayerLayout.Metrics.displayNameBottomSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 128));

  return sub_100005A38(a1, v1 + 128);
}

double SmallGameCenterPlayerLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1001A1A3C(a1, v3, a2, a3);
}

uint64_t SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v106 = a1;
  v102 = a2;
  v101 = type metadata accessor for LayoutRect();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v96 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v66 - v15;
  v98 = type metadata accessor for FlankedHorizontalLayout();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v109 = *(v105 - 8);
  v17 = v109;
  __chkstk_darwin(v105);
  v88 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v108 = *(v104 - 8);
  __chkstk_darwin(v104);
  v85 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v107 = *(v75 - 8);
  v20 = v107;
  __chkstk_darwin(v75);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v22;
  v90 = type metadata accessor for _VerticalFlowLayout();
  v91 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(v6 + 21, v6[24]);
  v123.origin.x = a3;
  v123.origin.y = a4;
  v123.size.width = a5;
  v123.size.height = a6;
  CGRectGetMinX(v123);
  v124.origin.x = a3;
  v124.origin.y = a4;
  v124.size.width = a5;
  v124.size.height = a6;
  CGRectGetMinY(v124);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002849C(&qword_10096FE38, &qword_1007B14D0);
  v24 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v86 = *(v24 + 72);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  v87 = v26;
  *(v26 + 16) = xmmword_1007B1890;
  v69 = v26 + v25;
  v103 = v7;
  v27 = v7[34];
  v28 = v7[35];
  v29 = sub_10002A400(v7 + 31, v27);
  v121 = v27;
  v122 = *(v28 + 8);
  v30 = sub_1000056E0(&v120);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  v82 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v31 = *(v20 + 104);
  v83 = v20 + 104;
  v84 = v31;
  v31(v22);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v32 = v108;
  v33 = *(v108 + 104);
  v79 = v108 + 104;
  v80 = v33;
  v34 = v85;
  v33(v85);
  v118 = &type metadata for Double;
  v119 = &protocol witness table for Double;
  v117 = 0;
  v78 = sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
  v77 = *(v17 + 72);
  v35 = v109;
  v36 = swift_allocObject();
  v76 = xmmword_1007B10D0;
  *(v36 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v114 = v36;
  v73 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v72 = sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
  v74 = sub_1000ED83C();
  v37 = v88;
  v38 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v39 = v103;
  v40 = v67;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v41 = *(v35 + 8);
  v109 = v35 + 8;
  v71 = v41;
  v41(v37, v38);
  v42 = *(v32 + 8);
  v108 = v32 + 8;
  v70 = v42;
  v43 = v34;
  v44 = v104;
  v42(v34, v104);
  v45 = *(v107 + 8);
  v107 += 8;
  v68 = v45;
  v46 = v75;
  v45(v40, v75);
  sub_100036530(&v117);
  sub_100007000(&v120);
  v47 = v39;
  v48 = v39[29];
  v49 = v47[30];
  v50 = sub_10002A400(v47 + 26, v48);
  v121 = v48;
  v122 = *(v49 + 8);
  v51 = sub_1000056E0(&v120);
  (*(*(v48 - 8) + 16))(v51, v50, v48);
  v84(v40, v82, v46);
  v80(v43, v81, v44);
  v119 = &protocol witness table for Double;
  v118 = &type metadata for Double;
  v117 = 0;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v114 = v52;
  v53 = v105;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v54 = v103;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v71(v37, v53);
  v70(v43, v44);
  v68(v40, v46);
  sub_100036530(&v117);
  sub_100007000(&v120);
  v55 = v89;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v56 = v90;
  v121 = v90;
  v122 = sub_1001A25E0(&qword_100975328, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v57 = sub_1000056E0(&v120);
  v58 = v91;
  (*(v91 + 16))(v57, v55, v56);
  sub_10002C0AC((v54 + 21), &v117);
  v59 = v54[5];
  v115 = &type metadata for CGFloat;
  v116 = &protocol witness table for CGFloat;
  v114 = v59;
  v60 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v61 = *(v93 + 104);
  v62 = v95;
  v61(v92, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v95);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110[3] = type metadata accessor for ZeroDimension();
  v110[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v110);
  static ZeroDimension.zero.getter();
  v61(v96, v60, v62);
  v63 = v94;
  FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
  v64 = v99;
  FlankedHorizontalLayout.placeChildren(relativeTo:in:)();
  (*(v100 + 8))(v64, v101);
  LayoutRect.init(representing:)();
  (*(v97 + 8))(v63, v98);
  return (*(v58 + 8))(v55, v56);
}

double sub_1001A1A3C(uint64_t a1, void *a2, double a3, double a4)
{
  v74 = a1;
  v76 = type metadata accessor for FloatingPointRoundingRule();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v80 = *(v78 - 8);
  v7 = v80;
  __chkstk_darwin(v78);
  v67 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v81 = *(v77 - 8);
  __chkstk_darwin(v77);
  v60 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v79 = *(v56 - 8);
  v10 = v79;
  __chkstk_darwin(v56);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v12;
  v71 = type metadata accessor for _VerticalFlowLayout();
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10096FE38, &qword_1007B14D0);
  v14 = *(type metadata accessor for _VerticalFlowLayout.Child() - 8);
  v68 = *(v14 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v69 = v16;
  *(v16 + 16) = xmmword_1007B1890;
  v49 = v16 + v15;
  v17 = a2[34];
  v18 = a2[35];
  v19 = sub_10002A400(a2 + 31, v17);
  v87 = v17;
  v88 = *(v18 + 8);
  v20 = sub_1000056E0(v86);
  (*(*(v17 - 8) + 16))(v20, v19, v17);
  v64 = enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:);
  v21 = *(v10 + 104);
  v65 = v10 + 104;
  v66 = v21;
  v21(v12);
  v63 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:);
  v22 = *(v81 + 104);
  v61 = v81 + 104;
  v62 = v22;
  v23 = v60;
  v24 = v77;
  v22(v60);
  v84 = &type metadata for Double;
  v85 = &protocol witness table for Double;
  v83 = 0;
  v59 = sub_10002849C(&unk_10097E8A0, &unk_1007B5940);
  v58 = *(v7 + 72);
  v25 = v80;
  v52 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v26 = swift_allocObject();
  v57 = xmmword_1007B10D0;
  *(v26 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v82 = v26;
  v54 = sub_1001A25E0(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v53 = sub_10002849C(&unk_10097E8B0, &unk_1007BD010);
  v55 = sub_1000ED83C();
  v27 = v67;
  v28 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v48;
  v30 = v23;
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v31 = *(v25 + 8);
  v80 = v25 + 8;
  v51 = v31;
  v32 = v27;
  v31(v27, v28);
  v33 = *(v81 + 8);
  v81 += 8;
  v50 = v33;
  v33(v30, v24);
  v47 = *(v79 + 8);
  v79 += 8;
  v34 = v29;
  v35 = v56;
  v47(v29, v56);
  sub_100036530(&v83);
  sub_100007000(v86);
  v37 = a2[29];
  v36 = a2[30];
  v38 = sub_10002A400(a2 + 26, v37);
  v87 = v37;
  v88 = *(v36 + 8);
  v39 = sub_1000056E0(v86);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  v66(v34, v64, v35);
  v40 = v77;
  v62(v30, v63, v77);
  v85 = &protocol witness table for Double;
  v84 = &type metadata for Double;
  v83 = 0;
  v41 = swift_allocObject();
  *(v41 + 16) = v57;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v82 = v41;
  v42 = v78;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v51(v32, v42);
  v50(v30, v40);
  v47(v34, v35);
  sub_100036530(&v83);
  sub_100007000(v86);
  v43 = v70;
  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_1001A25E0(&qword_100978040, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v44 = v71;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2 + 16, a2[19]);
  v45 = v73;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v75 + 8))(v45, v76);
  (*(v72 + 8))(v43, v44);
  return a3;
}

uint64_t sub_1001A2400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A2448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
      *(result + 288) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001A24E4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}