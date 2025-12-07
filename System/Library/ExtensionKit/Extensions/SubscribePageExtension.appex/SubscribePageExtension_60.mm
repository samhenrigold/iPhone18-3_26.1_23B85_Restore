uint64_t sub_1006BE290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006BE2D8(Swift::String a1)
{
  if (a1._countAndFlagsBits)
  {
    if (a1._object)
    {
      a1._object = 0x80000001007681D0;
      a1._countAndFlagsBits = 0xD000000000000017;
      return sub_10074CF34(a1);
    }

    a1._object = 0x80000001007681D0;
    v2._countAndFlagsBits = 0xD000000000000050;
    v2._object = 0x80000001007681F0;
    a1._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    a1._countAndFlagsBits = 0xD00000000000001ALL;
    if (a1._object)
    {
      a1._object = 0x8000000100772020;
      return sub_10074CF34(a1);
    }

    a1._object = 0x8000000100772020;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  return sub_1007458B4(a1, v2);
}

unint64_t sub_1006BE354(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

void sub_1006BE364()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_titleLabel;
  sub_100745C84();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  sub_100754644();
  __break(1u);
}

void sub_1006BE438(uint64_t a1, char a2, int a3, id a4, double a5, char a6, int a7, uint64_t a8)
{
  v15 = a7;
  v16 = [a4 traitCollection];
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredContentSizeCategory];
    v19 = sub_100753924();

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = sub_1006BA340(a1);
  v21 = sub_1006BA60C(a1);
  [v20 size];
  [v21 size];

LABEL_6:
  sub_1006BC684(a2 & 1, a1, a6 & 1, a7, a4, a8, a5);
}

void sub_1006BE5B8(uint64_t a1, char a2, int a3, id a4, double a5, char a6, int a7, uint64_t a8)
{
  v15 = a7;
  v16 = [a4 traitCollection];
  if (v15 == 1)
  {
    v17 = v16;
    v18 = [v16 preferredContentSizeCategory];
    v19 = sub_100753924();

    if (v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v20 = sub_1006BA340(a1);
  v21 = sub_1006BA60C(a1);
  [v20 size];
  [v21 size];

LABEL_6:
  sub_1006BC684(a2 & 1, a1, a6 & 1, a7, a4, a8, a5);
}

id sub_1006BE75C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = 0;

  sub_1002E8FB4();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_1002E8FB4();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell(uint64_t a1)
{
  result = qword_100945A20;
  if (!qword_100945A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BEB0C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1006BEBB4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = sub_1007469A4();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_10000D198();
  v9 = sub_100753E04();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

id sub_1006BEDA0(uint64_t a1)
{
  swift_getWitnessTable();
  v1 = LinkPresentationProvider.deinit();

  return v1;
}

uint64_t sub_1006BEDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1006BEE58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1006BEF20(uint64_t a1, uint64_t a2)
{
  sub_100744704();
  sub_1006BF09C(&qword_1009366A0, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
  sub_1007468B4();
  if (v3)
  {
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    sub_1001C11D4(v3, v3);
  }

  return result;
}

uint64_t sub_1006BF004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006BF09C(&qword_100941338, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_1007D5978);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006BF09C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006BF0E4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100945A30);
  sub_10000D0FC(v0, qword_100945A30);
  sub_100750504();
  return result;
}

uint64_t sub_1006BF138()
{
  v0 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
  sub_100039C50(v0, qword_100945A48);
  sub_10000D0FC(v0, qword_100945A48);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for UIRectEdge(0);
  return sub_100743474();
}

void sub_1006BF1DC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView] = 0;
  v6 = &v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] = 0;
  v7 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] = v7;
  type metadata accessor for TransitioningPresentedContainerView();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29.receiver = v2;
  v29.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v29, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v9 = objc_allocWithZone(UITapGestureRecognizer);
  v10 = v8;
  v11 = [v9 initWithTarget:v10 action:"didTapOverlayView:"];
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissTapGestureRecognizer] = v11;
  v13 = v11;

  if (!v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView;
  v15 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
  [v15 addGestureRecognizer:v13];

  v16 = [objc_allocWithZone(UIScreenEdgePanGestureRecognizer) initWithTarget:v10 action:"edgePanDidChange:"];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer;
  v18 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer] = v16;
  v19 = v16;

  if (!v19)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (qword_100921D20 != -1)
  {
    swift_once();
  }

  v20 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
  sub_10000D0FC(v20, qword_100945A48);
  v21 = v10;
  sub_100743464();

  [v19 setEdges:{v28, v10}];
  v22 = *&v10[v17];
  if (!v22)
  {
    goto LABEL_10;
  }

  v23 = v21;
  v24 = v22;
  v25 = [v23 traitCollection];
  v26 = [v25 horizontalSizeClass];

  [v24 setEnabled:v26 != 2];
  if (*&v10[v17])
  {
    [*&v10[v14] addGestureRecognizer:?];
    v27 = [v23 traitCollection];

    sub_1006BF554(v27);
    [*&v23[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] setClipsToBounds:0];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1006BF554(uint64_t a1)
{
  v2 = v1;
  if (sub_1007537E4())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v4 || (v5 = [objc_opt_self() effectWithStyle:4], v6 = objc_msgSend(objc_allocWithZone(UIVisualEffectView), "initWithEffect:", v5), v5, sub_1006BF7B4(v6), (v4 = *(v2 + v3)) != 0))
    {
      v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
      v8 = v4;
      [v7 bounds];
      [v8 setFrame:{0.0, 0.0}];

      v9 = *(v2 + v3);
      if (v9)
      {
        [v9 setHidden:0];
      }
    }

    v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v15 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor:v15];
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
    v12 = [objc_opt_self() blackColor];
    v13 = [v12 colorWithAlphaComponent:0.4];

    [v11 setBackgroundColor:v13];
    v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
    if (v14)
    {

      [v14 setHidden:1];
    }
  }
}

void sub_1006BF7B4(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v1 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(v1 + v3) = a1;
  v6 = a1;

  if (a1)
  {
    [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView) addSubview:v6];
  }
}

void sub_1006BF8F0()
{
  v1 = v0;
  v2 = [v0 containerView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 2)
  {
    v6 = [v1 traitCollection];
    sub_100753804();

    [v3 bounds];
    CGRectGetWidth(v19);
    if (qword_100921D18 != -1)
    {
      swift_once();
    }

    v7 = sub_1007504F4();
    sub_10000D0FC(v7, qword_100945A30);
    sub_1007504C4();
    [v3 bounds];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    CGRectGetMidX(v20);
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectGetMidY(v21);

    return;
  }

  v12 = [v1 presentingViewController];
  sub_1004C4774();

  v13 = [v1 presentingViewController];
  v14 = [v13 view];

  if (!v14)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v14 safeAreaInsets];

  v15 = [v1 presentingViewController];
  v16 = [v15 view];

  if (!v16)
  {
LABEL_15:
    __break(1u);
    return;
  }

  [v16 safeAreaInsets];

  [v3 bounds];
  if (qword_100921648 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10000D0FC(v17, qword_100982010);
  sub_1007504C4();
  v18 = [v1 traitCollection];
  if (sub_100753804())
  {
    sub_1007537D4();
  }

  [v3 bounds];
  CGRectGetMinY(v22);
  [v3 bounds];
  CGRectGetMinX(v23);
}

void sub_1006BFCA8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "containerViewWillLayoutSubviews");
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v1 bounds];
    [v3 setFrame:?];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v4)
    {
      v5 = v4;
      [v2 bounds];
      [v5 setFrame:{0.0, 0.0}];
    }

    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
    sub_1006BF8F0();
    [v6 setFrame:?];
  }
}

void sub_1006BFDE4(uint64_t a1, void *a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  v5 = [v2 containerView];
  if (v5)
  {
    v6 = v5;
    sub_1006BF554(a1);
    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    *(v7 + 24) = v6;
    v11[4] = sub_1006C1C10;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1003ED3AC;
    v11[3] = &unk_100880E28;
    v8 = _Block_copy(v11);
    v9 = v2;
    v10 = v6;

    [a2 animateAlongsideTransition:v8 completion:0];
    _Block_release(v8);
  }
}

void sub_1006BFFA4(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] + OBJC_IVAR____TtC22SubscribePageExtension35TransitioningPresentedContainerView_hidesInsertedSubviews) = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1006C1BAC;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1003ED3AC;
  v10[3] = &unk_100880DD8;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_1006C0158()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v18 = v1;
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView];
    [v6 setFrame:?];
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_blurOverlayView];
    if (v7)
    {
      [v7 setFrame:{0.0, 0.0, v3, v5}];
    }

    [v18 addSubview:v6];
    v8 = [v0 presentedViewController];
    v9 = [v8 view];

    if (v9)
    {
      [v9 setAutoresizingMask:18];
      v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView];
      [v10 bounds];
      [v9 setFrame:?];
      [v10 addSubview:v9];
      v11 = [v0 presentedViewController];
      v12 = [v11 contentScrollView];

      sub_1006C1AA0(&selRef_removeTarget_action_, &selRef__removeScrollViewScrollObserver_);
      swift_unknownObjectWeakAssign();
      sub_1006C1AA0(&selRef_addTarget_action_, &selRef__addScrollViewScrollObserver_);
    }

    v13 = [v0 presentedViewController];
    v14 = [v13 transitionCoordinator];

    [v6 setAlpha:0.0];
    if (v14)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v0;
      aBlock[4] = sub_1006C1A98;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_100880D88;
      v16 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v17 = v0;

      [v14 animateAlongsideTransition:v16 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1006C0470(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:1.0];
  v3 = [a2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = [a2 presentedViewController];
    v6 = [v5 view];

    if (v6)
    {
      [v6 _setCornerRadius:0.0];
    }
  }
}

void sub_1006C05B8(char a1)
{
  if ((a1 & 1) == 0)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] removeFromSuperview];
    v2 = [v1 presentedViewController];
    v4 = [v2 view];

    if (v4)
    {
      [v4 setClipsToBounds:0];
      v3 = [v4 layer];
      [v3 setMaskedCorners:15];

      [v4 _setCornerRadius:0.0];
    }
  }
}

double sub_1006C0708()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v7[4] = sub_1006C1A78;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1003ED3AC;
    v7[3] = &unk_100880D38;
    v5 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v6 = v0;

    [v2 animateAlongsideTransition:v5 completion:0];
    swift_unknownObjectRelease();
    _Block_release(v5);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1006C0834(uint64_t a1, char *a2)
{
  [*&a2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView] setAlpha:0.0];
  v3 = [a2 presentedViewController];
  v4 = [v3 view];

  if (v4)
  {
    v5 = [v4 layer];

    [v5 setMaskedCorners:15];
  }

  v6 = [a2 presentedViewController];
  [v6 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_1006C0A30(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal;
  swift_beginAccess();
  sub_1006C18E8(a1, v1 + v3);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1006C1958(v1 + v3, v8);
    v6 = v9 == 0;
    sub_1006C19C8(v8);
    [v5 setShowsVerticalScrollIndicator:v6];
  }

  return sub_1006C19C8(a1);
}

void sub_1006C0AE8(void *a1)
{
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
  v3 = CGRectGetWidth(v31) * 0.28;
  [a1 translationInView:0];
  v5 = fabs(v4);
  if (v5 >= v3)
  {
    v5 = v3;
  }

  v6 = v5 / v3;
  v7 = [a1 state];
  if (v7 > 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 != 3)
      {
        return;
      }

      if (v6 >= 1.0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
    {
      return;
    }

    v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
    swift_beginAccess();
    if (*(v11 + 24))
    {
      sub_10000C824(v11, &v28);
      v12 = *(&v29 + 1);
      v13 = v30;
      sub_10000C888(&v28, *(&v29 + 1));
      (v13[4])(v12, v13);
      sub_10000C620(&v28);
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
LABEL_25:
    sub_1006C0A30(&v28);
    return;
  }

  if (v7 == 1)
  {
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1007A5CF0;
    v15 = [v1 presentedViewController];
    v16 = [v15 view];

    if (!v16)
    {
      __break(1u);
      return;
    }

    *(v14 + 32) = v16;
    v17 = [v1 presentedViewController];
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    v19 = _swiftEmptyArrayStorage;
    if (v18 && v17)
    {
      v20 = v18;
      v21 = v1;
      ObjectType = swift_getObjectType();
      v23 = (*(v20 + 16))(ObjectType, v20);
      if (v23)
      {
        v24 = v23;
        v19 = swift_allocObject();
        *(v19 + 1) = xmmword_1007A5CF0;
        v19[4] = v24;
      }

      v1 = v21;
    }

    v25 = [v1 traitCollection];
    *(&v29 + 1) = &type metadata for ScaleDownInteractiveDismissal;
    v30 = &off_1008674B0;
    v26 = swift_allocObject();
    *&v28 = v26;
    *(v26 + 16) = v14;
    *(v26 + 24) = v19;
    *(v26 + 32) = v25;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0x3FECCCCCCCCCCCCDLL;
    goto LABEL_25;
  }

  if (v7 != 2)
  {
    return;
  }

  if (v6 >= 1.0)
  {
LABEL_26:
    v27 = [v1 presentedViewController];
    [v27 dismissViewControllerAnimated:1 completion:0];

    v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
    return;
  }

  v8 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
  swift_beginAccess();
  if (*(v8 + 24))
  {
    sub_10000C824(v8, &v28);
    v9 = *(&v29 + 1);
    v10 = v30;
    sub_10000C888(&v28, *(&v29 + 1));
    (v10[2])(v9, v10, v6);
    sub_10000C620(&v28);
  }
}

void sub_1006C0F40(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive;
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_isScrollDismissActive] == 1)
    {
      [*&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_presentedContainerView] frame];
      v5 = CGRectGetHeight(v42) * 0.18;
      [a1 translationInView:0];
      v7 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      if (v7 >= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v6 - *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY];
      }

      v9 = 0.0;
      if (v5 <= 0.0)
      {
        v9 = v5;
      }

      if (v7 < 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v10 / v5;
      v12 = [a1 state];
      if (v12 > 2)
      {
        if ((v12 - 4) >= 2)
        {
          if (v12 != 3)
          {
            goto LABEL_36;
          }

          if (v11 >= 1.0)
          {
LABEL_39:
            v36 = [v1 presentedViewController];
            [v36 dismissViewControllerAnimated:1 completion:0];

            v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted] = 1;
            return;
          }
        }
      }

      else if (v12)
      {
        if (v12 == 2)
        {
          if (v11 < 1.0)
          {
            v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
            swift_beginAccess();
            if (*(v13 + 24))
            {
              sub_10000C824(v13, &v38);
              v14 = *(&v39 + 1);
              v15 = v40;
              sub_10000C888(&v38, *(&v39 + 1));
              (v15[2])(v14, v15, v11);

              sub_10000C620(&v38);
              return;
            }

            goto LABEL_38;
          }

          goto LABEL_39;
        }

LABEL_36:

LABEL_38:

        return;
      }

      if (v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissCompleted])
      {
        goto LABEL_36;
      }

      v33 = &v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_interactiveDismissal];
      swift_beginAccess();
      if (*(v33 + 24))
      {
        sub_10000C824(v33, &v38);
        v34 = *(&v39 + 1);
        v35 = v40;
        sub_10000C888(&v38, *(&v39 + 1));
        (v35[4])(v34, v35);
        sub_10000C620(&v38);
      }

      v40 = 0;
      v38 = 0u;
      v39 = 0u;
      sub_1006C0A30(&v38);

      v1[v4] = 0;
    }

    else
    {
      if ([a1 state] != 1 && objc_msgSend(a1, "state") != 2)
      {
        goto LABEL_36;
      }

      [v37 contentOffset];
      v17 = v16;
      [v37 adjustedContentInset];
      if (v17 + v18 > 0.0)
      {
        goto LABEL_36;
      }

      [a1 velocityInView:v37];
      if (v19 <= 0.0)
      {
        goto LABEL_36;
      }

      [v37 adjustedContentInset];
      [v37 contentOffset];
      [v37 setContentOffset:?];
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1007A5CF0;
      v21 = [v1 presentedViewController];
      v22 = [v21 view];

      if (v22)
      {
        *(v20 + 32) = v22;
        v23 = [v1 presentedViewController];
        swift_getObjectType();
        v24 = swift_conformsToProtocol2();
        v25 = _swiftEmptyArrayStorage;
        if (v24 && v23)
        {
          v26 = v24;
          v27 = v1;
          ObjectType = swift_getObjectType();
          v29 = (*(v26 + 16))(ObjectType, v26);
          if (v29)
          {
            v30 = v29;
            v25 = swift_allocObject();
            *(v25 + 1) = xmmword_1007A5CF0;
            v25[4] = v30;
          }

          v1 = v27;
        }

        *(&v39 + 1) = &type metadata for PullDownInteractiveDismissal;
        v40 = &off_1008674D8;
        *&v38 = v20;
        *(&v38 + 1) = v25;
        *&v39 = 0x3FB1EB851EB851ECLL;
        sub_1006C0A30(&v38);
        [a1 translationInView:0];
        v32 = v31;

        *&v1[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_scrollDismissInitialTranslationY] = v32;
        v1[v4] = 1;
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1006C1594(void *a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || v5 != [a1 layoutDirection])
  {
    v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
    if (!v6)
    {
      __break(1u);
      goto LABEL_13;
    }

    v7 = qword_100921D20;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_10000C518(&qword_1009381D8, qword_1007C1308);
    sub_10000D0FC(v9, qword_100945A48);
    v10 = v2;
    sub_100743464();

    [v8 setEdges:{v18, v2}];
  }

  v11 = [v2 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (a1 && v12 == [a1 horizontalSizeClass])
  {
    goto LABEL_11;
  }

  v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_dismissScreenEdgePanGestureRecognizer];
  if (v13)
  {
    v14 = v13;
    v15 = [v2 traitCollection];
    v16 = [v15 horizontalSizeClass];

    [v14 setEnabled:v16 != 2];
LABEL_11:
    v17 = [v2 containerView];
    [v17 setNeedsLayout];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1006C18E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0, &qword_1007C1300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C1958(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009381D0, &qword_1007C1300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C19C8(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009381D0, &qword_1007C1300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006C1A30()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1006C1A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1006C1AA0(SEL *a1, SEL *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong panGestureRecognizer];

    [v7 *a1];
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 *a2];
  }
}

uint64_t sub_1006C1B74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006C1BD0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1006C1C10()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension44AppPromotionDetailPagePresentationController_overlayView);
  [*(v0 + 24) bounds];

  return [v1 setFrame:?];
}

uint64_t sub_1006C1C84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10074A304();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for FlowPresentationContext.infer(_:), v3, v5);
  sub_1006C2330(&qword_100925248, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
  sub_100753274();
  sub_100753274();
  if (v10[1] == v10[0])
  {
    (*(v4 + 8))(v7, v3);

    return sub_100618398(a1);
  }

  v8 = sub_100754754();
  (*(v4 + 8))(v7, v3);

  if (v8)
  {
    return sub_100618398(a1);
  }

  return (*(v4 + 16))(a1, v1, v3);
}

uint64_t sub_1006C1EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10074A304();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1007493D4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1006C1FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1007493D4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for FlowPresentationHints(uint64_t a1)
{
  result = qword_100945B30;
  if (!qword_100945B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006C20EC(uint64_t a1)
{
  result = sub_10074A304();
  if (v2 <= 0x3F)
  {
    result = sub_1007493D4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006C2174()
{
  sub_10074A304();
  sub_1006C2330(&qword_100925248, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
  sub_100753274();
  sub_100753274();
  if (v6 == v4 && v7 == v5)
  {
  }

  else
  {
    v1 = sub_100754754();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  type metadata accessor for FlowPresentationHints(0);
  sub_1007493D4();
  sub_1006C2330(&qword_100945B68, &type metadata accessor for FlowAnimationBehavior, &protocol conformance descriptor for FlowAnimationBehavior);
  sub_100753274();
  sub_100753274();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_100754754();
  }

  return v2 & 1;
}

uint64_t sub_1006C2330(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1006C2378(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_1006C2740()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell(uint64_t a1)
{
  result = qword_100945B98;
  if (!qword_100945B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C28A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000CF7B0;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_1006C29A0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

uint64_t sub_1006C29E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006C2A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1006C2A3C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = a5;
  v6 = sub_100741E54();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10074F314();
  v9 = *(v37 - 8);
  __chkstk_darwin(v37);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_10074EF24();
  if (v18)
  {
  }

  v38 = v14;
  v33 = v9;
  v19 = sub_10074EF24();
  if (!v19)
  {
    sub_100741D44();
    v20 = sub_10074EF24();

    if (!v20)
    {
      goto LABEL_11;
    }

    if (a4)
    {
      goto LABEL_5;
    }

LABEL_10:

    sub_10074F374();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1007441F4();

    sub_100416858(&v40);
    goto LABEL_11;
  }

  v20 = v19;
  if (!a4)
  {
    goto LABEL_10;
  }

LABEL_5:
  v36 = v8;
  v21 = *(a4 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);

  [v21 contentMode];
  sub_10074F374();
  v22 = *(a4 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
  sub_10074F324();
  sub_100743364();
  [v22 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_10000D198();
    sub_100753E34();
  }

  sub_100743224();
  sub_1007433C4();
  sub_10004D658();
  sub_100744204();

  v8 = v36;
LABEL_11:
  sub_100741D44();
  v23 = sub_10074EF24();

  if (!v23)
  {
LABEL_18:

    return;
  }

  if (!v18)
  {

    goto LABEL_18;
  }

  v32 = v20;
  sub_100741DD4();
  sub_10074F324();
  v24 = v33;
  v25 = v37;
  (*(v33 + 104))(v11, enum case for Artwork.Style.roundedRect(_:), v37);
  v26 = v11;
  sub_10074F2D4();
  v27 = *(v24 + 8);
  v27(v26, v25);
  v27(v17, v25);
  sub_100741DE4();
  sub_100741DE4();
  sub_10074F2C4();
  if (a4)
  {
    v28 = a4;
    v29 = v27;
    v36 = v8;
    v30 = v28;
    [*(v28 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView) contentMode];
    sub_10074F374();
    v31 = *(v30 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView);
    sub_10074F324();
    sub_100743364();
    [v31 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();
    sub_1007433C4();
    sub_10004D658();
    sub_100744204();

    v29(v38, v37);
    (*(v34 + 8))(v36, v35);
  }

  else
  {
    sub_10074F374();
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    sub_1007441F4();

    sub_100416858(&v40);
    v27(v38, v25);
    (*(v34 + 8))(v8, v35);
  }
}

void *sub_1006C301C(double a1, double a2)
{
  v2 = sub_10074F314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  __chkstk_darwin(v9);
  v19 = &v18 - v10;
  v20 = sub_100741E54();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  if (sub_10074EF24())
  {
    sub_10074F374();

    sub_100753284();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v13 = v21;
  }

  sub_100741D44();
  v14 = sub_10074EF24();

  if (v14)
  {
    sub_100741DD4();
    sub_10074F324();
    (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
    v15 = v19;
    sub_10074F2D4();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v8, v2);
    sub_100741DE4();
    sub_100741DE4();
    sub_10074F2C4();
    sub_10074F374();

    sub_100753284();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v16(v15, v2);
    (*(v18 + 8))(v12, v20);
    return v21;
  }

  return v13;
}

id sub_1006C33A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v34 = sub_100752AC4();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v32 = a1;
  v33 = &v31 - v19;
  v20 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label];
  v21 = sub_10064D7B8();
  [v20 setAttributedText:v21];

  v22 = v6[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn];
  v6[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn] = a5;
  if (v22 != (a5 & 1))
  {
    sub_1006C3C2C();
  }

  v39 = &type metadata for String;
  v36 = a3;
  v37 = a4;
  memset(v35, 0, sizeof(v35));

  sub_100752AB4();
  sub_1000277BC(v35);
  sub_1000277BC(&v36);
  if (a2)
  {
    v23 = &type metadata for String;
    v24 = a2;
    v25 = v32;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v38 = 0;
  }

  v36 = v25;
  v37 = v24;
  v39 = v23;

  sub_100752AA4();
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v34;
  v26(v27, v34);
  sub_1000277BC(&v36);
  v39 = &type metadata for Bool;
  LOBYTE(v36) = a5 & 1;
  v29 = v33;
  sub_100752AA4();
  v26(v17, v28);
  sub_1000277BC(&v36);
  sub_100753C74();
  v26(v29, v28);
  return [v6 setNeedsLayout];
}

char *sub_1006C3688(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100751534();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10074AB44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label;
  if (qword_100921D28 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  v21 = sub_10000D0FC(v20, qword_100982E80);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v18, v21, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  (*(v13 + 104))(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v19] = sub_100745C74();
  v24 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage;
  *&v5[v24] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn] = 0;
  v25 = [objc_allocWithZone(UIGlassEffect) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_glassEffect] = v25;
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_pill] = v26;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_pill;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_pill];
  v30 = v27;
  v31 = v29;
  sub_100751524();
  sub_100753D04();

  v32 = [v30 contentView];
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = [v30 contentView];
  [v33 addSubview:*&v27[v28]];

  v34 = [*&v27[v28] contentView];
  [v34 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label]];

  v35 = [*&v27[v28] contentView];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage;
  [v35 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage]];

  sub_1006C3C2C();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007A5A00;
  *(v37 + 32) = sub_100751624();
  *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v38 = v30;
  sub_100753D44();
  swift_unknownObjectRelease();

  v39 = *&v30[v36];
  v40 = [v38 traitCollection];

  v41 = sub_1006C48E0();
  [v39 setImage:v41];

  sub_100016C60(0, &qword_1009239F8, UITraitCollection_ptr);
  sub_100753834();
  *(swift_allocObject() + 16) = ObjectType;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v38;
}

void sub_1006C3C2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn] == 1)
  {
    v13 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v13 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_glassEffect];
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v6 = v13;
      v7 = sub_100753FC4();

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    [v3 setTintColor:v13];
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_pill] setEffect:v3];
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v1[v2] == 1)
  {
    v8 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v8 = sub_100753DD4();
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label];
  v10 = v8;
  [v9 setTextColor:v10];
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage];
  v12 = 0.0;
  if (v1[v2])
  {
    v12 = 1.0;
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage] setAlpha:v12];
  [v11 setTintColor:v10];

  [v1 setNeedsDisplay];
  [v1 setNeedsLayout];
}

id sub_1006C3E5C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage];
  v3 = [a1 traitCollection];
  v4 = sub_1006C48E0();

  [v2 setImage:v4];

  return [a1 setNeedsLayout];
}

id sub_1006C3F34()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074CD14();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v9);
  v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label];
  v12 = [v53 attributedText];
  LODWORD(v52) = v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn];
  v13 = [v1 contentView];
  [v13 bounds];

  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v14 = qword_100921D28;
  v51 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  sub_10000D0FC(v15, qword_100982E80);
  sub_100753C04();
  v16 = sub_10074F3F4();
  v55 = v16;
  v56 = sub_1001FC0C4();
  v17 = sub_10000D134(v54);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_10074FC74();
  sub_10000C620(v54);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v8 + 8))(v11, v7);
  sub_10000C888(v54, v55);
  sub_100750414();
  sub_100753BC4();
  (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v3);
  sub_100753B84();
  v19 = v18;
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = [v1 traitCollection];
  v23 = sub_1006C48E0();

  if (LODWORD(v52))
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v19 + v26;
  sub_10000C620(v54);

  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_pill];
  v29 = [v1 contentView];
  [v29 frame];

  v30 = v27;
  v31 = fmax(v21, 40.0);
  sub_100753B24();
  [v28 setFrame:?];
  v52 = v30;
  v32 = sub_1006C4AD0(0.0);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v53;
  [v53 sizeThatFits:{v35, v37}];
  v51 = v40;
  v42 = v41;
  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v30;
  v59.size.height = v31;
  v44 = floor((CGRectGetHeight(v59) - v42) * 0.5);
  v45 = [v1 contentView];
  [v45 frame];

  v46 = *&v51;
  sub_100753B24();
  [v39 setFrame:?];
  v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage];
  v48 = v52;
  [v47 sizeThatFits:{v52, v31}];
  v60.origin.x = MinX;
  v60.origin.y = v44;
  v60.size.width = v46;
  v60.size.height = v42;
  CGRectGetMaxX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v48;
  v61.size.height = v31;
  CGRectGetHeight(v61);
  v49 = [v1 contentView];
  [v49 frame];

  sub_100753B24();
  return [v47 setFrame:?];
}

void sub_1006C4608(void *a1)
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation);
    if (v4)
    {
      v8 = a1;
      v5 = v4;
      v6 = [v1 layer];
      v7 = sub_100753064();
      [v6 addAnimation:v5 forKey:v7];
    }
  }
}

uint64_t sub_1006C47F4()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100982E80);
  v1 = sub_10000D0FC(v0, qword_100982E80);
  if (qword_100921370 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981788);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1006C48E0()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.xmark(_:), v0, v2);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921378 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  sub_10000D0FC(v5, qword_1009817A0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = sub_100753C14();

  v8 = [objc_opt_self() configurationWithFont:v7 scale:-1];
  v9 = sub_100743AE4();

  (*(v1 + 8))(v4, v0);
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

void sub_1006C4AF4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_label;
  if (qword_100921D28 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100982E80);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_closeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21GuidedSearchTokenCell_isOn) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1006C4DAC()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  sub_1006C5344(&qword_100940F80, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B68CC);
  sub_1006C5344(&qword_10092FE68, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B67A8);
  sub_1006C5344(&qword_100940F88, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B6884);
  return v0;
}

uint64_t sub_1006C4E78()
{
  sub_10074FBB4();
  sub_1006C5344(&qword_100926C60, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_1007468B4();
  if (!v2)
  {
    return 0;
  }

  sub_10074FB64();
  v0 = sub_1007451F4();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell(0);
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell(0);
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell(0);
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  }

  return result;
}

uint64_t sub_1006C4F84()
{
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_1006C5344(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_100753274();
  sub_100753274();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = sub_100754754();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_1006C4E78();
  if (result)
  {
    v15 = result;
    sub_1006C5344(&qword_100940F80, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B68CC);
    sub_1006C5344(&qword_10092FE68, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B67A8);
    sub_1006C5344(&qword_100940F88, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007B6884);
    return v15;
  }

  return result;
}

uint64_t sub_1006C5344(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C538C()
{
  sub_10000C518(&unk_100939A90, qword_1007B3AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A79C0;
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
  v1 = sub_100413A3C(inited);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0, &unk_1007C3D30);
  result = swift_arrayDestroy();
  qword_100945C90 = v1;
  return result;
}

uint64_t sub_1006C55A8(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10000C518(&qword_100945D10, qword_1007D5CA0);
  sub_100039C50(v5, a4);
  sub_10000D0FC(v5, a4);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for CGPoint(0);
  return sub_100743474();
}

char *sub_1006C5648(double a1, double a2, double a3, double a4)
{
  v9 = sub_100743B64();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = enum case for TitleEffect.none(_:);
  v15 = *(v10 + 104);
  (v15)(&v4[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_effect], enum case for TitleEffect.none(_:), v9, v11);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer;
  *&v4[v16] = [objc_allocWithZone(CAGradientLayer) init];
  v17 = type metadata accessor for ArcadeHeaderView(0);
  v33.receiver = v4;
  v33.super_class = v17;
  v31 = v17;
  v18 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  v22 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer;
  [*&v20[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer] setAnchorPoint:{0.0, 0.0}];
  v20[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 0;
  [v20 setNeedsLayout];
  v23 = qword_100921D30;
  v24 = *&v20[v22];
  if (v23 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  isa = sub_100752F34().super.isa;
  [v24 setActions:isa];

  v26 = [v20 layer];
  [v26 addSublayer:*&v20[v22]];

  v27 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  [*&v20[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] removeFromSuperview];
  [*&v20[v27] setAdjustsFontForContentSizeCategory:1];
  v15(v13, v14, v9);
  sub_1006C6108(v13, 0, 0, 1, 0);
  (*(v10 + 8))(v13, v9);
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A5A00;
  *(v28 + 32) = sub_1007519E4();
  *(v28 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v32[3] = v31;
  v32[0] = v20;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v32);
  return v20;
}

uint64_t sub_1006C5A28@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_100643D58(v1 + v3, a1);
}

uint64_t sub_1006C5A84(uint64_t a1)
{
  v3 = sub_100743B64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v19[-v11];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_100643D58(&v1[v16], v15);
  sub_100643D58(a1, v12);
  sub_100643D58(&v1[v16], v9);
  swift_beginAccess();
  sub_10010AB60(v12, &v1[v16]);
  swift_endAccess();
  sub_100101150(v9);
  sub_10008F7DC(v9);
  sub_10008F7DC(v12);
  sub_100643D58(&v1[v16], v12);
  LOBYTE(v9) = sub_10010A41C(v12, v15);
  sub_10008F7DC(v12);
  if ((v9 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v4 + 16))(v6, &v1[v17], v3);
    sub_1006C6108(v6, 0, 0, 1, 0);
    (*(v4 + 8))(v6, v3);
    [v1 setNeedsLayout];
  }

  sub_10008F7DC(a1);
  return sub_10008F7DC(v15);
}

void sub_1006C5D00()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ArcadeHeaderView(0);
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006C6FA0;
  *(v3 + 24) = v2;
  v7[4] = sub_100045E0C;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10011B528;
  v7[3] = &unk_100880FA8;
  v4 = _Block_copy(v7);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1006C5E7C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer);
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
  [v2 frame];
  [v1 setFrame:?];
  v3 = [v2 layer];
  [v1 setMask:v3];

  v4 = [v2 layer];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];
}

void sub_1006C5FB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100743B64();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100101E80(a1, a2);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_effect;
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v10, v5);
    v11 = v9;
    v12 = sub_1006C6DBC(v8);
    (*(v6 + 8))(v8, v5);
    [v11 setTintColor:v12];
  }
}

void sub_1006C6108(uint64_t a1, int a2, uint64_t a3, char a4, void *a5)
{
  v11 = sub_100743B64();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v82 = a2;
  if (a2)
  {
    v19 = objc_opt_self();
    [v19 begin];
    v20 = *&a3;
    if (a4)
    {
      v20 = 0.3;
    }

    [v19 setAnimationDuration:v20];
    if (a5)
    {
      v21 = a5;
    }

    else
    {
      v21 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    }

    v22 = a5;
    [v19 setAnimationTimingFunction:v21];
  }

  v23 = *(v12 + 16);
  v23(v18, a1, v11, v16);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_effect;
  swift_beginAccess();
  (*(v12 + 40))(&v5[v24], v18, v11);
  swift_endAccess();
  (v23)(v14, a1, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == enum case for TitleEffect.color(_:))
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v27 = *(v14 + 3);

    v28 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer];
    sub_10000C518(&unk_1009259C0, &unk_1007A9270);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007A6580;
    v30 = [v26 CGColor];
    type metadata accessor for CGColor(0);
    v32 = v31;
    *(v29 + 56) = v31;
    *(v29 + 32) = v30;
    v33 = [v26 CGColor];
    *(v29 + 88) = v32;
    *(v29 + 64) = v33;
    isa = sub_100753294().super.isa;

    [v28 setColors:isa];

    v35 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
    v36 = [objc_opt_self() blackColor];
    [v35 setTextColor:v36];

    if (v27)
    {
      v37 = sub_100753064();
    }

    else
    {
      v37 = 0;
    }

    [v28 setCompositingFilter:v37];
  }

  else
  {
    if (v25 == enum case for TitleEffect.verticalGradient(_:))
    {
      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v40 = *(v14 + 2);
      v81 = *(v14 + 3);
      v41 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000C518(&unk_1009259C0, &unk_1007A9270);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1007A6580;
      v44 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v46 = v45;
      *(v43 + 56) = v45;
      *(v43 + 32) = v44;
      v47 = [v38 CGColor];
      *(v43 + 88) = v46;
      *(v43 + 64) = v47;
      v48 = sub_100753294().super.isa;

      [v42 setColors:v48];

      [v42 setStartPoint:{0.5, 0.0}];
      [v42 setEndPoint:{0.5, 1.0}];
      v49 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
      v50 = [objc_opt_self() blackColor];
      [v49 setTextColor:v50];

      if (v41)
      {
        v51 = sub_100753064();
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      if (v25 != enum case for TitleEffect.horizontalGradient(_:))
      {
        v81 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer];
        sub_10000C518(&unk_1009259C0, &unk_1007A9270);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1007A6580;
        v67 = objc_opt_self();
        v68 = [v67 blackColor];
        v69 = [v68 CGColor];

        type metadata accessor for CGColor(0);
        v71 = v70;
        *(v66 + 56) = v70;
        *(v66 + 32) = v69;
        v72 = [v67 blackColor];
        v73 = [v72 CGColor];

        *(v66 + 88) = v71;
        *(v66 + 64) = v73;
        v74 = sub_100753294().super.isa;

        v75 = v81;
        [v81 setColors:v74];

        v76 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
        v77 = [v67 blackColor];
        [v76 setTextColor:v77];

        [v75 setCompositingFilter:0];
        (*(v12 + 8))(v14, v11);
        goto LABEL_29;
      }

      (*(v12 + 96))(v14, v11);
      v39 = *v14;
      v38 = *(v14 + 1);
      v52 = *(v14 + 2);
      v81 = *(v14 + 3);
      v53 = *(v14 + 4);

      v42 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer];
      sub_10000C518(&unk_1009259C0, &unk_1007A9270);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_1007A6580;
      v55 = [v39 CGColor];
      type metadata accessor for CGColor(0);
      v57 = v56;
      *(v54 + 56) = v56;
      *(v54 + 32) = v55;
      v58 = [v38 CGColor];
      *(v54 + 88) = v57;
      *(v54 + 64) = v58;
      v59 = sub_100753294().super.isa;

      [v42 setColors:v59];

      if (qword_100921D38 != -1)
      {
        swift_once();
      }

      v60 = sub_10000C518(&qword_100945D10, qword_1007D5CA0);
      sub_10000D0FC(v60, qword_100945C98);
      v83 = v5;
      v61 = v5;
      v62 = v5;
      sub_100743464();

      [v42 setStartPoint:{v84, v85}];
      if (qword_100921D40 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v60, qword_100945CB0);
      v83 = v62;
      v63 = v62;
      sub_100743464();

      [v42 setEndPoint:{v84, v85}];
      v64 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
      v65 = [objc_opt_self() blackColor];
      [v64 setTextColor:v65];

      if (v53)
      {
        v51 = sub_100753064();
      }

      else
      {
        v51 = 0;
      }

      v5 = v61;
    }

    [v42 setCompositingFilter:v51];
  }

  swift_unknownObjectRelease();
LABEL_29:
  v78 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v78)
  {
    v79 = v78;
    v80 = sub_1006C6DBC(a1);
    [v79 setTintColor:v80];
  }

  if (v82)
  {
    [objc_opt_self() commit];
  }
}

void sub_1006C6B98()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_effect;
  v2 = sub_100743B64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeHeaderView_gradientLayer);
}

id sub_1006C6C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeHeaderView(uint64_t a1)
{
  result = qword_100945D00;
  if (!qword_100945D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006C6D18(uint64_t a1)
{
  result = sub_100743B64();
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

uint64_t sub_1006C6DBC(uint64_t a1)
{
  v2 = sub_100743B64();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TitleEffect.color(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *(v6 + 1);
  }

  else
  {
    if (v7 != enum case for TitleEffect.verticalGradient(_:) && v7 != enum case for TitleEffect.horizontalGradient(_:))
    {
      sub_10000D198();
      v8 = sub_100753EF4();
      (*(v3 + 8))(v6, v2);
      return v8;
    }

    (*(v3 + 96))(v6, v2);
    v9 = *(v6 + 1);
    v8 = *(v6 + 2);
  }

  return v8;
}

uint64_t sub_1006C6F68()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1006C6FB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1006C7188(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_10097ED58);
    if (v18 && *&v4[qword_10097ED58])
    {
      v19 = *&v4[qword_10097ED58 + 8];
      v46 = *(v16 + qword_10097ED58 + 8);
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_10097ED40;
    v25 = *&v4[qword_10097ED40];
    v26 = [*&v17[qword_10097ED40] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_10097ED48;
    v29 = *&v4[qword_10097ED48];
    v30 = [*&v17[qword_10097ED48] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

char *sub_1006C75D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  *&v5[qword_100982E98] = 0;
  *&v5[qword_100982EA0] = 0;
  v14 = qword_100982EA8;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PaletteBackgroundView();
  *&v5[qword_100982EB0] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v16 = qword_10097ED48;
  v17 = *&v15[qword_10097ED48];
  v18 = v15;
  [v17 setNumberOfLines:2];
  v19 = qword_100921390;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_1009817E8);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v13, v22, v21);
  (*(v23 + 56))(v13, 0, 1, v21);
  sub_100745BA4();

  v24 = qword_100982EA8;
  [*&v18[qword_100982EA8] setClipsToBounds:1];
  [*&v18[v24] _setContinuousCornerRadius:20.0];
  v25 = *&v18[v24];
  v26 = [v18 backgroundView];
  [v26 addSubview:v25];

  v27 = qword_100982EB0;
  [*&v18[qword_100982EB0] _setCornerRadius:1 continuous:3 maskedCorners:20.0];
  v28 = *&v18[v27];
  v29 = [v18 backgroundView];
  [v29 addSubview:v28];

  return v18;
}

id sub_1006C790C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v22.receiver = *&v1[qword_100982EA8];
    receiver = v22.receiver;
    v22.super_class = type metadata accessor for ArtworkGrid();
    objc_msgSendSuper2(&v22, "setFrame:", v7, v9, v11, v13);
    sub_100602594();
    [receiver setNeedsLayout];
    [receiver layoutIfNeeded];
  }

  v15 = *&v1[qword_100982EB0];
  [v1 bounds];
  CGRectGetWidth(v23);
  [*&v1[qword_10097ED48] frame];
  CGRectGetMaxY(v24);
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v16 = sub_100750B04();
  sub_10000D0FC(v16, qword_1009820B0);
  v17 = [v1 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5CF0;
  *(v18 + 32) = v17;
  v19 = v17;
  v20 = sub_100751044();
  sub_100750544();

  [v15 frame];
  [v15 setFrame:?];
  [v15 layoutIfNeeded];
  return [v2 setAnimationsEnabled:v3];
}

void sub_1006C7BA4(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_1006C7188(a1, a2, a3 & 1);
  v7 = swift_dynamicCastClass();
  if (v7 && (a3 & 1) == 0)
  {
    v8 = v7;
    v9 = qword_100982EA8;
    v10 = *(v7 + qword_100982EA8);
    v11 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages);
    v12 = *(v3 + qword_100982EA8);
    v12[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType] = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType);
    v19 = a1;
    sub_100602594();
    [v12 setNeedsLayout];
    *&v12[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v11;
    sub_100602764();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v9);
        v15 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkImages;
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v13 >= *(v16 + 16))
        {
          break;
        }

        v17 = *(v16 + 8 * v13 + 32);
        if (v17)
        {
          v18 = v17;
          sub_100602190(v18, v13);
        }

        if (v11 == ++v13)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

double sub_1006C7D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = sub_100745334();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006EB5F4(v8);
  sub_10074FB64();
  sub_100747C44();
  if (!swift_dynamicCastClass())
  {

    return result;
  }

  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v11 = *(v5 + qword_100982EA8);
  v24[2] = *&v28[0];
  v25 = v11;
  sub_100747C24();
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == enum case for ArtworkGridType.small(_:))
  {
    goto LABEL_3;
  }

  if (v12 == enum case for ArtworkGridType.large(_:))
  {
    v13 = 1;
  }

  else if (v12 == enum case for ArtworkGridType.extraLarge(_:))
  {
    v13 = 2;
  }

  else
  {
    if (v12 != enum case for ArtworkGridType.mixed(_:))
    {
LABEL_28:
      v23 = *(v7 + 8);
      v7 += 8;
      v23(v10, v6);
LABEL_3:
      v13 = 0;
      goto LABEL_13;
    }

    v13 = 3;
  }

LABEL_13:
  v24[1] = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
  v15 = v25;
  v25[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType] = v13;
  sub_100602594();
  [v15 setNeedsLayout];
  v16 = sub_100747C34();
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

  *&v25[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v17;
  sub_100602764();
  v18 = sub_100747C34();
  v19 = v18;
  if (v18 >> 62)
  {
    v6 = sub_100754664();
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_17:
      v10 = 0;
      v26 = v19 & 0xFFFFFFFFFFFFFF8;
      v27 = v19 & 0xC000000000000001;
      v24[0] = v6;
      do
      {
        if (v27)
        {
          sub_100754574();
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          if (v10 >= *(v26 + 16))
          {
            __break(1u);
LABEL_30:
            v17 = sub_100754664();
            goto LABEL_15;
          }

          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_10074EF64())
        {
          v21 = v25;
          sub_10074F374();
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v7 = swift_allocObject();
          *(v7 + 16) = v21;
          *(v7 + 24) = v10;
          v22 = v21;
          sub_1007441F4();

          v6 = v24[0];

          sub_100416858(v28);
        }

        else
        {
        }

        ++v10;
      }

      while (v20 != v6);
    }
  }

  return result;
}

void sub_1006C8198(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_100603160();
}

void sub_1006C81F8()
{
  sub_1006C842C();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = *(v0 + qword_100982EA8);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [*(v0 + qword_100982EA8) _setContinuousCornerRadius:v3];
  [*(v0 + qword_100982EB0) _setCornerRadius:1 continuous:3 maskedCorners:v3];
  v4 = *(v0 + v1);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_isLazyLayoutEnabled) = v4 ^ 1;
  if (v4 == v5)
  {
    sub_1006032B4();
  }
}

void sub_1006C82B8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_100982EB0);
}

void sub_1006C8318(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_100982EB0);
}

uint64_t type metadata accessor for GridTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_100945D78;
  if (!qword_100945D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C842C()
{
  sub_1005F6EC0();
  v1 = (v0 + qword_10097ED58);
  if (*(v0 + qword_10097ED58))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*v1)
  {
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = v1[1];
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

uint64_t sub_1006C8594()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006C85CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100751BF4();
  *a1 = result;
  return result;
}

double sub_1006C8624@<D0>(void (*a1)(__n128)@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v5 = sub_10074FEF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_1009330F0, &qword_1007BA498);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_10000C518(&unk_100933330, &qword_1007BA490);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - v16;
  a1(v15);
  v18 = sub_1006C92B4(&unk_100933340, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
  sub_100751F64();
  (*(v6 + 8))(v8, v5);
  v19 = sub_100752764();
  v35 = v5;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100751F34();
  (*(v10 + 8))(v12, v9);
  v35 = v9;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v31;
  sub_100751F44();
  (*(v32 + 8))(v17, v22);
  sub_1007442C4();
  sub_100752D34();
  v23 = v35;
  sub_1006C92B4(&qword_100934088, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v24 = sub_100751A84();
  v25 = (v21 + *(sub_10000C518(&qword_1009330E8, &qword_1007BA488) + 36));
  *v25 = v24;
  v25[1] = v23;
  KeyPath = swift_getKeyPath();
  v27 = *(v34 + OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview);
  v28 = (v21 + *(sub_10000C518(&unk_100933310, &qword_1007BA480) + 36));
  *v28 = KeyPath;
  v28[1] = v27;

  return result;
}

double sub_1006C8A00@<D0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_10000C518(&qword_10092AE00, &qword_1007AF480);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10000C518(&qword_10092ADF8, &qword_1007AF478);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10000C518(&qword_10092ADF0, &qword_1007AF470);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_10002DDC8(&qword_10092AE08, &qword_10092AE00, &qword_1007AF480, &protocol conformance descriptor for IDView<A, B>);
  sub_100751F64();
  sub_10000C8CC(v7, &qword_10092AE00, &qword_1007AF480);
  v16 = sub_100752764();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100751F34();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  sub_100751F44();
  (*(v29 + 8))(v14, v18);
  sub_1007442C4();
  sub_100752D34();
  v20 = v33;
  sub_1006C92B4(&qword_100934088, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v21 = sub_100751A84();
  v22 = (v19 + *(sub_10000C518(&qword_10092ADE8, &qword_1007AF468) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_10000C518(&qword_10092ADD0, &qword_1007AF460) + 36));
  *v25 = KeyPath;
  v25[1] = v24;

  return result;
}

double sub_1006C8DB0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_10032A640(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_1006C8ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100933300, qword_1007BA6F0);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10000C518(&qword_100927E40, &unk_1007BA470);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  v26 = sub_10074FF24();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BC64();
  sub_10074BC24();
  sub_10074BC54();
  sub_10074BC44();
  sub_10074BC34();
  sub_10074BC14();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_10032B79C;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_10000C518(&unk_100933310, &qword_1007BA480);
  sub_10032B7BC();
  sub_100751DF4();
  sub_100751E54();
  v42[3] = v4;
  v42[4] = sub_10002DDC8(&qword_1009330F8, &unk_100933300, qword_1007BA6F0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10000D134(v42);
  sub_100751DE4();
  (*(v27 + 8))(v6, v4);
  sub_1007538E4();
  sub_10000C8CC(v9, &qword_100927E40, &unk_1007BA470);
  sub_10000C8CC(v12, &qword_100927E40, &unk_1007BA470);
  sub_10000C8CC(v15, &qword_100927E40, &unk_1007BA470);
  sub_10000C8CC(v18, &qword_100927E40, &unk_1007BA470);
  sub_10000C8CC(v21, &qword_100927E40, &unk_1007BA470);
  return (*(v25 + 8))(v23, v26);
}

uint64_t sub_1006C92B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C92FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100751BF4();
  *a1 = result;
  return result;
}

uint64_t sub_1006C9364(uint64_t a1, __n128 a2)
{
  v4 = sub_100752CD4();
  v5 = __chkstk_darwin(v4);
  v7 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  (*(v8 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  objc_allocWithZone(sub_1007491E4());
  v9 = v7;
  return sub_1007491F4();
}

void sub_1006C9458()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  sub_100750F94();
  v3 = objc_allocWithZone(sub_100750FC4());
  v4 = sub_100750FB4();
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A5CF0;
  *(v6 + 32) = v4;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v7 = v4;
  isa = sub_100753294().super.isa;

  [v5 setViewControllers:isa];
}

uint64_t sub_1006C9594(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - v4;
  v6 = sub_10000C518(&qword_100946378, &unk_1007D5E80);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  sub_10068BB04(a1, v7);
  sub_10000C518(&qword_100938E30, &qword_1007C2720);
  sub_100752314();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007A6580;
  v11 = sub_1007487F4();
  v12 = sub_1007487A4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = objc_allocWithZone(v11);
  v14 = sub_1007487B4();
  v18 = v14;
  sub_100752304();

  sub_1006C9878();
  sub_100752304();
  (*(v3 + 8))(v5, v2);
  v18 = v10;
  sub_10000C518(&qword_100944738, &qword_1007D3BA0);
  sub_10002DDC8(&qword_100944740, &qword_100944738, &qword_1007D3BA0, &protocol conformance descriptor for [A]);
  v15 = sub_100752734();

  return v15;
}

uint64_t sub_1006C9878()
{
  v1 = sub_10000C518(&qword_100946380, &qword_1007D5E90);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - v3;
  sub_100752764();
  sub_1007527F4();
  sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1006CB354();
  sub_1007527D4();
  sub_1006CB3A8();
  sub_1007527D4();
  sub_1006CB3FC();
  sub_1007527D4();
  sub_1006CB450();
  sub_1007527D4();
  sub_1006CB4A4();
  sub_1007527D4();
  sub_10074E2B4();
  sub_10002DDC8(&qword_1009463B0, &qword_100946380, &qword_1007D5E90, &protocol conformance descriptor for ArcadeLaunchAttributionActionImplementation<A>);
  sub_1007527D4();
  (*(v2 + 8))(v4, v1);
  sub_1006CB4F8();
  sub_1007527D4();
  sub_1006CB54C();
  sub_1007527D4();
  sub_1006CB5A0();
  sub_1007527D4();
  sub_1006CB5F4();
  sub_1007527D4();
  sub_1006CB648();
  sub_1007527D4();
  sub_1006CB69C();
  sub_1007527D4();
  sub_1006CB6F0();
  sub_1007527D4();
  sub_1006CB744();
  sub_1007527D4();
  sub_1006CB798();
  sub_1007527D4();
  sub_10042D614();
  sub_1007527D4();
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  swift_unknownObjectUnownedInit();
  sub_1006CB7EC();
  v6 = v5;
  sub_1007527D4();
  sub_1006CB840(&v10);
  sub_10000C518(&qword_100946408, &qword_1007D5E98);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007AB1A0;
  *(v7 + 56) = &type metadata for ArticlePresentingFlowActionLogic;
  *(v7 + 64) = &off_100865228;
  *(v7 + 96) = &type metadata for ArcadeWelcomeFlowActionLogic;
  *(v7 + 104) = &off_100865AB8;
  *(v7 + 136) = &type metadata for NavigationControllerFlowActionLogic;
  *(v7 + 144) = &off_10086C650;
  *(v7 + 176) = &type metadata for TabBarControllerFlowActionLogic;
  *(v7 + 184) = &off_10086E9E8;
  *(v7 + 216) = &type metadata for RootFlowActionLogic;
  *(v7 + 224) = &off_100869D18;
  type metadata accessor for FlowActionImplementation();
  v8 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  *(v8 + 24) = v7;
  v10 = v8;
  sub_1006CB894();
  sub_1007527D4();

  swift_unknownObjectUnownedInit();

  sub_1006CB8EC();
  sub_1007527D4();
  sub_1006CB940(&v10);
  sub_1006CB994();
  sub_1007527D4();
  sub_1006CB9E8();
  sub_1007527D4();
  sub_1006CBA3C();
  sub_1007527D4();
  sub_1006CBA90();
  sub_1007527D4();
  sub_1006CBAE4();
  sub_1007527D4();
  swift_unknownObjectUnownedInit();

  sub_1006CBB38();
  sub_1007527D4();
  sub_1006CBB8C(&v10);
  sub_1006CBBE0();
  sub_1007527D4();
  sub_1006CBC34();
  sub_1007527D4();
  sub_1006CBC88();
  sub_1007527D4();
  sub_1006CBCDC();
  sub_1007527D4();
  sub_1006CBD30();
  sub_1007527D4();
  sub_1006CBD84();
  sub_1007527D4();
  v11 = 0;
  swift_unknownObjectWeakInit();
  v11 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006CBDD8();
  sub_1007527D4();
  sub_1006CBE2C(&v10);
  sub_1006CBE80();
  sub_1007527D4();
  v11 = 0;
  swift_unknownObjectWeakInit();
  v11 = 0;
  swift_unknownObjectWeakAssign();
  sub_1006CBED4();
  sub_1007527D4();
  sub_1006CBF28(&v10);
  sub_1006CBF7C();
  sub_1007527D4();
  sub_1006CBFD0();
  sub_1007527D4();
  sub_1006CC024();
  sub_1007527D4();
  sub_1006CC078();
  sub_1007527D4();
  sub_100612AEC();
  sub_1007527D4();
  swift_unknownObjectUnownedInit();

  sub_1006CC0CC();
  sub_1007527D4();
  sub_1006CC120(&v10);
  sub_1006CC174();
  sub_1007527D4();
  sub_1006CC1C8();
  sub_1007527D4();
  sub_1006CC21C();
  sub_1007527D4();
  swift_unknownObjectUnownedInit();

  sub_1006CC270();
  sub_1007527D4();
  sub_1006CC2C4(&v10);
  v11 = [objc_allocWithZone(type metadata accessor for SignInActionImplementation.SignInDelegate()) init];
  swift_unknownObjectUnownedInit();

  sub_1006CC318();
  sub_1007527D4();
  sub_1006CC36C(&v10);
  sub_1006CC3C0();
  sub_1007527D4();
  sub_1006CC414();
  sub_1007527D4();
  sub_1006CC468();
  sub_1007527D4();
  sub_1006CC4BC();
  sub_1007527D4();
  swift_unknownObjectUnownedInit();

  sub_1006CC510();
  sub_1007527D4();
  return sub_1006CC564(&v10);
}

uint64_t sub_1006CA098(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007527A4();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100744C64();
  v61 = *(v6 - 8);
  v62 = v6;
  __chkstk_darwin(v6);
  v60 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v8 - 8);
  v68 = v58 - v9;
  v67 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v67);
  v72 = (v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v11 - 8);
  v13 = v58 - v12;
  v14 = sub_100741264();
  v15 = *(v14 - 8);
  v73 = v14;
  v74 = v15;
  __chkstk_darwin(v14);
  v71 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100946378, &unk_1007D5E80);
  __chkstk_darwin(v17 - 8);
  v19 = (v58 - v18);
  v20 = sub_10074BC04();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074B294();
  v24 = sub_100752764();
  sub_100752D34();
  v25 = *&v75[0];
  *v23 = 1;
  (*(v21 + 104))(v23, enum case for EntitlementRefeshCondition.ifCacheIsExpiredOrSubscribed(_:), v20);
  v70 = v25;
  sub_10074B284();

  (*(v21 + 8))(v23, v20);
  sub_100016C60(0, &unk_10093D880, AMSURLSession_ptr);
  sub_100752D34();
  v26 = *&v75[0];
  sub_1007487F4();
  v63 = v24;
  sub_100752D34();
  v27 = *&v75[0];
  v28 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  *v19 = v28;
  v29 = enum case for URLProtocolDelegate.DialogStyle.alert(_:);
  v30 = sub_1007487A4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v19, v29, v30);
  (*(v31 + 56))(v19, 0, 1, v30);
  v32 = v28;
  sub_1007487C4();
  v69 = v27;
  [v26 setDelegate:v27];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_objectGraph) = a1;

    swift_unknownObjectRelease();
  }

  sub_1006CAB10(v13);
  v35 = v73;
  v34 = v74;
  if ((*(v74 + 48))(v13, 1, v73) == 1)
  {

    return sub_10000C8CC(v13, &unk_100923970, &qword_1007A6B90);
  }

  else
  {
    v59 = v26;
    v58[1] = v2;
    v37 = v71;
    (*(v34 + 32))(v71, v13, v35);
    v38 = sub_10000C518(&qword_100938EA0, &unk_1007C2750);
    v39 = *(v38 + 48);
    v40 = *(v38 + 64);
    v41 = v72;
    (*(v34 + 16))(v72, v37, v35);
    (*(v34 + 56))(v41, 0, 1, v35);
    *(v41 + v39) = 0;
    *(v41 + v40) = 1;
    swift_storeEnumTagMultiPayload();
    v42 = [v32 traitCollection];
    v43 = sub_100743FE4();
    v44 = v68;
    (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    v45 = sub_100470520(v41, v42, 0, 0, v44, v75, a1, 1);

    sub_10000C8CC(v75, &unk_100925760, &unk_1007A8F70);
    sub_10000C8CC(v44, &qword_10092C1F0, &unk_1007A8F60);
    if (v45)
    {
      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1007A5CF0;
      *(v46 + 32) = v45;
      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v47 = v45;
      isa = sub_100753294().super.isa;

      [v32 setViewControllers:isa];

      v49 = swift_unknownObjectWeakLoadStrong();
      v50 = v74;
      v51 = v64;
      if (v49)
      {
        type metadata accessor for ArcadeSubscribeViewController();
        v52 = swift_dynamicCastClass();
        if (v52)
        {
          *(v52 + OBJC_IVAR____TtC22SubscribePageExtension29ArcadeSubscribeViewController_delegate + 8) = &off_10087C778;
          swift_unknownObjectWeakAssign();
        }

        v54 = v60;
        v53 = v61;
        v55 = v62;
        (*(v61 + 104))(v60, enum case for BootstrapPhase.initialBootstrap(_:), v62);
        sub_10074D144();
        (*(v53 + 8))(v54, v55);
        swift_unknownObjectRelease();
      }

      sub_100744AC4();
      sub_1007526E4();
      v56 = v66;
      sub_100752D34();
      sub_100744974();
      sub_100742314();

      (*(v65 + 8))(v51, v56);
      sub_1000AC948(v72);
      return (*(v50 + 8))(v71, v73);
    }

    else
    {
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v57 = sub_100752E44();
      sub_10000D0FC(v57, qword_100983318);
      sub_10000C518(&qword_100923930, &qword_1007A6B60);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752D04();

      sub_1000AC948(v72);
      return (*(v74 + 8))(v71, v35);
    }
  }
}

uint64_t sub_1006CAB10@<X0>(uint64_t a1@<X8>)
{
  v24 = sub_100740EC4();
  v4 = *(v24 - 8);
  __chkstk_darwin(v24);
  v22 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v25 = sub_100740F54();
  v9 = *(v25 - 8);
  __chkstk_darwin(v25);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740F44();
  sub_100740F24();
  sub_100740F14();
  sub_10000C518(&qword_10092F120, &qword_1007B4F90);
  v12 = *(v4 + 72);
  v23 = v4;
  v13 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A5A00;
  sub_100740EB4();
  sub_1006CB2E4(v2 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId, v8);
  v15 = sub_10074ED34();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10000C8CC(v8, &qword_100929630, &unk_1007D5E70);
  }

  else
  {
    v21[1] = a1;
    sub_10074ECF4();
    (*(v16 + 8))(v8, v15);
    v17 = v22;
    sub_100740EB4();

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    if (v19 >= v18 >> 1)
    {
      v14 = sub_100255754((v18 > 1), v19 + 1, 1, v14);
    }

    *(v14 + 16) = v19 + 1;
    (*(v23 + 32))(v14 + v13 + v19 * v12, v17, v24);
  }

  sub_100740EE4();
  sub_100740F04();
  return (*(v9 + 8))(v11, v25);
}

void sub_1006CAEDC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_100751074();
  __chkstk_darwin(v4 - 8);
  sub_100751064();
  v5 = objc_allocWithZone(sub_100751094());

  swift_errorRetain();
  v6 = sub_100751084();
  v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007A5CF0;
  *(v8 + 32) = v6;
  sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
  v9 = v6;
  isa = sub_100753294().super.isa;

  [v7 setViewControllers:isa];
}

void sub_1006CB03C()
{
  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId, &qword_100929630, &unk_1007D5E70);
  sub_10000C4F0(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
}

uint64_t sub_1006CB09C()
{
  sub_10000C4F0(v0 + 16);
  v1 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_logger;
  v2 = sub_1007526B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId, &qword_100929630, &unk_1007D5E70);
  sub_10000C4F0(v0 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate);

  return v0;
}

uint64_t sub_1006CB188()
{
  sub_1006CB09C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubscribePageBootstrap(uint64_t a1)
{
  result = qword_1009461A8;
  if (!qword_1009461A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006CB234(uint64_t a1)
{
  sub_1005A29F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006CB2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929630, &unk_1007D5E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1006CB354()
{
  result = qword_100946388;
  if (!qword_100946388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946388);
  }

  return result;
}

unint64_t sub_1006CB3A8()
{
  result = qword_100946390;
  if (!qword_100946390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946390);
  }

  return result;
}

unint64_t sub_1006CB3FC()
{
  result = qword_100946398;
  if (!qword_100946398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946398);
  }

  return result;
}

unint64_t sub_1006CB450()
{
  result = qword_1009463A0;
  if (!qword_1009463A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463A0);
  }

  return result;
}

unint64_t sub_1006CB4A4()
{
  result = qword_1009463A8;
  if (!qword_1009463A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463A8);
  }

  return result;
}

unint64_t sub_1006CB4F8()
{
  result = qword_1009463B8;
  if (!qword_1009463B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463B8);
  }

  return result;
}

unint64_t sub_1006CB54C()
{
  result = qword_1009463C0;
  if (!qword_1009463C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463C0);
  }

  return result;
}

unint64_t sub_1006CB5A0()
{
  result = qword_1009463C8;
  if (!qword_1009463C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463C8);
  }

  return result;
}

unint64_t sub_1006CB5F4()
{
  result = qword_1009463D0;
  if (!qword_1009463D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463D0);
  }

  return result;
}

unint64_t sub_1006CB648()
{
  result = qword_1009463D8;
  if (!qword_1009463D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463D8);
  }

  return result;
}

unint64_t sub_1006CB69C()
{
  result = qword_1009463E0;
  if (!qword_1009463E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463E0);
  }

  return result;
}

unint64_t sub_1006CB6F0()
{
  result = qword_1009463E8;
  if (!qword_1009463E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463E8);
  }

  return result;
}

unint64_t sub_1006CB744()
{
  result = qword_1009463F0;
  if (!qword_1009463F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463F0);
  }

  return result;
}

unint64_t sub_1006CB798()
{
  result = qword_1009463F8;
  if (!qword_1009463F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463F8);
  }

  return result;
}

unint64_t sub_1006CB7EC()
{
  result = qword_100946400;
  if (!qword_100946400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946400);
  }

  return result;
}

unint64_t sub_1006CB894()
{
  result = qword_100946410;
  if (!qword_100946410)
  {
    type metadata accessor for FlowActionImplementation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946410);
  }

  return result;
}

unint64_t sub_1006CB8EC()
{
  result = qword_100946418;
  if (!qword_100946418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946418);
  }

  return result;
}

unint64_t sub_1006CB994()
{
  result = qword_100946420;
  if (!qword_100946420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946420);
  }

  return result;
}

unint64_t sub_1006CB9E8()
{
  result = qword_100946428;
  if (!qword_100946428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946428);
  }

  return result;
}

unint64_t sub_1006CBA3C()
{
  result = qword_100946430;
  if (!qword_100946430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946430);
  }

  return result;
}

unint64_t sub_1006CBA90()
{
  result = qword_100946438;
  if (!qword_100946438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946438);
  }

  return result;
}

unint64_t sub_1006CBAE4()
{
  result = qword_100946440;
  if (!qword_100946440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946440);
  }

  return result;
}

unint64_t sub_1006CBB38()
{
  result = qword_100946448;
  if (!qword_100946448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946448);
  }

  return result;
}

unint64_t sub_1006CBBE0()
{
  result = qword_100946450;
  if (!qword_100946450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946450);
  }

  return result;
}

unint64_t sub_1006CBC34()
{
  result = qword_100946458;
  if (!qword_100946458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946458);
  }

  return result;
}

unint64_t sub_1006CBC88()
{
  result = qword_100946460;
  if (!qword_100946460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946460);
  }

  return result;
}

unint64_t sub_1006CBCDC()
{
  result = qword_100946468;
  if (!qword_100946468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946468);
  }

  return result;
}

unint64_t sub_1006CBD30()
{
  result = qword_100946470;
  if (!qword_100946470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946470);
  }

  return result;
}

unint64_t sub_1006CBD84()
{
  result = qword_100946478;
  if (!qword_100946478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946478);
  }

  return result;
}

unint64_t sub_1006CBDD8()
{
  result = qword_100946480;
  if (!qword_100946480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946480);
  }

  return result;
}

unint64_t sub_1006CBE80()
{
  result = qword_100946488;
  if (!qword_100946488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946488);
  }

  return result;
}

unint64_t sub_1006CBED4()
{
  result = qword_100946490;
  if (!qword_100946490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946490);
  }

  return result;
}

unint64_t sub_1006CBF7C()
{
  result = qword_100946498;
  if (!qword_100946498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946498);
  }

  return result;
}

unint64_t sub_1006CBFD0()
{
  result = qword_1009464A0;
  if (!qword_1009464A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464A0);
  }

  return result;
}

unint64_t sub_1006CC024()
{
  result = qword_1009464A8;
  if (!qword_1009464A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464A8);
  }

  return result;
}

unint64_t sub_1006CC078()
{
  result = qword_1009464B0;
  if (!qword_1009464B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464B0);
  }

  return result;
}

unint64_t sub_1006CC0CC()
{
  result = qword_1009464B8;
  if (!qword_1009464B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464B8);
  }

  return result;
}

unint64_t sub_1006CC174()
{
  result = qword_1009464C0;
  if (!qword_1009464C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464C0);
  }

  return result;
}

unint64_t sub_1006CC1C8()
{
  result = qword_1009464C8;
  if (!qword_1009464C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464C8);
  }

  return result;
}

unint64_t sub_1006CC21C()
{
  result = qword_1009464D0;
  if (!qword_1009464D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464D0);
  }

  return result;
}

unint64_t sub_1006CC270()
{
  result = qword_1009464D8;
  if (!qword_1009464D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464D8);
  }

  return result;
}

unint64_t sub_1006CC318()
{
  result = qword_1009464E0;
  if (!qword_1009464E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464E0);
  }

  return result;
}

unint64_t sub_1006CC3C0()
{
  result = qword_1009464E8;
  if (!qword_1009464E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464E8);
  }

  return result;
}

unint64_t sub_1006CC414()
{
  result = qword_1009464F0;
  if (!qword_1009464F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464F0);
  }

  return result;
}

unint64_t sub_1006CC468()
{
  result = qword_1009464F8;
  if (!qword_1009464F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009464F8);
  }

  return result;
}

unint64_t sub_1006CC4BC()
{
  result = qword_100946500;
  if (!qword_100946500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946500);
  }

  return result;
}

unint64_t sub_1006CC510()
{
  result = qword_100946508;
  if (!qword_100946508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946508);
  }

  return result;
}

double sub_1006CC604(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v160 = a4;
  v155 = a3;
  v168 = a2;
  v6 = sub_10000C518(&unk_100938110, &unk_1007B9190);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v163 = v147 - v7;
  v8 = sub_10074B5F4();
  v156 = *(v8 - 8);
  v157 = v8;
  __chkstk_darwin(v8);
  v158 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074B614();
  v11 = *(v10 - 8);
  v161 = v10;
  v162 = v11;
  __chkstk_darwin(v10);
  v159 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750BD4();
  v166 = *(v13 - 8);
  v167 = v13;
  __chkstk_darwin(v13);
  v174 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v183 = v147 - v16;
  __chkstk_darwin(v17);
  v184 = v147 - v18;
  __chkstk_darwin(v19);
  v185 = v147 - v20;
  __chkstk_darwin(v21);
  v186 = v147 - v22;
  __chkstk_darwin(v23);
  v182 = v147 - v24;
  __chkstk_darwin(v25);
  v187 = v147 - v26;
  __chkstk_darwin(v27);
  v176 = v147 - v28;
  v29 = sub_100750E94();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v153 = v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v154 = v147 - v33;
  __chkstk_darwin(v34);
  v36 = v147 - v35;
  __chkstk_darwin(v37);
  v181 = v147 - v38;
  __chkstk_darwin(v39);
  v150 = v147 - v40;
  __chkstk_darwin(v41);
  v151 = v147 - v42;
  __chkstk_darwin(v43);
  v173 = v147 - v44;
  __chkstk_darwin(v45);
  v148 = v147 - v46;
  __chkstk_darwin(v47);
  v149 = v147 - v48;
  __chkstk_darwin(v49);
  v178 = v147 - v50;
  __chkstk_darwin(v51);
  v179 = v147 - v52;
  __chkstk_darwin(v53);
  v180 = v147 - v54;
  __chkstk_darwin(v55);
  v188 = v147 - v56;
  __chkstk_darwin(v57);
  v59 = v147 - v58;
  __chkstk_darwin(v60);
  v172 = v147 - v61;
  __chkstk_darwin(v62);
  v64 = v147 - v63;
  __chkstk_darwin(v65);
  v67 = v147 - v66;
  __chkstk_darwin(v68);
  v70 = v147 - v69;
  __chkstk_darwin(v71);
  v177 = v147 - v72;
  v73 = sub_10074F064();
  if (v73)
  {
  }

  v169 = v73;
  v175 = v59;
  v190 = a1;
  v171 = v36;
  sub_100750E84();
  if (qword_100921108 != -1)
  {
    swift_once();
  }

  v191 = sub_100750534();
  sub_10000D0FC(v191, qword_100981050);
  sub_100750E54();
  v74 = v30;
  v77 = *(v30 + 8);
  v75 = v30 + 8;
  v76 = v77;
  v77(v64, v29);
  v78 = v29;
  v79 = v168;
  v147[3] = ~v168;
  sub_100750E74();
  v77(v67, v78);
  v80 = (v79 & 1) == 0;
  v81 = v78;
  if (v80)
  {
    v82 = 4;
  }

  else
  {
    v82 = 0;
  }

  v147[2] = v82;
  sub_100750E64();
  v193 = v76;
  v194 = v75;
  v76(v70, v78);
  v83 = sub_10074F024();
  if (v83)
  {
    v84 = v83;
    sub_1007481C4();
  }

  v85 = *(v74 + 16);
  v189 = v74 + 16;
  v192 = v85;
  v85(v64, v177, v78);
  sub_100750BB4();
  sub_100750BF4();
  v152 = sub_100750F34();
  swift_allocObject();
  v170 = sub_100750EF4();
  v86 = v188;
  sub_100750E84();
  if (qword_100921120 != -1)
  {
    swift_once();
  }

  v87 = sub_10000D0FC(v191, qword_100981098);
  v88 = v175;
  v147[1] = v87;
  sub_100750E54();
  v89 = v193;
  v193(v86, v81);
  sub_100750E74();
  v89(v88, v81);
  v90 = v172;
  sub_100750E64();
  v89(v64, v81);
  sub_10074F054();
  v91 = v90;
  v92 = v192;
  v192(v64, v91, v81);
  sub_100750BB4();
  v93 = v188;
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921128 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v191, qword_1009810B0);
  sub_100750E54();
  v89(v93, v81);
  sub_100750E74();
  v89(v88, v81);
  sub_100750E64();
  v89(v64, v81);
  v94 = sub_10074EFF4();
  if (v94)
  {
    v95 = v94;
    sub_1007481C4();

    v92 = v192;
  }

  v92(v64, v180, v81);
  sub_100750BB4();
  sub_100750BF4();
  v96 = v188;
  sub_100750E84();
  if (qword_100921130 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v191, qword_1009810C8);
  v97 = v175;
  sub_100750E54();
  v98 = v193;
  v193(v96, v81);
  sub_100750E74();
  v98(v97, v81);
  sub_100750E64();
  v98(v64, v81);
  v99 = sub_10074F004();
  if (v99)
  {
    v100 = v99;
    sub_1007481C4();

    v192(v64, v179, v81);
  }

  else
  {
    v92(v64, v179, v81);
  }

  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  if (qword_100921118 != -1)
  {
    swift_once();
  }

  v101 = sub_10000D0FC(v191, qword_100981080);
  v102 = v148;
  v147[0] = v101;
  sub_100750E54();
  v103 = v193;
  v193(v64, v81);
  v104 = v149;
  sub_100750E74();
  v103(v102, v81);
  sub_100750E64();
  v103(v104, v81);
  v105 = sub_10074F044();
  if (v105)
  {
    v106 = v105;
    sub_1007481C4();
  }

  v107 = v192;
  v192(v64, v178, v81);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v108 = v191;
  if (qword_100921110 != -1)
  {
    v146 = v191;
    swift_once();
    v108 = v146;
  }

  sub_10000D0FC(v108, qword_100981068);
  v109 = v150;
  sub_100750E54();
  v110 = v193;
  v193(v64, v81);
  v111 = v151;
  sub_100750E74();
  v110(v109, v81);
  v112 = v173;
  sub_100750E64();
  v110(v111, v81);
  v204._object = 0x80000001007766B0;
  v204._countAndFlagsBits = 0xD000000000000012;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  sub_1007458B4(v204, v205);
  v107(v64, v112, v81);
  sub_100750BB4();
  sub_100750BF4();
  v113 = v188;
  sub_100750E84();
  v114 = v175;
  sub_100750E54();
  v115 = v110;
  v110(v113, v81);
  sub_100750E74();
  v110(v114, v81);
  sub_100750E64();
  v110(v64, v81);
  v116 = sub_10074F064();
  v117 = v174;
  if (v116)
  {
    sub_10074F754();

    v115 = v193;
  }

  v192(v64, v181, v81);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750E84();
  v118 = v153;
  sub_100750E54();
  v115(v64, v81);
  v119 = v154;
  sub_100750E74();
  v115(v118, v81);
  v120 = v171;
  sub_100750E64();
  v115(v119, v81);
  if (sub_10074F064())
  {
    v121 = sub_10074F744();

    if (v121)
    {
      sub_1007481C4();
    }
  }

  v192(v64, v120, v81);
  sub_100750BB4();
  sub_100750BF4();
  v122 = v117;
  if (qword_100920868 != -1)
  {
    swift_once();
  }

  v123 = v157;
  v124 = sub_10000D0FC(v157, qword_10097F818);
  (*(v156 + 16))(v158, v124, v123);
  v125 = v167;
  v203[3] = v167;
  v203[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000D134(v203);
  v127 = v166;
  v128 = *(v166 + 16);
  v128(v126, v176, v125);
  v202[3] = v125;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000D134(v202);
  v128(v129, v187, v125);
  v201[3] = v125;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000D134(v201);
  v128(v130, v182, v125);
  v200[3] = v125;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_10000D134(v200);
  v128(v131, v186, v125);
  v199[3] = v125;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_10000D134(v199);
  v128(v132, v185, v125);
  v198[3] = v125;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_10000D134(v198);
  v128(v133, v184, v125);
  v197[3] = v125;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_10000D134(v197);
  v128(v134, v183, v125);
  v196[3] = v125;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v135 = sub_10000D134(v196);
  v128(v135, v122, v125);
  v195 = v170;
  sub_100750434();
  v136 = v159;
  sub_10074B604();
  v137 = [v160 traitCollection];
  sub_1006CE124(&qword_100931BD0, &type metadata accessor for ProductReviewCustomLayout, &protocol conformance descriptor for ProductReviewCustomLayout);
  v138 = v163;
  v139 = v161;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v140 = v165;
  sub_100751254();
  v142 = v141;

  (*(v164 + 8))(v138, v140);
  (*(v162 + 8))(v136, v139);
  v143 = *(v127 + 8);
  v143(v174, v125);
  v144 = v193;
  v193(v171, v81);
  v143(v183, v125);
  v144(v181, v81);
  v143(v184, v125);
  v144(v173, v81);
  v143(v185, v125);
  v144(v178, v81);
  v143(v186, v125);
  v144(v179, v81);
  v143(v182, v125);
  v144(v180, v81);
  v143(v187, v125);
  v144(v172, v81);
  v143(v176, v125);
  v144(v177, v81);
  return v142;
}

double sub_1006CDA20()
{
  v0 = sub_10000C518(&qword_10092FA68, &unk_1007BA6A0);
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v48 = &v38 - v1;
  v47 = sub_100749A94();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v38 - v4;
  v52 = sub_10000C518(&qword_100925340, &unk_1007A8CD0);
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v38 - v7;
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v50 = sub_10074F704();
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074F074();
  v15 = sub_1006CE124(&qword_100939060, &type metadata accessor for Review, &protocol conformance descriptor for Review);
  sub_1007468B4();
  v16 = v55[0];
  if (!v55[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v40 = v0;
  sub_100746914();

  sub_10074F5C4();
  v18 = v17;
  v39 = *(v11 + 8);
  v39(v13, v50);
  swift_getKeyPath();
  sub_100746914();

  v19 = v55[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v56.receiver = v21;
  v56.super_class = v20;
  v23 = objc_msgSendSuper2(&v56, "init");
  v55[3] = v14;
  v55[4] = v15;
  v55[0] = v16;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v41 + 8))(v10, v8);

  v24 = v51;
  sub_100746964();
  v25 = v45;
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v27 = v26;
  v39(v13, v50);
  sub_10000C824(v55, v53);
  v28 = v23;
  sub_10000C518(&qword_1009242A0, &qword_1007A6400);
  swift_dynamicCast();
  v29 = v44;
  (*(v44 + 16))(v42, v24, v52);
  sub_100752DF4();
  v30 = v48;
  sub_100752EB4();
  v31 = v54;
  v32 = v43;
  sub_100749A14();
  sub_1006CE124(&unk_100929800, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v33 = v47;
  LOBYTE(v20) = sub_100754324();
  v34 = *(v46 + 8);
  v34(v32, v33);
  sub_1006CC604(v31, v20 & 1, v20 & 1, v28, v27);
  v36 = v35;

  (*(v49 + 8))(v30, v40);
  v34(v25, v33);
  (*(v29 + 8))(v51, v52);

  sub_10000C620(v55);
  return v36;
}

uint64_t sub_1006CE124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006CE170(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    while (v5 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v7 = sub_100746394();
      v8 = sub_100746394();
      swift_unknownObjectRelease();
      if (v7 == v8)
      {

        swift_beginAccess();
        sub_1002E3508(v5);
        v11 = v10;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 136);
        swift_unknownObjectRetain();
        v13(ObjectType, v11);
        swift_unknownObjectRelease();
        return;
      }

      ++v5;
      v6 += 24;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1001210F4(a1);
    (*(v9 + 8))();
  }
}

void sub_1006CE2EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a4 & 1) == 0)
    {
      swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1002553D8(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_1002553D8((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = a1;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1006CE400(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

uint64_t sub_1006CE5E4()
{

  return swift_deallocClassInstance();
}

void sub_1006CE650(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

char *sub_1006CE724(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_100746BA4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  __chkstk_darwin(v9);
  v59 = &v53 - v10;
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *&v2[v19] = sub_1000C5F3C(1);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = sub_100750534();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(sub_100745C84());
  *&v2[v21] = sub_100745C74();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != 2)
  {
    sub_1000AEAAC();
  }

  sub_1000AEF48();
  sub_1000AFA20(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_1006CF6D8();
  v39 = v37;
  sub_100753274();
  sub_100753274();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (sub_100754754())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_1000C5DD0(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  sub_100746B84();
  v42(v44, v40);
  sub_100753094();
  v45 = sub_100753064();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007A6580;
  *(v47 + 32) = sub_1007516F4();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = sub_1007519E4();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_1006CEE34();
  return v31;
}

id sub_1006CEE34()
{
  v1 = v0;
  v2 = sub_100746BA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_1000AEC40();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = sub_100746B94();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = sub_100746B84();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

id sub_1006CF07C()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = sub_1007537D4();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  sub_100753BA4();
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  sub_100753AA4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_1006CF3DC()
{
  sub_10000C518(&qword_10092D9D0, &unk_1007B5A50);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_1007A6580;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView(uint64_t a1)
{
  result = qword_100946600;
  if (!qword_100946600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006CF594(uint64_t a1)
{
  result = sub_100746BA4();
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

uint64_t sub_1006CF660()
{
  sub_10000C518(&qword_10092D9D0, &unk_1007B5A50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A6580;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_1006CF6D8()
{
  result = qword_100946610;
  if (!qword_100946610)
  {
    sub_100746BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946610);
  }

  return result;
}

id sub_1006CF734(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_100921DC0 != -1)
  {
    swift_once();
  }

  v3 = qword_100982F88;
  v4 = unk_100982F90;
  v5 = qword_100982F98;
  v6 = [a1 traitCollection];
  if (sub_100753804())
  {
  }

  else
  {
    v7 = sub_1007537D4();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_1006CF820()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *(v1 + v10) = sub_1000C5F3C(1);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = sub_100750534();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_100746BA4();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  sub_100754644();
  __break(1u);
}

char *sub_1006CFAA4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_1007433C4();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

double sub_1006CFC7C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v24 = a5;
  v25 = a6;
  v22 = a4;
  v23 = a3;
  v8 = sub_1007457B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v9 + 96))(v11, v8);
    v12 = *(sub_10000C518(&qword_100940630, &qword_1007C18F0) + 48);
    [v6 frame];
    sub_10074F374();
    sub_10074F1E4();
    sub_100743224();
    sub_1007433C4();
    sub_10004D658();
    sub_100744204();

    v13 = sub_100748E34();
    (*(*(v13 - 8) + 8))(&v11[v12], v13);
  }

  else
  {
    sub_1007433C4();
    sub_10004D658();
    sub_100744274();
    (*(v9 + 8))(v11, v8);
  }

  v14 = &v6[OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_insets];
  v15 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_insets];
  v16 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_insets + 16];
  v18 = v22.n128_f64[0];
  *&v17.f64[0] = v23.n128_u64[0];
  *v14 = v23.n128_f64[0];
  v14[1] = v18;
  *&v20.f64[0] = v24.n128_u64[0];
  v19 = v25.n128_f64[0];
  v14[2] = v24.n128_f64[0];
  v14[3] = v19;
  v17.f64[1] = v18;
  v20.f64[1] = v19;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v15, v17), vceqq_f64(v16, v20)))) & 1) == 0)
  {
    [v6 setNeedsLayout];
  }

  return result;
}

id sub_1006CFFC0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006D0068()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_1007433C4();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  sub_100754644();
  __break(1u);
}

void sub_1006D0150(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setHidden:1];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setHidden:0];
    v7 = [v1 contentView];
    sub_100009D34();
    sub_1007477B4();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame:{v9, v11, v13, v15}];
  }

LABEL_4:
}

id sub_1006D0284(uint64_t *a1, uint64_t (*a2)(void, __n128))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    swift_unknownObjectWeakInit();
    (a2)(0);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setHidden:1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong addSubview:v7];
    }

    swift_unknownObjectWeakDestroy();
    v10 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_1006D0368(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___standardLinkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell____lazy_storage___presentationLinkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView] = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v12;
}

void sub_1006D0590()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22LinkCollectionViewCell_currentLinkView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    sub_100009D34();
    sub_1007477B4();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t type metadata accessor for LinkCollectionViewCell(uint64_t a1)
{
  result = qword_100946698;
  if (!qword_100946698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006D07BC(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_1006D085C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
  sub_1007433C4();
  *&v4[v17] = sub_1007431D4();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel;
  if (qword_100921458 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981A40);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_100745C84());
  *&v5[v18] = sub_100745C74();
  v5[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle] = 0;
  v23 = type metadata accessor for BundleChildView();
  v34.receiver = v5;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel;
  [*&v28[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel] setTextAlignment:1];
  v30 = *&v28[v29];
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v31 = v30;
  v32 = sub_100753DF4();
  [v31 setTextColor:v32];

  [v28 addSubview:*&v28[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

id sub_1006D0C04()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v39[-1] - v10;
  v12 = type metadata accessor for BundleChildView();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v13 = [v0 traitCollection];
  v14 = sub_10074F3F4();
  v39[3] = v14;
  v39[4] = sub_1001FC0C4();
  v15 = sub_10000D134(v39);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_10074FC74();
  sub_10000C620(v39);
  if (v14)
  {
    v16 = sub_1007537D4();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_100743354();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_10074F2D4();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  sub_10074F2C4();
  v20 = v19;
  v18(v11, v2);
  sub_1007477B4();
  MinX = CGRectGetMinX(v41);
  sub_1007477B4();
  MinY = CGRectGetMinY(v42);
  sub_100743324();
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel];
  [v23 firstBaselineFromTop];
  v25 = v1[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle];
  if (v25 == 2)
  {
    return [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v27 = 18.0 - v24;
  sub_1007477B4();
  [v23 sizeThatFits:{v28, v29}];
  if (v25)
  {
    v32 = v30;
    v43.origin.x = MinX;
    v43.origin.y = MinY;
    v43.size.width = v17;
    v43.size.height = v20;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = MinX;
    v44.origin.y = MinY;
    v44.size.width = v17;
    v44.size.height = v20;
    v34 = CGRectGetMinY(v44);
    if (v32 > 80.0)
    {
      v32 = 80.0;
    }

    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = v17;
    v45.size.height = v20;
    return [v23 setFrame:{v27 + MaxX, v34, v32, CGRectGetHeight(v45)}];
  }

  else
  {
    v35 = v31;
    sub_1007477B4();
    v36 = CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = MinY;
    v47.size.width = v17;
    v47.size.height = v20;
    v37 = v27 + CGRectGetMaxY(v47);
    v48.origin.x = MinX;
    v48.origin.y = MinY;
    v48.size.width = v17;
    v48.size.height = v20;
    return [v23 setFrame:{v36, v37, CGRectGetWidth(v48), v35}];
  }
}

id sub_1006D10C8(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BundleChildView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1006D1180()
{
  result = qword_1009466E8;
  if (!qword_1009466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009466E8);
  }

  return result;
}

void sub_1006D11D4(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_10074F3F4();
  v8[3] = v4;
  v8[4] = sub_1001FC0C4();
  v5 = sub_10000D134(v8);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.voyager_bundles_2025A(_:), v4);
  LOBYTE(v4) = sub_10074FC74();
  sub_10000C620(v8);
  if (v4)
  {
    sub_1007537D4();
  }

  if (a2 == 2 || (a2 & 1) != 0)
  {
    sub_10074F2C4();
  }

  else
  {
    sub_10074F2C4();
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    if (qword_100921458 != -1)
    {
      swift_once();
    }

    v6 = sub_100750534();
    sub_10000D0FC(v6, qword_100981A40);
    v7 = sub_100753C14();
    [v7 descender];
  }
}

void sub_1006D1360()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_icon;
  sub_1007433C4();
  *(v0 + v9) = sub_1007431D4();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel;
  if (qword_100921458 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981A40);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_100745C84());
  *(v1 + v10) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle) = 0;
  sub_100754644();
  __break(1u);
}

double sub_1006D15D0()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v29[-1] - v11;
  v13 = [v0 traitCollection];
  v14 = sub_10074F3F4();
  v29[3] = v14;
  v29[4] = sub_1001FC0C4();
  v15 = sub_10000D134(v29);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = sub_10074FC74();
  sub_10000C620(v29);
  if (v14)
  {
    v16 = sub_1007537D4();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  sub_100743354();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  sub_10074F2D4();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle;
  v20 = v1[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleStyle];
  v21 = [v1 traitCollection];
  sub_1006D11D4(v12, v20, v21);

  v18(v12, v2);
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15BundleChildView_titleLabel];
  type metadata accessor for BundleChildView();
  sub_1007477B4();
  [v22 sizeThatFits:{v23, v24}];
  v26 = fmin(v25, 80.0);
  if ((v1[v19] & 1) == 0)
  {
    v26 = -0.0;
  }

  return v17 + v26;
}

void sub_1006D18B8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1006D4DB8(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_1006D1B4C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppEventView(uint64_t a1)
{
  result = qword_100946730;
  if (!qword_100946730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1006D1CEC(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1006D1D50;
}

void sub_1006D1D50(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_10018F560();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_1006D1E78()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  sub_1007477B4();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView];
    sub_1007477B4();
    v3 = v2;
    v5 = v4;
    sub_1000CBC6C(v15);
    sub_1000CD7E4(v0, v15, v3, v5);
    sub_1000CD59C(v15);
    sub_1007477B4();
    CGRectGetMinX(v18);
    sub_1007477B4();
    CGRectGetMinY(v19);
    sub_1007477B4();
    sub_100753B24();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v9 = v0;
      v10 = sub_100753FC4();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        sub_1007477B4();
        v12 = CGRectGetHeight(v21) - MaxY;
        sub_1007477B4();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        sub_1007477B4();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_1006D2220(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = v61 - v5;
  v7 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v7 - 8);
  v9 = v61 - v8;
  v10 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - v12;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer];
  if ((sub_100753FC4() & 1) == 0)
  {
    return;
  }

  v62 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView];
  v15 = [v62 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  v18 = v2;
  v61[1] = v17;
  LOBYTE(v17) = sub_100753FC4();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v24 = [v62 superview];
    if (!v24)
    {
      return;
    }

    v25 = v24;
    v26 = v18;
    v27 = sub_100753FC4();

    if ((v27 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = 0x3FF0000000000000;
    v68 = sub_1006D51D4;
    v69 = v29;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_1000CF7B0;
    v67 = &unk_1008812F8;
    v30 = _Block_copy(&aBlock);
    v31 = v26;

    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = v31;
    v68 = sub_1006D51EC;
    v69 = v32;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_100881348;
LABEL_30:
    v66 = sub_100144DD8;
    v67 = v33;
    v59 = _Block_copy(&aBlock);
    v60 = v31;

    [v28 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v30 options:v59 animations:0.0 completion:1.0];
    _Block_release(v59);
    _Block_release(v30);
    return;
  }

  if (v19 == 1)
  {
    v34 = v62;
    [a1 locationInView:v62];
    v35 = v18 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation;
    *v35 = v36;
    *(v35 + 1) = v37;
    v35[16] = 0;
    v38 = [v34 superview];
    if (!v38)
    {
      return;
    }

    v39 = v38;
    v40 = v18;
    v41 = sub_100753FC4();

    if ((v41 & 1) == 0)
    {
      return;
    }

    v28 = objc_opt_self();
    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = 0x3FEEB851EB851EB8;
    v68 = sub_1006D51D4;
    v69 = v42;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v66 = sub_1000CF7B0;
    v67 = &unk_100881398;
    v30 = _Block_copy(&aBlock);
    v31 = v40;

    v43 = swift_allocObject();
    *(v43 + 16) = 1;
    *(v43 + 24) = v31;
    v68 = sub_1006D51EC;
    v69 = v43;
    aBlock = _NSConcreteStackBlock;
    v65 = 1107296256;
    v33 = &unk_1008813E8;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v62];
    v46 = (v18 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation + 16))
    {
      *v46 = v44;
      v46[1] = v45;
      *(v46 + 16) = 0;
    }

    else
    {
      v47 = sqrt((v45 - v46[1]) * (v45 - v46[1]) + (v44 - *v46) * (v44 - *v46));
      [v14 allowableMovement];
      if (v48 < v47)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_clickAction;
  swift_beginAccess();
  sub_100016B4C(v18 + v20, v9, &qword_100933090, &unk_1007B1B00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_100933090;
    v22 = &unk_1007B1B00;
    v23 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_1007455C4();
    v67 = ObjectType;
    aBlock = v18;
    v49 = v18;
    sub_10074EC54();

    sub_1007455B4();
    v50 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    sub_1007526C4();

    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v6, 1, v50) != 1)
    {
      sub_1007455C4();
      v52 = sub_1007455B4();
      sub_1003C0E00(aBlock, 1, v52, v6);

      (*(v11 + 8))(v13, v10);

      (*(v51 + 8))(v6, v50);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100923960;
    v22 = &qword_1007A6240;
    v23 = v6;
  }

  sub_10000C8CC(v23, v21, v22);
LABEL_27:
  v53 = [v62 superview];
  if (v53)
  {
    v54 = v53;
    v55 = v18;
    v56 = sub_100753FC4();

    if (v56)
    {
      v28 = objc_opt_self();
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = 0x3FF0000000000000;
      v68 = sub_1006D4E38;
      v69 = v57;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_1000CF7B0;
      v67 = &unk_100881258;
      v30 = _Block_copy(&aBlock);
      v31 = v55;

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      *(v58 + 24) = v31;
      v68 = sub_1006D4E5C;
      v69 = v58;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v33 = &unk_1008812A8;
      goto LABEL_30;
    }
  }
}

id sub_1006D2C18(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

BOOL sub_1006D2C78(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupContainerView)];
  v12 = *(v8 + v9);
  if (v12)
  {
    v13 = v10;
    v14 = v11;
    [v12 bounds];
    v32.x = v13;
    v32.y = v14;
    if (CGRectContainsPoint(v35, v32))
    {
      return 0;
    }
  }

  v15 = OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_notifyMeButton)];
  v18 = *(v8 + v15);
  if (v18)
  {
    v19 = v16;
    v20 = v17;
    [v18 bounds];
    v33.x = v19;
    v33.y = v20;
    if (CGRectContainsPoint(v36, v33))
    {
      return 0;
    }
  }

  [a2 locationInView:v2];
  v22 = v21;
  v24 = v23;
  v25 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v34.x = v22;
  v34.y = v24;
  if (CGRectContainsPoint(v37, v34))
  {
    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();

      if (v26)
      {
        return 0;
      }
    }

    v28 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_clickAction;
    swift_beginAccess();
    sub_100016B4C(&v3[v28], v7, &qword_100933090, &unk_1007B1B00);
    v29 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
    v30 = (*(*(v29 - 8) + 48))(v7, 1, v29) != 1;
    sub_10000C8CC(v7, &qword_100933090, &unk_1007B1B00);
    return v30;
  }

  else
  {

    return 0;
  }
}

void sub_1006D2FA8(uint64_t a1)
{
  sub_1001E5A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1006D3078(uint64_t **a1))()
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
  v2[4] = sub_1006D1CEC(v2);
  return sub_1000181A8;
}

double sub_1006D30FC(uint64_t a1)
{
  [*(*v1 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v3);
  sub_1007477B4();
  CGRectGetHeight(v4);
  sub_1007477B4();
  CGRectGetWidth(v5);
  return 0.0;
}

CGFloat sub_1006D3174(uint64_t a1)
{
  v2 = *v1;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v4);
  sub_1007477B4();
  CGRectGetHeight(v5);
  [v2 bounds];
  return CGRectGetWidth(v6) * 0.5;
}

uint64_t sub_1006D3234()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006D4DB8(&unk_100946750, type metadata accessor for AppEventView, &unk_1007D6328);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1006D32A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006D4DB8(&unk_100946750, type metadata accessor for AppEventView, &unk_1007D6328);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1006D3334(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1006D4DB8(&unk_100946750, type metadata accessor for AppEventView, &unk_1007D6328);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1006D33F0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

double sub_1006D3574(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = sub_100751014();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750A94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750AB4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_10000C518(&qword_100946760, &unk_1007A63A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A6580;
  sub_10000C824(a1, v33);
  v18 = sub_100750FD4();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v17 + 32));
  sub_100750FE4();
  sub_10000C824(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v17 + 72));
  sub_100750FE4();
  sub_100750AA4();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_10000D134(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  sub_100751004();
  sub_100750FF4();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

void sub_1006D38E4(void *a1, void *a2, double a3, double a4)
{
  v86 = sub_100754724();
  v90 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100750A94();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100750AB4();
  v82 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100750FD4();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1007479B4();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v67 - v14;
  v15 = sub_100747064();
  v78 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_100016B4C(a2 + v18[18], &v93, &unk_100928A00, &qword_1007A5AB0);
  v19 = v94;
  sub_10000C8CC(&v93, &unk_100928A00, &qword_1007A5AB0);
  v20 = [a1 traitCollection];
  v21 = [v20 preferredContentSizeCategory];
  v22 = sub_100753954();

  if (v22)
  {
    v67 = v19;
    v87 = a2;
    v24 = v18[13];
    v25 = v18[14];
    v26 = v18[16];
    v70 = v18[15];
    v71 = v26;
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v68 = (v87 + v24);
    v69 = (v87 + v25);
    v27 = sub_10000D0FC(v15, qword_10097E0C0);
    v88 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_1007504C4();
    v29 = v28;
    v30 = [a1 traitCollection];
    v31 = v78;
    (*(v78 + 16))(v17, v27, v15);
    v32 = sub_100746FD4();
    v34 = v79;
    if ((v35 & 1) == 0 && ((v32 | v33) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v36 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v36 = qword_10093FF58;
      }

      v37 = v75;
      v38 = sub_10000D0FC(v75, v36);
      v39 = v74;
      v40 = v72;
      (*(v74 + 16))(v72, v38, v37);
      v41 = v73;
      (*(v39 + 32))(v73, v40, v37);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v39 + 8))(v41, v37);
    }

    sub_100746F14();
    v43 = v42;

    (*(v31 + 8))(v17, v15);
    *&v91 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760, &unk_1007A63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v94 = &type metadata for CGFloat;
    v95 = &protocol witness table for CGFloat;
    *&v93 = v29;
    *(inited + 56) = v34;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v45 = v87;
    v46 = v86;
    if (v67)
    {
      v94 = &type metadata for CGFloat;
      v95 = &protocol witness table for CGFloat;
      *&v93 = ceil(v43 + 16.0 + 16.0);
      v47 = v76;
      sub_100750FE4();
      v48 = v91;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1002548C4(0, v48[2] + 1, 1, v48);
      }

      v50 = v48[2];
      v49 = v48[3];
      if (v50 >= v49 >> 1)
      {
        v48 = sub_1002548C4((v49 > 1), v50 + 1, 1, v48);
      }

      v94 = v34;
      v95 = &protocol witness table for VerticalSpaceMeasurable;
      v51 = sub_10000D134(&v93);
      v52 = v77;
      (*(v77 + 16))(v51, v47, v34);
      v48[2] = v50 + 1;
      sub_100012160(&v93, &v48[5 * v50 + 4]);
      (*(v52 + 8))(v47, v34);
      *&v91 = v48;
    }

    (*(v83 + 104))(v81, enum case for StackMeasurable.Axis.vertical(_:), v85);
    v53 = v80;
    sub_100750AA4();
    sub_100750A84();
    (*(v82 + 8))(v53, v84);
    v54 = v45[3];
    sub_10000C888(v45, v54);
    v55 = v89;
    sub_100536120(v54);
    sub_100750564();
    v56 = *(v90 + 8);
    v90 += 8;
    v56(v55, v46);
    sub_100753BA4();
    sub_10000C888(v68, v68[3]);
    sub_100750404();
    v58 = v57;
    v59 = v88;
    sub_10000C888((v45 + v88[7]), *(v45 + v88[7] + 24));
    sub_100750584();
    *&v93 = v58;
    sub_100750554();
    sub_10000C888(v69, v69[3]);
    sub_100750404();
    v61 = v60;
    sub_10000C888((v45 + v59[8]), *(v45 + v59[8] + 24));
    sub_100750584();
    *&v93 = v61;
    sub_100750554();
    sub_100016B4C(v45 + v70, &v91, &qword_10092BC30, &qword_1007AD5C0);
    if (v92)
    {
      sub_100012160(&v91, &v93);
      sub_10000C888(&v93, v94);
      if (sub_100750364())
      {
        sub_10000C888(&v93, v94);
        sub_100750404();
        v63 = v62;
        sub_10000C888((v45 + v88[9]), *(v45 + v88[9] + 24));
        sub_100750584();
        *&v91 = v63;
        sub_100750554();
      }

      sub_10000C620(&v93);
    }

    else
    {
      sub_10000C8CC(&v91, &qword_10092BC30, &qword_1007AD5C0);
    }

    v64 = (v45 + v88[10]);
    v65 = v64[3];
    sub_10000C888(v64, v65);
    v66 = v89;
    sub_100536120(v65);
    sub_100750564();
    v56(v66, v46);
    sub_100016B4C(v45 + v71, &v91, &unk_100928A00, &qword_1007A5AB0);
    if (v92)
    {
      sub_100012160(&v91, &v93);
      sub_10000C888(&v93, v94);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v93, v94);
        sub_100750404();
      }

      sub_10000C620(&v93);
    }

    else
    {
      sub_10000C8CC(&v91, &unk_100928A00, &qword_1007A5AB0);
    }
  }

  else
  {
    v23.n128_f64[0] = a3;
    sub_1006D468C(v23, a4, a2, v19 != 0, a1);
  }
}

double sub_1006D468C(__n128 a1, double a2, uint64_t a3, int a4, void *a5)
{
  v47 = a4;
  v52 = sub_100750A94();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100750AB4();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100750FD4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007479B4();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_100747064();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920448 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v16, qword_10097E0A8);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1007504C4();
  v22 = v21;
  v54 = a5;
  v23 = [a5 traitCollection];
  (*(v17 + 16))(v19, v20, v16);
  v24 = sub_100746FD4();
  if ((v26 & 1) == 0 && ((v24 | v25) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF58;
    }

    v28 = sub_10000D0FC(v10, v27);
    v29 = v44;
    (*(v44 + 16))(v12, v28, v10);
    (*(v29 + 32))(v15, v12, v10);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v29 + 8))(v15, v10);
  }

  sub_100746F14();
  v31 = v30;

  (*(v17 + 8))(v19, v16);
  v58 = _swiftEmptyArrayStorage;
  sub_10000C518(&qword_100946760, &unk_1007A63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  *&v55 = v22;
  v33 = v48;
  *(inited + 56) = v48;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((inited + 32));
  sub_100750FE4();
  sub_10049FB8C(inited);
  if (v47)
  {
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *&v55 = ceil(v31 + 4.0 + 4.0);
    v34 = v45;
    sub_100750FE4();
    v35 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1002548C4(0, v35[2] + 1, 1, v35);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1002548C4((v36 > 1), v37 + 1, 1, v35);
    }

    v56 = v33;
    v57 = &protocol witness table for VerticalSpaceMeasurable;
    v38 = sub_10000D134(&v55);
    v39 = v46;
    (*(v46 + 16))(v38, v34, v33);
    v35[2] = v37 + 1;
    sub_100012160(&v55, &v35[5 * v37 + 4]);
    (*(v39 + 8))(v34, v33);
    v58 = v35;
  }

  (*(v50 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v52);
  sub_100750AA4();
  sub_100750A84();
  v41 = v40;
  (*(v51 + 8))(v8, v53);
  return v41;
}

uint64_t sub_1006D4DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006D4E00()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006D4E44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006D4E60()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1006D4E98()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_1006D4EC4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_clickAction;
  v3 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView] = [objc_allocWithZone(type metadata accessor for AppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] = v5;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView;
  *(*&v10[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008811E0;
  swift_unknownObjectWeakAssign();
  [v10 addSubview:*&v10[v11]];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView]];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v13] setMinimumPressDuration:0.1];
  [*&v10[v13] setDelegate:v10];
  [*&v10[v12] addGestureRecognizer:*&v10[v13]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A5A00;
  *(v14 + 32) = sub_100751554();
  *(v14 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v10;
}

void sub_1006D51F0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a3;
  v17 = sub_10074F284();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    swift_beginAccess();
    v10 = (a1 + 40);
    do
    {
      v11 = *v10;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = Strong;

        sub_10074F294();
        sub_10074F254();
        (*(v6 + 8))(v8, v17);
        sub_10074F374();
        v21 = 0;
        memset(v20, 0, sizeof(v20));
        v14 = swift_allocObject();
        *(v14 + 16) = a2;
        *(v14 + 24) = v11;
        v15 = a2;
        sub_1007441F4();

        sub_10000C8CC(v20, &unk_1009276E0, &unk_1007A5C70);
      }

      v10 += 2;
      --v9;
    }

    while (v9);
  }
}

double sub_1006D5410(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = sub_100749334();
  v14 = v13;
  v39[1] = sub_100749394();
  v16 = v15;
  v39[2] = sub_1007493A4();
  v47 = v17;
  v44 = a1;
  sub_100753BA4();
  if (qword_100920DD8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v10, qword_1009806B8);
  if (qword_100920DF0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v7, qword_100980700);
  v45 = v16;
  if (v16)
  {
    v18 = v14;
    v19 = a3;
    v20 = sub_10074F3F4();
    v49 = v20;
    v50 = sub_1006D7BFC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v21 = sub_10000D134(v48);
    (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
    sub_10074FC74();
    sub_10000C620(v48);
    a3 = v19;
    v14 = v18;
    sub_10074CCB4();
    sub_100750584();
  }

  v22 = v47;
  v23 = v9;
  if (qword_100920DE0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v10, qword_1009806D0);
  (*(v11 + 16))(v46, v24, v10);
  v25 = v40;
  if (qword_100920DF8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v7, qword_100980718);
  (*(v25 + 16))(v23, v26, v7);
  if (v22)
  {
    v27 = sub_10074F3F4();
    v49 = v27;
    v50 = sub_1006D7BFC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v28 = sub_10000D134(v48);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
    sub_10074FC74();
    sub_10000C620(v48);
    v29 = v46;
    sub_10074CCB4();
    sub_100750584();
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v29, v10);
  }

  else
  {
    (*(v25 + 8))(v23, v7);
    (*(v11 + 8))(v46, v10);
  }

  v30 = v43;
  v31 = v41;
  if (qword_100920DD0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v10, qword_1009806A0);
  if (qword_100920DE8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v7, qword_1009806E8);
  if (v14)
  {
    v32 = sub_10074F3F4();
    v49 = v32;
    v50 = sub_1006D7BFC(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v33 = sub_10000D134(v48);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    sub_10074FC74();
    sub_10000C620(v48);
    sub_10074CCB4();
    sub_100750584();
  }

  v34 = [a3 traitCollection];
  sub_1007502D4();
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v35 = sub_100753C14();
  sub_100750AD4();
  sub_100753C24();

  v36 = *(v42 + 8);
  v36(v31, v30);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v7, qword_100982098);
  sub_1007502D4();
  sub_100750564();
  v36(v31, v30);
  if (qword_100920DB8 != -1)
  {
    swift_once();
  }

  v37 = sub_1007504F4();
  sub_10000D0FC(v37, qword_100980678);
  sub_1007504B4();
  sub_1007504C4();

  return v44;
}

id sub_1006D5DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v222 = a5;
  v223 = a4;
  v215 = a3;
  v225 = a1;
  v226 = a2;
  v15 = sub_10074F314();
  __chkstk_darwin(v15 - 8);
  v195 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_10074F284();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v192 = &v191 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v18 - 8);
  v210 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v209 = &v191 - v21;
  v22 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v22 - 8);
  v208 = &v191 - v23;
  v24 = sub_100744864();
  __chkstk_darwin(v24 - 8);
  v207 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v206 = &v191 - v27;
  v28 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v28 - 8);
  v205 = &v191 - v29;
  v203 = sub_100744894();
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v204 = &v191 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100747D94();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v211 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_10074ED34();
  v228 = *(v231 - 8);
  __chkstk_darwin(v231);
  v230 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100746BA4();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10000C518(&qword_10092FB70, &qword_1007B6070);
  __chkstk_darwin(v34 - 8);
  v216 = &v191 - v35;
  v218 = sub_100745334();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v201 = &v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v214 = &v191 - v38;
  v229 = sub_10074B3E4();
  v227 = *(v229 - 8);
  __chkstk_darwin(v229);
  v220 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v221 = &v191 - v41;
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  v45 = sub_1007504F4();
  v224 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100750D14();
  v49 = *(v48 - 8);
  *&v50 = __chkstk_darwin(v48).n128_u64[0];
  v52 = &v191 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = [a6 contentView];
  [v53 setLayoutMargins:{a7, a8, a9, a10}];

  v232[0] = a6;
  v54 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v55 = sub_1006D7BFC(&qword_100946768, type metadata accessor for EditorialSearchResultCollectionViewCell, &protocol conformance descriptor for NSObject);
  v56 = a6;
  v199 = v55;
  sub_1007544E4();
  sub_100747464();
  sub_100016994(v233);
  v200 = v54;
  sub_1007477B4();
  if (qword_100920DB8 != -1)
  {
    goto LABEL_99;
  }

  while (1)
  {
    v57 = sub_10000D0FC(v45, qword_100980678);
    v58 = v224;
    (*(v224 + 16))(v47, v57, v45);
    v191 = v47;
    sub_100750D24();
    sub_100750404();
    v60 = v59;
    v62 = v61;
    (*(v49 + 8))(v52, v48);
    sub_100749384();
    v63 = v229;
    v64 = (*(v227 + 88))(v44, v229);
    v65 = v45;
    v219 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v64 == enum case for EditorialSearchResultType.category(_:) || v64 == enum case for EditorialSearchResultType.collection(_:) || v64 == enum case for EditorialSearchResultType.story(_:) || v64 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 1;
      [*&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:0];
      [v56 setNeedsLayout];
    }

    else
    {
      v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
      [*&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon] setHidden:1];
      [v56 setNeedsLayout];
      (*(v227 + 8))(v44, v63);
    }

    v66 = sub_100749334();
    sub_1004D4048(v66, v67);
    sub_100749394();
    v69 = v68;
    v70 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel];
    if (v68)
    {
      v71 = sub_100753064();
    }

    else
    {
      v71 = 0;
    }

    [v70 setText:v71];

    [v70 setHidden:v69 == 0];
    [v56 setNeedsLayout];
    sub_1007493A4();
    v73 = v72;
    v74 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
    if (v72)
    {
      v75 = sub_100753064();
    }

    else
    {
      v75 = 0;
    }

    [v74 setText:v75];

    [v74 setHidden:v73 == 0];
    [v56 setNeedsLayout];
    v76 = sub_100749354();
    v77 = v229;
    if (!v76)
    {
      goto LABEL_17;
    }

    v78 = v76;
    v79 = v216;
    sub_100749324();
    v80 = v217;
    v81 = v218;
    if ((*(v217 + 48))(v79, 1, v218) == 1)
    {
      break;
    }

    v52 = v214;
    (*(v80 + 32))(v214, v79, v81);
    v95 = v201;
    (*(v80 + 16))(v201, v52, v81);
    v96 = (*(v80 + 88))(v95, v81);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_23;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v80 + 8))(v95, v81);
LABEL_23:
        v97 = 0;
        goto LABEL_42;
      }

      v97 = 3;
    }

LABEL_42:
    v112 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v113 = sub_100602928(v97, 0.0, 0.0, 0.0, 0.0);
    sub_100496C30();
    v114 = v113[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
    v115.f64[0] = v60;
    v116 = sub_100602310(v114, v115, v62);
    v49 = *(v78 + 16);
    if (v116 < v49)
    {
      v117.f64[0] = v60;
      v118 = sub_100602310(v114, v117, v62);
      if ((v118 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v49 >= v118)
      {
        if (v49 == v118)
        {
LABEL_59:
          v48 = v78;
        }

        else
        {
          v213 = v113;
          v216 = v56;
          v119 = v78 + ((*(v228 + 80) + 32) & ~*(v228 + 80));
          v226 = v78;
          sub_1006315C0(v78, v119, 0, (2 * v118) | 1);
          v48 = v120;
LABEL_47:

          v56 = v216;
          v52 = v214;
          v113 = v213;
        }

        *&v113[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v48 + 16);
        sub_100602764();
        v125 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v126 = swift_allocObject();
        v126[2] = v113;
        v126[3] = v125;
        v127 = v222;
        v126[4] = v222;
        v128 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v129 = swift_allocObject();
        v129[2] = v113;
        v129[3] = v128;
        v129[4] = v127;
        v233[0] = v56;
        v130 = v113;
        swift_retain_n();
        v131 = v56;
        v132 = v130;
        sub_1007544E4();
        sub_100747444();

        sub_10000C8CC(v232, &unk_1009276E0, &unk_1007A5C70);
        sub_100016994(v233);
        v133 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid;
        v134 = *&v131[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
        v135 = v132;
        if (v134)
        {
          [v134 removeFromSuperview];
          v136 = *&v131[v133];
        }

        else
        {
          v136 = 0;
        }

        v137 = v218;
        *&v131[v133] = v132;
        v138 = v132;

        sub_1004D459C();
        (*(v217 + 8))(v52, v137);
LABEL_64:
        v77 = v229;
        goto LABEL_65;
      }

      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v116 <= v49)
    {
      goto LABEL_59;
    }

    v224 = v116 - v49;
    if (v116 - v49 < 0)
    {
      goto LABEL_103;
    }

    if (v49)
    {
      v213 = v113;
      v216 = v56;

      v48 = v78;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_52;
      }

      goto LABEL_105;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    v48 = sub_10025572C(0, v49 + 1, 1, v78);
LABEL_52:
    v121 = 0;
    v47 = ((*(v228 + 80) + 32) & ~*(v228 + 80));
    v226 = v78;
    v45 = &v47[v78];
    v56 = (v228 + 16);
    v44 = (v228 + 32);
    while (1)
    {
      v122 = v121 % v49;
      if (v121 % v49 < 0)
      {
        break;
      }

      if (v122 >= *(v226 + 16))
      {
        goto LABEL_98;
      }

      v52 = *(v228 + 72);
      (*(v228 + 16))(v230, v45 + v52 * v122, v231);
      v124 = *(v48 + 16);
      v123 = *(v48 + 24);
      if (v124 >= v123 >> 1)
      {
        v48 = sub_10025572C((v123 > 1), v124 + 1, 1, v48);
      }

      ++v121;
      *(v48 + 16) = v124 + 1;
      (*v44)(&v47[v48 + v124 * v52], v230, v231);
      if (v224 == v121)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
  }

  sub_10000C8CC(v79, &qword_10092FB70, &qword_1007B6070);
LABEL_17:
  if (!sub_100749314())
  {
    if (sub_100749344())
    {
      sub_1007433C4();
      v98 = sub_1007431C4();
      [v98 setContentMode:2];
      sub_10074F364();
      sub_1006D7BFC(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
      v99 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
      v100 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
      v101 = v98;
      if (v100)
      {
        [v100 removeFromSuperview];
        v102 = v56;
        v103 = *&v56[v99];
      }

      else
      {
        v102 = v56;
        v103 = 0;
      }

      *&v102[v99] = v98;
      v110 = v98;

      v111 = [v102 contentView];
      [v111 addSubview:v110];

      [v102 setNeedsLayout];

      v56 = v102;
    }

    else
    {
      if (!sub_100749304())
      {
        goto LABEL_65;
      }

      v104 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10074F2A4();
      v105 = v191;
      sub_100750504();
      sub_100750474();
      (*(v58 + 8))(v105, v45);
      v106 = v192;
      sub_10074F294();
      sub_10074F254();
      (*(v193 + 8))(v106, v194);
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v104 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        sub_100753E34();
      }

      sub_100743224();
      sub_1006D7BFC(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
      v107 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView;
      v108 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
      v109 = v104;
      if (v108)
      {
        [v108 removeFromSuperview];
        v108 = *&v56[v107];
      }

      *&v56[v107] = v104;
      v190 = v104;

      sub_1004D42AC();
    }

    goto LABEL_64;
  }

  (*(v202 + 104))(v204, enum case for VideoFillMode.scaleAspectFill(_:), v203);
  sub_10074EC14();
  sub_10074F2A4();
  v82 = v205;
  sub_100750504();

  (*(v58 + 56))(v82, 0, 1, v65);
  sub_10074EBB4();
  sub_10074EBF4();
  sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  v83 = v211;
  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  v84 = v233[0];
  sub_10074EB94();
  v85 = v208;
  sub_10074EC24();
  v86 = sub_100741264();
  (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
  v87 = v209;
  sub_10074EBE4();
  v88 = v210;
  sub_10074EBD4();
  type metadata accessor for VideoView(0);
  sub_1006D7BFC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  v231 = v84;
  v89 = sub_1007464A4();
  sub_10000C8CC(v88, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v87, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v85, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(v233, &unk_1009276E0, &unk_1007A5C70);
  sub_1004D644C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v91 = Strong;
    v92 = [v56 contentView];
    [v92 addSubview:v91];
  }

  [v56 setNeedsLayout];

  v93 = swift_unknownObjectWeakLoadStrong();
  if (v93)
  {
    v94 = v93;
    sub_10074EC14();
    sub_10074F374();

    sub_1006D7BFC(&unk_100923110, type metadata accessor for VideoView, &unk_1007BAFA8);
    sub_100744204();

    (*(v212 + 8))(v83, v213);
  }

  else
  {
    (*(v212 + 8))(v83, v213);
  }

  v77 = v229;
LABEL_65:
  v139 = v221;
  sub_100749384();
  v140 = v227;
  v141 = v220;
  (*(v227 + 104))(v220, v219, v77);
  sub_1006D7BFC(&qword_10092FB78, &type metadata accessor for EditorialSearchResultType, &protocol conformance descriptor for EditorialSearchResultType);
  sub_100753274();
  sub_100753274();
  if (v233[0] == v232[0] && v233[1] == v232[1])
  {
    v142 = *(v140 + 8);
    v142(v141, v77);
    v142(v139, v77);

    v143 = &selRef_initWithTitle_style_target_action_;
LABEL_69:
    v147 = sub_100749374();
    if (v147 >> 62)
    {
      v148 = sub_100754664();
    }

    else
    {
      v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v148)
    {
      v149 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
      v150 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
      if (v150)
      {
        goto LABEL_73;
      }

      v162 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v163 = *&v56[v149];
      if (v163)
      {
        [v163 removeFromSuperview];
        v164 = *&v56[v149];
      }

      else
      {
        v164 = 0;
      }

      *&v56[v149] = v162;
      v177 = v162;

      if (v177)
      {
        v178 = v177[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
        v177[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1000C95D0(v178);
        v179 = [v56 contentView];
        [v179 addSubview:v177];
      }

      [v56 setNeedsLayout];

      v180 = *&v56[v149];
      if (v180)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v181 = v180;
        sub_100752754();
        v182 = v233[0];
        v183 = v56;
        v184 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v185 = *&v181[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v186 = v185;
        sub_1000CAC84(v182);
        v187 = *&v181[v184];
        *&v181[v184] = v182;
        v56 = v183;
        v143 = &selRef_initWithTitle_style_target_action_;
        v188 = v182;

        sub_1000CADE8(v185);
        v189 = *&v56[v149];
        if (v189)
        {
          *(v189 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100878960;
          swift_unknownObjectWeakAssign();
          v150 = *&v56[v149];
          if (v150)
          {
LABEL_73:
            v151 = v150;
            v152 = [v56 contentView];
            [v152 bringSubviewToFront:v151];

            v153 = sub_100749374();
            sub_1000C94C4(v153);
          }
        }
      }
    }

    v154 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
    v155 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
    if (v155)
    {
      v156 = v155;
      v157 = sub_1007493B4();
      v158 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v159 = *&v156[v158];
      if (v159)
      {
        v160 = v143[51];
        v161 = v159;
        [v161 v160];
      }

      else
      {

        v156 = v157;
      }

      v165 = *&v56[v154];
      if (v165)
      {
        v166 = v165;
        v167 = v196;
        sub_100749364();
        v168 = sub_100746B84();
        (*(v197 + 8))(v167, v198);
        [v166 setOverrideUserInterfaceStyle:v168];
      }
    }

    v169 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
    v170 = *&v56[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
    if (v170)
    {
      v171 = v170;
      sub_100746E74();

      v172 = *&v56[v169];
      if (v172)
      {
        v173 = v172;
        if (!sub_1007493B4())
        {
          v174 = [objc_opt_self() clearColor];
        }

        sub_100746E64();
      }
    }
  }

  else
  {
    v144 = sub_100754754();
    v145 = v77;
    v146 = *(v140 + 8);
    v146(v141, v145);
    v146(v139, v145);

    v143 = &selRef_initWithTitle_style_target_action_;
    if (v144)
    {
      goto LABEL_69;
    }
  }

  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v175 = sub_100753E04();
  [v56 v143[51]];

  return [v56 setNeedsLayout];
}

uint64_t sub_1006D7B7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006D7BC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006D7BFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006D7C4C(void **a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_1002EA814(v10, a8, v11);
  sub_100750F34();
  sub_100750404();

  return a2;
}

id sub_1006D7CFC(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category) = v2;

  sub_1002E8FB4();

  return [v1 setNeedsLayout];
}

uint64_t sub_1006D7DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007433C4();
  sub_1006D8198(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1006D7E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v7 = sub_100750B04();
  sub_10000D0FC(v7, qword_1009820B0);
  sub_1007502D4();
  sub_100750564();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

double sub_1006D801C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_category))
  {

    sub_100745744();

    sub_10074F364();
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19PrivacyCategoryView_iconView);
    sub_1007433C4();
    sub_1006D8198(&qword_100926DB8, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
    v3 = v2;
    sub_1007544E4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_100416858(v5);
  }

  return result;
}

uint64_t sub_1006D8198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006D81E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1006D8218(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10074F6E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10074F704();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10074F694();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10074F694();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_1006D8580(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_10000C518(&qword_1009468C8, &unk_1007D6540);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_100946838] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_objectGraph] = a2;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_10074D104();
  if (v17)
  {
    v18 = sub_100753064();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents] + qword_100946838);
  sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = sub_100753FF4();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_1006DC7FC, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_1006D89DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents;
    v5 = [*(*(Strong + OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents) + qword_100946838) selectedSegmentIndex];
    v6 = &v3[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v8 = v3[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v6 = v5;
    v6[8] = 0;
    [*(*&v3[v4] + qword_100946838) setSelectedSegmentIndex:v5];
    if (v8)
    {
      sub_1006DB268();
    }

    else
    {
      sub_1006DB910(v5, v7);
    }
  }
}

id sub_1006D8ADC()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_100921B50 != -1)
  {
    swift_once();
  }

  sub_10074F6B4();
  (*(v3 + 8))(v8, v2);
  sub_10074F594();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_1006D8E20()
{
  v1 = v0;
  v39 = sub_10000C518(&qword_100946910, &qword_1007D6570);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_10000C518(&qword_100946918, &qword_1007D6578);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_10000C518(&qword_100946920, &qword_1007D6580);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_1006D8218(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v13 = sub_100753E04();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = sub_100753064();
    v16 = v41;
    if (v41)
    {
      v17 = sub_10000C888(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_100754734();
      (*(v18 + 8))(v21, v16);
      sub_10000C620(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_1006DAA68();

    sub_10074B874();
    sub_10000C518(&qword_100946928, &qword_1007D6588);
    sub_1006DDE34(&qword_100946930, &qword_100946928, &qword_1007D6588);
    sub_100752574();
    v29 = v36;
    sub_100752584();

    sub_10000C620(v40);
    (*(v37 + 8))(v29, v32);
    sub_10074D0E4();
    sub_10000C518(&qword_100946938, &qword_1007D6590);
    sub_1006DDE34(&qword_100946940, &qword_100946938, &qword_1007D6590);
    sub_100752574();
    v30 = v33;
    sub_100752584();

    sub_10000C620(v40);
    (*(v34 + 8))(v30, v38);
    sub_10074D0F4();
    sub_10000C518(&qword_100946948, qword_1007D6598);
    sub_1006DDE34(&unk_100946950, &qword_100946948, qword_1007D6598);
    sub_100752574();
    sub_100752584();

    sub_10000C620(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_1006D94DC(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1006DDF70;
}

uint64_t (*sub_1006D9540(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006DDF4C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000C0834;
}

uint64_t (*sub_1006D95D0(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1006DDEC0;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1006DDF1C;
}

id sub_1006D98C0(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController];
  if (!v2)
  {
    return sub_1006DABB4();
  }

  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    result = [v1 view];
    if (result)
    {
      v6 = result;
      [result bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v5 setFrame:{v8, v10, v12, v14}];
      return sub_1006DABB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006D9B9C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_1006DDE20;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1003ED3AC;
    v15 = &unk_100881758;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_1006DDE2C;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_1003ED3AC;
    v15 = &unk_100881780;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

void sub_1006D9D70(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1006D8218(*&a1, *&a2, 0);
  }
}

void sub_1006D9DE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1006DAA68();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1006DABB4();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1006DB268();
  }
}

void sub_1006D9F0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074D084();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v11)
    {
      [v11 setEnabled:1];
    }

    sub_1006DCA3C();
    v12 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10074B974();

    v14 = *&v2[v12];
    *&v2[v12] = 0;

    v15 = [v2 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v61 = v18;
      v62 = v20;
      v63 = v22;
      v64 = v24;
      v65 = 0;
      sub_10074B964();
      if (sub_10074B834())
      {
        sub_100746BF4();
      }

      sub_10074B824();

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
  {
    (*(v6 + 96))(v9, v5);
    v25 = *v9;
    v26 = v9[1];
    v27 = v9[2];
    sub_1006DCB34(v25, v28);
    sub_1000164A8(v26, v27);

    return;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v29 = objc_allocWithZone(sub_100750FC4());
    v30 = sub_100750FB4();
    v31 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10074B974();

    v33 = *&v2[v31];
    *&v2[v31] = v30;
    v34 = v30;

    v35 = [v2 view];
    if (!v35)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v36 = v35;
    [v35 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v61 = v38;
    v62 = v40;
    v63 = v42;
    v64 = v44;
    v65 = 0;
    sub_10074B964();

    v45 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v45)
    {
      [v45 setEnabled:0];
    }
  }

  else
  {
    v46 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController;
    v47 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_overlayViewController];
    sub_10074B974();

    v48 = *&v2[v46];
    *&v2[v46] = 0;

    v49 = [v2 view];
    if (!v49)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v50 = v49;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v61 = v52;
    v62 = v54;
    v63 = v56;
    v64 = v58;
    v65 = 0;
    sub_10074B964();
    v59 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v59)
    {
      [v59 setEnabled:1];
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_1006DA3BC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    sub_1007545C4();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = sub_100754664();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_1006D8ADC();
      v10 = v5++ != 0;
      v11 = sub_1006DDDA0(&qword_1009468D0, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v12 = sub_1006B94B0(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController(0));
      v13[qword_10093BF48] = v9;
      v13[qword_10093BF50] = v10;
      v2 = sub_10046D6AC(v8, v12);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = sub_100754664();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_100754574();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
        v20 = v32;
        v21 = sub_100753FC4();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_1006DABB4();
  sub_1006DB268();
  v30 = qword_100946838;
  v31 = *&v32[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_100946838) removeAllSegments];
  v23 = sub_10074D0B4();
  if (v23 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 > 1)
  {
    v24 = sub_10074D0B4();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            sub_100754574();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
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
              v3 = sub_100754664();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          sub_10074D5E4();
          if (v29)
          {
            v27 = sub_100753064();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = sub_100754664();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_1006DAA68();
}

void sub_1006DA92C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = sub_100753064()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_1006DAA68()
{
  v1 = sub_1006D8ADC();
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_100946838] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_1006DABB4()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_10074F704();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_initWithTitle_style_target_action_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_100921B50 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    sub_10074F6B4();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    sub_10074F694();
    v22 = v21;
    v61 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v66 = sub_100754664();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_100754664();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = sub_100754574();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_1006D8ADC();
      sub_100502930(v28, v25 != 0);
      if (v66 == 1)
      {
        sub_10074FC24();
      }

      sub_10074F674();
      v30 = v29;
      result = [v1 v12[134]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[134]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[134]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_1006D8ADC())
      {
        v2 = v68;
        sub_10074F634();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_1006D8ADC())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = sub_100754664();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = sub_100754574();

      goto LABEL_34;
    }

    if (v56 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_1006DB268()
{
  v1 = v0;
  v2 = sub_10074F6E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = sub_10074F704();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_100754664();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_initWithTitle_style_target_action_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = sub_100754574();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[134]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[134]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_100921B50 != -1)
      {
        swift_once();
      }

      v21 = v54;
      sub_10074F6B4();
      (*v48)(v8, v2);
      v3 = v21;
      sub_10074F594();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_initWithTitle_style_target_action_;
        if (!v25 || (v26 = v25, sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = sub_100753FC4(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_initWithTitle_style_target_action_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[134]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[134]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[134]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_initWithTitle_style_target_action_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
          v39 = v1;
          v3 = sub_100753FC4();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1006DB910(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = sub_100754574();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = sub_100754574();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr), v11 = v2, v12 = sub_100753FC4(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_1006DDD04;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_1000CF7B0;
      v29 = &unk_1008816E0;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_1006DDD24;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100144DD8;
      v29 = &unk_100881708;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}