id sub_1006790BC(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = objc_allocWithZone(NSAttributedString);

  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 initWithString:v9];

  if (a4)
  {
    v11 = objc_opt_self();
    v12 = a4;
    v13 = [v11 textAttachmentWithImage:v12];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    if (!a2)
    {
      goto LABEL_10;
    }

    v15 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v15 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = [objc_allocWithZone(NSMutableAttributedString) init];
      if ([a3 layoutDirection])
      {
        if (qword_10096EC10 != -1)
        {
          swift_once();
        }

        v17 = &qword_100990DF0;
      }

      else
      {
        if (qword_10096EC08 != -1)
        {
          swift_once();
        }

        v17 = &qword_100990DE8;
      }

      [v16 appendAttributedString:*v17];
      if (qword_10096EC18 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100990DF8];
      [v16 appendAttributedString:v10];
      if (qword_10096EC20 != -1)
      {
        swift_once();
      }

      v18 = qword_100990E00;
      [v16 appendAttributedString:qword_100990E00];
      if (qword_10096EC28 != -1)
      {
        swift_once();
      }

      [v16 appendAttributedString:qword_100990E08];
      [v16 appendAttributedString:v14];
      [v16 appendAttributedString:v18];
      v19 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v16];

      v10 = v14;
      v14 = v19;
    }

    else
    {
LABEL_10:
      v16 = v12;
    }

    return v14;
  }

  return v10;
}

id sub_1006793DC(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  v8 = type metadata accessor for SystemImage();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  if (a4)
  {
    (*(v9 + 104))(v12, enum case for SystemImage.chevronForward(_:), v8, v10);
    if (qword_10096EC00 != -1)
    {
      swift_once();
    }

    v14 = [qword_100990DE0 configurationWithTraitCollection:a3];
    v15 = static SystemImage.load(_:with:)();

    (*(v9 + 8))(v12, v8);
    v16 = [objc_opt_self() secondaryLabelColor];
    v13 = [v15 imageWithTintColor:v16];
  }

  v17 = sub_1006790BC(a1, a2, a3, v13);

  return v17;
}

uint64_t sub_1006795B8(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = Action.title.getter();
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {

      return v1;
    }
  }

  v5 = Action.artwork.getter();

  if (!v5)
  {

    return 0;
  }

  v1 = dispatch thunk of Artwork.systemImageName.getter();
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return 0;
  }

  return v1;
}

void sub_1006796C0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v45 = *(v2 - 8);
  v46 = v2;
  __chkstk_darwin(v2);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = type metadata accessor for FontUseCase();
  v48 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Separator.Position();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Separator();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_containerView;
  *(v1 + v17) = [objc_allocWithZone(UIView) init];
  v49 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_separatorView;
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v9);
  v50[3] = type metadata accessor for ZeroDimension();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v50);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v18 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v20 = *(v14 + 40);
  v21 = v18;
  v20(&v18[v19], v16, v13);
  swift_endAccess();

  *(v49 + v1) = v21;
  v22 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096EC40 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v6, qword_100990E20);
  v49 = *(v48 + 16);
  v49(v8, v23, v6);
  *(v1 + v22) = DynamicTypeButton.__allocating_init(useCase:)();
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtwork) = 0;
  v24 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkType;
  v25 = type metadata accessor for ShelfHeader.ArtworkType();
  v26 = *(*(v25 - 8) + 56);
  v26(v1 + v24, 1, 1, v25);
  v27 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowArtworkView;
  type metadata accessor for ArtworkView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v27) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v29 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleButton;
  if (qword_10096EC48 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_100990E38);
  v49(v8, v30, v6);
  *(v1 + v29) = DynamicTypeButton.__allocating_init(useCase:)();
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtwork) = 0;
  v26(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkType, 1, 1, v25);
  v31 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleArtworkView;
  *(v1 + v31) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v32 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryButton;
  if (qword_10096EC58 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v6, qword_100990E68);
  v49(v8, v33, v6);
  *(v1 + v32) = DynamicTypeButton.__allocating_init(useCase:)();
  v34 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_titleAction);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_accessoryAction);
  *v35 = 0;
  v35[1] = 0;
  v36 = (v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_eyebrowAction);
  *v36 = 0;
  v36[1] = 0;
  v37 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_subtitleLabel;
  if (qword_10096EC50 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v6, qword_100990E50);
  v39 = v44;
  v49(v44, v38, v6);
  (*(v48 + 56))(v39, 0, 1, v6);
  (*(v45 + 104))(v47, enum case for DirectionalTextAlignment.none(_:), v46);
  v40 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v37) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = OBJC_IVAR____TtC8AppStore15ShelfHeaderView_configuration;
  v42 = type metadata accessor for ShelfHeader.Configuration();
  (*(*(v42 - 8) + 56))(v1 + v41, 1, 1, v42);
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_shouldHighlightEntireView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore15ShelfHeaderView_currentTouch) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100679E90(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100679EA8(result, a2);
  }

  return v3;
}

uint64_t sub_100679EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100679FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_10067A060(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for StyledText.MediaType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseLockup.parent.getter();
  v10 = Lockup.title.getter();
  v12 = v11;

  if (v12)
  {
    v28 = a4;
    v29 = v4;
    v14._countAndFlagsBits = 0x465F4E4F5F444441;
    v14._object = 0xEE005050415F524FLL;
    v15._object = 0x8000000100800630;
    v15._countAndFlagsBits = 0xD000000000000031;
    localizedString(_:comment:)(v14, v15);
    sub_10002849C(&unk_10097E350, &unk_1007DEA00);
    v16 = swift_allocObject();
    v27 = xmmword_1007B10D0;
    *(v16 + 16) = xmmword_1007B10D0;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000BFD1C();
    *(v16 + 32) = v10;
    *(v16 + 40) = v12;

    String.init(format:_:)();
    v18 = v17;

    v19 = InAppPurchaseLockup.productAction.getter();
    if (v19)
    {
      v20 = v19;
      sub_10002849C(&qword_100975C38, &qword_1007BA8E8);
      inited = swift_initStackObject();
      v26[1] = v18;
      v22 = inited;
      *(inited + 16) = v27;
      *(inited + 32) = v10;
      v23 = inited + 32;
      *(inited + 40) = v12;
      *(inited + 48) = v20;
      *(inited + 56) = v28;
      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      type metadata accessor for StyledText();
      swift_allocObject();

      v24 = StyledText.init(rawText:rawTextType:)();
      sub_1002F6004(v24, 0, v22);

      swift_setDeallocating();
      sub_10067A360(v23);
    }

    else
    {

      (*(v7 + 104))(v9, enum case for StyledText.MediaType.plainText(_:), v6);
      type metadata accessor for StyledText();
      swift_allocObject();
      v25 = StyledText.init(rawText:rawTextType:)();
      sub_1002F6004(v25, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_10067A360(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975C40, &qword_1007BA8F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_10067A3E0(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = type metadata accessor for Resize.Rule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_10002C0AC(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = type metadata accessor for Resize();
    v45 = &protocol witness table for Resize;
    sub_1000056E0(v43);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v27 = v26;
    v29 = v28;
    sub_10002C0AC(a1, v42);
    MeasurementRange.init(minimum:maximum:)();
    v31 = v30;
    v33 = v32;
    v44 = type metadata accessor for Constrain();
    v45 = &protocol witness table for Constrain;
    sub_1000056E0(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    Constrain.init(_:width:height:)();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v43, v44);
  v36 = [v4 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v38 = v37;

  sub_100007000(v43);
  return v38;
}

char *sub_10067A79C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *&v4[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *&v4[v20] = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v15 + 104))(v17, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v14);
  (*(v11 + 104))(v13, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v10);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = &v4[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v27 = [v26 layer];
  [v27 setAllowsGroupOpacity:0];

  v28 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  [*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer] setEnabled:0];
  [*&v26[v28] addTarget:v26 action:"handleSelection:"];
  v29 = *&v26[v28];
  [v29 setDelegate:v26];

  [v26 addGestureRecognizer:*&v26[v28]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView]];

  return v26;
}

uint64_t sub_10067ABD4@<X0>(uint64_t *a1@<X8>)
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
  v14 = *&v13[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView];
  v25 = type metadata accessor for CarouselItemModuleHeaderView(0);
  v26 = sub_10067B9F8(&qword_100990FE0, type metadata accessor for CarouselItemModuleHeaderView, &unk_1007D1880);
  v24[0] = v14;
  v15 = v14;
  VerticalStack.adding(_:with:)();
  v16 = *(v3 + 8);
  v16(v5, v2);
  sub_100007000(v24);
  v17 = *&v13[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView];
  v23[3] = type metadata accessor for CarouselItemModulePlatterView(0);
  v23[4] = sub_10067B9F8(&qword_100990FE8, type metadata accessor for CarouselItemModulePlatterView, &unk_1007DDE38);
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

uint64_t sub_10067B00C()
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

uint64_t sub_10067B100(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v9 + 8))(v11, v8);
  HeroCarouselItemOverlay.DisplayOptions.Placement.verticalStackAlignment.getter();
  (*(v5 + 8))(v7, v4);
  return VerticalStack.Properties.alignment.setter();
}

uint64_t type metadata accessor for CarouselItemCollectionModuleOverlay(uint64_t a1)
{
  result = qword_100990FC8;
  if (!qword_100990FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10067B4F0(uint64_t a1)
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

uint64_t sub_10067B59C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_10001F63C(a1, a2);
}

double sub_10067B650(uint64_t a1, uint64_t a2)
{
  v3 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10059D2E8(v4, a2);

  return result;
}

id sub_10067B6D0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeroCarouselItemOverlay.displayOptions.getter();
  v7 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_displayOptions;
  swift_beginAccess();
  (*(v4 + 40))(&v2[v7], v6, v3);
  swift_endAccess();
  sub_1006B2DE0();
  HeroCarouselItemOverlay.displayOptions.getter();
  v8 = HeroCarouselItemOverlay.badgeText.getter();
  v10 = v9;
  v11 = HeroCarouselItemOverlay.descriptionText.getter();
  sub_1004D877C(v6, v8, v10, v11, v12);

  (*(v4 + 8))(v6, v3);
  return [v2 setNeedsLayout];
}

double sub_10067B878()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView) + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for ArtworkView();
      sub_10067B9F8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return result;
}

uint64_t sub_10067B9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10067BA40(__n128 a1)
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
  v11 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_headerView;
  type metadata accessor for CarouselItemModuleHeaderView(0);
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_platterView;
  type metadata accessor for CarouselItemModulePlatterView(0);
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_tapGestureRecognizer;
  *(v1 + v13) = [objc_allocWithZone(UITapGestureRecognizer) init];
  (*(v8 + 104))(v10, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v14 = (v1 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionModuleOverlay_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_10067BCD4(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    _CocoaArrayWrapper.endIndex.getter();
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for MixedMediaLockup();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10067BE44(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10002C0AC(i, v5);
    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for GameCenterPlayer();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void *sub_10067BF50(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000073E8(i, v5);
    sub_10067C21C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id CBCentralManager.isPencilPaired.getter()
{
  result = [v0 sharedPairingAgent];
  if (result)
  {
    v2 = result;
    i = [result retrievePairedPeers];

    if (i)
    {
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = sub_10067BF50(v4);

      if (v5)
      {
        if (v5 >> 62)
        {
          goto LABEL_23;
        }

        for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v6 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v7 = *(v5 + 8 * v6 + 32);
            }

            v8 = v7;
            v9 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            objc_opt_self();
            v10 = swift_dynamicCastObjCClass();
            if (v10)
            {
              v11 = v10;
              v12 = String._bridgeToObjectiveC()();
              LOBYTE(v11) = [v11 hasTag:v12];

              if (v11)
              {
                i = 1;
                goto LABEL_19;
              }
            }

            else
            {
            }

            ++v6;
            if (v9 == i)
            {
              i = 0;
              goto LABEL_19;
            }
          }

          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          ;
        }

LABEL_19:
      }

      else
      {
        return 0;
      }
    }

    return i;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10067C21C()
{
  result = qword_100990FF0;
  if (!qword_100990FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100990FF0);
  }

  return result;
}

unint64_t sub_10067C27C()
{
  result = qword_100990FF8;
  if (!qword_100990FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990FF8);
  }

  return result;
}

uint64_t sub_10067C2D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v6 - 8);
  v47 = &v43 - v7;
  v8 = sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v11 - 8);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_10002849C(&qword_10098F3E8, &unk_1007DA290);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = type metadata accessor for Annotation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100037234(&qword_10096FE80, &type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  ItemLayoutContext.typedModel<A>(as:)();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10002B894(v18, &qword_10098F3E8, &unk_1007DA290);
  }

  v44 = v8;
  v45 = a1;
  v46 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = Annotation.items.getter();

  v24 = Annotation.title.getter();
  v25 = &v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];

  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = Annotation.summary.getter();
  v30 = &v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_1000B19A4(v32);
  v33 = Annotation.linkAction.getter();
  if (v33)
  {
    v50 = v33;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_10002849C(&unk_10097B3D0, "α\b");
  v36 = 1;
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v37 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10003715C(v15, &v3[v37]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_10002B894(v15, &qword_10097B3F0, &qword_1007B3120);
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_100036A58();
  v38 = v44;
  WritableStateLens<A>.currentValue.getter();
  (*(v48 + 8))(v10, v38);
  if ((v50 & 1) == 0)
  {
    v36 = Annotation.shouldAlwaysPresentExpanded.getter();
  }

  sub_1000B351C();
  v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = v36 & 1;
  sub_1000B16F8();
  v39 = Annotation.linkAction.getter();
  v40 = v49;
  if (v39)
  {
    v50 = v39;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  swift_beginAccess();
  sub_10003715C(v40, &v3[v37]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_10002B894(v40, &qword_10097B3F0, &qword_1007B3120);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_10067C9B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_10067CA0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10067CADC()
{
  sub_100028BB8();
  result = static UIColor.primaryText.getter();
  qword_1009D3290 = result;
  return result;
}

uint64_t sub_10067CB10()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_1009D3298 = result;
  return result;
}

id sub_10067CB44()
{
  result = [objc_opt_self() systemGray5Color];
  qword_1009D32A0 = result;
  return result;
}

uint64_t sub_10067CB80()
{
  sub_100028BB8();
  result = static UIColor.secondaryText.getter();
  qword_1009D32A8 = result;
  return result;
}

void sub_10067CBE4()
{
  if (qword_10096EC98 != -1)
  {
    swift_once();
  }

  v0 = qword_1009D32B0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithTextStyle:v2 scale:2];

  qword_1009D32C0 = v3;
}

uint64_t sub_10067CC90@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a9, double a10)
{
  v40 = a3;
  v41 = a4;
  v37[1] = a1;
  v38 = a2;
  v10 = type metadata accessor for Shelf.ContentType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37[0] = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  v16 = type metadata accessor for PageGrid.Direction();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v39 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v37 - v20;
  v22 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = v37 - v24;
  sub_100031660(v38, v37 - v24, &unk_10098FFB0, qword_1007B3890);
  v26 = *(v23 + 56);
  v27 = v16;
  v38 = v25;
  sub_100031660(v40, &v25[v26], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v28 = *(v17 + 104);
  v29 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v44)
  {
    v29 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v30 = *v29;
  v40 = v21;
  v31 = v21;
  v32 = v37[0];
  v28(v31, v30, v16);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v11 + 104))(v32, enum case for Shelf.ContentType.appTrailerLockup(_:), v10);
  sub_10017720C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v44 == v42 && v45 == v43)
  {
    v33 = 32.0;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v33 = 32.0;
  }

  else
  {
    v33 = 20.0;
  }

  v34 = *(v11 + 8);
  v34(v32, v10);
  v34(v15, v10);

  v35 = v40;
  (*(v17 + 16))(v39, v40, v27);
  sub_1001A3360(v33);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v17 + 8))(v35, v27);
  return sub_10002B894(v38, &qword_100974650, &unk_1007B6B70);
}

uint64_t sub_10067D114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10067D4CC();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10067D1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_10067D4CC();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_10067D2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v30[5] = a5;
  v30[6] = a6;
  v30[4] = a4;
  *&v30[2] = a14;
  *&v30[3] = a15;
  v30[0] = a7;
  v30[1] = a1;
  v20 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = v30 - v25;
  v27 = *v17;
  sub_100031660(a2, v30 - v25, &unk_10098FFB0, qword_1007B3890);
  sub_100031660(a3, &v26[*(v21 + 56)], &unk_10098FFB0, qword_1007B3890);
  v30[7] = v27;
  sub_100031660(v26, v23, &qword_100974650, &unk_1007B6B70);
  v28 = *(v21 + 56);
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v26, &qword_100974650, &unk_1007B6B70);
  sub_10002B894(&v23[v28], &unk_10098FFB0, qword_1007B3890);
  return sub_10002B894(v23, &unk_10098FFB0, qword_1007B3890);
}

unint64_t sub_10067D4CC()
{
  result = qword_100991000;
  if (!qword_100991000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991000);
  }

  return result;
}

uint64_t sub_10067D520()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E0F8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D1268);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return OfferButtonMetrics.fontSource.setter();
}

void sub_10067D6A0()
{
  v0 = [objc_opt_self() systemFontOfSize:10.0 weight:UIFontWeightBold];
  v1 = [objc_opt_self() configurationWithFont:v0];

  qword_100991008 = v1;
}

uint64_t sub_10067D724()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991010);
  v20[2] = sub_1000056A8(v8, qword_100991010);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  v18 = [objc_opt_self() systemFontOfSize:15.0 weight:UIFontWeightBold];
  [objc_opt_self() configurationWithFont:v18];

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067DB34()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991028);
  v20[2] = sub_1000056A8(v8, qword_100991028);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

unint64_t sub_10067DF14()
{
  result = qword_1009870A0;
  if (!qword_1009870A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009870A0);
  }

  return result;
}

uint64_t sub_10067DF60()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991040);
  v21[2] = sub_1000056A8(v8, qword_100991040);
  if (qword_10096E130 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = v18;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067E368()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24[0] = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v4;
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991058);
  v24[2] = sub_1000056A8(v8, qword_100991058);
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1250);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v24[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v25;
  v11(v25, v14, v9);
  v13(v15, v12, v0);
  v16 = v24[0];
  v11(v24[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = type metadata accessor for StaticDimension();
  v27[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v26[3] = v0;
  v26[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v26);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  v18 = objc_opt_self();
  v19 = [v18 systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  v20 = objc_opt_self();
  v21 = [v20 configurationWithFont:v19];

  v22 = [v18 systemFontOfSize:15.0 weight:UIFontWeightBold];
  [v20 configurationWithFont:v22];

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067E7CC(unsigned int *a1, double *a2, double a3)
{
  v6 = type metadata accessor for SystemImage();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a1, v6, v8);
  v11 = [objc_opt_self() systemFontOfSize:a3 weight:*a2];
  v12 = [objc_opt_self() configurationWithFont:v11];

  v13 = static SystemImage.load(_:with:)();
  (*(v7 + 8))(v10, v6);
  return v13;
}

uint64_t sub_10067E930()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32C8);
  v20[2] = sub_1000056A8(v8, qword_1009D32C8);
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12C8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067ED14()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32E0);
  v20[2] = sub_1000056A8(v8, qword_1009D32E0);
  if (qword_10096E128 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12F8);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067F0F0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v20[0] = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v21 = v20 - v4;
  __chkstk_darwin(v5);
  v7 = v20 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D32F8);
  v20[2] = sub_1000056A8(v8, qword_1009D32F8);
  if (qword_10096E120 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12E0);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v20[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v21;
  v11(v21, v14, v9);
  v13(v15, v12, v0);
  v16 = v20[0];
  v11(v20[0], v14, v9);
  v13(v16, v12, v0);
  v23[3] = type metadata accessor for StaticDimension();
  v23[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v22[3] = v0;
  v22[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v22);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067F4D4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22[0] = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v23 = v22 - v4;
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991070);
  v22[2] = sub_1000056A8(v8, qword_100991070);
  if (qword_10096E100 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1280);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v22[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v23;
  v11(v23, v14, v9);
  v13(v15, v12, v0);
  v16 = v22[0];
  v11(v22[0], v14, v9);
  v13(v16, v12, v0);
  v27[3] = type metadata accessor for StaticDimension();
  v27[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v25 = v0;
  v26 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v24);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = type metadata accessor for Feature();
  v25 = v19;
  v26 = sub_100085D7C();
  v20 = sub_1000056E0(v24);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.glass_offer_button_2025A(_:), v19);
  isFeatureEnabled(_:)();
  sub_100007000(v24);
  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

id sub_10067F92C()
{
  v0 = sub_10032FEB0(0xD000000000000013, 0x800000010081F3F0, 0);
  v1 = [v0 imageWithRenderingMode:2];

  return v1;
}

uint64_t sub_10067F990()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_100991088);
  v21[2] = sub_1000056A8(v8, qword_100991088);
  if (qword_10096E130 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D1310);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = v18;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

uint64_t sub_10067FD98()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_10067DF14();
  v5 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v6 = static SystemImage.load(_:with:)();

  (*(v1 + 8))(v4, v0);
  return v6;
}

uint64_t sub_10067FEC8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v21[0] = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v22 = v21 - v4;
  __chkstk_darwin(v5);
  v7 = v21 - v6;
  v8 = type metadata accessor for OfferButtonMetrics();
  sub_100005644(v8, qword_1009D3310);
  v21[2] = sub_1000056A8(v8, qword_1009D3310);
  if (qword_10096E120 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D12E0);
  v11 = *(*(v9 - 8) + 16);
  v11(v7, v10, v9);
  v12 = enum case for FontSource.useCase(_:);
  v13 = *(v1 + 104);
  v13(v7, enum case for FontSource.useCase(_:), v0);
  v21[1] = v7;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v9, qword_1009D1298);
  v15 = v22;
  v11(v22, v14, v9);
  v13(v15, v12, v0);
  v16 = v21[0];
  v11(v21[0], v14, v9);
  v13(v16, v12, v0);
  v24[3] = type metadata accessor for StaticDimension();
  v24[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v0;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v23);
  (*(v1 + 16))(v17, v16, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v16, v0);
  sub_10067DF14();
  v18 = UIFontTextStyleHeadline;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  v19 = UIFontTextStyleFootnote;
  static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();

  return OfferButtonMetrics.init(fontSource:subtitleFontSource:inAppPurchaseTextSpace:contentInsets:redownloadImage:pauseImage:pausedImageSymbolConfiguration:symbolConfiguration:redownloadImageSymbolConfiguration:minimumSize:progressDiameter:lineWidth:textShapeLineWidth:expandsToFit:cornerRadius:includeTopPadding:resumeImageNavigationHeight:resumeImageNavigationBaselineOffset:)();
}

id sub_1006802E0()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.icloudAndArrowDown(_:), v0, v2);
  sub_10067DF14();
  v5 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v6 = static SystemImage.load(_:with:)();

  (*(v1 + 8))(v4, v0);
  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

uint64_t sub_100680434()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.pauseFill(_:), v0, v2);
  if (qword_10096ECB0 != -1)
  {
    swift_once();
  }

  v5 = static SystemImage.load(_:with:)();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_100680570@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BreakoutDetailsLayout.DetailDimension();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = UITraitCollection.isSizeClassCompact.getter();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_100005A38(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_10096ED08 != -1)
  {
    swift_once();
  }

  v24 = sub_10002849C(&qword_100989DD0, &unk_1007D3280);
  sub_1000056A8(v24, qword_1009910A0);
  *&v37 = a1;
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_10096ED18 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for StaticDimension();
  v26 = sub_1000056A8(v25, qword_1009D3340);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_1000056E0(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_10096ED10 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for CappedSizeStaticDimension();
  v29 = sub_1000056A8(v28, qword_1009D3328);
  v36[3] = v28;
  v36[4] = sub_1006838D4(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v30 = sub_1000056E0(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10002C0AC(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  UpsellBreakoutLayout.Metrics.init(backgroundMediaAspectRatio:detailsWidth:actionButtonHeight:actionButtonMinWidth:actionButtonTopMargin:buttonDetailsSpace:layoutMargins:height:mediaSafeAreaHeight:)();
  sub_100007000(v40);
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_100680AD0()
{
  v0 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_10002849C(&qword_100989DD0, &unk_1007D3280);
  sub_100005644(v2, qword_1009910A0);
  sub_1000056A8(v2, qword_1009910A0);
  AspectRatio.init(_:_:)();
  AspectRatio.init(_:_:)();
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_100680BF0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CappedSizeStaticDimension();
  sub_100005644(v4, qword_1009D3328);
  sub_1000056A8(v4, qword_1009D3328);
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D18C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

uint64_t sub_100680D8C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D3340);
  sub_1000056A8(v4, qword_1009D3340);
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D12C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100680F64()
{
  v0 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v10 - v4;
  v6 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  sub_100005644(v6, qword_1009D3358);
  sub_1000056A8(v6, qword_1009D3358);
  if (qword_10096D000 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v0, qword_1009CDE88);
  sub_1000C2608(v7, v5);
  if (qword_10096CFF8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009CDE70);
  sub_1000C2608(v8, v2);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_1006810F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v105 = type metadata accessor for AutomationSemantics();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v11 - 8);
  v99 = &v92 - v12;
  v107 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v107 - 8);
  __chkstk_darwin(v107);
  v100 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v109 = &v92 - v16;
  v101 = type metadata accessor for FontUseCase();
  v108 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v18 = *(v98 - 1);
  __chkstk_darwin(v98);
  v20 = &v92 - v19;
  v21 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v116.receiver = v26;
  v116.super_class = v25;
  v29 = objc_msgSendSuper2(&v116, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v30;
  v115.receiver = v24;
  v115.super_class = v23;
  v32 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  type metadata accessor for ArtworkView();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  if (qword_10096ED20 != -1)
  {
    swift_once();
  }

  v35 = v98;
  v36 = sub_1000056A8(v98, qword_1009D3358);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_100147904(v20, v38);
  v97 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  v98 = v5;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v39 = v101;
  v40 = sub_1000056A8(v101, qword_1009D18C8);
  v41 = v108;
  v42 = *(v108 + 16);
  v43 = v106;
  v42(v106, v40, v39);
  v95 = v42;
  v93 = UIContentSizeCategoryExtraExtraExtraLarge;
  v44 = enum case for DirectionalTextAlignment.none(_:);
  v96 = v13;
  v45 = *(v13 + 104);
  v46 = v107;
  v45(v109, enum case for DirectionalTextAlignment.none(_:), v107);
  v94 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v94[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v47 = v99;
  v42(v99, v43, v39);
  v48 = v46;
  v49 = *(v41 + 56);
  v49(v47, 0, 1, v39);
  v50 = v100;
  v45(v100, v44, v48);
  v51 = v93;
  v52 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v53 = v106;
  v95(v47, v106, v39);
  v49(v47, 0, 1, v39);
  v54 = v52;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v54 setNumberOfLines:0];
  v55 = v96;
  v56 = v109;
  v57 = v107;
  (*(v96 + 16))(v50, v109, v107);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v55 + 8))(v56, v57);
  (*(v108 + 8))(v53, v39);
  v58 = v98;
  *(v98 + v97) = v54;
  v59 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
  v60 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v61 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
  v62 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton;
  v63 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v58[v62] = sub_1000F5284(0, v64);
  *&v58[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits] = 0;
  v58[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v114.receiver = v58;
  v114.super_class = ObjectType;
  v65 = objc_msgSendSuper2(&v114, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v69 = v65;
  [v69 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v70 = static UIColor.placeholderBackground.getter();
  [v69 setBackgroundColor:v70];

  v71 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  v72 = *&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v73 = [*&v69[v71] layer];
  [v73 setCompositingFilter:kCAFilterPlusL];

  v74 = *&v69[v71];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v75 = v74;
  v76 = v103;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v110);
  sub_10003D444(&v112);
  UIView.setAutomationSemantics(_:)();

  v77 = *(v104 + 8);
  v78 = v105;
  v77(v76, v105);
  v79 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  v80 = *&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v81 = v80;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v110);
  sub_10003D444(&v112);
  UIView.setAutomationSemantics(_:)();

  v77(v76, v78);
  v82 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  v83 = *&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v84 = v83;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v110);
  sub_10003D444(&v112);
  UIView.setAutomationSemantics(_:)();

  v77(v76, v78);
  [v69 addSubview:*&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer]];
  [v69 addSubview:*&v69[v79]];
  [v69 addSubview:*&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton]];
  [v69 addSubview:*&v69[v71]];
  v85 = *&v69[v82];
  ArtworkView.frameUpdatesImageSize.setter();

  v86 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  v87 = *&v69[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer];
  v88 = v69;
  [v87 addTarget:v88 action:"didTapVideo"];
  v89 = *&v69[v86];
  [v89 setDelegate:v88];

  [v88 addGestureRecognizer:*&v69[v86]];
  v90 = [v88 layer];

  [v90 setAllowsGroupBlending:0];
  return v88;
}

double sub_100681D88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a1)
  {
    sub_1006838D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v9 = v5;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = a1;
  v12 = a1;
  sub_10047C6C8(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      *(v14 + qword_100988CA8 + 8) = &off_1008CDCD0;

      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

double (*sub_100681F44(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100681FE4;
}

double sub_100681FE4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_1006838D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v8 = v4;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_100988CA8 + 8) = &off_1008CDCD0;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1006838D4(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v13 = v4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v25 = v3;
    sub_10047C6C8(v24);

    if (*(*(v23 + v22) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        *(v26 + qword_100988CA8 + 8) = &off_1008CDCD0;

        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

double sub_100682310(double a1, double a2)
{
  v4 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UpsellBreakoutLayout();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v11 = swift_unknownObjectRetain();
  sub_100680570(v11, v6, a1);
  v12 = *(v2 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v23[19] = type metadata accessor for MediaView();
  v23[20] = &protocol witness table for UIView;
  v23[16] = v12;
  v13 = *(v2 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView);
  v23[14] = type metadata accessor for BreakoutDetailsView(0);
  v23[15] = &protocol witness table for UIView;
  v23[11] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton);
  v23[9] = type metadata accessor for OfferButton();
  v23[10] = &protocol witness table for UIView;
  v23[6] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);
  v23[4] = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v23[5] = &protocol witness table for UILabel;
  v23[1] = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  UpsellBreakoutLayout.init(metrics:backgroundMediaView:detailsView:actionButton:buttonDetailsView:)();
  UpsellBreakoutLayout.measuredSize(fitting:in:)();
  v21 = v20;
  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return v21;
}

id sub_100682598()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UpsellBreakoutLayout();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_100680570(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    UpsellBreakoutLayout.init(metrics:backgroundMediaView:detailsView:actionButton:buttonDetailsView:)();
    [v1 bounds];
    UpsellBreakoutLayout.placeChildren(relativeTo:in:)();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    LayoutMarginsAware<>.layoutFrame.getter();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100682A5C()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_100684390;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100007A08;
  v15 = &unk_1008CDDD8;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_100684378;
  *(v9 + 24) = v4;
  v16 = sub_1006843A4;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100504C5C;
  v15 = &unk_1008CDE28;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_100682C94(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_100988CE8);
    if (v3)
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000D0740;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008CDE78;
      v5 = _Block_copy(aBlock);
      v6 = v3;

      [v6 enterFullScreenAnimated:1 completionHandler:v5];

      _Block_release(v5);
      v2 = v6;
    }
  }
}

id sub_100682E0C(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_100682EA4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_1006838C8;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100007A08;
  v10 = &unk_1008CDD10;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_1000089D4;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100504C5C;
  v10 = &unk_1008CDD60;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView(uint64_t a1)
{
  result = qword_100991110;
  if (!qword_100991110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100683354(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for BreakoutDetails.TextAlignment();
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

uint64_t sub_100683410()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

uint64_t (*sub_100683484(uint64_t **a1))()
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
  v2[4] = sub_100681F44(v2);
  return sub_1000B4CAC;
}

void sub_1006834F4()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_100988CE8);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_100683590()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView, &unk_1007DC7A0);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_100683604(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView, &unk_1007DC7A0);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100683690(uint64_t *a1))()
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
  sub_1006838D4(&qword_100991140, type metadata accessor for UpsellBreakoutView, &unk_1007DC7A0);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10068374C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1006838D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10068391C()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v61 = &v54 - v3;
  v60 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v67 = &v54 - v7;
  v63 = type metadata accessor for FontUseCase();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10002849C(&unk_1009732B0, qword_1007B7860);
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v10 = &v54 - v9;
  v11 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v69.receiver = v16;
  v69.super_class = v15;
  v19 = objc_msgSendSuper2(&v69, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v20;
  v68.receiver = v14;
  v68.super_class = v13;
  v22 = objc_msgSendSuper2(&v68, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_detailsView;
  if (qword_10096ED20 != -1)
  {
    swift_once();
  }

  v25 = v64;
  v26 = sub_1000056A8(v64, qword_1009D3358);
  (*(v59 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v29 = sub_100147904(v10, v28);
  v64 = v1;
  *(v1 + v24) = v29;
  v59 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView;
  if (qword_10096E318 != -1)
  {
    swift_once();
  }

  v30 = v63;
  v31 = sub_1000056A8(v63, qword_1009D18C8);
  v32 = v65;
  v33 = v66;
  v34 = *(v66 + 16);
  v34(v65, v31, v30);
  v57 = v34;
  v54 = UIContentSizeCategoryExtraExtraExtraLarge;
  v35 = enum case for DirectionalTextAlignment.none(_:);
  v58 = v4;
  v36 = *(v4 + 104);
  v37 = v60;
  v36(v67, enum case for DirectionalTextAlignment.none(_:), v60);
  v56 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v56[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v38 = v61;
  v34(v61, v32, v30);
  v39 = v37;
  v55 = *(v33 + 56);
  v55(v38, 0, 1, v30);
  v40 = v62;
  v36(v62, v35, v39);
  v41 = v54;
  v42 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = v65;
  v57(v38, v65, v30);
  v55(v38, 0, 1, v30);
  v44 = v42;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v44 setNumberOfLines:0];
  v45 = v58;
  v46 = v67;
  (*(v58 + 16))(v40, v67, v39);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v45 + 8))(v46, v39);
  (*(v66 + 8))(v43, v30);
  v47 = v64;
  *(v64 + v59) = v44;
  v48 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
  v49 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v50 = type metadata accessor for BreakoutDetails.TextAlignment();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  v51 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton;
  v52 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v47 + v51) = sub_1000F5284(0, v53);
  *(v47 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits) = 0;
  *(v47 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006840DC(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef__setDefaultAttributes_;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
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
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[407]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = static NSObject.== infix(_:_:)();

        v4 = v16;
        v8 = &selRef__setDefaultAttributes_;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_100988CE0);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = dispatch thunk of VideoPlayer.isPlaying.getter();

  return v24 & 1;
}

uint64_t type metadata accessor for PrefetchMarkerCollectionViewCell(uint64_t a1)
{
  result = qword_100991170;
  if (!qword_100991170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006845C8(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10068468C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100684834(&qword_100974AD0, &unk_1007DC870);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100684710@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100684768(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32PrefetchMarkerCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100684834(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrefetchMarkerCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100684878(char *a1)
{
  v2 = v1;
  *&v103 = type metadata accessor for StoreTab.Identifier();
  v4 = *(v103 - 8);
  __chkstk_darwin(v103);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10002849C(&unk_1009796D0, &unk_1007C02E0);
  __chkstk_darwin(v102);
  v8 = (&v85 - v7);
  v9 = sub_100005744(0, &qword_10097AAF0, UIMenu_ptr);
  v93 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B15F0;
  if (qword_10096D598 != -1)
  {
LABEL_76:
    swift_once();
  }

  v11 = qword_1009CED60;
  *(v10 + 32) = qword_1009CED60;
  v12 = qword_10096D5A0;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v91 = a1;
  v14 = qword_1009CED68;
  *(v10 + 40) = qword_1009CED68;
  v15 = v14;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v107.value.super.isa = 0;
  v107.is_nil = 0;
  v94 = v9;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v107, 1, 0xFFFFFFFFFFFFFFFFLL, v10, v80).super.super.isa;
  type metadata accessor for ASKBagContract();
  v95 = v2;
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v90 = v104;
  v10 = ASKBagContract.tabs.getter();
  v106 = _swiftEmptyArrayStorage;
  v17 = *(v10 + 16);
  if (!v17)
  {
    v92 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v9 = 0;
  v101 = (v4 + 88);
  v99 = enum case for StoreTab.Identifier.games(_:);
  v100 = enum case for StoreTab.Identifier.today(_:);
  v97 = enum case for StoreTab.Identifier.arcade(_:);
  v98 = enum case for StoreTab.Identifier.apps(_:);
  v96 = (v4 + 8);
  v86 = v17 - 1;
  v92 = _swiftEmptyArrayStorage;
  do
  {
    v18 = v9;
    v4 = v102;
    while (1)
    {
      if (v18 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      v19 = type metadata accessor for StoreTab();
      v20 = *(v19 - 8);
      v21 = *(v20 + 16);
      v22 = v10 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v18;
      v9 = *(v4 + 48);
      *v8 = v18;
      v21(v8 + v9, v22, v19);
      v23 = sub_100040EAC();
      if (v23)
      {
        break;
      }

LABEL_8:
      ++v18;
      sub_10068634C(v8);
      if (v17 == v18)
      {
        goto LABEL_26;
      }
    }

    a1 = v23;
    v24 = [a1 title];
    if (!v24)
    {

      goto LABEL_8;
    }

    v25 = v24;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    StoreTab.identifier.getter();
    v26 = (*v101)(v6, v103);
    if (v26 == v100)
    {
      v27 = &selRef_handleTodayTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 == v99)
    {
      v27 = &selRef_handleGamesTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 == v98)
    {
      v27 = &selRef_handleAppsTabSwitchKeyCommand;
      goto LABEL_21;
    }

    if (v26 != v97)
    {

      (*v96)(v6, v103);
      v4 = v102;
      goto LABEL_8;
    }

    v27 = &selRef_handleArcadeTabSwitchKeyCommand;
LABEL_21:
    v92 = *v27;
    v88 = sub_100005744(0, &qword_100982610, UIKeyCommand_ptr);
    v87 = [a1 image];

    v9 = v18 + 1;
    *&v104 = v18 + 1;
    dispatch thunk of CustomStringConvertible.description.getter();
    v104 = 0u;
    v105 = 0u;
    UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();

    sub_10068634C(v8);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v92 = v106;
  }

  while (v86 != v18);
LABEL_26:

  v28 = v92;
  if (v92 >> 62)
  {
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

    v29 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
    v29 = v28;
  }

  v30 = v95;

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v108.value.super.isa = 0;
  v108.is_nil = 0;
  v32.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v108, 1, 0xFFFFFFFFFFFFFFFFLL, v29, v80).super.super.isa;
  *&v104 = _swiftEmptyArrayStorage;
  v33 = *(v30 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
  if (v33 && (v34 = [v33 ams_DSID]) != 0)
  {

    if (qword_10096D5A8 != -1)
    {
      swift_once();
    }

    v35 = qword_1009CED70;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v36 = v104;
    v37 = (v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions);
    sub_10002A400((v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if ((dispatch thunk of RestrictionsProtocol.isRunningInStoreDemoMode.getter() & 1) == 0)
    {
      sub_10002A400(v37, v37[3]);
      if ((dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1) == 0)
      {
        if (qword_10096DC10 != -1)
        {
          swift_once();
        }

        v38 = qword_1009D0418;
        goto LABEL_44;
      }
    }
  }

  else
  {
    sub_10002A400((v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v95 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if (dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter())
    {
      v36 = _swiftEmptyArrayStorage;
    }

    else
    {
      if (qword_10096DC08 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0410;
LABEL_44:
      v39 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v36 = v104;
    }
  }

  if (v36 >> 62)
  {
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);

    v40 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100005744(0, &qword_1009818C0, UIMenuElement_ptr);
    v40 = v36;
  }

  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v109.value.super.isa = 0;
  v109.is_nil = 0;
  v42 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v41, 0, v109, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v81.super.super.isa).super.super.isa;
  v43._object = 0x800000010081F5A0;
  v43._countAndFlagsBits = 0xD000000000000010;
  v44._countAndFlagsBits = 0;
  v44._object = 0xE000000000000000;
  v45 = localizedString(_:comment:)(v43, v44);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007B48F0;
  v47 = isa;
  *(v46 + 32) = isa;
  *(v46 + 40) = v32;
  *(v46 + 48) = v42;
  v48 = v47;
  v49 = v32.super.super.isa;
  v50 = v42;
  v110.value.super.isa = 0;
  v110.is_nil = 0;
  v51.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v45, 0, v110, 0, 0xFFFFFFFFFFFFFFFFLL, v46, v82).super.super.isa;
  v52 = v91;
  [v91 insertSiblingMenu:v51.super.super.isa afterMenuForIdentifier:UIMenuEdit];
  v53 = swift_allocObject();
  v103 = xmmword_1007B0B70;
  *(v53 + 16) = xmmword_1007B0B70;
  if (qword_10096DC18 != -1)
  {
    swift_once();
  }

  v54 = qword_1009D0420;
  *(v53 + 32) = qword_1009D0420;
  v55 = v54;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v111.value.super.isa = 0;
  v111.is_nil = 0;
  v57.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v56, 0, v111, 1, 0xFFFFFFFFFFFFFFFFLL, v53, v83.super.super.isa).super.super.isa;
  [v52 insertChildMenu:v57.super.super.isa atEndOfMenuForIdentifier:UIMenuHelp];
  v58 = ASKBuildTypeGetCurrent();
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {

    goto LABEL_60;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
LABEL_55:

    goto LABEL_59;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v66 != v67)
  {
    v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v73)
    {
      goto LABEL_55;
    }

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;
    if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
    {
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v78 & 1) == 0)
      {

        return;
      }
    }

    type metadata accessor for LocalPreferences();
    static LocalPreferences.currentApplication.getter();
    v52 = v91;
    if (qword_10096E988 != -1)
    {
      swift_once();
    }

    v79 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
    sub_1000056A8(v79, qword_1009D2A68);
    Preferences.subscript.getter();

    if (v106 != 2 && (v106 & 1) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_59:
  v52 = v91;
LABEL_60:
  v68 = swift_allocObject();
  *(v68 + 16) = v103;
  if (qword_10096DC20 != -1)
  {
    swift_once();
  }

  v69 = qword_1009D0428;
  *(v68 + 32) = qword_1009D0428;
  v70 = v69;
  v71._countAndFlagsBits = 0x6775626544;
  v71._object = 0xE500000000000000;
  v112.value.super.isa = 0;
  v112.is_nil = 0;
  v72 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v71, 0, v112, 0, 0xFFFFFFFFFFFFFFFFLL, v68, v84.super.super.isa).super.super.isa;
  [v52 insertSiblingMenu:v72 beforeMenuForIdentifier:UIMenuWindow];

LABEL_63:
}

uint64_t sub_100685654(uint64_t a1)
{
  if (static Selector.== infix(_:_:)())
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
    if (v2)
    {
      v3 = [v2 ams_DSID];
      if (v3)
      {

        return 1;
      }
    }

    sub_10002A400((v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    return dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1;
  }

  if (static Selector.== infix(_:_:)())
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
    if (!v4)
    {
      return 1;
    }

    v5 = [v4 ams_DSID];
    if (!v5)
    {
      return 1;
    }

    v6 = (v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions);
    sub_10002A400((v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions), *(v1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24));
    if (dispatch thunk of RestrictionsProtocol.isRunningInStoreDemoMode.getter())
    {
      return 1;
    }

    sub_10002A400(v6, v6[3]);
    return dispatch thunk of RestrictionsProtocol.isAccountModificationRestricted.getter() & 1;
  }

  return 2;
}

char *sub_100685788(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_objectGraph] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_tabBarController] = a2;
  v29 = type metadata accessor for Restrictions();
  v30 = &protocol witness table for Restrictions;
  type metadata accessor for BaseObjectGraph();

  v26 = a2;
  inject<A, B>(_:from:)();
  sub_100005A38(&v28, &v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions]);
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  inject<A, B>(_:from:)();
  v8 = v28;
  *&v3[OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore] = v28;
  v9 = [v8 ams_activeiTunesAccount];
  v10 = *&v3[v7];
  *&v3[v7] = v9;

  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v27, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  [v14 addObserver:v13 selector:"storeAccountsDidChange" name:ACAccountStoreDidChangeNotification object:*&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore]];

  v15 = [v12 defaultCenter];
  v16 = static Restrictions.DidChangeMessage.name.getter();
  v17 = *&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions + 24];
  v18 = sub_10002A400(&v13[OBJC_IVAR____TtC8AppStore14MenuBarManager_restrictions], v17);
  v19 = *(v17 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v26 - v21;
  (*(v19 + 16))(&v26 - v21, v20);
  v23 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v19 + 8))(v22, v17);
  [v15 addObserver:v13 selector:"rebuildMenu" name:v16 object:v23];

  swift_unknownObjectRelease();
  v24 = [objc_opt_self() mainSystem];
  [v24 setNeedsRebuild];

  return v13;
}

double sub_100685AAC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v4 = *(v19 - 8);
  __chkstk_darwin(v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  v13 = v18;
  *(v12 + 16) = v18;
  aBlock[4] = sub_100686344;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008CDEC8;
  v14 = _Block_copy(aBlock);
  v15 = v13;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  (*(v4 + 8))(v6, v19);

  return result;
}

void sub_100685DFC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v6 = *(v22 - 8);
  *&v7 = __chkstk_darwin(v22).n128_u64[0];
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [*(a1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_storeAccountStore) ams_activeiTunesAccount];
  v10 = [v23 ams_DSID];
  v11 = OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount;
  v12 = *(a1 + OBJC_IVAR____TtC8AppStore14MenuBarManager_activeStoreAccount);
  if (v12)
  {
    v13 = [v12 ams_DSID];
    v14 = v13;
    if (v10)
    {
      if (v13)
      {
        sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_10;
        }

LABEL_8:
        v16 = *(a1 + v11);
        v17 = v23;
        *(a1 + v11) = v23;
        v18 = v17;

        sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
        v19 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10068616C;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008CDEF0;
        v20 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10002D150();
        sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
        sub_1000079A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v20);

        (*(v3 + 8))(v5, v2);
        (*(v6 + 8))(v9, v22);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v10 = v13;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v10)
  {
    goto LABEL_7;
  }

LABEL_10:
  v21 = v23;
}

void sub_10068616C()
{
  v0 = [objc_opt_self() mainSystem];
  [v0 setNeedsRebuild];
}

uint64_t sub_10068634C(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009796D0, &unk_1007C02E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1006863BC(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = 0;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = 5;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v4[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007B10D0;
  *(v10 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v10 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v11 = v9;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v11;
}

void sub_1006865EC()
{
  v1 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView);
  if (v2)
  {
    v4[0] = 0x3FF0000000000000;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = 0x3FF0000000000000;
    v4[4] = 0;
    v4[5] = 0;
    [v2 setTransform:v4];
    v2 = *(v0 + v1);
  }

  [v2 removeFromSuperview];
  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
}

void sub_10068666C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
  if (v2)
  {
    v3 = v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory];
    v4 = v2;
    v5 = v4;
    if (v3 == 4)
    {
      sub_100686754(v4);
    }

    else
    {
      [v1 bounds];
      [v5 setFrame:?];
    }
  }
}

uint64_t sub_100686754(void *a1)
{
  v2 = v1;
  [v1 bounds];
  v5 = v4;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_self();
  [v10 setAnimationsEnabled:0];
  if (v5 == v7)
  {
    goto LABEL_2;
  }

  if (v7 < v5 && (v7 != 0.0 || v9 != 0.0))
  {
    goto LABEL_11;
  }

  if (v7 == 0.0 && v9 == 0.0)
  {
LABEL_2:
    [v2 bounds];
    [a1 setFrame:?];
LABEL_3:
    [v10 setAnimationsEnabled:1];
    v20.a = 1.0;
    v20.b = 0.0;
    v20.c = 0.0;
    v20.d = 1.0;
    v20.tx = 0.0;
    v20.ty = 0.0;
    return [a1 setTransform:&v20];
  }

  if (*(v2 + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) == 1)
  {
LABEL_11:
    [v2 bounds];
    [a1 setFrame:?];
    [a1 transform];
    CGAffineTransformScale(&v19, &v20, v7 / v5, v7 / v5);
    v20 = v19;
    [a1 setTransform:&v20];
    goto LABEL_3;
  }

  CGAffineTransformMakeScale(&v20, v5 / v7, v5 / v7);
  v14 = *&v20.c;
  v15 = *&v20.a;
  tx = v20.tx;
  ty = v20.ty;
  [v10 setAnimationsEnabled:1];
  [a1 transform];
  v20.a = 1.0;
  v20.b = 0.0;
  v20.c = 0.0;
  v20.d = 1.0;
  v20.tx = 0.0;
  v20.ty = 0.0;
  result = static CGAffineTransform.== infix(_:_:)();
  if (result)
  {
    v16[0] = v15;
    v16[1] = v14;
    v17 = tx;
    v18 = ty;
    return [a1 setTransform:v16];
  }

  return result;
}

void sub_100686978()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
  if (v1)
  {
    [v1 sizeThatFits:?];
  }

  else
  {
    v2 = [v0 traitCollection];
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    sub_1002D2EF4(v2, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
  }
}

id sub_100686AD8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InfoLayerOverlayContainerView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*sub_100686B5C(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100686BC0;
}

void sub_100686BC0(id *a1, char a2)
{
  v4 = a1[1];
  v28 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
      v7 = v28;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0, UIView_ptr);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v28;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    v26 = a1[1];
    if (v24)
    {
      v27 = v24;
      [a1[1] addSubview:v24];
    }

    sub_1001B8790(v25);
    [v26 setNeedsLayout];

    v23 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v16 = v4;
      v17 = static NSObject.== infix(_:_:)();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v21 = a1[1];
  if (v19)
  {
    v22 = v19;
    [a1[1] addSubview:v19];
  }

  sub_1001B8790(v20);
  [v21 setNeedsLayout];
  v23 = v28;
LABEL_21:
}

id (*sub_100686E84(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100686EE8;
}

id sub_100686EE8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_100686F98(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_1006871EC()
{
  v1 = v0;
  v2 = type metadata accessor for SmallSearchLockupLayout();
  v142 = *(v2 - 8);
  v143 = v2;
  __chkstk_darwin(v2);
  v141 = &v110[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v145 = *(v4 - 8);
  v146 = v4;
  __chkstk_darwin(v4);
  v113 = &v110[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v130 = *(v6 - 8);
  v131 = v6;
  __chkstk_darwin(v6);
  v129 = &v110[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OfferButtonMetrics();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v127 = &v110[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v152 = &v110[-v11];
  v157 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v151 = *(v157 - 8);
  __chkstk_darwin(v157);
  v137 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v158 = &v110[-v14];
  v15 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v15 - 8);
  v112 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v156 = &v110[-v18];
  v19 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v110[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v196.receiver = v0;
  v196.super_class = v23;
  objc_msgSendSuper2(&v196, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  sub_1000AB0CC(v28, v30);
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v32 setFrame:?];
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  v33 = [v0 traitCollection];
  v34 = type metadata accessor for TraitEnvironmentPlaceholder();
  v136 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v35 = swift_allocObject();
  v150 = xmmword_1007B0B70;
  *(v35 + 16) = xmmword_1007B0B70;
  *(v35 + 32) = v33;
  v36 = v33;
  v147 = v34;
  v37 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v133 = sub_1000320F0();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v132 = v38;

  v39 = *(v20 + 8);
  v138 = v22;
  v139 = v20 + 8;
  v140 = v19;
  v135 = v39;
  v39(v22, v19);
  v197.origin.x = v25;
  v197.origin.y = v27;
  v197.size.width = v29;
  v197.size.height = v31;
  MinX = CGRectGetMinX(v197);
  [v32 frame];
  MaxY = CGRectGetMaxY(v198);
  v40 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_title + 8];
  v119 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v118 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v45;
    v122 = v44;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] text];
  v47 = v145;
  if (v46)
  {
    v48 = v46;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v50;
    v124 = v49;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
  v111 = v32[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute];
  v149 = v54;

  v155 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v156, 1, 1, v146);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v56 = v157;
  v57 = sub_1000056A8(v157, qword_1009CDC00);
  v125 = *(v151 + 16);
  v126 = v151 + 16;
  v125(v158, v57, v56);
  v58 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v144 = v1;
  if (v58)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v59 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v59 = qword_100991028;
  }

  v60 = v154;
  v61 = sub_1000056A8(v154, v59);
  v62 = v153;
  v63 = v127;
  (*(v153 + 16))(v127, v61, v60);
  (*(v62 + 32))(v152, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v120 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v127 = LayoutViewPlaceholder.init(representing:)();
  v65 = objc_opt_self();
  v116 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v148 = v55;
  v67 = type metadata accessor for Feature();
  v195[3] = v67;
  v68 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v195[4] = v68;
  v115 = v68;
  v69 = sub_1000056E0(v195);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v117 = v71 + 104;
  v114 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  isFeatureEnabled(_:)();
  sub_100007000(v195);
  v73 = v129;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v74 = v131;
  v130 = *(v130 + 8);
  (v130)(v73, v131);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v68;
  v76 = sub_1000056E0(v194);
  v72(v76, v70, v67);
  isFeatureEnabled(_:)();
  sub_100007000(v194);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v77 = v130;
  (v130)(v73, v74);
  v78 = [v116 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v193[3] = v67;
  v193[4] = v115;
  v79 = sub_1000056E0(v193);
  v72(v79, v114, v67);
  isFeatureEnabled(_:)();
  sub_100007000(v193);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v77(v73, v74);
  v80 = v155;
  LODWORD(v131) = sub_1000AE138() & (v80 != 0);
  if (v131 == 1)
  {
    v81 = v120;
    v82 = objc_allocWithZone(v147);
    v83 = v148;
    v84 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v85 = v112;
    sub_100031660(v156, v112, &unk_1009912C0, &unk_1007B4130);
    v87 = v145;
    v86 = v146;
    v88 = *(v145 + 48);
    if (v88(v85, 1, v146) == 1)
    {
      v89 = v113;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10002B894(v85, &unk_1009912C0, &unk_1007B4130);
      }
    }

    else
    {
      v89 = v113;
      (*(v87 + 32))(v113, v85, v86);
    }

    v91 = v84;
    sub_1000AD91C(v155, v89, v91, v29, v31);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v81 = v120;
    swift_allocObject();
    v90 = LayoutViewPlaceholder.init(representing:)();
  }

  v92 = v90;

  v93 = v149;
  if ((sub_1000AE138() & (v93 != 0)) == 1)
  {
    sub_100046528(v93, v111, v29, v31);
    swift_allocObject();
    v94 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v94 = LayoutViewPlaceholder.init(representing:)();
  }

  v95 = v94;
  v125(v137, v158, v157);
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v191 = v81;
  v190 = v127;
  v189 = 0;
  *&v187[40] = 0u;
  v188 = 0u;
  sub_10002C0AC(v195, v187);
  sub_10002C0AC(v194, &v186);
  v185 = 0;
  v183 = 0u;
  v184 = 0u;
  v182 = 0;
  v180 = 0u;
  v181 = 0u;

  v146 = v95;
  v96 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v178 = v81;
  v177 = v96;
  v176 = 0;
  v174 = 0u;
  v175 = 0u;
  v173 = 0;
  v171 = 0u;
  v172 = 0u;
  v170 = 0;
  v168 = 0u;
  v169 = 0u;
  v167 = 0;
  v166 = 0u;
  *&v165[40] = 0u;
  sub_10002C0AC(v193, v165);
  v163 = v81;
  v164 = &protocol witness table for LayoutViewPlaceholder;
  v161 = &protocol witness table for LayoutViewPlaceholder;
  v162 = v92;
  v160 = v81;
  v159 = v95;
  v97 = v141;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  v99 = v148;
  *(v98 + 32) = v148;
  v100 = v99;
  v101 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v102 = v143;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v142 + 8))(v97, v102);
  sub_100007000(v193);
  sub_100007000(v194);
  sub_100007000(v195);
  (*(v153 + 8))(v152, v154);
  (*(v151 + 8))(v158, v157);
  sub_10002B894(v156, &unk_1009912C0, &unk_1007B4130);
  v103 = v138;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  v104 = swift_allocObject();
  *(v104 + 16) = v150;
  *(v104 + 32) = v100;
  v105 = v100;
  v106 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v107 = v140;
  dispatch thunk of AnyDimension.rawValue(in:)();

  v135(v103, v107);
  v108 = *&v144[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v108 setFrame:?];
}

void sub_10068836C(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v6 - 8);
  v114 = &v98 - v7;
  v8 = type metadata accessor for ScreenshotsDisplayStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v117 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v120 = &v98 - v12;
  v13 = type metadata accessor for LockupMediaLayout.DisplayType();
  v121 = *(v13 - 8);
  __chkstk_darwin(v13);
  v119 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v98 - v16;
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  v20 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v20 - 8);
  v122 = &v98 - v21;
  v22 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  __chkstk_darwin(v22 - 8);
  v24 = &v98 - v23;
  v25 = type metadata accessor for PageGrid();
  v118 = *(v25 - 8);
  __chkstk_darwin(v25);
  v123 = &v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.optional<A>(_:)();
  v27 = v125;
  if (!v125)
  {
    return;
  }

  v116 = a1;
  v28 = AdvertRotationControllerProvider.advertController(for:asPartOf:)();
  if (!v28)
  {
LABEL_13:

    return;
  }

  v111 = v19;
  v113 = v27;
  v29 = v28;
  dispatch thunk of AdvertRotationController.currentAdvert.getter();
  sub_10002849C(&unk_10097E360, &qword_1007C4380);
  type metadata accessor for MixedMediaLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v106 = v29;
  v112 = v9;
  v107 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  PageGrid.columnWidth.getter();
  v30 = *&KeyPath[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  *(v30 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing) = v31;
  [v30 setNeedsLayout];
  PageGrid.componentMeasuringSize(spanning:)();
  v33 = v32;
  v35 = v34;
  v36 = type metadata accessor for ItemLayoutContext();
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);

  v110 = a2;
  sub_100279F24(v37, v24, a2);
  sub_10002B894(v24, &unk_1009731E0, &unk_1007B0B60);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v38 = static UIColor.defaultBackground.getter();
  [KeyPath setBackgroundColor:v38];

  v39 = MixedMediaLockup.screenshots.getter();
  if (v39 >> 62)
  {
    v59 = v39;
    v40 = _CocoaArrayWrapper.endIndex.getter();
    v39 = v59;
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v120;
  v120 = v8;
  if (v40)
  {
    v42 = v119;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v109 = *(v39 + 32);
    }
  }

  else
  {

    v109 = 0;
    v42 = v119;
  }

  v103 = *&KeyPath[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  a1 = MixedMediaLockup.alignedRegionArtwork.getter();
  v102 = MixedMediaLockup.alignedRegionVideo.getter();
  v43 = MixedMediaLockup.trailers.getter();
  if (v43 >> 62)
  {
    v60 = v43;
    v44 = _CocoaArrayWrapper.endIndex.getter();
    v43 = v60;
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v105 = KeyPath;
  v104 = v30;
  v119 = a1;
  if (v44)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v101 = *(v43 + 32);
    }
  }

  else
  {

    v101 = 0;
  }

  v45 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v46 = v125;
  sub_1006C9F8C(v122);

  v30 = MixedMediaLockup.alignedRegionArtwork.getter();
  a1 = MixedMediaLockup.alignedRegionVideo.getter();
  v47 = MixedMediaLockup.screenshots.getter();
  if (v47 >> 62)
  {
    v61 = v47;
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v61;
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v112;
  if (v48)
  {
    if ((v47 & 0xC000000000000001) == 0)
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v47 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v49 = MixedMediaLockup.trailers.getter();
  if (v49 >> 62)
  {
    v62 = v49;
    v50 = _CocoaArrayWrapper.endIndex.getter();
    v49 = v62;
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v108 = v13;
  if (v50)
  {
    if ((v49 & 0xC000000000000001) == 0)
    {
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v51 = *(v49 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_37;
  }

  v51 = 0;
LABEL_39:
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
  {
    if (!(a1 | v30))
    {
      v53 = sub_1001B9B24(KeyPath, v51, 0, 1, v52);
      v30 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (KeyPath)
        {
LABEL_43:
          v54 = Screenshots.mediaPlatform.getter();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v99 = sub_1001B9E6C(v54);

        v116 = KeyPath;
        v63 = v42;
        if (KeyPath)
        {
          v64 = Screenshots.mediaPlatform.getter();
        }

        else
        {
          v64 = 0;
        }

        v65 = v114;
        v66 = v120;
        (*(v24 + 2))(v114, v41, v120);
        (*(v24 + 7))(v65, 0, 1, v66);
        v100 = sub_1001BA394(v64, v65);

        sub_10002B894(v65, &unk_100973C90, qword_1007B55A0);
        if (a1)
        {
          v67 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v67 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v63;
        if (v67)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }
          }

          v69 = dispatch thunk of Artwork.isLandscape.getter();

          if (v69)
          {

            v70 = *(v24 + 1);
            v70(v41, v120);
            v55 = v121;
            v71 = v115;
            v72 = v108;
            (*(v121 + 104))(v115, enum case for LockupMediaLayout.DisplayType.landscape(_:), v108);
LABEL_81:
            ObjectType = v70;
            v56 = v111;
            (*(v55 + 32))(v111, v71, v72);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v73 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v74 = v121;
        v72 = v108;
        v114 = *(v121 + 104);
        (v114)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v108);
        v75 = LockupMediaLayout.DisplayType.numberOfViews.getter();
        v76 = *(v74 + 8);
        v76(v68, v72);
        if (((ObjectType >= v75) & v100) != 0 || (v73 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v114)(v68, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v72), v77 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v76(v68, v72), ((ObjectType >= v77) & v99) != 0) || (v73 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v114)(v68, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v72), v78 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v76(v68, v72), ObjectType >= v78))
        {

          v70 = *(v112 + 1);
          v70(v41, v120);
        }

        else
        {
          v73 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v114)(v68, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v72);
          v79 = LockupMediaLayout.DisplayType.numberOfViews.getter();

          v76(v68, v72);
          v70 = *(v112 + 1);
          v70(v41, v120);
          if (ObjectType != v79)
          {
            v80 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v71 = v115;
            v81 = v115;
LABEL_80:
            (v114)(v81, v80, v72);
            v55 = v121;
            goto LABEL_81;
          }
        }

        v71 = v115;
        v81 = v115;
        v80 = v73;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = _CocoaArrayWrapper.endIndex.getter();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v115;
    AspectRatio.init(_:_:)();

    ObjectType = *(v24 + 1);
    ObjectType(v41, v120);
    v55 = v121;
    v58 = v108;
    (*(v121 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v108);
    v56 = v111;
    (*(v55 + 32))(v111, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v41, v120);
    v55 = v121;
    v56 = v111;
    (*(v121 + 104))(v111, enum case for LockupMediaLayout.DisplayType.none(_:), v108);
  }

LABEL_82:
  v82 = v117;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v83 = ASKDeviceTypeGetCurrent();
  v84 = v122;
  sub_1005B8C58(v119, v102, v109, v101, v122, v56, v82, v110, v85, v86, v87, v88, v89, v90, v91, v92, v33, v35, 0);

  ObjectType(v82, v120);
  (*(v55 + 8))(v56, v108);
  sub_10002B894(v84, &unk_1009732A0, &unk_1007B4FE0);
  v93 = Lockup.searchAdOpportunity.getter();

  if (v93)
  {
    v94 = SearchAdOpportunity.searchAd.getter();

    v95 = v105;
    if (v94)
    {
      v96 = [objc_opt_self() clearColor];
      [v95 setBackgroundColor:v96];
    }
  }

  else
  {
    v94 = 0;
    v95 = v105;
  }

  v97 = v118;
  [v95 setNeedsLayout];

  [v95 setNeedsLayout];

  (*(v97 + 8))(v123, v107);
}

void sub_100689348(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v192 = &v157 - v13;
  v14 = type metadata accessor for SmallSearchLockupLayout();
  v191 = *(v14 - 8);
  __chkstk_darwin(v14);
  v190 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v194 = *(v16 - 8);
  *&v195 = v16;
  __chkstk_darwin(v16);
  v184 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LabelPlaceholderCompatibility();
  v187 = *(v18 - 8);
  v188 = v18;
  __chkstk_darwin(v18);
  v186 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for OfferButtonMetrics();
  v198 = *(v20 - 8);
  v199 = v20;
  __chkstk_darwin(v20);
  v185 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v197 = &v157 - v23;
  v202 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v196 = *(v202 - 8);
  __chkstk_darwin(v202);
  v189 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v201 = &v157 - v26;
  v27 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v27 - 8);
  v183 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v157 - v30;
  v203 = type metadata accessor for ScreenshotsDisplayStyle();
  v31 = *(v203 - 8);
  __chkstk_darwin(v203);
  v33 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v157 - v35;
  v37 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v37 - 8);
  v193 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.optional<A>(_:)();
  if (!v243[0])
  {
    return;
  }

  v180 = v12;
  v181 = v11;
  v205 = v243[0];
  v182 = a1;
  sub_10002C0AC(a1, v243);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  v39 = type metadata accessor for AdvertsSearchResult();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v179 = v14;
  v40 = v242[0];
  v244 = v39;
  v245 = sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v243[0] = v40;

  v41 = AdvertRotationControllerProvider.advertController(for:asPartOf:createIfRequired:)();
  sub_100007000(v243);
  if (!v41)
  {

    return;
  }

  dispatch thunk of AdvertRotationController.currentAdvert.getter();
  sub_10002849C(&unk_10097E360, &qword_1007C4380);
  type metadata accessor for MixedMediaLockup();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v173 = v41;
  v174 = v31;
  v170 = v33;
  v177 = v36;
  v42 = v242[0];
  v43 = v204;
  v44 = *&v204[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView];
  v45 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v176 = v44;
  v46 = *(v44 + v45);
  if (v46 >> 62)
  {
    v47 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = a2;
  v178 = v40;
  v175 = v42;
  if (v47)
  {
    if (v47 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v48 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v46 + v48 + 4);
      }

      v50 = v49;
      ++v48;
      v242[0] = v49;
      type metadata accessor for BorderedScreenshotView(0);
      sub_100690838(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v51 = v50;
      AnyHashable.init<A>(_:)();
      a2 = v206;
      ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
      sub_10003D614(v243);
      v52 = *&v51[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      v246.value.super.isa = 0;
      v246.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v246, v53);
    }

    while (v47 != v48);

    v43 = v204;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    v242[0] = v55;
    type metadata accessor for VideoView(0);
    sub_100690838(&qword_100992450, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v56 = v55;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v243);
  }

  v43 = *&v43[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView];
  v31 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v57 = *&v43[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v247.value.super.isa = 0;
  v247.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v247, v58);

  v59 = *&v43[v31];
  v60 = type metadata accessor for ArtworkView();
  v61 = sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v62 = v59;
  v171 = v61;
  v172 = v60;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v63 = Lockup.icon.getter();
  v64 = v203;
  if (!v63)
  {
    goto LABEL_25;
  }

  v65 = qword_10096EE80;
  v46 = *&v43[v31];
  if (v65 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v66 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v66, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  [v46 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  Artwork.style.getter();
  ArtworkView.style.setter();
  [v46 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();
  v67 = *&v43[v31];
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

  v64 = v203;
LABEL_25:
  v68 = *&v43[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  sub_10032A784(v182, a2);

  v69 = v177;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    (*(v174 + 8))(v69, v64);
    return;
  }

  v70 = Lockup.title.getter();
  v160 = v71;
  v161 = v70;
  v72 = Lockup.subtitle.getter();
  v74 = v73;
  v75 = Lockup.searchAdOpportunity.getter();

  v162 = v74;
  v163 = v72;
  if (v75)
  {
    v76 = SearchAdOpportunity.searchAd.getter();

    v77 = v201;
    v78 = v194;
    v79 = v185;
    if (v76)
    {
      v80 = SearchAd.advertisingText.getter();
      v164 = v81;
      v165 = v80;
    }

    else
    {
      v164 = 0;
      v165 = 0;
    }

    v82 = v195;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v77 = v201;
    v78 = v194;
    v82 = v195;
    v79 = v185;
  }

  v193 = MixedMediaLockup.metadataRibbonItems.getter();
  v185 = MixedMediaLockup.searchTagRibbonItems.getter();
  v83 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
  v84 = [v204 traitCollection];
  (*(v78 + 56))(v200, 1, 1, v82);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v85 = v202;
  v86 = sub_1000056A8(v202, qword_1009CDC00);
  v87 = v196 + 16;
  v88 = *(v196 + 16);
  v88(v77, v86, v85);
  v89 = UITraitCollection.prefersAccessibilityLayouts.getter();
  LODWORD(v157) = v83;
  v167 = v88;
  v168 = v87;
  if ((v89 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v90 = qword_100991028;
    goto LABEL_41;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v90 = qword_100991010;
LABEL_41:
    v91 = v199;
    v92 = sub_1000056A8(v199, v90);
    v93 = v198;
    (*(v198 + 16))(v79, v92, v91);
    (*(v93 + 32))(v197, v79, v91);
    v94 = [v84 preferredContentSizeCategory];
    UIContentSizeCategory.isAccessibilityCategory.getter();

    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
    SmallSearchLockupLayout.Metrics.artworkSize.getter();
    v166 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v182 = LayoutViewPlaceholder.init(representing:)();
    v95 = objc_opt_self();
    v158 = v95;
    v96 = [v95 preferredFontForTextStyle:UIFontTextStyleBody];
    v97 = type metadata accessor for Feature();
    v244 = v97;
    v171 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v245 = v171;
    v98 = sub_1000056E0(v243);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v100 = *(v97 - 8);
    v159 = *(v100 + 104);
    v169 = v100 + 104;
    HIDWORD(v157) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v159(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
    isFeatureEnabled(_:)();
    sub_100007000(v243);
    v101 = v186;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v102 = v188;
    v172 = v84;
    v103 = *(v187 + 8);
    v103(v101, v188);
    v104 = [v95 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v242[3] = v97;
    v242[4] = v171;
    v105 = sub_1000056E0(v242);
    v106 = v99;
    v107 = v159;
    v159(v105, v106, v97);
    isFeatureEnabled(_:)();
    sub_100007000(v242);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v103(v101, v102);
    v108 = [v158 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v241[3] = v97;
    v241[4] = v171;
    v109 = sub_1000056E0(v241);
    v107(v109, HIDWORD(v157), v97);
    isFeatureEnabled(_:)();
    sub_100007000(v241);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v103(v101, v102);
    v110 = v193;
    LODWORD(v188) = sub_1000AE138() & (v110 != 0);
    if (v188 == 1)
    {
      v111 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
      v112 = v172;
      v113 = TraitEnvironmentPlaceholder.init(traitCollection:)();
      v114 = v183;
      sub_100031660(v200, v183, &unk_1009912C0, &unk_1007B4130);
      v116 = v194;
      v115 = v195;
      v117 = *(v194 + 48);
      if (v117(v114, 1, v195) == 1)
      {
        v118 = v184;
        static MetadataRibbonViewLayout.Metrics.standard.getter();
        if (v117(v114, 1, v115) != 1)
        {
          sub_10002B894(v114, &unk_1009912C0, &unk_1007B4130);
        }
      }

      else
      {
        v118 = v184;
        (*(v116 + 32))(v184, v114, v115);
      }

      v121 = v113;
      sub_1000AD91C(v193, v118, v121, a6, a7);

      (*(v116 + 8))(v118, v115);
      v119 = v166;
      swift_allocObject();
      v120 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      v119 = v166;
      swift_allocObject();
      v120 = LayoutViewPlaceholder.init(representing:)();
    }

    v122 = v120;

    v123 = v185;
    v124 = sub_1000AE138() & (v123 != 0);
    v125 = v167;
    if (v124 == 1)
    {
      sub_100046528(v123, v157 & 1, a6, a7);
      swift_allocObject();
      v126 = LayoutViewPlaceholder.init(measurements:)();
    }

    else
    {
      swift_allocObject();
      v126 = LayoutViewPlaceholder.init(representing:)();
    }

    v127 = v126;
    v125(v189, v201, v202);
    v240 = &protocol witness table for LayoutViewPlaceholder;
    v239 = v119;
    v238 = v182;
    v237 = 0;
    *&v235[40] = 0u;
    v236 = 0u;
    sub_10002C0AC(v243, v235);
    sub_10002C0AC(v242, &v234);
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v230 = 0;
    v228 = 0u;
    v229 = 0u;

    v128 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
    v227 = &protocol witness table for LayoutViewPlaceholder;
    v226 = v119;
    v225 = v128;
    v224 = 0;
    v222 = 0u;
    v223 = 0u;
    v221 = 0;
    v219 = 0u;
    v220 = 0u;
    v218 = 0;
    v216 = 0u;
    v217 = 0u;
    v215 = 0;
    v214 = 0u;
    *&v213[40] = 0u;
    sub_10002C0AC(v241, v213);
    v211 = v119;
    v212 = &protocol witness table for LayoutViewPlaceholder;
    v209 = &protocol witness table for LayoutViewPlaceholder;
    v210 = v122;
    v208 = v119;
    v207 = v127;
    v129 = v190;
    SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v130 = swift_allocObject();
    v195 = xmmword_1007B0B70;
    *(v130 + 16) = xmmword_1007B0B70;
    v131 = v172;
    *(v130 + 32) = v172;
    v79 = v131;
    v132 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v133 = v179;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v135 = v134;

    (*(v191 + 8))(v129, v133);
    sub_100007000(v241);
    sub_100007000(v242);
    sub_100007000(v243);
    (*(v198 + 8))(v197, v199);
    (*(v196 + 8))(v201, v202);
    sub_10002B894(v200, &unk_1009912C0, &unk_1007B4130);
    v84 = v192;
    static StandardSearchResultContentViewMetrics.bottomMargin.getter();
    v136 = swift_allocObject();
    *(v136 + 16) = v195;
    *(v136 + 32) = v79;
    v137 = v79;
    v138 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    sub_1000320F0();
    v139 = v181;
    dispatch thunk of AnyDimension.rawValue(in:)();
    v141 = v140;

    (*(v180 + 8))(v84, v139);
    v142 = MixedMediaLockup.alignedRegionArtwork.getter();
    v143 = MixedMediaLockup.alignedRegionVideo.getter();
    v144 = MixedMediaLockup.screenshots.getter();
    if (v144 >> 62)
    {
      v146 = v144;
      v147 = _CocoaArrayWrapper.endIndex.getter();
      v144 = v146;
      v145 = v174;
      if (!v147)
      {
LABEL_61:

        v79 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v145 = v174;
      if (!*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    if ((v144 & 0xC000000000000001) != 0)
    {
      v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v79 = *(v144 + 32);
    }

LABEL_62:
    v148 = MixedMediaLockup.trailers.getter();
    if (!(v148 >> 62))
    {
      if (!*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_64;
    }

    v150 = v148;
    v151 = _CocoaArrayWrapper.endIndex.getter();
    v148 = v150;
    if (!v151)
    {
      break;
    }

LABEL_64:
    if ((v148 & 0xC000000000000001) != 0)
    {
      v149 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_67;
    }

    if (*((v148 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v149 = *(v148 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v149 = 0;
LABEL_70:
  v152 = [v204 traitCollection];
  v153 = v170;
  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v154.n128_f64[0] = a6;
  sub_1005B6FA0(v142, v143, v79, v149, v152, v206, v153, v154, a7 - v135 - v141);

  v155 = *(v145 + 8);
  v156 = v203;
  v155(v153, v203);
  v155(v177, v156);
}

uint64_t sub_10068ABA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_10001F63C(v5, v6);
  return sub_1000AD1F8(a1);
}

id sub_10068AC60(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10068ADB8(void *a1)
{
  sub_1006906C4(a1);
}

uint64_t (*sub_10068ADF0(uint64_t **a1))()
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
  v2[4] = sub_100686B5C(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10068AE70(uint64_t a1, uint64_t a2)
{
  sub_10068D354(a1, a2);

  return sub_10001F63C(a1, a2);
}

uint64_t (*sub_10068AEB8(uint64_t *a1))()
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
  *(v2 + 32) = sub_100686E84(v2);
  return sub_1000C2700;
}

double sub_10068AF28()
{
  swift_beginAccess();

  return result;
}

double sub_10068AF70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10068B034(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_10000827C(*v4, v4[1]);
  return v5;
}

uint64_t sub_10068B08C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_10068B14C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100690838(&qword_1009912D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007B1D48);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_10068B1F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10068B248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10068B2B4(uint64_t *a1, uint64_t a2))()
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
  return sub_1000C2700;
}

uint64_t sub_10068B350(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

uint64_t sub_10068B50C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_100690838(&qword_1009912A8, a2, type metadata accessor for AdvertsSearchResultContentView, &unk_1007DCADC);
  result = sub_100690838(&unk_1009912B0, v3, type metadata accessor for AdvertsSearchResultContentView, &unk_1007DCA0C);
  *(a1 + 32) = result;
  return result;
}

void sub_10068B590(unint64_t a1)
{
  v4 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v170 - v5;
  v7 = type metadata accessor for LockupMediaLayout.DisplayType();
  v198 = *(v7 - 8);
  __chkstk_darwin(v7);
  v193 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v170 - v10;
  __chkstk_darwin(v12);
  v14 = &v170 - v13;
  v15 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v170 - v16;
  v18 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v195 = *(v18 - 8);
  v196 = v18;
  __chkstk_darwin(v18);
  v194 = &v170 - v19;
  v20 = type metadata accessor for SmallSearchLockupLayout();
  v211 = *(v20 - 8);
  v212 = v20;
  __chkstk_darwin(v20);
  v210 = &v170 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  *&v215 = *(v216 - 1);
  __chkstk_darwin(v216);
  v200 = &v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LabelPlaceholderCompatibility();
  v207 = *(v23 - 8);
  v208 = v23;
  __chkstk_darwin(v23);
  v206 = &v170 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for OfferButtonMetrics();
  v220 = *(v25 - 1);
  v221 = v25;
  __chkstk_darwin(v25);
  v27 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v219 = &v170 - v29;
  v223 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v218 = *(v223 - 8);
  __chkstk_darwin(v223);
  v209 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v225 = &v170 - v32;
  v33 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v33 - 8);
  v199 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v222 = &v170 - v36;
  v37 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v37 - 8);
  v39 = &v170 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PageGrid();
  v204 = *(v40 - 8);
  v205 = v40;
  __chkstk_darwin(v40);
  v217 = &v170 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ScreenshotsDisplayStyle();
  v213 = *(v42 - 8);
  v214 = v42;
  __chkstk_darwin(v42);
  v224 = &v170 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertsSearchResult();
  sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v262[0])
  {
    return;
  }

  v201 = v262[0];
  v44 = AdvertsSearchResult.lockups.getter();
  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_51:

    return;
  }

  v112 = v44;
  v113 = _CocoaArrayWrapper.endIndex.getter();
  v44 = v112;
  if (!v113)
  {
    goto LABEL_51;
  }

LABEL_4:
  v171 = v6;
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    v176 = v17;

    MixedMediaLockup.screenshotsDisplayStyle.getter();
    ItemLayoutContext.parentShelfLayoutContext.getter();
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    PageGrid.init(from:breakpointOverrides:)();
    PageGrid.componentMeasuringSize(spanning:)();
    v1 = v46;
    v2 = v47;

    v48 = Lockup.title.getter();
    v182 = v49;
    v183 = v48;
    v50 = Lockup.subtitle.getter();
    v184 = v51;
    v185 = v50;
    v52 = Lockup.searchAdOpportunity.getter();
    v202 = v45;

    if (v52)
    {
      v53 = SearchAdOpportunity.searchAd.getter();

      v54 = v215;
      if (v53)
      {
        v55 = SearchAd.advertisingText.getter();
        v186 = v56;
        v187 = v55;
      }

      else
      {
        v186 = 0;
        v187 = 0;
      }

      v57 = v216;
    }

    else
    {
      v186 = 0;
      v187 = 0;
      v57 = v216;
      v54 = v215;
    }

    v203 = MixedMediaLockup.metadataRibbonItems.getter();
    (*(v54 + 56))(v222, 1, 1, v57);
    v58 = MixedMediaLockup.searchTagRibbonItems.getter();
    v174 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v6 = v262[5];
    if (qword_10096CF70 != -1)
    {
      swift_once();
    }

    v59 = v223;
    v60 = sub_1000056A8(v223, qword_1009CDC00);
    v61 = v218 + 16;
    v188 = *(v218 + 16);
    v188(v225, v60, v59);
    v62 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v175 = v7;
    v191 = a1;
    v172 = v11;
    v173 = v14;
    v197 = v58;
    v189 = v61;
    if ((v62 & 1) == 0)
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v63 = qword_100991028;
      goto LABEL_24;
    }

    if (qword_10096ECB8 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v63 = qword_100991010;
LABEL_24:
      v64 = v221;
      v65 = sub_1000056A8(v221, v63);
      v66 = v220;
      (*(v220 + 16))(v27, v65, v64);
      (*(v66 + 32))(v219, v27, v64);
      v67 = [v6 preferredContentSizeCategory];
      UIContentSizeCategory.isAccessibilityCategory.getter();

      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
      SmallSearchLockupLayout.Metrics.artworkSize.getter();
      v181 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      v190 = LayoutViewPlaceholder.init(representing:)();
      v68 = objc_opt_self();
      v179 = v68;
      v69 = [v68 preferredFontForTextStyle:UIFontTextStyleBody];
      v192 = v6;
      v70 = type metadata accessor for Feature();
      v262[3] = v70;
      v71 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v262[4] = v71;
      v178 = v71;
      v72 = sub_1000056E0(v262);
      v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = *(v70 - 8);
      v75 = *(v74 + 104);
      v180 = v74 + 104;
      v177 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v75(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
      isFeatureEnabled(_:)();
      sub_100007000(v262);
      v76 = v206;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v77 = v208;
      v207 = *(v207 + 8);
      (v207)(v76, v208);
      v78 = [v68 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v261[3] = v70;
      v261[4] = v71;
      v79 = sub_1000056E0(v261);
      v75(v79, v73, v70);
      isFeatureEnabled(_:)();
      sub_100007000(v261);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v80 = v207;
      (v207)(v76, v77);
      v81 = [v179 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v260[3] = v70;
      v260[4] = v178;
      v82 = sub_1000056E0(v260);
      v75(v82, v177, v70);
      isFeatureEnabled(_:)();
      sub_100007000(v260);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v80(v76, v77);
      v83 = v203;
      LODWORD(v208) = sub_1000AE138() & (v83 != 0);
      if (v208 == 1)
      {
        v84 = v181;
        v85 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
        v86 = v192;
        v87 = TraitEnvironmentPlaceholder.init(traitCollection:)();
        v88 = v199;
        sub_100031660(v222, v199, &unk_1009912C0, &unk_1007B4130);
        v89 = v215;
        v90 = *(v215 + 48);
        v91 = v216;
        v92 = v90(v88, 1, v216);
        v93 = v188;
        if (v92 == 1)
        {
          v94 = v200;
          static MetadataRibbonViewLayout.Metrics.standard.getter();
          if (v90(v88, 1, v91) != 1)
          {
            sub_10002B894(v88, &unk_1009912C0, &unk_1007B4130);
          }
        }

        else
        {
          v94 = v200;
          (*(v89 + 32))(v200, v88, v91);
        }

        v98 = v87;
        sub_1000AD91C(v203, v94, v98, v1, v2);

        (*(v89 + 8))(v94, v91);
        v95 = v84;
        swift_allocObject();
        v96 = LayoutViewPlaceholder.init(measurements:)();
        v97 = v192;
      }

      else
      {
        v95 = v181;
        swift_allocObject();
        v96 = LayoutViewPlaceholder.init(representing:)();
        v97 = v192;
        v93 = v188;
      }

      v99 = v197;
      if ((sub_1000AE138() & (v99 != 0)) == 1)
      {
        sub_100046528(v99, v174 & 1, v1, v2);
        swift_allocObject();
        v100 = LayoutViewPlaceholder.init(measurements:)();
      }

      else
      {
        swift_allocObject();
        v100 = LayoutViewPlaceholder.init(representing:)();
      }

      v101 = v100;
      v93(v209, v225, v223);
      v259 = &protocol witness table for LayoutViewPlaceholder;
      v258 = v95;
      v11 = v190;
      v257 = v190;
      v256 = 0;
      *&v254[40] = 0u;
      v255 = 0u;
      sub_10002C0AC(v262, v254);
      sub_10002C0AC(v261, &v253);
      v252 = 0;
      v250 = 0u;
      v251 = 0u;
      v249 = 0;
      v247 = 0u;
      v248 = 0u;

      v102 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
      v246 = &protocol witness table for LayoutViewPlaceholder;
      v245 = v95;
      v244 = v102;
      v243 = 0;
      v241 = 0u;
      v242 = 0u;
      v240 = 0;
      v238 = 0u;
      v239 = 0u;
      v237 = 0;
      v235 = 0u;
      v236 = 0u;
      v234 = 0;
      v233 = 0u;
      *&v232[40] = 0u;
      sub_10002C0AC(v260, v232);
      v231 = &protocol witness table for LayoutViewPlaceholder;
      v230 = v95;
      v228 = &protocol witness table for LayoutViewPlaceholder;
      v229 = v96;
      v227 = v95;
      v226 = v101;
      v103 = v210;
      SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
      v104 = type metadata accessor for TraitEnvironmentPlaceholder();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v105 = swift_allocObject();
      v215 = xmmword_1007B0B70;
      *(v105 + 16) = xmmword_1007B0B70;
      *(v105 + 32) = v97;
      v106 = v97;
      v216 = v104;
      v107 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
      sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
      v27 = v212;
      dispatch thunk of Measurable.measurements(fitting:in:)();

      (*(v211 + 8))(v103, v27);
      sub_100007000(v260);
      sub_100007000(v261);
      sub_100007000(v262);
      (*(v220 + 8))(v219, v221);
      (*(v218 + 8))(v225, v223);
      sub_10002B894(v222, &unk_1009912C0, &unk_1007B4130);
      v108 = MixedMediaLockup.screenshots.getter();
      if (v108 >> 62)
      {
        v39 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v39 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = MixedMediaLockup.alignedRegionArtwork.getter();
      if (a1)
      {
      }

      v6 = MixedMediaLockup.alignedRegionVideo.getter();
      if (v6)
      {
      }

      v109 = MixedMediaLockup.trailers.getter();
      if (v109 >> 62)
      {
        v114 = v109;
        v115 = _CocoaArrayWrapper.endIndex.getter();
        v109 = v114;
        if (!v115)
        {
LABEL_55:

          v111 = a1 | v39;
          goto LABEL_56;
        }
      }

      else if (!*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v109 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v44 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_45:

  v110 = Trailers.videos.getter();

  if (v110 >> 62)
  {
    v111 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v111 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 | v39)
  {
    if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
    {
LABEL_64:

      (*(v204 + 8))(v217, v205);
      (*(v213 + 8))(v224, v214);
      return;
    }
  }

  else
  {
LABEL_56:
    if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0 || !(v111 | v6))
    {
      goto LABEL_64;
    }
  }

  v116 = v194;
  static StandardSearchResultContentViewMetrics.bottomMargin.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v117 = v262[0];
  v118 = swift_allocObject();
  *(v118 + 16) = v215;
  *(v118 + 32) = v117;
  v119 = v117;
  v120 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000320F0();
  v121 = v196;
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v195 + 8))(v116, v121);
  v122 = MixedMediaLockup.alignedRegionArtwork.getter();
  v123 = MixedMediaLockup.alignedRegionVideo.getter();
  v124 = MixedMediaLockup.screenshots.getter();
  if (v124 >> 62)
  {
    v127 = v124;
    v128 = _CocoaArrayWrapper.endIndex.getter();
    v124 = v127;
    v125 = v176;
    if (v128)
    {
      goto LABEL_60;
    }

LABEL_71:

    v126 = 0;
    goto LABEL_72;
  }

  v125 = v176;
  if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v124 & 0xC000000000000001) != 0)
  {
    v126 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v126 = *(v124 + 32);
  }

LABEL_72:
  v129 = MixedMediaLockup.trailers.getter();
  if (v129 >> 62)
  {
    v133 = v129;
    v130 = _CocoaArrayWrapper.endIndex.getter();
    v129 = v133;
  }

  else
  {
    v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v225 = v122;
  v222 = v123;
  v223 = v126;
  if (v130)
  {
    if ((v129 & 0xC000000000000001) != 0)
    {
      v221 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_109;
      }

      v221 = *(v129 + 32);
    }
  }

  else
  {

    v221 = 0;
  }

  v131 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v123 = v262[0];
  sub_1006C9F8C(v125);

  v11 = MixedMediaLockup.alignedRegionArtwork.getter();
  v122 = MixedMediaLockup.alignedRegionVideo.getter();
  v132 = MixedMediaLockup.screenshots.getter();
  if (v132 >> 62)
  {
    v134 = v132;
    v135 = _CocoaArrayWrapper.endIndex.getter();
    v132 = v134;
    if (v135)
    {
LABEL_82:
      if ((v132 & 0xC000000000000001) == 0)
      {
        if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v132 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v136 = MixedMediaLockup.trailers.getter();
  if (v136 >> 62)
  {
    v138 = v136;
    v139 = _CocoaArrayWrapper.endIndex.getter();
    v136 = v138;
    if (v139)
    {
LABEL_91:
      if ((v136 & 0xC000000000000001) == 0)
      {
        if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v137 = *(v136 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v220 = _CocoaArrayWrapper.endIndex.getter();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v142 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_94;
    }
  }

  else if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v137 = 0;
LABEL_97:
  if ((ScreenshotsDisplayStyle.shouldShowScreenshots.getter() & 1) == 0)
  {

    v143 = v198;
    v144 = v173;
    (*(v198 + 104))(v173, enum case for LockupMediaLayout.DisplayType.none(_:), v175);
LABEL_136:
    type metadata accessor for LockupMediaView(0);
    v167 = sub_100079F24();
    swift_getObjectType();
    v168 = v224;
    v169 = v176;
    sub_1005B8730(v225, v222, v223, v221, v176, v144, v167, v224, v1, v2);

    swift_unknownObjectRelease();

    (*(v143 + 8))(v144, v175);
    sub_10002B894(v169, &unk_1009732A0, &unk_1007B4FE0);
    (*(v204 + 8))(v217, v205);
    (*(v213 + 8))(v168, v214);
    return;
  }

  if (v122 | v11)
  {
    v145 = v172;
    AspectRatio.init(_:_:)();

    v143 = v198;
    v146 = v175;
    (*(v198 + 104))(v145, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v175);
    v144 = v173;
    (*(v143 + 32))(v173, v145, v146);
    goto LABEL_136;
  }

  v141 = sub_1001B9B24(a1, v137, 0, 1, v140);
  v122 = v141;
  v123 = (v141 >> 62);
  if (v141 >> 62)
  {
    goto LABEL_112;
  }

  v220 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v142 = Screenshots.mediaPlatform.getter();
LABEL_114:
  v147 = sub_1001B9E6C(v142);

  LODWORD(v218) = v147;
  if (a1)
  {
    v148 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v148 = 0;
  }

  v150 = v213;
  v149 = v214;
  v151 = v171;
  (*(v213 + 16))(v171, v224, v214);
  (*(v150 + 56))(v151, 0, 1, v149);
  v152 = sub_1001BA394(v148, v151);

  sub_10002B894(v151, &unk_100973C90, qword_1007B55A0);
  if (v123)
  {
    v153 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v153 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = v193;
  if (!v153)
  {

    goto LABEL_127;
  }

  if ((v122 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_124:

    v155 = dispatch thunk of Artwork.isLandscape.getter();

    if (v155)
    {

      v143 = v198;
      v156 = v172;
      v157 = v175;
      (*(v198 + 104))(v172, enum case for LockupMediaLayout.DisplayType.landscape(_:), v175);
LABEL_135:
      v144 = v173;
      (*(v143 + 32))(v173, v156, v157);
      goto LABEL_136;
    }

LABEL_127:
    v158 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v159 = v198;
    v157 = v175;
    v219 = *(v198 + 104);
    (v219)(v154, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v175);
    v160 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v216 = *(v159 + 8);
    (v216)(v154, v157);
    if (((v220 >= v160) & v152) != 0 || (v158 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v219)(v154, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v157), v161 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v162 = v216, (v216)(v154, v157), ((v220 >= v161) & v218) != 0) || (v158 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v219)(v154, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v157), v163 = LockupMediaLayout.DisplayType.numberOfViews.getter(), v162(v154, v157), v220 >= v163))
    {
    }

    else
    {
      v158 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v219)(v154, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v157);
      v164 = LockupMediaLayout.DisplayType.numberOfViews.getter();

      v162(v154, v157);
      if (v220 != v164)
      {
        v165 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v156 = v172;
        v166 = v172;
LABEL_134:
        (v219)(v166, v165, v157);
        v143 = v198;
        goto LABEL_135;
      }
    }

    v156 = v172;
    v166 = v172;
    v165 = v158;
    goto LABEL_134;
  }

  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_124;
  }

  __break(1u);
}

id sub_10068D354(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v9 = *(v8 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
  if (v9)
  {
    [v9 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return [*(v8 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:64];
}

void sub_10068D430()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_100690838(&qword_100973D78, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
    sub_10003D614(v29);
    v10 = *&v9[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_100988CC0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_100690838(&qword_100992450, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    AnyHashable.init<A>(_:)();
    ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

    sub_10003D614(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v31, v22);
        type metadata accessor for ArtworkView();
        sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v32, v25);

  v26 = *(v15 + v23);
  type metadata accessor for ArtworkView();
  sub_100690838(&qword_100970E80, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10068D860(void (**a1)(uint64_t, uint64_t, __n128), uint64_t a2)
{
  v255 = a2;
  v348 = type metadata accessor for AppPlatform();
  v3 = *(v348 - 8);
  __chkstk_darwin(v348);
  v302 = &v245 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v320 = &v245 - v6;
  __chkstk_darwin(v7);
  v319 = &v245 - v8;
  __chkstk_darwin(v9);
  v318 = &v245 - v10;
  v323 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v323);
  v322 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_100973C90, qword_1007B55A0);
  __chkstk_darwin(v12 - 8);
  v257 = &v245 - v13;
  v324 = type metadata accessor for AspectRatio();
  v357 = *(v324 - 8);
  __chkstk_darwin(v324);
  v283 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v284 = &v245 - v16;
  v281 = type metadata accessor for LockupMediaLayout.Metrics();
  v356 = *(v281 - 8);
  __chkstk_darwin(v281);
  v321 = &v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v18 - 8);
  v282 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v338 = &v245 - v21;
  v342 = type metadata accessor for LockupMediaLayout.DisplayType();
  v22 = *(v342 - 8);
  __chkstk_darwin(v342);
  v345 = (&v245 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v263 = &v245 - v25;
  __chkstk_darwin(v26);
  v312 = &v245 - v27;
  __chkstk_darwin(v28);
  v264 = &v245 - v29;
  __chkstk_darwin(v30);
  v350 = &v245 - v31;
  v291 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v355 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = &v245 - v32;
  v289 = type metadata accessor for SmallSearchLockupLayout();
  v354 = *(v289 - 8);
  __chkstk_darwin(v289);
  v288 = &v245 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v34 = *(v304 - 8);
  __chkstk_darwin(v304);
  v266 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = type metadata accessor for LabelPlaceholderCompatibility();
  v353 = *(v315 - 8);
  __chkstk_darwin(v315);
  v287 = &v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = type metadata accessor for OfferButtonMetrics();
  v37 = *(v314 - 8);
  __chkstk_darwin(v314);
  v286 = &v245 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v313 = &v245 - v40;
  v339 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v41 = *(v339 - 8);
  __chkstk_darwin(v339);
  v285 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v347 = &v245 - v44;
  v45 = sub_10002849C(&unk_1009912C0, &unk_1007B4130);
  __chkstk_darwin(v45 - 8);
  v265 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v325 = &v245 - v48;
  v297 = type metadata accessor for ScreenshotsDisplayStyle();
  v49 = *(v297 - 8);
  __chkstk_darwin(v297);
  v303 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v51 - 8);
  v52 = type metadata accessor for PageGrid();
  v253 = *(v52 - 8);
  v254 = v52;
  __chkstk_darwin(v52);
  v258 = &v245 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdvertsSearchResult();
  sub_100690838(&qword_10096FA98, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (!v395[0])
  {
    return result;
  }

  v352 = v3;
  v256 = v395[0];
  v399 = _swiftEmptyArrayStorage;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.columnWidth.getter();
  v56 = v55;
  v351 = a1;
  sub_10068B590(a1);
  v58 = v57;
  v59 = AdvertsSearchResult.lockups.getter();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v292 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v292)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v292 = _CocoaArrayWrapper.endIndex.getter();
  if (v292)
  {
LABEL_5:
    v309 = v41 + 2;
    v279 = (v37 + 16);
    v280 = (v34 + 56);
    v278 = (v37 + 32);
    v277 = UIFontTextStyleBody;
    v276 = (v353 + 8);
    v308 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v252 = (v34 + 32);
    v260 = (v34 + 8);
    v261 = (v34 + 48);
    v274 = (v354 + 1);
    v275 = UIFontTextStyleFootnote;
    v272 = (v41 + 1);
    v273 = (v37 + 8);
    v271 = v355 + 1;
    v262 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v295 = (v22 + 104);
    v259 = (v22 + 32);
    v250 = (v49 + 56);
    v251 = (v49 + 16);
    v346 = (v22 + 8);
    v344 = (v22 + 16);
    v268 = (v357 + 8);
    v269 = (v357 + 56);
    v267 = (v356 + 1);
    v333 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v299 = bottom;
    v307 = xmmword_1007B0B70;
    v354 = (v352 + 88);
    v334 = (v352 + 8);
    v337 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v296 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v249 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v247 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v246 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v353) = enum case for AppPlatform.watch(_:);
    v340 = v60 & 0xC000000000000001;
    v293 = v60 + 32;
    v294 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v303;
    v34 = v304;
    v62 = v297;
    v317 = v56;
    v316 = v58;
    v311 = v60;
    v37 = v292;
    v270 = a1;
    v248 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v340)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v294 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v293 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = Lockup.icon.getter();
      v358 = v41;
      if (v64)
      {
        if (qword_10096EE80 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for SmallLockupLayout.Metrics();
        sub_1000056A8(v65, qword_1009D3798);
        SmallLockupLayout.Metrics.artworkSize.getter();
        Artwork.config(_:mode:prefersLayeredImage:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v399 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v399 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a1 = v270;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v66 = MixedMediaLockup.metadataRibbonItems.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v67 = v395[0];
      v68 = sub_10032AAE8(v66, v395[0]);

      v69 = v68;
      v41 = v358;
      sub_100394974(v69, v70);
      MixedMediaLockup.screenshotsDisplayStyle.getter();
      v71 = MixedMediaLockup.screenshots.getter();
      if (v71 >> 62)
      {
        v137 = _CocoaArrayWrapper.endIndex.getter();

        if (!v137)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v72)
        {
          goto LABEL_6;
        }
      }

      if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
      {
        v73 = v34;
        v74 = Lockup.title.getter();
        v76 = v75;
        v77 = Lockup.subtitle.getter();
        v79 = v78;
        v80 = Lockup.searchAdOpportunity.getter();

        v336 = v77;
        v335 = v79;
        v332 = v76;
        v329 = v74;
        if (v80 && (v81 = SearchAdOpportunity.searchAd.getter(), , v81))
        {
          v343 = SearchAd.advertisingText.getter();
          v341 = v82;
        }

        else
        {
          v343 = 0;
          v341 = 0;
        }

        v357 = MixedMediaLockup.metadataRibbonItems.getter();
        v356 = MixedMediaLockup.searchTagRibbonItems.getter();
        v327 = MixedMediaLockup.shouldEvenlyDistributeRibbonItems.getter();
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v83 = v398;
        (*v280)(v325, 1, 1, v73);
        if (qword_10096CF70 != -1)
        {
          swift_once();
        }

        v84 = v339;
        v85 = sub_1000056A8(v339, qword_1009CDC00);
        v349 = *v309;
        (v349)(v347, v85, v84);
        v86 = UITraitCollection.prefersAccessibilityLayouts.getter();
        v306 = v49;
        if (v86)
        {
          v87 = qword_100991010;
          if (qword_10096ECB8 != -1)
          {
            swift_once();
            v87 = qword_100991010;
          }
        }

        else
        {
          v87 = qword_100991028;
          if (qword_10096ECC0 != -1)
          {
            swift_once();
            v87 = qword_100991028;
          }
        }

        v88 = v314;
        v89 = sub_1000056A8(v314, v87);
        v90 = v286;
        (*v279)(v286, v89, v88);
        (*v278)(v313, v90, v88);
        v91 = [v83 preferredContentSizeCategory];
        UIContentSizeCategory.isAccessibilityCategory.getter();

        OfferButtonMetrics.minimumSize.getter();
        OfferButtonMetrics.estimatedHeight.getter();
        SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
        SmallSearchLockupLayout.Metrics.artworkSize.getter();
        v331 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();
        v352 = LayoutViewPlaceholder.init(representing:)();
        v92 = objc_opt_self();
        v330 = v83;
        v93 = v92;
        v328 = v92;
        v94 = [v92 preferredFontForTextStyle:v277];
        v95 = type metadata accessor for Feature();
        v396 = v95;
        v355 = sub_100690838(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v397 = v355;
        v96 = sub_1000056E0(v395);
        v97 = *(*(v95 - 8) + 104);
        v98 = v308;
        v97(v96, v308, v95);
        isFeatureEnabled(_:)();
        sub_100007000(v395);
        v99 = v287;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v332 = *v276;
        v332(v99, v315);
        v100 = v275;
        v101 = [v93 preferredFontForTextStyle:v275];
        v394[3] = v95;
        v394[4] = v355;
        v102 = sub_1000056E0(v394);
        v97(v102, v98, v95);
        isFeatureEnabled(_:)();
        sub_100007000(v394);
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v103 = v315;
        v104 = v332;
        v332(v99, v315);
        v105 = [v328 preferredFontForTextStyle:v100];
        v393[3] = v95;
        v393[4] = v355;
        v106 = sub_1000056E0(v393);
        v97(v106, v308, v95);
        isFeatureEnabled(_:)();
        sub_100007000(v393);
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v104(v99, v103);
        v107 = v357;
        LODWORD(v355) = sub_1000AE138() & (v107 != 0);
        if (v355 == 1)
        {
          v108 = v331;
          v109 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
          v110 = v330;
          v111 = v330;
          v112 = TraitEnvironmentPlaceholder.init(traitCollection:)();
          v113 = v265;
          sub_100031660(v325, v265, &unk_1009912C0, &unk_1007B4130);
          v114 = *v261;
          v115 = v304;
          if ((*v261)(v113, 1, v304) == 1)
          {
            v116 = v266;
            static MetadataRibbonViewLayout.Metrics.standard.getter();
            if (v114(v113, 1, v115) != 1)
            {
              sub_10002B894(v113, &unk_1009912C0, &unk_1007B4130);
            }
          }

          else
          {
            v116 = v266;
            (*v252)(v266, v113, v115);
          }

          v119 = v112;
          sub_1000AD91C(v357, v116, v119, v56, v58);

          (*v260)(v116, v115);
          v117 = v108;
          swift_allocObject();
          v118 = LayoutViewPlaceholder.init(measurements:)();
        }

        else
        {
          v117 = v331;
          swift_allocObject();
          v118 = LayoutViewPlaceholder.init(representing:)();
          v110 = v330;
        }

        v34 = v118;

        v120 = v356;
        if ((sub_1000AE138() & (v120 != 0)) == 1)
        {
          sub_100046528(v120, v327 & 1, v56, v58);
          swift_allocObject();
          v121 = LayoutViewPlaceholder.init(measurements:)();
        }

        else
        {
          swift_allocObject();
          v121 = LayoutViewPlaceholder.init(representing:)();
        }

        v122 = v121;
        (v349)(v285, v347, v339);
        v392 = &protocol witness table for LayoutViewPlaceholder;
        v391 = v117;
        v390 = v352;
        v389 = 0;
        *&v387[40] = 0u;
        v388 = 0u;
        sub_10002C0AC(v395, v387);
        sub_10002C0AC(v394, &v386);
        v385 = 0;
        v383 = 0u;
        v384 = 0u;
        v382 = 0;
        v380 = 0u;
        v381 = 0u;

        v123 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
        v379 = &protocol witness table for LayoutViewPlaceholder;
        v378 = v117;
        v377 = v123;
        v376 = 0;
        v374 = 0u;
        v375 = 0u;
        v373 = 0;
        v371 = 0u;
        v372 = 0u;
        v370 = 0;
        v368 = 0u;
        v369 = 0u;
        v367 = 0;
        v366 = 0u;
        *&v365[40] = 0u;
        sub_10002C0AC(v393, v365);
        v364 = &protocol witness table for LayoutViewPlaceholder;
        v363 = v117;
        v362 = v34;
        v361 = &protocol witness table for LayoutViewPlaceholder;
        v360 = v117;
        v359 = v122;
        v124 = v288;
        SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
        v355 = type metadata accessor for TraitEnvironmentPlaceholder();
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v125 = swift_allocObject();
        *(v125 + 16) = v307;
        *(v125 + 32) = v110;
        v126 = v110;
        v127 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        sub_100690838(&unk_100972E60, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
        v128 = v289;
        dispatch thunk of Measurable.measurements(fitting:in:)();

        (*v274)(v124, v128);
        sub_100007000(v393);
        sub_100007000(v394);
        sub_100007000(v395);
        (*v273)(v313, v314);
        (*v272)(v347, v339);
        sub_10002B894(v325, &unk_1009912C0, &unk_1007B4130);
        v129 = v290;
        static StandardSearchResultContentViewMetrics.bottomMargin.getter();
        v130 = swift_allocObject();
        *(v130 + 16) = v307;
        *(v130 + 32) = v126;
        v131 = v126;
        v132 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
        sub_1000320F0();
        v49 = v291;
        dispatch thunk of AnyDimension.rawValue(in:)();

        (*v271)(v129, v49);
        v41 = MixedMediaLockup.alignedRegionArtwork.getter();
        v349 = MixedMediaLockup.alignedRegionVideo.getter();
        v133 = MixedMediaLockup.screenshots.getter();
        if (v133 >> 62)
        {
          v138 = v133;
          v134 = _CocoaArrayWrapper.endIndex.getter();
          v133 = v138;
        }

        else
        {
          v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v342;
        a1 = v345;
        v135 = v350;
        v22 = v303;
        if (v134)
        {
          if ((v133 & 0xC000000000000001) != 0)
          {
            v355 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v355 = *(v133 + 32);
          }
        }

        else
        {

          v355 = 0;
        }

        v136 = MixedMediaLockup.trailers.getter();
        if (v136 >> 62)
        {
          v139 = v136;
          v140 = _CocoaArrayWrapper.endIndex.getter();
          v136 = v139;
          if (!v140)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v136 & 0xC000000000000001) != 0)
          {
            v356 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v356 = *(v136 + 32);
          }
        }

        else
        {
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_62:

          v356 = 0;
        }

        v141 = MixedMediaLockup.alignedRegionArtwork.getter();
        v34 = MixedMediaLockup.alignedRegionVideo.getter();
        v142 = MixedMediaLockup.screenshots.getter();
        if (v142 >> 62)
        {
          v144 = v142;
          v145 = _CocoaArrayWrapper.endIndex.getter();
          v142 = v144;
          v341 = v41;
          if (!v145)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v142 & 0xC000000000000001) != 0)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v41 = *(v142 + 32);
          }
        }

        else
        {
          v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v341 = v41;
          if (v143)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v146 = MixedMediaLockup.trailers.getter();
        if (v146 >> 62)
        {
          v148 = v146;
          v149 = _CocoaArrayWrapper.endIndex.getter();
          v146 = v148;
          if (!v149)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v146 & 0xC000000000000001) != 0)
          {
            v147 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v147 = *(v146 + 32);
          }
        }

        else
        {
          if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_78:

          v147 = 0;
        }

        if (ScreenshotsDisplayStyle.shouldShowScreenshots.getter())
        {
          if (!(v34 | v141))
          {
            v151 = sub_1001B9B24(v41, v147, 0, 1, v150);
            v152 = v151;
            v153 = v151 >> 62;
            if (v151 >> 62)
            {
              v357 = _CocoaArrayWrapper.endIndex.getter();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v154 = Screenshots.mediaPlatform.getter();
            }

            else
            {
              v357 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v154 = 0;
            }

            v156 = sub_1001B9E6C(v154);

            if (v41)
            {
              v157 = Screenshots.mediaPlatform.getter();
            }

            else
            {
              v157 = 0;
            }

            v158 = v257;
            v159 = v297;
            (*v251)(v257, v22, v297);
            (*v250)(v158, 0, 1, v159);
            v160 = sub_1001BA394(v157, v158);

            sub_10002B894(v158, &unk_100973C90, qword_1007B55A0);
            if (v153)
            {
              result = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              result = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v37 = v342;
            v34 = v263;
            a1 = v345;
            if (result)
            {
              if ((v152 & 0xC000000000000001) == 0)
              {
                if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_103:

              v161 = dispatch thunk of Artwork.isLandscape.getter();

              v34 = v263;
              if (v161)
              {

                v162 = v264;
                (*v295)(v264, v296, v37);
                v41 = v284;
                v22 = v303;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v343) = v156;
            v163 = v249;
            v352 = *v295;
            (v352)(v34, v249, v37);
            v164 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v165 = *v346;
            (*v346)(v34, v37);
            if (((v357 >= v164) & v160) != 0)
            {

              v162 = v264;
              (v352)(v264, v163, v37);
              v41 = v284;
              a1 = v345;
              v22 = v303;
              goto LABEL_116;
            }

            (v352)(v34, v248, v37);
            v166 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v167 = v165;
            v165(v34, v37);
            v22 = v303;
            if (((v357 >= v166) & v343) == 0)
            {
              v170 = v247;
              (v352)(v34, v247, v37);
              v171 = LockupMediaLayout.DisplayType.numberOfViews.getter();
              v167(v34, v37);
              if (v357 >= v171)
              {
              }

              else
              {
                v170 = v246;
                (v352)(v34, v246, v37);
                v172 = LockupMediaLayout.DisplayType.numberOfViews.getter();

                v167(v34, v37);
                if (v357 != v172)
                {
                  v162 = v264;
                  v168 = v264;
                  v169 = v262;
                  goto LABEL_115;
                }
              }

              v162 = v264;
              v168 = v264;
              v169 = v170;
              goto LABEL_115;
            }

            v162 = v264;
            v168 = v264;
            v169 = v248;
LABEL_115:
            (v352)(v168, v169, v37);
            v41 = v284;
            a1 = v345;
LABEL_116:
            v49 = v306;
            v135 = v350;
            (*v259)(v350, v162, v37);
LABEL_117:
            v173 = sub_100079F24();
            (*v269)(v338, 1, 1, v324);
            v305 = v173;
            v310 = [v173 traitCollection];
            v397 = &protocol witness table for CGFloat;
            v396 = &type metadata for CGFloat;
            v395[0] = 0x4021000000000000;
            sub_10002C0AC(v395, v394);
            v343 = *v344;
            v343(v312, v135, v37);
            if (v349 | v341)
            {
              goto LABEL_127;
            }

            v175 = sub_1001B9B24(v355, v356, 0, 1, v174);
            if (v175 >> 62)
            {
              v176 = v175;
              v177 = _CocoaArrayWrapper.endIndex.getter();
              v175 = v176;
              if (!v177)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v175 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_209;
                }
              }

              Artwork.size.getter();
              AspectRatio.init(_:_:)();
            }

            else
            {
              if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              AspectRatio.init(_:_:)();
            }

            sub_100031660(v338, v282, &unk_1009732A0, &unk_1007B4FE0);
            LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
            sub_100007000(v395);
            v178 = v283;
            LockupMediaLayout.Metrics.mediaAspectRatio.getter();
            AspectRatio.height(fromWidth:)();
            (*v268)(v178, v324);
            if (v349)
            {

              Video.preview.getter();
              v179 = Artwork.config(_:mode:prefersLayeredImage:)();
              v41 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
              v181 = v41[2];
              v180 = v41[3];
              if (v181 >= v180 >> 1)
              {
                v41 = sub_100033938((v180 > 1), v181 + 1, 1, v41);
              }

              (*v267)(v321, v281);
              sub_10002B894(v338, &unk_1009732A0, &unk_1007B4FE0);
              v41[2] = v181 + 1;
              v182 = &v41[2 * v181];
              v182[4] = v179;
              *(v182 + 40) = 0;
LABEL_132:
              v183 = v346;
              v184 = v41[2];
              if (v184)
              {
LABEL_133:
                v395[0] = _swiftEmptyArrayStorage;
                specialized ContiguousArray.reserveCapacity(_:)();
                v185 = 32;
                do
                {

                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v185 += 16;
                  --v184;
                }

                while (v184);
                swift_unknownObjectRelease();

                (*v346)(v350, v37);
                v187 = v395[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v183)(v135, v37);
              v187 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_100394974(v187, v186);
              v34 = v304;
              v62 = v297;
              v37 = v292;
              a1 = v270;
              v41 = v358;
              goto LABEL_7;
            }

            if (v341)
            {
              v188 = v49;

              v189 = Artwork.config(_:mode:prefersLayeredImage:)();
              v190 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
              v192 = *(v190 + 2);
              v191 = *(v190 + 3);
              if (v192 >= v191 >> 1)
              {
                v190 = sub_100033938((v191 > 1), v192 + 1, 1, v190);
              }

              v183 = v346;

              (*v267)(v321, v281);
              sub_10002B894(v338, &unk_1009732A0, &unk_1007B4FE0);
              *(v190 + 2) = v192 + 1;
              v193 = &v190[16 * v192];
              *(v193 + 4) = v189;
              v193[40] = 0;
              v49 = v188;
              v184 = *(v190 + 2);
              if (v184)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v194 = LockupMediaLayout.DisplayType.numberOfViews.getter();
            v196 = sub_1001B9B24(v355, v356, v194, 0, v195);
            static LockupMediaLayout.mediaSize(using:fitting:with:)();
            v336 = v197;
            v335 = v198;
            if (!(v196 >> 62))
            {
              result = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = _CocoaArrayWrapper.endIndex.getter();
            if (!result)
            {
LABEL_200:

              (*v267)(v321, v281);
              sub_10002B894(v338, &unk_1009732A0, &unk_1007B4FE0);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v332 = (v196 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v331 = v196;
            v330 = result;
            while (2)
            {
              if (v332)
              {
                v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v22 = *(v196 + 8 * v49 + 32);
              }

              v343(a1, v135, v37);
              v199 = (*v333)(a1, v37);
              if (v199 == v337)
              {
                (*v346)(a1, v37);
                LODWORD(v352) = 0;
                v200 = v355;
              }

              else
              {
                v200 = v355;
                if (v199 == v296)
                {
                  LODWORD(v352) = 0;
                }

                else
                {
                  v201 = dispatch thunk of Artwork.isLandscape.getter();
                  (*v346)(a1, v37);
                  LODWORD(v352) = v201;
                }
              }

              v357 = v22;
              if (v356)
              {
                v202 = Trailers.videos.getter();
                if (!(v202 >> 62))
                {
                  if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v200)
                  {
LABEL_186:
                    if (qword_10096EB60 != -1)
                    {
                      swift_once();
                    }

                    v226 = qword_10098F588;
                    v234 = 0;
                    v233 = 0;
                    v210 = 5.0;
                    v236 = 1;
                    v209 = 1.0;
                    v229 = left;
                    v230 = top;
                    v232 = right;
                    v231 = v299;
                    v237 = 1;
LABEL_189:
                    v240 = v322;
                    AspectRatio.init(_:_:)();

                    *v240 = v210;
                    *(v240 + 8) = v233;
                    *(v240 + 16) = v237 & 1;
                    *(v240 + 24) = v234;
                    *(v240 + 32) = v236 & 1;
                    *(v240 + 40) = v209;
                    *(v240 + 48) = v226;
                    *(v240 + 56) = v230;
                    *(v240 + 64) = v229;
                    *(v240 + 72) = v231;
                    *(v240 + 80) = v232;
                    CGSize.subtracting(insets:)();
                    v204 = Artwork.config(_:mode:prefersLayeredImage:)();
                    sub_1001BABC8(v240, v241);
                    v56 = v317;
                    v58 = v316;
                    v37 = v342;
                    a1 = v345;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_100033938(0, v41[2] + 1, 1, v41);
                    }

                    v135 = v350;
                    v34 = v41[2];
                    v242 = v41[3];
                    if (v34 >= v242 >> 1)
                    {
                      v41 = sub_100033938((v242 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    v41[2] = v34 + 1;
                    v243 = &v41[2 * v34];
                    v243[4] = v204;
                    *(v243 + 40) = v352 & 1;
                    v196 = v331;
                    if (v330 == v49)
                    {

                      (*v267)(v321, v281);
                      sub_10002B894(v338, &unk_1009732A0, &unk_1007B4FE0);
                      v22 = v303;
                      v49 = v306;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  Screenshots.mediaPlatform.getter();

                  v205 = v318;
                  MediaPlatform.appPlatform.getter();

                  v206 = *v354;
                  v207 = v348;
                  v208 = (*v354)(v205, v348);
                  v209 = 0.0;
                  v210 = 0.0;
                  if (v208 != v353)
                  {
                    (*v334)(v318, v207);
                    v210 = 5.0;
                  }

                  v329 = MediaPlatform.deviceCornerRadiusFactor.getter();
                  v326 = v211;
                  v212 = MediaPlatform.deviceBorderThickness.getter();
                  v214 = v213;

                  v215 = v319;
                  MediaPlatform.appPlatform.getter();
                  v216 = v348;

                  v217 = v206(v215, v216);
                  if (v217 != v353)
                  {
                    (*v334)(v319, v216);
                    v209 = 1.0;
                  }

                  v218 = v320;
                  MediaPlatform.appPlatform.getter();
                  v219 = v348;
                  v220 = v206(v218, v348);
                  v328 = v212;
                  v327 = v214;
                  if (v220 == v353)
                  {
                    if (qword_10096EB58 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_10098F580;
                  }

                  else
                  {
                    if (qword_10096EB60 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_10098F588;

                    (*v334)(v320, v219);
                  }

                  v222 = v302;
                  MediaPlatform.appPlatform.getter();
                  v223 = v206(v222, v219);
                  if (v223 == v353)
                  {
                    *&v224 = COERCE_DOUBLE(MediaPlatform.deviceBorderThickness.getter());
                    if (v225)
                    {
                      v226 = v221;
                      if (qword_10096EB48 != -1)
                      {
                        swift_once();
                      }

                      sub_1000056A8(v324, qword_1009D2FD0);
                      AspectRatio.verticalFraction.getter();
                      v228 = v227;

                      v229 = 15.0;
                      v230 = v228 * 15.0;
                      v231 = v228 * 15.0;
                      v232 = 15.0;
                      v233 = v329;
                      v234 = v328;
                      goto LABEL_183;
                    }

                    v235 = *&v224;

                    v230 = v235;
                    v229 = v235;
                    v231 = v235;
                    v232 = v235;
                  }

                  else
                  {

                    (*v334)(v222, v219);
                    v229 = left;
                    v230 = top;
                    v232 = right;
                    v231 = v299;
                  }

                  v233 = v329;
                  v234 = v328;
                  v226 = v221;
LABEL_183:
                  v236 = v327;
                  v237 = v326;
                  goto LABEL_189;
                }

                v238 = v202;
                v239 = _CocoaArrayWrapper.endIndex.getter();
                v202 = v238;
                if (!v239)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v202 & 0xC000000000000001) != 0)
                {
                  specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (!*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_204;
                  }
                }

                type metadata accessor for Artwork();
                Video.preview.getter();
                v203 = static Artwork.== infix(_:_:)();

                if (v203)
                {
                  v204 = Artwork.config(_:mode:prefersLayeredImage:)();

                  goto LABEL_190;
                }

                v200 = v355;
              }

              break;
            }

            if (!v200)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v155 = v264;
          AspectRatio.init(_:_:)();

          (*v295)(v155, v337, v37);
          (*v259)(v135, v155, v37);
        }

        else
        {

          (*v295)(v135, v262, v37);
        }

        v41 = v284;
        v49 = v306;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v244 = v399;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v244 = _swiftEmptyArrayStorage;
LABEL_213:
  ArtworkLoader.prefetchArtwork(using:)(v244);

  return (*(v253 + 8))(v258, v254);
}

id sub_1006906C4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100690838(&qword_100973190, 255, type metadata accessor for VideoView, &unk_1007D1B30);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v7 = v2;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v12 = v10;
    [v2 addSubview:v10];
  }

  sub_1001B8790(v11);

  return [v2 setNeedsLayout];
}

uint64_t sub_100690838(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_100690880()
{
  v1 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100690AC0()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v11;
    v13 = v9;
    v14 = v7;
    v15 = v5;
  }

  else
  {
    [v0 bounds];
  }

  CGRectGetWidth(*&v15);
  [v1 bounds];
  CGRectGetWidth(v26);
  [v1 bounds];
  CGRectGetWidth(v27);
  [v1 bounds];
  CGRectGetHeight(v28);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext];
  CustomLayoutView.sizeThatFits(_:)();
  v18 = v17;
  v20 = v19;
  [v1 bounds];
  v22 = (v21 - v18) * 0.5;
  [v1 safeAreaInsets];

  return [v16 setFrame:{v22, v23 + 16.0, v18, v20}];
}

char *sub_100690D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a3;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UIContentUnavailableConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResultsContextCardView.Style(0);
  __chkstk_darwin(v11);
  v14 = (v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext;
  v46 = v8;
  if (qword_10096E860 != -1)
  {
    v41 = v12;
    swift_once();
    v12 = v41;
    v8 = v46;
  }

  v16 = sub_1000056A8(v12, qword_1009D28C0);
  sub_1001C0900(v16, v14);
  v17 = objc_allocWithZone(type metadata accessor for SearchResultsContextCardView(0));
  *&v4[v15] = sub_10051F6F0(v14);
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_navigationBarMargins] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContextTopPadding] = 0x4030000000000000;
  sub_100005744(0, &qword_10097C140, UIContentUnavailableView_ptr);
  v18 = *(v8 + 16);
  v44 = v7;
  v45 = a1;
  v18(v10, a1, v7);
  *&v4[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason] = UIContentUnavailableView.init(configuration:)();
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v48, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext;
  v21 = *&v19[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_queryContext];
  v22 = v19;
  v23 = v21;
  v24 = SearchResultsContextCard.message.getter();
  v25 = SearchResultsContextCard.action.getter();
  if (v25)
  {
    v26 = v25;

    v27 = Action.title.getter();
    if (v28)
    {
      v29 = v27;
    }

    else
    {
      v29 = 0;
    }

    v30 = 0xE000000000000000;
    if (v28)
    {
      v30 = v28;
    }

    v42[1] = v30;
    v42[2] = v29;
    v31 = Action.artwork.getter();
    v43 = v20;
    if (v31)
    {
      v32 = v31;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v32, 0);
      }
    }

    sub_100005744(0, &qword_10097CD40, UIAction_ptr);
    v35 = swift_allocObject();
    v36 = v47;
    *(v35 + 16) = v47;
    *(v35 + 24) = v26;
    v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v34 = v36;
    v33 = v37;
    v20 = v43;
  }

  else
  {
    v33 = 0;
    v34 = v47;
  }

  sub_10051E714(v24, v33, v34);

  v38 = *&v22[OBJC_IVAR____TtC8AppStore32ContextualContentUnavailableView_emptyReason];
  v39 = v22;
  [v39 addSubview:v38];
  [v39 addSubview:*&v19[v20]];
  [v39 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];

  (*(v46 + 8))(v45, v44);
  return v39;
}

void sub_1006912A8(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_1005F3D78(0)}];
  v5 = &selRef_loadView;
  if (v4)
  {
    v6 = v4;
    [a1 finalFrameForViewController:v4];
  }

  else
  {
    v6 = [a1 containerView];
    [v6 bounds];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v114.origin.x = v11;
  v114.origin.y = v12;
  v114.size.width = v13;
  v114.size.height = v14;
  MidX = CGRectGetMidX(v114);
  v115.origin.x = v11;
  v115.origin.y = v12;
  v115.size.width = v13;
  v115.size.height = v14;
  MidY = CGRectGetMidY(v115);
  v116.origin.x = v11;
  v116.origin.y = v12;
  v116.size.width = v13;
  v116.size.height = v14;
  v104 = CGRectGetMidX(v116);
  v117.origin.x = v11;
  v117.origin.y = v12;
  v117.size.width = v13;
  v117.size.height = v14;
  v102 = CGRectGetMidY(v117);
  v15 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController];
  v16 = 0.0;
  if (v15)
  {
    v17 = [*&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController] view];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      [v17 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = [a1 containerView];
      [v19 convertRect:v28 toCoordinateSpace:{v21, v23, v25, v27}];
      v16 = v29;
      v18 = v30;

      MidY = MidY - v18;
      MidX = MidX - v16;
    }
  }

  else
  {
    v18 = 0.0;
  }

  v31 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCardView];
  v32 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter];
  v33 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 8];
  v34 = v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 16];
  if (v31 && (v2[OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCenter + 16] & 1) == 0)
  {
    if (v15)
    {
      v35 = v31;
      v36 = v15;
      v37 = [v36 view];
      if (!v37)
      {
        __break(1u);
        return;
      }

      v38 = v37;
      [v37 addSubview:v35];

      v5 = &selRef_loadView;
    }

    else
    {
      v39 = v31;
      v38 = [a1 containerView];
      [v38 addSubview:v39];
    }

    [v31 setCenter:{v32, v33}];
  }

  v40 = [a1 viewForKey:{UITransitionContextToViewKey, *&v102}];
  v41 = v40;
  if (!v15)
  {
    v44 = 0.25;
    if (!v40)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v42 = [v15 traitCollection];
  v43 = [v42 horizontalSizeClass];

  if (v43 == 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 0.25;
  }

  if (v41)
  {
LABEL_22:
    v45 = v41;
    v46 = [a1 v5[21]];
    [v46 addSubview:v45];

    if ((v31 == 0) | v34 & 1)
    {
      v118.origin.x = v11;
      v118.origin.y = v12;
      v118.size.width = v13;
      v118.size.height = v14;
      v47 = v44 * CGRectGetWidth(v118);
      v119.origin.x = v11;
      v119.origin.y = v12;
      v119.size.width = v13;
      v119.size.height = v14;
      v48 = CGRectGetHeight(v119) * 0.25;
      v120.origin.x = v11;
      v120.origin.y = v12;
      v120.size.width = v13;
      v120.size.height = v14;
      v121 = CGRectInset(v120, v47, v48);
      width = v121.size.width;
      height = v121.size.height;
      v121.origin.x = v11;
      v121.origin.y = v12;
      v121.size.width = v13;
      v121.size.height = v14;
      v51 = CGRectGetMidX(v121);
      v122.origin.x = v11;
      v122.origin.y = v12;
      v122.size.width = v13;
      v122.size.height = v14;
      v52 = CGRectGetMidY(v122);
      v53 = 0.0;
      v54 = 0.0;
    }

    else
    {
      [v31 bounds];
      width = v55;
      height = v56;
      v51 = v16 + v32;
      v52 = v18 + v33;
    }

    [v45 setBounds:{v53, v54, width, height}];
    [v45 setCenter:{v51, v52}];
    [v45 setNeedsLayout];
    [v45 layoutIfNeeded];
    [v45 setAlpha:0.0];
  }

LABEL_26:
  v57 = _swiftEmptyArrayStorage;
  v113 = _swiftEmptyArrayStorage;
  v58 = &StringUserDefaultsDebugSetting;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v59 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v60 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v59 timingParameters:0.0];

    v61 = swift_allocObject();
    *(v61 + 16) = v2;
    *(v61 + 24) = v31;
    *(v61 + 32) = 0;
    *(v61 + 40) = 0;
    *(v61 + 48) = v13;
    *(v61 + 56) = v14;
    *(v61 + 64) = MidX;
    *(v61 + 72) = MidY;
    *(v61 + 80) = v41;
    *(v61 + 88) = v104;
    *(v61 + 96) = v103;
    v111 = sub_1006922C0;
    v112 = v61;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100007A08;
    v110 = &unk_1008CDFC8;
    v62 = _Block_copy(&aBlock);
    v63 = v31;
    v64 = v41;
    v65 = v2;

    [v60 addAnimations:v62];
    _Block_release(v62);
    v66 = swift_allocObject();
    *(v66 + 16) = a1;
    *(v66 + 24) = v65;
    v111 = sub_1006922DC;
    v112 = v66;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v58 = &StringUserDefaultsDebugSetting;
    v109 = sub_10007FFE8;
    v110 = &unk_1008CE018;
    v67 = _Block_copy(&aBlock);
    v68 = v65;
    swift_unknownObjectRetain();

    [v60 addCompletion:v67];
    _Block_release(v67);
    v69 = v60;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v57 = v113;
  }

  if (v31)
  {
    v70 = v31;
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v70;
      v72 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_1000694DC;
      v112 = v71;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_100007A08;
      v110 = &unk_1008CE158;
      v73 = _Block_copy(&aBlock);
      v74 = v70;

      v75 = [v72 initWithDuration:v73 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
      _Block_release(v73);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      v111 = sub_1000694F0;
      v112 = v76;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_10007FFE8;
      v110 = &unk_1008CE1A8;
      v77 = _Block_copy(&aBlock);
      v78 = v74;

      [v75 v58[43].name];
      _Block_release(v77);

      v79 = v75;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v57 = v113;
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }
  }

  if (v41)
  {
LABEL_38:
    v80 = v41;
    if (UIAccessibilityIsReduceMotionEnabled())
    {
    }

    else
    {
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      v82 = objc_allocWithZone(UIViewPropertyAnimator);
      v111 = sub_10006038C;
      v112 = v81;
      aBlock = _NSConcreteStackBlock;
      v108 = 1107296256;
      v109 = sub_100007A08;
      v110 = &unk_1008CE108;
      v83 = _Block_copy(&aBlock);
      v84 = v80;

      v85 = [v82 initWithDuration:v83 controlPoint1:0.13 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
      _Block_release(v83);

      if (v85)
      {
        v86 = v85;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v57 = v113;
      }
    }
  }

LABEL_44:
  if (UIAccessibilityIsReduceMotionEnabled())
  {
    [v41 setBounds:{0.0, 0.0, v13, v14}];
    [v41 setCenter:{v104, v103}];
    v87 = swift_allocObject();
    *(v87 + 16) = v2;
    *(v87 + 24) = v41;
    v88 = objc_allocWithZone(UIViewPropertyAnimator);
    v111 = sub_1006922E0;
    v112 = v87;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100007A08;
    v110 = &unk_1008CE068;
    v89 = _Block_copy(&aBlock);
    v90 = v41;
    v91 = v2;

    v92 = [v88 initWithDuration:0 curve:v89 animations:0.3];
    _Block_release(v89);
    v93 = swift_allocObject();
    *(v93 + 16) = a1;
    *(v93 + 24) = v91;
    v111 = sub_100692318;
    v112 = v93;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_10007FFE8;
    v110 = &unk_1008CE0B8;
    v94 = _Block_copy(&aBlock);
    v95 = v91;
    swift_unknownObjectRetain();

    [v92 v58[43].name];
    _Block_release(v94);
    v96 = v92;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v57 = v113;
  }

  if (v57 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v98 = 0;
    while (1)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v98 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v99 = *(v57 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 startAnimation];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

LABEL_61:
}

id sub_100691FE8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_1005F3D78(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  [a11 setBounds:{a1, a2, a3, a4}];

  return [a11 setCenter:{a7, a8}];
}

void sub_1006920D4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == 1)
      {
        v10 = *(v7 - 2);

        v10(1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
  }
}

void sub_1006921DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionPageOpenAnimation_fromCollectionViewController);
}

id sub_10069221C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppPromotionPageOpenAnimation();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100692330()
{
  result = qword_100991360;
  if (!qword_100991360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991360);
  }

  return result;
}

uint64_t sub_100692384()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LinkableTextCollectionViewCellLayout.Metrics();
  sub_100005644(v4, qword_1009D3398);
  sub_1000056A8(v4, qword_1009D3398);
  if (qword_10096E208 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1598);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = type metadata accessor for StaticDimension();
  v10[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v9);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  return LinkableTextCollectionViewCellLayout.Metrics.init(textTopSpace:)();
}

id sub_1006926A8()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_100288418(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10002B894(v4, &unk_100993020, &qword_1007B46A8);
    [*&v1[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
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

uint64_t sub_10069293C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LinkableTextCollectionViewCellLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableTextCollectionViewCellLayout();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v8);
  if (qword_10096ED28 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v2, qword_1009D3398);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel];
  v16[4] = type metadata accessor for DynamicTypeLinkedLabel(0);
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v12;
  v13 = v12;
  LinkableTextCollectionViewCellLayout.init(metrics:textLabel:)();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_100692CC8();
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell(uint64_t a1)
{
  result = qword_100991398;
  if (!qword_100991398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100692CC8()
{
  result = qword_1009913A8;
  if (!qword_1009913A8)
  {
    type metadata accessor for LinkableTextCollectionViewCellLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009913A8);
  }

  return result;
}

char *sub_100692D20()
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
  v13 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_10096E208 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v9, qword_1009D1598);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v1[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel] = sub_1002F5B8C(v12, 0, 0, 1);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC8AppStore30LinkableTextCollectionViewCell_bodyLabel];
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
  sub_100028BB8();
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

double sub_100693208()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1006932E8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1006932E8(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v68 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100984990, qword_1007DF5C0);
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v54 - v5;
  v60 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v63 = &v54 - v8;
  v9 = type metadata accessor for TextAppearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  __chkstk_darwin(v25);
  v56 = &v54 - v26;
  v62 = type metadata accessor for LabelPlaceholder();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  v28 = ShelfLayoutContext.traitCollection.getter();
  sub_1000367E8();
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  sub_1000056A8(v29, qword_1009D17A8);
  v30 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  TextAppearance.init()();
  v57 = v30;
  TextAppearance.withFont(_:)();
  v31 = *(v10 + 8);
  v31(v12, v9);
  TextAppearance.withTextAlignment(_:)();
  v31(v15, v9);
  TextAppearance.withLineBreakMode(_:)();
  v31(v18, v9);
  TextAppearance.withLineSpacing(_:)();
  v31(v21, v9);
  TextAppearance.withNumberOfLines(_:)();
  v31(v24, v9);
  LabelPlaceholder.Options.init(rawValue:)();
  v32 = v55;
  LabelPlaceholder.init(_:with:where:)();
  v35 = v28;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v36 = v58;
    sub_1006EA400(v28, v58);
  }

  else
  {
    v36 = v58;
    sub_1006EA738(v33, v34);
  }

  (*(v59 + 32))(v63, v36, v60);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v37 = v62;
  v71[3] = v62;
  v71[4] = &protocol witness table for LabelPlaceholder;
  v38 = sub_1000056E0(v71);
  v39 = v61;
  (*(v61 + 16))(v38, v32, v37);
  type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&v72 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_100693AB0(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout, &protocol conformance descriptor for RibbonBarItemCellLayout);
  v40 = v64;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v41 = v66;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v43 = v42;

  (*(v65 + 8))(v40, v41);
  (*(v39 + 8))(v32, v37);
  static RibbonBarItemCellLayout.topPadding.getter();
  *&v72 = v44;
  ShelfLayoutContext.traitEnvironment.getter();
  v45 = v68;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v47 = v46;
  swift_unknownObjectRelease();
  v48 = v70;
  v49 = *(v69 + 8);
  v49(v45, v70);
  static RibbonBarItemCellLayout.bottomPadding.getter();
  *&v72 = v50;
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v52 = v51;
  swift_unknownObjectRelease();
  v49(v45, v48);
  return v43 + v47 + v52;
}

uint64_t sub_100693AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100693AFC()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v41 - v1;
  v55 = type metadata accessor for PageGrid.HorizontalMargins();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  __chkstk_darwin(v11);
  v54 = &v41 - v12;
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v48 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v56 = v18 + v17;
  v60 = 0x3FF0000000000000;
  sub_10005E808();
  v19 = v15;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4030000000000000;
  v60 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v25 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v52 = v26;
  v51 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = v55;
  v26(v4, enum case for PageGrid.HorizontalMargins.absolute(_:), v55);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v60) = 0;
  v29 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  v50 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v53 = v19;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v60 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  v30 = v10;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v32 = v52;
  v52(v4, v25, v27);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v57;
  top = UIEdgeInsetsZero.top;
  v47 = left;
  v49 = v30;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v34 = 2 * v33;
  v59 = 0x4000000000000000;
  v60 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v60 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = vdupq_n_s64(0x4041000000000000uLL);
  v42 = v4;
  *v4 = v45;
  v35 = v51;
  v36 = v55;
  v37 = v32;
  v32(v4, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v29;
  v39 = v42;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v44 = v34 + v57;
  v60 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v39 = v45;
  v37(v39, v35, v36);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v60) = 0;
  v43 = v38;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v59 = 0x4000000000000000;
  v60 = 0x4004000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v60 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = vdupq_n_s64(0x404A000000000000uLL);
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v60 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v59 = 0x4034000000000000;
  v60 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v39 = v45;
  v52(v39, v51, v55);
  LOBYTE(v60) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D33C0 = v48;
  return result;
}

double ShelfHeaderLayout.measure(toFit:with:)(void *a1, double a2, double a3)
{
  v4 = [a1 preferredContentSizeCategory];
  v5 = static UIContentSizeCategory.> infix(_:_:)();

  v11 = type metadata accessor for Margins();
  v12 = &protocol witness table for Margins;
  sub_1000056E0(&v10);
  if (v5)
  {
    v6 = sub_100697B60;
  }

  else
  {
    v6 = sub_100696044;
  }

  sub_100695D48(a1, sub_1002D3798, v6);
  sub_100005A38(&v10, v13);
  sub_10002A400(v13, v13[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v8 = v7;
  sub_100007000(v13);
  return v8;
}

uint64_t ShelfHeaderLayout.place(at:with:)(void *a1, double a2)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = static UIContentSizeCategory.> infix(_:_:)();

  v8 = type metadata accessor for Margins();
  v9 = &protocol witness table for Margins;
  sub_1000056E0(&v7);
  if (v4)
  {
    v5 = sub_100697B60;
  }

  else
  {
    v5 = sub_100696044;
  }

  sub_100695D48(a1, sub_1002D3798, v5);
  sub_100005A38(&v7, v10);
  sub_10002A400(v10, v10[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v10);
}

double ShelfHeaderLayout.init(metrics:separatorView:eyebrowButton:eyebrowImage:titleLabel:titleImage:subtitleLabel:accessoryView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v56 = a1;
  sub_100698C2C(a1, a9, type metadata accessor for ShelfHeaderLayout.Metrics);
  v55 = a2;
  sub_100031660(a2, v62, &qword_100975610, &qword_1007B5690);
  v12 = v63;
  if (v63)
  {
    v13 = v64;
    sub_10002A400(v62, v63);
    v14 = type metadata accessor for Optional();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v55 - v16;
    LayoutView.nilIfHidden()();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v12;
      v67 = v13;
      v19 = sub_1000056E0(&v65);
      (*(v18 + 32))(v19, v17, v12);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610, &qword_1007B5690);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v20 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = a9 + v20[5];
  v22 = v66;
  *v21 = v65;
  *(v21 + 16) = v22;
  *(v21 + 32) = v67;
  sub_100031660(v61, a9 + v20[6], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(v60, v62, &qword_100975610, &qword_1007B5690);
  v23 = v63;
  if (v63)
  {
    v24 = v64;
    sub_10002A400(v62, v63);
    v25 = type metadata accessor for Optional();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v55 - v27;
    LayoutView.nilIfHidden()();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v23;
      v67 = v24;
      v30 = sub_1000056E0(&v65);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610, &qword_1007B5690);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v31 = a9 + v20[7];
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v67;
  sub_10002C0AC(v59, a9 + v20[8]);
  sub_100031660(v58, v62, &qword_100975610, &qword_1007B5690);
  v33 = v63;
  if (v63)
  {
    v34 = v64;
    sub_10002A400(v62, v63);
    v35 = type metadata accessor for Optional();
    v36 = *(v35 - 8);
    __chkstk_darwin(v35);
    v38 = &v55 - v37;
    LayoutView.nilIfHidden()();
    v39 = *(v33 - 8);
    if ((*(v39 + 48))(v38, 1, v33) == 1)
    {
      (*(v36 + 8))(v38, v35);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v33;
      v67 = v34;
      v41 = sub_1000056E0(&v65);
      (*(v39 + 32))(v41, v38, v33);
    }

    v40 = v57;
    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(v62, &qword_100975610, &qword_1007B5690);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v40 = v57;
  }

  v42 = a9 + v20[9];
  v43 = v66;
  *v42 = v65;
  *(v42 + 16) = v43;
  *(v42 + 32) = v67;
  sub_100031660(v40, a9 + v20[10], &unk_10097B860, &qword_1007B49E0);
  sub_100031660(a8, v62, &qword_100975610, &qword_1007B5690);
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    sub_10002A400(v62, v63);
    v46 = type metadata accessor for Optional();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v55 - v48;
    LayoutView.nilIfHidden()();
    v50 = *(v44 - 8);
    if ((*(v50 + 48))(v49, 1, v44) == 1)
    {
      sub_10002B894(a8, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v57, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v58, &qword_100975610, &qword_1007B5690);
      sub_100007000(v59);
      sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v61, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v55, &qword_100975610, &qword_1007B5690);
      sub_100695FE8(v56);
      (*(v47 + 8))(v49, v46);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v44;
      v67 = v45;
      v51 = sub_1000056E0(&v65);
      (*(v50 + 32))(v51, v49, v44);
      sub_10002B894(a8, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v57, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v58, &qword_100975610, &qword_1007B5690);
      sub_100007000(v59);
      sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
      sub_10002B894(v61, &unk_10097B860, &qword_1007B49E0);
      sub_10002B894(v55, &qword_100975610, &qword_1007B5690);
      sub_100695FE8(v56);
    }

    sub_100007000(v62);
  }

  else
  {
    sub_10002B894(a8, &qword_100975610, &qword_1007B5690);
    sub_10002B894(v40, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v58, &qword_100975610, &qword_1007B5690);
    sub_100007000(v59);
    sub_10002B894(v60, &qword_100975610, &qword_1007B5690);
    sub_10002B894(v61, &unk_10097B860, &qword_1007B49E0);
    sub_10002B894(v55, &qword_100975610, &qword_1007B5690);
    sub_100695FE8(v56);
    sub_10002B894(v62, &qword_100975610, &qword_1007B5690);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v52 = a9 + v20[11];
  result = *&v65;
  v54 = v66;
  *v52 = v65;
  *(v52 + 16) = v54;
  *(v52 + 32) = v67;
  return result;
}