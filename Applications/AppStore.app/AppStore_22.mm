void sub_1002758C0(char *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
    v10 = a1;
    [v9 setAlpha:a3];
    v11 = *&v10[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
    [v11 setAlpha:a3];
    v12 = v9;
    [v12 frame];
    [v12 setFrame:?];

    v13 = type metadata accessor for OfferButton();
    v33.receiver = v11;
    v33.super_class = v13;
    v14 = v11;
    objc_msgSendSuper2(&v33, "frame");
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v32.receiver = v14;
    v32.super_class = v13;
    objc_msgSendSuper2(&v32, "frame");
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v31.receiver = v14;
    v31.super_class = v13;
    v29 = objc_msgSendSuper2(&v31, "setFrame:", v16, a7, v18, v20);
    sub_1000F4A10(v22, v24, v26, v28, v29, v30);
  }
}

void sub_100275A2C(char *a1, char a2)
{
  if (a1)
  {
    v3 = *&a1[OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView];
    v4 = a1;
    [v3 frame];
    IsEmpty = CGRectIsEmpty(v12);
    v6 = 1;
    if (!IsEmpty && (a2 & 1) == 0)
    {
      v6 = v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility];
    }

    [v3 setHidden:v6];
    v7 = *&v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton];
    v11.receiver = v7;
    v11.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v11, "frame");
    v8 = CGRectIsEmpty(v13);
    v9 = 1;
    if (!v8 && (a2 & 1) == 0)
    {
      if ((ProductOfferButtonMode.isHidden.getter() & 1) != 0 || (v10 = ProductNavigationBarMode.rawValue.getter(), v10 == ProductNavigationBarMode.rawValue.getter()))
      {
        v9 = 1;
      }

      else
      {
        v9 = v4[OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1];
      }
    }

    [v7 setHidden:v9];
  }
}

void sub_100275B50(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1();
}

void sub_100275BB4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a2();

  if (a5)
  {
    a5();
  }
}

id sub_100275C3C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  if (a2)
  {

    v7 = String._bridgeToObjectiveC()();

    [v4 setText:v7];

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = [v3 traitCollection];
      v10 = UITraitCollection.isSizeClassCompact.getter();

      goto LABEL_8;
    }
  }

  else
  {
    [*&v2[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView] setText:0];
  }

  v10 = 1;
LABEL_8:
  [v4 setHidden:v10 & 1];

  return [v3 setNeedsLayout];
}

char *sub_100275E34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView;
  type metadata accessor for ArtworkView();
  *&v4[v11] = static ArtworkView.iconArtworkView.getter();
  v12 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  type metadata accessor for DynamicTypeLabel();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconWidth] = 0x4044000000000000;
  v13 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  v14 = type metadata accessor for AspectRatio();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v29.receiver = v5;
  v29.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v20 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  v21 = *&v19[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 _gkPreferredFontForTextStyle:UIFontTextStyleBody symbolicTraits:2];
  [v23 setFont:v24];

  [*&v19[v20] setNumberOfLines:1];
  v25 = *&v19[v20];
  v26 = [v19 traitCollection];

  LOBYTE(v23) = UITraitCollection.isSizeClassCompact.getter();
  [v25 setHidden:v23 & 1];

  [v19 addSubview:*&v19[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView]];
  [v19 addSubview:*&v19[v20]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B10D0;
  *(v27 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v27 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v19;
}

id sub_1002761BC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "layoutSubviews", v5);
  v8 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  swift_beginAccess();
  if (!(*(v4 + 48))(&v1[v8], 1, v3))
  {
    (*(v4 + 16))(v7, &v1[v8], v3);
    AspectRatio.height(fromWidth:)();
    (*(v4 + 8))(v7, v3);
  }

  v9 = *&v1[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  if ([v9 isHidden])
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidX(v21);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v22);
    return ArtworkView.frame.setter();
  }

  else
  {
    [v9 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v12 = v11;
    v14 = v13;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v23);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMidY(v24);
    ArtworkView.frame.setter();
    ArtworkView.frame.getter();
    v15 = CGRectGetMaxX(v25) + 10.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v26);
    LayoutMarginsAware<>.layoutFrame.getter();
    v17 = CGRectGetMaxX(v27) - v15;
    if (v17 >= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    return [v9 setFrame:{v15, MidY - v14 * 0.5, v18, v14}];
  }
}

id sub_100276524(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductTitleView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for ProductTitleView.IconTitleView(uint64_t a1)
{
  result = qword_10097C1F8;
  if (!qword_10097C1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100276640(uint64_t a1)
{
  sub_10007225C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1002766F0(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  if (v3)
  {
    v4 = 16.0;
  }

  else
  {
    v4 = 20.0;
  }

  [a1 layoutMargins];
  v6 = v5;
  [a1 layoutMargins];

  return [a1 setLayoutMargins:{v6, v4}];
}

void sub_1002767A0()
{
  v1 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView(0);
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_animationVerticalOffset) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_navigationBarMode) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButtonMode) = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapHandler);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v0 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100276890(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_iconTitleView);
  [v7 frame];
  if (CGRectIsEmpty(v33))
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility);
  }

  [v7 setHidden:v8];
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_offerButton);
  v10 = type metadata accessor for OfferButton();
  v32.receiver = v9;
  v32.super_class = v10;
  objc_msgSendSuper2(&v32, "frame");
  if (CGRectIsEmpty(v34) || (ProductOfferButtonMode.isHidden.getter() & 1) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC8AppStore16ProductTitleView_collisionVisibility + 1);
  }

  [v9 setHidden:v11];
  [v7 setAlpha:a2];
  [v9 setAlpha:a2];
  [v7 frame];
  [v7 setFrame:?];
  v31.receiver = v9;
  v31.super_class = v10;
  objc_msgSendSuper2(&v31, "frame");
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v30.receiver = v9;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "frame");
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v29.receiver = v9;
  v29.super_class = v10;
  v26 = objc_msgSendSuper2(&v29, "setFrame:", v13, a4, v15, v17);
  return sub_1000F4A10(v19, v21, v23, v25, v26, v27);
}

id sub_100276A58(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [a1 traitCollection];
    v10 = UITraitCollection.isSizeClassCompact.getter();
  }

  else
  {
LABEL_6:
    v10 = 1;
  }

  [v2 setHidden:v10 & 1];

  return [a1 setNeedsLayout];
}

void sub_100276B44()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconView;
  type metadata accessor for ArtworkView();
  *(v0 + v2) = static ArtworkView.iconArtworkView.getter();
  v3 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_appTitleView;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconWidth) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtCC8AppStore16ProductTitleViewP33_601B9F87A521249726497EC9B648F39D13IconTitleView_iconAspectRatio;
  v5 = type metadata accessor for AspectRatio();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100276C7C()
{
  result = qword_100982940;
  if (!qword_100982940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982940);
  }

  return result;
}

id sub_100276CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter) = a1;
  type metadata accessor for ImpressionsCalculator();

  BaseObjectGraph.optional<A>(_:)();
  *(v3 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_1000659FC(v8, a2);

  sub_100277CDC(&qword_10097C268, &unk_1007C3DFC);
  v10 = v9;
  dispatch thunk of SearchHintsPresenter.view.setter();

  return v10;
}

id sub_100276E70()
{
  v1 = v0;
  v2 = type metadata accessor for AutomationSemantics();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8AppStore35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_1000632CC(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_1000632E0(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_100028BB8();
    v28 = static UIColor.defaultBackground.getter();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v38 = String._bridgeToObjectiveC()();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v49, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return dispatch thunk of BasePresenter.didLoad()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002773BC(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_100277D1C;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1006D1458;
    v21[3] = &unk_1008BB718;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_100277668(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC8AppStore33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10027781C()
{
  if (*&v0[OBJC_IVAR____TtC8AppStore25SearchHintsViewController_impressionsCalculator])
  {
    ImpressionsCalculator.removeAllElements()();
  }

  sub_10002849C(&qword_100977128, &qword_1007BC2F8);
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    swift_getObjectType();
    dispatch thunk of ImpressionsTracker.removeAllImpressions()();
    swift_unknownObjectRelease();
  }

  v1 = [v0 collectionView];
  [v1 reloadData];
}

double sub_1002778E0()
{

  return result;
}

id sub_100277950(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

BOOL sub_100277A24()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_100277A6C()
{
  sub_10002849C(&qword_100977128, &qword_1007BC2F8);
  BaseObjectGraph.optional<A>(_:)();
  return v1;
}

double sub_100277AC8@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore25SearchHintsViewController_presenter);
  a1[3] = type metadata accessor for SearchHintsPresenter();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;

  return result;
}

uint64_t sub_100277B24(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10002B894(v5, &unk_100972A00, &unk_1007B3130);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100277CDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100277D24(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = type metadata accessor for ActionOutcome();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_10002C0AC(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_10002A400(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_100005A38(&v23, v26);
        sub_100005A38(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_10002A400(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_100007000(v27);
        return;
      }

      ++v7;
      sub_100007000(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    Promise.__allocating_init(value:)();
  }
}

uint64_t sub_100277F58()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100277FC0()
{
  result = qword_100986BA0;
  if (!qword_100986BA0)
  {
    type metadata accessor for FlowAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986BA0);
  }

  return result;
}

unint64_t sub_100278044()
{
  result = qword_100974C58;
  if (!qword_100974C58)
  {
    type metadata accessor for GameCenterActivityFeedCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C58);
  }

  return result;
}

double sub_10027809C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  v6 = sub_100079F24();
  swift_getObjectType();
  sub_10077DC28(v6, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1002781F0@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 32.0;
  }

  else
  {
    sub_100753DA8(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_1002783F4()
{
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v2 = *(v0 + 4);
  v3 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  *(inited + 40) = v2;
  *(inited + 64) = v3;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v4 = *(v0 + 5);
  v5 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = NSBaselineOffsetAttributeName;
  v6 = v0[6];
  v7 = objc_allocWithZone(NSNumber);
  v8 = NSFontAttributeName;
  v9 = v2;
  v10 = NSParagraphStyleAttributeName;
  v11 = v4;
  v12 = NSBaselineOffsetAttributeName;
  v13 = [v7 initWithDouble:v6];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(inited + 120) = v13;
  v14 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  return v14;
}

double sub_10027857C()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v42 - v7;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle + 8];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    if (*&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel])
    {
    }

    else
    {
      v17 = v0;
      v18 = qword_10096E1B8;

      if (v18 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for FontUseCase();
      v20 = sub_1000056A8(v19, qword_1009D14A8);
      v21 = *(v19 - 8);
      (*(v21 + 16))(v8, v20, v19);
      (*(v21 + 56))(v8, 0, 1, v19);
      (*(v2 + 104))(v4, enum case for DirectionalTextAlignment.none(_:), v1);
      v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v23 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v0 = v17;
      v24 = *&v17[v12];
      if (v24)
      {
        [v24 removeFromSuperview];
        v25 = *&v17[v12];
      }

      else
      {
        v25 = 0;
      }

      *&v17[v12] = v23;
      v26 = v23;

      v27 = [v17 contentView];
      [v27 addSubview:v26];

      [v17 setNeedsLayout];
    }

    v28 = &v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v29 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    if (v29)
    {
      v44 = v10;
      v30 = *v28;
      v31 = v28[1];
      v32 = v28[2];
      v33 = v28[3];
      v34 = v28[5];
      v35 = v28[6];
      v45 = *v28;
      v46 = v31;
      v47 = v32;
      v48 = v33;
      v49 = v29;
      v50 = v34;
      v51 = v35;
      v36 = *&v0[v12];
      if (v36)
      {
        sub_100279E9C(v30, v31, v32, v33, v29, v34);
        v43 = v36;
        sub_1002783F4();
        v42 = objc_allocWithZone(NSAttributedString);
        v37 = String._bridgeToObjectiveC()();

        type metadata accessor for Key(0);
        sub_100279EDC(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v39 = [v42 initWithString:v37 attributes:isa];

        v40 = v43;
        [v43 setAttributedText:v39];
        sub_100279A5C(v30, v31, v32, v33, v29, v34);
      }

      else
      {
      }
    }

    else
    {

      v41 = *&v0[v12];
      if (v41)
      {
        [v41 setAttributedText:0];
      }
    }
  }

  else
  {
LABEL_7:
    v13 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v13] = 0;

    [v0 setNeedsLayout];
  }

  return result;
}

void sub_100278A64()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView];
    v3 = v1;
    [v2 frame];
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
    v8 = CGRectGetWidth(v23) + -40.0;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    v9 = CGRectGetHeight(v24);
    v10 = v3;
    [v10 sizeThatFits:{v8, v9}];
    v12 = v11;
    v14 = v13;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    MinX = CGRectGetMinX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    if (v8 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v8;
    }

    if (v9 >= v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = v9;
    }

    [v10 setFrame:{MinX + 20.0, MidY + v14 * -0.5, v16, v17}];
  }

  v18 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v18)
  {
    v19 = *&v0[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView];
    v20 = v18;
    [v19 bounds];
    [v20 setFrame:?];
  }
}

double sub_100278D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TodayCard.Style();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StringCharacteristics();
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006160F8(a1, a2, a3);
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaBrandedSingleApp();
  if (swift_dynamicCastClass())
  {
    v38 = v11;
    v39 = v9;
    v40 = v8;
    v18 = [v4 traitCollection];
    v19 = UITraitCollection.isRegularPad.getter();

    TodayCard.titleCharacteristics.getter();
    static Locale.storefront.getter();
    sub_100279CAC(v19 & 1, v17, v14, v42);
    v20 = v43;
    v21 = &v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v22 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics];
    v23 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8];
    v24 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16];
    v25 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24];
    v27 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32];
    v26 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40];
    v28 = v42[1];
    *v21 = v42[0];
    *(v21 + 1) = v28;
    *(v21 + 2) = v42[2];
    *(v21 + 6) = v20;
    sub_100279E34(v42, v41);
    sub_100279A5C(v22, v23, v24, v25, v27, v26);
    [v4 setNeedsLayout];
    sub_100279E6C(v42);
    v29 = TodayCard.title.getter();
    v30 = &v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitle];
    *v30 = v29;
    v30[1] = v31;

    v32 = sub_10027857C();
    v33 = *&v4[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_brandedTitleLabel];
    if (v33)
    {
      v34 = v33;
      v35 = v38;
      TodayCard.style.getter();
      v36 = TodayCard.Style.cardTitleTextColor.getter();
      (*(v39 + 8))(v35, v40);
      [v34 setTextColor:v36];
    }

    [v4 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

double sub_100279050(uint64_t a1, uint64_t a2)
{
  sub_100616F20(a1, a2);
  type metadata accessor for TodayCard();
  sub_100279EDC(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v7)
  {
    TodayCard.media.getter();
    type metadata accessor for TodayCardMediaBrandedSingleApp();
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v3 = TodayCardMediaWithArtwork.artwork(for:)();

      if (v3)
      {
      }

      else
      {

        TodayCardMediaAppIcon.icon.getter();

        v4 = Artwork.config(_:mode:prefersLayeredImage:)();

        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1007B0B70;
        *(v5 + 32) = v4;

        ArtworkLoader.prefetchArtwork(using:)(v5);
      }
    }
  }

  return result;
}

id sub_100279248(uint64_t a1, uint64_t a2)
{
  sub_1006168F0(a1, a2);
  v3 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v2[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v2[v3] = 0;

  return [v2 setNeedsLayout];
}

double sub_1002792B4()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v21[-1] - v4;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  [v6 setImage:{0, v3}];
  [v6 setBackgroundColor:0];
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaBrandedSingleApp();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView;
    v8 = *&v0[OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v8[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = 0;
      v10 = v8;

      sub_100560E80();
      v11 = v10;
    }

    else
    {
      type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
      v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v14 = *&v1[v7];
      v15 = v13;
      if (v14)
      {
        [v14 removeFromSuperview];
        v16 = *&v1[v7];
      }

      else
      {
        v16 = 0;
      }

      *&v1[v7] = v13;
      v11 = v13;

      [*&v1[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:v11 atIndex:0];
      [v1 setNeedsLayout];

      v10 = 0;
    }

    v17 = v10;

    TodayCardMediaAppIcon.icon.getter();
    Artwork.style.getter();

    v18 = type metadata accessor for Artwork.Style();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    v19 = OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_style;
    swift_beginAccess();
    sub_100279A9C(v5, &v11[v19]);
    swift_endAccess();
    [v11 setNeedsLayout];
    sub_10002B894(v5, &unk_100987160, qword_1007D53C0);
    TodayCardMediaAppIcon.icon.getter();

    Artwork.config(_:mode:prefersLayeredImage:)();

    v20 = v11;
    type metadata accessor for BrandedAppTodayCardNoArtBackgroundView(0);
    sub_100279EDC(&qword_10097C360, type metadata accessor for BrandedAppTodayCardNoArtBackgroundView, &protocol conformance descriptor for NSObject);
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v21, &qword_10096FB90, &qword_1007B2A50);
  }

  else
  {
  }

  return result;
}

void sub_1002796AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
    if (v8)
    {
      v9 = v8;

      v10 = *&v9[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image];
      *&v9[OBJC_IVAR____TtC8AppStore38BrandedAppTodayCardNoArtBackgroundView_image] = a1;
      v11 = a1;

      v7 = v9;
      sub_100560E80();
    }
  }
}

void sub_1002797FC()
{
  sub_100279A5C(*(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 8), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 16), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 24), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 32), *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_layoutMetrics + 40));

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38BrandedAppTodayBrickCollectionViewCell_noArtBackgroundView);
}

uint64_t type metadata accessor for BrandedAppTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_10097C350;
  if (!qword_10097C350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10027999C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002799B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100279A00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100279A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
  }
}

uint64_t sub_100279A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100987160, qword_1007D53C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100279B14()
{
  v0 = type metadata accessor for StringCharacteristics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1.5;
  if ((Locale.isChinese.getter() & 1) == 0 && (Locale.isJapanese.getter() & 1) == 0 && (Locale.isKorean.getter() & 1) == 0)
  {
    static StringCharacteristics.extraTallCharacters.getter();
    sub_100279EDC(&qword_10097C368, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v5 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v6 = *(v1 + 8);
    v6(v3, v0);
    if ((v5 & 1) == 0)
    {
      static StringCharacteristics.accentedCharacters.getter();
      v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v6(v3, v0);
      if (v7)
      {
        return 1.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v4;
}

double sub_100279CAC@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  if (a1)
  {
    v9 = 48.0;
  }

  else
  {
    v9 = 30.0;
  }

  v10 = 38.0;
  if (a1)
  {
    v10 = 60.0;
    v11 = -12.0;
  }

  else
  {
    v11 = -8.0;
  }

  v12 = [v8 systemFontOfSize:v10 weight:UIFontWeightBold];
  v13 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v14 = v9 * sub_100279B14();
  [v13 setMinimumLineHeight:v14];
  [v13 setMaximumLineHeight:v14];
  v15 = type metadata accessor for Locale();
  (*(*(v15 - 8) + 8))(a3, v15);
  v16 = type metadata accessor for StringCharacteristics();
  (*(*(v16 - 8) + 8))(a2, v16);
  result = 60.0;
  *a4 = xmmword_1007C4000;
  *(a4 + 16) = xmmword_1007C4010;
  *(a4 + 32) = v12;
  *(a4 + 40) = v13;
  *(a4 + 48) = v11;
  return result;
}

void sub_100279E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    v6 = a5;

    v7 = a6;
  }
}

uint64_t sub_100279EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100279F24(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v174 = a3;
  v156 = a2;
  v170 = a1;
  ObjectType = swift_getObjectType();
  v159 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v6 - 8);
  v160 = &v156 - v7;
  v164 = sub_10002849C(&qword_10097C370, &qword_1007C4158);
  __chkstk_darwin(v164);
  v173 = &v156 - v8;
  v9 = sub_10002849C(&qword_100973AC8, &unk_1007C7EC0);
  __chkstk_darwin(v9 - 8);
  v161 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v156 - v12;
  __chkstk_darwin(v13);
  v171 = &v156 - v14;
  v15 = type metadata accessor for OfferLabelStyle();
  v16 = *(v15 - 8);
  v167 = v15;
  v168 = v16;
  __chkstk_darwin(v15);
  v162 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v163 = &v156 - v19;
  v20 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v20 - 8);
  v175 = &v156 - v21;
  v22 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v22 - 8);
  v172 = &v156 - v23;
  v24 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v24 - 8);
  v26 = &v156 - v25;
  v27 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v27 - 8);
  v29 = &v156 - v28;
  v30 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v30 - 8);
  v32 = &v156 - v31;
  v33 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  *&v38 = __chkstk_darwin(v37 - 8).n128_u64[0];
  v40 = &v156 - v39;
  v41 = [v3 traitCollection];
  LODWORD(v169) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v42 = *(v34 + 104);
  v42(v36, enum case for OfferButtonPresenterViewAlignment.right(_:), v33);
  v42(v32, enum case for OfferButtonPresenterViewAlignment.left(_:), v33);
  (*(v34 + 56))(v32, 0, 1, v33);
  sub_10027BEC8(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v43 = v170;
  v44 = v4;
  AccessibilityConditional.init(value:axValue:)();
  v45 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v45 - 8) + 56))(v40, 0, 1, v45);
  v46 = type metadata accessor for OfferStyle();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = type metadata accessor for OfferEnvironment();
  (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
  v48 = type metadata accessor for OfferTint();
  v49 = v172;
  (*(*(v48 - 8) + 56))(v172, 1, 1, v48);
  v50 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v51 = v175;
  (*(*(v50 - 8) + 56))(v175, 1, 1, v50);
  sub_1004F3190(v43, v4, v40, v174, 0, (v169 & 1) == 0, v29, v26, v49, v51);
  sub_10002B894(v51, &unk_100970150, &unk_1007BDDD0);
  sub_10002B894(v49, &unk_100973AD0, &unk_1007B17C0);
  sub_10002B894(v26, &unk_100970160, &unk_1007BDDE0);
  sub_10002B894(v29, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v40, &unk_100973230, &unk_1007B17E0);
  type metadata accessor for MixedMediaLockup();
  v52 = swift_dynamicCastClass();
  if (v52)
  {
  }

  v53 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v54 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v55 = v173;
  v56 = v171;
  if (v54 && ([v54 isHidden] & 1) == 0 && (v57 = *&v4[v53]) != 0)
  {
    LODWORD(v172) = [v57 hasContent];
  }

  else
  {
    LODWORD(v172) = 0;
  }

  v58 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v59 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v59 && ([v59 isHidden] & 1) == 0 && (v60 = *&v4[v58]) != 0)
  {
    LODWORD(v175) = [v60 hasContent];
  }

  else
  {
    LODWORD(v175) = 0;
  }

  if (Lockup.searchAdOpportunity.getter() && (v61 = SearchAdOpportunity.searchAd.getter(), , v61))
  {
  }

  else
  {
    v62 = type metadata accessor for Feature();
    v177 = v62;
    v178 = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v63 = sub_1000056E0(v176);
    (*(*(v62 - 8) + 104))(v63, enum case for Feature.search_tags(_:), v62);
    LOBYTE(v62) = isFeatureEnabled(_:)();
    sub_100007000(v176);
    if ((v62 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (v172)
  {
    [*&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    v64 = *&v4[v58];
    if (v64)
    {
      [v64 setHidden:1];
    }
  }

  else if (v175)
  {
    v65 = *&v4[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    LODWORD(v175) = 1;
    [v65 setHidden:1];
    goto LABEL_23;
  }

  LODWORD(v175) = 0;
LABEL_23:
  v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale] = Lockup.useAdsLocale.getter() & 1;
  if (v52)
  {

    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = MixedMediaLockup.showMetadataInformationInLockup.getter() & 1;
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute] = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter() & 1;
    v66 = type metadata accessor for Feature();
    v177 = v66;
    v178 = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v67 = sub_1000056E0(v176);
    (*(*(v66 - 8) + 104))(v67, enum case for Feature.search_tags(_:), v66);
    LOBYTE(v66) = isFeatureEnabled(_:)();
    sub_100007000(v176);
    if (v66 & 1) != 0 && (MixedMediaLockup.showMetadataInformationInLockup.getter())
    {
      if (Lockup.offerDisplayProperties.getter())
      {
        v68 = v163;
        OfferDisplayProperties.offerLabelStyle.getter();
        v69 = v167;
        v70 = v168;
        v71 = v162;
        (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
        sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        v72 = dispatch thunk of static Equatable.== infix(_:_:)();
        v73 = *(v70 + 8);
        v73(v71, v69);
        v73(v68, v69);
        if ((v72 & 1) == 0)
        {
          v137 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
          v138 = 1.0;
          if (!v44[v137])
          {
            v138 = 0.0;
          }

          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v138, v156}];
          v139 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
          sub_1000A9F50(v139);

          goto LABEL_98;
        }
      }

      v74 = Lockup.rating.getter();
      if (v74)
      {
        v75 = v74;
        Lockup.ratingCount.getter();
        if (v76)
        {
          v77 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 1;
          v78 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:1.0];
          v79 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
          v80 = 0.0;
          if (v44[v77])
          {
            v80 = 1.0;
          }

          [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v80, v156}];
          v81 = *&v44[v78];
          [v75 floatValue];
          sub_1003A2E44(v82);

          v83 = *&v44[v79];
          v84 = String._bridgeToObjectiveC()();

          [v83 setText:v84];

          v85 = Lockup.isEditorsChoice.getter();
          v86 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
          v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = v85 & 1;
          sub_1000A9F50(v86);

          goto LABEL_98;
        }
      }

      v145 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
      v146 = 1.0;
      if (!v44[v145])
      {
        v146 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:v146];
      v147 = Lockup.isEditorsChoice.getter();
      v148 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = v147 & 1;
      sub_1000A9F50(v148);
      goto LABEL_98;
    }

    v169 = v52;
    v87 = v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_1000A9F50(v87);
    v88 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v89 = 1.0;
    if (!v4[v88])
    {
      v89 = 0.0;
    }

    [*&v4[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v89, v156}];
    if (Lockup.offerDisplayProperties.getter())
    {
      OfferDisplayProperties.offerLabelStyle.getter();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v98 = v166;
    v99 = v167;
    v100 = v168;
    v101 = *(v168 + 56);
    v101(v56, v90, 1, v167);
    (*(v100 + 104))(v98, enum case for OfferLabelStyle.arcadeComingSoon(_:), v99);
    v101(v98, 0, 1, v99);
    v102 = *(v164 + 48);
    sub_100031660(v56, v55, &qword_100973AC8, &unk_1007C7EC0);
    sub_100031660(v98, v55 + v102, &qword_100973AC8, &unk_1007C7EC0);
    v103 = *(v100 + 48);
    if (v103(v55, 1, v99) == 1)
    {
      sub_10002B894(v98, &qword_100973AC8, &unk_1007C7EC0);
      v55 = v173;
      sub_10002B894(v56, &qword_100973AC8, &unk_1007C7EC0);
      if (v103(v55 + v102, 1, v99) == 1)
      {
        sub_10002B894(v55, &qword_100973AC8, &unk_1007C7EC0);
LABEL_98:
        v149 = MixedMediaLockup.searchTagRibbonItems.getter();
        if (v149)
        {
          v150 = v149;
          if (sub_1004849E0(v149, 0))
          {
            v151 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
            sub_100044DF8(v150, v151 & 1, v174);
          }
        }

        goto LABEL_108;
      }
    }

    else
    {
      v104 = v161;
      sub_100031660(v55, v161, &qword_100973AC8, &unk_1007C7EC0);
      if (v103(v55 + v102, 1, v99) != 1)
      {
        v106 = v56;
        v107 = v55;
        v108 = v168;
        v109 = v107 + v102;
        v110 = v163;
        (*(v168 + 32))(v163, v109, v99);
        sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
        LODWORD(v170) = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v108 + 8);
        v111(v110, v99);
        sub_10002B894(v166, &qword_100973AC8, &unk_1007C7EC0);
        sub_10002B894(v106, &qword_100973AC8, &unk_1007C7EC0);
        v111(v104, v99);
        sub_10002B894(v107, &qword_100973AC8, &unk_1007C7EC0);
        if (v170)
        {
          goto LABEL_98;
        }

LABEL_59:
        if (v172)
        {
          [*&v44[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:0];
          v105 = *&v44[v58];
          if (v105)
          {
            [v105 setHidden:0];
          }
        }

        else if (v175)
        {
          [*&v44[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:0];
        }

        goto LABEL_98;
      }

      sub_10002B894(v166, &qword_100973AC8, &unk_1007C7EC0);
      sub_10002B894(v56, &qword_100973AC8, &unk_1007C7EC0);
      (*(v168 + 8))(v104, v99);
    }

    sub_10002B894(v55, &qword_10097C370, &qword_1007C4158);
    goto LABEL_59;
  }

  if (!swift_dynamicCastClass())
  {
LABEL_68:
    if (Lockup.offerDisplayProperties.getter())
    {
      v112 = v163;
      OfferDisplayProperties.offerLabelStyle.getter();
      v113 = v167;
      v114 = v168;
      v115 = v162;
      (*(v168 + 104))(v162, enum case for OfferLabelStyle.none(_:), v167);
      sub_10027BEC8(&unk_100987B00, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
      v116 = dispatch thunk of static Equatable.== infix(_:_:)();
      v117 = *(v114 + 8);
      v117(v115, v113);
      v117(v112, v113);
      if ((v116 & 1) == 0)
      {
        v122 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
        v123 = 1.0;
        if (!v44[v122])
        {
          v123 = 0.0;
        }

        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v123, v156}];
        v124 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_1000A9F50(v124);

        goto LABEL_108;
      }
    }

    if ((v172 | v175))
    {
      if (!Lockup.searchAdOpportunity.getter())
      {
        goto LABEL_104;
      }

      v118 = SearchAdOpportunity.searchAd.getter();

      if (!v118)
      {
        goto LABEL_104;
      }
    }

    if (Lockup.isEditorsChoice.getter())
    {
      v119 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
      v120 = 1.0;
      if (!v44[v119])
      {
        v120 = 0.0;
      }

      [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v120, v156}];
      v121 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
      v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 1;
LABEL_107:
      sub_1000A9F50(v121);
LABEL_108:
      [v44 setNeedsLayout];

      return;
    }

    v125 = Lockup.rating.getter();
    if (v125)
    {
      v126 = v125;
      Lockup.ratingCount.getter();
      if (v127)
      {
        v128 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
        sub_1000A9F50(v128);
        v129 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
        v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 1;
        v130 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:1.0];
        v131 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
        v132 = 0.0;
        if (v44[v129])
        {
          v132 = 1.0;
        }

        [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v132, v156}];
        v133 = *&v44[v130];
        [v126 floatValue];
        sub_1003A2E44(v134);

        v135 = *&v44[v131];
        v136 = String._bridgeToObjectiveC()();

        [v135 setText:v136];

        goto LABEL_108;
      }
    }

LABEL_104:
    v152 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:{0.0, v156}];
    v153 = 1.0;
    if (!v44[v152])
    {
      v153 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:v153];
    v121 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    goto LABEL_107;
  }

  v91 = MixedMediaLockup.metadataRibbonItems.getter();
  if (!v91)
  {

    goto LABEL_68;
  }

  v92 = v91;
  if ((sub_1004849E0(0, v91) & 1) == 0)
  {

    goto LABEL_68;
  }

  if (MixedMediaLockup.screenshots.getter() >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v93 = MixedMediaLockup.trailers.getter();
  v94 = v160;
  if (!(v93 >> 62))
  {
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_50:

    sub_100031660(v156, v94, &unk_1009731E0, &unk_1007B0B60);
    v96 = type metadata accessor for ItemLayoutContext();
    v97 = *(v96 - 8);
    if ((*(v97 + 48))(v94, 1, v96) == 1)
    {
      sub_10002B894(v94, &unk_1009731E0, &unk_1007B0B60);
    }

    else
    {
      type metadata accessor for BundleSearchResult();
      sub_10027BEC8(&qword_10097C378, &type metadata accessor for BundleSearchResult, &protocol conformance descriptor for SearchResult);
      ItemLayoutContext.typedModel<A>(is:)();
      (*(v97 + 8))(v94, v96);
    }

    v140 = v159;
    v141 = v157;
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    sub_100328B9C(v92, v141, v174);

    (*(v158 + 8))(v141, v140);
    v142 = v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice];
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
    sub_1000A9F50(v142);
    v143 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings;
    v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView] setAlpha:0.0];
    v144 = 1.0;
    if (!v44[v143])
    {
      v144 = 0.0;
    }

    [*&v44[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel] setAlpha:{v144, v156}];

    goto LABEL_108;
  }

  v154 = v93;
  v155 = _CocoaArrayWrapper.endIndex.getter();
  v93 = v154;
  if (!v155)
  {
    goto LABEL_50;
  }

LABEL_45:
  if ((v93 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_48:

    v95 = Trailers.videos.getter();

    if (v95 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    goto LABEL_50;
  }

  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_48;
  }

  __break(1u);
}

double sub_10027B8BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_1000AA0AC([v6 init]);
    v7 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      SearchAd.adTransparencyAction.getter();
      Action.title.getter();
      v11 = v10;

      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_1009750A8];
        v19 = *&v16[qword_1009750A8];
        v20 = *&v16[qword_1009750A8 + 8];
        *v18 = sub_10027BEC0;
        v18[1] = v17;

        v21 = v16;

        sub_10001F63C(v19, v20);
      }
    }

    v22 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
    if (v22)
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      v23 = v22;
      v24 = static UIColor.secondaryText.getter();
      [v23 setTintColor:v24];
    }

    v25 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v26 = static UIColor.secondaryText.getter();
    [v25 setTextColor:v26];

    v27 = type metadata accessor for Feature();
    v40[3] = v27;
    v40[4] = sub_10027BEC8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v28 = sub_1000056E0(v40);
    (*(*(v27 - 8) + 104))(v28, enum case for Feature.search_tags(_:), v27);
    LOBYTE(v26) = isFeatureEnabled(_:)();
    sub_100007000(v40);
    v29 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    if (v26)
    {
      v30 = static UIColor.secondaryText.getter();
    }

    else
    {
      v30 = static UIColor.tertiaryText.getter();
    }

    v31 = v30;
    [v29 setTextColor:v30];

    SearchAd.advertisingText.getter();
    v33 = v32;
    v34 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
    v35 = [v34 superview];
    if (!v35 || (v36 = v35, sub_100005744(0, &qword_100972EB0, UIView_ptr), v37 = v3, v38 = static NSObject.== infix(_:_:)(), v36, v37, (v38 & 1) == 0))
    {
      [v3 addSubview:v34];
    }

    [v34 setHidden:v33 == 0];
    if (v33)
    {
      v39 = String._bridgeToObjectiveC()();
    }

    else
    {
      v39 = 0;
    }

    [v34 setText:v39];

    [v3 setNeedsLayout];
    v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 1;
    sub_1000AA154();
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 0;
    sub_1000AA154();
    v13 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_10027BD48(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_10027BEC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10027BF1C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

void sub_10027BF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v99 = a3;
  v9 = type metadata accessor for Paragraph.Alignment();
  v101 = *(v9 - 8);
  __chkstk_darwin(v9);
  v93 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v93 - v12;
  __chkstk_darwin(v14);
  v95 = &v93 - v15;
  __chkstk_darwin(v16);
  v94 = &v93 - v17;
  v18 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v96 = &v93 - v22;
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v93 - v28;
  v102 = v6;
  [v6 bounds];
  v31.n128_u64[0] = v30;
  sub_10012BA18(v31, a1, a6);
  v33 = v32;
  v98 = a1;
  v34 = ProductDescription.paragraph.getter();
  sub_10002849C(&qword_100975770, &qword_1007BA170);
  sub_100135E58();
  WritableStateLens<A>.currentValue.getter();
  v35 = aBlock;
  if (aBlock == 2)
  {
    v35 = Paragraph.isCollapsed.getter();
  }

  v97 = v9;
  v100 = v34;
  if ((v35 & v33 & 1) == 0)
  {
    v95 = v13;
    v55 = Paragraph.text.getter();
    v56 = [a6 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_10010279C;
    *(v60 + 24) = v59;
    v107 = sub_1001027AC;
    v108 = v60;
    aBlock = _NSConcreteStackBlock;
    v104 = 1107296256;
    v105 = sub_1006606C4;
    v106 = &unk_1008BB908;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v29 = v96;
      v44 = *&v102[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      Paragraph.alignment.getter();
      v65 = v97;
      (*(v101 + 56))(v29, 0, 1, v97);
      v66 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_1005A0320();
      }

      v52 = v70;
      sub_10059FCD8(v70);
      v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_10027D5B8(v29, v20);
      v71 = v101;
      if ((*(v101 + 48))(v20, 1, v65) != 1)
      {
        v77 = v95;
        (*(v71 + 32))(v95, v20, v65);
        v78 = v93;
        (*(v71 + 16))(v93, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v102;
        }

        else
        {
          v72 = v102;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v95, v65);
        goto LABEL_39;
      }

      v54 = v20;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return;
  }

  v36 = Paragraph.collapsedText.getter();
  v37 = [a6 traitCollection];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v96 = [v36 length];
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = v37;
  *(v39 + 32) = v38;
  *(v39 + 40) = 1;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100126854;
  *(v40 + 24) = v39;
  v107 = sub_100126848;
  v108 = v40;
  aBlock = _NSConcreteStackBlock;
  v104 = 1107296256;
  v105 = sub_1006606C4;
  v106 = &unk_1008BB9A8;
  v41 = _Block_copy(&aBlock);
  v42 = v37;
  v43 = v38;

  [v36 enumerateAttributesInRange:0 options:v96 usingBlock:{0x100000, v41}];

  _Block_release(v41);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v102[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v43;
  Paragraph.alignment.getter();
  v46 = v97;
  (*(v101 + 56))(v29, 0, 1, v97);
  v47 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_1005A0320();
  }

  v52 = v51;
  sub_10059FCD8(v51);
  v44[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_10027D5B8(v29, v25);
  v53 = v101;
  if ((*(v101 + 48))(v25, 1, v46) != 1)
  {
    v73 = v94;
    (*(v53 + 32))(v94, v25, v46);
    v74 = v95;
    (*(v53 + 16))(v95, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v102;
    }

    else
    {
      v72 = v102;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v95, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v25;
LABEL_14:
  sub_10002B894(v54, &qword_10097C3F0, &qword_1007C4208);
  v72 = v102;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10002B894(v29, &qword_10097C3F0, &qword_1007C4208);
  ProductDescription.tags.getter();
  type metadata accessor for RibbonBarItem();
  v81 = Array.isNotEmpty.getter();

  v82 = v99;
  if (v81)
  {
    v83 = ProductDescription.tags.getter();
    v84 = ProductDescription.numberOfTagRowsStandard.getter();
    v85 = ProductDescription.numberOfTagRowsAX.getter();
    sub_1005EC638(v83, v84, v85, v82);
  }

  v86 = ProductDescription.developerAction.getter();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC8AppStore36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    Action.title.getter();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    v90 = &v87[OBJC_IVAR____TtC8AppStore17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC8AppStore17DeveloperLinkView_tapHandler];
    v92 = *&v87[OBJC_IVAR____TtC8AppStore17DeveloperLinkView_tapHandler + 8];
    *v90 = sub_10027D628;
    v90[1] = v89;
    sub_10001F63C(v91, v92);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_10027CB58(uint64_t a1, uint64_t a2)
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

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_10027CCB8()
{
  sub_10002849C(&qword_100975770, &qword_1007BA170);
  sub_100135E58();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

uint64_t sub_10027CD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

unint64_t sub_10027CEC8()
{
  result = qword_10097C3D8;
  if (!qword_10097C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C3D8);
  }

  return result;
}

unint64_t sub_10027CF20()
{
  result = qword_10097C3E0;
  if (!qword_10097C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C3E0);
  }

  return result;
}

void sub_10027CF74(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for ProductDescriptionLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductDescriptionLayout();
  v46 = *(v8 - 8);
  v47 = v8;
  __chkstk_darwin(v8);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_10097C3F8, &qword_1007C4210);
  sub_100135E58();
  StateLens<A>.currentValue.getter();
  v10 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    ProductDescription.paragraph.getter();
    v10 = Paragraph.isCollapsed.getter();
  }

  v43 = ProductDescription.paragraph.getter();
  if (v10)
  {
    v11 = Paragraph.collapsedText.getter();
    v41 = 3;
  }

  else
  {
    v11 = Paragraph.text.getter();
    v41 = 0;
  }

  v48 = a5;
  v12 = [a5 traitCollection];
  v13 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v11];
  v49 = [v11 length];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  *(v14 + 40) = 1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100126854;
  *(v15 + 24) = v14;
  v59 = sub_100126848;
  v60 = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v58 = &unk_1008BBA20;
  v16 = _Block_copy(aBlock);
  v17 = v12;
  v18 = v13;

  v42 = v11;
  [v11 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v18;
    v21 = ProductDescription.tags.getter();
    v22 = ProductDescription.numberOfTagRowsStandard.getter();
    v23 = ProductDescription.numberOfTagRowsAX.getter();
    if (ProductDescription.developerAction.getter())
    {
      v49 = Action.title.getter();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v29 = v20;
    v30 = LayoutViewPlaceholder.init(measureWith:)();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = LayoutViewPlaceholder.init(measureWith:)();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = LayoutViewPlaceholder.init(measureWith:)();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    type metadata accessor for RibbonBarItem();
    LOBYTE(v34) = Array.isNotEmpty.getter();

    if (v34)
    {
      sub_10002C0AC(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_100129F58(v44);
    sub_10002C0AC(aBlock, &v52);
    sub_10002C0AC(v56, &v51);
    sub_10002C0AC(v55, &v50);
    v38 = v45;
    ProductDescriptionLayout.init(metrics:bodyText:tagRibbon:developerLink:)();
    sub_10027D630(&qword_10097C400, &type metadata accessor for ProductDescriptionLayout, &protocol conformance descriptor for ProductDescriptionLayout);
    v39 = v47;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v46 + 8))(v38, v39);
    sub_10002B894(v53, &qword_100975610, &qword_1007B5690);
    sub_100007000(v55);
    sub_100007000(v56);
    sub_100007000(aBlock);
  }
}

uint64_t sub_10027D5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027D630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr1008A96D1C5StateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_10027D744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPreviewDestination.ContentType();
  __chkstk_darwin(v8 - 8);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for FlowPage();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = a2;
    v43 = a1;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    v20 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      v22 = &qword_100977FB8;
      v23 = &unk_1007C4330;
      v24 = v16;
LABEL_11:
      sub_10002B894(v24, v22, v23);
      a2 = v19;
      goto LABEL_16;
    }

    ReadOnlyLens.value.getter();
    (*(v21 + 8))(v16, v20);
    sub_100005A38(&v49, v51);
    sub_10002C0AC(v51, v47);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    sub_10002849C(&qword_10097C550, &qword_1007C43B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      sub_100007000(v51);
      v22 = &qword_10097C558;
      v23 = qword_1007C43C0;
      v24 = &v44;
      goto LABEL_11;
    }

    sub_100005A38(&v44, &v49);
    sub_10002A400(&v49, v50);
    a2 = v19;
    if (dispatch thunk of ClickableModel.clickAction.getter())
    {
      type metadata accessor for FlowAction();
      v25 = swift_dynamicCastClass();
      if (v25)
      {
        v26 = v40;
        v38 = v25;
        FlowAction.page.getter();
        v27 = FlowPage.isPreviewingSupported.getter();
        (*(v41 + 8))(v26, v42);
        if ((v27 & 1) == 0)
        {
          sub_100007000(v51);

          goto LABEL_15;
        }

        sub_10002C0AC(v51, v47);
        type metadata accessor for TodayCard();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10002A400(&v49, v50);

          dispatch thunk of ClickableModel.clickSender.getter();
          sub_10027E0AC(v51, v39);
          FlowPreviewDestination.init(flowAction:sender:contentType:)();

          sub_100007000(v51);
          v37 = type metadata accessor for FlowPreviewDestination();
          (*(*(v37 - 8) + 56))(a2, 0, 1, v37);
          return sub_100007000(&v49);
        }
      }
    }

    sub_100007000(v51);
LABEL_15:
    sub_100007000(&v49);
  }

LABEL_16:
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_29:
    v35 = type metadata accessor for FlowPreviewDestination();
    return (*(*(v35 - 8) + 56))(a2, 1, 1, v35);
  }

  v29 = v28;
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  (*(v5 + 8))(v7, v4);
  v30 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v13, 1, v30) == 1)
  {
    sub_10002B894(v13, &qword_100977FB8, &unk_1007C4330);
    goto LABEL_29;
  }

  ReadOnlyLens.value.getter();
  (*(v31 + 8))(v13, v30);
  sub_100005A38(&v49, v51);
  sub_10002C0AC(v51, v47);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10097C538, &qword_1007C43A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    sub_100007000(v51);
    sub_10002B894(&v44, &qword_10097C540, &qword_1007C43A8);
    goto LABEL_29;
  }

  sub_100005A38(&v44, &v49);
  sub_10002A400(&v49, v50);
  IndexPath.item.getter();
  dispatch thunk of NestedShelfClickableModel.click(for:)();
  if (!v44)
  {
    sub_100007000(v51);
    sub_10002B894(&v44, &qword_10097C548, &qword_1007C43B0);
    sub_100007000(&v49);
    goto LABEL_29;
  }

  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_100031660(v47, &v44, &qword_10097C510, &qword_1007C4328);
  type metadata accessor for FlowAction();
  if (!swift_dynamicCastClass())
  {

    sub_10002B894(v47, &qword_10097C510, &qword_1007C4328);
    sub_100007000(v51);
    sub_10002B894(&v44 + 8, &unk_1009711D0, &unk_1007B1A10);
LABEL_28:
    sub_100007000(&v49);
    goto LABEL_29;
  }

  sub_10002B894(&v44 + 8, &unk_1009711D0, &unk_1007B1A10);
  v32 = v40;
  FlowAction.page.getter();
  v33 = FlowPage.isPreviewingSupported.getter();
  (*(v41 + 8))(v32, v42);
  if ((v33 & 1) == 0)
  {

    sub_10002B894(v47, &qword_10097C510, &qword_1007C4328);
    sub_100007000(v51);
    goto LABEL_28;
  }

  sub_100031660(v47, &v44, &qword_10097C510, &qword_1007C4328);

  sub_10027E0AC(v51, v39);
  FlowPreviewDestination.init(flowAction:sender:contentType:)();

  sub_10002B894(v47, &qword_10097C510, &qword_1007C4328);
  sub_100007000(v51);
  v34 = type metadata accessor for FlowPreviewDestination();
  (*(*(v34 - 8) + 56))(a2, 0, 1, v34);
  return sub_100007000(&v49);
}

uint64_t sub_10027E0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10002C0AC(a1, v8);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  type metadata accessor for Review();
  if (swift_dynamicCast() || (type metadata accessor for ReviewsContainer(), swift_dynamicCast()))
  {

    sub_100007000(v8);
    v3 = enum case for FlowPreviewDestination.ContentType.source(_:);
    v4 = type metadata accessor for FlowPreviewDestination.ContentType();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  else
  {
    v6 = enum case for FlowPreviewDestination.ContentType.flowDestination(_:);
    v7 = type metadata accessor for FlowPreviewDestination.ContentType();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    return sub_100007000(v8);
  }
}

uint64_t sub_10027E1E8(uint64_t a1)
{
  v37 = type metadata accessor for IndexPath();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v3 - 8);
  v35 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  v11 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_7;
  }

  v16 = Strong;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_7:
    v17 = &qword_100977FB8;
    v18 = &unk_1007C4330;
    v19 = v10;
LABEL_8:
    sub_10002B894(v19, v17, v18);
    goto LABEL_9;
  }

  (*(v12 + 32))(v14, v10, v11);
  ReadOnlyLens.value.getter();
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10097C520, &qword_1007C4388);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v12 + 8))(v14, v11);
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v17 = &qword_10097C528;
    v18 = &qword_1007C4390;
    v19 = &v40;
    goto LABEL_8;
  }

  sub_100005A38(&v40, v43);
  ReadOnlyLens.value.getter();
  type metadata accessor for TodayCard();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10002A400(v43, v44);
    v22 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();
    (*(v12 + 8))(v14, v11);
    goto LABEL_33;
  }

  (*(v12 + 8))(v14, v11);

  sub_100007000(v43);
LABEL_9:
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    (*(v12 + 56))(v7, 1, 1, v11);
    goto LABEL_16;
  }

  v21 = v20;
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  (*(v36 + 8))(v2, v37);
  if ((*(v12 + 48))(v7, 1, v11) == 1)
  {
LABEL_16:
    sub_10002B894(v7, &qword_100977FB8, &unk_1007C4330);
    goto LABEL_17;
  }

  sub_10002849C(&qword_10097C530, &qword_1007C4398);
  if (!swift_dynamicCast())
  {
LABEL_17:
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    goto LABEL_18;
  }

  if (!*(&v47 + 1))
  {
LABEL_18:
    sub_10002B894(&v46, &qword_10097C518, &qword_1007C4378);
    goto LABEL_19;
  }

  sub_100005A38(&v46, v43);
  sub_10002A400(v43, v44);
  IndexPath.item.getter();
  dispatch thunk of ComponentModelContainment.model(at:)();
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10097C520, &qword_1007C4388);
  if (swift_dynamicCast())
  {
    sub_100005A38(v38, &v46);
    sub_10002A400(&v46, *(&v47 + 1));
    v22 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();
    sub_100007000(&v46);
LABEL_33:
    sub_100007000(v43);
    return v22;
  }

  v39 = 0;
  memset(v38, 0, sizeof(v38));
  sub_10002B894(v38, &qword_10097C528, &qword_1007C4390);
  sub_100007000(v43);
LABEL_19:
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.optional<A>(_:)();
  if (v43[0])
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = v35;
      dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

      if ((*(v12 + 48))(v25, 1, v11) == 1)
      {

        v26 = &qword_100977FB8;
        v27 = &unk_1007C4330;
        v28 = v25;
LABEL_23:
        sub_10002B894(v28, v26, v27);
        return 0;
      }

      ReadOnlyLens.value.getter();
      (*(v12 + 8))(v25, v11);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      v29 = type metadata accessor for AdvertsSearchResult();
      if (swift_dynamicCast())
      {
        v30 = v46;
        v44 = v29;
        v45 = sub_10027F218(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
        v43[0] = v30;

        v31 = AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)();
        sub_100007000(v43);
        if (v31)
        {
          dispatch thunk of AdvertRotationController.currentAdvert.getter();
          sub_10002849C(&unk_10097E360, &qword_1007C4380);
          sub_10002849C(&qword_10097C520, &qword_1007C4388);
          if (swift_dynamicCast())
          {
            sub_100005A38(&v40, &v46);
            sub_10002A400(&v46, *(&v47 + 1));
            v32 = dispatch thunk of FlowPreviewActionable.flowPreviewActionsConfiguration.getter();

            sub_100007000(&v46);
            return v32;
          }

          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v26 = &qword_10097C528;
          v27 = &qword_1007C4390;
          v28 = &v40;
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

id sub_10027EA60(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0, qword_1007B3890);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for ShelfBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_10002849C(&qword_100977FB8, &unk_1007C4330);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v16 = Strong;
  v17 = v5;
  v18 = v6;
  v33 = a1;
  dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

  v19 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10002B894(v14, &qword_100977FB8, &unk_1007C4330);
    v6 = v18;
    v5 = v17;
LABEL_4:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_5;
  }

  ReadOnlyLens.value.getter();
  (*(v20 + 8))(v14, v19);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  sub_10002849C(&qword_10096FB18, &unk_1007B0F10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v6 = v18;
    v5 = v17;
    goto LABEL_5;
  }

  v6 = v18;
  v5 = v17;
  if (!*(&v35 + 1))
  {
LABEL_5:
    sub_10002B894(&v34, &unk_10096FB20, &qword_1007B3850);
    goto LABEL_6;
  }

  sub_100005A38(&v34, v37);
  sub_10002A400(v37, v37[3]);
  dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
  v25 = type metadata accessor for ItemBackground();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_10002B894(v11, &unk_1009804F0, &unk_1007B3800);
  }

  else
  {
    v31 = ItemBackground.isSolidColorAdBackground.getter();
    (*(v26 + 8))(v11, v25);
    if (v31)
    {
      if (qword_10096EFB0 != -1)
      {
        swift_once();
      }

      v32 = qword_1009D3A08;
      sub_100007000(v37);
      return v32;
    }
  }

  sub_100007000(v37);
LABEL_6:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    IndexPath.section.getter();
    dispatch thunk of ModelMappedDiffableDataSource.sectionModel(at:)();

    v23 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_10002B894(v4, &unk_10098FFB0, qword_1007B3890);
    }

    else
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      (*(v24 + 8))(v4, v23);
      if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
      {
        (*(v6 + 96))(v8, v5);
        v27 = *v8;
        v28 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
        v29 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v29 - 8) + 8))(&v8[v28], v29);
        return v27;
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return [objc_opt_self() clearColor];
}

uint64_t sub_10027F07C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_10027F0EC(uint64_t a1, uint64_t a2)
{
  sub_10027F218(&qword_10097C508, a2, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007C42AC);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_10027F154(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_100031660(a2, &v4, &unk_1009711D0, &unk_1007B1A10);

  SyncEvent.post(_:)();
  return sub_10002B894(&v3, &qword_10097C510, &qword_1007C4328);
}

uint64_t sub_10027F218(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

char *sub_10027F260(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC8AppStore29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell(uint64_t a1)
{
  result = qword_10097C588;
  if (!qword_10097C588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10027F640()
{
  sub_10002849C(&qword_10097C598, &qword_1007C4400);
  inited = swift_initStackObject();
  v2 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 16) = xmmword_1007B1890;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 0;
  *(inited + 48) = v3;
  *(inited + 56) = 6;
  v4 = v2;
  v5 = v3;
  v6 = sub_1003983EC(inited);
  swift_setDeallocating();
  sub_10002849C(&qword_10097C5A0, &qword_1007C4408);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10002849C(&qword_10097C5A8, &qword_1007C4410);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1007B10D0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10002849C(&qword_10097C5B0, &qword_1007C4418);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10002849C(&qword_10097C5B8, qword_1007C4420);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1003984D8(v8);
  swift_setDeallocating();
  sub_10027F890(v8 + 32);
  type metadata accessor for AttributeName(0);
  sub_10027F8F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  [v0 pointSize];
  v14 = [objc_opt_self() fontWithDescriptor:v12 size:v13];

  return v14;
}

uint64_t sub_10027F890(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C5C0, &qword_1007CA160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10027F8F8()
{
  result = qword_10096F678;
  if (!qword_10096F678)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096F678);
  }

  return result;
}

uint64_t sub_10027F950()
{
  v36 = type metadata accessor for EditorialQuoteLayout.Metrics.Alignment();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EditorialQuoteLayout.Metrics();
  sub_100005644(v5, qword_1009CEB90);
  v33 = sub_1000056A8(v5, qword_1009CEB90);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009CEBA8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v4, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v2 + 13;
  v32 = v2[13];
  v32(v4, enum case for FontSource.useCase(_:), v1);
  v31 = type metadata accessor for StaticDimension();
  v50[3] = v31;
  v50[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v50);
  v48 = v1;
  v49 = &protocol witness table for FontSource;
  v13 = sub_1000056E0(&v47);
  v30 = v2[2];
  v30(v13, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v14 = v2[1];
  v28 = v2 + 1;
  v29 = v14;
  v14(v4, v1);
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009CEBC0);
  v24 = v9;
  v25 = v10;
  v9(v4, v15, v6);
  v16 = v32;
  v32(v4, v11, v1);
  v27 = v12;
  v17 = v31;
  v48 = v31;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v26 = v11;
  v45 = v1;
  v46 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v44);
  v19 = v30;
  v30(v18, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v20 = v29;
  v29(v4, v1);
  v45 = &type metadata for Double;
  v46 = &protocol witness table for Double;
  v44[0] = 0x4034000000000000;
  v24(v4, v15, v6);
  v16(v4, v26, v1);
  v43[3] = v17;
  v43[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v43);
  v41 = v1;
  v42 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v40);
  v19(v21, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v20(v4, v1);
  v42 = &protocol witness table for Double;
  v41 = &type metadata for Double;
  v40[0] = 0x4080E00000000000;
  v39 = 0;
  v38 = 0u;
  v37 = 0u;
  (*(v34 + 104))(v35, enum case for EditorialQuoteLayout.Metrics.Alignment.leading(_:), v36);
  return EditorialQuoteLayout.Metrics.init(quoteTopSpace:attributionTopSpace:horizontalMargin:bottomMargin:maxWidth:minHeight:alignment:)();
}

char *sub_10027FF1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_itemLayoutContext;
  v16 = type metadata accessor for ItemLayoutContext();
  v17 = *(*(v16 - 8) + 56);
  v46 = v4;
  v17(&v4[v15], 1, 1, v16);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009CEBA8);
  v20 = *(v18 - 8);
  v43 = *(v20 + 16);
  v43(v14, v19, v18);
  v42 = *(v20 + 56);
  v42(v14, 0, 1, v18);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v10 + 104);
  v22(v45, enum case for DirectionalTextAlignment.none(_:), v9);
  v23 = type metadata accessor for DynamicTypeLabel();
  v41 = v9;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v46[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v18, qword_1009CEBC0);
  v43(v14, v26, v18);
  v42(v14, 0, 1, v18);
  v22(v45, v21, v41);
  v27 = objc_allocWithZone(v24);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v46;
  *&v46[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel] = v28;
  v47.receiver = v29;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v32 = [v30 contentView];
  [v32 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel]];

  v33 = OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel;
  v34 = *&v30[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel];
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 systemGrayColor];
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v33]];

  v39 = v30;
  sub_100280A30(v39, v39);

  return v39;
}

uint64_t sub_1002804D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = type metadata accessor for LayoutRect();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditorialQuoteLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009CEB90);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel];
  v28 = type metadata accessor for DynamicTypeLabel();
  v29 = &protocol witness table for UIView;
  v26 = &protocol witness table for UIView;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  EditorialQuoteLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100280838(uint64_t a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1)
  {
    return sub_100280A30(v2, v2);
  }

  if ((UITraitCollection.prefersRightToLeftLayouts.getter() ^ v5))
  {
    return sub_100280A30(v2, v2);
  }

  v6 = [v2 traitCollection];
  v7 = UITraitCollection.isSizeClassCompact.getter() & 1;

  result = UITraitCollection.isSizeClassCompact.getter();
  if ((result & 1) != v7)
  {
    return sub_100280A30(v2, v2);
  }

  return result;
}

uint64_t type metadata accessor for EditorialQuoteCollectionViewCell(uint64_t a1)
{
  result = qword_10097C600;
  if (!qword_10097C600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100280A30(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectionalTextAlignment();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = UITraitCollection.isSizeClassCompact.getter();

  if (v10)
  {
    v11 = enum case for DirectionalTextAlignment.leading(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for DirectionalTextAlignment.leading(_:), v4);
    dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
    v12(v8, v11, v4);
    return dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_quoteLabel) setTextAlignment:1];
    v14 = *(a2 + OBJC_IVAR____TtC8AppStore32EditorialQuoteCollectionViewCell_attributionLabel);

    return [v14 setTextAlignment:1];
  }
}

uint64_t sub_100280BF4()
{
  if (qword_10096CF48 != -1)
  {
    return swift_once();
  }

  return result;
}

double sub_100280CB4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = type metadata accessor for FootnoteLayout.Metrics();
  v30 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FootnoteLayout();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Footnote.text.getter();
  v14 = Footnote.presentationStyle.getter();
  sub_1000367E8();
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  sub_1000056A8(v15, qword_1009D09B0);
  v35 = a6;
  v16 = [a6 traitCollection];
  v17 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v18 = type metadata accessor for Feature();
  v41[3] = v18;
  v41[4] = sub_10028135C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v19 = sub_1000056E0(v41);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  v20 = v17;
  isFeatureEnabled(_:)();
  sub_100007000(v41);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v11 + 8))(v13, v10);
  if ((v14 & 2) != 0)
  {
    if (qword_10096CF48 != -1)
    {
      swift_once();
    }

    [qword_1009CDB60 size];
    v21 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v22 = LayoutViewPlaceholder.init(representing:)();
    *(&v39 + 1) = v21;
    v40 = &protocol witness table for LayoutViewPlaceholder;
    *&v38 = v22;
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  v23 = v35;
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v24 = v31;
  v25 = sub_1000056A8(v31, qword_1009CDB48);
  (*(v30 + 16))(v32, v25, v24);
  sub_10002C0AC(v41, v37);
  sub_10005FC74(&v38, v36);
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  [v23 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_10028135C(&qword_100992FD0, &type metadata accessor for FootnoteLayout, &protocol conformance descriptor for FootnoteLayout);
  v26 = v34;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v28 = v27;

  (*(v33 + 8))(v9, v26);
  sub_100007000(v41);
  sub_10005FD2C(&v38);
  return v28;
}

id sub_100281268(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
  v3 = Footnote.presentationStyle.getter();
  v4 = v2[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
  v2[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v3 & 2) != 0;
  sub_10007B3E8(v4);
  v2[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
  Footnote.text.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  [v2 setNeedsLayout];

  return [v1 setNeedsLayout];
}

uint64_t sub_10028135C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002813A4(uint64_t a1)
{
  v53 = a1;
  v52 = type metadata accessor for _AssistantIntent.PhraseToken();
  v54 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_10097C680, &qword_1007C4558);
  v58 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v41 - v3;
  v5 = sub_10002849C(&qword_10097C6A0, &qword_1007C4570);
  __chkstk_darwin(v5);
  sub_100283534();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x800000010080AEB0;
  v6._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v56 = sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 1650553888;
  v7._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57 = *(v58 + 8);
  v58 += 8;
  v57(v4, v2);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x657461676976614ELL;
  v8._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v2;
  v55 = v2;
  v11 = v2;
  v12 = v57;
  v57(v4, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6874206F74206F47;
  v13._object = 0xEA00000000002065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 1650553888;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v4, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x206F74206F47;
  v15._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v20 = v54;
  v49 = *(v54 + 104);
  v50 = v54 + 104;
  v22 = v51;
  v21 = v52;
  v43 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v49(v51, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v52);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23 = *(v20 + 8);
  v23(v22, v21);
  v42 = v23;
  v54 = v20 + 8;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x20656D20776F6853;
  v25._object = 0xEC00000020656874;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  v26 = v19;
  v27 = v52;
  v49(v22, v26, v52);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v22, v27);
  v28._countAndFlagsBits = 32;
  v28._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6567617020;
  v29._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x20656D20776F6853;
  v30._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x206567617020;
  v31._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v51;
  v49(v51, v43, v27);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v42(v32, v27);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v57(v4, v55);
  sub_10002849C(&qword_10097C688, &qword_1007C4560);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B73E0;
  v36 = v47;
  *(v35 + 32) = v48;
  *(v35 + 40) = v36;
  v37 = v45;
  *(v35 + 48) = v46;
  *(v35 + 56) = v37;
  v38 = v41;
  *(v35 + 64) = v44;
  *(v35 + 72) = v38;
  *(v35 + 80) = v34;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_100281CE8()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_10097C678, &qword_1007C4550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100281E58()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10002849C(&qword_10097C698, &qword_1007C4568);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B23A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_100281F6C()
{
  v0 = sub_10002849C(&qword_10097C680, &qword_1007C4558);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688, &qword_1007C4560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007C44A0;
  v10 = v21;
  *(v9 + 32) = v22;
  *(v9 + 40) = v10;
  v11 = v19;
  *(v9 + 48) = v20;
  *(v9 + 56) = v11;
  v12 = v17;
  *(v9 + 64) = v18;
  *(v9 + 72) = v12;
  *(v9 + 80) = v16;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10028243C()
{
  v0 = sub_10002849C(&qword_10097C680, &qword_1007C4558);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688, &qword_1007C4560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007C44A0;
  v10 = v21;
  *(v9 + 32) = v22;
  *(v9 + 40) = v10;
  v11 = v19;
  *(v9 + 48) = v20;
  *(v9 + 56) = v11;
  v12 = v17;
  *(v9 + 64) = v18;
  *(v9 + 72) = v12;
  *(v9 + 80) = v16;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_100282908()
{
  v0 = sub_10002849C(&qword_10097C680, &qword_1007C4558);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_10002849C(&qword_10097C688, &qword_1007C4560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B5370;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  v11 = v14;
  *(v9 + 48) = v15;
  *(v9 + 56) = v11;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  v12 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v12;
}

uint64_t sub_100282CC4(uint64_t a1, char a2)
{
  v3 = type metadata accessor for _AssistantIntent.Value();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11[15] = a2;
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  sub_1002835DC();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10002849C(&qword_10097C678, &qword_1007C4550);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B10D0;
  *(v8 + 32) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100282E3C()
{
  v0 = sub_10002849C(&qword_10097C680, &qword_1007C4558);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  sub_100283534();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v4 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002849C(&qword_10097C688, &qword_1007C4560);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007B1890;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100282FFC()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100283588();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100283534();
  _AssistantIntent.Value.init<A, B>(_:for:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10002849C(&qword_10097C678, &qword_1007C4550);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

double sub_10028318C()
{
  if (qword_10096D508 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1002831F8()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1006AEAAC();
  sub_100283534();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v4 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v7 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v8 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  v14 = sub_1006AEAAC();
  _AssistantIntent.init<A>(_:phrases:implying:)();
  v9 = static _AssistantIntent.Builder.buildExpression(_:)();
  v5(v3, v0);
  sub_10002849C(&qword_10097C668, &qword_1007C4520);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B5360;
  *(v10 + 32) = v4;
  *(v10 + 40) = v6;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  v11 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v11;
}

unint64_t sub_100283534()
{
  result = qword_10097C660;
  if (!qword_10097C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C660);
  }

  return result;
}

unint64_t sub_100283588()
{
  result = qword_10097C670;
  if (!qword_10097C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C670);
  }

  return result;
}

unint64_t sub_1002835DC()
{
  result = qword_10097C690;
  if (!qword_10097C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097C690);
  }

  return result;
}

double sub_100283630(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = type metadata accessor for OfferButtonSubtitlePosition();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = ArcadeLockup.offerDisplayProperties.getter();
  v20 = ArcadeLockup.unsubscribedButtonAction.getter();
  v21 = ArcadeLockup.subscribedButtonAction.getter();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_100283D94(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  AccessibilityConditional.init(value:axValue:)();
  v22 = sub_10002849C(&unk_100973240, qword_1007B2220);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_100283D94(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_10025B2D0(v19);
  ArcadeLockup.subscribedSubtitle.getter();
  ArcadeLockup.nonsubscribedSubtitle.getter();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v24 = type metadata accessor for ArcadeOfferLabelPresenter();
  swift_allocObject();
  v25 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
  sub_100283D94(&qword_10097C6A8, type metadata accessor for ArcadeLockupView, &unk_1007C4578);
  v26 = swift_unknownObjectRetain();
  ArcadeOfferLabelPresenter.view.setter();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_100283DDC(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];

  return result;
}

double sub_100283C20(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:static String.isNilOrEmpty(_:)() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_100283D94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100283DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711D0, &unk_1007B1A10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_100283E4C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v34 = &v33 - v9;
  v10 = type metadata accessor for SystemImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_10097C6C8) = 0;
  *(v2 + qword_10097C6D0) = 0;
  *(v2 + qword_10097C6D8) = 0;
  *(v2 + qword_10097C6E0) = 0;
  *(v2 + qword_10097C6E8) = 0;

  v14 = sub_1003BB2B4(a1, a2);
  v14[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 0;
  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  v17 = type metadata accessor for Feature.iOS();
  v38[3] = v17;
  v38[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_1000056E0(v38);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  sub_100007000(v38);
  if (v17)
  {
    v19 = [v15 navigationItem];
    ArcadeSeeAllGamesDiffablePagePresenter.pageTitle.getter();
    if (v20)
    {
      v21 = String._bridgeToObjectiveC()();
    }

    else
    {
      v21 = 0;
    }

    [v19 setTitle:v21];

LABEL_12:
    goto LABEL_13;
  }

  (*(v11 + 104))(v13, enum case for SystemImage.listBullet(_:), v10);
  v22 = static SystemImage.load(_:with:)();
  (*(v11 + 8))(v13, v10);
  v23 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v22 style:0 target:v15 action:"toggleDisplayStyleWithAction:"];

  v24 = qword_10097C6C8;
  v25 = *&v15[qword_10097C6C8];
  *&v15[qword_10097C6C8] = v23;

  v26 = [v15 navigationItem];
  v27 = *&v15[v24];
  [v26 setRightBarButtonItem:v27];

  v28 = *&v15[v24];
  if (v28)
  {
    v33 = a2;
    v21 = v28;
    ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
    (*(v35 + 104))(v7, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v5);
    sub_100286D14(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v38[0] == v36 && v38[1] == v37)
    {
      v29 = v7;
      v30 = 1;
    }

    else
    {
      v29 = v7;
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v31 = *(v35 + 8);
    v31(v29, v5);
    v31(v34, v5);

    [v21 setSelected:v30 & 1];
    goto LABEL_12;
  }

LABEL_13:

  return v15;
}

id sub_10028437C()
{
  v1 = qword_10097C6D0;
  v2 = *(v0 + qword_10097C6D0);
  if (v2)
  {
    v3 = *(v0 + qword_10097C6D0);
  }

  else
  {
    v4 = sub_100286A68();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1002843DC()
{
  v0 = type metadata accessor for UIButton.Configuration();
  sub_100005644(v0, qword_10097C6B0);
  sub_1000056A8(v0, qword_10097C6B0);
  static UIButton.Configuration.plain()();
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  UIButton.Configuration.image.setter();
  v3 = [objc_opt_self() configurationWithScale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  UIButton.Configuration.imagePadding.setter();
  return UIButton.Configuration.imagePlacement.setter();
}

void sub_1002844C4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  v5 = a1;
  static ViewControllerContainment.remove(_:)();

  v6 = *&v1[v3];
  *&v1[v3] = a1;
  v11 = v5;

  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = [v1 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setHidden:*&v1[v3] != 0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100284604(void *a1)
{
  v2 = *&v1[qword_10097C6D8];
  *&v1[qword_10097C6D8] = a1;
  if (a1)
  {
    v5 = v2;
    v3 = a1;
    [v1 presentViewController:v3 animated:1 completion:0];
LABEL_3:

    goto LABEL_4;
  }

  if (!v2)
  {
    return;
  }

  v5 = v2;
  v4 = [v2 presentingViewController];
  if (v4)
  {
    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
    goto LABEL_3;
  }

LABEL_4:
}

void sub_1002846CC(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[qword_10097C6E0];
    if (!v3 || (v4 = a1, type metadata accessor for PageFacetsViewController(0), v5 = v4, v6 = v3, LOBYTE(v4) = static NSObject.== infix(_:_:)(), v5, v6, (v4 & 1) == 0))
    {
      v7 = *&v2[qword_10097C6D8];
      *&v2[qword_10097C6D8] = 0;
      if (v7)
      {
        v8 = [v7 presentingViewController];
        if (v8)
        {
          v9 = v8;
          [v8 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }

  v10 = *&v2[qword_10097C6E0];
  if (v10)
  {
    *&v10[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = &off_1008BBBD8;
    swift_unknownObjectWeakAssign();
    v11 = objc_allocWithZone(UINavigationController);
    v12 = v10;
    v13 = [v11 initWithRootViewController:v12];
    v14 = [v13 view];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor:v16];

    [v13 setModalPresentationStyle:7];
    v17 = [v13 presentationController];
    if (v17)
    {
      v18 = v17;
      [v17 setDelegate:v2];
    }

    [v13 setPreferredContentSize:{450.0, 450.0}];
    v19 = [v13 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      v21 = sub_10028437C();
      [v20 setSourceView:v21];
    }

    v22 = [v13 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:1];
    }

    v24 = [v13 popoverPresentationController];

    if (v24)
    {
      v25 = sub_10028437C();
      v26 = [v25 titleLabel];

      if (v26)
      {
        [v26 frame];
        v28 = v27;
        v30 = v29;
        v32 = v31;
        v34 = v33;

        v35 = v34;
        v36 = v32;
        v37 = v30;
        v38 = v28;
      }

      else
      {
        [*&v2[qword_10097C6D0] bounds];
      }

      MidX = CGRectGetMidX(*&v38);
      [*&v2[qword_10097C6D0] bounds];
      [v24 setSourceRect:{MidX, CGRectGetMaxY(v46), 10.0, 10.0}];
    }

    v44 = *&v2[qword_10097C6D8];
    *&v2[qword_10097C6D8] = v13;
    v43 = v13;
    [v2 presentViewController:v43 animated:1 completion:0];
  }

  else
  {
    v39 = *&v2[qword_10097C6D8];
    *&v2[qword_10097C6D8] = 0;
    if (!v39)
    {
      return;
    }

    v44 = v39;
    v40 = [v39 presentingViewController];
    if (v40)
    {
      v41 = v40;
      [v40 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_100284B0C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  v3 = [v2 titleView];

  v4 = sub_10028437C();
  v5 = v4;
  if (v3)
  {
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = qword_10097C6D0;
  [*&v1[qword_10097C6D0] setAlpha:0.0];
  v8 = [v1 navigationItem];
  [v8 setTitleView:*&v1[v7]];

  v9 = [v1 navigationItem];
  v10 = [v9 navigationBar];

  if (v10)
  {
    [v10 layoutIfNeeded];
  }

LABEL_7:
  v11 = qword_10097C6D0;
  v12 = qword_10097C6E8;
  v13 = 0.0;
  if (v1[qword_10097C6E8])
  {
    v13 = 1.0;
  }

  [*&v1[qword_10097C6D0] setAlpha:v13];
  v14 = *&v1[v11];
  v15 = v1[v12];

  return [v14 setUserInteractionEnabled:v15];
}

void sub_100284CAC()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = sub_10028437C();
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v3 forControlEvents:{64, 0, 0, 0, sub_100287198, v2}];
}

void sub_100284DA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100284DF8();
  }
}

void sub_100284DF8()
{
  v1 = v0;
  ArcadeSeeAllGamesDiffablePagePresenter.beingBatchFacetUpdates()();
  v2 = ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v4 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v5 = sub_1000A24A8(v2, 1, v3);

  v7 = *(v1 + qword_10097C6E0);
  *(v1 + qword_10097C6E0) = v5;
  v6 = v5;
  sub_1002846CC(v7);
}

void sub_100284ED0(void *a1)
{
  v1 = a1;
  sub_100284CAC();
}

double sub_100284F18(id a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_11;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    return result;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
LABEL_11:
    v12 = sub_10028437C();
    [v12 sizeToFit];

    [*&v1[qword_10097C6D0] setNeedsLayout];
  }

  return result;
}

void sub_10028507C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100284F18(a3);
}

uint64_t sub_1002850E8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10002849C(&unk_100984570, &unk_1007C4640);
  v23 = *(v1 - 8);
  v24 = v1;
  __chkstk_darwin(v1);
  v22 = &v22 - v2;
  v3 = sub_10002849C(&qword_10097CCE0, &unk_1007B3DB0);
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v27 = &v22 - v4;
  v25 = sub_10002849C(&unk_10097CCE8, &qword_1007C4650);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v22 - v6;
  sub_100413DF0();
  v8 = *(v0 + qword_1009CF3E0);
  ArcadeSeeAllGamesDiffablePagePresenter.onShowEmptyState.getter();
  v9 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v10;
  sub_10002849C(&qword_10097CCF8, &qword_1007C4658);
  sub_100097060(&unk_10097CD00, &qword_10097CCF8, &qword_1007C4658, &protocol conformance descriptor for SyncEvent<A>);
  v30 = v0;
  EventEmitter.addObserver<A>(on:target:method:)();
  v11 = v8;

  (*(v5 + 8))(v7, v25);
  sub_100007000(v31);
  ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  PageFacetsPresenter.onFacetStateDidChange.getter();

  v12 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v12;
  v25 = sub_10002849C(&unk_100984580, &unk_1007C4660);
  sub_100097060(&unk_10097CD10, &unk_100984580, &unk_1007C4660, &protocol conformance descriptor for AsyncEvent<A>);
  v13 = v27;
  EventEmitter.addObserver<A>(on:target:method:)();

  v14 = v29;
  v15 = *(v28 + 8);
  v15(v13, v29);
  sub_100007000(v31);
  v28 = v11;
  ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  PageFacetsPresenter.onSelectedFacetOptionsChanged.getter();

  v16 = static OS_dispatch_queue.main.getter();
  v32 = v9;
  v33 = &protocol witness table for OS_dispatch_queue;
  v31[0] = v16;
  EventEmitter.addObserver<A>(on:target:method:)();

  v15(v13, v14);
  sub_100007000(v31);
  v17 = type metadata accessor for Feature.iOS();
  v32 = v17;
  v33 = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v18 = sub_1000056E0(v31);
  (*(*(v17 - 8) + 104))(v18, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v17);
  LOBYTE(v17) = isFeatureEnabled(_:)();
  result = sub_100007000(v31);
  if (v17)
  {
    ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
    PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();

    v20 = static OS_dispatch_queue.main.getter();
    v32 = v9;
    v33 = &protocol witness table for OS_dispatch_queue;
    v31[0] = v20;
    sub_10002849C(&qword_100984590, &unk_1007B3DC0);
    sub_100097060(&unk_10097CD20, &qword_100984590, &unk_1007B3DC0, &protocol conformance descriptor for SyncEvent<A>);
    v21 = v22;
    EventEmitter.addObserver<A>(on:target:method:)();

    (*(v23 + 8))(v21, v24);
    return sub_100007000(v31);
  }

  return result;
}

void sub_1002856CC(uint64_t a1)
{
  v2 = type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_10097CD38, qword_1007C4670);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  sub_100031660(a1, &v20 - v7, &qword_10097CD38, qword_1007C4670);
  v9 = (*(v3 + 48))(v8, 1, v2);
  v10 = 0;
  if (v9 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.title.getter();
    v13 = v12;
    v14 = ArcadeSeeAllGamesDiffablePagePresenter.EmptyStateData.subtitle.getter();
    v16 = v15;
    v17 = objc_allocWithZone(type metadata accessor for EmptyStateView(0));
    sub_1003D8D40(v11, v13, v14, v16);
    v18 = objc_allocWithZone(type metadata accessor for OverlayViewController());
    v19 = OverlayViewController.init(overlayView:)();
    (*(v3 + 8))(v5, v2);
    v10 = v19;
  }

  sub_1002844C4(v10);
}

void (*sub_1002858C8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100287190;
}

void (*sub_10028592C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100287174;
}

id (*sub_100285990(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002871A0;
}

void sub_1002859F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CC98, &qword_1007C4638);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10002849C(&qword_10097CD30, &qword_1007B3D60);
  __chkstk_darwin(v7 - 8);
  v9 = &v23[-1] - v8;
  v10 = type metadata accessor for Feature.iOS();
  v23[3] = v10;
  v23[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v11 = sub_1000056E0(v23);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v10);
  LOBYTE(v10) = isFeatureEnabled(_:)();
  sub_100007000(v23);
  if (v10)
  {
    sub_100286108();
  }

  else
  {
    PageFacetsPresenter.FacetsState.facets.getter();
    v12 = type metadata accessor for PageFacets();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) == 1)
    {
      sub_10002B894(v9, &qword_10097CD30, &qword_1007B3D60);
      v14 = 0;
    }

    else
    {
      v15 = PageFacets.facetGroups.getter();
      (*(v13 + 8))(v9, v12);
      v16 = *(v15 + 16);

      v14 = v16 != 0;
    }

    *(a2 + qword_10097C6E8) = v14;
    sub_100284B0C();
    v17 = sub_10028437C();
    type metadata accessor for PageFacetsPresenter();
    v18 = type metadata accessor for PageFacetsPresenter.FacetsState();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v6, a1, v18);
    (*(v19 + 56))(v6, 0, 1, v18);
    static PageFacetsPresenter.selectedFacetsTitle(for:)();
    sub_10002B894(v6, &qword_10097CC98, &qword_1007C4638);
    v20 = String._bridgeToObjectiveC()();

    [v17 setTitle:v20 forState:0];

    v21 = qword_10097C6D0;
    [*(a2 + qword_10097C6D0) sizeToFit];
    [*(a2 + v21) setNeedsLayout];
  }
}

uint64_t sub_100285D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_1005F9AF4(a1, 1, v8, v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t (*sub_100285E78(void *a1))(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100286E04;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000A2F74;
}

unint64_t sub_100285F08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for ArcadeSeeAllGamesPageGridProvider;
  result = sub_100286DB0();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_100285F60@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ArcadeSeeAllGamesPageShelfLayoutSectionProvider;
  result = sub_100286D5C();
  *(a1 + 32) = result;
  return result;
}

void sub_100285F94(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097CCC0, &unk_1007E0710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - v4;
  sub_100728590(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v6 = v7[1];
    dispatch thunk of VideoPlaybackCoordinator.unregisterAllVideoViews()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_100286108()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ArcadeSeeAllGamesDiffablePagePresenter.facetsPresenter.getter();
  ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  v9 = sub_1006DBEF4(v6, v5, sub_100286E0C, v7);

  (*(v3 + 8))(v5, v2);
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  v10 = [(objc_class *)v9 image];
  v11 = v9;
  v15.value.super.isa = v10;
  v15.is_nil = 0;
  v16.value.super.super.isa = v9;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v15, v16, v17).super.super.isa;
  v13 = [v8 navigationItem];
  [v13 setRightBarButtonItem:isa];
}

void sub_1002862E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100286E30();
}

void sub_100286344(void *a1)
{
  v1 = a1;
  ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()();
  sub_100284604(0);
}

uint64_t sub_1002863A4(uint64_t a1)
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
      sub_100286D14(&qword_100975040, &type metadata accessor for URL, &protocol conformance descriptor for URL);
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

void sub_100286860()
{
  v1 = *(v0 + qword_10097C6E0);
}

void sub_1002868C0(uint64_t a1)
{
  v2 = *(a1 + qword_10097C6E0);
}

uint64_t type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(uint64_t a1)
{
  result = qword_10097C718;
  if (!qword_10097C718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002869D4()
{
  ArcadeSeeAllGamesDiffablePagePresenter.commitBatchFacetUpdates()();
  v1 = *(v0 + qword_10097C6E0);
  *(v0 + qword_10097C6E0) = 0;
  sub_1002846CC(v1);
}

id sub_100286A68()
{
  v0 = sub_10002849C(&qword_10097CC90, &unk_1007BB2A0);
  __chkstk_darwin(v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_10002849C(&qword_10097CC98, &qword_1007C4638);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() buttonWithType:1];
  type metadata accessor for PageFacetsPresenter();
  v7 = type metadata accessor for PageFacetsPresenter.FacetsState();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  static PageFacetsPresenter.selectedFacetsTitle(for:)();
  sub_10002B894(v5, &qword_10097CC98, &qword_1007C4638);
  v8 = String._bridgeToObjectiveC()();

  [v6 setTitle:v8 forState:0];

  if (qword_10096D510 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UIButton.Configuration();
  v10 = sub_1000056A8(v9, qword_10097C6B0);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v2, v10, v9);
  (*(v11 + 56))(v2, 0, 1, v9);
  UIButton.configuration.setter();
  v12 = v6;
  [v12 setAlpha:0.0];
  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  [v12 setPointerInteractionEnabled:1];
  return v12;
}

uint64_t sub_100286D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100286D5C()
{
  result = qword_10097CCC8;
  if (!qword_10097CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CCC8);
  }

  return result;
}

unint64_t sub_100286DB0()
{
  result = qword_10097CCD0;
  if (!qword_10097CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CCD0);
  }

  return result;
}

void sub_100286E30()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17[-1] - v7;
  ArcadeSeeAllGamesDiffablePagePresenter.toggleDisplayStyle()();
  ArcadeSeeAllGamesDiffablePagePresenter.displayStyle.getter();
  (*(v3 + 104))(v5, enum case for ArcadeSeeAllGamesPage.DisplayStyle.compact(_:), v2);
  sub_100286D14(&qword_10097CC88, &type metadata accessor for ArcadeSeeAllGamesPage.DisplayStyle, &protocol conformance descriptor for ArcadeSeeAllGamesPage.DisplayStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17[0] == v17[5] && v17[1] == v17[6])
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);

  v11 = type metadata accessor for Feature.iOS();
  v17[3] = v11;
  v17[4] = sub_100286D14(&qword_10097CC80, &type metadata accessor for Feature.iOS, &protocol conformance descriptor for Feature.iOS);
  v12 = sub_1000056E0(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.iOS.arcade_see_all_games_menu_uplift(_:), v11);
  LOBYTE(v11) = isFeatureEnabled(_:)();
  sub_100007000(v17);
  if (v11)
  {
    sub_100286108();
  }

  else
  {
    v13 = [v1 navigationItem];
    v14 = [v13 rightBarButtonItem];

    [v14 setSelected:v9 & 1];
  }

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = v17[0];
  if (v9)
  {
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  else
  {
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }
}

id sub_1002871A4()
{
  if (qword_10096D518 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC8AppStore11AppDelegate_window);
  v2 = [v1 rootViewController];

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_100287254(uint64_t a1)
{
  v1 = type metadata accessor for LegacyAppState();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AppEvent.hideLockupWhenNotInstalled.getter())
  {
    sub_10002849C(&unk_100973AF0, &qword_1007B3960);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v12 = v1;
    swift_getObjectType();
    AppEvent.lockup.getter();
    Lockup.adamId.getter();

    dispatch thunk of AppStateController.stateMachine(forApp:)();
    (*(v6 + 8))(v8, v5);
    swift_getObjectType();
    AppEvent.lockup.getter();
    Lockup.includeBetaApps.getter();

    dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
    v9 = LegacyAppState.isLocalApplication.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v2 + 8))(v4, v12);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

double sub_1002874B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  [v1 frame];
  MinX = CGRectGetMinX(v4);
  [v1 frame];
  CGRectGetMinY(v5);
  [v1 frame];
  CGRectGetWidth(v6);
  [v1 frame];
  CGRectGetHeight(v7);
  [*&v1[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView] frame];
  CGRectGetHeight(v8);
  return MinX;
}

void *sub_100287570()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1002875A8(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_100287600;
}

void sub_100287600(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1001696DC(v2);
  }

  else
  {
    sub_1001696DC(*a1);
  }
}

uint64_t sub_100287698(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10028786C(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell, &unk_1007C46E4);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_100287754(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028786C(&qword_100976958, type metadata accessor for VideoCardCollectionViewCell, &unk_1007C46E4);

  return a3(ObjectType, v4);
}

uint64_t sub_10028786C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002878B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyFooterLayout.Metrics();
  sub_100005644(v4, qword_1009CEBE8);
  sub_1000056A8(v4, qword_1009CEBE8);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D10E8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = type metadata accessor for StaticDimension();
  v16[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v13);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return PrivacyFooterLayout.Metrics.init(bodyTopSpace:actionButtonLeadingMargin:maxTextWidth:bottomSpace:)();
}

id sub_100287C10()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100288418(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020, &qword_1007B46A8);
    [*&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    ObjectGraphPair.value.getter();
    ObjectGraphPair.objectGraph.getter();
    v11 = LinkableText.linkedSubstrings.getter();
    sub_1000D6F24(v11, sub_1000C17B0);
    v13 = v12;

    v14 = LinkableText.styledText.getter();
    sub_1002F6004(v14, 0, v13);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100287EA4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = type metadata accessor for LayoutRect();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyFooterLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009CEBE8);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  PrivacyFooterLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell(uint64_t a1)
{
  result = qword_10097CD98;
  if (!qword_10097CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002882D8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    sub_1002883B4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1002883B4(uint64_t a1)
{
  if (!qword_10097CDA8)
  {
    sub_10002D1A8(&unk_100993030, &unk_1007B46B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10097CDA8);
    }
  }
}

uint64_t sub_100288418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100288488()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AutomationSemantics();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FontUseCase();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D10E8);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v1[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel] = sub_1002F5B8C(v12, 0, 0, 1);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC8AppStore31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v36, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v37, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v27 = *&v19[v22];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v28 = v27;
  v29 = static UIColor.secondaryText.getter();
  v30 = *&v28[qword_10097F920];
  *&v28[qword_10097F920] = v29;
  v31 = v29;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

void sub_100288980(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097D4C0, &qword_1007C4858);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_100728BDC(a1);
  (*(v4 + 16))(v6, a1, v3);
  if ((*(v4 + 88))(v6, v3) == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v4 + 96))(v6, v3);
    SearchChartsAndCategoriesPage.title.getter();
    if (v7)
    {
      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v8 = 0;
    }

    [v1 setTitle:v8];
  }

  else
  {
    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100288B0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_100289B74(&qword_10097D4B0, 255, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_100289B74(&qword_10097D4B8, v4, type metadata accessor for SearchChartsAndCategoriesShelfSupplementaryProvider, &unk_1007C37A0);

  return v2;
}

uint64_t sub_100288C0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = SearchChartsAndCategoriesDiffablePagePresenter.columnCount.getter();
  v4 = v3;
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v5 = PageGridCache.init()();
  swift_allocObject();
  v6 = PageGridCache.init()();
  a1[3] = &type metadata for SearchChartsAndCategoriesPageGridProvider;
  a1[4] = sub_100289B20();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v5;
  *(result + 24) = v6;
  *(result + 32) = v2;
  *(result + 40) = v4 & 1;
  return result;
}

unint64_t sub_100288CD4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchChartsAndCategoriesPageShelfLayoutSpacingProvider;
  result = sub_100289ACC();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100288D08(uint64_t a1)
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
  sub_100289A04(a1, v9, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_100289A6C(v9, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v19 = sub_10002849C(&unk_10097CCB0, &qword_1007B7100);
  sub_1000476A0(&v9[*(v19 + 48)], v18, &qword_100982460, &unk_1007B5C90);
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
      sub_100289B74(&qword_100975040, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);
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

uint64_t type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(uint64_t a1)
{
  result = qword_10097CDD8;
  if (!qword_10097CDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002892BC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v58 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v57 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v2 - 8);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v45 - v5;
  v7 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v7 - 8);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v45 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v15;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = type metadata accessor for ShelfHeader.Configuration();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v51 = *(v27 - 8);
  v52 = v27;
  v28 = *(v51 + 56);
  v46 = v6;
  v28(v6, 1, 1);
  v47 = v24;
  sub_100031660(v24, v21, &unk_100984380, &qword_1007C4850);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10002B894(v21, &unk_100984380, &qword_1007C4850);
    v29 = 0;
  }

  else
  {
    v29 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v26 + 8))(v21, v25);
  }

  sub_100512504(v29, v18);

  if (qword_10096E798 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v11, qword_1009D2730);
  if (qword_10096E770 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v11, qword_1009D26B8);
  v32 = v50;
  sub_100289A04(v31, v50, type metadata accessor for TitleHeaderView.TextConfiguration);
  (*(v12 + 56))(v32, 0, 1, v11);
  v33 = v48;
  sub_100289A04(v18, v48, type metadata accessor for TitleHeaderView.TextConfiguration);
  v34 = v49;
  sub_100289A04(v30, v49, type metadata accessor for TitleHeaderView.TextConfiguration);
  v35 = v53;
  sub_100031660(v32, v53, &qword_1009794E8, &unk_1007C18C0);
  v36 = v46;
  v37 = v55;
  sub_100031660(v46, v55, &qword_1009794E0, &unk_1007C4840);
  v38 = v56;
  (*(v56 + 104))(v57, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v58);
  sub_100028BB8();
  v45 = static UIColor.defaultLine.getter();
  sub_10002B894(v36, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v32, &qword_1009794E8, &unk_1007C18C0);
  sub_100289A6C(v18, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v47, &unk_100984380, &qword_1007C4850);
  v39 = type metadata accessor for TitleHeaderView.Style(0);
  v40 = v39[8];
  v41 = v54;
  sub_10022A9A0(v33, v54);
  sub_10022A9A0(v34, v41 + v39[5]);
  sub_1000476A0(v35, v41 + v39[6], &qword_1009794E8, &unk_1007C18C0);
  *(v41 + v39[7]) = 0;
  *(v41 + v40) = 0;
  *(v41 + v39[9]) = 1;
  *(v41 + v39[14]) = 0x4030000000000000;
  *(v41 + v39[12]) = 0;
  *(v41 + v39[13]) = v45;
  (*(v38 + 32))(v41 + v39[11], v57, v58);
  v43 = v51;
  v42 = v52;
  if ((*(v51 + 48))(v37, 1, v52) != 1)
  {
    return (*(v43 + 32))(v41 + v39[10], v37, v42);
  }

  sub_10002B894(v37, &qword_1009794E0, &unk_1007C4840);
  return (*(v43 + 104))(v41 + v39[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:), v42);
}

uint64_t sub_100289A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100289A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100289ACC()
{
  result = qword_10097D4A0;
  if (!qword_10097D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4A0);
  }

  return result;
}

unint64_t sub_100289B20()
{
  result = qword_10097D4A8;
  if (!qword_10097D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4A8);
  }

  return result;
}

uint64_t sub_100289B74(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_100289BBC()
{
  v0 = sub_10002849C(&qword_10097D4E0, &qword_1007C4860);
  __chkstk_darwin(v0);
  v1 = sub_10002849C(&qword_10097D4E8, qword_1007C4868);
  sub_100005644(v1, qword_10097D4C8);
  sub_1000056A8(v1, qword_10097D4C8);
  sub_100289D00();
  ViewRecycler.init()();
  sub_100289D4C();
  ReusePool.init(recycler:limit:)();
  return result;
}

void sub_100289C9C(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  URL._bridgeToObjectiveC()(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_100289D00()
{
  result = qword_10097D4F0;
  if (!qword_10097D4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097D4F0);
  }

  return result;
}

unint64_t sub_100289D4C()
{
  result = qword_10097D4F8;
  if (!qword_10097D4F8)
  {
    sub_10002D1A8(&qword_10097D4E0, &qword_1007C4860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097D4F8);
  }

  return result;
}

double UITextView.firstBaselineFromTop.getter()
{
  v1 = [v0 layoutManager];
  [v1 baselineOffsetForGlyphAtIndex:0];
  v3 = v2;

  return v3;
}

CGFloat UITextView.lastBaselineFromBottom.getter()
{
  v1 = [v0 layoutManager];
  v2 = [v0 textContainer];
  [v1 usedRectForTextContainer:v2];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;

  return CGRectGetMaxY(*&v11);
}

uint64_t type metadata accessor for TodayPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_10097D508;
  if (!qword_10097D508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10028A078(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = type metadata accessor for Shelf.ContentType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_10028A654(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    type metadata accessor for BasePageLayoutSectionProvider();
    v30 = method lookup function for BasePageLayoutSectionProvider();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_10002F0EC, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v32 = v51;
    ReadOnlyLens.subscript.getter();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_10040C1D8(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_10040D51C(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_10028A5D4()
{
  BasePageLayoutSectionProvider.deinit();

  return swift_deallocClassInstance();
}

id sub_10028A654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = type metadata accessor for ItemLayoutContext();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((Array.isNotEmpty.getter() & 1) == 0)
  {
    sub_100005744(0, &qword_10097D558, NSCollectionLayoutGroup_ptr);
    v109 = static NSCollectionLayoutGroup.emptyLayoutGroup(for:)();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    BasePageLayoutSectionProvider.addSupplementariesAndInsets(to:for:shelfLayoutSpacingProvider:shelfSupplementaryProvider:asPartOf:)();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_1006E2728(a1);
  v22 = *(v21 + 2);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interRowSpace.getter();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &StringUserDefaultsDebugSetting;
  v29 = &StringUserDefaultsDebugSetting;
  v30 = v20;
  v135 = *(v21 + 2);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 2))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *&v134[8 * v32];
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);

            _bridgeCocoaArray<A>(_:)();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          type metadata accessor for TodayCard();
          sub_1002208A0();
          ItemLayoutContext.typedModel<A>(as:)();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            BasePageLayoutSectionProvider.componentTypeMappingProvider.getter();
            sub_10002A400(aBlock, v157);
            if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell(0);
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_100007000(aBlock);
                swift_getKeyPath();
                v43 = v142;
                ItemLayoutContext.subscript.getter();

                swift_getKeyPath();
                ItemLayoutContext.subscript.getter();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                ShelfLayoutContext.contentPageGrid.getter();
                static CGFloat.allColumns.getter();
                PageGrid.componentMeasuringSize(spanning:)();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    PageGrid.columnWidth.getter();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = PageGrid.name.getter();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v71)
                    {
LABEL_37:
                      PageGrid.interColumnSpace.getter();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      PageGrid.componentMeasuringSize(spanning:)();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_10003356C(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_10003356C((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[8 * v84];
                    v34 = v85;
                    *(v87 + 4) = v53;
                    v28 = &StringUserDefaultsDebugSetting;
                    goto LABEL_11;
                  default:
                    static CGFloat.allColumns.getter();
                    PageGrid.componentMeasuringSize(spanning:)();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        PageGrid.columnCount.getter();
                        v59 = v58 + -1.0;
                        PageGrid.columnWidth.getter();
                        v61 = v60;
                        PageGrid.interColumnSpace.getter();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        PageGrid.containerWidth.getter();
                        v66 = v65;
                        PageGrid.horizontalMargins.getter();
                        v69 = v66 - (v67 + v68);
                        PageGrid.interColumnSpace.getter();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        PageGrid.containerWidth.getter();
                        v75 = v74;
                        PageGrid.horizontalMargins.getter();
                        v78 = v75 - (v76 + v77);
                        PageGrid.columnWidth.getter();
                        v80 = v78 - v79;
                        PageGrid.interColumnSpace.getter();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        PageGrid.interColumnSpace.getter();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_100007000(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_100007000(aBlock);
            }

            v28 = &StringUserDefaultsDebugSetting;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v153 = objc_opt_self();
      v91 = 32;
      v92 = v138;
      do
      {
        v93 = [v90 v28[42].ivars];
        v94 = [v90 v28[42].ivars];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v97 = [(SEL *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v90 = v154;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v91 += 8;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 v28[42].ivars];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
    v101 = Array._bridgeToObjectiveC()().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interColumnSpace.getter();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v107 = v139 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &StringUserDefaultsDebugSetting;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[385]];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
LABEL_66:

  v115 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v116 = Array._bridgeToObjectiveC()().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interRowSpace.getter();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v126 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006BBC70;
    v157 = &unk_1008BBD38;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  BasePageLayoutSectionProvider.addSupplementariesAndInsets(to:for:shelfLayoutSpacingProvider:shelfSupplementaryProvider:asPartOf:)();

  return v110;
}

void *sub_10028B6F8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003687C();
  sub_1003958F4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_10028B78C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 & 1;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isAnimating.setter();

  v6 = *(v2 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
  v7 = v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
  v6[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = v3;
  if (v7 != v4)
  {
    v8 = v6;
    sub_1004A3758();
  }
}

char *sub_10028B844(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v41 = type metadata accessor for AutomationSemantics();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RiverViewStyling();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for RiverCardDataSource();
  v17 = swift_allocObject();
  *(v17 + 32) = _swiftEmptyArrayStorage;
  *(v17 + 16) = xmmword_1007C4950;
  *(v17 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverDataSource] = v17;
  static RiverViewStyling.todayTabSpeed.getter();
  RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
  v18 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling;
  (*(v13 + 32))(&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling], v15, v12);
  v19 = *(v13 + 16);
  v19(v15, &v4[v18], v12);
  v20 = objc_allocWithZone(sub_10002849C(&qword_10097D5D0, &qword_1007C49F0));

  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView] = RiverView.init(dataSource:styling:)();
  v19(v15, &v4[v18], v12);
  v21 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView(0));
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView] = sub_1004A23B8(v15);
  v47[0] = sub_1000DB5A0;
  v47[1] = 0;
  v47[2] = sub_1005AB60C;
  v47[3] = 0;
  v47[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[5] = 0;
  v47[6] = sub_100113508;
  v47[7] = 0;
  v47[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v47[9] = 0;
  v47[10] = sub_100287668;
  v47[11] = 0;
  v48 = 0x4000000000000000uLL;
  v49 = 0;
  v50 = 0x4018000000000000;
  v51 = 0;
  v52 = 1;
  v22 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView(0));
  *&v4[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView] = sub_100550DDC(v47, &v48);
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v25 = *&v23[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v26 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v27 = *&v23[v24];
  [v27 bounds];
  [v27 setBounds:?];

  [*&v23[v24] setClipsToBounds:1];
  v28 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  [*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView] setClipsToBounds:0];
  v29 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  [*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView] setClipsToBounds:1];
  v30 = [v26 contentView];
  [v30 addSubview:*&v23[v24]];

  [*&v26[v29] addSubview:*&v26[v28]];
  v31 = [v26 contentView];
  [v31 addSubview:*&v26[v29]];

  v32 = [v26 contentView];
  [v32 addSubview:*&v26[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView]];

  v33 = *&v26[v28];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v34 = v33;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v35 = *(v9 + 8);
  v36 = v41;
  v35(v11, v41);
  v37 = *&v23[v24];
  v45 = 0u;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v38 = v37;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v42);
  sub_10003D444(&v44);
  UIView.setAutomationSemantics(_:)();

  v35(v11, v36);
  return v26;
}

void sub_10028BEA0()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isAnimating.setter();

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView);
  v4 = *(v0 + v1);
  v5 = v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating];
  v3[OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_isAnimating] = v4;
  if (v4 != v5)
  {
    v6 = v3;
    sub_1004A3758();
  }
}

void sub_10028BF7C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView) + qword_10098B800) = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_100551D80();
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
  dispatch thunk of RiverView.isTransitioning.setter();

  if ((*(v1 + v2) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing) = 0;
  }
}

void sub_10028C024()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v2] != 4)
  {
    v3 = [v0 traitCollection];
    v4 = v3;
    if (v0[v1])
    {
      v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    sub_1000A805C(v3, v0[*v5], &v28);
    v6 = v31;

    v7 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
    v8 = v0[v1];
    v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v8)
    {
      v9 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v10 = v0[v9];
    v11 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
    v12 = v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing];
    v23 = v28;
    v24 = v29;
    v25 = v30;
    *&v26 = v6;
    *v27 = 0uLL;
    *(&v26 + 1) = v7;
    v27[16] = 1;
    v27[17] = v10;
    v27[18] = v11;
    v27[19] = v8;
    v27[20] = v12;
    v32 = v28;
    v33 = v29;
    *&v36[13] = *&v27[13];
    v35 = v26;
    *v36 = 0uLL;
    v34 = v30;
    v13 = v7;
    [v0 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v0 traitCollection];
    sub_1006D05F8(v22, v15, v17, v19, v21);

    sub_1000A8C48(&v23);
  }
}

id sub_10028C1D0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassRegular.getter();

  if (v3)
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 30.0;
  }

  v5 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  [*&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView] frame];
  v7 = v6 - v4 + -24.0;
  v8 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if ((v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    v9 = [v1 traitCollection];
    v10 = UITraitCollection.prefersAccessibilityLayouts.getter();

    v11 = (v10 & 1) != 0 ? 0.5 : 0.52;
    [v1 bounds];
    v12 = v11 * CGRectGetHeight(v50);
    RiverViewStyling.interRowSpacing.getter();
    v14 = v13;
    v15 = round((v12 - v13) * 0.5);
    v16 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
    v17 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
    dispatch thunk of RiverView.itemSize.getter();
    v19 = v18;
    v21 = v20;

    if (v19 != v15 || v21 != v15)
    {
      v23 = v14 + v15 + v15;
      v24 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverDataSource];
      swift_beginAccess();
      if (v15 < *(v24 + 48) && v23 <= v7)
      {
        v26 = *&v1[v16];
        dispatch thunk of RiverView.setItemSize(size:)();
      }
    }
  }

  v27 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  [v1 bounds];
  [v28 sizeThatFits:{v29, v30}];
  v32 = v31;
  v34 = v33;

  [*&v1[v5] frame];
  [*&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView] setFrame:{0.0, 0.0, v32, v35}];
  if (v1[v8])
  {
    [*&v1[v5] frame];
    MinY = CGRectGetMinY(v51);
    v37 = [v1 traitCollection];
    v38 = UITraitCollection.isSizeClassCompact.getter();

    if (v38)
    {
      v39 = 50.0;
    }

    else
    {
      v39 = 64.0;
    }

    v40 = floor((MinY - v39 - v34) * 0.5);
    v41 = [v1 traitCollection];
    v42 = UITraitCollection.isSizeClassCompact.getter();

    if (v42)
    {
      v43 = 50.0;
    }

    else
    {
      v43 = 64.0;
    }

    v44 = v40 + v43;
  }

  else
  {
    v45 = [v1 traitCollection];
    v46 = UITraitCollection.isSizeClassCompact.getter();

    if (v46 & 1) != 0 || (v47 = [v1 traitCollection], v48 = UITraitCollection.prefersAccessibilityLayouts.getter(), v47, (v48))
    {
      [*&v1[v5] frame];
      v44 = floor((CGRectGetMinY(v52) - v34) * 0.5);
    }

    else if (v7 < v34)
    {
      v44 = v4 + v7 - v34;
    }

    else
    {
      v44 = v4;
    }
  }

  return [*&v1[v27] setFrame:{0.0, v44, v32, v34}];
}

void sub_10028C5DC(__n128 a1)
{
  sub_1004EE4C4();
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v3 = 20.0;
  if (*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView) _setContinuousCornerRadius:v3];
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView);
  v4[qword_10098B7F8] = *(v1 + v2);
  v5 = v4;
  sub_100551950();
}

void sub_10028C680()
{
  [v0 setNeedsLayout];
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v1[qword_10098B7B8] = v0[*v2];
  v3 = v1;
  sub_10055189C();
}

void sub_10028C728(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (a3)
  {
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v20 = a1;
      sub_10028C938(v12);
      v13 = v20;
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v15 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000A83AC(v10, v4 + v15);
    swift_endAccess();
    *(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = (*(a2 + 160))(ObjectType, a2);
    sub_10028E724();
    v16 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v16);
    if (swift_dynamicCastClass())
    {
      v17 = *(v4 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView);
      v18 = a1;
      v19 = v17;
      dispatch thunk of RiverView.isAnimating.setter();

      swift_unknownObjectWeakAssign();
    }
  }
}

id sub_10028C938(char *a1)
{
  v3 = [v1 contentView];
  v4 = [a1 contentView];
  v5 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v6 = *&a1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  [v6 setHidden:0];
  [v6 removeFromSuperview];
  v7 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  [v8 setHidden:1];
  [v8 removeFromSuperview];
  v9 = *&v1[v7];
  *&v1[v7] = v6;
  v10 = v6;

  [v3 addSubview:v10];
  v11 = *&a1[v5];
  *&a1[v5] = v8;
  v12 = v8;

  [v4 addSubview:v12];
  v50 = [v1 contentView];
  v51 = [a1 contentView];
  v13 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  v14 = *&a1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView];
  [v14 setHidden:0];
  [v14 removeFromSuperview];
  v15 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverContainerView];
  [v16 setHidden:1];
  [v16 removeFromSuperview];
  v17 = *&v1[v15];
  *&v1[v15] = v14;
  v18 = v1;
  v19 = v14;

  [v50 addSubview:v19];
  v20 = *&a1[v13];
  *&a1[v13] = v16;
  v21 = a1;
  v22 = v16;

  [v51 addSubview:v22];
  v23 = *&v1[v15];
  v24 = *&a1[v13];
  v25 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v26 = *&v21[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v27 = v23;
  v28 = v24;
  [v26 setHidden:0];
  [v26 removeFromSuperview];
  v29 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v30 = *&v18[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  [v30 setHidden:1];
  [v30 removeFromSuperview];
  v31 = *&v18[v29];
  *&v18[v29] = v26;
  v32 = v18;
  v33 = v26;

  [v27 addSubview:v33];
  v34 = *&v21[v25];
  *&v21[v25] = v30;
  v35 = v21;
  v36 = v30;

  [v28 addSubview:v36];
  v37 = [v32 contentView];
  v38 = [v35 contentView];
  v39 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  v40 = *&v35[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  [v40 setHidden:0];
  [v40 removeFromSuperview];
  v41 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView;
  v42 = *&v32[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  [v42 setHidden:1];
  [v42 removeFromSuperview];
  v43 = *&v32[v41];
  *&v32[v41] = v40;
  v44 = v32;
  v45 = v40;

  [v37 addSubview:v45];
  v46 = *&v35[v39];
  *&v35[v39] = v42;
  v47 = v35;
  v48 = v42;

  [v38 addSubview:v48];
  [v47 setNeedsLayout];

  return [v44 setNeedsLayout];
}

void sub_10028CDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v6 = a2;
  v7 = type metadata accessor for EditorialDisplayOptions();
  v127 = *(v7 - 8);
  __chkstk_darwin(v7);
  v135 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TodayCard.Style();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StringCharacteristics();
  v11 = *(v124 - 8);
  __chkstk_darwin(v124);
  v133 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v15, &v4[v18]);
  swift_endAccess();
  v134 = v6;
  sub_1004EAB3C(v6);
  v136 = v4;
  v19 = [v4 backgroundView];
  if (v19)
  {
    v20 = v19;
    v21 = TodayCard.backgroundColor.getter();
    if (!v21)
    {
      sub_100028BB8();
      v21 = static UIColor.todayCardDefaultBackground.getter();
    }

    v22 = v21;
    [v20 setBackgroundColor:v21];
  }

  v23 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaRiver();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    goto LABEL_83;
  }

  v119 = v24;
  v120 = v11;
  v25 = *&v136[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  v26 = TodayCard.heading.getter();
  v132 = v27;
  v123 = TodayCard.title.getter();
  v129 = v28;
  v115 = TodayCard.shortTitle.getter();
  v131 = v29;
  TodayCard.titleCharacteristics.getter();
  v30 = TodayCard.inlineDescription.getter();
  v122 = v31;
  v130 = v10;
  TodayCard.style.getter();
  TodayCard.editorialDisplayOptions.getter();
  v32 = v134;
  v117 = v23;
  v121 = v7;
  v116 = v30;
  if (v134 == 4)
  {
    v118 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v33 = sub_100287668;
  }

  else
  {
    v33 = sub_100287668;
    v118 = sub_100113508;
  }

  v25[qword_10098B7E8] = 0;
  v34 = *&v25[qword_10098B7D0];
  *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v35 = *&v25[qword_10098B7C8];
  sub_10006E7C4(v26, v132);
  v36 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v37 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v38 = *&v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v32 == 4 && (v36 & 1) == 0)
  {
    if (([v38 isHidden] & 1) != 0 || (v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v35[v37] setHidden:1];
      goto LABEL_24;
    }

    [*&v35[v37] setHidden:1];
    v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    goto LABEL_22;
  }

  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v41 = static String.isNilOrEmpty(_:)();
  v42 = v41 & 1;

  if (v42 != [*&v35[v37] isHidden] && (v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) != 0)
  {
    if ((v41 & 1) == 0)
    {
      [*&v35[v37] setAlpha:0.0];
      v113 = objc_opt_self();
      [v113 inheritedAnimationDuration];
      v44 = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = v35;
      v141 = sub_1000A9214;
      v142 = v45;
      v114 = sub_100287668;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100007A08;
      v140 = &unk_1008BBE48;
      v112 = _Block_copy(&aBlock);
      v46 = v35;
      v111 = v46;

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      v141 = sub_1000A9220;
      v142 = v47;
      v33 = v114;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100504C5C;
      v140 = &unk_1008BBE98;
      v48 = _Block_copy(&aBlock);
      v49 = v111;

      v50 = v112;
      [v113 animateWithDuration:0 delay:v112 options:v48 animations:v44 completion:0.0];
      _Block_release(v48);
      _Block_release(v50);
    }

    [*&v35[v37] setHidden:v41 & 1];
    v35[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_22:
    [v35 setNeedsLayout];
    goto LABEL_24;
  }

  [*&v35[v37] setHidden:v42];
LABEL_24:
  v51 = &v25[qword_10098B7F0];
  *v51 = sub_1000DB5A0;
  v51[1] = 0;
  v51[2] = sub_1005AB60C;
  v51[3] = 0;
  v51[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[5] = 0;
  v51[6] = v118;
  v51[7] = 0;
  v51[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v51[9] = 0;
  v51[10] = v33;
  v51[11] = 0;

  sub_100551950();
  v52 = v130;
  if (v129)
  {
    if (v134 == 4)
    {
      sub_1005531F8();
    }

    else
    {
      sub_10055321C();
    }

    v53 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v54 = *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = v54;
    v57 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10028E80C(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v59 = [v55 initWithString:v57 attributes:isa];

    [v56 setAttributedText:v59];
    [*(v34 + v53) setAdjustsFontSizeToFitWidth:0];
    [*(v34 + v53) setMinimumScaleFactor:0.0];
    [*(v34 + v53) setAttributedText:0];
    if (v131 && v25[qword_10098B7C0] == 4)
    {
      v52 = v130;
      if (v134 == 4)
      {
        v60 = v123;
        v61 = v129;
        v62 = v115;
        v63 = v131;
      }

      else
      {
        v60 = v115;
        v61 = v131;
        v62 = v123;
        v63 = v129;
      }

      sub_10006E8BC(v60, v61, v62, v63);
    }

    else
    {
      sub_10006E7C4(v123, v129);
      v52 = v130;
    }
  }

  v64 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v65 = *(v34 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v66 = [v65 text];
  if (v66 || (v66 = [*(v34 + v64) attributedText]) != 0)
  {

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v134;
  [v65 setHidden:v67];

  [v25 setNeedsLayout];
  v69 = *&v25[qword_10098B7D8];
  [v69 setImage:0];
  [v69 setHidden:1];
  v70 = v68 == 4;
  v71 = v122;
  if (v70 || (EditorialDisplayOptions.suppressTagline.getter() & 1) != 0 || !v71)
  {
    v74 = *&v25[qword_10098B7E0];
    v75 = &v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    if (!v71)
    {
      v77 = v76;
      v78 = 0;
      v73 = 1;
      goto LABEL_48;
    }

    v73 = 1;
  }

  else
  {
    v72 = HIBYTE(v71) & 0xF;
    if ((v71 & 0x2000000000000000) == 0)
    {
      v72 = v116 & 0xFFFFFFFFFFFFLL;
    }

    v73 = v72 == 0;
    v74 = *&v25[qword_10098B7E0];
    v75 = &v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v76 = *&v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  }

  v77 = v76;
  v78 = String._bridgeToObjectiveC()();
LABEL_48:
  [v77 setText:v78];

  if (v73 == [*v75 isHidden] || (v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v75 setHidden:v73];
  }

  else
  {
    if (!v73)
    {
      [*v75 setAlpha:0.0];
      v79 = objc_opt_self();
      [v79 inheritedAnimationDuration];
      v81 = v80;
      v82 = swift_allocObject();
      *(v82 + 16) = v74;
      v141 = sub_1000A8B90;
      v142 = v82;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100007A08;
      v140 = &unk_1008BBDA8;
      v83 = _Block_copy(&aBlock);
      v84 = v74;

      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      v141 = sub_1000A8B98;
      v142 = v85;
      aBlock = _NSConcreteStackBlock;
      v138 = 1107296256;
      v139 = sub_100504C5C;
      v140 = &unk_1008BBDF8;
      v86 = _Block_copy(&aBlock);
      v87 = v84;
      v52 = v130;

      [v79 animateWithDuration:0 delay:v83 options:v86 animations:v81 completion:0.0];
      _Block_release(v86);
      _Block_release(v83);
    }

    [*v75 setHidden:v73];
    v74[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v74 setNeedsLayout];
  }

  sub_100550798(v52, 1);
  [v25 setNeedsLayout];

  (*(v127 + 8))(v135, v121);
  (*(v125 + 8))(v52, v126);
  (*(v120 + 8))(v133, v124);
  v88 = TodayCardMediaRiver.lockups.getter();
  v89 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v90 = v136;
  v91 = *&v136[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v92 = dispatch thunk of RiverView.dataSource.getter();

  swift_beginAccess();
  *(v92 + 32) = v88;

  v93 = *&v90[v89];
  v94 = dispatch thunk of RiverView.dataSource.getter();

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v94 + 16) = v143;

  v143 = _swiftEmptyArrayStorage;
  v95 = v88 & 0xFFFFFFFFFFFFFF8;
  if (v88 >> 62)
  {
LABEL_89:
    v96 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v96 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v96 != v97)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v97 >= *(v95 + 16))
      {
        goto LABEL_86;
      }

      v99 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v100 = dispatch thunk of Lockup.artwork.getter();

    ++v97;
    if (v100)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v98 = v143;
      v97 = v99;
    }
  }

  v101 = sub_10028B6F8(v98);
  v88 = v101;
  v102 = *&v136[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v143 = _swiftEmptyArrayStorage;
  v95 = v101 & 0xFFFFFFFFFFFFFF8;
  if (v101 >> 62)
  {
    v103 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v103 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v104 = v102;
  v105 = 0;
  v106 = _swiftEmptyArrayStorage;
  while (v103 != v105)
  {
    if ((v88 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v105 >= *(v95 + 16))
      {
        goto LABEL_88;
      }

      v107 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_87;
      }
    }

    v108 = Artwork.backgroundColor.getter();

    ++v105;
    if (v108)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v106 = v143;
      v105 = v107;
    }
  }

  v109 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v110 = *&v104[v109];
  *&v104[v109] = v106;
  sub_1004A2DB8(v110);

  [v136 setNeedsLayout];
LABEL_83:
}

double sub_10028DFE8()
{
  type metadata accessor for TodayCard();
  sub_10028E80C(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v8)
  {
    TodayCard.media.getter();

    type metadata accessor for TodayCardMediaRiver();
    if (!swift_dynamicCastClass() || (TodayCardMediaRiver.lockups.getter(), type metadata accessor for Lockup(), v1 = Array.isNotEmpty.getter(), , (v1 & 1) == 0))
    {

      return result;
    }

    v2 = TodayCardMediaRiver.lockups.getter();
    v3 = v2;
    v4 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 >> 62)
    {
LABEL_24:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (v5)
      {
LABEL_6:
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v7 >= *(v4 + 16))
              {
                goto LABEL_23;
              }

              v6 = v7 + 1;
              if (__OFADD__(v7, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            if (Lockup.icon.getter())
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_25;
            }
          }

          Artwork.config(_:mode:prefersLayeredImage:)();

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v6 != v5);
      }
    }

    else
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_6;
      }
    }

LABEL_25:

    ArtworkLoader.prefetchArtwork(using:)(_swiftEmptyArrayStorage);
  }

  return result;
}

double sub_10028E27C()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v2 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverView];
  v4 = dispatch thunk of RiverView.dataSource.getter();

  swift_beginAccess();
  *(v4 + 32) = _swiftEmptyArrayStorage;

  v5 = *&v1[v2];
  dispatch thunk of RiverView.flushRows()();

  v6 = *&v1[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_gradientView];
  v7 = OBJC_IVAR____TtC8AppStore28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = _swiftEmptyArrayStorage;
  v9 = v6;
  sub_1004A2DB8(v8);

  return result;
}

uint64_t sub_10028E470()
{

  v1 = OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_riverStyling;
  v2 = type metadata accessor for RiverViewStyling();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for RiverTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10097D5C0;
  if (!qword_10097D5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10028E658(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for RiverViewStyling();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10028E724()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v2 = [v0 contentView];
    [v2 setClipsToBounds:1];
  }

  result = [v0 setNeedsLayout];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_labelsView];
  v5 = v0[v1];
  *(v4 + qword_10098B7C0) = v5;
  if (v5 != 7)
  {
    *(*(v4 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = v5;
  }

  return result;
}

uint64_t sub_10028E80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10028E86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10028F204(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v43 = a4;
  v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((Action.presentationStyle.getter() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v18 = static UIColor.primaryText.getter();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_10028F24C(v19);
  v21 = type metadata accessor for Accessory(0);
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100611864(v10, v41);
  sub_10002B894(v10, &qword_100984340, qword_1007C0830);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v26 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = Action.artwork.getter();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1006123AC();
  [v36 setHidden:v35];

LABEL_18:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v37 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

double sub_10028ED64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_100611C08([v6 init]);
    v7 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      SearchAd.adTransparencyAction.getter();
      Action.title.getter();
      v11 = v10;

      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_1009750A8];
        v19 = *&v16[qword_1009750A8];
        v20 = *&v16[qword_1009750A8 + 8];
        *v18 = sub_10028F52C;
        v18[1] = v17;

        v21 = v16;

        sub_10001F63C(v19, v20);
      }
    }

    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_10028EF64(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00, &unk_1007B3130);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_10028F0F8(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

uint64_t sub_10028F204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_10028F24C(void *a1)
{
  if ((Action.presentationStyle.getter() & 4) != 0)
  {
    return 1;
  }

  if ((Action.presentationStyle.getter() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

double sub_10028F2C8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = [a6 traitCollection];
  v13 = [v12 horizontalSizeClass];

  if (v13 == 1)
  {
    [a6 pageMarginInsets];
    top = v14;
    left = v16;
    bottom = v18;
    right = v20;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  type metadata accessor for Action();

  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v32, *(&v33 + 1));
    v22 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v32);
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_10002B894(&v32, &unk_100992FE0, &qword_1007BBDD0);
    v22 = 0;
  }

  v23 = Action.title.getter();
  v25 = v24;
  v26 = Action.artwork.getter();
  if (v26)
  {
  }

  v27 = sub_10028F24C(a6);
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for ActionLayout.Metrics();
  v29 = sub_1000056A8(v28, qword_1009D2F68);
  v30 = sub_100614920(v29, a6, v23, v25, v26 != 0, v27, v22 & 1, v7, a2, a3, top, left, bottom, right, ObjectType);

  return v30;
}

id sub_10028F534(uint64_t a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v9 = v8;
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ActionLayout.Metrics();
  v11 = sub_1000056A8(v10, qword_1009D2F68);
  v12 = sub_100615214(v11, a5, v9, a3);
  v14 = v13;
  v15 = objc_opt_self();
  v16 = [v15 absoluteDimension:v12];
  v17 = [v15 absoluteDimension:v14];
  v18 = objc_opt_self();
  v19 = [v18 sizeWithWidthDimension:v16 heightDimension:v17];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = v14 * a1;
  v22 = [v15 absoluteDimension:v12];
  v23 = [v15 absoluteDimension:v21];
  v24 = [v18 sizeWithWidthDimension:v22 heightDimension:v23];

  v25 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1007B0B70;
  *(v26 + 32) = v20;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v27 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v25 verticalGroupWithLayoutSize:v24 subitems:isa];

  [v29 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v30 = [objc_opt_self() fixedSpacing:0.0];
  [v29 setInterItemSpacing:v30];

  return v29;
}

uint64_t type metadata accessor for ProductPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_10097D620;
  if (!qword_10097D620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10028F8AC(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v142 = a8;
  v134 = a7;
  v136 = a6;
  v137 = a5;
  v135 = a4;
  v139 = a3;
  v143 = a10;
  v144 = a2;
  v141 = a9;
  v11 = sub_10002849C(&qword_10097F480, &unk_1007C4AB0);
  __chkstk_darwin(v11 - 8);
  v123 = &v122 - v12;
  v131 = type metadata accessor for PageGrid();
  v133 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for InformationRibbon.Alignment();
  v129 = *(v132 - 1);
  __chkstk_darwin(v132);
  v128 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ItemLayoutContext();
  v140 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Shelf.ContentType();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v125 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v122 - v22;
  v24 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v124 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v122 - v28;
  v138 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v127 = v19;
  v31 = *(v19 + 88);
  v126 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v140 = &v122;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    type metadata accessor for BasePageLayoutSectionProvider();
    v42 = method lookup function for BasePageLayoutSectionProvider();
    v133 = v42(v138, sub_10002F0EC, &v122 - 4, v135, v137, v136, v134, v142, v141, v143);
    v43 = v124;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v44 = v125;
    ReadOnlyLens.subscript.getter();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v144();
      v47 = sub_10040C1D8(v138, v46, v135, v137, v136, v134, v142, v141, v143);
    }

    else
    {
      v48 = v44;
      v47 = v133;
      v49 = v138;
      v50 = v143;
      v51 = v142;
      v52 = v136;
      v53 = v134;
      v54 = v137;
      v55 = v135;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v144();
        v57 = sub_10040D51C(v49, v56, v55, v54, v52, v53, v51, v141, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v101 = v127;
          (*(v127 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v133 setOrthogonalScrollingBehavior:2];
      }
    }

    v101 = v127;
LABEL_30:
    (*(v101 + 8))(v126, v33);
    return v47;
  }

  v35 = v144();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v127 = v35;
  v126 = v36;
  if (v36)
  {
    v37 = v35;
    type metadata accessor for Badge();
    v144 = v140[2];
    v38 = v37 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    v39 = v140[9];
    v40 = (v140 + 1);
    v139 = _swiftEmptyArrayStorage;
    (v144)(v17, v38, v15);
    while (1)
    {
      sub_100292870(&qword_100973128, &type metadata accessor for Badge, &protocol conformance descriptor for Badge);
      ItemLayoutContext.typedModel<A>(as:)();
      (*v40)(v17, v15);
      if (v147)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v139 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v139 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v144)(v17, v38, v15);
    }
  }

  else
  {
    v139 = _swiftEmptyArrayStorage;
  }

  v58 = v129;
  v59 = v128;
  (*(v129 + 104))(v128, enum case for InformationRibbon.Alignment.justified(_:), v132);
  v60 = v130;
  v61 = v138;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v63 = v62;
  v65 = v64;
  v66 = v133 + 8;
  v67 = *(v133 + 1);
  v68 = v131;
  v67(v60, v131);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v70 = v69;
  v67(v60, v68);
  v71 = ShelfLayoutContext.traitCollection.getter();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v146.receiver = v73;
  v146.super_class = v72;
  v75 = objc_msgSendSuper2(&v146, "init");
  v76.n128_u64[0] = v63;
  sub_100290A28(v139, v59, v75, v76, v65);
  v78 = v77;

  (*(v58 + 8))(v59, v132);
  if (!*(v78 + 16))
  {

    sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
    v98 = type metadata accessor for ShelfLayoutContext();
    v99 = *(v98 - 8);
    v100 = v123;
    (*(v99 + 16))(v123, v61, v98);
    (*(v99 + 56))(v100, 0, 1, v98);
    v47 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_10002B894(v100, &qword_10097F480, &unk_1007C4AB0);

    return v47;
  }

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v132 = v67;
  v67(v60, v68);
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v79, qword_1009D2508);
  v80 = ShelfLayoutContext.traitCollection.getter();
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v82 = v81;

  v147 = _swiftEmptyArrayStorage;
  v83 = v137;
  v144 = *(v78 + 16);
  v133 = v66;
  if (!v144)
  {
    v89 = 0.0;
LABEL_32:

    v102 = objc_opt_self();
    v103 = objc_opt_self();
    v104 = [v103 absoluteDimension:v89];
    v105 = [v103 absoluteDimension:v82];
    v106 = [objc_opt_self() sizeWithWidthDimension:v104 heightDimension:v105];

    sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v108 = [v102 horizontalGroupWithLayoutSize:v106 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v108];
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v109 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setBoundarySupplementaryItems:v109];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
    v110 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setDecorationItems:v110];

    v111 = v130;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v113 = v112;
    v115 = v114;
    v132(v111, v131);
    sub_10002A400(v83, v83[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v117 = v116;
    sub_10002A400(v83, v83[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v47 setContentInsets:{v117, v113, v118, v115}];
    [v47 setOrthogonalScrollingBehavior:1];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v119 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v121 = v120;

    if (v119)
    {
      aBlock[4] = v119;
      aBlock[5] = v121;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006BBC70;
      aBlock[3] = &unk_1008BBF50;
      v119 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v119];
    _Block_release(v119);

    return v47;
  }

  v84 = objc_opt_self();
  v139 = objc_opt_self();
  result = objc_opt_self();
  if (v126)
  {
    v86 = result;
    result = v142;
    if (v144 <= v126)
    {
      swift_getObjectType();
      v87 = 0;
      v129 = v78;
      v88 = v78 + 32;
      v89 = 0.0;
      do
      {
        v90 = *(v88 + 8 * v87);
        v91 = [v84 absoluteDimension:v90];
        v92 = [v84 absoluteDimension:v82];
        v93 = [v139 sizeWithWidthDimension:v91 heightDimension:v92];

        dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
        sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
        v94 = v93;
        v95 = Array._bridgeToObjectiveC()().super.isa;

        v96 = [v86 itemWithLayoutSize:v94 supplementaryItems:v95];

        v97 = v96;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v87 = (v87 + 1);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v89 = v89 + v90;
      }

      while (v144 != v87);
      v83 = v137;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100290A28(unint64_t a1, char *a2, void *a3, __n128 a4, double a5)
{
  v7 = a4.n128_f64[0];
  v10 = type metadata accessor for InformationRibbon.Alignment();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_1007C4B10, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(v7 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (v7 > 0.0)
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_100291050(v29, v27, 0, v21, a3, v7, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10003356C(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_10003356C((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      *&a2[8 * v15 + 32] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        v7 = v7 - v28;
        if (v7 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = a2 + 32;
        v52 = _swiftEmptyArrayStorage;
        sub_100144108(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = v52[2];
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = v35[3];
          if (a3 + v34 >= v37 >> 1)
          {
            sub_100144108((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          v35[2] = a3 + v34 + 1;
          *&v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (v35 + 6);
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = *&v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_100548D50(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(v7 * (v46 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_1007C4B00, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

double sub_100291050(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v140 = a5;
  v124 = a4;
  v132 = a3;
  v121 = type metadata accessor for LabelPlaceholderCompatibility();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for BadgeViewSpacing();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v13 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v128 = v118 - v15;
  v139 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v133 = *(v139 - 8);
  __chkstk_darwin(v139);
  v17 = v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972620, &unk_1007C4AF0);
  __chkstk_darwin(v18 - 8);
  v123 = v118 - v19;
  v135 = type metadata accessor for BadgeCaptionCappingType();
  v143 = *(v135 - 8);
  __chkstk_darwin(v135);
  v127 = v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v142 = v118 - v22;
  v136 = type metadata accessor for FontUseCase();
  v122 = *(v136 - 8);
  __chkstk_darwin(v136);
  v24 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SystemImage();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for BadgeType();
  v138 = *(v144 - 8);
  __chkstk_darwin(v144);
  v126 = v118 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v125 = v118 - v31;
  __chkstk_darwin(v32);
  v34 = v118 - v33;
  v141 = a1;
  sub_10007E1E4();
  v134 = a2;
  v129 = v13;
  if (v35)
  {
    if (qword_10096DE58 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v136, qword_1009D0A88);
    v36 = type metadata accessor for Feature();
    v148 = v36;
    v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v37 = sub_1000056E0(v147);
    (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);
    isFeatureEnabled(_:)();
    sub_100007000(v147);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  }

  Badge.type.getter();
  v137 = *(v138 + 88);
  v38 = v137(v34, v144);
  v39 = enum case for BadgeType.rating(_:);
  if (v38 != enum case for BadgeType.rating(_:))
  {
    if (v38 == enum case for BadgeType.contentRating(_:))
    {
      v47 = Badge.content.getter();
      v48 = BadgeContentKeyContentRatingResource.getter();
      v45 = v133;
      v46 = v135;
      if (!*(v47 + 16))
      {

        goto LABEL_38;
      }

      v50 = sub_1000072B8(v48, v49);
      v52 = v51;

      if (v52)
      {
        sub_1000073E8(*(v47 + 56) + 32 * v50, v147);

        if (swift_dynamicCast())
        {
          v53 = sub_10032FEB0(v145, v146, 0);

          [v53 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v46 = v135;
    if (v38 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v45) = enum case for BadgeType.rating(_:);
      v54._object = 0x80000001007FF2C0;
      v54._countAndFlagsBits = 0xD000000000000020;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      v118[1] = localizedString(_:comment:)(v54, v55)._countAndFlagsBits;
      if (qword_10096DE60 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v45 = v133;
    if (v38 == enum case for BadgeType.editorsChoice(_:))
    {
      sub_1002928B8(a6, 0, v140);
      goto LABEL_38;
    }

    v67 = v140;
    v68 = v144;
    if (v38 == enum case for BadgeType.artwork(_:))
    {
      if (qword_10096E6F8 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v139, qword_1009D2508);
      BadgeViewRibbonLayout.Metrics.badgeIconSize.getter();
      v69 = [v67 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      CGSize.scaled(_:)();
      goto LABEL_39;
    }

    if (v38 == enum case for BadgeType.paragraph(_:))
    {
      sub_10007E3A0();
      if (qword_10096DE50 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v136, qword_1009D0A70);
      v72 = type metadata accessor for Feature();
      v148 = v72;
      v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v73 = sub_1000056E0(v147);
      (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
      isFeatureEnabled(_:)();
      sub_100007000(v147);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v75 = v74;

      v76 = [v67 traitCollection];
      sub_1005224E0(v76, v75, a6);
    }

    else
    {
      if (v38 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v138 + 8))(v34, v144);
        goto LABEL_39;
      }

      v77 = Badge.content.getter();
      v78 = BadgeContentKeyNativeContentView.getter();
      if (!*(v77 + 16))
      {

        goto LABEL_39;
      }

      v80 = sub_1000072B8(v78, v79);
      v82 = v81;

      if ((v82 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1000073E8(*(v77 + 56) + 32 * v80, v147);

      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v76 = v145;
      [v145 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v40 = [v140 traitCollection];
  v41 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v26 + 104))(v28, enum case for SystemImage.star(_:), v25);
  v42 = v39;
  v43 = [v41 configurationWithTraitCollection:v40];
  v44 = static SystemImage.load(_:with:)();

  v39 = v42;
  (*(v26 + 8))(v28, v25);
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];

  v45 = v133;
  v46 = v135;
  while (1)
  {
LABEL_38:
    v68 = v144;
LABEL_39:
    v83 = v125;
    Badge.type.getter();
    if (v137(v83, v68) == v39)
    {
      v84 = sub_10007F978();
      [v84 frame];
      CGRectGetWidth(v150);

      v85 = v140;
    }

    else
    {
      (*(v138 + 8))(v83, v68);
      if (v124 >= 4)
      {
        Badge.longCaption.getter();
        if (v86)
        {
          v85 = v140;
LABEL_45:
          if (qword_10096DE70 != -1)
          {
            swift_once();
          }

          sub_1000056A8(v136, qword_1009D0AD0);
          v88 = type metadata accessor for Feature();
          v148 = v88;
          v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v89 = sub_1000056E0(v147);
          (*(*(v88 - 8) + 104))(v89, enum case for Feature.measurement_with_labelplaceholder(_:), v88);
          isFeatureEnabled(_:)();
          sub_100007000(v147);
          static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

          v68 = v144;
          goto LABEL_48;
        }
      }

      Badge.caption.getter();
      v85 = v140;
      if (v87)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v143 + 104))(v142, enum case for BadgeCaptionCappingType.none(_:), v46);
    v90 = Badge.heading.getter();
    if (v91)
    {
      v92 = v46;
      v147[0] = v90;
      v147[1] = v91;
      v93 = v123;
      static Locale.storefront.getter();
      v94 = type metadata accessor for Locale();
      (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
      sub_10007FED4();
      StringProtocol.uppercased(with:)();
      sub_10002B894(v93, &qword_100972620, &unk_1007C4AF0);

      if (qword_10096DE78 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v136, qword_1009D0AE8);
      v95 = type metadata accessor for Feature();
      v148 = v95;
      v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v96 = sub_1000056E0(v147);
      (*(*(v95 - 8) + 104))(v96, enum case for Feature.measurement_with_labelplaceholder(_:), v95);
      isFeatureEnabled(_:)();
      sub_100007000(v147);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      v68 = v144;
      v46 = v92;
    }

    v97 = v131;
    if (qword_10096E6F8 != -1)
    {
      swift_once();
    }

    v98 = v139;
    v99 = sub_1000056A8(v139, qword_1009D2508);
    (*(v45 + 16))(v17, v99, v98);
    v24 = v46;
    (*(v143 + 16))(v127, v142, v46);
    BadgeViewRibbonLayout.Metrics.captionCappingType.setter();
    v100 = v126;
    Badge.type.getter();
    if (v137(v100, v68) == enum case for BadgeType.chartPosition(_:))
    {
      v101 = v129;
      *v129 = 0;
      v102 = v130;
      (*(v130 + 104))(v101, enum case for BadgeViewSpacing.spacing(_:), v97);
    }

    else
    {
      v102 = v130;
      v101 = v129;
      (*(v130 + 104))(v129, enum case for BadgeViewSpacing.standard(_:), v97);
      (*(v138 + 8))(v100, v68);
    }

    v103 = v134;
    (*(v102 + 32))(v128, v101, v97);
    BadgeViewRibbonLayout.Metrics.spacingType.setter();
    v46 = v24;
    if (v132)
    {
      goto LABEL_69;
    }

    v104 = [v85 traitCollection];
    v105 = UITraitCollection.prefersRightToLeftLayouts.getter();
    v106 = v105;
    if (!v103 && (v105 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v124, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v124 - 1 == v103) & v105) == 1)
    {
LABEL_62:
      v107 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v108 + 8) = 0;
      v107(v147, 0);
      v109 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v110 + 8) = 0;
      v109(v147, 0);
      v46 = v135;
    }

    if (!v103 && ((v106 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v124, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v56 = v136;
    v57 = sub_1000056A8(v136, qword_1009D0AA0);
    (*(v122 + 16))(v24, v57, v56);
    v58 = [v140 traitCollection];
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v58).super.isa;
    v60 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v60)
    {
      v61 = [objc_opt_self() fontWithDescriptor:v60 size:0.0];

      v39 = v45;
      if (v61)
      {
        v62 = type metadata accessor for Feature();
        v148 = v62;
        v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v63 = sub_1000056E0(v147);
        (*(*(v62 - 8) + 104))(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v62);
        v64 = v61;
        isFeatureEnabled(_:)();
        sub_100007000(v147);
        v65 = v119;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_100292870(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
        v66 = v121;
        dispatch thunk of Measurable.measurements(fitting:in:)();

        (*(v120 + 8))(v65, v66);
        goto LABEL_26;
      }
    }

    else
    {

      v39 = v45;
    }

    v70 = type metadata accessor for Feature();
    v148 = v70;
    v149 = sub_100292870(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v71 = sub_1000056E0(v147);
    (*(*(v70 - 8) + 104))(v71, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
    isFeatureEnabled(_:)();
    sub_100007000(v147);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

LABEL_26:
    (*(v122 + 8))(v24, v136);
    v45 = v133;
  }

  if ((v124 - 1 != v103) | v106 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v111 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
  *(v112 + 24) = 0;
  v111(v147, 0);
  v113 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
  *(v114 + 24) = 0;
  v113(v147, 0);
LABEL_68:

LABEL_69:
  static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)();
  v116 = v115;
  (*(v45 + 8))(v17, v139);
  (*(v143 + 8))(v142, v46);
  return v116;
}