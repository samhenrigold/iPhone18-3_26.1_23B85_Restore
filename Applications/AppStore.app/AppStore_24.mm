uint64_t sub_1002AE698(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE708(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AE770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE7D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1002AE860(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = &v4[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007B10D0;
  *(v30 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v30 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v26;
}

uint64_t sub_1002AED00@<X0>(uint64_t *a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for VerticalStack();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for DisjointStack();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  DisjointStack.init(with:)();
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  VerticalStack.init(with:)();
  v14 = *&v13[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView(0);
  v26 = sub_1002B00A8(&qword_100990FE0, type metadata accessor for CarouselItemModuleHeaderView, &unk_1007D1880);
  v24[0] = v14;
  v15 = v14;
  VerticalStack.adding(_:with:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_100007000(v24);
  v17 = *&v13[OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView];
  v23[3] = type metadata accessor for CarouselItemModuleLockupView();
  v23[4] = sub_1002B00A8(&qword_10097DD70, type metadata accessor for CarouselItemModuleLockupView, &unk_1007C3BB0);
  v23[0] = v17;
  v25 = v2;
  v26 = &protocol witness table for VerticalStack;
  sub_1000056E0(v24);
  v18 = v17;
  VerticalStack.adding(_:with:)();
  v16(v8, v2);
  sub_100007000(v23);
  v19 = v22;
  v22[3] = v9;
  v19[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v19);
  DisjointStack.inserting(_:at:with:)();
  (*(v10 + 8))(v12, v9);
  return sub_100007000(v24);
}

uint64_t sub_1002AF138()
{
  v0 = type metadata accessor for DisjointStack.EdgePosition();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3[3] = type metadata accessor for ZeroDimension();
  v3[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v3);
  static ZeroDimension.zero.getter();
  (*(v1 + 104))(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  return DisjointStack.Properties.bottomEdge.setter();
}

uint64_t sub_1002AF22C(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v9 + 8))(v11, v8);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v5 + 8))(v7, v4);
  return VerticalStack.Properties.alignment.setter();
}

id sub_1002AF564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v10 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v7 + 40))(&v3[v10], v9, v6);
  swift_endAccess();
  sub_10026FA50(a1, a2);
  HeroCarouselItemOverlay.displayOptions.getter();
  v11 = HeroCarouselItemOverlay.badgeText.getter();
  v13 = v12;
  v14 = HeroCarouselItemOverlay.descriptionText.getter();
  sub_1004D877C(v9, v11, v13, v14, v15);

  (*(v7 + 8))(v9, v6);
  return [v3 setNeedsLayout];
}

void sub_1002AF714()
{
  v1 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Artwork.Crop();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView);
  if (HeroCarouselItemOverlay.lockup.getter())
  {
    v7 = dispatch thunk of Lockup.artwork.getter();

    if (v7)
    {
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v3 + 8))(v5, v2);
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v8, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v9 = OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView;
      v10 = *(*(v6 + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v10 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v11 = *(*(v6 + v9) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1002B00A8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v12 = v11;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

uint64_t type metadata accessor for CarouselItemSingleModuleOverlay(uint64_t a1)
{
  result = qword_10097DD48;
  if (!qword_10097DD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AFB00(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_1002AFBAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_10001F63C(a1, a2);
}

void sub_1002AFC64()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_1002B00A8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002AFD34(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView;
  type metadata accessor for CarouselItemModuleLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_tapGestureRecognizer;
  *(v1 + v13) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v8 + 104))(v10, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v14 = (v1 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_1002AFFC8(void *a1)
{
  v2 = [a1 touchesForView:*(*(*(v1 + OBJC_IVAR____TtC8AppStore31CarouselItemSingleModuleOverlay_lockupView) + OBJC_IVAR____TtC8AppStore28CarouselItemModuleLockupView_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_1002B00A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1002B00F0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
  v18 = type metadata accessor for Separator();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
    sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v43, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v45, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_1002B0944()
{
  v1 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Separator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10005A3C4(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10002B894(v3, &unk_100970E10, &qword_1007B46A0);
    result = *&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

void sub_1002B0D28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Separator();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.receiver = v1;
  v33.super_class = ObjectType;
  objc_msgSendSuper2(&v33, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
    v20 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    sub_10001F63C(v19, v20);
    return;
  }

  v27 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v29;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002B183C;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10006F094;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000489A8;
  aBlock[3] = &unk_1008BC610;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v27 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v25 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v25], v3);
    CGRect.inset(bySeparator:in:)();

    (*(v4 + 8))(v7, v3);
    v10 = v29;
    v12 = v30;
    v14 = v31;
    v16 = v32;
    v19 = sub_1002B183C;
    goto LABEL_7;
  }

  __break(1u);
}

id sub_1002B107C(char *a1, double *a2)
{
  v3 = type metadata accessor for Separator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  (*(v4 + 16))(v6, &a1[v7], v3);
  Separator.frame(forBoundingRect:in:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v4 + 8))(v6, v3);
  return [a1 setFrame:{v9, v11, v13, v15}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10097DDA0;
  if (!qword_10097DDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B139C(uint64_t a1)
{
  sub_10005A300(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10005A300(319, &unk_100970DF0, &type metadata accessor for Separator);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1002B14DC()
{
  v1 = type metadata accessor for SmallLockupLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002B1610(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkView.isImageHidden.setter();

  v6 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_1002B174C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1002B16F4(uint64_t a1)
{
  result = sub_1002B174C(&qword_10097DDB0, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007C5510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002B174C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1002B1794(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = sub_1000056A8(v4, qword_1009D3798);
  sub_10070B598(v5, a1, 0.0, 0.0);
  return v6;
}

uint64_t sub_1002B1844()
{

  return swift_deallocClassInstance();
}

void sub_1002B188C()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v4 = static UIColor.defaultBackground.getter();
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView];
  v6 = static UIColor.defaultBackground.getter();
  [v5 setBackgroundColor:v6];

  v7 = [v1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 addSubview:v5];

  v9 = [v1 traitCollection];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v10 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_5;
    }

LABEL_7:
    v11 = UITraitCollection.isRegularPad.getter();

    if (v11)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4)
  {
    goto LABEL_7;
  }

LABEL_5:

LABEL_8:
  sub_1002B2C60();
}

void sub_1002B1A5C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v16, "didReceiveMemoryWarning");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_6;
  }

  v5 = UITraitCollection.isRegularPad.getter();

  if (v5)
  {
    return;
  }

LABEL_6:
  v6 = *&v1[v3];
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }

    goto LABEL_8;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (v7)
  {
LABEL_8:
    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController;

    v9 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);

        v11 = *(v10 + 56);
        if (!v11)
        {
          goto LABEL_10;
        }
      }

      v12 = *&v1[v8];
      if (!v12)
      {
        goto LABEL_19;
      }

      sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
      v13 = v11;
      v14 = v12;
      v15 = static NSObject.== infix(_:_:)();

      if ((v15 & 1) == 0)
      {
        v11 = *(v10 + 56);
LABEL_19:
        *(v10 + 56) = 0;

        goto LABEL_11;
      }

LABEL_10:

LABEL_11:
      if (v7 == ++v9)
      {

        return;
      }
    }
  }
}

void sub_1002B1C8C(uint64_t a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for SegmentedViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v4 = &off_10097D000;
  v5 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  v7 = &selRef_setRequiresColorStatistics_;
  v8 = v6 >> 62;
  if (!a1)
  {
    if (v8)
    {
      goto LABEL_45;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    while (1)
    {
LABEL_16:
      v13 = [v2 v7[35]];
      v14 = *(v4[441] + v2);
      if (v14 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 4)
        {
LABEL_18:

          goto LABEL_23;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
      {
        goto LABEL_18;
      }

      v15 = UITraitCollection.isRegularPad.getter();

      if (v15)
      {
        sub_1002B26D8();
        v16 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl;
        v17 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl];
        if (v17)
        {
          [v17 removeFromSuperview];
          v18 = *&v2[v16];
        }

        else
        {
          v18 = 0;
        }

        *&v2[v16] = 0;

        goto LABEL_50;
      }

LABEL_23:
      v44 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
      v19 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (v20 >> 62)
      {
        v4 = _CocoaArrayWrapper.endIndex.getter();
        if (!v4)
        {
LABEL_48:
          v34 = v44;
LABEL_49:
          *&v2[v19] = _swiftEmptyArrayStorage;

          sub_1002B2C60();
          sub_1002B2D20();
          goto LABEL_50;
        }
      }

      else
      {
        v4 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_48;
        }
      }

      v42 = v19;
      v7 = (v20 & 0xC000000000000001);
      v43 = v44;

      v21 = 0;
      while (1)
      {
        if (v7)
        {
          v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v22 = *(v20 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (!v44 || (sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v25 = v43, v26 = v23, v27 = static NSObject.== infix(_:_:)(), v26, v25, (v27 & 1) == 0))
        {
          v28 = [v23 parentViewController];
          if (v28)
          {
            v29 = v28;
            sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
            v30 = v2;
            v31 = static NSObject.== infix(_:_:)();

            if (v31)
            {
              if ([v23 isViewLoaded])
              {
                v32 = [v23 view];
                if (!v32)
                {
                  goto LABEL_61;
                }

                v33 = v32;
                [v32 removeFromSuperview];
              }

              [v23 willMoveToParentViewController:0];
              [v23 removeFromParentViewController];
            }
          }
        }

        ++v21;
        if (v24 == v4)
        {

          v19 = v42;
          v34 = v43;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_50;
      }
    }
  }

  if (v8)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > 3)
    {
      goto LABEL_4;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > 3)
  {
LABEL_4:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = UITraitCollection.isRegularPad.getter();
LABEL_10:
  v10 = [v2 traitCollection];
  v11 = *&v2[v5];
  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
LABEL_12:

      if (v9)
      {
        goto LABEL_16;
      }

      goto LABEL_50;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
    goto LABEL_12;
  }

  v12 = UITraitCollection.isRegularPad.getter() & 1;

  if ((v9 & 1) != v12)
  {
    goto LABEL_16;
  }

LABEL_50:
  v35 = sub_1002B2F6C();
  v36 = [v2 childViewControllers];
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_52;
    }

LABEL_59:

    return;
  }

  v38 = _CocoaArrayWrapper.endIndex.getter();
  if (!v38)
  {
    goto LABEL_59;
  }

LABEL_52:
  if (v38 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v40 = *(v37 + 8 * i + 32);
      }

      v41 = v40;
      [v2 setOverrideTraitCollection:v35 forChildViewController:v40];
    }

    goto LABEL_59;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

void sub_1002B2290(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v8 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 < 4)
  {
    v10 = UITraitCollection.isRegularPad.getter();

    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if (a1 != -1)
  {
    v11 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController;
    v12 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
        v16 = v3;
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {
          if ([v13 isViewLoaded])
          {
            v18 = [v13 view];
            if (!v18)
            {
LABEL_41:
              __break(1u);
              return;
            }

            v19 = v18;
            [v18 removeFromSuperview];
          }

          [v13 willMoveToParentViewController:0];
          [v13 removeFromParentViewController];
        }
      }

      v20 = *&v3[v11];
      *&v3[v11] = 0;
    }
  }

LABEL_15:
  if (a2 == -1)
  {
    goto LABEL_32;
  }

  v21 = *&v3[v7];
  if ((v21 & 0xC000000000000001) != 0)
  {

    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v24 = *(v22 + 56);
    if (v24)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v22 = *(v21 + 8 * a2 + 32);

  v24 = *(v22 + 56);
  if (v24)
  {
LABEL_20:
    v25 = v24;
    goto LABEL_24;
  }

LABEL_23:
  v26 = (*(v22 + 40))(v23);
  v27 = *(v22 + 56);
  *(v22 + 56) = v26;
  v25 = v26;

  v24 = 0;
LABEL_24:
  v28 = v24;
  v29 = [v25 parentViewController];
  if (!v29 || (v30 = v29, sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v31 = v3, v32 = static NSObject.== infix(_:_:)(), v30, v31, (v32 & 1) == 0))
  {
    [v3 addChildViewController:v25];
    v33 = [v3 view];
    if (!v33)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = [v25 view];
    if (!v35)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v35;
    [v34 addSubview:v35];

    swift_getObjectType();
    v37 = swift_conformsToProtocol2();
    if (v37 && v25)
    {
      v38 = v37;
      ObjectType = swift_getObjectType();
      v40 = *(v38 + 16);
      v41 = v3;
      v42 = v25;
      v40(v3, &off_1008BC638, ObjectType, v38);
    }
  }

  v43 = sub_1002B2F6C();
  [v3 setOverrideTraitCollection:v43 forChildViewController:v25];

  v44 = *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = v25;

LABEL_32:
  [*&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] setSelectedSegmentIndex:a2];
  v45 = [v3 view];
  if (!v45)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v46 = v45;
  [v45 bringSubviewToFront:*&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView]];
}

void sub_1002B26D8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v4 >> 62)
  {
    v48 = v2;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v48;
    if (v5 >= 4)
    {
LABEL_3:

      goto _objc_release_x1;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 >= 4)
    {
      goto LABEL_3;
    }
  }

  v49 = v2;
  v6 = UITraitCollection.isRegularPad.getter();

  if (v6)
  {
    v7 = *&v1[v3];
    if (!(v7 >> 62))
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = &selRef_setRequiresColorStatistics_;
      if (!v8)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v5 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v5;
    v9 = &selRef_setRequiresColorStatistics_;
    if (v5)
    {
LABEL_10:
      if (v8 >= 1)
      {
        v46 = v7 & 0xC000000000000001;
        v47 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;

        v10 = 0;
        v44 = xmmword_1007B15F0;
        v45 = v3;
        while (1)
        {
          if (v46)
          {
            v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v11 = *(v7 + 8 * v10 + 32);
          }

          v50 = v10;
          v12 = *(v11 + 56);
          if (v12)
          {
            v13 = *(v11 + 56);
          }

          else
          {
            v14 = (*(v11 + 40))();
            v15 = *(v11 + 56);
            *(v11 + 56) = v14;
            v13 = v14;

            v12 = 0;
          }

          v16 = v12;
          v17 = [v13 parentViewController];
          if (!v17 || (v18 = v17, sub_100005744(0, &qword_1009711C0, UIViewController_ptr), v19 = v1, v20 = static NSObject.== infix(_:_:)(), v18, v19, (v20 & 1) == 0))
          {
            [v1 addChildViewController:{v13, v44}];
            v5 = [v1 v9[40]];
            if (!v5)
            {
              goto LABEL_43;
            }

            v21 = v5;
            v5 = [v13 v9[40]];
            if (!v5)
            {
              goto LABEL_44;
            }

            v22 = v5;
            [v21 addSubview:v5];

            swift_getObjectType();
            v23 = swift_conformsToProtocol2();
            if (v23 && v13)
            {
              v24 = v23;
              ObjectType = swift_getObjectType();
              v26 = v8;
              v27 = v9;
              v28 = v7;
              v29 = *(v24 + 16);
              v30 = v1;
              v31 = v13;
              v29(v1, &off_1008BC638, ObjectType, v24);
              v7 = v28;
              v9 = v27;
              v8 = v26;
              v3 = v45;
            }
          }

          v32 = [v1 traitCollection];
          v33 = *&v1[v3];
          v34 = v47;
          if (v33 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter() >= 4)
            {
LABEL_27:

LABEL_31:
              v39 = [v1 traitCollection];
              goto LABEL_32;
            }
          }

          else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
          {
            goto LABEL_27;
          }

          v35 = UITraitCollection.isRegularPad.getter();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v36 = swift_allocObject();
          *(v36 + 16) = v44;
          *(v36 + 32) = [v1 traitCollection];
          v37 = objc_opt_self();
          *(v36 + 40) = [v37 traitCollectionWithHorizontalSizeClass:1];
          sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;

          v39 = [v37 traitCollectionWithTraitsFromCollections:isa];

          v34 = v47;
LABEL_32:
          [v1 setOverrideTraitCollection:v39 forChildViewController:v13];

          swift_beginAccess();
          v40 = v13;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v34] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();

          v10 = v50 + 1;

          if (v8 == v50 + 1)
          {

            goto LABEL_36;
          }
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
_objc_release_x1:
      _objc_release_x1(v5, v2);
      return;
    }

LABEL_36:
    v41 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl];
    if (v41)
    {
      v42 = v41;
      v5 = [v1 v9[40]];
      if (!v5)
      {
        goto LABEL_45;
      }

      v43 = v5;
      [v5 bringSubviewToFront:v42];
    }
  }
}

void sub_1002B2C60()
{
  v1 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl;
  if (!*(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl))
  {
    v2 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v2 addTarget:v0 action:"takeSelectedIndexFrom:" forControlEvents:4096];
    [*(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView) addSubview:v2];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }
}

void sub_1002B2D20()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl);
  if (v1)
  {
    v9 = v1;
    [v9 removeAllSegments];
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments);
    v8 = v0;
    if (v2 >> 62)
    {
      goto LABEL_21;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v3)
    {
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v3 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }

          v6 = *(v2 + 8 * v4 + 32);

          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_15;
          }
        }

        if (*(v6 + 24))
        {

          v5 = String._bridgeToObjectiveC()();
        }

        else
        {
          v5 = 0;
        }

        [v9 insertSegmentWithTitle:v5 atIndex:v4 animated:{0, v8}];

        ++v4;
      }

      while (v7 != v3);
    }

    [v9 setSelectedSegmentIndex:*(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex)];
  }
}

id sub_1002B2F6C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    goto LABEL_7;
  }

  v4 = UITraitCollection.isRegularPad.getter();

  if (v4)
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007B15F0;
    *(v5 + 32) = [v1 traitCollection];
    v6 = objc_opt_self();
    *(v5 + 40) = [v6 traitCollectionWithHorizontalSizeClass:1];
    sub_100005744(0, &qword_100972780, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v6 traitCollectionWithTraitsFromCollections:isa];

    return v8;
  }

LABEL_7:
  v10 = [v1 traitCollection];

  return v10;
}

void sub_1002B3100()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SegmentedViewController();
  v46.receiver = v0;
  v46.super_class = v6;
  objc_msgSendSuper2(&v46, "viewWillLayoutSubviews");
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 bounds];
  v45 = v9;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 pageMarginInsets];
  v17 = v16;
  v44 = v18;
  v19 = [v1 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [v19 safeAreaLayoutGuide];

  [v21 layoutFrame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v47.origin.x = v23;
  v47.origin.y = v25;
  v47.size.width = v27;
  v47.size.height = v29;
  MinY = CGRectGetMinY(v47);
  v31 = v45;
  v33 = sub_1002B34B8(v45, v11, v13, v15, MinY, v17, v32, v44);
  v35 = v34;
  v36 = [v1 traitCollection];
  LOBYTE(v21) = UITraitCollection.isSizeClassCompact.getter();

  v37 = 0.0;
  if (v21)
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for StaticDimension();
    sub_1000056A8(v38, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v37 = v39;
    (*(v3 + 8))(v5, v2);
  }

  v40 = [v1 traitCollection];
  v41 = *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v42 < 4)
  {
    v43 = UITraitCollection.isRegularPad.getter();

    if (v43)
    {
      sub_1002B39DC(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
      return;
    }
  }

  else
  {
  }

  sub_1002B3844(v31, v11, v13, v15, v35 + v37, 0.0, 0.0, 0.0);
}

double sub_1002B34B8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v32 = a8;
  v33 = a5;
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  Width = CGRectGetWidth(v34);
  v19 = *(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView);
  if (v19)
  {
    v20 = v19;
    [v20 sizeThatFits:{a3, a4, *&v32, *&v33}];
    v22 = v21;
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetWidth(v35);
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v20 setFrame:?];

    v23 = v22 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = *(v8 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl);
  if (v24)
  {
    v25 = v24;
    if ([v25 numberOfSegments] < 2)
    {
      [v25 setHidden:1];
    }

    else
    {
      v26 = v25;
      [v26 setHidden:0];
      [v26 sizeThatFits:{a3, a4}];
      v28 = v27;
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      CGRectGetWidth(v36);
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v26 setFrame:?];

      v23 = v23 + v28;
    }
  }

  if (v23 >= COERCE_DOUBLE(1))
  {
    if (qword_10096E6B0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for StaticDimension();
    sub_1000056A8(v29, qword_1009D2430);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetMinX(v37);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetMinY(v38);
  v30 = *(v9 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v30 setFrame:?];
  return Width;
}

void sub_1002B3844(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *&v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController];
  if (v9)
  {
    v18 = v9;
    v19 = [v18 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 setFrame:{a1, a2, a3, a4}];

    v21 = [v18 contentScrollView];
    if (v21)
    {
      v22 = v21;
      if ([v21 contentInsetAdjustmentBehavior] != 2)
      {
        [v22 setContentInset:{a5, a6, a7, a8}];
        [v22 setScrollIndicatorInsets:{a5, a6, a7, a8}];
      }

      v23 = v22;
      [v8 setContentScrollView:v23 forEdge:15];
    }
  }

  *&v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;

  v24 = &v8[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v24 = 0;
  v24[8] = 1;

  sub_1002B40A4();
}

void sub_1002B39DC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  [v8 pageMarginInsets];
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg();
  v13 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
  swift_beginAccess();
  v37 = v8;
  if (*&v8[v13] >> 62)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v32 = v13;
    v14 = *&v37[v13];
    v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      break;
    }

LABEL_20:

    v25 = *&v37[v32];
    v13 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = 0;
    while (1)
    {
      if (v26 == v27)
      {

        sub_1002B3EDC(_swiftEmptyArrayStorage);

        return;
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = [v28 contentScrollView];

      ++v27;
      if (v31)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v27 = v30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v16 = 0;
  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v19 = *(v14 + 8 * v16 + 32);
    }

    v18 = v19;
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_36;
    }

    v39.origin.x = a1;
    v39.origin.y = a2;
    v39.size.width = a3;
    v39.size.height = a4;
    CGRectGetMinX(v39);
    v40.origin.x = a1;
    v40.origin.y = a2;
    v40.size.width = a3;
    v40.size.height = a4;
    CGRectGetMinY(v40);
    v41.origin.x = a1;
    v41.origin.y = a2;
    v41.size.width = a3;
    v41.size.height = a4;
    CGRectGetHeight(v41);
    v20 = [v18 view];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v21 setFrame:?];

    v22 = [v18 contentScrollView];
    if (v22)
    {
      v23 = v22;
      if ([v22 contentInsetAdjustmentBehavior] != 2)
      {
        [v23 contentInset];
        [v23 setContentInset:{a5, a6, a7, a8}];
        [v23 setScrollIndicatorInsets:{a5, a6, a7, a8}];
        [v23 contentOffset];
        [v23 setContentOffset:?];
      }

      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (v24)
      {
        v17 = [v24 collectionViewLayout];
        [v17 invalidateLayout];
      }

      else
      {
        v17 = v18;
        v18 = v23;
      }
    }

    ++v16;
    if (v13 == v15)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

void sub_1002B3EDC(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  type metadata accessor for MultipleScrollObserver();
  v3 = swift_allocObject();
  v3[2] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[3] = sub_1002B45E8;
  v3[4] = v4;

  sub_10001F63C(0, 0);

  *(v1 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver) = v3;
}

void sub_1002B3FD4(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = *&Strong[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress], v5 = Strong[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress + 8], Strong, v5 != 1))
  {
    if (v4 == a2)
    {
      return;
    }
  }

  else if (a2 == 1.79769313e308)
  {
    return;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = v6 + OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress;
    *v8 = a2;
    *(v8 + 8) = 0;
    sub_1002B40A4();
  }
}

void sub_1002B40A4()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress + 8];
  if (v1)
  {
    v2 = [v0 navigationItem];
    v3 = [v2 _isManualScrollEdgeAppearanceEnabled];

    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  v5 = [v0 navigationItem];
  [v5 _manualScrollEdgeAppearanceProgress];
  v7 = v6;

  if (v7 != v4)
  {
    v8 = [v0 navigationItem];
    [v8 _setManualScrollEdgeAppearanceProgress:v4];
  }

  v9 = [v0 navigationItem];
  v10 = [v9 _isManualScrollEdgeAppearanceEnabled];

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = [v0 navigationItem];
    [v11 _setManualScrollEdgeAppearanceEnabled:v1 ^ 1u];
  }
}

id sub_1002B4214(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1002B43A4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1002B44D0(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002B45F0(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = UITraitCollection.isRegularPad.getter();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = UITraitCollection.isRegularPad.getter();

    if (v12)
    {
      [v2 pageContainerSize];
      sub_10048F38C(v13, v14);
      v16 = v15 + v15;
      j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg();
      v18 = v16 + v17;
    }

    else
    {
      [v2 pageMarginInsets];
      v20 = v19;
      v22 = v21;
      [v2 pageContainerSize];
      v18 = v23 - v20 - v22;
    }

    v24 = a1 - v8;
    v25 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v26 = *&v2[v25];
    if (v26 >> 62)
    {
      v27 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v24 - v10;
    if (v27 >= 1)
    {
      return a1 / v27 - v18 / v27;
    }
  }

  return a1;
}

char *sub_1002B47B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell(uint64_t a1)
{
  result = qword_10097DF08;
  if (!qword_10097DF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B4B94@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.rowsPerColumn.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002B4BC0(uint64_t a1, uint64_t a2, int *a3)
{
  if ((static ShelfBackground.== infix(_:_:)() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || (static IndexPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static ShelfBackground.== infix(_:_:)();
}

uint64_t sub_1002B4C50(uint64_t a1)
{
  v30 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v27 = &v26 - v6;
  v7 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_10002849C(&qword_10097E128, &unk_1007C5830);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v29 = v1;
  sub_100031660(v1 + v17, v16, &qword_10097E110, qword_1007C5430);
  sub_100031660(v30, &v16[v18], &qword_10097E110, qword_1007C5430);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10002B894(v16, &qword_10097E110, qword_1007C5430);
    }

    goto LABEL_6;
  }

  sub_100031660(v16, v12, &qword_10097E110, qword_1007C5430);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_1002B81D0(v12);
LABEL_6:
    v21 = &qword_10097E128;
    v22 = &unk_1007C5830;
    goto LABEL_13;
  }

  v23 = v27;
  sub_1002B816C(&v16[v18], v27);
  if (static ShelfBackground.== infix(_:_:)() & 1) != 0 && *&v12[*(v2 + 20)] == *(v23 + *(v2 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v24 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v23);
    sub_1002B81D0(v12);
    result = sub_10002B894(v16, &qword_10097E110, qword_1007C5430);
    if (v24)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_1002B81D0(v23);
  sub_1002B81D0(v12);
  v21 = &qword_10097E110;
  v22 = qword_1007C5430;
LABEL_13:
  sub_10002B894(v16, v21, v22);
LABEL_14:
  sub_100031660(v29 + v17, v9, &qword_10097E110, qword_1007C5430);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
  }

  v25 = v28;
  sub_1002B816C(v9, v28);
  sub_1002B5034();
  return sub_1002B81D0(v25);
}

uint64_t sub_1002B5034()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(0), static UICollectionReusableView.elementKind.getter(), v6 = String._bridgeToObjectiveC()(), , isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_1002B8230(), sub_10002849C(&unk_10097E150, qword_1007C5848), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_1002B52F4(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = IndexPath._bridgeToObjectiveC()().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_1002B8230(), sub_10002849C(&unk_10097E150, qword_1007C5848), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_1002B52F4(v16);
  (*(v1 + 8))(v3, v0);
  sub_10002B894(v16, &unk_10097E140, &unk_1007BD220);
  return sub_10002B894(v18, &unk_10097E140, &unk_1007BD220);
}

uint64_t sub_1002B52F4(uint64_t a1)
{
  v50 = sub_10002849C(&qword_10097E128, &unk_1007C5830);
  __chkstk_darwin(v50);
  v51 = &v44 - v3;
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = (&v44 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  sub_100031660(a1, &v52, &unk_10097E140, &unk_1007BD220);
  if (!v53)
  {
    return sub_10002B894(&v52, &unk_10097E140, &unk_1007BD220);
  }

  v48 = v12;
  v49 = v22;
  sub_100005A38(&v52, v55);
  v23 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_100031660(v1 + v23, v15, &qword_10097E110, qword_1007C5430);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_10097E110;
    v26 = qword_1007C5430;
    v27 = v15;
LABEL_21:
    sub_10002B894(v27, v25, v26);
    return sub_100007000(v55);
  }

  v44 = v19;
  v45 = v6;
  v46 = a1;
  v47 = v1;
  v29 = v49;
  sub_1002B816C(v15, v49);
  v30 = v56;
  v31 = v57;
  sub_10002A400(v55, v56);
  v32 = v48;
  (*(v31 + 8))(v30, v31);
  sub_1002AE770(v29, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v33 = v51;
  v34 = *(v50 + 48);
  sub_100031660(v32, v51, &qword_10097E110, qword_1007C5430);
  sub_100031660(v9, v33 + v34, &qword_10097E110, qword_1007C5430);
  if (v24(v33, 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v32, &qword_10097E110, qword_1007C5430);
    if (v24((v33 + v34), 1, v16) == 1)
    {
      sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
LABEL_8:
      sub_1002B81D0(v49);
      return sub_100007000(v55);
    }

    goto LABEL_11;
  }

  v35 = v45;
  sub_100031660(v33, v45, &qword_10097E110, qword_1007C5430);
  if (v24((v33 + v34), 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
LABEL_11:
    sub_10002B894(v33, &qword_10097E128, &unk_1007C5830);
    v36 = v47;
    goto LABEL_18;
  }

  v37 = v44;
  sub_1002B816C(v33 + v34, v44);
  v38 = static ShelfBackground.== infix(_:_:)();
  v36 = v47;
  if (v38 & 1) != 0 && *(v35 + *(v16 + 20)) == *(v37 + *(v16 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v39 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v37);
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
    sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
    if (v39)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002B81D0(v37);
    sub_10002B894(v9, &qword_10097E110, qword_1007C5430);
    sub_10002B894(v48, &qword_10097E110, qword_1007C5430);
    sub_1002B81D0(v35);
    sub_10002B894(v33, &qword_10097E110, qword_1007C5430);
  }

LABEL_18:
  sub_100031660(v46, &v52, &unk_10097E140, &unk_1007BD220);
  v40 = v53;
  if (!v53)
  {
    sub_1002B81D0(v49);
    v25 = &unk_10097E140;
    v26 = &unk_1007BD220;
    v27 = &v52;
    goto LABEL_21;
  }

  v41 = v54;
  sub_10002A400(&v52, v53);
  v42 = *(v36 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v43 = v49;
  (*(v41 + 16))(v49, v42, v40, v41);
  sub_1002B81D0(v43);
  sub_100007000(&v52);
  return sub_100007000(v55);
}

uint64_t sub_1002B5910()
{
  v1 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = type metadata accessor for ShelfLayoutContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState, &qword_10097E110, qword_1007C5430);

  return swift_deallocClassInstance();
}

void sub_1002B5A14(uint64_t a1)
{
  type metadata accessor for ShelfLayoutContext();
  if (v1 <= 0x3F)
  {
    sub_1002AE2E8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002B5B40(uint64_t a1)
{
  result = type metadata accessor for ShelfBackground();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002B5BD8()
{
  result = qword_10097E108;
  if (!qword_10097E108)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097E108);
  }

  return result;
}

uint64_t sub_1002B5C30(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002B6F50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002B5CAC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002B5CAC(uint64_t *a1)
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
        sub_10002849C(&unk_10097E130, &qword_1007C5840);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1002B5FE4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1002B5DBC(0, v2, 1, a1);
  }
}

void sub_1002B5DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for IndexPath();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v18 indexPath];
      v21 = v32;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v20) = static IndexPath.< infix(_:_:)();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002B5FE4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = type metadata accessor for IndexPath();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_1002B6D90(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[16 * v101];
        v102 = v100;
        v103 = *&v100[16 * v101 + 24];
        sub_1002B686C((*v16 + 8 * a4), (*v16 + 8 * *&v100[16 * v101 + 16]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1002B6D90(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[16 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_1002B6D04(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 indexPath];
      v24 = v119;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v116) = static IndexPath.< infix(_:_:)();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v28 indexPath];
        v33 = v119;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v32) = static IndexPath.< infix(_:_:)() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_100034940(0, *(v56 + 2) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_100034940((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[16 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v60 + 40];
        sub_1002B686C((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1002B6D90(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[16 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_1002B6D04(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v5 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = [v46 indexPath];
    v50 = v119;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v49) = static IndexPath.< infix(_:_:)();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1002B686C(void **a1, void **a2, void **a3, void **a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = (a3 - 1);
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = (v30 + 8);
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v34 indexPath];
        v38 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v37) = static IndexPath.< infix(_:_:)();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 8;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [v18 indexPath];
        v22 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.< infix(_:_:)();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_1002B6D04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002B6D90(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1002B6DA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FCF0, &qword_1007B1350);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1002B6EA8(unint64_t a1)
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
  sub_100396AA4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1002B6F78(char **a1, double a2)
{
  v114 = a1;
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  __chkstk_darwin(v4 - 8);
  v112 = v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v111 = v108 - v7;
  v127 = type metadata accessor for IndexPath();
  v121 = *(v127 - 8);
  __chkstk_darwin(v127);
  v120 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v113 = v108 - v10;
  __chkstk_darwin(v11);
  v117 = v108 - v12;
  __chkstk_darwin(v13);
  v118 = v108 - v14;
  __chkstk_darwin(v15);
  v119 = v108 - v16;
  v129 = type metadata accessor for ShelfBackground();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v110 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = v108 - v19;
  __chkstk_darwin(v20);
  v115 = v108 - v21;
  __chkstk_darwin(v22);
  v126 = (v108 - v23);
  __chkstk_darwin(v24);
  v125 = v108 - v25;
  v124 = type metadata accessor for PageGrid();
  v133 = *(v124 - 1);
  __chkstk_darwin(v124);
  v27 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ShelfLayoutContext();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v122 = *(v131 - 8);
  v32 = __chkstk_darwin(v131);
  v130 = v108 - v33;
  v34 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v132 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v123 = v35;
  ShelfLayoutContext.shelf.getter();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  ShelfLayoutContext.contentPageGrid.getter();
  v36(v31, v28);
  PageGrid.horizontalDirectionalMargins.getter();
  v38 = v37;
  v39 = *(v133 + 8);
  v133 += 8;
  v40 = v124;
  v39(v27, v124);
  v123(v31, v132 + v34, v28);
  ShelfLayoutContext.contentPageGrid.getter();
  v36(v31, v28);
  PageGrid.interColumnSpace.getter();
  v42 = v41;
  v39(v27, v40);
  v43 = v130;
  v44 = v131;
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v133 = v139;
  swift_getKeyPath();
  v45 = v125;
  ReadOnlyLens.subscript.getter();

  v46 = v128;
  v47 = v128 + 104;
  v48 = *(v128 + 104);
  v49 = v126;
  v50 = v129;
  v48(v126, enum case for ShelfBackground.interactive(_:), v129);
  LOBYTE(v34) = static ShelfBackground.== infix(_:_:)();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*(v122 + 8))(v43, v44);
    return;
  }

  v55 = Strong;
  v108[2] = v47;

  v139 = sub_1002B6EA8(v56);
  sub_1002B5C30(&v139);
  v109 = v48;
  v57 = v139;
  v58 = v133;
  v124 = v55;
  if (v139 < 0 || (v139 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v59 = *(v139 + 16);
  }

  v123 = v51;
  v114 = v52;
  if (!v59)
  {
    v126 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!v126[2])
    {

LABEL_55:
      (*(v122 + 8))(v130, v131);
      return;
    }

    v71 = v121;
    v72 = v126 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v73 = v113;
    v74 = v127;
    v125 = *(v121 + 16);
    (v125)(v113, v72, v127);

    v75 = v117;
    (*(v71 + 32))(v117, v73, v74);
    if (__OFADD__(IndexPath.item.getter(), v58))
    {
      goto LABEL_61;
    }

    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v76 = *(v139 + 16);

    v77 = IndexPath.item.getter();
    v78 = v129;
    v79 = v116;
    if ((v77 & 0x8000000000000000) == 0 && v77 < v76)
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v80 = v138;
      v81 = IndexPath.item.getter();
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v81 >= *(v80 + 16))
      {
        goto LABEL_64;
      }

      sub_10002C0AC(v80 + 40 * v81 + 32, v137);

      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      sub_10002849C(&qword_10097E118, &qword_1007C5820);
      if (swift_dynamicCast())
      {
        sub_100005A38(&v134, &v139);
        sub_10002A400(&v139, v140);
        dispatch thunk of ShelfBackgroundProviding.shelfBackground.getter();
        sub_100007000(&v139);
LABEL_41:
        swift_getKeyPath();
        ReadOnlyLens.subscript.getter();

        v82 = *(v139 + 16);

        v83 = IndexPath.item.getter();
        if ((v83 & 0x8000000000000000) == 0 && v83 < v82)
        {
          swift_getKeyPath();
          ReadOnlyLens.subscript.getter();

          v84 = v138;
          v85 = IndexPath.item.getter();
          if ((v85 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v85 >= *(v84 + 16))
          {
            goto LABEL_65;
          }

          sub_10002C0AC(v84 + 40 * v85 + 32, v137);

          sub_10002849C(&qword_100973D50, &unk_1007B3840);
          sub_10002849C(&qword_10097E118, &qword_1007C5820);
          if (swift_dynamicCast())
          {
            sub_100005A38(&v134, &v139);
            sub_10002A400(&v139, v140);
            dispatch thunk of ShelfBackgroundProviding.shelfBackground.getter();
            sub_100007000(&v139);
            v86 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v87 = v128;
            v88 = *(v128 + 16);
            v89 = v110;
            v88(v110, v79, v78);
            LODWORD(v87) = (*(v87 + 88))(v89, v78);
            (v114)(v89, v78);
            v90 = 1.0;
            if (v87 == v86)
            {
              v91 = v125;
            }

            else
            {
              v92 = [v124 collectionViewLayout];
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v94 = [v92 layoutAttributesForItemAtIndexPath:isa];

              v91 = v125;
              if (v94)
              {
                [v94 frame];
                v95 = CGRectGetMinX(v143) - v38 - a2;
                [v94 frame];
                Width = CGRectGetWidth(v144);

                v90 = (v95 + v42 + Width) / (v42 + Width);
                if (v90 >= 1.0)
                {
                  v90 = 1.0;
                }
              }
            }

            v97 = v111;
            v98 = v115;
            v88(v111, v115, v78);
            v99 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v100 = v75;
            v101 = v127;
            v91(v97 + v99[6], v100, v127);
            v102 = v116;
            v88((v97 + v99[7]), v116, v78);
            *(v97 + v99[5]) = v90;
            (*(*(v99 - 1) + 56))(v97, 0, 1, v99);
            v103 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
            v104 = v132;
            swift_beginAccess();
            v105 = v112;
            sub_100031660(v104 + v103, v112, &qword_10097E110, qword_1007C5430);
            swift_beginAccess();
            sub_1002B80FC(v97, v104 + v103);
            swift_endAccess();
            sub_1002B4C50(v105);

            sub_10002B894(v105, &qword_10097E110, qword_1007C5430);
            sub_10002B894(v97, &qword_10097E110, qword_1007C5430);
            v106 = v114;
            (v114)(v102, v78);
            (v106)(v98, v78);
            v107 = *(v121 + 8);
            v107(v120, v101);
            v107(v117, v101);
            goto LABEL_55;
          }

          v136 = 0;
          v134 = 0u;
          v135 = 0u;
          sub_10002B894(&v134, &qword_10097E120, &qword_1007C5828);
        }

        v86 = enum case for ShelfBackground.none(_:);
        v109(v79, enum case for ShelfBackground.none(_:), v78);
        goto LABEL_49;
      }

      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      sub_10002B894(&v134, &qword_10097E120, &qword_1007C5828);
    }

    v109(v115, enum case for ShelfBackground.none(_:), v78);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v125 = (v121 + 8);
  v108[1] = v121 + 32;
  v126 = _swiftEmptyArrayStorage;
  v52 = &selRef__setDefaultAttributes_;
  while (1)
  {
    if (v51)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v141) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v142) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v119;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = IndexPath.item.getter();
    (*v125)(v65, v127);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = sub_10003421C(0, v126[2] + 1, 1, v126);
      }

      v69 = v126[2];
      v68 = v126[3];
      if (v69 >= v68 >> 1)
      {
        v126 = sub_10003421C((v68 > 1), v69 + 1, 1, v126);
      }

      swift_unknownObjectRelease();
      v70 = v126;
      v126[2] = v69 + 1;
      (*(v121 + 32))(v70 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v69, v118, v127);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);

  __break(1u);
}

uint64_t sub_1002B80FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110, qword_1007C5430);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B816C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B81D0(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002B8230()
{
  result = qword_10097F580;
  if (!qword_10097F580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097F580);
  }

  return result;
}

uint64_t sub_1002B82CC(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  if (qword_10096D568 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_10097E160);
  (*(*(v9 - 8) + 16))(v7, v10, v9);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v14[3] = v4;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v14);
  (*(v5 + 16))(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1002B84D4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E1C0);
  sub_1000056A8(v4, qword_10097E1C0);
  if (qword_10096D580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_10097E1A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002B86A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E1D8);
  sub_1000056A8(v4, qword_10097E1D8);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002B8840(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1002B8898(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1002B8908(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell(0);
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1002B89BC(a5);
}

id sub_1002B8908(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_1002B89BC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_1002B8A7C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096D568 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_10097E160);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = type metadata accessor for DynamicTypeLabel();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096D580 != -1)
  {
    swift_once();
  }

  v35 = sub_1000056A8(v28, qword_10097E1A8);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = type metadata accessor for DetailCollectionViewCell(0);
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  ArtworkView.backgroundColor.setter();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v57 = qword_10096EE48;
  v58 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v85, qword_1009D36D8);
  v60 = v86;
  sub_1002BB2D0(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_1002BB398(v60);
  v64 = *&v42[v56];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v65 = v64;
  v66 = static UIColor.defaultLine.getter();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider];
  sub_1002BB2D0(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_1002BB334(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_1002BB398(v60);
  v74 = *&v42[v68];
  v75 = static UIColor.defaultLine.getter();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView];
  v79 = static UIColor.tableViewCellSelectedBackground.getter();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_1002B9594()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell(0);
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = v7;
  v9 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = ArtworkView.image.getter();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = ArtworkView.image.getter();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      LayoutMarginsAware<>.layoutFrame.getter();
      MinX = CGRectGetMinX(v102);
      LayoutMarginsAware<>.layoutFrame.getter();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      ArtworkView.frame.setter();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &qword_10096D000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        LayoutMarginsAware<>.layoutFrame.getter();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          LayoutMarginsAware<>.layoutFrame.getter();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            LayoutMarginsAware<>.layoutFrame.getter();
            MinY = CGRectGetMinY(v108);
            if (v27[174] != -1)
            {
              swift_once();
            }

            v50 = type metadata accessor for StaticDimension();
            sub_1000056A8(v50, qword_10097E178);
            static Dimensions.defaultRoundingRule.getter();
            AnyDimension.value(in:rounded:)();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          LayoutMarginsAware<>.layoutFrame.getter();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  ArtworkView.frame.setter();
  v27 = &qword_10096D000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[174] != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for StaticDimension();
  sub_1000056A8(v54, qword_10097E178);
  v55 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  static Dimensions.defaultRoundingRule.getter();
  v56 = [v55 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    ArtworkView.frame.getter();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v67 = CGRectGetMinX(v113);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_10096D588 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v54, qword_10097E1C0);
    static Dimensions.defaultRoundingRule.getter();
    v68 = [v14 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    LayoutMarginsAware<>.layoutFrame.getter();
    v82 = CGRectGetWidth(v119);
    if (qword_10096EE38 != -1)
    {
      swift_once();
    }

    v83 = *&qword_1009D36B8;
    v84 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_10096EE38 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_1009D36B8;
    v90 = MaxY - *&qword_1009D36B8;
    LayoutMarginsAware<>.layoutFrame.getter();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_1002B9EA0(double a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for StaticDimension();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - v12;
  v14 = sub_10002849C(&qword_1009799D0, qword_1007C5900);
  __chkstk_darwin(v14 - 8);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = ArtworkView.image.getter();
  v20 = *&v2[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  v21 = [v20 text];
  if (v21)
  {
    v22 = v6;
    v23 = v21;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v24;

    v6 = v22;
  }

  else
  {
    v55 = 0;
    v66 = 0;
  }

  v61 = v6;
  (*(v6 + 56))(v18, 1, 1, v5);
  v67 = [v20 attributedText];
  v25 = [*&v3[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel] text];
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v27;
  }

  else
  {
    v65 = 0;
  }

  v28 = v19;
  v29 = v3[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider];
  v59 = v3[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider];
  v60 = v29;
  [v3 layoutMargins];
  if (v19)
  {
    v30 = v19;
    [v30 size];
    [v30 size];
  }

  v31 = [v3 traitCollection];
  v32 = qword_10096D568;
  v58 = v31;
  if (v67)
  {
    v33 = v18;
    v34 = v67;
    if (v32 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v36 = sub_1000056A8(v35, qword_10097E160);
    v37 = *(v35 - 8);
    (*(v37 + 16))(v13, v36, v35);
    (*(v37 + 56))(v13, 0, 1, v35);
    v38 = type metadata accessor for Feature();
    v69 = v38;
    v70 = sub_100085D7C();
    v39 = sub_1000056E0(v68);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    isFeatureEnabled(_:)();
    sub_100007000(v68);
    static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    sub_10002B894(v13, &qword_100972ED0, &unk_1007B17B0);
    v18 = v33;
    v28 = v19;
    v40 = v63;
    v41 = v61;
    v42 = v58;
  }

  else
  {
    v42 = v31;
    if (qword_10096D568 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for FontUseCase();
    sub_1000056A8(v43, qword_10097E160);
    v44 = type metadata accessor for Feature();
    v69 = v44;
    v70 = sub_100085D7C();
    v45 = sub_1000056E0(v68);
    (*(*(v44 - 8) + 104))(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v44);
    isFeatureEnabled(_:)();
    sub_100007000(v68);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v40 = v63;
    v41 = v61;
  }

  v57 = v28;
  v46 = v62;
  v47 = v64;
  if (qword_10096D570 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v5, qword_10097E178);
  AnyDimension.topMargin(from:in:)();
  if (v65)
  {
    if (qword_10096D588 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v5, qword_10097E1C0);
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v48 = *(v46 + 8);
    v48(v10, v40);
    if (qword_10096D590 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v5, qword_10097E1D8);
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v48(v10, v40);
  }

  else
  {
    sub_1002BB054(v18, v47);
    v49 = *(v41 + 48);
    if (v49(v47, 1, v5) == 1)
    {
      v50 = v56;
      if (qword_10096D578 != -1)
      {
        swift_once();
      }

      v51 = sub_1000056A8(v5, qword_10097E190);
      (*(v41 + 16))(v50, v51, v5);
      v52 = v64;
      if (v49(v64, 1, v5) != 1)
      {
        sub_10002B894(v52, &qword_1009799D0, qword_1007C5900);
      }
    }

    else
    {
      v50 = v56;
      (*(v41 + 32))(v56, v47, v5);
    }

    static Dimensions.defaultRoundingRule.getter();
    v42 = v58;
    StaticDimension.value(compatibleWith:rounded:)();
    (*(v46 + 8))(v10, v40);
    (*(v41 + 8))(v50, v5);
  }

  v53 = v57;
  if (v59)
  {
    if (qword_10096EE38 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v60 && qword_10096EE38 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10002B894(v18, &qword_1009799D0, qword_1007C5900);
  return a1;
}

double sub_1002BAA00()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell(0);
  v21.receiver = v0;
  v21.super_class = v5;
  objc_msgSendSuper2(&v21, "prepareForReuse");
  ArtworkView.image.setter();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory(0);
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction + 8];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_10001F63C(v12, v13);
  v14 = objc_opt_self();
  v15 = [v14 blackColor];
  [v7 setTextColor:v15];

  v16 = [v14 systemGrayColor];
  [v8 setTextColor:v16];

  v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v18 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  return result;
}

id sub_1002BACFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell(uint64_t a1)
{
  result = qword_10097E268;
  if (!qword_10097E268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BAE9C(uint64_t a1)
{
  sub_1002BAF8C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002BAF8C(uint64_t a1)
{
  if (!qword_100984180)
  {
    type metadata accessor for Accessory(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100984180);
    }
  }
}

uint64_t sub_1002BAFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340, qword_1007C0830);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799D0, qword_1007C5900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002BB0C4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002BB2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB398(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton(uint64_t a1)
{
  result = qword_10097E288;
  if (!qword_10097E288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1002BB498(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v15, "sizeThatFits:", a2, a3);
  v13 = v12;
  sub_10002A400(&v11[qword_10097E278], *&v11[qword_10097E278 + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_1002BB600(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_1002BB67C(char *result)
{
  v1 = *&result[qword_10097E280];
  if (v1)
  {
    v2 = *&result[qword_10097E280 + 8];
    v3 = result;
    v4 = sub_10000827C(v1, v2);
    v1(v4);

    return sub_10001F63C(v1, v2);
  }

  return result;
}

id sub_1002BB700(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_1002BB798()
{
  sub_100007000((v0 + qword_10097E278));
  v1 = *(v0 + qword_10097E280);
  v2 = *(v0 + qword_10097E280 + 8);

  return sub_10001F63C(v1, v2);
}

uint64_t sub_1002BB7DC(uint64_t a1)
{
  sub_100007000((a1 + qword_10097E278));
  v2 = *(a1 + qword_10097E280);
  v3 = *(a1 + qword_10097E280 + 8);

  return sub_10001F63C(v2, v3);
}

double sub_1002BB834(uint64_t a1, void *a2, int a3, double a4, double a5)
{
  LODWORD(v120) = a3;
  v10 = type metadata accessor for OfferButtonMetrics();
  v118 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v117 - v14;
  v16 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1002BC928(a1);
  v121 = v5;
  countAndFlagsBits = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v5 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v22 = v21;
  v24 = v23;
  v27 = a4 - v25 - v26;
  [a2 minimumInteritemSpacing];
  v29 = (v27 - v28) * 0.5;
  type metadata accessor for AdvertsSearchResult();
  if (swift_dynamicCastClass())
  {
    if (v20 & 1 | ((v120 & 1) == 0))
    {
      v30 = v121;
      if (*(v121 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        dispatch thunk of AdvertRotationController.currentAdvert.getter();

        sub_10002849C(&unk_10097E360, &qword_1007C4380);
        type metadata accessor for MixedMediaLockup();
        if (swift_dynamicCast())
        {
          v31 = v122;
          v32 = type metadata accessor for AdvertSearchResultCollectionViewCell();
          v33 = *(v30 + countAndFlagsBits);
          ObjectType = swift_getObjectType();
          left = UIEdgeInsetsZero.left;
          bottom = UIEdgeInsetsZero.bottom;
          right = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v38 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1006CAEAC(v31, v33, v38, v29, 1.79769313e308, UIEdgeInsetsZero.top, left, bottom, right, v32, ObjectType);
          v29 = v39;

LABEL_8:
          swift_unknownObjectRelease_n();
          return v29;
        }
      }
    }

    else
    {
      v52 = v121;
      if (*(v121 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        dispatch thunk of AdvertRotationController.currentAdvert.getter();

        sub_10002849C(&unk_10097E360, &qword_1007C4380);
        type metadata accessor for MixedMediaLockup();
        if (swift_dynamicCast())
        {
          v53 = a5 - v22 - v24;
          v54 = v122;
          v55 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v56 = *(v52 + countAndFlagsBits);
          v57 = swift_getObjectType();
          v58 = UIEdgeInsetsZero.left;
          v59 = UIEdgeInsetsZero.bottom;
          v60 = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v61 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1004BF884(v54, v56, v61, v27, v53, UIEdgeInsetsZero.top, v58, v59, v60, v55, v57);
          v29 = v62;

          swift_unknownObjectRelease_n();
          return v29;
        }
      }
    }

    return 0.0;
  }

  v40 = v12;
  v41 = v17;
  v42 = v118;
  type metadata accessor for AppSearchResult();
  if (swift_dynamicCastClass())
  {
    v43 = type metadata accessor for ContentSearchResultCollectionViewCell();
    v44 = AppSearchResult.lockup.getter();
    v45 = *(v121 + countAndFlagsBits);
    v46 = swift_getObjectType();
    v47 = UIEdgeInsetsZero.left;
    v48 = UIEdgeInsetsZero.bottom;
    v49 = UIEdgeInsetsZero.right;
    swift_unknownObjectRetain();
    v50 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    sub_1004BF884(v44, v45, v50, v29, 1.79769313e308, UIEdgeInsetsZero.top, v47, v48, v49, v43, v46);
    v29 = v51;

    goto LABEL_8;
  }

  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCastClass())
  {
    BundleSearchResult.lockup.getter();
    v63 = Lockup.title.getter();
    v65 = v64;
    v66 = Lockup.subtitle.getter();
    v68 = v67;
    v69 = Lockup.children.getter();
    v29 = sub_100543944(v63, v65, v66, v68, v69, [*(v121 + countAndFlagsBits) snapshotPageTraitEnvironment], v29, 1.79769313e308, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  type metadata accessor for EditorialSearchResult();
  v70 = swift_dynamicCastClass();
  if (v70)
  {
    v29 = sub_1003E2F10(v29, 1.79769313e308, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v70, [*(v121 + countAndFlagsBits) snapshotPageTraitEnvironment]);
    swift_unknownObjectRelease();
    return v29;
  }

  type metadata accessor for InAppPurchaseSearchResult();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LockupCollectionSearchResult();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for AppEventSearchResult();
      v98 = swift_dynamicCastClass();
      if (v98)
      {
        v99 = v98;
        v100 = v121;
        if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
        {
          v101 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v102 = [*(v100 + countAndFlagsBits) snapshotPageTraitEnvironment];
          v103 = swift_getObjectType();
          v104 = UIEdgeInsetsZero.left;
          v105 = UIEdgeInsetsZero.bottom;
          v106 = UIEdgeInsetsZero.right;
          v107 = *(v100 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          v29 = sub_10018FB28(v99, v102, v107, v29, 1.79769313e308, UIEdgeInsetsZero.top, v104, v105, v106, v101, v103);
        }

        else
        {
          v108 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v109 = AppEventSearchResult.lockup.getter();
          v110 = *(v100 + countAndFlagsBits);
          v111 = swift_getObjectType();
          v112 = UIEdgeInsetsZero.left;
          v113 = UIEdgeInsetsZero.bottom;
          v114 = UIEdgeInsetsZero.right;
          swift_unknownObjectRetain();
          v115 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1004BF884(v109, v110, v115, v29, 1.79769313e308, UIEdgeInsetsZero.top, v112, v113, v114, v108, v111);
          v29 = v116;
        }

        goto LABEL_8;
      }

      return 0.0;
    }

    v81 = type metadata accessor for SearchLockupListCollectionViewCell();
    v82 = [*(v121 + countAndFlagsBits) snapshotPageTraitEnvironment];
    v83 = UIEdgeInsetsZero.left;
    v84 = UIEdgeInsetsZero.bottom;
    v85 = UIEdgeInsetsZero.right;
    swift_getObjectType();
    LODWORD(v120) = sub_10061CEB0(v82);
    v121 = v86;
    v87 = LockupCollectionSearchResult.heading.getter();
    v89 = v88;
    v90 = LockupCollectionSearchResult.title.getter();
    v92 = v91;
    if (LockupCollectionSearchResult.detailAction.getter())
    {
      v93 = Action.title.getter();
      v95 = v94;
    }

    else
    {
      v93 = 0;
      v95 = 0;
    }

    v29 = sub_1000FCE64(v87, v89, v90, v92, v93, v95, v120 & 1, v121, v29, 1.79769313e308, UIEdgeInsetsZero.top, v83, v84, v85, v82, v81);
    swift_unknownObjectRelease();

LABEL_15:

    return v29;
  }

  v71 = InAppPurchaseSearchResult.lockup.getter();
  v120 = [*(v121 + countAndFlagsBits) snapshotPageTraitEnvironment];
  v121 = v71;
  InAppPurchaseLockup.parent.getter();
  v72 = Lockup.title.getter();
  v74 = v73;

  if (v74)
  {
    v75._object = 0x800000010080C060;
    v75._countAndFlagsBits = 0xD000000000000035;
    v76._countAndFlagsBits = 0;
    v76._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v75, v76)._countAndFlagsBits;
    v117 = v72;
    sub_10002849C(&unk_10097E350, &unk_1007DEA00);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1007B10D0;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_1000BFD1C();
    *(v77 + 32) = v117;
    *(v77 + 40) = v74;
    String.init(format:_:)();
  }

  Lockup.title.getter();

  CGSize.subtracting(insets:)();
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v78 = sub_1000056A8(v16, qword_1009D25F0);
  (*(v41 + 16))(v19, v78, v16);
  v79 = [v120 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v80 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v80 = qword_100991028;
  }

  v96 = sub_1000056A8(v10, v80);
  (*(v42 + 16))(v40, v96, v10);

  (*(v42 + 32))(v15, v40, v10);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();

  swift_unknownObjectRelease();
  (*(v42 + 8))(v15, v10);
  (*(v41 + 8))(v19, v16);
  return v29;
}

void sub_1002BC500(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = IndexPath.section.getter();
  v36 = a2;
  sub_1002BCC4C(v10, a2);
  v11 = sub_1002BCE7C(a1);
  v12 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
  swift_beginAccess();
  if (!*(*(v2 + v12) + 16) || (sub_1003D7340(v11), (v13 & 1) == 0))
  {
    v34 = v12;
    sub_1002BCF2C(a1);
    v16 = 0.0;
    v17 = 0.0;
    if (v14 == v15)
    {
LABEL_15:
      v31 = sub_1002BCE7C(a1);
      v32 = v34;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v3 + v32);
      *(v3 + v32) = 0x8000000000000000;
      sub_100052238(v31, isUniquelyReferenced_nonNull_native, v16, v17);
      *(v3 + v32) = v37;
      swift_endAccess();
    }

    else
    {
      v18 = v14;
      v19 = v15;
      if (v15 >= v14)
      {
        v35 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
        v20 = (v7 + 8);
        v21 = 0.0;
        while (v18 < v19)
        {
          IndexPath.section.getter();
          IndexPath.init(item:section:)();
          v22 = dispatch thunk of SearchResultsPresenter.result(at:)();
          if (v22)
          {
            v23 = v22;
            v24 = IndexPath.item.getter() == 0;
            [*(v3 + v35) pageContainerSize];
            v27 = sub_1002BB834(v23, v36, v24, v25, v26);
            v29 = v28;
            LOBYTE(v24) = v30;

            (*v20)(v9, v6);
            if (v24)
            {
              v16 = v27;
              v17 = v29;
              goto LABEL_15;
            }

            if (v21 < v29)
            {
              v16 = v27;
              v17 = v29;
              v21 = v29;
            }
          }

          else
          {
            (*v20)(v9, v6);
          }

          if (v19 == ++v18)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1002BC928(uint64_t a1)
{
  v2 = type metadata accessor for ScreenshotsDisplayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  if (swift_dynamicCastClass())
  {
    AppSearchResult.lockup.getter();
  }

  else
  {
    type metadata accessor for AppEventSearchResult();
    if (swift_dynamicCastClass())
    {
      if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
      {
        return 0;
      }

      AppEventSearchResult.lockup.getter();
    }

    else
    {
      type metadata accessor for AdvertsSearchResult();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (!*(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        return 0;
      }

      dispatch thunk of AdvertRotationController.currentAdvert.getter();

      sub_10002849C(&unk_10097E360, &qword_1007C4380);
      type metadata accessor for MixedMediaLockup();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }
    }
  }

  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v6 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = MixedMediaLockup.screenshots.getter();
  if (v7 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8)
    {
LABEL_6:

      return 1;
    }
  }

  v11 = MixedMediaLockup.trailers.getter();
  v12 = v11;
  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_18:
  if ((v12 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v13 = Trailers.videos.getter();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v14 != 0;
}

void sub_1002BCC4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth;
  if (*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) == 2)
  {
    IndexPath.init(item:section:)();
    v9 = dispatch thunk of SearchResultsPresenter.result(at:)();
    if (v9)
    {
      v10 = v9;
      [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageContainerSize];
      v13 = sub_1002BB834(v10, a2, 1, v11, v12);
      v16 = v15;
      if (v15)
      {
        v17 = v13;
        v18 = v14;
        v19 = sub_1002BCE7C(v7);
        v20 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *(v2 + v20);
        *(v2 + v20) = 0x8000000000000000;
        sub_100052238(v19, isUniquelyReferenced_nonNull_native, v17, v18);
        *(v2 + v20) = v22;
        swift_endAccess();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4, v13);
      }

      *(v2 + v8) = v16 & 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1002BCE7C(uint64_t a1)
{
  result = IndexPath.item.getter();
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v4 = v3 != 2 && (v3 & 1) != 0;
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
    __break(1u);
  }

  else
  {
    v6 = [*(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
    v7 = [v6 horizontalSizeClass];

    v8 = 1;
    if (v7 != 1)
    {
      v8 = 2;
    }

    return v5 / v8;
  }

  return result;
}

void sub_1002BCF2C(uint64_t a1)
{
  v2 = sub_1002BCE7C(a1);
  v3 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
  v4 = [*(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = v2 * v6;
  if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v9 = v8 != 2 && (v8 & 1) != 0;
  v10 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
    goto LABEL_16;
  }

  v11 = [*(v1 + v3) traitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = 1;
  if (v12 != 1)
  {
    v13 = 2;
  }

  if (__OFADD__(v10, v13))
  {
    goto LABEL_17;
  }

  if (v10 + v13 < v10)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1002BD048(uint64_t a1)
{
  result = dispatch thunk of SearchResultsPresenter.result(at:)();
  if (result)
  {
    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass())
    {

      return 3;
    }

    else
    {
      type metadata accessor for LockupCollectionSearchResult();
      if (swift_dynamicCastClass() && (dispatch thunk of SearchResultsPresenter.isCondensedSearchLockupsEnabled.getter() & 1) == 0)
      {
        v3 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) "snapshotPageTraitEnvironment")];
        swift_unknownObjectRelease();
        v4 = UITraitCollection.isSizeClassRegular.getter();

        if (v4)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

double sub_1002BD1BC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v154 - v13;
  v15 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  v161 = a1;
  if (swift_dynamicCastClass())
  {
    v19 = type metadata accessor for ContentSearchResultCollectionViewCell();
    AppSearchResult.lockup.getter();
    v20 = sub_1001A3D6C(a2 & 1);

    v21 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
    ObjectType = swift_getObjectType();
    [swift_unknownObjectRetain() pageMarginInsets];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    v32 = v20;
    v33 = a3;
    v34 = v21;
    v35 = v24;
    v36 = v26;
    v37 = v28;
    v38 = v30;
    v39 = v31;
    v40 = v19;
    v41 = ObjectType;
LABEL_3:
    sub_1004BF884(v32, v34, v39, v33, 1.79769313e308, v35, v36, v37, v38, v40, v41);
    a3 = v42;

LABEL_4:
    swift_unknownObjectRelease_n();
    return a3;
  }

  v155 = v11;
  v156 = v18;
  v159 = v9;
  v160 = v4;
  v157 = v14;
  v158 = v16;
  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCastClass())
  {
    BundleSearchResult.lockup.getter();
    v43 = Lockup.title.getter();
    v45 = v44;
    v46 = Lockup.subtitle.getter();
    v48 = v47;
    v49 = Lockup.children.getter();
    v50 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v51 = v160;
    v52 = [*(v160 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v51 + v50) pageMarginInsets];
    a3 = sub_100543944(v43, v45, v46, v48, v49, v52, a3, 1.79769313e308, v53, v54, v55, v56);
    swift_unknownObjectRelease();

    return a3;
  }

  type metadata accessor for AdvertsSearchResult();
  if (swift_dynamicCastClass())
  {
    v57 = v160;
    if (*(v160 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      dispatch thunk of AdvertRotationController.currentAdvert.getter();

      sub_10002849C(&unk_10097E360, &qword_1007C4380);
      type metadata accessor for MixedMediaLockup();
      if (swift_dynamicCast())
      {
        v58 = type metadata accessor for AdvertSearchResultCollectionViewCell();
        v59 = sub_1001A3D6C(a2 & 1);
        v60 = *(v57 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
        v61 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;
        v70 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        sub_1006CAEAC(v59, v60, v70, a3, 1.79769313e308, v63, v65, v67, v69, v58, v61);
        a3 = v71;

        goto LABEL_4;
      }
    }

    return 0.0;
  }

  type metadata accessor for EditorialSearchResult();
  v72 = swift_dynamicCastClass();
  if (v72)
  {
    v73 = v72;
    v74 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v75 = v160;
    v76 = [*(v160 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v75 + v74) pageMarginInsets];
    a3 = sub_1003E2F10(a3, 1.79769313e308, v77, v78, v79, v80, v73, v76);
    swift_unknownObjectRelease();
    return a3;
  }

  type metadata accessor for InAppPurchaseSearchResult();
  if (swift_dynamicCastClass())
  {
    InAppPurchaseSearchResult.lockup.getter();
    v81 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v82 = v160;
    v83 = [*(v160 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v82 + v81) pageMarginInsets];
    InAppPurchaseLockup.parent.getter();
    v84 = Lockup.title.getter();
    v86 = v85;

    if (v86)
    {
      v87._object = 0x800000010080C060;
      v87._countAndFlagsBits = 0xD000000000000035;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      localizedString(_:comment:)(v87, v88);
      sub_10002849C(&unk_10097E350, &unk_1007DEA00);
      v89 = v83;
      v90 = swift_allocObject();
      *(v90 + 16) = xmmword_1007B10D0;
      *(v90 + 56) = &type metadata for String;
      *(v90 + 64) = sub_1000BFD1C();
      *(v90 + 32) = v84;
      *(v90 + 40) = v86;
      v83 = v89;
      String.init(format:_:)();
    }

    Lockup.title.getter();

    CGSize.subtracting(insets:)();
    v91 = v8;
    v93 = v155;
    v92 = v156;
    if (qword_10096E730 != -1)
    {
      swift_once();
    }

    v94 = v15;
    v95 = sub_1000056A8(v15, qword_1009D25F0);
    v96 = v158;
    (*(v158 + 16))(v92, v95, v15);
    v97 = [v83 traitCollection];
    v98 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v99 = v159;
    if (v98)
    {
      v100 = v157;
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v101 = qword_100991010;
    }

    else
    {
      v100 = v157;
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v101 = qword_100991028;
    }

    v124 = sub_1000056A8(v91, v101);
    (*(v99 + 16))(v93, v124, v91);

    (*(v99 + 32))(v100, v93, v91);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
    static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();

    swift_unknownObjectRelease();
    (*(v99 + 8))(v100, v91);
    (*(v96 + 8))(v92, v94);
  }

  else
  {
    type metadata accessor for LockupCollectionSearchResult();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for AppEventSearchResult();
      v125 = swift_dynamicCastClass();
      if (v125)
      {
        v126 = v125;
        v127 = v160;
        if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
        {
          v128 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v129 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          v130 = [*(v127 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
          v131 = swift_getObjectType();
          [*(v127 + v129) pageMarginInsets];
          v133 = v132;
          v135 = v134;
          v137 = v136;
          v139 = v138;
          v140 = *(v127 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          a3 = sub_10018FB28(v126, v130, v140, a3, 1.79769313e308, v133, v135, v137, v139, v128, v131);
          goto LABEL_4;
        }

        v142 = type metadata accessor for ContentSearchResultCollectionViewCell();
        AppEventSearchResult.lockup.getter();
        v143 = sub_1001A3D6C(a2 & 1);

        v144 = *(v127 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
        v145 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v147 = v146;
        v149 = v148;
        v151 = v150;
        v153 = v152;
        v31 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        v32 = v143;
        v33 = a3;
        v34 = v144;
        v35 = v147;
        v36 = v149;
        v37 = v151;
        v38 = v153;
        v39 = v31;
        v40 = v142;
        v41 = v145;
        goto LABEL_3;
      }

      return 0.0;
    }

    v102 = type metadata accessor for SearchLockupListCollectionViewCell();
    v103 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v104 = v160;
    v105 = [*(v160 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v104 + v103) pageMarginInsets];
    v107 = v106;
    v109 = v108;
    v111 = v110;
    v113 = v112;
    swift_getObjectType();
    LODWORD(v160) = sub_10061CEB0(v105);
    v161 = v114;
    v115 = LockupCollectionSearchResult.heading.getter();
    v117 = v116;
    v118 = LockupCollectionSearchResult.title.getter();
    v120 = v119;
    if (LockupCollectionSearchResult.detailAction.getter())
    {
      v121 = Action.title.getter();
      v123 = v122;
    }

    else
    {
      v121 = 0;
      v123 = 0;
    }

    a3 = sub_1000FCE64(v115, v117, v118, v120, v121, v123, v160 & 1, v161, a3, 1.79769313e308, v107, v109, v111, v113, v105, v102);
    swift_unknownObjectRelease();
  }

  return a3;
}

double sub_1002BDD78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_1009D2460);
    v12 = [a1 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B0B70;
    *(v13 + 32) = v12;
    v14 = v12;
    v15 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v17 = v16;

    v18 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    [*(v2 + v18) pageMarginInsets];
  }

  else
  {
    if (qword_10096D8F0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for StaticDimension();
    sub_1000056A8(v19, qword_1009CFAB0);
    v20 = [a1 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v17 = v21;

    (*(v5 + 8))(v8, v4);
  }

  return v17;
}

double sub_1002BE028(void *a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = a1;
    v10 = dispatch thunk of SearchResultsPresenter.result(at:)();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
      v13 = [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v14 = [v13 horizontalSizeClass];

      if (v14 == 1)
      {
        v15 = [*(v2 + v12) traitCollection];
        v16 = dispatch thunk of SearchResultsPresenter.shouldResultHaveCondensedAppearance(at:in:)();

        [*(v3 + v12) pageContainerSize];
        v18 = sub_1002BD1BC(v11, v16 & 1, v17);
      }

      else
      {
        sub_1002BC500(a2, v8);
      }

      v7 = v18;
    }

    else
    {
    }
  }

  return v7;
}

unint64_t sub_1002BE198()
{
  sub_10002849C(&unk_10097E340, &unk_1007C9830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for UInt32;
  *(inited + 72) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for UInt32;
  *(inited + 216) = 0;
  v1 = sub_100397CE8(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_1009827A0, &unk_1007B2F90);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1002BE2DC()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._object = 0x800000010080C0D0;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.chevronBackward(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED60 = result;
  return result;
}

uint64_t sub_1002BE46C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._object = 0x800000010080C0A0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.magnifyingglass(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED68 = result;
  return result;
}

uint64_t sub_1002BE5FC()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._countAndFlagsBits = 0x544E554F434341;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.personCropCircle(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED70 = result;
  return result;
}

unint64_t sub_1002BE788()
{
  result = qword_100982610;
  if (!qword_100982610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982610);
  }

  return result;
}

uint64_t sub_1002BE7D4()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_10097E370);
  sub_1000056A8(v0, qword_10097E370);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1002BE870()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CED78);
  sub_1000056A8(v4, qword_1009CED78);
  if (qword_10096E1F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1568);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002BEA50(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096E200 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1580);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002BEC2C()
{
  sub_100028BB8();
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009CEDC0 = result;
  return result;
}

void sub_1002BEC60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_10096E1F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D1568);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E200 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v15, qword_1009D1580);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_10096D5D0 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009CEDC0];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
    sub_100028BB8();
    v36 = v35;
    v37 = static UIColor.secondaryText.getter();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator];
    v40 = static UIColor.tableViewCellChevron.getter();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002BF250(double a1)
{
  v2 = v1;
  v3 = [*&v1[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] text];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = [*&v2[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] text];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [v2 layoutMargins];
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 kitImageNamed:v8];

  if (v9)
  {
    v10 = [v9 imageWithRenderingMode:2];

    v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
    [v11 size];

    if (qword_10096E1F8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for FontUseCase();
    sub_1000056A8(v12, qword_1009D1568);
    v13 = type metadata accessor for Feature();
    v21 = v13;
    v14 = sub_100085D7C();
    v22 = v14;
    v15 = sub_1000056E0(v20);
    v16 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v17 = *(*(v13 - 8) + 104);
    v17(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v13);
    isFeatureEnabled(_:)();
    sub_100007000(v20);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096E200 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v12, qword_1009D1580);
    v21 = v13;
    v22 = v14;
    v18 = sub_1000056E0(v20);
    v17(v18, v16, v13);
    isFeatureEnabled(_:)();
    sub_100007000(v20);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096D5B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for StaticDimension();
    sub_1000056A8(v19, qword_1009CED78);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v19, qword_1009CED90);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v19, qword_1009CEDA8);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_1002BF7C0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  LayoutMarginsAware<>.layoutFrame.getter();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    LayoutMarginsAware<>.layoutFrame.getter();
    v18 = CGRectGetMaxX(v35) - v15;
    LayoutMarginsAware<>.layoutFrame.getter();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v7 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_10096D5B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009CED78);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v40);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v25 setFrame:?];
  if (qword_10096D5C0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v21, qword_1009CED90);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v32 setFrame:?];
}

id sub_1002BFC30(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096D5B0 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v6, qword_10097E370);
    v7 = v1;
    Conditional.evaluate(with:)();

    [*&v7[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_1002BFE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8)
{
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 kitImageNamed:v9];

  if (v10)
  {
    v11 = [v10 imageWithRenderingMode:2];

    v12 = [v11 imageFlippedForRightToLeftLayoutDirection];
    [v12 size];

    if (qword_10096E1F8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for FontUseCase();
    sub_1000056A8(v13, qword_1009D1568);
    v14 = type metadata accessor for Feature();
    v22 = v14;
    v15 = sub_100085D7C();
    v23 = v15;
    v16 = sub_1000056E0(v21);
    v17 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
    isFeatureEnabled(_:)();
    sub_100007000(v21);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096E200 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v13, qword_1009D1580);
    v22 = v14;
    v23 = v15;
    v19 = sub_1000056E0(v21);
    v18(v19, v17, v14);
    isFeatureEnabled(_:)();
    sub_100007000(v21);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096D5B8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for StaticDimension();
    sub_1000056A8(v20, qword_1009CED78);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v20, qword_1009CED90);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v20, qword_1009CEDA8);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C0314@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v76);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v5 - 8);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v58 - v8;
  v9 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  v19 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v58 - v23;
  v24 = type metadata accessor for Shelf.ContentType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - v30;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v29 + 8))(v31, v28);
  v66 = v27;
  v67 = v25;
  v32 = *(v25 + 88);
  v69 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_10096D3A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1000056A8(v76, qword_1009CE830);
    return sub_1002C0C9C(v39, v78, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = type metadata accessor for ShelfHeader.Configuration();
    v35 = *(v34 - 8);
    v36 = v73;
    (*(v35 + 56))(v73, 1, 1, v34);
    v37 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v58 = *(v37 - 8);
    v59 = v37;
    (*(v58 + 56))(v75, 1, 1);
    sub_100031660(v36, v21, &unk_100984380, &qword_1007C4850);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10002B894(v21, &unk_100984380, &qword_1007C4850);
      v38 = 0;
    }

    else
    {
      v38 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v74;
    v60 = v2;
    sub_100512504(v38, v74);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v42 = v62;
    v43 = sub_1000056A8(v62, qword_1009D26D0);
    v44 = v64;
    (*(v61 + 56))(v64, 1, 1, v42);
    v45 = v63;
    sub_1002C0C9C(v41, v63, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v65;
    sub_1002C0C9C(v43, v65, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v68;
    sub_100031660(v44, v68, &qword_1009794E8, &unk_1007C18C0);
    v48 = v75;
    sub_100031660(v75, v77, &qword_1009794E0, &unk_1007C4840);
    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 104))(v70, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v72);
    sub_100028BB8();
    v62 = static UIColor.defaultLine.getter();
    sub_10002B894(v48, &qword_1009794E0, &unk_1007C4840);
    sub_10002B894(v44, &qword_1009794E8, &unk_1007C18C0);
    sub_1001EFF9C(v74);
    sub_10002B894(v73, &unk_100984380, &qword_1007C4850);
    v52 = v76;
    v53 = v76[8];
    v54 = v60;
    sub_1001EFEC4(v45, v60, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v46, v54 + v52[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFE54(v47, v54 + v52[6]);
    *(v54 + v52[7]) = 0;
    *(v54 + v53) = 0;
    *(v54 + v52[9]) = 0;
    *(v54 + v52[14]) = 0x4030000000000000;
    *(v54 + v52[12]) = 0;
    *(v54 + v52[13]) = v62;
    v55 = v77;
    (*(v50 + 32))(v54 + v52[11], v49, v51);
    v57 = v58;
    v56 = v59;
    if ((*(v58 + 48))(v55, 1, v59) == 1)
    {
      sub_10002B894(v55, &qword_1009794E0, &unk_1007C4840);
      (*(v57 + 104))(v54 + v52[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v56);
    }

    else
    {
      (*(v57 + 32))(v54 + v52[10], v55, v56);
    }

    sub_1001EFEC4(v54, v78, type metadata accessor for TitleHeaderView.Style);
    return (*(v67 + 8))(v66, v69);
  }
}

uint64_t sub_1002C0C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002C0D50(void *a1)
{
  v54 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PrivacyHeaderLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for LabelPlaceholderCompatibility();
  v7 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyHeader();
  sub_1002C176C(&qword_10097E558, &type metadata accessor for PrivacyHeader, &protocol conformance descriptor for PrivacyHeader);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v56 = v76;
  if (v76)
  {
    v51 = v4;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v11 + 8))(v13, v10);
    sub_1000367E8();
    if (qword_10096E070 != -1)
    {
      swift_once();
    }

    v50 = v6;
    v15 = type metadata accessor for FontUseCase();
    sub_1000056A8(v15, qword_1009D10D0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v16 = v76;
    v17 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyHeader.bodyText.getter();
    LinkableText.styledText.getter();

    v18 = dispatch thunk of StyledText.asAttributedString(using:)();

    v19 = type metadata accessor for Feature();
    v77 = v19;
    v63 = sub_1002C176C(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v78 = v63;
    v20 = sub_1000056E0(&v76);
    v21 = *(v19 - 8);
    v22 = *(v21 + 104);
    v62 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v61 = v22;
    v60 = v21 + 104;
    v22(v20);
    v23 = v18;
    v24 = v17;
    isFeatureEnabled(_:)();
    sub_100007000(&v76);
    v65 = v24;
    LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v25 = *(v7 + 8);
    v64 = v7 + 8;
    v59 = v25;
    v25(v9, v66);
    result = PrivacyHeader.supplementaryItems.getter();
    v26 = result;
    if (result >> 62)
    {
      v48 = result;
      result = _CocoaArrayWrapper.endIndex.getter();
      v26 = v48;
      v27 = result;
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49[1] = a1;
    v52 = v3;
    v49[0] = v23;
    if (v27)
    {
      if (v27 < 1)
      {
        __break(1u);
        return result;
      }

      v28 = 0;
      v57 = v26 & 0xC000000000000001;
      v29 = _swiftEmptyArrayStorage;
      v58 = v26;
      do
      {
        if (v57)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        PrivacyHeaderSupplementaryItem.bodyText.getter();
        LinkableText.styledText.getter();

        v30 = v65;
        v31 = dispatch thunk of StyledText.asAttributedString(using:)();

        v74 = v19;
        v75 = v63;
        v32 = sub_1000056E0(v73);
        v61(v32, v62, v19);
        v33 = v30;
        v34 = v31;
        isFeatureEnabled(_:)();
        sub_100007000(v73);
        LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v59(v9, v66);
        sub_10002C0AC(v73, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1000337A4(0, v29[2] + 1, 1, v29);
        }

        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          v29 = sub_1000337A4((v35 > 1), v36 + 1, 1, v29);
        }

        ++v28;

        sub_100007000(v73);
        v29[2] = v36 + 1;
        sub_100005A38(&v70, &v29[5 * v36 + 4]);
      }

      while (v27 != v28);
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v37 = v73[0];
    static Separator.thickness(compatibleWith:)();

    v38 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v39 = LayoutViewPlaceholder.init(representing:)();
    if (qword_10096E5A0 != -1)
    {
      swift_once();
    }

    v40 = v54;
    v41 = sub_1000056A8(v54, qword_1009D1FD8);
    (*(v53 + 16))(v55, v41, v40);
    PrivacyHeader.isDetailHeader.getter();
    v42 = v77;
    v43 = v78;
    v44 = sub_10002A400(&v76, v77);
    v74 = v42;
    v75 = *(v43 + 8);
    v45 = sub_1000056E0(v73);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    sub_1002A4AF4(v29);

    v71 = v38;
    v72 = &protocol witness table for LayoutViewPlaceholder;
    v69 = &protocol witness table for LayoutViewPlaceholder;
    *&v70 = v39;
    v68 = v38;
    v67 = v39;
    swift_retain_n();
    v46 = v50;
    PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_1002C176C(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
    v47 = v52;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    swift_unknownObjectRelease();

    (*(v51 + 8))(v46, v47);
    return sub_100007000(&v76);
  }

  return result;
}

uint64_t sub_1002C176C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002C17B4()
{
  v1 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_1002C8744(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = __CocoaSet.count.getter();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_10008058C();
    goto LABEL_12;
  }
}

void sub_1002C1934()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_1002C3C64(v1);
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_1002C8744(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = __CocoaSet.count.getter();

      if (v12)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    sub_10008058C();
    goto LABEL_10;
  }
}

uint64_t sub_1002C1AAC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1A48);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CEDC8);
  sub_100005A38(&v28, &unk_1009CEDF0);
  result = sub_100005A38(&v25, &unk_1009CEE18);
  qword_1009CEE40 = 0;
  unk_1009CEE48 = 0;
  qword_1009CEE50 = v13;
  unk_1009CEE58 = v15;
  qword_1009CEE60 = v17;
  unk_1009CEE68 = v19;
  return result;
}

uint64_t sub_1002C1DD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E3B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1AA8);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CEE70);
  sub_100005A38(&v28, &unk_1009CEE98);
  result = sub_100005A38(&v25, &unk_1009CEEC0);
  qword_1009CEEE8 = 0;
  unk_1009CEEF0 = 0;
  qword_1009CEEF8 = v13;
  unk_1009CEF00 = v15;
  qword_1009CEF08 = v17;
  unk_1009CEF10 = v19;
  return result;
}

uint64_t sub_1002C20F4()
{
  v0 = type metadata accessor for FlowcaseItemLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CEA50);
  (*(v1 + 16))(v3, v4, v0);
  FlowcaseItemLayout.Metrics.captionSpace.getter();
  (*(v1 + 8))(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100005A38(&v21, &unk_1009CEF18);
  sub_100005A38(&v18, &unk_1009CEF40);
  result = sub_100005A38(&v15, &unk_1009CEF68);
  qword_1009CEF90 = 0;
  unk_1009CEF98 = 0;
  qword_1009CEFA0 = v6;
  unk_1009CEFA8 = v8;
  qword_1009CEFB0 = v10;
  unk_1009CEFB8 = v12;
  return result;
}

double sub_1002C22BC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF028 = &type metadata for Double;
  unk_1009CF030 = &protocol witness table for Double;
  qword_1009CF010 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CEFC0);
  sub_100005A38(&v18, &unk_1009CEFE8);
  qword_1009CF038 = 0;
  unk_1009CF040 = 0;
  unk_1009CF048 = xmmword_1007C5B00;
  result = 6.0;
  unk_1009CF058 = xmmword_1007C5B10;
  return result;
}

double sub_1002C25A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF0D0 = &type metadata for Double;
  unk_1009CF0D8 = &protocol witness table for Double;
  qword_1009CF0B8 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CF068);
  sub_100005A38(&v18, &unk_1009CF090);
  qword_1009CF0E0 = 0;
  unk_1009CF0E8 = 0;
  unk_1009CF0F0 = xmmword_1007C5B20;
  result = 3.0;
  unk_1009CF100 = xmmword_1007C5B30;
  return result;
}

double sub_1002C2894()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF178 = &type metadata for Double;
  unk_1009CF180 = &protocol witness table for Double;
  qword_1009CF160 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CF110);
  sub_100005A38(&v18, &unk_1009CF138);
  qword_1009CF188 = 0;
  unk_1009CF190 = 0;
  unk_1009CF198 = xmmword_1007C5B40;
  result = 7.0;
  unk_1009CF1A8 = xmmword_1007C5B20;
  return result;
}

uint64_t sub_1002C2B80()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CF1B8);
  sub_100005A38(&v28, &unk_1009CF1E0);
  result = sub_100005A38(&v25, &unk_1009CF208);
  qword_1009CF230 = 0;
  unk_1009CF238 = 0;
  qword_1009CF240 = v13;
  unk_1009CF248 = v15;
  qword_1009CF250 = v17;
  unk_1009CF258 = v19;
  return result;
}

uint64_t sub_1002C2EA4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CF260);
  sub_100005A38(&v28, &unk_1009CF288);
  result = sub_100005A38(&v25, &unk_1009CF2B0);
  qword_1009CF2D8 = 0;
  unk_1009CF2E0 = 0;
  qword_1009CF2E8 = v13;
  unk_1009CF2F0 = v15;
  qword_1009CF2F8 = v17;
  unk_1009CF300 = v19;
  return result;
}

uint64_t sub_1002C31C8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E570);
  sub_1000056A8(v4, qword_10097E570);
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1A48);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002C339C()
{
  result = [objc_opt_self() systemRedColor];
  qword_10097E588 = result;
  return result;
}

void sub_1002C33D8()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_10097E590 = v1;
}

id sub_1002C3464(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *sub_1002C34B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1A48);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v40, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v41, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v34 = v33;
  v35 = static UIColor.appTint.getter();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_1002C39B8()
{
  ObjectType = swift_getObjectType();
  sub_1002C17B4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002C3B04(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v6 = [v5 text];
  if (v6)
  {
    v8 = v6;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:

      return result;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = String._bridgeToObjectiveC()();
LABEL_12:

  [v5 setText:v14];

  [v2 setNeedsLayout];
  return result;
}

id sub_1002C3C64(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView])
      {
        type metadata accessor for RoundedCornerView();
        v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1002C94F0();
        v13 = *&v1[v5];
        *&v1[v5] = v12;
        v14 = v12;

        v15 = qword_10096D620;
        v16 = v14;
        if (v15 != -1)
        {
          swift_once();
        }

        [v16 setBackgroundColor:qword_10097E588];

        if (qword_10096D628 != -1)
        {
          swift_once();
        }

        v17 = qword_10097E590;
        dispatch thunk of RoundedCornerView.borderColor.setter();
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        [v4 addSubview:v16];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_100080200(v8, v11);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v18 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v18)
        {
          return [v4 setNeedsLayout];
        }

        v19 = *&v4[v5];
        if (v19)
        {
          swift_beginAccess();
          v20 = v19;
          v21 = v18;
          v22 = sub_1002C8744(v20);
          swift_endAccess();
        }

        else
        {
          v23 = v18;
        }

        v24 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v25 = *&v18[v24];
        if ((v25 & 0xC000000000000001) != 0)
        {

          v26 = __CocoaSet.count.getter();

          if (v26)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v25 + 16))
        {
          goto LABEL_22;
        }

        sub_10008058C();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1002C3F30(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v72[-v10];
  v12 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &off_10097E000;
    if (v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v51 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v51)
          {
            [v51 setHidden:{1, v9}];
          }

          v52 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v53 = *&v2[v52];
          if (v53)
          {
            [v53 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          v54 = static UIColor.appTint.getter();
          [v18 setTextColor:v54];

          if (qword_10096E410 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for FontUseCase();
          v21 = v20;
          v22 = qword_1009D1BB0;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(type metadata accessor for RoundedCornerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1002C4DC4(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v28 = static UIColor.primaryText.getter();
        [v27 setTextColor:v28];

        if (qword_10096DE08 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for FontUseCase();
        sub_1000056A8(v29, qword_1009D0998);
        v30 = [v2 traitCollection];
        isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v30).super.isa;

        v32 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v32)
        {
          v33 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
          [v27 setFont:v33];
        }

        else
        {
          sub_100005744(0, &qword_1009730E0, UIFont_ptr);
          v70 = [v2 traitCollection];
          v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

          [v27 setFont:v33];
        }

        if (v2[v12] == 5)
        {
          v71 = 2;
        }

        else
        {
          v71 = 1;
        }

        [v27 setNumberOfLines:v71];
        v14 = &off_10097E000;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          v19 = static UIColor.appTint.getter();
          [v18 setTextColor:v19];

          if (qword_10096E398 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for FontUseCase();
          v21 = v20;
          v22 = qword_1009D1A48;
LABEL_52:
          v55 = sub_1000056A8(v20, v22);
          v56 = *(v21 - 8);
          (*(v56 + 16))(v11, v55, v21);
          (*(v56 + 56))(v11, 0, 1, v21);
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v45 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v46 = *&v2[v45];
        if (v46)
        {
          [v46 setHidden:1];
        }

        v47 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        if (qword_10096E3B8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for FontUseCase();
        v49 = sub_1000056A8(v48, qword_1009D1AA8);
        v50 = *(v48 - 8);
        (*(v50 + 16))(v11, v49, v48);
        (*(v50 + 56))(v11, 0, 1, v48);
        dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
        sub_1002C4AC4();
        [v47 setNumberOfLines:2];
LABEL_53:
        sub_1002C4E60();
        v57 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v57)
        {
LABEL_72:
          v63 = v14[188];
          swift_beginAccess();
          v64 = *&v63[v2];
          if (!v64)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v65 = v64;
          dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

          (*(v5 + 8))(v7, v4);
          v66 = *&v63[v2];
          if (!v66)
          {
            goto LABEL_82;
          }

          v67 = v2[v12];
          if (v67 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v67 != 6)
            {
LABEL_80:
              v68 = v66;
              goto LABEL_81;
            }
          }

          else if (v67 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v68 = v66;
          v69 = [v2 traitCollection];
          UITraitCollection.prefersRightToLeftLayouts.getter();

LABEL_81:
          dispatch thunk of RoundedCornerView.roundedCorners.setter();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v58 = v2[v12];
        v59 = 0.0;
        if (v58 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v60 = 8.0;
            v59 = 10.0;
            if (v58 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v58 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v60 = v59;
                if (v58 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v61 = v57;
                v62 = [v2 traitCollection];
                UITraitCollection.prefersRightToLeftLayouts.getter();

                goto LABEL_71;
              }

              if (v58 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v61 = v57;
              goto LABEL_71;
            }

            if (v58 != 1)
            {
              goto LABEL_70;
            }

            v60 = 0.0;
LABEL_67:
            v61 = v57;
            v59 = v60;
LABEL_71:
            [v61 _setCornerRadius:1 continuous:UIRectCorner.caCornerMask.getter() maskedCorners:v59];

            goto LABEL_72;
          }
        }

        else if (v58 < 3)
        {
          goto LABEL_56;
        }

        v59 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v34 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v34)
        {
          [v34 setHidden:{1, v9}];
        }

        v35 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v36 = *&v2[v35];
        if (v36)
        {
          [v36 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v37 = static UIColor.appTint.getter();
        [v18 setTextColor:v37];

        if (qword_10096DDF0 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for FontUseCase();
        v21 = v20;
        v22 = qword_1009D0950;
        goto LABEL_52;
      }
    }

    v38 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v38)
    {
      [v38 setHidden:{1, v9}];
    }

    v39 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v40 = *&v2[v39];
    if (v40 || (v41 = [objc_allocWithZone(type metadata accessor for RoundedCornerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1002C4DC4(v41), (v40 = *&v2[v39]) != 0))
    {
      [v40 setHidden:0];
    }

    v42 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v43 = static UIColor.primaryText.getter();
    [v42 setTextColor:v43];

    if (v2[v12] == 5)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    [v42 setNumberOfLines:v44];
    goto LABEL_53;
  }
}

void sub_1002C4AC4()
{
  if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    if (qword_10096D638 != -1)
    {
      swift_once();
    }

    v3 = &qword_10097E5A0;
  }

  else
  {
    if (qword_10096D630 != -1)
    {
      swift_once();
    }

    v3 = &qword_10097E598;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_1002C5364([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_1002C5410();
  }

  v17 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_1002C4DC4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1002C4E60()
{
  v1 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_10096E410 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1BB0;
        goto LABEL_28;
      }

      if (qword_10096DE08 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for FontUseCase();
      sub_1000056A8(v8, qword_1009D0998);
      v9 = [v0 traitCollection];
      isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v9).super.isa;

      v11 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
      if (v11)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      v18 = [v0 traitCollection];
      v21 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      [v12 setFont:v21];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
      {
        if (qword_10096E3B8 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1AA8;
      }

      else
      {
        if (qword_10096E398 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1A48;
      }

LABEL_28:
      v16 = sub_1000056A8(v5, v7);
      v17 = *(v6 - 8);
      (*(v17 + 16))(v3, v16, v6);
      (*(v17 + 56))(v3, 0, 1, v6);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      return;
    }

    if (v4 == 2)
    {
      if (qword_10096DDF0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for FontUseCase();
      v6 = v5;
      v7 = qword_1009D0950;
      goto LABEL_28;
    }
  }

  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  sub_1000056A8(v13, qword_1009D1550);
  v14 = [v0 traitCollection];
  v15 = FontUseCase.makeFontDescriptor(compatibleWith:)(v14).super.isa;

  v11 = [(objc_class *)v15 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_20:
  v21 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  [v12 setFont:v21];

LABEL_30:
  v19 = v21;
}

void sub_1002C5364(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1002C5410()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_1002C55E4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_1002C8744(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = __CocoaSet.count.getter();

        if (v16)
        {
LABEL_11:

          return;
        }
      }

      else if (*(v15 + 16))
      {
        goto LABEL_11;
      }

      sub_10008058C();
      goto LABEL_11;
    }
  }
}

void sub_1002C5748(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + v4);
  if (*(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v13 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    if (v13)
    {
      swift_beginAccess();
      v14 = v13;
      v15 = v9;
      v16 = sub_1002C8744(v14);
      swift_endAccess();
    }

    else
    {
      v17 = v9;
    }

    v18 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v19 = *&v9[v18];
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = __CocoaSet.count.getter();

      if (v20)
      {
LABEL_18:

        return;
      }
    }

    else if (*(v19 + 16))
    {
      goto LABEL_18;
    }

    sub_10008058C();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v21 = v10;
    sub_100080200(v10, v12);
  }
}

void sub_1002C5920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutRect();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v14 = *&v1[v16];
  if (v14)
  {
    v17 = v14;
    if ([v17 isHidden])
    {

      v14 = 0;
    }
  }

LABEL_7:
  v103 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_10096D608 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009CF1B8;
      }

      else
      {
        if (qword_10096D610 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009CF260;
      }
    }

    else if (v18 == 4)
    {
      if (qword_10096D5F8 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CF068;
    }

    else
    {
      if (qword_10096D600 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CF110;
    }
  }

  else if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_10096D5E8 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CEF18;
    }

    else
    {
      if (qword_10096D5F0 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CEFC0;
    }
  }

  else if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
  {
    if (qword_10096D5E0 != -1)
    {
      swift_once();
    }

    v19 = &unk_1009CEE70;
  }

  else
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    v19 = &unk_1009CEDC8;
  }

  sub_1002C9618(v19, v107);
  if (qword_10096D618 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StaticDimension();
  v21 = sub_1000056A8(v20, qword_10097E570);
  static Dimensions.defaultRoundingRule.getter();
  v83 = v21;
  v84 = v20;
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v27 = type metadata accessor for DynamicTypeLabel();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = type metadata accessor for RoundedCornerView();
    v93 = &protocol witness table for UIView;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v104 = v14;
  v85 = v13;
  if (v14)
  {
    v92 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1002C9618(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  static Locale.storefront.getter();
  v36 = Locale.hasExtraTallWritingSystem.getter();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(v107);
  }

  else
  {
    sub_1002C9674(v107);
    sub_10002C0AC(v106, &v105[21]);
  }

  v105[26] = v28;
  v105[27] = 0;
  v105[28] = 0;
  v105[29] = v94;
  v105[30] = v93;
  v105[31] = v104;
  v105[32] = 0;
  v105[33] = 0;
  v105[34] = v92;
  v105[35] = v91;
  v105[36] = v29;
  v105[37] = 0;
  v105[38] = 0;
  v105[39] = v30;
  v105[40] = v31;
  memcpy(v108, v105, sizeof(v108));
  sub_100007000(v106);
  [v1 bounds];
  v37 = v99;
  AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v1, v38, v39, v40, v41);
  (*(v100 + 8))(v37, v101);
  v42 = *&v1[v95];
  v43 = v103;
  if (v42)
  {
    v44 = v1[v103];
    if (v44 > 3)
    {
      v45 = v85;
      if (v1[v103] > 5u)
      {
        if (v44 == 6)
        {
          v53 = qword_10096D608;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CF1B8;
        }

        else
        {
          v61 = qword_10096D610;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CF260;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_10096D5F8;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CF068;
      }

      else
      {
        v57 = qword_10096D600;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CF110;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_10096D5E8;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CEF18;
        }

        else
        {
          v59 = qword_10096D5F0;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CEFC0;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_10096D5E0;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CEE70;
      }

      else
      {
        v46 = qword_10096D5D8;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CEDC8;
      }
    }

    sub_1002C9618(v48, v105);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1002C9674(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

    (*(v65 + 8))(v66, v67);
  }

  v68 = v102;
  if (v1[v43] != 1)
  {

    goto LABEL_100;
  }

  if (!v104)
  {
LABEL_100:
    sub_1001A927C(v108);
    return;
  }

  [v102 bounds];
  v70 = v69 * 0.5;
  v71 = *&v1[v81];
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = v1[v43];
  if (v72 <= 2)
  {
    goto LABEL_96;
  }

  if (v1[v43] <= 5u)
  {
    if (v72 - 3 < 2)
    {
      goto LABEL_95;
    }

LABEL_96:
    v73 = v71;
    goto LABEL_97;
  }

  if (v72 != 6)
  {
    goto LABEL_96;
  }

LABEL_95:
  v73 = v71;
  v74 = [v1 traitCollection];
  UITraitCollection.prefersRightToLeftLayouts.getter();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:UIRectCorner.caCornerMask.getter() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v76 = *&v1[v75];
  if (v76)
  {
    swift_endAccess();
    v78 = v88;
    v77 = v89;
    v79 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.continuous(_:), v90);
    v80 = v76;
    dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_1001A927C(v108);
  swift_endAccess();
}

uint64_t sub_1002C65CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for Locale();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_10096D608 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009CF1B8;
      }

      else
      {
        if (qword_10096D610 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009CF260;
      }
    }

    else if (v10 == 4)
    {
      if (qword_10096D5F8 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CF068;
    }

    else
    {
      if (qword_10096D600 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CF110;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_10096D5E8 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CEF18;
    }

    else
    {
      if (qword_10096D5F0 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CEFC0;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style))
  {
    if (qword_10096D5E0 != -1)
    {
      swift_once();
    }

    v11 = &unk_1009CEE70;
  }

  else
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    v11 = &unk_1009CEDC8;
  }

  sub_1002C9618(v11, v37);
  if (qword_10096D618 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for StaticDimension();
  sub_1000056A8(v12, qword_10097E570);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel);
  v36[3] = type metadata accessor for DynamicTypeLabel();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = type metadata accessor for RoundedCornerView();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_100005744(0, &qword_10097E628, UIVisualEffectView_ptr);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1002C9618(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  static Locale.storefront.getter();
  v27 = Locale.hasExtraTallWritingSystem.getter();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(v37);
  }

  else
  {
    sub_1002C9674(v37);
    sub_10002C0AC(v36, &v35[21]);
  }

  v35[26] = v16;
  v35[27] = 0;
  v35[28] = 0;
  v35[29] = v31;
  v35[30] = v30;
  v35[31] = v17;
  v35[32] = 0;
  v35[33] = 0;
  v35[34] = v18;
  v35[35] = v29;
  v35[36] = v19;
  v35[37] = 0;
  v35[38] = 0;
  v35[39] = v20;
  v35[40] = v21;
  memcpy(v34, v35, 0x148uLL);
  return sub_100007000(v36);
}

double sub_1002C6C18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);

  sub_1002C3B04(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_1002C3C64(v9);
  v10 = v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for OSLogger();
    sub_1000056A8(v14, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x800000010080C2A0;
    v15._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.StringInterpolation.appendInterpolation(identity:)();
    v16._countAndFlagsBits = 0xD000000000000050;
    v16._object = 0x800000010080C2C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }

  return result;
}

double sub_1002C6F08(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || ((UITraitCollection.prefersAccessibilityLayouts.getter() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_3:
      sub_1002C4E60();
    }
  }

  return result;
}