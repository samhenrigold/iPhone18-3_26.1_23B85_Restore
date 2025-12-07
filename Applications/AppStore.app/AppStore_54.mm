void sub_100600D20()
{
  v1 = [v0 viewControllers];
  sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    type metadata accessor for CategoryListViewController(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = (v8 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
      v11 = *(v8 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler);
      v12 = v10[1];
      *v10 = sub_100602E7C;
      v10[1] = v9;

      sub_10011B8E8(v11, v12);
    }

    else
    {
    }
  }

LABEL_13:
}

void sub_100600EBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
    if (v5)
    {
      v6 = *&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler + 8];
      sub_10000827C(*&Strong[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler], v6);

      v5(a1);
      sub_10011B8E8(v5, v6);
    }

    else
    {
    }
  }
}

void sub_1006010A0()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 contentScaleFactor];
    v5 = v4;

    [v1 setScale:v5];
    [v1 setPreferredRange:1];
    v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v1 format:{22.0, 22.0}];
    v10[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1002FDC2C;
    v10[3] = &unk_1008CBAE8;
    v7 = _Block_copy(v10);

    v8 = [v6 imageWithActions:v7];

    _Block_release(v7);
    if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
    {
      v9 = *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage];
      *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage] = v8;

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1006013B0(void *a1, uint64_t a2, const char **a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v5 = *a3;
  v6 = v7.receiver;
  objc_msgSendSuper2(&v7, v5);
  ArtworkLoader.isOccluded.setter();
}

id sub_1006015E4(void *a1, uint64_t a2)
{
  v3 = v2;
  v37 = type metadata accessor for IndexPath();
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = String._bridgeToObjectiveC()();
  v10 = [a1 dequeueReusableCellWithIdentifier:v9];

  if (!v10)
  {
    v11 = objc_allocWithZone(UITableViewCell);
    v12 = String._bridgeToObjectiveC()();
    v10 = [v11 initWithStyle:0 reuseIdentifier:v12];
  }

  v13 = [v10 imageView];
  if (v13)
  {
    v14 = v13;
    v15 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage);
    [v14 setImage:v15];
  }

  v16 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource);
  v36[1] = a2;
  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v16 + 16), *(v16 + 40));
  v17 = dispatch thunk of TopChartsCategoriesPresenter.categoryArtwork(at:)();
  v36[0] = *(v6 + 8);
  (v36[0])(v8, v37);
  if (v17)
  {
    v18 = [v10 imageView];
    if (v18)
    {
      v19 = v18;
      v20 = *(v3 + OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage);
      [v19 setImage:v20];
    }

    Artwork.config(_:mode:prefersLayeredImage:)();
    v21 = [v10 imageView];
    if (v21)
    {
      v38 = v21;
      sub_100005744(0, &qword_100973120, UIImageView_ptr);
      sub_10055F664();
      AnyHashable.init<A>(_:)();
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
    }

    *(swift_allocObject() + 16) = v10;
    v24 = v10;
    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v39, &qword_10096FB90, &qword_1007B2A50);
  }

  else
  {
    v22 = [v10 imageView];
    if (v22)
    {
      v23 = v22;
      [v22 setImage:0];
    }
  }

  v25 = [v10 textLabel];
  if (v25)
  {
    v26 = v25;
    IndexPath.row.getter();
    IndexPath.appending(_:)();
    sub_10002A400((v16 + 16), *(v16 + 40));
    dispatch thunk of TopChartsCategoriesPresenter.categoryTitle(at:)();
    v28 = v27;
    (v36[0])(v8, v37);
    if (v28)
    {
      v29 = String._bridgeToObjectiveC()();
    }

    else
    {
      v29 = 0;
    }

    [v26 setText:v29];
  }

  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v16 + 16), *(v16 + 40));
  v30 = dispatch thunk of TopChartsCategoriesPresenter.hasChildren(at:)();
  v31 = v37;
  v32 = v36[0];
  (v36[0])(v8, v37);
  if (v30)
  {
    [v10 setAccessoryType:1];
  }

  else
  {
    IndexPath.row.getter();
    IndexPath.appending(_:)();
    sub_10002A400((v16 + 16), *(v16 + 40));
    v33 = dispatch thunk of TopChartsCategoriesPresenter.isCategorySelected(at:)();
    v32(v8, v31);
    if (v33)
    {
      v34 = 3;
    }

    else
    {
      v34 = 0;
    }

    [v10 setAccessoryType:v34];
  }

  return v10;
}

uint64_t type metadata accessor for CategoryListViewController(uint64_t a1)
{
  result = qword_10098ECC0;
  if (!qword_10098ECC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100602008(uint64_t a1)
{
  result = type metadata accessor for IndexPath();
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

id sub_1006020C4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = &a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_placeholderImage] = 0;
  v10 = &a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource];
  *v10 = a1;
  *(v10 + 1) = &off_1008C9F18;
  *&a4[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_artworkLoader] = a2;
  v11 = OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_parentIndexPath;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&a4[v11], a3, v12);
  v18.receiver = a4;
  v18.super_class = ObjectType;

  v14 = objc_msgSendSuper2(&v18, "initWithStyle:", 0);
  v15 = [v14 navigationItem];
  v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v14 action:"dismissSelf"];
  [v15 setRightBarButtonItem:v16];

  (*(v13 + 8))(a3, v12);
  return v14;
}

uint64_t sub_100602274(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for FlowOrigin();
  v59 = *(v6 - 8);
  v60 = v6;
  __chkstk_darwin(v6);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowAnimationBehavior();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v61 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FlowPresentationContext();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin(v10);
  v58 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = type metadata accessor for FlowPage();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v24 - 8);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v30 = &v50 - v29;
  v63 = a2;
  if (a1)
  {
    [v3 setModalPresentationStyle:{7, v28}];
    v31 = [v3 popoverPresentationController];
    [v31 setBarButtonItem:a1];

    v32 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v30, 1, v32) == 1)
    {
      v34 = v30;
      return sub_10002B894(v34, &unk_100972A00, &unk_1007B3130);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v38 = *(v21 + 104);
    v51 = v23;
    v38(v23, enum case for FlowPage.viewController(_:), v20);
    v39 = type metadata accessor for URL();
    v40 = *(*(v39 - 8) + 56);
    v50 = v19;
    v40(v19, 1, 1, v39);
    v41 = type metadata accessor for ReferrerData();
    (*(*(v41 - 8) + 56))(v16, 1, 1, v41);
    v65 = ObjectType;
    v64 = v3;
    v42 = v3;
    static ActionMetrics.notInstrumented.getter();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v43 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v43, 1, v63, v30);

    return (*(v33 + 8))(v30, v32);
  }

  else
  {
    v35 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v26, 1, v35) == 1)
    {
      v34 = v26;
      return sub_10002B894(v34, &unk_100972A00, &unk_1007B3130);
    }

    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v44 = *(v21 + 104);
    v51 = v23;
    v44(v23, enum case for FlowPage.viewController(_:), v20);
    v45 = type metadata accessor for URL();
    v46 = *(*(v45 - 8) + 56);
    v50 = v19;
    v46(v19, 1, 1, v45);
    v47 = type metadata accessor for ReferrerData();
    (*(*(v47 - 8) + 56))(v16, 1, 1, v47);
    v65 = ObjectType;
    v64 = v3;
    v48 = v3;
    static ActionMetrics.notInstrumented.getter();
    (*(v52 + 104))(v58, enum case for FlowPresentationContext.infer(_:), v53);
    (*(v56 + 104))(v61, enum case for FlowAnimationBehavior.infer(_:), v57);
    (*(v59 + 104))(v62, enum case for FlowOrigin.inapp(_:), v60);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v49 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005F9C8C(v49, 1, v63, v26);

    return (*(v36 + 8))(v26, v35);
  }
}

void sub_100602B84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_dataSource];
  IndexPath.row.getter();
  IndexPath.appending(_:)();
  sub_10002A400((v6 + 16), *(v6 + 40));
  v7 = dispatch thunk of TopChartsCategoriesPresenter.hasChildren(at:)();
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v7)
  {
    v9 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_artworkLoader];
    swift_unknownObjectRetain();

    IndexPath.row.getter();
    IndexPath.appending(_:)();
    v10 = sub_1006020C4(v6, v9, v5, objc_allocWithZone(ObjectType));
    swift_unknownObjectRelease();

    v11 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v12 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler + 8];
    v13 = &v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v14 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v15 = *&v10[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler + 8];
    *v13 = v11;
    v13[1] = v12;
    sub_10000827C(v11, v12);
    sub_10011B8E8(v14, v15);
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v10 animated:1];
    }
  }

  else
  {
    v18 = &v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    v19 = *&v1[OBJC_IVAR____TtC8AppStoreP33_7C69AE632AC4B7F138E05C76B1C3B47C26CategoryListViewController_selectionHandler];
    if (v19)
    {
      v20 = v18[1];

      IndexPath.row.getter();
      IndexPath.appending(_:)();
      v19(v5);
      sub_10011B8E8(v19, v20);
      v8(v5, v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
    v21 = *v18;
    v22 = v18[1];
    *v18 = 0;
    v18[1] = 0;
    sub_10011B8E8(v21, v22);
  }
}

void sub_100602E14(uint64_t a1)
{
  v3 = [*(v1 + 16) imageView];
  [v3 setImage:a1];
}

id sub_100602E84()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel];
  EditorialLink.descriptionText.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
  EditorialLink.summaryText.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

uint64_t sub_100602F68()
{
  v33 = type metadata accessor for FontSource();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ArcadeFooterLayout.ButtonLocation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ArcadeFooterLayout.Metrics();
  sub_100005644(v6, qword_10098ED30);
  v35 = sub_1000056A8(v6, qword_10098ED30);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v40 = sub_1000056A8(v8, qword_1009D1610);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = type metadata accessor for CappedSizeStaticDimension();
  v52[3] = v32;
  v14 = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_1000056E0(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_1000056E0(v51);
  v21 = v15;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_1007CC620;
  v55 = xmmword_1007CC620;
  v56 = 0;
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_1000056A8(v34, qword_1009D09B0);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = type metadata accessor for StaticDimension();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  StaticDimension.init(_:scaledLike:)();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v41);
  v26(v28, v18, v13);
  StaticDimension.init(_:scaledLike:)();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return ArcadeFooterLayout.Metrics.init(iconSize:iconSpacing:iconRowCount:firstIconHorizontalOffset:wordmarkTopMargin:wordmarkHeight:buttonLocation:buttonTopMargin:buttonBottomMargin:buttonViewTopSpace:buttonViewBottomSpace:buttonMinWidth:buttonPreferredEdgeInsets:footnoteTopSpace:footnoteBottomSpace:footnoteSpaceMultiplier:layoutMargins:)();
}

double sub_1006035A4(double result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = [swift_unknownObjectRetain() traitCollection];
    UITraitCollection.isSizeClassCompact.getter();

    ArcadeFooterLayout.Metrics.buttonMinWidth.setter();
    if (qword_10096EAF0 != -1)
    {
      swift_once();
    }

    v4 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
    sub_1000056A8(v4, qword_1009D2EC8);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    ArcadeFooterLayout.Metrics.iconSize.setter();
    if (qword_10096EAE0 != -1)
    {
      swift_once();
    }

    v5 = sub_10002849C(&qword_100979010, qword_1007BE140);
    sub_1000056A8(v5, qword_10098ED48);
    swift_unknownObjectRetain();
    Conditional.evaluate(with:)();
    swift_unknownObjectRelease();
    ArcadeFooterLayout.Metrics.footnoteSpaceMultiplier.setter();
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_100603784()
{
  v0 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v0, qword_10098ED48);
  sub_1000056A8(v0, qword_10098ED48);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

uint64_t sub_10060381C()
{
  v0 = type metadata accessor for FontSource();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_10098ED78 = type metadata accessor for CappedSizeStaticDimension();
  qword_10098ED80 = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_1000056E0(qword_10098ED60);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

uint64_t sub_10060396C()
{
  v0 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  sub_100005644(v0, qword_1009D2EC8);
  sub_1000056A8(v0, qword_1009D2EC8);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  return Conditional<>.init(regularValue:compactValue:)();
}

UIFontTextStyle sub_100603A18()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D2EE0);
  v1 = sub_1000056A8(v0, qword_1009D2EE0);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_100603AD4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CappedSizeStaticDimension();
  sub_100005644(v4, qword_1009D2EF8);
  sub_1000056A8(v4, qword_1009D2EF8);
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D2EE0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
}

char *sub_100603C70(double a1, double a2, double a3, double a4)
{
  v105 = type metadata accessor for AutomationSemantics();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RiverViewStyling();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = type metadata accessor for CappedSizeStaticDimension();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for FontUseCase();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WordmarkView.Alignment();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = type metadata accessor for WordmarkView();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = type metadata accessor for Wordmark();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_100047650(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_1001C8194(v23, v36, v20, v27, v31, v32, 0.0, 0.0, 0.0, 0.0);
  sub_100007000(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_1000056A8(v97, qword_1009D2EE0);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_10096EB00 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_1000056A8(v101, qword_1009D2EF8);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_100605D98(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  v53 = type metadata accessor for ArcadeFooterLayout.Metrics();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_10096EAF0 != -1)
  {
    swift_once();
  }

  v62 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  sub_1000056A8(v62, qword_1009D2EC8);
  *&v109 = v60;
  Conditional.evaluate(with:)();

  v63 = v112;
  static RiverViewStyling.defaultInterRowSpacing.getter();
  static RiverViewStyling.defaultInterItemSpacing.getter();
  static RiverViewStyling.defaultSpeed.getter();
  static RiverViewStyling.defaultRowOffsets.getter();
  v64 = v106;
  RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_10002849C(&unk_10098EF20, qword_1007D9C00));
  v67 = RiverView.init(dataSource:styling:)();
  v68 = *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v112, &unk_1009711D0, &unk_1007B1A10);
  v102 = v69;
  UIView.setAutomationSemantics(_:)();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v77 = v76;
  v78 = static UIColor.defaultButtonTitleColor.getter();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = static UIColor.defaultButtonTitleColor.getter();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = static UIColor.placeholderBackgroundStandout.getter();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v112, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v109, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v112, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_1006049E8()
{
  v1 = type metadata accessor for LayoutRect();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975948, &qword_1007BA330);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v37.receiver = v0;
  v37.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v15 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_100606944(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &qword_100975948, &qword_1007BA330);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    ArcadeFooterLayout.Metrics.layoutMargins.getter();
    [v0 layoutMargins];
    ArcadeFooterLayout.Metrics.layoutMargins.getter();
    [v0 layoutMargins];
    ArcadeFooterLayout.Metrics.layoutMargins.setter();
    (*(v8 + 16))(v10, v13, v7);
    v36[18] = sub_10002849C(&unk_10098EF20, qword_1007D9C00);
    v36[19] = &protocol witness table for UIView;
    v36[15] = v18;
    v19 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView];
    v36[13] = type metadata accessor for WordmarkView();
    v36[14] = &protocol witness table for UIView;
    v36[10] = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView];
    v36[8] = type metadata accessor for CappedSizeRoundedTitledButton(0);
    v36[9] = &protocol witness table for UIView;
    v36[5] = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v36[4] = &protocol witness table for UIView;
    v36[3] = v23;
    v36[0] = v22;
    type metadata accessor for ArcadeFooterLayout();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    ArcadeFooterLayout.init(metrics:riverView:wordmarkView:buttonView:footnoteView:)();
    v27 = [v0 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();

    v28 = v31;
    dispatch thunk of ArcadeFooterLayout.placeChildren(relativeTo:in:)();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v38);
    LayoutMarginsAware<>.layoutFrame.getter();
    if (Width == CGRectGetWidth(v39))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_100604FD0(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = type metadata accessor for RiverViewStyling();
  __chkstk_darwin(v4 - 8);
  if (qword_10096EAF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  sub_1000056A8(v5, qword_1009D2EC8);
  swift_unknownObjectRetain();
  Conditional.evaluate(with:)();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView;
  v7 = *&v2[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView];
  if (!v7 || ((v8 = v7, v9 = dispatch thunk of RiverView.dataSource.getter(), v8, swift_beginAccess(), v10 = *(v9 + 24), v11 = *(v9 + 32), , v28 == v10) ? (v12 = v29 == v11) : (v12 = 0), !v12))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v13 = swift_allocObject();
    *(v13 + 16) = 2;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = _swiftEmptyArrayStorage;
    *(v13 + 24) = v28;
    *(v13 + 32) = v29;
    static RiverViewStyling.defaultInterRowSpacing.getter();
    static RiverViewStyling.defaultInterItemSpacing.getter();
    static RiverViewStyling.defaultSpeed.getter();
    static RiverViewStyling.defaultRowOffsets.getter();
    RiverViewStyling.init(itemSize:interRowSpacing:interItemSpacing:speed:rowOffsets:reverseAlternatingRows:)();
    v14 = objc_allocWithZone(sub_10002849C(&unk_10098EF20, qword_1007D9C00));
    v15 = RiverView.init(dataSource:styling:)();
    v16 = *&v3[v6];
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = static NSObject.== infix(_:_:)();

      v20 = *&v3[v6];
      if ((v19 & 1) == 0 && v20)
      {
        [*&v3[v6] removeFromSuperview];
        v20 = *&v3[v6];
      }
    }

    else
    {
      v20 = 0;
    }

    *&v3[v6] = v15;
    v21 = v15;

    v22 = *&v3[v6];
    if (v22)
    {
      if (v16)
      {
        v23 = v16;
        v24 = v22;
        v25 = static NSObject.== infix(_:_:)();

        if (v25)
        {

          v22 = v24;
LABEL_22:

          return;
        }
      }

      else
      {
        v26 = v22;
      }

      v27 = [v3 contentView];
      [v27 addSubview:v22];

      if (v16)
      {
        dispatch thunk of RiverView.isAnimating.getter();
      }

      dispatch thunk of RiverView.isAnimating.setter();

      goto LABEL_22;
    }

    v22 = v16;
    goto LABEL_22;
  }
}

uint64_t sub_10060536C(uint64_t a1, uint64_t a2)
{
  sub_100005744(0, &qword_100981660, UITouch_ptr);
  sub_10008DB40();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_10066D4C4(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_10096CF40 != -1)
        {
          swift_once();
        }

        v13 = &qword_1009725C0;
      }

      else
      {
        if (qword_10096CF38 != -1)
        {
          swift_once();
        }

        v13 = &qword_1009725B8;
      }

      return [*&v12[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_10060570C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell(uint64_t a1)
{
  result = qword_10098EDB8;
  if (!qword_10098EDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100605870(uint64_t a1)
{
  sub_100605998(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_100605998(319, &qword_10098EDD0, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100605998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1006059EC(unint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

LABEL_7:
    v4 = dispatch thunk of ImpressionableArtwork.artwork.getter();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100605AC8()
{

  return swift_deallocClassInstance();
}

void sub_100605B68(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

unint64_t sub_100605BFC@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1006059EC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100605C24()
{
  type metadata accessor for ArtworkView();
  v0 = static ArtworkView.iconArtworkView.getter();
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  static UIColor.placeholderBackgroundStandout.getter();
  ArtworkView.backgroundColor.setter();
  return v0;
}

double sub_100605C8C(uint64_t a1)
{
  ArtworkView.image.setter();
  if (*(v1 + 56))
  {
    type metadata accessor for ArtworkView();
    sub_100605D50(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  return result;
}

uint64_t sub_100605D50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100605D98(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for CappedSizeStaticDimension();
  v26[3] = v12;
  v26[4] = sub_100605D50(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v13 = sub_1000056E0(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_10097E280];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10002C0AC(v26, &a4[qword_10097E278]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_10025B568(a3);
  v18 = type metadata accessor for FontUseCase();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v21 = static UIColor.defaultButtonBackgroundColor.getter();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = static UIColor.defaultButtonTitleColor.getter();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_100007000(v26);
  return v20;
}

void sub_100606094()
{
  v1 = type metadata accessor for CappedSizeStaticDimension();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FontUseCase();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WordmarkView.Alignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100975F00, &qword_1007BAA50);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = type metadata accessor for WordmarkView();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = type metadata accessor for Wordmark();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_10096EAE8 != -1)
  {
    swift_once();
  }

  sub_10002C0AC(qword_10098ED60, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_100047650(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_1001C8194(v11, v24, v8, v15, v19, v20, 0.0, 0.0, 0.0, 0.0);
  sub_100007000(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10096EAF8 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_1000056A8(v44, qword_1009D2EE0);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_10096EB00 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_1000056A8(v48, qword_1009D2EF8);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_100605D98(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_metrics;
  v41 = type metadata accessor for ArcadeFooterLayout.Metrics();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006066B4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted) = 0;
  if (qword_10096CF38 != -1)
  {
    swift_once();
  }

  result = [*(v1 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel) setTextColor:qword_1009725B8];
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8);

    v3(v5);

    return sub_10001F63C(v3, v4);
  }

  return result;
}

void sub_10060678C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  Artwork.config(_:mode:prefersLayeredImage:)();
  Artwork.style.getter();
  ArtworkView.style.setter();
  [a2 setContentMode:Artwork.contentMode.getter()];
  ArtworkLoaderConfig.size.getter();
  ArtworkView.imageSize.setter();
  if (!Artwork.backgroundColor.getter())
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    static UIColor.placeholderBackground.getter();
  }

  ArtworkView.backgroundColor.setter();
  if (*(v2 + 56))
  {
    type metadata accessor for ArtworkView();
    sub_100605D50(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_100606944(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975948, &qword_1007BA330);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1006069B4()
{
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon] = 0;

  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  v1 = sub_10039801C(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  swift_beginAccess();
  *&v0[v2] = v1;

  v3 = &v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v3 = 0;
  v3[8] = 1;
  result = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
  if (result)
  {
    [result reloadData];
    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100606A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v5 = sub_100606AE4();

  return v5;
}

id sub_100606AE4()
{
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  v1 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths;
  if (!*(*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16))
  {
    return 0;
  }

  [v0 bounds];
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v2, qword_1009D2508);
  v3 = [v0 traitCollection];
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v5 = v4;

  v6 = *&v0[v1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();

    v11 = 0.0;
    v12 = 32;
    do
    {
      v13 = *(v6 + v12);
      v14 = [v8 absoluteDimension:{v13, v27}];
      v15 = [v8 absoluteDimension:v5];
      v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = [v10 itemWithLayoutSize:v16];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v11 = v11 + v13;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
  }

  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v11];
  v21 = [v19 absoluteDimension:v5];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

  v18 = [objc_opt_self() sectionWithGroup:v25];
  return v18;
}

void sub_100606EC4()
{
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon])
  {
    swift_beginAccess();

    v2 = sub_10060737C(v1);

    v3 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths;
    v4 = *(*&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16);
    if (v2 >> 62)
    {
      if (v4 != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_31;
      }
    }

    else if (v4 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits];
    if (!v5)
    {
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    [v0 bounds];
    CGRectGetMinX(v53);
    [v0 bounds];
    CGRectGetWidth(v54);
    v6 = [v0 traitCollection];
    [v6 displayScale];

    v7 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
      [v0 bounds];
      CGRect.withLayoutDirection(in:relativeTo:)();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      [v8 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator];
    if (v17)
    {
      v18 = v17;
      [v0 bounds];
      CGRectGetMaxY(v55);
      swift_unknownObjectRetain();
      [v0 bounds];
      CGRect.withLayoutDirection(in:relativeTo:)();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      [v18 setFrame:{v20, v22, v24, v26}];
    }

    [v5 pageMarginInsets];
    v28 = v27;
    [v5 pageMarginInsets];
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v28 + v29;
      if (!v4)
      {
        goto LABEL_19;
      }

      v31 = *&v0[v3];
      if (v4 <= *(v31 + 16))
      {
        if (v4 >= 4)
        {
          v32 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = (v31 + 48);
          v34 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = v30 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
            v33 += 4;
            v34 -= 4;
          }

          while (v34);
          if (v4 == v32)
          {
LABEL_19:
            [v0 bounds];
            Width = CGRectGetWidth(v56);
            v39 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
            v40 = *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
            if (v40)
            {
              v41 = (Width - v30) * 0.5;
              if (v41 < 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v41;
              }

              v43 = v40;
              [v0 bounds];
              MinY = CGRectGetMinY(v57);
              [v0 bounds];
              v45 = CGRectGetWidth(v58);
              if (v45 >= v30)
              {
                v46 = v30;
              }

              else
              {
                v46 = v45;
              }

              [v0 bounds];
              [v43 setFrame:{v42, MinY, v46, CGRectGetHeight(v59)}];

              v47 = *&v0[v39];
              if (v47)
              {
                v48 = v47;
                [v0 bounds];
                [v48 setScrollEnabled:CGRectGetWidth(v60) < v30];

                if (v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] == 1)
                {
                  v49 = *&v0[v39];
                  if (v49)
                  {
                    v50 = v49;

                    v51 = [v50 collectionViewLayout];

                    [v51 invalidateLayout];
                    swift_unknownObjectRelease();
LABEL_32:

                    return;
                  }

LABEL_40:
                  __break(1u);
                  return;
                }

                swift_unknownObjectRelease();
LABEL_31:

                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          v32 = 0;
        }

        v35 = v4 - v32;
        v36 = (v31 + 8 * v32 + 32);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37;
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }
}

void *sub_10060737C(uint64_t a1)
{
  v25 = a1;
  v24 = type metadata accessor for BadgeType();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = InformationRibbon.badges.getter();
  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  if (!(v7 >> 62))
  {
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v22 = v8 & 0xC000000000000001;
  v11 = (v1 + 8);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v12;
    v13 = v10;
    while (1)
    {
      if (v22)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v1 = *(v8 + 8 * v13 + 32);

        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = v9;
      Badge.type.getter();
      v15 = BadgeType.rendersNatively.getter();
      v16 = *v11;
      (*v11)(v6, v24);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      Badge.type.getter();
      if (*(v25 + 16))
      {
        v17 = sub_1003D79C8(v3);
        if (v18)
        {
          break;
        }
      }

      v16(v3, v24);
      ++v13;
      v9 = v14;
      if (v10 == v14)
      {
        v12 = v21;
        goto LABEL_25;
      }
    }

    v19 = *(*(v25 + 56) + 8 * v17);

    v16(v3, v24);
    v1 = v19;
LABEL_16:
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v9 = v14;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v9 = v14;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v26;
  }

  while (v10 != v9);
LABEL_25:

  return v12;
}

uint64_t sub_10060774C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100607A08(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t), void *a4)
{
  v5 = v4;
  v88 = a4;
  ObjectType = swift_getObjectType();
  v81 = type metadata accessor for InformationRibbon.Alignment();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v78 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for BadgeType();
  v90 = *(v93 - 8);
  __chkstk_darwin(v93);
  v87 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v78 - v12;
  v82 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel;
  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) = 1;
  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader) = a2;

  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph) = a3;
  v85 = a2;

  *(v4 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon) = a1;
  v86 = a3;

  v89 = a1;
  v14 = InformationRibbon.badges.getter();
  v15 = v14;
  v94[0] = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_16:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v91 = v5;
      v17 = 0;
      v5 = (v90 + 1);
      v92 = (v90 + 1);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v20 = v94[0];
            v5 = v91;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        Badge.type.getter();
        v19 = BadgeType.rendersNatively.getter();
        (*v5)(v13, v93);
        if (v19)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v92;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v21 = v87;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = *(v20 + 16);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = 0;
  v91 = v20 & 0xC000000000000001;
  v92 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  v24 = v89;
  ++v90;
  v83 = v22;
  v84 = v20;
  do
  {
    if (v91)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    Badge.type.getter();
    v30 = v92;
    swift_beginAccess();
    if (*(v5 + v30))[2] && (sub_1003D79C8(v21), (v31))
    {
      swift_endAccess();
      v32 = *v90;

      v32(v21, v93);
    }

    else
    {
      swift_endAccess();
      (*v90)(v21, v93);
      v25 = v86;
      Badge.enrich(objectGraph:)(v86);
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v24;
      v26[4] = v85;
      v26[5] = v25;
      v26[6] = v88;
      v27 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);

      v21 = v87;

      v28 = v5;
      swift_unknownObjectRetain();
      v29 = static OS_dispatch_queue.main.getter();
      v94[3] = v27;
      v94[4] = &protocol witness table for OS_dispatch_queue;
      v94[0] = v29;
      Promise.then(perform:orCatchError:on:)();
      v22 = v83;

      sub_100007000(v94);
    }

    ++v23;
  }

  while (v22 != v23);
LABEL_32:

  v33 = v88;
  v34 = swift_getObjectType();
  v35 = [v33 snapshotPageTraitEnvironment];
  *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits) = v35;
  swift_unknownObjectRelease();
  if (InformationRibbon.hasTopSeparator.getter() & 1) != 0 && (InformationRibbon.separatorsAreFullWidth.getter())
  {
    v36 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator;
    v37 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
    if (!v37)
    {
      sub_100427A6C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
      v37 = *(v5 + v36);
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v38 = v37;
    v39 = static UIColor.defaultLine.getter();
    [v38 setBackgroundColor:v39];
  }

  else
  {
    v40 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator;
    v41 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator);
    if (v41)
    {
      [v41 removeFromSuperview];
      v39 = *(v5 + v40);
    }

    else
    {
      v39 = 0;
    }

    *(v5 + v40) = 0;
  }

LABEL_42:
  if ((InformationRibbon.hasBottomSeparator.getter() & 1) == 0 && *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) != 1 || (InformationRibbon.separatorsAreFullWidth.getter() & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator;
    v47 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator);
    if (v47)
    {
      [v47 removeFromSuperview];
      v45 = *(v5 + v46);
    }

    else
    {
      v45 = 0;
    }

    *(v5 + v46) = 0;
    goto LABEL_52;
  }

  v42 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator;
  v43 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator);
  if (v43 || (sub_100427A6C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator), (v43 = *(v5 + v42)) != 0))
  {
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v44 = v43;
    v45 = static UIColor.defaultLine.getter();
    [v44 setBackgroundColor:v45];

LABEL_52:
  }

  v48 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
  v49 = *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView);
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = v88;
  [v88 pageMarginInsets];
  v53 = v52;
  [v51 pageMarginInsets];
  v55 = v54;
  [v51 pageMarginInsets];
  v57 = v56;
  [v51 pageMarginInsets];
  [v50 setContentInset:{v53, v55, v57}];

  swift_beginAccess();

  v59 = sub_10060737C(v58);

  v60 = v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  if ((*(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken + 8) & 1) != 0 || (v61 = *v60, v61 != sub_100609114(v59)))
  {
    *v60 = sub_100609114(v59);
    v60[8] = 0;
    [v5 bounds];
    v63 = *(v5 + v48);
    if (!v63)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v64 = v62;
    [v63 contentInset];
    v66 = *(v5 + v48);
    if (!v66)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v67 = v64 - v65;
    [v66 contentInset];
    v69 = v67 - v68;
    [v5 bounds];
    v71 = v70;
    v72 = v78;
    InformationRibbon.alignment.getter();
    v73.n128_f64[0] = v69;
    sub_100608A14(v59, v72, v88, v73, v71, ObjectType, v34);
    v75 = v74;
    (*(v79 + 8))(v72, v81);
    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths) = v75;

    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 1;
  }

  v76 = *(v5 + v48);
  if (!v76)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v77 = v76;

  [v77 reloadData];

  [v5 setNeedsLayout];
  *(v5 + v82) = 0;
  if (*(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) == 1)
  {
    *(v5 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
    sub_100607A08(v89, v85, v86, v88);
  }
}

double sub_100608400(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t), void (*a5)(char *, uint64_t), void *a6)
{
  v12 = type metadata accessor for BadgeType();
  *&result = __chkstk_darwin(v12 - 8).n128_u64[0];
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {

    Badge.type.getter();
    swift_beginAccess();

    sub_10004AD7C(v16, v15);
    swift_endAccess();
    if (*(a2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) == 1)
    {

      *(a2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 1;
    }

    else
    {
      sub_100607A08(a3, a4, a5, a6);
    }
  }

  return result;
}

double sub_10060853C(uint64_t a1)
{
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v4[3] = &type metadata for String;
  v4[0] = Error.localizedDescription.getter();
  v4[1] = v2;
  static LogMessage.safe(_:)();
  sub_10002B894(v4, &unk_1009711D0, &unk_1007B1A10);
  Logger.error(_:)();

  return result;
}

uint64_t type metadata accessor for InformationRibbonCollectionViewCell(uint64_t a1)
{
  result = qword_10098EFC0;
  if (!qword_10098EFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100608810(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1006088DC(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v10, qword_1009D2508);
  v11 = [a8 traitCollection];
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();

  return a1;
}

double sub_100608994(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, void *a7, __n128 a8)
{
  v11 = sub_10060906C(a8);
  if (v11)
  {
    sub_100607A08(v11, a3, a4, a7);
  }

  return result;
}

void sub_100608A14(unint64_t a1, char *a2, void *a3, __n128 a4, double a5, uint64_t a6, uint64_t a7)
{
  v10 = a4.n128_f64[0];
  v13 = type metadata accessor for InformationRibbon.Alignment();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v19)
  {
    return;
  }

  v20 = [a3 traitCollection];
  v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v21)
  {
    if (!v18)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v23 = _CocoaArrayWrapper.endIndex.getter();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v23)
      {
        v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v25 + 16) = v23;
        memset_pattern16((v25 + 32), &unk_1007C4B10, 8 * v23);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v22 = floor(v10 / v24);
  if (*&v22 <= 136.0)
  {
    if (v24 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v24)
    {
      a2 = _swiftEmptyArrayStorage;
      if (v10 > 0.0)
      {
        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v30 = type metadata accessor for BadgeView(0);
    v31 = 0;
    v14 = a1 & 0xC000000000000001;
    a2 = _swiftEmptyArrayStorage;
    v32 = 0.0;
    while (1)
    {
      if (v14)
      {
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = sub_10007C9A8(v33, v31, 0, v24, a3, v10, a5, v30, a7);

      if (v34 >= 105.0)
      {
        if (v34 >= 136.0)
        {
          v35 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_10003356C(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v35 = floor(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v18 = *(a2 + 2);
      v36 = *(a2 + 3);
      v13 = v18 + 1;
      if (v18 >= v36 >> 1)
      {
        a2 = sub_10003356C((v36 > 1), v18 + 1, 1, a2);
      }

      ++v31;
      *(a2 + 2) = v13;
      *&a2[8 * v18 + 32] = v35;
      v32 = v32 + v35;
      if (v24 == v31)
      {
        v10 = v10 - v32;
        if (v10 <= 0.0)
        {
          return;
        }

LABEL_45:
        a3 = a2 + 32;
        v55 = _swiftEmptyArrayStorage;
        sub_100144108(0, v13, 0);
        v17 = 0;
        v38 = v55;
        a7 = v55[2];
        do
        {
          v39 = *(a3 + v17);
          v55 = v38;
          v40 = v38[3];
          if (&v17[a7] >= v40 >> 1)
          {
            sub_100144108((v40 > 1), &v17[a7 + 1], 1);
            v38 = v55;
          }

          v41 = v17 + 1;
          v38[2] = &v17[a7 + 1];
          *&v38[a7 + 4 + v17] = 136.0 - v39;
          v17 = v41;
        }

        while (v13 != v41);
        v42 = &v41[a7];
        if (&v41[a7 - 1] <= 2)
        {
          v43 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v43 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        v44 = (v38 + 6);
        a5 = 0.0;
        v45 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v44 - 2) + *(v44 - 1) + *v44 + v44[1];
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        if (v42 != v43)
        {
LABEL_54:
          v46 = &v41[a7 - v43];
          v47 = &v38[v43 + 4];
          do
          {
            v48 = *v47++;
            a5 = a5 + v48;
            --v46;
          }

          while (v46);
        }

        if (v13 <= v42)
        {
          a1 = 4;
          while (1)
          {
            v49 = *&v38[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_100548D50(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(v10 * (v49 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v54 = v22;
  (*(v14 + 16))(v17, a2, v13);
  if ((*(v14 + 88))(v17, v13) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v24 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v24)
    {
      return;
    }

    v26 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v26 + 16) = v24;
    v27 = (v26 + 32);
    if (v24 < 4)
    {
      v28 = 0;
      v29 = v54;
LABEL_67:
      v53 = v24 - v28;
      do
      {
        *v27++ = v29;
        --v53;
      }

      while (v53);
      return;
    }

    v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    v27 += v24 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = v54;
    v50 = vdupq_lane_s64(v54, 0);
    v51 = (v26 + 48);
    v52 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v24 != v28)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v24 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v24)
    {
      v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v37 + 16) = v24;
      memset_pattern16((v37 + 32), &unk_1007C4B00, 8 * v24);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10060906C(__n128 a1)
{
  v1 = *(Shelf.items.getter() + 16);

  if (v1)
  {
    result = Shelf.items.getter();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_10002C0AC(result + 32, v4);

    sub_10002849C(&qword_100973D50, &unk_1007B3840);
    type metadata accessor for InformationRibbon();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  return 0;
}

uint64_t sub_100609114(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_7:

      v5 = Badge.caption.getter();
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0xE000000000000000;
      }

      v8 = v7;
      String.append(_:)(*&v5);

      v9 = Badge.heading.getter();
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v12 = v11;
      String.append(_:)(*&v9);

      ++v3;
      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v13 = String.hashValue.getter();

  return v13;
}

void sub_100609294()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon] = 0;
  v4 = &v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits] = 0;
  v5 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *&v0[v5] = sub_10039801C(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel] = 0;
  v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_minimumBadgeWidths] = _swiftEmptyArrayStorage;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v27[4] = sub_10060A0DC;
  v27[5] = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1002E9BD4;
  v27[3] = &unk_1008CBBB8;
  v9 = _Block_copy(v27);
  v10 = v6;

  v11 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView;
  v14 = *&v10[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView];
  *&v10[OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = *&v10[v13];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v16 setAlwaysBounceVertical:0];
  v17 = *&v10[v13];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for BadgeCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = String._bridgeToObjectiveC()();
  [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = *&v10[v13];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v10[v13];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v25 setDataSource:v10];
  v26 = *&v10[v13];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v26 setDelegate:v10];
  if (*&v10[v13])
  {
    [v10 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_100609684()
{
  v1 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_badgeCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon) = 0;
  v3 = v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_pageTraits) = 0;
  v4 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *(v0 + v4) = sub_10039801C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_isApplyingModel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006097E4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for BadgeType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  if (*(v2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon))
  {
    v13 = *(v2 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_objectGraph);
    if (v13)
    {
      v43 = v10;
      v44 = a2;
      v14 = OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
      swift_beginAccess();
      v42 = v2;

      v16 = sub_10060737C(v15);

      type metadata accessor for BadgeCollectionViewCell(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v41 = v17;
        v18 = a1;
        v19 = IndexPath.item.getter();
        if (v16 >> 62)
        {
          v38 = v19;
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v38 < v20)
          {
LABEL_6:
            v39 = v20;
            v21 = IndexPath.item.getter();
            v22 = v16 & 0xC000000000000001;
            v40 = v18;
            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_10;
              }

              __break(1u);
              goto LABEL_42;
            }

            specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
            Badge.type.getter();

            v23 = BadgeType.rendersNatively.getter();
            v24 = *(v6 + 8);
            v24(v12, v43);
            if (v23)
            {
              v25 = IndexPath.item.getter();
              if (v22)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_45:
                  __break(1u);
                  return;
                }
              }

              Badge.type.getter();

              v26 = v42;
              swift_beginAccess();
              v27 = *(v26 + v14);
              if (*(v27 + 16))
              {
                v28 = sub_1003D79C8(v8);
                if (v29)
                {
                  v30 = *(*(v27 + 56) + 8 * v28);
                  swift_endAccess();

                  v24(v8, v43);
                  goto LABEL_26;
                }
              }

              swift_endAccess();
              v24(v8, v43);
            }

            v31 = IndexPath.item.getter();
            if (v22)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_25:

LABEL_26:

              if ((InformationRibbon.hasBottomSeparator.getter() & 1) != 0 || *(v42 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) == 1)
              {
                v32 = InformationRibbon.separatorsAreFullWidth.getter();
              }

              else
              {
                v32 = 1;
              }

              v33 = IndexPath.item.getter();
              if (InformationRibbon.hasTopSeparator.getter())
              {
                v34 = InformationRibbon.separatorsAreFullWidth.getter();
              }

              else
              {
                v34 = 1;
              }

              v35 = Badge.clickAction.getter();
              v36 = v41;
              v37 = v39;
              sub_10007B86C(v30, v33, 0, v39, v35, v13);
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView] setHidden:v34 & 1];
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView] setHidden:v32 & 1];
              [*&v36[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView] setHidden:v33 == v37 - 1];
              [v36 setNeedsLayout];

              goto LABEL_37;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              if (v31 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *(v16 + 8 * v31 + 32);

                goto LABEL_25;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 < v20)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_37:
    }
  }
}

double sub_100609CB8(void *a1)
{
  v3 = type metadata accessor for BadgeType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  type metadata accessor for BadgeCollectionViewCell(0);
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_artworkLoader))
    {
      v12 = *(v10 + OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_badgeView);
      v13 = *(v12 + OBJC_IVAR____TtC8AppStore9BadgeView_artworkView);
      if (v13)
      {
        v14 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
        swift_beginAccess();
        (*(v4 + 16))(v9, v12 + v14, v3);
        (*(v4 + 104))(v6, enum case for BadgeType.artwork(_:), v3);
        sub_10060A094(&unk_10098EFD0, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
        v19[0] = a1;

        v15 = v13;
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v19[3] == v19[1] && v19[4] == v19[2])
        {
          v16 = *(v4 + 8);
          v16(v6, v3);
          v16(v9, v3);
        }

        else
        {
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v18 = *(v4 + 8);
          v18(v6, v3);
          v18(v9, v3);

          if ((v17 & 1) == 0)
          {
LABEL_9:

            return result;
          }
        }

        type metadata accessor for ArtworkView();
        sub_10060A094(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_100609FD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_10060737C(v2);

    if (v3 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_10060A094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_10060A0E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10060A11C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31EditorialCardCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10060A174;
}

void sub_10060A174(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10025CC60(v2);
  }

  else
  {
    sub_10025CC60(*a1);
  }
}

uint64_t sub_10060A20C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10060A3E0(&qword_10097B3F8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007D9CE0);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10060A2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10060A3E0(&qword_10097B3F8, type metadata accessor for EditorialCardCollectionViewCell, &unk_1007D9CE0);

  return a3(ObjectType, v4);
}

uint64_t sub_10060A3E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10060A460(uint64_t a1, void *a2, double a3)
{
  sub_10002A400(a2, a2[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  return v3;
}

uint64_t sub_10060A4CC(int a1, int a2)
{
  v66 = a2;
  v3 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for PageGrid.HorizontalMargins();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v37 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007B23A0;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4020000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  PageGrid.DirectionalValue.init(_:)();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  PageGrid.DirectionalValue.init(_:)();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v54;
  PageGrid.DirectionalValue.init(_:)();
  v74 = *&v51;
  PageGrid.DirectionalValue.init(_:)();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v74 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v60;
}

uint64_t sub_10060B108(double a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v8 = type metadata accessor for FontSource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB28 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_10098F090);
  (*(*(v12 - 8) + 16))(v11, v13, v12);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  *a3 = type metadata accessor for StaticDimension();
  *a4 = &protocol witness table for StaticDimension;
  sub_1000056E0(a5);
  v17[3] = v8;
  v17[4] = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v17);
  (*(v9 + 16))(v14, v11, v8);
  StaticDimension.init(_:scaledLike:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10060B2F4()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098F090);
  v1 = sub_1000056A8(v0, qword_10098F090);
  if (qword_10096E2D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D17F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10060B424(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v4 = [v2 navigationItem];
  [v4 setLargeTitleDisplayMode:2];

  v5 = [v3 navigationItem];
  dispatch thunk of GenericAccountPagePresenter.title.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 setTitle:v7];

  sub_1006106AC(&qword_10098F188, v8, type metadata accessor for GenericAccountPageViewController, &unk_1007D9E20);
  swift_unknownObjectRetain();
  dispatch thunk of GenericAccountPagePresenter.view.setter();
  [v3 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v3 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v3 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  [result setAlwaysBounceVertical:1];

  result = [v3 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = result;
  sub_100005744(0, &unk_10098F190, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v14];

  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v15 = result;
  type metadata accessor for LinkableFooterView();
  v16 = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(v16);
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v15 registerClass:v16 forHeaderFooterViewReuseIdentifier:v17];

  result = [v3 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v18 = result;
  _s8AppStore10HeaderViewCMa_0();
  v19 = swift_getObjCClassFromMetadata();
  v20 = NSStringFromClass(v19);
  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v18 registerClass:v19 forHeaderFooterViewReuseIdentifier:v20];

  result = [v3 tableView];
  if (result)
  {
    v21 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return dispatch thunk of BasePresenter.didLoad()();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_10060B9A4(uint64_t a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10060BB4C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || ((UITraitCollection.prefersRightToLeftLayouts.getter() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {

    return;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
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

char *sub_10060BDF8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountSectionLink.LinkDisplayType();
  v118 = *(v4 - 8);
  v119 = v4;
  __chkstk_darwin(v4);
  v116 = v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v117 = v113 - v7;
  v8 = type metadata accessor for AccountSectionLink();
  v121 = *(v8 - 1);
  v122 = v8;
  __chkstk_darwin(v8);
  v120 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FloatingPointRoundingRule();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v11 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10098F170, qword_1007D9E58);
  __chkstk_darwin(v12 - 8);
  v14 = v113 - v13;
  v15 = type metadata accessor for AccountSection.ContentItem();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v113 - v20;
  v113[1] = *&v2[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter];
  dispatch thunk of GenericAccountPagePresenter.contentItem(at:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_74;
  }

  v123 = v16;
  v124 = v15;
  v22.n128_f64[0] = (*(v16 + 32))(v21, v14, v15);
  v128 = v21;
  v23 = sub_10060D198(v21, v22);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096EB28 != -1)
  {
    swift_once();
  }

  v125 = v2;
  v24 = type metadata accessor for FontUseCase();
  sub_1000056A8(v24, qword_10098F090);
  v126 = a1;
  v25 = [a1 traitCollection];
  v26 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v27 = [v23 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setFont:v26];
  }

  v127 = v26;
  v29 = [v23 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setNumberOfLines:0];
  }

  v31 = [v23 textLabel];
  if (v31)
  {
    v32 = v31;
    [v31 setLineBreakMode:0];
  }

  v33 = [v23 textLabel];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_opt_self() labelColor];
    [v34 setTextColor:v35];
  }

  v36 = [v23 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setFont:v127];
  }

  v38 = [v23 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setNumberOfLines:0];
  }

  v40 = [v23 detailTextLabel];
  if (v40)
  {
    v41 = v40;
    [v40 setLineBreakMode:0];
  }

  v42 = [v23 detailTextLabel];
  v43 = v125;
  if (v42)
  {
    v44 = v42;
    v45 = [objc_opt_self() labelColor];
    [v44 setTextColor:v45];
  }

  [v23 setAccessoryType:0];
  [v23 setAccessoryView:0];
  v14 = v23;
  [v14 setUserInteractionEnabled:0];
  if (qword_10096EB10 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098F018, qword_10098F030);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v47 = v46;
  (*(v114 + 8))(v11, v115);
  v48 = v126;
  [v126 layoutMargins];
  v50 = v49;
  [v48 layoutMargins];
  [v14 setLayoutMargins:{v47, v50, v47}];
  v52 = v123;
  v51 = v124;
  (*(v123 + 16))(v18, v128, v124);
  v53 = (*(v52 + 88))(v18, v51);
  if (v53 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v52 + 96))(v18, v51);
    (*(v121 + 32))(v120, v18, v122);
    v54 = [v14 textLabel];
    if (v54)
    {
      v55 = v54;
      AccountSectionLink.title.getter();
      v56 = String._bridgeToObjectiveC()();

      [v55 setText:v56];
    }

    AccountSectionLink.displayType.getter();
    (*(v118 + 104))(v116, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v119);
    sub_1006106AC(&qword_10098F178, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v57 = &selRef_setRequiresColorStatistics_;
    if (aBlock == v135 && v130 == v136)
    {
      v58 = v119;
      v59 = *(v118 + 8);
      v59(v116, v119);
      v59(v117, v58);
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v71 = *(v118 + 8);
      v72 = v51;
      v73 = v43;
      v74 = v119;
      v71(v116, v119);
      v75 = v74;
      v43 = v73;
      v51 = v72;
      v57 = &selRef_setRequiresColorStatistics_;
      v71(v117, v75);

      if ((v70 & 1) == 0)
      {
        v90 = [v14 textLabel];
        v76 = &selRef_setRequiresColorStatistics_;
        if (v90)
        {
          v91 = v90;
          v92 = [v126 tintColor];
          [v91 setTextColor:v92];
        }

        goto LABEL_37;
      }
    }

    [v14 setAccessoryType:1];
    v76 = &selRef_setRequiresColorStatistics_;
LABEL_37:
    [v14 v76[18]];

    (*(v121 + 8))(v120, v122);
LABEL_60:
    v66 = &selRef_loadView;
    goto LABEL_61;
  }

  if (v53 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v53 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v53 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v52 + 96))(v18, v51);
        v93 = *(v18 + 1);
        v94 = v18[16];
        sub_100005744(0, &qword_10097CD40, UIAction_ptr);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v95 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v96 = [objc_allocWithZone(UISwitch) initWithFrame:v95 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v97 = dispatch thunk of GenericAccountPagePresenter.personalizedRecommendationsEnabled.getter();
        if (v97 == 2)
        {
          v98 = v94;
        }

        else
        {
          v98 = v97;
        }

        [v96 setOn:v98 & 1];
        [v14 setAccessoryView:v96];
        v99 = [v14 textLabel];
        if (v99)
        {
          v100 = v99;
          v57 = &selRef_setRequiresColorStatistics_;
          if (v93)
          {
            v101 = String._bridgeToObjectiveC()();
          }

          else
          {
            v101 = 0;
          }

          [v100 setText:v101];
        }

        else
        {

          v57 = &selRef_setRequiresColorStatistics_;
        }

        [v14 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v52 + 8))(v18, v51);
      goto LABEL_55;
    }

    (*(v52 + 96))(v18, v51);
    v77 = [v14 textLabel];
    v66 = &selRef_loadView;
    if (v77)
    {
      v78 = v77;
      v79 = [objc_opt_self() secondaryLabelColor];
      [v78 setTextColor:v79];
    }

    v80 = [v14 textLabel];
    v57 = &selRef_setRequiresColorStatistics_;
    if (!v80)
    {
      goto LABEL_44;
    }

    v122 = v80;
    AccountSectionText.paragraph.getter();
    v81 = Paragraph.text.getter();

    v82 = [v126 traitCollection];
    v83 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v81];
    v126 = [v81 length];
    v84 = swift_allocObject();
    *(v84 + 16) = 0;
    *(v84 + 24) = v82;
    *(v84 + 32) = v83;
    *(v84 + 40) = 1;
    v85 = swift_allocObject();
    *(v85 + 16) = sub_10010279C;
    *(v85 + 24) = v84;
    v133 = sub_1001027AC;
    v134 = v85;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_1006606C4;
    v132 = &unk_1008CBC58;
    v86 = _Block_copy(&aBlock);
    v87 = v82;
    v88 = v83;

    [v81 enumerateAttributesInRange:0 options:v126 usingBlock:{0x100000, v86}];

    _Block_release(v86);
    LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

    if ((v86 & 1) == 0)
    {
      v89 = v122;
      [v122 setAttributedText:v88];

      v51 = v124;
      v43 = v125;
      v52 = v123;
LABEL_55:
      v57 = &selRef_setRequiresColorStatistics_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10002B894(v14, &qword_10098F170, qword_1007D9E58);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v52 + 96))(v18, v51);
  v60 = [v14 textLabel];
  if (v60)
  {
    v61 = v60;
    AccountSectionInfoListItem.title.getter();
    v62 = String._bridgeToObjectiveC()();

    [v61 setText:v62];
  }

  v63 = [v14 textLabel];
  v57 = &selRef_setRequiresColorStatistics_;
  if (v63)
  {
    v64 = v63;
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v65 = static UIColor.secondaryText.getter();
    [v64 setTextColor:v65];
  }

  v66 = &selRef_loadView;
  v67 = [v14 detailTextLabel];
  if (v67)
  {
    v68 = v67;
    AccountSectionInfoListItem.value.getter();
    v69 = String._bridgeToObjectiveC()();

    [v68 setText:v69];

    v66 = &selRef_loadView;
  }

LABEL_44:

LABEL_61:
  v102 = [v14 textLabel];
  if (v102)
  {
    v103 = v102;
    v104 = [v43 v57[35]];
    v105 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v105)
    {
      v106 = 2;
    }

    else
    {
      v106 = 0;
    }

    [v103 setTextAlignment:v106];
  }

  v107 = [v14 v66[373]];
  if (v107)
  {
    v108 = v107;
    v109 = [v43 v57[35]];
    v110 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v110)
    {
      v111 = 2;
    }

    else
    {
      v111 = 0;
    }

    [v108 setTextAlignment:v111];

    (*(v52 + 8))(v128, v51);
  }

  else
  {
    (*(v52 + 8))(v128, v51);
  }

  return v14;
}

void sub_10060CF54(void *a1, uint64_t a2)
{
  if ([a1 sender])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100005744(0, &qword_10098F180, UISwitch_ptr);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;

        [v4 isOn];
        dispatch thunk of GenericAccountPagePresenter.setPersonalizedRecommendationsEnabled(_:)();
      }
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0, &unk_1007B1A10);
  }
}

id sub_10060D198(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for AccountSection.ContentItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  if ((*(v6 + 88))(v9, v5) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v6 + 8))(v9, v5);
    result = [v3 tableView];
    if (result)
    {
      v11 = result;
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 dequeueReusableCellWithIdentifier:v12];

      if (!v13)
      {
        v14 = objc_allocWithZone(UITableViewCell);
        v15 = String._bridgeToObjectiveC()();
        v13 = [v14 initWithStyle:1 reuseIdentifier:v15];
      }

      return v13;
    }

    __break(1u);
  }

  else
  {
    result = [v3 tableView];
    if (result)
    {
      v16 = result;
      v17 = String._bridgeToObjectiveC()();
      v13 = [v16 dequeueReusableCellWithIdentifier:v17];

      if (!v13)
      {
        v18 = objc_allocWithZone(UITableViewCell);
        v19 = String._bridgeToObjectiveC()();
        v13 = [v18 initWithStyle:0 reuseIdentifier:v19];
      }

      (*(v6 + 8))(v9, v5);
      return v13;
    }
  }

  __break(1u);
  return result;
}

id sub_10060D458(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_10060D518(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = dispatch thunk of GenericAccountPagePresenter.title(forSection:)();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_10096EB20 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098F068, qword_10098F080);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v15 = v14;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v17 = v16;
      [a1 layoutMargins];
      v19 = v18;
      v20 = [v2 tableView];
      if (v20)
      {
        v21 = v20;
        [v20 layoutMargins];
        v23 = v22;

        v24 = [v3 tableView];
        if (v24)
        {
          v25 = v24;
          v26 = v17 + v23;
          [v24 layoutMargins];
          v28 = v27;

          [a1 frame];
          Width = CGRectGetWidth(v31);
          sub_10060FF98(v12, v13, a1, Width, 1.79769313e308, 0.0, v26, v15, v19 + v28);

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_10060D7DC(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8AppStore10HeaderViewCMa_0();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v33 = a2;
    v12 = dispatch thunk of GenericAccountPagePresenter.title(forSection:)();
    if (v13)
    {
      v31[1] = v12;
      v32 = v3;
      v14 = qword_10096EB20;
      v15 = v33;
      if (v14 != -1)
      {
        swift_once();
      }

      sub_10002A400(qword_10098F068, qword_10098F080);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v17 = v16;
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      v19 = v18;
      [a1 layoutMargins];
      [v11 setLayoutMargins:{0.0, v19, v17}];

      v20 = v15;
      v21 = [v11 textLabel];
      if (v21)
      {
        v22 = v21;
        v23 = String._bridgeToObjectiveC()();

        [v22 setText:v23];
      }

      else
      {
      }

      v27 = [v11 textLabel];

      if (v27)
      {
        v28 = [v32 traitCollection];
        v29 = UITraitCollection.prefersRightToLeftLayouts.getter();

        if (v29)
        {
          v30 = 2;
        }

        else
        {
          v30 = 0;
        }

        [v27 setTextAlignment:v30];
      }
    }

    else
    {
      v24 = [v11 textLabel];
      if (v24)
      {
        v25 = v24;
        [v24 setText:0];
      }

      v26 = v33;
    }
  }
}

uint64_t sub_10060DB98(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for AccountSectionLink.LinkDisplayType();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = type metadata accessor for AccountSectionLink();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10098F170, qword_1007D9E58);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = type metadata accessor for AccountSection.ContentItem();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_presenter);
  result = dispatch thunk of GenericAccountPagePresenter.action(at:)();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
      *v28 = static OS_dispatch_queue.main.getter();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = _dispatchPreconditionTest(_:)();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_100975F50;
      v92 = xmmword_100975F60;
      v93 = xmmword_100975F70;
      v89 = xmmword_100975F30;
      v90 = xmmword_100975F40;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_100975F30;
      v101[1] = xmmword_100975F40;
      v101[3] = xmmword_100975F60;
      v101[4] = xmmword_100975F70;
      v94 = qword_100975F80;
      v100 = v88;
      v102 = qword_100975F80;
      v101[2] = xmmword_100975F50;
      sub_100357ED0(&v89, v81);
      xmmword_100975F50 = v97;
      xmmword_100975F60 = v98;
      xmmword_100975F70 = v99;
      qword_100975F80 = v100;
      xmmword_100975F30 = v95;
      xmmword_100975F40 = v96;
      sub_10002B894(v101, &unk_10097F520, &unk_1007BA430);
      v45 = *(v77 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph);
      v46 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      sub_10019DADC(&v83, v81);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10002B894(v24, &unk_100972A00, &unk_1007B3130);
      }

      else
      {

        sub_1005F9AF4(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_100975F50;
      v81[3] = xmmword_100975F60;
      v81[4] = xmmword_100975F70;
      v82 = qword_100975F80;
      v81[0] = xmmword_100975F30;
      v81[1] = xmmword_100975F40;
      xmmword_100975F30 = v89;
      xmmword_100975F40 = v90;
      xmmword_100975F50 = v91;
      xmmword_100975F60 = v92;
      xmmword_100975F70 = v93;
      qword_100975F80 = v94;
      sub_10002B894(v81, &unk_10097F520, &unk_1007BA430);
      sub_10019DB38(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_objectGraph);
      v49 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10002B894(v21, &unk_100972A00, &unk_1007B3130);
      }

      else
      {

        sub_1005F9AF4(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    dispatch thunk of GenericAccountPagePresenter.contentItem(at:)();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10002B894(v13, &qword_10098F170, qword_1007D9E58);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    AccountSectionLink.displayType.getter();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_1006106AC(&qword_10098F178, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType, &protocol conformance descriptor for AccountSectionLink.LinkDisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

void sub_10060E70C(void *a1, uint64_t a2)
{
  v4 = sub_10060EB38(a1, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [v2 tableView];
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = v11;
  [v11 layoutMargins];
  v14 = v13;

  v15 = [v2 tableView];
  if (!v15)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 layoutMargins];
  v18 = v17;

  if (dispatch thunk of GenericAccountPagePresenter.footer(forSection:)())
  {
    v19 = v6 + v14;
    [a1 frame];
    Width = CGRectGetWidth(v23);
    v21 = LinkableText.plainText.getter();
    sub_1006102BC(v21, v22, a1, Width, 1.79769313e308, v4, v19, v8, v10 + v18);
  }
}

void sub_10060E8B4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (dispatch thunk of GenericAccountPagePresenter.footer(forSection:)())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_10060EB38(a1, a3)}];

      v11 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
      v13 = LinkableText.linkedSubstrings.getter();
      sub_1000D6F24(v13, sub_1000C17B0);
      v15 = v14;

      v16 = LinkableText.styledText.getter();
      sub_1002F6004(v16, 0, v15);

      v19 = *&v8[v11];
      v17 = [v3 traitCollection];
      LOBYTE(v15) = UITraitCollection.prefersRightToLeftLayouts.getter();

      if (v15)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      [v19 setTextAlignment:v18];
    }

    else
    {
      v19 = *&v8[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
      sub_1002F62D8();
    }
  }
}

double sub_10060EB38(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch thunk of GenericAccountPagePresenter.numberOfSections.getter();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v13[1] = 0x4041800000000000;
    static Dimensions.defaultRoundingRule.getter();
  }

  else
  {
    if (qword_10096EB08 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098EFF0, qword_10098F008);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  }

  AnyDimension.value(in:rounded:)();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_10096EB18 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10002A400(qword_10098F040, qword_10098F058);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v11 = v10;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v11;
}

void sub_10060EDB0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  dispatch thunk of GenericAccountPagePresenter.title.getter();
  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060EE8C()
{
  v1 = v0;
  v2 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v2 - 8);
  if (dispatch thunk of GenericAccountPagePresenter.numberOfSections.getter())
  {
    v3 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }

    __break(1u);
  }

  else
  {
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v8 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v9 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    v10 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      static ViewControllerContainment.add(_:to:frame:)();
      return;
    }
  }

  __break(1u);
}

id sub_10060F084()
{
  v1 = OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32GenericAccountPageViewController_overlayViewController];
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

uint64_t sub_10060F250()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_10098F0A8);
  sub_1000056A8(v0, qword_10098F0A8);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_10060F2EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v5, qword_1009D1748);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel(0));
  *&v3[v9] = sub_1002F5B8C(v8, 0, 0, 0);
  if (a2)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
  v17 = qword_10096EB30;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_1000056A8(v20, qword_10098F0A8);
  v28[0] = v18;
  v21 = v18;
  Conditional.evaluate(with:)();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_10060F774()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  CGSize.rounded(_:)();
  (*(v3 + 8))(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  v13 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();

  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v7 setFrame:?];
}

uint64_t sub_10060FA0C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (result = UITraitCollection.prefersRightToLeftLayouts.getter(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC8AppStoreP33_4C3663C3DFD2A515EF9390A728D5E4B118LinkableFooterView_linkedLabel];
    if (qword_10096EB30 != -1)
    {
      swift_once();
    }

    v8 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v8, qword_10098F0A8);
    v10 = v2;
    v9 = v2;
    Conditional.evaluate(with:)();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_10060FBFC()
{
  v5.receiver = v0;
  v5.super_class = _s8AppStore10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    LayoutMarginsAware<>.layoutFrame.getter();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();

    CGRect.withLayoutDirection(in:relativeTo:)();
    [v3 setFrame:?];
  }
}

id sub_10060FEAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10060FF98(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E2D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  sub_1000056A8(v14, qword_1009D1808);
  v15 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v16 = type metadata accessor for Feature();
  v22[3] = v16;
  v22[4] = sub_1006106AC(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v17 = sub_1000056E0(v22);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  isFeatureEnabled(_:)();
  sub_100007000(v22);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  CGSize.subtracting(insets:)();
  sub_1006106AC(qword_100982720, 255, &type metadata accessor for LabelPlaceholderCompatibility, &protocol conformance descriptor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  return v19;
}

double sub_1006102BC(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v25[1] = a1;
  v25[2] = a2;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LabelPlaceholderCompatibility();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGSize.subtracting(insets:)();
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  sub_1000056A8(v18, qword_1009D1748);
  v19 = [a3 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v20 = type metadata accessor for Feature();
  v27 = v20;
  v28 = sub_1006106AC(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v21 = sub_1000056E0(v26);
  (*(*(v20 - 8) + 104))(v21, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  isFeatureEnabled(_:)();
  sub_100007000(v26);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v15 + 8))(v17, v14);
  sub_10002A400(v26, v27);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  (*(v11 + 104))(v13, enum case for FloatingPointRoundingRule.up(_:), v10);
  CGSize.rounded(_:)();
  v23 = v22;
  (*(v11 + 8))(v13, v10);
  sub_100007000(v26);
  return v23;
}

uint64_t sub_1006106AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1006106F4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v3);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  v6 = type metadata accessor for ComponentSeparator();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

char *sub_100610808(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D0E48);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  v35 = *&v30[v32];
  sub_100028BB8();
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_100610C38()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PreorderDisclaimerLayout();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = type metadata accessor for DynamicTypeLabel();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  PreorderDisclaimerLayout.init(disclaimer:)();
  [v0 bounds];
  PreorderDisclaimerLayout.placeChildren(relativeTo:in:)();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell(uint64_t a1)
{
  result = qword_10098F1D0;
  if (!qword_10098F1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100610EF0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0E48);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100611234(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v5 collectionView];
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v15;
  v17 = &selRef__setDefaultAttributes_;
  [v16 bounds];
  v18 = [v5 layoutAttributesForElementsInRect:?];
  if (!v18 || ((v19 = v18, sub_10025A08C(), v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v19, v20 >> 62) ? (v21 = _CocoaArrayWrapper.endIndex.getter()) : (v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v21))
  {

LABEL_17:
    v52 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v57.receiver = v5;
    v57.super_class = v52;
    objc_msgSendSuper2(&v57, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v22 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v56.receiver = v5;
  v56.super_class = v22;
  objc_msgSendSuper2(&v56, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v16 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v58.origin.x = v24;
  v58.origin.y = v26;
  v58.size.width = v28;
  v58.size.height = v30;
  Width = CGRectGetWidth(v58);
  [v5 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v32) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v33 = [v16 numberOfItemsInSection:0];
  if ((v33 & 0x8000000000000000) == 0)
  {
    if (v33)
    {
      v53 = a3;
      v34 = 0;
      v54 = (v11 + 8);
      v35 = 0.0;
      v55 = xmmword_1007B1890;
      do
      {
        v37 = v33;
        v38 = v17;
        sub_10002849C(&qword_100980550, &qword_1007B1290);
        v39 = swift_allocObject();
        *(v39 + 16) = v55;
        *(v39 + 32) = 0;
        *(v39 + 40) = v34;
        IndexPath.init(arrayLiteral:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*v54)(v14, v10);
        v41 = [v5 layoutAttributesForItemAtIndexPath:isa];

        if (!v41)
        {
          break;
        }

        v17 = v38;
        [v41 v38[378]];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;

        v59.origin.x = v43;
        v59.origin.y = v45;
        v59.size.width = v47;
        v59.size.height = v49;
        v50 = CGRectGetWidth(v59);
        [v5 minimumLineSpacing];
        if (v35 < a1 && v35 + v50 + v51 > a1)
        {
          break;
        }

        ++v34;
        [v5 minimumLineSpacing];
        v35 = v35 + v50 + v36;
        v33 = v37;
      }

      while (v37 != v34);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_1006116B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100611708@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell(uint64_t a1)
{
  result = qword_10098F230;
  if (!qword_10098F230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100611864(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v4 = type metadata accessor for Accessory(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v7 - 8);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = sub_10002849C(&qword_100984348, qword_1007DE850);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  swift_beginAccess();
  v17 = *(v13 + 56);
  v28 = a1;
  sub_100031660(a1, v15, &qword_100984340, qword_1007C0830);
  sub_100031660(v2 + v16, &v15[v17], &qword_100984340, qword_1007C0830);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) == 1)
  {
    if (v18(&v15[v17], 1, v4) == 1)
    {
      sub_10002B894(v15, &qword_100984340, qword_1007C0830);
      return;
    }
  }

  else
  {
    sub_100031660(v15, v11, &qword_100984340, qword_1007C0830);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      v23 = v25;
      sub_1000561D8(&v15[v17], v25);
      v24 = sub_1000C6830(v11, v23);
      sub_1000C7C80(v23);
      sub_1000C7C80(v11);
      sub_10002B894(v15, &qword_100984340, qword_1007C0830);
      if (v24)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000C7C80(v11);
  }

  sub_10002B894(v15, &qword_100984348, qword_1007DE850);
LABEL_7:
  swift_beginAccess();
  v19 = v28;
  sub_1006148B0(v28, v2 + v16);
  swift_endAccess();
  v20 = v27;
  sub_100031660(v19, v27, &qword_100984340, qword_1007C0830);
  if (v18(v20, 1, v4) == 1)
  {
    sub_10002B894(v20, &qword_100984340, qword_1007C0830);
    sub_1006122E8(0);
  }

  else
  {
    sub_1000C4450(v26);
    v22 = v21;
    sub_1000C7C80(v20);
    sub_1006122E8(v22);
  }
}

void sub_100611C08(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
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
    [v1 addSubview:v6];
  }
}

uint64_t sub_100611CB0()
{
  v0 = type metadata accessor for ActionLayout.Metrics();
  sub_100005644(v0, qword_1009D2F68);
  v1 = sub_1000056A8(v0, qword_1009D2F68);
  return sub_100611CFC(v1);
}

uint64_t sub_100611CFC@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v42 = type metadata accessor for FontSource();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v49 = &v37 - v3;
  v4 = sub_10002849C(&unk_10098F2D0, &unk_1007DA050);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v58 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v55 = _Q0;
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for CGSize(0);
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v58 = xmmword_1007D9F50;
  v55 = xmmword_1007D9F60;
  Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
  v22 = *(v8 + 16);
  v43 = v10;
  v39 = v16;
  v22(v10, v16, v7);
  v41 = v13;
  v22(v6, v13, v7);
  v45 = v8;
  v46 = v6;
  v23 = *(v8 + 56);
  v47 = v7;
  v23(v6, 0, 1, v7);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v58.i64[0] = 0x4034000000000000;
  v56 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v54[14] = &protocol witness table for Double;
  *&v55 = 0x4048000000000000;
  v54[13] = &type metadata for Double;
  v54[10] = 0x4028000000000000;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v38 = sub_1000056A8(v24, qword_1009D05F0);
  v25 = *(*(v24 - 8) + 16);
  v26 = v49;
  v25(v49, v38, v24);
  v27 = enum case for FontSource.useCase(_:);
  v28 = v40;
  v29 = v26;
  v30 = *(v40 + 104);
  v31 = v42;
  v30(v29, enum case for FontSource.useCase(_:), v42);
  v54[8] = &type metadata for Double;
  v54[9] = &protocol witness table for Double;
  v54[5] = 0x4022000000000000;
  v32 = v44;
  v25(v44, v38, v24);
  v30(v32, v27, v31);
  v54[3] = type metadata accessor for StaticDimension();
  v54[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v54);
  v52 = v31;
  v53 = &protocol witness table for FontSource;
  v33 = sub_1000056E0(v51);
  (*(v28 + 16))(v33, v32, v31);
  StaticDimension.init(_:scaledLike:)();
  (*(v28 + 8))(v32, v31);
  v53 = &protocol witness table for Double;
  v52 = &type metadata for Double;
  v51[0] = 0x4020000000000000;
  v50[3] = type metadata accessor for ZeroDimension();
  v50[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v50);
  static ZeroDimension.zero.getter();
  ActionLayout.Metrics.init(artworkSize:maxArtworkSize:artworkMargin:artworkLeadingMargin:labelWithArtworkLeadingMargin:accessoryMargin:labelFontSource:labelVerticalMargin:searchAdButtonTopMargin:searchAdButtonLeadingMargin:shouldLabelFitAvailableWidth:)();
  v34 = *(v45 + 8);
  v35 = v47;
  v34(v41, v47);
  return (v34)(v39, v35);
}

uint64_t sub_10061224C()
{
  v0 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
  sub_100005644(v0, qword_10098F240);
  sub_1000056A8(v0, qword_10098F240);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006122E8(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
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
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1006123AC()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  }

  else
  {
    swift_beginAccess();
    ActionLayout.Metrics.artworkSize.getter();
    swift_endAccess();
    v9 = [v0 traitCollection];
    Conditional.evaluate<>(in:)();

    (*(v3 + 8))(v5, v2);
    v10 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v17[1], v17[2]}];
    v11 = [objc_opt_self() clearColor];
    ArtworkView.backgroundColor.setter();
    [v10 setHidden:1];
    v12 = *&v1[v6];
    v13 = v10;
    if (v12)
    {
      [v12 removeFromSuperview];
      v12 = *&v1[v6];
    }

    *&v1[v6] = v10;
    v8 = v10;

    v14 = [v1 contentView];
    [v14 addSubview:v8];

    v7 = 0;
  }

  v15 = v7;
  return v8;
}

char *sub_1006125E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory(0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = 0;
  v20 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for ActionLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D2F68);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = &v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView] = 0;
  v26 = &v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction];
  *v26 = 0;
  v26[1] = 0;
  if (qword_10096DCC8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, qword_1009D05F0);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v17, v28, v27);
  (*(v29 + 56))(v17, 0, 1, v27);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView] = v31;
  v49.receiver = v5;
  v49.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 layer];
  [v33 setAllowsGroupOpacity:0];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v37 = [v32 contentView];
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v38 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v39 = static UIColor.tableViewCellSelectedBackground.getter();
  [v38 setBackgroundColor:v39];

  [v38 setOpaque:0];
  [v38 setUserInteractionEnabled:0];
  [v32 setSelectedBackgroundView:v38];
  v40 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView;
  v41 = *&v32[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  v42 = static UIColor.defaultLine.getter();
  [v41 setBackgroundColor:v42];

  [*&v32[v40] setHidden:0];
  v43 = [v32 contentView];
  [v43 addSubview:*&v32[v40]];

  v44 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel;
  [*&v32[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel] setLineBreakMode:0];
  v45 = *&v32[v44];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v44]];

  sub_100612CB8();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007B10D0;
  *(v47 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v47 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v32;
}

void sub_100612CB8()
{
  v1 = v0;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1006123AC();
  swift_beginAccess();
  ActionLayout.Metrics.labelFontSource.getter();
  swift_endAccess();
  v7 = [v0 traitCollection];
  isa = FontSource.font(compatibleWith:)(v7).super.isa;

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() configurationWithFont:isa scale:1];

  ArtworkView.preferredSymbolConfiguration.setter();
  v10 = sub_1006123AC();
  LOBYTE(v6) = ArtworkView.isDisplayingSymbolImage.getter();

  if (v6)
  {
    v11 = sub_1006123AC();
    v12 = ArtworkView.preferredSymbolConfiguration.getter();

    if (v12)
    {
      v13 = sub_1006123AC();
      v14 = ArtworkView.image.getter();

      if (v14)
      {
        v15 = [v14 imageWithConfiguration:v12];

        [v15 size];
        v17 = v16;
        v19 = v18;

        v20 = &v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
        *v20 = v17;
        *(v20 + 1) = v19;
        v20[16] = 0;
        [v1 setNeedsLayout];
      }
    }
  }
}

uint64_t sub_100612F40()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = type metadata accessor for LayoutRect();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ActionLayout();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - v7;
  v9 = type metadata accessor for ActionLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v13);
  v16 = [v1 contentView];
  v17 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [v1 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v28 = v27;

  v29 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  swift_beginAccess();
  v74 = v10;
  v30 = *(v10 + 16);
  v80 = v15;
  v30(v15, &v1[v29], v9);
  v31 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  v78 = v9;
  if (v32)
  {
    v33 = &v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
    if ((v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (v35 = *v33, v34 = v33[1], *v33 == 0.0) && v34 == 0.0)
    {
      v70 = v6;
      v36 = qword_10096EB38;
      v37 = v32;
      if (v36 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v9, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      v38 = [v1 traitCollection];
      Conditional.evaluate<>(in:)();

      v9 = v78;
      (*(v70 + 8))(v8, v5);
      v35 = v83;
      v34 = v84;
    }

    else
    {
      v37 = v32;
    }

    v39 = ArtworkView.frame.modify();
    *(v40 + 16) = v35;
    *(v40 + 24) = v34;
    v39(&v83, 0);
  }

  if (v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] == 1)
  {
    v41 = *&v1[v31];
    if (v41)
    {
      v42 = type metadata accessor for ArtworkView();
      v43 = v41;
      v44 = &protocol witness table for UIView;
      goto LABEL_15;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = 0;
  v44 = 0;
LABEL_15:
  v83 = *&v41;
  v84 = 0.0;
  v85 = 0;
  v86 = v42;
  v87 = v44;
  v30(v79, v80, v9);
  sub_100031660(&v83, v82, &qword_100975610, &qword_1007B5690);
  v45 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  v46 = type metadata accessor for DynamicTypeLabel();
  v81[14] = &protocol witness table for UILabel;
  v81[13] = v46;
  v81[10] = v45;
  v47 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
  if (v47)
  {
    v48 = &protocol witness table for UIView;
    v49 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView];
  }

  else
  {
    v49 = 0;
    v17 = 0;
    v48 = 0;
    v81[7] = 0;
    v81[6] = 0;
  }

  v81[5] = v49;
  v81[8] = v17;
  v81[9] = v48;
  v50 = *&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton];
  if (v50)
  {
    v51 = type metadata accessor for SearchAdTransparencyButton(0);
    v52 = &protocol witness table for UIView;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v81[2] = 0;
    v81[1] = 0;
  }

  v53 = v21 + v28;
  v54 = v25 - v28;
  v81[0] = v50;
  v81[3] = v51;
  v81[4] = v52;
  v55 = *&v1[v31];
  v56 = v55;
  v57 = v50;
  v58 = v45;
  v59 = v47;

  if (v55)
  {
    ArtworkView.imageBaselineOffsetFromBottom.getter();
  }

  swift_unknownObjectRetain();
  v60 = v75;
  ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)();
  v61 = v71;
  ActionLayout.placeChildren(relativeTo:in:)();
  (*(v72 + 8))(v61, v73);
  v62 = [v1 traitCollection];
  LOBYTE(v61) = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v61)
  {
    v63 = v19;
    v64 = v53;
    v65 = v23;
    v66 = v25 - v28;
  }

  else
  {
    [v58 frame];
  }

  MinX = CGRectGetMinX(*&v63);
  [v1 bounds];
  MaxY = CGRectGetMaxY(v89);
  v90.origin.x = v19;
  v90.origin.y = v53;
  v90.size.width = v23;
  v90.size.height = v54;
  [*&v1[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView] setFrame:{MinX, MaxY - v28, CGRectGetWidth(v90), v28}];
  (*(v76 + 8))(v60, v77);
  sub_10002B894(&v83, &qword_100975610, &qword_1007B5690);
  return (*(v74 + 8))(v80, v78);
}

double sub_10061376C()
{
  v1 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v5 = &v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
  if ((v0[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize + 16] & 1) != 0 || (result = *v5, *v5 == 0.0) && v5[1] == 0.0)
  {
    if (qword_10096EB38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for ActionLayout.Metrics();
    sub_1000056A8(v7, qword_1009D2F68);
    ActionLayout.Metrics.artworkSize.getter();
    v8 = [v0 traitCollection];
    Conditional.evaluate<>(in:)();

    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return result;
}

void sub_100613930(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "traitCollectionDidChange:", a1, v7);
  v10 = [v2 traitCollection];
  v11 = [v10 layoutDirection];

  if (!a1 || v11 != [a1 layoutDirection])
  {
    if (qword_10096EB40 != -1)
    {
      swift_once();
    }

    v12 = sub_10002849C(&unk_100972EC0, &unk_1007B4150);
    sub_1000056A8(v12, qword_10098F240);
    v13 = [v2 traitCollection];
    Conditional.evaluate<>(in:)();

    UILabel.alignment.setter();
  }

  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_100612CB8();
    v22 = *&v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
    swift_beginAccess();
    ActionLayout.Metrics.labelFontSource.getter();
    swift_endAccess();
    v23 = [v2 traitCollection];
    isa = FontSource.font(compatibleWith:)(v23).super.isa;

    (*(v6 + 8))(v9, v5);
    [v22 setFont:isa];

    [v2 setNeedsLayout];
    return;
  }

  v16 = [a1 preferredContentSizeCategory];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {

    return;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }
}

void sub_100613CEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v34 = *(v8 - 8);
  v35 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for ActionLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artwork.Crop();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v33 = a2;
    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 1;

    Artwork.crop.getter();
    v32 = Artwork.Crop.preferredContentMode.getter();
    (*(v16 + 8))(v18, v15);
    v19 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v19], v11);
    v20 = sub_100615280(a1, v14, v3);
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = &v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize];
    *v23 = v20;
    v23[1] = v22;
    *(v23 + 16) = 0;
    if (v20 == 0.0 && v22 == 0.0)
    {
      if (qword_10096EB38 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v11, qword_1009D2F68);
      ActionLayout.Metrics.artworkSize.getter();
      v24 = [v3 traitCollection];
      v25 = v35;
      Conditional.evaluate<>(in:)();

      (*(v34 + 8))(v10, v25);
    }

    Artwork.config(using:)();
    v26 = sub_1006123AC();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v26 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v27 = sub_1006123AC();
    [v27 setContentMode:v32];

    v38 = v3;
    sub_100615520(&qword_10098F2E0, type metadata accessor for ActionCollectionViewCell, &protocol conformance descriptor for NSObject);
    v28 = v3;
    AnyHashable.init<A>(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v39, &qword_10096FB90, &qword_1007B2A50);
  }

  else
  {
    v29 = sub_1006123AC();
    v40.value.super.isa = 0;
    v40.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v40, v30);

    v3[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
  }
}

void sub_100614250(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1006123AC();

    v15.is_nil = (a2 & 1) == 0;
    v15.value.super.isa = a1;
    ArtworkView.show(image:isAnimationPermitted:)(v15, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    sub_100612CB8();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];
  }
}

uint64_t type metadata accessor for ActionCollectionViewCell(uint64_t a1)
{
  result = qword_10098F2B0;
  if (!qword_10098F2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006145B0(uint64_t a1)
{
  sub_100614734(319, &qword_100984180, type metadata accessor for Accessory);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActionLayout.Metrics();
    if (v2 <= 0x3F)
    {
      sub_100614734(319, &qword_100973090, &type metadata accessor for ItemLayoutContext);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100614734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_100614794(uint64_t a1, uint64_t a2)
{
  v2 = sub_1006123AC();
  ArtworkView.isImageHidden.setter();

  v3 = sub_1006123AC();
  type metadata accessor for ArtworkView();
  sub_100615520(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_100614858(uint64_t a1)
{
  result = sub_100615520(&qword_10098F2C0, type metadata accessor for ActionCollectionViewCell, &unk_1007DA000);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1006148B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340, qword_1007C0830);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100614920(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, uint64_t a15)
{
  v63 = a7;
  v58 = a6;
  v62 = a4;
  v61 = a3;
  v72 = a2;
  v70 = a1;
  v65 = type metadata accessor for ActionLayout.Metrics();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v66 = &v57[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for ActionLayout();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v60 = type metadata accessor for LabelPlaceholderCompatibility();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for FontSource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v57[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for Accessory(0);
  __chkstk_darwin(v24);
  v26 = &v57[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v57[-v29];
  v71 = 0;
  if (a5)
  {
    ActionLayout.Metrics.artworkSize.getter();
    v75 = *&v72;
    Conditional.evaluate(with:)();
    (*(v28 + 8))(v30, v27);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v71 = LayoutViewPlaceholder.init(representing:)();
  }

  if (v58)
  {
    swift_storeEnumTagMultiPayload();
    v31 = v72;
    v32 = [v72 traitCollection];
    sub_1000C571C(v32);

    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v33 = LayoutViewPlaceholder.init(representing:)();
    sub_1000C7C80(v26);
  }

  else
  {
    v33 = 0;
    v31 = v72;
  }

  v34 = v70;
  ActionLayout.Metrics.labelFontSource.getter();
  v35 = [v31 traitCollection];
  isa = FontSource.font(compatibleWith:)(v35).super.isa;

  (*(v21 + 8))(v23, v20);
  v37 = type metadata accessor for Feature();
  v80[3] = v37;
  v80[4] = sub_100615520(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v38 = sub_1000056E0(v80);
  (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);

  v39 = isa;
  isFeatureEnabled(_:)();
  sub_100007000(v80);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v59 + 8))(v19, v60);
  v40 = 0;
  if (v63)
  {
    v41 = [v31 traitCollection];
    sub_100118D54(v41, 0, 0);

    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v40 = LayoutViewPlaceholder.init(representing:)();
  }

  (*(v64 + 16))(v66, v34, v65);
  v42 = v71;
  if (v71)
  {
    v43 = type metadata accessor for LayoutViewPlaceholder();
    v44 = &protocol witness table for LayoutViewPlaceholder;
    v45 = *&v42;
  }

  else
  {
    v45 = 0.0;
    v43 = 0;
    v44 = 0;
    v76 = 0;
    v77 = 0;
  }

  v75 = v45;
  v78 = v43;
  v79 = v44;
  sub_10002C0AC(v80, v74);
  if (v33)
  {
    v46 = type metadata accessor for LayoutViewPlaceholder();
    v47 = &protocol witness table for LayoutViewPlaceholder;
    v48 = v33;
  }

  else
  {
    v48 = 0;
    v46 = 0;
    v47 = 0;
    v73[7] = 0;
    v73[6] = 0;
  }

  v73[5] = v48;
  v73[8] = v46;
  v73[9] = v47;
  v49 = 0;
  if (v40)
  {
    v49 = type metadata accessor for LayoutViewPlaceholder();
    v50 = &protocol witness table for LayoutViewPlaceholder;
  }

  else
  {
    v50 = 0;
    v73[2] = 0;
    v73[1] = 0;
  }

  v73[0] = v40;
  v73[3] = v49;
  v73[4] = v50;
  swift_unknownObjectRetain();
  v51 = v67;
  ActionLayout.init(metrics:artworkView:labelView:accessoryView:searchAdButton:artworkBaselineOffsetFromBottom:isDisplayingSearchTrendingItem:restrictArtworkSizeToMetrics:in:)();
  CGSize.subtracting(insets:)();
  sub_100615520(&qword_10098F2C8, &type metadata accessor for ActionLayout, &protocol conformance descriptor for ActionLayout);
  v52 = v69;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v75 = v53;
  v76 = v54;
  CGSize.add(outsets:)();
  v55 = [v31 traitCollection];
  static Separator.thickness(compatibleWith:)();

  (*(v68 + 8))(v51, v52);
  sub_100007000(v80);
  return v75;
}

double sub_100615214(uint64_t a1, void *a2, double a3, double a4)
{
  static ActionLayout.estimatedMeasurements(fitting:using:in:)();
  v6 = v5;
  v7 = [a2 traitCollection];
  static Separator.thickness(compatibleWith:)();

  return v6;
}

double sub_100615280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100970EA0, &unk_1007B2210);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10002849C(&unk_10098F2D0, &unk_1007DA050);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for AspectRatio();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  ActionLayout.Metrics.maxArtworkSize.getter();
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10002B894(v10, &unk_10098F2D0, &unk_1007DA050);
    ActionLayout.Metrics.artworkSize.getter();
    v19 = a3;
    Conditional.evaluate(with:)();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = a3;
    Conditional.evaluate(with:)();
    (*(v5 + 8))(v10, v4);
  }

  AspectRatio.maxSize(fitting:)();
  v16 = v15;
  (*(v12 + 8))(v14, v11);
  return v16;
}

uint64_t sub_100615520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100615570()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryView) = 0;
  v1 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessory;
  v2 = type metadata accessor for Accessory(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_searchAdTransparencyButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isDisplayingSearchTrendingAction) = 0;
  v3 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_layoutMetrics;
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ActionLayout.Metrics();
  v5 = sub_1000056A8(v4, qword_1009D2F68);
  (*(*(v4 - 8) + 16))(v0 + v3, v5, v4);
  v6 = v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_artworkSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_itemLayoutContext;
  v8 = type metadata accessor for ItemLayoutContext();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100615954(uint64_t a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SearchBar();
  v2 = objc_msgSendSuper2(&v11, "keyCommands");
  if (v2)
  {
    v3 = v2;
    sub_100005744(0, &qword_100982610, UIKeyCommand_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v12 = v4;
  v5 = UIKeyInputEscape;
  v6._object = 0x800000010080FCC0;
  v6._countAndFlagsBits = 0xD000000000000035;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  localizedString(_:comment:)(v6, v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() keyCommandWithInput:v5 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v8];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v12;
}

void sub_100615BAC()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v3._object = 0x800000010081DAF0;
    v3._countAndFlagsBits = 0xD000000000000012;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    localizedString(_:comment:)(v3, v4);
    v5 = String._bridgeToObjectiveC()();
    sub_10002849C(&unk_100973960, &unk_1007B4930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    *(inited + 40) = v2;
    v7 = NSFontAttributeName;
    v8 = v2;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10005DC58(inited + 32);
    type metadata accessor for Key(0);
    sub_10006F0F0();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 sizeWithAttributes:isa];
    v11 = v10;

    v12 = [v0 searchTextField];
    v13 = [v0 searchTextField];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v12 textRectForBounds:{v15, v17, v19, v21}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v33.origin.x = v23;
    v33.origin.y = v25;
    v33.size.width = v27;
    v33.size.height = v29;
    if (ceil(v11) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x800000010081DB10;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      localizedString(_:comment:)(v30, v31);
    }

    v32 = String._bridgeToObjectiveC()();

    [v0 setPlaceholder:v32];
  }
}

id sub_100615E68(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100615F0C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppShowcase();
  sub_1006160B0(&qword_10098BB38, &type metadata accessor for AppShowcase, &protocol conformance descriptor for AppShowcase);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v14;
  if (!v14)
  {
    return 0.0;
  }

  v5 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v7 = v6;
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  sub_100104C50(v4, v5, v7, v9);
  v11 = v10;

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_1006160B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006160F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10018957C();
  result = sub_100616368(a1, v7);
  if (result)
  {
    v9 = TodayCard.backgroundColor.getter();
    if (!v9)
    {
      v10 = Artwork.backgroundColor.getter();
      if (!v10)
      {
LABEL_6:
        v13[3] = type metadata accessor for TodayCard();
        v13[4] = &protocol witness table for TodayCard;
        v13[0] = a1;
        type metadata accessor for ArtworkLoader();

        BaseObjectGraph.inject<A>(_:)();
        (*((swift_isaMask & *v4) + 0xE0))(v13, v12, a3);

        return sub_100007000(v13);
      }

      v11 = v10;
      [*(v4 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView) setBackgroundColor:v10];
      v9 = v11;
    }

    goto LABEL_6;
  }

  return result;
}

id sub_100616238()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v1 setImage:0];

  return [v1 setBackgroundColor:0];
}

uint64_t sub_100616294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
  [v4 setImage:0];
  sub_10019FDD0();
  sub_1006174BC(&qword_10098BC70, sub_10019FDD0, &protocol conformance descriptor for NSObject);
  v5 = v4;
  AnyHashable.init<A>(_:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v7);
}

uint64_t sub_100616368(uint64_t a1, __n128 a2)
{
  if (!a1 || (v3 = v2, v13[0] = TodayCard.media.getter(), type metadata accessor for TodayCardMedia(), sub_10002849C(&qword_100972DD0, qword_1007B3FF0), (swift_dynamicCast() & 1) == 0))
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_8;
  }

  if (!*(&v11 + 1))
  {
LABEL_8:
    sub_10002B894(&v10, &qword_100972DD8, &qword_1007C83C0);
    return 0;
  }

  sub_100005A38(&v10, v13);
  sub_10002A400(v13, v14);
  v4 = [v2 traitCollection];
  v5 = TodayCardMediaWithArtwork.artwork(for:)();

  v6 = v5;
  if (!v5)
  {
    sub_10002A400(v13, v14);
    v7 = [v3 traitCollection];
    v8 = TodayCardMediaWithArtwork.video(for:)();

    if (v8)
    {
      v6 = Video.preview.getter();
    }

    else
    {
      v6 = 0;
    }
  }

  sub_100007000(v13);
  return v6;
}

char *sub_1006164EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView];
  v13 = v10;
  [v12 setContentMode:4];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [*&v13[OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_mainContentView] insertSubview:*&v10[v11] atIndex:0];

  return v13;
}

void sub_1006166AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Artwork.Crop();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    ArtworkLoaderConfig.crop.getter();
    v13 = Artwork.Crop.preferredContentMode.getter();
    (*(v7 + 8))(v9, v6);
    [v12 setContentMode:v13];
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = *(v14 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);

    [v16 setImage:a1];
  }
}

id sub_100616854()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TodayBrickCollectionViewCellWithBackground(uint64_t a1)
{
  result = qword_10098F338;
  if (!qword_10098F338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006168F0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = type metadata accessor for Artwork.Crop();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AspectRatio();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v35 = *(v10 - 8);
  v36 = v10;
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097DBD0, &qword_1007BC750);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore32BaseTodayBrickCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000A833C(v2 + v20, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &qword_10097DBD0, &qword_1007BC750);
    return;
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_10002C0AC(a1, v41);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for TodayCard();
  if (swift_dynamicCast())
  {
    v32 = v40;
    sub_10002C0AC(a1, v41);
    if (swift_dynamicCast())
    {
      v22 = v40;
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_100616368(v22, v21);

    if (v23)
    {
      v31 = v2;
      v24 = [v2 traitCollection];
      sub_100187A84(v24, v12);
      PageGrid.componentMeasuringSize(spanning:)();
      SmallStoryCardLayout.Metrics.contentAspectRatio.getter();
      AspectRatio.height(fromWidth:)();
      (*(v33 + 8))(v9, v34);
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v37 + 8))(v6, v38);
      v25 = Artwork.config(_:mode:prefersLayeredImage:)();

      (*(v35 + 8))(v12, v36);
      v40 = *(v31 + OBJC_IVAR____TtC8AppStore42TodayBrickCollectionViewCellWithBackground_imageBackgroundView);
      v26 = v40;
      sub_10019FDD0();
      sub_1006174BC(&qword_10098BC70, sub_10019FDD0, &protocol conformance descriptor for NSObject);
      v27 = v26;
      AnyHashable.init<A>(_:)();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v25;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v41, &qword_10096FB90, &qword_1007B2A50);
      (*(v17 + 8))(v19, v16);

      return;
    }

    (*((swift_isaMask & *v2) + 0x120))(v32, v39);
  }

  (*(v17 + 8))(v19, v16);
}

uint64_t sub_100616F20(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Artwork.Crop();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AspectRatio();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PageGrid();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayCard();
  sub_1006174BC(&qword_100977390, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v36[0])
  {
    v27 = v9;
    v14 = TodayCard.media.getter();

    v36[0] = v14;
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0, qword_1007B3FF0);
    if (swift_dynamicCast())
    {
      if (*(&v34 + 1))
      {
        v24 = v4;
        v25 = v3;
        v26 = a2;
        sub_100005A38(&v33, v36);
        sub_10002A400(v36, v37);
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v15 = v33;
        v16 = TodayCardMediaWithArtwork.artwork(for:)();

        if (!v16)
        {
          sub_10002A400(v36, v37);
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v17 = v33;
          v18 = TodayCardMediaWithArtwork.video(for:)();

          if (!v18)
          {
            return sub_100007000(v36);
          }

          Video.preview.getter();
        }

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v19 = v33;
        sub_100187A84(v33, v11);
        PageGrid.componentMeasuringSize(spanning:)();
        SmallStoryCardLayout.Metrics.contentAspectRatio.getter();
        AspectRatio.height(fromWidth:)();
        (*(v29 + 8))(v8, v31);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v24 + 8))(v6, v25);
        v20 = Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v32 + 8))(v11, v27);
        (*(v28 + 8))(v13, v30);
        sub_10002849C(&qword_100973210, qword_1007B0BB0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007B0B70;
        *(v21 + 32) = v20;

        ArtworkLoader.prefetchArtwork(using:)(v21);

        return sub_100007000(v36);
      }
    }

    else
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
    }
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  return sub_10002B894(&v33, &qword_100972DD8, &qword_1007C83C0);
}

uint64_t sub_1006174BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100617504(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppPlatform();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform])
  {

    MediaPlatform.appPlatform.getter();
    if ((*(v7 + 88))(v10, v6) == enum case for AppPlatform.watch(_:))
    {
      v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
      v13 = *&v2[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v22 = v11;

      sub_1006177B8();
    }

    else
    {
      v18 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
      v19 = *&v2[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
      if (v19)
      {
        [v19 removeFromSuperview];
        v20 = *&v2[v18];
      }

      else
      {
        v20 = 0;
      }

      *&v2[v18] = 0;

      sub_1006177B8();
      (*(v7 + 8))(v10, v6);
    }

    type metadata accessor for Screenshots();

    sub_10061B788(v23, v5);

    sub_100617A0C(v5);
    [v2 setNeedsLayout];
  }

  else
  {
    v15 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
    v16 = *&v2[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v2[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v2[v15] = 0;

    sub_1006177B8();
  }

  return result;
}

void sub_1006177B8()
{
  v1 = v0;
  v2 = type metadata accessor for AppPlatform();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
  if (v6)
  {
    if (*&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform])
    {
      swift_retain_n();
      v7 = v6;
      MediaPlatform.appPlatform.getter();
      if ((*(v3 + 88))(v5, v2) == enum case for AppPlatform.watch(_:))
      {
        if (qword_10096EB58 != -1)
        {
          swift_once();
        }

        v8 = qword_10098F580;
      }

      else
      {
        if (qword_10096EB60 != -1)
        {
          swift_once();
        }

        v8 = qword_10098F588;

        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
      v9 = qword_10096EB60;
      v10 = v6;
      if (v9 != -1)
      {
        swift_once();
      }

      v8 = qword_10098F588;
    }

    [v6 setBackgroundColor:v8];

    [v1 insertSubview:v6 belowSubview:*&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView]];
  }
}

uint64_t sub_100617A0C(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  sub_1001BAB64(a1, v4, v5);
  swift_endAccess();
  v6 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  v8 = *(v4 + 48);
  v9 = *&v2[v6];
  v10 = v8;
  dispatch thunk of RoundedCornerView.borderColor.setter();

  [v2 setNeedsLayout];
  return sub_1001BABC8(a1, v11);
}

char *sub_100617ADC(__n128 a1, double a2, double a3, double a4)
{
  v8 = a1.n128_f64[0];
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView] = 0;
  v9 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  if (qword_10096EB50 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v11 = sub_1000056A8(v10, qword_1009D2FE8);
  sub_1001BAB00(v11, &v4[v9], v12);
  *&v4[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v4;
  v19.super_class = type metadata accessor for BorderedScreenshotView(0);
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", v8, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView]];

  return v17;
}

void sub_100617D38()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v8 - 8);
  v51 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  v16 = type metadata accessor for BorderedScreenshotView(0);
  v53.receiver = v0;
  v53.super_class = v16;
  objc_msgSendSuper2(&v53, "layoutSubviews");
  v17 = &v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
  swift_beginAccess();
  v19 = *(v17 + 56);
  v18 = *(v17 + 64);
  v20 = *(v17 + 72);
  v21 = *(v17 + 80);
  LayoutMarginsAware<>.layoutFrame.getter();
  v22 = CGRectGetWidth(v54) - (v18 + v21);
  LayoutMarginsAware<>.layoutFrame.getter();
  v23 = CGRectGetHeight(v55) - (v19 + v20);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMidX(v56);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMidY(v57);
  v24 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
  v25 = *&v0[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
  ArtworkView.frame.setter();

  sub_1001BAB00(v17, v15, v26);
  if (v15[16])
  {
    sub_1001BABC8(v15, v27);
  }

  else
  {
    sub_1001BABC8(v15, v27);
    if (v23 >= v22)
    {
      v28.n128_f64[0] = v22;
    }

    else
    {
      v28.n128_f64[0] = v23;
    }
  }

  v29 = *&v1[v24];
  sub_1001BAB00(v17, v12, v28);
  v30 = v12[16];
  v31 = v29;
  sub_1001BABC8(v12, v32);
  v33 = &enum case for CornerStyle.arc(_:);
  if (!v30)
  {
    v33 = &enum case for CornerStyle.continuous(_:);
  }

  v34 = v52;
  (*(v3 + 104))(v52, *v33, v2);
  (*(v3 + 32))(v7, v34, v2);
  ArtworkView.setCorner(radius:style:)();

  (*(v3 + 8))(v7, v2);
  v36 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_chromeBorderView];
  if (v37)
  {
    v38 = v37;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v38 setFrame:?];
  }

  v39 = *&v1[v36];
  if (*(v17 + 16))
  {
    if (v39)
    {
      [*&v1[v36] _setContinuousCornerRadius:10.0];
    }
  }

  else if (v39)
  {
    v40 = v51;
    sub_1001BAB00(v17, v51, v35);
    v41 = v39;
    LayoutMarginsAware<>.layoutFrame.getter();
    if (*(v40 + 16))
    {
      v45 = *v40;
      sub_1001BABC8(v40, v42);
    }

    else
    {
      v46 = v43;
      v47 = v44;
      v48 = *(v40 + 8);
      sub_1001BABC8(v40, v42);
      if (v47 >= v46)
      {
        v49 = v46;
      }

      else
      {
        v49 = v47;
      }

      v45 = v49 * v48;
    }

    [v41 _setContinuousCornerRadius:v45];
  }
}

id sub_1006182AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BorderedScreenshotView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BorderedScreenshotView(uint64_t a1)
{
  result = qword_10098F388;
  if (!qword_10098F388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006183A4(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for ScreenshotDisplayConfiguration(319);
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

uint64_t sub_100618450(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v44 = sub_10002849C(&qword_10098F3F8, &unk_1007DA2D8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v35 - v3;
  v45 = type metadata accessor for AnnotationViewModel();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v5 - 8);
  v36 = &v35 - v6;
  v47 = sub_10002849C(&qword_10098F400, &qword_1007DA2E8);
  v38 = *(v47 - 8);
  __chkstk_darwin(v47);
  v37 = &v35 - v7;
  v8 = sub_10002849C(&qword_10098F3E8, &unk_1007DA290);
  __chkstk_darwin(v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Annotation();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v35 - v20;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v12 + 8))(v14, v11);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v10, 0, 1, v15);
    (*(v16 + 32))(v21, v10, v15);
    v24 = a1;
    ItemLayoutContext.state.getter();
    v25 = v37;
    StateLens.init(_:)();
    v26 = v46;
    sub_100619A4C();

    StateLens<A>.currentValue.getter();
    AnnotationViewState.isExpanded.setter();

    (*(v16 + 16))(v18, v21, v15);
    v27 = v39;

    v28 = v41;
    v29 = AnnotationViewModel.init(annotation:objectGraph:forceExpanded:)();
    v36 = &v35;
    __chkstk_darwin(v29);
    *(&v35 - 4) = v28;
    *(&v35 - 3) = v26;
    *(&v35 - 2) = v24;
    __chkstk_darwin(v30);
    *(&v35 - 4) = sub_100619AA0;
    *(&v35 - 3) = v31;
    *(&v35 - 2) = v27;
    *(&v35 - 1) = v26;
    sub_10002849C(&qword_10098F408, &qword_1007DA2F0);
    sub_100619AB8();
    v32 = v40;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v33 = v44;
    v48[3] = v44;
    v48[4] = sub_100097060(&qword_10098F448, &qword_10098F3F8, &unk_1007DA2D8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_1000056E0(v48);
    UIHostingConfiguration.margins(_:_:)();
    (*(v42 + 8))(v32, v33);
    UICollectionViewCell.contentConfiguration.setter();
    (*(v38 + 8))(v25, v47);
    (*(v16 + 8))(v21, v15);
    return (*(v43 + 8))(v28, v45);
  }

  else
  {
    v23(v10, 1, 1, v15);
    return sub_10061999C(v10);
  }
}

uint64_t sub_100618B00(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for AnnotationViewModel();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);

  AnnotationView.init(viewModel:viewState:)();
  sub_10002849C(&qword_10098F438, &qword_1007DA310);
  return ItemLayoutContext.id.getter();
}

uint64_t type metadata accessor for AnnotationCollectionViewHostingCell(uint64_t a1)
{
  result = qword_10098F3C8;
  if (!qword_10098F3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100618E9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v4 - 8);
  v37 = &v35 - v5;
  v6 = sub_10002849C(&qword_10098F3E0, &qword_1007DA288);
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v35 - v7;
  v8 = type metadata accessor for AnnotationViewModel();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_10098F3E8, &unk_1007DA290);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = type metadata accessor for Annotation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v35 - v23;
  v38 = a1;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  sub_10002849C(&qword_100973D50, &unk_1007B3840);
  v25 = swift_dynamicCast();
  v26 = *(v19 + 56);
  if (v25)
  {
    v26(v13, 0, 1, v18);
    (*(v19 + 32))(v24, v13, v18);
    v27 = *(v19 + 16);
    v36 = v24;
    v27(v21, v24, v18);

    AnnotationViewModel.init(annotation:objectGraph:forceExpanded:)();
    v28 = v10;
    if (AnnotationViewModel.canBeExpanded.getter() & 1) != 0 || (, AnnotationViewState.collapsedTruncationState.getter(), , v29 = dispatch thunk of TruncationState.isTruncated.getter(), , (v29))
    {
      ItemLayoutContext.mutableState.getter();
      v30 = v39;
      WritableStateLens.init(_:)();
      sub_100619A4C();
      v31 = v41;
      WritableStateLens<A>.updateValue(_:)();

      AnnotationViewState.isExpanded.setter();

      sub_10002849C(&qword_100975748, &qword_1007BA160);
      type metadata accessor for SelectableShelfComponentViewReaction();
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1007B1890;
      static SelectableShelfComponentViewReaction.propagate.getter();
      static SelectableShelfComponentViewReaction.deselect.getter();
      v46 = v32;
      sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10002849C(&qword_100975758, &qword_1007DA2A0);
      sub_100097060(&qword_100975760, &qword_100975758, &qword_1007DA2A0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v40 + 8))(v30, v31);
    }

    else
    {
      sub_10002849C(&qword_100975748, &qword_1007BA160);
      type metadata accessor for SelectableShelfComponentViewReaction();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1007B1890;
      static SelectableShelfComponentViewReaction.propagate.getter();
      static SelectableShelfComponentViewReaction.deselect.getter();
      v46 = v34;
      sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
      sub_10002849C(&qword_100975758, &qword_1007DA2A0);
      sub_100097060(&qword_100975760, &qword_100975758, &qword_1007DA2A0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
    }

    (*(v43 + 8))(v28, v44);
    (*(v19 + 8))(v36, v18);
  }

  else
  {
    v26(v13, 1, 1, v18);
    sub_10061999C(v13);
    sub_10002849C(&qword_100975748, &qword_1007BA160);
    type metadata accessor for SelectableShelfComponentViewReaction();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1007B1890;
    static SelectableShelfComponentViewReaction.propagate.getter();
    static SelectableShelfComponentViewReaction.deselect.getter();
    v46 = v33;
    sub_100619A04(&qword_100975750, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
    sub_10002849C(&qword_100975758, &qword_1007DA2A0);
    sub_100097060(&qword_100975760, &qword_100975758, &qword_1007DA2A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }
}

uint64_t sub_1006197BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v6 = v11[1];
  v7 = UITraitCollection.isSizeClassCompact.getter();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = type metadata accessor for ComponentSeparator();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100619944(uint64_t a1)
{
  result = sub_100619A04(&qword_10098F3D8, type metadata accessor for AnnotationCollectionViewHostingCell, &unk_1007DA23C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10061999C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098F3E8, &unk_1007DA290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100619A04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100619A4C()
{
  result = qword_10098F3F0;
  if (!qword_10098F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F3F0);
  }

  return result;
}

unint64_t sub_100619AB8()
{
  result = qword_10098F410;
  if (!qword_10098F410)
  {
    sub_10002D1A8(&qword_10098F408, &qword_1007DA2F0);
    sub_100619B70();
    sub_100097060(&qword_100993090, &qword_100982F88, &qword_1007CAD20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F410);
  }

  return result;
}

unint64_t sub_100619B70()
{
  result = qword_10098F418;
  if (!qword_10098F418)
  {
    sub_10002D1A8(&qword_10098F420, &qword_1007DA2F8);
    sub_10002D1A8(&qword_10098F428, &qword_1007DA300);
    sub_10002D1A8(&qword_10098F430, &qword_1007DA308);
    type metadata accessor for BaseObjectGraph();
    sub_10002D1A8(&qword_10098F438, &qword_1007DA310);
    sub_100097060(&qword_10098F440, &qword_10098F438, &qword_1007DA310, &protocol conformance descriptor for IDView<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100097060(&unk_100993080, &qword_100982F80, &unk_1007E24C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F418);
  }

  return result;
}

unint64_t sub_100619D44()
{
  result = qword_10098F450;
  if (!qword_10098F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F450);
  }

  return result;
}

unint64_t sub_100619D9C()
{
  result = qword_10098F458;
  if (!qword_10098F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F458);
  }

  return result;
}

uint64_t sub_100619DF0()
{
  v1 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10002849C(&unk_100982AA0, qword_1007C0320);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = type metadata accessor for SearchOrigin();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_1005E017C(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10002849C(&qword_100988670, qword_1007D1340);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_1007B5350;
      *(inited + 16) = xmmword_1007B5350;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_100398EF4(v35);
      swift_setDeallocating();
      v48[2] = sub_10002849C(&unk_100982880, &unk_1007DEC80);
      swift_arrayDestroy();
      sub_10002849C(&unk_10098A308, &unk_1007D35D0);
      type metadata accessor for MetricsFieldInclusionRequest();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1007B1E00;
      static MetricsFieldInclusionRequest.pageFields.getter();
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      static MetricsFieldInclusionRequest.searchGhostHint.getter();
      sub_100083F08(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      type metadata accessor for ClickMetricsEvent();
      swift_allocObject();
      v48[1] = ClickMetricsEvent.init(targetType:targetId:including:excluding:eventFields:)();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_100398EF4(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      type metadata accessor for SearchMetricsEvent();
      swift_allocObject();
      v51 = SearchMetricsEvent.init(eventFields:)();
      sub_10002849C(&unk_100988E30, &qword_1007D1C28);
      type metadata accessor for MetricsData();
      *(swift_allocObject() + 16) = xmmword_1007B1890;
      dispatch thunk of MetricsEvent.metricsData.getter();
      dispatch thunk of MetricsEvent.metricsData.getter();
      ScalarDictionary.init()();
      v39 = v62;
      ActionMetrics.init(data:custom:)();
      v40 = type metadata accessor for URL();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = type metadata accessor for SearchEntity();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = type metadata accessor for ReferrerData();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      type metadata accessor for SearchAction();
      swift_allocObject();

      v46 = SearchAction.init(title:term:url:origin:source:entity:spellCheckEnabled:excludedTerms:originatingTerm:prefixTerm:guidedSearchTokens:guidedSearchOptimizationTerm:actionMetrics:referrerData:)();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_10061A83C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AutomationSemantics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10002849C(&unk_10098F570, qword_1007DA430);
  swift_allocObject();
  *&v1[v8] = SyncEvent.init()();
  *&v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  static AutomationSemantics.searchField()();
  UIView.setAutomationSemantics(_:)();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_10061AA50(uint64_t a1)
{
  v2 = type metadata accessor for SearchTextSnapshot();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v37 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v35 = ObjectType;
      v36 = v13;
      v33 = v15;
      v34 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v31 = v3;
        v32 = v2;
        v30 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v37;
        v23.value._countAndFlagsBits = v20;
        v23.value._object = v22;
        v24 = String.isValid(expansionFor:)(v23);

        v3 = v31;
        if (v24)
        {
          v25 = v30;
          v34(v35, v33);
        }

        else
        {
        }

        v2 = v32;
      }

      else
      {

        v5 = v37;
      }
    }

    *(a1 + v6) = 0;
    v26 = [v7 text];
    if (v26)
    {
      v27 = v3;
      v28 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v3 = v27;
    }

    v29 = [v7 markedTextRange];
    if (v29)
    {
    }

    SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)();
    SyncEvent.post(_:)();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_10061AD78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [a1 selectedTextRange];
  if (!v8)
  {
    v14 = 1;
    return v14 & 1;
  }

  v9 = v8;
  sub_10061B29C();
  v10 = [v9 end];
  v11 = [a1 endOfDocument];
  v12 = static NSObject.== infix(_:_:)();

  v13 = a3 < 1 || String.count.getter() != 0;
  v15 = [a1 markedTextRange];
  if (v15)
  {
  }

  else if (!v13 && (v12 & 1) != 0)
  {
    v16 = 1;
    goto LABEL_10;
  }

  v16 = 0;
LABEL_10:
  v17 = *(v5 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_scribbleInteraction);
  v18 = v16;
  if (v17)
  {
    v18 = v16 | [v17 isHandlingWriting];
  }

  *(v5 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled) = v18 & 1;
  swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = a1 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v16;
  }

  if (v21 == 1)
  {
    v22 = v19;
    ObjectType = swift_getObjectType();
    v24 = a1;
    v25 = sub_1005E017C(ObjectType, v22);
    if (v25)
    {
      (*(v22 + 16))(0, 0, ObjectType, v22);
    }

    v14 = !v25;
  }

  else
  {
    v14 = 1;
  }

  return v14 & 1;
}

uint64_t sub_10061B18C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_10061B29C()
{
  result = qword_100978360;
  if (!qword_100978360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100978360);
  }

  return result;
}

void sub_10061B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for SearchTextSnapshot();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = v12;
    v41 = v10;
    *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC8AppStore30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v38 = v21;
      v21(v20, v19);
      if (v23)
      {
        v36 = v20;
        v37 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v29.value._countAndFlagsBits = v26;
        v29.value._object = v28;
        v30 = String.isValid(expansionFor:)(v29);

        v31 = v37;
        if (v30)
        {
          v38(v36, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v32 = [v16 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = [v16 markedTextRange];
    if (v34)
    {
    }

    v35 = v39;
    SearchTextSnapshot.init(prefixText:prefixIsProvisional:expansionText:)();
    SyncEvent.post(_:)();
    (*(v40 + 8))(v35, v41);
  }
}

uint64_t type metadata accessor for ScreenshotDisplayConfiguration(uint64_t a1)
{
  result = qword_10098F608;
  if (!qword_10098F608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10061B66C(uint64_t a1)
{
  sub_10061B738();
  if (v1 <= 0x3F)
  {
    sub_100028BB8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIEdgeInsets(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AspectRatio();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10061B738()
{
  if (!qword_10098F618)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098F618);
    }
  }
}

__n128 sub_10061B788@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AppPlatform();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v8 = &v45 - v7;
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v15 = &v45 - v14;
  if (a1)
  {
    v46 = v13;

    MediaPlatform.appPlatform.getter();

    v50 = v5;
    v16 = *(v5 + 88);
    v17 = v16(v15, v4);
    v18 = enum case for AppPlatform.watch(_:);
    v19 = 0.0;
    v20 = 0.0;
    if (v17 != enum case for AppPlatform.watch(_:))
    {
      (*(v50 + 8))(v15, v4);
      v20 = 5.0;
    }

    v49 = MediaPlatform.deviceCornerRadiusFactor.getter();
    v47 = v21;
    v48 = MediaPlatform.deviceBorderThickness.getter();
    v52.n128_u32[0] = v22;

    MediaPlatform.appPlatform.getter();

    if (v16(v11, v4) != v18)
    {
      (*(v50 + 8))(v11, v4);
      v19 = 1.0;
    }

    MediaPlatform.appPlatform.getter();
    if (v16(v8, v4) == v18)
    {
      if (qword_10096EB58 != -1)
      {
        swift_once();
      }

      v23 = qword_10098F580;
    }

    else
    {
      if (qword_10096EB60 != -1)
      {
        swift_once();
      }

      v23 = qword_10098F588;

      (*(v50 + 8))(v8, v4);
    }

    v30 = v52.n128_u8[0];

    v31 = v46;
    MediaPlatform.appPlatform.getter();
    if (v16(v31, v4) == v18)
    {
      v32 = MediaPlatform.deviceBorderThickness.getter();
      v25 = v23;
      if (v33)
      {
        v28 = v30;
        if (qword_10096EB48 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for AspectRatio();
        sub_1000056A8(v34, qword_1009D2FD0);
        AspectRatio.verticalFraction.getter();
        v36 = v35;

        __asm { FMOV            V1.2D, #15.0 }

        *_Q1.i64 = v36 * 15.0;
        v51 = _Q1;
        v52 = _Q1;
        v26 = v48;
        v27 = v49;
        goto LABEL_24;
      }

      v43 = v32;

      v51 = vdupq_n_s64(v43);
      v52 = v51;
      v26 = v48;
      v27 = v49;
    }

    else
    {
      v42 = *&UIEdgeInsetsZero.top;
      v51 = *&UIEdgeInsetsZero.bottom;
      v52 = v42;

      (*(v50 + 8))(v31, v4);
      v26 = v48;
      v27 = v49;
      v25 = v23;
    }

    v28 = v30;
LABEL_24:
    v29 = v47;
    goto LABEL_25;
  }

  if (qword_10096EB60 != -1)
  {
    swift_once();
  }

  v24 = *&UIEdgeInsetsZero.top;
  v51 = *&UIEdgeInsetsZero.bottom;
  v52 = v24;
  v25 = qword_10098F588;
  v26 = 0;
  v27 = 0;
  v20 = 5.0;
  v28 = 1;
  v19 = 1.0;
  v29 = 1;
LABEL_25:
  type metadata accessor for ScreenshotDisplayConfiguration(0);
  AspectRatio.init(_:_:)();
  *a2 = v20;
  *(a2 + 8) = v27;
  *(a2 + 16) = v29 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 & 1;
  *(a2 + 40) = v19;
  *(a2 + 48) = v25;
  result = v52;
  *(a2 + 72) = v51;
  *(a2 + 56) = result;
  return result;
}

double sub_10061BC60()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D2FD0);
  sub_1000056A8(v0, qword_1009D2FD0);
  AspectRatio.init(_:_:)();
  return result;
}

uint64_t sub_10061BCB4()
{
  v0 = type metadata accessor for AspectRatio();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  sub_100005644(v4, qword_1009D2FE8);
  v5 = sub_1000056A8(v4, qword_1009D2FE8);
  if (qword_10096EB60 != -1)
  {
    swift_once();
  }

  v6 = qword_10096EB68;
  v7 = qword_10098F588;
  if (v6 != -1)
  {
    swift_once();
  }

  v10 = unk_10098F5A0;
  v11 = xmmword_10098F590;
  AspectRatio.init(_:_:)();
  *v5 = 0x4014000000000000;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  *(v5 + 40) = 0x3FF0000000000000;
  *(v5 + 48) = v7;
  v8 = v11;
  *(v5 + 72) = v10;
  *(v5 + 56) = v8;
  return (*(v1 + 32))(v5 + *(v4 + 40), v3, v0);
}

id sub_10061BE70()
{
  result = [objc_opt_self() blackColor];
  qword_10098F580 = result;
  return result;
}

uint64_t sub_10061BEAC()
{
  sub_100028BB8();
  result = static UIColor.mediaBorder.getter();
  qword_10098F588 = result;
  return result;
}

__n128 sub_10061BEE0()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_10098F590 = *&UIEdgeInsetsZero.top;
  unk_10098F5A0 = v1;
  return result;
}

void sub_10061BEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v59 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10002849C(&qword_100978E28, &qword_1007BEA08);
  v60 = *(v17 - 8);
  v61 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v59 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView];
  LockupCollectionSearchResult.heading.getter();
  v23 = *(v22 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel);
  v24 = String._bridgeToObjectiveC()();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView];
  LockupCollectionSearchResult.title.getter();
  v26 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel);
  v27 = String._bridgeToObjectiveC()();

  [v26 setText:v27];

  v28 = LockupCollectionSearchResult.detailAction.getter();
  if (v28)
  {
    v29 = v28;
    Action.title.getter();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton);
      v32 = String._bridgeToObjectiveC()();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
      v36 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler + 8);
      *v34 = sub_10061CF98;
      v34[1] = v33;

      v37 = v35;
      v38 = v36;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButton) setTitle:0 forState:{0, v59}];
  v39 = (v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  v37 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler);
  v38 = *(v25 + OBJC_IVAR____TtC8AppStore17SearchHeadingView_detailButtonHandler + 8);
  *v39 = 0;
  v39[1] = 0;
LABEL_6:
  sub_10001F63C(v37, v38);
  swift_getObjectType();
  v40 = sub_10061CEB0(a4);
  v42 = v41;
  v43 = v40;
  sub_1000FB91C(v40, v41);
  if (!*&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v44 = LockupCollectionSearchResult.items.getter();
  sub_1002A5430(v44);

  dispatch thunk of NestedCollectionViewImpressionsCoordinator.models.setter();

  v45 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v45)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  v48 = v59;
  v47[2] = v46;
  v47[3] = v48;
  v47[4] = ObjectType;
  v49 = objc_allocWithZone(sub_10002849C(&unk_100978E30, &unk_1007BEA10));

  v50 = v45;
  v51 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  v52 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource;
  v53 = *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource] = v51;
  v54 = v51;

  v55 = swift_allocObject();
  *(v55 + 16) = v43;
  *(v55 + 24) = v42;
  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1007B0B70;
  *(v56 + 32) = a1;
  swift_getKeyPath();
  sub_10061CFA0(&qword_100978E40, &type metadata accessor for LockupCollectionSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10061CFA0(&qword_100978E48, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

  static DiffableData.makeSnapshot<A, B>(fromSections:withItemsAt:)();

  v57 = *&v9[v52];
  if (v57)
  {
    v58 = v57;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  [v9 setNeedsLayout];
  (*(v60 + 8))(v20, v61);
}

uint64_t sub_10061C498(uint64_t a1, uint64_t a2)
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

void *sub_10061C5DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = type metadata accessor for OfferStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v28 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10002849C(&qword_100974478, &qword_1007BE9A0);
    DiffableLens.value.getter();
    v58 = v64;
    if (Lockup.offerDisplayProperties.getter())
    {
      OfferDisplayProperties.style.getter();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = static OfferStyle.== infix(_:_:)();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = UITraitCollection.isSizeClassRegular.getter(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC8AppStore35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = type metadata accessor for OfferEnvironment();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = type metadata accessor for OfferTint();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_1004F3190(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10002B894(v47, &unk_100973AD0, &unk_1007B17C0);
    v39[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v39 setNeedsLayout];
    sub_10002B894(v45, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v43, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v41, &unk_100973230, &unk_1007B17E0);
    v48 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    ArtworkView.image.setter();
    type metadata accessor for ArtworkView();
    sub_10061CFA0(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    if (Lockup.icon.getter())
    {
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v50, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      [v49 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v49 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      v51 = *&v39[v48];
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10002B894(v37, &qword_100973AE0, &unk_1007B17D0);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10061CEB0(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  UITraitCollection.prefersAccessibilityLayouts.getter();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = UITraitCollection.isSizeClassCompact.getter();

  return (v1 & 1) == 0;
}

uint64_t sub_10061CF4C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10061CFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CardHeaderButton(uint64_t a1)
{
  result = qword_10098F6A8;
  if (!qword_10098F6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10061D0A0(char a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = (v3 + 32);
  v11 = *(v3 + 104);
  if (a1)
  {
    if (a1 != 1)
    {
      v11(v5, enum case for SystemImage.appstore(_:), v2, v7);
      (*v10)(v9, v5, v2);
      v13 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:12.0];
      goto LABEL_7;
    }

    v12 = &enum case for SystemImage.chevronBackward(_:);
  }

  else
  {
    v12 = &enum case for SystemImage.xmark(_:);
  }

  v11(v5, *v12, v2, v7);
  (*v10)(v9, v5, v2);
  v13 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
LABEL_7:
  v14 = v13;
  v15 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v9, v2);
  return v15;
}

uint64_t sub_10061D28C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746867696CLL;
  if (v2 != 1)
  {
    v4 = 1802658148;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746867696CLL;
  if (*a2 != 1)
  {
    v8 = 1802658148;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10061D378()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10061D414(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10061D49C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10061D534@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10061E6B4(*a1);
  *a2 = result;
  return result;
}

void sub_10061D564(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE500000000000000;
  v5 = 0x746867696CLL;
  if (v2 != 1)
  {
    v5 = 1802658148;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_10061D5DC(unsigned __int8 a1)
{
  v2 = 0xE900000000000063;
  v3 = 0x6974616D6F747561;
  v4 = qword_10098F670;
  v5 = v1[qword_10098F670];
  v1[qword_10098F670] = a1;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x746867696CLL;
    }

    else
    {
      v7 = 1802658148;
    }

    if (v6 == 1)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0x6974616D6F747561;
    v8 = 0xE900000000000063;
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  if (v5 != 1)
  {
    v2 = 0xE400000000000000;
    if (v7 != 1802658148)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v2 = 0xE500000000000000;
  v3 = 0x746867696CLL;
LABEL_13:
  if (v7 != v3)
  {
LABEL_20:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      sub_10061E208(v1[v4]);

      [v1 setNeedsDisplay];
    }

    return;
  }

LABEL_16:
  if (v8 != v2)
  {
    goto LABEL_20;
  }
}

char *sub_10061D748(char a1)
{
  v3 = a1;
  v4 = type metadata accessor for AutomationSemantics();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[qword_10098F670] = 0;
  v7 = qword_10098F678;
  *&v1[v7] = [objc_opt_self() secondaryLabelColor];
  v8 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_10098F680] = v8;
  v9 = [objc_allocWithZone(UIVisualEffectView) init];
  *&v1[qword_10098F688] = v9;
  v10 = [objc_allocWithZone(UIImageView) init];
  v11 = 0;
  *&v1[qword_10098F690] = v10;
  if (v3 == 2)
  {
    v11 = [objc_allocWithZone(UILabel) init];
  }

  *&v1[qword_10098F698] = v11;
  v1[qword_10098F6A0] = a1;
  v12 = type metadata accessor for CardHeaderButton(0);
  v51.receiver = v1;
  v51.super_class = v12;
  v13 = objc_msgSendSuper2(&v51, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = qword_10098F680;
  v15 = *&v13[qword_10098F680];
  v16 = v13;
  [v15 setClipsToBounds:1];
  v17 = [*&v13[v14] layer];
  [v17 setCornerRadius:15.0];

  [*&v13[v14] setUserInteractionEnabled:0];
  v18 = *&v13[v14];
  v19 = [v16 imageView];
  [v16 insertSubview:v18 below:v19];

  v20 = [*&v13[v14] contentView];
  v21 = qword_10098F688;
  [v20 addSubview:*&v16[qword_10098F688]];

  v22 = qword_10098F690;
  v23 = *&v16[qword_10098F690];
  v24 = sub_10061D0A0(a1);
  [v23 setImage:v24];

  v25 = *&v16[v22];
  v26 = objc_opt_self();
  v27 = v25;
  if (v3 >= 2)
  {
    v28 = 12.0;
    v29 = v26;
    v30 = 6;
  }

  else
  {
    v28 = 15.0;
    v29 = v26;
    v30 = 7;
  }

  v31 = [v29 configurationWithPointSize:v30 weight:2 scale:{v28, v49, v50}];
  [v27 setPreferredSymbolConfiguration:v31];

  v32 = [*&v16[v21] contentView];
  [v32 addSubview:*&v16[v22]];

  v33 = *&v16[qword_10098F698];
  if (v33)
  {
    v34 = v33;
    if (a1 >= 2u)
    {
      v36._object = 0x800000010081DE10;
      v36._countAndFlagsBits = 0xD00000000000001DLL;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      localizedString(_:comment:)(v36, v37);
      v35 = String._bridgeToObjectiveC()();
    }

    else
    {
      v35 = 0;
    }

    [v33 setText:v35];

    v38 = [objc_opt_self() systemFontOfSize:12.0 weight:UIFontWeightSemibold];
    [v33 setFont:v38];

    [v33 setNumberOfLines:2];
    v39 = [*&v16[v21] contentView];
    [v39 addSubview:v33];
  }

  else
  {
    [*&v16[v22] setContentMode:4];
  }

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setContentEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setTitleEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setImageEdgeInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (a1)
  {
    if (a1 == 1)
    {
      v43 = 0xEC0000004E4F5454;
      v44 = 0x55425F45534F4C43;
    }

    else
    {
      v44 = 0xD00000000000001DLL;
      v43 = 0x800000010081DE10;
    }
  }

  else
  {
    v43 = 0xEB000000004E4F54;
    v44 = 0x5455425F4B434142;
  }

  v45 = v43;
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v44, v46);

  v47 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityLabel:v47];

  static AutomationSemantics.dismissButton()();
  UIView.setAutomationSemantics(_:)();
  (*(v49 + 8))(v6, v50);
  sub_10061DD78();
  sub_10061E208(v16[qword_10098F670]);

  return v16;
}

void sub_10061DD78()
{
  v1 = v0;
  v2 = *&v0[qword_10098F680];
  [v1 intrinsicContentSize];
  [v2 setFrame:{0.0, 0.0, v3, v4}];
  v5 = *&v1[qword_10098F688];
  [v1 intrinsicContentSize];
  [v5 setFrame:{0.0, 0.0, v6, v7}];
  v8 = *&v1[qword_10098F698];
  if (v8)
  {
    v9 = v8;
    [v1 intrinsicContentSize];
    v10 = v1[qword_10098F6A0];
    v11 = sub_10061D0A0(v10);
    [v11 size];
    v13 = v12;

    [v9 measurementsWithFitting:v1 in:{280.0, 1.79769313e308}];
    v25 = v9;
    [v25 sizeThatFits:{280.0, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    [v1 intrinsicContentSize];
    v19 = v18 * 0.5 - v17 * 0.5 + 0.5;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v25 setFrame:?];

    v20 = sub_10061D0A0(v10);
    UIImage.baselineOffsetFromBottom.getter();

    v27.origin.x = v13 + 12.0 + 4.0;
    v27.origin.y = v19;
    v27.size.width = v15;
    v27.size.height = v17;
    CGRectGetMinY(v27);
    v21 = *&v1[qword_10098F690];
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v21 setFrame:?];
  }

  else
  {
    v22 = *&v1[qword_10098F690];
    [v1 intrinsicContentSize];

    [v22 setFrame:{0.0, 0.0, v23, v24}];
  }
}

double sub_10061E06C(void *a1)
{
  v1 = a1;
  sub_10061E0B0();
  v3 = v2;

  return v3;
}

void sub_10061E0B0()
{
  if (*(v0 + qword_10098F6A0) >= 2u)
  {
    v1 = sub_10061D0A0(2);
    [v1 size];

    v2 = *(v0 + qword_10098F698);
    if (v2)
    {
      [v2 sizeThatFits:{280.0, 1.79769313e308}];
    }
  }
}

id sub_10061E17C(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }
  }

  else
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
    {
      return 0;
    }
  }

  return [objc_opt_self() whiteColor];
}

void sub_10061E208(char a1)
{
  v3 = sub_10061E5D8(a1);
  v4 = *&v1[qword_10098F680];
  v12 = v3;
  [v4 setEffect:?];
  v5 = sub_10061E17C(a1);
  [v1 setTintColor:v5];

  if (a1)
  {
    if (a1 == 1)
    {
LABEL_3:
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [v1 traitCollection];
    v8 = [v7 userInterfaceStyle];

    if (v8 == 2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v9 = [objc_opt_self() effectForBlurEffect:v12 style:v6];
  v10 = *&v1[qword_10098F688];
  v11 = v9;
  [v10 setEffect:v11];
}

void sub_10061E344(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for CardHeaderButton(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "_dynamicUserInterfaceTraitDidChange");
  sub_10061E208(v1[qword_10098F670]);
}

void sub_10061E3DC()
{
  v1 = *(v0 + qword_10098F698);
}

id sub_10061E44C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardHeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10061E484(uint64_t a1)
{
  v2 = *(a1 + qword_10098F698);
}

unint64_t sub_10061E52C()
{
  result = qword_10098F6F8;
  if (!qword_10098F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F6F8);
  }

  return result;
}

unint64_t sub_10061E584()
{
  result = qword_10098F700;
  if (!qword_10098F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098F700);
  }

  return result;
}